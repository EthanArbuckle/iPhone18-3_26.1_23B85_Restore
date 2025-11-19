unint64_t sub_257C0DF64()
{
  result = qword_27F8F5CB8;
  if (!qword_27F8F5CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5CC0);
    sub_257BD2D4C(&qword_27F8F5CC8, &unk_27F8F5CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5CB8);
  }

  return result;
}

void sub_257C0E028(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      return;
    }

LABEL_7:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    return;
  }

  if (a1 != 3)
  {
    goto LABEL_7;
  }

  v1 = sub_257ECF4C0();
  v9[4] = sub_257E5BD88;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_257E5BE70;
  v9[3] = &block_descriptor_6;
  v2 = _Block_copy(v9);
  v3 = AXLocStringForDeviceVariant();
  _Block_release(v2);

  if (v3)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257C0E2BC(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 <= 1u)
  {
    if (a1)
    {
LABEL_6:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = sub_257ECF4C0();
      v5 = sub_257ECF4C0();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      v1 = sub_257ECF500();
    }
  }

  else if (a1 == 2 || a1 == 3)
  {
    goto LABEL_6;
  }

  return v1;
}

uint64_t sub_257C0E3F8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257C109C8(v15);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

void sub_257C0E6CC()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

id sub_257C0E86C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  type metadata accessor for UIStepperLengthCell();
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_257ECF4C0();
  [v2 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v10 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return sub_257C0E3F8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_257C0EAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286903E50[v7 + 32];
    if (v11 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v22 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v8 + 16) + 1, 1);
        v8 = v22;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF25C4((v9 > 1), v10 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_availableDetectionFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v13 setClipsToBounds_];
  v14 = [objc_opt_self() systemYellowColor];
  [v13 setTintColor_];

  *&v4[v12] = v13;
  if (a2)
  {
    v15 = sub_257ECF4C0();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v4;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, v15, a3, a1);

  return v16;
}

id sub_257C0ED7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_286903E78[v5 + 32];
    if (v9 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v17 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF25C4((v7 > 1), v8 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_availableDetectionFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v11 setClipsToBounds_];
  v12 = [objc_opt_self() systemYellowColor];
  [v11 setTintColor_];

  *&v2[v10] = v11;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v13)
  {
  }

  return v13;
}

unint64_t sub_257C0F090(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v79[-1] - v5;
  v7 = sub_257ECCEA0();
  v8 = 5;
  v9 = 1;
  v78 = v4;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v8 = 3;
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_14;
        }

        v8 = 4;
      }

      goto LABEL_13;
    }

    v10 = v1;
    v11 = sub_257ECF4C0();
    v8 = 2;
LABEL_10:
    v12 = sub_257ECCE30();
    v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];

    v14 = v10;
    sub_257C0E3F8();
    goto LABEL_15;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_14;
    }

    v10 = v1;
    v11 = sub_257ECF4C0();
    v8 = 1;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_13:
  v9 = 0;
LABEL_14:
  v14 = v1;
  v15 = sub_257ECF4C0();
  v16 = sub_257ECCE30();
  v13 = [a1 dequeueReusableCellWithIdentifier:v15 forIndexPath:v16];

  sub_257C0E3F8();
  if (v9)
  {
    return v13;
  }

LABEL_15:
  if (v8 <= 1)
  {
    if (!v8)
    {
      v32 = [v13 textLabel];
      if (v32)
      {
        v33 = v32;
        [v32 setLineBreakMode_];
      }

      v34 = [v13 textLabel];
      if (v34)
      {
        v35 = v34;
        [v34 setNumberOfLines_];
      }

      v36 = [v13 textLabel];
      if (v36)
      {
        v37 = v36;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v39 = [objc_opt_self() bundleForClass_];
        v40 = sub_257ECF4C0();
        v41 = sub_257ECF4C0();
        v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

        if (!v42)
        {
          sub_257ECF500();
          v42 = sub_257ECF4C0();
        }

        [v37 setText_];
      }

      v43 = &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
      memcpy(v80, &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v80) != 1)
      {
        v44 = v43[74];
        v45 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        [v45 setOn_];
        [v45 addTarget:v14 action:sel_toggleObjectUnderstandingSwitch_ forControlEvents:4096];
        [v13 setAccessoryView_];
      }

      return v13;
    }

    [v13 setAccessoryView_];
    v71 = &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
    memcpy(v80, &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v80) == 1)
    {
      return v13;
    }

    v72 = v71[78];
    v73 = sub_257ECCE60();
    if (v73)
    {
      if (v73 != 1)
      {
        return v13;
      }

      if (v72)
      {
        goto LABEL_62;
      }
    }

    else if (!v72)
    {
LABEL_62:
      v74 = 3;
      goto LABEL_65;
    }

    v74 = 0;
LABEL_65:
    [v13 setAccessoryType_];
    v75 = [v13 textLabel];
    if (v75)
    {
      v76 = v75;
      sub_257C69A6C();
      v77 = sub_257ECF4C0();

      [v76 setText_];
    }

    return v13;
  }

  if (v8 == 2)
  {
    v46 = &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
    memcpy(v80, &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v80) != 1)
    {
      v47 = v46[78];
      memcpy(v79, v46, sizeof(v79));
      if (sub_257C108C4(v79) != 1)
      {
        type metadata accessor for UIStepperLengthCell();
        if (swift_dynamicCastClass())
        {
          v48 = objc_opt_self();
          v13 = v13;
          v49 = &selRef_feet;
          if (!v47)
          {
            v49 = &selRef_meters;
          }

          v50 = [v48 *v49];
          sub_257BD2C2C(0, &qword_27F8F58F0);
          sub_257ECC740();
          v51 = swift_allocObject();
          *(v51 + 16) = v14;
          v52 = v14;
          sub_257D3DB54(v6, sub_257C10A7C, v51);

          (*(v78 + 8))(v6, v3);
        }
      }
    }

    return v13;
  }

  if (v8 != 3)
  {
    v53 = [v13 textLabel];
    if (v53)
    {
      v54 = v53;
      [v53 setLineBreakMode_];
    }

    v55 = [v13 textLabel];
    if (v55)
    {
      v56 = v55;
      [v55 setNumberOfLines_];
    }

    v57 = [v13 textLabel];
    if (v57)
    {
      v58 = v57;
      v59 = v14;
      type metadata accessor for MAGUtilities();
      v60 = swift_getObjCClassFromMetadata();
      v61 = [objc_opt_self() bundleForClass_];
      v62 = sub_257ECF4C0();
      v63 = sub_257ECF4C0();
      v64 = [v61 localizedStringForKey:v62 value:0 table:v63];

      if (!v64)
      {
        sub_257ECF500();
        v64 = sub_257ECF4C0();
      }

      [v58 setText_];

      v14 = v59;
    }

    v65 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v65 setTag_];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v66 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    swift_beginAccess();
    v67 = *(v66 + 8);
    v68 = *(v66 + 16);
    v79[0] = *v66;
    v79[1] = v67;
    LOBYTE(v79[2]) = v68;
    v69 = qword_2815447E0;

    if (v69 != -1)
    {
      v70 = swift_once();
    }

    MEMORY[0x28223BE20](v70);
    *(&v78 - 2) = v79;
    sub_257ECFD50();

    [v65 setOn_];
    [v65 addTarget:v14 action:sel_toggleSeatOccupancySwitch_ forControlEvents:4096];
    [v13 setAccessoryView_];
    [v13 setAccessoryType_];

    return v13;
  }

  v17 = [v13 textLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setLineBreakMode_];
  }

  v19 = [v13 textLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setNumberOfLines_];
  }

  v21 = &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
  memcpy(v80, &v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
  if (sub_257C108C4(v80) == 1)
  {
    return v13;
  }

  v22 = *(v21 + 15);
  v23 = *&v14[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_availableDetectionFeedbacks];

  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v23 + 16))
  {
    v25 = *(v23 + result + 32);
    v26 = [v13 textLabel];
    if (v26)
    {
      v27 = v26;
      sub_257BCC4FC();
      v28 = sub_257ECF4C0();

      [v27 setText_];
    }

    v29 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v30 = sub_257C592D0(v25, v22);

    [v29 setOn_];
    v31 = v29;
    [v31 setTag_];
    [v31 addTarget:v14 action:sel_toggleFeedbackSwitch_ forControlEvents:4096];
    [v13 setAccessoryView_];

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_257C0FC04(double a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257CE2594(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_257C0FEE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257C10A30(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257C0FF3C(void *a1)
{
  v2 = v1;
  result = sub_257C0E3F8();
  if (a1)
  {
    result = sub_257BBD7B8([a1 tag]);
    if (result != 4)
    {
      v5 = result;
      v6 = v1 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
      result = sub_257C108C4(__dst);
      if (result != 1)
      {
        v7 = *(v6 + 120);

        if ([a1 isOn])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_257ED6D30;
          *(inited + 32) = v5;
          sub_257EB04EC(inited);
          sub_257C10114(v7);
        }

        else
        {
          v9 = *(v7 + 16);
          if (v9)
          {
            v10 = (v7 + 32);
            v11 = MEMORY[0x277D84F90];
            do
            {
              v15 = *v10++;
              v14 = v15;
              if (v15 != v5)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_257BF25C4(0, *(v11 + 16) + 1, 1);
                }

                v13 = *(v11 + 16);
                v12 = *(v11 + 24);
                if (v13 >= v12 >> 1)
                {
                  sub_257BF25C4((v12 > 1), v13 + 1, 1);
                }

                *(v11 + 16) = v13 + 1;
                *(v11 + v13 + 32) = v14;
              }

              --v9;
            }

            while (v9);
          }

          else
          {
            v11 = MEMORY[0x277D84F90];
          }

          sub_257C10114(v11);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257C10114(uint64_t a1)
{
  sub_257C0E3F8();
  v7 = a1;

  sub_257D6D164(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C(v3, *(v4 + 120)) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE2A58(v3);

  return swift_unknownObjectRelease();
}

void sub_257C10290(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      v7 = a3;
      v8 = a1;
      a4([v7 isOn]);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257C10344(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C0E3F8();
  v11 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v11 animated:1];

  v12 = sub_257ECCE30();
  v29 = [a1 cellForRowAtIndexPath_];

  if (!v29)
  {
    return;
  }

  v13 = sub_257ECCE60();
  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_23;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  v14 = sub_257ECCEA0();
  if (v14 < 5)
  {
    v15 = v14;
    v16 = v2 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
    memcpy(v31, (v2 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(v31) != 1 && v27 != *(v16 + 78) && ((2u >> v15) & 1) != 0)
    {
      v25 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_257CE1DFC(v27);
        swift_unknownObjectRelease();
      }

      v26 = (v8 + 8);
      MEMORY[0x259C6F970](byte_286903FD8, 1);
      v17 = sub_257ECCE30();
      v18 = [a1 cellForRowAtIndexPath_];

      if (v18)
      {
        [v18 setAccessoryType_];
      }

      v19 = *v26;
      (*v26)(v10, v7);
      MEMORY[0x259C6F970](byte_286903FD9, 1);
      v20 = sub_257ECCE30();
      v21 = [a1 cellForRowAtIndexPath_];

      if (v21)
      {
        [v21 setAccessoryType_];
      }

      v19(v10, v7);
      [v29 setAccessoryType_];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = 2.0;
        if (v27)
        {
          v22 = 6.0;
        }

        sub_257CE2594(v22);
        swift_unknownObjectRelease();
      }

      [a1 beginUpdates];
      v30 = &unk_286903FE0;
      sub_257C108DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
      sub_257C10934();
      sub_257ED0180();
      v23 = sub_257ECCDE0();
      (*(v28 + 8))(v6, v4);
      [a1 reloadSections:v23 withRowAnimation:100];

      [a1 endUpdates];
    }

    return;
  }

LABEL_23:
  v24 = v29;
}

uint64_t sub_257C108C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_257C108DC()
{
  result = qword_27F8F58A0;
  if (!qword_27F8F58A0)
  {
    sub_257ECCDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F58A0);
  }

  return result;
}

unint64_t sub_257C10934()
{
  result = qword_27F8F58B0;
  if (!qword_27F8F58B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F58B0);
  }

  return result;
}

double sub_257C10998(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_257C109C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257C10A30(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

UISceneConfiguration __swiftcall MagnifierApplicationDelegate.application(_:configurationForConnecting:options:)(UIApplication *_, UISceneSession configurationForConnecting, UISceneConnectionOptions options)
{
  v3 = [(objc_class *)configurationForConnecting.super.isa configuration];

  return v3;
}

uint64_t sub_257C10AFC()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D80);
  v0[10] = v2;
  v0[11] = *(v2 - 8);
  v0[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D88);
  v0[13] = v3;
  v0[14] = *(v3 - 8);
  v0[15] = swift_task_alloc();
  v0[16] = sub_257ECF900();
  v0[17] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();
  v0[18] = v5;
  v0[19] = v4;

  return MEMORY[0x2822009F8](sub_257C10CD8, v5, v4);
}

uint64_t sub_257C10CD8()
{
  v1 = v0[12];
  type metadata accessor for MAGThermalMonitor();
  static MAGThermalMonitor.thermalEvents()(v1);
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_257ECF970();
  (*(v3 + 8))(v2, v4);
  v5 = sub_257ECF8F0();
  v0[20] = v5;
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_257C10F64;
  v7 = v0[13];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 22, v5, v8, v7);
}

uint64_t sub_257C10F64()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_257C110A8, v3, v2);
}

uint64_t sub_257C110A8()
{
  if (*(v0 + 180) >> 1 <= 0x7EuLL)
  {
    v3 = *(v0 + 176) | (*(v0 + 180) << 32);
    if (((*(v0 + 180) << 32) & 0x8000000000) != 0)
    {
      sub_257ECD370();
      v10 = sub_257ECDA20();
      v11 = sub_257ECFC00();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *(v0 + 32) = v13;
        *v12 = 136315138;
        if ((v3 & 0x100000000) != 0)
        {
          v24 = 0xE700000000000000;
          v25 = 0x6C616E696D6F4ELL;
          v26 = 0xE500000000000000;
          v27 = 0x7976616548;
          v28 = 0x676E697070617254;
          if (v3 != 4)
          {
            v28 = 0x676E697065656C53;
          }

          if (v3 != 3)
          {
            v27 = v28;
            v26 = 0xE800000000000000;
          }

          v29 = 0xE500000000000000;
          v30 = 0x746867694CLL;
          if (v3 != 1)
          {
            v30 = 0x6574617265646F4DLL;
            v29 = 0xE800000000000000;
          }

          if (v3)
          {
            v25 = v30;
            v24 = v29;
          }

          if (v3 <= 2)
          {
            v15 = v25;
          }

          else
          {
            v15 = v27;
          }

          if (v3 <= 2)
          {
            v16 = v24;
          }

          else
          {
            v16 = v26;
          }
        }

        else
        {
          *(v0 + 16) = 0x206E776F6E6B6E55;
          *(v0 + 24) = 0xE900000000000028;
          *(v0 + 184) = v3;
          v14 = sub_257ED0600();
          MEMORY[0x259C72150](v14);

          MEMORY[0x259C72150](41, 0xE100000000000000);
          v15 = *(v0 + 16);
          v16 = *(v0 + 24);
        }

        v34 = *(v0 + 64);
        v32 = *(v0 + 40);
        v31 = *(v0 + 48);
        v33 = sub_257BF1FC8(v15, v16, (v0 + 32));

        *(v12 + 4) = v33;
        _os_log_impl(&dword_257BAC000, v10, v11, "Thermal pressure: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x259C74820](v13, -1, -1);
        MEMORY[0x259C74820](v12, -1, -1);

        (*(v31 + 8))(v34, v32);
      }

      else
      {
        v17 = *(v0 + 64);
        v18 = *(v0 + 40);
        v19 = *(v0 + 48);

        (*(v19 + 8))(v17, v18);
      }
    }

    else
    {
      sub_257ECD370();
      v4 = sub_257ECDA20();
      v5 = sub_257ECFC00();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v3;
        _os_log_impl(&dword_257BAC000, v4, v5, "Thermal level: %d", v6, 8u);
        MEMORY[0x259C74820](v6, -1, -1);
      }

      v7 = *(v0 + 72);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);

      (*(v9 + 8))(v7, v8);
    }

    v20 = sub_257ECF8F0();
    *(v0 + 160) = v20;
    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    v21[1] = sub_257C10F64;
    v22 = *(v0 + 104);
    v23 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 176, v20, v23, v22);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v1 = *(v0 + 8);

    return v1();
  }
}

UIInterfaceOrientationMask __swiftcall MagnifierApplicationDelegate.application(_:supportedInterfaceOrientationsFor:)(UIApplication *_, UIWindow_optional *supportedInterfaceOrientationsFor)
{
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89)
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

id MagnifierApplicationDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MagnifierApplicationDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MagnifierApplicationDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s16MagnifierSupport0A19ApplicationDelegateC11application_29didFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13[-v1];
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 arguments];

  v5 = sub_257ECF810();
  v15[0] = 0xD000000000000017;
  v15[1] = 0x8000000257EF9BC0;
  v14 = v15;
  LOBYTE(v4) = sub_257DF8ED4(sub_257C119FC, v13, v5);

  if (v4)
  {
    [objc_opt_self() setAnimationsEnabled_];
  }

  sub_257C11A1C();
  v6 = [swift_getObjCClassFromMetadata() appearance];
  v7 = [objc_opt_self() systemYellowColor];
  [v6 setTintColor_];

  v8 = sub_257ECF930();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_257ECF900();
  v9 = sub_257ECF8F0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  sub_257C3FBD4(0, 0, v2, &unk_257EDBB60, v10);

  return 1;
}

unint64_t sub_257C119A4()
{
  result = qword_27F8F5018;
  if (!qword_27F8F5018)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5018);
  }

  return result;
}

unint64_t sub_257C11A1C()
{
  result = qword_281543F68;
  if (!qword_281543F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543F68);
  }

  return result;
}

uint64_t sub_257C11A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257C10AFC();
}

uint64_t sub_257C11B14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_257C11C80(uint64_t a1, uint64_t *a2)
{
  v3 = sub_257ECD9C0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_257ECD9B0();
}

uint64_t sub_257C11D1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_257ECD9C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for DocumentFilter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DocumentFilter(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257C12060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_257C120A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257C12124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DE0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DE8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DF0) - 8;
  v10 = MEMORY[0x28223BE20](v52);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DF8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257EDBBA0;
  sub_257D42694();
  v17 = sub_257ECEDA0();

  *(v16 + 32) = v17;
  sub_257D42694();
  v18 = sub_257ECEDA0();

  *(v16 + 40) = v18;
  *(v16 + 48) = sub_257D42694();
  sub_257ECF0D0();
  sub_257ECF0E0();
  MEMORY[0x259C71AE0](v16);
  sub_257ECE140();
  sub_257ECF060();
  sub_257ECE080();
  LOBYTE(v17) = sub_257ECE930();
  sub_257ECDF40();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v64[0]) = 0;
  *v6 = sub_257ECE500();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E00);
  sub_257C12658(v49, &v6[*(v27 + 44)]);
  v28 = sub_257ECE930();
  v29 = &v6[*(v4 + 44)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_257ECF060();
  sub_257ECE2F0();
  v30 = v50;
  sub_257C0DD14(v6, v50, &qword_27F8F5DE0);
  v31 = (v30 + *(v8 + 44));
  v32 = v85;
  v31[4] = v84;
  v31[5] = v32;
  v31[6] = v86;
  v33 = v81;
  *v31 = v80;
  v31[1] = v33;
  v34 = v83;
  v31[2] = v82;
  v31[3] = v34;
  v35 = sub_257D42694();
  LOBYTE(v8) = sub_257ECE930();
  sub_257C0DD14(v30, v14, &qword_27F8F5DE8);
  v36 = v51;
  v37 = &v14[*(v52 + 44)];
  *v37 = v35;
  v37[8] = v8;
  sub_257C0DD14(v14, v36, &qword_27F8F5DF0);
  v38 = v53;
  sub_257BE401C(v36, v53, &qword_27F8F5DF0);
  v56 = v76;
  v57 = v77;
  v58 = v78;
  v54 = v74;
  v55 = v75;
  *&v59 = v79;
  *(&v59 + 1) = 0x4034000000000000;
  LOBYTE(v60) = 0;
  BYTE8(v60) = v17;
  *&v61 = v20;
  *(&v61 + 1) = v22;
  *&v62 = v24;
  *(&v62 + 1) = v26;
  v63 = 0;
  v40 = v60;
  v39 = v61;
  v41 = v62;
  *(a2 + 144) = 0;
  *(a2 + 112) = v39;
  *(a2 + 128) = v41;
  v42 = v55;
  *a2 = v54;
  *(a2 + 16) = v42;
  v43 = v56;
  v44 = v57;
  v45 = v58;
  *(a2 + 80) = v59;
  *(a2 + 96) = v40;
  *(a2 + 48) = v44;
  *(a2 + 64) = v45;
  *(a2 + 32) = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E08);
  sub_257BE401C(v38, a2 + *(v46 + 48), &qword_27F8F5DF0);
  sub_257BE401C(&v54, v64, &qword_27F8F5E10);
  sub_257BE4084(v36, &qword_27F8F5DF0);
  sub_257BE4084(v38, &qword_27F8F5DF0);
  v64[2] = v76;
  v64[3] = v77;
  v64[4] = v78;
  v64[0] = v74;
  v64[1] = v75;
  v65 = v79;
  v66 = 0x4034000000000000;
  v67 = 0;
  v68 = v17;
  v69 = v20;
  v70 = v22;
  v71 = v24;
  v72 = v26;
  v73 = 0;
  return sub_257BE4084(v64, &qword_27F8F5E10);
}

uint64_t sub_257C12658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E18);
  v3 = MEMORY[0x28223BE20](v104);
  v106 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v102 = &v95 - v5;
  v6 = *(a1 + 16);
  v224 = *a1;
  v225[0] = v6;
  v7 = *(&v6 + 1);
  v8 = *(&v224 + 1);
  sub_257ECC3F0();
  sub_257ECC3F0();
  KeyPath = swift_getKeyPath();
  sub_257BE401C(v225, &v200, &qword_27F8F5E20);
  sub_257BE401C(&v224, &v200, &qword_27F8F5E28);
  sub_257BE401C(v225, &v200, &qword_27F8F5E20);
  sub_257BE401C(&v224, &v200, &qword_27F8F5E28);
  sub_257BE401C(v225, &v200, &qword_27F8F5E20);
  sub_257BE401C(&v224, &v200, &qword_27F8F5E28);
  sub_257BE401C(v225, &v200, &qword_27F8F5E20);
  v9 = v8;
  sub_257BE401C(&v224, &v200, &qword_27F8F5E28);
  v10 = type metadata accessor for MFReaderSpeechFormatterModel(0);
  v11 = sub_257C13394(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel);
  v110 = sub_257ECE150();
  v142 = v12;
  v13 = type metadata accessor for MFReaderTextFormatterModel(0);
  v143 = sub_257C13394(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  v14 = sub_257ECE150();
  v140 = v15;
  v141 = v14;
  type metadata accessor for MFReaderBlockManager();
  sub_257C13394(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  v16 = sub_257ECE330();
  v138 = v17;
  v139 = v16;
  v107 = a1;
  v18 = *(a1 + 32);
  if (v18)
  {
    v220 = 0;
    v105 = v18;
    v145 = v18;
    v137 = sub_257ECDCE0();
    v135 = v220;
    v136 = sub_257ECE960();
    sub_257ECDF40();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v222 = 0;
    LOBYTE(v146) = 0;
    sub_257ECEE50();
    v133 = v200;
    v134 = v201;
    v27 = sub_257ECE150();
    v131 = v28;
    v132 = v27;
    v29 = sub_257ECE150();
    v129 = v30;
    v130 = v29;
    v31 = sub_257ECE330();
    v127 = v32;
    v128 = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    v144 = v9;
    sub_257ECDD60();

    v33 = v200 < 1;
    v126 = swift_getKeyPath();
    v125 = swift_allocObject();
    *(v125 + 16) = v33;
    v124 = sub_257ECDCE0();
    v34 = sub_257ECE150();
    v122 = v35;
    v123 = v34;
    v36 = sub_257ECE150();
    v120 = v37;
    v121 = v36;
    v38 = sub_257ECE330();
    v118 = v39;
    v119 = v38;
    v117 = sub_257ECDCE0();
    LOBYTE(v146) = 1;
    sub_257ECEE50();
    v114 = v200;
    v115 = v201;
    v103 = v7;
    v98 = v11;
    v99 = v10;
    v113 = sub_257ECE150();
    v101 = v40;
    v97 = v13;
    v41 = sub_257ECE150();
    v100 = v42;
    v43 = sub_257ECE330();
    v111 = v44;
    v112 = v43;
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v145;
    sub_257ECDD60();

    v46 = v200;
    v47 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v48 = *&v45[v47];

    if (v48 >> 62)
    {
      v49 = sub_257ED0210();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v49, 1))
    {
      v145 = swift_getKeyPath();
      v109 = swift_allocObject();
      *(v109 + 16) = v46 >= v49 - 1;
      v108 = sub_257ECDCE0();
      v146 = *(v107 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
      sub_257ECEE80();
      v50 = v200;
      v51 = v201;
      v52 = v202;
      v53 = swift_getKeyPath();
      v54 = type metadata accessor for MFReaderTextFormatterView();
      v55 = v54[8];
      v107 = v41;
      v56 = v102;
      *&v102[v55] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
      swift_storeEnumTagMultiPayload();
      *v56 = sub_257ECE150();
      *(v56 + 8) = v57;
      *(v56 + 16) = sub_257ECE150();
      *(v56 + 24) = v58;
      *(v56 + 32) = v50;
      *(v56 + 40) = v51;
      *(v56 + 48) = v52;
      *(v56 + 56) = sub_257ECE330();
      *(v56 + 64) = v59;
      v60 = v56 + v54[9];
      LOBYTE(v146) = 0;
      sub_257ECEE50();
      v61 = v201;
      *v60 = v200;
      *(v60 + 8) = v61;
      v62 = v56 + v54[10];
      LOBYTE(v146) = 0;
      sub_257ECEE50();
      v63 = v201;
      *v62 = v200;
      *(v62 + 8) = v63;
      v64 = sub_257ECDCE0();
      v65 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E40) + 36));
      v66 = v105;
      *v65 = v64;
      v65[1] = v66;
      LOBYTE(v64) = sub_257ECE980();
      sub_257ECDF40();
      v67 = v56 + *(v104 + 36);
      *v67 = v64;
      *(v67 + 8) = v68;
      *(v67 + 16) = v69;
      *(v67 + 24) = v70;
      *(v67 + 32) = v71;
      *(v67 + 40) = 0;
      v72 = v106;
      sub_257BE401C(v56, v106, &qword_27F8F5E18);
      *&v146 = v110;
      *(&v146 + 1) = v142;
      *&v147 = v141;
      *(&v147 + 1) = v140;
      *&v148 = v139;
      *(&v148 + 1) = v138;
      *&v149 = KeyPath;
      BYTE8(v149) = v135;
      HIDWORD(v149) = *&v221[3];
      *(&v149 + 9) = *v221;
      *&v150 = v137;
      *(&v150 + 1) = v66;
      LOBYTE(v151) = v136;
      DWORD1(v151) = *&v223[3];
      *(&v151 + 1) = *v223;
      *(&v151 + 1) = v20;
      *&v152[0] = v22;
      *(&v152[0] + 1) = v24;
      *&v152[1] = v26;
      BYTE8(v152[1]) = 0;
      v73 = v146;
      v74 = v147;
      v75 = v149;
      v76 = v96;
      *(v96 + 32) = v148;
      *(v76 + 48) = v75;
      *v76 = v73;
      *(v76 + 16) = v74;
      v77 = v150;
      v78 = v151;
      v79 = v152[0];
      *(v76 + 105) = *(v152 + 9);
      *(v76 + 80) = v78;
      *(v76 + 96) = v79;
      *(v76 + 64) = v77;
      *(v76 + 128) = 0;
      *(v76 + 136) = 1;
      LOBYTE(v153) = v133;
      DWORD1(v153) = *&v219[3];
      *(&v153 + 1) = *v219;
      *(&v153 + 1) = v134;
      *&v154 = v132;
      *(&v154 + 1) = v131;
      *&v155 = v130;
      *(&v155 + 1) = v129;
      *&v156 = v128;
      *(&v156 + 1) = v127;
      *&v157 = v126;
      v144 = sub_257C133DC;
      *(&v157 + 1) = sub_257C133DC;
      *&v158 = v125;
      *(&v158 + 1) = v124;
      v159 = v66;
      v80 = v154;
      *(v76 + 144) = v153;
      *(v76 + 160) = v80;
      v81 = v155;
      v82 = v156;
      v83 = v158;
      *(v76 + 208) = v157;
      *(v76 + 224) = v83;
      *(v76 + 176) = v81;
      *(v76 + 192) = v82;
      *(v76 + 240) = v66;
      *(v76 + 248) = 0;
      *(v76 + 256) = 1;
      *&v160 = v123;
      *(&v160 + 1) = v122;
      *&v161 = v121;
      *(&v161 + 1) = v120;
      *&v162 = v119;
      *(&v162 + 1) = v118;
      *&v163 = v117;
      *(&v163 + 1) = v66;
      v84 = v160;
      v85 = v161;
      v86 = v163;
      *(v76 + 296) = v162;
      *(v76 + 312) = v86;
      *(v76 + 264) = v84;
      *(v76 + 280) = v85;
      *(v76 + 328) = 0;
      *(v76 + 336) = 1;
      LOBYTE(v164) = v114;
      DWORD1(v164) = *&v218[3];
      *(&v164 + 1) = *v218;
      *(&v164 + 1) = v115;
      *&v165 = v113;
      v88 = v100;
      v87 = v101;
      *(&v165 + 1) = v101;
      *&v166 = v107;
      *(&v166 + 1) = v100;
      *&v167 = v112;
      *(&v167 + 1) = v111;
      *&v168 = v145;
      *(&v168 + 1) = sub_257C13448;
      *&v169 = v109;
      *(&v169 + 1) = v108;
      v89 = v165;
      *(v76 + 344) = v164;
      *(v76 + 360) = v89;
      v90 = v166;
      v91 = v167;
      v92 = v169;
      *(v76 + 408) = v168;
      *(v76 + 424) = v92;
      *(v76 + 376) = v90;
      *(v76 + 392) = v91;
      *(v76 + 456) = 1;
      v170 = v66;
      *(v76 + 440) = v66;
      *(v76 + 448) = 0;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E48);
      sub_257BE401C(v72, v76 + *(v93 + 160), &qword_27F8F5E18);
      sub_257BE401C(&v146, &v200, &qword_27F8F5E50);
      sub_257BE401C(&v153, &v200, &qword_27F8F5E58);
      sub_257BE401C(&v160, &v200, &qword_27F8F5E60);
      sub_257BE401C(&v164, &v200, &qword_27F8F5E58);
      sub_257BE4084(v56, &qword_27F8F5E18);
      sub_257BE4084(v72, &qword_27F8F5E18);
      v171 = v114;
      *v172 = *v218;
      *&v172[3] = *&v218[3];
      v173 = v115;
      v174 = v113;
      v175 = v87;
      v176 = v107;
      v177 = v88;
      v178 = v112;
      v179 = v111;
      v180 = v145;
      v181 = sub_257C13448;
      v182 = v109;
      v183 = v108;
      v184 = v66;
      sub_257BE4084(&v171, &qword_27F8F5E58);
      v185[0] = v123;
      v185[1] = v122;
      v185[2] = v121;
      v185[3] = v120;
      v185[4] = v119;
      v185[5] = v118;
      v185[6] = v117;
      v185[7] = v66;
      sub_257BE4084(v185, &qword_27F8F5E60);
      v186 = v133;
      *v187 = *v219;
      *&v187[3] = *&v219[3];
      v188 = v134;
      v189 = v132;
      v190 = v131;
      v191 = v130;
      v192 = v129;
      v193 = v128;
      v194 = v127;
      v195 = v126;
      v196 = v144;
      v197 = v125;
      v198 = v124;
      v199 = v66;
      sub_257BE4084(&v186, &qword_27F8F5E58);
      v200 = v110;
      v201 = v142;
      v202 = v141;
      v203 = v140;
      v204 = v139;
      v205 = v138;
      v206 = KeyPath;
      v207 = v135;
      *v208 = *v221;
      *&v208[3] = *&v221[3];
      v209 = v137;
      v210 = v66;
      v211 = v136;
      *v212 = *v223;
      *&v212[3] = *&v223[3];
      v213 = v20;
      v214 = v22;
      v215 = v24;
      v216 = v26;
      v217 = 0;
      return sub_257BE4084(&v200, &qword_27F8F5E50);
    }

    __break(1u);
  }

  result = sub_257ECE320();
  __break(1u);
  return result;
}

uint64_t sub_257C13328@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_257ECE5B0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DD8);
  return sub_257C12124(v7, a1 + *(v5 + 44));
}

uint64_t sub_257C13394(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257C133E4()
{
  result = qword_27F8F5E68;
  if (!qword_27F8F5E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5E68);
  }

  return result;
}

uint64_t sub_257C1344C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v5)
  {
    v6 = [v5 scene];
    if (v6)
    {
      v7 = v6;
      sub_257C416F0(v6);
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v26 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_257ECF4C0();
    v11 = sub_257ECF4C0();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = v12;
    if (!v12)
    {
      sub_257ECF500();
      v13 = sub_257ECF4C0();
    }

    v26 = sub_257ECF500();
    v27 = v14;
    sub_257BDAB08();
    v15 = sub_257ED0100();
    v17 = v16;

    v18 = sub_257E003E8();
    v19 = sub_257DFF054();
    v20 = sub_257EB1BE0();

    sub_257DFD370(v15, v17, v18, v20);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
  }

  v21 = qword_281548350 + 64;
  swift_beginAccess();
  v25 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v22 = sub_257ECF110();
  MEMORY[0x28223BE20](v22);
  *&v24[-16] = &v25;
  *&v24[-8] = v21;
  sub_257ECFD40();
  (*(v2 + 8))(v4, v1);
  return swift_endAccess();
}

id sub_257C13834()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257DFF054();
  result = [v8 view];
  if (result)
  {
    v10 = result;
    [result alpha];
    v12 = v11;

    if (v12 == 0.0)
    {
      v27[1] = v2;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v15 = sub_257ECF4C0();
      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v18 = v17;
      if (!v17)
      {
        sub_257ECF500();
        v18 = sub_257ECF4C0();
      }

      v28 = sub_257ECF500();
      v29 = v19;
      sub_257BDAB08();
      v20 = sub_257ED0100();
      v22 = v21;

      v23 = sub_257E003E8();
      v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
      v25 = sub_257EB1BE0();

      sub_257DFD370(v20, v22, v23, v25);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v4, &v7[v5[5]]);
    v7[v5[6]] = 1;
    v7[v5[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v26 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
    *&v7[v5[8]] = v26;
    sub_257CBBC80(v7);
    sub_257C15F24(v7, type metadata accessor for MAGOutputEvent);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v28 == 1)
    {
      sub_257D1A130();
    }

    return sub_257C41F04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257C13C38(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService);
  v8 = *&v7[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession];
  if (v8)
  {
    [v8 updateWithFrame_];
  }

  v9 = sub_257ECF930();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = [a2 camera];
  [v10 transform];
  v24 = v12;
  v25 = v11;
  v22 = v14;
  v23 = v13;

  sub_257ECF900();
  v15 = v7;
  v16 = sub_257ECF8F0();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  v19 = v24;
  *(v17 + 48) = v25;
  *(v17 + 64) = v19;
  v20 = v22;
  *(v17 + 80) = v23;
  *(v17 + 96) = v20;
  sub_257C3FBD4(0, 0, v6, &unk_257EDBE30, v17);
}

uint64_t sub_257C13DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_257ECDA30();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C13E98, 0, 0);
}

uint64_t sub_257C13E98()
{
  *(v0 + 144) = sub_257ECF900();
  *(v0 + 152) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C13F30, v2, v1);
}

uint64_t sub_257C13F30()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView);
  *(v0 + 160) = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_257C13FB8, 0, 0);
}

uint64_t sub_257C13FB8()
{
  if (v0[20])
  {
    v0[21] = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService;
    v0[22] = sub_257ECF8F0();
    v2 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C14094, v2, v1);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_257C14094()
{
  v1 = v0[21];
  v2 = v0[14];

  v0[23] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_257C14108, 0, 0);
}

uint64_t sub_257C14108()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 currentFrame], (*(v0 + 192) = v4) != 0))
  {
    *(v0 + 200) = sub_257ECF8F0();
    v6 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C1421C, v6, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_257C1421C()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  *(v0 + 208) = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_257C142A4, 0, 0);
}

uint64_t sub_257C142A4()
{
  if (*(v0 + 208))
  {
    *(v0 + 216) = sub_257ECF8F0();
    v2 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C14380, v2, v1);
  }

  else
  {
    v3 = *(v0 + 160);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_257C14380()
{
  v1 = *(v0 + 208);

  *(v0 + 224) = [v1 pointOfView];

  return MEMORY[0x2822009F8](sub_257C14408, 0, 0);
}

uint64_t sub_257C14408()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    [*(v0 + 224) simdPosition];
    *(v0 + 24) = v2;
    *(v0 + 16) = v3;

    *(v0 + 232) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService;
    *(v0 + 240) = sub_257ECF8F0();
    v5 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C14514, v5, v4);
  }

  else
  {
    v6 = *(v0 + 160);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_257C14514()
{
  v1 = v0[29];
  v2 = v0[14];

  v0[31] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_257C14588, 0, 0);
}

uint64_t sub_257C14588()
{
  v1 = *(v0 + 248) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject;
  if (*v1)
  {
    v16 = *(v1 + 16);
    v15 = *(v1 + 32);
    v14 = *(v1 + 48);
    v13 = *(v1 + 64);
    v2 = *v1;
    [v2 transform];
    v12 = v3;

    v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v12.f32[0]), v15, *v12.f32, 1), v14, v12, 2), v13, v12, 3);
    *(v0 + 32) = v4;
    v4.i32[3] = 0;
    *(v0 + 48) = v4;
    *(v0 + 256) = sub_257ECF8F0();
    v5 = sub_257ECF8B0();
    v7 = v6;
    v8 = sub_257C14708;
  }

  else
  {
    v9 = *(MEMORY[0x277CBF398] + 16);
    *(v0 + 368) = *MEMORY[0x277CBF398];
    *(v0 + 384) = v9;
    *(v0 + 400) = sub_257ECF8F0();
    v5 = sub_257ECF8B0();
    v7 = v10;
    v8 = sub_257C1517C;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_257C14708()
{

  return MEMORY[0x2822009F8](sub_257C14770, 0, 0);
}

uint64_t sub_257C14770()
{
  v1 = *(*(v0 + 248) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  if (v1 && (v2 = [v1 rootNode]) != 0 && (v3 = v2, v15 = *(v0 + 48), v4 = *(v0 + 248), v5 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode, swift_beginAccess(), v6 = *(v4 + v5), objc_msgSend(v3, sel_simdConvertPosition_toNode_, v6, *&v15), DWORD2(v15) = v7, v3, v6, *(&v15 + 2) < 0.0))
  {
    *(v0 + 264) = sub_257ECF8F0();
    v8 = sub_257ECF8B0();
    v10 = v9;
    v11 = sub_257C148F0;
  }

  else
  {
    v12 = *(MEMORY[0x277CBF398] + 16);
    *(v0 + 368) = *MEMORY[0x277CBF398];
    *(v0 + 384) = v12;
    *(v0 + 400) = sub_257ECF8F0();
    v8 = sub_257ECF8B0();
    v10 = v13;
    v11 = sub_257C1517C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_257C148F0()
{
  v1 = *(v0 + 112);

  *(v0 + 272) = [v1 view];

  return MEMORY[0x2822009F8](sub_257C14978, 0, 0);
}

uint64_t sub_257C14978(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 272))
  {
    *(v3 + 280) = sub_257ECF8F0();
    v4 = sub_257ECF8B0();
    v6 = v5;
    a1 = sub_257C14A10;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C14A10()
{
  v1 = *(v0 + 272);

  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 288) = v5;

  return MEMORY[0x2822009F8](sub_257C14AE4, 0, 0);
}

uint64_t sub_257C14AE4()
{
  v1 = *(v0 + 192);
  IsLandscape = UIInterfaceOrientationIsLandscape(*(v0 + 288));
  v3 = [v1 capturedImage];
  v4 = v3;
  if (IsLandscape)
  {
    Width = CVPixelBufferGetWidth(v3);
  }

  else
  {
    Width = CVPixelBufferGetHeight(v3);
  }

  v6 = Width;
  *(v0 + 296) = Width;
  v7 = *(v0 + 288);
  v8 = *(v0 + 192);

  LODWORD(v7) = UIInterfaceOrientationIsLandscape(v7);
  v9 = [v8 capturedImage];
  v10 = v9;
  if (v7)
  {
    Height = CVPixelBufferGetHeight(v9);
  }

  else
  {
    Height = CVPixelBufferGetWidth(v9);
  }

  v12 = Height;
  *(v0 + 304) = Height;
  v13 = *(v0 + 288);
  v24 = *(v0 + 48);
  v14 = *(v0 + 192);

  v15 = v6;
  v16 = [v14 camera];
  [v16 projectPoint:v13 orientation:*&v24 viewportSize:{v15, v12}];
  v18 = v17;
  v20 = v19;

  *(v0 + 312) = v18;
  *(v0 + 320) = v20;
  *(v0 + 328) = sub_257ECF8F0();
  v22 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C14C80, v22, v21);
}

uint64_t sub_257C14C80()
{
  v1 = *(v0 + 112);

  *(v0 + 336) = [v1 view];

  return MEMORY[0x2822009F8](sub_257C14D08, 0, 0);
}

uint64_t sub_257C14D08(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 336))
  {
    *(v3 + 344) = sub_257ECF8F0();
    v4 = sub_257ECF8B0();
    v6 = v5;
    a1 = sub_257C14DA0;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C14DA0()
{
  v1 = *(v0 + 336);

  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 352) = v5;

  return MEMORY[0x2822009F8](sub_257C14E74, 0, 0);
}

uint64_t sub_257C14E74(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = vsubq_f32(v3[1], v3[2]);
  v6 = vmulq_f32(v5, v5);
  v6.f32[0] = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v3[27].i32[2] = v6.i32[0];
  v7 = v6.f32[0] * 1000.0;
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 2147500000.0)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3[22].i64[1] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v10 = v9;
  a1 = sub_257C14F6C;
  a2 = v8;
  a3 = v10;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C14F6C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);

  *(v0 + 444) = sub_257DE711C(v2, (v1 * 1000.0), v3 / v5, (v6 - v4) / v6, 0.001, 0.001) & 1;

  return MEMORY[0x2822009F8](sub_257C1503C, 0, 0);
}

uint64_t sub_257C1503C()
{
  if (*(v0 + 444) == 1)
  {
    v1 = *(v0 + 160);
  }

  else
  {
    sub_257ECD4A0();
    v2 = sub_257ECDA20();
    v3 = sub_257ECFBE0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 192);
    v6 = *(v0 + 160);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 120);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_257BAC000, v2, v3, "Unable to update OU interface", v10, 2u);
      MEMORY[0x259C74820](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_257C1517C()
{
  v1 = *(v0 + 112);

  *(v0 + 408) = [v1 view];

  return MEMORY[0x2822009F8](sub_257C15204, 0, 0);
}

uint64_t sub_257C15204(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 408))
  {
    *(v3 + 416) = sub_257ECF8F0();
    v4 = sub_257ECF8B0();
    v6 = v5;
    a1 = sub_257C1529C;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C1529C()
{
  v1 = *(v0 + 408);

  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 424) = v5;

  return MEMORY[0x2822009F8](sub_257C15370, 0, 0);
}

uint64_t sub_257C15370()
{
  *(v0 + 432) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C153FC, v2, v1);
}

uint64_t sub_257C153FC()
{
  v1 = *(v0 + 53);
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];

  sub_257DE711C(v1, 0, v5, v4, v3, v2);

  return MEMORY[0x2822009F8](sub_257C1549C, 0, 0);
}

uint64_t sub_257C1549C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_257C1550C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService);
  v4 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService);
  v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = [v6 currentFrame];
    if (v7)
    {
      v8 = v7;
      v9 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession);
      if (v9)
      {
        v10 = v9;

        if (a2 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78);
          sub_257ED0420();
        }

        else
        {
          sub_257ED0660();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78);
        v11 = sub_257ECF7F0();

        [v10 updateWithKeyframes:v11 ouframe:v8];
      }
    }
  }
}

id sub_257C1566C()
{
  v1 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    result = [result pointOfView];
    if (result)
    {
      v8 = result;
      [result simdPosition];
      v12 = v9;

      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      v10 = v12;
      *(v3 + 4) = 0u;
      *(v3 + 5) = v10;
      *(v3 + 12) = 0;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      sub_257C15EC0(v3, &v6[v4[5]]);
      v6[v4[6]] = 1;
      v6[v4[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v11 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v3, type metadata accessor for MAGOutputEvent.EventType);
      *&v6[v4[8]] = v11;
      sub_257CBBC80(v6);
      return sub_257C15F24(v6, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

id sub_257C15868(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    v12 = *a1;
    v13 = *(a1 + 16);
    v24 = *(a1 + 32);
    v25 = v13;
    v14 = *(a1 + 48);
    v22 = *(a1 + 64);
    v23 = v14;
    result = [result pointOfView];
    if (result)
    {
      v15 = result;
      [result simdPosition];
      v21 = v16;

      *v7 = v12;
      v17 = v24;
      *(v7 + 1) = v25;
      *(v7 + 2) = v17;
      v18 = v22;
      *(v7 + 3) = v23;
      *(v7 + 4) = v18;
      *(v7 + 5) = v21;
      *(v7 + 12) = a2;
      swift_storeEnumTagMultiPayload();
      v19 = v12;

      sub_257ECCCE0();
      sub_257C15EC0(v7, &v10[v8[5]]);
      v10[v8[6]] = 1;
      v10[v8[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v20 = qword_281548348;
      sub_257ECC3F0();

      sub_257C15F24(v7, type metadata accessor for MAGOutputEvent.EventType);
      *&v10[v8[8]] = v20;
      sub_257CBBC80(v10);
      return sub_257C15F24(v10, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

id sub_257C15AA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    result = [result pointOfView];
    if (result)
    {
      v12 = result;
      [result simdPosition];
      v15 = v13;

      *v7 = a1;
      *(v7 + 1) = v15;
      *(v7 + 4) = a2;
      swift_storeEnumTagMultiPayload();

      sub_257ECCCE0();
      sub_257C15EC0(v7, &v10[v8[5]]);
      v10[v8[6]] = 1;
      v10[v8[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v14 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v7, type metadata accessor for MAGOutputEvent.EventType);
      *&v10[v8[8]] = v14;
      sub_257CBBC80(v10);
      return sub_257C15F24(v10, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

id sub_257C15CBC(uint64_t a1)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    result = [result pointOfView];
    if (result)
    {
      v10 = result;
      [result simdPosition];
      v13 = v11;

      *v5 = a1;
      *(v5 + 1) = v13;
      swift_storeEnumTagMultiPayload();

      sub_257ECCCE0();
      sub_257C15EC0(v5, &v8[v6[5]]);
      v8[v6[6]] = 1;
      v8[v6[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v12 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v5, type metadata accessor for MAGOutputEvent.EventType);
      *&v8[v6[8]] = v12;
      sub_257CBBC80(v8);
      return sub_257C15F24(v8, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

uint64_t sub_257C15EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C15F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C15F84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v23 - v4;
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECF190();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService] + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_257C1630C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = v1;
  v17 = a1;
  sub_257ECF150();
  v26 = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v24);

  v18 = sub_257ECF930();
  v19 = v25;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v21 = v16;
  sub_257C40DD4(0, 0, v19, &unk_257EDBE28, v20);

  return sub_257C163E0(v19);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C1632C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257C13DD8(a1, v4, v5, v6);
}

uint64_t sub_257C163E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257C16448(uint64_t a1)
{
  v4 = v1[1].n128_i64[0];
  v5 = v1[1].n128_i64[1];
  v6 = v1[2].n128_u64[0];
  v11 = v1[4];
  v12 = v1[3];
  v9 = v1[6];
  v10 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C42754(v12, v11, v10, v9, a1, v4, v5, v6);
}

uint64_t sub_257C1651C(uint64_t a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService] + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_257C167B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;

  sub_257ECF150();
  v17[1] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

double sub_257C167CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  [v1 contentOffset];
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8);
  v6 = v5[3](v4, v5);
  sub_257C16BB4();
  v8 = v7;
  v9 = v5[6](v4, v5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = v5[7](v4, v5);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  v11 = v3 + (v6 + v10) * 0.5;
  [v1 frame];
  [v1 contentOffset];
  return v11;
}

uint64_t sub_257C168F0()
{
  v1 = sub_257ECF120();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v7 = sub_257ECFD30();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_257C1C6EC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_50;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_257C16BB4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    sub_257ED0210();
    goto LABEL_5;
  }

  result = sub_257ED0210();
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 < 1)
  {
    return result;
  }

  [v0 bounds];
  if (*&v0[v1] >> 62)
  {
    goto LABEL_12;
  }

LABEL_5:
  (*(*&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8] + 24))();
  v5 = *&v0[v1];
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFSUB__(result, 1))
    {
      return result;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_257ED0210();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

  return result;
}

double sub_257C16D0C()
{
  v4 = v0;
  [v0 bounds];
  v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v7 = *&v0[v5];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_257ED0210();
  v9 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_257C16BB4();
  v2 = v10;
  v0 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config];
  v1 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8];
  v3 = (*(v1 + 48))(*&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config], v1);
  (*(v1 + 56))(v0, v1);
  v11 = *&v4[v5];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_14:
  v16 = v6;
  v12 = sub_257ED0210();
  v6 = v16;
LABEL_5:
  if (v2 > v3)
  {
    v13 = v2;
  }

  else
  {
    v13 = v3;
  }

  if (v6 >= v13)
  {
    v6 = v13;
  }

  return v6 * v9 + (*(v1 + 24))(v0, v1) * v12;
}

id sub_257C16E88()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox);
  }

  else
  {
    v4 = sub_257C16EE8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257C16EE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 layer];
  if (qword_281544A88 != -1)
  {
    swift_once();
  }

  [v2 setCornerCurve_];

  v3 = [v0 layer];
  [v3 setBorderWidth_];

  v4 = [v0 layer];
  v5 = [objc_opt_self() systemWhiteColor];
  v6 = [v5 CGColor];

  [v4 setBorderColor_];
  [v0 setUserInteractionEnabled_];
  return v0;
}

id sub_257C17080(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config];
  *v10 = &type metadata for LayoutConstants.FilterRow;
  v10[1] = &off_28690ABD0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_shouldHighlight] = 0;
  v12 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_subscribers] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons] = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_feedbackGenerator;
  v14 = [objc_opt_self() lightConfiguration];
  v15 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration_];

  [v15 _setOutputMode_];
  *&v4[v13] = v15;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___activeItemIndicator] = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  sub_257C1732C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  sub_257C174FC(v21);

  sub_257C17AC8();
  sub_257C17DC8();
  return v18;
}

void sub_257C1732C()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView];
  [v1 setClipsToBounds_];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView];
  [v2 setClipsToBounds_];
  [v2 setContentInsetAdjustmentBehavior_];
  [v2 setShowsHorizontalScrollIndicator_];
  [v2 setShowsVerticalScrollIndicator_];
  [v2 setDecelerationRate_];
  [v2 setDelegate_];
  [v2 setBounces_];
  [v2 setBouncesVertically_];
  [v2 setBouncesHorizontally_];
  [v2 setAlwaysBounceHorizontal_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didTapScrollView_];
  [v3 setNumberOfTapsRequired_];
  [v2 addGestureRecognizer_];
  [v0 addSubview_];
  [v1 addSubview_];
  v4 = sub_257C16E88();
  [v0 addSubview_];
}

void sub_257C174FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_257ECCB70();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - v13;
  v14 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v39 = a1;
  v40 = v1;
  v15 = *(v1 + v14);
  v36 = v12;
  v34 = v9;
  if (v15 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x259C72E20](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 removeFromSuperview];

      ++v17;
      if (v20 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_12:

  v21 = MEMORY[0x277D84F90];
  *(v40 + v14) = MEMORY[0x277D84F90];

  sub_257C168F0();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v22 = v39;
  if (v43 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD60();

    v24 = v37;
    v23 = v38;
    if ((*(v37 + 48))(v5, 1, v38) != 1)
    {
      v26 = v35;
      (*(v24 + 32))(v35, v5, v23);
      goto LABEL_23;
    }

    sub_257C1C684(v5);
    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    v25 = sub_257C73204();
    v26 = v36;
    if (v25[2])
    {
      v27 = v34;
      (*(v24 + 16))(v34, v25 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);

      (*(v24 + 32))(v26, v27, v23);
LABEL_23:
      if (qword_27F8F46E0 != -1)
      {
        swift_once();
      }

      v28 = sub_257C76CCC(v26);
      (*(v24 + 8))(v26, v23);
LABEL_26:
      v29 = v28;
      v30 = *(v22 + 16);
      if (v30)
      {
        goto LABEL_27;
      }

LABEL_32:

      v33 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v43 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v28 = v43;
      goto LABEL_26;
    }
  }

  v28 = 0;
  v30 = *(v22 + 16);
  if (!v30)
  {
    goto LABEL_32;
  }

LABEL_27:
  v43 = v21;
  sub_257ED0360();
  v31 = (v22 + 32);
  do
  {
    v32 = *v31++;
    v41 = v32;
    sub_257C19C34(&v41, v28, &v42);
    sub_257ED0330();
    sub_257ED0370();
    sub_257ED0380();
    sub_257ED0340();
    --v30;
  }

  while (v30);

  v33 = v43;
LABEL_33:
  sub_257C19F34(v33);
}

void sub_257C17AC8()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_257C16E88();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_257EB6FD8(v1, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v3 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox;
  v4 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox] leftAnchor];
  v5 = [v1 leftAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:76.0];

  v7 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint;
  v8 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257EDBE40;
  v10 = *&v1[v7];
  if (v10)
  {
    v11 = v9;
    v24 = objc_opt_self();
    v11[4] = v10;
    v12 = *&v1[v3];
    v13 = v10;
    v14 = [v12 centerYAnchor];
    v15 = [v1 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    v11[5] = v16;
    v17 = [*&v1[v3] widthAnchor];
    v18 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config];
    v19 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8];
    v20 = *(v19 + 24);
    v21 = [v17 constraintEqualToConstant_];

    v11[6] = v21;
    v22 = [*&v1[v3] heightAnchor];
    v23 = [v22 constraintEqualToConstant_];

    v11[7] = v23;
    sub_257BD2C2C(0, &qword_281543EF0);
    v25 = sub_257ECF7F0();

    [v24 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257C17DC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  v63 = *(v0 - 8);
  v64 = v0;
  MEMORY[0x28223BE20](v0);
  v62 = &v40 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5ED0);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v40 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5ED8);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5EE0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v40 - v6;
  v7 = sub_257ECF130();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFD10();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9800);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v40 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5EF0);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v40 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5EF8);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v19 = &v40 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F00);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F08);
  v51 = *(v22 - 8);
  v52 = v22;
  MEMORY[0x28223BE20](v22);
  v44 = &v40 - v23;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C0], v7);
  v24 = sub_257ECFD90();
  (*(v8 + 8))(v10, v7);
  v65 = v24;
  sub_257BD2D4C(&qword_2815441A0, &qword_27F8F9800);
  sub_257BE416C();
  v25 = v42;
  sub_257ECDE00();

  (*(v49 + 8))(v13, v50);
  (*(v40 + 8))(v15, v25);
  sub_257BD2D4C(&unk_2815442E0, &qword_27F8F5EF0);
  v26 = v43;
  sub_257ECDDE0();
  (*(v41 + 8))(v17, v26);
  sub_257ECCB70();
  sub_257BD2D4C(&qword_281544318, &qword_27F8F5EF8);
  v27 = v48;
  sub_257ECDDA0();
  (*(v46 + 8))(v19, v27);
  sub_257BD2C2C(0, &qword_281543DF0);
  v28 = v44;
  v29 = v47;
  sub_257ECDC70();
  (*(v45 + 8))(v21, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544458, &qword_27F8F5F08);
  v30 = v52;
  sub_257ECDE50();

  (*(v51 + 8))(v28, v30);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  v31 = v53;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544118, &qword_27F8F5ED8);
  v33 = v55;
  v32 = v56;
  sub_257ECDDE0();
  (*(v54 + 8))(v31, v32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544330, &unk_27F8F5EE0);
  v34 = v58;
  sub_257ECDE50();

  (*(v57 + 8))(v33, v34);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F28);
  v35 = v59;
  sub_257ECDD30();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544150, &qword_27F8F5ED0);
  v36 = v61;
  sub_257ECDE50();

  (*(v60 + 8))(v35, v36);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  v37 = v62;
  sub_257ECDD30();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
  v38 = v64;
  sub_257ECDE50();

  (*(v63 + 8))(v37, v38);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();
}

uint64_t sub_257C18BAC()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

_BYTE *sub_257C18C60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_27F8F46E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = sub_257C76CCC(a1);
  *a2 = result;
  return result;
}

void sub_257C18CCC(void **a1)
{
  v33 = sub_257ECF120();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_257ECF190();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
    swift_beginAccess();
    v9 = *&v7[v8];
    v24 = v7;
    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
    {

      if (!i)
      {
        break;
      }

      v11 = 0;
      v30 = v9 & 0xC000000000000001;
      v29 = v9 & 0xFFFFFFFFFFFFFF8;
      v27 = v38;
      v26 = (v2 + 8);
      v25 = (v4 + 8);
      v28 = i;
      while (1)
      {
        if (v30)
        {
          v12 = MEMORY[0x259C72E20](v11, v9);
        }

        else
        {
          if (v11 >= *(v29 + 16))
          {
            goto LABEL_16;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_257BD2C2C(0, &qword_281543F10);
        v4 = sub_257ECFD30();
        v15 = swift_allocObject();
        v16 = v9;
        v17 = v34;
        v15[2] = v13;
        v15[3] = v17;
        v15[4] = v11;
        v38[2] = sub_257C1C608;
        v38[3] = v15;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v38[0] = sub_257D231C0;
        v38[1] = &block_descriptor_32;
        v18 = _Block_copy(aBlock);
        v36 = v13;
        v19 = v17;

        v20 = v31;
        sub_257ECF150();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
        v22 = v32;
        v21 = v33;
        v9 = v16;
        v23 = v28;
        sub_257ED0180();
        v2 = v4;
        MEMORY[0x259C72880](0, v20, v22, v18);
        _Block_release(v18);

        (*v26)(v22, v21);
        (*v25)(v20, v35);

        ++v11;
        if (v14 == v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_13:
  }
}

void sub_257C19124(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView) setImage_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = *(v6 + 16);

  if ((a3 & 0x8000000000000000) == 0 && v4 > a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v6 + 16) <= a3)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v6 + a3 + 32);

      LOBYTE(v6) = v5;
      sub_257D2F9A0(&v6);
    }
  }
}

BOOL sub_257C19284()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return (v1 & 1) == 0;
}

uint64_t sub_257C19338(uint64_t *a1)
{
  v25 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
    v3 = result;
    swift_beginAccess();
    v4 = *&v3[v2];

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v6 = 0;
      v23 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = v4 & 0xC000000000000001;
      v7 = &unk_257EDBF40;
      v8 = &unk_257EDBF68;
      v21 = i;
      v22 = v4;
      while (1)
      {
        if (v24)
        {
          v10 = MEMORY[0x259C72E20](v6, v4);
        }

        else
        {
          if (v6 >= *(v23 + 16))
          {
            goto LABEL_21;
          }

          v10 = v4[v6 + 4];
        }

        v11 = v10;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v12 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
        [*&v10[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView] setImage_];
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v13 = v8;
        v14 = v7;
        sub_257ECDD60();

        v15 = *(v26 + 16);

        if (v6 >= v15)
        {
          v7 = v14;
          v8 = v13;
          v9 = v6 + 1;
        }

        else
        {
          v4 = v14;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if (v6 >= *(v26 + 16))
          {
            goto LABEL_22;
          }

          v8 = v13;
          v16 = *(v26 + v6 + 32);

          v17 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter;
          v11[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter] = v16;
          v18 = [*&v11[v12] layer];
          if (v11[v17] == 12)
          {
            v19 = 0;
          }

          else
          {
            LOBYTE(v26) = v11[v17];
            v20 = sub_257D18A0C();
            sub_257EB7394(v20);

            v19 = sub_257ECF7F0();
          }

          v7 = v4;
          v9 = v6 + 1;
          [v18 setFilters_];

          v11 = v19;
          i = v21;
          v4 = v22;
        }

        ++v6;
        if (v9 == i)
        {
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }

  return result;
}

uint64_t sub_257C19668(uint64_t *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v19 = sub_257ECFD30();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    aBlock[4] = sub_257C1C5C8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_8;
    v14 = _Block_copy(aBlock);
    v18 = v6;
    v15 = v14;
    v17 = v12;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v16 = v19;
    MEMORY[0x259C72880](0, v9, v5, v15);
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v18);
  }

  return result;
}

void sub_257C1996C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
    if (([*(Strong + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView) isDragging] & 1) != 0 || objc_msgSend(*&v3[v4], sel_isDecelerating))
    {
      [*&v3[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_feedbackGenerator] selectionChanged];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v5 = sub_257DB83D0(v1, v8);
    v7 = v6;

    if ((v7 & 1) == 0 && (![*&v3[v4] isDragging] || objc_msgSend(*&v3[v4], sel_isDecelerating)))
    {
      sub_257C19AF0(v5, 1);
    }
  }
}

void sub_257C19AF0(unint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    v7 = sub_257ED0210();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 <= a1)
  {
    return;
  }

  swift_beginAccess();
  v8 = *(v2 + v5);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 8 * a1 + 32);
    goto LABEL_7;
  }

LABEL_11:
  v9 = MEMORY[0x259C72E20](a1);
LABEL_7:
  v10 = v9;
  swift_endAccess();
  [v10 bounds];
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  [v10 convertRect:v11 toCoordinateSpace:?];
  v13 = v12;
  [v11 contentOffset];
  [v11 setContentOffset:a2 & 1 animated:v13];
}

void sub_257C19C34(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for ImageCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v5[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView] setImage_];
  LOBYTE(v24[0]) = v4;
  sub_257D2F9A0(v24);
  v24[0] = 0x2D7265746C6966;
  v24[1] = 0xE700000000000000;
  v25 = v4;
  v6 = v5;
  v7 = sub_257ED0600();
  MEMORY[0x259C72150](v7);

  MEMORY[0x259C72150](45, 0xE100000000000000);
  LOBYTE(v25) = v4;
  sub_257D188B4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_257ECF4C0();

  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = sub_257ECF500();
  v16 = v15;

  MEMORY[0x259C72150](v14, v16);

  v17 = sub_257ECF4C0();

  [v6 setAccessibilityIdentifier_];

  LOBYTE(v24[0]) = v4;
  sub_257D188B4();
  v18 = [v9 bundleForClass_];
  v19 = sub_257ECF4C0();

  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  if (!v21)
  {
    sub_257ECF500();
    v21 = sub_257ECF4C0();
  }

  [v6 setAccessibilityLabel_];

  *v23 = v6;
}

uint64_t sub_257C19F34(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v4 = 0;
    v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C72E20](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [*(v1 + v5) addSubview_];

      ++v4;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v9 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  *(v1 + v9) = a1;

  return sub_257C168F0();
}

void sub_257C1A058(unint64_t a1, char a2, char a3)
{
  v6 = v3;
  v10 = sub_257ECDA30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v15 = *&v6[v14];
  if (v15 >> 62)
  {
    v16 = sub_257ED0210();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 > a1)
  {
    swift_beginAccess();
    v17 = *&v6[v14];
    if ((v17 & 0xC000000000000001) == 0)
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
        __break(1u);
        goto LABEL_25;
      }

      v18 = *(v17 + 8 * a1 + 32);
LABEL_7:
      v19 = v18;
      swift_endAccess();
      v5 = v19[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v4 = &qword_281544000;
      if (v5 == 12)
      {
LABEL_11:
        if (a2)
        {
          sub_257C19AF0(a1, a3 & 1);
        }

        if (v4[508] != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        v28[15] = v29;
        sub_257D188B4();
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v21 = [objc_opt_self() bundleForClass_];
        v22 = sub_257ECF4C0();

        v23 = sub_257ECF4C0();
        v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

        if (!v24)
        {
          sub_257ECF500();
          v24 = sub_257ECF4C0();
        }

        [v6 setAccessibilityValue_];

        return;
      }

      if (qword_281544FE0 == -1)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v29 != v5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v29 = v5;
          sub_257ECC3F0();
          sub_257ECDD70();
          swift_getKeyPath();
          swift_getKeyPath();
          v29 = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_11;
      }

LABEL_25:
      swift_once();
      goto LABEL_9;
    }

LABEL_23:
    v18 = MEMORY[0x259C72E20](a1);
    goto LABEL_7;
  }

  sub_257ECD420();
  v25 = sub_257ECDA20();
  v26 = sub_257ECFBD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = a1;
    _os_log_impl(&dword_257BAC000, v25, v26, "No filter cell at: %ld", v27, 0xCu);
    MEMORY[0x259C74820](v27, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
}

void sub_257C1A51C()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7 + 79.0;
  [v2 bounds];
  v10 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView];
  [v10 setFrame_];
  [v10 frame];
  [v10 setContentInset_];
  [v10 setContentSize_];
  [v10 setScrollEnabled_];
  v12 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint];
  if (v12)
  {
    [v12 setConstant_];
  }

  sub_257C1A898();
  sub_257C1AAD8();
  v13 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (v14 >> 62)
  {
    v15 = sub_257ED0210();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v28 = MEMORY[0x277D84F90];

    sub_257BF2784(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v17 = 0;
    v16 = v28;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x259C72E20](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v27 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_257BF2784((v20 > 1), v21 + 1, 1);
      }

      ++v17;
      *(v16 + 16) = v21 + 1;
      *(v16 + v21 + 32) = v19;
    }

    while (v15 != v17);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v22 = sub_257DB8418(v27, v16);
  v24 = v23;

  if (v24)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v25 = v22;
    v26 = 0;
  }

  sub_257C1A058(v25, 1, v26);
}

uint64_t sub_257C1A898()
{
  v1 = v0;
  sub_257C16BB4();
  v3 = v2;
  v4 = v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  v5 = *(v4 + 8);
  v7 = v5[6](v6, v5);
  if (v3 <= v7)
  {
    v3 = v7;
  }

  v8 = v5[7](v6, v5);
  if (v8 >= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView) bounds];
  v11 = v10;
  v12 = v5[3];
  v13 = v12(v6, v5);
  v14 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    v11 = (v11 - v13) * 0.5;
    v24 = v15 & 0xC000000000000001;
    v18 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v24)
      {
        v19 = v15;
        v20 = MEMORY[0x259C72E20](v17, v15);
      }

      else
      {
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v19 = v15;
        v20 = *(v15 + 8 * v17 + 32);
      }

      v15 = v20;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v13 = v9 * v17 + v12(v6, v5) * v17;
      v22 = v12(v6, v5);
      [v15 setFrame_];

      ++v17;
      v15 = v19;
      if (v21 == i)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_257C1AAD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView);
  [v1 bounds];
  if (v2 > 0.0)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
    [v1 bounds];
    [v34 setFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_257EDBE50;
    v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v5 = [v4 CGColor];

    type metadata accessor for CGColor(0);
    v7 = v6;
    *(v3 + 56) = v6;
    *(v3 + 32) = v5;
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v9 = [v8 CGColor];

    *(v3 + 88) = v7;
    *(v3 + 64) = v9;
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v11 = [v10 CGColor];

    *(v3 + 120) = v7;
    *(v3 + 96) = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v13 = [v12 CGColor];

    *(v3 + 152) = v7;
    *(v3 + 128) = v13;
    v14 = sub_257ECF7F0();

    [v34 setColors_];

    [v1 bounds];
    v16 = 64.0 / v15;
    [v1 bounds];
    v18 = 76.0 / v17;
    v19 = sub_257CA9B88();
    [v1 bounds];
    v21 = 1.0 - v19 / v20;
    if (v16 > 0.0 && v16 < v18 && v18 < v21 && v21 < 1.0)
    {
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_257EDBE40;
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      *(v28 + 48) = v27;
      sub_257BD2C2C(0, &qword_281543DC0);
      v29 = v25;
      v30 = v26;
      v31 = v27;
      *(v28 + 56) = sub_257ECFF30();
      v32 = sub_257ECF7F0();

      [v34 setLocations_];

      [v34 setStartPoint_];
      [v34 setEndPoint_];
      v33 = [v1 layer];
      [v33 setMask_];
    }
  }
}

void sub_257C1B058(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  [a1 locationInView_];
  v4 = v3;
  if (sub_257C1C354(v2, v3, v5))
  {
    v6 = sub_257C1B134(v4);
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
      swift_beginAccess();
      v9 = *(v1 + v8);

      v10 = sub_257DB8470(v7, v9);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        sub_257C1A058(v10, 1, 1);
      }
    }
  }
}

uint64_t sub_257C1B134(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  v3 = [v2 subviews];
  sub_257BD2C2C(0, &unk_281543E00);
  v4 = sub_257ECF810();

  v37 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_257ED0210();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C72E20](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ImageCell();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v7 = v37;
  }

  while (v6 != v5);
LABEL_21:

  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_44:

    return 0;
  }

LABEL_43:
  result = sub_257ED0210();
  v12 = result;
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_23:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x259C72E20](0, v7);
    goto LABEL_26;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v7 + 32);
LABEL_26:
    v14 = v13;
    if (v12 != 1)
    {
      v15 = 1;
      while (2)
      {
        v16 = v14;
        v17 = v15;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x259C72E20](v17, v7);
          }

          else
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v18 = *(v7 + 8 * v17 + 32);
          }

          v14 = v18;
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          [v18 bounds];
          [v14 convertRect:v2 toCoordinateSpace:?];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v16 bounds];
          [v16 convertRect:v2 toCoordinateSpace:?];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v38.origin.x = v20;
          v38.origin.y = v22;
          v38.size.width = v24;
          v38.size.height = v26;
          v35 = vabdd_f64(CGRectGetMidX(v38), a1);
          v39.origin.x = v28;
          v39.origin.y = v30;
          v39.size.width = v32;
          v39.size.height = v34;
          if (v35 < vabdd_f64(CGRectGetMidX(v39), a1))
          {
            break;
          }

          ++v17;
          if (v15 == v12)
          {
            v14 = v16;
            goto LABEL_39;
          }
        }

        if (v15 != v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    return v14;
  }

  __break(1u);
  return result;
}

void *sub_257C1B528(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8);
  v6 = v5[3](v4, v5);
  sub_257C16BB4();
  v8 = v7;
  v9 = v5[6](v4, v5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = v5[7](v4, v5);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  result = sub_257C1B134((v6 + v10) * 0.5 + a1);
  v12 = result;
  if (result)
  {
    [result bounds];
    [v12 convertRect:*(v2 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView) toCoordinateSpace:?];
    v14 = v13;

    return v14;
  }

  return result;
}

void sub_257C1B65C(void *a1)
{
  v2 = v1;
  v4 = sub_257C167CC();
  v5 = sub_257C1B134(v4);
  if (v5)
  {
    v11 = v5;
    sub_257BD2C2C(0, &qword_281543DA0);
    if ((sub_257ECFF50() & 1) != 0 && (([a1 isDragging] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating)))
    {
      v6 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
      swift_beginAccess();
      v7 = *(v2 + v6);

      v8 = sub_257DB8470(v11, v7);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        sub_257C1A058(v8, 0, 0);
      }
    }

    else
    {
    }
  }
}

char *sub_257C1B980()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257ED9BD0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v25 = v7;
  v26 = v0;
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    v9 = sub_257ED0210();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_13;
  }

  v28 = MEMORY[0x277D84F90];

  result = sub_257BF2784(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v10 = v28;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259C72E20](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
      }

      v7 = v13[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v27 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257BF2784((v14 > 1), v15 + 1, 1);
      }

      ++v12;
      *(v10 + 16) = v15 + 1;
      *(v10 + v15 + 32) = v7;
    }

    while (v9 != v12);

LABEL_13:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v16 = sub_257DB8418(v27, v10);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v7 = MEMORY[0x277D83B88];
      v10 = MEMORY[0x277D83C10];
      *(v6 + 56) = MEMORY[0x277D83B88];
      *(v6 + 64) = v10;
      *(v6 + 32) = v21;
      v22 = *(v26 + v25);
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
        *(v6 + 96) = v7;
        *(v6 + 104) = v10;
        *(v6 + 72) = v23;
        v24 = sub_257ECF540();

        return v24;
      }
    }

    v23 = sub_257ED0210();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_257C1BD00()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_257ED0210();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];

    sub_257BF2784(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_22;
    }

    v5 = 0;
    v4 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C72E20](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v14 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2784((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
    }

    while (v3 != v5);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v10 = sub_257DB8418(v14, v4);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (!__OFSUB__(v13, 1))
  {
    sub_257C1A058(v13 - 1, 1, 1);
    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_257C1BF5C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_257ED0210();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];

    sub_257BF2784(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_22;
    }

    v5 = 0;
    v4 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C72E20](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v14 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2784((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
    }

    while (v3 != v5);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v10 = sub_257DB8418(v14, v4);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (!__OFADD__(v13, 1))
  {
    sub_257C1A058(v13 + 1, 1, 1);
    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_257C1C1B8()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  *v1 = &type metadata for LayoutConstants.FilterRow;
  v1[1] = &off_28690ABD0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_shouldHighlight) = 0;
  v3 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_subscribers) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_feedbackGenerator;
  v5 = [objc_opt_self() lightConfiguration];
  v6 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration_];

  [v6 _setOutputMode_];
  *(v0 + v4) = v6;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___activeItemIndicator) = 0;
  sub_257ED0410();
  __break(1u);
}

BOOL sub_257C1C354(void *a1, CGFloat a2, CGFloat a3)
{
  v6 = [a1 subviews];
  sub_257BD2C2C(0, &unk_281543E00);
  v7 = sub_257ECF810();

  if (v7 >> 62)
  {
LABEL_15:
    v8 = sub_257ED0210();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C72E20](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    [v11 bounds];
    [v12 convertRect:a1 toCoordinateSpace:?];
    v15.x = a2;
    v15.y = a3;
    v13 = CGRectContainsPoint(v16, v15);

    v9 = v10 + 1;
  }

  while (!v13);

  return v8 != v10;
}

uint64_t sub_257C1C4B8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C1C614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C1C684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_257C1C70C()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0.0;
  v9[0] = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  if (v9[0] == v8 && v8 == v7)
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v9[0] alpha:v6 * 0.8];
  }

  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [v0 getHue:&v5 saturation:&v4 brightness:&v3 alpha:{&v6, v8}];
  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v5 saturation:v4 brightness:v3 alpha:v6 * 0.8];
}

id sub_257C1C83C(void *a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0.0;
  [a1 getWhite:&v6 alpha:v7];
  v3 = [a2 userInterfaceStyle];
  v4 = 0.35;
  if (v3 == 2)
  {
    v4 = 0.45;
  }

  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v7[0] alpha:v7[0] * v4];
}

uint64_t sub_257C1C904@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_257C7DE38(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 56 * a1);
    v10 = v9[2];
    v9 += 2;
    v11 = *(v9 + 4);
    v12 = v9[1];
    *a2 = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, v9 + 56, 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_257C1C9C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_257C7DED8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for DoorAttributesCacheItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_257C22DAC(v11, a2, type metadata accessor for DoorAttributesCacheItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_257C1CAF8(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

void sub_257C1CB90()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C1CF5C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v21 == 1)
  {
    v19[0] = v0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_257ECF4C0();
    v8 = sub_257ECF4C0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    v10 = v9;
    if (!v9)
    {
      sub_257ECF500();
      v10 = sub_257ECF4C0();
    }

    v21 = sub_257ECF500();
    v22 = v11;
    sub_257BDAB08();
    v12 = sub_257ED0100();
    v14 = v13;

    v15 = sub_257E003E8();
    v16 = sub_257E00504();
    sub_257DFD370(v12, v14, v15, v16);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
    v0 = v19[0];
  }

  v17 = qword_281548350 + 40;
  swift_beginAccess();
  v20 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v18 = sub_257ECF110();
  MEMORY[0x28223BE20](v18);
  v19[-2] = &v20;
  v19[-1] = v17;
  sub_257ECFD40();
  (*(v1 + 8))(v3, v0);
  swift_endAccess();
  if (*(v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) != 1 || (*(v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) & 1) == 0)
  {
    sub_257D3D02C();
  }
}

uint64_t sub_257C1CF5C()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  swift_beginAccess();
  v9 = v8[1];
  v10 = v8[2];
  aBlock = *v8;
  v25 = v9;
  v26 = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12);
  *(&v21 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
  sub_257ECFD50();

  v13 = v30;
  v14 = sub_257C592D0(2u, v30);
  v15 = sub_257C592D0(3u, v13);
  v16 = sub_257C592D0(1u, v13);

  v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useDoorSpeechFeedback] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v14;
  *(v17 + 25) = v15;
  v28 = sub_257C22570;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_257D231C0;
  v27 = &block_descriptor_8;
  v18 = _Block_copy(&aBlock);
  v19 = v1;
  sub_257ECF150();
  v30 = MEMORY[0x277D84F90];
  sub_257C242AC(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v7, v4, v18);
  _Block_release(v18);
  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v7, v22);
}

void sub_257C1D38C()
{
  v1 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C1D94C();
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView))
  {
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = *MEMORY[0x277CBF348];
    v15 = *(MEMORY[0x277CBF348] + 8);
    sub_257ECCCE0();
    v16 = &v6[v4[5]];
    *v16 = v10;
    *(v16 + 1) = v11;
    *(v16 + 2) = v12;
    *(v16 + 3) = v13;
    v17 = &v6[v4[6]];
    *v17 = v10;
    *(v17 + 1) = v11;
    *(v17 + 2) = v12;
    *(v17 + 3) = v13;
    v18 = &v6[v4[7]];
    *v18 = v14;
    *(v18 + 1) = v15;
    v19 = &v6[v4[8]];
    *v19 = v14;
    *(v19 + 1) = v15;
    *&v6[v4[9]] = 0;
    v20 = &v6[v4[10]];
    *v20 = 0;
    v20[4] = 1;
    v21 = &v6[v4[11]];
    *(v21 + 12) = 0;
    *(v21 + 4) = 0u;
    *(v21 + 5) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *&v6[v4[12]] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    sub_257C22D44(v6, v3, type metadata accessor for DetectedDoor);
    *&v3[v23] = MEMORY[0x277D84F90];
    *&v3[v24] = 0;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C22D44(v3, &v9[v7[5]], type metadata accessor for MAGOutputEvent.EventType);
    v9[v7[6]] = 1;
    v9[v7[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    sub_257ECC3F0();
    sub_257C22E14(v3, type metadata accessor for MAGOutputEvent.EventType);
    sub_257C22E14(v6, type metadata accessor for DetectedDoor);
    *&v9[v7[8]] = v25;
    sub_257CBBC80(v9);
    sub_257C22E14(v9, type metadata accessor for MAGOutputEvent);
    v26 = sub_257DFF59C();
    v27 = &v26[OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue];
    *v27 = 0;
    *(v27 + 1) = 0xE000000000000000;

    v28 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
    v29 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
    swift_beginAccess();
    [*(v28 + v29) setUseHapticFeedback_];
    [*(v28 + v29) setUseSoundFeedback_];
    v30 = sub_257DFF054();
    v31 = [v30 view];
    if (v31)
    {
      v32 = v31;
      [v31 alpha];
      v34 = v33;

      if (v34 == 0.0)
      {
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v36 = [objc_opt_self() bundleForClass_];
        v37 = sub_257ECF4C0();
        v38 = sub_257ECF4C0();
        v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

        v40 = v39;
        if (!v39)
        {
          sub_257ECF500();
          v40 = sub_257ECF4C0();
        }

        v48 = sub_257ECF500();
        v49 = v41;
        sub_257BDAB08();
        v42 = sub_257ED0100();
        v44 = v43;

        v45 = sub_257E003E8();
        v46 = sub_257E00504();
        sub_257DFD370(v42, v44, v45, v46);

        UIAccessibilitySpeakAndDoNotBeInterrupted();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v48 == 1)
      {
        sub_257C1DC68();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257C1D94C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECF190();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v8 = sub_257ECFD30();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_257C1EBFC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_9;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257C242AC(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v7, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v16);
  v12 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (v12)
  {
    v13 = v12;
    v14 = sub_257ECF7F0();
    [v13 setAccessibilityElements_];
  }
}

uint64_t sub_257C1DC68()
{
  sub_257BD2C2C(0, &qword_27F8F8060);
  if ([swift_getObjCClassFromMetadata() supportsFrameSemantics_])
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
    v2 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = [v3 configuration];
      if (v4)
      {
        v5 = v4;
        [v4 setFrameSemantics_];
      }
    }
  }

  return sub_257D1A130();
}

id sub_257C1DD48(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v5 + v6) setUseSoundFeedback_];
  [*(v5 + v6) setUseHapticFeedback_];
  return [*(v5 + v6) setDetectionType_];
}

uint64_t sub_257C1DDE8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = a8;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  v9 = sub_257ECF120();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_257ECF190();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  sub_257ECF900();
  *(v8 + 152) = sub_257ECF8F0();
  v12 = sub_257ECF8B0();
  *(v8 + 160) = v12;
  *(v8 + 168) = v11;

  return MEMORY[0x2822009F8](sub_257C1DF40, v12, v11);
}

uint64_t sub_257C1DF40()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_257C1DFF0;
  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  return sub_257DA6320(v5, v2, v3, v4);
}

uint64_t sub_257C1DFF0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_257C1E118, v4, v3);
}

uint64_t sub_257C1E118()
{
  v1 = v0[23];

  if (v1)
  {
    v2 = v0[23];
    if (*(v2 + 16))
    {
      v15 = v0[18];
      v3 = v0[15];
      v17 = v0[17];
      v18 = v0[16];
      v5 = v0[13];
      v4 = v0[14];
      v6 = *(v0 + 192);
      v8 = v0[9];
      v7 = v0[10];
      sub_257BD2C2C(0, &qword_281543F10);
      v16 = sub_257ECFD30();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v2;
      *(v9 + 32) = v7;
      *(v9 + 40) = v6;
      v0[6] = sub_257C22938;
      v0[7] = v9;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_257D231C0;
      v0[5] = &block_descriptor_20;
      v10 = _Block_copy(v0 + 2);
      v11 = v8;
      v12 = v7;

      sub_257ECF150();
      v0[8] = MEMORY[0x277D84F90];
      sub_257C242AC(&qword_281544090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v15, v3, v10);
      _Block_release(v10);

      (*(v4 + 8))(v3, v5);
      (*(v17 + 8))(v15, v18);
    }

    else
    {

      sub_257C1EC1C();
    }
  }

  v13 = v0[1];

  return v13();
}

id sub_257C1E38C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v52 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16);
  sub_257ECFD50();

  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v55 green:v56 blue:v57 alpha:1.0];
  v58.origin.x = a1;
  v58.origin.y = a2;
  v58.size.width = a3;
  v58.size.height = a4;
  v18 = CGPathCreateWithRoundedRect(v58, 16.0, 16.0, 0);
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v54 = v7;
  v53 = v13;
  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_16;
  }

  v19 = objc_opt_self();
  v20 = [v19 currentDevice];
  v21 = [v20 orientation];

  if (v21 == 4)
  {
    result = [v7 view];
    if (result)
    {
      v23 = result;
      [result bounds];
      v25 = v24;

      v59.origin.x = a1;
      v59.origin.y = a2;
      v59.size.width = a3;
      v59.size.height = a4;
      MinY = CGRectGetMinY(v59);
      v60.origin.x = a1;
      v60.origin.y = a2;
      v60.size.width = a3;
      v60.size.height = a4;
      Height = CGRectGetHeight(v60);
      result = [v7 view];
      if (result)
      {
        v28 = result;
        v29 = v25 - MinY - Height;
LABEL_15:
        [v28 bounds];
        v33 = v32;

        v62.origin.x = a1;
        v62.origin.y = a2;
        v62.size.width = a3;
        v62.size.height = a4;
        v34 = v33 - CGRectGetMinX(v62);
        v63.origin.x = a1;
        v63.origin.y = a2;
        v63.size.width = a3;
        v63.size.height = a4;
        v35 = v34 - CGRectGetWidth(v63);
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        v36 = CGRectGetHeight(v64);
        v65.origin.x = a1;
        v65.origin.y = a2;
        v65.size.width = a3;
        v65.size.height = a4;
        v66.size.height = CGRectGetWidth(v65);
        v66.origin.x = v29;
        v66.origin.y = v35;
        v66.size.width = v36;
        v37 = CGPathCreateWithRoundedRect(v66, 16.0, 16.0, 0);

        v18 = v37;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v30 = [v19 currentDevice];
  v31 = [v30 orientation];

  if (v31 == 3)
  {
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    v29 = CGRectGetMinY(v61);
    result = [v7 view];
    if (result)
    {
      v28 = result;
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_16:
  [v14 setPath_];
  v38 = [v17 CGColor];
  [v14 setFillColor_];

  v39 = [v17 CGColor];
  [v14 setStrokeColor_];

  v40 = v14;
  v41 = [v17 CGColor];
  [v40 setBorderColor_];

  if (a6)
  {
    v42 = 1.5;
  }

  else
  {
    v42 = 5.0;
  }

  [v40 setLineWidth_];
  LODWORD(v43) = 1045220557;
  [v40 setOpacity_];
  [v40 setCornerRadius_];

  [v52 setPath_];
  v44 = [objc_opt_self() clearColor];
  v45 = [v44 CGColor];

  [v52 setFillColor_];
  v46 = [v17 CGColor];
  [v52 setStrokeColor_];

  v47 = v52;
  v48 = [v17 CGColor];
  [v47 setBorderColor_];

  [v47 setLineWidth_];
  LODWORD(v49) = 1.0;
  [v47 setOpacity_];
  [v47 setCornerRadius_];

  [v53 addSublayer_];
  [v53 addSublayer_];
  [v53 setDrawsAsynchronously_];
  v50 = *&v54[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v50)
  {
    v51 = [v50 layer];
    [v51 insertSublayer:v53 atIndex:0];

    v47 = v17;
    v17 = v51;
  }

  return v53;
}

id sub_257C1EAB8(uint64_t a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers;
  result = swift_beginAccess();
  v5 = *(a1 + v3);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(a1 + v3) = MEMORY[0x277D84F90];

    return [v2 commit];
  }

  result = sub_257ED0210();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C72E20](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 removeFromSuperlayer];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C1EC1C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_257C22948;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_26;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257C242AC(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_257C1EEE0(char *a1, uint64_t a2, void *a3, int a4)
{
  v110 = a4;
  v127 = a3;
  v115 = a2;
  v6 = 0;
  v106 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v106);
  v109 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v108);
  v107 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetectedDoor(0);
  v116 = *(v9 - 1);
  v10 = MEMORY[0x28223BE20](v9);
  v111 = (&v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v125 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (&v106 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F48);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v114 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = (&v106 - v22);
  v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers;
  swift_beginAccess();
  v126 = v23;
  v24 = *&a1[v23];
  if (v24 >> 62)
  {
    v25 = sub_257ED0210();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v123 = v18;
  if (v25)
  {
    if (v25 < 1)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x259C72E20](i, v24);
      }

      else
      {
        v26 = *(v24 + 8 * i + 32);
      }

      v27 = v26;
      [v26 removeFromSuperlayer];
    }

    v18 = v123;
  }

  v28 = MEMORY[0x277D84F90];
  *&a1[v126] = MEMORY[0x277D84F90];

  v136 = v28;
  v29 = v115;
  if (*(v115 + 16))
  {
    i = v116;
    v30 = v118;
    sub_257C22D44(v115 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v118, type metadata accessor for DetectedDoor);
    v31 = i;
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v30 = v118;
    v31 = v116;
  }

  v33 = *(v31 + 56);
  v113 = v31 + 56;
  v112 = v33;
  v33(v30, v32, 1, v9);
  v134 = 0;
  v135 = 0;
  v133 = v29;
  v119 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService;
  v117 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDecorationsCache;
  v120 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;

  v124 = MEMORY[0x277D84F90];
  v34 = 3.4028e38;
  v121 = v9;
LABEL_15:
  v122 = v34;
  while (1)
  {
    v35 = v125;
    sub_257C1FED4(v125);
    sub_257C0DD14(v35, v18, &qword_27F8F5F40);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50);
    if ((*(*(v36 - 8) + 48))(v18, 1, v36) == 1)
    {
      break;
    }

    v37 = *v18;
    sub_257C22DAC(v18 + *(v36 + 48), v13, type metadata accessor for DetectedDoor);
    v39 = &v13[v9[10]];
    if ((v39[4] & 1) != 0 || (v40 = *v39, LODWORD(v38) = *v39, *v39 > 4.0))
    {
      v42 = sub_257DA8F4C(v127, *&v13[v9[6]], *&v13[v9[6] + 8], *&v13[v9[6] + 16], *&v13[v9[6] + 24]);
      v40 = *&v42;
      v41 = HIDWORD(v42) & 1;
      *v39 = v42;
      v39[4] = BYTE4(v42) & 1;
    }

    else
    {
      LODWORD(v41) = 0;
    }

    v43 = &v13[v9[6]];
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v49 = result;
    [result bounds];
    v51 = v50;
    v53 = v52;

    [v127 displayTransformForOrientation:1 viewportSize:{v51, v53}];
    tx = t1.tx;
    ty = t1.ty;
    v129 = *&t1.a;
    v128 = *&t1.c;
    CGAffineTransformMakeScale(&t1, v51, v53);
    v56 = *&t1.a;
    v57 = *&t1.c;
    v58 = *&t1.tx;
    *&t1.a = v129;
    *&t1.c = v128;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v56;
    *&t2.c = v57;
    *&t2.tx = v58;
    CGAffineTransformConcat(&v130, &t1, &t2);
    t1 = v130;
    v137.origin.x = v44;
    v137.origin.y = v45;
    v137.size.width = v46;
    v137.size.height = v47;
    v138 = CGRectApplyAffineTransform(v137, &t1);
    x = v138.origin.x;
    y = v138.origin.y;
    width = v138.size.width;
    height = v138.size.height;
    if (AXIsInternalInstall())
    {
      sub_257C200C4(v13, x, y, width, height);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v63 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
      swift_beginAccess();
      v64 = *(v63 + 8);
      v65 = *(v63 + 16);
      t1.a = *v63;
      t1.b = v64;
      LOBYTE(t1.c) = v65;
      v66 = qword_2815447E0;

      if (v66 != -1)
      {
        v67 = swift_once();
      }

      MEMORY[0x28223BE20](v67);
      *(&v106 - 2) = &t1;
      sub_257ECFD50();

      if (LOBYTE(t2.a) == 1)
      {
        v68 = *&v13[v9[12]];
        if (v68)
        {
          if (*(v68 + 16))
          {
            t1.a = v37;

            v69 = sub_257ED0600();
            *&v129 = v6;
            v70 = v69;
            v72 = v71;
            v73 = v117;
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            t2.a = *&a1[v73];
            *&a1[v73] = 0x8000000000000000;
            v75 = v70;
            v6 = v129;
            sub_257EC7424(v68, v75, v72, isUniquelyReferenced_nonNull_native);

            *&a1[v73] = t2.a;
            swift_endAccess();
          }
        }
      }
    }

    v76 = v126;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(t1.a) != 1)
    {

      sub_257C1D94C();
      v96 = v13;
      goto LABEL_57;
    }

    v77 = sub_257C1E38C(x, y, width, height, v13, *&v37);
    swift_beginAccess();
    i = v77;
    MEMORY[0x259C72300]();
    if (*((*&a1[v76] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v76] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
    v78 = sub_257C209C8(v13, x, y, width, height);
    MEMORY[0x259C72300]();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v79 = v136;
    v80 = *&a1[v120];
    v34 = v122;
    v124 = v136;
    if (v80)
    {
      v81 = v80;
      sub_257EB73A8(v79);
      v82 = sub_257ECF7F0();

      [v81 setAccessibilityElements_];
    }

    if (v41)
    {
      v83 = 3.4028e38;
    }

    else
    {
      v83 = v40;
    }

    if (v83 < v34)
    {
      v84 = v118;
      sub_257BE4084(v118, &qword_27F8F5F48);
      sub_257C22D44(v13, v84, type metadata accessor for DetectedDoor);
      v85 = v121;
      v112(v84, 0, 1, v121);
      v86 = sub_257DFF59C();
      sub_257C22A60(v13);
      v88 = v87;
      v89 = [v87 string];

      v90 = sub_257ECF500();
      v92 = v91;

      sub_257C22E14(v13, type metadata accessor for DetectedDoor);
      v93 = &v86[OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue];
      *v93 = v90;
      v93[1] = v92;
      v9 = v85;

      v34 = v83;
      v18 = v123;
      goto LABEL_15;
    }

    sub_257C22E14(v13, type metadata accessor for DetectedDoor);

    v9 = v121;
    v18 = v123;
  }

  v6 = v118;
  v25 = v114;
  if (v34 >= 3.4028e38)
  {
    goto LABEL_51;
  }

  v94 = v34 * 1000.0;
  if (COERCE_INT(fabs(v34 * 1000.0)) > 2139095039)
  {
    goto LABEL_62;
  }

  if (v94 > -2147500000.0)
  {
    if (v94 >= 2147500000.0)
    {
      goto LABEL_64;
    }

    sub_257DE25DC(v94);
LABEL_51:
    sub_257C22950(v6, v25);
    if ((*(v116 + 48))(v25, 1, v9) == 1)
    {
      sub_257BE4084(v6, &qword_27F8F5F48);
      v95 = v25;
      return sub_257BE4084(v95, &qword_27F8F5F48);
    }

    v18 = v111;
    sub_257C22DAC(v25, v111, type metadata accessor for DetectedDoor);
    if ((v110 & 1) == 0)
    {
      sub_257C22E14(v18, type metadata accessor for DetectedDoor);
      v95 = v6;
      return sub_257BE4084(v95, &qword_27F8F5F48);
    }

    v97 = *&a1[v119];
    v98 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
    swift_beginAccess();
    v99 = *(v97 + v98);
    sub_257ECFA40();
    v101 = v100;

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
    v103 = *(v102 + 48);
    v104 = *(v102 + 64);
    v25 = v109;
    sub_257C22D44(v18, v109, type metadata accessor for DetectedDoor);
    *(v25 + v103) = v115;
    *(v25 + v104) = v101;
    swift_storeEnumTagMultiPayload();

    i = v107;
    sub_257ECCCE0();
    v6 = v108;
    sub_257C22D44(v25, i + *(v108 + 20), type metadata accessor for MAGOutputEvent.EventType);
    *(i + v6[6]) = 1;
    *(i + v6[7]) = 0;
    if (qword_281544FE0 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_56:
  v105 = qword_281548348;
  sub_257ECC3F0();
  sub_257C22E14(v25, type metadata accessor for MAGOutputEvent.EventType);
  *(i + v6[8]) = v105;
  sub_257CBBC80(i);
  sub_257C22E14(i, type metadata accessor for MAGOutputEvent);
  v96 = v18;
LABEL_57:
  sub_257C22E14(v96, type metadata accessor for DetectedDoor);
  v95 = v118;
  return sub_257BE4084(v95, &qword_27F8F5F48);
}

uint64_t sub_257C1FED4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50);
  result = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v5;
      v12 = *(type metadata accessor for DetectedDoor(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      result = sub_257C22D44(v13, v7 + v14, type metadata accessor for DetectedDoor);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_257C0DD14(v7, a1, &qword_27F8F5F50);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_257C200C4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F58);
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v71 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F60);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v62 - v18;
  v75 = sub_257ECCC80();
  v67 = *(v75 - 8);
  v19 = MEMORY[0x28223BE20](v75);
  v68 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = &v62 - v21;
  v22 = type metadata accessor for DoorAttributesCacheItem(0);
  v72 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v62 - v29;
  result = type metadata accessor for DetectedDoor(0);
  v32 = (a1 + *(result + 44));
  v33 = *v32;
  if (*v32)
  {
    v74 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_257ED6D30;
    *(v34 + 32) = 0u;
    v78 = v22;
    v81 = v33;
    v82 = *(v32 + 1);
    v84 = *(v32 + 5);
    v85 = *(v32 + 7);
    v86 = *(v32 + 9);
    v87 = *(v32 + 11);
    v83 = *(v32 + 3);
    sub_257C22CE8(&v81, v80);
    sub_257ECCC70();
    *v30 = v33;
    *(v30 + 40) = *(v32 + 5);
    *(v30 + 56) = *(v32 + 7);
    *(v30 + 72) = *(v32 + 9);
    *(v30 + 88) = *(v32 + 11);
    *(v30 + 24) = *(v32 + 3);
    *(v30 + 8) = *(v32 + 1);
    *(v30 + 7) = 0u;
    *(v30 + 16) = v34;
    v35 = &v30[*(v78 + 32)];
    *v35 = a2;
    v35[1] = a3;
    v35[2] = a4;
    v35[3] = a5;
    sub_257C22D44(v30, v28, type metadata accessor for DoorAttributesCacheItem);
    v36 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorAttributesCache;
    swift_beginAccess();
    v37 = *(v6 + v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v36) = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v37 = sub_257BFD418(0, *(v37 + 2) + 1, 1, v37);
      *(v6 + v36) = v37;
    }

    v39 = v77;
    v73 = v17;
    v41 = *(v37 + 2);
    v40 = *(v37 + 3);
    v64 = v30;
    v42 = v71;
    if (v41 >= v40 >> 1)
    {
      v37 = sub_257BFD418(v40 > 1, v41 + 1, 1, v37);
    }

    *(v37 + 2) = v41 + 1;
    v43 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v70 = *(v72 + 72);
    sub_257C22DAC(v28, &v37[v43 + v70 * v41], type metadata accessor for DoorAttributesCacheItem);
    *(v6 + v36) = v37;
    swift_endAccess();
    sub_257ECCC70();
    v44 = *(v6 + v36);
    v69 = v44 + v43;
    v28 = *(v44 + 16);
    v72 = v39 + 56;
    v71 = (v39 + 48);
    v66 = (v67 + 2);
    ++v67;
    v77 = v44;

    v45 = 0;
    v63 = 0;
    v65 = MEMORY[0x277D84F90];
    while (1)
    {
      v46 = v42;
      if (v28)
      {
        --v28;
        v47 = v74;
        v17 = v73;
        if (v28 >= *(v77 + 16))
        {
          goto LABEL_27;
        }

        v48 = v69 + v28 * v70;
        v49 = *(v74 + 48);
        *v46 = v45;
        sub_257C22D44(v48, v46 + v49, type metadata accessor for DoorAttributesCacheItem);
        v50 = __OFADD__(v45++, 1);
        v30 = v76;
        if (v50)
        {
          goto LABEL_28;
        }

        sub_257C0DD14(v46, v17, &qword_27F8F5F58);
        v51 = 0;
      }

      else
      {
        v51 = 1;
        v47 = v74;
        v17 = v73;
        v30 = v76;
      }

      (*v72)(v17, v51, 1, v47);
      sub_257C0DD14(v17, v30, &qword_27F8F5F60);
      if ((*v71)(v30, 1, v47) == 1)
      {
        break;
      }

      v42 = v46;
      v52 = v30;
      v30 = *v30;
      v53 = &v52[*(v47 + 48)];
      v37 = v68;
      v54 = v75;
      (*v66)(v68, v53 + *(v78 + 28), v75);
      sub_257C22E14(v53, type metadata accessor for DoorAttributesCacheItem);
      sub_257ECCBC0();
      v56 = v55;
      (*v67)(v37, v54);
      if (v56 > 1.0)
      {
        v37 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_257BFCF1C(0, *(v37 + 2) + 1, 1, v37);
        }

        v58 = *(v37 + 2);
        v57 = *(v37 + 3);
        if (v58 >= v57 >> 1)
        {
          v37 = sub_257BFCF1C((v57 > 1), v58 + 1, 1, v37);
        }

        *(v37 + 2) = v58 + 1;
        v65 = v37;
        *&v37[8 * v58 + 32] = v30;
      }
    }

    v80[0] = v65;

    v59 = v63;
    sub_257C21C94(v80);
    if (v59)
    {

      __break(1u);
    }

    else
    {

      v60 = v80[0];
      v61 = *(v80[0] + 2);
      v17 = v64;
      if (v61)
      {
        swift_beginAccess();
        v37 = v60 + 24;
        while (v61 <= *(v60 + 2))
        {
          sub_257C1C9C4(*&v37[8 * v61], v25);
          sub_257C22E14(v25, type metadata accessor for DoorAttributesCacheItem);
          if (!--v61)
          {
            swift_endAccess();
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_24:

      (*v67)(v79, v75);
      return sub_257C22E14(v17, type metadata accessor for DoorAttributesCacheItem);
    }
  }

  return result;
}

char *sub_257C209C8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  v12 = objc_allocWithZone(type metadata accessor for DoorUIAccessibilityElement());
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F68);
  v14 = [v12 initWithAccessibilityContainer_];

  swift_unknownObjectRelease();
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, 16.0}];
  [v16 setAccessibilityPath_];

  v18 = sub_257C229C0(a1);
  v20 = v19;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_257ECF4C0();
  v24 = sub_257ECF4C0();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  sub_257ECF500();

  MEMORY[0x259C72150](32, 0xE100000000000000);

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    v18 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x259C72150](v18, v26);

  sub_257C22A60(a1);
  v91 = v27;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    swift_beginAccess();
    v28 = qword_2815447E0;

    if (v28 != -1)
    {
      v29 = swift_once();
    }

    MEMORY[0x28223BE20](v29);
    sub_257ECFD50();

    if ((v97 & 1) == 0)
    {
      v31 = swift_beginAccess();
      MEMORY[0x28223BE20](v31);

      sub_257ECFD50();

      if ((v96 & 1) == 0)
      {
        v32 = v16;
        v33 = sub_257ECF4C0();
        [v32 setAccessibilityLabel_];

        sub_257BD2C2C(0, &qword_27F8F5F70);
        v34 = sub_257ECF7F0();
        [v32 setAccessibilityCustomContent_];
      }
    }

    MEMORY[0x28223BE20](v30);

    sub_257ECFD50();

    v93 = v16;
    if (v96 == 1)
    {
      v35 = *(type metadata accessor for DetectedDoor(0) + 48);
      v36 = *(a1 + v35);
      if (v36)
      {
        sub_257C22E74(*(a1 + v35));
        sub_257BD2C2C(0, &qword_27F8F5F70);
        v37 = sub_257ECF7F0();

        [v16 setAccessibilityCustomContent_];

        v38 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v39 = sub_257ECF4C0();
        v40 = [v38 initWithString_];

        v41 = sub_257C23960(v36);
        if ([v41 length] >= 1)
        {
          v42 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v43 = sub_257ECF4C0();
          v44 = [v42 initWithString_];

          [v40 appendAttributedString_];
          [v40 appendAttributedString_];
        }

        [v16 setAccessibilityAttributedLabel_];
      }
    }

    v45 = swift_beginAccess();
    MEMORY[0x28223BE20](v45);

    sub_257ECFD50();

    if (v94 != 1)
    {

LABEL_40:

      v78 = v91;
      goto LABEL_45;
    }

    v46 = &selRef_imageByApplyingSymbolConfiguration_;
    if (!*(a1 + *(type metadata accessor for DetectedDoor(0) + 44)))
    {
      break;
    }

    v89 = 0;
    v47 = sub_257D747BC();
    a1 = v47 + 64;
    v48 = 1 << *(v47 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v47 + 64);
    v51 = (v48 + 63) >> 6;

    v52 = 0;
    v90 = v51;
    while (v50)
    {
LABEL_28:
      v55 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v56 = sub_257ECF4C0();
      v57 = [v55 initWithString_];

      v58 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v59 = sub_257ECF4C0();

      v60 = [v58 initWithString_];

      v61 = objc_opt_self();
      v92 = v57;
      v62 = v57;
      v63 = v60;
      v64 = [v61 customContentWithAttributedLabel:v62 attributedValue:v60];
      v65 = [v93 accessibilityCustomContent];
      if (!v65)
      {
        sub_257BD2C2C(0, &qword_27F8F5F70);
        v66 = sub_257ECF7F0();
        [v93 setAccessibilityCustomContent_];
        v65 = v66;
      }

      result = [v93 accessibilityCustomContent];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v68 = result;
      sub_257BD2C2C(0, &qword_27F8F5F70);
      v69 = sub_257ECF810();

      v94 = v69;
      v70 = v64;
      MEMORY[0x259C72300]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();
      if (v69)
      {
        v53 = sub_257ECF7F0();
      }

      else
      {
        v53 = 0;
      }

      v50 &= v50 - 1;
      v16 = v93;
      [v93 setAccessibilityCustomContent_];

      v51 = v90;
    }

    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {

        v46 = &selRef_imageByApplyingSymbolConfiguration_;
        goto LABEL_37;
      }

      v50 = *(a1 + 8 * v54);
      ++v52;
      if (v50)
      {
        v52 = v54;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_37:
  MEMORY[0x28223BE20](v71);

  sub_257ECFD50();

  if (v95 != 1)
  {
    goto LABEL_40;
  }

  v72 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v73 = sub_257ECF4C0();
  v74 = [v72 v46[244]];

  v75 = [v16 accessibilityAttributedLabel];
  if (v75)
  {
    v76 = v75;

    v77 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  }

  else
  {
    v79 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v76 = sub_257ECF4C0();

    v77 = [v79 v46[244]];
  }

  v80 = v77;

  v78 = v91;
  if ([v91 length] >= 1)
  {
    v81 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v82 = sub_257ECF4C0();
    v83 = [v81 v46[244]];

    [v80 appendAttributedString_];
    [v80 appendAttributedString_];
    [v16 setAccessibilityAttributedLabel_];
  }

LABEL_45:
  v84 = [v78 string];
  v85 = sub_257ECF500();
  v87 = v86;

  v88 = &v16[OBJC_IVAR____TtC16MagnifierSupport26DoorUIAccessibilityElement_textValue];
  *v88 = v85;
  v88[1] = v87;

  return v16;
}

uint64_t sub_257C217A0(uint64_t a1)
{
  sub_257C1D94C();
  v2 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v2 + v3) stopPulse];
  v4 = sub_257DFF59C();
  v5 = &v4[OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;

  v7 = 2;
  return sub_257CC6340(&v7);
}

id sub_257C21860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v9 = *MEMORY[0x277D764F8];
  *(inited + 32) = *MEMORY[0x277D764F8];
  v10 = *(a5 + 48);
  if (v10 == 1)
  {
    v11 = v9;

    v12 = a3;
    v13 = a4;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = v9;
    v16 = [v14 currentLanguageCode];
    v12 = sub_257ECF500();
    v13 = v17;
  }

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F9420);
  if (_s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(a3, a4, v10))
  {
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_257ECF4C0();
    _s3__C3KeyVMa_0(0);
    sub_257C242AC(&qword_27F8F8300, _s3__C3KeyVMa_0);
    v20 = sub_257ECF3C0();

    v21 = [v18 initWithString:v19 attributes:v20];

    return v21;
  }

  else
  {

    return 0;
  }
}

id sub_257C21A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v9 = *MEMORY[0x277D764F8];
  *(inited + 32) = *MEMORY[0x277D764F8];
  v10 = *(a5 + *(type metadata accessor for DetectedTextBlock() + 32));
  if (v10 == 1)
  {
    v11 = v9;

    v12 = a3;
    v13 = a4;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = v9;
    v16 = [v14 currentLanguageCode];
    v12 = sub_257ECF500();
    v13 = v17;
  }

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F9420);
  if (_s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(a3, a4, v10))
  {
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_257ECF4C0();
    _s3__C3KeyVMa_0(0);
    sub_257C242AC(&qword_27F8F8300, _s3__C3KeyVMa_0);
    v20 = sub_257ECF3C0();

    v21 = [v18 initWithString:v19 attributes:v20];

    return v21;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_257C21C94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C67178(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_257C21DC8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257C21DC8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_257C66E20(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_257C22314((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_257BFCB00((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_257C22314((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_257C22314(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

id sub_257C22508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v13 = *(a2 + 64);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  result = sub_257C21860(v5, v6, v7, v8, v12);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_257C22580(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28[-1] - v9;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  swift_beginAccess();
  v12 = v11[1];
  v13 = v11[2];
  v28[0] = *v11;
  v28[1] = v12;
  v28[2] = v13;
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  MEMORY[0x28223BE20](v15);
  *(&v27 - 2) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
  sub_257ECFD50();

  v16 = 1;
  v17 = sub_257C592D0(1u, v28[3]);

  if (v17)
  {
    v18 = sub_257CC211C();
    v19 = [v18 isSpeaking];

    v16 = v19 ^ 1;
  }

  v20 = sub_257ECF930();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_257ECF900();
  v21 = v4;
  v22 = a1;
  v23 = sub_257ECF8F0();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  *(v24 + 32) = v21;
  *(v24 + 40) = v22;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  *(v24 + 64) = v16;
  sub_257C3FBD4(0, 0, v10, &unk_257EDC138, v24);
}

uint64_t sub_257C2285C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257BE3DE0;

  return sub_257C1DDE8(v8, v9, a1, v4, v5, v6, v7, v10);
}

uint64_t sub_257C22950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C229C0(uint64_t a1)
{
  v2 = type metadata accessor for DetectedDoor(0);
  result = 0;
  v4 = a1 + *(v2 + 40);
  if ((*(v4 + 4) & 1) == 0)
  {
    v5 = *v4 * 1000.0;
    if (COERCE_INT(fabs(v5)) > 2139095039)
    {
      __break(1u);
    }

    else if (v5 > -2147500000.0)
    {
      if (v5 < 2147500000.0)
      {
        return generateTextToDisplay(depth:longUnitStyle:)(v5, 0)._countAndFlagsBits;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_257C22A60(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_257ECF4C0();
  v4 = [v2 initWithString_];

  if (*(a1 + *(type metadata accessor for DetectedDoor(0) + 44)))
  {
    v5 = sub_257D747BC();
    v6 = 0;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
LABEL_12:
      v13 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v14 = sub_257ECF4C0();

      v15 = [v13 initWithString_];

      v16 = [v4 string];
      v17 = sub_257ECF500();
      v19 = v18;

      if (!v17 && v19 == 0xE000000000000000)
      {
      }

      else
      {
        v20 = sub_257ED0640();

        if ((v20 & 1) == 0)
        {
          v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v22 = sub_257ECF4C0();
          v23 = [v21 initWithString_];

          [v4 appendAttributedString_];
        }
      }

      v10 &= v10 - 1;
      [v4 appendAttributedString_];
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_257C22D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C22DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C22E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C22E74(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_257ECF4C0();
  v74 = [v2 initWithString_];

  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_257ECF4C0();
  v6 = [v4 initWithString_];

  v7 = *(a1 + 16);
  v8 = 0x277CCA000uLL;
  v73 = v6;
  if (v7)
  {
    v9 = (a1 + 32);
    do
    {
      v13 = v9[2];
      v83 = v9[3];
      v84 = *(v9 + 8);
      v14 = *v9;
      v81 = v9[1];
      v82 = v13;
      v80 = v14;
      if (*(&v83 + 1) <= 0.25)
      {
        if (BYTE1(v83))
        {
          sub_257C241DC(&v80, &v75);
          v15 = [v6 length];
          if (v15 >= 1)
          {
            v16 = objc_allocWithZone(*(v8 + 2200));
            v17 = sub_257ECF4C0();
            v18 = [v16 initWithString_];

            [v6 appendAttributedString_];
          }

          if (BYTE2(v83) == 4)
          {
            v10 = objc_allocWithZone(*(v8 + 2200));
            v11 = sub_257ECF4C0();
            v12 = [v10 initWithString_];
          }

          else
          {
            v19 = v80;
            v77 = v82;
            v78 = v83;
            v79 = v84;
            v76 = v81;
            v75 = v80;
            if (v80)
            {
              MEMORY[0x28223BE20](v15);
              v72 = &v75;

              v20 = sub_257C82C5C(sub_257C2430C, v71, v19);

              v11 = sub_257E5B998(v20);

              sub_257DE85DC();
              v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v22 = sub_257ECF4C0();

              v12 = [v21 initWithString_];

              sub_257DE86E0();
              v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v24 = sub_257ECF4C0();

              v25 = [v23 initWithString_];

              v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v27 = sub_257ECF4C0();
              v28 = [v26 initWithString_];

              [v12 appendAttributedString_];
              [v12 appendAttributedString_];
              v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v30 = sub_257ECF4C0();
              v31 = [v29 initWithString_];

              v8 = 0x277CCA000;
              [v12 appendAttributedString_];

              [v12 appendAttributedString_];
            }

            else
            {
              sub_257DE86E0();
              v51 = objc_allocWithZone(*(v8 + 2200));
              v11 = sub_257ECF4C0();

              v12 = [v51 initWithString_];
            }

            v6 = v73;
          }

          [v6 appendAttributedString_];
        }

        else
        {
          sub_257C241DC(&v80, &v75);
          v32 = [v74 length];
          if (v32 >= 1)
          {
            v33 = objc_allocWithZone(*(v8 + 2200));
            v34 = sub_257ECF4C0();
            v35 = [v33 initWithString_];

            [v74 appendAttributedString_];
          }

          if (BYTE2(v83) == 4)
          {
            v36 = objc_allocWithZone(*(v8 + 2200));
            v37 = sub_257ECF4C0();
            v12 = [v36 initWithString_];
          }

          else
          {
            v38 = v80;
            v77 = v82;
            v78 = v83;
            v79 = v84;
            v76 = v81;
            v75 = v80;
            if (v80)
            {
              MEMORY[0x28223BE20](v32);
              v72 = &v75;

              v39 = sub_257C82C5C(sub_257C2430C, v71, v38);

              v37 = sub_257E5B998(v39);

              sub_257DE85DC();
              v40 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v41 = sub_257ECF4C0();

              v12 = [v40 initWithString_];

              sub_257DE86E0();
              v42 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v43 = sub_257ECF4C0();

              v44 = [v42 initWithString_];

              v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v46 = sub_257ECF4C0();
              v47 = [v45 initWithString_];

              [v12 appendAttributedString_];
              [v12 appendAttributedString_];
              v48 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v49 = sub_257ECF4C0();
              v50 = [v48 initWithString_];

              v8 = 0x277CCA000;
              [v12 appendAttributedString_];

              [v12 appendAttributedString_];
            }

            else
            {
              sub_257DE86E0();
              v52 = objc_allocWithZone(*(v8 + 2200));
              v37 = sub_257ECF4C0();

              v12 = [v52 initWithString_];
            }

            v6 = v73;
          }

          [v74 appendAttributedString_];
        }

        sub_257C24238(&v80);
      }

      v9 = (v9 + 72);
      --v7;
    }

    while (v7);
  }

  *&v80 = MEMORY[0x277D84F90];
  v53 = v74;
  if ([v53 length] < 1)
  {

    v61 = MEMORY[0x277D84F90];
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = [objc_opt_self() bundleForClass_];
    v56 = sub_257ECF4C0();
    v57 = sub_257ECF4C0();
    v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

    if (!v58)
    {
      sub_257ECF500();
      v58 = sub_257ECF4C0();
    }

    v8 = 0x277CCA000uLL;
    v59 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

    v60 = [objc_opt_self() customContentWithAttributedLabel:v59 attributedValue:v53];
    MEMORY[0x259C72300]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v61 = v80;
    v6 = v73;
  }

  v62 = v6;
  if ([v62 length] < 1)
  {
  }

  else
  {
    type metadata accessor for MAGUtilities();
    v63 = swift_getObjCClassFromMetadata();
    v64 = [objc_opt_self() bundleForClass_];
    v65 = sub_257ECF4C0();
    v66 = sub_257ECF4C0();
    v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

    if (!v67)
    {
      sub_257ECF500();
      v67 = sub_257ECF4C0();
    }

    v68 = [objc_allocWithZone(*(v8 + 2200)) initWithString_];

    v69 = [objc_opt_self() customContentWithAttributedLabel:v68 attributedValue:v62];
    MEMORY[0x259C72300]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();

    return v80;
  }

  return v61;
}

id sub_257C23960(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_257ECF4C0();
  v4 = [v2 initWithString_];

  v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v6 = sub_257ECF4C0();
  v65 = [v5 initWithString_];

  v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v8 = sub_257ECF4C0();
  v63 = [v7 initWithString_];

  v9 = *(a1 + 16);
  v10 = &selRef_imageByApplyingSymbolConfiguration_;
  v11 = 0x277CCA000uLL;
  if (v9)
  {
    v12 = (a1 + 32);
    v64 = v4;
    do
    {
      v16 = v12[2];
      v74 = v12[3];
      v75 = *(v12 + 8);
      v17 = *v12;
      v72 = v12[1];
      v73 = v16;
      v71 = v17;
      if (*(&v74 + 1) <= 0.25)
      {
        if (BYTE1(v74))
        {
          sub_257C241DC(&v71, &v66);
          v18 = [v65 length];
          if (v18 >= 1)
          {
            v19 = objc_allocWithZone(*(v11 + 2200));
            v20 = sub_257ECF4C0();
            v21 = [v19 initWithString_];

            [v65 v10[245]];
          }

          if (BYTE2(v74) == 4)
          {
            v13 = objc_allocWithZone(*(v11 + 2200));
            v14 = sub_257ECF4C0();
            v15 = [v13 initWithString_];
          }

          else
          {
            v22 = v71;
            v68 = v73;
            v69 = v74;
            v70 = v75;
            v67 = v72;
            v66 = v71;
            if (v71)
            {
              MEMORY[0x28223BE20](v18);
              v62 = &v66;

              v23 = sub_257C82C5C(sub_257C2428C, v61, v22);

              v14 = sub_257E5B998(v23);

              sub_257DE85DC();
              v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v25 = sub_257ECF4C0();

              v15 = [v24 initWithString_];

              sub_257DE86E0();
              v26 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v27 = sub_257ECF4C0();

              v28 = [v26 initWithString_];

              v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v30 = sub_257ECF4C0();
              v31 = [v29 initWithString_];

              [v15 appendAttributedString_];
              [v15 appendAttributedString_];
              v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v33 = sub_257ECF4C0();
              v34 = [v32 initWithString_];

              v4 = v64;
              [v15 appendAttributedString_];

              v10 = &selRef_imageByApplyingSymbolConfiguration_;
              v11 = 0x277CCA000uLL;
              [v15 &selRef:v28 setViewControllers:? direction:? animated:? completion:? + 3];
            }

            else
            {
              sub_257DE86E0();
              v54 = objc_allocWithZone(*(v11 + 2200));
              v14 = sub_257ECF4C0();

              v15 = [v54 initWithString_];
              v10 = &selRef_imageByApplyingSymbolConfiguration_;
            }
          }

          [v65 v10[245]];
        }

        else
        {
          sub_257C241DC(&v71, &v66);
          v35 = [v4 length];
          if (v35 >= 1)
          {
            v36 = objc_allocWithZone(*(v11 + 2200));
            v37 = sub_257ECF4C0();
            v38 = [v36 initWithString_];

            [v4 v10[245]];
          }

          if (BYTE2(v74) == 4)
          {
            v39 = objc_allocWithZone(*(v11 + 2200));
            v40 = sub_257ECF4C0();
            v15 = [v39 initWithString_];
          }

          else
          {
            v41 = v71;
            v68 = v73;
            v69 = v74;
            v70 = v75;
            v67 = v72;
            v66 = v71;
            if (v71)
            {
              MEMORY[0x28223BE20](v35);
              v62 = &v66;

              v42 = sub_257C82C5C(sub_257C2430C, v61, v41);

              v40 = sub_257E5B998(v42);

              sub_257DE85DC();
              v43 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v44 = sub_257ECF4C0();

              v15 = [v43 initWithString_];

              sub_257DE86E0();
              v45 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v46 = sub_257ECF4C0();

              v47 = [v45 initWithString_];

              v48 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v49 = sub_257ECF4C0();
              v50 = [v48 initWithString_];

              [v15 appendAttributedString_];
              [v15 appendAttributedString_];
              v51 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v52 = sub_257ECF4C0();
              v53 = [v51 initWithString_];

              v4 = v64;
              [v15 appendAttributedString_];

              v10 = &selRef_imageByApplyingSymbolConfiguration_;
              v11 = 0x277CCA000;
              [v15 &selRef:v47 setViewControllers:? direction:? animated:? completion:? + 3];
            }

            else
            {
              sub_257DE86E0();
              v55 = objc_allocWithZone(*(v11 + 2200));
              v40 = sub_257ECF4C0();

              v15 = [v55 initWithString_];
              v10 = &selRef_imageByApplyingSymbolConfiguration_;
            }
          }

          [v4 v10[245]];
        }

        sub_257C24238(&v71);
      }

      v12 = (v12 + 72);
      --v9;
    }

    while (v9);
  }

  v56 = v63;
  [v63 v10[245]];
  if ([v65 length] >= 1)
  {
    v57 = objc_allocWithZone(*(v11 + 2200));
    v58 = sub_257ECF4C0();
    v59 = [v57 initWithString_];

    [v56 v10[245]];
    [v56 v10[245]];
  }

  return v56;
}

uint64_t sub_257C242AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MAGPointAndSpeakService.__allocating_init(eventHandler:arService:textDetectionService:outputEngine:pulseFeedbackProcessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v26 = sub_257ECFD20();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_257ECF190();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = swift_allocObject();
  sub_257ECCC70();
  sub_257ECCC70();
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];
  v11 = v10;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur) = 0;
  v12 = v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
  v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine;
  *(v9 + v13) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager;
  type metadata accessor for RotationRateManager();
  v15 = swift_allocObject();
  *(v15 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v15 + 24) = 0;
  *(v9 + v14) = v15;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = 0;
  v25 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue;
  v23[4] = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF180();
  v32 = v11;
  v23[3] = sub_257C32B44(&qword_281543F30, MEMORY[0x277D85230]);
  v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  v16 = *MEMORY[0x277D85260];
  v17 = *(v5 + 104);
  v23[1] = v5 + 104;
  v18 = v24;
  v19 = v26;
  v17(v24, v16, v26);
  *(v9 + v25) = sub_257ECFD80();
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = 0;
  v25 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue;
  v23[0] = "coration.type.text";
  sub_257ECF160();
  v32 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v17(v18, *MEMORY[0x277D85268], v19);
  *(v9 + v25) = sub_257ECFD80();
  v20 = v28;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_eventHandler) = v27;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService) = v20;
  v21 = v30;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textDetectionService) = v29;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine) = v21;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor) = v31;
  return v9;
}

uint64_t MAGPointAndSpeakService.init(eventHandler:arService:textDetectionService:outputEngine:pulseFeedbackProcessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a4;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v26 = sub_257ECFD20();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v9);
  v10 = sub_257ECF190();
  MEMORY[0x28223BE20](v10 - 8);
  sub_257ECCC70();
  sub_257ECCC70();
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur) = 0;
  v12 = v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
  v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine;
  *(v6 + v13) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager;
  type metadata accessor for RotationRateManager();
  v15 = swift_allocObject();
  *(v15 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v15 + 24) = 0;
  *(v6 + v14) = v15;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = 0;
  v24 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue;
  v23[4] = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF180();
  v32 = v11;
  v23[3] = sub_257C32B44(&qword_281543F30, MEMORY[0x277D85230]);
  v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  v16 = *MEMORY[0x277D85260];
  v17 = *(v7 + 104);
  v23[1] = v7 + 104;
  v19 = v25;
  v18 = v26;
  v17(v25, v16, v26);
  *(v6 + v24) = sub_257ECFD80();
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = 0;
  v24 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue;
  v23[0] = "coration.type.text";
  sub_257ECF160();
  v32 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v17(v19, *MEMORY[0x277D85268], v18);
  *(v6 + v24) = sub_257ECFD80();
  v20 = v28;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_eventHandler) = v27;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService) = v20;
  v21 = v30;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textDetectionService) = v29;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine) = v21;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor) = v31;
  return v6;
}

uint64_t sub_257C24D74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_257C24D94, 0, 0);
}

uint64_t sub_257C24D94()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_257C24E84;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_257C24E84()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C24FB8;
  }

  else
  {

    v2 = sub_257C24FA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C24FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a3;
  v5 = sub_257ECF120();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v20[1] = *(a2 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue);
  (*(v12 + 16))(v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v20[0];
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_257C32B90;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_215;
  v18 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECF150();
  v24 = MEMORY[0x277D84F90];
  sub_257C32B44(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v10, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_257C253CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDA30();
  MEMORY[0x28223BE20](v3);
  v4 = *(a2 + 16);
  sub_257C2558C(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0);
  return sub_257ECF8D0();
}

void sub_257C2558C(uint64_t a1)
{
  v3 = v1;
  v60 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECD9D0();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_257ECD990();
  v6 = *(v61 - 8);
  v7 = MEMORY[0x28223BE20](v61);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  v14 = sub_257ECF200();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_257ECF230();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v58 = v2;
    if (qword_27F8F45B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = sub_257ECD9C0();
  __swift_project_value_buffer(v20, qword_27F8F5DC0);
  sub_257ECD980();
  v21 = sub_257ECD9A0();
  v22 = sub_257ECFDC0();
  if (sub_257ED0090())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v21, v22, v24, "HandPose", "", v23, 2u);
    MEMORY[0x259C74820](v23, -1, -1);
  }

  v25 = v61;
  (*(v6 + 16))(v11, v13, v61);
  sub_257ECDA00();
  swift_allocObject();
  sub_257ECD9F0();
  v26 = *(v6 + 8);
  v26(v13, v25);
  v27 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle];
  v57 = v26;
  if (v27 == 270.0)
  {
    v28 = 8;
  }

  else
  {
    v47 = [objc_opt_self() currentDevice];
    v48 = [v47 orientation];

    if (v48 == 4)
    {
      v28 = 3;
    }

    else if (v48 == 3)
    {
      v28 = 1;
    }

    else
    {
      v28 = 6;
    }
  }

  sub_257BE9394(MEMORY[0x277D84F90]);
  v29 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257C32B44(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v30 = sub_257ECF3C0();

  v31 = [v29 initWithCVPixelBuffer:v60 orientation:v28 options:v30];

  v32 = objc_allocWithZone(MEMORY[0x277CE2C98]);
  aBlock[4] = sub_257C32B8C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257C316F8;
  aBlock[3] = &block_descriptor_209;
  v33 = _Block_copy(aBlock);
  sub_257ECC3F0();

  v34 = [v32 initWithCompletionHandler_];
  _Block_release(v33);
  [v34 setMaximumHandCount_];
  v35 = v34;
  [v35 setRevision_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_257ED9BF0;
  *(v36 + 32) = v35;
  sub_257BD2C2C(0, &qword_27F8F5FD8);
  v37 = sub_257ECF7F0();

  aBlock[0] = 0;
  LODWORD(v29) = [v31 performRequests:v37 error:aBlock];

  if (v29)
  {
    v38 = aBlock[0];
    v39 = sub_257ECD9A0();
    v40 = v59;
    sub_257ECD9E0();
    v41 = sub_257ECFDB0();
    if (sub_257ED0090())
    {
      sub_257ECC3F0();
      v42 = v54;
      sub_257ECDA10();

      v44 = v55;
      v43 = v56;
      if ((*(v55 + 88))(v42, v56) == *MEMORY[0x277D85B00])
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v42, v43);
        v45 = "";
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = v59;
      v51 = sub_257ECD970();
      _os_signpost_emit_with_name_impl(&dword_257BAC000, v39, v41, v51, "HandPose", v45, v49, 2u);
      v52 = v49;
      v40 = v50;
      MEMORY[0x259C74820](v52, -1, -1);
    }

    else
    {

      v31 = v35;
    }

    v57(v40, v61);
  }

  else
  {
    v46 = aBlock[0];
    sub_257ECC9F0();

    swift_willThrow();
  }
}

void sub_257C25D78(void *a1, void *a2)
{
  v3 = v2;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v105 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v99 - v13;
  v14 = sub_257ECDA30();
  v15 = *(v14 - 1);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v99 - v18;
  if (a2)
  {
    v106 = v14;
    v107 = v15;
    sub_257ECD3E0();
    v20 = a2;
    v21 = sub_257ECDA20();
    v22 = sub_257ECFBD0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v102 = v6;
      v24 = v23;
      v25 = swift_slowAlloc();
      v101 = v9;
      v26 = v10;
      v27 = v7;
      v28 = v3;
      v29 = v25;
      *v24 = 138412290;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&dword_257BAC000, v21, v22, "Hand-pose request error : %@", v24, 0xCu);
      sub_257BE4084(v29, &unk_27F8F5490);
      v31 = v29;
      v3 = v28;
      v7 = v27;
      v10 = v26;
      v9 = v101;
      MEMORY[0x259C74820](v31, -1, -1);
      v32 = v24;
      v6 = v102;
      MEMORY[0x259C74820](v32, -1, -1);
    }

    else
    {
    }

    v14 = v106;
    v15 = v107;
    (*(v107 + 8))(v19, v106);
  }

  if (!a1)
  {
    goto LABEL_60;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    goto LABEL_60;
  }

  v34 = v33;
  v35 = a1;
  v36 = [v34 results];
  if (!v36)
  {

LABEL_60:
    v93 = v108;
    sub_257ECD3E0();
    v94 = sub_257ECDA20();
    v95 = sub_257ECFBD0();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = v15;
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_257BAC000, v94, v95, "No hand pose points detected", v97, 2u);
      v98 = v97;
      v15 = v96;
      MEMORY[0x259C74820](v98, -1, -1);
    }

    (*(v15 + 8))(v93, v14);
    sub_257C2EB24();
    return;
  }

  v37 = v36;
  sub_257BD2C2C(0, &qword_27F8F5FC8);
  v38 = sub_257ECF810();

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (!sub_257ED0210())
  {
    goto LABEL_59;
  }

LABEL_11:
  v100 = v7;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x259C72E20](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v39 = *(v38 + 32);
  }

  v40 = v39;
  v107 = v15;

  v41 = *MEMORY[0x277CE3028];
  aBlock[0] = 0;
  v42 = [v40 recognizedPointsForJointsGroupName:v41 error:aBlock];
  v43 = aBlock[0];
  if (!v42)
  {
    v57 = aBlock[0];
    v58 = sub_257ECC9F0();

    swift_willThrow();
    v15 = v107;
    goto LABEL_60;
  }

  v44 = v42;
  v106 = v35;
  type metadata accessor for JointName(0);
  sub_257BD2C2C(0, &qword_27F8F5FD0);
  sub_257C32B44(&qword_27F8F5038, type metadata accessor for JointName);
  v45 = sub_257ECF3D0();
  v46 = v43;

  if (!*(v45 + 16))
  {

    v15 = v107;
    goto LABEL_60;
  }

  v99 = *MEMORY[0x277CE2F98];
  v47 = sub_257C04244(v99);
  v48 = v45;
  v15 = v107;
  if ((v49 & 1) == 0)
  {

    goto LABEL_60;
  }

  [*(*(v48 + 56) + 8 * v47) confidence];
  v51 = v50;
  v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand] = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand] + 1.0;
  sub_257D22594(0);
  v52 = COERCE_DOUBLE(sub_257E5C218());
  v53 = 0.0;
  v54 = v106;
  v55 = v48;
  if ((v56 & 1) == 0)
  {
    v53 = v52;
    if (v52 >= 0.03)
    {
      if (v52 <= 0.6)
      {
        goto LABEL_20;
      }

      v75 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (!v76)
      {
        *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements] = v77;
        v78 = sub_257ECF930();
        v79 = v103;
        (*(*(v78 - 8) + 56))(v103, 1, 1, v78);
        v80 = swift_allocObject();
        v80[2] = 0;
        v80[3] = 0;
        v80[4] = v3;
        sub_257ECC3F0();
        sub_257E81524(0, 0, v79, &unk_257EDC468, v80);

LABEL_40:

        return;
      }

LABEL_65:
      __break(1u);
    }
  }

  v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback] = 0;
LABEL_20:
  [*&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer] invalidate];
  if (v53 < 0.03)
  {
    goto LABEL_39;
  }

  v101 = v9;
  v102 = v6;
  v108 = v10;
  v59 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback;
  if ((v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback] & 1) == 0 && *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage] >= 61 && *(v48 + 16))
  {
    v60 = sub_257ECF930();
    v61 = v103;
    (*(*(v60 - 8) + 56))(v103, 1, 1, v60);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v3;
    sub_257ECC3F0();
    sub_257E81524(0, 0, v61, &unk_257EDC458, v62);
  }

  v3[v59] = 1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage] = 0;
  v107 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue];
  aBlock[4] = sub_257C3298C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_194;
  v63 = _Block_copy(aBlock);
  sub_257ECC3F0();
  v64 = v104;
  sub_257ECF150();
  v109 = MEMORY[0x277D84F90];
  sub_257C32B44(&qword_281544090, MEMORY[0x277D85198]);
  v65 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  v67 = v101;
  v66 = v102;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v64, v67, v63);
  _Block_release(v63);
  v68 = v65;
  (*(v100 + 8))(v67, v66);
  (*(v105 + 8))(v64, v108);

  if (!*(v65 + 16))
  {

    return;
  }

  v69 = v99;
  sub_257C04244(v99);
  v54 = v106;
  if ((v70 & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  if (*(v68 + 16) && (v71 = sub_257C04244(v69), (v72 & 1) != 0))
  {
    v73 = *(*(v68 + 56) + 8 * v71);
    v74 = v73;
  }

  else
  {
    v73 = 0;
  }

  v81 = &v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint];
  if (v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint + 16])
  {
    if (v51 < 0.67)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v73)
  {
    v82 = *v81;
    [v73 x];
    if (vabdd_f64(v82, v83) > 0.01)
    {
      if (v51 >= 0.67)
      {
        goto LABEL_53;
      }

LABEL_52:

      goto LABEL_40;
    }

    if ((v81[2] & 1) == 0)
    {
      v84 = v81[1];
      [v73 y];
      if (v51 >= 0.67 || vabdd_f64(v84, v85) <= 0.01)
      {
LABEL_53:
        if (*(v68 + 16))
        {
          v86 = sub_257C04244(v69);
          if (v87)
          {
            v88 = *(*(v68 + 56) + 8 * v86);

            v89 = v88;
            [v89 x];
            [v89 y];

            *&v91 = CGSizeMake(v90);
            sub_257C2809C(v91, v92, 0, 0, 0, 1u, 0, 0, 0, 1);

LABEL_57:
            return;
          }
        }

LABEL_56:

        goto LABEL_57;
      }

      goto LABEL_52;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}