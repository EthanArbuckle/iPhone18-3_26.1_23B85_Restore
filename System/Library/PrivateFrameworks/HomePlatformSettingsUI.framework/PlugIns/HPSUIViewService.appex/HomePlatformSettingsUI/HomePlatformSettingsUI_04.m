uint64_t sub_100063888()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100063984, 0, 0);
}

uint64_t sub_100063984()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000639E4(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1000877DC(21);

  v10 = 0xD000000000000013;
  v11 = 0x800000010008FB30;
  v12._countAndFlagsBits = sub_10005F060();
  sub_1000871BC(v12);

  sub_10001640C(v10, v11);

  v6 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v7 = *(a1 + *(v6 + 44));
  sub_10000E4A4(a1, v5, &qword_1000AEA70, &unk_10008D060);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  swift_beginAccess();
  sub_10006C1E4(v5, v7);
  return swift_endAccess();
}

uint64_t sub_100063B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_100063BA4, 0, 0);
}

uint64_t sub_100063BA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1000877DC(38);

  sub_10008609C();
  sub_100061F84(&qword_1000AE420, 255, &type metadata accessor for UUID);
  v9._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v9);

  sub_100059920(0xD000000000000024, 0x800000010008F9F0, v1, &off_1000A9370);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_100063D6C;

    return sub_10005A8E8();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100063D6C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100063E7C()
{
  swift_beginAccess();
  v1 = *(v0 + 360);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 360);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v4)
  {
LABEL_9:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_10000E4A4(*(v1 + 56) + ((v8 << 9) | (8 * v11)), v20, &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C(v20, &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v19 = v13;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F100(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v15 = v9[2];
        v14 = v9[3];
        v16 = v15 + 1;
        v17 = v19;
        if (v15 >= v14 >> 1)
        {
          result = sub_10006F100((v14 > 1), v15 + 1, 1, v9);
          v16 = v15 + 1;
          v17 = v19;
          v9 = result;
        }

        v9[2] = v16;
        v18 = &v9[2 * v15];
        v18[4] = Strong;
        v18[5] = v17;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100064068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_100064130;

  return sub_100060160(a2, a3, a4, a5, a6);
}

uint64_t sub_100064130(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_100064240(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100023B40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100064304()
{
  result = qword_1000AFAD0;
  if (!qword_1000AFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAD0);
  }

  return result;
}

uint64_t sub_100064358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000643C8()
{
  v1 = sub_10008609C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1000644B0(uint64_t a1)
{
  v4 = *(sub_10008609C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_100063B80(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1000645E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1000645F8(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_100064614(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_100064630()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_100064670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000324C;

  return sub_100064068(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10006474C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100064770, 0, 0);
}

uint64_t sub_100064770()
{
  sub_10008746C();
  v5 = (v0[6] + *v0[6]);
  v1 = *(v0[6] + 4);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000648B0;
  v3 = v0[7];

  return v5(v0 + 4);
}

uint64_t sub_1000648B0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100064AE4;
  }

  else
  {
    v3 = sub_1000649C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000649C4()
{
  v1 = v0[8];
  sub_1000877DC(28);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v6._object = 0x800000010008FA40;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v6);
  v2 = v0[4];
  v0[5] = v2;
  sub_100023B40(0, &qword_1000AFAE8, COMessageChannel_ptr);
  sub_1000878DC();
  sub_100059920(v0[2], v0[3], v1, &off_1000A9150);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100064B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100064B1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100064B5C()
{
  v1 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = sub_1000864CC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = v1[9];
  v10 = sub_10008672C();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = (v6 + v1[10]);
  if (v11[1])
  {

    v12 = v11[3];
  }

  v13 = v11[5];

  v14 = v11[7];

  if (v11[9])
  {

    v15 = v11[11];
  }

  if (v11[13])
  {

    v16 = v11[15];
  }

  v17 = *(v6 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_100064D40(uint64_t a1)
{
  v4 = *(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002740;

  return sub_100063698(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100064E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064EB8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_100060B20(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_100064F8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100064FD4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_1000605D0(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1000650FC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100065134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002740;

  return sub_100062004(a1, v5, v4);
}

uint64_t getEnumTagSinglePayload for BetaEnrollmentNetworkingSession.SessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BetaEnrollmentNetworkingSession.SessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100065334()
{
  result = qword_1000AFAF8[0];
  if (!qword_1000AFAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFAF8);
  }

  return result;
}

uint64_t sub_1000653B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100065448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v65 = a4;
  v64 = a3;
  v58 = a1;
  v67 = a7;
  v53 = sub_100001EEC(&qword_1000AFBB0, &unk_10008CBE0);
  v10 = *(*(v53 - 8) + 64);
  v11 = __chkstk_darwin(v53);
  v50 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v49 - v13;
  v63 = sub_1000864CC();
  v61 = *(v63 - 8);
  v14 = *(v61 + 64);
  v15 = __chkstk_darwin(v63);
  v60 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = v49 - v17;
  v18 = sub_10008672C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v49 - v24;
  v26 = *(a6 + 72);
  swift_unknownObjectRetain();
  v66 = a5;
  v68 = a6;
  v49[1] = a6 + 72;
  v49[0] = v26;
  v26(a5, a6);
  v51 = v19[13];
  v52 = v19 + 13;
  v51(v23, enum case for BetaEnrollment.State.multiple(_:), v18);
  sub_10006741C(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
  v27 = sub_10008713C();
  v55 = v19;
  v28 = v19[1];
  v57 = v23;
  v28(v23, v18);
  v56 = v25;
  v54 = v28;
  v28(v25, v18);
  if (v27)
  {
    goto LABEL_3;
  }

  v29 = v59;
  (*(v68 + 48))(v66);
  v31 = v60;
  v30 = v61;
  v32 = v63;
  (*(v61 + 104))(v60, enum case for BetaEnrollment.Availability.unavailable(_:), v63);
  sub_10006741C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  v33 = sub_10008713C();
  v34 = *(v30 + 8);
  v34(v31, v32);
  v34(v29, v32);
  v35 = v62;
  v36 = v65;
  v37 = v64;
  v38 = v68;
  if (v33)
  {
LABEL_3:
    swift_unknownObjectRelease();
    result = sub_100086F5C();
  }

  else
  {
    v40 = v56;
    v41 = v66;
    (v49[0])(v66, v68);
    swift_unknownObjectRelease();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v38;
    *(v42 + 32) = v58;
    *(v42 + 40) = a2;
    *(v42 + 48) = v37 & 1;
    *(v42 + 56) = v36;
    v43 = type metadata accessor for EnrollToggle();
    (v55[2])(v35 + *(v43 + 20), v40, v18);
    v44 = (v35 + *(v43 + 24));
    *v44 = sub_100067284;
    v44[1] = v42;
    v45 = v57;
    v51(v57, enum case for BetaEnrollment.State.enrolled(_:), v18);
    sub_10006741C(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
    swift_unknownObjectRetain();

    sub_10008729C();
    sub_10008729C();
    v46 = v54;
    v54(v45, v18);
    v46(v40, v18);
    *v35 = v70 == v69;
    *(v35 + 8) = 0;
    v47 = v35 + *(v53 + 36);
    *v47 = 0;
    *(v47 + 8) = 1;
    sub_1000672F0(v35, v50);
    sub_100067360();
    v48 = sub_100086F5C();
    sub_10000649C(v35, &qword_1000AFBB0, &unk_10008CBE0);
    result = v48;
  }

  *v67 = result;
  return result;
}

uint64_t sub_100065A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_100086A9C();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  sub_100065B60(a1, a2, a3, a4, a5, a6, a7 + 24);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(a7 + 144) = v16;
  *(a7 + 152) = sub_100067088;
  *(a7 + 160) = v14;

  return swift_unknownObjectRetain();
}

uint64_t sub_100065B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[0] = a2;
  v11 = *(a6 + 16);
  v12 = *(v11 + 8);
  swift_unknownObjectRetain();
  v13 = v12(a5, v11);
  v15 = v14;
  v16 = (*(a6 + 64))(a5, a6);
  v18 = v17;
  v27[12] = a2;
  v19 = (*(v11 + 16))(a5, v11);
  v21 = v20;
  swift_unknownObjectRelease();
  v28[0] = v19;
  v28[1] = v21;
  v29 = 1;
  v30 = v16;
  v31 = v18;
  v32 = v13;
  v33 = v15;
  v34 = 0;
  v35 = 0;
  sub_100065448(a1, a2, a3, a4, a5, a6, v27);
  v22 = v27[0];
  sub_1000671D4(v28, v27);
  sub_1000671D4(v27, a7);
  *(a7 + 96) = 0;
  *(a7 + 104) = 1;
  *(a7 + 112) = v22;

  sub_100067230(v28);

  return sub_100067230(v27);
}

uint64_t sub_100065CD0(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14 - 8);
  v18 = &v22 - v17;
  if ((*a1 & 1) == 0)
  {
    v19 = sub_10008742C();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    sub_1000873FC();

    swift_unknownObjectRetain();
    v20 = sub_1000873EC();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = &protocol witness table for MainActor;
    *(v21 + 32) = a6;
    *(v21 + 40) = a7;
    *(v21 + 48) = a2;
    *(v21 + 56) = a3;
    *(v21 + 64) = a4 & 1;
    *(v21 + 72) = a5;
    sub_100016C64(0, 0, v18, &unk_10008CBD0, v21);
  }

  return result;
}

uint64_t sub_100065E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_100065EE0, v10, v9);
}

uint64_t sub_100065EE0()
{
  v1 = v0[2];
  v2 = *(v0[4] + 104);
  swift_unknownObjectRetain();
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100065FF8;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return v9(v6, v5);
}

uint64_t sub_100065FF8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 16);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v5, v4);
}

uint64_t sub_10006613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v77 = a5;
  v73 = a4;
  v71 = a3;
  v66 = a2;
  v72 = a1;
  v76 = a7;
  v8 = sub_100003200(&qword_1000AFB80, &qword_10008CBA8);
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v9 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = &protocol witness table for AnyView;
  v80[0] = v8;
  v60 = sub_100086FBC();
  v80[1] = v60;
  v74 = sub_100066F64();
  v80[2] = v74;
  WitnessTable = swift_getWitnessTable();
  v57[1] = WitnessTable;
  v10 = sub_10008694C();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  v12 = __chkstk_darwin(v10);
  v59 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = (v57 - v14);
  v65 = sub_1000864CC();
  v64 = *(v65 - 8);
  v15 = *(v64 + 64);
  v16 = __chkstk_darwin(v65);
  v63 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = v57 - v18;
  v19 = sub_10008672C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v57 - v25;
  v70 = v10;
  v75 = v8;
  v27 = v66;
  v69 = sub_100086B9C();
  v68 = *(v69 - 8);
  v28 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = v57 - v29;
  v30 = *(a6 + 72);
  swift_unknownObjectRetain();
  v30(v77, a6);
  (*(v20 + 104))(v24, enum case for BetaEnrollment.State.multiple(_:), v19);
  sub_10006741C(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v31(v26, v19);
  if (v80[0] != v83)
  {
    swift_unknownObjectRelease();
    v39 = a6;
    v40 = v77;
    goto LABEL_5;
  }

  v32 = v62;
  v33 = v77;
  (*(a6 + 48))(v77, a6);
  swift_unknownObjectRelease();
  v34 = v64;
  v35 = v63;
  v36 = v65;
  (*(v64 + 104))(v63, enum case for BetaEnrollment.Availability.unavailable(_:), v65);
  sub_10006741C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  v37 = sub_10008713C();
  v38 = *(v34 + 8);
  v38(v35, v36);
  v38(v32, v36);
  v39 = a6;
  v40 = v33;
  if (v37)
  {
LABEL_5:
    sub_100065A60(v72, v27, v71 & 1, v73, v40, v39, v80);
    v53 = v70;
    swift_getWitnessTable();
    v52 = v67;
    v47 = v74;
    sub_10004B430(v80, v53, v75);
    sub_10000649C(v80, &qword_1000AFB80, &qword_10008CBA8);
    goto LABEL_6;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v33;
  *(v41 + 24) = a6;
  *(v41 + 32) = v72;
  *(v41 + 40) = v27;
  *(v41 + 48) = v71 & 1;
  v42 = v73;
  *(v41 + 56) = v73;
  v43 = __chkstk_darwin(v42);
  v57[-6] = v33;
  v57[-5] = a6;
  v57[-4] = v44;
  v57[-3] = v27;
  LOBYTE(v57[-2]) = v45;
  v57[-1] = v43;

  swift_unknownObjectRetain();
  v46 = v59;
  v47 = v74;
  sub_10008693C();
  v48 = v70;
  v49 = swift_getWitnessTable();
  v50 = v58;
  sub_10004EDD8(v58, v46, v48, v49);
  v51 = *(v61 + 8);
  v51(v46, v48);
  sub_10004EDD8(v46, v50, v48, v49);
  v52 = v67;
  sub_10004B338(v46, v48);
  v51(v46, v48);
  v51(v50, v48);
LABEL_6:
  v78 = swift_getWitnessTable();
  v79 = v47;
  v54 = v69;
  v55 = swift_getWitnessTable();
  sub_10004EDD8(v76, v52, v54, v55);
  return (*(v68 + 8))(v52, v54);
}

uint64_t sub_100066AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
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

uint64_t sub_100066DE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_100066E88(AssociatedTypeWitness, &v7, AssociatedConformanceWitness);
  *a2 = v7;
  return result;
}

uint64_t sub_100066E88@<X0>(uint64_t a1@<X6>, uint64_t *a2@<X8>, uint64_t a3)
{
  v5 = swift_unknownObjectRetain();
  sub_10004EDF0(v5, 0, a1, a3);
  v6 = type metadata accessor for BetaSettingsToggleRowView();
  swift_getWitnessTable();
  v7 = sub_100059858(v6);
  swift_unknownObjectRelease();

  *a2 = v7;
  return result;
}

unint64_t sub_100066F64()
{
  result = qword_1000AFB88;
  if (!qword_1000AFB88)
  {
    sub_100003200(&qword_1000AFB80, &qword_10008CBA8);
    sub_100006454(&qword_1000AFB90, &qword_1000AFB98, &qword_10008CBB0);
    sub_100006454(&qword_1000AFBA0, &qword_1000AFBA8, &unk_10008CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFB88);
  }

  return result;
}

uint64_t sub_100067074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  return sub_100066DE0(a1, a2);
}

uint64_t sub_10006709C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1000670E4(uint64_t a1)
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
  v12[1] = sub_100002740;

  return sub_100065E3C(a1, v6, v7, v8, v9, v10, v11, v4);
}

uint64_t sub_100067284()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = *(v2 + 120);
  swift_unknownObjectRetain();
  v4(v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000672F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AFBB0, &unk_10008CBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100067360()
{
  result = qword_1000AFBB8;
  if (!qword_1000AFBB8)
  {
    sub_100003200(&qword_1000AFBB0, &unk_10008CBE0);
    sub_10006741C(&qword_1000AFBC0, type metadata accessor for EnrollToggle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBB8);
  }

  return result;
}

uint64_t sub_10006741C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067464(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003200(&qword_1000AFB80, &qword_10008CBA8);
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v3 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_100066F64();
  swift_getWitnessTable();
  sub_10008694C();
  sub_100086B9C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

char *sub_100067688@<X0>(char **a1@<X8>)
{
  result = sub_100067808();
  *a1 = result;
  return result;
}

uint64_t sub_1000676B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010008FC70 == a2 || (sub_100087A1C() & 1) != 0 || a1 == 0xD000000000000011 && 0x800000010008FC90 == a2 || (sub_100087A1C() & 1) != 0 || a1 == 0xD000000000000011 && 0x800000010008FCB0 == a2 || (sub_100087A1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008FCD0 == a2)
  {

    return 0;
  }

  else
  {
    v5 = sub_100087A1C();

    if (v5)
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }
}

char *sub_100067808()
{
  v0 = sub_10006F00C(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 0x80;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 3, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v0[v5 + 32] = 1;
  if (v3 < (v2 + 4))
  {
    v0 = sub_10006F00C((v1 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v2 + 4;
  v0[v6 + 32] = -127;
  return v0;
}

uint64_t getEnumTagSinglePayload for DeviceModel.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DeviceModel.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100067B30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003200(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067B88()
{
  result = qword_1000AFBE8;
  if (!qword_1000AFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBE8);
  }

  return result;
}

double sub_100067C08@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *(a1 + 24) = &type metadata for ProfileIcon;
  *(a1 + 32) = sub_100067D3C();
  *a1 = vdupq_n_s64(0x4045000000000000uLL);
  *(a1 + 40) = 2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = sub_100086BFC();
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1;
  return result;
}

unint64_t sub_100067D3C()
{
  result = qword_1000AFBF0;
  if (!qword_1000AFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBF0);
  }

  return result;
}

unint64_t sub_100067D94()
{
  result = qword_1000AFBF8;
  if (!qword_1000AFBF8)
  {
    sub_100003200(&qword_1000AFC00, qword_10008CE30);
    sub_10004E5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBF8);
  }

  return result;
}

uint64_t sub_100067E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100067EC0, 0, 0);
}

uint64_t sub_100067EC0()
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
  sub_100016950(0, 0, v2, &unk_10008D008, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100068000(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_10008623C();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_10008622C();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v9 = *(*(sub_100001EEC(&qword_1000AFE78, &qword_10008CFD0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = sub_10008603C();
  v2[23] = v10;
  v11 = *(v10 - 8);
  v2[24] = v11;
  v12 = *(v11 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000681B0, v1, 0);
}

uint64_t sub_1000681B0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[14];
  sub_1000877DC(25);

  v0[26] = sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  v29._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v29);

  sub_1000163E0(0xD000000000000017, 0x800000010008FDB0);

  sub_10008602C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000649C(v0[22], &qword_1000AFE78, &qword_10008CFD0);
    sub_10000EEA4();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_8:
    v22 = v0[25];
    v24 = v0[21];
    v23 = v0[22];
    v25 = v0[18];

    v26 = v0[1];

    return v26();
  }

  v6 = v0[15];
  (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
  v7 = *(v6 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken + 8);
  if (!v7)
  {
    v19 = v0[24];
    v18 = v0[25];
    v20 = v0[23];
    sub_10000EEA4();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    goto LABEL_8;
  }

  v8 = *(v6 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);

  sub_1000163E0(0xD00000000000001FLL, 0x800000010008FE00);
  v9 = sub_1000863BC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v0[27] = sub_1000863AC();
  sub_100001EEC(&qword_1000AFE80, &qword_10008CFD8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x65696B6F6F43;
  *(inited + 16) = xmmword_100089AB0;
  *(inited + 40) = 0xE600000000000000;
  v30._countAndFlagsBits = v8;
  v30._object = v7;
  sub_1000871BC(v30);

  *(inited + 48) = 0x3D6B63616361;
  *(inited + 56) = 0xE600000000000000;
  v13 = sub_100074AC0(inited);
  v0[28] = v13;
  swift_setDeallocating();
  sub_10000649C(inited + 32, &qword_1000AFE88, &unk_10008CFE0);
  v14 = *(&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getData(forURL:useACToken:additionalHeaders:) + 1);
  v27 = &async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getData(forURL:useACToken:additionalHeaders:) + async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getData(forURL:useACToken:additionalHeaders:);
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_10006857C;
  v16 = v0[25];

  return (v27)(v16, 0, v13);
}

uint64_t sub_10006857C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v11 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = v4[15];
    v7 = sub_100068B34;
  }

  else
  {
    v8 = v4[28];
    v9 = v4[15];

    v7 = sub_1000686A8;
    v6 = v9;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000686A8()
{
  v1 = v0[26];
  v2 = v0[14];
  v3 = v0[15];
  sub_1000877DC(30);

  v22._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v22);

  sub_1000163E0(0xD00000000000001CLL, 0x800000010008FE50);

  v4 = *(v3 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client);
  v0[33] = v4;
  if (v4)
  {
    v5 = v0[21];
    (*(v0[17] + 104))(v0[18], enum case for CarrySettings.ProfileVariant.vpn(_:), v0[16]);

    sub_10008621C();
    v6 = async function pointer to CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)[1];
    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_1000688CC;
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[21];
    v11 = v0[14];

    return CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)(v9, v8, v10, v11);
  }

  else
  {
    v12 = v0[27];
    v14 = v0[24];
    v13 = v0[25];
    v16 = v0[22];
    v15 = v0[23];
    v17 = v0[21];
    v18 = v0[18];
    sub_100074900(v0[30], v0[31]);

    (*(v14 + 8))(v13, v15);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000688CC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = v2[33];
  v6 = v2[21];
  v7 = v2[20];
  v8 = v2[19];
  v9 = v2[15];
  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    v10 = sub_100068D78;
  }

  else
  {
    v10 = sub_100068A64;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100068A64()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  sub_100074900(v0[30], v0[31]);

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100068B34()
{
  v1 = v0[28];

  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[24];
  v18 = v0[23];
  v19 = v0[25];
  sub_1000877DC(34);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v21._object = 0x800000010008FE20;
  v21._countAndFlagsBits = 0xD000000000000020;
  sub_1000871BC(v21);
  v0[12] = v2;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v5 = v0[10];
  v6 = v0[11];
  v0[13] = type metadata accessor for CarrySettingsNetworkingSession();
  sub_100001EEC(&qword_1000AE508, &qword_100089C50);
  sub_10008716C();
  v7 = objc_allocWithZone(CULogHandle);
  v8 = sub_10008714C();
  v9 = sub_10008714C();

  v10 = [v7 initWithSubsystem:v8 category:v9];

  v11 = sub_10008714C();

  [v10 ulog:90 message:v11];

  swift_willThrow();

  (*(v4 + 8))(v19, v18);
  v12 = v0[25];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100068D78()
{
  sub_100074900(v0[30], v0[31]);
  v1 = v0[35];
  v2 = v0[27];
  v3 = v0[24];
  v17 = v0[23];
  v18 = v0[25];
  sub_1000877DC(34);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v20._object = 0x800000010008FE20;
  v20._countAndFlagsBits = 0xD000000000000020;
  sub_1000871BC(v20);
  v0[12] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v4 = v0[10];
  v5 = v0[11];
  v0[13] = type metadata accessor for CarrySettingsNetworkingSession();
  sub_100001EEC(&qword_1000AE508, &qword_100089C50);
  sub_10008716C();
  v6 = objc_allocWithZone(CULogHandle);
  v7 = sub_10008714C();
  v8 = sub_10008714C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_10008714C();

  [v9 ulog:90 message:v10];

  swift_willThrow();

  (*(v3 + 8))(v18, v17);
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100068FBC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = *(*(sub_100001EEC(&qword_1000AE3E0, &unk_100089E60) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = sub_10008642C();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000690B8, v2, 0);
}

uint64_t sub_1000690B8()
{
  v1 = v0[17];
  v2 = (v0[18] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);
  v3 = v2[1];
  *v2 = v0[16];
  v2[1] = v1;

  v4 = sub_1000863BC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[23] = sub_1000863AC();
  sub_1000163E0(0xD000000000000020, 0x800000010008FE70);
  v7 = *(&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getAllSoftwareUpdateAudiences() + 1);
  v11 = (&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getAllSoftwareUpdateAudiences() + async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getAllSoftwareUpdateAudiences());
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1000691E8;
  v9 = v0[22];

  return v11(v9);
}

uint64_t sub_1000691E8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_1000696B0;
  }

  else
  {
    v6 = sub_100069314;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100069314()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  sub_1000163E0(0xD00000000000002ALL, 0x800000010008FED0);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedAudiences;
  swift_beginAccess();
  sub_100074CA8(v4, v5 + v6, &qword_1000AE3E0, &unk_100089E60);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates;
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v12 = (63 - v10) >> 6;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v35 = _swiftEmptyArrayStorage;
  while (v11)
  {
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_10000E4A4(*(v8 + 56) + ((v14 << 9) | (8 * v16)), (v0 + 15), &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C((v0 + 15), &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        v19 = v18;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F124(0, v35[2] + 1, 1, v35, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v35 = result;
        }

        v21 = v35[2];
        v20 = v35[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v33 = v35[2];
          v34 = v21 + 1;
          result = sub_10006F124((v20 > 1), v21 + 1, 1, v35, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v21 = v33;
          v22 = v34;
          v35 = result;
        }

        v35[2] = v22;
        v23 = &v35[2 * v21];
        v23[4] = Strong;
        v23[5] = v19;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v24 = v0[25];
  v26 = v0[22];
  v25 = v0[23];
  v28 = v0[20];
  v27 = v0[21];

  v29 = swift_task_alloc();
  *(v29 + 16) = v26;
  sub_10006C3A0(sub_100074D10, v29, v35);

  (*(v27 + 8))(v26, v28);
  v30 = v0[22];
  v31 = v0[19];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1000696B0()
{
  v1 = v0[25];
  v2 = v0[18];
  sub_1000877DC(42);
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  v40._object = 0x800000010008FEA0;
  v40._countAndFlagsBits = 0xD000000000000028;
  sub_1000871BC(v40);
  v0[13] = v1;
  v3 = v0 + 13;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v38 = v0;
  sub_1000163E0(v0[11], v0[12]);

  v4 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = -1;
  v7 = -1 << *(v5 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v5 + 64);
  v9 = (63 - v7) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v8)
  {
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_10000E4A4(*(v5 + 56) + ((v11 << 9) | (8 * v14)), (v3 + 1), &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C((v3 + 1), &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F124(0, v12[2] + 1, 1, v12, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v12 = result;
        }

        v19 = v12[2];
        v18 = v12[3];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v37 = v19 + 1;
          v22 = v12;
          v23 = v12[2];
          result = sub_10006F124((v18 > 1), v19 + 1, 1, v22, &qword_1000AFF40, &qword_10008D100, &qword_1000AFF48, &qword_10008D108);
          v20 = v37;
          v19 = v23;
          v12 = result;
        }

        v12[2] = v20;
        v21 = &v12[2 * v19];
        v21[4] = Strong;
        v21[5] = v17;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  v24 = v12[2];
  if (v24)
  {
    v25 = 0;
    v26 = v12 + 5;
    while (v25 < v12[2])
    {
      v27 = v38[25];
      ++v25;
      v29 = *(v26 - 1);
      v28 = *v26;
      ObjectType = swift_getObjectType();
      v31 = *(v28 + 40);
      swift_unknownObjectRetain();
      v31(v27, ObjectType, v28);
      result = swift_unknownObjectRelease();
      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  v32 = v38[25];
  v33 = v38[23];

  v34 = v38[22];
  v35 = v38[19];

  v36 = v38[1];

  return v36();
}

uint64_t sub_100069A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100001EEC(&qword_1000AEDC0, &qword_100088E40) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100069B18, 0, 0);
}

uint64_t sub_100069B18()
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
  sub_100016950(0, 0, v2, &unk_10008CFA0, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100069C58(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = sub_1000861EC();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100069D44, v2, 0);
}

uint64_t sub_100069D44()
{
  v1 = v0[7];
  sub_1000877DC(18);

  v0[14] = sub_10008609C();
  sub_10006E304(&qword_1000AE420, &type metadata accessor for UUID);
  v6._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v6);

  sub_1000163E0(0xD000000000000010, 0x800000010008FF00);

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_100069E94;
  v3 = v0[9];

  return sub_10006C43C();
}

uint64_t sub_100069E94()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100069FA4, v2, 0);
}

uint64_t sub_100069FA4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = *(sub_100001EEC(&qword_1000AFF70, &qword_10008D140) + 48);
  (*(*(v2 - 8) + 16))(v1, v7, v2);
  *(v1 + v8) = v5;
  (*(v4 + 104))(v1, enum case for CarrySettings.MessageChannel.Role.noDaemonClient(_:), v3);
  v9 = objc_allocWithZone(sub_10008620C());

  v10 = sub_1000861FC();
  v0[16] = v10;
  v0[17] = sub_100001EEC(&qword_1000AFF08, &unk_10008D0B8);
  v0[5] = v10;
  v11 = v10;
  v12 = sub_10008628C();
  v0[18] = v12;
  v13 = *(v6 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client);
  *(v6 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client) = v12;

  sub_1000163E0(0xD00000000000001CLL, 0x800000010008FF20);
  v14 = async function pointer to CarrySettings.NetworkingClient.prewarm()[1];
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_10006A16C;

  return CarrySettings.NetworkingClient.prewarm()();
}

uint64_t sub_10006A16C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v14 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_10006A4CC;
    v6 = 0;
  }

  else
  {
    v9 = v2 + 136;
    v7 = *(v2 + 136);
    v8 = *(v9 + 8);
    sub_100006454(&qword_1000AFF10, &qword_1000AFF08, &unk_10008D0B8);
    v10 = sub_1000873DC();
    v12 = v11;
    v5 = sub_10006A2D4;
    v4 = v10;
    v6 = v12;
  }

  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_10006A2D4()
{
  v1 = v0[18];
  v2 = v0[9];
  v0[21] = sub_10008627C();

  return _swift_task_switch(sub_10006A344, v2, 0);
}

uint64_t sub_10006A344()
{
  v1 = v0[18];
  v2 = v0[16];
  v8 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v0[6] = v0[21];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  sub_100001EEC(&qword_1000AFF78, &qword_10008D148);
  sub_100006454(&qword_1000AFF80, &qword_1000AFF78, &qword_10008D148);
  sub_10008682C();

  swift_beginAccess();
  sub_10008674C();
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10006A4CC()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_10006A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10008623C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_10008622C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006A664, v3, 0);
}

uint64_t sub_10006A664()
{
  v1 = (v0[5] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);
  if (v1[1])
  {
    v2 = *v1;
    v3 = sub_1000863BC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v0[12] = sub_1000863AC();
    v6 = *(&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getProfileData(forAudience:) + 1);
    v14 = (&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getProfileData(forAudience:) + async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getProfileData(forAudience:));
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_10006A7E0;
    v8 = v0[2];

    return v14(v8);
  }

  else
  {
    sub_10000EEA4();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10006A7E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 104);
  v7 = *v3;
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = v2;

  v8 = v4[5];
  if (v2)
  {
    v9 = sub_10006ACDC;
  }

  else
  {
    v9 = sub_10006A918;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10006A918()
{
  v1 = v0[5];
  sub_1000163E0(0xD00000000000001BLL, 0x800000010008FD90);
  v2 = *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client);
  v0[17] = v2;
  if (v2)
  {
    v3 = v0[11];
    v4 = v0[2];
    (*(v0[7] + 16))(v0[8], v0[3], v0[6]);

    sub_1000862DC();
    sub_10008621C();
    v5 = async function pointer to CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_10006AAA4;
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[11];
    v10 = v0[4];

    return CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)(v8, v7, v9, v10);
  }

  else
  {
    v11 = v0[11];
    v12 = v0[12];
    v13 = v0[8];
    sub_100074900(v0[14], v0[15]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10006AAA4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 40);
  if (v0)
  {
    v10 = sub_10006AD54;
  }

  else
  {
    v10 = sub_10006AC50;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10006AC50()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  sub_100074900(v0[14], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006ACDC()
{
  v1 = v0[12];

  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006AD54()
{
  v1 = v0[12];
  sub_100074900(v0[14], v0[15]);

  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006ADD8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_10008647C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = sub_100001EEC(&qword_1000AFE58, &qword_10008CF70);
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_1000873FC();
  v2[22] = sub_1000873EC();
  v13 = sub_1000873DC();
  v2[23] = v13;
  v2[24] = v12;

  return _swift_task_switch(sub_10006AFC0, v13, v12);
}

uint64_t sub_10006AFC0()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  *(v0 + 200) = v2;
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 112);
    v37 = *(v0 + 104);
    v5 = *(v0 + 88);
    sub_10006F668(0, v2, 0);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v38 = v3;
    v36 = (v5 + 16);
    v35 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 168);
      v8 = *(v0 + 136);
      v9 = *(v0 + 96);
      v10 = *(v0 + 80);
      sub_10000E4A4(v6, v8, &qword_1000AE5D0, &qword_100089EB0);
      (*v36)(v9, v8, v10);
      v11 = *(v8 + *(v37 + 36));
      *(v0 + 32) = v11;
      sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
      sub_10006CBAC();
      v12 = v11;
      sub_1000862AC();
      sub_10000649C(v8, &qword_1000AE5D0, &qword_100089EB0);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10006F668(v13 > 1, v14 + 1, 1);
      }

      v15 = *(v0 + 168);
      v16 = *(v0 + 144);
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v38 + 32))(_swiftEmptyArrayStorage + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v14, v15, v16);
      v6 += v35;
      --v2;
    }

    while (v2);
  }

  *(v0 + 208) = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage[2];
  *(v0 + 216) = v17;
  if (v17)
  {
    v18 = *(v0 + 152);
    v19 = *(v0 + 72);
    v20 = type metadata accessor for CarrySettingsNetworkingSession();
    v23 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
    *(v0 + 224) = v20;
    *(v0 + 232) = v23;
    v24 = *(v18 + 80);
    *(v0 + 320) = v24;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
    if (!_swiftEmptyArrayStorage[2])
    {
      __break(1u);
      return _swift_task_switch(v20, v21, v22);
    }

    v25 = v20;
    (*(v18 + 16))(*(v0 + 160), _swiftEmptyArrayStorage + ((v24 + 32) & ~v24), *(v0 + 144));
    *(v0 + 16) = 0x676E697461647055;
    *(v0 + 24) = 0xE900000000000020;
    sub_100006454(&qword_1000AFE60, &qword_1000AFE58, &qword_10008CF70);
    v40._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v40);

    v26 = *(v0 + 16);
    v27 = *(v0 + 24);
    *(v0 + 40) = v25;
    sub_100001EEC(&qword_1000AE508, &qword_100089C50);
    sub_10008716C();
    v28 = objc_allocWithZone(CULogHandle);
    v29 = sub_10008714C();
    v30 = sub_10008714C();

    v31 = [v28 initWithSubsystem:v29 category:v30];

    v32 = sub_10008714C();

    [v31 ulog:40 message:v32];

    v33 = sub_10006B3D0;
  }

  else
  {
    v19 = *(v0 + 72);

    *(v0 + 280) = 0;
    *(v0 + 288) = v19;
    v33 = sub_10006BB14;
  }

  v20 = v33;
  v21 = v19;
  v22 = 0;

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_10006B3D0()
{
  v0[32] = *(v0[9] + v0[29]);
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_10006B454, v1, v2);
}

uint64_t sub_10006B454()
{
  if (*(v0 + 256))
  {
    v1 = async function pointer to CarrySettings.NetworkingClient.updateModel(for:)[1];
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    v2[1] = sub_10006B750;
    v3 = *(v0 + 160);

    return CarrySettings.NetworkingClient.updateModel(for:)(v3);
  }

  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 248) + 1;
  v3 = (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  if (v6 == v5)
  {
    v7 = *(v0 + 208);

    v8 = *(v0 + 72);
    *(v0 + 280) = v4;
    *(v0 + 288) = v8;
    v9 = sub_10006BB14;
  }

  else
  {
    v10 = *(v0 + 248) + 1;
    *(v0 + 240) = v4;
    *(v0 + 248) = v10;
    v11 = *(v0 + 208);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      return CarrySettings.NetworkingClient.updateModel(for:)(v3);
    }

    v12 = *(v0 + 224);
    v13 = *(v0 + 72);
    (*(*(v0 + 152) + 16))(*(v0 + 160), v11 + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 152) + 72) * v10, *(v0 + 144));
    *(v0 + 16) = 0x676E697461647055;
    *(v0 + 24) = 0xE900000000000020;
    sub_100006454(&qword_1000AFE60, &qword_1000AFE58, &qword_10008CF70);
    v23._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v23);

    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    *(v0 + 40) = v12;
    sub_100001EEC(&qword_1000AE508, &qword_100089C50);
    sub_10008716C();
    v16 = objc_allocWithZone(CULogHandle);
    v17 = sub_10008714C();
    v18 = sub_10008714C();

    v19 = [v16 initWithSubsystem:v17 category:v18];

    v20 = sub_10008714C();

    [v19 ulog:40 message:v20];

    v9 = sub_10006B3D0;
    v8 = v13;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10006B750()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  v2[34] = v0;

  v5 = v2[32];
  if (v0)
  {
    v6 = v2[26];

    v7 = v2[23];
    v8 = v2[24];
    v9 = sub_10006C044;
  }

  else
  {

    v7 = v2[23];
    v8 = v2[24];
    v9 = sub_10006B898;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10006B898()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  v3 = *(v0 + 248) + 1;
  v4 = (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  if (v3 == v2)
  {
    v7 = *(v0 + 208);

    v5 = *(v0 + 72);
    *(v0 + 280) = v1;
    *(v0 + 288) = v5;
    v4 = sub_10006BB14;
  }

  else
  {
    v8 = *(v0 + 248) + 1;
    *(v0 + 240) = v1;
    *(v0 + 248) = v8;
    v9 = *(v0 + 208);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      return _swift_task_switch(v4, v5, v6);
    }

    v10 = *(v0 + 224);
    v11 = *(v0 + 72);
    (*(*(v0 + 152) + 16))(*(v0 + 160), v9 + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 152) + 72) * v8, *(v0 + 144));
    *(v0 + 16) = 0x676E697461647055;
    *(v0 + 24) = 0xE900000000000020;
    sub_100006454(&qword_1000AFE60, &qword_1000AFE58, &qword_10008CF70);
    v21._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v21);

    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    *(v0 + 40) = v10;
    sub_100001EEC(&qword_1000AE508, &qword_100089C50);
    sub_10008716C();
    v14 = objc_allocWithZone(CULogHandle);
    v15 = sub_10008714C();
    v16 = sub_10008714C();

    v17 = [v14 initWithSubsystem:v15 category:v16];

    v18 = sub_10008714C();

    [v17 ulog:40 message:v18];

    v4 = sub_10006B3D0;
    v5 = v11;
  }

  v6 = 0;

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10006BB14()
{
  v0[37] = *(v0[9] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_10006BB9C, v1, v2);
}

uint64_t sub_10006BB9C()
{
  v1 = v0[25];
  v2 = sub_100074618(v0[37]);

  v33 = v2;
  if (v1)
  {
    v6 = v0[25];
    v7 = v0[14];
    v34 = v0[13];
    v8 = v0[8];
    sub_10008787C();
    v9 = 0;
    v10 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 72);
    do
    {
      v12 = v0[25];
      v13 = v0[17];
      ++v9;
      sub_10000E4A4(v10, v13, &qword_1000AE5D0, &qword_100089EB0);
      v14 = *(v13 + *(v34 + 36));
      sub_10000649C(v13, &qword_1000AE5D0, &qword_100089EB0);
      sub_10008784C();
      v15 = _swiftEmptyArrayStorage[2];
      sub_10008788C();
      sub_10008789C();
      v3 = sub_10008785C();
      v10 += v11;
    }

    while (v9 != v12);
    v2 = v33;
  }

  v32 = v2[2];
  if (v32)
  {
    v16 = 0;
    v31 = v0[14];
    v30 = v0[13];
    v17 = v0[35];
    while (v16 < v2[2])
    {
      v18 = v0[16];
      v19 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v20 = *(v31 + 72);
      sub_10000E4A4(v2 + v19 + v20 * v16, v18, &qword_1000AE5D0, &qword_100089EB0);
      v0[6] = *(v18 + *(v30 + 36));
      v21 = swift_task_alloc();
      *(v21 + 16) = v0 + 6;
      v22 = sub_10006E34C(sub_100074898, v21, _swiftEmptyArrayStorage);

      v23 = v0[16];
      if (v22)
      {
        v3 = sub_10000649C(v23, &qword_1000AE5D0, &qword_100089EB0);
      }

      else
      {
        sub_100036EF8(v23, v0[15], &qword_1000AE5D0, &qword_100089EB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006F628(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_10006F628(v24 > 1, v25 + 1, 1);
        }

        v26 = v0[15];
        _swiftEmptyArrayStorage[2] = v25 + 1;
        v3 = sub_100036EF8(v26, _swiftEmptyArrayStorage + v19 + v25 * v20, &qword_1000AE5D0, &qword_100089EB0);
      }

      ++v16;
      v2 = v33;
      if (v32 == v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v27 = v0[8];

    sub_10006F4D0(v28);
    v0[38] = _swiftEmptyArrayStorage;
    v4 = v0[36];
    v3 = sub_10006BEE0;
    v5 = 0;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006BEE0()
{
  v0[39] = *(v0[9] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_10006BF68, v1, v2);
}

uint64_t sub_10006BF68()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v9 = v0[12];

  v0[7] = v1;
  sub_10008677C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10006C044()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];
  v11 = v0[34];

  return v10();
}

uint64_t sub_10006C118(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    sub_10000649C(a1, &qword_1000AEA68, &unk_10008CFB0);
    sub_1000701A0(a2, v8);
    sub_100036E90(a2);
    return sub_10000649C(v8, &qword_1000AEA68, &unk_10008CFB0);
  }

  else
  {
    sub_100036EF8(a1, v8, &qword_1000AEA60, &qword_10008C930);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_100072F60(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100036E90(a2);
    *v2 = v7;
  }

  return result;
}

void sub_10006C1E4(uint64_t a1, void *a2)
{
  v5 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000649C(a1, &qword_1000AEDC8, &qword_10008C910);
    sub_100070268(a2, v8);

    sub_10000649C(v8, &qword_1000AEDC8, &qword_10008C910);
  }

  else
  {
    sub_100036EF8(a1, v12, &qword_1000AEA70, &unk_10008D060);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10007308C(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t sub_10006C3A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006C45C()
{
  v1 = v0[5];
  sub_1000163E0(0x6164696C61766E69, 0xEC00000029286574);
  v2 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_tasks;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = &_swiftEmptySetSingleton;

  v4 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_channel;
  v0[6] = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_channel;
  v5 = *(v1 + v4);
  v0[7] = v5;
  if (v5)
  {
    v6 = async function pointer to CarrySettings.MessageChannel.invalidate()[1];
    v5;
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_10006C66C;

    return CarrySettings.MessageChannel.invalidate()();
  }

  else
  {
    v8 = v0[5];
    *(v8 + v4) = 0;
    v9 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
    v0[9] = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
    v10 = *(v8 + v9);
    v0[10] = v10;
    if (v10)
    {

      sub_100001EEC(&qword_1000AFF08, &unk_10008D0B8);
      sub_100006454(&qword_1000AFF10, &qword_1000AFF08, &unk_10008D0B8);
      v12 = sub_1000873DC();

      return _swift_task_switch(sub_10006C8C4, v12, v11);
    }

    else
    {
      *(v0[5] + v9) = 0;
      v13 = v0[1];

      return v13();
    }
  }
}

uint64_t sub_10006C66C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_10006C794, v3, 0);
}

uint64_t sub_10006C794()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
  v0[9] = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
  v5 = *(v2 + v4);
  v0[10] = v5;
  if (v5)
  {

    sub_100001EEC(&qword_1000AFF08, &unk_10008D0B8);
    sub_100006454(&qword_1000AFF10, &qword_1000AFF08, &unk_10008D0B8);
    v7 = sub_1000873DC();

    return _swift_task_switch(sub_10006C8C4, v7, v6);
  }

  else
  {
    *(v0[5] + v4) = 0;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10006C8C4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  sub_10008624C();

  return _swift_task_switch(sub_10006C938, v2, 0);
}

uint64_t sub_10006C938()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006C9A4()
{
  sub_10000649C(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedAudiences, &qword_1000AE3E0, &unk_100089E60);
  v1 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client);

  v3 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates);

  v4 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);

  v5 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);

  v6 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_tasks);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10006CA58()
{
  sub_10006C9A4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for CarrySettingsNetworkingSession()
{
  result = qword_1000AFC40;
  if (!qword_1000AFC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006CAD8()
{
  sub_100015650();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10006CBAC()
{
  result = qword_1000ADC28;
  if (!qword_1000ADC28)
  {
    sub_100023B40(255, &qword_1000ADC30, COClusterMember_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC28);
  }

  return result;
}

uint64_t sub_10006CC14()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedAudiences;
  v3 = sub_10008642C();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_channel) = 0;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client) = 0;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject;
  v6 = sub_100001EEC(&qword_1000ADCB0, &qword_100088838);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v1 + v5) = sub_10008678C();
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_tasks) = &_swiftEmptySetSingleton;
  return v1;
}

uint64_t sub_10006CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_10006CD50, 0, 0);
}

uint64_t sub_10006CD50()
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

    return sub_10006CE50(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10006CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a2;
  v4[11] = v3;
  v4[9] = a1;
  v4[12] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[13] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006CF34, v3, 0);
}

uint64_t sub_10006CF34()
{
  v12 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1000877DC(18);
  v14._object = 0x800000010008F460;
  v14._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v14);
  *(v0 + 56) = v7;
  sub_1000879EC();
  sub_1000163E0(v10, v11);

  *(v0 + 64) = v7;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 48) = 0;
  swift_beginAccess();
  sub_10006C118(v0 + 40, &v10);
  swift_endAccess();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10006D0DC(__int128 *a1, uint64_t a2)
{
  v4 = sub_10008642C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_10008742C();
  v12 = *(*(v11 - 8) + 56);
  v16 = *a1;
  v12(v10, 1, 1, v11);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v16;
  (*(v5 + 32))(v14 + v13, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_unknownObjectRetain();
  sub_100016C64(0, 0, v10, &unk_10008D0F8, v14);
}

uint64_t sub_10006D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v10 = *(a5 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_100002740;

  return v14(a6, ObjectType, a5);
}

uint64_t sub_10006D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_10006D438, 0, 0);
}

uint64_t sub_10006D438()
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

    return sub_10006D538(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10006D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a2;
  v4[16] = v3;
  v4[14] = a1;
  v4[17] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[18] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10006D61C, v3, 0);
}

uint64_t sub_10006D61C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  sub_1000877DC(20);
  v11._object = 0x800000010008F420;
  v11._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v11);
  v0[12] = v7;
  sub_1000879EC();
  sub_1000163E0(0, 0xE000000000000000);

  v0[13] = v7;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  sub_1000701A0((v0 + 2), (v0 + 10));
  sub_100036E90((v0 + 2));
  sub_10000649C((v0 + 10), &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006D7C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = *a1;
  v10 = sub_10008742C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();

  v12 = sub_1000873EC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = a3;

  sub_100016C64(0, 0, v8, &unk_10008D158, v13);
}

uint64_t sub_10006D93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1000873FC();
  v6[12] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[13] = v8;
  v6[14] = v7;

  return _swift_task_switch(sub_10006D9D8, v8, v7);
}

uint64_t sub_10006D9D8()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[15] = sub_100074618(v0[9]);
  sub_1000877DC(23);

  sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v13._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v13);

  sub_100059920(0xD000000000000015, 0x800000010008FF40, v1, &off_1000A98F0);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_10006DB98;
LABEL_5:

    return _swift_task_switch(v5, v4, 0);
  }

  v6 = v0[10];
  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v0[17] = v7;
  if (v7)
  {
    v4 = v7;
    v5 = sub_10006DCEC;
    goto LABEL_5;
  }

  v8 = v0[15];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10006DB98()
{
  v1 = v0[16];
  v2 = *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices) = v0[9];

  v3 = v0[13];
  v4 = v0[14];

  return _swift_task_switch(sub_10006DC20, v3, v4);
}

uint64_t sub_10006DC20()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10006DCEC, Strong, 0);
  }

  else
  {
    v3 = v0[15];
    v4 = v0[12];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10006DCEC()
{
  v0[18] = *(v0[17] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);

  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_10006DD68, v1, v2);
}

uint64_t sub_10006DD68()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];

  v0[8] = v2;
  sub_10008677C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006DE0C()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);
  sub_100001EEC(&qword_1000ADCB0, &qword_100088838);
  sub_100006454(qword_1000ADCB8, &qword_1000ADCB0, &qword_100088838);
  v1 = sub_10008680C();
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10006DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100067E20(a1, a2, a3);
}

uint64_t sub_10006DFA4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);

  v3 = sub_100074618(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10006E02C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_100068000(a1);
}

uint64_t sub_10006E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100069A78(a1, a2, a3);
}

uint64_t sub_10006E16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_10006A544(a1, a2, a3);
}

uint64_t sub_10006E218(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_10006ADD8(a1);
}

uint64_t sub_10006E2AC(uint64_t a1)
{
  result = sub_10006E304(&qword_1000AFE50, type metadata accessor for CarrySettingsNetworkingSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006E304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006E34C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10008781C();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10008793C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10006E474(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_10008781C();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_10008793C();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

unint64_t sub_10006E5B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100087ADC();
  sub_1000871AC();
  v6 = sub_100087AFC();

  return sub_10006E78C(a1, a2, v6);
}

unint64_t sub_10006E628(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10008777C(*(v2 + 40));

  return sub_10006E844(a1, v4);
}

unint64_t sub_10006E66C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10008609C();
  sub_10006E304(&qword_1000AE428, &type metadata accessor for UUID);
  v5 = sub_10008711C();

  return sub_10006E90C(a1, v5);
}

unint64_t sub_10006E704(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100087ACC();

  return sub_10006EACC(a1, v4);
}

unint64_t sub_10006E748(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10008763C(*(v2 + 40));

  return sub_10006EB38(a1, v4);
}

unint64_t sub_10006E78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100087A1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10006E844(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100074A64(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10008778C();
      sub_100036E90(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10006E90C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10008609C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10006E304(&qword_1000AE9F0, &type metadata accessor for UUID);
      v16 = sub_10008713C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10006EACC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10006EB38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10008764C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_10006EC0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AFE98, &qword_10008D018);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006ED18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AFEF8, &qword_10008D860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10006EE1C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001EEC(&qword_1000AE628, &qword_10008A0C0);
  v10 = *(sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10006F00C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AE9B8, &unk_10008D020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10006F124(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001EEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10006F258(uint64_t a1, uint64_t a2)
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

  sub_100001EEC(&qword_1000AFE98, &qword_10008D018);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10006F348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001EEC(a3, a4);
  v10 = *(sub_100001EEC(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10006F448(uint64_t a1, uint64_t a2)
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

  sub_100001EEC(qword_1000AE698, &qword_10008A118);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10006F4D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10006EE1C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10006F608(char *a1, int64_t a2, char a3)
{
  result = sub_10006F894(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10006F628(size_t a1, int64_t a2, char a3)
{
  result = sub_10006FFB8(a1, a2, a3, *v3, &qword_1000AE628, &qword_10008A0C0, &qword_1000AE5D0, &qword_100089EB0);
  *v3 = result;
  return result;
}

size_t sub_10006F668(size_t a1, int64_t a2, char a3)
{
  result = sub_10006FFB8(a1, a2, a3, *v3, &qword_1000AFE68, &qword_10008CF78, &qword_1000AFE58, &qword_10008CF70);
  *v3 = result;
  return result;
}

char *sub_10006F6A8(char *a1, int64_t a2, char a3)
{
  result = sub_10006F9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006F6C8(void *a1, int64_t a2, char a3)
{
  result = sub_10006FB98(a1, a2, a3, *v3, &qword_1000AFF30, &qword_10008D0D8, &qword_1000AFF38, &qword_10008D0E0);
  *v3 = result;
  return result;
}

char *sub_10006F708(char *a1, int64_t a2, char a3)
{
  result = sub_10006FA94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10006F728(size_t a1, int64_t a2, char a3)
{
  result = sub_10006FDDC(a1, a2, a3, *v3, &qword_1000AFF50, &qword_10008D110, type metadata accessor for ProfileListViewModel);
  *v3 = result;
  return result;
}

void *sub_10006F76C(void *a1, int64_t a2, char a3)
{
  result = sub_10006FB98(a1, a2, a3, *v3, &qword_1000AFF58, &qword_10008D118, &qword_1000AFF60, &unk_10008D120);
  *v3 = result;
  return result;
}

char *sub_10006F7AC(char *a1, int64_t a2, char a3)
{
  result = sub_10006FCCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10006F7CC(size_t a1, int64_t a2, char a3)
{
  result = sub_10006FDDC(a1, a2, a3, *v3, &qword_1000AFEF0, &unk_10008D0A0, &type metadata accessor for CarrySettings.LivabilityTrainAudiences);
  *v3 = result;
  return result;
}

size_t sub_10006F810(size_t a1, int64_t a2, char a3)
{
  result = sub_10006FDDC(a1, a2, a3, *v3, &qword_1000AFF00, &qword_10008D0B0, &type metadata accessor for CarrySettings.LivabilityAudience);
  *v3 = result;
  return result;
}

size_t sub_10006F854(size_t a1, int64_t a2, char a3)
{
  result = sub_10006FFB8(a1, a2, a3, *v3, &qword_1000AFEC8, &qword_10008D058, &qword_1000AEA70, &unk_10008D060);
  *v3 = result;
  return result;
}

char *sub_10006F894(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AFE98, &qword_10008D018);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006F9A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AE9B8, &unk_10008D020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10006FA94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AFF28, &qword_10008D0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10006FB98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001EEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10006FCCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EEC(&qword_1000AFEA8, &qword_10008D038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10006FDDC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001EEC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_10006FFB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001EEC(a5, a6);
  v16 = *(sub_100001EEC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100001EEC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

unint64_t sub_1000701A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_10006E628(a1);
  v8 = v7;
  if (v7)
  {
    v9 = result;
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10007376C();
      v12 = v13;
    }

    sub_100036E90(*(v12 + 48) + 40 * v9);
    sub_100036EF8(*(v12 + 56) + 8 * v9, a2, &qword_1000AEA60, &qword_10008C930);
    result = sub_100072028(v9, v12);
    *v3 = v12;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v8 & 1) == 0;
  return result;
}

uint64_t sub_100070268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10006E748(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100073F84();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
    v20 = *(v13 - 8);
    sub_100036EF8(v12 + *(v20 + 72) * v8, a2, &qword_1000AEA70, &unk_10008D060);
    sub_100072890(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000703EC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10006E748(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100072C5C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100074454();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_10008790C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1000878FC();
  v8 = sub_100070538(v4, v7);

  v9 = sub_10006E748(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100072C5C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100070538(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001EEC(&qword_1000AFF18, &qword_10008D0C8);
    v2 = sub_10008796C();
    v19 = v2;
    sub_1000878EC();
    v3 = sub_10008791C();
    if (v3)
    {
      v4 = v3;
      sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100023B40(0, &qword_1000AFF20, COMessageSession_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100071DC0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_10008763C(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10008791C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100070784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EEC(&qword_1000AFF90, &qword_10008D168);
  v39 = a2;
  result = sub_10008795C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100070A28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EEC(&qword_1000AFE70, &qword_10008CFC0);
  result = sub_10008795C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100036EF8(*(v5 + 56) + 8 * v23, v36, &qword_1000AEA60, &qword_10008C930);
      }

      else
      {
        sub_100074A64(v24, &v37);
        sub_10000E4A4(*(v5 + 56) + 8 * v23, v36, &qword_1000AEA60, &qword_10008C930);
      }

      result = sub_10008777C(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100036EF8(v36, *(v8 + 56) + 8 * v16, &qword_1000AEA60, &qword_10008C930);
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100070D5C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v59 = a3;
  v60 = a4;
  v12 = sub_100001EEC(a3, a4);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v12 - 8);
  v58 = &v49 - v14;
  v15 = sub_10008609C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  sub_100001EEC(a5, a6);
  v54 = a2;
  result = sub_10008795C();
  v22 = result;
  if (*(v19 + 16))
  {
    v49 = v9;
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v19 + 64);
    v28 = (v25 + 63) >> 6;
    v50 = (v16 + 16);
    v51 = v16;
    v55 = (v16 + 32);
    v29 = result + 64;
    v52 = v19;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v23 << 6);
      v35 = *(v19 + 48);
      v56 = *(v16 + 72);
      v36 = v35 + v56 * v34;
      if (v54)
      {
        (*v55)(v57, v36, v15);
        v37 = *(v19 + 56);
        v38 = *(v53 + 72);
        sub_100036EF8(v37 + v38 * v34, v58, v59, v60);
      }

      else
      {
        (*v50)(v57, v36, v15);
        v39 = *(v19 + 56);
        v38 = *(v53 + 72);
        sub_10000E4A4(v39 + v38 * v34, v58, v59, v60);
      }

      v40 = *(v22 + 40);
      sub_10006E304(&qword_1000AE428, &type metadata accessor for UUID);
      result = sub_10008711C();
      v41 = -1 << *(v22 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v55)((*(v22 + 48) + v56 * v30), v57, v15);
      result = sub_100036EF8(v58, *(v22 + 56) + v38 * v30, v59, v60);
      ++*(v22 + 16);
      v16 = v51;
      v19 = v52;
    }

    v32 = v23;
    while (1)
    {
      v23 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v28)
      {
        break;
      }

      v33 = v24[v23];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_36;
    }

    v48 = 1 << *(v19 + 32);
    v9 = v49;
    if (v48 >= 64)
    {
      bzero(v24, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v48;
    }

    *(v19 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

uint64_t sub_1000711D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EEC(&qword_1000AFF88, &qword_10008D160);
  v36 = a2;
  result = sub_10008795C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_100087ACC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100071454(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EEC(&qword_1000AFF68, &qword_10008D130);
  v38 = a2;
  result = sub_10008795C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000716FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100001EEC(&qword_1000AFED0, &qword_10008D070);
  v41 = a2;
  result = sub_10008795C();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_100036EF8(v28, v9, &qword_1000AEA70, &unk_10008D060);
      }

      else
      {
        sub_10000E4A4(v28, v9, &qword_1000AEA70, &unk_10008D060);
        v29 = v26;
      }

      result = sub_10008763C(*(v13 + 40));
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_100036EF8(v9, *(v13 + 56) + v27 * v21, &qword_1000AEA70, &unk_10008D060);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_100071A40(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1000861CC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100001EEC(&qword_1000AFED8, &qword_10008D078);
  v46 = a2;
  result = sub_10008795C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100071DC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001EEC(&qword_1000AFF18, &qword_10008D0C8);
  result = sub_10008795C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_10008763C(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100072028(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      sub_100074A64(*(a2 + 48) + 40 * v6, v21);
      v9 = sub_10008777C(*(a2 + 40));
      result = sub_100036E90(v21);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8 || v3 < v10)
        {
          goto LABEL_5;
        }
      }

      else if (v10 < v8 && v3 < v10)
      {
        goto LABEL_5;
      }

      v13 = *(a2 + 48);
      v14 = v13 + 40 * v3;
      v15 = (v13 + 40 * v6);
      if (v3 != v6 || v14 >= v15 + 40)
      {
        v16 = *v15;
        v17 = v15[1];
        *(v14 + 32) = *(v15 + 4);
        *v14 = v16;
        *(v14 + 16) = v17;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        sub_100001EEC(&qword_1000AEA60, &qword_10008C930);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        sub_100001EEC(&qword_1000AEA60, &qword_10008C930);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100072220(int64_t a1, uint64_t a2)
{
  v4 = sub_10008609C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_1000876BC();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_10006E304(&qword_1000AE428, &type metadata accessor for UUID);
      v24 = sub_10008711C();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_100001EEC(&qword_1000AEA78, &qword_10008D080) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100072570(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_100087ACC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000726E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100087ADC();

      sub_1000871AC();
      v13 = sub_100087AFC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100072890(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10008763C(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_100072A70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100087ADC();

      sub_1000871AC();
      v13 = sub_100087AFC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1000861CC() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100072C5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10008763C(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100072DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006E5B0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100070784(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10006E5B0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100087A5C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100073600();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_100072F60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10006E628(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
      return sub_100074CA8(a1, v16[7] + 8 * v10, &qword_1000AEA60, &qword_10008C930);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10007376C();
    goto LABEL_7;
  }

  sub_100070A28(v13, a3 & 1);
  v18 = *v4;
  v19 = sub_10006E628(a2);
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *v4;
  if (v14)
  {
    return sub_100074CA8(a1, v16[7] + 8 * v10, &qword_1000AEA60, &qword_10008C930);
  }

LABEL_11:
  sub_100074A64(a2, v21);
  return sub_100073378(v10, v21, a1, v16);
}

id sub_10007308C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_10006E748(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
      return sub_100074CA8(a1, v16 + *(*(v17 - 8) + 72) * v9, &qword_1000AEA70, &unk_10008D060);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_100073F84();
    goto LABEL_7;
  }

  sub_1000716FC(v12, a3 & 1);
  v19 = *v4;
  v20 = sub_10006E748(a2);
  if ((v13 & 1) != (v21 & 1))
  {
LABEL_15:
    sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

  v9 = v20;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100073548(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_100073200(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10006E748(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100071DC0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10006E748(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
        sub_100087A5C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100074454();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

uint64_t sub_100073378(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100036EF8(a3, a4[7] + 8 * a1, &qword_1000AEA60, &qword_10008C930);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100073408(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10008609C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  result = sub_100036EF8(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_1000AEA78, &qword_10008D080);
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

unint64_t sub_100073500(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100073548(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  result = sub_100036EF8(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_1000AEA70, &unk_10008D060);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

id sub_100073600()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF90, &qword_10008D168);
  v2 = *v0;
  v3 = sub_10008794C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10007376C()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFE70, &qword_10008CFC0);
  v2 = *v0;
  v3 = sub_10008794C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v22 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100074A64(*(v2 + 48) + 40 * v17, v24);
        v17 *= 8;
        sub_10000E4A4(*(v2 + 56) + v17, v23, &qword_1000AEA60, &qword_10008C930);
        v19 = *(v4 + 48) + v18;
        v20 = v24[0];
        v21 = v24[1];
        *(v19 + 32) = v25;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100036EF8(v23, *(v4 + 56) + v17, &qword_1000AEA60, &qword_10008C930);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_10007398C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v51 = a1;
  v52 = a2;
  v8 = sub_100001EEC(a1, a2);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v40 - v10;
  v48 = sub_10008609C();
  v53 = *(v48 - 8);
  v11 = *(v53 + 64);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001EEC(a3, a4);
  v13 = *v4;
  v14 = sub_10008794C();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v41 = v4;
    v42 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v54 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v52;
    v43 = v53 + 32;
    v44 = v53 + 16;
    v45 = v24;
    v46 = v13;
    v26 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v55 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v53;
        v32 = *(v53 + 72) * v30;
        v33 = v47;
        (*(v53 + 16))(v47, *(v13 + 48) + v32, v26);
        v34 = v49;
        v35 = *(v50 + 72) * v30;
        v36 = *(v13 + 56) + v35;
        v37 = v51;
        sub_10000E4A4(v36, v49, v51, v25);
        v38 = v54;
        (*(v31 + 32))(*(v54 + 48) + v32, v33, v26);
        v39 = v37;
        v13 = v46;
        result = sub_100036EF8(v34, *(v38 + 56) + v35, v39, v25);
        v24 = v45;
        v23 = v55;
      }

      while (v55);
    }

    v28 = v19;
    v15 = v54;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v41;
        goto LABEL_18;
      }

      v29 = *(v42 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v55 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

void *sub_100073CAC()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF88, &qword_10008D160);
  v2 = *v0;
  v3 = sub_10008794C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100073E14()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF68, &qword_10008D130);
  v2 = *v0;
  v3 = sub_10008794C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100073F84()
{
  v1 = v0;
  v2 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v2 - 8);
  v28 = &v25 - v4;
  sub_100001EEC(&qword_1000AFED0, &qword_10008D070);
  v5 = *v0;
  v6 = sub_10008794C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = v28;
        v23 = *(v29 + 72) * v20;
        sub_10000E4A4(*(v5 + 56) + v23, v28, &qword_1000AEA70, &unk_10008D060);
        v24 = v30;
        *(*(v30 + 48) + 8 * v20) = v21;
        sub_100036EF8(v22, *(v24 + 56) + v23, &qword_1000AEA70, &unk_10008D060);
        result = v21;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1000741D4()
{
  v1 = v0;
  v36 = sub_1000861CC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001EEC(&qword_1000AFED8, &qword_10008D078);
  v4 = *v0;
  v5 = sub_10008794C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_100074454()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF18, &qword_10008D0C8);
  v2 = *v0;
  v3 = sub_10008794C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000745B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  return sub_10008764C() & 1;
}

unint64_t *sub_100074618(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AFE58, &qword_10008CF70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v27 = &_swiftEmptyArrayStorage;
    sub_10006F628(0, v11, 0);
    v12 = v27;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v22 = *(v13 + 56);
    v23 = v14;
    v21 = (v13 - 8);
    do
    {
      v16 = v13;
      v23(v6, v15, v2);
      sub_1000862BC();
      sub_1000862CC();
      (*v21)(v6, v2);
      *&v10[*(v25 + 36)] = v26;
      v27 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_10006F628(v17 > 1, v18 + 1, 1);
        v12 = v27;
      }

      v12[2] = v18 + 1;
      sub_100036EF8(v10, v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, &qword_1000AE5D0, &qword_100089EB0);
      v15 += v22;
      --v11;
      v13 = v16;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_100074898(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
  return sub_10008764C() & 1;
}

uint64_t sub_100074900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100074954()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100074990(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_10006D410(a1, v6, v7, v9, v8, v4, v5);
}

unint64_t sub_100074AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EEC(&qword_1000AFE90, &qword_10008CFF0);
    v3 = sub_10008797C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10006E5B0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100074BD4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002740;

  return sub_10006CD28(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_100074CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EEC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100074D2C()
{
  v1 = sub_10008642C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100074DF8(uint64_t a1)
{
  v4 = *(sub_10008642C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_10006D2D8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100074EFC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100074F3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_100074F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000324C;

  return sub_10006D93C(a1, v4, v5, v6, v7, v8);
}

void *sub_10007504C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001EEC(&qword_1000AFF88, &qword_10008D160);
  v3 = sub_10008797C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10006E704(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10006E704(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100075160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EEC(&qword_1000AFF98, &qword_10008D170);
    v3 = sub_10008797C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E4A4(v4, &v13, &qword_1000AFFA0, &qword_10008D178);
      v5 = v13;
      v6 = v14;
      result = sub_10006E5B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100036E80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100075294()
{
  sub_1000165B4();
  v1 = sub_10008714C();
  v2 = [v0 cuValueForEntitlementNoCache:v1];

  if (v2)
  {
    sub_10008769C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_10007553C(v14);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    *&v14[0] = sub_1000755A4();
    sub_100001EEC(&qword_1000AE650, &qword_10008A0D8);
    sub_10008716C();
    v6 = objc_allocWithZone(CULogHandle);
    v7 = sub_10008714C();
    v8 = sub_10008714C();

    v9 = [v6 initWithSubsystem:v7 category:v8];

    v10 = sub_10008714C();
    [v9 ulog:90 message:v10];

    return 0;
  }

  sub_1000877DC(31);

  *&v14[0] = 0x2720646E756F46;
  *(&v14[0] + 1) = 0xE700000000000000;
  if (v11)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v11)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_1000871BC(v3);

  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x8000000100090010;
  sub_1000871BC(v15);
  v16._object = 0x800000010008E1C0;
  v16._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1000871BC(v16);
  v17._countAndFlagsBits = 39;
  v17._object = 0xE100000000000000;
  sub_1000871BC(v17);
  sub_1000165B4();

  return v11;
}

uint64_t sub_10007553C(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AFFA8, &unk_10008D1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000755A4()
{
  result = qword_1000AE648;
  if (!qword_1000AE648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AE648);
  }

  return result;
}

uint64_t sub_100075614(uint64_t a1)
{
  v2 = sub_10008609C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v47 = &v41 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 44);
    v44 = v2;
    v45 = v14;
    v15 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    v46 = (v3 + 16);
    v17 = &_swiftEmptyDictionarySingleton;
    v42 = v3;
    v43 = (v3 + 8);
    while (1)
    {
      v18 = v16;
      v19 = v47;
      sub_10000E4A4(v15, v47, &qword_1000AEA58, qword_10008D310);
      v20 = *v46;
      v21 = v49;
      v22 = v44;
      (*v46)(v49, v19 + v45);
      sub_10000E4A4(v19, v48, &qword_1000AEA58, qword_10008D310);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v17;
      v25 = sub_10006E66C(v21);
      v26 = v17[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v17[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100073944();
        }
      }

      else
      {
        sub_100070D14(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_10006E66C(v49);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_18;
        }

        v25 = v30;
      }

      v32 = v22;
      v17 = v50;
      v16 = v18;
      if (v29)
      {
        sub_100074CA8(v48, v50[7] + v25 * v18, &qword_1000AEA58, qword_10008D310);
        (*v43)(v49, v32);
        sub_10000649C(v47, &qword_1000AEA58, qword_10008D310);
      }

      else
      {
        v50[(v25 >> 6) + 8] |= 1 << v25;
        v33 = v42;
        v34 = v49;
        (v20)(v17[6] + *(v42 + 72) * v25, v49, v32);
        sub_100036EF8(v48, v17[7] + v25 * v16, &qword_1000AEA58, qword_10008D310);
        (*(v33 + 8))(v34, v32);
        sub_10000649C(v47, &qword_1000AEA58, qword_10008D310);
        v35 = v17[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_17;
        }

        v17[2] = v37;
      }

      v15 += v16;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_100087A5C();
    __break(1u);
  }

  else
  {
    v17 = &_swiftEmptyDictionarySingleton;
LABEL_15:
    v38 = v41;
    swift_beginAccess();
    v39 = *(v38 + 24);
    *(v38 + 24) = v17;
  }

  return result;
}

uint64_t sub_100075A00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_100075A64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

void (*sub_100075AD8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000867CC();
  return sub_100075B7C;
}

void sub_100075B7C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_100075BE4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_10006F324(*(*result + 16), 0);
  v6 = *(sub_100001EEC(&qword_1000AEA78, &qword_10008D080) - 8);
  v7 = sub_100036EE4(&v8, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v3);

  result = sub_100023AA8();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = _swiftEmptyArrayStorage;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100075CE8(uint64_t a1)
{
  v2 = sub_10008609C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v39 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 36);
    v42 = v2;
    v43 = v14;
    v15 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    v44 = (v3 + 16);
    v17 = &_swiftEmptyDictionarySingleton;
    v40 = v3;
    v41 = (v3 + 8);
    while (1)
    {
      v18 = v16;
      v19 = v45;
      sub_10000E4A4(v15, v45, &qword_1000AEA78, &qword_10008D080);
      v20 = *v44;
      v21 = v47;
      v22 = v42;
      (*v44)(v47, v19 + v43);
      sub_10000E4A4(v19, v46, &qword_1000AEA78, &qword_10008D080);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v17;
      v25 = sub_10006E66C(v21);
      v26 = v17[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v17[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100073968();
        }
      }

      else
      {
        sub_100070D38(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_10006E66C(v47);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_18;
        }

        v25 = v30;
      }

      v32 = v22;
      v17 = v48;
      v16 = v18;
      if (v29)
      {
        sub_100074CA8(v46, v48[7] + v25 * v18, &qword_1000AEA78, &qword_10008D080);
        (*v41)(v47, v32);
        sub_10000649C(v45, &qword_1000AEA78, &qword_10008D080);
      }

      else
      {
        v48[(v25 >> 6) + 8] |= 1 << v25;
        v33 = v40;
        v34 = v47;
        (v20)(v17[6] + *(v40 + 72) * v25, v47, v32);
        sub_100036EF8(v46, v17[7] + v25 * v16, &qword_1000AEA78, &qword_10008D080);
        (*(v33 + 8))(v34, v32);
        sub_10000649C(v45, &qword_1000AEA78, &qword_10008D080);
        v35 = v17[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_17;
        }

        v17[2] = v37;
      }

      v15 += v16;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_100087A5C();
    __break(1u);
  }

  else
  {
    v17 = &_swiftEmptyDictionarySingleton;
LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v17;

    return sub_1000867EC();
  }

  return result;
}

uint64_t sub_1000760F4()
{
  v1 = OBJC_IVAR____TtC16HPSUIViewService34CarrySettingsNetworkingSessionMock__devices;
  v2 = sub_100001EEC(&qword_1000AF068, &qword_10008B590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService34CarrySettingsNetworkingSessionMock_delegates);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for CarrySettingsNetworkingSessionMock()
{
  result = qword_1000B01C0;
  if (!qword_1000B01C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100076200()
{
  sub_10007629C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10007629C()
{
  if (!qword_1000B01D0)
  {
    sub_100003200(&unk_1000B01D8, &qword_10008D278);
    v0 = sub_1000867FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B01D0);
    }
  }
}

uint64_t sub_10007631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008672C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000763F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008672C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for EnrollToggle()
{
  result = qword_1000B0310;
  if (!qword_1000B0310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000764F8()
{
  sub_10005225C();
  if (v0 <= 0x3F)
  {
    sub_10008672C();
    if (v1 <= 0x3F)
    {
      sub_1000522AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000765B0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for EnrollToggle();
  v4 = v3 - 8;
  v72 = *(v3 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v3);
  v73 = v6;
  v74 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100001EEC(&qword_1000B0358, &qword_10008D398);
  v67 = *(v69 - 8);
  v7 = *(v67 + 64);
  __chkstk_darwin(v69);
  v75 = v57 - v8;
  v66 = sub_100001EEC(&qword_1000B0360, &qword_10008D3A0);
  v9 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v65 = v57 - v10;
  v64 = sub_100001EEC(&qword_1000B0368, &qword_10008D3A8);
  v11 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v70 = v57 - v12;
  v80 = sub_100001EEC(&qword_1000B0370, &qword_10008D3B0);
  v13 = *(*(v80 - 8) + 64);
  v14 = __chkstk_darwin(v80);
  v68 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = v57 - v16;
  v76 = sub_100001EEC(&qword_1000B0378, &qword_10008D3B8);
  v17 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = v57 - v18;
  v78 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v19 = *(v78 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v78);
  v22 = v57 - v21;
  v23 = sub_10008672C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v28 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v57 - v29;
  v31 = *(v4 + 28);
  v32 = v24[2];
  v79 = a1;
  v63 = v31;
  v32(v57 - v29, &a1[v31], v23);
  v62 = v24[11];
  v33 = v62(v30, v23);
  v34 = enum case for BetaEnrollment.State.enrolling(_:);
  if (v33 == enum case for BetaEnrollment.State.enrolling(_:) || v33 == enum case for BetaEnrollment.State.removing(_:))
  {
    sub_10008688C();
    v56 = v78;
    (*(v19 + 16))(v77, v22, v78);
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    sub_100077114();
    sub_100086B8C();
    return (*(v19 + 8))(v22, v56);
  }

  else
  {
    v35 = v24[1];
    v58 = enum case for BetaEnrollment.State.removing(_:);
    v57[0] = v35;
    v35(v30, v23);
    v57[3] = sub_100086AFC();
    v57[2] = v36;
    v57[1] = v37;
    v38 = v79;
    v39 = *(v79 + 1);
    v60 = *v79;
    v84 = v60;
    v61 = v39;
    v85 = v39;
    v59 = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
    sub_100086EAC();
    sub_100086F2C();
    v32(v28, &v38[v63], v23);
    v40 = v62(v28, v23);
    v41 = v40 == v34 || v40 == v58;
    v42 = v41;
    if (!v41)
    {
      (v57[0])(v28, v23);
    }

    KeyPath = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    v45 = v65;
    (*(v67 + 32))(v65, v75, v69);
    v46 = (v45 + *(v66 + 36));
    *v46 = KeyPath;
    v46[1] = sub_10003DADC;
    v46[2] = v44;
    v47 = v70;
    sub_100036EF8(v45, v70, &qword_1000B0360, &qword_10008D3A0);
    *(v47 + *(v64 + 36)) = 257;
    LOBYTE(v82) = v60;
    v83 = v61;
    sub_100086E8C();
    LOBYTE(v44) = v84;
    v48 = v74;
    sub_100076E70(v79, v74);
    v49 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v50 = swift_allocObject();
    sub_100076FD4(v48, v50 + v49);
    v51 = v68;
    sub_100036EF8(v47, v68, &qword_1000B0368, &qword_10008D3A8);
    v52 = v51 + *(v80 + 36);
    *v52 = v44;
    *(v52 + 8) = sub_100077038;
    *(v52 + 16) = v50;
    v53 = v51;
    v54 = v71;
    sub_100036EF8(v53, v71, &qword_1000B0370, &qword_10008D3B0);
    sub_1000770A4(v54, v77);
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    sub_100077114();
    sub_100086B8C();
    return sub_10007733C(v54);
  }
}

uint64_t sub_100076E04@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100086B3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100001EEC(&qword_1000B0350, &qword_10008D390);
  return sub_1000765B0(v1, a1 + *(v3 + 44));
}

uint64_t sub_100076E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollToggle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100076ED4()
{
  v1 = (type metadata accessor for EnrollToggle() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[7];
  v6 = sub_10008672C();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_100076FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollToggle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100077038()
{
  v1 = type metadata accessor for EnrollToggle();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_1000770A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000B0370, &qword_10008D3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100077114()
{
  result = qword_1000B0380;
  if (!qword_1000B0380)
  {
    sub_100003200(&qword_1000B0370, &qword_10008D3B0);
    sub_1000771CC();
    sub_100006454(&qword_1000AFBA0, &qword_1000AFBA8, &unk_10008CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0380);
  }

  return result;
}

unint64_t sub_1000771CC()
{
  result = qword_1000B0388;
  if (!qword_1000B0388)
  {
    sub_100003200(&qword_1000B0368, &qword_10008D3A8);
    sub_100077258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0388);
  }

  return result;
}

unint64_t sub_100077258()
{
  result = qword_1000B0390;
  if (!qword_1000B0390)
  {
    sub_100003200(&qword_1000B0360, &qword_10008D3A0);
    sub_100006454(&qword_1000B0398, &qword_1000B0358, &qword_10008D398);
    sub_100006454(&qword_1000B03A0, &qword_1000B03A8, &unk_10008D3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0390);
  }

  return result;
}

uint64_t sub_10007733C(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000B0370, &qword_10008D3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000773E8()
{
  sub_10002B5F8(319, &qword_1000B0488, &qword_1000AE3E0, &unk_100089E60);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_10004A1F0(319, &qword_1000AE8B8);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      sub_10002B5F8(319, &qword_1000AE8A8, &qword_1000AE610, &unk_10008C960);
      if (v5 <= 0x3F)
      {
        v17 = *(v4 - 8) + 64;
        sub_10002B5F8(319, &qword_1000B0490, &qword_1000AE5F8, &unk_10008A090);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_10004A1F0(319, &qword_1000AE340);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_10002B5F8(319, &qword_1000B0498, &qword_1000AE618, &qword_10008A0B0);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_10002B5F8(319, &qword_1000B04A0, &qword_1000AE5E8, &qword_10008A080);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1000776A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000861CC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v33 = v8;
    v39 = _swiftEmptyArrayStorage;
    v11 = &v39;
    v12 = v6;
    sub_10008787C();
    v13 = -1 << *(a1 + 32);
    v36 = a1 + 64;
    v14 = sub_1000876AC();
    v15 = v12;
    v16 = v14;
    v17 = 0;
    v37 = *(a1 + 36);
    v31 = v12 + 16;
    v32 = (v12 + 8);
    v29 = a1 + 72;
    v30 = v4;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      v18 = v16 >> 6;
      if ((*(v36 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v34 = v17;
      v19 = v15;
      v11 = v33;
      (*(v15 + 16))(v33, *(a1 + 56) + *(v15 + 72) * v16, v4);
      sub_10007BB1C(&v38);
      v35 = v2;
      if (v2)
      {
        goto LABEL_28;
      }

      v20 = a1;
      (*v32)(v11, v4);
      v4 = v38;
      sub_10008784C();
      v21 = v39[2];
      sub_10008788C();
      sub_10008789C();
      sub_10008785C();
      v11 = (1 << *(v20 + 32));
      if (v16 >= v11)
      {
        goto LABEL_25;
      }

      v22 = *(v36 + 8 * v18);
      if ((v22 & (1 << v16)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v20;
      if (v37 != *(v20 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v16 & 0x3F));
      if (v23)
      {
        v11 = (__clz(__rbit64(v23)) | v16 & 0x7FFFFFFFFFFFFFC0);
        v15 = v19;
      }

      else
      {
        v24 = v18 << 6;
        v25 = v18 + 1;
        v26 = (v29 + 8 * v18);
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_100023CC8(v16, v37, 0);
            v15 = v19;
            v11 = (__clz(__rbit64(v27)) + v24);
            goto LABEL_19;
          }
        }

        sub_100023CC8(v16, v37, 0);
        v15 = v19;
LABEL_19:
        a1 = v20;
      }

      v2 = v35;
      v17 = v34 + 1;
      v16 = v11;
      v4 = v30;
      if (v34 + 1 == v9)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    (*v32)(v11, v4);

    __break(1u);
  }

  return result;
}