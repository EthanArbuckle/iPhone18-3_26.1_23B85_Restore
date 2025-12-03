@interface CRXCEnrollmentData
- (BOOL)isEqual:(id)equal;
- (CRXCEnrollmentData)init;
- (CRXCEnrollmentData)initWithAccPayload:(id)payload accPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight;
- (CRXCEnrollmentData)initWithAccPayload:(id)payload enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)left calibrationDataRight:(id)right;
- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCEnrollmentData

- (CRXCEnrollmentData)initWithAccPayload:(id)payload enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)left calibrationDataRight:(id)right
{
  v34[1] = self;
  v12 = *(*(sub_247365B94() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  payloadCopy = payload;
  dateCopy = date;
  nameCopy = name;
  leftCopy = left;
  v34[0] = right;
  rightCopy = right;
  v20 = sub_247365B44();
  v22 = v21;

  if (nameCopy)
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

  if (!leftCopy)
  {
    v26 = 0;
    v28 = 0;
    if (rightCopy)
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

  if (!rightCopy)
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

- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight
{
  selfCopy = self;
  v14 = *(*(sub_247365B94() - 8) + 64);
  MEMORY[0x28223BE20]();
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  leftCopy = left;
  rightCopy = right;
  dateCopy = date;
  nameCopy = name;
  v40[1] = dataLeft;
  dataLeftCopy = dataLeft;
  v40[2] = dataRight;
  dataRightCopy = dataRight;
  v23 = sub_247365B44();
  v42 = v24;

  v25 = sub_247365B44();
  v27 = v26;

  if (nameCopy)
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

  if (!dataLeftCopy)
  {
    v30 = 0;
    v32 = 0;
    if (dataRightCopy)
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

  if (!dataRightCopy)
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

- (CRXCEnrollmentData)initWithAccPayload:(id)payload accPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight
{
  v16 = sub_247365B94();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (payload)
  {
    leftCopy = left;
    rightCopy = right;
    nameCopy = name;
    dateCopy = date;
    dataLeftCopy = dataLeft;
    dataRightCopy = dataRight;
    payloadCopy = payload;
    v27 = sub_247365B44();
    v65 = v28;
    v66 = v27;

    if (left)
    {
      goto LABEL_3;
    }
  }

  else
  {
    leftCopy2 = left;
    rightCopy2 = right;
    nameCopy2 = name;
    dateCopy2 = date;
    dataLeftCopy2 = dataLeft;
    dataRightCopy2 = dataRight;
    v65 = 0xF000000000000000;
    v66 = 0;
    if (left)
    {
LABEL_3:
      v29 = sub_247365B44();
      v63 = v30;
      v64 = v29;

      if (right)
      {
        goto LABEL_4;
      }

LABEL_8:
      v62 = 0;
      v32 = 0xF000000000000000;
      if (name)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v63 = 0xF000000000000000;
  v64 = 0;
  if (!right)
  {
    goto LABEL_8;
  }

LABEL_4:
  v62 = sub_247365B44();
  v32 = v31;

  if (name)
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

  if (!dataLeft)
  {
    v42 = 0;
    v44 = 0;
    if (dataRight)
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

  if (!dataRight)
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

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_24734E274(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_24734E79C();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24734EB78(coderCopy);
}

- (CRXCEnrollmentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end