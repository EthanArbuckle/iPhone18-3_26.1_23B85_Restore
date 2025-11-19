BOOL sub_24735690C(uint64_t a1)
{
  sub_247346F80(a1, v7);
  if (v8)
  {
    type metadata accessor for CRXCNewEnrollmentInfo();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid) == *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid] && *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8) == *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8];
      if (v2 || (sub_247365E54() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
        v4 = *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_247347038(v7);
  }

  return 0;
}

uint64_t sub_247356AB8()
{
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000018, 0x8000000247374760);
  MEMORY[0x24C1A0580](*(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid), *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8));
  MEMORY[0x24C1A0580](0xD00000000000001ALL, 0x8000000247374780);
  v3 = *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v1 = sub_247365C94();
  MEMORY[0x24C1A0580](v1);

  MEMORY[0x24C1A0580](10530, 0xE200000000000000);
  return 0;
}

void sub_247356BB0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  v4 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8);
  v5 = sub_247365C44();
  v6 = sub_247365C44();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v8 = sub_247365C44();
  [a1 encodeInteger:v7 forKey:v8];
}

uint64_t CRXCNewEnrollmentInfo.init(coder:)(void *a1)
{
  v2 = sub_247365C44();
  [a1 decodeIntegerForKey_];

  sub_24734D494();
  v3 = sub_247365D84();
  if (v3)
  {
    v6 = 0;
    v4 = v3;
    sub_247365C54();
  }

  type metadata accessor for CRXCNewEnrollmentInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

id CRXCNewEnrollmentInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCNewEnrollmentInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CRXCFactoryCalibrationData.acc.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  sub_24734782C(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.left.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.right.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_right + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_247346F80(a1, v20);
  if (!v21)
  {
    sub_247347038(v20);
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
  sub_24734782C(v5, v6);
  LOBYTE(v3) = sub_247347B28(v3, v4, v5, v6);
  sub_247347880(v5, v6);
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
      sub_24734FB20(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
      sub_24734FB20(v8, v7);
      sub_24734FB34(v8, v7);
      goto LABEL_11;
    }

LABEL_9:
    sub_24734FB20(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
    sub_24734FB20(v8, v7);

    sub_24734FB34(v8, v7);
    v11 = v10;
LABEL_18:
    sub_24734FB34(v11, v9);
    goto LABEL_19;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_9;
  }

  sub_24734FB20(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
  sub_24734FB20(v10, v9);
  sub_24734FB20(v8, v7);
  v12 = sub_247347B28(v8, v7, v10, v9);
  sub_24734FB34(v10, v9);
  sub_24734FB34(v10, v9);
  sub_24734FB34(v8, v7);
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
    sub_24734FB20(v16, v9);
    if (v9 >> 60 != 15)
    {
      sub_24734FB20(v16, v9);
      sub_24734FB20(v15, v14);
      v17 = sub_247347B28(v15, v14, v16, v9);
      sub_24734FB34(v16, v9);
      sub_24734FB34(v16, v9);

      sub_24734FB34(v15, v14);
      return v17 & 1;
    }

    sub_24734FB20(v15, v14);

    goto LABEL_17;
  }

  sub_24734FB20(v16, v9);
  sub_24734FB20(v15, v14);

  if (v9 >> 60 != 15)
  {
LABEL_17:
    sub_24734FB34(v15, v14);
    v11 = v16;
    goto LABEL_18;
  }

  sub_24734FB34(v15, v14);
  v17 = 1;
  return v17 & 1;
}

Swift::Void __swiftcall CRXCFactoryCalibrationData.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v4 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8);
  v5 = sub_247365B24();
  v6 = sub_247365C44();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = (v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  v8 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_24734782C(*v7, *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8));
    v10 = sub_247365B24();
    v11 = sub_247365C44();
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

    sub_24734FB34(v9, v8);
  }

  v12 = (v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  v13 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right + 8);
  if (v13 >> 60 != 15)
  {
    v14 = *v12;
    sub_24734782C(*v12, v13);
    v15 = sub_247365B24();
    v16 = sub_247365C44();
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

    sub_24734FB34(v14, v13);
  }
}

uint64_t CRXCFactoryCalibrationData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_247357B1C();
  v2 = sub_247365D84();
  if (v2)
  {
    v3 = v2;
    sub_247365B34();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id CRXCFactoryCalibrationData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCFactoryCalibrationData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_247357B1C()
{
  result = qword_27EE4D8D0;
  if (!qword_27EE4D8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE4D8D0);
  }

  return result;
}

uint64_t CRXCPrescriptionRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  sub_24734782C(v1, *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8));
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
  v4 = sub_247365B94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CRXCPrescriptionRecord.leftCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8));
  return v1;
}

uint64_t CRXCPrescriptionRecord.rightCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8));
  return v1;
}

uint64_t CRXCPrescriptionRecord.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_247346F80(a1, v24);
  if (!v25)
  {
    sub_247347038(v24);
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
  sub_24734782C(v6, v7);
  LOBYTE(v4) = sub_247347B28(v4, v5, v6, v7);
  sub_247347880(v6, v7);
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
    if (!v10 && (sub_247365E54() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    goto LABEL_28;
  }

  if ((sub_247365B64() & 1) == 0)
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

    sub_24734FB20(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8]);
    sub_24734FB20(v12, v11);
    sub_24734FB34(v12, v11);
  }

  else
  {
    if (v13 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_24734FB20(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8]);
    sub_24734FB20(v14, v13);
    sub_24734FB20(v12, v11);
    v15 = sub_247347B28(v12, v11, v14, v13);
    sub_24734FB34(v14, v13);
    sub_24734FB34(v14, v13);
    sub_24734FB34(v12, v11);
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
      sub_24734FB20(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8]);
      sub_24734FB20(v12, v11);
      sub_24734FB34(v12, v11);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v13 >> 60 == 15)
  {
LABEL_24:
    sub_24734FB20(v14, v13);
    sub_24734FB20(v12, v11);

    sub_24734FB34(v12, v11);
    sub_24734FB34(v14, v13);
    goto LABEL_29;
  }

  sub_24734FB20(*&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData], *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8]);
  sub_24734FB20(v14, v13);
  sub_24734FB20(v12, v11);
  v16 = sub_247347B28(v12, v11, v14, v13);
  sub_24734FB34(v14, v13);
  sub_24734FB34(v14, v13);
  sub_24734FB34(v12, v11);
  if ((v16 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_26:
  sub_247347C90(0, &qword_27EE4D608, 0x277D82BB8);
  v17 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftEye);
  v18 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_leftEye];
  LOBYTE(v17) = sub_247365D94();

  if ((v17 & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightEye);
  v20 = *&v23[OBJC_IVAR___CRXCPrescriptionRecord_rightEye];
  v21 = sub_247365D94();

  return v21 & 1;
}

Swift::Void __swiftcall CRXCPrescriptionRecord.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload);
  v5 = *(v1 + OBJC_IVAR___CRXCPrescriptionRecord_accPayload + 8);
  v6 = sub_247365B24();
  v7 = sub_247365C44();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = sub_247365B54();
  v9 = sub_247365C44();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftEye);
  v11 = sub_247365C44();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightEye);
  v13 = sub_247365C44();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  if (*(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName + 8))
  {
    v14 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName);
    v15 = sub_247365C44();
    v16 = sub_247365C44();
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  }

  v17 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData);
  v18 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8);
  if (v18 >> 60 != 15)
  {
    v19 = *v17;
    sub_24734782C(*v17, *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData + 8));
    v20 = sub_247365B24();
    v21 = sub_247365C44();
    [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

    sub_24734FB34(v19, v18);
  }

  v22 = (v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData);
  v23 = *(v2 + OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData + 8);
  if (v23 >> 60 != 15)
  {
    v24 = *v22;
    sub_24734782C(*v22, v23);
    v25 = sub_247365B24();
    v26 = sub_247365C44();
    [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

    sub_24734FB34(v24, v23);
  }
}

id CRXCPrescriptionRecord.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v59 - v7;
  v9 = sub_247365B94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90);
  v17 = sub_247365D84();
  if (!v17 || (v65 = xmmword_247369590, v68 = xmmword_247369590, v18 = v17, sub_247365B34(), v18, *(&v68 + 1) >> 60 == 15))
  {

LABEL_16:
    v39 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v40 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v62 = v16;
  v19 = v10;
  v66 = *(&v68 + 1);
  v64 = ObjectType;
  v20 = v68;
  sub_247347C90(0, &unk_27EE4DA00, 0x277CBEAA8);
  v21 = sub_247365D84();
  if (!v21)
  {
    v38 = v20;
LABEL_15:
    sub_24734FB34(v38, v66);

    goto LABEL_16;
  }

  v22 = v21;
  v63 = v20;
  v23 = v19;
  (*(v19 + 56))(v8, 1, 1, v9);
  sub_24734FBAC();
  sub_247365E34();

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
  v26 = sub_247365D84();
  if (!v26)
  {
    (*(v23 + 8))(v25, v9);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sub_247365D84();
  v29 = v63;
  if (!v28)
  {
    (*(v23 + 8))(v25, v9);
    sub_24734FB34(v29, v66);

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
  sub_24734FB20(v29, v32);
  v61 = v27;
  v60 = v30;
  v33 = sub_247365C44();
  LOBYTE(v32) = [a1 containsValueForKey_];

  if ((v32 & 1) != 0 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v34 = sub_247365D84()) != 0) && (v68 = 0uLL, v35 = v34, sub_247365C54(), v35, (v36 = *(&v68 + 1)) != 0))
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

  v43 = sub_247365C44();
  v44 = [a1 containsValueForKey_];

  if (v44 && (v45 = sub_247365D84()) != 0 && (v68 = v65, v46 = v45, sub_247365B34(), v46, v47 = *(&v68 + 1), *(&v68 + 1) >> 60 != 15))
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
  v50 = sub_247365C44();
  v51 = [a1 containsValueForKey_];

  if (!v51)
  {
    (*(v23 + 8))(v25, v9);
    sub_24734FB34(v63, v66);

    v56 = 0;
    v55 = 0xF000000000000000;
    v53 = v64;
    goto LABEL_30;
  }

  v52 = sub_247365D84();
  (*(v23 + 8))(v25, v9);
  v54 = v63;
  v53 = v64;
  if (!v52)
  {
    sub_24734FB34(v63, v66);

    goto LABEL_29;
  }

  v68 = v65;
  sub_247365B34();
  sub_24734FB34(v54, v66);

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
  v58 = objc_msgSendSuper2(&v67, sel_init);

  return v58;
}

id CRXCPrescriptionRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCPrescriptionRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CRXCPrescriptionRecord()
{
  result = qword_28150D050;
  if (!qword_28150D050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247358FDC()
{
  result = sub_247365B94();
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
  sub_247365DD4();
  MEMORY[0x24C1A0580](0x74536D6574737973, 0xED0000203A657461);
  v9 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_systemState);
  v1 = sub_247365C94();
  MEMORY[0x24C1A0580](v1);

  MEMORY[0x24C1A0580](0xD000000000000017, 0x8000000247374950);
  v10 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus);
  v2 = sub_247365C94();
  MEMORY[0x24C1A0580](v2);

  MEMORY[0x24C1A0580](0xD000000000000019, 0x8000000247374970);
  v11 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus);
  v3 = sub_247365C94();
  MEMORY[0x24C1A0580](v3);

  MEMORY[0x24C1A0580](0xD000000000000012, 0x8000000247374990);
  v12 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus);
  v4 = sub_247365C94();
  MEMORY[0x24C1A0580](v4);

  MEMORY[0x24C1A0580](0xD00000000000001ALL, 0x80000002473749B0);
  v13 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus);
  v5 = sub_247365C94();
  MEMORY[0x24C1A0580](v5);

  MEMORY[0x24C1A0580](0x444955557872202CLL, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8))
  {
    v6 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID);
    v7 = *(v0 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8);
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  MEMORY[0x24C1A0580](v6, v7);

  return 0;
}

uint64_t CRXCPrescriptionState.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_247346F80(a1, v9);
  if (!v10)
  {
    sub_247347038(v9);
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
    LOBYTE(v4) = sub_247365E54();
    goto LABEL_20;
  }

  LOBYTE(v4) = 1;
  return v4 & 1;
}

id static CRXCPrescriptionState.empty()()
{
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
  return objc_msgSendSuper2(&v4, sel_init);
}

Swift::Void __swiftcall CRXCPrescriptionState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_systemState);
  v4 = sub_247365C44();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensDetectionStatus);
  v6 = sub_247365C44();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensCalibrationStatus);
  v8 = sub_247365C44();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_lensPoseStatus);
  v10 = sub_247365C44();
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_updateClipOnInfoStatus);
  v12 = sub_247365C44();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];

  if (*(v1 + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8))
  {
    v13 = *(v1 + OBJC_IVAR___CRXCPrescriptionState_rxUUID);
    v14 = sub_247365C44();
    v15 = sub_247365C44();
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  }
}

id CRXCPrescriptionState.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_247365C44();
  v6 = [a1 decodeIntegerForKey_];

  v7 = sub_247365C44();
  v8 = [a1 decodeIntegerForKey_];

  v9 = sub_247365C44();
  v10 = [a1 decodeIntegerForKey_];

  v11 = sub_247365C44();
  v12 = [a1 decodeIntegerForKey_];

  v13 = sub_247365C44();
  v14 = [a1 decodeIntegerForKey_];

  v15 = sub_24735B7B0(v6);
  if (v16)
  {
    goto LABEL_6;
  }

  v17 = v15;
  v18 = sub_24735BAB0(v8);
  if (v19 & 1) != 0 || (v20 = v18, v21 = sub_247348DE0(v10), (v22) || (v23 = v21, v24 = sub_24735B7C8(v12), (v25) || (v26 = v24, v27 = sub_24735BAB0(v14), (v28))
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
    v30 = sub_247365C44();
    v31 = [a1 containsValueForKey_];

    if (v31)
    {
      sub_24734D494();
      v32 = sub_247365D84();
      if (v32)
      {
        v36 = 0;
        v33 = v32;
        sub_247365C54();
      }
    }

    v34 = &v2[OBJC_IVAR___CRXCPrescriptionState_rxUUID];
    *v34 = 0;
    *(v34 + 1) = 0;
    v37.receiver = v2;
    v37.super_class = ObjectType;
    v35 = objc_msgSendSuper2(&v37, sel_init, v36);

    return v35;
  }
}

id CRXCPrescriptionState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCPrescriptionState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

  result = sub_247365E64();
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

uint64_t *sub_247359F38@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_247359F54()
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
  result = sub_247365E64();
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

  result = sub_247365E64();
  __break(1u);
  return result;
}

unint64_t CRXCPrismType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_24735A064@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_24735A080()
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
  result = sub_247365E64();
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
  return objc_msgSendSuper2(&v11, sel_init);
}

id CRXCEyePrismCorrection.init(horizontalBaseDirection:horizontalAmount:verticalBaseDirection:verticalAmount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection] = a1;
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount] = a3;
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection] = a2;
  *&v4[OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRXCEyePrismCorrection();
  return objc_msgSendSuper2(&v6, sel_init);
}

BOOL sub_24735A300(uint64_t a1)
{
  sub_247346F80(a1, v6);
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
    sub_247347038(v6);
  }

  return 0;
}

uint64_t sub_24735A40C()
{
  v1 = 0x70752F74756FLL;
  sub_247365DD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D790, &unk_247369B40);
  v2 = swift_allocObject();
  v3 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount);
  v4 = MEMORY[0x277D839F8];
  *(v2 + 16) = xmmword_2473697F0;
  v5 = MEMORY[0x277D83A80];
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v6 = sub_247365C74();
  MEMORY[0x24C1A0580](v6);

  MEMORY[0x24C1A0580](10272, 0xE200000000000000);
  v7 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection);
  if (v7)
  {
    if (v7 == 2)
    {
      v8 = 0xE400000000000000;
      v9 = 1701736302;
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_13;
      }

      v8 = 0xE700000000000000;
      v9 = 0x6E776F642F6E69;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x70752F74756FLL;
  }

  MEMORY[0x24C1A0580](v9, v8);

  v10 = 0xE600000000000000;
  MEMORY[0x24C1A0580](0x203A56202C29, 0xE600000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2473697F0;
  v12 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount);
  *(v11 + 56) = v4;
  *(v11 + 64) = v5;
  *(v11 + 32) = v12;
  v13 = sub_247365C74();
  MEMORY[0x24C1A0580](v13);

  MEMORY[0x24C1A0580](10272, 0xE200000000000000);
  v14 = *(v0 + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection);
  switch(v14)
  {
    case 0:
LABEL_12:
      MEMORY[0x24C1A0580](v1, v10);

      MEMORY[0x24C1A0580](41, 0xE100000000000000);
      return 2112072;
    case 2:
      v10 = 0xE400000000000000;
      v1 = 1701736302;
      goto LABEL_12;
    case 1:
      v10 = 0xE700000000000000;
      v1 = 0x6E776F642F6E69;
      goto LABEL_12;
  }

LABEL_13:
  result = sub_247365E64();
  __break(1u);
  return result;
}

void sub_24735A698(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection);
  v4 = sub_247365C44();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount);
  v6 = sub_247365C44();
  [a1 encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection);
  v8 = sub_247365C44();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount);
  v10 = sub_247365C44();
  [a1 encodeDouble:v10 forKey:v9];
}

id CRXCEyePrismCorrection.init(coder:)(void *a1)
{
  v3 = sub_247365C44();
  v4 = [a1 decodeIntegerForKey_];

  v5 = sub_247365C44();
  v6 = [a1 decodeIntegerForKey_];

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
    v8 = sub_247365C44();
    [a1 decodeDoubleForKey_];
    v10 = v9;

    *&v1[OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount] = v10;
    v11 = sub_247365C44();
    [a1 decodeDoubleForKey_];
    v13 = v12;

    *&v1[OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount] = v13;
    v16.receiver = v1;
    v16.super_class = type metadata accessor for CRXCEyePrismCorrection();
    v14 = objc_msgSendSuper2(&v16, sel_init);

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
  return objc_msgSendSuper2(&v9, sel_init);
}

id CRXCPrismCorrection.init(prismOD:prismOS:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CRXCPrismCorrection_prismOD] = a1;
  *&v3[OBJC_IVAR___CRXCPrismCorrection_prismOS] = a2;
  *&v3[OBJC_IVAR___CRXCPrismCorrection_type] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for CRXCPrismCorrection();
  return objc_msgSendSuper2(&v5, sel_init);
}

BOOL sub_24735AC74(uint64_t a1)
{
  sub_247346F80(a1, v12);
  if (v13)
  {
    type metadata accessor for CRXCPrismCorrection();
    if (swift_dynamicCast())
    {
      sub_24735AD90();
      v2 = v1;
      v3 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOD);
      v4 = *&v11[OBJC_IVAR___CRXCPrismCorrection_prismOD];
      LOBYTE(v3) = sub_247365D94();

      if (v3)
      {
        v5 = *(v2 + OBJC_IVAR___CRXCPrismCorrection_prismOS);
        v6 = *&v11[OBJC_IVAR___CRXCPrismCorrection_prismOS];
        v7 = sub_247365D94();

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
    sub_247347038(v12);
  }

  return 0;
}

unint64_t sub_24735AD90()
{
  result = qword_27EE4D608;
  if (!qword_27EE4D608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE4D608);
  }

  return result;
}

uint64_t sub_24735ADF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_247347038(v10);
  return v8 & 1;
}

id sub_24735AE94(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_247365C44();

  return v5;
}

uint64_t sub_24735AF04()
{
  v1 = v0;
  sub_247365DD4();

  v2 = [*(v0 + OBJC_IVAR___CRXCPrismCorrection_prismOD) description];
  v3 = sub_247365C64();
  v5 = v4;

  MEMORY[0x24C1A0580](v3, v5);

  MEMORY[0x24C1A0580](0x203A534F203BLL, 0xE600000000000000);
  v6 = [*(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOS) description];
  v7 = sub_247365C64();
  v9 = v8;

  MEMORY[0x24C1A0580](v7, v9);

  MEMORY[0x24C1A0580](0x203A65707974203BLL, 0xE800000000000000);
  v10 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_type);
  if (!v10)
  {
    v11 = 0xE500000000000000;
    v12 = 0x72616C6F70;
LABEL_5:
    MEMORY[0x24C1A0580](v12, v11);

    return 540689487;
  }

  if (v10 == 1)
  {
    v11 = 0xEB0000000072616CLL;
    v12 = 0x75676E6174636572;
    goto LABEL_5;
  }

  v14 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_type);
  result = sub_247365E64();
  __break(1u);
  return result;
}

void sub_24735B0BC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOD);
  v4 = sub_247365C44();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_prismOS);
  v6 = sub_247365C44();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCPrismCorrection_type);
  v8 = sub_247365C44();
  [a1 encodeInteger:v7 forKey:v8];
}

id CRXCPrismCorrection.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_247365C44();
  v5 = [a1 decodeIntegerForKey_];

  type metadata accessor for CRXCEyePrismCorrection();
  v6 = sub_247365D84();
  if (v6)
  {
    v7 = v6;
    v8 = sub_247365D84();
    if (v8)
    {
      if (v5 < 2)
      {
        *&v2[OBJC_IVAR___CRXCPrismCorrection_prismOD] = v7;
        *&v2[OBJC_IVAR___CRXCPrismCorrection_prismOS] = v8;
        *&v2[OBJC_IVAR___CRXCPrismCorrection_type] = v5;
        v12.receiver = v2;
        v12.super_class = type metadata accessor for CRXCPrismCorrection();
        v9 = objc_msgSendSuper2(&v12, sel_init);

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

id CRXCPrismCorrection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24735B444(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_24735B480()
{
  result = qword_27EE4DA80;
  if (!qword_27EE4DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DA80);
  }

  return result;
}

unint64_t sub_24735B4D8()
{
  result = qword_27EE4DA88;
  if (!qword_27EE4DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DA88);
  }

  return result;
}

unint64_t sub_24735B714@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24735B7C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
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

unint64_t sub_24735B75C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24735B7B0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_24735B7B0(unint64_t result)
{
  if (result > 4 || result == 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24735B7C8(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24735B7DC()
{
  result = qword_27EE4DA90;
  if (!qword_27EE4DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DA90);
  }

  return result;
}

unint64_t sub_24735B834()
{
  result = qword_27EE4DA98;
  if (!qword_27EE4DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DA98);
  }

  return result;
}

unint64_t sub_24735B88C()
{
  result = qword_27EE4DAA0;
  if (!qword_27EE4DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DAA0);
  }

  return result;
}

unint64_t sub_24735B8E4()
{
  result = qword_27EE4DAA8;
  if (!qword_27EE4DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DAA8);
  }

  return result;
}

unint64_t sub_24735B93C()
{
  result = qword_27EE4DAB0;
  if (!qword_27EE4DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DAB0);
  }

  return result;
}

unint64_t sub_24735B994()
{
  result = qword_27EE4DAB8;
  if (!qword_27EE4DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DAB8);
  }

  return result;
}

unint64_t sub_24735B9EC()
{
  result = qword_27EE4DAC0;
  if (!qword_27EE4DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4DAC0);
  }

  return result;
}

void *vrx_csv_file_create(uint64_t a1)
{
  if (!a1)
  {
    vrx_csv_file_create_cold_1();
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040702A1700uLL);
  *v2 = a1;
  v2[2] = 2048;
  v2[1] = malloc_type_calloc(0x800uLL, 1uLL, 0x100004077774924uLL);
  return v2;
}

void vrx_csv_file_destroy(uint64_t a1)
{
  if (a1)
  {
    vrx_reader_close(*a1);
    free(*(a1 + 8));

    free(a1);
  }
}

uint64_t vrx_csv_file_next_metadata_field(uint64_t a1, char **a2, char **a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  result = vrx_reader_read_line(*a1);
  if (result)
  {
    v29 = a2;
    v30 = a3;
    v9 = MEMORY[0x277D85DE0];
    while (1)
    {
      v10 = *(a1 + 8);
      if (*v10 != 35)
      {
        result = 0;
        *(a1 + 40) = 1;
        return result;
      }

      do
      {
        while (1)
        {
          v11 = v10;
          v13 = *++v10;
          v12 = v13;
          if ((v13 & 0x80000000) != 0)
          {
            break;
          }

          if ((*(v9 + 4 * v12 + 60) & 0x4000) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      while (__maskrune(v12, 0x4000uLL));
LABEL_8:
      v14 = 0;
      v15 = 0xFFFFFFFF00000000;
      do
      {
        v16 = v11;
        v17 = v10[v14];
        if ((v17 & 0x80000000) != 0)
        {
          v18 = __maskrune(v10[v14], 0x500uLL);
        }

        else
        {
          v18 = *(v9 + 4 * v17 + 60) & 0x500;
        }

        v15 += 0x100000000;
        ++v14;
        ++v11;
      }

      while (v17 == 95 || v18 != 0);
      if (v14 != 1)
      {
        do
        {
          v20 = v16[1];
          if ((v20 & 0x80000000) != 0)
          {
            v21 = __maskrune(v16[1], 0x4000uLL);
          }

          else
          {
            v21 = *(v9 + 4 * v20 + 60) & 0x4000;
          }

          ++v16;
        }

        while (v21);
        if (v20 == 61 || v20 == 58)
        {
          break;
        }
      }

      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      result = vrx_reader_read_line(*a1);
      if (!result)
      {
        return result;
      }
    }

    do
    {
      while (1)
      {
        v25 = *++v16;
        v24 = v25;
        if ((v25 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v9 + 4 * v24 + 60) & 0x4000) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    while (__maskrune(v24, 0x4000uLL));
LABEL_30:
    for (i = v16; ; ++i)
    {
      v27 = *i;
      if (!*i)
      {
        break;
      }

      if (v27 == 13 || v27 == 10)
      {
        *i = 0;
        break;
      }
    }

    *v29 = strndup(v10, v15 >> 32);
    *v30 = strdup(v16);
    return 1;
  }

  return result;
}

uint64_t vrx_csv_file_next_field(uint64_t a1)
{
  if (!a1)
  {
    vrx_csv_file_next_field_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = strchr(*(a1 + 32), 44);
    if (v3)
    {
      *v3++ = 0;
    }

    *(a1 + 32) = v3;
  }

  return v2;
}

BOOL vrx_csv_file_next_string(uint64_t a1, uint64_t *a2)
{
  field = vrx_csv_file_next_field(a1);
  *a2 = field;
  return field != 0;
}

uint64_t vrx_csv_file_next_int(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    vrx_csv_file_next_int_cold_1();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = strchr(*(a1 + 32), 44);
  if (v5)
  {
    *v5++ = 0;
  }

  *(a1 + 32) = v5;
  *a2 = strtol(v3, 0, 10);
  return 1;
}

uint64_t vrx_csv_file_next_double(uint64_t a1, double *a2)
{
  if (!a1)
  {
    vrx_csv_file_next_double_cold_1();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = strchr(*(a1 + 32), 44);
  if (v5)
  {
    *v5++ = 0;
  }

  *(a1 + 32) = v5;
  *a2 = strtod(v3, 0);
  return 1;
}

uint64_t vrx_csv_file_next_record(uint64_t a1)
{
  if (!a1)
  {
    vrx_csv_file_next_record_cold_1();
  }

  v2 = MEMORY[0x277D85DE0];
  do
  {
    v3 = *(a1 + 40) == 0;
    do
    {
      v4 = *(a1 + 8);
      if (v3)
      {
        v5 = *(a1 + 16);
        result = vrx_reader_read_line(*a1);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 8);
      }

      *(a1 + 40) = 0;
      v7 = *v4;
      v3 = 1;
    }

    while (!*v4);
    v8 = 0;
    v9 = v4 + 1;
    do
    {
      v10 = v7;
      if (v7 < 0)
      {
        if (__maskrune(v7, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else if ((*(v2 + 4 * v7 + 60) & 0x4000) != 0)
      {
        goto LABEL_15;
      }

      if (v10 == 35)
      {
        break;
      }

      v8 = 1;
LABEL_15:
      v11 = *v9++;
      v7 = v11;
    }

    while (v11);
  }

  while (!v8);
  v12 = *(a1 + 8);
  for (i = v12; ; ++i)
  {
    v14 = *i;
    if (!*i)
    {
      break;
    }

    if (v14 == 13 || v14 == 10)
    {
      *i = 0;
      v12 = *(a1 + 8);
      break;
    }
  }

  *(a1 + 24) = v12;
  *(a1 + 32) = v12;
  return 1;
}

void *vrx_reader_open_file(const char *a1)
{
  result = fopen(a1, "r");
  if (result)
  {
    v2 = result;
    result = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
    *result = vrx_file_reader_close;
    result[1] = vrx_file_reader_read_line;
    result[2] = v2;
  }

  return result;
}

FILE *vrx_file_reader_close(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = fclose(result);
    *(a1 + 16) = 0;
  }

  return result;
}

char *vrx_file_reader_read_line(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    return fgets(a2, a3, v3);
  }

  else
  {
    return 0;
  }
}

void *vrx_reader_open_string(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0xD0040E87B5F72uLL);
  result[2] = a1;
  result[3] = a1;
  *result = vrx_string_reader_close;
  result[1] = vrx_string_reader_read_line;
  return result;
}

char *vrx_string_reader_read_line(uint64_t a1, char *__dst, int a3)
{
  v5 = *(a1 + 24);
  v6 = *v5;
  if (*v5)
  {
    v7 = a3 < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    __dst = 0;
  }

  else
  {
    v8 = 0;
    while (v6 != 10)
    {
      v9 = v8 + 1;
      v6 = v5[v8 + 1];
      if (v5[v8 + 1])
      {
        v10 = v9 < a3 - 1;
      }

      else
      {
        v10 = 0;
      }

      ++v8;
      if (!v10)
      {
        v11 = &v5[v9];
        LODWORD(v8) = v9;
LABEL_14:
        strncpy(__dst, v5, v8);
        __dst[v8] = 0;
        goto LABEL_15;
      }
    }

    v11 = &v5[v8 + 1];
    if (v8)
    {
      goto LABEL_14;
    }

    __dst = 0;
LABEL_15:
    v5 = v11;
  }

  *(a1 + 24) = v5;
  return __dst;
}

void vrx_reader_destroy(void (**a1)(void))
{
  if (a1)
  {
    (*a1)();

    free(a1);
  }
}

_DWORD *vrx_vector_create_(int a1, int a2, int a3)
{
  if (a2 <= 0)
  {
    vrx_vector_create__cold_1();
  }

  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  v6[3] = v5;
  v6[4] = a2;
  *v6 = malloc_type_calloc(v5, a2, 0x730F52D0uLL);
  v6[5] = a3;
  return v6;
}

void vrx_vector_destroy(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (a1[5] && a1[2] >= 1)
    {
      v3 = 0;
      do
      {
        free(v2[v3++]);
      }

      while (v3 < a1[2]);
      v2 = *a1;
    }

    free(v2);

    free(a1);
  }
}

void vrx_vector_append(char **a1, void *__src)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *a1;
  if (v4 == v5)
  {
    v7 = 2 * v4;
    v6 = malloc_type_realloc(v6, *(a1 + 4) * v7, 0x42F9AC6AuLL);
    *a1 = v6;
    *(a1 + 3) = v7;
    v4 = *(a1 + 2);
  }

  *(a1 + 2) = v4 + 1;
  v8 = *(a1 + 4);
  v9 = &v6[v8 * v4];
  if (__src)
  {

    memcpy(v9, __src, v8);
  }

  else
  {
    v10 = *(a1 + 4);

    bzero(v9, v10);
  }
}

void *vrx_vector_finalize(_DWORD *a1)
{
  v1 = *a1;
  v2 = a1[4];
  v3 = a1[2];
  free(a1);
  if (v3 < 1)
  {
    free(v1);
    return 0;
  }

  else
  {

    return malloc_type_realloc(v1, v3 * v2, 0x48DFD1A6uLL);
  }
}

uint64_t vrx_set_minimum_passing_fit_probability(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  vrx_minimum_passing_fit_probability = *&a1;
  return 1;
}

double vrx_compute_power_vector_for_rx(double *a1, double *a2)
{
  if (!a1)
  {
    vrx_compute_power_vector_for_rx_cold_2();
  }

  if (!a2)
  {
    vrx_compute_power_vector_for_rx_cold_1();
  }

  v3 = a1[1] * 0.5;
  v4 = (a1[2] + a1[2]) * 3.14159265 / 180.0;
  *a2 = v3 + *a1;
  v5 = __sincos_stret(v4);
  result = -(v3 * v5.__sinval);
  a2[1] = -(v3 * v5.__cosval);
  a2[2] = result;
  return result;
}

void vrx_compute_rx_for_power_vector(uint64_t a1, double *a2)
{
  if (!a1)
  {
    vrx_compute_rx_for_power_vector_cold_2();
  }

  if (!a2)
  {
    vrx_compute_rx_for_power_vector_cold_1();
  }

  v3 = *(a1 + 16);
  v4 = sqrt(*(a1 + 8) * *(a1 + 8) + v3 * v3);
  *a2 = *a1 + v4;
  a2[1] = v4 * -2.0;
    ;
  }

    ;
  }

  a2[2] = i;
}

BOOL vrx_eye_rx_equal(void *a1, void *a2)
{
  if (!a1)
  {
    vrx_eye_rx_equal_cold_2();
  }

  if (!a2)
  {
    vrx_eye_rx_equal_cold_1();
  }

  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

BOOL vrx_rx_is_balanced(void *a1)
{
  if (!a1)
  {
    vrx_rx_is_balanced_cold_1();
  }

  return *a1 == a1[3] && a1[1] == a1[4] && a1[2] == a1[5];
}

BOOL vrx_rx_equal(const void *a1, const void *a2)
{
  if (!a1)
  {
    vrx_rx_equal_cold_2();
  }

  if (!a2)
  {
    vrx_rx_equal_cold_1();
  }

  return memcmp(a1, a2, 0x40uLL) == 0;
}

uint64_t vrx_generate_lens_tray_row_label(unsigned int a1, char *__str)
{
  if (a1 - 626 < 0xFFFFFD8F)
  {
    return 0;
  }

  if (a1 > 0x19)
  {
    v3 = (((a1 - 1 - ((18351 * (a1 - 1)) >> 16)) >> 1) + ((18351 * (a1 - 1)) >> 16)) >> 4;
    snprintf(__str, 0xCuLL, "%c%c", aAbcdefghijklmn[v3 - 1], aAbcdefghijklmn[(a1 - 1 - 25 * v3)]);
  }

  else
  {
    *__str = aAbcdefghijklmn[a1 - 1];
  }

  return 1;
}

BOOL vrx_map_reader_rx(uint64_t a1)
{
  result = vrx_rx_is_balanced(a1);
  if (result)
  {
    if (*(a1 + 8) == 0.0 && *(a1 + 16) == 0.0)
    {
      v3 = 0;
      v4 = *a1;
      v5 = 1;
      for (i = &qword_24736AA70; v4 < *(i - 2) || v4 > *(i - 1); i += 3)
      {
        v5 = v3 < 2;
        if (++v3 == 3)
        {
          return 0;
        }
      }

      v7 = *i;
      *a1 = *i;
      *(a1 + 24) = v7;
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *vrx_get_reader_strength_range_for_mapped_diopter(double a1)
{
  result = &__vrx_mappable_reader_strength_ranges;
  v2 = 3;
  while (*(result + 2) != a1)
  {
    result += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

double *vrx_get_reader_strength_range_for_rx(double *a1)
{
  if (!vrx_rx_is_balanced(a1))
  {
    return 0;
  }

  v2 = *a1;
  result = &__vrx_mappable_reader_strength_ranges;
  v4 = 3;
  while (*result > v2 || result[1] < v2)
  {
    result += 3;
    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

char *vrx_load_lens_tray(char *a1)
{
  if (!a1)
  {
    vrx_load_lens_tray_cold_1();
  }

  file_base_name = __vrx_extract_file_base_name(a1, vrx_demo_tray_file_extension);
  if (file_base_name)
  {
    v3 = file_base_name;
    v4 = 0;
  }

  else
  {
    result = __vrx_extract_file_base_name(a1, vrx_reader_tray_file_extension);
    v4 = result != 0;
    if (!result)
    {
      return result;
    }

    v3 = result;
  }

  return __vrx_load_lens_tray(a1, v4, v3);
}

char *__vrx_extract_file_base_name(char *a1, const char *a2)
{
  v3 = a1;
  v4 = strrchr(a1, 47);
  if (v4)
  {
    v3 = v4 + 1;
  }

  v5 = strrchr(v3, 46);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (strcmp(v5 + 1, a2))
  {
    return 0;
  }

  return strndup(v3, v6 - v3);
}

char *__vrx_load_lens_tray(const char *a1, unsigned int a2, const char *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    __vrx_load_lens_tray_cold_2();
  }

  if (!a3)
  {
    __vrx_load_lens_tray_cold_1();
  }

  v5 = vrx_reader_open_file(a1);
  if (v5 && (v6 = vrx_csv_file_create(v5)) != 0)
  {
    v7 = v6;
    v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F0040E7A3C391uLL);
    *v8 = strdup(a3);
    *(v8 + 10) = a2;
    v36 = 0;
    __s1 = 0;
    v9 = vrx_vector_create_(8, 8, 1);
    while (vrx_csv_file_next_metadata_field(v7, &__s1, &v36))
    {
      *&__src = strdup(__s1);
      __s = strdup(v36);
      vrx_vector_append(v9, &__src);
      vrx_vector_append(v9, &__s);
    }

    vrx_vector_append(v9, 0);
    *(v8 + 6) = vrx_vector_finalize(v9);
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    __src = 0u;
    v10 = vrx_vector_create_(128, 296, 0);
    if (vrx_csv_file_next_record(v7))
    {
      v11 = "_%.2f";
      do
      {
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        memset(v46, 0, sizeof(v46));
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v41 = 0u;
        v42 = 0u;
        memset(v40, 0, sizeof(v40));
        __src = 0u;
        v34 = 0;
        __s = 0;
        v32 = 0;
        v33 = 0;
        if (!vrx_csv_file_next_int(v7, &v54) || !vrx_csv_file_next_int(v7, &v54 + 1) || !vrx_csv_file_next_double(v7, &__src) || !vrx_csv_file_next_double(v7, &__src + 1) || !vrx_csv_file_next_double(v7, v40) || !vrx_csv_file_next_string(v7, &__s) || !vrx_csv_file_next_string(v7, &v34) || !vrx_csv_file_next_string(v7, &v33) || !vrx_csv_file_next_string(v7, &v32))
        {
          continue;
        }

        v12 = v11;
        v13 = __s;
        v14 = strlen(__s);
        v31 = strlen(v34);
        v15 = strlen(v33);
        v30 = strlen(v32);
        *(&v45 + 1) = a2;
        if (!v14 || !strcmp(__s, "None"))
        {
          LODWORD(v46[0]) = 1;
        }

        else
        {
          v16 = v14 > 0x17;
          v11 = v12;
          if (v16 || v15 - 39 < 0xFFFFFFFFFFFFFFF9)
          {
            continue;
          }

          strlen(v13);
          v17 = strchr(v13, 95);
          __strncpy_chk();
          if (v17)
          {
            strncpy(&v42 + 8, v17 + 1, 8uLL);
          }

          __strcpy_chk();
        }

        v11 = v12;
        *&v53 = a2 | 0x100000000;
        if (!v31 || (v18 = v34, !strcmp(v34, "None")))
        {
          DWORD2(v53) = 1;
LABEL_36:
          v20 = v54;
          *(v8 + 20) = vmax_s32(*(v8 + 20), *&v54);
          *__str = 0;
          if (a2 == 1)
          {
            snprintf(__str, 8uLL, v12, __src);
            v21 = v54;
            v22 = DWORD1(v54);
          }

          else
          {
            v21 = v20;
            v22 = HIDWORD(v20);
          }

          if (__vrx_generate_lens_tray_slot_label(v21, v22, __str, &v54 + 8))
          {
            *&v46[1] = __src;
            v46[3] = *&v40[0];
            v23 = *(&__src + 1) * 0.5;
            *(v40 + 1) = *(&__src + 1) * 0.5 + *&__src;
            v24 = __sincos_stret((*v40 + *v40) * 3.14159265 / 180.0);
            *&v40[1] = -(v23 * v24.__cosval);
            *(&v40[1] + 1) = -(v23 * v24.__sinval);
            v47 = *(v40 + 8);
            *&v48 = *(&v40[1] + 1);
            vrx_vector_append(v10, &__src);
          }

          continue;
        }

        if (v31 <= 0x17 && v30 - 39 >= 0xFFFFFFFFFFFFFFF9)
        {
          strlen(v18);
          v19 = strchr(v18, 95);
          __strncpy_chk();
          if (v19)
          {
            strncpy(&v50, v19 + 1, 8uLL);
          }

          __strcpy_chk();
          goto LABEL_36;
        }
      }

      while (vrx_csv_file_next_record(v7));
    }

    vrx_csv_file_destroy(v7);
    *(v8 + 4) = vrx_vector_length(v10);
    *(v8 + 1) = vrx_vector_finalize(v10);
    *(v8 + 4) = malloc_type_calloc(*(v8 + 6) * *(v8 + 5), 8uLL, 0x2004093837F09uLL);
    v25 = *(v8 + 4);
    if (v25 >= 1)
    {
      v26 = 0;
      v27 = *(v8 + 6);
      do
      {
        *(*(v8 + 4) + 8 * (*(*(v8 + 1) + v26 + 276) + (*(*(v8 + 1) + v26 + 272) - 1) * v27 - 1)) = *(v8 + 1) + v26;
        v26 += 296;
      }

      while (296 * v25 != v26);
    }

    qsort(*(v8 + 1), v25, 0x128uLL, __vrx_compare_lens_tray_slots_by_label);
  }

  else
  {
    v8 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t vrx_validate_lens_tray_file(const char *a1, char *a2)
{
  if (!a1)
  {
    vrx_validate_lens_tray_file_cold_2();
  }

  if (!a2)
  {
    vrx_validate_lens_tray_file_cold_1();
  }

  v5 = 0;
  v4 = 0;
  result = vrx_is_lens_tray_file(a2, &v5, &v4);
  if (result)
  {
    result = __vrx_load_lens_tray(a1, v5, v4);
    if (result)
    {
      vrx_unload_lens_tray(result);
      return 1;
    }
  }

  return result;
}

uint64_t vrx_is_lens_tray_file(char *a1, int *a2, char **a3)
{
  result = strrchr(a1, 46);
  if (result)
  {
    v7 = result;
    if (!strcmp((result + 1), vrx_demo_tray_file_extension))
    {
      v8 = 0;
      if (!a2)
      {
        return 1;
      }
    }

    else
    {
      if (strcmp((v7 + 1), vrx_reader_tray_file_extension))
      {
        return 0;
      }

      v8 = 1;
      if (!a2)
      {
        return 1;
      }
    }

    *a2 = v8;
    if (a3)
    {
      v9 = strrchr(a1, 47);
      if (v9)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = a1;
      }

      *a3 = strndup(v10, v7 - v10);
    }

    return 1;
  }

  return result;
}

void vrx_unload_lens_tray(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          free(v3);
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
        v2 = *(a1 + 48);
      }

      free(v2);
    }

    free(*a1);
    free(*(a1 + 8));
    free(*(a1 + 32));

    free(a1);
  }
}

uint64_t vrx_print_lens_tray_slot(uint64_t a1)
{
  if (!a1)
  {
    vrx_print_lens_tray_slot_cold_1();
  }

  printf("%s: ", (a1 + 280));
  vrx_print_lens(a1);
  printf("; ");
  vrx_print_lens(a1 + 136);

  return putchar(10);
}

uint64_t vrx_print_lens(uint64_t a1)
{
  if (!a1)
  {
    vrx_print_lens_cold_1();
  }

  v2 = "Left";
  if (!*(a1 + 124))
  {
    v2 = "Right";
  }

  v3 = (a1 + 48);
  v4 = "N/A";
  if (*(a1 + 128))
  {
    v3 = "N/A";
  }

  else
  {
    v4 = (a1 + 72);
  }

  printf("%s - sn: %*s, seq#: %*s, ", v2, 23, v3, 7, v4);
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, *(a1 + 8), *(a1 + 16));
  return printf(" (%s)", __vrx_lens_type_strings[*(a1 + 120)]);
}

uint64_t vrx_print_lens_tray(uint64_t a1)
{
  if (!a1)
  {
    vrx_print_lens_tray_cold_1();
  }

  printf("Name: %s\n", *a1);
  puts("Metadata:");
  v2 = *(a1 + 48);
  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = v2 + 1;
    do
    {
      if (v4)
      {
        printf("  %s = %s\n", v4, v3);
        v3 = 0;
      }

      v4 = v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  putchar(10);
  LODWORD(v7) = *(a1 + 16);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      vrx_print_lens_tray_slot(*(a1 + 8) + v8);
      ++v9;
      v7 = *(a1 + 16);
      v8 += 296;
    }

    while (v9 < v7);
  }

  return printf("(%d slots)\n", v7);
}

uint64_t vrx_apply_eye_rx_cylinder_sign_flip(double *a1)
{
  if (!a1)
  {
    vrx_apply_eye_rx_cylinder_sign_flip_cold_1();
  }

  v1 = a1[1];
  if (v1 <= 0.0)
  {
    return 0;
  }

  *a1 = v1 + *a1;
  a1[1] = -v1;
    ;
  }

    ;
  }

  a1[2] = i;
  return 1;
}

uint64_t vrx_unapply_eye_rx_cylinder_sign_flip(double *a1)
{
  if (!a1)
  {
    vrx_unapply_eye_rx_cylinder_sign_flip_cold_1();
  }

  v1 = a1[1];
  if (v1 >= 0.0)
  {
    return 0;
  }

  *a1 = v1 + *a1;
  a1[1] = -v1;
    ;
  }

    ;
  }

  a1[2] = i;
  return 1;
}

uint64_t vrx_apply_cylinder_sign_flip(double *a1)
{
  vrx_apply_eye_rx_cylinder_sign_flip(a1);

  return vrx_apply_eye_rx_cylinder_sign_flip(a1 + 3);
}

float64x2_t vrx_round_eye_rx(float64x2_t *a1)
{
  if (!a1)
  {
    vrx_round_eye_rx_cold_1();
  }

  __asm { FMOV            V1.2D, #4.0 }

  v6 = vrndaq_f64(vmulq_f64(*a1, _Q1));
  __asm { FMOV            V1.2D, #0.25 }

  result = vmulq_f64(v6, _Q1);
  *a1 = result;
  return result;
}

float64x2_t vrx_round_rx(uint64_t a1)
{
  if (!a1)
  {
    vrx_round_rx_cold_1();
  }

  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.25
  }

  *a1 = vmulq_f64(vrndaq_f64(vmulq_f64(*a1, _Q1)), _Q2);
  result = vmulq_f64(vrndaq_f64(vmulq_f64(*(a1 + 24), _Q1)), _Q2);
  *(a1 + 24) = result;
  return result;
}

double vrx_reset_rx(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL vrx_eye_rx_is_valid(double *a1)
{
  if (!a1)
  {
    vrx_eye_rx_is_valid_cold_1();
  }

  if (fabs(*a1) <= 30.0 && fabs(a1[1]) <= 30.0 && (v1 = a1[2], v1 >= 0.0))
  {
    return v1 < 180.0;
  }

  else
  {
    return 0;
  }
}

BOOL vrx_rx_is_valid(double *a1)
{
  if (!a1)
  {
    vrx_rx_is_valid_cold_1();
  }

  if (fabs(*a1) > 30.0 || fabs(a1[1]) > 30.0)
  {
    return 0;
  }

  v1 = 0;
  v3 = a1[2];
  if (v3 >= 0.0 && v3 < 180.0)
  {
    if (fabs(a1[3]) <= 30.0 && fabs(a1[4]) <= 30.0)
    {
      v4 = a1[5];
      if (v4 >= 0.0)
      {
        return v4 < 180.0;
      }
    }

    return 0;
  }

  return v1;
}

float64x2_t vrx_apply_eye_rx_vr_add(double *a1, double a2, double a3)
{
  if (!a1)
  {
    vrx_apply_eye_rx_vr_add_cold_1();
  }

  v3.f64[0] = (*a1 + a2) / ((12.0 - a3) / -1000.0 * (*a1 + a2) + 1.0);
  v3.f64[1] = a1[1];
  __asm { FMOV            V1.2D, #4.0 }

  v9 = vrndaq_f64(vmulq_f64(v3, _Q1));
  __asm { FMOV            V1.2D, #0.25 }

  result = vmulq_f64(v9, _Q1);
  *a1 = result;
  return result;
}

double vrx_unapply_eye_rx_vr_add(double *a1, double a2, double a3)
{
  if (!a1)
  {
    vrx_unapply_eye_rx_vr_add_cold_1();
  }

  result = round((*a1 / (*a1 * ((12.0 - a3) / 1000.0) + 1.0) - a2) * 4.0) * 0.25;
  *a1 = result;
  return result;
}

double vrx_compute_vr_add(int a1, double a2)
{
  if (a2 <= 0.0)
  {
    result = 0.25;
    v6 = 0.5;
    v7 = 0.0;
    if (a1 > 59)
    {
      v7 = 0.75;
    }

    if ((a1 - 50) >= 0xA)
    {
      v6 = v7;
    }

    if ((a1 - 40) >= 0xA)
    {
      return v6;
    }
  }

  else
  {
    v2 = a2 * 0.367 + -0.104;
    v3 = 0.75;
    if (v2 <= 0.75)
    {
      v3 = v2;
    }

    v4 = v2 < 0.0;
    result = 0.0;
    if (!v4)
    {
      return v3;
    }
  }

  return result;
}

float64x2_t vrx_apply_vr_add(double *a1, unsigned int a2, double *a3, double *a4, double a5)
{
  if (!a1)
  {
    vrx_apply_vr_add_cold_2();
  }

  if ((a2 & 0x80000000) != 0)
  {
    vrx_apply_vr_add_cold_1();
  }

  v5 = a1[6];
  if (v5 <= 0.0)
  {
    v9 = 0.25;
    if (a2 - 40 >= 0xA)
    {
      v9 = 0.5;
      if (a2 - 50 >= 0xA)
      {
        v9 = 0.0;
        if (a2 > 0x3B)
        {
          v9 = 0.75;
        }
      }
    }
  }

  else
  {
    v6 = v5 * 0.367 + -0.104;
    v7 = 0.75;
    if (v6 <= 0.75)
    {
      v7 = v6;
    }

    _NF = v6 < 0.0;
    v9 = 0.0;
    if (!_NF)
    {
      v9 = v7;
    }
  }

  *a3 = v9;
  v10 = a1[7];
  if (v10 <= 0.0)
  {
    v13 = 0.25;
    if (a2 - 40 >= 0xA)
    {
      v13 = 0.5;
      if (a2 - 50 >= 0xA)
      {
        v13 = 0.0;
        if (a2 > 0x3B)
        {
          v13 = 0.75;
        }
      }
    }
  }

  else
  {
    v11 = v10 * 0.367 + -0.104;
    v12 = 0.75;
    if (v11 <= 0.75)
    {
      v12 = v11;
    }

    _NF = v11 < 0.0;
    v13 = 0.0;
    if (!_NF)
    {
      v13 = v12;
    }
  }

  *a4 = v13;
  v14 = (12.0 - a5) / -1000.0;
  v15.f64[0] = (*a3 + *a1) / (v14 * (*a3 + *a1) + 1.0);
  v15.f64[1] = a1[1];
  __asm
  {
    FMOV            V3.2D, #4.0
    FMOV            V4.2D, #0.25
  }

  *a1 = vmulq_f64(vrndaq_f64(vmulq_f64(v15, _Q3)), _Q4);
  v21.f64[0] = (*a4 + a1[3]) / (v14 * (*a4 + a1[3]) + 1.0);
  v21.f64[1] = a1[4];
  result = vmulq_f64(vrndaq_f64(vmulq_f64(v21, _Q3)), _Q4);
  *(a1 + 3) = result;
  return result;
}

uint64_t vrx_find_lenses_ex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char *a6, uint64_t a7, int a8, double a9)
{
  if (!a1)
  {
    vrx_find_lenses_ex_cold_5();
  }

  if (!a3)
  {
    vrx_find_lenses_ex_cold_4();
  }

  v10 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    vrx_find_lenses_ex_cold_3();
  }

  if (!a6)
  {
    vrx_find_lenses_ex_cold_2();
  }

  v11 = a7;
  if (a7 <= 0)
  {
    vrx_find_lenses_ex_cold_1();
  }

  bzero(a6, 664 * a7);
  vrx_apply_eye_rx_cylinder_sign_flip(a3);
  vrx_apply_eye_rx_cylinder_sign_flip((a3 + 24));
  v106 = 0.0;
  v107[0] = 0.0;
  if (a5)
  {
    if (a5 == 1)
    {
      *a3 = *a3 + -0.75;
      *(a3 + 24) = *(a3 + 24) + -0.75;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      v10 = 35;
    }
  }

  else
  {
    vrx_apply_vr_add(a3, v10, v107, &v106, a9);
  }

  __asm { FMOV            V2.2D, #4.0 }

  v19 = vrndaq_f64(vmulq_f64(*a3, _Q2));
  v20 = vrndaq_f64(vmulq_f64(*(a3 + 24), _Q2));
  __asm { FMOV            V2.2D, #0.25 }

  v22 = vmulq_f64(v20, _Q2);
  v23 = vmulq_f64(v19, _Q2);
  *a3 = v23;
  *(a3 + 24) = v22;
  v99 = v11;
  if (!a2 || (*a3 == *(a3 + 24) ? (_ZF = *(a3 + 8) == *(a3 + 32)) : (_ZF = 0), _ZF ? (v25 = *(a3 + 16) == *(a3 + 40)) : (v25 = 0), !v25 || v23.f64[1] != 0.0 || *(a3 + 16) != 0.0))
  {
LABEL_32:
    v100 = v23;
    v103 = v22;
    v32 = __sincos_stret((*(a3 + 16) + *(a3 + 16)) * 3.14159265 / 180.0);
    v33 = __sincos_stret((*(a3 + 40) + *(a3 + 40)) * 3.14159265 / 180.0);
    v34 = v10 > 0x27;
    v35 = v107[0] > 0.0 || v10 > 0x27;
    if (v35)
    {
      v36 = 0.7;
    }

    else
    {
      v36 = 1.0;
    }

    if (v35)
    {
      v37 = 0.7;
    }

    else
    {
      v37 = 2.0;
    }

    if (v106 > 0.0)
    {
      v34 = 1;
    }

    if (v34)
    {
      v38 = 0.7;
    }

    else
    {
      v38 = 1.0;
    }

    if (v34)
    {
      v39 = 0.7;
    }

    else
    {
      v39 = 2.0;
    }

    v40 = malloc_type_calloc(*(a1 + 16), 0x18uLL, 0x1000040504FFAC1uLL);
    v41 = malloc_type_calloc(*(a1 + 16), 0x18uLL, 0x1000040504FFAC1uLL);
    v42 = malloc_type_calloc(*(a1 + 16), 8uLL, 0x100004000313F17uLL);
    v43 = malloc_type_calloc(*(a1 + 16), 8uLL, 0x100004000313F17uLL);
    v44 = a1;
    v45 = *(a1 + 16);
    v89 = v41;
    v90 = v40;
    if (v45 < 1)
    {
      v101 = 0;
LABEL_84:
      v88 = v43;
      free(v90);
      free(v89);
      free(v42);
      free(v88);
      return v101;
    }

    v46 = 0;
    v47 = vmuld_lane_f64(0.5, v100, 1);
    v48 = v47 + v100.f64[0];
    v49 = -(v47 * v32.__cosval);
    v50 = -(v47 * v32.__sinval);
    v51 = vmuld_lane_f64(0.5, v103, 1);
    v55.f64[0] = v51 + v103.f64[0];
    v52 = -(v51 * v33.__cosval);
    v53 = -(v51 * v33.__sinval);
    v95 = v49;
    v96 = v48;
    v54.f64[0] = v48;
    v54.f64[1] = v49;
    v93 = v52;
    v94 = v55.f64[0];
    v55.f64[1] = v52;
    v56 = (*(a1 + 8) + 160);
    v57 = v42;
    v58 = v43;
    do
    {
      v59 = &v40[v46];
      *v59 = vsubq_f64(*(v56 - 136), v54);
      *(v59 + 2) = v56[-8].f64[1] - v50;
      v60 = &v41[v46];
      *v60 = vsubq_f64(*v56, v55);
      v61 = *&v40[v46];
      *(v60 + 2) = v56[1].f64[0] - v53;
      if (v61 < 0.0)
      {
        v62 = v37;
      }

      else
      {
        v62 = v36;
      }

      v63 = v61 / v62;
      v64 = vaddq_f64(*(v59 + 8), *(v59 + 8));
      v65 = vmulq_f64(v64, v64);
      *v57++ = sqrt(v65.f64[1] + v65.f64[0] + v63 * v63);
      if (*v60 < 0.0)
      {
        v66 = v39;
      }

      else
      {
        v66 = v38;
      }

      v67 = *v60 / v66 * (*v60 / v66);
      v68 = vaddq_f64(*(v60 + 8), *(v60 + 8));
      v69 = vmulq_f64(v68, v68);
      *v58++ = sqrt(v69.f64[1] + v69.f64[0] + v67);
      v46 += 24;
      v56 = (v56 + 296);
    }

    while (24 * v45 != v46);
    v70 = 0;
    v101 = 0;
    v91 = &a6[664 * v11 - 8];
    v92 = v11 - 1;
    v71 = -1.5;
    v72 = -0.5;
    v97 = v42;
    while (1)
    {
      v73 = *(v44 + 8) + 296 * v70;
      if (!*(v73 + 128))
      {
        v74 = *(v73 + 132) && a8 == 0;
        if (!v74 && v45 >= 1)
        {
          break;
        }
      }

LABEL_81:
      if (++v70 >= v45)
      {
        goto LABEL_84;
      }
    }

    v76 = 0;
    v77 = 0;
    v78 = v89;
    v104 = &v90[24 * v70];
    while (1)
    {
      v79 = *(v44 + 8);
      if (*(v79 + v76 + 264) || !a8 && *(v79 + v76 + 268))
      {
        goto LABEL_80;
      }

      v80 = v43;
      v81 = (erf((fabs(sqrt(*(v42 + v70) * *(v42 + v70) + *(v43 + v77) * *(v43 + v77))) + v71) / 0.707106781) + 1.0) * v72 + 1.0;
      if (vabdd_f64(*v104, *v78) <= 0.25)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0.0;
      }

      if (v82 >= *&vrx_minimum_passing_fit_probability)
      {
        if (v101 < v99)
        {
          v83 = v101;
          v101 = (v101 + 1);
LABEL_79:
          v45 = &a6[664 * v83];
          v84 = sqrt((v96 - *(v73 + 24)) * (v96 - *(v73 + 24)) + (v95 - *(v73 + 32)) * (v95 - *(v73 + 32)) + (v50 - *(v73 + 40)) * (v50 - *(v73 + 40)));
          v85 = sqrt((v94 - *(v79 + v76 + 160)) * (v94 - *(v79 + v76 + 160)) + (v93 - *(v79 + v76 + 168)) * (v93 - *(v79 + v76 + 168)) + (v53 - *(v79 + v76 + 176)) * (v53 - *(v79 + v76 + 176)));
          memcpy(v45, v73, 0x128uLL);
          v86 = *(v104 + 2);
          *(v45 + 296) = *v104;
          *(v45 + 312) = v86;
          *(v45 + 320) = v84;
          v71 = -1.5;
          memcpy((v45 + 328), (v79 + v76), 0x128uLL);
          v87 = *(v78 + 2);
          *(v45 + 624) = *v78;
          *(v45 + 640) = v87;
          *(v45 + 648) = v85;
          v72 = -0.5;
          *(v45 + 656) = v82;
          v42 = v97;
          qsort(a6, v101, 0x298uLL, __vrx_compare_lens_results_by_probability_descending);
          v44 = a1;
          v43 = v80;
          LODWORD(v45) = *(a1 + 16);
          goto LABEL_80;
        }

        v83 = v92;
        v43 = v80;
        v44 = a1;
        if (v82 > *v91)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v43 = v80;
        v44 = a1;
      }

LABEL_80:
      ++v77;
      v78 += 3;
      v76 += 296;
      if (v77 >= v45)
      {
        goto LABEL_81;
      }
    }
  }

  v26 = *(a2 + 16);
  if (v26 < 1)
  {
    goto LABEL_31;
  }

  v27 = 0;
  v28 = 0;
  result = 0;
  while (1)
  {
    v11 = *(a2 + 8);
    if (*(v11 + v27) != *a3)
    {
      LODWORD(v11) = v99;
      goto LABEL_27;
    }

    v30 = &a6[664 * result];
    v31 = result;
    bzero(v30, 0x298uLL);
    memcpy(v30, (v11 + v27), 0x128uLL);
    memcpy(v30 + 328, (v11 + v27), 0x128uLL);
    *(v30 + 82) = 0x3FF0000000000000;
    result = (v31 + 1);
    LODWORD(v11) = v99;
    if (result == v99)
    {
      break;
    }

    v26 = *(a2 + 16);
LABEL_27:
    ++v28;
    v27 += 296;
    if (v28 >= v26)
    {
      goto LABEL_30;
    }
  }

  result = v99;
LABEL_30:
  if (result <= 0)
  {
LABEL_31:
    v23 = *a3;
    v22 = *(a3 + 24);
    goto LABEL_32;
  }

  return result;
}

uint64_t __vrx_compare_lens_results_by_probability_descending(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 656) - *(a2 + 656);
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 < 0.0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t vrx_reserve_lens_pair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    vrx_reserve_lens_pair_cold_3();
  }

  if (!a2)
  {
    vrx_reserve_lens_pair_cold_2();
  }

  if (!a3)
  {
    vrx_reserve_lens_pair_cold_1();
  }

  v4 = __vrx_lookup_lens_tray_slot_for_label(a1);
  v5 = __vrx_lookup_lens_tray_slot_for_label(a1);
  v6 = 0;
  if (v4 && v5)
  {
    if (v4[32] || v5[66] || v4[33] || v5[67])
    {
      return 0;
    }

    else
    {
      v6 = 1;
      v4[33] = 1;
      v5[67] = 1;
    }
  }

  return v6;
}

void *__vrx_lookup_lens_tray_slot_for_label(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  __strcpy_chk();
  result = bsearch(v4, *(a1 + 8), *(a1 + 16), 0x128uLL, __vrx_compare_lens_tray_slots_by_label);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t vrx_release_lens_pair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    vrx_release_lens_pair_cold_3();
  }

  if (!a2)
  {
    vrx_release_lens_pair_cold_2();
  }

  if (!a3)
  {
    vrx_release_lens_pair_cold_1();
  }

  v4 = __vrx_lookup_lens_tray_slot_for_label(a1);
  v5 = __vrx_lookup_lens_tray_slot_for_label(a1);
  v6 = 0;
  if (v4)
  {
    if (v5)
    {
      v6 = v4[33];
      if (v6)
      {
        v6 = v5[67];
        if (v6)
        {
          v4[33] = 0;
          v5[67] = 0;
          return 1;
        }
      }
    }
  }

  return v6;
}

uint64_t vrx_release_all_lenses(uint64_t result)
{
  if (!result)
  {
    vrx_release_all_lenses_cold_1();
  }

  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = (*(result + 8) + 268);
    do
    {
      *(v2 - 34) = 0;
      *v2 = 0;
      v2 += 74;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t vrx_set_lens_missing(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    vrx_set_lens_missing_cold_1();
  }

  result = __vrx_lookup_lens_tray_slot_for_label(a1);
  if (result)
  {
    if (!a3)
    {
      v7 = 128;
      goto LABEL_7;
    }

    if (a3 == 1)
    {
      v7 = 264;
LABEL_7:
      *(result + v7) = a4;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t vrx_clear_missing_lenses(uint64_t result)
{
  if (!result)
  {
    vrx_clear_missing_lenses_cold_1();
  }

  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = (*(result + 8) + 264);
    do
    {
      *(v2 - 34) = 0;
      *v2 = 0;
      v2 += 74;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t vrx_get_lens_tray_slot_for_label(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    vrx_get_lens_tray_slot_for_label_cold_2();
  }

  if (!a2)
  {
    vrx_get_lens_tray_slot_for_label_cold_1();
  }

  result = __vrx_lookup_lens_tray_slot_for_label(a1);
  if (result)
  {
    memcpy(a3, result, 0x128uLL);
    return 1;
  }

  return result;
}

uint64_t vrx_get_lens_tray_slot_for_location(uint64_t a1, int a2, int a3, void *__dst)
{
  if (!a1)
  {
    vrx_get_lens_tray_slot_for_location_cold_1();
  }

  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  if (a3 >= 1 && *(a1 + 20) >= a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= a3)
    {
      v7 = *(*(a1 + 32) + 8 * (a3 + v6 * (a2 - 1) - 1));
      if (v7)
      {
        memcpy(__dst, v7, 0x128uLL);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL vrx_get_lens_tray_slot_for_sequence_number(uint64_t a1, int a2, char *__s2)
{
  if (!a1)
  {
    vrx_get_lens_tray_slot_for_sequence_number_cold_2();
  }

  if (!__s2)
  {
    vrx_get_lens_tray_slot_for_sequence_number_cold_1();
  }

  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 8);
    v8 = 1;
    v9 = v7;
    v10 = 1;
    while (1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v11 = v7 + 296 * v6 + 136;
LABEL_9:
          if (!strcmp((v11 + 72), __s2))
          {
            return v10;
          }
        }
      }

      else
      {
        v11 = v9;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      ++v6;
      v10 = v8 < v4;
      v9 += 296;
      if (++v8 - v4 == 1)
      {
        return v10;
      }
    }
  }

  return 0;
}

uint64_t vrx_print_eye_rx(double *a1)
{
  if (!a1)
  {
    vrx_print_eye_rx_cold_1();
  }

  return printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, a1[1], a1[2]);
}

uint64_t vrx_print_rx(double *a1)
{
  if (!a1)
  {
    vrx_print_rx_cold_1();
  }

  printf("OD:       ");
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, a1[1], a1[2]);
  putchar(10);
  printf("OS:       ");
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", a1[3], a1[4], a1[5]);
  putchar(10);
  printf("OD ADD:   %+6.2f\n", a1[6]);
  printf("OS ADD:   %+6.2f\n", a1[7]);

  return putchar(10);
}

uint64_t vrx_print_power_vector(double *a1)
{
  if (!a1)
  {
    vrx_print_power_vector_cold_1();
  }

  return printf("M: %+.6f, J0: %+.6f, J45: %+.6f\n", *a1, a1[1], a1[2]);
}

_DWORD *vrx_parse_supported_lens_matrix(uint64_t a1)
{
  if (!a1)
  {
    vrx_parse_supported_lens_matrix_cold_1();
  }

  v1 = vrx_reader_open_string(a1);

  return __vrx_read_supported_lens_matrix(v1);
}

_DWORD *__vrx_read_supported_lens_matrix(uint64_t a1)
{
  if (!a1)
  {
    __vrx_read_supported_lens_matrix_cold_1();
  }

  v1 = vrx_csv_file_create(a1);
  if (!v1)
  {
    v4 = 0;
    v9 = &unk_27EE4F000;
    v10 = 1;
LABEL_19:
    v9[424] = v10;
    return v4;
  }

  v2 = v1;
  if (!vrx_csv_file_next_record(v1) || (v15 = 0.0, !vrx_csv_file_next_double(v2, &v15)))
  {
    vrx_csv_file_destroy(v2);
LABEL_18:
    v4 = 0;
    v9 = &unk_27EE4F000;
    v10 = 2;
    goto LABEL_19;
  }

  v3 = vrx_vector_create_(128, 2, 0);
  while (vrx_csv_file_next_double(v2, &v15))
  {
    LOWORD(__src) = (v15 * 100.0);
    vrx_vector_append(v3, &__src);
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040E271B65FuLL);
  v4[6] = vrx_vector_length(v3);
  *(v4 + 1) = vrx_vector_finalize(v3);
  v5 = vrx_vector_create_(128, 8, 1);
  v6 = vrx_vector_create_(128, 2, 0);
  if (vrx_csv_file_next_record(v2))
  {
    while (vrx_csv_file_next_double(v2, &v15))
    {
      v14 = (v15 * 100.0);
      vrx_vector_append(v6, &v14);
      v7 = vrx_vector_create_(v4[6], 2, 0);
      if (v4[6] >= 1)
      {
        v8 = 0;
        do
        {
          LODWORD(__src) = 0;
          if (!vrx_csv_file_next_int(v2, &__src))
          {
            goto LABEL_17;
          }

          v13 = __src;
          vrx_vector_append(v7, &v13);
        }

        while (++v8 < v4[6]);
      }

      __src = vrx_vector_finalize(v7);
      vrx_vector_append(v5, &__src);
      if (!vrx_csv_file_next_record(v2))
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    vrx_csv_file_destroy(v2);
    vrx_unload_supported_lens_matrix(v4);
    goto LABEL_18;
  }

LABEL_14:
  v4[7] = vrx_vector_length(v6);
  *(v4 + 2) = vrx_vector_finalize(v6);
  *v4 = vrx_vector_finalize(v5);
  vrx_csv_file_destroy(v2);
  vrx_error = 0;
  return v4;
}

void *vrx_load_supported_lens_matrix(const char *a1)
{
  if (!a1)
  {
    vrx_load_supported_lens_matrix_cold_1();
  }

  result = vrx_reader_open_file(a1);
  if (result)
  {

    return __vrx_read_supported_lens_matrix(result);
  }

  return result;
}

void vrx_unload_supported_lens_matrix(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    free(*(a1 + 16));
    if (*(a1 + 28) >= 1)
    {
      v2 = 0;
      do
      {
        free(*(*a1 + 8 * v2++));
      }

      while (v2 < *(a1 + 28));
    }

    free(*a1);

    free(a1);
  }
}

_DWORD *vrx_load_lens_tray_from_supported_lens_matrix(uint64_t a1, double a2, double a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    vrx_load_lens_tray_from_supported_lens_matrix_cold_1();
  }

    ;
  }

    ;
  }

  while (a3 < 0.0)
  {
    a3 = a3 + 180.0;
  }

    ;
  }

  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F0040E7A3C391uLL);
  *v6 = strdup("<virtual>");
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  __src = 0u;
  v23 = 0u;
  v7 = vrx_vector_create_(128, 296, 0);
  v8 = *(a1 + 28);
  if (v8 >= 1)
  {
    v9 = __sincos_stret((i + i) * 3.14159265 / 180.0);
    v10 = *(a1 + 24);
    v11 = __sincos_stret((a3 + a3) * 3.14159265 / 180.0);
    v12 = 0;
    do
    {
      v13 = v12 + 1;
      if (v10 >= 1)
      {
        v14 = 0;
        v15 = *(*(a1 + 16) + 2 * v12) / 100.0;
        do
        {
          if (*(*(*a1 + 8 * v12) + 2 * v14))
          {
            v16 = *(*(a1 + 8) + 2 * v14);
            __src = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v17 = a3;
            v18 = v16 / 100.0;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            *(&v39 + 1) = 0;
            v40 = 0;
            LODWORD(v39) = v12 + 1;
            DWORD1(v39) = ++v14;
            __vrx_generate_lens_tray_slot_label(v12 + 1, v14, "", &v39 + 8);
            *&__src = v18;
            *(&__src + 1) = v15;
            *(&v30 + 1) = v18;
            *&v31 = v15;
            v19 = v15 * 0.5 + v18;
            a3 = v17;
            *&v23 = i;
            *(&v23 + 1) = v19;
            *&v24 = -(v15 * 0.5 * v9.__cosval);
            *(&v24 + 1) = -(v15 * 0.5 * v9.__sinval);
            *(&v31 + 1) = v17;
            *&v32 = v19;
            *(&v32 + 1) = -(v15 * 0.5 * v11.__cosval);
            *&v33 = -(v15 * 0.5 * v11.__sinval);
            vrx_vector_append(v7, &__src);
            v10 = *(a1 + 24);
          }

          else
          {
            ++v14;
          }
        }

        while (v14 < v10);
        v8 = *(a1 + 28);
      }

      ++v12;
    }

    while (v13 < v8);
  }

  v6[4] = vrx_vector_length(v7);
  *(v6 + 1) = vrx_vector_finalize(v7);
  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __vrx_generate_lens_tray_slot_label(unsigned int a1, int a2, const char *a3, char *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    __vrx_generate_lens_tray_slot_label_cold_1();
  }

  lens_tray_row_label = vrx_generate_lens_tray_row_label(a1, __str);
  result = 0;
  if ((a2 - 1000) >= 0xFFFFFC19 && lens_tray_row_label)
  {
    snprintf(a4, 0xCuLL, "%s%02d%s", __str, a2, a3);
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *vrx_lens_is_supported(uint64_t a1, double *a2)
{
  if (!a1)
  {
    vrx_lens_is_supported_cold_2();
  }

  if (!a2)
  {
    vrx_lens_is_supported_cold_1();
  }

  v3 = a2[1];
  __key = (*a2 * 100.0);
  v7 = (v3 * 100.0);
  result = bsearch(&__key, *(a1 + 8), *(a1 + 24), 2uLL, __vrx_compare_shorts);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 8);
    result = bsearch(&v7, *(a1 + 16), *(a1 + 28), 2uLL, __vrx_compare_shorts);
    if (result)
    {
      return (*(*(*a1 + 8 * (((result - *(a1 + 16)) << 47) >> 48)) + 2 * (((v5 - v6) << 47) >> 48)) != 0);
    }
  }

  return result;
}

uint64_t __vrx_compare_shorts(_WORD *a1, _WORD *a2)
{
  if ((*a1 - *a2) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

BOOL vrx_get_lens_for_serial_number(uint64_t a1, char *__s2, uint64_t a3)
{
  if (!a1)
  {
    vrx_get_lens_for_serial_number_cold_3();
  }

  if (!__s2)
  {
    vrx_get_lens_for_serial_number_cold_2();
  }

  if (!a3)
  {
    vrx_get_lens_for_serial_number_cold_1();
  }

  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 8);
  v8 = 1;
  v9 = 1;
  while (strcmp((v7 + v6 + 48), __s2))
  {
    if (!strcmp((v7 + v6 + 184), __s2))
    {
      v11 = v7 + v6 + 136;
      goto LABEL_13;
    }

LABEL_10:
    v9 = v8 < v5;
    v6 += 296;
    ++v8;
    if (296 * v5 == v6)
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v11 = v7 + v6;
LABEL_13:
  *a3 = *v11;
  v12 = *(v11 + 16);
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  *(a3 + 48) = *(v11 + 48);
  *(a3 + 64) = v14;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  v15 = *(v11 + 80);
  v16 = *(v11 + 96);
  v17 = *(v11 + 112);
  *(a3 + 128) = *(v11 + 128);
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *(a3 + 80) = v15;
  strcpy((a3 + 136), (v7 + v6 + 280));
  return v9;
}

uint64_t vrx_get_lens_for_slot(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    vrx_get_lens_for_slot_cold_4();
  }

  if (!a2)
  {
    vrx_get_lens_for_slot_cold_3();
  }

  if (a3 >= 2)
  {
    vrx_get_lens_for_slot_cold_2();
  }

  if (!a4)
  {
    vrx_get_lens_for_slot_cold_1();
  }

  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  __strcpy_chk();
  result = bsearch(v17, *(a1 + 8), *(a1 + 16), 0x128uLL, __vrx_compare_lens_tray_slots_by_label);
  if (result)
  {
    v8 = 136;
    if (!a3)
    {
      v8 = 0;
    }

    v9 = result + v8;
    *a4 = *v9;
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 64);
    *(a4 + 48) = *(v9 + 48);
    *(a4 + 64) = v12;
    *(a4 + 16) = v10;
    *(a4 + 32) = v11;
    v13 = *(v9 + 80);
    v14 = *(v9 + 96);
    v15 = *(v9 + 112);
    *(a4 + 128) = *(v9 + 128);
    *(a4 + 96) = v14;
    *(a4 + 112) = v15;
    *(a4 + 80) = v13;
    result = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

char *vrx_is_demo_tray_file(char *a1, char **a2)
{
  result = strrchr(a1, 46);
  if (result)
  {
    v5 = result;
    if (!strcmp(result + 1, vrx_demo_tray_file_extension))
    {
      if (a2)
      {
        *a2 = strndup(a1, v5 - a1);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CRXUPrint(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  fprintf(*MEMORY[0x277D85E08], "%s\n", [v11 UTF8String]);
}

void CRXUPrintErr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "%s\n", [v11 UTF8String]);
  fflush(*v12);
}

void sub_247361FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CRXUObjectsEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

uint64_t CRXUIsVM()
{
  if (CRXUIsVM_onceToken != -1)
  {
    CRXUIsVM_cold_1();
  }

  return CRXUIsVM_result;
}

uint64_t __CRXUIsVM_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    CRXUIsVM_result = v2 != 0;
  }

  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}