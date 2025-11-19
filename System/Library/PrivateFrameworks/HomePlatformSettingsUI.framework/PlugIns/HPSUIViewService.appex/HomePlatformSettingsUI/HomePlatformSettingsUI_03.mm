uint64_t sub_10004A2E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10004A39C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_10004A444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_10004A4D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

__n128 sub_10004A6A4@<Q0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_100086E4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EEC(&qword_1000AF3A8, &qword_10008BD10);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  sub_100086E3C();
  (*(v2 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v1);
  v11 = sub_100086E5C();

  (*(v2 + 8))(v5, v1);
  LOBYTE(v1) = sub_100086BEC();
  sub_10008686C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v41) = 1;
  v40 = 0;
  v20 = sub_100086E1C();
  KeyPath = swift_getKeyPath();
  v22 = sub_100086E0C();
  v23 = sub_100086BEC();
  v24 = &v10[*(v7 + 44)];
  v25 = *(sub_10008698C() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_100086B2C();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #12.0 }

  *v24 = _Q0;
  *&v24[*(sub_100001EEC(&qword_1000AF3B0, &qword_10008BD48) + 36)] = 256;
  *v10 = v11;
  *(v10 + 1) = 0;
  *(v10 + 8) = 1;
  v10[24] = v1;
  *(v10 + 4) = v13;
  *(v10 + 5) = v15;
  *(v10 + 6) = v17;
  *(v10 + 7) = v19;
  v10[64] = 0;
  *(v10 + 9) = KeyPath;
  *(v10 + 10) = v20;
  *(v10 + 11) = v22;
  v10[96] = v23;
  sub_10008701C();
  sub_10008699C();
  v33 = v39;
  sub_10004AA64(v10, v39);
  v34 = v33 + *(sub_100001EEC(&qword_1000AF3B8, &qword_10008BD50) + 36);
  v35 = v46;
  *(v34 + 64) = v45;
  *(v34 + 80) = v35;
  *(v34 + 96) = v47;
  v36 = v42;
  *v34 = v41;
  *(v34 + 16) = v36;
  result = v44;
  *(v34 + 32) = v43;
  *(v34 + 48) = result;
  return result;
}

double sub_10004AA54@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *&result = sub_10004A6A4(a1).n128_u64[0];
  return result;
}

uint64_t sub_10004AA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AF3A8, &qword_10008BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004AAD8()
{
  result = qword_1000AF3C0;
  if (!qword_1000AF3C0)
  {
    sub_100003200(&qword_1000AF3B8, &qword_10008BD50);
    sub_10004AB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3C0);
  }

  return result;
}

unint64_t sub_10004AB64()
{
  result = qword_1000AF3C8;
  if (!qword_1000AF3C8)
  {
    sub_100003200(&qword_1000AF3A8, &qword_10008BD10);
    sub_10004AC1C();
    sub_100006454(&qword_1000AF410, &qword_1000AF3B0, &qword_10008BD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3C8);
  }

  return result;
}

unint64_t sub_10004AC1C()
{
  result = qword_1000AF3D0;
  if (!qword_1000AF3D0)
  {
    sub_100003200(&qword_1000AF3D8, &qword_10008BD58);
    sub_10004ACD4();
    sub_100006454(&qword_1000AF400, &qword_1000AF408, qword_10008BD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3D0);
  }

  return result;
}

unint64_t sub_10004ACD4()
{
  result = qword_1000AF3E0;
  if (!qword_1000AF3E0)
  {
    sub_100003200(&qword_1000AF3E8, &qword_10008BD60);
    sub_10004AD8C();
    sub_100006454(&qword_1000AEF20, &qword_1000AEF28, &qword_10008B360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3E0);
  }

  return result;
}

unint64_t sub_10004AD8C()
{
  result = qword_1000AF3F0;
  if (!qword_1000AF3F0)
  {
    sub_100003200(&qword_1000AF3F8, &qword_10008BD68);
    sub_100043968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3F0);
  }

  return result;
}

uint64_t sub_10004AE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008672C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v18 = v6;
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    (*(v6 + 16))(v8, v10, v4);

    v11 = 1;
    while (v9 != v11)
    {
      v12 = v11 + 1;
      v13 = v10 + *(v18 + 72) * v11;
      sub_10004B090();
      v14 = sub_10008713C();
      v11 = v12;
      if ((v14 & 1) == 0)
      {
        (*(v18 + 8))(v8, v4);

        (*(v18 + 104))(a2, enum case for BetaEnrollment.State.multiple(_:), v4);
        return (*(v18 + 56))(a2, 0, 1, v4);
      }
    }

    (*(v18 + 32))(a2, v8, v4);
    return (*(v18 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v15 = *(v6 + 56);

    return v15(a2, 1, 1, v4);
  }
}

uint64_t sub_10004B048()
{
  result = sub_1000866FC();
  qword_1000B3BD8 = result;
  unk_1000B3BE0 = v1;
  return result;
}

uint64_t sub_10004B06C()
{
  result = sub_10008671C();
  qword_1000B3BE8 = result;
  unk_1000B3BF0 = v1;
  return result;
}

unint64_t sub_10004B090()
{
  result = qword_1000ADD50;
  if (!qword_1000ADD50)
  {
    sub_10008672C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADD50);
  }

  return result;
}

Swift::Int sub_10004B0E8()
{
  sub_100087ADC();
  sub_1000871AC();
  return sub_100087AFC();
}

Swift::Int sub_10004B15C()
{
  sub_100087ADC();
  sub_1000871AC();
  return sub_100087AFC();
}

uint64_t sub_10004B1B0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A6710;
  v7._object = v3;
  v5 = sub_1000879AC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_10004B254()
{
  result = qword_1000AF418[0];
  if (!qword_1000AF418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF418);
  }

  return result;
}

uint64_t sub_10004B2A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004B338(uint64_t a1, uint64_t a2)
{
  v4 = sub_100086B7C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100086B8C();
}

uint64_t sub_10004B430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100086B7C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100086B8C();
}

uint64_t sub_10004B528(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_10008706C();
}

uint64_t sub_10004B708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v101 = a4;
  v100 = a3;
  v92 = a2;
  v115 = a1;
  v113 = a7;
  v9 = sub_100086A8C();
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  __chkstk_darwin(v9);
  v110 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10008742C();
  v108 = *(v109 - 8);
  v12 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_10004E588();
  v17 = sub_10004E5DC();
  v18 = *(AssociatedConformanceWitness + 32);
  v124 = AssociatedTypeWitness;
  v125 = &type metadata for SelectableRowContents;
  v126 = &type metadata for RowContents;
  v127 = v18;
  v128 = v16;
  v129 = v17;
  type metadata accessor for DisclosureGroupPicker();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C5C();
  swift_getWitnessTable();
  sub_100086F4C();
  v19 = sub_100086B9C();
  v103 = *(v19 - 8);
  v20 = *(v103 + 64);
  __chkstk_darwin(v19);
  v22 = &v80 - v21;
  v23 = sub_10000DAF0();
  WitnessTable = swift_getWitnessTable();
  v122 = v23;
  v123 = WitnessTable;
  v25 = swift_getWitnessTable();
  v124 = v19;
  v125 = v25;
  v81 = v19;
  v82 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v102 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v86 = &v80 - v27;
  v28 = sub_10008695C();
  v104 = *(v28 - 8);
  v29 = *(v104 + 64);
  __chkstk_darwin(v28);
  v89 = &v80 - v30;
  v85 = v28;
  v31 = sub_10008695C();
  v105 = *(v31 - 8);
  v32 = *(v105 + 64);
  __chkstk_darwin(v31);
  v96 = &v80 - v33;
  sub_1000868BC();
  v91 = v31;
  v34 = sub_10008695C();
  v106 = *(v34 - 8);
  v35 = *(v106 + 64);
  __chkstk_darwin(v34);
  v99 = &v80 - v36;
  v124 = v19;
  v125 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = OpaqueTypeConformance2;
  v121 = &protocol witness table for _AppearanceActionModifier;
  v84 = swift_getWitnessTable();
  v118 = v84;
  v119 = &protocol witness table for _AppearanceActionModifier;
  v37 = swift_getWitnessTable();
  v88 = v37;
  v38 = sub_10004E630();
  v116 = v37;
  v117 = v38;
  v94 = v34;
  v95 = swift_getWitnessTable();
  v124 = v34;
  v125 = v95;
  v98 = swift_getOpaqueTypeMetadata2();
  v93 = *(v98 - 8);
  v39 = *(v93 + 64);
  v40 = __chkstk_darwin(v98);
  v87 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v90 = &v80 - v42;
  v43 = v22;
  v44 = v22;
  v45 = v92;
  LOBYTE(v19) = v100;
  v46 = v101;
  v47 = a5;
  v48 = a5;
  v49 = a6;
  sub_10004C290(v115, v92, v100, v101, v48, a6, v44);
  v114 = a6;
  v50 = *(a6 + 48);
  swift_unknownObjectRetain();
  v80 = v47;
  v50(v47, v49);
  swift_unknownObjectRelease();
  v51 = v86;
  v52 = v81;
  sub_100086D6C();

  (*(v103 + 8))(v43, v52);
  v53 = swift_allocObject();
  *(v53 + 16) = v47;
  v54 = v114;
  v55 = v115;
  *(v53 + 24) = v114;
  *(v53 + 32) = v55;
  *(v53 + 40) = v45;
  *(v53 + 48) = v19;
  *(v53 + 56) = v46;
  v56 = v46;

  swift_unknownObjectRetain();
  v57 = v89;
  v58 = OpaqueTypeMetadata2;
  sub_100086DEC();

  (*(v102 + 8))(v51, v58);
  v59 = swift_allocObject();
  v60 = v80;
  *(v59 + 16) = v80;
  *(v59 + 24) = v54;
  *(v59 + 32) = v55;
  *(v59 + 40) = v45;
  *(v59 + 48) = v19;
  *(v59 + 56) = v56;
  v61 = v45;
  swift_unknownObjectRetain();

  v62 = v96;
  v63 = v85;
  sub_100086D2C();

  (*(v104 + 8))(v57, v63);
  v64 = swift_allocObject();
  v65 = v114;
  *(v64 + 16) = v60;
  *(v64 + 24) = v65;
  *(v64 + 32) = v55;
  *(v64 + 40) = v61;
  *(v64 + 48) = v19;
  *(v64 + 56) = v56;
  swift_unknownObjectRetain();

  v66 = v107;
  sub_10008740C();
  v67 = v99;
  v68 = v91;
  sub_100086DAC();

  (*(v108 + 8))(v66, v109);
  (*(v105 + 8))(v62, v68);
  v70 = v110;
  v69 = v111;
  v71 = v112;
  (*(v111 + 104))(v110, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v112);
  v72 = v87;
  v73 = v94;
  sub_100086D9C();
  (*(v69 + 8))(v70, v71);
  (*(v106 + 8))(v67, v73);
  v74 = v93;
  v75 = *(v93 + 16);
  v76 = v90;
  v77 = v98;
  v75(v90, v72, v98);
  v78 = *(v74 + 8);
  v78(v72, v77);
  v75(v113, v76, v77);
  return (v78)(v76, v77);
}

uint64_t sub_10004C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a4;
  v49 = a3;
  v46 = a1;
  v53 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_10004E588();
  v12 = sub_10004E5DC();
  v47 = *(AssociatedConformanceWitness + 32);
  *&v60 = AssociatedTypeWitness;
  *(&v60 + 1) = &type metadata for SelectableRowContents;
  *v61 = &type metadata for RowContents;
  *&v61[8] = v47;
  *&v61[24] = v11;
  *&v62 = v12;
  type metadata accessor for DisclosureGroupPicker();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C5C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_100086F4C();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &WitnessTable - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &WitnessTable - v18;
  v52 = sub_100086B9C();
  v51 = *(v52 - 8);
  v19 = *(v51 + 64);
  __chkstk_darwin(v52);
  v21 = &WitnessTable - v20;
  v22 = *(a6 + 32);
  swift_unknownObjectRetain();
  v23 = a5;
  v24 = v22(a5, a6);
  swift_unknownObjectRelease();
  LOBYTE(a5) = sub_10008752C();

  if (a5)
  {
    AssociatedTypeWitness = v13;
    LOBYTE(v60) = v49 & 1;
    *(&v60 + 1) = v50;
    sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
    sub_100086E8C();
    if (v54 == 1)
    {
      if (qword_1000ADBA0 != -1)
      {
        swift_once();
      }

      v27 = qword_1000B3A78;
      v26 = unk_1000B3A80;
      v28 = byte_1000B3A88;
      v29 = qword_1000B3A90;
      v30 = qword_1000ADBA8;

      if (v30 != -1)
      {
        swift_once();
      }

      v17 = qword_1000B3A98;
      v31 = unk_1000B3AA0;
      v24 = byte_1000B3AA8;
      v32 = qword_1000B3AB0;
      v33 = 1;
    }

    else
    {
      if (qword_1000ADB40 != -1)
      {
        swift_once();
      }

      v33 = 0;
      v27 = qword_1000B38F8;
      v31 = unk_1000B3900;
      v28 = byte_1000B3908;
      v32 = qword_1000B3910;
      v26 = unk_1000B3900;
      v29 = qword_1000B3910;
    }

    *&v54 = v27;
    *(&v54 + 1) = v26;
    *&v55 = v28;
    *(&v55 + 1) = v29;
    *&v56 = 0;
    *(&v56 + 1) = v17;
    *&v57 = v31;
    *(&v57 + 1) = v24;
    v58 = v32;
    v59 = v33;
    sub_10000DAF0();
    swift_getWitnessTable();
    sub_10004B338(&v54, &type metadata for StatusInfoView);
    v62 = v57;
    v63 = v58;
    v64 = v59;
    v60 = v54;
    *v61 = v55;
    *&v61[16] = v56;
    sub_10000E018(&v60);
  }

  else
  {
    __chkstk_darwin(v25);
    *(&WitnessTable - 6) = v23;
    *(&WitnessTable - 5) = a6;
    *(&WitnessTable - 4) = v46;
    *(&WitnessTable - 3) = a2;
    *(&WitnessTable - 16) = v49 & 1;
    *(&WitnessTable - 1) = v50;
    sub_100086B3C();
    sub_100086F3C();
    swift_getWitnessTable();
    v34 = v45;
    v35 = *(v45 + 16);
    v36 = v44;
    v35(v44, v17, v13);
    v37 = *(v34 + 8);
    v37(v17, v13);
    v35(v17, v36, v13);
    sub_10000DAF0();
    sub_10004B430(v17, &type metadata for StatusInfoView, v13);
    v37(v17, v13);
    v37(v36, v13);
  }

  v38 = sub_10000DAF0();
  v39 = swift_getWitnessTable();
  v65 = v38;
  v66 = v39;
  v40 = v52;
  swift_getWitnessTable();
  v41 = v51;
  (*(v51 + 16))(v53, v21, v40);
  return (*(v41 + 8))(v21, v40);
}

void sub_10004C9D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = aBlock - v14;
  v16 = sub_10008742C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1000873FC();

  swift_unknownObjectRetain();
  v17 = sub_1000873EC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = a3;
  *(v18 + 72) = a4;
  sub_100016C64(0, 0, v15, &unk_10008BFB0, v18);

  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  aBlock[4] = sub_10000DEF0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023E30;
  aBlock[3] = &unk_1000A8B98;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v22 = [v19 scheduledTimerWithTimeInterval:0 repeats:v21 block:5.0];
  _Block_release(v21);
}

uint64_t sub_10004CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10004CCBC, v10, v9);
}

uint64_t sub_10004CCBC()
{
  v1 = v0[2];
  v2 = *(v0[4] + 88);
  swift_unknownObjectRetain();
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10000A94C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(1, v5, v6);
}

uint64_t sub_10004CDD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_10008742C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1000873FC();

  swift_unknownObjectRetain();
  v17 = sub_1000873EC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = a3;
  *(v18 + 72) = a4;
  sub_100016C64(0, 0, v15, &unk_10008BFA0, v18);
}

uint64_t sub_10004CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10004CFD4, v10, v9);
}

uint64_t sub_10004CFD4()
{
  v1 = v0[2];
  v2 = *(v0[4] + 88);
  swift_unknownObjectRetain();
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10000A94C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return (v9)(0, v5, v6);
}

uint64_t sub_10004D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  sub_1000873FC();
  v6[5] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_10004D188, v8, v7);
}

uint64_t sub_10004D188()
{
  v1 = v0[2];
  v2 = *(v0[4] + 80);
  swift_unknownObjectRetain();
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10000AF5C;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return v9(v6, v5);
}

uint64_t sub_10004D2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v29 = a4;
  v30 = a7;
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_10004E588();
  v14 = sub_10004E5DC();
  v15 = *(AssociatedConformanceWitness + 32);
  v37 = AssociatedTypeWitness;
  v38 = &type metadata for SelectableRowContents;
  v39 = &type metadata for RowContents;
  v40 = v15;
  v41 = v13;
  v42 = v14;
  type metadata accessor for DisclosureGroupPicker();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  v16 = sub_100086C5C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v27[-v22];
  v31 = a5;
  v32 = a6;
  v33 = a1;
  v34 = a2;
  v35 = v28;
  v36 = v29;
  sub_100086C4C();
  swift_getWitnessTable();
  v24 = v17[2];
  v24(v23, v21, v16);
  v25 = v17[1];
  v25(v21, v16);
  v24(v30, v23, v16);
  return (v25)(v23, v16);
}

uint64_t sub_10004D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v32 = a4;
  v33 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10004E588();
  v15 = sub_10004E5DC();
  v16 = *(AssociatedConformanceWitness + 32);
  v38 = AssociatedTypeWitness;
  v39 = &type metadata for SelectableRowContents;
  v40 = &type metadata for RowContents;
  v41 = v16;
  v42 = v14;
  v43 = v15;
  type metadata accessor for DisclosureGroupPicker();
  v17 = sub_10008700C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  sub_10004D844(a1, a2, a3, v32, a5, a6);
  WitnessTable = swift_getWitnessTable();
  v37[1] = &protocol witness table for EmptyView;
  v37[2] = WitnessTable;
  v37[3] = &protocol witness table for AnyView;
  v26 = swift_getWitnessTable();
  v27 = v18[2];
  v27(v24, v22, v17);
  v28 = v18[1];
  v28(v22, v17);
  sub_10004D998(a5, a6, &v38);
  v29 = v38;
  v27(v22, v24, v17);
  v37[0] = v29;
  v38 = v22;
  v39 = v37;

  v36[0] = v17;
  v36[1] = &type metadata for AnyView;
  v34 = v26;
  v35 = &protocol witness table for AnyView;
  sub_10004B528(&v38, 2uLL, v36);

  v28(v24, v17);

  return (v28)(v22, v17);
}

uint64_t sub_10004D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10004DB64(a5, a6, &v9);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10004E588();
  sub_10004E5DC();
  v8 = *(AssociatedConformanceWitness + 32);
  type metadata accessor for DisclosureGroupPicker();
  swift_getWitnessTable();
  return sub_100086FFC();
}

uint64_t sub_10004D998@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  swift_unknownObjectRetain();
  v7 = v6(a1, a2);
  swift_unknownObjectRelease();
  if (v7)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_unknownObjectRetain();
    sub_10003D2E0(AssociatedTypeWitness, AssociatedConformanceWitness, v13);
    swift_unknownObjectRelease();
    v10 = type metadata accessor for CarrySettingsDetailView();
    swift_getWitnessTable();
    v11 = sub_100059858(v10);
    swift_unknownObjectRelease();
    v15[8] = v13[8];
    v15[9] = v13[9];
    v16 = v14;
    v15[4] = v13[4];
    v15[5] = v13[5];
    v15[6] = v13[6];
    v15[7] = v13[7];
    v15[0] = v13[0];
    v15[1] = v13[1];
    v15[2] = v13[2];
    v15[3] = v13[3];
    result = (*(*(v10 - 8) + 8))(v15, v10);
  }

  else
  {
    result = sub_100086F5C();
    v11 = result;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_10004DB64@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 56);
  swift_unknownObjectRetain();
  v7 = v6(a1, a2);
  swift_unknownObjectRelease();
  v21 = v7;
  v20[2] = a1;
  v20[3] = a2;
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 32);
  v9 = sub_10008756C();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_100013210(sub_10004EAE0, v20, v9, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v11);

  if (*(v12 + 16))
  {
    v21 = v12;
    sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
    sub_100012FE8();
    v13 = sub_10008712C();
    v15 = v14;

    v21 = v13;
    v22 = v15;
    sub_1000064FC();
    v21 = sub_100086CCC();
    v22 = v16;
    v23 = v17 & 1;
    v24 = v18;
  }

  else
  {
  }

  result = sub_100086F5C();
  *a3 = result;
  return result;
}

uint64_t sub_10004DD58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 24);
  v4 = *(v3 + 8);
  v5 = swift_checkMetadataState();
  result = v4(v5, v3);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_10004DE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = *(a6 + 32);
  swift_unknownObjectRetain();
  v12 = v11(a5, a6);
  swift_unknownObjectRelease();
  *&v47 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 32);
  sub_10008756C();
  swift_getWitnessTable();
  v30 = sub_1000873BC();
  v16 = *(a6 + 8);
  sub_10008690C();
  swift_getKeyPath();
  sub_10008691C();

  swift_unknownObjectRelease();
  v17 = *(&v41 + 1);
  v28 = v42;
  v29 = v41;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = *(AssociatedConformanceWitness + 40);
  v21 = sub_10004E588();
  v22 = sub_10004E5DC();
  swift_unknownObjectRetain();

  sub_10005177C(v30, v29, v17, v28, 4, sub_10004EAB4, v18, sub_10004EAD8, &v47, v19, AssociatedTypeWitness, &type metadata for SelectableRowContents, &type metadata for RowContents, v15, v20, v21, v22);
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v34 = v47;
  v35 = v48;
  *&v41 = AssociatedTypeWitness;
  *(&v41 + 1) = &type metadata for SelectableRowContents;
  *&v42 = &type metadata for RowContents;
  *(&v42 + 1) = v15;
  *&v43 = v20;
  *(&v43 + 1) = v21;
  *&v44 = v22;
  v23 = type metadata accessor for DisclosureGroupPicker();
  swift_getWitnessTable();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v25(v40, &v34, v23);
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  v41 = v34;
  v42 = v35;
  v26 = *(v24 + 8);
  v26(&v41, v23);
  v36 = v40[2];
  v37 = v40[3];
  v38 = v40[4];
  v39 = v40[5];
  v34 = v40[0];
  v35 = v40[1];
  v25(a7, &v34, v23);
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v47 = v34;
  v48 = v35;
  return (v26)(&v47, v23);
}

__n128 sub_10004E1A0@<Q0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = sub_100086AEC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100086AFC();
  v10 = v9;
  v25 = v11;
  v13 = v12;
  v14 = *(a2 + 56);
  swift_unknownObjectRetain();
  v14(a1, a2);
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 16);
  v17 = *(AssociatedConformanceWitness + 32);
  v18 = sub_100043B94();

  sub_100086ADC();
  v41._countAndFlagsBits = 0x44455443454C4553;
  v41._object = 0xE900000000000020;
  sub_100086ACC(v41);
  v32[0] = v18;
  sub_100086AAC();
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_100086ACC(v42);
  v19 = sub_100086B0C();
  *&v27 = v8;
  *(&v27 + 1) = v10;
  v28.n128_u8[0] = v25 & 1;
  v28.n128_u64[1] = v13;
  *&v29 = v19;
  *(&v29 + 1) = v20;
  *&v30 = v21 & 1;
  *(&v30 + 1) = v22;
  *&v31 = 0xD000000000000011;
  *(&v31 + 1) = 0x800000010008F640;
  v32[0] = v8;
  v32[1] = v10;
  v33 = v25 & 1;
  v34 = v13;
  v35 = v19;
  v36 = v20;
  v37 = v30;
  v38 = v22;
  v39 = 0xD000000000000011;
  v40 = 0x800000010008F640;
  sub_10003DE60(&v27, v26);
  sub_10003DEBC(v32);
  v23 = v30;
  *(a3 + 32) = v29;
  *(a3 + 48) = v23;
  *(a3 + 64) = v31;
  result = v28;
  *a3 = v27;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_10004E3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = *(v5 + 8);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, v5);
  v10 = v9;
  v11 = (*(AssociatedConformanceWitness + 184))(v7, AssociatedConformanceWitness);
  v13 = v12;
  result = (*(v5 + 16))(v7, v5);
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

unint64_t sub_10004E588()
{
  result = qword_1000AF4A0;
  if (!qword_1000AF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF4A0);
  }

  return result;
}

unint64_t sub_10004E5DC()
{
  result = qword_1000AF4A8[0];
  if (!qword_1000AF4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF4A8);
  }

  return result;
}

unint64_t sub_10004E630()
{
  result = qword_1000AE060;
  if (!qword_1000AE060)
  {
    sub_1000868BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE060);
  }

  return result;
}

uint64_t sub_10004E6D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100002740;

  return sub_10004D0EC(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_10004E7A0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000324C;

  return sub_10004CF30(a1, v6, v7, v8, v9, v10, v11, v4);
}

uint64_t sub_10004E890(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000324C;

  return sub_10004CC18(a1, v6, v7, v8, v9, v10, v11, v4);
}

uint64_t sub_10004E980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004E9F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 56))(*(a2 + a3 - 16));
  *a4 = result;
  return result;
}

uint64_t sub_10004EA40(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a2;
  v8 = *(v5 + 64);

  return v8(v9, v4, v5);
}

__n128 sub_10004EAA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_10004EAB4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *&result = sub_10004E1A0(*(v1 + 16), *(v1 + 24), a1).n128_u64[0];
  return result;
}

uint64_t sub_10004EAD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10004E3F0(a1, a2);
}

uint64_t sub_10004EAE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10004DD58(a1, a2);
}

uint64_t sub_10004EB00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10004E588();
  sub_10004E5DC();
  v5 = *(AssociatedConformanceWitness + 32);
  type metadata accessor for DisclosureGroupPicker();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C5C();
  swift_getWitnessTable();
  sub_100086F4C();
  sub_100086B9C();
  sub_10000DAF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10008695C();
  sub_10008695C();
  sub_1000868BC();
  sub_10008695C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10004E630();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = sub_1000868FC();
  sub_100086E7C();
  return v5;
}

uint64_t sub_10004EE60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10008672C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  v16 = *(a6 + 72);
  swift_unknownObjectRetain();
  v16(a5, a6);
  swift_unknownObjectRelease();
  (*(v9 + 104))(v13, enum case for BetaEnrollment.State.enrolled(_:), v8);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  result = 0;
  if (v23[1] == v23[0])
  {
    v19 = [objc_opt_self() mainBundle];
    v22._countAndFlagsBits = 0xE000000000000000;
    v24._object = 0x800000010008F660;
    v24._countAndFlagsBits = 0xD000000000000015;
    v25.value._countAndFlagsBits = 0;
    v25.value._object = 0;
    v20.super.isa = v19;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v21 = sub_100085FFC(v24, v25, v20, v26, v22);

    return v21;
  }

  return result;
}

uint64_t sub_10004F150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v24 = a7;
  v22 = a3;
  v21 = a1;
  v10 = sub_10008672C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v18 = *(a6 + 72);
  swift_unknownObjectRetain();
  v18(a5, a6);
  (*(v11 + 104))(v15, enum case for BetaEnrollment.State.enrolled(_:), v10);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  LOBYTE(v33) = v31 == v33;
  sub_100086E7C();
  v32 = a2;
  v25 = a5;
  v26 = a6;
  v27 = v21;
  v28 = a2;
  v29 = v22;
  v30 = v23;
  sub_100001EEC(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsEnrollmentSelectionView();
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  swift_getWitnessTable();
  return sub_1000868CC();
}

uint64_t sub_10004F474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 + 8);
  swift_unknownObjectRetain();
  v23 = v9(a2, v8);
  v11 = v10;
  v12 = (*(a3 + 64))(a2, a3);
  v14 = v13;
  v16 = sub_10004EEF8(v12, a1, 0, v15, a2, a3);
  v18 = v17;
  v19 = (*(v8 + 16))(a2, v8);
  v21 = v20;
  result = swift_unknownObjectRelease();
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 40) = 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = v14;
  *(a4 + 64) = v23;
  *(a4 + 72) = v11;
  *(a4 + 80) = v16;
  *(a4 + 88) = v18;
  return result;
}

uint64_t sub_10004F594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v100 = a1;
  v101 = a4;
  v98 = a3;
  v92 = a2;
  v102 = a7;
  v107 = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v108 = type metadata accessor for BetaProgramsEnrollmentSelectionView();
  v109 = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1000868DC();
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  v11 = __chkstk_darwin(v9);
  v89 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v88 = (&v79 - v13);
  v91 = a5;
  swift_getAssociatedTypeWitness();
  v14 = sub_10008739C();
  v15 = *(swift_getAssociatedConformanceWitness() + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = v14;
  v108 = AssociatedTypeWitness;
  v109 = &type metadata for AnyView;
  WitnessTable = v17;
  v111 = AssociatedConformanceWitness;
  v19 = sub_100086FBC();
  v20 = swift_getWitnessTable();
  v106 = &protocol witness table for AnyView;
  v21 = swift_getWitnessTable();
  v107 = v9;
  v108 = v19;
  v82 = v19;
  v99 = v20;
  v109 = v20;
  WitnessTable = v21;
  v79 = v21;
  v22 = sub_10008694C();
  v83 = *(v22 - 8);
  v23 = *(v83 + 64);
  v24 = __chkstk_darwin(v22);
  v81 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v80 = (&v79 - v26);
  v87 = sub_1000864CC();
  v86 = *(v87 - 8);
  v27 = *(v86 + 64);
  v28 = __chkstk_darwin(v87);
  v85 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v84 = &v79 - v30;
  v31 = sub_10008672C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v79 - v37;
  v96 = v22;
  v97 = v9;
  v39 = sub_100086B9C();
  v94 = *(v39 - 8);
  v95 = v39;
  v40 = *(v94 + 64);
  __chkstk_darwin(v39);
  v93 = &v79 - v41;
  v42 = a6;
  v43 = *(a6 + 72);
  v44 = swift_unknownObjectRetain();
  v45 = v91;
  v43();
  (*(v32 + 104))(v36, enum case for BetaEnrollment.State.multiple(_:), v31);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v46 = *(v32 + 8);
  v46(v36, v31);
  v46(v38, v31);
  if (v107 != v105)
  {
    v50 = v44;
    swift_unknownObjectRelease();
    v57 = v42;
    v58 = v45;
    goto LABEL_5;
  }

  v47 = v42;
  v48 = *(v42 + 48);
  v49 = v84;
  v50 = v44;
  v51 = v45;
  v48(v45, v47);
  swift_unknownObjectRelease();
  v52 = v86;
  v53 = v85;
  v54 = v87;
  (*(v86 + 104))(v85, enum case for BetaEnrollment.Availability.unavailable(_:), v87);
  sub_100005AA0(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  v55 = sub_10008713C();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v49, v54);
  v57 = v47;
  v58 = v51;
  if (v55)
  {
LABEL_5:
    v71 = v89;
    sub_10004F150(v100, v50, v98 & 1, v101, v58, v57, v89);
    v72 = v88;
    v73 = v97;
    v65 = v99;
    sub_10004EDD8(v88, v71, v97, v99);
    v74 = *(v90 + 8);
    v74(v71, v73);
    sub_10004EDD8(v71, v72, v73, v65);
    v75 = v96;
    swift_getWitnessTable();
    v70 = v93;
    sub_10004B430(v71, v75, v73);
    v74(v71, v73);
    v74(v72, v73);
    goto LABEL_6;
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  *(v59 + 24) = v47;
  *(v59 + 32) = v100;
  *(v59 + 40) = v50;
  *(v59 + 48) = v98 & 1;
  v60 = v101;
  *(v59 + 56) = v101;
  v61 = __chkstk_darwin(v60);
  *(&v79 - 6) = v51;
  *(&v79 - 5) = v47;
  *(&v79 - 4) = v62;
  *(&v79 - 3) = v50;
  *(&v79 - 16) = v63;
  *(&v79 - 1) = v61;

  swift_unknownObjectRetain();
  v64 = v81;
  v65 = v99;
  sub_10008693C();
  v66 = v96;
  v67 = swift_getWitnessTable();
  v68 = v80;
  sub_10004EDD8(v80, v64, v66, v67);
  v69 = *(v83 + 8);
  v69(v64, v66);
  sub_10004EDD8(v64, v68, v66, v67);
  v70 = v93;
  sub_10004B338(v64, v66);
  v69(v64, v66);
  v69(v68, v66);
LABEL_6:
  v103 = swift_getWitnessTable();
  v104 = v65;
  v76 = v95;
  v77 = swift_getWitnessTable();
  sub_10004EDD8(v102, v70, v76, v77);
  return (*(v94 + 8))(v70, v76);
}

uint64_t sub_10004FFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v28 = a4;
  v27 = a3;
  v26 = a1;
  v30 = a7;
  swift_getAssociatedTypeWitness();
  v10 = sub_10008739C();
  v25[2] = *(swift_getAssociatedConformanceWitness() + 24);
  v29 = v10;
  v32 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25[1] = AssociatedTypeWitness;
  v34 = &type metadata for AnyView;
  WitnessTable = swift_getWitnessTable();
  v25[0] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_100086FBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (v25 - v17);
  v19 = *(a6 + 56);
  swift_unknownObjectRetain();
  v20 = v19(a5, a6);
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = sub_10008732C();
  }

  v32 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = v26;
  *(v21 + 40) = a2;
  *(v21 + 48) = v27 & 1;
  *(v21 + 56) = v28;

  swift_unknownObjectRetain();
  sub_100086FAC();
  v31 = &protocol witness table for AnyView;
  v22 = swift_getWitnessTable();
  sub_10004EDD8(v18, v16, v11, v22);
  v23 = *(v12 + 8);
  v23(v16, v11);
  sub_10004EDD8(v30, v18, v11, v22);
  return (v23)(v18, v11);
}

uint64_t sub_10005032C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1000503D4(AssociatedTypeWitness, &v7, AssociatedConformanceWitness);
  *a2 = v7;
  return result;
}

uint64_t sub_1000503D4@<X0>(uint64_t a1@<X6>, uint64_t *a2@<X8>, uint64_t a3)
{
  v5 = (*(a3 + 88))(a1, a3);
  if (v5 && (v5 >> 62 ? (v6 = sub_10008793C()) : (v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v6 >= 1))
  {
    v7 = swift_unknownObjectRetain();
    sub_100004A04(v7, a1, a3);
    v8 = type metadata accessor for BetaSettingsMultiSeedingRowView();
    swift_getWitnessTable();
    v9 = sub_100059858(v8);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v11 = swift_unknownObjectRetain();
    sub_10004EDF0(v11, 0, a1, a3);
    v12 = type metadata accessor for BetaSettingsSeedingRowView();
    swift_getWitnessTable();
    v9 = sub_100059858(v12);
    swift_unknownObjectRelease();
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100050568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v25 = a7;
  v26 = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v27 = type metadata accessor for BetaProgramsEnrollmentSelectionView();
  v28 = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1000868DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = (&v24 - v19);
  sub_10004F150(a1, a2, a3, a4, a5, a6, v18);
  v21 = swift_getWitnessTable();
  sub_10004EDD8(v20, v18, v13, v21);
  v22 = *(v14 + 8);
  v22(v18, v13);
  sub_10004EDD8(v25, v20, v13, v21);
  return (v22)(v20, v13);
}

uint64_t sub_10005077C()
{
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  return v1;
}

uint64_t sub_100050850@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100001EEC(&qword_1000AF5B0, &qword_10008C1A0);
  sub_100051528();
  sub_100086C6C();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  v13 = (a6 + *(sub_100001EEC(&qword_1000AF5D0, &unk_10008C1B0) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1000515E8;
  v13[3] = v12;

  return swift_unknownObjectRetain();
}

uint64_t sub_10005095C()
{
  sub_100001EEC(&qword_1000AF5C8, &qword_10008C1A8);
  sub_100006454(&qword_1000AF5C0, &qword_1000AF5C8, &qword_10008C1A8);
  return sub_100086FEC();
}

uint64_t sub_100050A08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100050AD8(a1, a2, a3, a4, a5, &v21);
  v13 = v21;
  v12 = v22;
  v14 = v23;
  v20 = v24;
  sub_100050C14(a1, a2, a3, a4, a5, &v21);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  *a6 = v13;
  *(a6 + 8) = v12;
  *(a6 + 16) = v14;
  *(a6 + 24) = v20;
  *(a6 + 40) = v15;
  *(a6 + 48) = v16;
  *(a6 + 56) = v17;
  *(a6 + 64) = v18;
}

uint64_t sub_100050AD8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 4605519;
  v21._object = 0xE300000000000000;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v13.super.isa = v12;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v14 = sub_100085FFC(v21, v22, v13, v23, v19);
  v16 = v15;

  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = (v20 & 1) == 0;
  *(a6 + 24) = sub_100051650;
  *(a6 + 32) = v17;

  return swift_unknownObjectRetain();
}

uint64_t sub_100050C14@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v21._object = 0x800000010008F660;
  v21._countAndFlagsBits = 0xD000000000000015;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v13.super.isa = v12;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v14 = sub_100085FFC(v21, v22, v13, v23, v19);
  v16 = v15;

  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v20;
  *(a6 + 24) = sub_100051608;
  *(a6 + 32) = v17;

  return swift_unknownObjectRetain();
}

uint64_t sub_100050D54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10008672C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v27[-v15];
  v17 = a1 & 1;
  v31 = a1;
  v32 = a2;
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  if (v30 == 1)
  {
    (*(a5 + 72))(a4, a5);
    (*(v10 + 104))(v14, enum case for BetaEnrollment.State.enrolled(_:), v9);
    sub_100005AA0(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
    v28 = sub_10008713C();
    v29 = a1 & 1;
    v18 = a5;
    v19 = a4;
    v20 = v10;
    v21 = v10;
    v22 = a2;
    v23 = *(v20 + 8);
    v23(v14, v9);
    v23(v16, v9);
    a2 = v22;
    v10 = v21;
    a4 = v19;
    a5 = v18;
    v17 = v29;
    if ((v28 & 1) == 0)
    {
      (*(v18 + 96))(a4, v18);
    }
  }

  v31 = v17;
  v32 = a2;
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  result = sub_100086E8C();
  if ((v30 & 1) == 0)
  {
    (*(a5 + 72))(a4, a5);
    (*(v10 + 104))(v14, enum case for BetaEnrollment.State.notEnrolled(_:), v9);
    sub_100005AA0(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
    v25 = sub_10008713C();
    v26 = *(v10 + 8);
    v26(v14, v9);
    result = (v26)(v16, v9);
    if ((v25 & 1) == 0)
    {
      return (*(a5 + 112))(a4, a5);
    }
  }

  return result;
}

uint64_t sub_100051118@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  return sub_10005032C(a1, a2);
}

uint64_t sub_10005112C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *a1 = sub_100086B4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_10004F474(v6, v3, v4, a1 + 24);
}

uint64_t sub_1000511A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000511E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100051228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100051268(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003200(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsEnrollmentSelectionView();
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  swift_getWitnessTable();
  sub_1000868DC();
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v3 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10008694C();
  sub_100086B9C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100051518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_10005095C();
}

unint64_t sub_100051528()
{
  result = qword_1000AF5B8;
  if (!qword_1000AF5B8)
  {
    sub_100003200(&qword_1000AF5B0, &qword_10008C1A0);
    sub_100006454(&qword_1000AF5C0, &qword_1000AF5C8, &qword_10008C1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5B8);
  }

  return result;
}

uint64_t sub_100051610()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100051658()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  return sub_100086E9C();
}

unint64_t sub_1000516B8()
{
  result = qword_1000AF5D8;
  if (!qword_1000AF5D8)
  {
    sub_100003200(&qword_1000AF5D0, &unk_10008C1B0);
    sub_100006454(&qword_1000AF5E0, qword_1000AF5E8, &unk_10008C1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5D8);
  }

  return result;
}

uint64_t sub_10005177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v30 = a7;
  v31 = a8;
  v29 = a6;
  v28 = a5;
  v26 = a9;
  v27 = a1;
  v24 = a4;
  v25 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v37 = a16;
  v38 = a17;
  v19 = type metadata accessor for DisclosureGroupPicker.Selection();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v24 - v21);
  *v22 = a2;
  v22[1] = a3;
  v22[2] = v24;
  swift_storeEnumTagMultiPayload();
  return sub_100051908(v27, v22, v28, v29, v30, v31, v25, v26);
}

uint64_t sub_1000518AC()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086EAC();
  return v2;
}

uint64_t sub_100051908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100086E7C();
  *(a8 + 16) = v22;
  *(a8 + 24) = v23;
  *a8 = a3;
  *(a8 + 8) = a1;
  v11 = type metadata accessor for DisclosureGroupPicker();
  v12 = (a8 + v11[22]);
  *v12 = a4;
  v12[1] = a5;
  v13 = (a8 + v11[23]);
  *v13 = a6;
  v13[1] = a7;
  v14 = v11[21];
  v15 = type metadata accessor for DisclosureGroupPicker.Selection();
  return (*(*(v15 - 8) + 32))(a8 + v14, a2, v15);
}

uint64_t sub_100051A54(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10008767C();
  result = sub_100086F8C();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 40);
    sub_10008756C();
    result = sub_100086F8C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100051AF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v6 = 24;
  if (v5 > 0x18)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 < 2)
    {
LABEL_28:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_28;
  }

LABEL_17:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_100051C50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  if (v7 <= 0x18)
  {
    v7 = 24;
  }

  v8 = v7 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
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

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
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
LABEL_42:
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
            goto LABEL_42;
          }
        }

LABEL_39:
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
      goto LABEL_42;
    }

    goto LABEL_39;
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

LABEL_28:
      a1[v7] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_27;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_100051E58(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  type metadata accessor for DisclosureGroupPicker.SelectAllConfig();
  if (v8 <= 0x3F)
  {
    sub_10008739C();
    if (v9 <= 0x3F)
    {
      sub_10005225C();
      if (v10 <= 0x3F)
      {
        type metadata accessor for DisclosureGroupPicker.Selection();
        if (v11 <= 0x3F)
        {
          sub_1000522AC();
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100051F78(unint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v5;
  }

  v6 = v5 + ((v4 + 16) & ~v4);
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v9 = ((((((v4 & 0xF8 ^ 0x1F8u) & (v4 + 32)) + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  v11 = a2 - 2147483646;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else if (v13 == 2)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
LABEL_7:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v7 >= 0xFFFFFFFF)
      {
        LODWORD(v7) = -1;
      }

      return (v7 + 1);
    }
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v15) ^ 0x80000000;
}

unint64_t sub_1000520B4(unint64_t result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v6 = v5 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = ((((((*(v4 + 80) & 0xF8 ^ 0x1F8u) & (*(v4 + 80) + 32)) + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (((((((*(v4 + 80) & 0xF8 ^ 0x1F8) & (*(v4 + 80) + 32)) + v6 + 8) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v11 = a2 & 0x7FFFFFFF;
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    if (v7)
    {
      v13 = result;
      bzero(result, v7);
      result = v13;
      *v13 = v11;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v7) = v12;
      }

      else
      {
        *(result + v7) = v12;
      }
    }

    else if (v8)
    {
      *(result + v7) = v12;
    }

    return result;
  }

  v8 = 0;
  if (a2 < 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v8 <= 1)
  {
    if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (v8 == 2)
  {
    *(result + v7) = 0;
    goto LABEL_31;
  }

  *(result + v7) = 0;
  if (a2)
  {
LABEL_32:
    *((result & 0xFFFFFFFFFFFFFFF8) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10005225C()
{
  if (!qword_1000AF6F0)
  {
    v0 = sub_100086EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF6F0);
    }
  }
}

unint64_t sub_1000522AC()
{
  result = qword_1000AF6F8[0];
  if (!qword_1000AF6F8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1000AF6F8);
  }

  return result;
}

uint64_t sub_100052304(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100052394(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100052460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v52 = *(a1 - 8);
  *&v54 = *(v52 + 64);
  __chkstk_darwin(a1);
  v51 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100003200(&qword_1000AF780, &qword_10008C310);
  v53 = (a1 + 40);
  v58 = *(a1 + 16);
  v4 = a1;
  v48 = a1;
  v5 = sub_10008739C();
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  v55 = *(&v58 + 1);
  v6 = *(v4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(v4 + 32);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v72 = &protocol witness table for _FlexFrameLayout;
  v8 = swift_getWitnessTable();
  v9 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  v69 = v8;
  v70 = v9;
  swift_getWitnessTable();
  v10 = sub_100086EFC();
  v11 = sub_10008697C();
  v12 = swift_getWitnessTable();
  v13 = sub_100056224();
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = swift_getWitnessTable();
  v16 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v5;
  v65 = AssociatedTypeWitness;
  v66 = OpaqueTypeMetadata2;
  v67 = v15;
  v68 = AssociatedConformanceWitness;
  sub_100086FBC();
  swift_getTupleTypeMetadata3();
  v18 = sub_10008705C();
  v47 = v18;
  v19 = v48;
  v20 = *(v48 + 56);
  v46 = swift_getWitnessTable();
  v64 = *(&v58 + 1);
  v65 = v18;
  v66 = v20;
  v67 = v46;
  v21 = sub_10008694C();
  v49 = *(v21 - 8);
  v22 = *(v49 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = (v43 - v26);
  v28 = v57;
  v45 = sub_1000518AC();
  v44 = v29;
  v43[3] = v30;
  v31 = v52;
  v32 = v51;
  v33 = v19;
  (*(v52 + 16))(v51, v28, v19);
  v34 = (*(v31 + 80) + 72) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *&v36 = v50;
  *(&v36 + 1) = *v53;
  v54 = v36;
  *(v35 + 16) = v58;
  *(v35 + 32) = v36;
  *(v35 + 48) = v16;
  *(v35 + 56) = v20;
  v37 = v33;
  v38 = *(v33 + 64);
  *(v35 + 64) = v38;
  (*(v31 + 32))(v35 + v34, v32, v37);
  *&v39 = v16;
  *(&v39 + 1) = v20;
  v61 = v39;
  v59 = v58;
  v60 = v54;
  v62 = v38;
  v63 = v57;
  sub_10008692C();
  v40 = swift_getWitnessTable();
  sub_10004EDD8(v27, v25, v21, v40);
  v41 = *(v49 + 8);
  v41(v25, v21);
  sub_10004EDD8(v56, v27, v21, v40);
  return (v41)(v27, v21);
}

uint64_t sub_100052AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v28 = a7;
  v29 = a8;
  v26 = a3;
  v27 = a5;
  v25[0] = a4;
  v30 = a1;
  v31 = a9;
  sub_100003200(&qword_1000AF780, &qword_10008C310);
  v11 = sub_10008739C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  v25[1] = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v42 = &protocol witness table for _FlexFrameLayout;
  v39 = swift_getWitnessTable();
  v40 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  swift_getWitnessTable();
  sub_100086EFC();
  sub_10008697C();
  swift_getWitnessTable();
  sub_100056224();
  v32 = v11;
  v33 = AssociatedTypeWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getTupleTypeMetadata3();
  v13 = sub_10008705C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = (v25 - v19);
  v32 = a2;
  v33 = v26;
  OpaqueTypeMetadata2 = v25[0];
  v35 = v27;
  AssociatedConformanceWitness = a6;
  v37 = v28;
  v38 = v29;
  v21 = type metadata accessor for DisclosureGroupPicker();
  sub_100052F00(v21, v18);
  v22 = swift_getWitnessTable();
  sub_10004EDD8(v20, v18, v13, v22);
  v23 = *(v14 + 8);
  v23(v18, v13);
  sub_10004EDD8(v31, v20, v13, v22);
  return (v23)(v20, v13);
}

uint64_t sub_100052F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v2 = a1 - 8;
  v60 = *(a1 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(a1);
  v58 = v4;
  v59 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = sub_10008739C();
  v7 = *(v2 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(v2 + 40);
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  v56 = v9;
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v80 = &protocol witness table for _FlexFrameLayout;
  v10 = swift_getWitnessTable();
  v11 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  v77 = v10;
  v78 = v11;
  swift_getWitnessTable();
  v12 = sub_100086EFC();
  v13 = sub_10008697C();
  v14 = swift_getWitnessTable();
  v15 = sub_100056224();
  v52 = v12;
  v72 = v12;
  v73 = v13;
  v51 = v13;
  v49 = v14;
  v74 = v14;
  v75 = v15;
  v47 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = swift_getWitnessTable();
  v62 = v7;
  v57 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = v6;
  v72 = v6;
  v73 = AssociatedTypeWitness;
  v19 = v55;
  v61 = AssociatedTypeWitness;
  v50 = OpaqueTypeMetadata2;
  v74 = OpaqueTypeMetadata2;
  v75 = v17;
  v48 = v17;
  v76 = AssociatedConformanceWitness;
  v20 = sub_100086FBC();
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v54 = &v43 - v25;
  v26 = 0;
  v27 = *v19;
  v28 = *(v2 + 32);
  v44 = *(v2 + 48);
  v45 = *(v2 + 64);
  v46 = v27;
  if ((v27 - 3) <= 1)
  {
    sub_1000537A4(v65, &v72);
  }

  v55 = v26;
  v69[0] = *(v19 + 1);
  v29 = v60;
  v30 = v59;
  v31 = v65;
  (*(v60 + 16))(v59, v19, v65);
  v32 = (*(v29 + 80) + 72) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *&v34 = v57;
  *(&v34 + 1) = v28;
  *&v35 = v56;
  *(&v35 + 1) = v44;
  *(v33 + 16) = v34;
  *(v33 + 32) = v35;
  *(v33 + 48) = v62;
  *(v33 + 56) = v45;
  (*(v29 + 32))(v33 + v32, v30, v31);

  v72 = v52;
  v73 = v51;
  v74 = v49;
  v75 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100086FAC();
  v71[1] = OpaqueTypeConformance2;
  v37 = swift_getWitnessTable();
  v38 = v54;
  sub_10004EDD8(v54, v24, v20, v37);
  v39 = v53;
  v40 = *(v53 + 8);
  v40(v24, v20);
  if ((v46 - 1) > 1)
  {
    v41 = 0;
  }

  else
  {
    sub_1000537A4(v65, &v72);
    v41 = v72;
  }

  v71[0] = v55;
  v72 = v71;
  (*(v39 + 16))(v24, v38, v20);
  v70 = v41;
  v73 = v24;
  v74 = &v70;
  v69[0] = sub_100001EEC(&qword_1000AF780, &qword_10008C310);
  v69[1] = v20;
  v69[2] = v69[0];
  v66 = sub_100056440();
  v67 = v37;
  v68 = v66;
  sub_10004B528(&v72, 3uLL, v69);

  v40(v38, v20);

  v40(v24, v20);
}

uint64_t sub_100053630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (v26 - v13);
  v26[1] = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v22 = a1 + *(type metadata accessor for DisclosureGroupPicker() + 88);
  v23 = *(v22 + 8);
  (*v22)();
  sub_10004EDD8(v14, v12, a2, a3);
  v24 = *(v8 + 8);
  v24(v12, a2);
  sub_10004EDD8(a4, v14, a2, a3);
  return (v24)(v14, a2);
}

uint64_t sub_1000537A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  v5 = __chkstk_darwin(v3);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v52 - v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v69 = v9;
  v70 = v8;
  v63 = v10;
  v71 = v10;
  v72 = v11;
  v73 = v12;
  v74 = v13;
  v75 = v14;
  v15 = type metadata accessor for DisclosureGroupPicker.Selection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v52 - v18);
  v20 = *(a1 + 84);
  v21 = v64;
  (*(v16 + 16))(v19, &v64[v20], v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v16 + 8))(v19, v15);
    result = sub_100086F5C();
    *v65 = result;
    return result;
  }

  v22 = v21;
  v24 = v19[1];
  v23 = v19[2];
  v57 = *v19;
  v58 = v23;
  v25 = v9;
  v55 = v8;
  v26 = v8;
  v27 = v63;
  v28 = v11;
  v54 = v12;
  v29 = sub_1000548EC(v22, v9, v26, v63, v11, v12, v13, v14);
  v31 = v30;
  v32 = v27;
  v33 = v14;
  if (qword_1000ADB00 != -1)
  {
    swift_once();
    v32 = v27;
  }

  v69 = qword_1000B37F8;
  v70 = unk_1000B3800;
  LOBYTE(v71) = byte_1000B3808;
  v72 = qword_1000B3810;
  v34 = *v22;
  if (v34 <= 1)
  {
    if (!*v22)
    {

      v45 = sub_100086F5C();

      *v65 = v45;
      return result;
    }

    v56 = v24;
  }

  else
  {
    v35 = v22;
    v56 = v24;
    if (v34 != 3)
    {
      v36 = v32;
      v53 = v33;
      v63 = v13;
      v66 = v57;
      v67 = v24;
      v68 = v58;
      sub_10008756C();
      sub_100086F8C();

      sub_100086F6C();
      v37 = sub_10008750C();

      v38 = *(v35 + 8);
      if (v37 == sub_10008736C())
      {

        v29 = sub_100054C70(v35, v25, v55, v36, v28, v54, v63, v53);
        v31 = v39;
        if (qword_1000ADB08 != -1)
        {
          swift_once();
        }

        v41 = qword_1000B3818;
        v40 = unk_1000B3820;
        v42 = byte_1000B3828;
        v43 = qword_1000B3830;

        v69 = v41;
        v70 = v40;
        LOBYTE(v71) = v42;
        v72 = v43;
      }

      goto LABEL_15;
    }
  }

LABEL_15:
  v46 = v65;
  v47 = swift_allocObject();
  *(v47 + 16) = v29;
  *(v47 + 24) = v31;
  __chkstk_darwin(v47);
  *(&v52 - 2) = &v69;

  v48 = v60;
  sub_100086ECC();
  v50 = v61;
  v49 = v62;
  (*(v61 + 16))(v59, v48, v62);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  v51 = sub_100086F5C();

  (*(v50 + 8))(v48, v49);
  *v46 = v51;
}

uint64_t sub_100053DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v32 = a7;
  v33 = a8;
  v30 = a4;
  v31 = a6;
  v34 = a1;
  v35 = a2;
  v36 = a9;
  v28 = a3;
  v29 = a10;
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _FlexFrameLayout;
  v44 = swift_getWitnessTable();
  v45 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  swift_getWitnessTable();
  v11 = sub_100086EFC();
  v12 = sub_10008697C();
  v13 = swift_getWitnessTable();
  v14 = sub_100056224();
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(OpaqueTypeMetadata2);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = (&v27 - v21);
  v37 = v28;
  v38 = v30;
  v39 = a5;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v29;
  v23 = type metadata accessor for DisclosureGroupPicker();
  sub_100054114(v34, v23, v20);
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10004EDD8(v22, v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v25 = *(v16 + 8);
  v25(v20, OpaqueTypeMetadata2);
  sub_10004EDD8(v36, v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v25)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_100054114@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v71 = a1;
  v75 = a3;
  v4 = sub_10008697C();
  v57 = v4;
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  v6 = __chkstk_darwin(v4);
  v73 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v70 = a2 + 3;
  *&v72 = a2 + 5;
  v68 = a2[2];
  v67 = *(v68 - 8);
  v69 = *(v67 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  v65 = *(a2 - 1);
  v11 = *(v65 + 64);
  __chkstk_darwin(v8);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2[4];
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  v12 = sub_10008695C();
  WitnessTable = swift_getWitnessTable();
  v91 = &protocol witness table for _FlexFrameLayout;
  v13 = swift_getWitnessTable();
  v14 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  v88 = v13;
  v89 = v14;
  v63 = v12;
  v62 = swift_getWitnessTable();
  v15 = sub_100086EFC();
  v58 = v15;
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  __chkstk_darwin(v15);
  v56 = &v50 - v17;
  v18 = swift_getWitnessTable();
  v55 = v18;
  v54 = sub_100056224();
  v84 = v15;
  v85 = v4;
  v86 = v18;
  v87 = v54;
  v59 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v61 + 64);
  v20 = __chkstk_darwin(OpaqueTypeMetadata2);
  v52 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v53 = (&v50 - v22);
  v23 = v65;
  (*(v65 + 16))(&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v76, a2);
  v24 = v67;
  v25 = v10;
  v26 = v71;
  v27 = v68;
  (*(v67 + 16))(v25, v71, v68);
  v28 = v23;
  v29 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v30 = (v11 + v29 + *(v24 + 80)) & ~*(v24 + 80);
  v31 = swift_allocObject();
  *&v32 = v27;
  *(&v32 + 1) = *v70;
  v70 = v32;
  *&v33 = v66;
  *(&v33 + 1) = *v72;
  v72 = v33;
  *(v31 + 16) = v32;
  *(v31 + 32) = v33;
  v34 = a2;
  v35 = a2[6];
  v36 = v34[7];
  v37 = v34[8];
  *(v31 + 48) = v35;
  *(v31 + 56) = v36;
  *(v31 + 64) = v37;
  (*(v28 + 32))(v31 + v29, v50);
  (*(v24 + 32))(v31 + v30, v51, v27);
  v77 = v70;
  v78 = v72;
  v79 = v35;
  v80 = v36;
  v81 = v37;
  v82 = v76;
  v83 = v26;
  v38 = v56;
  sub_100086ECC();
  v39 = v73;
  sub_10008696C();
  v40 = v52;
  v41 = v58;
  v42 = v57;
  v43 = v55;
  v44 = v54;
  sub_100086D1C();
  (*(v74 + 8))(v39, v42);
  (*(v64 + 8))(v38, v41);
  v84 = v41;
  v85 = v42;
  v86 = v43;
  v87 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v53;
  v47 = OpaqueTypeMetadata2;
  sub_10004EDD8(v53, v40, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v48 = *(v61 + 8);
  v48(v40, v47);
  sub_10004EDD8(v75, v46, v47, OpaqueTypeConformance2);
  return (v48)(v46, v47);
}

uint64_t (*sub_1000548EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for DisclosureGroupPicker();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_10005673C;
}

uint64_t sub_100054A64(uint64_t a1)
{
  v3 = *(a1 + 32);
  v13 = *(a1 + 16);
  v16 = v13;
  v17 = v3;
  v14 = *(a1 + 40);
  v18 = v14;
  v19 = *(a1 + 56);
  v4 = type metadata accessor for DisclosureGroupPicker.Selection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v13 - v7);
  (*(v5 + 16))(&v13 - v7, v1 + *(a1 + 84), v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  *&v16 = v9;
  *(&v16 + 1) = v10;
  v17 = v11;
  v15 = *(v1 + 8);
  sub_10008739C();

  swift_getWitnessTable();
  v15 = sub_10008757C();
  sub_10008756C();
  sub_100086F8C();
  sub_100086F7C();
  swift_bridgeObjectRelease_n();
}

uint64_t (*sub_100054C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for DisclosureGroupPicker();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_100056524;
}

uint64_t sub_100054DE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v14 = *(a1 + 16);
  v20 = v14;
  v21 = v3;
  v13 = *(a1 + 40);
  v22 = v13;
  v23 = *(a1 + 56);
  v4 = type metadata accessor for DisclosureGroupPicker.Selection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v13 - v7);
  (*(v5 + 16))(&v13 - v7, v1 + *(a1 + 84), v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  *&v20 = v9;
  *(&v20 + 1) = v10;
  v21 = v11;
  sub_10008756C();
  sub_100086F8C();
  sub_100086F6C();
  sub_10008755C(0);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v15 = v19;
  sub_100086F7C();
}

uint64_t sub_100054FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];

  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_100055038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_100055138(a1, a2))
  {
    v4 = sub_100086E3C();
    sub_100086DFC();
    v6 = v4;
    KeyPath = swift_getKeyPath();
    sub_100001EEC(&qword_1000AF7B0, qword_10008C360);
    sub_100056CE4();
  }

  sub_100086F5C();
  result = sub_100086B8C();
  *a3 = v6;
  *(a3 + 8) = KeyPath;
  return result;
}

uint64_t sub_100055138(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness;
  v7 = *(v42 + 64);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v38 - v10;
  v11 = sub_10008767C();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v45 = *(v5 - 8);
  v16 = *(v45 + 64);
  __chkstk_darwin(v13);
  v44 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100086F8C();
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  v22 = *(a2 + 40);
  v48 = v5;
  v49 = *(a2 + 24);
  v50 = v22;
  v51 = v4;
  v41 = v4;
  v52 = *(a2 + 56);
  v23 = type metadata accessor for DisclosureGroupPicker.Selection();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v38 - v25);
  (*(v27 + 16))(&v38 - v25, v2 + *(a2 + 84), v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v26[1];
    v29 = v26[2];
    v48 = *v26;
    *&v49 = v28;
    *(&v49 + 1) = v29;
    sub_10008756C();
    sub_100086F8C();
    sub_100086F6C();
    v30 = sub_10008754C();
  }

  else
  {
    (*(v46 + 32))(v21, v26, v18);
    sub_100086F6C();
    v31 = v45;
    if ((*(v45 + 48))(v15, 1, v5) == 1)
    {
      (*(v46 + 8))(v21, v18);
      (*(v38 + 8))(v15, v11);
      v30 = 0;
    }

    else
    {
      (*(v31 + 32))(v44, v15, v5);
      v32 = v39;
      sub_1000877EC();
      v33 = v40;
      sub_1000877EC();
      v34 = v43;
      v35 = *(swift_getAssociatedConformanceWitness() + 8);
      v30 = sub_10008713C();
      v36 = *(v42 + 8);
      v36(v33, v34);
      v36(v32, v34);
      (*(v31 + 8))(v44, v5);
      (*(v46 + 8))(v21, v18);
    }
  }

  return v30 & 1;
}

uint64_t sub_100055678(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_10008767C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_100086F8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v35 = v5;
  v15 = *(a2 + 24);
  v29 = *(a2 + 40);
  v36 = v15;
  v37 = v29;
  v38 = *(a2 + 56);
  v16 = type metadata accessor for DisclosureGroupPicker.Selection();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v29 - v18);
  (*(v20 + 16))(&v29 - v18, v2 + *(a2 + 84), v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v19[1];
    v23 = v19[2];
    v35 = *v19;
    v21 = v35;
    *&v36 = v22;
    *(&v36 + 1) = v23;
    v24 = sub_10008756C();
    sub_100086F8C();
    sub_100086F6C();
    sub_10003EF64(a1, v24);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v30 = v34;
    sub_100086F7C();
  }

  else
  {
    (*(v11 + 32))(v14, v19, v10);
    v26 = sub_100055138(a1, a2);
    v27 = *(v5 - 8);
    v28 = v27;
    if (v26)
    {
      (*(v27 + 56))(v9, 1, 1, v5);
    }

    else
    {
      (*(v27 + 16))(v9, a1, v5);
      (*(v28 + 56))(v9, 0, 1, v5);
    }

    sub_100086F7C();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1000559B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v36 = a6;
  v34 = a4;
  v32 = a3;
  v37 = a2;
  v35 = a1;
  v43 = a9;
  v33 = a10;
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  v11 = sub_100086F1C();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = sub_10008695C();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  v19 = sub_10008695C();
  v42 = *(v19 - 8);
  v20 = *(v42 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = (&v32 - v24);
  v44 = v32;
  v45 = v34;
  v46 = a5;
  v47 = v36;
  v48 = v38;
  v49 = v39;
  v50 = v33;
  v51 = v35;
  v52 = v37;
  sub_100086A9C();
  sub_100086F0C();
  sub_10008702C();
  WitnessTable = swift_getWitnessTable();
  sub_100086DCC();
  (*(v40 + 8))(v14, v11);
  v55 = WitnessTable;
  v56 = &protocol witness table for _FlexFrameLayout;
  v26 = swift_getWitnessTable();
  sub_100056C0C();
  sub_100086D3C();
  (*(v41 + 8))(v18, v15);
  v27 = sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  v53 = v26;
  v54 = v27;
  v28 = swift_getWitnessTable();
  sub_10004EDD8(v25, v23, v19, v28);
  v29 = *(v42 + 8);
  v29(v23, v19);
  sub_10004EDD8(v43, v25, v19, v28);
  return (v29)(v25, v19);
}

uint64_t sub_100055E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5)
{
  v7 = a1;
  v27[1] = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = a5;
  v27[0] = a5;
  v21 = type metadata accessor for DisclosureGroupPicker();
  v22 = v7 + *(v21 + 92);
  v23 = *(v22 + 8);
  (*v22)(a2);
  sub_10004EDD8(v14, v12, a3, a5);
  v24 = *(v8 + 8);
  v24(v12, a3);
  sub_100055038(a2, v21, &v33);
  v25 = v33;
  LOBYTE(v7) = v34;
  (*(v8 + 16))(v12, v14, a3);
  v31 = 0;
  v32 = 1;
  v33 = v12;
  v34 = &v31;
  v29 = v25;
  v30 = v7;
  v35 = &v29;

  v28[0] = a3;
  v28[1] = &type metadata for Spacer;
  v28[2] = sub_100001EEC(&qword_1000AF788, &qword_10008C318);
  v27[2] = v27[0];
  v27[3] = &protocol witness table for Spacer;
  v27[4] = sub_100056C60();
  sub_10004B528(&v33, 3uLL, v28);

  v24(v14, a3);

  return (v24)(v12, a3);
}

Swift::Int sub_1000560F0(unsigned __int8 a1)
{
  sub_100087ADC();
  sub_100087AEC(a1);
  return sub_100087AFC();
}

Swift::Int sub_100056190()
{
  sub_100087ADC();
  sub_1000560C8(v2, *v0);
  return sub_100087AFC();
}

uint64_t sub_1000561D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100056224()
{
  result = qword_1000AF790;
  if (!qword_1000AF790)
  {
    sub_10008697C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF790);
  }

  return result;
}

uint64_t sub_100056280@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for DisclosureGroupPicker() - 8);
  v11 = v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80));

  return sub_100052AE8(v11, v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t sub_100056358@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[8];
  return sub_100053630(v1[9], v1[3], v1[7], a1);
}

uint64_t sub_10005636C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = *(type metadata accessor for DisclosureGroupPicker() - 8);
  return sub_100053DB8(a1, v2 + ((*(v12 + 80) + 72) & ~*(v12 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

unint64_t sub_100056440()
{
  result = qword_1000AF798;
  if (!qword_1000AF798)
  {
    sub_100003200(&qword_1000AF780, &qword_10008C310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF798);
  }

  return result;
}

uint64_t sub_1000564BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000564F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10005653C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v8 = type metadata accessor for DisclosureGroupPicker();
  v23 = *(*(v8 - 8) + 80);
  v21 = *(*(v8 - 8) + 64);
  v9 = v0 + ((v23 + 72) & ~v23);
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  v22 = v8;
  v12 = &v9[*(v8 + 84)];
  type metadata accessor for DisclosureGroupPicker.Selection();
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  v13 = *v12;

  v14 = *(v12 + 1);

  if (v2 == 1)
  {
    v15 = *(v12 + 2);
  }

  else
  {
    sub_10008767C();
    v16 = *(sub_100086F8C() + 32);
    v17 = *(v1 - 8);
    if (!(*(v17 + 48))(&v12[v16], 1, v1))
    {
      (*(v17 + 8))(&v12[v16], v1);
    }
  }

  v18 = *&v9[*(v22 + 88) + 8];

  v19 = *&v9[*(v22 + 92) + 8];

  return swift_deallocObject();
}

uint64_t sub_100056754(uint64_t (*a1)(uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for DisclosureGroupPicker() - 8);
  v11 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v12 = type metadata accessor for DisclosureGroupPicker();
  return a1(v12);
}

uint64_t sub_100056820()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v6 = *(v0 + 6);
  v5 = *(v0 + 7);
  v21 = *(v0 + 8);
  v7 = type metadata accessor for DisclosureGroupPicker();
  v25 = *(*(v7 - 8) + 80);
  v23 = *(*(v7 - 8) + 64);
  v8 = *(v1 - 8);
  v22 = *(v8 + 80);
  v26 = *(v8 + 64);
  v24 = (v25 + 72) & ~v25;
  v9 = &v0[v24];
  v10 = *&v0[v24 + 8];

  v11 = *&v0[v24 + 24];

  v27 = v7;
  v12 = &v0[v24 + *(v7 + 84)];
  type metadata accessor for DisclosureGroupPicker.Selection();
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  v13 = *v12;

  v14 = *(v12 + 1);

  if (v2 == 1)
  {
    v15 = *(v12 + 2);

    v16 = v1;
  }

  else
  {
    sub_10008767C();
    v17 = *(sub_100086F8C() + 32);
    v16 = v1;
    if (!(*(v8 + 48))(&v12[v17], 1, v1))
    {
      (*(v8 + 8))(&v12[v17], v1);
    }
  }

  v18 = *&v9[*(v27 + 88) + 8];

  v19 = *&v9[*(v27 + 92) + 8];

  (*(v8 + 8))(&v0[(v24 + v23 + v22) & ~v22], v16);
  return swift_deallocObject();
}

uint64_t sub_100056A84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(type metadata accessor for DisclosureGroupPicker() - 8);
  v9 = (((*(v8 + 80) + 72) & ~*(v8 + 80)) + *(v8 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v10 = type metadata accessor for DisclosureGroupPicker();
  return sub_100055678(v0 + v9, v10);
}

unint64_t sub_100056C0C()
{
  result = qword_1000AF7A0;
  if (!qword_1000AF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF7A0);
  }

  return result;
}

unint64_t sub_100056C60()
{
  result = qword_1000AF7A8;
  if (!qword_1000AF7A8)
  {
    sub_100003200(&qword_1000AF788, &qword_10008C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF7A8);
  }

  return result;
}

unint64_t sub_100056CE4()
{
  result = qword_1000AF7B8[0];
  if (!qword_1000AF7B8[0])
  {
    sub_100003200(&qword_1000AF7B0, qword_10008C360);
    sub_100006454(&qword_1000AEF20, &qword_1000AEF28, &qword_10008B360);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF7B8);
  }

  return result;
}

uint64_t sub_100056D9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[1];
  sub_100003200(&qword_1000AF780, &qword_10008C310);
  sub_10008739C();
  swift_getAssociatedTypeWitness();
  sub_100003200(&qword_1000AF788, &qword_10008C318);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086F1C();
  sub_10008695C();
  sub_100003200(&qword_1000ADE90, &unk_10008C320);
  sub_10008695C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
  swift_getWitnessTable();
  sub_100086EFC();
  sub_10008697C();
  swift_getWitnessTable();
  sub_100056224();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_10008694C();
  return swift_getWitnessTable();
}

void sub_1000570CC(uint64_t a1)
{
  sub_10003EA18();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100057154(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000572D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_100057584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003200(&qword_1000AF840, &qword_10008C3F0);
  v9 = sub_10008700C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v22 - v15);
  (*(v5 + 16))(v8, v2 + *(a1 + 36), v4);
  v17 = *(a1 + 24);
  v24 = v4;
  v25 = v17;
  v26 = v2;
  v18 = sub_1000578B8();
  sub_100086FCC();
  v27 = v17;
  v28 = v18;
  v29 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  sub_10004EDD8(v16, v14, v9, WitnessTable);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_10004EDD8(v23, v16, v9, WitnessTable);
  return (v20)(v16, v9);
}

uint64_t sub_1000577F0(uint64_t *a1)
{
  v2 = *a1;

  sub_100001EEC(&qword_1000AF858, qword_10008C3F8);
  sub_100057990();
  sub_10005793C();
  sub_1000579F4();
  return sub_100086FAC();
}

uint64_t sub_1000578AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000577F0(*(v0 + 32));
}

unint64_t sub_1000578B8()
{
  result = qword_1000AF848;
  if (!qword_1000AF848)
  {
    sub_100003200(&qword_1000AF840, &qword_10008C3F0);
    sub_10005793C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF848);
  }

  return result;
}

unint64_t sub_10005793C()
{
  result = qword_1000AF850;
  if (!qword_1000AF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF850);
  }

  return result;
}

unint64_t sub_100057990()
{
  result = qword_1000AF860;
  if (!qword_1000AF860)
  {
    sub_100003200(&qword_1000AF858, qword_10008C3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF860);
  }

  return result;
}

unint64_t sub_1000579F4()
{
  result = qword_1000AF868[0];
  if (!qword_1000AF868[0])
  {
    type metadata accessor for ProfileViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF868);
  }

  return result;
}

uint64_t sub_100057A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003200(&qword_1000AF840, &qword_10008C3F0);
  sub_10008700C();
  sub_1000578B8();
  return swift_getWitnessTable();
}

uint64_t sub_100057AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100057AFC, 0, 0);
}

uint64_t sub_100057AFC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa();
  v5 = sub_10008798C();
  v0[6] = v5;
  if (v5)
  {
    v6 = v5;
    v14 = (v0[4] + 32);
    v15 = (*v14 + **v14);
    v7 = (*v14)[1];
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_100057CE0;
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];

    return v15(v6, AssociatedTypeWitness, v11, v9);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100057CE0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void *sub_100057E00(uint64_t a1)
{
  result = &_swiftEmptyDictionarySingleton;
  v7 = &_swiftEmptyDictionarySingleton;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[4];
      sub_100001FB4(v4, v5);
      (*(v6 + 56))(&v7, v5, v6);
      v4 += 5;
      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

uint64_t sub_100057EB0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Loader.CacheEntry();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_100057F58()
{
  v1 = *v0;
  v2 = v0[15];
  sub_1000583E4(v0[14]);
  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Loader.CacheEntry();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100057FF4()
{
  sub_100057F58();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100058058(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100003200(&unk_1000AEDF0, &qword_10008A0E0);
  result = sub_10008745C();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000580F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
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
      if (v11 >= 3)
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

  return (v5 | v10) + 254;
}

void sub_100058210(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

uint64_t sub_1000583E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10005844C()
{
  type metadata accessor for MainHostViewController();
  sub_100001EEC(&qword_1000AE560, &qword_100089D48);
  sub_10008716C();
  v0 = objc_allocWithZone(CULogHandle);
  v1 = sub_10008714C();
  v2 = sub_10008714C();

  v3 = [v0 initWithSubsystem:v1 category:v2];

  v4 = sub_10008714C();
  [v3 ulog:40 message:v4];
}

BOOL sub_100058558(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1000864CC() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10005968C();
  }

  while ((sub_10008713C() & 1) == 0);
  return v4 != v5;
}

void sub_100058630()
{
  v1 = &byte_1000A6368;
  v2 = 1;
  do
  {
    if (!v2)
    {
      sub_1000167FC(0xD000000000000066, 0x800000010008F740, &type metadata for BetaEnrollmentMetricsSession, &qword_1000AE518, &unk_10008C6B0);
      sub_100012B4C();
      swift_allocError();
      v16 = 3;
      goto LABEL_7;
    }

    v3 = *v1++;
    --v2;
  }

  while (v3);
  v17[0] = 0x20676E69646E6553;
  v17[1] = 0xE800000000000000;
  v4 = v0;
  v19._countAndFlagsBits = sub_100058B18();
  sub_1000871BC(v19);

  sub_100016548(0x20676E69646E6553, 0xE800000000000000);

  v5 = sub_10008714C();
  v6 = swift_allocObject();
  v7 = *(v4 + 208);
  v6[13] = *(v4 + 192);
  v6[14] = v7;
  v6[15] = *(v4 + 224);
  v8 = *(v4 + 144);
  v6[9] = *(v4 + 128);
  v6[10] = v8;
  v9 = *(v4 + 176);
  v6[11] = *(v4 + 160);
  v6[12] = v9;
  v10 = *(v4 + 80);
  v6[5] = *(v4 + 64);
  v6[6] = v10;
  v11 = *(v4 + 112);
  v6[7] = *(v4 + 96);
  v6[8] = v11;
  v12 = *(v4 + 16);
  v6[1] = *v4;
  v6[2] = v12;
  v13 = *(v4 + 48);
  v6[3] = *(v4 + 32);
  v6[4] = v13;
  aBlock[4] = sub_1000595C4;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059010;
  aBlock[3] = &unk_1000A9270;
  v14 = _Block_copy(aBlock);
  sub_100059630(v4, v17);

  LOBYTE(v4) = AnalyticsSendEventLazy();
  _Block_release(v14);

  if (v4)
  {
    return;
  }

  sub_100012B4C();
  swift_allocError();
  v16 = 2;
LABEL_7:
  *v15 = 0;
  v15[1] = v16;
  swift_willThrow();
}

void sub_100058870()
{
  v1 = &byte_1000A6390;
  v2 = 1;
  do
  {
    if (!v2)
    {
      sub_1000877DC(50);

      v16 = 0xD000000000000010;
      v17 = 0x800000010008F6D0;
      v15 = qword_1000AF9F0;
      v14 = off_1000AF9F8;

      v20._countAndFlagsBits = v15;
      v20._object = v14;
      sub_1000871BC(v20);

      v21._countAndFlagsBits = 0xD000000000000020;
      v21._object = 0x800000010008F6F0;
      sub_1000871BC(v21);
      sub_1000167FC(0xD000000000000010, 0x800000010008F6D0, &type metadata for BetaEnrollmentDuration, &qword_1000AE520, &qword_100089C80);

      sub_100012B4C();
      swift_allocError();
      v13 = 3;
      goto LABEL_7;
    }

    v3 = *v1++;
    --v2;
  }

  while (v3);
  v16 = 0x20676E69646E6553;
  v17 = 0xE800000000000000;
  v4 = v0;
  v19._countAndFlagsBits = sub_100058BDC();
  sub_1000871BC(v19);

  sub_1000167E0(0x20676E69646E6553, 0xE800000000000000);

  v5 = sub_10008714C();

  v6 = swift_allocObject();
  v7 = *(v4 + 112);
  *(v6 + 112) = *(v4 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(v4 + 128);
  v8 = *(v4 + 48);
  *(v6 + 48) = *(v4 + 32);
  *(v6 + 64) = v8;
  v9 = *(v4 + 80);
  *(v6 + 80) = *(v4 + 64);
  *(v6 + 96) = v9;
  v10 = *(v4 + 16);
  *(v6 + 16) = *v4;
  *(v6 + 32) = v10;
  aBlock[4] = sub_1000592B0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059010;
  aBlock[3] = &unk_1000A91F8;
  v11 = _Block_copy(aBlock);
  sub_100059314(v4, &v16);

  LOBYTE(v4) = AnalyticsSendEventLazy();
  _Block_release(v11);

  if (v4)
  {
    return;
  }

  sub_100012B4C();
  swift_allocError();
  v13 = 2;
LABEL_7:
  *v12 = 0;
  v12[1] = v13;
  swift_willThrow();
}

unint64_t sub_100058B18()
{
  sub_1000877DC(20);

  sub_100007754();
  sub_10005934C();
  v0 = sub_1000870BC();
  v2 = v1;

  v4._countAndFlagsBits = v0;
  v4._object = v2;
  sub_1000871BC(v4);

  return 0xD000000000000046;
}

uint64_t sub_100058BDC()
{
  v1 = v0;
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1000877DC(20);

  v16 = 0x3D746E657645;
  v17 = 0xE600000000000000;
  v2 = qword_1000AF9F0;
  v3 = off_1000AF9F8;

  v24._countAndFlagsBits = v2;
  v24._object = v3;
  sub_1000871BC(v24);

  v25._countAndFlagsBits = 0x616F6C796170202CLL;
  v25._object = 0xEA00000000003D64;
  sub_1000871BC(v25);
  sub_100001EEC(&qword_1000ADFB8, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C690;
  *(v23 + 9) = *(v1 + 9);
  v23[0] = *v1;
  *(inited + 56) = &type metadata for AnalyticsInteger;
  *(inited + 64) = &off_1000AE268;
  v5 = swift_allocObject();
  *(inited + 32) = v5;
  *(v5 + 25) = *(v1 + 9);
  *(v5 + 16) = *v1;
  v22[0] = *(v1 + 32);
  v6 = v22[0];
  *(v22 + 13) = *(v1 + 45);
  v7 = *(v22 + 13);
  *(inited + 96) = &type metadata for AnalyticsFloat;
  *(inited + 104) = &off_1000AE228;
  *(inited + 72) = v6;
  *(inited + 85) = v7;
  v8 = *(v1 + 72);
  v21 = *(v1 + 56);
  v20 = v8;
  *(inited + 136) = &type metadata for AnalyticsErrorField;
  *(inited + 144) = sub_1000593D0();
  *(inited + 112) = *(v1 + 56);
  *(inited + 128) = v8;
  v18 = *(v1 + 80);
  v9 = v18;
  v19 = *(v1 + 96);
  v10 = v19;
  *(inited + 176) = &type metadata for AnalyticsBool;
  *(inited + 184) = &off_1000AE198;
  *(inited + 152) = v9;
  *(inited + 168) = v10;
  sub_100008354(v23, v15);
  sub_1000083B0(v22, v15);
  sub_100059424(&v21, v15);
  sub_100059480(&v20, v15);
  sub_1000594F0(&v18, v15);
  sub_100057E00(inited);
  swift_setDeallocating();
  sub_100001EEC(qword_1000ADFC0, &qword_100088D30);
  swift_arrayDestroy();
  sub_10005934C();
  v11 = sub_1000870BC();
  v13 = v12;

  v26._countAndFlagsBits = v11;
  v26._object = v13;
  sub_1000871BC(v26);

  return v16;
}

void *sub_100058E58(uint64_t a1)
{
  sub_100001EEC(&qword_1000ADFB8, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C690;
  *(v17 + 9) = *(a1 + 9);
  v17[0] = *a1;
  *(inited + 56) = &type metadata for AnalyticsInteger;
  *(inited + 64) = &off_1000AE268;
  v3 = swift_allocObject();
  *(inited + 32) = v3;
  *(v3 + 25) = *(a1 + 9);
  *(v3 + 16) = *a1;
  v16[0] = *(a1 + 32);
  v4 = v16[0];
  *(v16 + 13) = *(a1 + 45);
  v5 = *(v16 + 13);
  *(inited + 96) = &type metadata for AnalyticsFloat;
  *(inited + 104) = &off_1000AE228;
  *(inited + 72) = v4;
  *(inited + 85) = v5;
  v6 = *(a1 + 72);
  v15 = *(a1 + 56);
  v14 = v6;
  *(inited + 136) = &type metadata for AnalyticsErrorField;
  *(inited + 144) = sub_1000593D0();
  *(inited + 112) = *(a1 + 56);
  *(inited + 128) = v6;
  v12 = *(a1 + 80);
  v7 = v12;
  v13 = *(a1 + 96);
  v8 = v13;
  *(inited + 176) = &type metadata for AnalyticsBool;
  *(inited + 184) = &off_1000AE198;
  *(inited + 152) = v7;
  *(inited + 168) = v8;
  sub_100008354(v17, v11);
  sub_1000083B0(v16, v11);
  sub_100059424(&v15, v11);
  sub_100059480(&v14, v11);
  sub_1000594F0(&v12, v11);
  v9 = sub_100057E00(inited);
  swift_setDeallocating();
  sub_100001EEC(qword_1000ADFC0, &qword_100088D30);
  swift_arrayDestroy();
  return v9;
}

Class sub_100059010(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10005934C();
    v5.super.isa = sub_1000870AC().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_10005909C()
{
  if (v0[7] & 1) != 0 || (v0[8])
  {
    *(v0 + 2) = 0;
    *(v0 + 24) = 1;
    *(v0 + 12) = 0;
    *(v0 + 52) = 1;
    *(v0 + 13) = 0;
    *(v0 + 112) = 1;
    v1 = v0 + 8;
    *(v0 + 15) = 0;
LABEL_6:
    *v1 = 1;
    return;
  }

  if (*(v0 + 15) >= *(v0 + 13))
  {
    v1 = v0 + 8;
    UpTicksToSecondsF();
    v3 = v2;
    v13._countAndFlagsBits = 0x6E6F697461727544;
    v13._object = 0xEA0000000000203ALL;
    sub_1000871BC(v13);
    sub_10008748C();
    v14._countAndFlagsBits = 115;
    v14._object = 0xE100000000000000;
    sub_1000871BC(v14);
    sub_1000167E0(0, 0xE000000000000000);

    *(v0 + 12) = v3;
    *(v0 + 52) = 0;
    v10 = v0[6];
    v11 = v0[7];
    v12 = *(v0 + 128);
    v8 = v0[4];
    v9 = v0[5];
    v4 = *v0;
    v5 = v0[1];
    v6 = v0[2];
    v7 = v0[3];
    sub_100058870();
    *(v0 + 2) = 0;
    *(v0 + 24) = 1;
    *(v0 + 12) = 0;
    *(v0 + 52) = 1;
    *(v0 + 13) = 0;
    *(v0 + 112) = 1;
    *(v0 + 15) = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100059204()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 128);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_100058BDC();
}

uint64_t sub_100059258()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  return swift_deallocObject();
}

void *sub_1000592B0()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  return sub_100058E58(v6);
}

uint64_t sub_1000592FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005934C()
{
  result = qword_1000AFA00;
  if (!qword_1000AFA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AFA00);
  }

  return result;
}

uint64_t sub_100059398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1000593D0()
{
  result = qword_1000AFA08;
  if (!qword_1000AFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA08);
  }

  return result;
}

uint64_t sub_100059480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AFA10, &qword_10008C6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005954C()
{
  v1 = v0[6];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[15];

  v5 = v0[18];

  v6 = v0[22];

  v7 = v0[25];

  v8 = v0[29];

  v9 = v0[31];

  return swift_deallocObject();
}

void *sub_1000595C4()
{
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[15];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[12];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  return sub_100007754();
}

unint64_t sub_10005968C()
{
  result = qword_1000ADD58;
  if (!qword_1000ADD58)
  {
    sub_1000864CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADD58);
  }

  return result;
}

__n128 sub_1000596E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100059718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_100059760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000597D4(uint64_t a1)
{
  result = sub_1000597FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000597FC()
{
  result = qword_1000AFA20;
  if (!qword_1000AFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA20);
  }

  return result;
}

uint64_t sub_100059858(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_100086F5C();
}

unint64_t sub_100059958(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for Loader();
  sub_10000F00C();
  return 0xD000000000000020;
}

id sub_100059984(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  swift_getMetatypeMetadata();
  sub_10008716C();
  v2 = objc_allocWithZone(CULogHandle);
  v3 = sub_10008714C();

  v4 = sub_10008714C();

  v5 = [v2 initWithSubsystem:v3 category:v4];

  return v5;
}

void sub_100059A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100059984(a4, a5);
  v7 = sub_10008714C();
  [v6 ulog:a1 message:v7];
}

void sub_100059AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100059984(a4, a5);
  v7 = sub_10008714C();
  [v6 ulog:a1 message:v7];
}

uint64_t sub_100059BE8()
{
  v1 = *(v0 + 40);
  sub_10001640C(0x6164696C61766E49, 0xEA00000000006574);
  swift_beginAccess();
  v2 = *(v1 + 368);
  *(v1 + 368) = &_swiftEmptyDictionarySingleton;

  v3 = *(v1 + 352);
  *(v0 + 48) = v3;

  return _swift_task_switch(sub_100059CA4, v3, 0);
}

uint64_t sub_100059CA4()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 136);
  if (!v2)
  {
    v3 = *(v1 + 128);
    sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);

    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    sub_10008744C();
    sub_100064614(v3, 0);
    v2 = *(v1 + 136);
    v4 = *(v0 + 48);
  }

  v5 = *(v1 + 128);
  *(v1 + 128) = 0;
  *(v1 + 136) = 2;
  sub_100064614(v5, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100059D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000E4A4(a3, v24 - v10, &qword_1000AEDC0, &qword_100088E40);
  v12 = sub_10008742C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000649C(v11, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000873DC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_10008717C() + 32;
      sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10005A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000E4A4(a3, v24 - v10, &qword_1000AEDC0, &qword_100088E40);
  v12 = sub_10008742C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000649C(v11, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000873DC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10008717C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_10005A31C(void *a1, void *a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v41 = &v41 - v12;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1000877DC(28);

  v47 = 0xD000000000000012;
  v48 = 0x800000010008FC50;
  if (a1)
  {
    v13 = sub_100023B40(0, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v45 = v13;
    v46 = sub_100064240(&unk_1000AEE10, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v43 = a1;
    v14 = *sub_100001FB4(&v43, v13);
    v15 = a1;
    v16 = [v14 description];
    v17 = sub_10008715C();
    v19 = v18;

    sub_100001FF8(&v43);
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  v50._countAndFlagsBits = v17;
  v50._object = v19;
  sub_1000871BC(v50);

  v51._countAndFlagsBits = 0x206D6F726620;
  v51._object = 0xE600000000000000;
  sub_1000871BC(v51);
  if (!a2)
  {
    v53._countAndFlagsBits = 7104878;
    v53._object = 0xE300000000000000;
    sub_1000871BC(v53);

    sub_10001640C(v47, v48);

    goto LABEL_11;
  }

  v20 = sub_100023B40(0, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
  v45 = v20;
  v46 = sub_100064240(&qword_1000AEDD8, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
  v43 = a2;
  v21 = *sub_100001FB4(&v43, v20);
  v22 = a2;
  v23 = [v21 description];
  v24 = sub_10008715C();
  v26 = v25;

  sub_100001FF8(&v43);
  v52._countAndFlagsBits = v24;
  v52._object = v26;
  sub_1000871BC(v52);

  sub_10001640C(v47, v48);

  v27 = [v22 member];
  if (!v27)
  {
LABEL_11:
    sub_100064304();
    swift_allocError();
    *v35 = 6;
    swift_willThrow();
    return;
  }

  v28 = v27;
  if (a1 && (sub_1000865AC(), (v29 = swift_dynamicCastClass()) != 0))
  {
    v30 = v29;
    v31 = a1;
    v32 = v28;
    sub_10005E698(v30, v32, v9);
    v33 = v49;
    if ((*(v49 + 48))(v9, 1, v10) == 1)
    {
      sub_10000649C(v9, &qword_1000AEDC8, &qword_10008C910);
      sub_100064304();
      swift_allocError();
      *v34 = 2;
      swift_willThrow();
    }

    else
    {
      v37 = v9;
      v38 = v41;
      sub_100064358(v37, v41);
      v43 = 0x20676E69726F7453;
      v44 = 0xE800000000000000;
      sub_1000871BC(*(v38 + *(v10 + 40) + 32));
      v54._countAndFlagsBits = 8238;
      v54._object = 0xE200000000000000;
      sub_1000871BC(v54);
      v55._countAndFlagsBits = sub_10005F060();
      sub_1000871BC(v55);

      sub_10001640C(v43, v44);

      v39 = v42;
      sub_10000E4A4(v38, v42, &qword_1000AEA70, &unk_10008D060);
      (*(v33 + 56))(v39, 0, 1, v10);
      swift_beginAccess();
      v40 = v32;
      sub_10006C1E4(v39, v40);
      swift_endAccess();
      sub_100063380();

      sub_10000649C(v38, &qword_1000AEA70, &unk_10008D060);
    }
  }

  else
  {
    sub_100064304();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();
  }
}

uint64_t sub_10005A8E8()
{
  v1[20] = v0;
  v2 = sub_10008672C();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_10005AA28, v0, 0);
}

uint64_t sub_10005AA28()
{
  v60 = v0;
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 368);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 200);
    v5 = sub_10006F2DC(*(v2 + 16), 0);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = v5;
    v8 = sub_100036BFC(&v58, v5 + v6, v3, v2);

    result = sub_100023AA8();
    if (v8 != v3)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v10 = v7;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  *(v0 + 232) = v10;
  v11 = *(v0 + 160);
  v47 = sub_100063E7C();
  *(v0 + 240) = v47;
  v12 = v10[2];
  *(v0 + 248) = v12;
  swift_beginAccess();
  v46 = v12;
  sub_1000079BC(v12);
  result = swift_endAccess();
  v13 = _swiftEmptyArrayStorage;
  v54 = v10[2];
  if (v54)
  {
    v14 = 0;
    v51 = *(v0 + 192);
    v52 = *(v0 + 200);
    v15 = *(v0 + 176);
    v50 = enum case for BetaEnrollment.State.enrolled(_:);
    v48 = (v15 + 8);
    v49 = (v15 + 104);
    v53 = v10;
    while (v14 < v10[2])
    {
      v16 = *(v0 + 184);
      v17 = *(v0 + 168);
      v55 = *(v52 + 72);
      v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      sub_10000E4A4(v10 + v57 + v55 * v14, *(v0 + 224), &qword_1000AEA70, &unk_10008D060);
      v18 = *(v51 + 36);
      (*v49)(v16, v50, v17);
      sub_100061F84(qword_1000ADD68, 255, &type metadata accessor for BetaEnrollment.State);
      sub_10008729C();
      sub_10008729C();
      (*v48)(v16, v17);
      v19 = *(v0 + 224);
      if (*(v0 + 120) == *(v0 + 128))
      {
        sub_100064358(v19, *(v0 + 216));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10006F854(0, v13[2] + 1, 1);
          v13 = v58;
        }

        v10 = v53;
        v22 = v13[2];
        v21 = v13[3];
        if (v22 >= v21 >> 1)
        {
          sub_10006F854(v21 > 1, v22 + 1, 1);
          v13 = v58;
        }

        v23 = *(v0 + 216);
        v13[2] = v22 + 1;
        result = sub_100064358(v23, v13 + v57 + v22 * v55);
      }

      else
      {
        result = sub_10000649C(v19, &qword_1000AEA70, &unk_10008D060);
        v10 = v53;
      }

      if (v54 == ++v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  v24 = *(v0 + 160);
  v25 = v13[2];

  swift_beginAccess();
  *(v24 + 120) = v25;
  sub_100007AA0();
  swift_endAccess();
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1000877DC(37);

  v58 = 0x676E697461647055;
  v59 = 0xE900000000000020;
  *(v0 + 136) = *(v47 + 16);
  v62._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v62);

  v63._object = 0x800000010008FA20;
  v63._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v63);
  *(v0 + 144) = v46;
  v64._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v64);

  v65._countAndFlagsBits = 0x7365636976656420;
  v65._object = 0xE800000000000000;
  sub_1000871BC(v65);
  sub_10001640C(v58, v59);

  v26 = *(v47 + 16);
  *(v0 + 256) = v26;
  if (v26)
  {
    v27 = *(v0 + 200);
    *(v0 + 264) = 0;
    v28 = *(v0 + 240);
    if (!v28[2])
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v29 = *(v0 + 248);
    *(v0 + 272) = v28[4];
    v56 = v28[5];
    if (v29)
    {
      v30 = *(v0 + 232);
      *(v0 + 152) = _swiftEmptyArrayStorage;
      swift_unknownObjectRetain();
      sub_10006F7AC(0, v29, 0);
      v31 = 0;
      v32 = *(v0 + 152);
      v33 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v34 = *(v27 + 72);
      do
      {
        v35 = *(v0 + 192);
        sub_10000E4A4(v33, *(v0 + 208), &qword_1000AEA70, &unk_10008D060);
        swift_dynamicCast();
        *(v0 + 152) = v32;
        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          sub_10006F7AC((v36 > 1), v37 + 1, 1);
          v32 = *(v0 + 152);
        }

        v38 = *(v0 + 248);
        ++v31;
        v32[2] = v37 + 1;
        sub_100036E80((v0 + 16), &v32[4 * v37 + 4]);
        v33 += v34;
      }

      while (v31 != v38);
    }

    else
    {
      swift_unknownObjectRetain();
      v32 = _swiftEmptyArrayStorage;
    }

    *(v0 + 280) = v32;
    ObjectType = swift_getObjectType();
    v45 = swift_task_alloc();
    *(v0 + 288) = v45;
    *v45 = v0;
    v45[1] = sub_10005B0CC;

    return sub_100057AD8(v32, ObjectType, v56);
  }

  else
  {

    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 208);
    v42 = *(v0 + 184);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_10005B0CC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return _swift_task_switch(sub_10005B1F8, v3, 0);
}

uint64_t sub_10005B1F8()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  result = swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);

    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = *(v0 + 208);
    v10 = *(v0 + 184);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v12 = *(v0 + 264) + 1;
    *(v0 + 264) = v12;
    v13 = *(v0 + 240);
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = *(v0 + 248);
      v15 = v13 + 16 * v12;
      *(v0 + 272) = *(v15 + 32);
      v28 = *(v15 + 40);
      if (v14)
      {
        v16 = *(v0 + 232);
        v17 = *(v0 + 200);
        *(v0 + 152) = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        sub_10006F7AC(0, v14, 0);
        v18 = 0;
        v19 = *(v0 + 152);
        v20 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v21 = *(v17 + 72);
        do
        {
          v22 = *(v0 + 192);
          sub_10000E4A4(v20, *(v0 + 208), &qword_1000AEA70, &unk_10008D060);
          swift_dynamicCast();
          *(v0 + 152) = v19;
          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            sub_10006F7AC((v23 > 1), v24 + 1, 1);
            v19 = *(v0 + 152);
          }

          v25 = *(v0 + 248);
          ++v18;
          v19[2] = v24 + 1;
          sub_100036E80((v0 + 16), &v19[4 * v24 + 4]);
          v20 += v21;
        }

        while (v18 != v25);
      }

      else
      {
        swift_unknownObjectRetain();
        v19 = _swiftEmptyArrayStorage;
      }

      *(v0 + 280) = v19;
      ObjectType = swift_getObjectType();
      v27 = swift_task_alloc();
      *(v0 + 288) = v27;
      *v27 = v0;
      v27[1] = sub_10005B0CC;

      return sub_100057AD8(v19, ObjectType, v28);
    }
  }

  return result;
}

uint64_t sub_10005B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005B530, 0, 0);
}

uint64_t sub_10005B530()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = sub_10008742C();
  v9 = *(v0 + 24);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v9;
  *(v6 + 48) = v5;
  *(v6 + 56) = v3;
  swift_unknownObjectRetain();
  sub_100016950(0, 0, v2, &unk_10008C9E8, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10005B690()
{
  v11 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 368);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10006F2DC(*(v2 + 16), 0);
    v5 = *(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8);
    v6 = sub_100036BFC(&v9, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);

    sub_100023AA8();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1000877DC(18);

  v9 = 0xD000000000000010;
  v10 = 0x800000010008F440;
  sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v13._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v13);

  sub_10001640C(v9, v10);

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_10005B860()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return _swift_task_switch(sub_10005B8D0, v0, 0);
}

uint64_t sub_10005B8D0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10001640C(0x6D726177657250, 0xE700000000000000);
  v0[4] = *(v1 + 352);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10005BA08;

  return (sub_10005F7E8)(&unk_10008C9C8, v4);
}

uint64_t sub_10005BA08(void *a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {
    v6 = v5[2];

    return _swift_task_switch(sub_10005BB68, v6, 0);
  }

  else
  {
    v7 = v5[4];
    v8 = v5[5];

    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_10005BB68()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_10005BBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005BC74, 0, 0);
}

uint64_t sub_10005BC74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = sub_10008742C();
  v9 = *(v0 + 24);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v9;
  *(v6 + 48) = v5;
  *(v6 + 56) = v3;
  swift_unknownObjectRetain();
  sub_100016950(0, 0, v2, &unk_10008C9A8, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10005BDB4(uint64_t a1, uint64_t a2)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[97] = a1;
  v3[100] = swift_getObjectType();
  v4 = sub_10008672C();
  v3[101] = v4;
  v5 = *(v4 - 8);
  v3[102] = v5;
  v6 = *(v5 + 64) + 15;
  v3[103] = swift_task_alloc();

  return _swift_task_switch(sub_10005BE88, v2, 0);
}

uint64_t sub_10005BE88()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  sub_1000877DC(30);
  *(v0 + 632) = 0;
  *(v0 + 640) = 0xE000000000000000;
  v20._countAndFlagsBits = 0x20676E6974746553;
  v20._object = 0xEE00206574617473;
  sub_1000871BC(v20);
  sub_1000878DC();
  v21._countAndFlagsBits = 0x67726174206E6F20;
  v21._object = 0xEC00000020737465;
  sub_1000871BC(v21);
  *(v0 + 832) = sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  v22._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v22);

  sub_10001640C(*(v0 + 632), *(v0 + 640));

  *(v0 + 212) = enum case for BetaEnrollment.State.enrolled(_:);
  v6 = *(v2 + 104);
  *(v0 + 840) = v6;
  *(v0 + 848) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  *(v0 + 856) = sub_100061F84(qword_1000ADD68, 255, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v7 = *(v2 + 8);
  *(v0 + 864) = v7;
  *(v0 + 872) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 768) == *(v0 + 760) || (v8 = *(v0 + 824), v9 = *(v0 + 808), v10 = *(v0 + 776), (v6)(v8, enum case for BetaEnrollment.State.notEnrolled(_:), v9), sub_10008729C(), sub_10008729C(), v7(v8, v9), *(v0 + 720) == *(v0 + 680)))
  {
    v11 = *(v0 + 800);
    *(v0 + 880) = *(*(v0 + 792) + 352);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v0 + 888) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;

    v14 = swift_task_alloc();
    *(v0 + 896) = v14;
    *v14 = v0;
    v14[1] = sub_10005C278;

    return sub_10005F7E8(&unk_10008C990, v13);
  }

  else
  {
    sub_100064304();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = *(v0 + 824);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10005C278(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 896);
  v11 = *v2;
  v3[113] = a1;
  v3[114] = v1;

  if (v1)
  {
    v5 = v3[99];
    v6 = sub_10005C78C;
  }

  else
  {
    v7 = v3[111];
    v8 = v3[110];
    v9 = v3[99];

    v6 = sub_10005C3B0;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005C3B0()
{
  v26 = *(v0 + 872);
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v5 = *(v0 + 212);
  v6 = *(v0 + 824);
  v7 = *(v0 + 808);
  (*(*(v0 + 816) + 16))(v6, *(v0 + 776), v7);
  v8 = objc_allocWithZone(sub_1000865CC());
  v28 = 1;
  v27 = sub_1000865BC();
  *(v0 + 920) = v27;
  v4(v6, v5, v7);
  sub_10008729C();
  sub_10008729C();
  v1(v6, v7);
  if (*(v0 + 672) != *(v0 + 664))
  {
    v9 = *(v0 + 872);
    v10 = *(v0 + 864);
    v11 = *(v0 + 856);
    v12 = *(v0 + 848);
    v13 = *(v0 + 824);
    v14 = *(v0 + 808);
    v15 = *(v0 + 776);
    (*(v0 + 840))(v13, enum case for BetaEnrollment.State.enrolling(_:), v14);
    sub_10008729C();
    sub_10008729C();
    v10(v13, v14);
    v28 = *(v0 + 656) == *(v0 + 648);
  }

  v16 = *(v0 + 784);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v23 = *(v0 + 784);
    }

    v17 = sub_10008793C();
    v24 = *(v0 + 784);
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = *(v0 + 904);
  v19 = *(v0 + 832);
  *(v0 + 80) = 0x6F43656369766564;
  *(v0 + 88) = 0xEB00000000746E75;
  *(v0 + 96) = v17;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x6E6F697461727564;
  *(v0 + 120) = 0xEB00000000636553;
  *(v0 + 128) = 0;
  *(v0 + 132) = 1;
  *(v0 + 136) = 0x726F727265;
  *(v0 + 144) = 0xE500000000000000;
  *(v0 + 152) = xmmword_10008C7C0;
  *(v0 + 168) = 0xEB00000000676E69;
  *(v0 + 176) = v28;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  sub_1000167E0(0x7472617453, 0xE500000000000000);
  *(v0 + 184) = mach_absolute_time();
  *(v0 + 192) = 0;

  sub_100082FA0(v20);

  sub_100064240(&qword_1000AFAB0, &qword_1000ADC30, COClusterMember_ptr);
  isa = sub_10008749C().super.isa;
  *(v0 + 928) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 616;
  *(v0 + 24) = sub_10005C804;
  v22 = swift_continuation_init();
  *(v0 + 544) = sub_100001EEC(&qword_1000AFAB8, &qword_10008C908);
  *(v0 + 520) = v22;
  *(v0 + 488) = _NSConcreteStackBlock;
  *(v0 + 496) = 1107296256;
  *(v0 + 504) = sub_100061030;
  *(v0 + 512) = &unk_1000A9510;
  [v18 sendRequest:v27 members:isa withCompletionHandler:v0 + 488];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10005C78C()
{
  v1 = v0[111];
  v2 = v0[110];

  v3 = v0[114];
  v4 = v0[103];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005C804()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 936) = v3;
  v4 = *(v1 + 792);
  if (v3)
  {
    v5 = sub_10005CE1C;
  }

  else
  {
    v5 = sub_10005C924;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005C924()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v5 = *(v0 + 212);
  v6 = *(v0 + 824);
  v7 = *(v0 + 808);
  v8 = *(v0 + 776);
  v52 = *(v0 + 616);
  v50 = *(v0 + 872);
  v51 = *(v0 + 624);

  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v0 + 200) = mach_absolute_time();
  *(v0 + 208) = 0;
  sub_10005909C();
  v4(v6, v5, v7);
  sub_10008729C();
  sub_10008729C();
  v1(v6, v7);
  if (*(v0 + 728) == *(v0 + 736))
  {
    v9 = *(v0 + 792);
    v10 = *(v0 + 784);
    swift_beginAccess();
    sub_100007B58(v10);
  }

  else
  {
    v11 = *(v0 + 872);
    v12 = *(v0 + 864);
    v13 = *(v0 + 856);
    v14 = *(v0 + 848);
    v15 = *(v0 + 824);
    v16 = *(v0 + 808);
    v17 = *(v0 + 776);
    (*(v0 + 840))(v15, enum case for BetaEnrollment.State.notEnrolled(_:), v16);
    sub_10008729C();
    sub_10008729C();
    v12(v15, v16);
    if (*(v0 + 744) != *(v0 + 752))
    {
      goto LABEL_6;
    }

    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    swift_beginAccess();
    sub_100007D58(v19);
  }

  swift_endAccess();
LABEL_6:
  v20 = *(v0 + 912);
  v21 = *(v0 + 792);
  v22 = v51;
  v23 = v52;
  sub_100061118(v51, v52);
  if (v20)
  {
    v24 = v20;

    sub_1000877DC(28);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v54._object = 0x800000010008FB50;
    v54._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000871BC(v54);
    *(v0 + 688) = v20;
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    sub_1000878DC();
    v25 = *(v0 + 600);
    v26 = *(v0 + 608);
    *(v0 + 696) = type metadata accessor for BetaEnrollmentNetworkingSession();
    sub_100001EEC(&qword_1000AE538, &qword_100089C98);
    sub_10008716C();
    v27 = objc_allocWithZone(CULogHandle);
    v28 = sub_10008714C();
    v29 = sub_10008714C();

    v30 = [v27 initWithSubsystem:v28 category:v29];

    v31 = sub_10008714C();

    [v30 ulog:60 message:v31];

    swift_errorRetain();
    sub_1000167E0(1886352467, 0xE400000000000000);
    *(v0 + 200) = mach_absolute_time();
    *(v0 + 208) = 0;
    *(v0 + 704) = v24;
    swift_errorRetain();
    sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v32 = *(v0 + 712);

      *(v0 + 152) = v32;
    }

    v33 = *(v0 + 920);
    v34 = *(v0 + 904);
    sub_10005909C();

    swift_willThrow();

    v35 = *(v0 + 192);
    *(v0 + 448) = *(v0 + 176);
    *(v0 + 464) = v35;
    *(v0 + 480) = *(v0 + 208);
    v36 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v36;
    v37 = *(v0 + 160);
    *(v0 + 416) = *(v0 + 144);
    *(v0 + 432) = v37;
    v38 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v38;
    sub_1000642B0(v0 + 352);
    v39 = *(v0 + 824);

    v40 = *(v0 + 8);
  }

  else
  {
    v41 = *(v0 + 176);
    v42 = *(v0 + 192);
    v43 = *(v0 + 144);
    *(v0 + 296) = *(v0 + 160);
    *(v0 + 312) = v41;
    *(v0 + 328) = v42;
    v44 = *(v0 + 80);
    *(v0 + 232) = *(v0 + 96);
    v45 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v45;
    *(v0 + 280) = v43;
    v46 = *(v0 + 920);
    v47 = *(v0 + 904);
    v48 = *(v0 + 824);
    *(v0 + 344) = *(v0 + 208);
    *(v0 + 216) = v44;
    sub_1000642B0(v0 + 216);

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_10005CE1C()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);
  swift_willThrow();

  v3 = *(v0 + 936);
  sub_1000877DC(28);
  *(v0 + 600) = 0;
  *(v0 + 608) = 0xE000000000000000;
  v22._object = 0x800000010008FB50;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v22);
  *(v0 + 688) = v3;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v4 = *(v0 + 600);
  v5 = *(v0 + 608);
  *(v0 + 696) = type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v6 = objc_allocWithZone(CULogHandle);
  v7 = sub_10008714C();
  v8 = sub_10008714C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_10008714C();

  [v9 ulog:60 message:v10];

  swift_errorRetain();
  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v0 + 200) = mach_absolute_time();
  *(v0 + 208) = 0;
  *(v0 + 704) = v3;
  swift_errorRetain();
  sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 712);

    *(v0 + 152) = v11;
  }

  v12 = *(v0 + 920);
  v13 = *(v0 + 904);
  sub_10005909C();

  swift_willThrow();

  v14 = *(v0 + 192);
  *(v0 + 448) = *(v0 + 176);
  *(v0 + 464) = v14;
  *(v0 + 480) = *(v0 + 208);
  v15 = *(v0 + 128);
  *(v0 + 384) = *(v0 + 112);
  *(v0 + 400) = v15;
  v16 = *(v0 + 160);
  *(v0 + 416) = *(v0 + 144);
  *(v0 + 432) = v16;
  v17 = *(v0 + 96);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 368) = v17;
  sub_1000642B0(v0 + 352);
  v18 = *(v0 + 824);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10005D0DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();

  return _swift_task_switch(sub_10005D150, v2, 0);
}

uint64_t sub_10005D150()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1000877DC(28);

  sub_10008609C();
  sub_100061F84(&qword_1000AE420, 255, &type metadata accessor for UUID);
  v12._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v12);

  v13._countAndFlagsBits = 0x6669746E65646920;
  v13._object = 0xED00002073726569;
  sub_1000871BC(v13);
  sub_100061F84(&qword_1000AE428, 255, &type metadata accessor for UUID);
  v14._countAndFlagsBits = sub_1000874CC();
  sub_1000871BC(v14);

  sub_10001640C(0x656D6F6820746553, 0xEB00000000204449);

  v4 = sub_10008605C();
  v5 = v2[51];
  v2[50] = v4;
  v2[51] = v6;

  v7 = v2[54];
  v2[54] = v1;

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_10005D360;
  v9 = v0[4];

  return sub_100059BC8();
}

uint64_t sub_10005D360()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10005D470, v2, 0);
}

uint64_t sub_10005D470()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_10001640C(0x6D726177657250, 0xE700000000000000);
  v0[7] = *(v1 + 352);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_10005D5A8;

  return (sub_10005F7E8)(&unk_10008CA10, v4);
}

uint64_t sub_10005D5A8(void *a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {
    v6 = v5[4];

    return _swift_task_switch(sub_10005D708, v6, 0);
  }

  else
  {
    v7 = v5[7];
    v8 = v5[8];

    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_10005D708()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_10005D774(uint64_t a1, uint64_t a2)
{
  v3[83] = v2;
  v3[82] = a2;
  v3[81] = a1;
  v3[84] = swift_getObjectType();
  v4 = sub_10008672C();
  v3[85] = v4;
  v5 = *(v4 - 8);
  v3[86] = v5;
  v6 = *(v5 + 64) + 15;
  v3[87] = swift_task_alloc();

  return _swift_task_switch(sub_10005D848, v2, 0);
}

uint64_t sub_10005D848()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  sub_1000877DC(45);

  v0[76] = v4;
  v10._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v10);

  v11._countAndFlagsBits = 0x67726174206E6F20;
  v11._object = 0xEC00000020737465;
  sub_1000871BC(v11);
  v0[88] = sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  v12._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v12);

  sub_10001640C(0xD00000000000001DLL, 0x800000010008F090);

  v0[89] = *(v2 + 352);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v0[90] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[91] = v7;
  *v7 = v0;
  v7[1] = sub_10005DA54;

  return sub_10005F7E8(&unk_10008C8F8, v6);
}

uint64_t sub_10005DA54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v11 = *v2;
  v3[92] = a1;
  v3[93] = v1;

  if (v1)
  {
    v5 = v3[83];
    v6 = sub_10005DF98;
  }

  else
  {
    v7 = v3[90];
    v8 = v3[89];
    v9 = v3[83];

    v6 = sub_10005DB8C;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005DB8C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  (*(*(v0 + 688) + 104))(*(v0 + 696), enum case for BetaEnrollment.State.enrolled(_:), *(v0 + 680));
  v3 = objc_allocWithZone(sub_1000865CC());
  v4 = sub_1000865BC();
  *(v0 + 752) = v4;
  if (v1 >> 62)
  {
    if (*(v0 + 656) < 0)
    {
      v12 = *(v0 + 656);
    }

    v5 = sub_10008793C();
  }

  else
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *(v0 + 736);
  v7 = *(v0 + 704);
  v8 = *(v0 + 656);
  BYTE4(v14) = 1;
  LOBYTE(v15) = 1;
  LOBYTE(v14) = 0;
  *(v0 + 80) = 0x6F43656369766564;
  *(v0 + 88) = 0xEB00000000746E75;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x6E6F697461727564;
  *(v0 + 120) = 0xEB00000000636553;
  *(v0 + 128) = 0;
  *(v0 + 132) = 1;
  *(v0 + 136) = 0x726F727265;
  *(v0 + 144) = 0xE500000000000000;
  *(v0 + 152) = xmmword_10008C7C0;
  *(v0 + 168) = 0xEB00000000676E69;
  *(v0 + 176) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  sub_1000167E0(0x7472617453, 0xE500000000000000);
  *(v0 + 184) = mach_absolute_time();
  *(v0 + 192) = 0;

  sub_100082FA0(v9);

  sub_100064240(&qword_1000AFAB0, &qword_1000ADC30, COClusterMember_ptr);
  isa = sub_10008749C().super.isa;
  *(v0 + 760) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 576;
  *(v0 + 24) = sub_10005DE78;
  v11 = swift_continuation_init();
  *(v0 + 544) = sub_100001EEC(&qword_1000AFAB8, &qword_10008C908);
  *(v0 + 520) = v11;
  *(v0 + 488) = _NSConcreteStackBlock;
  *(v0 + 496) = 1107296256;
  *(v0 + 504) = sub_100061030;
  *(v0 + 512) = &unk_1000A93D0;
  [v6 sendRequest:v4 members:isa withCompletionHandler:{v0 + 488, v14, v15}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10005DE78()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 768) = v3;
  v4 = *(v1 + 664);
  if (v3)
  {
    v5 = sub_10005E3D0;
  }

  else
  {
    v5 = sub_10005E010;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005DF98()
{
  v1 = v0[90];
  v2 = v0[89];

  v3 = v0[93];
  v4 = v0[87];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005E010()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 576);
  v5 = *(v0 + 584);

  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v0 + 200) = mach_absolute_time();
  *(v0 + 208) = 0;
  sub_10005909C();
  swift_beginAccess();
  sub_100007B58(v3);
  swift_endAccess();
  v6 = v5;
  v7 = v4;
  sub_100061118(v5, v4);
  if (v1)
  {
    v8 = v1;

    sub_1000877DC(34);
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    v35._object = 0x800000010008F940;
    v35._countAndFlagsBits = 0xD000000000000020;
    sub_1000871BC(v35);
    *(v0 + 616) = v1;
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    sub_1000878DC();
    v9 = *(v0 + 592);
    v10 = *(v0 + 600);
    *(v0 + 624) = type metadata accessor for BetaEnrollmentNetworkingSession();
    sub_100001EEC(&qword_1000AE538, &qword_100089C98);
    sub_10008716C();
    v11 = objc_allocWithZone(CULogHandle);
    v12 = sub_10008714C();
    v13 = sub_10008714C();

    v14 = [v11 initWithSubsystem:v12 category:v13];

    v15 = sub_10008714C();

    [v14 ulog:60 message:v15];

    swift_errorRetain();
    sub_1000167E0(1886352467, 0xE400000000000000);
    *(v0 + 200) = mach_absolute_time();
    *(v0 + 208) = 0;
    *(v0 + 632) = v8;
    swift_errorRetain();
    sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 640);

      *(v0 + 152) = v16;
    }

    v17 = *(v0 + 752);
    v18 = *(v0 + 736);
    sub_10005909C();

    swift_willThrow();

    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v21 = *(v0 + 144);
    *(v0 + 296) = *(v0 + 160);
    *(v0 + 312) = v19;
    *(v0 + 328) = v20;
    v22 = *(v0 + 80);
    *(v0 + 232) = *(v0 + 96);
    v23 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v23;
    *(v0 + 280) = v21;
    *(v0 + 344) = *(v0 + 208);
    *(v0 + 216) = v22;
    sub_1000642B0(v0 + 216);
    v24 = *(v0 + 696);

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 752);
    v27 = *(v0 + 736);
    v28 = *(v0 + 696);
    v29 = *(v0 + 192);
    *(v0 + 448) = *(v0 + 176);
    *(v0 + 464) = v29;
    *(v0 + 480) = *(v0 + 208);
    v30 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v30;
    v31 = *(v0 + 160);
    *(v0 + 416) = *(v0 + 144);
    *(v0 + 432) = v31;
    v32 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v32;
    sub_1000642B0(v0 + 352);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_10005E3D0()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  swift_willThrow();

  v3 = *(v0 + 768);
  sub_1000877DC(34);
  *(v0 + 592) = 0;
  *(v0 + 600) = 0xE000000000000000;
  v23._object = 0x800000010008F940;
  v23._countAndFlagsBits = 0xD000000000000020;
  sub_1000871BC(v23);
  *(v0 + 616) = v3;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v4 = *(v0 + 592);
  v5 = *(v0 + 600);
  *(v0 + 624) = type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v6 = objc_allocWithZone(CULogHandle);
  v7 = sub_10008714C();
  v8 = sub_10008714C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_10008714C();

  [v9 ulog:60 message:v10];

  swift_errorRetain();
  sub_1000167E0(1886352467, 0xE400000000000000);
  *(v0 + 200) = mach_absolute_time();
  *(v0 + 208) = 0;
  *(v0 + 632) = v3;
  swift_errorRetain();
  sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 640);

    *(v0 + 152) = v11;
  }

  v12 = *(v0 + 752);
  v13 = *(v0 + 736);
  sub_10005909C();

  swift_willThrow();

  v14 = *(v0 + 176);
  v15 = *(v0 + 192);
  v16 = *(v0 + 144);
  *(v0 + 296) = *(v0 + 160);
  *(v0 + 312) = v14;
  *(v0 + 328) = v15;
  v17 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v18 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v18;
  *(v0 + 280) = v16;
  *(v0 + 344) = *(v0 + 208);
  *(v0 + 216) = v17;
  sub_1000642B0(v0 + 216);
  v19 = *(v0 + 696);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10005E698@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v10 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v58 - v12;
  v65 = sub_10008672C();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v65);
  v66 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v17 = *(v67 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v67);
  v20 = &v58 - v19;
  v21 = sub_1000864CC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = sub_10008652C();
  if (v23)
  {
    v24 = v23;
    v63 = v22;
    v64 = a3;
    v25 = sub_10008651C();
    if (!v26)
    {

      goto LABEL_7;
    }

    v27 = v26;
    v62 = v25;
    sub_10008653C();
    v28 = v65;
    if ((*(v14 + 48))(v13, 1, v65) == 1)
    {

      sub_10000649C(v13, &qword_1000AE970, &unk_10008A740);
LABEL_7:
      a3 = v64;
      goto LABEL_8;
    }

    v61 = v17;
    v30 = v67;
    v31 = *(v67 + 52);
    v59 = &v20[*(v67 + 48)];
    v60 = v31;
    (*(v14 + 32))(v66, v13, v28);
    sub_1000864EC();
    sub_100064E44(v9, v20);
    *&v20[v30[11]] = a2;
    v32 = &v20[v30[10]];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    v33 = v63;
    *(v32 + 4) = v62;
    *(v32 + 5) = v27;
    *(v32 + 6) = v33;
    *(v32 + 7) = v24;
    *(v32 + 4) = 0u;
    *(v32 + 5) = 0u;
    *(v32 + 6) = 0u;
    *(v32 + 7) = 0u;
    (*(v14 + 16))(&v20[v30[9]], v66, v28);
    v34 = sub_10008650C();
    v35 = v59;
    *v59 = v34;
    *(v35 + 8) = v36 & 1;
    *&v20[v60] = sub_1000864FC();
    v37 = sub_10008656C();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = sub_10008659C();
      if (v42)
      {
        *v32 = v39;
        *(v32 + 1) = v40;
        *(v32 + 2) = v41;
        *(v32 + 3) = v42;
      }

      else
      {
      }
    }

    v43 = sub_10008654C();
    v45 = v61;
    if (v44)
    {
      v46 = v43;
      v47 = v44;
      v48 = sub_10008657C();
      if (!v49)
      {

        v50 = sub_10008655C();
        if (v51)
        {
LABEL_18:
          v52 = v50;
          v53 = v51;
          v54 = sub_10008658C();
          v56 = v55;

          (*(v14 + 8))(v66, v28);
          if (v56)
          {
            *(v32 + 12) = v52;
            *(v32 + 13) = v53;
            *(v32 + 14) = v54;
            *(v32 + 15) = v56;
          }

          else
          {
          }

          goto LABEL_23;
        }

LABEL_21:
        (*(v14 + 8))(v66, v28);

LABEL_23:
        v57 = v64;
        sub_10000E4A4(v20, v64, &qword_1000AEA70, &unk_10008D060);
        (*(v45 + 56))(v57, 0, 1, v67);
        return sub_10000649C(v20, &qword_1000AEA70, &unk_10008D060);
      }

      *(v32 + 8) = v46;
      *(v32 + 9) = v47;
      *(v32 + 10) = v48;
      *(v32 + 11) = v49;
    }

    v50 = sub_10008655C();
    if (v51)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_8:
  sub_10000649C(v20, &qword_1000AE9C0, &qword_10008A810);
  return (*(v17 + 56))(a3, 1, 1, v67);
}

uint64_t sub_10005EB7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v10 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v58 - v12;
  v65 = sub_10008672C();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v65);
  v66 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v17 = *(v67 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v67);
  v20 = &v58 - v19;
  v21 = sub_1000864CC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = sub_10008666C();
  if (v23)
  {
    v24 = v23;
    v63 = v22;
    v64 = a3;
    v25 = sub_10008665C();
    if (!v26)
    {

      goto LABEL_7;
    }

    v27 = v26;
    v62 = v25;
    sub_10008667C();
    v28 = v65;
    if ((*(v14 + 48))(v13, 1, v65) == 1)
    {

      sub_10000649C(v13, &qword_1000AE970, &unk_10008A740);
LABEL_7:
      a3 = v64;
      goto LABEL_8;
    }

    v61 = v17;
    v30 = v67;
    v31 = *(v67 + 52);
    v59 = &v20[*(v67 + 48)];
    v60 = v31;
    (*(v14 + 32))(v66, v13, v28);
    sub_10008662C();
    sub_100064E44(v9, v20);
    *&v20[v30[11]] = a2;
    v32 = &v20[v30[10]];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    v33 = v63;
    *(v32 + 4) = v62;
    *(v32 + 5) = v27;
    *(v32 + 6) = v33;
    *(v32 + 7) = v24;
    *(v32 + 4) = 0u;
    *(v32 + 5) = 0u;
    *(v32 + 6) = 0u;
    *(v32 + 7) = 0u;
    (*(v14 + 16))(&v20[v30[9]], v66, v28);
    v34 = sub_10008664C();
    v35 = v59;
    *v59 = v34;
    *(v35 + 8) = v36 & 1;
    *&v20[v60] = sub_10008663C();
    v37 = sub_1000866AC();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = sub_1000866DC();
      if (v42)
      {
        *v32 = v39;
        *(v32 + 1) = v40;
        *(v32 + 2) = v41;
        *(v32 + 3) = v42;
      }

      else
      {
      }
    }

    v43 = sub_10008668C();
    v45 = v61;
    if (v44)
    {
      v46 = v43;
      v47 = v44;
      v48 = sub_1000866BC();
      if (!v49)
      {

        v50 = sub_10008669C();
        if (v51)
        {
LABEL_18:
          v52 = v50;
          v53 = v51;
          v54 = sub_1000866CC();
          v56 = v55;

          (*(v14 + 8))(v66, v28);
          if (v56)
          {
            *(v32 + 12) = v52;
            *(v32 + 13) = v53;
            *(v32 + 14) = v54;
            *(v32 + 15) = v56;
          }

          else
          {
          }

          goto LABEL_23;
        }

LABEL_21:
        (*(v14 + 8))(v66, v28);

LABEL_23:
        v57 = v64;
        sub_10000E4A4(v20, v64, &qword_1000AEA70, &unk_10008D060);
        (*(v45 + 56))(v57, 0, 1, v67);
        return sub_10000649C(v20, &qword_1000AEA70, &unk_10008D060);
      }

      *(v32 + 8) = v46;
      *(v32 + 9) = v47;
      *(v32 + 10) = v48;
      *(v32 + 11) = v49;
    }

    v50 = sub_10008669C();
    if (v51)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_8:
  sub_10000649C(v20, &qword_1000AE9C0, &qword_10008A810);
  return (*(v17 + 56))(a3, 1, 1, v67);
}

unint64_t sub_10005F060()
{
  v1 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v71 - v3;
  v5 = sub_1000864CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10006EC0C(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_10006EC0C((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = 0xD000000000000015;
  *(v10 + 2) = v12 + 1;
  v14 = &v10[16 * v12];
  *(v14 + 4) = 0xD000000000000019;
  *(v14 + 5) = 0x800000010008F480;
  v15 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v16 = (v0 + v15[10]);
  v17 = v16[5];
  v79 = v16[4];
  v80 = v17;
  v18 = v16[7];
  v81 = v16[6];
  v82 = v18;
  v19 = v16[1];
  v75 = *v16;
  v76 = v19;
  v20 = v16[3];
  v77 = v16[2];
  v78 = v20;
  v21 = sub_100012C94();
  v24 = *(v10 + 2);
  v23 = *(v10 + 3);
  if (v24 >= v23 >> 1)
  {
    v71 = v21;
    v68 = v10;
    v69 = v22;
    v70 = sub_10006EC0C((v23 > 1), v24 + 1, 1, v68);
    v22 = v69;
    v10 = v70;
    v21 = v71;
  }

  *(v10 + 2) = v24 + 1;
  v25 = &v10[16 * v24];
  *(v25 + 4) = v21;
  *(v25 + 5) = v22;
  sub_10000E4A4(v0, v4, &qword_1000AE9C0, &qword_10008A810);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000649C(v4, &qword_1000AE9C0, &qword_10008A810);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1000877DC(16);
    v83._countAndFlagsBits = 0x6962616C69617641;
    v83._object = 0xEE00203A7974696CLL;
    sub_1000871BC(v83);
    sub_1000878DC();
    v26 = v73;
    v27 = v74;
    v28 = v10;
    v29 = *(v10 + 2);
    v30 = v28;
    v31 = *(v28 + 3);
    if (v29 >= v31 >> 1)
    {
      v30 = sub_10006EC0C((v31 > 1), v29 + 1, 1, v30);
    }

    (*(v6 + 8))(v9, v5);
    *(v30 + 2) = v29 + 1;
    v32 = &v30[16 * v29];
    v10 = v30;
    *(v32 + 4) = v26;
    *(v32 + 5) = v27;
    v13 = 0xD000000000000015;
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  v84._countAndFlagsBits = 0x203A6574617453;
  v84._object = 0xE700000000000000;
  sub_1000871BC(v84);
  v33 = v15[9];
  sub_10008672C();
  sub_1000878DC();
  v34 = v73;
  v35 = v74;
  v37 = *(v10 + 2);
  v36 = *(v10 + 3);
  if (v37 >= v36 >> 1)
  {
    v10 = sub_10006EC0C((v36 > 1), v37 + 1, 1, v10);
  }

  *(v10 + 2) = v37 + 1;
  v38 = &v10[16 * v37];
  *(v38 + 4) = v34;
  *(v38 + 5) = v35;
  v39 = v0 + v15[12];
  if ((*(v39 + 8) & 1) == 0)
  {
    v40 = *v39;
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1000877DC(23);

    v73 = 0xD000000000000015;
    v74 = 0x800000010008F4C0;
    v72 = v40;
    v85._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v85);

    v34 = v73;
    v41 = v74;
    v43 = *(v10 + 2);
    v42 = *(v10 + 3);
    if (v43 >= v42 >> 1)
    {
      v10 = sub_10006EC0C((v42 > 1), v43 + 1, 1, v10);
    }

    *(v10 + 2) = v43 + 1;
    v44 = &v10[16 * v43];
    *(v44 + 4) = v34;
    *(v44 + 5) = v41;
  }

  v45 = *(v0 + v15[13]);
  if (v45)
  {
    if (v45 >> 62)
    {
      if (!sub_10008793C())
      {
        goto LABEL_30;
      }

      v46 = sub_10008793C();
      if (!v46)
      {
        v50 = _swiftEmptyArrayStorage;
        goto LABEL_28;
      }

LABEL_19:
      v73 = _swiftEmptyArrayStorage;
      v47 = &v73;
      sub_10006F608(0, v46 & ~(v46 >> 63), 0);
      if (v46 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v71 = v10;
      v49 = 0;
      v50 = v73;
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v51 = sub_10008781C();
        }

        else
        {
          v51 = *(v45 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = [v51 description];
        v54 = sub_10008715C();
        v56 = v55;

        v73 = v50;
        v58 = v50[2];
        v57 = v50[3];
        if (v58 >= v57 >> 1)
        {
          sub_10006F608((v57 > 1), v58 + 1, 1);
          v50 = v73;
        }

        ++v49;
        v50[2] = v58 + 1;
        v59 = &v50[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
      }

      while (v46 != v49);
      v10 = v71;
LABEL_28:
      v73 = v50;
      sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
      sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800);
      v60 = sub_10008712C();
      v62 = v61;

      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1000877DC(24);

      v73 = 0xD000000000000015;
      v74 = 0x800000010008F4A0;
      v86._countAndFlagsBits = v60;
      v86._object = v62;
      sub_1000871BC(v86);

      v87._countAndFlagsBits = 93;
      v87._object = 0xE100000000000000;
      sub_1000871BC(v87);
      v34 = v73;
      v45 = v74;
      v13 = *(v10 + 2);
      v48 = *(v10 + 3);
      v47 = (v13 + 1);
      if (v13 < v48 >> 1)
      {
LABEL_29:
        *(v10 + 2) = v47;
        v63 = &v10[16 * v13];
        *(v63 + 4) = v34;
        *(v63 + 5) = v45;
        goto LABEL_30;
      }

LABEL_35:
      v10 = sub_10006EC0C((v48 > 1), v47, 1, v10);
      goto LABEL_29;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v73 = 60;
  v74 = 0xE100000000000000;
  v72 = v10;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800);
  v64 = sub_10008712C();
  v66 = v65;

  v88._countAndFlagsBits = v64;
  v88._object = v66;
  sub_1000871BC(v88);

  v89._countAndFlagsBits = 62;
  v89._object = 0xE100000000000000;
  sub_1000871BC(v89);
  return v73;
}

uint64_t sub_10005F7E8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  v4 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005F8B0, v2, 0);
}

uint64_t sub_10005F8B0()
{
  v1 = v0[4];
  sub_100016564(0x656C652064616F4CLL, 0xEC000000746E656DLL);
  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[6];
  }

  else
  {
    v4 = v0[6];
    v3 = *(v4 + 112);
    if (!v3)
    {
      sub_100001EEC(&qword_1000AFAD8, &qword_10008C938);
      sub_100006454(&qword_1000AFAE0, &qword_1000AFAD8, &qword_10008C938);
      swift_allocError();
      swift_willThrow();
      v26 = v0[8];

      v27 = v0[1];

      return v27();
    }

    v2 = *(v4 + 120);
  }

  v0[9] = v2;
  v5 = *(v4 + 128);
  v0[10] = v5;
  if (*(v4 + 136))
  {
    if (*(v4 + 136) == 1)
    {
      v6 = v0[5];
      sub_1000645E8(v0[4]);
      sub_1000645F8(v5, 1);

      v7 = v0[8];

      v8 = v0[1];

      return v8(v5);
    }

    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[5];
    sub_1000645E8(v0[4]);
    sub_100016564(0x676E697472617453, 0xED00006B73617420);
    v20 = sub_10008742C();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v3;
    v21[5] = v2;
    v21[6] = v18;

    v22 = sub_100059D98(0, 0, v17, &unk_10008C948, v21);
    v0[11] = v22;
    v23 = *(v4 + 128);
    *(v4 + 128) = v22;
    LOBYTE(v21) = *(v4 + 136);
    *(v4 + 136) = 0;

    sub_100064614(v23, v21);
    v24 = async function pointer to Task.value.getter[1];
    v25 = swift_task_alloc();
    v0[12] = v25;
    v13 = sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
    v14 = sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    *v25 = v0;
    v25[1] = sub_10005FCB4;
    v15 = v0 + 3;
    v16 = v22;
  }

  else
  {
    v10 = v0[5];
    sub_1000645E8(v0[4]);
    sub_1000645F8(v5, 0);
    v11 = async function pointer to Task.value.getter[1];
    v12 = swift_task_alloc();
    v0[14] = v12;
    v13 = sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
    v14 = sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    *v12 = v0;
    v12[1] = sub_10005FDE0;
    v15 = v0 + 2;
    v16 = v5;
  }

  return Task.value.getter(v15, v16, v13, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_10005FCB4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10005FFC0;
  }

  else
  {
    v6 = sub_10005FF0C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005FDE0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1000600E8;
  }

  else
  {
    v6 = sub_100060068;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005FF0C()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[3];
  v5 = *(v3 + 128);
  *(v3 + 128) = v4;
  v6 = *(v3 + 136);
  *(v3 + 136) = 1;
  v7 = v4;
  sub_100064614(v5, v6);
  v8 = v0[8];

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_10005FFC0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;
  v6 = *(v4 + 136);
  *(v4 + 136) = 2;
  sub_100064614(v5, v6);
  swift_willThrow();

  v7 = v0[13];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100060068()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_100064614(v2, 0);
  v3 = v0[2];
  v4 = v0[8];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1000600E8()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_100064614(v2, 0);
  v3 = v0[15];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100060160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000653AC;

  return sub_10006474C(a3, a4, a5);
}

id sub_10006020C()
{
  swift_defaultActor_initialize();
  v13 = 1;
  v12 = 1;
  v11 = 1;
  v10 = 1;
  v9 = 1;
  v8 = 1;
  v7 = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xD000000000000011;
  *(v0 + 144) = 0x800000010008FB70;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = 0xD000000000000016;
  *(v0 + 184) = 0x800000010008FB90;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0xD000000000000018;
  *(v0 + 216) = 0x800000010008FBB0;
  *(v0 + 224) = 0;
  *(v0 + 228) = 1;
  *(v0 + 232) = 0xD000000000000018;
  *(v0 + 240) = 0x800000010008FBD0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0xD00000000000001ALL;
  *(v0 + 272) = 0x800000010008FBF0;
  *(v0 + 280) = 0;
  *(v0 + 284) = 1;
  *(v0 + 288) = 0xD000000000000014;
  *(v0 + 296) = 0x800000010008FC10;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 320) = 0xD000000000000016;
  *(v0 + 328) = 0x800000010008FC30;
  *(v0 + 336) = 0;
  *(v0 + 340) = 1;
  *(v0 + 344) = _swiftEmptyArrayStorage;
  sub_100001EEC(&qword_1000AE528, &qword_100089C88);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 136) = 2;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  *(v0 + 352) = v1;
  *(v0 + 360) = &_swiftEmptyDictionarySingleton;
  *(v0 + 368) = &_swiftEmptyDictionarySingleton;
  *(v0 + 376) = &_swiftEmptyDictionarySingleton;
  if (qword_1000ADBF0 != -1)
  {
    swift_once();
  }

  v2 = unk_1000B3BE0;
  *(v0 + 384) = qword_1000B3BD8;
  *(v0 + 392) = v2;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  v3 = qword_1000ADBF8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = unk_1000B3BF0;
  *(v0 + 416) = qword_1000B3BE8;
  *(v0 + 424) = v4;
  *(v0 + 432) = &_swiftEmptySetSingleton;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BetaEnrollmentNetworkingSession();

  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100060484()
{
  v1 = *(v0 + 320);
  v17[12] = *(v0 + 304);
  v17[13] = v1;
  v17[14] = *(v0 + 336);
  v2 = *(v0 + 256);
  v17[8] = *(v0 + 240);
  v17[9] = v2;
  v3 = *(v0 + 288);
  v17[10] = *(v0 + 272);
  v17[11] = v3;
  v4 = *(v0 + 192);
  v17[4] = *(v0 + 176);
  v17[5] = v4;
  v5 = *(v0 + 224);
  v17[6] = *(v0 + 208);
  v17[7] = v5;
  v6 = *(v0 + 128);
  v17[0] = *(v0 + 112);
  v17[1] = v6;
  v7 = *(v0 + 160);
  v17[2] = *(v0 + 144);
  v17[3] = v7;
  sub_1000650A8(v17);
  v8 = *(v0 + 352);

  v9 = *(v0 + 360);

  v10 = *(v0 + 368);

  v11 = *(v0 + 376);

  v12 = *(v0 + 392);

  v13 = *(v0 + 408);

  v14 = *(v0 + 424);

  v15 = *(v0 + 432);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10006053C()
{
  sub_100060484();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000605D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_1000605F8, 0, 0);
}

uint64_t sub_1000605F8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1000606F8;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return sub_100060838(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000606F8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_100060810, 0, 0);
}

uint64_t sub_100060838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a2;
  v4[14] = v3;
  v4[12] = a1;
  v4[15] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[16] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10006091C, v3, 0);
}

uint64_t sub_10006091C()
{
  v13 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = 0;
  v6 = *(v0 + 96);
  v12 = 0xE000000000000000;
  sub_1000877DC(18);
  v15._object = 0x800000010008F460;
  v15._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v15);
  *(v0 + 80) = v6;
  sub_1000879EC();
  sub_10001640C(v11, v12);

  *(v0 + 88) = v6;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 72) = 0;
  swift_beginAccess();
  sub_10006C118(v0 + 64, &v11);
  swift_endAccess();
  swift_beginAccess();
  if ((*(v10 + 128) & 1) == 0)
  {
    sub_100016548(0x676E697472617453, 0xE800000000000000);
    *(v10 + 128) = 1;
  }

  v7 = *(v0 + 144);
  swift_endAccess();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100060B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_100060B48, 0, 0);
}

uint64_t sub_100060B48()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_100060C48;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return sub_100060D60(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100060C48()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_1000653A8, 0, 0);
}

uint64_t sub_100060D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a2;
  v4[19] = v3;
  v4[17] = a1;
  v4[20] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[21] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100060E44, v3, 0);
}

uint64_t sub_100060E44()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v11 = v0[19];
  v6 = v0[17];
  sub_1000877DC(20);
  v13._object = 0x800000010008F420;
  v13._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v13);
  v0[15] = v6;
  sub_1000879EC();
  sub_10001640C(0, 0xE000000000000000);

  v0[16] = v6;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  sub_10006C438((v0 + 2), (v0 + 13));
  sub_100036E90((v0 + 2));
  sub_10000649C((v0 + 13), &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();
  if (!*(*(v11 + 360) + 16))
  {
    v7 = v0[19];
    swift_beginAccess();
    sub_100007F5C();
    swift_endAccess();
  }

  v8 = v0[23];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100061030(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_100001FB4((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (!a4)
  {
    if (a2)
    {
      if (a3)
      {
        v12 = *(v8[8] + 40);
        *v12 = a2;
        v12[1] = a3;
        v13 = a2;
        v14 = a3;
        v7 = v8;

        return _swift_continuation_throwingResume(v7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_continuation_throwingResume(v7);
  }

  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  v9 = swift_allocError();
  *v10 = a4;
  v11 = a4;

  return _swift_continuation_throwingResumeWithError(v8, v9);
}

void sub_100061118(void *a1, void *a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v87 = &v79 - v6;
  v7 = sub_10008672C();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v79 - v15;
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_1000877DC(31);

  v91 = 0xD000000000000015;
  v92 = 0x800000010008F970;
  if (a1)
  {
    v16 = sub_100023B40(0, &qword_1000AFAC0, COMessageChannelResponse_ptr);
    v95 = v16;
    v96 = sub_100064240(&qword_1000AFAC8, &qword_1000AFAC0, COMessageChannelResponse_ptr);
    v93 = a1;
    v17 = *sub_100001FB4(&v93, v16);
    v18 = a1;
    v19 = [v17 description];
    v20 = sub_10008715C();
    v22 = v21;

    sub_100001FF8(&v93);
  }

  else
  {
    v22 = 0xE300000000000000;
    v20 = 7104878;
  }

  v98._countAndFlagsBits = v20;
  v98._object = v22;
  sub_1000871BC(v98);

  v99._countAndFlagsBits = 0x206D6F726620;
  v99._object = 0xE600000000000000;
  sub_1000871BC(v99);
  if (!a2)
  {
    v101._countAndFlagsBits = 7104878;
    v101._object = 0xE300000000000000;
    sub_1000871BC(v101);

    sub_10001640C(v91, v92);

    goto LABEL_11;
  }

  v23 = sub_100023B40(0, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
  v95 = v23;
  v96 = sub_100064240(&qword_1000AEDD8, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
  v93 = a2;
  v24 = *sub_100001FB4(&v93, v23);
  v25 = a2;
  v26 = [v24 description];
  v27 = sub_10008715C();
  v29 = v28;

  sub_100001FF8(&v93);
  v100._countAndFlagsBits = v27;
  v100._object = v29;
  sub_1000871BC(v100);

  sub_10001640C(v91, v92);

  v30 = [v25 member];
  if (!v30)
  {
LABEL_11:
    sub_100064304();
    swift_allocError();
    *v35 = 6;
    swift_willThrow();
    return;
  }

  v31 = v30;
  if (!a1 || (sub_10008661C(), (v32 = swift_dynamicCastClass()) == 0))
  {
    sub_100064304();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();

    return;
  }

  v33 = v32;
  v82 = a1;
  v34 = sub_1000865EC();
  if (v34)
  {
  }

  else if (sub_10008660C())
  {
    goto LABEL_24;
  }

  v37 = sub_1000865EC();
  v83 = v33;
  if (v37)
  {
    v38 = v37;
    v39 = sub_100023B40(0, &qword_1000AE1E0, NSError_ptr);
    v95 = v39;
    v96 = sub_100064240(&qword_1000AE1D8, &qword_1000AE1E0, NSError_ptr);
    v93 = v38;
    v40 = *sub_100001FB4(&v93, v39);
    v41 = v38;
    v42 = [v40 description];
    v43 = sub_10008715C();
    v45 = v44;

    sub_100001FF8(&v93);
  }

  else
  {
    v45 = 0xE300000000000000;
    v43 = 7104878;
  }

  v93 = 0;
  v94 = 0xE000000000000000;
  sub_1000877DC(64);
  v102._countAndFlagsBits = 0xD000000000000032;
  v102._object = 0x800000010008F990;
  sub_1000871BC(v102);
  v103._countAndFlagsBits = v43;
  v103._object = v45;
  sub_1000871BC(v103);

  v104._countAndFlagsBits = 0x736563637573202CLL;
  v104._object = 0xEA00000000002073;
  sub_1000871BC(v104);
  v46 = sub_10008660C();
  v47 = (v46 & 1) == 0;
  if (v46)
  {
    v48._countAndFlagsBits = 1702195828;
  }

  else
  {
    v48._countAndFlagsBits = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  v48._object = v49;
  sub_1000871BC(v48);

  v81 = v93;
  v93 = type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v50 = objc_allocWithZone(CULogHandle);
  v51 = sub_10008714C();
  v52 = sub_10008714C();

  v53 = [v50 initWithSubsystem:v51 category:v52];

  v54 = sub_10008714C();

  [v53 ulog:60 message:v54];

  v33 = v83;
LABEL_24:
  v55 = v97;
  swift_beginAccess();
  v56 = *(v55 + 368);
  if (*(v56 + 16))
  {

    v57 = sub_10006E748(v31);
    if (v58)
    {
      sub_10000E4A4(*(v56 + 56) + *(v89 + 72) * v57, v14, &qword_1000AEA70, &unk_10008D060);

      v59 = v14;
      v81 = v31;
      v60 = v88;
      sub_100064358(v59, v88);
      v91 = 0;
      v92 = 0xE000000000000000;
      sub_1000877DC(44);
      v105._countAndFlagsBits = 0x676E697461647055;
      v105._object = 0xEA00000000006020;
      sub_1000871BC(v105);
      v61 = v90;
      sub_1000871BC(*(v60 + *(v90 + 40) + 32));
      v106._countAndFlagsBits = 0x2E65746174732060;
      v106._object = 0xE900000000000020;
      sub_1000871BC(v106);
      v80 = *(v61 + 36);
      v62 = v86;
      sub_1000878DC();
      v107._countAndFlagsBits = 540945696;
      v107._object = 0xE400000000000000;
      sub_1000871BC(v107);
      v63 = v33;
      v64 = v84;
      sub_1000865FC();
      sub_1000878DC();
      v65 = v85;
      (*(v85 + 8))(v64, v62);
      v108._countAndFlagsBits = 0x6E6F70736572202ELL;
      v108._object = 0xED00000A203A6573;
      sub_1000871BC(v108);
      v66 = [v63 description];
      v67 = sub_10008715C();
      v69 = v68;

      v109._countAndFlagsBits = v67;
      v109._object = v69;
      sub_1000871BC(v109);

      sub_10001640C(v91, v92);

      sub_1000865FC();
      v70 = v88;
      (*(v65 + 40))(v88 + v80, v64, v62);
      v71 = sub_1000865DC();
      v72 = v90;
      v73 = v70;
      v74 = v70 + *(v90 + 48);
      *v74 = v71;
      *(v74 + 8) = v75 & 1;
      v76 = v87;
      sub_10000E4A4(v70, v87, &qword_1000AEA70, &unk_10008D060);
      (*(v89 + 56))(v76, 0, 1, v72);
      swift_beginAccess();
      v77 = v81;
      sub_10006C1E4(v76, v77);
      swift_endAccess();
      sub_100063380();

      sub_10000649C(v73, &qword_1000AEA70, &unk_10008D060);
      return;
    }
  }

  sub_100064304();
  swift_allocError();
  *v78 = 8;
  swift_willThrow();
}

uint64_t sub_100061B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_10005B490(a1, a2, a3);
}

uint64_t sub_100061C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004265C;

  return sub_10005B670();
}

uint64_t sub_100061CAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_10005B860();
}

uint64_t sub_100061D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_10005BBD4(a1, a2, a3);
}

uint64_t sub_100061DE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_10005BDB4(a1, a2);
}

uint64_t sub_100061E88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_10005D774(a1, a2);
}

uint64_t sub_100061F2C(uint64_t a1, uint64_t a2)
{
  result = sub_100061F84(&qword_1000AFAA8, a2, type metadata accessor for BetaEnrollmentNetworkingSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100061F84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100061FCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100062004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return _swift_task_switch(sub_100062028, 0, 0);
}

uint64_t sub_100062028()
{
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v0[25] = objc_opt_self();

    return _swift_task_switch(sub_100062130, v3, 0);
  }

  else
  {
    sub_10000EEA4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100062130()
{
  v1 = v0[24];
  v0[26] = *(v1 + 384);
  v0[27] = *(v1 + 392);

  return _swift_task_switch(sub_1000621AC, 0, 0);
}

uint64_t sub_1000621AC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v0[28] = sub_10008714C();

  return _swift_task_switch(sub_100062228, v3, 0);
}

uint64_t sub_100062228()
{
  v1 = v0[24];
  v0[29] = *(v1 + 400);
  v0[30] = *(v1 + 408);

  return _swift_task_switch(sub_1000622A4, 0, 0);
}

uint64_t sub_1000622A4()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v0[10] = v0[29];
  v0[11] = v1;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  v5 = sub_10008766C();

  v0[31] = [v3 messageChannelWithTopic:v2 cluster:v5 manualGrouping:1];
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100062384, v4, 0);
}

uint64_t sub_100062384()
{
  *(v0 + 256) = *(*(v0 + 192) + 432);

  return _swift_task_switch(sub_1000623F8, 0, 0);
}

uint64_t sub_1000623F8()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[24];
  sub_10008609C();
  sub_100061F84(&qword_1000AE428, 255, &type metadata accessor for UUID);
  isa = sub_10008749C().super.isa;

  [v1 addGroupedHomeKitIdentifiers:isa];

  return _swift_task_switch(sub_1000624E0, v3, 0);
}

uint64_t sub_1000624E0()
{
  v1 = *(v0 + 192);
  sub_100062938(*(v0 + 248));

  return _swift_task_switch(sub_10006254C, 0, 0);
}

uint64_t sub_10006254C()
{
  v1 = v0[31];
  sub_100059920(0xD000000000000016, 0x800000010008FA60, v0[23], &off_1000A9370);
  v0[2] = v0;
  v0[3] = sub_10006268C;
  v2 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000AE430, &qword_100089B08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001BF1C;
  v0[13] = &unk_1000A9448;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006268C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_10006280C;
  }

  else
  {
    v3 = sub_10006279C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006279C()
{
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[21];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_10006280C()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[33];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10006288C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000324C;

  return sub_100062004(a1, v5, v4);
}

void sub_100062938(void *a1)
{
  v2 = v1;
  v4 = sub_10008707C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100064AFC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006323C;
  aBlock[3] = &unk_1000A9470;
  v10 = _Block_copy(aBlock);

  sub_1000866EC();
  [a1 registerHandler:v10 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v10);
  v11 = *(v2 + 416);
  v12 = *(v2 + 424);

  v13 = sub_10008714C();

  sub_100023B40(0, &qword_1000AFAF0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v14 = sub_10008761C();
  (*(v5 + 8))(v8, v4);
  [a1 addSessionProducerWithSubTopic:v13 delegate:v2 dispatchQueue:v14];
}

void sub_100062B60(void *a1, void *a2, void (*a3)(unsigned __int8 *, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = sub_100062C74(a1, a2);
    a3(v8, 0);
  }

  else
  {
    sub_10000EEA4();
    v6 = swift_allocError();
    *v7 = 3;
    swift_willThrow();
    swift_errorRetain();
    a3(0, v6);
  }
}

unsigned __int8 *sub_100062C74(void *a1, void *a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v43 = &v41 - v6;
  v7 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v41 - v9;
  v44 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v47 = *(v44 - 8);
  v11 = *(v47 + 64);
  v12 = __chkstk_darwin(v44);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v41 - v13;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1000877DC(31);

  v45 = 0xD000000000000015;
  v46 = 0x800000010008FAF0;
  v14 = [a1 description];
  v15 = sub_10008715C();
  v17 = v16;

  v48._countAndFlagsBits = v15;
  v48._object = v17;
  sub_1000871BC(v48);

  v49._countAndFlagsBits = 0x206D6F726620;
  v49._object = 0xE600000000000000;
  sub_1000871BC(v49);
  v18 = [a2 member];
  v19 = [v18 description];
  v20 = sub_10008715C();
  v22 = v21;

  v50._countAndFlagsBits = v20;
  v50._object = v22;
  sub_1000871BC(v50);

  sub_10001640C(v45, v46);

  sub_1000866EC();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = a1;
    sub_10005EB7C(v24, [a2 member], v10);
    v26 = v47;
    if ((*(v47 + 48))(v10, 1, v44) == 1)
    {
      sub_10000649C(v10, &qword_1000AEDC8, &qword_10008C910);
      sub_100064304();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
    }

    else
    {
      v33 = v42;
      sub_100064358(v10, v42);
      v34 = sub_10008742C();
      v35 = v43;
      (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = v41;
      sub_10000E4A4(v33, v41, &qword_1000AEA70, &unk_10008D060);
      v38 = (v26[80] + 40) & ~v26[80];
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v36;
      sub_100064358(v37, v39 + v38);
      sub_100016C64(0, 0, v35, &unk_10008C978, v39);

      v26 = [objc_allocWithZone(sub_10008670C()) init];

      sub_10000649C(v33, &qword_1000AEA70, &unk_10008D060);
    }
  }

  else
  {
    v45 = type metadata accessor for BetaEnrollmentNetworkingSession();
    sub_100001EEC(&qword_1000AE538, &qword_100089C98);
    sub_10008716C();
    v28 = objc_allocWithZone(CULogHandle);
    v29 = sub_10008714C();
    v30 = sub_10008714C();

    v26 = [v28 initWithSubsystem:v29 category:v30];

    v31 = sub_10008714C();
    [v26 ulog:60 message:v31];

    sub_10000EEA4();
    swift_allocError();
    *v32 = 6;
    swift_willThrow();
  }

  return v26;
}

void sub_10006323C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_100064B54, v9);
}

void sub_100063310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10008600C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100063380()
{
  ObjectType = swift_getObjectType();
  v0 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_10008609C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  sub_10008608C();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1000877DC(29);

  v19 = 0xD00000000000001BLL;
  v20 = 0x800000010008F9D0;
  sub_100061F84(&qword_1000AE420, 255, &type metadata accessor for UUID);
  v21._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v21);

  sub_10001640C(v19, v20);

  v11 = sub_10008742C();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v13, v8, v4);
  *(v15 + v14) = v12;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  sub_100016C64(0, 0, v3, &unk_10008C920, v15);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_100063698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_1000636B8, 0, 0);
}

uint64_t sub_1000636B8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100063770, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100063770()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_1000877DC(23);

  v7._countAndFlagsBits = sub_10005F060();
  sub_1000871BC(v7);

  sub_10001640C(0xD000000000000015, 0x800000010008FB10);

  sub_1000639E4(v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100063888;
  v4 = v0[7];

  return sub_10005A8E8();
}