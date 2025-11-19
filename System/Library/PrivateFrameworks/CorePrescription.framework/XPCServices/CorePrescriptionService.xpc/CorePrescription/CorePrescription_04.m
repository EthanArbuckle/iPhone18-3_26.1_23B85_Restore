unint64_t CRXCEnrollmentData.description.getter()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  v3 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  if (v3 >> 60 != 15)
  {
    v6 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
    sub_10000D808(v6, v3);
    sub_100081698(35);

    v26 = 0xD000000000000014;
    sub_10003D7BC(v6, v3);
    sub_100006940(&qword_1000B7530, &qword_100089380);
    sub_100006988();
    v7 = sub_100081248();
    v9 = v8;

    v27._countAndFlagsBits = v7;
    v27._object = v9;
    sub_1000813B8(v27);

    v28._countAndFlagsBits = 0x203A656D616E202CLL;
    v28._object = 0xE900000000000022;
    sub_1000813B8(v28);
    v22 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName);
    v24 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8);

    sub_100006940(&qword_1000B88A8, &unk_1000868A0);
    v29._countAndFlagsBits = sub_100081338();
    sub_1000813B8(v29);

    v30._countAndFlagsBits = 10530;
    v30._object = 0xE200000000000000;
    sub_1000813B8(v30);
    v10 = v6;
LABEL_6:
    sub_10001A164(v10, v3);
    return v26;
  }

  v3 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  if (v3 >> 60 != 15)
  {
    v4 = (v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
    v5 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
    if (v5 >> 60 != 15)
    {
      v12 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
      v13 = *v4;
      v20 = *v4;
      v21 = v12;
      sub_10001622C(v12, v3);
      sub_10001622C(v13, v5);
      sub_100081698(46);

      v26 = 0xD000000000000015;
      sub_10003D7BC(v12, v3);
      sub_100006940(&qword_1000B7530, &qword_100089380);
      sub_100006988();
      v14 = sub_100081248();
      v16 = v15;

      v31._countAndFlagsBits = v14;
      v31._object = v16;
      sub_1000813B8(v31);

      v32._countAndFlagsBits = 0x203A52636361202CLL;
      v32._object = 0xE800000000000000;
      sub_1000813B8(v32);
      sub_10003D7BC(v20, v5);
      v17 = sub_100081248();
      v19 = v18;

      v33._countAndFlagsBits = v17;
      v33._object = v19;
      sub_1000813B8(v33);

      v34._countAndFlagsBits = 0x203A656D616E202CLL;
      v34._object = 0xE900000000000022;
      sub_1000813B8(v34);
      v23 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName);
      v25 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8);

      sub_100006940(&qword_1000B88A8, &unk_1000868A0);
      v35._countAndFlagsBits = sub_100081338();
      sub_1000813B8(v35);

      v36._countAndFlagsBits = 10530;
      v36._object = 0xE200000000000000;
      sub_1000813B8(v36);
      sub_10001A164(v20, v5);
      v10 = v21;
      goto LABEL_6;
    }
  }

  return v2;
}

Swift::Void __swiftcall CRXCEnrollmentData.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v5 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    sub_10000D808(*v4, v5);
    isa = sub_100080CC8().super.isa;
    v8 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

    sub_10001A164(v6, v5);
  }

  v9 = (v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v10 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  if (v10 >> 60 != 15)
  {
    v11 = *v9;
    sub_10000D808(*v9, *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8));
    v12 = sub_100080CC8().super.isa;
    v13 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

    sub_10001A164(v11, v10);
  }

  v14 = (v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  v15 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
  if (v15 >> 60 != 15)
  {
    v16 = *v14;
    sub_10000D808(*v14, *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8));
    v17 = sub_100080CC8().super.isa;
    v18 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

    sub_10001A164(v16, v15);
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8))
  {
    v19 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName);
    v20 = sub_100081288();
    v21 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
  }

  v22 = sub_100080D48().super.isa;
  v23 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8))
  {
    v24 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft);
    v25 = sub_100081288();
    v26 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8))
  {
    v27 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight);
    v28 = sub_100081288();
    v29 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
  }
}

id CRXCEnrollmentData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v65 - v6;
  v8 = sub_100080D98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr);
  v16 = sub_1000815E8();
  if (!v16 || (v17 = v16, (*(v9 + 56))(v7, 1, 1, v8), sub_10005DA4C(), sub_1000817F8(), v17, (*(v9 + 48))(v7, 1, v8) == 1))
  {

    type metadata accessor for CRXCEnrollmentData();
    v18 = *((swift_isaMask & *v1) + 0x30);
    v19 = *((swift_isaMask & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v21 = *(v9 + 32);
  v21(v13, v7, v8);
  v21(v15, v13, v8);
  (*(v9 + 16))(&v1[OBJC_IVAR___CRXCEnrollmentData_issueDate], v15, v8);
  v22 = sub_100081288();
  v23 = [a1 containsValueForKey:v22];

  if (v23 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v24 = sub_1000815E8()) != 0) && (v65 = xmmword_100084890, v25 = v24, sub_100080CE8(), v25, v26 = *(&v65 + 1), *(&v65 + 1) >> 60 != 15))
  {
    v27 = v65;
  }

  else
  {
    v27 = 0;
    v26 = 0xF000000000000000;
  }

  v28 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v28 = v27;
  *(v28 + 1) = v26;
  v29 = sub_100081288();
  v30 = [a1 containsValueForKey:v29];

  if (v30 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v31 = sub_1000815E8()) != 0) && (v65 = xmmword_100084890, v32 = v31, sub_100080CE8(), v32, v33 = *(&v65 + 1), *(&v65 + 1) >> 60 != 15))
  {
    v34 = v65;
  }

  else
  {
    v34 = 0;
    v33 = 0xF000000000000000;
  }

  v35 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v35 = v34;
  *(v35 + 1) = v33;
  v36 = sub_100081288();
  v37 = [a1 containsValueForKey:v36];

  if (v37 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v38 = sub_1000815E8()) != 0) && (v65 = xmmword_100084890, v39 = v38, sub_100080CE8(), v39, v40 = *(&v65 + 1), *(&v65 + 1) >> 60 != 15))
  {
    v41 = v65;
  }

  else
  {
    v41 = 0;
    v40 = 0xF000000000000000;
  }

  v42 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v42 = v41;
  *(v42 + 1) = v40;
  v43 = sub_100081288();
  v44 = [a1 containsValueForKey:v43];

  if (v44 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v45 = sub_1000815E8()) != 0) && (v65 = 0uLL, v46 = v45, sub_1000812A8(), v46, (v47 = *(&v65 + 1)) != 0))
  {
    v48 = &v2[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
    *v48 = v65;
    *(v48 + 1) = v47;
  }

  else
  {
    v49 = &v2[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
    *v49 = 0;
    *(v49 + 1) = 0;
  }

  v50 = sub_100081288();
  v51 = [a1 containsValueForKey:v50];

  if (v51 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v52 = sub_1000815E8()) != 0) && (v65 = 0uLL, v53 = v52, sub_1000812A8(), v53, (v54 = *(&v65 + 1)) != 0))
  {
    v55 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
    *v55 = v65;
    *(v55 + 1) = v54;
  }

  else
  {
    v56 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
    *v56 = 0;
    *(v56 + 1) = 0;
  }

  v57 = sub_100081288();
  v58 = [a1 containsValueForKey:v57];

  if (!v58)
  {
    (*(v9 + 8))(v15, v8);
LABEL_31:
    v62 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
    *v62 = 0;
    *(v62 + 1) = 0;
    goto LABEL_32;
  }

  sub_10000DC18(0, &qword_1000B8110, NSString_ptr);
  v59 = sub_1000815E8();
  (*(v9 + 8))(v15, v8);
  if (!v59)
  {
    goto LABEL_31;
  }

  v65 = 0uLL;
  sub_1000812A8();

  v60 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
    goto LABEL_31;
  }

  v61 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v61 = v65;
  *(v61 + 1) = v60;
LABEL_32:
  v63 = type metadata accessor for CRXCEnrollmentData();
  v66.receiver = v2;
  v66.super_class = v63;
  v64 = objc_msgSendSuper2(&v66, "init");

  return v64;
}

id CRXCEnrollmentData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005D728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14.super.isa = sub_100080CC8().super.isa;
  if (a4)
  {
    v15 = sub_100081288();
  }

  else
  {
    v15 = 0;
  }

  v16.super.isa = sub_100080D48().super.isa;
  if (!a7)
  {
    v17 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v17 = sub_100081288();

  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = sub_100081288();

LABEL_9:
  v19 = [v10 initWithAccPayload:v14.super.isa accPayloadLeft:0 accPayloadRight:0 enrollmentName:v15 issueDate:v16.super.isa calibrationDataLeft:v17 calibrationDataRight:v18];

  v20 = sub_100080D98();
  (*(*(v20 - 8) + 8))(a5, v20);
  return v19;
}

id sub_10005D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v15.super.isa = sub_100080CC8().super.isa;
  v16.super.isa = sub_100080CC8().super.isa;
  if (a6)
  {
    v17 = sub_100081288();
  }

  else
  {
    v17 = 0;
  }

  v18.super.isa = sub_100080D48().super.isa;
  if (!a9)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v19 = sub_100081288();

  if (!a11)
  {
    goto LABEL_8;
  }

LABEL_6:
  v20 = sub_100081288();

LABEL_9:
  v21 = [v12 initWithAccPayload:0 accPayloadLeft:v15.super.isa accPayloadRight:v16.super.isa enrollmentName:v17 issueDate:v18.super.isa calibrationDataLeft:v19 calibrationDataRight:v20];

  v22 = sub_100080D98();
  (*(*(v22 - 8) + 8))(a7, v22);
  return v21;
}

uint64_t type metadata accessor for CRXCEnrollmentData()
{
  result = qword_1000B8900;
  if (!qword_1000B8900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005DA4C()
{
  result = qword_1000B88C0;
  if (!qword_1000B88C0)
  {
    sub_100080D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88C0);
  }

  return result;
}

uint64_t sub_10005DAAC()
{
  result = sub_100080D98();
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

uint64_t CRXCEnrollmentGroup.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6D6574737973;
    }

    if (a1 == 3)
    {
      return 7958113;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 1919251317;
    }
  }

  result = sub_1000818C8();
  __break(1u);
  return result;
}

uint64_t sub_10005DBF4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 == 1)
    {
      return 1919251317;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x6D6574737973;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  return 7958113;
}

unint64_t sub_10005DC98()
{
  result = qword_1000B8910;
  if (!qword_1000B8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8910);
  }

  return result;
}

uint64_t sub_10005DCFC(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        return 0x7365742D74696E75;
      }

      if (a1 == 6)
      {
        return 0x79732D64756F6C63;
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      return 0x6E6961686379654BLL;
    }

    else
    {
      return 1819242356;
    }
  }

  else
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (!a1)
      {
        return 0x6E6163732D636361;
      }

LABEL_18:
      result = sub_1000818C8();
      __break(1u);
      return result;
    }

    if (a1 == 1)
    {
      return 0x6174536B63697551;
    }

    else
    {
      return 0x694B68746C616548;
    }
  }
}

uint64_t CRXCEnrollmentRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  return v1;
}

uint64_t CRXCEnrollmentRecord.accPayloadLeft.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  return v1;
}

Class sub_10005DF6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_10000D808(*v3, *(v3 + 8));
    isa = sub_100080CC8().super.isa;
    sub_10001A164(v6, v4);
    v5 = isa;
  }

  return v5;
}

uint64_t CRXCEnrollmentRecord.accPayloadRight.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  return v1;
}

Class sub_10005E054(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100080D98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10.super.isa = sub_100080D48().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

uint64_t sub_10005E16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_100080D98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CRXCEnrollmentRecord.factoryCalibrationDataLeft.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8);

  return v1;
}

uint64_t CRXCEnrollmentRecord.factoryCalibrationDataRight.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8);

  return v1;
}

uint64_t CRXCEnrollmentRecord.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8);

  return v1;
}

uint64_t CRXCEnrollmentRecord.userID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8);

  return v1;
}

void *CRXCEnrollmentRecord.prescriptionOD.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  v2 = v1;
  return v1;
}

void *CRXCEnrollmentRecord.prescriptionOS.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  v2 = v1;
  return v1;
}

void *CRXCEnrollmentRecord.sphericalDiopterRange.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
  v2 = v1;
  return v1;
}

uint64_t CRXCEnrollmentRecord.isEqual(_:)(uint64_t a1)
{
  v3 = sub_100080D98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v57[-v10];
  v12 = sub_100006940(&qword_1000B8930, &unk_100086A48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v57[-v14];
  sub_10001A8DC(a1, v63, &qword_1000B75E0, &qword_1000856D0);
  if (!v64)
  {
    v22 = &qword_1000B75E0;
    v23 = &qword_1000856D0;
    v24 = v63;
LABEL_8:
    sub_10001A80C(v24, v22, v23);
    goto LABEL_48;
  }

  v16 = type metadata accessor for CRXCEnrollmentRecord();
  if (swift_dynamicCast())
  {
    v17 = v62;
    v61.receiver = v1;
    v61.super_class = v16;
    if (!objc_msgSendSuper2(&v61, "isEqual:", v62))
    {
      goto LABEL_47;
    }

    v59 = v4;
    v60 = v17;
    v19 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
    v18 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8];
    v20 = *&v17[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
    v21 = *&v17[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8];
    if (v18 >> 60 == 15)
    {
      if (v21 >> 60 != 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v20, v21);
      sub_10001622C(v19, v18);
      sub_10001A164(v19, v18);
    }

    else
    {
      if (v21 >> 60 == 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v20, v21);
      sub_10001622C(v20, v21);
      sub_10001622C(v19, v18);
      v58 = sub_10000DAB0(v19, v18, v20, v21);
      sub_10001A164(v20, v21);
      sub_10001A164(v20, v21);
      sub_10001A164(v19, v18);
      if ((v58 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v19 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
    v18 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8];
    v20 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
    v21 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8];
    if (v18 >> 60 == 15)
    {
      if (v21 >> 60 != 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v20, v21);
      sub_10001622C(v19, v18);
      sub_10001A164(v19, v18);
    }

    else
    {
      if (v21 >> 60 == 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v20, v21);
      sub_10001622C(v20, v21);
      sub_10001622C(v19, v18);
      v58 = sub_10000DAB0(v19, v18, v20, v21);
      sub_10001A164(v20, v21);
      sub_10001A164(v20, v21);
      sub_10001A164(v19, v18);
      if ((v58 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v19 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
    v18 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8];
    v20 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
    v21 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8];
    if (v18 >> 60 == 15)
    {
      if (v21 >> 60 == 15)
      {
        sub_10001622C(v20, v21);
        sub_10001622C(v19, v18);
        sub_10001A164(v19, v18);
LABEL_22:
        v17 = v60;
        if ((sub_100080D68() & 1) == 0 || (sub_100080D68() & 1) == 0)
        {
          goto LABEL_47;
        }

        v25 = OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate;
        v26 = *(v12 + 48);
        sub_10001A8DC(&v1[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], v15, &unk_1000B88B0, &qword_100086A40);
        sub_10001A8DC(&v17[v25], &v15[v26], &unk_1000B88B0, &qword_100086A40);
        v27 = v59;
        v28 = *(v59 + 48);
        if (v28(v15, 1, v3) == 1)
        {
          if (v28(&v15[v26], 1, v3) == 1)
          {
            sub_10001A80C(v15, &unk_1000B88B0, &qword_100086A40);
LABEL_32:
            v31 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];
            v32 = *&v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];
            if (v31)
            {
              if (!v32 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft] != *&v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft] || v31 != v32) && (sub_100081888() & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            else if (v32)
            {
              goto LABEL_47;
            }

            v33 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];
            v34 = *&v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];
            if (v33)
            {
              if (!v34 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight] != *&v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight] || v33 != v34) && (sub_100081888() & 1) == 0)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }

            if (!v34)
            {
LABEL_46:
              if (v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] != v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated])
              {
                goto LABEL_47;
              }

              v37 = v1;
              v38 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];
              v39 = *&v17[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];
              if (v38)
              {
                if (!v39 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber] != *&v17[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber] || v38 != v39) && (sub_100081888() & 1) == 0)
                {
                  goto LABEL_79;
                }
              }

              else if (v39)
              {
                goto LABEL_79;
              }

              if (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_lensType] == *&v60[OBJC_IVAR___CRXCEnrollmentRecord_lensType])
              {
                v40 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];
                v41 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];
                if (v40)
                {
                  if (!v41 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_userID] != *&v60[OBJC_IVAR___CRXCEnrollmentRecord_userID] || v40 != v41) && (sub_100081888() & 1) == 0)
                  {
                    goto LABEL_79;
                  }
                }

                else if (v41)
                {
                  goto LABEL_79;
                }

                if (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_source] == *&v60[OBJC_IVAR___CRXCEnrollmentRecord_source])
                {
                  v42 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD];
                  v43 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD];
                  if (v42)
                  {
                    if (!v43)
                    {
                      goto LABEL_79;
                    }

                    type metadata accessor for CRXCPrescriptionValues();
                    v44 = v43;
                    v45 = v42;
                    v46 = sub_1000815F8();

                    if ((v46 & 1) == 0)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (v43)
                  {
                    goto LABEL_79;
                  }

                  v47 = *&v37[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS];
                  v48 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS];
                  if (v47)
                  {
                    if (!v48)
                    {
                      goto LABEL_79;
                    }

                    type metadata accessor for CRXCPrescriptionValues();
                    v49 = v48;
                    v50 = v47;
                    v51 = sub_1000815F8();

                    if ((v51 & 1) == 0)
                    {
                      goto LABEL_79;
                    }

LABEL_76:
                    v52 = *&v37[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange];
                    v53 = *&v60[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange];
                    if (!v52)
                    {
                      v56 = v53;

                      if (!v53)
                      {
                        v35 = 1;
                        return v35 & 1;
                      }

                      goto LABEL_48;
                    }

                    if (v53)
                    {
                      type metadata accessor for CRXCDiopterRange();
                      v54 = v53;
                      v55 = v52;
                      v35 = sub_1000815F8();

                      return v35 & 1;
                    }

                    goto LABEL_79;
                  }

                  if (!v48)
                  {
                    goto LABEL_76;
                  }
                }
              }

LABEL_79:

              goto LABEL_48;
            }

LABEL_47:

            goto LABEL_48;
          }
        }

        else
        {
          sub_10001A8DC(v15, v11, &unk_1000B88B0, &qword_100086A40);
          if (v28(&v15[v26], 1, v3) != 1)
          {
            (*(v27 + 32))(v7, &v15[v26], v3);
            sub_100061408(&qword_1000B8938);
            v29 = sub_100081258();
            v30 = *(v27 + 8);
            v30(v7, v3);
            v30(v11, v3);
            sub_10001A80C(v15, &unk_1000B88B0, &qword_100086A40);
            if ((v29 & 1) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_32;
          }

          (*(v27 + 8))(v11, v3);
        }

        v22 = &qword_1000B8930;
        v23 = &unk_100086A48;
        v24 = v15;
        goto LABEL_8;
      }
    }

    else if (v21 >> 60 != 15)
    {
      sub_10001622C(v20, v21);
      sub_10001622C(v20, v21);
      sub_10001622C(v19, v18);
      v58 = sub_10000DAB0(v19, v18, v20, v21);
      sub_10001A164(v20, v21);
      sub_10001A164(v20, v21);
      sub_10001A164(v19, v18);
      if ((v58 & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_22;
    }

LABEL_20:
    sub_10001622C(v20, v21);
    sub_10001622C(v19, v18);

    sub_10001A164(v19, v18);
    sub_10001A164(v20, v21);
  }

LABEL_48:
  v35 = 0;
  return v35 & 1;
}

uint64_t type metadata accessor for CRXCEnrollmentRecord()
{
  result = qword_1000B8978;
  if (!qword_1000B8978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRXCEnrollmentRecord.description.getter()
{
  sub_100081698(188);
  v21._countAndFlagsBits = 0xD000000000000017;
  v21._object = 0x80000001000952B0;
  sub_1000813B8(v21);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid));
  v22._countAndFlagsBits = 0x203A656D616E202CLL;
  v22._object = 0xE900000000000022;
  sub_1000813B8(v22);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName));
  v23._countAndFlagsBits = 0x70756F7267202C22;
  v23._object = 0xEA0000000000203ALL;
  sub_1000813B8(v23);
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0xE400000000000000;
      v3._countAndFlagsBits = 1701736302;
      goto LABEL_10;
    }

    if (v1 == 1)
    {
      v2 = 0xE400000000000000;
      v3._countAndFlagsBits = 1919251317;
      goto LABEL_10;
    }

LABEL_38:
    v19 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
LABEL_40:
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  if (v1 == 2)
  {
    v2 = 0xE600000000000000;
    v3._countAndFlagsBits = 0x6D6574737973;
    goto LABEL_10;
  }

  if (v1 != 3)
  {
    goto LABEL_38;
  }

  v2 = 0xE300000000000000;
  v3._countAndFlagsBits = 7958113;
LABEL_10:
  v3._object = v2;
  sub_1000813B8(v3);

  v24._countAndFlagsBits = 0x3A726F6C6F63202CLL;
  v24._object = 0xE900000000000020;
  sub_1000813B8(v24);
  v18 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor);
  v25._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v25);

  v26._countAndFlagsBits = 0x656C65537369202CLL;
  v26._object = 0xEE00203A64657463;
  sub_1000813B8(v26);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1000813B8(v4);

  v27._countAndFlagsBits = 0x446575737369202CLL;
  v27._object = 0xED0000203A657461;
  sub_1000813B8(v27);
  sub_100080D98();
  sub_100061408(&qword_1000B8940);
  v28._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v28);

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x80000001000952D0;
  sub_1000813B8(v29);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated))
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_1000813B8(v6);

  v30._object = 0x80000001000952F0;
  v30._countAndFlagsBits = 0xD000000000000011;
  sub_1000813B8(v30);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8))
  {
    v8 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    v9 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8);
  }

  else
  {
    v8 = 7104878;
    v9 = 0xE300000000000000;
  }

  v31._countAndFlagsBits = v8;
  v31._object = v9;
  sub_1000813B8(v31);

  v32._countAndFlagsBits = 0x54736E656C202C22;
  v32._object = 0xED0000203A657079;
  sub_1000813B8(v32);
  v10 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 0xE900000000000072;
      v12._countAndFlagsBits = 0x65706F6C65766564;
      goto LABEL_34;
    }

    if (v10 == 3)
    {
      v11 = 0xE800000000000000;
      v12._countAndFlagsBits = 0x6C616E6F73726570;
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE600000000000000;
      v12._countAndFlagsBits = 0x726564616572;
      goto LABEL_34;
    }

LABEL_39:
    v20 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
    goto LABEL_40;
  }

  v11 = 0xE400000000000000;
  v12._countAndFlagsBits = 1869440356;
LABEL_34:
  v12._object = v11;
  sub_1000813B8(v12);

  v33._countAndFlagsBits = 0x444972657375202CLL;
  v33._object = 0xEA0000000000203ALL;
  sub_1000813B8(v33);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8))
  {
    v13 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    v14 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8);
  }

  else
  {
    v13 = 7104878;
    v14 = 0xE300000000000000;
  }

  v34._countAndFlagsBits = v13;
  v34._object = v14;
  sub_1000813B8(v34);

  v35._countAndFlagsBits = 0x656372756F73202CLL;
  v35._object = 0xEA0000000000203ALL;
  sub_1000813B8(v35);
  v36._countAndFlagsBits = sub_10005DCFC(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_source));
  sub_1000813B8(v36);

  v37._countAndFlagsBits = 0x203A444F202CLL;
  v37._object = 0xE600000000000000;
  sub_1000813B8(v37);
  v15 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  sub_100006940(&qword_1000B8948, &qword_100086A58);
  v38._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v38);

  v39._countAndFlagsBits = 0x203A534F202CLL;
  v39._object = 0xE600000000000000;
  sub_1000813B8(v39);
  v16 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  v40._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v40);

  v41._countAndFlagsBits = 41;
  v41._object = 0xE100000000000000;
  sub_1000813B8(v41);
  return 0;
}

Swift::Void __swiftcall CRXCEnrollmentRecord.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v61 - v6;
  v8 = sub_100080D98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v1 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  v14 = *(v1 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8);
  if (v14 >> 60 != 15)
  {
    v15 = *v13;
    sub_10000D808(*v13, v14);
    isa = sub_100080CC8().super.isa;
    v17 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:isa forKey:v17];

    sub_10001A164(v15, v14);
  }

  v18 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  v19 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8);
  if (v19 >> 60 != 15)
  {
    v20 = *v18;
    sub_10000D808(*v18, *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
    v21 = sub_100080CC8().super.isa;
    v22 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

    sub_10001A164(v20, v19);
  }

  v23 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  v24 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8);
  if (v24 >> 60 != 15)
  {
    v25 = *v23;
    sub_10000D808(*v23, *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
    v26 = sub_100080CC8().super.isa;
    v27 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

    sub_10001A164(v25, v24);
  }

  v28 = sub_100080D48().super.isa;
  v29 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  v30 = sub_100080D48().super.isa;
  v31 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];

  sub_10001A8DC(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, v7, &unk_1000B88B0, &qword_100086A40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001A80C(v7, &unk_1000B88B0, &qword_100086A40);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v32 = sub_100080D48().super.isa;
    v33 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];

    (*(v9 + 8))(v12, v8);
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8))
  {
    v34 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);
    v35 = sub_100081288();
    v36 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8))
  {
    v37 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);
    v38 = sub_100081288();
    v39 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v38 forKey:v39];
  }

  v40 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated);
  v41 = sub_100081288();
  [(objc_class *)with.super.isa encodeBool:v40 forKey:v41];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8))
  {
    v42 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    v43 = sub_100081288();
    v44 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v43 forKey:v44];
  }

  v45 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
  v46 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v45 forKey:v46];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8))
  {
    v47 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    v48 = sub_100081288();
    v49 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v48 forKey:v49];
  }

  v50 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_source);
  v51 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v50 forKey:v51];

  v52 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  if (v52)
  {
    v53 = v52;
    v54 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v53 forKey:v54];
  }

  v55 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  if (v55)
  {
    v56 = v55;
    v57 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v56 forKey:v57];
  }

  v58 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
  if (v58)
  {
    v59 = v58;
    v60 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v59 forKey:v60];
  }

  CRXCEnrollmentBriefRecord.encode(with:)(with);
}

uint64_t CRXCEnrollmentRecord.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v143 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v146 = &v137 - v9;
  __chkstk_darwin(v8);
  v11 = &v137 - v10;
  v12 = sub_100080D98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v141 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v142 = &v137 - v18;
  v19 = __chkstk_darwin(v17);
  v144 = &v137 - v20;
  v21 = __chkstk_darwin(v19);
  v145 = &v137 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v137 - v24;
  __chkstk_darwin(v23);
  v147 = &v137 - v26;
  v27 = sub_100081288();
  v28 = [a1 containsValueForKey:v27];

  if (v28 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v29 = sub_1000815E8()) != 0) && (v149 = xmmword_100084890, v30 = v29, sub_100080CE8(), v30, v31 = *(&v149 + 1), *(&v149 + 1) >> 60 != 15))
  {
    v32 = v149;
  }

  else
  {
    v32 = 0;
    v31 = 0xF000000000000000;
  }

  v33 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
  *v33 = v32;
  *(v33 + 1) = v31;
  v34 = sub_100081288();
  v35 = [a1 containsValueForKey:v34];

  if (v35 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v36 = sub_1000815E8()) != 0) && (v149 = xmmword_100084890, v37 = v36, sub_100080CE8(), v37, v38 = *(&v149 + 1), *(&v149 + 1) >> 60 != 15))
  {
    v39 = v149;
  }

  else
  {
    v39 = 0;
    v38 = 0xF000000000000000;
  }

  v40 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
  *v40 = v39;
  *(v40 + 1) = v38;
  v41 = sub_100081288();
  v42 = [a1 containsValueForKey:v41];

  v148 = v13;
  if (v42 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v43 = sub_1000815E8()) != 0) && (v149 = xmmword_100084890, v44 = v43, sub_100080CE8(), v44, v45 = *(&v149 + 1), *(&v149 + 1) >> 60 != 15))
  {
    v46 = v149;
  }

  else
  {
    v46 = 0;
    v45 = 0xF000000000000000;
  }

  v47 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
  *v47 = v46;
  *(v47 + 1) = v45;
  v48 = sub_100081288();
  v49 = [a1 containsValueForKey:v48];

  if (!v49)
  {
    goto LABEL_16;
  }

  sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr);
  v50 = sub_1000815E8();
  if (!v50)
  {
    goto LABEL_16;
  }

  v51 = v50;
  v52 = v148;
  v53 = *(v148 + 56);
  v53(v11, 1, 1, v12);
  sub_100061408(&qword_1000B88C0);
  sub_1000817F8();

  if ((*(v52 + 48))(v11, 1, v12) != 1)
  {
    v107 = v12;
    v108 = *(v148 + 32);
    v108(v25, v11, v107);
    v109 = v147;
    v108(v147, v25, v107);
    v110 = OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate;
    v108(&v2[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], v109, v107);
    v12 = v107;
    v53(&v2[v110], 0, 1, v107);
    v54 = v148;
    v55 = v53;
  }

  else
  {
LABEL_16:
    v54 = v148;
    v55 = *(v148 + 56);
    v55(&v2[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], 1, 1, v12);
  }

  v56 = sub_100081288();
  v57 = [a1 containsValueForKey:v56];

  if (v57 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v58 = sub_1000815E8()) != 0) && (v149 = 0uLL, v59 = v58, sub_1000812A8(), v59, (v60 = *(&v149 + 1)) != 0))
  {
    v61 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft];
    *v61 = v149;
    *(v61 + 1) = v60;
  }

  else
  {
    v62 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft];
    *v62 = 0;
    *(v62 + 1) = 0;
  }

  v63 = sub_100081288();
  v64 = [a1 containsValueForKey:v63];

  if (v64 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v65 = sub_1000815E8()) != 0) && (v149 = 0uLL, v66 = v65, sub_1000812A8(), v66, (v67 = *(&v149 + 1)) != 0))
  {
    v68 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight];
    *v68 = v149;
    *(v68 + 1) = v67;
  }

  else
  {
    v69 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight];
    *v69 = 0;
    *(v69 + 1) = 0;
  }

  v70 = sub_100081288();
  v71 = [a1 containsValueForKey:v70];

  if (v71 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v72 = sub_1000815E8()) != 0) && (v149 = 0uLL, v73 = v72, sub_1000812A8(), v73, (v74 = *(&v149 + 1)) != 0))
  {
    v75 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber];
    *v75 = v149;
    *(v75 + 1) = v74;
  }

  else
  {
    v76 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber];
    *v76 = 0;
    *(v76 + 1) = 0;
  }

  v77 = sub_100081288();
  v78 = [a1 containsValueForKey:v77];

  if (v78 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v79 = sub_1000815E8()) != 0) && (v149 = 0uLL, v80 = v79, sub_1000812A8(), v80, (v81 = *(&v149 + 1)) != 0))
  {
    v82 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_userID];
    *v82 = v149;
    *(v82 + 1) = v81;
  }

  else
  {
    v83 = &v2[OBJC_IVAR___CRXCEnrollmentRecord_userID];
    *v83 = 0;
    *(v83 + 1) = 0;
  }

  v84 = sub_100081288();
  v85 = [a1 containsValueForKey:v84];

  if (!v85 || (type metadata accessor for CRXCPrescriptionValues(), (v86 = sub_1000815E8()) == 0))
  {
    v86 = 0;
  }

  *&v2[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD] = v86;
  v87 = sub_100081288();
  v88 = [a1 containsValueForKey:v87];

  if (!v88 || (type metadata accessor for CRXCPrescriptionValues(), (v89 = sub_1000815E8()) == 0))
  {
    v89 = 0;
  }

  v147 = v55;
  *&v2[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS] = v89;
  v90 = sub_100081288();
  v91 = [a1 containsValueForKey:v90];

  if (!v91 || (type metadata accessor for CRXCDiopterRange(), (v92 = sub_1000815E8()) == 0))
  {
    v92 = 0;
  }

  *&v2[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange] = v92;
  v93 = sub_100081288();
  v94 = [a1 decodeBoolForKey:v93];

  v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] = v94;
  sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr);
  v95 = sub_1000815E8();
  if (!v95)
  {
    goto LABEL_48;
  }

  v96 = v95;
  v97 = v146;
  v140 = v54 + 7;
  (v147)(v146, 1, 1, v12);
  v98 = sub_100061408(&qword_1000B88C0);
  sub_1000817F8();

  v99 = v54[6];
  if (v99(v97, 1, v12) != 1)
  {
    v138 = v99;
    v139 = v98;
    v101 = v54[4];
    v102 = v144;
    v101(v144, v97, v12);
    v103 = v145;
    v146 = v101;
    v101(v145, v102, v12);
    v104 = sub_1000815E8();
    if (v104)
    {
      v105 = v104;
      v106 = v143;
      (v147)(v143, 1, 1, v12);
      sub_1000817F8();

      if (v138(v106, 1, v12) == 1)
      {
        v54 = v148;
        (*(v148 + 8))(v145, v12);

        v100 = 0;
      }

      else
      {
        v111 = v141;
        v112 = v146;
        (v146)(v141, v106, v12);
        v113 = v142;
        v112(v142, v111, v12);
        v54 = v148;
        v114 = *(v148 + 16);
        v115 = v145;
        v114(&v2[OBJC_IVAR___CRXCEnrollmentRecord_issueDate], v145, v12);
        v116 = v12;
        v114(&v2[OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate], v113, v12);
        v117 = sub_100081288();
        v118 = [a1 decodeIntegerForKey:v117];

        v119 = sub_100081288();
        v120 = [a1 decodeIntegerForKey:v119];

        v121 = sub_10000DD38(v118);
        if ((v122 & 1) == 0)
        {
          v123 = v121;
          v124 = sub_100061778(v120);
          if ((v125 & 1) == 0)
          {
            *&v2[OBJC_IVAR___CRXCEnrollmentRecord_lensType] = v123;
            *&v2[OBJC_IVAR___CRXCEnrollmentRecord_source] = v124;
            v135 = CRXCEnrollmentBriefRecord.init(coder:)(a1);
            v136 = v54[1];
            v136(v113, v12);
            v136(v115, v12);
            return v135;
          }
        }

        v126 = v54[1];
        v126(v113, v116);
        v126(v115, v116);
        v12 = v116;
        v100 = 1;
      }
    }

    else
    {
      (v54[1])(v103, v12);

      v100 = 0;
    }
  }

  else
  {
LABEL_48:

    v100 = 0;
  }

  sub_10001A164(*&v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayload], *&v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8]);
  sub_10001A164(*&v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft], *&v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8]);
  sub_10001A164(*&v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight], *&v2[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8]);
  if (v100)
  {
    v127 = v54[1];
    v127(&v2[OBJC_IVAR___CRXCEnrollmentRecord_issueDate], v12);
    v127(&v2[OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate], v12);
  }

  sub_10001A80C(&v2[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], &unk_1000B88B0, &qword_100086A40);
  v128 = *&v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];

  v129 = *&v2[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];

  v130 = *&v2[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];

  v131 = *&v2[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];

  type metadata accessor for CRXCEnrollmentRecord();
  v132 = *((swift_isaMask & *v2) + 0x30);
  v133 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100060CE8()
{
  sub_10001A164(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  sub_10001A164(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  sub_10001A164(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  v1 = OBJC_IVAR___CRXCEnrollmentRecord_issueDate;
  v2 = sub_100080D98();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v2);
  sub_10001A80C(v0 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &unk_1000B88B0, &qword_100086A40);
  v4 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8);

  v5 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8);

  v6 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8);

  v7 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8);

  v8 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
}

id CRXCEnrollmentRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s23CorePrescriptionService20CRXCEnrollmentRecordC5emptyACyFZ_0()
{
  v0 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v32 - v2;
  v4 = sub_100080D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_100080DC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080DB8();
  v17 = sub_100080DA8();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  sub_100080D88();
  sub_100080D88();
  (*(v5 + 56))(v3, 1, 1, v4);
  v20 = objc_allocWithZone(type metadata accessor for CRXCEnrollmentRecord());
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_accPayload] = xmmword_100084890;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft] = xmmword_100084890;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight] = xmmword_100084890;
  v21 = *(v5 + 16);
  v21(&v20[OBJC_IVAR___CRXCEnrollmentRecord_issueDate], v11, v4);
  v21(&v20[OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate], v9, v4);
  sub_10001A8DC(v3, &v20[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], &unk_1000B88B0, &qword_100086A40);
  v22 = &v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight];
  *v23 = 0;
  v23[1] = 0;
  v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] = 0;
  v24 = &v20[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber];
  *v24 = 0;
  v24[1] = 0;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_lensType] = 0;
  v25 = &v20[OBJC_IVAR___CRXCEnrollmentRecord_userID];
  *v25 = 0;
  v25[1] = 0;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_source] = -1;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD] = 0;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS] = 0;
  *&v20[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange] = 0;
  v26 = &v20[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid];
  *v26 = v17;
  v26[1] = v19;
  v27 = &v20[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *&v20[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup] = 0;
  *&v20[OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor] = 0;
  v20[OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected] = 0;
  v28 = type metadata accessor for CRXCEnrollmentBriefRecord();
  v32.receiver = v20;
  v32.super_class = v28;
  v29 = objc_msgSendSuper2(&v32, "init");
  sub_10001A80C(v3, &unk_1000B88B0, &qword_100086A40);
  v30 = *(v5 + 8);
  v30(v9, v4);
  v30(v11, v4);
  return v29;
}

uint64_t sub_100061408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100080D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100061454()
{
  v0 = sub_100080D98();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100061564();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100061564()
{
  if (!qword_1000B8988)
  {
    sub_100080D98();
    v0 = sub_100081628();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B8988);
    }
  }
}

uint64_t CRXCEnrollmentSource.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        return 0x7365742D74696E75;
      }

      if (a1 == 6)
      {
        return 0x79732D64756F6C63;
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      return 0x6E6961686379654BLL;
    }

    else
    {
      return 1819242356;
    }
  }

  else
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (!a1)
      {
        return 0x6E6163732D636361;
      }

LABEL_18:
      result = sub_1000818C8();
      __break(1u);
      return result;
    }

    if (a1 == 1)
    {
      return 0x6174536B63697551;
    }

    else
    {
      return 0x694B68746C616548;
    }
  }
}

uint64_t sub_10006173C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100061778(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100061778(uint64_t result)
{
  if ((result + 1) >= 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100061794()
{
  result = qword_1000B8990;
  if (!qword_1000B8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8990);
  }

  return result;
}

id CRXCEyePrescription.__allocating_init(sphere:cylinder:axis:vrAdd:)(uint64_t a1, float a2, float a3, float a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v9[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v11 = &v9[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v9[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v12 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v9[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v13 = &v9[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v9[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v10 = a2;
  swift_beginAccess();
  *v11 = a3;
  swift_beginAccess();
  *&v9[v12] = a1;
  swift_beginAccess();
  *v13 = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, "init");
}

float CRXCEyePrescription.sphere.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_sphere;
  swift_beginAccess();
  return *v1;
}

uint64_t CRXCEyePrescription.sphere.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float CRXCEyePrescription.cylinder.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_cylinder;
  swift_beginAccess();
  return *v1;
}

uint64_t CRXCEyePrescription.cylinder.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t CRXCEyePrescription.axis.getter()
{
  v1 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCEyePrescription.axis.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCEyePrescription_axis;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float CRXCEyePrescription.vrAdd.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_vrAdd;
  swift_beginAccess();
  return *v1;
}

uint64_t CRXCEyePrescription.vrAdd.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id CRXCEyePrescription.init(sphere:cylinder:axis:vrAdd:)(uint64_t a1, float a2, float a3, float a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v4[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v11 = &v4[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v4[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v12 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v4[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v13 = &v4[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v4[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v10 = a2;
  swift_beginAccess();
  *v11 = a3;
  swift_beginAccess();
  *&v4[v12] = a1;
  swift_beginAccess();
  *v13 = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

BOOL CRXCEyePrescription.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_10000CFA4(a1, v18);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
      swift_beginAccess();
      v4 = *v3;
      v5 = &v17[OBJC_IVAR___CRXCEyePrescription_sphere];
      swift_beginAccess();
      if (v4 == *v5)
      {
        v6 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
        swift_beginAccess();
        v7 = *v6;
        v8 = &v17[OBJC_IVAR___CRXCEyePrescription_cylinder];
        swift_beginAccess();
        if (v7 == *v8)
        {
          v9 = OBJC_IVAR___CRXCEyePrescription_axis;
          swift_beginAccess();
          v10 = *(v1 + v9);
          v11 = OBJC_IVAR___CRXCEyePrescription_axis;
          swift_beginAccess();
          if (v10 == *&v17[v11])
          {
            v12 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
            swift_beginAccess();
            v13 = *v12;
            v14 = &v17[OBJC_IVAR___CRXCEyePrescription_vrAdd];
            swift_beginAccess();
            v15 = *v14;

            return v13 == v15;
          }
        }
      }
    }
  }

  else
  {
    sub_10000D014(v18);
  }

  return 0;
}

uint64_t CRXCEyePrescription.description.getter()
{
  v1 = v0;
  sub_100081698(62);
  v11._object = 0x8000000100095540;
  v11._countAndFlagsBits = 0xD000000000000018;
  sub_1000813B8(v11);
  v2 = (v0 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  v3 = *v2;
  sub_100081598();
  v12._countAndFlagsBits = 0x646E696C7963202CLL;
  v12._object = 0xEC000000203A7265;
  sub_1000813B8(v12);
  v4 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  v5 = *v4;
  sub_100081598();
  v13._countAndFlagsBits = 0x203A73697861202CLL;
  v13._object = 0xE800000000000000;
  sub_1000813B8(v13);
  v6 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  v10 = *(v1 + v6);
  v14._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v14);

  v15._countAndFlagsBits = 0x3A6464417276202CLL;
  v15._object = 0xE900000000000020;
  sub_1000813B8(v15);
  v7 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  v8 = *v7;
  sub_100081598();
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_1000813B8(v16);
  return 0;
}

Swift::Void __swiftcall CRXCEyePrescription.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  v4 = *v3;
  v5 = sub_100081288();
  LODWORD(v6) = v4;
  [(objc_class *)with.super.isa encodeFloat:v5 forKey:v6];

  v7 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  v8 = *v7;
  v9 = sub_100081288();
  LODWORD(v10) = v8;
  [(objc_class *)with.super.isa encodeFloat:v9 forKey:v10];

  v11 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_100081288();
    [(objc_class *)with.super.isa encodeInteger:v12 forKey:v13];

    v14 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
    swift_beginAccess();
    v15 = *v14;
    v16 = sub_100081288();
    LODWORD(v17) = v15;
    [(objc_class *)with.super.isa encodeFloat:v16 forKey:v17];
  }
}

uint64_t CRXCEyePrescription.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_100062C44(a1);
  v5 = v4;

  return v5;
}

uint64_t CRXCEyePrescription.init(coder:)(void *a1)
{
  sub_100062C44(a1);
  v3 = v2;

  return v3;
}

id CRXCFactoryCalibrationData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *CRXCVisionPrescription.leftEye.getter()
{
  v1 = OBJC_IVAR___CRXCVisionPrescription_leftEye;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CRXCVisionPrescription.leftEye.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCVisionPrescription_leftEye;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *CRXCVisionPrescription.rightEye.getter()
{
  v1 = OBJC_IVAR___CRXCVisionPrescription_rightEye;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CRXCVisionPrescription.rightEye.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCVisionPrescription_rightEye;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CRXCVisionPrescription.init()()
{
  *&v0[OBJC_IVAR___CRXCVisionPrescription_leftEye] = 0;
  *&v0[OBJC_IVAR___CRXCVisionPrescription_rightEye] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCVisionPrescription();
  return objc_msgSendSuper2(&v2, "init");
}

id CRXCVisionPrescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCVisionPrescription();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100062C44(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v1[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v5 = &v1[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v1[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v6 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v1[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v7 = &v1[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v1[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  v8 = sub_100081288();
  [a1 decodeFloatForKey:v8];
  v10 = v9;

  swift_beginAccess();
  *v4 = v10;
  v11 = sub_100081288();
  [a1 decodeFloatForKey:v11];
  v13 = v12;

  swift_beginAccess();
  *v5 = v13;
  v14 = sub_100081288();
  v15 = [a1 decodeIntegerForKey:v14];

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *&v1[v6] = v15;
    v16 = sub_100081288();
    [a1 decodeFloatForKey:v16];
    v18 = v17;

    swift_beginAccess();
    *v7 = v18;
    v19.receiver = v1;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "init");
  }
}

uint64_t CRXCFactoryCalibrationData.acc.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  sub_10000D808(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.left.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.right.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_right + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_10000CFA4(a1, v20);
  if (!v21)
  {
    sub_10000D014(v20);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v4 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8);
  v5 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_acc];
  v6 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8];
  sub_10000D808(v5, v6);
  LOBYTE(v3) = sub_10000DAB0(v3, v4, v5, v6);
  sub_100006A34(v5, v6);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  v7 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8);
  v10 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left];
  v9 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8];
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10001622C(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
      sub_10001622C(v8, v7);
      sub_10001A164(v8, v7);
      goto LABEL_11;
    }

LABEL_9:
    sub_10001622C(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
    sub_10001622C(v8, v7);

    sub_10001A164(v8, v7);
    v11 = v10;
LABEL_18:
    sub_10001A164(v11, v9);
    goto LABEL_19;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_9;
  }

  sub_10001622C(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
  sub_10001622C(v10, v9);
  sub_10001622C(v8, v7);
  v12 = sub_10000DAB0(v8, v7, v10, v9);
  sub_10001A164(v10, v9);
  sub_10001A164(v10, v9);
  sub_10001A164(v8, v7);
  if ((v12 & 1) == 0)
  {
LABEL_14:

    goto LABEL_19;
  }

LABEL_11:
  v13 = v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right;
  v15 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  v14 = *(v13 + 8);
  v16 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_right];
  v9 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_right + 8];
  if (v14 >> 60 != 15)
  {
    sub_10001622C(v16, v9);
    if (v9 >> 60 != 15)
    {
      sub_10001622C(v16, v9);
      sub_10001622C(v15, v14);
      v17 = sub_10000DAB0(v15, v14, v16, v9);
      sub_10001A164(v16, v9);
      sub_10001A164(v16, v9);

      sub_10001A164(v15, v14);
      return v17 & 1;
    }

    sub_10001622C(v15, v14);

    goto LABEL_17;
  }

  sub_10001622C(v16, v9);
  sub_10001622C(v15, v14);

  if (v9 >> 60 != 15)
  {
LABEL_17:
    sub_10001A164(v15, v14);
    v11 = v16;
    goto LABEL_18;
  }

  sub_10001A164(v15, v14);
  v17 = 1;
  return v17 & 1;
}

Swift::Void __swiftcall CRXCFactoryCalibrationData.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v4 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8);
  isa = sub_100080CC8().super.isa;
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  v7 = (v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  v8 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_10000D808(*v7, *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8));
    v10 = sub_100080CC8().super.isa;
    v11 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

    sub_10001A164(v9, v8);
  }

  v12 = (v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  v13 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right + 8);
  if (v13 >> 60 != 15)
  {
    v14 = *v12;
    sub_10000D808(*v12, v13);
    v15 = sub_100080CC8().super.isa;
    v16 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

    sub_10001A164(v14, v13);
  }
}

uint64_t CRXCFactoryCalibrationData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_100063894();
  v2 = sub_1000815E8();
  if (v2)
  {
    v3 = v2;
    sub_100080CE8();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_100063894()
{
  result = qword_1000B88D0;
  if (!qword_1000B88D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B88D0);
  }

  return result;
}

char *sub_100063904(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver_completion];
  *v5 = a2;
  *(v5 + 1) = a3;
  v6 = objc_allocWithZone(HKCloudSyncObserver);

  v7 = [v6 initWithHealthStore:a1 delegate:0];
  *&v3[OBJC_IVAR____TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver_observer] = v7;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for HealthCloudSyncObserver();
  v8 = objc_msgSendSuper2(&v13, "init");
  v9 = OBJC_IVAR____TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver_observer;
  v10 = *&v8[OBJC_IVAR____TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver_observer];
  v11 = v8;
  [v10 setDelegate:v11];
  [*&v8[v9] startObservingSyncStatus];

  return v11;
}

id sub_100063AA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthCloudSyncObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100063B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100080AC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[10] = 0;
  v3[2] = a1;
  v3[3] = a2;
  sub_10000DC18(0, &qword_1000B8C78, HKSampleType_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v3[6] = [ObjCClassFromMetadata visionPrescriptionType];
  v12 = objc_allocWithZone(NSScanner);
  v13 = sub_100081288();

  v14 = [v12 initWithString:v13];

  sub_100080AB8();
  v15 = sub_100081618();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  if (!v17)
  {
    v15 = v3[2];
    v17 = v3[3];
  }

  v3[4] = v15;
  v3[5] = v17;
  v3[7] = [objc_opt_self() predicateForObjectsWithMetadataKey:_HKPrivateMetadataKeyVisionACCPayload];
  sub_1000812B8();
  v18 = objc_allocWithZone(NSSortDescriptor);
  v19 = sub_100081288();

  v20 = [v18 initWithKey:v19 ascending:1];

  sub_100006940(&qword_1000B8C80, &qword_100085BE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100086CC0;
  *(v21 + 32) = v20;
  v3[8] = v21;
  v22 = [objc_allocWithZone(HKHealthStore) init];

  v3[9] = v22;
  return v3;
}

void sub_100063DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100006940(&qword_1000B8C90, qword_100086D78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = v13;
  (*(v9 + 16))(&v22 - v11, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = objc_allocWithZone(HKSampleQuery);
  sub_10000DC18(0, &qword_1000B8C98, NSSortDescriptor_ptr);
  v18 = v14;

  isa = sub_100081478().super.isa;
  aBlock[4] = sub_1000650A4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064A28;
  aBlock[3] = &unk_1000ABFA8;
  v20 = _Block_copy(aBlock);
  v21 = [v17 initWithSampleType:v23 predicate:v18 limit:0 sortDescriptors:isa resultsHandler:v20];

  _Block_release(v20);

  [*(a2 + 72) executeQuery:v21];
}

void sub_100064020(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v29._countAndFlagsBits = a4;
  v29._object = a5;
  if (!a2)
  {
    if (a3)
    {
      v31 = a3;
      swift_errorRetain();
      sub_100006940(&qword_1000B8C90, qword_100086D78);
      sub_1000814E8();
    }

    return;
  }

  v5 = a2;
  v32 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    v6 = sub_1000817A8();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_27:
    v28 = _swiftEmptyArrayStorage;
LABEL_28:
    v31 = v28;
    sub_100006940(&qword_1000B8C90, qword_100086D78);
    sub_1000814F8();
    return;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v28 = _swiftEmptyArrayStorage;
    v9 = &_s9CryptoKit0aB5ErrorOs0C0AAMc_ptr;
    v10 = &selRef_byteCount;
    v30 = v5;
    while (1)
    {
      if (v8)
      {
        v11 = sub_1000816A8();
      }

      else
      {
        v11 = *(v5 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v9[13];
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 v10[12]];
        if (v15)
        {
          v16 = v15;
          v17 = sub_100081218();

          v18 = sub_1000812B8();
          if (*(v17 + 16))
          {
            v20 = v6;
            v21 = v8;
            v22 = v9;
            v23 = sub_1000525C4(v18, v19);
            v25 = v24;

            if (v25)
            {
              sub_100006888(*(v17 + 56) + 32 * v23, &v31);

              v9 = v22;
              if (swift_dynamicCast())
              {
                v26 = sub_100081418(v29);

                v8 = v21;
                v10 = &selRef_byteCount;
                if (v26)
                {
                  v27 = v12;
                  sub_100081468();
                  v6 = v20;
                  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1000814A8();
                  }

                  sub_1000814C8();

                  v28 = v32;
                  v5 = v30;
                }

                else
                {

                  v6 = v20;
                  v5 = v30;
                }
              }

              else
              {

                v8 = v21;
                v6 = v20;
                v5 = v30;
                v10 = &selRef_byteCount;
              }

              goto LABEL_8;
            }

            v9 = v22;
            v8 = v21;
            v6 = v20;
            v5 = v30;
            v10 = &selRef_byteCount;
          }

          else
          {
          }
        }
      }

LABEL_8:
      if (v6 == ++v7)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

void sub_100064348(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B8C88, &qword_100086D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *(a2 + 72);
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v5 + 32))(v11 + v10, v8, v4);
  objc_allocWithZone(type metadata accessor for HealthCloudSyncObserver());
  v12 = v9;

  v13 = sub_100063904(v12, sub_100064F3C, v11);
  v14 = *(a2 + 80);
  *(a2 + 80) = v13;
}

uint64_t sub_1000644C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(a2 + 80) = 0;

  sub_100006940(&qword_1000B8C88, &qword_100086D70);
  return sub_1000814F8();
}

uint64_t sub_100064534(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_100064554, 0, 0);
}

uint64_t sub_100064554()
{
  v1 = v0[19];
  v2 = *(v0[20] + 72);
  v3 = [objc_opt_self() visionPrescriptionType];
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000646AC;
  v4 = swift_continuation_init();
  v0[17] = sub_100006940(&qword_1000B8C70, &unk_100086D60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100064890;
  v0[13] = &unk_1000ABF30;
  v0[14] = v4;
  [v2 deleteObjectsOfType:v3 predicate:v1 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000646AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100064820;
  }

  else
  {
    v3 = sub_1000647BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000647BC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064820()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_100064890(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = sub_10002329C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a2)
  {
    **(v8[8] + 40) = a3;
    v7 = v8;

    return _swift_continuation_throwingResume(v7);
  }

  if (!a4)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v7);
  }

  sub_100006940(&qword_1000B7910, &unk_100084B20);
  v9 = swift_allocError();
  *v10 = a4;
  v11 = a4;

  return _swift_continuation_throwingResumeWithError(v8, v9);
}

uint64_t sub_100064968()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t sub_1000649B8()
{
  sub_100064968();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_100064A28(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_10000DC18(0, &unk_1000B8CA0, HKSample_ptr);
    v5 = sub_100081488();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_100064AE0(void *a1)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = [a1 lastPushDate];
  if (v17)
  {
    v18 = v17;
    sub_100080D78();

    v19 = sub_100080D98();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  }

  else
  {
    v19 = sub_100080D98();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  sub_100022C34(v14, v16);
  sub_100080D98();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v16, 1, v19) == 1)
  {
    sub_100064E04(v16);
    v22 = 0.0;
  }

  else
  {
    sub_100080D28();
    v22 = v23;
    (*(v20 + 8))(v16, v19);
  }

  v24 = [a1 lastPullDate];
  if (v24)
  {
    v25 = v24;
    sub_100080D78();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v20 + 56))(v8, v26, 1, v19);
  sub_100022C34(v8, v11);
  if (v21(v11, 1, v19) == 1)
  {
    sub_100064E04(v11);
    v27 = 0.0;
  }

  else
  {
    sub_100080D28();
    v27 = v28;
    (*(v20 + 8))(v11, v19);
  }

  v29 = *(v2 + OBJC_IVAR____TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver_completion + 8);
  return (*(v2 + OBJC_IVAR____TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver_completion))([a1 syncEnabled], v22, v27);
}

uint64_t sub_100064E04(uint64_t a1)
{
  v2 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100064E6C()
{
  v1 = sub_100006940(&qword_1000B8C88, &qword_100086D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064F3C(uint64_t a1)
{
  v3 = *(*(sub_100006940(&qword_1000B8C88, &qword_100086D70) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_1000644C4(a1, v4);
}

uint64_t sub_100064FD4()
{
  v1 = sub_100006940(&qword_1000B8C90, qword_100086D78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000650A4(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(*(sub_100006940(&qword_1000B8C90, qword_100086D78) - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  sub_100064020(a1, a2, a3, v8, v9);
}

uint64_t sub_10006513C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100065164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100006940(&qword_1000B8CB0, &qword_100086E28) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100065204, 0, 0);
}

uint64_t sub_100065204()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000655B4(v0[3], v1);
  Request = type metadata accessor for GetRequest(0);
  (*(*(Request - 8) + 56))(v1, 0, 1, Request);
  v4 = objc_allocWithZone(sub_100006940(&qword_1000B8CB8, &qword_100086E30));
  v5 = sub_100080E08();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  Response = type metadata accessor for GetResponse(0);
  *v9 = v0;
  v9[1] = sub_10006539C;
  v11 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v11, &unk_100086E40, v6, sub_100065C14, v7, 0, 0, Response);
}

uint64_t sub_10006539C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10006552C;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_1000654C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000654C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006552C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4();
}

uint64_t sub_1000655B4(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for GetRequest(0);
  (*(*(Request - 8) + 16))(a2, a1, Request);
  return a2;
}

uint64_t sub_100065618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10006563C, 0, 0);
}

uint64_t sub_10006563C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  Response = type metadata accessor for GetResponse(0);
  *v3 = v0;
  v3[1] = sub_10006572C;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x293A5F28746567, 0xE700000000000000, sub_100065C24, v1, Response);
}

uint64_t sub_10006572C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100065868, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100065868()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1000658CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A01C;

  return sub_100065618(a1, v5, v4);
}

uint64_t sub_100065978(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B8CC0, &qword_100086E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_100080DF8();
  return sub_1000815A8();
}

uint64_t sub_100065AC8(uint64_t a1)
{
  Response = type metadata accessor for GetResponse(0);
  v3 = *(*(Response - 8) + 64);
  __chkstk_darwin(Response - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006940(&qword_1000B8CC8, qword_100086E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v11 - v8);
  sub_100065D3C(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    sub_100006940(&qword_1000B8CC0, &qword_100086E48);
    return sub_1000814E8();
  }

  else
  {
    sub_10001A944(v9, v5);
    sub_100006940(&qword_1000B8CC0, &qword_100086E48);
    return sub_1000814F8();
  }
}

uint64_t sub_100065C24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100065978(a1);
}

uint64_t sub_100065C2C()
{
  v1 = sub_100006940(&qword_1000B8CC0, &qword_100086E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100065CC0(uint64_t a1)
{
  v2 = *(*(sub_100006940(&qword_1000B8CC0, &qword_100086E48) - 8) + 80);

  return sub_100065AC8(a1);
}

uint64_t sub_100065D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B8CC8, qword_100086E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065DD0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100065E88(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100065DD0(a1, &a1[a2]);
  }

  v3 = sub_100080B28();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_100080AD8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_100080C78();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

size_t sub_100065F38(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1000814B8();
      v2[2] = v1;
      bzero(v2 + 4, v1);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    if (SecRandomCopyBytes(kSecRandomDefault, v1, v2 + 4))
    {

      return 0;
    }

    else
    {
      v3 = sub_100065E88(v2 + 32, v1);

      return v3;
    }
  }

  return result;
}

uint64_t sub_100065FF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    return (a2[2] & 1) != 0 && v3 == v4;
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v6 = a1[1];
    if (v3 == v4 && v6 == a2[1])
    {
      return 1;
    }

    else
    {
      return sub_100081888();
    }
  }
}

uint64_t (*sub_1000660DC(uint64_t a1, uint64_t a2))()
{
  result = CompressionHeader.type.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_100066104(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F20, type metadata accessor for CalDataEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000661A8(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8F08, type metadata accessor for CalDataEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100066218()
{
  sub_10006B750(&qword_1000B8F08, type metadata accessor for CalDataEntry);

  return sub_100080F58();
}

uint64_t sub_10006629C()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C1268);
  sub_100016240(v0, qword_1000C1268);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100085A60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serialNumber";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accPayload";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_100066490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_100080F98(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_100080F98(), !v5))
    {
      v13 = v4 + *(a4(0) + 24);
      return sub_100080E58();
    }
  }

  return result;
}

uint64_t sub_100066580(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F40, type metadata accessor for SerialNumberMapping);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100066620(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8EE8, type metadata accessor for SerialNumberMapping);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006668C()
{
  sub_10006B750(&qword_1000B8EE8, type metadata accessor for SerialNumberMapping);

  return sub_100080F58();
}

uint64_t sub_10006670C()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C1280);
  sub_100016240(v0, qword_1000C1280);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086E90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serialNumber";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accPayload";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "status";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_100066920()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100066A9C();
        break;
      case 2:
        sub_1000669D4();
        break;
      case 1:
        sub_100080F08();
        break;
    }
  }

  return result;
}

uint64_t sub_1000669D4()
{
  result = sub_100080EF8();
  if (v0)
  {
  }

  return result;
}

uint64_t sub_100066B4C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    v6 = *(v0 + 32);
    if (v6 == 255)
    {
      goto LABEL_8;
    }

    if (v6)
    {
      v7 = *(v0 + 16);
      result = sub_100080F78();
      if (v1)
      {
        return result;
      }

      goto LABEL_8;
    }

    result = sub_100066C28(v0);
    if (!v1)
    {
LABEL_8:
      v8 = v0 + *(type metadata accessor for SerialNumberMappingResult(0) + 24);
      return sub_100080E58();
    }
  }

  return result;
}

uint64_t sub_100066C28(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 16);
    v2 = *(result + 24);
    return sub_100080F98();
  }

  return result;
}

uint64_t sub_100066C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  v2 = a2 + *(a1 + 24);
  return sub_100080E68();
}

uint64_t sub_100066CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F48, type metadata accessor for SerialNumberMappingResult);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100066D94(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8EC8, type metadata accessor for SerialNumberMappingResult);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100066E00()
{
  sub_10006B750(&qword_1000B8EC8, type metadata accessor for SerialNumberMappingResult);

  return sub_100080F58();
}

uint64_t sub_100066E98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100080FE8();
  sub_100016278(v7, a2);
  sub_100016240(v7, a2);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v8 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100085A60;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = sub_100080FC8();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "data";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v16();
  return sub_100080FD8();
}

uint64_t sub_100067058()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_100080F08();
    }
  }

  return result;
}

uint64_t sub_100067104@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_100080E68();
}

uint64_t sub_10006714C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F50, type metadata accessor for PubkeyEncryptedData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000671EC(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8EA8, type metadata accessor for PubkeyEncryptedData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100067258()
{
  sub_10006B750(&qword_1000B8EA8, type metadata accessor for PubkeyEncryptedData);

  return sub_100080F58();
}

uint64_t sub_1000672D4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_1000673B0()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C12B0);
  sub_100016240(v0, qword_1000C12B0);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086EA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clientVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "items";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "pubkeyEncItems";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_100067640()
{
  result = sub_100080EA8();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_100080F08();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
            v3 = v0;
            type metadata accessor for CalDataEntry(0);
            sub_10006B750(&qword_1000B8F08, type metadata accessor for CalDataEntry);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for PubkeyEncryptedData(0);
            sub_10006B750(&qword_1000B8EA8, type metadata accessor for PubkeyEncryptedData);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_100080F18();
      }

LABEL_5:
      result = sub_100080EA8();
    }
  }

  return result;
}

uint64_t sub_1000677C0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_100080F98(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_100080F98(), !v1))
      {
        if (!*(v0[6] + 16) || (type metadata accessor for CalDataEntry(0), sub_10006B750(&qword_1000B8F08, type metadata accessor for CalDataEntry), result = sub_100080FA8(), !v1))
        {
          if (!*(v0[7] + 16) || (type metadata accessor for PubkeyEncryptedData(0), sub_10006B750(&qword_1000B8EA8, type metadata accessor for PubkeyEncryptedData), result = sub_100080FA8(), !v1))
          {
            v10 = v0 + *(type metadata accessor for PutRequest(0) + 36);
            return sub_100080E58();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000679B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = _swiftEmptyArrayStorage;
  a2[7] = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 36);
  return sub_100080E68();
}

uint64_t (*sub_100067A14(uint64_t a1, uint64_t a2))()
{
  result = CompressionHeader.type.getter;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_100067A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F58, type metadata accessor for PutRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100067B08(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8E88, type metadata accessor for PutRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100067B74()
{
  sub_10006B750(&qword_1000B8E88, type metadata accessor for PutRequest);

  return sub_100080F58();
}

uint64_t sub_100067BF4()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C12C8);
  sub_100016240(v0, qword_1000C12C8);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086E90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recordId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t (*sub_100067E7C(uint64_t a1, uint64_t a2))()
{
  result = CompressionHeader.type.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_100067EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F60, type metadata accessor for CalDataStatus);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100067F40(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8E68, type metadata accessor for CalDataStatus);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100067FAC()
{
  sub_10006B750(&qword_1000B8E68, type metadata accessor for CalDataStatus);

  return sub_100080F58();
}

uint64_t sub_100068058()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C12E0);
  sub_100016240(v0, qword_1000C12E0);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086E90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keyhash";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_100068298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_100080F98(), !v5))
  {
    if (!*(v4 + 4) || (result = sub_100080F78(), !v5))
    {
      v11 = v4[4];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v4[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_100080F98(), !v5))
      {
        v13 = v4 + *(a4(0) + 28);
        return sub_100080E58();
      }
    }
  }

  return result;
}

uint64_t sub_1000683A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F68, type metadata accessor for PubkeyEncDataStatus);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100068448(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8E48, type metadata accessor for PubkeyEncDataStatus);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000684B4()
{
  sub_10006B750(&qword_1000B8E48, type metadata accessor for PubkeyEncDataStatus);

  return sub_100080F58();
}

uint64_t sub_100068560()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C12F8);
  sub_100016240(v0, qword_1000C12F8);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086EA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "message";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "items";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "pubkeyEncItems";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_1000687F0()
{
  result = sub_100080EA8();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
LABEL_4:
          sub_100080F08();
          goto LABEL_5;
        }

        if (result == 2)
        {
          sub_100080ED8();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
            v3 = v0;
            type metadata accessor for CalDataStatus(0);
            sub_10006B750(&qword_1000B8E68, type metadata accessor for CalDataStatus);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for PubkeyEncDataStatus(0);
            sub_10006B750(&qword_1000B8E48, type metadata accessor for PubkeyEncDataStatus);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_100080F18();
      }

LABEL_5:
      result = sub_100080EA8();
    }
  }

  return result;
}

uint64_t sub_100068980()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_100080F78(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_100080F98(), !v1))
      {
        if (!*(v0[5] + 16) || (type metadata accessor for CalDataStatus(0), sub_10006B750(&qword_1000B8E68, type metadata accessor for CalDataStatus), result = sub_100080FA8(), !v1))
        {
          if (!*(v0[6] + 16) || (type metadata accessor for PubkeyEncDataStatus(0), sub_10006B750(&qword_1000B8E48, type metadata accessor for PubkeyEncDataStatus), result = sub_100080FA8(), !v1))
          {
            v8 = v0 + *(type metadata accessor for PutResponse(0) + 36);
            return sub_100080E58();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100068B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 36);
  return sub_100080E68();
}

uint64_t sub_100068BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100068C34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100068CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F70, type metadata accessor for PutResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100068D78(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8E28, type metadata accessor for PutResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100068DE4()
{
  sub_10006B750(&qword_1000B8E28, type metadata accessor for PutResponse);

  return sub_100080F58();
}

uint64_t sub_100068E64()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C1310);
  sub_100016240(v0, qword_1000C1310);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086E90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recordId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "keyhash";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_100069078()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_100080F08();
    }
  }

  return result;
}

uint64_t sub_100069108()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_100080F98(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_100080F98(), !v1))
      {
        v10 = v0 + *(type metadata accessor for GetRequest(0) + 28);
        return sub_100080E58();
      }
    }
  }

  return result;
}

uint64_t sub_1000691FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_100080E68();
}

uint64_t sub_100069278(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F78, type metadata accessor for GetRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100069318(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B7A30, type metadata accessor for GetRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100069384()
{
  sub_10006B750(&qword_1000B7A30, type metadata accessor for GetRequest);

  return sub_100080F58();
}

uint64_t sub_10006941C()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_100080F08();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_100080ED8();
      }
    }
  }
}

uint64_t sub_1000694D4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_100080F78(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_100080F98(), !v1))
      {
        v8 = v0[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_100080F98(), !v1))
        {
          v10 = v0 + *(type metadata accessor for GetResponse(0) + 32);
          return sub_100080E58();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000695E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  v2 = a2 + *(a1 + 32);
  return sub_100080E68();
}

uint64_t (*sub_100069644(uint64_t a1, uint64_t a2))()
{
  result = CompressionHeader.type.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_100069698(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F80, type metadata accessor for GetResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100069738(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8DF0, type metadata accessor for GetResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000697A4()
{
  sub_10006B750(&qword_1000B8DF0, type metadata accessor for GetResponse);

  return sub_100080F58();
}

uint64_t sub_100069824()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C1340);
  sub_100016240(v0, qword_1000C1340);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086E90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientVersion";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mapping";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_100069A38()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_100069AD8();
    }

    else if (result == 2 || result == 1)
    {
      sub_100080F08();
    }
  }

  return result;
}

uint64_t sub_100069AD8()
{
  v0 = *(type metadata accessor for PutSNRequest(0) + 28);
  type metadata accessor for SerialNumberMapping(0);
  sub_10006B750(&qword_1000B8EE8, type metadata accessor for SerialNumberMapping);
  return sub_100080F28();
}

uint64_t sub_100069B8C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_100080F98(), !v1))
    {
      result = sub_100069C68(v0);
      if (!v1)
      {
        v8 = v0 + *(type metadata accessor for PutSNRequest(0) + 24);
        return sub_100080E58();
      }
    }
  }

  return result;
}

uint64_t sub_100069C68(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B8F90, &qword_1000882F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for SerialNumberMapping(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PutSNRequest(0);
  sub_10006DEFC(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10001A80C(v5, &qword_1000B8F90, &qword_1000882F8);
  }

  sub_10006DF6C(v5, v10);
  sub_10006B750(&qword_1000B8EE8, type metadata accessor for SerialNumberMapping);
  sub_100080FB8();
  return sub_10006DD98(v10, type metadata accessor for SerialNumberMapping);
}

uint64_t sub_100069E5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  sub_100080E68();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for SerialNumberMapping(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_100069F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8F88, type metadata accessor for PutSNRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100069FD8(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8DD0, type metadata accessor for PutSNRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A044()
{
  sub_10006B750(&qword_1000B8DD0, type metadata accessor for PutSNRequest);

  return sub_100080F58();
}

uint64_t sub_10006A0C4()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C1358);
  sub_100016240(v0, qword_1000C1358);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086E90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_10006A2D8()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_100080ED8();
        break;
      case 1:
LABEL_8:
        sub_100080F08();
        break;
    }
  }
}

uint64_t sub_10006A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_100080E68();
}

uint64_t sub_10006A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10006A468(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10006A4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8FA0, type metadata accessor for PutSNResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006A57C(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8DB0, type metadata accessor for PutSNResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A5E8()
{
  sub_10006B750(&qword_1000B8DB0, type metadata accessor for PutSNResponse);

  return sub_100080F58();
}

uint64_t sub_10006A694()
{
  v0 = sub_100080FE8();
  sub_100016278(v0, qword_1000C1370);
  sub_100016240(v0, qword_1000C1370);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v1 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100085A60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100080FC8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "serialNumbers";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_100080FD8();
}

uint64_t sub_10006A860()
{
  while (1)
  {
    result = sub_100080EA8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100080F08();
    }

    else if (result == 3)
    {
      sub_100080EE8();
    }
  }

  return result;
}

uint64_t sub_10006A8EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_100080F88(), !v1))
    {
      v6 = v0 + *(type metadata accessor for GetSNRequest(0) + 24);
      return sub_100080E58();
    }
  }

  return result;
}

uint64_t sub_10006A9A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return sub_100080E68();
}

uint64_t sub_10006A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10006AA6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10006AB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8FA8, type metadata accessor for GetSNRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006ABB0(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8D90, type metadata accessor for GetSNRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006AC1C()
{
  sub_10006B750(&qword_1000B8D90, type metadata accessor for GetSNRequest);

  return sub_100080F58();
}

uint64_t sub_10006AC98(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_100081888() & 1) == 0 || (sub_10006CB6C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006AD7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100080FE8();
  sub_100016278(v5, a2);
  sub_100016240(v5, a2);
  sub_100006940(&qword_1000B8F28, &qword_100088270);
  v6 = (sub_100006940(&qword_1000B8F30, &qword_100088278) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100086EB0;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "requestId";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = sub_100080FC8();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "status";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v14();
  v16 = (v10 + 2 * v7);
  v17 = v16 + v6[14];
  *v16 = 3;
  *v17 = "message";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v14();
  v18 = v6[14];
  v19 = (v10 + 3 * v7);
  *v19 = 4;
  v20 = v19 + v18;
  *v20 = a3;
  *(v20 + 1) = a4;
  v20[16] = 2;
  v14();
  return sub_100080FD8();
}

uint64_t sub_10006AFBC()
{
  result = sub_100080EA8();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_100080F08();
          goto LABEL_5;
        }

        if (result == 4)
        {
          type metadata accessor for SerialNumberMappingResult(0);
          sub_10006B750(&qword_1000B8EC8, type metadata accessor for SerialNumberMappingResult);
          sub_100080F18();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_100080ED8();
        }
      }

LABEL_5:
      result = sub_100080EA8();
    }
  }

  return result;
}

uint64_t sub_10006B0F0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_100080F98(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_100080F78(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_100080F98(), !v1))
      {
        if (!*(v0[5] + 16) || (type metadata accessor for SerialNumberMappingResult(0), sub_10006B750(&qword_1000B8EC8, type metadata accessor for SerialNumberMappingResult), result = sub_100080FA8(), !v1))
        {
          v8 = v0 + *(type metadata accessor for GetSNResponse(0) + 32);
          return sub_100080E58();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10006B254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 32);
  return sub_100080E68();
}

uint64_t sub_10006B2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10006B328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_100080E78();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10006B3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B750(&qword_1000B8FB0, type metadata accessor for GetSNResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006B46C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100080FE8();
  v6 = sub_100016240(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10006B508(uint64_t a1)
{
  v2 = sub_10006B750(&qword_1000B8D70, type metadata accessor for GetSNResponse);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10006B574()
{
  sub_100081988();
  sub_100081238();
  return sub_1000819B8();
}

uint64_t sub_10006B5CC()
{
  sub_10006B750(&qword_1000B8D70, type metadata accessor for GetSNResponse);

  return sub_100080F58();
}

Swift::Int sub_10006B648()
{
  sub_100081988();
  sub_100081238();
  return sub_1000819B8();
}

uint64_t sub_10006B750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006C790(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006C8A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SerialNumberMappingResult(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_27:
    v23 = 0;
    return v23 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_10006DD30(v14, v11, type metadata accessor for SerialNumberMappingResult);
      sub_10006DD30(v15, v8, type metadata accessor for SerialNumberMappingResult);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_100081888() & 1) == 0)
      {
        break;
      }

      v18 = v11[32];
      v19 = v8[32];
      if (v18 == 255)
      {
        if (v19 != 255)
        {
          break;
        }
      }

      else
      {
        if (v19 == 255)
        {
          break;
        }

        v20 = *(v11 + 2);
        v21 = *(v8 + 2);
        if (v18)
        {
          if ((v19 & 1) == 0 || v20 != v21)
          {
            break;
          }
        }

        else if ((v19 & 1) != 0 || (v20 != v21 || *(v11 + 3) != *(v8 + 3)) && (sub_100081888() & 1) == 0)
        {
          break;
        }
      }

      v22 = *(v4 + 24);
      sub_100080E78();
      sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
      v23 = sub_100081258();
      sub_10006DD98(v8, type metadata accessor for SerialNumberMappingResult);
      sub_10006DD98(v11, type metadata accessor for SerialNumberMappingResult);
      if (v23)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_10006DD98(v8, type metadata accessor for SerialNumberMappingResult);
    sub_10006DD98(v11, type metadata accessor for SerialNumberMappingResult);
    goto LABEL_27;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10006CB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_100081888() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10006CBFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v26 = a3(0);
  v9 = *(*(v26 - 8) + 64);
  v10 = __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v25 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_19:
    v23 = 0;
    return v23 & 1;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    while (1)
    {
      sub_10006DD30(v18, v15, a4);
      sub_10006DD30(v19, v12, a4);
      v21 = *v15 == *v12 && *(v15 + 1) == *(v12 + 1);
      if (!v21 && (sub_100081888() & 1) == 0 || *(v15 + 4) != *(v12 + 4) || (*(v15 + 3) != *(v12 + 3) || *(v15 + 4) != *(v12 + 4)) && (sub_100081888() & 1) == 0)
      {
        break;
      }

      v22 = *(v26 + 28);
      sub_100080E78();
      sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
      v23 = sub_100081258();
      sub_10006DD98(v12, a5);
      sub_10006DD98(v15, a5);
      if (v23)
      {
        v19 += v20;
        v18 += v20;
        if (--v16)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_10006DD98(v12, a5);
    sub_10006DD98(v15, a5);
    goto LABEL_19;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10006CE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v27 = a3(0);
  v9 = *(*(v27 - 8) + 64);
  v10 = __chkstk_darwin(v27);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v15 = (&v26 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    while (1)
    {
      sub_10006DD30(v18, v15, a4);
      sub_10006DD30(v19, v12, a4);
      v21 = *v15 == *v12 && v15[1] == v12[1];
      if (!v21 && (sub_100081888() & 1) == 0)
      {
        break;
      }

      v22 = v15[2] == v12[2] && v15[3] == v12[3];
      if (!v22 && (sub_100081888() & 1) == 0)
      {
        break;
      }

      v23 = *(v27 + 24);
      sub_100080E78();
      sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
      v24 = sub_100081258();
      sub_10006DD98(v12, a5);
      sub_10006DD98(v15, a5);
      if (v24)
      {
        v19 += v20;
        v18 += v20;
        if (--v16)
        {
          continue;
        }
      }

      return v24 & 1;
    }

    sub_10006DD98(v12, a5);
    sub_10006DD98(v15, a5);
    goto LABEL_20;
  }

  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10006D0A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 == 255)
  {
    if (v6 == 255)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v6 == 255)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v5)
  {
    if ((v6 & 1) == 0 || v7 != v8)
    {
      return 0;
    }
  }

  else if ((v6 & 1) != 0 || (v7 != v8 || *(a1 + 24) != *(a2 + 24)) && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v10 = *(type metadata accessor for SerialNumberMappingResult(0) + 24);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006D1D0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for SerialNumberMapping(0) + 24);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006D2B0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10006D2C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10006D2C8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10006D2D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_100081888() & 1) == 0 || (sub_10006C8A0(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for GetSNResponse(0) + 32);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006D3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v7 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 28);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006D4D0(void *a1, void *a2)
{
  v4 = type metadata accessor for SerialNumberMapping(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100006940(&qword_1000B8F90, &qword_1000882F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v30 - v11);
  v13 = sub_100006940(&qword_1000B8F98, qword_100088300);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_100081888() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_100081888() & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = type metadata accessor for PutSNRequest(0);
  v18 = *(v17 + 28);
  v19 = *(v13 + 48);
  sub_10006DEFC(a1 + v18, v16);
  sub_10006DEFC(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_10001A80C(v16, &qword_1000B8F90, &qword_1000882F8);
LABEL_27:
      v29 = *(v17 + 24);
      sub_100080E78();
      sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
      v23 = sub_100081258();
      return v23 & 1;
    }

    goto LABEL_12;
  }

  sub_10006DEFC(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_10006DD98(v12, type metadata accessor for SerialNumberMapping);
LABEL_12:
    v21 = &qword_1000B8F98;
    v22 = qword_100088300;
LABEL_13:
    sub_10001A80C(v16, v21, v22);
    goto LABEL_14;
  }

  sub_10006DF6C(&v16[v19], v8);
  v25 = *v12 == *v8 && v12[1] == v8[1];
  if (!v25 && (sub_100081888() & 1) == 0 || (v12[2] == v8[2] ? (v26 = v12[3] == v8[3]) : (v26 = 0), !v26 && (sub_100081888() & 1) == 0))
  {
    sub_10006DD98(v8, type metadata accessor for SerialNumberMapping);
    sub_10006DD98(v12, type metadata accessor for SerialNumberMapping);
    v21 = &qword_1000B8F90;
    v22 = &qword_1000882F8;
    goto LABEL_13;
  }

  v27 = *(v4 + 24);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  v28 = sub_100081258();
  sub_10006DD98(v8, type metadata accessor for SerialNumberMapping);
  sub_10006DD98(v12, type metadata accessor for SerialNumberMapping);
  sub_10001A80C(v16, &qword_1000B8F90, &qword_1000882F8);
  if (v28)
  {
    goto LABEL_27;
  }

LABEL_14:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_10006D8F8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_100081888() & 1) == 0 || (sub_10006CBFC(*(a1 + 40), *(a2 + 40), type metadata accessor for CalDataStatus, type metadata accessor for CalDataStatus, type metadata accessor for CalDataStatus) & 1) == 0 || (sub_10006CBFC(*(a1 + 48), *(a2 + 48), type metadata accessor for PubkeyEncDataStatus, type metadata accessor for PubkeyEncDataStatus, type metadata accessor for PubkeyEncDataStatus) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PutResponse(0) + 36);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006DA80(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_100081888() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for GetResponse(0) + 32);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006DB94(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_100081888() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10006CE5C(a1[6], a2[6], type metadata accessor for CalDataEntry, type metadata accessor for CalDataEntry, type metadata accessor for CalDataEntry) & 1) == 0 || (sub_10006CE5C(a1[7], a2[7], type metadata accessor for PubkeyEncryptedData, type metadata accessor for PubkeyEncryptedData, type metadata accessor for PubkeyEncryptedData) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PutRequest(0) + 36);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006DD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006DD98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006DDF8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_100081888() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_100081888() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for GetRequest(0) + 28);
  sub_100080E78();
  sub_10006B750(&qword_1000B8F38, &type metadata accessor for UnknownStorage);
  return sub_100081258() & 1;
}

uint64_t sub_10006DEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B8F90, &qword_1000882F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SerialNumberMapping(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10006E088(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10006E09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006E0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006E16C()
{
  result = sub_100080E78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10006E218()
{
  sub_10006E32C(319, &qword_1000B9288, type metadata accessor for CalDataEntry, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10006E32C(319, &unk_1000B9290, type metadata accessor for PubkeyEncryptedData, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100080E78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006E32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10006E400(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080E78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006E4C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080E78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006E564()
{
  sub_10006E32C(319, &qword_1000B9468, type metadata accessor for CalDataStatus, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10006E32C(319, &unk_1000B9470, type metadata accessor for PubkeyEncDataStatus, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100080E78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10006E6DC()
{
  result = sub_100080E78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006E778(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080E78();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100006940(&qword_1000B8F90, &qword_1000882F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006E8BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100080E78();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100006940(&qword_1000B8F90, &qword_1000882F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006E9EC()
{
  sub_100080E78();
  if (v0 <= 0x3F)
  {
    sub_10006E32C(319, &unk_1000B9650, type metadata accessor for SerialNumberMapping, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10006EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080E78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006EB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080E78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006EC30()
{
  result = sub_100080E78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006ECC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080E78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006ED88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080E78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006EE54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_10006EEF4(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_100080E78();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006EEF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10006EF5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080E78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006F020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080E78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006F0C4()
{
  sub_10006E32C(319, &unk_1000B9828, type metadata accessor for SerialNumberMappingResult, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100080E78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006F258()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B9868);
  sub_100016240(v0, qword_1000B9868);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for MuseAccessoryDataClient();
    sub_100006940(&qword_1000B9948, &qword_1000884A0);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

void sub_10006F34C(uint64_t a1, char a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = objc_allocWithZone(CKContainerID);
  v7 = sub_100081288();
  v8 = [v6 initWithContainerIdentifier:v7 environment:v5];

  v9 = [objc_allocWithZone(CKContainer) initWithContainerID:v8];
  v10 = *(v3 + 24);
  *(v3 + 24) = v9;
  v11 = v9;

  if (v11)
  {

    v12 = sub_100081288();
    v13 = [v11 codeServiceWithName:v12 databaseScope:a1];

    if (qword_1000B7480 != -1)
    {
      swift_once();
    }

    v14 = sub_100081018();
    sub_100016240(v14, qword_1000B9868);
    v15 = v13;
    v16 = sub_100080FF8();
    v17 = sub_1000815B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Created codeService: %@", v18, 0xCu);
      sub_10006F698(v19);
    }

    *(v3 + 16) = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006F588(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = result;
  if (a3)
  {
    v13 = *(result + 8);

    *v11 = a2;
    v11[1] = a3;
  }

  if (a5)
  {
    v15 = v11[3];

    v11[2] = a4;
    v11[3] = a5;
  }

  if (a7)
  {
    v16 = v11[5];

    v11[4] = a6;
    v11[5] = a7;
  }

  return result;
}

uint64_t sub_10006F634()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10006F698(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B83B0, &qword_100084EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F73C(uint64_t result)
{
  if (result > 5)
  {
    if (result <= 10)
    {
      return result;
    }

    if (result == 99)
    {
      return 11;
    }

    return 12;
  }

  if (result < 0)
  {
    return 12;
  }

  return result;
}

id CRXCNewEnrollmentInfo.__allocating_init(uuid:lensCalibrationStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t CRXCNewEnrollmentInfo.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  v2 = *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8);

  return v1;
}

id CRXCNewEnrollmentInfo.init(uuid:lensCalibrationStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return objc_msgSendSuper2(&v6, "init");
}

BOOL CRXCNewEnrollmentInfo.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v7);
  if (v8)
  {
    type metadata accessor for CRXCNewEnrollmentInfo();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid) == *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid] && *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8) == *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8];
      if (v2 || (sub_100081888() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
        v4 = *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_10000D014(v7);
  }

  return 0;
}

uint64_t CRXCNewEnrollmentInfo.description.getter()
{
  sub_100081698(56);
  v3._object = 0x8000000100095A10;
  v3._countAndFlagsBits = 0xD000000000000018;
  sub_1000813B8(v3);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid));
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x8000000100095A30;
  sub_1000813B8(v4);
  v2 = *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v5._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v5);

  v6._countAndFlagsBits = 10530;
  v6._object = 0xE200000000000000;
  sub_1000813B8(v6);
  return 0;
}

Swift::Void __swiftcall CRXCNewEnrollmentInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  v4 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8);
  v5 = sub_100081288();
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

uint64_t CRXCNewEnrollmentInfo.init(coder:)(void *a1)
{
  v2 = sub_100081288();
  [a1 decodeIntegerForKey:v2];

  sub_10004CA64();
  v3 = sub_1000815E8();
  if (v3)
  {
    v6 = 0;
    v4 = v3;
    sub_1000812A8();
  }

  type metadata accessor for CRXCNewEnrollmentInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

id CRXCNewEnrollmentInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000700A0()
{
  v1 = v0[3];

  sub_100006A34(v0[4], v0[5]);
  sub_10001A164(v0[6], v0[7]);
  sub_10001A164(v0[8], v0[9]);

  return _swift_deallocClassInstance(v0, 84, 7);
}

void *sub_100070114()
{
  v1 = sub_100080DE8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100081278();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100081268();
  sub_100080DD8();
  v0[2] = sub_100081318();
  v0[3] = v5;
  sub_100081268();
  sub_100080DD8();
  v0[4] = sub_100081318();
  v0[5] = v6;
  sub_100081268();
  sub_100080DD8();
  v0[6] = sub_100081318();
  v0[7] = v7;
  sub_100081268();
  sub_100080DD8();
  v0[8] = sub_100081318();
  v0[9] = v8;
  sub_100081268();
  sub_100080DD8();
  v0[10] = sub_100081318();
  v0[11] = v9;
  sub_100081268();
  sub_100080DD8();
  v0[12] = sub_100081318();
  v0[13] = v10;
  return v0;
}

uint64_t sub_100070428()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t CRXCPrescriptionRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  sub_10000D808(v1, *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8));
  return v1;
}

uint64_t CRXCPrescriptionRecord.enrollmentName.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName);
  v2 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8);

  return v1;
}

uint64_t CRXCPrescriptionRecord.enrollmentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate;
  v4 = sub_100080D98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CRXCPrescriptionRecord.leftCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8));
  return v1;
}

uint64_t CRXCPrescriptionRecord.rightCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8));
  return v1;
}

uint64_t CRXCPrescriptionRecord.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_10000CFA4(a1, v24);
  if (!v25)
  {
    sub_10000D014(v24);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v21 = 0;
    return v21 & 1;
  }

  v4 = *(v1 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  v5 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8);
  v6 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
  v7 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8];
  sub_10000D808(v6, v7);
  LOBYTE(v4) = sub_10000DAB0(v4, v5, v6, v7);
  sub_100006A34(v6, v7);
  if ((v4 & 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8);
  v9 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_28;
    }

    v10 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName) == *&v23[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName] && v8 == v9;
    if (!v10 && (sub_100081888() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    goto LABEL_28;
  }

  if ((sub_100080D68() & 1) == 0)
  {
    goto LABEL_28;
  }

  v12 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData);
  v11 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8);
  v14 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData];
  v13 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8];
  if (v11 >> 60 == 15)
  {
    if (v13 >> 60 != 15)
    {
      goto LABEL_24;
    }

    sub_10001622C(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8]);
    sub_10001622C(v12, v11);
    sub_10001A164(v12, v11);
  }

  else
  {
    if (v13 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_10001622C(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8]);
    sub_10001622C(v14, v13);
    sub_10001622C(v12, v11);
    v15 = sub_10000DAB0(v12, v11, v14, v13);
    sub_10001A164(v14, v13);
    sub_10001A164(v14, v13);
    sub_10001A164(v12, v11);
    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v12 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData);
  v11 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8);
  v14 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData];
  v13 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8];
  if (v11 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_10001622C(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8]);
      sub_10001622C(v12, v11);
      sub_10001A164(v12, v11);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v13 >> 60 == 15)
  {
LABEL_24:
    sub_10001622C(v14, v13);
    sub_10001622C(v12, v11);

    sub_10001A164(v12, v11);
    sub_10001A164(v14, v13);
    goto LABEL_29;
  }

  sub_10001622C(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8]);
  sub_10001622C(v14, v13);
  sub_10001622C(v12, v11);
  v16 = sub_10000DAB0(v12, v11, v14, v13);
  sub_10001A164(v14, v13);
  sub_10001A164(v14, v13);
  sub_10001A164(v12, v11);
  if ((v16 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_26:
  sub_10000DC18(0, &qword_1000B75E8, NSObject_ptr);
  v17 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftEye);
  v18 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftEye];
  LOBYTE(v17) = sub_1000815F8();

  if ((v17 & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightEye);
  v20 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightEye];
  v21 = sub_1000815F8();

  return v21 & 1;
}

Swift::Void __swiftcall CRXCPrescriptionRecord.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  v5 = *(v1 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8);
  isa = sub_100080CC8().super.isa;
  v7 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:isa forKey:v7];

  v8 = sub_100080D48().super.isa;
  v9 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftEye);
  v11 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightEye);
  v13 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  if (*(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8))
  {
    v14 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName);
    v15 = sub_100081288();
    v16 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  }

  v17 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData);
  v18 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8);
  if (v18 >> 60 != 15)
  {
    v19 = *v17;
    sub_10000D808(*v17, *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8));
    v20 = sub_100080CC8().super.isa;
    v21 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

    sub_10001A164(v19, v18);
  }

  v22 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData);
  v23 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8);
  if (v23 >> 60 != 15)
  {
    v24 = *v22;
    sub_10000D808(*v22, v23);
    v25 = sub_100080CC8().super.isa;
    v26 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

    sub_10001A164(v24, v23);
  }
}

id CRXCPrescriptionRecord.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v59 - v7;
  v9 = sub_100080D98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  sub_10000DC18(0, &qword_1000B88D0, NSData_ptr);
  v17 = sub_1000815E8();
  if (!v17 || (v65 = xmmword_100084890, v68 = xmmword_100084890, v18 = v17, sub_100080CE8(), v18, *(&v68 + 1) >> 60 == 15))
  {

LABEL_16:
    v39 = *((swift_isaMask & *v2) + 0x30);
    v40 = *((swift_isaMask & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v62 = v16;
  v19 = v10;
  v66 = *(&v68 + 1);
  v64 = ObjectType;
  v20 = v68;
  sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr);
  v21 = sub_1000815E8();
  if (!v21)
  {
    v38 = v20;
LABEL_15:
    sub_10001A164(v38, v66);

    goto LABEL_16;
  }

  v22 = v21;
  v63 = v20;
  v23 = v19;
  (*(v19 + 56))(v8, 1, 1, v9);
  sub_10005DA4C();
  sub_1000817F8();

  if ((*(v19 + 48))(v8, 1, v9) == 1)
  {
LABEL_14:
    v38 = v63;
    goto LABEL_15;
  }

  v24 = *(v19 + 32);
  v24(v14, v8, v9);
  v25 = v62;
  v24(v62, v14, v9);
  type metadata accessor for CRXCEyePrescription();
  v26 = sub_1000815E8();
  if (!v26)
  {
    (*(v23 + 8))(v25, v9);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sub_1000815E8();
  v29 = v63;
  if (!v28)
  {
    (*(v23 + 8))(v25, v9);
    sub_10001A164(v29, v66);

    goto LABEL_16;
  }

  v30 = v28;
  v31 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  v32 = v66;
  *v31 = v63;
  v31[1] = v32;
  (*(v23 + 16))(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate, v25, v9);
  *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftEye) = v27;
  *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightEye) = v30;
  sub_10001622C(v29, v32);
  v61 = v27;
  v60 = v30;
  v33 = sub_100081288();
  LOBYTE(v32) = [a1 containsValueForKey:v33];

  if ((v32 & 1) != 0 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v34 = sub_1000815E8()) != 0) && (v68 = 0uLL, v35 = v34, sub_1000812A8(), v35, (v36 = *(&v68 + 1)) != 0))
  {
    v37 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName);
    *v37 = v68;
    v37[1] = v36;
  }

  else
  {
    v42 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName);
    *v42 = 0;
    v42[1] = 0;
  }

  v43 = sub_100081288();
  v44 = [a1 containsValueForKey:v43];

  if (v44 && (v45 = sub_1000815E8()) != 0 && (v68 = v65, v46 = v45, sub_100080CE8(), v46, v47 = *(&v68 + 1), *(&v68 + 1) >> 60 != 15))
  {
    v48 = v68;
  }

  else
  {
    v48 = 0;
    v47 = 0xF000000000000000;
  }

  v49 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData);
  *v49 = v48;
  v49[1] = v47;
  v50 = sub_100081288();
  v51 = [a1 containsValueForKey:v50];

  if (!v51)
  {
    (*(v23 + 8))(v25, v9);
    sub_10001A164(v63, v66);

    v56 = 0;
    v55 = 0xF000000000000000;
    v53 = v64;
    goto LABEL_30;
  }

  v52 = sub_1000815E8();
  (*(v23 + 8))(v25, v9);
  v54 = v63;
  v53 = v64;
  if (!v52)
  {
    sub_10001A164(v63, v66);

    goto LABEL_29;
  }

  v68 = v65;
  sub_100080CE8();
  sub_10001A164(v54, v66);

  v55 = *(&v68 + 1);
  if (*(&v68 + 1) >> 60 == 15)
  {
LABEL_29:
    v56 = 0;
    v55 = 0xF000000000000000;
    goto LABEL_30;
  }

  v56 = v68;
LABEL_30:
  v57 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData);
  *v57 = v56;
  v57[1] = v55;
  v67.receiver = v2;
  v67.super_class = v53;
  v58 = objc_msgSendSuper2(&v67, "init");

  return v58;
}

uint64_t type metadata accessor for CRXCPrescriptionRecord()
{
  result = qword_1000B9CA0;
  if (!qword_1000B9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007185C()
{
  result = sub_100080D98();
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

uint64_t CRXCPrescriptionState.rxUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID);
  v2 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8);

  return v1;
}

uint64_t CRXCPrescriptionState.description.getter()
{
  sub_100081698(127);
  v9._countAndFlagsBits = 0x74536D6574737973;
  v9._object = 0xED0000203A657461;
  sub_1000813B8(v9);
  v4 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_systemState);
  v10._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v10);

  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x8000000100095E90;
  sub_1000813B8(v11);
  v5 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus);
  v12._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v12);

  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x8000000100095EB0;
  sub_1000813B8(v13);
  v6 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus);
  v14._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v14);

  v15._object = 0x8000000100095ED0;
  v15._countAndFlagsBits = 0xD000000000000012;
  sub_1000813B8(v15);
  v7 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus);
  v16._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v16);

  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x8000000100095EF0;
  sub_1000813B8(v17);
  v8 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus);
  v18._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v18);

  v19._countAndFlagsBits = 0x444955557872202CLL;
  v19._object = 0xEA0000000000203ALL;
  sub_1000813B8(v19);
  if (*(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8))
  {
    v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID);
    v2 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8);
  }

  else
  {
    v2 = 0xE500000000000000;
    v1 = 0x296C696E28;
  }

  v20._countAndFlagsBits = v1;
  v20._object = v2;
  sub_1000813B8(v20);

  return 0;
}

uint64_t CRXCPrescriptionState.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_10000CFA4(a1, v9);
  if (!v10)
  {
    sub_10000D014(v9);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___CRXCPrescriptionState_systemState) != *&v8[OBJC_IVAR___CRXCPrescriptionState_systemState] || *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus) != *&v8[OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus] || *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus) != *&v8[OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus] || *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus) != *&v8[OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus] || *(v1 + OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus) != *&v8[OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus])
  {

    goto LABEL_15;
  }

  v3 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8);
  v4 = *&v8[OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8];
  if (!v3)
  {
    v6 = *&v8[OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8];

    if (!v4)
    {
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
LABEL_20:

    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___CRXCPrescriptionState_rxUUID) != *&v8[OBJC_IVAR___CRXCPrescriptionState_rxUUID] || v3 != v4)
  {
    v7 = *&v8[OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8];
    LOBYTE(v4) = sub_100081888();
    goto LABEL_20;
  }

  LOBYTE(v4) = 1;
  return v4 & 1;
}

Swift::Void __swiftcall CRXCPrescriptionState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_systemState);
  v4 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus);
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus);
  v10 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus);
  v12 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];

  if (*(v1 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8))
  {
    v13 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_rxUUID);
    v14 = sub_100081288();
    v15 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  }
}

id CRXCPrescriptionState.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100081288();
  v6 = [a1 decodeIntegerForKey:v5];

  v7 = sub_100081288();
  v8 = [a1 decodeIntegerForKey:v7];

  v9 = sub_100081288();
  v10 = [a1 decodeIntegerForKey:v9];

  v11 = sub_100081288();
  v12 = [a1 decodeIntegerForKey:v11];

  v13 = sub_100081288();
  v14 = [a1 decodeIntegerForKey:v13];

  v15 = sub_100073E58(v6);
  if (v16)
  {
    goto LABEL_6;
  }

  v17 = v15;
  v18 = sub_100074168(v8);
  if (v19 & 1) != 0 || (v20 = v18, v21 = sub_10000DD38(v10), (v22) || (v23 = v21, v24 = sub_100073E80(v12), (v25) || (v26 = v24, v27 = sub_100074168(v14), (v28))
  {
LABEL_6:

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[OBJC_IVAR___CRXCPrescriptionState_systemState] = v17;
    *&v2[OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus] = v20;
    *&v2[OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus] = v23;
    *&v2[OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus] = v26;
    *&v2[OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus] = v27;
    v30 = sub_100081288();
    v31 = [a1 containsValueForKey:v30];

    if (v31)
    {
      sub_10004CA64();
      v32 = sub_1000815E8();
      if (v32)
      {
        v36 = 0;
        v33 = v32;
        sub_1000812A8();
      }
    }

    v34 = &v2[OBJC_IVAR___CRXCPrescriptionState_rxUUID];
    *v34 = 0;
    *(v34 + 1) = 0;
    v37.receiver = v2;
    v37.super_class = ObjectType;
    v35 = objc_msgSendSuper2(&v37, "init", v36);

    return v35;
  }
}

id _s23CorePrescriptionService21CRXCPrescriptionStateC5emptyACyFZ_0()
{
  v0 = type metadata accessor for CRXCPrescriptionState();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus] = 0;
  *&v1[OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus] = 0;
  *&v1[OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus] = 0;
  *&v1[OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus] = 0;
  v2 = &v1[OBJC_IVAR___CRXCPrescriptionState_rxUUID];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR___CRXCPrescriptionState_systemState] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t CRXCPrismBaseDirection.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x70752F74756FLL;
    case 2:
      return 1701736302;
    case 1:
      return 0x6E776F642F6E69;
  }

  result = sub_1000818C8();
  __break(1u);
  return result;
}

unint64_t CRXCPrismBaseDirection.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1000726F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100072714()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x70752F74756FLL;
  }

  if (v1 == 2)
  {
    return 1701736302;
  }

  if (v1 == 1)
  {
    return 0x6E776F642F6E69;
  }

  v3 = *v0;
  result = sub_1000818C8();
  __break(1u);
  return result;
}

uint64_t CRXCPrismType.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x72616C6F70;
  }

  if (a1 == 1)
  {
    return 0x75676E6174636572;
  }

  result = sub_1000818C8();
  __break(1u);
  return result;
}

unint64_t CRXCLensDetectionMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_100072820@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10007283C()
{
  if (!*v0)
  {
    return 0x72616C6F70;
  }

  if (*v0 == 1)
  {
    return 0x75676E6174636572;
  }

  v2 = *v0;
  result = sub_1000818C8();
  __break(1u);
  return result;
}

id CRXCEyePrismCorrection.__allocating_init(horizontalBaseDirection:horizontalAmount:verticalBaseDirection:verticalAmount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection] = a1;
  *&v9[OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount] = a3;
  *&v9[OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection] = a2;
  *&v9[OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "init");
}

id CRXCEyePrismCorrection.init(horizontalBaseDirection:horizontalAmount:verticalBaseDirection:verticalAmount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection] = a1;
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount] = a3;
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection] = a2;
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRXCEyePrismCorrection();
  return objc_msgSendSuper2(&v6, "init");
}

BOOL CRXCEyePrismCorrection.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v6);
  if (v7)
  {
    type metadata accessor for CRXCEyePrismCorrection();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection) == *&v5[OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection] && *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount) == *&v5[OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount] && *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection) == *&v5[OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection])
      {
        v2 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount);
        v3 = *&v5[OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_10000D014(v6);
  }

  return 0;
}

uint64_t CRXCEyePrismCorrection.description.getter()
{
  v1 = 0x70752F74756FLL;
  sub_100081698(22);

  sub_100006940(&qword_1000B7528, &unk_100086800);
  v2 = swift_allocObject();
  v3 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount);
  *(v2 + 16) = xmmword_100084830;
  *(v2 + 56) = &type metadata for Double;
  *(v2 + 64) = &protocol witness table for Double;
  *(v2 + 32) = v3;
  v12._countAndFlagsBits = sub_1000812E8();
  sub_1000813B8(v12);

  v13._countAndFlagsBits = 10272;
  v13._object = 0xE200000000000000;
  sub_1000813B8(v13);
  v4 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection);
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = 0xE400000000000000;
      v6._countAndFlagsBits = 1701736302;
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v5 = 0xE700000000000000;
      v6._countAndFlagsBits = 0x6E776F642F6E69;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6._countAndFlagsBits = 0x70752F74756FLL;
  }

  v6._object = v5;
  sub_1000813B8(v6);

  v14._countAndFlagsBits = 0x203A56202C29;
  v7 = 0xE600000000000000;
  v14._object = 0xE600000000000000;
  sub_1000813B8(v14);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100084830;
  v9 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount);
  *(v8 + 56) = &type metadata for Double;
  *(v8 + 64) = &protocol witness table for Double;
  *(v8 + 32) = v9;
  v15._countAndFlagsBits = sub_1000812E8();
  sub_1000813B8(v15);

  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  sub_1000813B8(v16);
  v10 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection);
  switch(v10)
  {
    case 0:
LABEL_12:
      v17._countAndFlagsBits = v1;
      v17._object = v7;
      sub_1000813B8(v17);

      v18._countAndFlagsBits = 41;
      v18._object = 0xE100000000000000;
      sub_1000813B8(v18);
      return 2112072;
    case 2:
      v7 = 0xE400000000000000;
      v1 = 1701736302;
      goto LABEL_12;
    case 1:
      v7 = 0xE700000000000000;
      v1 = 0x6E776F642F6E69;
      goto LABEL_12;
  }

LABEL_13:
  result = sub_1000818C8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CRXCEyePrismCorrection.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection);
  v4 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount);
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount);
  v10 = sub_100081288();
  [(objc_class *)with.super.isa encodeDouble:v10 forKey:v9];
}

id CRXCEyePrismCorrection.init(coder:)(void *a1)
{
  v3 = sub_100081288();
  v4 = [a1 decodeIntegerForKey:v3];

  v5 = sub_100081288();
  v6 = [a1 decodeIntegerForKey:v5];

  if (v4 > 2 || v6 > 2)
  {

    type metadata accessor for CRXCEyePrismCorrection();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v1[OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection] = v4;
    *&v1[OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection] = v6;
    v8 = sub_100081288();
    [a1 decodeDoubleForKey:v8];
    v10 = v9;

    *&v1[OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount] = v10;
    v11 = sub_100081288();
    [a1 decodeDoubleForKey:v11];
    v13 = v12;

    *&v1[OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount] = v13;
    v16.receiver = v1;
    v16.super_class = type metadata accessor for CRXCEyePrismCorrection();
    v14 = objc_msgSendSuper2(&v16, "init");

    return v14;
  }
}

id CRXCPrismCorrection.__allocating_init(prismOD:prismOS:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___CRXCPrismCorrection_prismOD] = a1;
  *&v7[OBJC_IVAR___CRXCPrismCorrection_prismOS] = a2;
  *&v7[OBJC_IVAR___CRXCPrismCorrection_type] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

id CRXCPrismCorrection.init(prismOD:prismOS:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CRXCPrismCorrection_prismOD] = a1;
  *&v3[OBJC_IVAR___CRXCPrismCorrection_prismOS] = a2;
  *&v3[OBJC_IVAR___CRXCPrismCorrection_type] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for CRXCPrismCorrection();
  return objc_msgSendSuper2(&v5, "init");
}

BOOL CRXCPrismCorrection.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v12);
  if (v13)
  {
    type metadata accessor for CRXCPrismCorrection();
    if (swift_dynamicCast())
    {
      sub_10007354C();
      v2 = v1;
      v3 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOD);
      v4 = *&v11[OBJC_IVAR___CRXCPrismCorrection_prismOD];
      LOBYTE(v3) = sub_1000815F8();

      if (v3)
      {
        v5 = *(v2 + OBJC_IVAR___CRXCPrismCorrection_prismOS);
        v6 = *&v11[OBJC_IVAR___CRXCPrismCorrection_prismOS];
        v7 = sub_1000815F8();

        if (v7)
        {
          v8 = *(v2 + OBJC_IVAR___CRXCPrismCorrection_type);
          v9 = *&v11[OBJC_IVAR___CRXCPrismCorrection_type];

          return v8 == v9;
        }
      }
    }
  }

  else
  {
    sub_10000D014(v12);
  }

  return 0;
}

unint64_t sub_10007354C()
{
  result = qword_1000B75E8;
  if (!qword_1000B75E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B75E8);
  }

  return result;
}

uint64_t sub_1000735B0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10000D014(v10);
  return v8 & 1;
}

id sub_100073650(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_100081288();

  return v5;
}

uint64_t CRXCPrismCorrection.description.getter()
{
  v1 = v0;
  sub_100081698(24);

  v2 = [*(v0 + OBJC_IVAR___CRXCPrismCorrection_prismOD) description];
  v3 = sub_1000812B8();
  v5 = v4;

  v15._countAndFlagsBits = v3;
  v15._object = v5;
  sub_1000813B8(v15);

  v16._countAndFlagsBits = 0x203A534F203BLL;
  v16._object = 0xE600000000000000;
  sub_1000813B8(v16);
  v6 = [*(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOS) description];
  v7 = sub_1000812B8();
  v9 = v8;

  v17._countAndFlagsBits = v7;
  v17._object = v9;
  sub_1000813B8(v17);

  v18._countAndFlagsBits = 0x203A65707974203BLL;
  v18._object = 0xE800000000000000;
  sub_1000813B8(v18);
  v10 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_type);
  if (!v10)
  {
    v11 = 0xE500000000000000;
    v12._countAndFlagsBits = 0x72616C6F70;
LABEL_5:
    v12._object = v11;
    sub_1000813B8(v12);

    return 540689487;
  }

  if (v10 == 1)
  {
    v11 = 0xEB0000000072616CLL;
    v12._countAndFlagsBits = 0x75676E6174636572;
    goto LABEL_5;
  }

  v14 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_type);
  result = sub_1000818C8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CRXCPrismCorrection.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOD);
  v4 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOS);
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_type);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

id CRXCPrismCorrection.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_100081288();
  v5 = [a1 decodeIntegerForKey:v4];

  type metadata accessor for CRXCEyePrismCorrection();
  v6 = sub_1000815E8();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000815E8();
    if (v8)
    {
      if (v5 < 2)
      {
        *&v2[OBJC_IVAR___CRXCPrismCorrection_prismOD] = v7;
        *&v2[OBJC_IVAR___CRXCPrismCorrection_prismOS] = v8;
        *&v2[OBJC_IVAR___CRXCPrismCorrection_type] = v5;
        v12.receiver = v2;
        v12.super_class = type metadata accessor for CRXCPrismCorrection();
        v9 = objc_msgSendSuper2(&v12, "init");

        return v9;
      }

      v11 = v8;

      v7 = v11;
    }
  }

  type metadata accessor for CRXCPrismCorrection();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100073BCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100073C08()
{
  result = qword_1000B9D50;
  if (!qword_1000B9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9D50);
  }

  return result;
}

unint64_t sub_100073C60()
{
  result = qword_1000B9D58;
  if (!qword_1000B9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9D58);
  }

  return result;
}

unint64_t sub_100073DBC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100073E80(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100073DF0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100073E70(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100073E24@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100073E58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100073E58(unint64_t result)
{
  if (result > 4 || result == 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100073E70(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100073E80(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100073E94()
{
  result = qword_1000B9EE0;
  if (!qword_1000B9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9EE0);
  }

  return result;
}

unint64_t sub_100073EEC()
{
  result = qword_1000B9EE8;
  if (!qword_1000B9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9EE8);
  }

  return result;
}

unint64_t sub_100073F44()
{
  result = qword_1000B9EF0;
  if (!qword_1000B9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9EF0);
  }

  return result;
}

unint64_t sub_100073F9C()
{
  result = qword_1000B9EF8;
  if (!qword_1000B9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9EF8);
  }

  return result;
}

unint64_t sub_100073FF4()
{
  result = qword_1000B9F00;
  if (!qword_1000B9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9F00);
  }

  return result;
}

unint64_t sub_10007404C()
{
  result = qword_1000B9F08;
  if (!qword_1000B9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9F08);
  }

  return result;
}

unint64_t sub_1000740A4()
{
  result = qword_1000B9F10;
  if (!qword_1000B9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9F10);
  }

  return result;
}

Swift::String __swiftcall Data.toHexEncodedString()()
{
  sub_100074254(v0, v1);
  sub_100006940(&qword_1000B7530, &qword_100089380);
  sub_100006988();
  v2 = sub_100081248();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

unint64_t *sub_100074254(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10003E058(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
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
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_100080AE8();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_100080B18();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_100080AE8();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_100080B18();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100006940(&qword_1000B7528, &unk_100086800);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100084830;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1000812E8();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10003E058((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_1000745D4(uint64_t a1)
{
  if (sub_100081398())
  {
    goto LABEL_150;
  }

  result = sub_100081398();
  if (!result)
  {
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v3 = result;
  v82 = _swiftEmptyArrayStorage;
  result = sub_10003E078(0, result & ~(result >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v82;
    do
    {
      v5 = sub_100081438();
      v82 = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v10 = a1;
        v11 = v5;
        v12 = v6;
        sub_10003E078((v7 > 1), v8 + 1, 1);
        v6 = v12;
        v5 = v11;
        a1 = v10;
        v4 = v82;
      }

      v4[2] = v8 + 1;
      v9 = &v4[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      result = sub_1000813A8();
      --v3;
    }

    while (v3);
LABEL_11:
    v81 = v4[2];
    if (v81)
    {
      v13 = 0;
      v14 = 0;
      v15 = v4[2];
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = __OFADD__(v14, 2);
        v14 += 2;
        if (v17)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v13;
        if (v14 >= v81)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v16 = 0;
LABEL_19:
    v84 = _swiftEmptyArrayStorage;
    result = sub_10003E058(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_165;
    }

    v18 = v84;
    if (v16)
    {
      v19 = 0;
      v20 = v4 + 4;
      do
      {
        if (v19 >= v81)
        {
          goto LABEL_153;
        }

        v21 = v19 + 2;
        if (__OFADD__(v19, 2))
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v19 + 2;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        v23 = v4[2];
        if (v19 >= v23)
        {
          goto LABEL_155;
        }

        if (v19 + 1 >= v23)
        {
          goto LABEL_156;
        }

        v24 = v20[2 * v19 + 1];
        v25 = &v20[2 * v19 + 2];
        v26 = *v25;
        v27 = v25[1];
        v82 = v20[2 * v19];
        v83 = v24;
        v28 = v18;
        swift_bridgeObjectRetain_n();

        v85._countAndFlagsBits = v26;
        v85._object = v27;
        sub_1000813B8(v85);

        v18 = v28;
        v29 = v82;
        v84 = v28;
        v30 = v28[2];
        v31 = v18[3];
        if (v30 >= v31 >> 1)
        {
          result = sub_10003E058((v31 > 1), v30 + 1, 1);
          v18 = v84;
        }

        v18[2] = v30 + 1;
        v32 = &v18[2 * v30];
        v32[4] = v29;
        v32[5] = v24;
        v19 = v22;
        --v16;
      }

      while (v16);
      if (v22 >= v81)
      {
LABEL_33:
        v33 = v18;

LABEL_34:
        v34 = v33;
        v35 = v33[2];
        if (v35)
        {
          v36 = 0;
          v37 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v36 >= v34[2])
            {
              goto LABEL_157;
            }

            v38 = &v33[2 * v36 + 4];
            v39 = *v38;
            v40 = v38[1];
            ++v36;
            v41 = HIBYTE(v40) & 0xF;
            v42 = v39 & 0xFFFFFFFFFFFFLL;
            if ((v40 & 0x2000000000000000) != 0)
            {
              v43 = HIBYTE(v40) & 0xF;
            }

            else
            {
              v43 = v39 & 0xFFFFFFFFFFFFLL;
            }

            if (!v43)
            {
              goto LABEL_121;
            }

            if ((v40 & 0x1000000000000000) == 0)
            {
              break;
            }

            LOWORD(v39) = sub_10003E734(v39, v40, 16);

            v34 = v33;
            if ((v39 & 0x100) == 0)
            {
LABEL_124:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_100059C5C(0, *(v37 + 2) + 1, 1, v37);
                v37 = result;
              }

              v63 = *(v37 + 2);
              v62 = *(v37 + 3);
              if (v63 >= v62 >> 1)
              {
                result = sub_100059C5C((v62 > 1), v63 + 1, 1, v37);
                v34 = v33;
                v37 = result;
              }

              else
              {
                v34 = v33;
              }

              *(v37 + 2) = v63 + 1;
              v37[v63 + 32] = v39;
            }

LABEL_121:
            if (v36 == v35)
            {
              goto LABEL_147;
            }
          }

          if ((v40 & 0x2000000000000000) != 0)
          {
            v82 = v39;
            v83 = v40 & 0xFFFFFFFFFFFFFFLL;
            if (v39 == 43)
            {
              if (!v41)
              {
                goto LABEL_161;
              }

              if (--v41)
              {
                LOBYTE(v39) = 0;
                v54 = &v82 + 1;
                while (1)
                {
                  v55 = *v54;
                  v56 = v55 - 48;
                  if ((v55 - 48) >= 0xA)
                  {
                    if ((v55 - 65) < 6)
                    {
                      v56 = v55 - 55;
                    }

                    else
                    {
                      if ((v55 - 97) > 5)
                      {
                        goto LABEL_119;
                      }

                      v56 = v55 - 87;
                    }
                  }

                  if (v39 > 0xFu)
                  {
                    break;
                  }

                  LOBYTE(v39) = v56 + 16 * v39;
                  ++v54;
                  if (!--v41)
                  {
                    goto LABEL_120;
                  }
                }
              }
            }

            else if (v39 == 45)
            {
              if (!v41)
              {
                goto LABEL_163;
              }

              if (--v41)
              {
                LOBYTE(v39) = 0;
                v48 = &v82 + 1;
                while (1)
                {
                  v49 = *v48;
                  v50 = v49 - 48;
                  if ((v49 - 48) >= 0xA)
                  {
                    if ((v49 - 65) < 6)
                    {
                      v50 = v49 - 55;
                    }

                    else
                    {
                      if ((v49 - 97) > 5)
                      {
                        goto LABEL_119;
                      }

                      v50 = v49 - 87;
                    }
                  }

                  if (v39 > 0xFu)
                  {
                    break;
                  }

                  LODWORD(v39) = 16 * (v39 & 0xF) - v50;
                  if ((v39 & 0xFFFFFF00) != 0)
                  {
                    break;
                  }

                  ++v48;
                  if (!--v41)
                  {
                    goto LABEL_120;
                  }
                }
              }
            }

            else if (v41)
            {
              LOBYTE(v39) = 0;
              v59 = &v82;
              while (1)
              {
                v60 = *v59;
                v61 = v60 - 48;
                if ((v60 - 48) >= 0xA)
                {
                  if ((v60 - 65) < 6)
                  {
                    v61 = v60 - 55;
                  }

                  else
                  {
                    if ((v60 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v61 = v60 - 87;
                  }
                }

                if (v39 > 0xFu)
                {
                  break;
                }

                LOBYTE(v39) = v61 + 16 * v39;
                ++v59;
                if (!--v41)
                {
                  goto LABEL_120;
                }
              }
            }

            goto LABEL_119;
          }

          if ((v39 & 0x1000000000000000) != 0)
          {
            result = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_1000816B8();
            v34 = v33;
          }

          v44 = *result;
          if (v44 == 43)
          {
            if (v42 < 1)
            {
              goto LABEL_164;
            }

            v41 = v42 - 1;
            if (v42 == 1)
            {
              goto LABEL_119;
            }

            if (result)
            {
              LOBYTE(v39) = 0;
              v51 = (result + 1);
              while (1)
              {
                v52 = *v51;
                v53 = v52 - 48;
                if ((v52 - 48) >= 0xA)
                {
                  if ((v52 - 65) < 6)
                  {
                    v53 = v52 - 55;
                  }

                  else
                  {
                    if ((v52 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v53 = v52 - 87;
                  }
                }

                if (v39 > 0xFu)
                {
                  goto LABEL_119;
                }

                LOBYTE(v39) = v53 + 16 * v39;
                ++v51;
                if (!--v41)
                {
                  goto LABEL_120;
                }
              }
            }
          }

          else if (v44 == 45)
          {
            if (v42 < 1)
            {
              goto LABEL_162;
            }

            v41 = v42 - 1;
            if (v42 == 1)
            {
              goto LABEL_119;
            }

            if (result)
            {
              LOBYTE(v39) = 0;
              v45 = (result + 1);
              while (1)
              {
                v46 = *v45;
                v47 = v46 - 48;
                if ((v46 - 48) >= 0xA)
                {
                  if ((v46 - 65) < 6)
                  {
                    v47 = v46 - 55;
                  }

                  else
                  {
                    if ((v46 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v47 = v46 - 87;
                  }
                }

                if (v39 > 0xFu)
                {
                  goto LABEL_119;
                }

                LODWORD(v39) = 16 * (v39 & 0xF) - v47;
                if ((v39 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_119;
                }

                ++v45;
                if (!--v41)
                {
                  goto LABEL_120;
                }
              }
            }
          }

          else
          {
            if (!v42)
            {
LABEL_119:
              LOBYTE(v39) = 0;
              LOBYTE(v41) = 1;
LABEL_120:
              LOBYTE(v84) = v41;
              if ((v41 & 1) == 0)
              {
                goto LABEL_124;
              }

              goto LABEL_121;
            }

            if (result)
            {
              LOBYTE(v39) = 0;
              while (1)
              {
                v57 = *result;
                v58 = v57 - 48;
                if ((v57 - 48) >= 0xA)
                {
                  if ((v57 - 65) < 6)
                  {
                    v58 = v57 - 55;
                  }

                  else
                  {
                    if ((v57 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v58 = v57 - 87;
                  }
                }

                if (v39 > 0xFu)
                {
                  goto LABEL_119;
                }

                LOBYTE(v39) = v58 + 16 * v39;
                ++result;
                if (!--v42)
                {
                  LOBYTE(v41) = 0;
                  goto LABEL_120;
                }
              }
            }
          }

          LOBYTE(v39) = 0;
          LOBYTE(v41) = 0;
          goto LABEL_120;
        }

        v37 = _swiftEmptyArrayStorage;
LABEL_147:

        v78 = sub_100081398();

        v79 = *(v37 + 2);
        if (!v79)
        {
          goto LABEL_166;
        }

        if (v78 / v79 == 2)
        {
          v80 = sub_10003EE08(v37);

          return v80;
        }

LABEL_150:

        return 0;
      }
    }

    else
    {
      if (!v81)
      {
        v33 = v84;

        goto LABEL_34;
      }

      v21 = 0;
    }

    v64 = &v4[2 * v21 + 7];
    while (1)
    {
      v65 = v21 + 2;
      v66 = __OFADD__(v21, 2);
      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      v67 = v4[2];
      if (v21 >= v67)
      {
        goto LABEL_159;
      }

      v68 = v21 + 1;
      if (v68 >= v67)
      {
        goto LABEL_160;
      }

      v69 = *(v64 - 2);
      v70 = *(v64 - 1);
      v71 = *v64;
      v82 = *(v64 - 3);
      v83 = v69;
      v72 = v18;
      swift_bridgeObjectRetain_n();

      v86._countAndFlagsBits = v70;
      v86._object = v71;
      sub_1000813B8(v86);

      v18 = v72;
      v73 = v82;
      v84 = v72;
      v74 = v72[2];
      v75 = v18[3];
      if (v74 >= v75 >> 1)
      {
        result = sub_10003E058((v75 > 1), v74 + 1, 1);
        v18 = v84;
      }

      v64 += 4;
      v18[2] = v74 + 1;
      v76 = &v18[2 * v74];
      v76[4] = v73;
      v76[5] = v69;
      v77 = !v66;
      v21 = v68 + 1;
      if (v65 >= v81)
      {
        v77 = 0;
      }

      if (!v77)
      {
        goto LABEL_33;
      }
    }

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
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int ZLibError.hashValue.getter(unsigned __int8 a1)
{
  sub_100081988();
  sub_100081998(a1);
  return sub_1000819B8();
}

unint64_t sub_100074EA0()
{
  result = qword_1000BA0B0;
  if (!qword_1000BA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA0B0);
  }

  return result;
}

Swift::Int Endianness.hashValue.getter(char a1)
{
  sub_100081988();
  sub_100081998(a1 & 1);
  return sub_1000819B8();
}

double DataEncoder.__allocating_init(endianness:alignment:)(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = xmmword_100084880;
  *(v4 + 32) = a1 & 1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 0;
  return result;
}

uint64_t DataEncoder.init(endianness:alignment:)(char a1, uint64_t a2)
{
  *(v2 + 16) = xmmword_100084880;
  *(v2 + 32) = a1 & 1;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t DataEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  (*(v6 + 16))(v22 - v11, a1, a2);
  swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    sub_100081788();
    (*(v6 + 8))(v12, a2);
    (*(v6 + 32))(v12, v10, a2);
  }

  v13 = sub_100006940(&qword_1000B7D98, &qword_100085A48);
  sub_100075374(v12, sub_1000752E0, 0, a2, &type metadata for Never, v13, &protocol witness table for Never, v14);
  v15 = *(v22[1] + 16);
  swift_beginAccess();

  if (v15)
  {
    sub_100080C98();
  }

  swift_endAccess();
  swift_bridgeObjectRelease_n();
  v16 = *(v3 + 48);
  v17 = __CFADD__(v16, v15);
  v18 = v16 + v15;
  if (v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + 48) = v18;
  v19 = *(v3 + 40);
  if (v19 > 1)
  {
    v20 = v18 % v19;
    if (v20)
    {
      if (v19 >= v20)
      {
        sub_100075468(v19 - v20);
        return (*(v6 + 8))(v12, a2);
      }

LABEL_12:
      __break(1u);
    }
  }

  return (*(v6 + 8))(v12, a2);
}

char *sub_1000752E0@<X0>(char *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_7:
    *a3 = v5;
    return result;
  }

  v6 = a3;
  result = sub_100059BE8(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100075374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_100075468(uint64_t result)
{
  v2 = result;
  if (result)
  {
    swift_beginAccess();
    v3 = v2;
    do
    {
      sub_100080C98();
      --v3;
    }

    while (v3);
    result = swift_endAccess();
  }

  v4 = *(v1 + 48);
  v5 = __CFADD__(v4, v2);
  v6 = v4 + v2;
  if (v5)
  {
    __break(1u);
  }

  *(v1 + 48) = v6;
  return result;
}

uint64_t DataEncoder.finish()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_10000D808(v1, *(v0 + 24));
  return v1;
}

uint64_t DataDecoder.endianness.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1 & 1;
  return result;
}

uint64_t DataDecoder.__allocating_init(data:endianness:alignment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *(result + 40) = a4;
  *(result + 48) = 0;
  return result;
}

uint64_t DataDecoder.init(data:endianness:alignment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  return v4;
}

uint64_t DataDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v11 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = v28 - v13;
  v15 = *(v3 + 40);
  if (v15 >= 2)
  {
    v16 = *(v3 + 48) % v15;
    if (v16)
    {
      result = v15 - v16;
      if (v15 < v16)
      {
LABEL_12:
        __break(1u);
        return result;
      }

      result = sub_100075B90(result);
      if (v4)
      {
        return result;
      }
    }
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_100075C5C(v9);
  if (!v4)
  {
    v29 = v8;
    v18 = *(v8 + 8);
    v19 = result;
    v20 = a1;
    v30 = a1;
    v21 = v17;
    v28[2] = 0;
    v22 = v18(v20, a2);
    v28[3] = v28;
    __chkstk_darwin(v22);
    v28[-2] = a2;
    v28[-1] = a3;
    v28[1] = a3;
    sub_100080CB8();
    v23 = v19;
    v24 = v21;
    v25 = v18;
    v26 = v29;
    v27 = v30;
    sub_100006A34(v23, v24);
    (*(v26 + 16))(v27, v14, a2);
    swift_beginAccess();
    if (*(v3 + 32) == 1)
    {
      (*(v26 + 32))(v11, v27, a2);
      sub_100081788();
      v25(v11, a2);
    }

    return (v25)(v14, a2);
  }

  return result;
}

uint64_t sub_100075920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(*(a4 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1000818D8();
  sub_100081868();
  v15 = a1;
  v16 = a2;
  return sub_100075A9C(a5, sub_100075EB0, v14, a3, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v12);
}

void *sub_100075A80(void *result, int a2, void *__src, uint64_t a4)
{
  if (result)
  {
    if (__src)
    {
      return memmove(result, __src, a4 - __src);
    }
  }

  return result;
}

uint64_t sub_100075A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

unint64_t sub_100075B90(unint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v2 = v6 - v5;
    if (!v8)
    {
LABEL_10:
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      v2 = 0;
      goto LABEL_13;
    }

    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    LODWORD(v2) = HIDWORD(v2) - v2;
    if (v8)
    {
      goto LABEL_20;
    }

    v2 = v2;
    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v2 = BYTE6(v3);
LABEL_13:
  v9 = v1[6];
  v10 = v2 >= v9;
  v11 = v2 - v9;
  if (v10)
  {
    if (v11 < result)
    {
      sub_100075E5C();
      swift_allocError();
      *v12 = 0;
      return swift_willThrow();
    }

    if (!__CFADD__(v9, result))
    {
      v1[6] = v9 + result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100075C5C(unint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_20;
    }

    v5 = HIDWORD(v2) - v2;
    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = BYTE6(v3);
LABEL_13:
  v9 = v1[6];
  v10 = v5 >= v9;
  v11 = v5 - v9;
  if (v10)
  {
    if (v11 < result)
    {
      sub_100075E5C();
      swift_allocError();
      *v12 = 0;
      return swift_willThrow();
    }

    v13 = v9 + result;
    if (!__CFADD__(v9, result))
    {
      v1[6] = v13;
      return sub_10007B15C(v9, v13, v2, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100075D58()
{
  sub_100006A34(*(v0 + 16), *(v0 + 24));

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_100075DB0()
{
  result = qword_1000BA0B8;
  if (!qword_1000BA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA0B8);
  }

  return result;
}

unint64_t sub_100075E5C()
{
  result = qword_1000BA308;
  if (!qword_1000BA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA308);
  }

  return result;
}

void *sub_100075EB0(void *result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return memmove(result, v2, *(v1 + 24) - v2);
    }
  }

  return result;
}

void sub_100075EDC(uint64_t a1)
{
  sub_100081768();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    v24 = sub_100081758();
    v25 = objc_opt_self();
    v26 = sub_100081288();
    v27 = sub_100081288();
    [v25 raise:v26 format:v27 arguments:v24];

    return;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    sub_10002329C(v7, v7[3]);
    v9 = sub_1000819C8();
    v10 = *v3;
    v11 = *(v9 + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v16 = v9;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_100081748();
      v9 = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v9 = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(v9 + 16);
    if (v20)
    {
      v21 = (v9 + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t static Compression.compress(data:)()
{
  v0 = sub_100080B28();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v18 = 0x80000000000;
  v19 = sub_100080AF8() | 0x4000000000000000;
  v4 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    v6 = *(v18 + 16);
    v7 = *(v18 + 24);
    v8 = __OFSUB__(v7, v6);
    v5 = v7 - v6;
    if (v8)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    LODWORD(v5) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v5 = v5;
  }

  else
  {
    v5 = BYTE6(v19);
  }

  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v5 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_15:
  v9 = sub_100080C88();
  v10 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v3 = 0;
      goto LABEL_3;
    }

    v11 = *(v18 + 16);
    v12 = *(v18 + 24);
    v8 = __OFSUB__(v12, v11);
    v3 = v12 - v11;
    if (v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    if (!v10)
    {
      v3 = BYTE6(v19);
      goto LABEL_3;
    }

    LODWORD(v3) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v3 = v3;
  }

  if (v3 < 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v17 = v3;
  __chkstk_darwin(v9);
  sub_1000767C0(&v18, sub_100076B64);
  if (v17 < 0)
  {
LABEL_33:
    __break(1u);
  }

  v14 = v18;
  v13 = v19;
  v15 = sub_100080D18();
  sub_100006A34(v14, v13);
  return v15;
}