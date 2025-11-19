uint64_t Optional.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v20 - v11;
  v13 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  if ((*(v2 + 48))(v15, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v12, v15, v1);
  v18 = *(v2 + 16);
  v18(v9, v12, v1);
  sub_100001EEC(&qword_1000ADC10, &qword_100088740);
  if (swift_dynamicCast())
  {
    sub_100001F9C(v20, v22);
    sub_100001FB4(v22, v22[3]);
    v19 = sub_1000879CC();
    (*(v2 + 8))(v12, v1);
    sub_100001FF8(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_100001F34(v20);
    v18(v6, v12, v1);
    v19 = sub_10008716C();
    (*(v2 + 8))(v12, v1);
  }

  return v19;
}

uint64_t sub_100001EEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001F34(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AEE00, &qword_100088748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100001FB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001FF8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id variable initialization expression of MainHostViewController.statusInfoViewCtrl()
{
  LOBYTE(v5) = 2;
  v0 = objc_allocWithZone(sub_100001EEC(&qword_1000ADC18, &unk_100088750));
  v1 = sub_100086B5C();
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ProfileIcon(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProfileIcon(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProfileIcon(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1000ADC20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000ADC20);
    }
  }
}

unint64_t sub_100002238()
{
  result = qword_1000ADC30;
  if (!qword_1000ADC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ADC30);
  }

  return result;
}

uint64_t sub_100002284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000022A8, v3, 0);
}

uint64_t sub_1000022A8()
{
  v0[6] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100002358;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100067E20(v4, v2, v3);
}

uint64_t sub_100002358()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100002468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10000248C, v3, 0);
}

uint64_t sub_10000248C()
{
  v0[6] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100003248;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100069A78(v4, v2, v3);
}

uint64_t sub_10000255C()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 32) = v1;

  return _swift_task_switch(sub_1000025D4, v1, 0);
}

uint64_t sub_1000025D4()
{
  v0[2] = *(v0[4] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);

  sub_100001EEC(&qword_1000ADCB0, &qword_100088838);
  sub_10000319C();
  v1 = sub_10008680C();

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100002694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_100002284(a1, a2, a3);
}

uint64_t sub_100002740()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002854()
{
  v1 = *(*(v0 + 16) + 120);
  *(v0 + 24) = v1;

  return _swift_task_switch(sub_1000028CC, v1, 0);
}

uint64_t sub_1000028CC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);

  v3 = sub_100074618(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100002968(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100002988, v1, 0);
}

uint64_t sub_100002988()
{
  v0[4] = *(v0[3] + 120);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100002A34;
  v2 = v0[2];

  return sub_100068000(v2);
}

uint64_t sub_100002A34()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100002B70, v4, 0);
  }

  else
  {
    v5 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100002B70()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100002BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100002468(a1, a2, a3);
}

uint64_t sub_100002C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100002CA4, v3, 0);
}

uint64_t sub_100002CA4()
{
  v0[6] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100002D54;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_10006A544(v4, v2, v3);
}

uint64_t sub_100002D54()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_100002E90, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100002E90()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_100002EF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100002F14, v1, 0);
}

uint64_t sub_100002F14()
{
  v0[4] = *(v0[3] + 120);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100002FC0;
  v2 = v0[2];

  return sub_10006ADD8(v2);
}

uint64_t sub_100002FC0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100003250, v4, 0);
  }

  else
  {
    v5 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000030FC(uint64_t a1)
{
  result = sub_100003154(&qword_1000ADCA8, type metadata accessor for NetworkManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100003154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000319C()
{
  result = qword_1000ADCB8[0];
  if (!qword_1000ADCB8[0])
  {
    sub_100003200(&qword_1000ADCB0, &qword_100088838);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ADCB8);
  }

  return result;
}

uint64_t sub_100003200(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000864CC();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v7);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v41 - v11;
  v12 = sub_10008672C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = *(a4 + 72);
  swift_unknownObjectRetain();
  v45 = a3;
  v46 = a2;
  v20(a3, a4);
  (*(v13 + 104))(v17, enum case for BetaEnrollment.State.multiple(_:), v12);
  sub_100005AA0(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State);
  LOBYTE(a2) = sub_10008713C();
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if (a2)
  {
    goto LABEL_16;
  }

  v22 = a4;
  v23 = v42;
  v24 = v45;
  (*(a4 + 48))(v45, a4);
  v26 = v43;
  v25 = v44;
  (*(v44 + 104))(v43, enum case for BetaEnrollment.Availability.unavailable(_:), v7);
  sub_100005AA0(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  v27 = sub_10008713C();
  v28 = *(v25 + 8);
  v28(v26, v7);
  v28(v23, v7);
  if ((v27 & 1) != 0 || (v29 = (*(v22 + 88))(v24, v22)) == 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = v29;
    v31 = (*(v22 + 80))(v24, v22);
    v33 = v32;
    swift_unknownObjectRelease();
    if ((v33 & 1) == 0)
    {
      if (v30 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10008793C())
      {
        v35 = 0;
        while (1)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v36 = sub_10008781C();
          }

          else
          {
            if (v35 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v36 = *(v30 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (sub_10008648C() == v31)
          {

            v40 = sub_1000864AC();

            return v40;
          }

          ++v35;
          if (v38 == i)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_1000036C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v49 = a2;
  v51 = a1;
  v52 = a5;
  v56 = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v57 = type metadata accessor for BetaProgramsSelectionView();
  v58 = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1000868DC();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  v9 = __chkstk_darwin(v7);
  v47 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v46 = (&v43 - v11);
  swift_getAssociatedTypeWitness();
  v12 = sub_10008739C();
  v13 = *(swift_getAssociatedConformanceWitness() + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  v16 = swift_getWitnessTable();
  v17 = v49;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v12;
  v57 = AssociatedTypeWitness;
  v58 = v15;
  WitnessTable = v16;
  v60 = AssociatedConformanceWitness;
  v19 = sub_100086FBC();
  v20 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v56 = v7;
  v57 = v19;
  v45 = v19;
  v58 = v20;
  WitnessTable = v21;
  v43 = v21;
  v22 = sub_10008694C();
  v44 = *(v22 - 8);
  v23 = *(v44 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v43 - v27);
  v29 = sub_100086B9C();
  v50 = *(v29 - 8);
  v30 = *(v50 + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v43 - v32;
  if (sub_100003D64(v31, v17, a3, a4))
  {
    v34 = swift_allocObject();
    v48 = v20;
    v47 = &v43;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v51;
    v34[5] = v17;
    __chkstk_darwin(v34);
    *(&v43 - 4) = a3;
    *(&v43 - 3) = a4;
    *(&v43 - 2) = v35;
    *(&v43 - 1) = v17;
    swift_unknownObjectRetain();
    v20 = v48;
    sub_10008693C();
    v36 = swift_getWitnessTable();
    sub_10004EDD8(v28, v26, v22, v36);
    v37 = *(v44 + 8);
    v37(v26, v22);
    sub_10004EDD8(v26, v28, v22, v36);
    sub_10004B338(v26, v22);
    v37(v26, v22);
    v37(v28, v22);
  }

  else
  {
    v38 = v47;
    sub_10000476C(v51, v17, a3, a4);
    v39 = v46;
    sub_10004EDD8(v46, v38, v7, v20);
    v40 = *(v48 + 8);
    v40(v38, v7);
    sub_10004EDD8(v38, v39, v7, v20);
    swift_getWitnessTable();
    sub_10004B430(v38, v22, v7);
    v40(v38, v7);
    v40(v39, v7);
  }

  v53 = swift_getWitnessTable();
  v54 = v20;
  v41 = swift_getWitnessTable();
  sub_10004EDD8(v52, v33, v29, v41);
  return (*(v50 + 8))(v33, v29);
}

uint64_t sub_100003D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = sub_1000864CC();
  v33 = *(v29 - 8);
  v6 = *(v33 + 64);
  v7 = __chkstk_darwin(v29);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v28 - v9;
  v10 = sub_10008672C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = *(a4 + 72);
  swift_unknownObjectRetain();
  v30 = a3;
  v18(a3, a4);
  (*(v11 + 104))(v15, enum case for BetaEnrollment.State.multiple(_:), v10);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v35 == v34)
  {
    v20 = v31;
    (*(a4 + 48))(v30, a4);
    swift_unknownObjectRelease();
    v22 = v32;
    v21 = v33;
    v23 = v29;
    (*(v33 + 104))(v32, enum case for BetaEnrollment.Availability.unavailable(_:), v29);
    sub_100005AA0(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
    v24 = sub_10008713C();
    v25 = *(v21 + 8);
    v25(v22, v23);
    v25(v20, v23);
    v26 = v24 ^ 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_1000040CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = a1;
  v30 = a5;
  swift_getAssociatedTypeWitness();
  v8 = sub_10008739C();
  v27 = *(swift_getAssociatedConformanceWitness() + 24);
  v29 = v8;
  v32 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  v26 = AssociatedTypeWitness;
  v34 = v25;
  WitnessTable = swift_getWitnessTable();
  v24[1] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_100086FBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (v24 - v15);
  v17 = *(a4 + 56);
  swift_unknownObjectRetain();
  v18 = v17(a3, a4);
  swift_unknownObjectRelease();
  if (!v18)
  {
    v18 = sub_10008732C();
  }

  v32 = v18;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v28;
  v19[5] = a2;
  swift_unknownObjectRetain();
  v20 = swift_getWitnessTable();
  sub_100086FAC();
  v31 = v20;
  v21 = swift_getWitnessTable();
  sub_10004EDD8(v16, v14, v9, v21);
  v22 = *(v10 + 8);
  v22(v14, v9);
  sub_10004EDD8(v30, v16, v9, v21);
  return (v22)(v16, v9);
}

uint64_t sub_100004404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_unknownObjectRetain();
  v9 = sub_1000868FC();
  v10 = v5;
  v6 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  WitnessTable = swift_getWitnessTable();
  sub_10004EDD8(v11, &v9, v6, WitnessTable);
  swift_unknownObjectRelease();
  v9 = v11[0];
  v10 = v11[1];
  sub_10004EDD8(a2, &v9, v6, WitnessTable);
  return swift_unknownObjectRelease();
}

uint64_t sub_100004524@<X0>(uint64_t a1@<X6>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unknownObjectRetain();
  result = sub_1000868FC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100004568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v21[0] = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v21[1] = type metadata accessor for BetaProgramsSelectionView();
  v21[2] = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  v21[3] = swift_getWitnessTable();
  v10 = sub_1000868DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (v21 - v16);
  sub_10000476C(a1, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_10004EDD8(v17, v15, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_10004EDD8(a5, v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t sub_10000476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  swift_unknownObjectRetain();
  v6(a3, a4);
  sub_100004B34();
  sub_100001EEC(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsSelectionView();
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  swift_getWitnessTable();
  return sub_1000868CC();
}

uint64_t sub_1000048E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 + 8);
  swift_unknownObjectRetain();
  v22 = v9(a2, v8);
  v11 = v10;
  v12 = (*(a3 + 64))(a2, a3);
  v14 = v13;
  v15 = sub_100003254(v12, a1, a2, a3);
  v17 = v16;
  v18 = (*(v8 + 16))(a2, v8);
  v20 = v19;
  result = swift_unknownObjectRelease();
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 40) = 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = v14;
  *(a4 + 64) = v22;
  *(a4 + 72) = v11;
  *(a4 + 80) = v15;
  *(a4 + 88) = v17;
  return result;
}

uint64_t sub_100004A0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100004A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100004A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100004B34()
{
  sub_100001EEC(&qword_1000ADD60, &qword_100088920);
  sub_100086E7C();
  return v1;
}

uint64_t sub_100004B8C()
{
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  return v1;
}

uint64_t sub_100004C74()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100004CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a2 & 1;
  sub_100001EEC(&qword_1000ADDF0, &qword_1000889E8);
  sub_100005ED4();
  sub_100086C6C();
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  *(v14 + 32) = a1;
  *(v14 + 40) = v13;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  v15 = (a7 + *(sub_100001EEC(&qword_1000ADE10, &qword_1000889F8) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_100005F94;
  v15[3] = v14;

  return swift_unknownObjectRetain();
}

uint64_t sub_100004DDC()
{
  sub_100001EEC(&qword_1000ADE08, &qword_1000889F0);
  sub_100006454(&qword_1000ADE00, &qword_1000ADE08, &qword_1000889F0);
  return sub_100086FEC();
}

uint64_t sub_100004E90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v34 = sub_100001EEC(&qword_1000ADE20, &qword_100088A08);
  v14 = *(v34 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v34);
  v33 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v28 - v18;
  sub_1000050AC(a1, a2 & 1, a3, a4, a5, a6, v35);
  v20 = v35[1];
  v32 = v35[0];
  v31 = v36;
  v21 = v38;
  v30 = v37;
  sub_1000051F0(a1, a2 & 1, a3, v29, a5, a6);
  v22 = v14[2];
  v24 = v33;
  v23 = v34;
  v22(v33, v19, v34);
  *a7 = v32;
  *(a7 + 8) = v20;
  *(a7 + 16) = v31;
  *(a7 + 24) = v30;
  *(a7 + 32) = v21;
  v25 = sub_100001EEC(&qword_1000ADE28, &qword_100088A10);
  v22((a7 + *(v25 + 48)), v24, v23);
  v26 = v14[1];

  v26(v19, v23);
  v26(v24, v23);
}

uint64_t sub_1000050AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [objc_opt_self() mainBundle];
  v21._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 4605519;
  v23._object = 0xE300000000000000;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v15.super.isa = v14;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v16 = sub_100085FFC(v23, v24, v15, v25, v21);
  v18 = v17;

  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2 & 1;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  *a7 = v16;
  *(a7 + 8) = v18;
  *(a7 + 16) = v22;
  *(a7 + 24) = sub_100006108;
  *(a7 + 32) = v19;

  return swift_unknownObjectRetain();
}

uint64_t sub_1000051F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 88))(a5, a6);
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;

  swift_unknownObjectRetain();
  sub_100001EEC(&qword_1000ADE30, &qword_100088A48);
  sub_100006454(&qword_1000ADE38, &qword_1000ADE30, &qword_100088A48);
  sub_10000600C();
  return sub_100086F9C();
}

uint64_t sub_100005364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  result = (*(a6 + 80))(a5, a6);
  if (v11)
  {
    if (v9)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ((v9 & 1) != 0 || v10 != result)
  {
LABEL_6:
    sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
    sub_100086E8C();
    if (v11 == 1)
    {
      return (*(a6 + 112))(a5, a6);
    }

    else
    {
      return (*(a6 + 128))(v10, a5, a6);
    }
  }

  return result;
}

id sub_1000054B4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = *a1;
  v13 = sub_1000864AC();
  v15 = v14;
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  v16 = (v22 == sub_10008648C()) & ~v23;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3 & 1;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 64) = v21;
  *a8 = v13;
  *(a8 + 8) = v15;
  *(a8 + 16) = v16;
  *(a8 + 24) = sub_1000060A8;
  *(a8 + 32) = v17;

  swift_unknownObjectRetain();

  return v21;
}

uint64_t sub_1000055E4()
{
  sub_10008648C();
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  return sub_100086E9C();
}

uint64_t sub_1000056A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100086A9C();
  v20 = 1;
  sub_100005878(v1, &v27);
  v23 = v29;
  v24 = v30;
  v21 = v27;
  v22 = v28;
  v26[2] = v29;
  v26[3] = v30;
  v26[4] = v31;
  v26[1] = v28;
  v25 = v31;
  v26[0] = v27;
  sub_100006300(&v21, &v17);
  sub_10000649C(v26, &qword_1000ADE60, &qword_100088AF0);
  *&v19[7] = v21;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  *&v18[33] = *&v19[32];
  *&v18[49] = *&v19[48];
  *&v18[65] = *&v19[64];
  *&v18[1] = *v19;
  v17 = v3;
  v18[0] = v20;
  *&v18[80] = *(&v25 + 1);
  *&v18[17] = *&v19[16];
  v18[88] = 0;
  v4 = v1[3];
  v5 = v1[4];
  sub_100001EEC(&qword_1000ADE68, &qword_100088AF8);
  sub_100006370();
  sub_100086D4C();
  v31 = *&v18[48];
  v32[0] = *&v18[64];
  *(v32 + 9) = *&v18[73];
  v27 = v17;
  v28 = *v18;
  v29 = *&v18[16];
  v30 = *&v18[32];
  sub_10000649C(&v27, &qword_1000ADE68, &qword_100088AF8);
  v6 = sub_100086BFC();
  sub_10008686C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_100001EEC(&qword_1000ADE98, &qword_100088B10);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_100005878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *a1;
  v24 = a1[1];
  sub_1000064FC();

  v4 = sub_100086CCC();
  v6 = v5;
  v8 = v7;
  sub_100086C0C();
  v9 = sub_100086CAC();
  v11 = v10;
  v22 = v12;
  v14 = v13;

  sub_100006550(v4, v6, v8 & 1);

  v15 = sub_100086E3C();
  v16 = sub_100086DFC();
  KeyPath = swift_getKeyPath();
  v18 = (a1[2] & 1) == 0;
  v19 = 0.0;
  v20 = v22 & 1;
  if (!v18)
  {
    v19 = 1.0;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v16;
  *(a2 + 72) = v19;
  sub_100006568(v9, v11, v20);

  sub_100006550(v9, v11, v20);
}

uint64_t sub_1000059F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_1000056A4(a1);
}

uint64_t sub_100005A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_100004404(a1, a2);
}

uint64_t sub_100005A40@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = sub_100086B4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1000048E8(v5, v3, v4, a1 + 24);
}

uint64_t sub_100005AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005B18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100005B54(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100005BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005BE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003200(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsSelectionView();
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918);
  swift_getWitnessTable();
  sub_1000868DC();
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v3 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsMultiSeedingRowView();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10008694C();
  sub_100086B9C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100005ED4()
{
  result = qword_1000ADDF8;
  if (!qword_1000ADDF8)
  {
    sub_100003200(&qword_1000ADDF0, &qword_1000889E8);
    sub_100006454(&qword_1000ADE00, &qword_1000ADE08, &qword_1000889F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADDF8);
  }

  return result;
}

unint64_t sub_10000600C()
{
  result = qword_1000ADE40;
  if (!qword_1000ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE40);
  }

  return result;
}

uint64_t sub_100006060()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000060A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  return sub_1000055E4();
}

uint64_t sub_1000060C8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100006108()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  return sub_100086E9C();
}

__n128 sub_100006174(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000061D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000622C()
{
  result = qword_1000ADE48;
  if (!qword_1000ADE48)
  {
    sub_100003200(&qword_1000ADE10, &qword_1000889F8);
    sub_100006454(&qword_1000ADE50, &qword_1000ADE58, "||");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE48);
  }

  return result;
}

uint64_t sub_100006300(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000ADE60, &qword_100088AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006370()
{
  result = qword_1000ADE70;
  if (!qword_1000ADE70)
  {
    sub_100003200(&qword_1000ADE68, &qword_100088AF8);
    sub_100006454(&qword_1000ADE78, &qword_1000ADE80, &unk_100088B00);
    sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE70);
  }

  return result;
}

uint64_t sub_100006454(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000649C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000064FC()
{
  result = qword_1000ADEA0;
  if (!qword_1000ADEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADEA0);
  }

  return result;
}

uint64_t sub_100006550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100006568(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000657C()
{
  result = qword_1000ADEA8;
  if (!qword_1000ADEA8)
  {
    sub_100003200(&qword_1000ADE98, &qword_100088B10);
    sub_100003200(&qword_1000ADE68, &qword_100088AF8);
    sub_100006370();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADEA8);
  }

  return result;
}

void *sub_100006660(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(NSRegularExpression);

  v5 = sub_100006934(a1, a2, 0);
  v6 = sub_10008714C();

  sub_100001EEC(&qword_1000ADEB0, &qword_100088B48);
  sub_100006A10();
  sub_1000064FC();
  v7 = sub_10008765C();
  v9 = [v5 matchesInString:v6 options:0 range:{v7, v8}];

  sub_100006A74();
  v10 = sub_1000872CC();

  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_18;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v25 = v5;
      result = sub_10006F608(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        break;
      }

      v14 = 0;
      v15 = v11;
      v27 = v11;
      v28 = v11 & 0xC000000000000001;
      v26 = v11 & 0xFFFFFFFFFFFFFF8;
      v11 = v12;
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v28)
        {
          v17 = sub_10008781C();
        }

        else
        {
          if (v14 >= *(v26 + 16))
          {
            goto LABEL_17;
          }

          v17 = *(v15 + 8 * v14 + 32);
        }

        v18 = v17;
        [v17 range];
        result = sub_1000875FC();
        if (v19)
        {
          goto LABEL_21;
        }

        sub_10008721C();
        v20 = sub_10008718C();
        v22 = v21;

        v5 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v5 >= v23 >> 1)
        {
          sub_10006F608((v23 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        v24 = &_swiftEmptyArrayStorage[2 * v5];
        v24[4] = v20;
        v24[5] = v22;
        ++v14;
        v15 = v27;
        if (v16 == v11)
        {

          return _swiftEmptyArrayStorage;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v12 = sub_10008793C();
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_100006934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10008714C();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10008601C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100006A10()
{
  result = qword_1000ADEB8;
  if (!qword_1000ADEB8)
  {
    sub_100003200(&qword_1000ADEB0, &qword_100088B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADEB8);
  }

  return result;
}

unint64_t sub_100006A74()
{
  result = qword_1000ADEC0;
  if (!qword_1000ADEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ADEC0);
  }

  return result;
}

uint64_t sub_100006AC0()
{
  result = sub_100086AFC();
  qword_1000B3778 = result;
  unk_1000B3780 = v1;
  byte_1000B3788 = v2 & 1;
  qword_1000B3790 = v3;
  return result;
}

uint64_t sub_100006B04()
{
  result = sub_100086AFC();
  qword_1000B3798 = result;
  unk_1000B37A0 = v1;
  byte_1000B37A8 = v2 & 1;
  qword_1000B37B0 = v3;
  return result;
}

uint64_t sub_100006B54()
{
  result = sub_100086AFC();
  qword_1000B37B8 = result;
  unk_1000B37C0 = v1;
  byte_1000B37C8 = v2 & 1;
  qword_1000B37D0 = v3;
  return result;
}

uint64_t sub_100006B90()
{
  result = sub_100086AFC();
  qword_1000B37D8 = result;
  unk_1000B37E0 = v1;
  byte_1000B37E8 = v2 & 1;
  qword_1000B37F0 = v3;
  return result;
}

uint64_t sub_100006BD4()
{
  result = sub_100086AFC();
  qword_1000B37F8 = result;
  unk_1000B3800 = v1;
  byte_1000B3808 = v2 & 1;
  qword_1000B3810 = v3;
  return result;
}

uint64_t sub_100006C1C()
{
  result = sub_100086AFC();
  qword_1000B3818 = result;
  unk_1000B3820 = v1;
  byte_1000B3828 = v2 & 1;
  qword_1000B3830 = v3;
  return result;
}

uint64_t sub_100006C68()
{
  result = sub_100086AFC();
  qword_1000B3838 = result;
  unk_1000B3840 = v1;
  byte_1000B3848 = v2 & 1;
  qword_1000B3850 = v3;
  return result;
}

uint64_t sub_100006CB8()
{
  result = sub_100086AFC();
  qword_1000B3858 = result;
  unk_1000B3860 = v1;
  byte_1000B3868 = v2 & 1;
  qword_1000B3870 = v3;
  return result;
}

uint64_t sub_100006CF8()
{
  result = sub_100086AFC();
  qword_1000B3878 = result;
  unk_1000B3880 = v1;
  byte_1000B3888 = v2 & 1;
  qword_1000B3890 = v3;
  return result;
}

uint64_t sub_100006D40()
{
  result = sub_100086AFC();
  qword_1000B3898 = result;
  unk_1000B38A0 = v1;
  byte_1000B38A8 = v2 & 1;
  qword_1000B38B0 = v3;
  return result;
}

uint64_t sub_100006D88()
{
  result = sub_100086AFC();
  qword_1000B38B8 = result;
  unk_1000B38C0 = v1;
  byte_1000B38C8 = v2 & 1;
  qword_1000B38D0 = v3;
  return result;
}

uint64_t sub_100006DD0()
{
  result = sub_100086AFC();
  qword_1000B38D8 = result;
  unk_1000B38E0 = v1;
  byte_1000B38E8 = v2 & 1;
  qword_1000B38F0 = v3;
  return result;
}

uint64_t sub_100006E18()
{
  result = sub_100086AFC();
  qword_1000B38F8 = result;
  unk_1000B3900 = v1;
  byte_1000B3908 = v2 & 1;
  qword_1000B3910 = v3;
  return result;
}

uint64_t sub_100006E5C()
{
  result = sub_100086AFC();
  qword_1000B3918 = result;
  unk_1000B3920 = v1;
  byte_1000B3928 = v2 & 1;
  qword_1000B3930 = v3;
  return result;
}

uint64_t sub_100006EA4()
{
  result = sub_100086AFC();
  qword_1000B3938 = result;
  unk_1000B3940 = v1;
  byte_1000B3948 = v2 & 1;
  qword_1000B3950 = v3;
  return result;
}

uint64_t sub_100006EEC()
{
  if (qword_1000ADBE0 != -1)
  {
    swift_once();
  }

  if (byte_1000B3B9B == 1)
  {

    v4._countAndFlagsBits = 0x495041575FLL;
    v4._object = 0xE500000000000000;
    sub_1000871BC(v4);
  }

  result = sub_100086B1C();
  qword_1000B3958 = result;
  unk_1000B3960 = v1;
  byte_1000B3968 = v2 & 1;
  qword_1000B3970 = v3;
  return result;
}

uint64_t sub_100007010()
{
  result = sub_100086AFC();
  qword_1000B3978 = result;
  unk_1000B3980 = v1;
  byte_1000B3988 = v2 & 1;
  qword_1000B3990 = v3;
  return result;
}

uint64_t sub_100007058()
{
  result = sub_100086AFC();
  qword_1000B3998 = result;
  unk_1000B39A0 = v1;
  byte_1000B39A8 = v2 & 1;
  qword_1000B39B0 = v3;
  return result;
}

uint64_t sub_1000070A4()
{
  result = sub_100086AFC();
  qword_1000B39B8 = result;
  unk_1000B39C0 = v1;
  byte_1000B39C8 = v2 & 1;
  qword_1000B39D0 = v3;
  return result;
}

uint64_t sub_1000070EC()
{
  result = sub_100086AFC();
  qword_1000B39D8 = result;
  unk_1000B39E0 = v1;
  byte_1000B39E8 = v2 & 1;
  qword_1000B39F0 = v3;
  return result;
}

uint64_t sub_100007134()
{
  result = sub_100086AFC();
  qword_1000B39F8 = result;
  unk_1000B3A00 = v1;
  byte_1000B3A08 = v2 & 1;
  qword_1000B3A10 = v3;
  return result;
}

uint64_t sub_10000717C()
{
  result = sub_100086AFC();
  qword_1000B3A18 = result;
  unk_1000B3A20 = v1;
  byte_1000B3A28 = v2 & 1;
  qword_1000B3A30 = v3;
  return result;
}

uint64_t sub_1000071C4()
{
  result = sub_100086AFC();
  qword_1000B3A38 = result;
  unk_1000B3A40 = v1;
  byte_1000B3A48 = v2 & 1;
  qword_1000B3A50 = v3;
  return result;
}

uint64_t sub_100007210()
{
  result = sub_100086AFC();
  qword_1000B3A58 = result;
  unk_1000B3A60 = v1;
  byte_1000B3A68 = v2 & 1;
  qword_1000B3A70 = v3;
  return result;
}

uint64_t sub_100007258()
{
  result = sub_100086AFC();
  qword_1000B3A78 = result;
  unk_1000B3A80 = v1;
  byte_1000B3A88 = v2 & 1;
  qword_1000B3A90 = v3;
  return result;
}

uint64_t sub_1000072A0()
{
  if (qword_1000ADBE0 != -1)
  {
    swift_once();
  }

  result = sub_100086B1C();
  qword_1000B3A98 = result;
  unk_1000B3AA0 = v1;
  byte_1000B3AA8 = v2 & 1;
  qword_1000B3AB0 = v3;
  return result;
}

uint64_t sub_100007370()
{
  result = sub_100086AFC();
  qword_1000B3AB8 = result;
  unk_1000B3AC0 = v1;
  byte_1000B3AC8 = v2 & 1;
  qword_1000B3AD0 = v3;
  return result;
}

uint64_t sub_1000073B8()
{
  result = sub_100086AFC();
  qword_1000B3AD8 = result;
  unk_1000B3AE0 = v1;
  byte_1000B3AE8 = v2 & 1;
  qword_1000B3AF0 = v3;
  return result;
}

uint64_t sub_100007400()
{
  result = sub_100086AFC();
  qword_1000B3AF8 = result;
  unk_1000B3B00 = v1;
  byte_1000B3B08 = v2 & 1;
  qword_1000B3B10 = v3;
  return result;
}

uint64_t sub_100007448()
{
  result = sub_100086AFC();
  qword_1000B3B18 = result;
  unk_1000B3B20 = v1;
  byte_1000B3B28 = v2 & 1;
  qword_1000B3B30 = v3;
  return result;
}

uint64_t sub_100007488()
{
  result = sub_100086AFC();
  qword_1000B3B38 = result;
  unk_1000B3B40 = v1;
  byte_1000B3B48 = v2 & 1;
  qword_1000B3B50 = v3;
  return result;
}

uint64_t *sub_1000074C4()
{
  type metadata accessor for NetworkManager();
  swift_allocObject();
  result = sub_100007500();
  qword_1000B3B58 = result;
  return result;
}

uint64_t *sub_100007500()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  type metadata accessor for BetaEnrollmentNetworkingSession();
  swift_allocObject();
  v0[14] = sub_10006020C();
  v2 = type metadata accessor for CarrySettingsNetworkingSession();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[15] = sub_10006CC14();
  sub_100059920(0x696C616974696E49, 0xEC000000676E697ALL, v1, &off_1000A69F0);
  return v0;
}

uint64_t sub_1000075CC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10000763C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_100007680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000076C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100007754()
{
  sub_100001EEC(&qword_1000ADFB8, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100088C20;
  *(v21 + 9) = *(v0 + 33);
  v21[0] = *(v0 + 24);
  *(inited + 56) = &type metadata for AnalyticsInteger;
  *(inited + 64) = &off_1000AE268;
  v2 = swift_allocObject();
  *(inited + 32) = v2;
  *(v2 + 25) = *(v0 + 33);
  *(v2 + 16) = *(v0 + 24);
  v20[0] = *(v0 + 64);
  *(v20 + 9) = *(v0 + 73);
  *(inited + 96) = &type metadata for AnalyticsInteger;
  *(inited + 104) = &off_1000AE268;
  v3 = swift_allocObject();
  *(inited + 72) = v3;
  *(v3 + 25) = *(v0 + 73);
  *(v3 + 16) = *(v0 + 64);
  v19[0] = *(v0 + 96);
  v4 = v19[0];
  *(v19 + 13) = *(v0 + 109);
  v5 = *(v19 + 13);
  *(inited + 136) = &type metadata for AnalyticsFloat;
  *(inited + 144) = &off_1000AE228;
  *(inited + 112) = v4;
  *(inited + 125) = v5;
  v18[0] = *(v0 + 120);
  *(v18 + 9) = *(v0 + 129);
  *(inited + 176) = &type metadata for AnalyticsInteger;
  *(inited + 184) = &off_1000AE268;
  v6 = swift_allocObject();
  *(inited + 152) = v6;
  *(v6 + 25) = *(v0 + 129);
  *(v6 + 16) = *(v0 + 120);
  v17[0] = *(v0 + 152);
  v7 = v17[0];
  *(v17 + 13) = *(v0 + 165);
  v8 = *(v17 + 13);
  *(inited + 216) = &type metadata for AnalyticsFloat;
  *(inited + 224) = &off_1000AE228;
  *(inited + 192) = v7;
  *(inited + 205) = v8;
  v16[0] = *(v0 + 176);
  *(v16 + 9) = *(v0 + 185);
  *(inited + 256) = &type metadata for AnalyticsInteger;
  *(inited + 264) = &off_1000AE268;
  v9 = swift_allocObject();
  *(inited + 232) = v9;
  *(v9 + 25) = *(v0 + 185);
  *(v9 + 16) = *(v0 + 176);
  v15[0] = *(v0 + 208);
  v10 = v15[0];
  *(v15 + 13) = *(v0 + 221);
  v11 = *(v15 + 13);
  *(inited + 296) = &type metadata for AnalyticsFloat;
  *(inited + 304) = &off_1000AE228;
  *(inited + 272) = v10;
  *(inited + 285) = v11;
  sub_100008354(v21, v14);
  sub_100008354(v20, v14);
  sub_1000083B0(v19, v14);
  sub_100008354(v18, v14);
  sub_1000083B0(v17, v14);
  sub_100008354(v16, v14);
  sub_1000083B0(v15, v14);
  v12 = sub_100057E00(inited);
  swift_setDeallocating();
  sub_100001EEC(qword_1000ADFC0, &qword_100088D30);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1000079BC(uint64_t result)
{
  v2 = result;
  *v1 = result;
  if (*(v1 + 48))
  {
    if (result < 1)
    {
      return result;
    }
  }

  else if (*(v1 + 40) >= result)
  {
    return result;
  }

  sub_1000877DC(17);

  v3._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v3);

  sub_100016548(0x6320656369766544, 0xEF203D20746E756FLL);

  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_100007AA0()
{
  sub_1000877DC(25);

  v2 = *(v0 + 8);
  v3._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v3);

  sub_100016548(0xD000000000000017, 0x800000010008E5A0);

  *(v0 + 192) = v2;
  *(v0 + 200) = 0;
  return result;
}

uint64_t sub_100007B58(unint64_t a1)
{
  v14[0] = 0x6F726E6520646944;
  v14[1] = 0xEB00000000206C6CLL;
  sub_100002238();
  v15._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v15);

  sub_100016548(0x6F726E6520646944, 0xEB00000000206C6CLL);

  if (a1 >> 62)
  {
    result = sub_10008793C();
    v4 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_10008781C();
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = *(v1 + 56);
    v14[0] = v6;
    __chkstk_darwin(v6);
    v13[2] = v14;
    if ((sub_10006E34C(sub_1000082FC, v13, v9) & 1) == 0)
    {
      v10 = v7;
      sub_1000872AC();
      if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13[4] = *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10008730C();
      }

      sub_10008735C();
    }
  }

LABEL_14:
  v11 = *(v1 + 56);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v12 = *(v1 + 56);
    }

    result = sub_10008793C();
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 80) = result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_100007D58(unint64_t a1)
{
  strcpy(v14, "Did unenroll ");
  HIWORD(v14[1]) = -4864;
  sub_100002238();
  v15._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v15);

  sub_100016548(v14[0], v14[1]);

  if (a1 >> 62)
  {
    result = sub_10008793C();
    v4 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_10008781C();
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = *(v1 + 232);
    v14[0] = v6;
    __chkstk_darwin(v6);
    v13[2] = v14;
    if ((sub_10006E34C(sub_10000840C, v13, v9) & 1) == 0)
    {
      v10 = v7;
      sub_1000872AC();
      if (*((*(v1 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 232) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13[4] = *((*(v1 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10008730C();
      }

      sub_10008735C();
    }
  }

LABEL_14:
  v11 = *(v1 + 232);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v12 = *(v1 + 232);
    }

    result = sub_10008793C();
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 136) = result;
  *(v1 + 144) = 0;
  return result;
}

uint64_t sub_100007F5C()
{
  if (*(v0 + 16) != 1)
  {
    return result;
  }

  sub_100016548(0x676E6970706F7453, 0xE800000000000000);
  *(v0 + 16) = 0;
  if (v0[3])
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 5);
  if (v1 < 1)
  {
    goto LABEL_8;
  }

  if (*(v0 + 88))
  {
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v0 + 42) = *(v0 + 17) / v1;
    *(v0 + 172) = 0;
    if (*(v0 + 200))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v0 + 28) = *(v0 + 10) / v1;
  *(v0 + 116) = 0;
  if ((v0[9] & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*(v0 + 200) & 1) == 0)
  {
LABEL_7:
    *(v0 + 56) = *(v0 + 24) / v1;
    *(v0 + 228) = 0;
  }

LABEL_8:
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[14];
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[11];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  sub_100058630();

  return sub_1000081A4();
}

unint64_t sub_1000080BC()
{
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[14];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_100058B18();
}

unint64_t sub_100008128(uint64_t a1)
{
  result = sub_100008150();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100008150()
{
  result = qword_1000ADFB0;
  if (!qword_1000ADFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADFB0);
  }

  return result;
}

uint64_t sub_1000081A4()
{
  sub_100016548(0x6E69747465736552, 0xE900000000000067);
  *v0 = 0;
  if ((*(v0 + 48) & 1) == 0 && (*(v0 + 40) & 0x8000000000000000) != 0)
  {
    sub_1000877DC(17);

    v4._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v4);

    sub_100016548(0x6320656369766544, 0xEF203D20746E756FLL);

    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
  }

  *(v0 + 8) = 0;
  sub_100007AA0();
  *(v0 + 16) = 0;
  v1 = *(v0 + 56);

  *(v0 + 56) = _swiftEmptyArrayStorage;
  v2 = *(v0 + 232);

  *(v0 + 232) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 112) = 0;
  *(v0 + 116) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 168) = 0;
  *(v0 + 172) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 224) = 0;
  *(v0 + 228) = 1;
  return result;
}

uint64_t sub_10000831C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100008428()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100008464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000084AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008504()
{
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  return v1;
}

BOOL sub_1000085A8(uint64_t *a1)
{
  v2 = sub_1000864CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 48);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  (*(v3 + 104))(v7, enum case for BetaEnrollment.Availability.unavailable(_:), v2);
  sub_10000E52C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  LOBYTE(v10) = sub_10008713C();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  return (v10 & 1) == 0;
}

unint64_t sub_1000087B4(uint64_t *a1)
{
  v2 = sub_1000864CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 48);
  v13 = swift_checkMetadataState();
  v17[1] = v10;
  v12(v13, AssociatedConformanceWitness);
  (*(v3 + 104))(v7, enum case for BetaEnrollment.Availability.unavailable(_:), v2);
  sub_10000E52C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  LOBYTE(v10) = sub_10008713C();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  if (v10)
  {
    return 0;
  }

  result = (*(AssociatedConformanceWitness + 88))(v13, AssociatedConformanceWitness);
  if (result)
  {
    if (result >> 62)
    {
      v16 = sub_10008793C();
    }

    else
    {
      v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v16 > 0;
  }

  return result;
}

uint64_t sub_100008A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 48);
  swift_unknownObjectRetain();
  v8(a5, a6);
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  swift_getWitnessTable();
  return sub_10008783C();
}

BOOL sub_100008B14(uint64_t *a1)
{
  v2 = sub_1000864CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 48);
  v13 = swift_checkMetadataState();
  v18[1] = v10;
  v12(v13, AssociatedConformanceWitness);
  (*(v3 + 104))(v7, enum case for BetaEnrollment.Availability.unavailable(_:), v2);
  sub_10000E52C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability);
  LOBYTE(v10) = sub_10008713C();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  if (v10)
  {
    return 0;
  }

  v16 = (*(AssociatedConformanceWitness + 88))(v13, AssociatedConformanceWitness);
  if (!v16)
  {
    return 1;
  }

  if (v16 >> 62)
  {
    v17 = sub_10008793C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v17 == 0;
}

uint64_t sub_100008D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v109 = a4;
  v100 = a3;
  v99 = a2;
  v107 = a7;
  v108 = a1;
  v9 = sub_100086A8C();
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = *(v105 + 64);
  __chkstk_darwin(v9);
  v104 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10008742C();
  v102 = *(v103 - 8);
  v12 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a6;
  v97 = a5;
  swift_getAssociatedTypeWitness();
  v14 = sub_10008739C();
  v15 = *(swift_getAssociatedConformanceWitness() + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for BetaSettingsSeedingRowView();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v120 = v14;
  v121 = AssociatedTypeWitness;
  v122 = v17;
  v123 = WitnessTable;
  v124 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_10008767C();
  v20 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  v120 = v14;
  v121 = AssociatedTypeWitness;
  v122 = v20;
  v123 = WitnessTable;
  v124 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_10008767C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata3();
  v21 = sub_10008705C();
  v22 = swift_getWitnessTable();
  v120 = &type metadata for Never;
  v121 = v21;
  v122 = &protocol witness table for Never;
  v123 = v22;
  v89 = sub_100086C7C();
  sub_100086B9C();
  v23 = type metadata accessor for BetaSettingsToggleRowView();
  v120 = v14;
  v121 = AssociatedTypeWitness;
  v122 = v23;
  v123 = WitnessTable;
  v124 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  v24 = sub_10008705C();
  v25 = swift_getWitnessTable();
  v120 = &type metadata for Never;
  v121 = v24;
  v122 = &protocol witness table for Never;
  v123 = v25;
  sub_100086C7C();
  v26 = sub_100086B9C();
  v93 = *(v26 - 8);
  v27 = *(v93 + 64);
  __chkstk_darwin(v26);
  v84 = (&v76 - v28);
  v29 = sub_10008695C();
  v94 = *(v29 - 8);
  v30 = *(v94 + 64);
  __chkstk_darwin(v29);
  v90 = &v76 - v31;
  v79 = v29;
  v32 = sub_10008695C();
  v95 = *(v32 - 8);
  v33 = *(v95 + 64);
  __chkstk_darwin(v32);
  v91 = &v76 - v34;
  sub_1000868BC();
  v82 = v32;
  v35 = sub_10008695C();
  v96 = *(v35 - 8);
  v36 = *(v96 + 64);
  __chkstk_darwin(v35);
  v92 = &v76 - v37;
  v38 = sub_10000DAF0();
  v39 = swift_getWitnessTable();
  v118 = v38;
  v119 = v39;
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v116 = v40;
  v117 = v41;
  v77 = swift_getWitnessTable();
  v114 = v77;
  v115 = &protocol witness table for _AppearanceActionModifier;
  v78 = swift_getWitnessTable();
  v112 = v78;
  v113 = &protocol witness table for _AppearanceActionModifier;
  v42 = swift_getWitnessTable();
  v80 = v42;
  v43 = sub_10000E52C(&qword_1000AE060, &type metadata accessor for _TaskModifier);
  v110 = v42;
  v111 = v43;
  v86 = v35;
  v85 = swift_getWitnessTable();
  v120 = v35;
  v121 = v85;
  v87 = &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  v44 = *(v89 + 64);
  v45 = __chkstk_darwin(OpaqueTypeMetadata2);
  v81 = &v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v83 = (&v76 - v47);
  v48 = v84;
  v50 = v108;
  v49 = v109;
  v51 = v99;
  LOBYTE(v17) = v100;
  v52 = v97;
  v53 = v98;
  sub_100009990(v108, v99, v100, v109, v97, v98, v84);
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v53;
  *(v54 + 32) = v50;
  *(v54 + 40) = v51;
  *(v54 + 48) = v17;
  *(v54 + 56) = v49;

  swift_unknownObjectRetain();
  v55 = v90;
  sub_100086DEC();

  (*(v93 + 8))(v48, v26);
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v53;
  *(v56 + 32) = v50;
  *(v56 + 40) = v51;
  *(v56 + 48) = v17;
  LOBYTE(v50) = v17;
  v57 = v109;
  *(v56 + 56) = v109;
  v58 = v51;
  swift_unknownObjectRetain();

  v59 = v91;
  v60 = v79;
  sub_100086D2C();

  (*(v94 + 8))(v55, v60);
  v61 = swift_allocObject();
  *(v61 + 16) = v52;
  *(v61 + 24) = v53;
  *(v61 + 32) = v108;
  *(v61 + 40) = v58;
  *(v61 + 48) = v50;
  *(v61 + 56) = v57;
  swift_unknownObjectRetain();

  v62 = v101;
  v63 = v82;
  sub_10004B6F8();
  v64 = v92;
  sub_100086DAC();

  (*(v102 + 8))(v62, v103);
  (*(v95 + 8))(v59, v63);
  v66 = v104;
  v65 = v105;
  v67 = v106;
  (*(v105 + 104))(v104, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v106);
  v68 = v81;
  v69 = v86;
  v70 = v85;
  sub_100086D9C();
  (*(v65 + 8))(v66, v67);
  (*(v96 + 8))(v64, v69);
  v120 = v69;
  v121 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v83;
  v73 = OpaqueTypeMetadata2;
  sub_10004EDD8(v83, v68, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v74 = *(v89 + 8);
  v74(v68, v73);
  sub_10004EDD8(v107, v72, v73, OpaqueTypeConformance2);
  return (v74)(v72, v73);
}

uint64_t sub_100009990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v91 = a4;
  v90 = a3;
  v88 = a1;
  v89 = a2;
  v97 = a7;
  v98 = a5;
  v99 = a6;
  swift_getAssociatedTypeWitness();
  v7 = sub_10008739C();
  v8 = *(swift_getAssociatedConformanceWitness() + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsToggleRowView();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v113 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata2();
  *&v111 = &type metadata for Never;
  *(&v111 + 1) = sub_10008705C();
  *&v112 = &protocol witness table for Never;
  *(&v112 + 1) = swift_getWitnessTable();
  v100 = sub_100086C7C();
  v83 = *(v100 - 8);
  v12 = *(v83 + 64);
  v13 = __chkstk_darwin(v100);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = (&v79 - v15);
  v16 = type metadata accessor for BetaSettingsSeedingRowView();
  *&v111 = v7;
  *(&v111 + 1) = AssociatedTypeWitness;
  *&v112 = v16;
  *(&v112 + 1) = WitnessTable;
  *&v113 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_10008767C();
  v17 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  *&v111 = v7;
  *(&v111 + 1) = AssociatedTypeWitness;
  *&v112 = v17;
  *(&v112 + 1) = WitnessTable;
  *&v113 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_10008767C();
  swift_getTupleTypeMetadata3();
  v18 = sub_10008705C();
  v19 = swift_getWitnessTable();
  *&v111 = &type metadata for Never;
  *(&v111 + 1) = v18;
  *&v112 = &protocol witness table for Never;
  *(&v112 + 1) = v19;
  v20 = sub_100086C7C();
  v81 = *(v20 - 8);
  v21 = *(v81 + 64);
  v22 = __chkstk_darwin(v20);
  v80 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v84 = (&v79 - v24);
  v92 = v25;
  v26 = sub_100086B9C();
  v87 = *(v26 - 8);
  v27 = *(v87 + 64);
  __chkstk_darwin(v26);
  v86 = &v79 - v28;
  v93 = v29;
  v30 = sub_100086B9C();
  v95 = *(v30 - 8);
  v96 = v30;
  v31 = *(v95 + 64);
  __chkstk_darwin(v30);
  v33 = &v79 - v32;
  v34 = v90;
  v35 = v91;
  *&v111 = sub_100008A30(v88, v89, v90, v91, v98, v99);
  swift_getWitnessTable();
  LOBYTE(v18) = sub_1000875DC();

  v94 = v33;
  if (v18)
  {
    LOBYTE(v109[0]) = v34 & 1;
    *(&v109[0] + 1) = v35;
    sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
    sub_100086E8C();
    if (v103 == 1)
    {
      v36 = v93;
      if (qword_1000ADB50 != -1)
      {
        swift_once();
      }

      v98 = &v115;
      v99 = (&v115 + 8);
      v91 = (&v114 + 8);
      v37 = &v114;
      v39 = qword_1000B3938;
      v38 = unk_1000B3940;
      v40 = byte_1000B3948;
      v41 = qword_1000B3950;
      v42 = qword_1000ADB58;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = unk_1000B3960;
      v44 = byte_1000B3968;
      v45 = qword_1000B3970;
      *&v111 = v39;
      *(&v111 + 1) = v38;
      *&v112 = v40;
      *(&v112 + 1) = v41;
      *&v113 = 0;
      *(&v113 + 1) = qword_1000B3958;
      v46 = 1;
      v48 = v98;
      v47 = v99;
      v49 = v91;
    }

    else
    {
      v47 = &v113;
      v48 = &v112 + 1;
      v49 = &v112;
      v37 = (&v111 + 8);
      v36 = v93;
      if (qword_1000ADB40 != -1)
      {
        swift_once();
      }

      v46 = 0;
      v43 = unk_1000B3900;
      v44 = byte_1000B3908;
      v45 = qword_1000B3910;
      *&v111 = qword_1000B38F8;
    }

    *v37 = v43;
    *v49 = v44;
    *v48 = v45;
    *v47 = 0;
    v116 = v46;

    v105 = v113;
    v106 = v114;
    v107 = v115;
    v108 = v116;
    v103 = v111;
    v104 = v112;
    sub_10000DFBC(&v111, v109);
    sub_10000DFBC(&v111, v109);
    v60 = sub_10000DAF0();
    v61 = swift_getWitnessTable();
    v62 = v86;
    sub_10004B338(&v103, &type metadata for StatusInfoView);
    v109[2] = v105;
    v109[3] = v106;
    v109[4] = v107;
    v110 = v108;
    v109[0] = v103;
    v109[1] = v104;
    sub_10000E018(v109);
    v101 = v60;
    v102 = v61;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v59 = v94;
    sub_10004B338(v62, v36);
    sub_10000E06C(&v111);
    sub_10000E06C(&v111);
    (*(v87 + 8))(v62, v36);
  }

  else
  {
    *(&v112 + 1) = &type metadata for Feature;
    *&v113 = sub_10000DF68();
    v50 = sub_1000860AC();
    sub_100001FF8(&v111);
    if (v50)
    {
      v51 = v80;
      sub_10000B100();
      v52 = v92;
      v53 = swift_getWitnessTable();
      v54 = v84;
      sub_10004EDD8(v84, v51, v52, v53);
      v55 = *(v81 + 8);
      v55(v51, v52);
      sub_10004EDD8(v51, v54, v52, v53);
      v56 = sub_10000DAF0();
      v57 = v86;
      sub_10004B430(v51, &type metadata for StatusInfoView, v52);
      v117 = v56;
      v118 = v53;
      v58 = v93;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v59 = v94;
      sub_10004B338(v57, v58);
      (*(v87 + 8))(v57, v58);
      v55(v51, v52);
      v55(v84, v52);
    }

    else
    {
      v63 = v82;
      sub_10000B31C();
      v64 = v100;
      v65 = swift_getWitnessTable();
      v66 = v85;
      sub_10004EDD8(v85, v63, v64, v65);
      v67 = *(v83 + 8);
      v67(v63, v64);
      sub_10004EDD8(v63, v66, v64, v65);
      v68 = sub_10000DAF0();
      v69 = swift_getWitnessTable();
      v123 = v68;
      v124 = v69;
      v70 = v93;
      swift_getWitnessTable();
      v71 = v94;
      sub_10004B430(v63, v70, v64);
      v67(v63, v64);
      v67(v85, v64);
      v59 = v71;
    }
  }

  v72 = sub_10000DAF0();
  v73 = swift_getWitnessTable();
  v121 = v72;
  v122 = v73;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v119 = v74;
  v120 = v75;
  v76 = v96;
  v77 = swift_getWitnessTable();
  sub_10004EDD8(v97, v59, v76, v77);
  return (*(v95 + 8))(v59, v76);
}

void sub_10000A548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_100016C64(0, 0, v15, &unk_100088E60, v18);

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
  aBlock[3] = &unk_1000A6EC0;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v22 = [v19 scheduledTimerWithTimeInterval:0 repeats:v21 block:5.0];
  _Block_release(v21);
}

uint64_t sub_10000A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10000A834, v10, v9);
}

uint64_t sub_10000A834()
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

uint64_t sub_10000A94C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 16);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10000EAF0, v5, v4);
}

uint64_t sub_10000AA90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_100016C64(0, 0, v15, &unk_100088E50, v18);
}

uint64_t sub_10000ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10000AC90, v10, v9);
}

uint64_t sub_10000AC90()
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

uint64_t sub_10000ADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  sub_1000873FC();
  v6[5] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_10000AE44, v8, v7);
}

uint64_t sub_10000AE44()
{
  v1 = v0[2];
  v2 = *(v0[4] + 64);
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

uint64_t sub_10000AF5C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;

  v6 = *(v2 + 16);
  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = sub_10000EAF0;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = sub_10000B0A0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10000B0A0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000B100()
{
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v0 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsSeedingRowView();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_10008767C();
  type metadata accessor for BetaSettingsMultiSeedingRowView();
  sub_100086FBC();
  sub_10008767C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  return sub_100086C6C();
}

uint64_t sub_10000B31C()
{
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v0 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsToggleRowView();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  return sub_100086C6C();
}

uint64_t sub_10000B524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a4;
  v53 = a3;
  v63 = a2;
  v64 = a1;
  v61 = a7;
  v58 = sub_100001EEC(&qword_1000AE078, &qword_100088E70);
  v57 = *(v58 - 8);
  v9 = *(v57 + 64);
  __chkstk_darwin(v58);
  v49 = &v49 - v10;
  v59 = sub_100001EEC(&qword_1000AE048, &qword_100088E20);
  v11 = *(*(v59 - 8) + 64);
  v12 = __chkstk_darwin(v59);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v49 - v14;
  swift_getAssociatedTypeWitness();
  v15 = sub_10008739C();
  v51 = a5;
  v16 = *(swift_getAssociatedConformanceWitness() + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for BetaSettingsToggleRowView();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = v15;
  v75 = AssociatedTypeWitness;
  v76 = v18;
  v77 = WitnessTable;
  v78 = AssociatedConformanceWitness;
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  v21 = sub_10008700C();
  v62 = *(v21 - 8);
  v22 = *(v62 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = (&v49 - v26);
  v65 = a5;
  v66 = a6;
  v28 = a6;
  v67 = v64;
  v68 = v63;
  v29 = v53;
  v69 = v53;
  v30 = v54;
  v70 = v54;
  v73[7] = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v32 = sub_100006454(&qword_1000AE0B8, &qword_1000AE050, &qword_100088E28);
  v73[5] = v31;
  v73[6] = v32;
  v33 = swift_getWitnessTable();
  sub_100086FEC();
  v73[2] = &protocol witness table for EmptyView;
  v73[3] = v33;
  v73[4] = &protocol witness table for EmptyView;
  v34 = swift_getWitnessTable();
  v55 = v27;
  v50 = v34;
  sub_10004EDD8(v27, v25, v21, v34);
  v52 = *(v62 + 8);
  v52(v25, v21);
  sub_100008A30(v64, v63, v29, v30, v51, v28);
  v35 = sub_10008736C();

  if (v35 < 3)
  {
    v41 = 1;
    v42 = v58;
    v38 = v56;
    v43 = v57;
  }

  else
  {
    v36 = v49;
    sub_10000C108();
    v37 = v57;
    v38 = v56;
    v39 = v36;
    v40 = v58;
    (*(v57 + 32))(v56, v39, v58);
    v41 = 0;
    v42 = v40;
    v43 = v37;
  }

  (*(v43 + 56))(v38, v41, 1, v42);
  v44 = v55;
  (*(v62 + 16))(v25, v55, v21);
  v74 = v25;
  v45 = v60;
  sub_10000E4A4(v38, v60, &qword_1000AE048, &qword_100088E20);
  v75 = v45;
  v73[0] = v21;
  v73[1] = v59;
  v71 = v50;
  v72 = sub_10000E0D8();
  sub_10004B528(&v74, 2uLL, v73);
  sub_10000649C(v38, &qword_1000AE048, &qword_100088E20);
  v46 = v44;
  v47 = v52;
  v52(v46, v21);
  sub_10000649C(v45, &qword_1000AE048, &qword_100088E20);
  return v47(v25, v21);
}

uint64_t sub_10000BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v38 = a3;
  v36 = a1;
  v37 = a2;
  v41 = a7;
  swift_getAssociatedTypeWitness();
  v10 = sub_10008739C();
  v11 = *(swift_getAssociatedConformanceWitness() + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for BetaSettingsToggleRowView();
  v35 = v10;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = v10;
  v48 = AssociatedTypeWitness;
  v49 = v13;
  v50 = WitnessTable;
  v51 = AssociatedConformanceWitness;
  v14 = sub_100086FBC();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  v18 = sub_10008695C();
  v40 = *(v18 - 8);
  v19 = *(v40 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = (&v32 - v23);
  v47 = sub_100008A30(v36, v37, v38, a4, a5, a6);
  v42 = a5;
  v43 = a6;
  swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v31 = swift_getWitnessTable();
  sub_100086F9C();
  sub_10008689C();
  sub_10008703C();
  sub_1000868AC();

  v46 = v31;
  v26 = swift_getWitnessTable();
  sub_100086D0C();

  (*(v39 + 8))(v17, v14);
  v27 = sub_100006454(&qword_1000AE0B8, &qword_1000AE050, &qword_100088E28);
  v44 = v26;
  v45 = v27;
  v28 = swift_getWitnessTable();
  sub_10004EDD8(v24, v22, v18, v28);
  v29 = *(v40 + 8);
  v29(v22, v18);
  sub_10004EDD8(v41, v24, v18, v28);
  return (v29)(v24, v18);
}

uint64_t sub_10000C068(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 24);
  return sub_1000877EC();
}

uint64_t sub_10000C108()
{
  sub_100001EEC(&qword_1000AE098, &qword_100088E78);
  sub_100006454(&qword_1000AE090, &qword_1000AE098, &qword_100088E78);
  return sub_100086FEC();
}

uint64_t sub_10000C1B8@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v120 = a5;
  v124 = a3;
  v121 = a2;
  v125 = a1;
  v108 = a7;
  v104 = sub_100001EEC(&qword_1000AE078, &qword_100088E70);
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v104);
  v94 = &v93 - v10;
  v105 = sub_100001EEC(&qword_1000AE048, &qword_100088E20);
  v11 = *(*(v105 - 8) + 64);
  v12 = __chkstk_darwin(v105);
  v107 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v93 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_10008739C();
  v17 = *(swift_getAssociatedConformanceWitness() + 24);
  v18 = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v137 = v16;
  v138 = v18;
  v117 = v19;
  v139 = v19;
  v140 = WitnessTable;
  v141 = AssociatedConformanceWitness;
  v22 = sub_100086FBC();
  v100 = *(v22 - 8);
  v23 = *(v100 + 64);
  v24 = __chkstk_darwin(v22);
  v96 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v95 = (&v93 - v26);
  v115 = v27;
  v119 = sub_10008767C();
  v126 = *(v119 - 8);
  v28 = *(v126 + 64);
  v29 = __chkstk_darwin(v119);
  v116 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v114 = &v93 - v31;
  v32 = type metadata accessor for BetaSettingsSeedingRowView();
  v111 = v16;
  v137 = v16;
  v138 = v18;
  v139 = v32;
  v140 = WitnessTable;
  v110 = WitnessTable;
  v109 = AssociatedConformanceWitness;
  v141 = AssociatedConformanceWitness;
  v33 = sub_100086FBC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = (&v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v40 = (&v93 - v39);
  v113 = sub_10008767C();
  v123 = *(v113 - 8);
  v41 = *(v123 + 64);
  v42 = __chkstk_darwin(v113);
  v44 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v122 = &v93 - v45;
  v46 = v120;
  v118 = a4;
  v47 = sub_100008A30(v125, v121, v124, a4, v120, a6);
  v48 = sub_10008736C();
  v102 = v33;
  v101 = v32;
  if (v48 < 1)
  {

    (*(v34 + 56))(v44, 1, 1, v33);
    v136[4] = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  else
  {
    v99 = AssociatedTypeWitness;
    v137 = v47;
    __chkstk_darwin(v48);
    swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    *(v49 + 24) = a6;
    v91 = swift_getWitnessTable();
    sub_100086F9C();
    v127 = v91;
    v50 = swift_getWitnessTable();
    sub_10004EDD8(v40, v38, v33, v50);
    v51 = *(v34 + 8);
    v51(v38, v33);
    sub_10004EDD8(v38, v40, v33, v50);
    v51(v40, v33);
    v46 = v120;
    (*(v34 + 32))(v44, v38, v33);
    (*(v34 + 56))(v44, 0, 1, v33);
  }

  v52 = v123;
  v53 = *(v123 + 16);
  v54 = v113;
  v98 = v123 + 16;
  v97 = v53;
  v53(v122, v44, v113);
  v55 = *(v52 + 8);
  v112 = v44;
  v123 = v52 + 8;
  v99 = v55;
  v55(v44, v54);
  v56 = v121;
  v57 = sub_100008A30(v125, v121, v124 & 1, v118, v46, a6);
  v58 = sub_10008736C();
  v59 = v46;
  v60 = v116;
  if (v58 < 1)
  {

    (*(v100 + 56))(v60, 1, 1, v115);
    v136[3] = swift_getWitnessTable();
    swift_getWitnessTable();
    v69 = v59;
  }

  else
  {
    v137 = v57;
    __chkstk_darwin(v58);
    swift_getKeyPath();
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = a6;
    v92 = swift_getWitnessTable();
    v62 = v96;
    sub_100086F9C();
    v128 = v92;
    v63 = v115;
    v64 = swift_getWitnessTable();
    v65 = v95;
    sub_10004EDD8(v95, v62, v63, v64);
    v66 = v100;
    v67 = *(v100 + 8);
    v67(v62, v63);
    sub_10004EDD8(v62, v65, v63, v64);
    v67(v65, v63);
    v56 = v121;
    (*(v66 + 32))(v60, v62, v63);
    v68 = v63;
    v69 = v120;
    (*(v66 + 56))(v60, 0, 1, v68);
  }

  v70 = v126;
  v71 = *(v126 + 16);
  v72 = v119;
  v71(v114, v60, v119);
  v73 = *(v70 + 8);
  v126 = v70 + 8;
  v121 = v73;
  v73(v60, v72);
  sub_100008A30(v125, v56, v124 & 1, v118, v69, a6);
  v74 = sub_10008736C();

  if (v74 < 3)
  {
    v80 = 1;
    v77 = v106;
    v79 = v104;
    v76 = v103;
  }

  else
  {
    v75 = v94;
    sub_10000C108();
    v76 = v103;
    v77 = v106;
    v78 = v75;
    v79 = v104;
    (*(v103 + 32))(v106, v78, v104);
    v80 = 0;
  }

  (*(v76 + 56))(v77, v80, 1, v79);
  v81 = v112;
  v82 = v113;
  v97(v112, v122, v113);
  v137 = v81;
  v83 = v116;
  v84 = v114;
  v85 = v119;
  v71(v116, v114, v119);
  v138 = v83;
  v86 = v107;
  sub_10000E4A4(v77, v107, &qword_1000AE048, &qword_100088E20);
  v139 = v86;
  v136[0] = v82;
  v136[1] = v85;
  v136[2] = v105;
  v132 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v133 = swift_getWitnessTable();
  v130 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  v134 = swift_getWitnessTable();
  v135 = sub_10000E0D8();
  sub_10004B528(&v137, 3uLL, v136);
  sub_10000649C(v77, &qword_1000AE048, &qword_100088E20);
  v87 = v84;
  v88 = v121;
  v121(v87, v85);
  v89 = v99;
  v99(v122, v82);
  sub_10000649C(v86, &qword_1000AE048, &qword_100088E20);
  v88(v83, v85);
  return v89(v112, v82);
}

uint64_t sub_10000D048@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t)@<X3>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_unknownObjectRetain();
  v17 = a2(v10, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v11;
  v19 = v12 & 1;
  v20 = v13;
  v14 = a3(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable();
  sub_10004EDD8(v21, &v17, v14, WitnessTable);
  swift_unknownObjectRelease();

  v17 = v21[0];
  v18 = v21[1];
  v19 = v22;
  v20 = v23;
  sub_10004EDD8(a4, &v17, v14, WitnessTable);
  swift_unknownObjectRelease();
}

uint64_t sub_10000D1AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_unknownObjectRetain();
  v11 = sub_100004A04(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = v7;
  v8 = type metadata accessor for BetaSettingsMultiSeedingRowView();
  WitnessTable = swift_getWitnessTable();
  sub_10004EDD8(v13, &v11, v8, WitnessTable);
  swift_unknownObjectRelease();
  v11 = v13[0];
  v12 = v13[1];
  sub_10004EDD8(a2, &v11, v8, WitnessTable);
  return swift_unknownObjectRelease();
}

uint64_t sub_10000D2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a7;
  v13 = sub_100001EEC(&qword_1000AE0A0, &qword_100088EB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v44 = &v42 - v15;
  v52 = sub_100001EEC(&qword_1000AE0A8, &qword_100088EB8);
  v16 = *(*(v52 - 8) + 64);
  v17 = __chkstk_darwin(v52);
  v48 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v47 = &v42 - v20;
  v21 = __chkstk_darwin(v19);
  v46 = &v42 - v22;
  __chkstk_darwin(v21);
  v24 = &v42 - v23;
  sub_100008A30(a1, a2, a3, a4, a5, a6);
  v55 = a5;
  v56 = a6;
  swift_getAssociatedTypeWitness();
  v42 = sub_100012190();

  v50 = a1;
  v51 = a4;
  sub_100008A30(a1, a2, a3, a4, a5, a6);
  v53 = a5;
  v54 = a6;
  v45 = sub_100012190();

  if (qword_1000ADB48 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  *(v25 + 32) = v50;
  *(v25 + 40) = a2;
  v43 = a3 & 1;
  *(v25 + 48) = a3 & 1;
  *(v25 + 56) = v51;

  swift_unknownObjectRetain();
  sub_100086EEC();
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v42 & 1;
  v28 = &v24[*(v52 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_10000E3E0;
  v28[2] = v27;
  if (qword_1000ADB60 != -1)
  {
    swift_once();
  }

  v29 = v44;
  sub_10008683C();
  v30 = sub_10008685C();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = a5;
  *(v31 + 24) = a6;
  v32 = v51;
  *(v31 + 32) = v50;
  *(v31 + 40) = a2;
  *(v31 + 48) = v43;
  *(v31 + 56) = v32;
  swift_unknownObjectRetain();

  v33 = v46;
  sub_100086EDC();
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v45 & 1;
  v36 = (v33 + *(v52 + 36));
  *v36 = v34;
  v36[1] = sub_10000EAEC;
  v36[2] = v35;
  v37 = v47;
  sub_10000E4A4(v24, v47, &qword_1000AE0A8, &qword_100088EB8);
  v38 = v48;
  sub_10000E4A4(v33, v48, &qword_1000AE0A8, &qword_100088EB8);
  v39 = v49;
  sub_10000E4A4(v37, v49, &qword_1000AE0A8, &qword_100088EB8);
  v40 = sub_100001EEC(&qword_1000AE0B0, qword_100088EF0);
  sub_10000E4A4(v38, v39 + *(v40 + 48), &qword_1000AE0A8, &qword_100088EB8);
  sub_10000649C(v33, &qword_1000AE0A8, &qword_100088EB8);
  sub_10000649C(v24, &qword_1000AE0A8, &qword_100088EB8);
  sub_10000649C(v38, &qword_1000AE0A8, &qword_100088EB8);
  return sub_10000649C(v37, &qword_1000AE0A8, &qword_100088EB8);
}

BOOL sub_10000D87C(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = sub_10008672C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  v14 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 72);
  v17 = swift_checkMetadataState();
  v16(v17, AssociatedConformanceWitness);
  (*(v7 + 104))(v11, *a4, v6);
  sub_10000E52C(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v18 = *(v7 + 8);
  v18(v11, v6);
  v18(v13, v6);
  return v20[1] == v20[0];
}

unint64_t sub_10000DAF0()
{
  result = qword_1000AE058;
  if (!qword_1000AE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE058);
  }

  return result;
}

uint64_t sub_10000DB94()
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

  return sub_10000ADA8(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_10000DC58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000DCC8(uint64_t a1)
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

  return sub_10000ABEC(a1, v6, v7, v8, v9, v10, v11, v4);
}

uint64_t sub_10000DDB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_10000DE00(uint64_t a1)
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

  return sub_10000A790(a1, v6, v7, v8, v9, v10, v11, v4);
}

uint64_t sub_10000DEF0()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  return sub_100086E9C();
}

uint64_t sub_10000DF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000DF68()
{
  result = qword_1000AE070;
  if (!qword_1000AE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE070);
  }

  return result;
}

unint64_t sub_10000E0D8()
{
  result = qword_1000AE080;
  if (!qword_1000AE080)
  {
    sub_100003200(&qword_1000AE048, &qword_100088E20);
    sub_10000E15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE080);
  }

  return result;
}

unint64_t sub_10000E15C()
{
  result = qword_1000AE088;
  if (!qword_1000AE088)
  {
    sub_100003200(&qword_1000AE078, &qword_100088E70);
    sub_100006454(&qword_1000AE090, &qword_1000AE098, &qword_100088E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE088);
  }

  return result;
}

__n128 sub_10000E228(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10000E244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10000D1AC(a1, a2);
}

uint64_t sub_10000E24C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10000D048(a1, sub_10004EDF0, type metadata accessor for BetaSettingsSeedingRowView, a2);
}

uint64_t sub_10000E30C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = *(v2 + 72);
  swift_unknownObjectRetain();
  v4(v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000E3F8()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_10000E438()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = *(v2 + 80);
  swift_unknownObjectRetain();
  v4(v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E4A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000E50C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000087B4(a1) & 1;
}

uint64_t sub_10000E52C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10000E574(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100008B14(a1);
}

uint64_t sub_10000E5E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10000D048(a1, sub_10004EDF0, type metadata accessor for BetaSettingsToggleRowView, a2);
}

BOOL sub_10000E638(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000085A8(a1);
}

uint64_t sub_10000E658(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  v3 = *(swift_getAssociatedConformanceWitness() + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsSeedingRowView();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_10008767C();
  type metadata accessor for BetaSettingsMultiSeedingRowView();
  sub_100086FBC();
  sub_10008767C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C7C();
  sub_100086B9C();
  type metadata accessor for BetaSettingsToggleRowView();
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C7C();
  sub_100086B9C();
  sub_10008695C();
  sub_10008695C();
  sub_1000868BC();
  sub_10008695C();
  sub_10000DAF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000E52C(&qword_1000AE060, &type metadata accessor for _TaskModifier);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableSet) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100001EEC(qword_1000AE0C0, &qword_100089AE0);
      [v2 addObject:sub_100087A3C()];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_1000874AC();

  sub_10008792C();
  __break(1u);
}

uint64_t sub_10000EC94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000ECD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ECF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000EEA4()
{
  result = qword_1000AE148;
  if (!qword_1000AE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE148);
  }

  return result;
}

Swift::Int sub_10000EF0C()
{
  v1 = *v0;
  sub_100087ADC();
  sub_100087AEC(v1);
  return sub_100087AFC();
}

Swift::Int sub_10000EF80()
{
  v1 = *v0;
  sub_100087ADC();
  sub_100087AEC(v1);
  return sub_100087AFC();
}

unint64_t sub_10000EFC4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000F298(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000F040()
{
  result = qword_1000AE150;
  if (!qword_1000AE150)
  {
    sub_100003200(&qword_1000AE158, qword_1000890C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE150);
  }

  return result;
}

unint64_t sub_10000F0A8()
{
  result = qword_1000AE160;
  if (!qword_1000AE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE160);
  }

  return result;
}

uint64_t sub_10000F0FC(uint64_t a1)
{
  v2 = sub_10000F19C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000F138(uint64_t a1)
{
  v2 = sub_10000F19C();
  v3 = sub_10000F1F0();
  v4 = sub_10000F244();

  return Error<>._code.getter(a1, v2, v3, v4);
}

unint64_t sub_10000F19C()
{
  result = qword_1000AE168;
  if (!qword_1000AE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE168);
  }

  return result;
}

unint64_t sub_10000F1F0()
{
  result = qword_1000AE170;
  if (!qword_1000AE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE170);
  }

  return result;
}

unint64_t sub_10000F244()
{
  result = qword_1000AE178;
  if (!qword_1000AE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE178);
  }

  return result;
}

unint64_t sub_10000F298(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

__n128 sub_10000F2A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000F2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_10000F30C(uint64_t result, int a2, int a3)
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
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10000F36C()
{
  sub_10000F3B0(v1);
  xmmword_1000B3B60 = v1[0];
  *algn_1000B3B70 = v1[1];
  xmmword_1000B3B80 = v2[0];
  result = *(v2 + 12);
  *(&xmmword_1000B3B80 + 12) = *(v2 + 12);
  return result;
}

double sub_10000F3B0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10008714C();
  v3 = MGGetSInt32Answer();

  v4 = sub_10008714C();
  v5 = MGGetStringAnswer();

  if (v5)
  {
    v6 = sub_10008715C();
    v8 = v7;
  }

  else
  {
    v8 = 0xE600000000000000;
    v6 = 0x4E574F4B4E55;
  }

  sub_10001092C(v6, v8, &v17);
  v9 = sub_10008714C();
  v10 = MGGetBoolAnswer();

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = sub_10008714C();
    v11 = MGGetBoolAnswer();
  }

  v13 = sub_100010D44(v3);
  v14 = sub_100010D68(v18, *(&v18 + 1), *v19, v19[8], *&v19[16], v19[24]);
  sub_1000877DC(18);
  v20._object = 0x800000010008E750;
  v20._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v20);
  sub_1000878DC();
  sub_100058430(0, 0xE000000000000000);

  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = *v19;
  result = *&v19[9];
  *(a1 + 41) = *&v19[9];
  *(a1 + 57) = v13;
  *(a1 + 58) = v14;
  *(a1 + 59) = v11;
  return result;
}

uint64_t sub_10000F5C4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10008782C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10000FEB8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10000F8C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4 == 0;
      if (v4)
      {
        v6 = 0x6C6C69662ELL;
      }

      else
      {
        v6 = 0x616373646E616C2ELL;
      }

      if (v5)
      {
        v7 = 0xEA00000000006570;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v11._countAndFlagsBits = v6;
      v11._object = v7;
      sub_1000871BC(v11);

      --v2;
    }

    while (v2);
  }

  v10 = sub_10000F9D8(a2);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000871BC(v12);

  return v10;
}

unint64_t sub_10000F9D8(char a1)
{
  result = 0x6F6C2E656C707061;
  switch(a1)
  {
    case 1:
      result = 0x7674656C707061;
      break;
    case 2:
      result = 0x63756F74646F7069;
      break;
    case 3:
      result = 0x656E6F687069;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 1684107369;
      break;
    case 6:
      result = 0x6D6F682E64617069;
      break;
    case 7:
      result = 0x63706F746B736564;
      break;
    case 8:
      result = 0x696E696D63616DLL;
      break;
    case 9:
      result = 0x696475747363616DLL;
      break;
    case 10:
      result = 0x672E6F727063616DLL;
      break;
    case 11:
      result = 0x672E6F727063616DLL;
      break;
    case 12:
      result = 0x672E6F727063616DLL;
      break;
    case 13:
      result = 0x6F63706F7470616CLL;
      break;
    case 14:
      result = 0x746177656C707061;
      break;
    case 15:
      result = 0x646F70656D6F68;
      break;
    case 16:
      result = 0x2E646F70656D6F68;
      break;
    case 17:
    case 18:
      result = 0x6D646F70656D6F68;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x6165707369666968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000FCBC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000F9D8(*a1);
  v5 = v4;
  if (v3 == sub_10000F9D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100087A1C();
  }

  return v8 & 1;
}

Swift::Int sub_10000FD44()
{
  v1 = *v0;
  sub_100087ADC();
  sub_10000F9D8(v1);
  sub_1000871AC();

  return sub_100087AFC();
}

uint64_t sub_10000FDA8()
{
  sub_10000F9D8(*v0);
  sub_1000871AC();
}

Swift::Int sub_10000FDFC()
{
  v1 = *v0;
  sub_100087ADC();
  sub_10000F9D8(v1);
  sub_1000871AC();

  return sub_100087AFC();
}

uint64_t sub_10000FE5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100012134();
  *a2 = result;
  return result;
}

unint64_t sub_10000FE8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000F9D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unsigned __int8 *sub_10000FEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10008720C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100010444();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10008782C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100010444()
{
  v0 = sub_10008721C();
  v4 = sub_1000104C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000104C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10008719C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10008768C();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10001061C(v9, 0);
  v12 = sub_100010690(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_10008719C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10008782C();
LABEL_4:

  return sub_10008719C();
}

void *sub_10001061C(uint64_t a1, uint64_t a2)
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

  sub_100001EEC(&qword_1000AE180, &qword_100089240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100010690(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000108B0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000871EC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10008782C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000108B0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000871CC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000108B0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000871FC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000871DC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_10001092C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100006660(0xD000000000000014, 0x800000010008E770);
  v7 = v6[2];
  if (!v7)
  {
    v11 = 0;
    v8 = 0xE600000000000000;
    v9 = 0x6E776F6B6E55;
    v12 = 1;
    goto LABEL_74;
  }

  v9 = v6[4];
  v8 = v6[5];
  v10 = v6;

  if (v7 == 1)
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_74;
  }

  result = v10;
  v14 = v10[6];
  v15 = v10[7];
  v16 = HIBYTE(v15) & 0xF;
  v17 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v11 = 0;
    v12 = 1;
    if (v7 >= 3)
    {
      goto LABEL_71;
    }

LABEL_74:

    result = 0;
    v43 = 1;
LABEL_75:
    LOBYTE(v46[0]) = v12 & 1;
    v47 = v43 & 1;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v9;
    *(a3 + 24) = v8;
    *(a3 + 32) = v11;
    *(a3 + 40) = v12 & 1;
    *(a3 + 48) = result;
    *(a3 + 56) = v43 & 1;
    return result;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v44 = v10[7];

    v22 = sub_10000FEB8(v14, v15, 10);
    v12 = v45;

    result = v10;
    goto LABEL_67;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_78;
    }

    v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v20 = *v19;
      if (v20 == 43)
      {
        if (v17 < 1)
        {
          goto LABEL_81;
        }

        v29 = v17 - 1;
        if (v17 == 1)
        {
          goto LABEL_65;
        }

        v22 = 0;
        if (v19)
        {
          v30 = v19 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_65;
            }

            v32 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_65;
            }

            ++v30;
            if (!--v29)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (v17 < 1)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v21 = v17 - 1;
        if (v17 == 1)
        {
          goto LABEL_65;
        }

        v22 = 0;
        if (v19)
        {
          v23 = v19 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_64;
            }
          }

LABEL_65:
          v22 = 0;
          LOBYTE(v19) = 1;
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_65;
        }

        v22 = 0;
        if (v19)
        {
          while (1)
          {
            v36 = *v19 - 48;
            if (v36 > 9)
            {
              goto LABEL_65;
            }

            v37 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_65;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_64;
            }
          }
        }
      }

LABEL_66:
      v47 = v19;
      v12 = v19;
LABEL_67:
      if (v12)
      {
        v11 = 0;
      }

      else
      {
        v11 = v22;
      }

      if (v7 < 3)
      {
        goto LABEL_74;
      }

LABEL_71:
      if (result[2] >= 3uLL)
      {
        v41 = result[8];
        v42 = result[9];

        result = sub_10000F5C4(v41, v42);
        goto LABEL_75;
      }

      __break(1u);
LABEL_78:
      v19 = sub_10008782C();
      result = v10;
    }
  }

  v46[0] = v10[6];
  v46[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v16)
      {
        v22 = 0;
        v38 = v46;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v16)
          {
LABEL_64:
            LOBYTE(v19) = 0;
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v16)
    {
      v19 = (v16 - 1);
      if (v16 != 1)
      {
        v22 = 0;
        v26 = v46 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_80;
  }

  if (v16)
  {
    v19 = (v16 - 1);
    if (v16 != 1)
    {
      v22 = 0;
      v33 = v46 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v19)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_100010D44(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_1000893B2[a1 - 1];
  }
}

uint64_t sub_100010D68(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
  v13 = v12;
  if (v12)
  {
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 4;
    }
  }

  else
  {
    v14 = sub_100087A1C();
    if ((v14 & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
    {
      return 4;
    }
  }

  if (v13)
  {
    if ((a4 & 1) != 0 || (a3 - 10) < 0xFFFFFFFFFFFFFFF8)
    {
      v15 = (a5 - 3) >= 0xFFFFFFFFFFFFFFFELL || (a5 - 6) >= 0xFFFFFFFFFFFFFFFELL;
      v16 = !v15;
      if (((a4 | a6) & 1 | (a3 != 10) || v16) && (a4 & 1 | (a3 != 12) || (a6 & 1) != 0 || a5 != 8) && (a4 & 1 | (a3 != 14) || (a6 & 1) != 0 || a5 != 6))
      {
        if ((a4 | a6) & 1 | (a3 != 10) | (a5 != 3))
        {
          result = 3;
          if ((((a4 | a6 | (a3 != 10) | (a5 != 6)) & (a4 | (a3 != 11)) & (a4 | (a3 != 12))) & ((a4 | (a3 != 13)) & (a4 | (a3 != 14))) & 1) == 0 || !(a4 & 1 | (a3 != 15)))
          {
            return result;
          }

          v18 = 0;
          goto LABEL_36;
        }

        return 3;
      }
    }

    return 4;
  }

  v23 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v23 & 1) != 0 && a3 == 2 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 3 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 4 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 5 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 6 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 7 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 8 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 9 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 1 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 2 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 4 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 5 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 12 && (a6 & 1) == 0 && a5 == 8 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 14 && (a6 & 1) == 0 && a5 == 6)
  {
    return 4;
  }

  if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 3 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 6 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 11 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 12 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 13 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 14 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 15)
  {
    return 3;
  }

  v18 = a1 == 0x6363416F69647541;
  if (a1 == 0x6363416F69647541 && a2 == 0xEE0079726F737365)
  {
    v18 = 1;
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 15;
    }

    goto LABEL_39;
  }

LABEL_36:
  if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 15;
  }

LABEL_39:
  if (v18 && a2 == 0xEE0079726F737365)
  {
    if ((a4 & 1) != 0 || a3 != 6)
    {
      if ((a4 & 1) != 0 || a3 != 5)
      {
        v19 = 0;
        v20 = a1 == 1684099177;
        goto LABEL_46;
      }

      return 17;
    }

    return 15;
  }

  v24 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v24 & 1) != 0 && a3 == 6)
  {
    return 15;
  }

  if ((sub_100087A1C() & v24 & 1) != 0 && a3 == 5)
  {
    return 17;
  }

  v19 = a2 == 0xE400000000000000;
  v20 = a1 == 1684099177;
  if (a1 == 1684099177 && a2 == 0xE400000000000000)
  {
    v22 = 1;
    v19 = 1;
    v20 = 1;
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 6;
    }

    goto LABEL_110;
  }

LABEL_46:
  v21 = sub_100087A1C();
  v22 = 0;
  if ((v21 & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 6;
  }

LABEL_110:
  if (!v20 || a2 != 0xE400000000000000)
  {
    v39 = v22;
    v29 = a4 ^ 1;
    if (((sub_100087A1C() & 1) == 0 || (v29 & 1) == 0 || a3 != 2) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 3) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 4) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 5) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 6) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 7) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 11) && ((sub_100087A1C() & 1) == 0 || (a4 & 1) != 0 || a3 != 12 || (a6 & 1) != 0 || a5 != 1) && ((sub_100087A1C() & 1) == 0 || (a4 & 1) != 0 || a3 != 12 || (a6 & 1) != 0 || a5 != 2))
    {
      if ((sub_100087A1C() & v29 & 1) != 0 && a3 == 8 || (sub_100087A1C() & v29 & 1) != 0 && a3 == 13 || (sub_100087A1C() & v29 & 1) != 0 && a3 == 14 || (sub_100087A1C() & v29 & 1) != 0 && a3 == 12)
      {
        return 5;
      }

      goto LABEL_188;
    }

    return 6;
  }

  v26 = (a3 - 8) < 0xFFFFFFFFFFFFFFFALL && a3 != 11;
  if ((a4 & 1) == 0 && !v26)
  {
    return 6;
  }

  v39 = v22;
  if ((a4 & 1) == 0 && a3 == 12 && (a6 & 1) == 0 && (a5 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    return 6;
  }

  v28 = (a3 & 0xFFFFFFFFFFFFFFFBLL) != 8 && (a3 - 15) < 0xFFFFFFFFFFFFFFFELL;
  if ((a4 & 1) == 0 && !v28)
  {
    return 5;
  }

LABEL_188:
  if (a1 == 1685016681 && v19)
  {
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 2;
    }
  }

  else if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 2;
  }

  if (a1 == 1685016681 && a2 == 0xE400000000000000)
  {
    v30 = 0;
    v32 = (a3 - 7) < 0xFFFFFFFFFFFFFFFBLL && a3 != 9;
    if ((a4 & 1) != 0 || v32)
    {
      goto LABEL_205;
    }

    return 2;
  }

  v33 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v33 & 1) != 0 && a3 == 2 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 3 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 4 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 5 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 6 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 9)
  {
    return 2;
  }

  v30 = a1 == 0x6F725063614DLL;
  if (a1 == 0x6F725063614DLL && a2 == 0xE600000000000000)
  {
    v30 = 1;
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 10;
    }

    goto LABEL_208;
  }

LABEL_205:
  if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 10;
  }

LABEL_208:
  if (v30 && a2 == 0xE600000000000000)
  {
    if ((a4 & 1) != 0 || (a3 - 7) < 0xFFFFFFFFFFFFFFFBLL)
    {
      if ((a4 & 1) == 0 && a3 == 6)
      {
        return 11;
      }

      if ((a4 & 1) == 0 && a3 == 7)
      {
        return 12;
      }

      if ((a4 & 1) == 0 && a3 == 13)
      {
        return 9;
      }

      goto LABEL_263;
    }

    return 10;
  }

  v34 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v34 & 1) != 0 && a3 == 2 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 3 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 4 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 5 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 6)
  {
    return 10;
  }

  if ((sub_100087A1C() & v34 & 1) != 0 && a3 == 6)
  {
    return 11;
  }

  if ((sub_100087A1C() & v34 & 1) != 0 && a3 == 7)
  {
    return 12;
  }

  if ((sub_100087A1C() & v34 & 1) != 0 && a3 == 13)
  {
    return 9;
  }

LABEL_263:
  if (a1 == 1667321193 && v19 || (sub_100087A1C() & 1) != 0 || a1 == 0x6F725063614D69 && a2 == 0xE700000000000000 || (sub_100087A1C() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x696E694D63614DLL && a2 == 0xE700000000000000 || (sub_100087A1C() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x416B6F6F4263614DLL && a2 == 0xEA00000000007269 || (sub_100087A1C() & 1) != 0)
  {
    return 13;
  }

  result = 13;
  if (a1 != 0x506B6F6F4263614DLL || a2 != 0xEA00000000006F72)
  {
    v35 = sub_100087A1C();
    v36 = v13 | v35;
    result = (v35 & 1) != 0 ? 13 : 3;
    if ((v36 & 1) == 0)
    {
      v37 = sub_100087A1C();
      v38 = v39 | v37;
      result = (v37 & 1) != 0 ? 3 : 5;
      if ((v38 & 1) == 0)
      {
        if (sub_100087A1C())
        {
          return 5;
        }

        if (a1 == 0x5654656C707041 && a2 == 0xE700000000000000 || (sub_100087A1C() & 1) != 0)
        {
          return 1;
        }

        else
        {
          result = 14;
          if (a1 != 0x6863746157 || a2 != 0xE500000000000000)
          {
            if (sub_100087A1C())
            {
              return 14;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceIcon(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceIcon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100011FC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100011FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100012024(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100012088()
{
  result = qword_1000AE188;
  if (!qword_1000AE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE188);
  }

  return result;
}

unint64_t sub_1000120E0()
{
  result = qword_1000AE190;
  if (!qword_1000AE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE190);
  }

  return result;
}

uint64_t sub_100012134()
{
  v0 = sub_100087A2C();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100012190()
{
  sub_10008739C();
  swift_getWitnessTable();
  sub_10008723C();
  return v1;
}

uint64_t sub_10001223C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a1 == 1)
  {
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    result = v5(a2);
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_100012298(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (result + 32);
  LOBYTE(result) = 1;
  do
  {
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      if (result)
      {
        if (*(a2 + 16))
        {
          break;
        }
      }

      result = 0;
      if (!--v2)
      {
        return result;
      }
    }

    result = v4 == *(a2 + 32);
    --v2;
  }

  while (v2);
  return result;
}

__n128 sub_1000122E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000122FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100012344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100012394(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000123A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000123F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100012440(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_100012454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_10001249C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000124F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100012504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10001254C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000125AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    sub_100012B4C();
    swift_allocError();
    *v3 = xmmword_1000893C0;
    return swift_willThrow();
  }

  else
  {
    v7 = *v1;
    v6 = *(v1 + 8);
    v8 = objc_allocWithZone(NSNumber);

    v9 = [v8 initWithBool:v2 & 1];
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_100072DE8(v9, v7, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v12;
  }

  return result;
}

unint64_t sub_1000126A0()
{
  result = qword_1000AE1D8;
  if (!qword_1000AE1D8)
  {
    sub_1000126F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE1D8);
  }

  return result;
}

unint64_t sub_1000126F8()
{
  result = qword_1000AE1E0;
  if (!qword_1000AE1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AE1E0);
  }

  return result;
}

uint64_t sub_100012744(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    v8 = a4;
    v23._countAndFlagsBits = 0x6E69616D6F44;
    v23._object = 0xE600000000000000;
    sub_1000871BC(v23);
    v9 = a2;
    v10 = [v8 domain];
    if (!v10)
    {
      sub_10008715C();
      v10 = sub_10008714C();
    }

    v11 = [objc_allocWithZone(NSString) initWithString:v10];

    v12 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    sub_100072DE8(v11, v9, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v20;

    v24._countAndFlagsBits = 1701080899;
    v24._object = 0xE400000000000000;
    sub_1000871BC(v24);
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v8, "code")}];
    v15 = *a1;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_100072DE8(v14, a2, a3, v16);

    *a1 = v21;
  }

  else
  {
    sub_100012B4C();
    swift_allocError();
    *v18 = xmmword_1000893C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100012960(uint64_t *a1)
{
  if (*(v1 + 24))
  {
    sub_100012B4C();
    swift_allocError();
    *v2 = xmmword_1000893C0;
    return swift_willThrow();
  }

  else
  {
    v6 = *(v1 + 8);
    v5 = *(v1 + 16);
    v7 = *v1;
    v8 = objc_allocWithZone(NSNumber);

    v9 = [v8 initWithInteger:v5];
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_100072DE8(v9, v7, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v12;
  }

  return result;
}

uint64_t sub_100012A50(uint64_t *a1)
{
  if (*(v1 + 20))
  {
    sub_100012B4C();
    swift_allocError();
    *v2 = xmmword_1000893C0;
    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 16);
    v7 = *v1;
    v6 = *(v1 + 8);
    v8 = objc_allocWithZone(NSNumber);

    LODWORD(v9) = v5;
    v10 = [v8 initWithFloat:v9];
    v11 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    sub_100072DE8(v10, v7, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v13;
  }

  return result;
}

unint64_t sub_100012B4C()
{
  result = qword_1000AE2A8;
  if (!qword_1000AE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE2A8);
  }

  return result;
}

uint64_t sub_100012BA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100012BB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100012BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100012C24(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100012C94()
{
  sub_1000871BC(v0[2]);
  v25._countAndFlagsBits = 34;
  v25._object = 0xE100000000000000;
  sub_1000871BC(v25);
  v1 = sub_10006EC0C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10006EC0C((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[16 * v3];
  *(v4 + 4) = 574451054;
  *(v4 + 5) = 0xE400000000000000;
  object = v0->_object;
  if (object)
  {
    countAndFlagsBits = v0->_countAndFlagsBits;
    sub_1000871BC(v0[1]);
    v26._countAndFlagsBits = 2629666;
    v26._object = 0xE300000000000000;
    sub_1000871BC(v26);
    v27._countAndFlagsBits = countAndFlagsBits;
    v27._object = object;
    sub_1000871BC(v27);
    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    sub_1000871BC(v28);
    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_10006EC0C((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v9 = &v1[16 * v8];
    *(v9 + 4) = 0x223D70756F7267;
    *(v9 + 5) = 0xE700000000000000;
  }

  v10 = v0[4]._object;
  if (v10)
  {
    v11 = v0[4]._countAndFlagsBits;
    sub_1000871BC(v0[5]);
    v29._countAndFlagsBits = 2629666;
    v29._object = 0xE300000000000000;
    sub_1000871BC(v29);
    v30._countAndFlagsBits = v11;
    v30._object = v10;
    sub_1000871BC(v30);
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    sub_1000871BC(v31);
    v13 = *(v1 + 2);
    v12 = *(v1 + 3);
    if (v13 >= v12 >> 1)
    {
      v1 = sub_10006EC0C((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 2) = v13 + 1;
    v14 = &v1[16 * v13];
    *(v14 + 4) = 0x223D72696170;
    *(v14 + 5) = 0xE600000000000000;
  }

  v15 = v0[6]._object;
  if (v15)
  {
    v16 = v0[6]._countAndFlagsBits;
    sub_1000871BC(v0[7]);
    v32._countAndFlagsBits = 2629666;
    v32._object = 0xE300000000000000;
    sub_1000871BC(v32);
    v33._countAndFlagsBits = v16;
    v33._object = v15;
    sub_1000871BC(v33);
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    sub_1000871BC(v34);
    v18 = *(v1 + 2);
    v17 = *(v1 + 3);
    if (v18 >= v17 >> 1)
    {
      v1 = sub_10006EC0C((v17 > 1), v18 + 1, 1, v1);
    }

    *(v1 + 2) = v18 + 1;
    v19 = &v1[16 * v18];
    *(v19 + 4) = 0x223D6D6F6F72;
    *(v19 + 5) = 0xE600000000000000;
  }

  sub_1000871BC(v0[3]);
  v21 = *(v1 + 2);
  v20 = *(v1 + 3);
  if (v21 >= v20 >> 1)
  {
    v1 = sub_10006EC0C((v20 > 1), v21 + 1, 1, v1);
  }

  *(v1 + 2) = v21 + 1;
  v22 = &v1[16 * v21];
  *(v22 + 4) = 1030513773;
  *(v22 + 5) = 0xE400000000000000;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100012FE8();
  v23 = sub_10008712C();

  return v23;
}

unint64_t sub_100012FE8()
{
  result = qword_1000AE2B8[0];
  if (!qword_1000AE2B8[0])
  {
    sub_100003200(&qword_1000AE2B0, &qword_10008D800);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE2B8);
  }

  return result;
}

void sub_100013050(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  swift_getWitnessTable();
  sub_10008756C();
  v3 = sub_1000867FC();
  if (v4 <= 0x3F)
  {
    v5 = *(v3 - 8) + 64;
    sub_10008767C();
    v6 = sub_1000867FC();
    if (v7 <= 0x3F)
    {
      v12 = *(v6 - 8) + 64;
      sub_100015600();
      if (v9 <= 0x3F)
      {
        v13 = *(v8 - 8) + 64;
        sub_100015650();
        if (v11 <= 0x3F)
        {
          v14 = *(v10 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100013210(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_1000875AC();
  if (!v26)
  {
    return sub_10008732C();
  }

  v48 = v26;
  v52 = sub_1000878BC();
  v39 = sub_1000878CC();
  sub_10008786C(v48);
  result = sub_10008759C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1000875EC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1000878AC();
      result = sub_1000875BC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100013670()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100013728()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_1000137DC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100013894()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_100013948()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100013A00()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1000877DC(43);
  v31._object = 0x800000010008E860;
  v31._countAndFlagsBits = 0xD000000000000029;
  sub_1000871BC(v31);
  v30 = sub_100013EC0();
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  swift_getWitnessTable();
  v10 = sub_10008756C();
  swift_getWitnessTable();
  sub_1000879FC();

  sub_100059B74(v28, v29, v3, &off_1000A7690);

  sub_100013EC0();
  v11 = sub_10008752C();

  if (v11)
  {
    return sub_1000137DC();
  }

  v27 = v7;
  v28 = sub_100013EC0();
  __chkstk_darwin(v28);
  *(&v27 - 2) = v8;
  *(&v27 - 1) = v9;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  v14 = sub_10008739C();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_100013210(sub_1000160A8, KeyPath, v10, v14, &type metadata for Never, WitnessTable, &protocol witness table for Never, v16);

  v28 = v17;
  __chkstk_darwin(v18);
  *(&v27 - 2) = v8;
  *(&v27 - 1) = v9;
  sub_10008739C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v19 = sub_10008724C();

  v20 = *(v1 + *(*v1 + 160));
  swift_unknownObjectRetain();
  sub_10008428C(v19, v20);
  swift_unknownObjectRelease();
  v21 = (v1 + *(*v1 + 144));
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];

    sub_1000783F8();
  }

  sub_100013894();
  sub_100079618();
  v24 = *(*v1 + 136);
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v27;
  sub_100016120(v25, v27);
  sub_100077A98(v26);

  sub_1000137DC();
}

uint64_t sub_100013ED4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_100013F88()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867EC();
  return sub_100013A00();
}

uint64_t sub_100014044(uint64_t a1)
{
  v2 = *v1;
  sub_100014190(a1);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  sub_10008739C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10008757C();
  sub_100013670();
  swift_getWitnessTable();
  sub_10008676C();
  sub_10008679C();

  return sub_1000143F8();
}

uint64_t sub_100014190(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1000485E8(a1);
  _s11DeviceModelVMa_0();
  sub_10008739C();
  type metadata accessor for CarrySettingsDetailViewModel();
  swift_getWitnessTable();
  v7 = sub_10008722C();

  v9 = 0;
  v19 = v7;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = *(*v2 + 160);
  for (i = (v10 + 63) >> 6; v12; result = sub_10008737C())
  {
    v15 = v9;
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(v6 + 56) + ((v15 << 9) | (8 * v16)));
    v18 = *(v2 + v13);

    swift_unknownObjectRetain();
    sub_10008428C(v17, v18);
    swift_unknownObjectRelease();
    sub_10008739C();
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= i)
    {

      return v19;
    }

    v12 = *(v6 + 64 + 8 * v15);
    ++v9;
    if (v12)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000143F8()
{
  v1 = *v0;
  sub_100059B74(0xD000000000000019, 0x800000010008E840, *v0, &off_1000A7690);
  sub_100013EC0();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  swift_getWitnessTable();
  sub_10008756C();
  swift_getWitnessTable();
  sub_1000873BC();
  sub_10001365C();
  sub_10008751C();

  return sub_100013F88();
}

uint64_t sub_100014574()
{
  v1[2] = v0;
  v1[3] = sub_1000873FC();
  v1[4] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100014610, v3, v2);
}

uint64_t sub_100014610()
{
  v1 = v0[2];
  v2 = sub_100013728();
  v0[7] = v2;
  if (v2)
  {
    v3 = v0[3];
    v0[8] = sub_1000873EC();
    v5 = sub_1000873DC();

    return _swift_task_switch(sub_1000146E8, v5, v4);
  }

  else
  {
    v6 = v0[4];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000146E8()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_100014754, v3, v4);
}

uint64_t sub_100014754()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000147B8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = *v1;
  sub_1000873FC();
  *(v2 + 40) = sub_1000873EC();
  v4 = sub_1000873DC();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return _swift_task_switch(sub_1000148A4, v4, v3);
}

uint64_t sub_1000148A4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 120);
  *(v0 + 64) = *(*(v0 + 16) + *(**(v0 + 16) + 160));
  v4 = *(v1 + 88);
  *(v0 + 72) = v4;
  v5 = *(v1 + 80);
  *(v0 + 80) = v5;
  if (v3 == 1)
  {
    v17 = (*(v4 + 40) + **(v4 + 40));
    v6 = *(*(v4 + 40) + 4);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    WitnessTable = swift_getWitnessTable();
    *v7 = v0;
    v7[1] = sub_100014B38;
    v9 = *(v0 + 16);
    v10 = v2;
    v11 = v5;
    v12 = v4;
    v13 = v17;
  }

  else
  {
    v18 = (*(v4 + 72) + **(v4 + 72));
    v14 = *(*(v4 + 72) + 4);
    v15 = swift_task_alloc();
    *(v0 + 112) = v15;
    WitnessTable = swift_getWitnessTable();
    *v15 = v0;
    v15[1] = sub_100014EC4;
    v9 = *(v0 + 16);
    v10 = v2;
    v11 = v5;
    v12 = v4;
    v13 = v18;
  }

  return v13(v9, v10, WitnessTable, v11, v12);
}

uint64_t sub_100014B38()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v12 = *(*v0 + 72);
  v3 = *v0;

  v4 = *(v12 + 48);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v3;
  v6[1] = sub_100014D20;
  v7 = v1[10];
  v8 = v1[9];
  v9 = v1[8];

  return v11(v7, v8);
}

uint64_t sub_100014D20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_10000EAF0;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_100014E4C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100014E4C()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[2];

  sub_100014044(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100014EC4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v4, v3);
}

uint64_t sub_100014FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = _s11DeviceModelVMa_0();
  sub_1000879DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  v12 = sub_1000872EC();
  (*(v9 + 16))(v13, a1, v8);
  sub_10008739C();
  v14 = *(a2 + *(*a2 + 160));
  swift_unknownObjectRetain();
  v15 = sub_10008428C(v12, v14);
  result = swift_unknownObjectRelease();
  *a3 = v15;
  return result;
}

uint64_t sub_1000151A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1000B3C40;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100015208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1000B3C40;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_100015274(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for CarrySettingsDetailViewModel();
  sub_10008739C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_10008727C() & 1;
}

uint64_t sub_10001532C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  swift_getWitnessTable();
  sub_10008756C();
  v4 = sub_1000867FC();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v1, v4);
  v6 = *(*v0 + 104);
  sub_10008767C();
  v7 = sub_1000867FC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 112);
  v9 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = v0 + *(*v0 + 120);
  v11 = *(v10 + 8);
  v12 = *(v10 + 24);

  v5(v0 + *(*v0 + 128), v4);
  sub_100016368(v0 + *(*v0 + 136));
  v13 = *(v0 + *(*v0 + 144) + 8);

  v14 = *(v0 + *(*v0 + 152));

  v15 = *(v0 + *(*v0 + 160));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100015590()
{
  sub_10001532C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_100015600()
{
  if (!qword_1000AE340)
  {
    v0 = sub_1000867FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE340);
    }
  }
}

void sub_100015650()
{
  if (!qword_1000AE348)
  {
    sub_10008642C();
    v0 = sub_10008767C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE348);
    }
  }
}

uint64_t sub_1000156BC()
{
  v1 = (v0 + *(*v0 + 120));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];

  return v2;
}

uint64_t sub_10001572C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_100014574();
}

uint64_t sub_1000157B8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_1000147B8(a1);
}

uint64_t sub_10001584C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10008676C();
  *a1 = result;
  return result;
}

uint64_t sub_10001589C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = *(*(sub_100001EEC(&qword_1000AE3E0, &unk_100089E60) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  sub_1000873FC();
  v2[9] = sub_1000873EC();
  v5 = sub_1000873DC();

  return _swift_task_switch(sub_100015994, v5, v4);
}

uint64_t sub_100015994()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  sub_1000877DC(22);
  v17._object = 0x800000010008E8C0;
  v17._countAndFlagsBits = 0xD000000000000014;
  sub_1000871BC(v17);
  v6 = sub_10008642C();
  sub_1000879EC();
  sub_100059B74(0, 0xE000000000000000, v4, &off_1000A7690);

  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(v2, v5, v6);
  v9 = *(v7 + 56);
  v9(v2, 0, 1, v6);
  v10 = *(*v3 + 136);
  swift_beginAccess();
  sub_1000162F8(v2, v3 + v10);
  swift_endAccess();
  if (sub_100013728())
  {
    v11 = v0[8];
    v8(v11, v0[5], v6);
    v9(v11, 0, 1, v6);
    sub_100077A98(v11);
  }

  v12 = v0[6];
  sub_100013948();
  if (sub_100013728())
  {
    sub_100079618();
  }

  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100015BC0()
{
  v1 = *v0;
  sub_1000877DC(37);
  v3._object = 0x800000010008E890;
  v3._countAndFlagsBits = 0xD000000000000023;
  sub_1000871BC(v3);
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  sub_100059B74(0, 0xE000000000000000, v1, &off_1000A7690);

  sub_100013948();
  result = sub_100013728();
  if (result)
  {
    sub_100079618();
  }

  return result;
}

uint64_t sub_100015CD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_10001589C(a1);
}

uint64_t sub_100015D70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000877FC();
  *a1 = result;
  return result;
}

uint64_t sub_100015D9C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_100015DB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100015E1C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100015E58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001365C();
  *a2 = result;
  return result;
}

uint64_t sub_100015E84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100013670();
}

uint64_t sub_100015EB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100013728();
  *a2 = result;
  return result;
}

uint64_t sub_100015EDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000137DC();
}

uint64_t sub_100015F08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100013EC0();
  *a2 = result;
  return result;
}

uint64_t sub_100015F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100013F88();
}

uint64_t sub_100015F60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100013894();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100015F90(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100013948();
}

uint64_t sub_100015FB8(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100015274(a1) & 1;
}

uint64_t sub_100015FDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100013EC0();
  *a2 = result;
  return result;
}

__n128 sub_10001602C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100016038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1000B3C40;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000160A8(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_100016120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016190@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100013728();
  *a2 = result;
  return result;
}

uint64_t sub_1000161BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000137DC();
}

uint64_t sub_1000161F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100013894();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100016224(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100013948();
}

uint64_t sub_100016258@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001365C();
  *a2 = result;
  return result;
}

uint64_t sub_10001629C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1000162F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016368(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100016438(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  a4(a3);
  sub_100001EEC(a5, a6);
  sub_10008716C();
  v8 = objc_allocWithZone(CULogHandle);
  v9 = sub_10008714C();
  v10 = sub_10008714C();

  v11 = [v8 initWithSubsystem:v9 category:v10];

  v12 = sub_10008714C();
  [v11 ulog:40 message:v12];
}

void sub_1000165B4()
{
  sub_100023B40(0, &qword_1000AE648, NSXPCConnection_ptr);
  sub_100001EEC(&qword_1000AE650, &qword_10008A0D8);
  sub_10008716C();
  v0 = objc_allocWithZone(CULogHandle);
  v1 = sub_10008714C();
  v2 = sub_10008714C();

  v3 = [v0 initWithSubsystem:v1 category:v2];

  v4 = sub_10008714C();
  [v3 ulog:40 message:v4];
}

void sub_1000166D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_100001EEC(a3, a4);
  sub_100001EEC(a5, a6);
  sub_10008716C();
  v8 = objc_allocWithZone(CULogHandle);
  v9 = sub_10008714C();
  v10 = sub_10008714C();

  v11 = [v8 initWithSubsystem:v9 category:v10];

  v12 = sub_10008714C();
  [v11 ulog:40 message:v12];
}

void sub_1000167FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100001EEC(a4, a5);
  sub_10008716C();
  v5 = objc_allocWithZone(CULogHandle);
  v6 = sub_10008714C();
  v7 = sub_10008714C();

  v8 = [v5 initWithSubsystem:v6 category:v7];

  v9 = sub_10008714C();
  [v8 ulog:40 message:v9];
}

uint64_t sub_100016950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E4A4(a3, v27 - v11, &qword_1000AEDC0, &qword_100088E40);
  v13 = sub_10008742C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000649C(v12, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000873DC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10008717C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100001EEC(&qword_1000AE510, &qword_100089C68);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100001EEC(&qword_1000AE510, &qword_100089C68);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100016C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E4A4(a3, v27 - v11, &qword_1000AEDC0, &qword_100088E40);
  v13 = sub_10008742C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000649C(v12, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000873DC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10008717C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100016F64()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v66 - v7;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1000877DC(43);

  v80 = 0xD000000000000029;
  v81 = 0x800000010008E860;
  v8 = type metadata accessor for NetworkManager();
  v78 = v8;
  v9 = sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager);
  v79 = v9;
  swift_getKeyPath();
  v76 = v8;
  v77 = v9;
  swift_getKeyPath();
  sub_1000867DC();

  v10 = sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
  sub_100006454(&qword_1000AE5C0, &qword_1000AE5B8, &unk_10008DD20);
  v69 = v10;
  v11 = sub_1000874CC();
  v13 = v12;

  v83._countAndFlagsBits = v11;
  v83._object = v13;
  sub_1000871BC(v83);

  v80 = v2;
  sub_100001EEC(&qword_1000AE5C8, &qword_100089E70);
  sub_10008716C();
  v14 = objc_allocWithZone(CULogHandle);
  v15 = sub_10008714C();
  v16 = sub_10008714C();

  v17 = [v14 initWithSubsystem:v15 category:v16];

  v18 = sub_10008714C();

  [v17 ulog:40 message:v18];

  v74 = v8;
  v75 = v9;
  swift_getKeyPath();
  v72 = v8;
  v73 = v9;
  swift_getKeyPath();
  sub_1000867DC();

  if ((v80 & 0xC000000000000001) != 0)
  {
    v19 = sub_10008772C();
  }

  else
  {
    v19 = *(v80 + 16);
  }

  __chkstk_darwin(v20);
  *(&v66 - 2) = v8;
  *(&v66 - 1) = v9;
  if (!v19)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v66 - 2) = v8;
    *(&v66 - 1) = v9;
    swift_getKeyPath();
    v80 = 0;

    return sub_1000867EC();
  }

  v21 = swift_getKeyPath();
  __chkstk_darwin(v21);
  *(&v66 - 2) = v8;
  *(&v66 - 1) = v9;
  swift_getKeyPath();
  v68 = v1;
  sub_1000867DC();

  v23 = v80;
  __chkstk_darwin(v22);
  v66 = v9;
  v67 = v8;
  *(&v66 - 2) = v8;
  *(&v66 - 1) = v9;
  swift_getKeyPath();

  v24 = sub_10001FEF4(v23);

  v26 = v24[2];
  if (!v26)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_25:

    v44 = v68;
    v45 = *(v68 + *(*v68 + 160));
    v46 = *(v69 + 48);
    v47 = *(v69 + 52);
    swift_allocObject();

    v48 = sub_10002024C(v28, v45);

    v50 = (v44 + *(*v44 + 144));
    v51 = v50[1];
    v53 = v66;
    v52 = v67;
    if (v51)
    {
      v54 = *v50;
      __chkstk_darwin(v49);
      *(&v66 - 2) = v52;
      *(&v66 - 1) = v53;
      v55 = swift_getKeyPath();
      __chkstk_darwin(v55);
      *(&v66 - 2) = v52;
      *(&v66 - 1) = v53;
      swift_getKeyPath();
      v80 = v54;
      v81 = v51;

      v49 = sub_1000867EC();
    }

    __chkstk_darwin(v49);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    v56 = swift_getKeyPath();
    __chkstk_darwin(v56);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    swift_getKeyPath();
    sub_1000867DC();

    v58 = v80;
    __chkstk_darwin(v57);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    v59 = swift_getKeyPath();
    __chkstk_darwin(v59);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    swift_getKeyPath();
    LOBYTE(v80) = v58;

    sub_1000867EC();
    v60 = *(*v44 + 136);
    swift_beginAccess();
    v61 = v70;
    v62 = sub_10000E4A4(v44 + v60, v70, &qword_1000AE3E0, &unk_100089E60);
    __chkstk_darwin(v62);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    v63 = swift_getKeyPath();
    __chkstk_darwin(v63);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    swift_getKeyPath();
    sub_10000E4A4(v61, v71, &qword_1000AE3E0, &unk_100089E60);

    sub_1000867EC();
    v64 = sub_10000649C(v61, &qword_1000AE3E0, &unk_100089E60);
    __chkstk_darwin(v64);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    v65 = swift_getKeyPath();
    __chkstk_darwin(v65);
    *(&v66 - 2) = v52;
    *(&v66 - 1) = v53;
    swift_getKeyPath();
    v82 = v48;

    return sub_1000867EC();
  }

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  while (v27 < v24[2])
  {
    v29 = v24[v27 + 4];
    v30 = *(v29 + 16);
    v31 = v28[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_30;
    }

    v33 = v24[v27 + 4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v32 <= v28[3] >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v35 = v31 + v30;
      }

      else
      {
        v35 = v31;
      }

      v28 = sub_10006EE1C(isUniquelyReferenced_nonNull_native, v35, 1, v28);
      if (*(v29 + 16))
      {
LABEL_19:
        v36 = (v28[3] >> 1) - v28[2];
        result = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
        v37 = *(result - 8);
        if (v36 < v30)
        {
          goto LABEL_32;
        }

        v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v39 = *(v37 + 72);
        swift_arrayInitWithCopy();

        if (v30)
        {
          v40 = v28[2];
          v41 = __OFADD__(v40, v30);
          v42 = v40 + v30;
          if (v41)
          {
            goto LABEL_33;
          }

          v28[2] = v42;
        }

        goto LABEL_8;
      }
    }

    if (v30)
    {
      goto LABEL_31;
    }

LABEL_8:
    if (v26 == ++v27)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1000179E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_1000873FC();
  v6[16] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[17] = v8;
  v6[18] = v7;

  return _swift_task_switch(sub_100017A7C, v8, v7);
}

uint64_t sub_100017A7C()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager);
    v4 = *(v3 + 32);
    v5 = type metadata accessor for NetworkManager();
    v11 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_100017C38;
    v8 = v0[14];

    return v11(v5, v3);
  }

  else
  {
    v10 = v0[14];

    return _swift_task_switch(sub_100017F04, v10, 0);
  }
}

uint64_t sub_100017C38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return _swift_task_switch(sub_100017D60, v5, v4);
}

uint64_t sub_100017D60()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[13];
  v0[11] = v0[21];
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  sub_100001EEC(&qword_1000AE5A8, &qword_100089DA8);
  sub_100006454(&qword_1000AE5B0, &qword_1000AE5A8, &qword_100089DA8);
  v6 = sub_10008682C();

  v7 = *(*v1 + 152);
  v8 = *(v1 + v7);
  *(v1 + v7) = v6;

  v9 = v0[14];

  return _swift_task_switch(sub_100017F04, v9, 0);
}