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
  v34[1] = self;
  v12 = *(*(sub_247365B94() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = a5;
  v17 = a4;
  v18 = a6;
  v34[0] = a7;
  v19 = a7;
  v20 = sub_247365B44();
  v22 = v21;

  if (v17)
  {
    v23 = sub_247365C64();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_247365B74();

  if (!v18)
  {
    v26 = 0;
    v28 = 0;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_8:
    v29 = 0;
    v31 = 0;
    goto LABEL_9;
  }

  v26 = sub_247365C64();
  v28 = v27;

  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_6:
  v29 = sub_247365C64();
  v31 = v30;

LABEL_9:
  v32 = sub_24734F7FC(v20, v22, v23, v25, v14, v26, v28, v29, v31);
  sub_247347880(v20, v22);
  return v32;
}

- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)a3 accPayloadRight:(id)a4 enrollmentName:(id)a5 issueDate:(id)a6 calibrationDataLeft:(id)a7 calibrationDataRight:(id)a8
{
  v43 = self;
  v14 = *(*(sub_247365B94() - 8) + 64);
  MEMORY[0x28223BE20]();
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a5;
  v40[1] = a7;
  v21 = a7;
  v40[2] = a8;
  v22 = a8;
  v23 = sub_247365B44();
  v42 = v24;

  v25 = sub_247365B44();
  v27 = v26;

  if (v20)
  {
    v28 = sub_247365C64();
    v41 = v29;
  }

  else
  {
    v28 = 0;
    v41 = 0;
  }

  sub_247365B74();

  if (!v21)
  {
    v30 = 0;
    v32 = 0;
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_8:
    v33 = 0;
    v35 = 0;
    goto LABEL_9;
  }

  v30 = sub_247365C64();
  v32 = v31;

  if (!v22)
  {
    goto LABEL_8;
  }

LABEL_6:
  v33 = sub_247365C64();
  v35 = v34;

LABEL_9:
  v39 = v33;
  v36 = v42;
  v37 = sub_24734F95C(v23, v42, v25, v27, v28, v41, v16, v30, v32, v39, v35);
  sub_247347880(v25, v27);
  sub_247347880(v23, v36);
  return v37;
}

- (CRXCEnrollmentData)initWithAccPayload:(id)a3 accPayloadLeft:(id)a4 accPayloadRight:(id)a5 enrollmentName:(id)a6 issueDate:(id)a7 calibrationDataLeft:(id)a8 calibrationDataRight:(id)a9
{
  v16 = sub_247365B94();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20]();
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
    v27 = sub_247365B44();
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
      v29 = sub_247365B44();
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
  v62 = sub_247365B44();
  v32 = v31;

  if (a6)
  {
LABEL_5:
    v33 = sub_247365C64();
    v35 = v34;

    goto LABEL_10;
  }

LABEL_9:
  v33 = 0;
  v35 = 0;
LABEL_10:
  sub_247365B74();

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

  v42 = sub_247365C64();
  v44 = v43;

  if (!a9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v45 = sub_247365C64();
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
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_24734E274(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_24734E79C();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24734EB78(v4);
}

- (CRXCEnrollmentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end