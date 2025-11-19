@interface CRXCEnrollmentData
- (BOOL)isEqual:(id)a3;
- (CRXCEnrollmentData)init;
- (CRXCEnrollmentData)initWithAccPayload:(id)a3 accPayloadLeft:(id)a4 accPayloadRight:(id)a5 enrollmentName:(id)a6 issueDate:(id)a7 calibrationDataLeft:(id)a8 calibrationDataRight:(id)a9;
- (CRXCEnrollmentData)initWithAccPayload:(id)a3 enrollmentName:(id)a4 issueDate:(id)a5 calibrationDataLeft:(id)a6 calibrationDataRight:(id)a7;
- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)a3 accPayloadRight:(id)a4 enrollmentName:(id)a5 issueDate:(id)a6 calibrationDataLeft:(id)a7 calibrationDataRight:(id)a8;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCEnrollmentData

- (CRXCEnrollmentData)initWithAccPayload:(id)a3 enrollmentName:(id)a4 issueDate:(id)a5 calibrationDataLeft:(id)a6 calibrationDataRight:(id)a7
{
  v35[1] = self;
  v12 = sub_100080D98();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v17 = a5;
  v18 = a4;
  v19 = a6;
  v35[0] = a7;
  v20 = a7;
  v21 = sub_100080CF8();
  v23 = v22;

  if (v18)
  {
    v24 = sub_1000812B8();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_100080D78();

  if (!v19)
  {
    v27 = 0;
    v29 = 0;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_8:
    v30 = 0;
    v32 = 0;
    goto LABEL_9;
  }

  v27 = sub_1000812B8();
  v29 = v28;

  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_6:
  v30 = sub_1000812B8();
  v32 = v31;

LABEL_9:
  v33 = sub_10005D728(v21, v23, v24, v26, v15, v27, v29, v30, v32);
  sub_100006A34(v21, v23);
  return v33;
}

- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)a3 accPayloadRight:(id)a4 enrollmentName:(id)a5 issueDate:(id)a6 calibrationDataLeft:(id)a7 calibrationDataRight:(id)a8
{
  v44 = self;
  v14 = sub_100080D98();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a5;
  v41[1] = a7;
  v22 = a7;
  v41[2] = a8;
  v23 = a8;
  v24 = sub_100080CF8();
  v43 = v25;

  v26 = sub_100080CF8();
  v28 = v27;

  if (v21)
  {
    v29 = sub_1000812B8();
    v42 = v30;
  }

  else
  {
    v29 = 0;
    v42 = 0;
  }

  sub_100080D78();

  if (!v22)
  {
    v31 = 0;
    v33 = 0;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_8:
    v34 = 0;
    v36 = 0;
    goto LABEL_9;
  }

  v31 = sub_1000812B8();
  v33 = v32;

  if (!v23)
  {
    goto LABEL_8;
  }

LABEL_6:
  v34 = sub_1000812B8();
  v36 = v35;

LABEL_9:
  v40 = v34;
  v37 = v43;
  v38 = sub_10005D888(v24, v43, v26, v28, v29, v42, v17, v31, v33, v40, v36);
  sub_100006A34(v26, v28);
  sub_100006A34(v24, v37);
  return v38;
}

- (CRXCEnrollmentData)initWithAccPayload:(id)a3 accPayloadLeft:(id)a4 accPayloadRight:(id)a5 enrollmentName:(id)a6 issueDate:(id)a7 calibrationDataLeft:(id)a8 calibrationDataRight:(id)a9
{
  v16 = sub_100080D98();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  __chkstk_darwin(v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v23 = a7;
    v24 = a8;
    v25 = a9;
    v26 = a3;
    v27 = sub_100080CF8();
    v65 = v28;
    v66 = v27;

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = a8;
    v41 = a9;
    v65 = 0xF000000000000000;
    v66 = 0;
    if (a4)
    {
LABEL_3:
      v29 = sub_100080CF8();
      v63 = v30;
      v64 = v29;

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v62 = 0;
      v32 = 0xF000000000000000;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v63 = 0xF000000000000000;
  v64 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v62 = sub_100080CF8();
  v32 = v31;

  if (a6)
  {
LABEL_5:
    v33 = sub_1000812B8();
    v35 = v34;

    goto LABEL_10;
  }

LABEL_9:
  v33 = 0;
  v35 = 0;
LABEL_10:
  sub_100080D78();

  if (!a8)
  {
    v42 = 0;
    v44 = 0;
    if (a9)
    {
      goto LABEL_12;
    }

LABEL_14:
    v45 = 0;
    v47 = 0;
    goto LABEL_15;
  }

  v42 = sub_1000812B8();
  v44 = v43;

  if (!a9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v45 = sub_1000812B8();
  v47 = v46;

LABEL_15:
  v48 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v49 = v65;
  *v48 = v66;
  v48[1] = v49;
  v50 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v51 = v63;
  *v50 = v64;
  v50[1] = v51;
  v52 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  *v52 = v62;
  v52[1] = v32;
  v53 = (self + OBJC_IVAR___CRXCEnrollmentData_enrollmentName);
  *v53 = v33;
  v53[1] = v35;
  v55 = v67;
  v54 = v68;
  (*(v67 + 16))(self + OBJC_IVAR___CRXCEnrollmentData_issueDate, v19, v68);
  v56 = (self + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft);
  *v56 = v42;
  v56[1] = v44;
  v57 = (self + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight);
  *v57 = v45;
  v57[1] = v47;
  v58 = type metadata accessor for CRXCEnrollmentData();
  v69.receiver = self;
  v69.super_class = v58;
  v59 = [(CRXCEnrollmentData *)&v69 init];
  (*(v55 + 8))(v19, v54);
  return v59;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRXCEnrollmentData.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  CRXCEnrollmentData.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCEnrollmentData.encode(with:)(v4);
}

- (CRXCEnrollmentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end