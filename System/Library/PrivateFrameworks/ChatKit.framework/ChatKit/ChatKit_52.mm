uint64_t sub_190CC94D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v66 = a2;
  v62 = a1;
  v60 = a4;
  v4 = sub_190D51840();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = v46 - v7;
  v55 = sub_190D51A40();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D51A50();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_190D51A20();
  v49 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v46 - v14;
  v16 = sub_190D51180();
  v58 = *(v16 - 8);
  v59 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_190D51B00();
  v56 = *(v19 - 8);
  v57 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C938);
  v22 = sub_190D51AE0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_190DD1DA0;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x1E6969A88], v22);
  v28(v27 + v24, *MEMORY[0x1E6969A98], v22);
  sub_1908B004C(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v61 = v21;
  sub_190D51A30();

  v63 = v18;
  sub_190D51140();
  v29 = v66;
  if ((v65 & 1) == 0 || (v29 = sub_190D51130(), v30 = v61, (v31 & 1) == 0))
  {
    v46[1] = v29;
    v32 = v49;
    v33 = v12;
    (*(v49 + 104))(v12, *MEMORY[0x1E69698D0], v64);
    v35 = v50;
    v34 = v51;
    v36 = v52;
    (*(v51 + 104))(v50, *MEMORY[0x1E69699C8], v52);
    v37 = v53;
    v38 = v54;
    v39 = v55;
    (*(v53 + 104))(v54, *MEMORY[0x1E6969998], v55);
    v40 = v61;
    sub_190D51A80();
    (*(v37 + 8))(v38, v39);
    (*(v34 + 8))(v35, v36);
    (*(v32 + 8))(v33, v64);
    v30 = v40;
    if ((*(v67 + 48))(v15, 1, v68) != 1)
    {
      (*(v58 + 8))(v63, v59);
      (*(v56 + 8))(v40, v57);
      return (*(v67 + 32))(v60, v15, v68);
    }

    sub_19022EEA4(v15, &unk_1EAD5E5D0);
  }

  v41 = v48;
  result = sub_190D519F0();
  if ((v62 * 60) >> 64 == (60 * v62) >> 63)
  {
    if ((60 * v62 * 60) >> 64 == (3600 * v62) >> 63)
    {
      v43 = v47;
      sub_190D51770();
      v44 = *(v67 + 8);
      result = v44(v41, v68);
      if (v65)
      {
        v45 = 0;
      }

      else
      {
        v45 = v66;
      }

      if ((v45 * 60) >> 64 == (60 * v45) >> 63)
      {
        sub_190D51770();
        v44(v43, v68);
        (*(v58 + 8))(v63, v59);
        return (*(v56 + 8))(v30, v57);
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_190CC9C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_190D51840();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51AE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D51B00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v22 - v15;
  sub_190D51AC0();
  (*(v7 + 104))(v9, *MEMORY[0x1E6969A48], v6);
  v22[1] = v2;
  sub_190D51AA0();
  (*(v7 + 8))(v9, v6);
  v17 = *(v11 + 8);
  v17(v13, v10);
  v18 = *(v4 + 48);
  v19 = v3;
  if (v18(v16, 1, v3) != 1)
  {
    return (*(v4 + 32))(v24, v16, v3);
  }

  sub_190D51AC0();
  v20 = v23;
  sub_190D519F0();
  v17(v13, v10);
  sub_190D51770();
  (*(v4 + 8))(v20, v19);
  result = (v18)(v16, 1, v19);
  if (result != 1)
  {
    return sub_19022EEA4(v16, &unk_1EAD5E5D0);
  }

  return result;
}

id CKSendLaterPluginInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_190D51840();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  sub_1902188FC(0, &qword_1EAD627E8);
  v14 = sub_190D57D10();
  if (v14 && ((*(v8 + 56))(v6, 1, 1, v7), sub_190CCA618(&qword_1EAD627F0), sub_190D585E0(), (*(v8 + 48))(v6, 1, v7) != 1))
  {
    v17 = *(v8 + 32);
    v17(v10, v6, v7);
    v17(v13, v10, v7);
    v18 = sub_190D51780();
    v19 = [v2 initWithSelectedDate_];

    v20 = qword_1EAD52048;
    v16 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9E658);
    v22 = sub_190D53020();
    v23 = sub_190D57680();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_19020E000, v22, v23, "init(coder:) got a previously selected date. Firing update timer immediately to ensure encoded date is within allowable range.", v24, 2u);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    v15 = v16;
    sub_190CC7534();

    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v15 = [v1 init];

    v16 = v14;
  }

  return v15;
}

Swift::Void __swiftcall CKSendLaterPluginInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CKSendLaterPluginInfo__selectedDate);
  v4 = sub_190D56ED0();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t sub_190CCA618(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_190D51840();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectionCheckmarkOverlayModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectionCheckmarkOverlayModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_190CCA728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  if (v2[1] == 1)
  {
    v7 = *v2;
    sub_190D525C0();
    LOBYTE(v16) = sub_190D552B0();
    sub_190D539C0();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v16;
  }

  else
  {
    v16 = 0;
    v9 = 0;
    v7 = 2;
    v11 = 0;
    v13 = 0;
    v15 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62860);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62868);
  v19 = a2 + *(result + 36);
  *v19 = v7;
  *(v19 + 8) = v16;
  *(v19 + 16) = v9;
  *(v19 + 24) = v11;
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  *(v19 + 48) = 0;
  *(v19 + 56) = v5;
  *(v19 + 64) = v6;
  return result;
}

unint64_t sub_190CCA840()
{
  result = qword_1EAD62870;
  if (!qword_1EAD62870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62868);
    sub_190233640(&qword_1EAD62878, &qword_1EAD62860);
    sub_190233640(&qword_1EAD62880, &qword_1EAD62888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62870);
  }

  return result;
}

id sub_190CCA924()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EAD45478 = v0;
  return result;
}

id sub_190CCA99C(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    v3[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
    return [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_190CCAA1C()
{
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190CCAA60(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v1[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*sub_190CCAAE8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190CCAB7C;
}

void sub_190CCAB7C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[3];
    v6[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_190CCABE8()
{
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_190CCAC2C(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (floor(a1) != floor(v5))
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration) = 1;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result setNeedsLayout];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*sub_190CCACD4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190CCAD68;
}

void sub_190CCAD68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (floor(v2) != floor(v5))
  {
    *(v1[4] + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setNeedsLayout];
      swift_unknownObjectRelease();
    }
  }

  free(v1);
}

id sub_190CCAE00()
{
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_190CCAE54(void *a1)
{
  sub_190CCC158(a1);
}

void (*sub_190CCAE8C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_190CCAF28;
}

void sub_190CCAF28(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = sub_190D56F10();
  v11 = v10;
  v14 = v9 == sub_190D56F10() && v11 == v12;
  if (a2)
  {
    if (v14)
    {
      v15 = v4;
    }

    else
    {
      v16 = sub_190D58760();
      v17 = v4;

      if ((v16 & 1) == 0)
      {
        v18 = v3[4];
        v18[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
        [v18 setNeedsLayout];
      }

      v8 = v17;
    }

    v8 = *v5;
  }

  else if (v14)
  {
  }

  else
  {
    v19 = sub_190D58760();
    v20 = v4;

    if ((v19 & 1) == 0)
    {
      v21 = v3[4];
      v21[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
      [v21 setNeedsLayout];
    }

    v8 = v20;
  }

  free(v3);
}

void *sub_190CCB0B8()
{
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190CCB104(id a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      sub_1902495E8();
      a1 = a1;
      v6 = v4;
      v7 = sub_190D57D90();

      if (v7)
      {

        v4 = v6;
LABEL_10:

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    v1[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
    [v1 setNeedsLayout];

    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }
}

void (*sub_190CCB1EC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_190CCB288;
}

void sub_190CCB288(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_1902495E8();
        v5 = v3;
        v9 = v8;
        v10 = sub_190D57D90();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    v11 = v2[4];
    v11[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
    [v11 setNeedsLayout];

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  sub_190CCB104(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

id AudioMessageRecordingAppendButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *AudioMessageRecordingAppendButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
  v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration] = 0;
  v10 = *MEMORY[0x1E69DDD28];
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle] = *MEMORY[0x1E69DDD28];
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AudioMessageRecordingAppendButton();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 addSubview_];
  return v12;
}

id AudioMessageRecordingAppendButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_190CCB59C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudioMessageRecordingAppendButton();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton];
  [v0 bounds];
  [v1 bounds];
  [v1 setBounds_];
  [v0 bounds];
  MidX = CGRectGetMidX(v4);
  [v0 bounds];
  [v1 setCenter_];
  sub_190CCB724();
}

void sub_190CCB724()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v48 - v6;
  v7 = sub_190D57F40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_190D57E10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_190D57FB0();
  v15 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] != 1)
  {
    return;
  }

  v48 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration;
  sub_190D57F50();
  (*(v12 + 104))(v14, *MEMORY[0x1E69DC508], v11);
  sub_190D57E20();
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC560], v7);
  sub_190D57E00();
  v18 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor;
  swift_beginAccess();
  v19 = *&v1[v18];
  sub_190D57F00();
  v20 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  swift_beginAccess();
  if (v1[v20] == 1)
  {
    v21 = sub_190D56ED0();
    v22 = [objc_opt_self() systemImageNamed_];

    if (!v22)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_190D57F60();
    v23 = [objc_opt_self() quaternarySystemFillColor];
    sub_190D57EF0();
    v24 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle;
    swift_beginAccess();
    v25 = *&v1[v24];
    v26 = objc_opt_self();
    v27 = [v26 configurationWithTextStyle:v25 scale:1];
    v28 = [v26 configurationWithWeight_];
    v29 = [v27 configurationByApplyingConfiguration_];

    sub_190D57DD0();
    sub_190D57E30();
    v30 = sub_190D57E50();
    *(v31 + 8) = *(v31 + 8) + -3.0;
    v30(v51, 0);
  }

  else
  {
    v32 = [objc_opt_self() clearColor];
    sub_190D57EF0();
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    sub_190D57F60();
    sub_190D57E30();
    sub_190D57E60();
  }

  v33 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
  swift_beginAccess();
  if ((~*&v1[v33] & 0x7FF0000000000000) != 0)
  {
    v34 = [objc_opt_self() sharedBehaviors];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 isAccessibilityPreferredContentSizeCategory];

      if (!v36 || (v1[v20] & 1) == 0)
      {
        if (qword_1EAD45470 != -1)
        {
          swift_once();
        }

        v37 = [qword_1EAD45478 stringFromTimeInterval_];
        if (v37)
        {
          v38 = v37;
          sub_190D56F10();
        }

        sub_190D57F80();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v39 = v49;
        sub_190D53490();
        v40 = sub_190D53480();
        (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
        sub_190D57F20();
      }

      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_15:
  v41 = *&v1[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton];
  v42 = v50;
  (*(v15 + 16))(v4, v17, v50);
  (*(v15 + 56))(v4, 0, 1, v42);
  sub_190D57FE0();
  [v41 setUserInteractionEnabled_];
  v43 = [v41 titleLabel];
  if (v43)
  {
    v44 = v43;
    [v43 setNumberOfLines_];
  }

  [v41 setSemanticContentAttribute_];
  if (v1[v20] == 1 && (v45 = [v1 traitCollection], v46 = objc_msgSend(v45, sel_isTranscriptBackgroundActive), v45, (v46 & 1) != 0))
  {
    v47 = &selRef___ck_applyPortalGlassEffect;
  }

  else
  {
    v47 = &selRef___ck_removePortalGlassEffect;
  }

  [v41 *v47];
  (*(v15 + 8))(v17, v42);
  v1[v48] = 0;
}

id sub_190CCBEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D51290();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v6 = result;
    [result audioBalloonTimeFont];

    sub_1908DD4D0();
    sub_190D512A0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor;
      v9 = Strong;
      swift_beginAccess();
      v10 = *&v9[v8];
    }

    sub_190CCC684();
    return sub_190D512A0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CCC030(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = *(v4 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v8 *a4];

  return swift_unknownObjectRelease();
}

id AudioMessageRecordingAppendButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioMessageRecordingAppendButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190CCC158(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = sub_190D56F10();
  v7 = v6;
  if (v5 == sub_190D56F10() && v7 == v8)
  {
    v12 = a1;
  }

  else
  {
    v10 = sub_190D58760();
    v11 = a1;

    if ((v10 & 1) == 0)
    {
      v1[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
      [v1 setNeedsLayout];
    }
  }
}

void _s7ChatKit33AudioMessageRecordingAppendButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration) = 1;
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle) = *MEMORY[0x1E69DDD28];
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor) = 0;
  sub_190D58510();
  __break(1u);
}

unint64_t sub_190CCC684()
{
  result = qword_1EAD46330;
  if (!qword_1EAD46330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46330);
  }

  return result;
}

void sub_190CCC6D8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_190D51840();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9ViewModelVMa(0);
  sub_190D50450();
  *a3 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628D8);
  a3[1] = sub_190D56F50();
  a3[2] = v10;
  v11 = [a2 IMChatItem];
  if (!v11)
  {
    __break(1u);
    goto LABEL_39;
  }

  v12 = v11;
  v80 = v6;
  v13 = [v11 serviceName];

  if (v13)
  {
    v14 = sub_190D56F10();
    v16 = v15;

    v17 = sub_190D56ED0();
    v18 = [objc_opt_self() serviceWithName_];

    if (!v18)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = [v18 __ck_displayColor];

    v20 = [objc_opt_self() sharedBehaviors];
    if (!v20)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v21 = v20;
    v22 = [v20 theme];

    if (!v22)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v23 = [v22 recipientTextColorForColorType_];

    if (!v23)
    {
      v23 = [objc_opt_self() labelColor];
    }

    a3[3] = v14;
    a3[4] = v16;
    a3[5] = v23;
  }

  else
  {
    a3[3] = 0;
    a3[4] = 0;
    a3[5] = 0;
  }

  v24 = [a2 IMChatItem];
  if (!v24)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = v24;
  v26 = &selRef_green_chevronImage;
  v27 = [v24 guid];

  if (v27)
  {
    v28 = sub_190D56F10();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  a3[6] = v28;
  a3[7] = v30;
  v31 = [a2 sender];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 name];
    if (v33)
    {
      v34 = v33;
      v35 = sub_190D56F10();
      v37 = v36;

      v38 = [v32 normalizedID];
      if (v38)
      {
        v39 = v38;
        v40 = sub_190D56F10();
        v42 = v41;

        ObjectType = v35;
        v82 = v37;
        MEMORY[0x193AF28B0](10272, 0xE200000000000000);
        v43 = v40;
        v26 = &selRef_green_chevronImage;
        MEMORY[0x193AF28B0](v43, v42);

        MEMORY[0x193AF28B0](41, 0xE100000000000000);

        v44 = v82;
        a3[8] = ObjectType;
        a3[9] = v44;
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  a3[8] = 0;
  a3[9] = 0;
LABEL_21:
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = v45;
    v47 = qword_1EAD52058;
    v48 = a2;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = qword_1EAD628D0;
    v50 = [v46 time];
    if (v50)
    {
      v51 = v50;
      sub_190D517E0();

      v52 = sub_190D51780();
      (*(v7 + 8))(v9, v80);
      v53 = [v49 stringFromDate_];

      v54 = sub_190D56F10();
      v56 = v55;

      a3[10] = v54;
      a3[11] = v56;
      goto LABEL_27;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  a3[10] = 0;
  a3[11] = 0;
LABEL_27:
  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (v57)
  {
    v58 = v57;
    v59 = a2;
    v60 = [v58 text];
    if (v60)
    {
      v61 = v60;
      v62 = [v60 description];

      v63 = sub_190D56F10();
      v65 = v64;

      a3[21] = v63;
      a3[22] = v65;
      goto LABEL_31;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a3[21] = 0;
  a3[22] = 0;
LABEL_31:
  a3[12] = sub_190CCCF10(a2);
  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {
LABEL_36:
    v77 = 0;
    v73 = 0;
    v74 = 0;
    v76 = 0;
    goto LABEL_37;
  }

  v67 = v66;
  v68 = a2;
  v69 = [v67 tapbacksChatItem];
  if (!v69)
  {

    goto LABEL_36;
  }

  v70 = v69;
  v71 = [v69 v26[53]];
  if (v71)
  {
    v72 = v71;
    v73 = 0x8000000190E7F8A0;
    v74 = sub_190D56F10();
    v76 = v75;

    v77 = 0xD000000000000015;
LABEL_37:
    a3[13] = v77;
    a3[14] = v73;
    a3[15] = v74;
    a3[16] = v76;
    a3[17] = sub_190CCD390(a2);
    a3[18] = sub_190CCDE04(a2);
    a3[20] = sub_190CCE350(a2);
    v78 = sub_190CCED9C(a2);

    a3[19] = v78;
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_190CCCD30@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
  return sub_190D52690();
}

uint64_t sub_190CCCD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_190D518A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_190CCCDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_190D518A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_190CCCE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_190D518A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_190CCCE98()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_190D56ED0();
  [v0 setDateFormat_];

  qword_1EAD628D0 = v0;
}

objc_class *sub_190CCCF10(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    result = [v3 balloonViewClass];
    if (!result)
    {
      goto LABEL_46;
    }

    v6 = NSStringFromClass(result);
    v7 = sub_190D56F10();
    v9 = v8;

    v59 = v7;
    v60 = v9;
    v10 = sub_190D570F0();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 4271950;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD86E0;
  result = [a1 cellClass];
  if (result)
  {
    v14 = NSStringFromClass(result);
    sub_190D56F10();

    v15 = sub_190D570F0();
    *(v13 + 32) = 0x436E6F6F6C6C6162;
    *(v13 + 40) = 0xEB000000006C6C65;
    *(v13 + 48) = v15;
    *(v13 + 56) = v16;
    *(v13 + 64) = 0xD000000000000010;
    *(v13 + 72) = 0x8000000190E5DC40;
    *(v13 + 80) = v10;
    *(v13 + 88) = v12;
    v59 = 0;
    v60 = 0xE000000000000000;
    v17 = [a1 canCopy];
    v18 = v17 == 0;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v19, v20);

    v21 = v59;
    v22 = v60;
    *(v13 + 96) = 0x79706F436E6163;
    *(v13 + 104) = 0xE700000000000000;
    *(v13 + 112) = v21;
    *(v13 + 120) = v22;
    v59 = 0;
    v60 = 0xE000000000000000;
    v23 = [a1 canAttachStickers];
    v24 = v23 == 0;
    if (v23)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v25, v26);

    v27 = v59;
    v28 = v60;
    *(v13 + 128) = 0xD000000000000011;
    *(v13 + 136) = 0x8000000190E76880;
    *(v13 + 144) = v27;
    *(v13 + 152) = v28;
    v59 = 0;
    v60 = 0xE000000000000000;
    v29 = [a1 canEditMessageText];
    v30 = v29 == 0;
    if (v29)
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    if (v30)
    {
      v32 = 0xE500000000000000;
    }

    else
    {
      v32 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v31, v32);

    v33 = v59;
    v34 = v60;
    *(v13 + 160) = 0xD000000000000012;
    *(v13 + 168) = 0x8000000190E7FC70;
    *(v13 + 176) = v33;
    *(v13 + 184) = v34;
    v59 = 0;
    v60 = 0xE000000000000000;
    v35 = [a1 canInlineReply];
    v36 = v35 == 0;
    if (v35)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (v36)
    {
      v38 = 0xE500000000000000;
    }

    else
    {
      v38 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v37, v38);

    v39 = v59;
    v40 = v60;
    strcpy((v13 + 192), "canInlineReply");
    *(v13 + 207) = -18;
    *(v13 + 208) = v39;
    *(v13 + 216) = v40;
    v59 = 0;
    v60 = 0xE000000000000000;
    v41 = [a1 canRetract];
    v42 = v41 == 0;
    if (v41)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v42)
    {
      v44 = 0xE500000000000000;
    }

    else
    {
      v44 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v43, v44);

    v45 = v59;
    v46 = v60;
    *(v13 + 224) = 0x61727465526E6163;
    *(v13 + 232) = 0xEA00000000007463;
    *(v13 + 240) = v45;
    *(v13 + 248) = v46;
    v61 = 0;
    v62 = 0xE000000000000000;
    v47 = [a1 canSendTapbacks];
    v48 = v47 == 0;
    if (v47)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    if (v48)
    {
      v50 = 0xE500000000000000;
    }

    else
    {
      v50 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v49, v50);

    v51 = v61;
    v52 = v62;
    *(v13 + 256) = 0x54646E65536E6163;
    *(v13 + 264) = 0xEF736B6361627061;
    *(v13 + 272) = v51;
    *(v13 + 280) = v52;
    [a1 balloonDescriptor];
    result = NSStringFromBalloonDescriptor(&v59);
    if (result)
    {
      v53 = result;
      v54 = sub_190D56F10();
      v56 = v55;

      v59 = v54;
      v60 = v56;
      v57 = sub_190D570F0();
      *(v13 + 288) = 0xD000000000000011;
      *(v13 + 296) = 0x8000000190E7FC90;
      *(v13 + 304) = v57;
      *(v13 + 312) = v58;
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_190CCD390(void *a1)
{
  v2 = _s9ViewModelV7TapbackVMa(0);
  v100 = *(v2 - 8);
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v88 - v6;
  v103 = sub_190D51840();
  v8 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v10;
  v12 = a1;
  v13 = [v11 tapbacksChatItem];
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = v13;
  v15 = [v13 acknowledgments];
  if (!v15)
  {
    goto LABEL_73;
  }

  v16 = v15;
  sub_1902188FC(0, &qword_1EAD5E5E0);
  v17 = sub_190D57180();

  if (v17 >> 62)
  {
LABEL_68:
    v18 = v17;
    v19 = sub_190D581C0();
    if (v19)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

  v18 = v17;
  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_69:

    v21 = MEMORY[0x1E69E7CC0];

    return v21;
  }

LABEL_6:
  v88 = v14;
  v89 = v12;
  v20 = 0;
  v14 = v18;
  v104 = v18 & 0xC000000000000001;
  v94 = v18 & 0xFFFFFFFFFFFFFF8;
  v99 = (v8 + 8);
  v93 = 0x8000000190E7FBF0;
  v92 = 0x8000000190E7FC10;
  v95 = 0x8000000190E7FC30;
  v90 = 0x8000000190E7FC50;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = &selRef_sendCustomAcknowledgementMessage_;
  v97 = v14;
  v98 = v4;
  v96 = v19;
  while (1)
  {
    v114 = v21;
    if (v104)
    {
      v23 = MEMORY[0x193AF3B90](v20, v14);
    }

    else
    {
      if (v20 >= *(v94 + 16))
      {
        goto LABEL_67;
      }

      v23 = *(v14 + v20 + 4);
    }

    v24 = v23;
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v25 = [v23 tapback];
    if (v25)
    {
      break;
    }

    v21 = v114;
LABEL_8:
    ++v20;
    if (v8 == v19)
    {

      return v21;
    }
  }

  v17 = v25;
  v113 = v20 + 1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62910);
  v26 = sub_190D56F50();
  v111 = v27;
  v112 = v26;
  if (qword_1EAD52058 != -1)
  {
    swift_once();
  }

  v28 = qword_1EAD628D0;
  v29 = v24;
  v30 = [v29 time];
  if (!v30)
  {
    goto LABEL_72;
  }

  v31 = v30;
  v32 = v102;
  sub_190D517E0();

  v33 = sub_190D51780();
  (*v99)(v32, v103);
  v34 = [v28 stringFromDate_];

  v35 = sub_190D56F10();
  v109 = v36;
  v110 = v35;

  v37 = [v29 guid];
  if (v37)
  {
    v38 = v37;
    v39 = sub_190D56F10();
    v108 = v40;
  }

  else
  {
    v39 = 0x6E776F6E6B6E557BLL;
    v108 = 0xEE007D4449554720;
  }

  v41 = [v29 v22[69]];
  if (v41)
  {
    v42 = v41;
    v107 = v39;
    v43 = [v41 name];

    if (v43)
    {
      v44 = sub_190D56F10();
      v46 = v45;
    }

    else
    {
      v44 = 0xD000000000000014;
      v46 = v93;
    }

    v47 = [v29 v22[69]];

    if (!v47)
    {
      goto LABEL_71;
    }

    v48 = [v47 normalizedID];

    if (v48)
    {
      v49 = sub_190D56F10();
      v51 = v50;
    }

    else
    {
      v49 = 0xD000000000000016;
      v51 = v92;
    }

    ObjectType = v44;
    v116 = v46;
    MEMORY[0x193AF28B0](10272, 0xE200000000000000);
    MEMORY[0x193AF28B0](v49, v51);

    MEMORY[0x193AF28B0](41, 0xE100000000000000);
    v53 = ObjectType;
    v52 = v116;
    v54 = [v29 fileTransferGUIDs];
    if (v54)
    {
      v55 = v54;
      v56 = sub_190D57180();

      if (v56[2])
      {
        v57 = v56[4];
        v105 = v56[5];
        v106 = v57;
        sub_190D52690();
      }

      else
      {
        v106 = 0xD000000000000011;
        v105 = v95;
      }
    }

    else
    {
      v106 = 0xD000000000000011;
      v105 = v95;
    }

    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      v59 = v58;
      v60 = v52;
      v61 = v53;
      v62 = v17;
      v63 = [v59 associatedMessageEmoji];
      v64 = sub_190D56F10();
      v66 = v65;

      v53 = v61;
      v67 = 0;
    }

    else
    {
      objc_opt_self();
      v76 = swift_dynamicCastObjCClass();
      if (v76)
      {
        v77 = v76;
        v60 = v52;
        v78 = v17;
        v79 = [v77 associatedMessageType];
        if (v79 > 2002)
        {
          v68 = v97;
          v4 = v98;
          switch(v79)
          {
            case 2003:

              v67 = 0;
              v66 = 0xE200000000000000;
              v64 = 24936;
              break;
            case 2004:

              v67 = 0;
              v64 = 0x74616D616C637865;
              v66 = 0xEB000000006E6F69;
              break;
            case 2005:

              v67 = 0;
              v64 = 0x6E6F697473657571;
              v66 = 0xEC0000006B72614DLL;
              break;
            default:
              goto LABEL_74;
          }
        }

        else
        {
          v68 = v97;
          v4 = v98;
          switch(v79)
          {
            case 2000:

              v67 = 0;
              v66 = 0xE500000000000000;
              v64 = 0x7472616568;
              break;
            case 2001:

              v67 = 0;
              v66 = 0xE800000000000000;
              v64 = 0x705573626D756874;
              break;
            case 2002:

              v67 = 0;
              v66 = 0xEA00000000006E77;
              v64 = 0x6F4473626D756874;
              break;
            default:
              goto LABEL_74;
          }
        }

        goto LABEL_38;
      }

      v60 = v52;
      objc_opt_self();
      v80 = swift_dynamicCastObjCClass();
      if (v80)
      {
        v81 = v80;
        v91 = v17;
        v82 = v53;
        v83 = [v81 stickerIdentifier];
        v64 = sub_190D56F10();
        v66 = v84;

        v85 = [v81 commSafetySensitivityState];
        v86 = v85 == 0;
        v53 = v82;
        v67 = !v86;
      }

      else
      {
        v67 = 0;
        v64 = 0xD000000000000016;
        v66 = v90;
      }
    }

    v68 = v97;
    v4 = v98;
LABEL_38:
    v69 = v111;
    *v7 = v112;
    *(v7 + 1) = v69;
    v70 = v108;
    *(v7 + 2) = v107;
    *(v7 + 3) = v70;
    *(v7 + 4) = v64;
    *(v7 + 5) = v66;
    v71 = v109;
    *(v7 + 6) = v110;
    *(v7 + 7) = v71;
    *(v7 + 8) = v53;
    *(v7 + 9) = v60;
    v72 = v105;
    *(v7 + 10) = v106;
    *(v7 + 11) = v72;
    v7[96] = v67;
    sub_190D50450();
    sub_190CCFC18(v7, v4, _s9ViewModelV7TapbackVMa);
    v73 = v114;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_190836734(0, v73[2] + 1, 1, v73);
    }

    v12 = v73[2];
    v74 = v73[3];
    v75 = v73;
    if (v12 >= v74 >> 1)
    {
      v75 = sub_190836734(v74 > 1, v12 + 1, 1, v73);
    }

    sub_190CCFC80(v7, _s9ViewModelV7TapbackVMa);
    *(v75 + 16) = v12 + 1;
    v21 = v75;
    sub_190CCFCE0(v4, v75 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v12, _s9ViewModelV7TapbackVMa);
    v19 = v96;
    v22 = &selRef_sendCustomAcknowledgementMessage_;
    v14 = v68;
    v8 = v113;
    goto LABEL_8;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_190D58510();
  __break(1u);
  return result;
}

void *sub_190CCDE04(void *a1)
{
  v2 = _s9ViewModelV7StickerVMa(0);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 visibleAssociatedMessageChatItems];
    if (v11)
    {
      v12 = v11;
      sub_1902188FC(0, &qword_1EAD44F88);
      v13 = sub_190D57180();

      if (v13 >> 62)
      {
LABEL_30:
        v14 = sub_190D581C0();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          v15 = 0;
          v58 = v13 & 0xC000000000000001;
          v52 = v13 & 0xFFFFFFFFFFFFFF8;
          v50 = v10;
          v51 = 0x8000000190E7FBF0;
          v16 = MEMORY[0x1E69E7CC0];
          v54 = v13;
          v55 = v4;
          v53 = v14;
          while (1)
          {
            if (v58)
            {
              v17 = MEMORY[0x193AF3B90](v15, v13);
            }

            else
            {
              if (v15 >= *(v52 + 16))
              {
                goto LABEL_29;
              }

              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            v19 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (v20)
            {
              v21 = v20;
              v22 = v18;
              result = [v21 sender];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v24 = result;
              v25 = [result name];

              if (v25)
              {
                v26 = sub_190D56F10();
                v63 = v27;
                v64 = v26;
              }

              else
              {
                v64 = 0xD000000000000014;
                v63 = v51;
              }

              v68 = v16;
              v28 = [v21 sticker];
              ObjectType = swift_getObjectType();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62908);
              v29 = sub_190D56F50();
              v61 = v30;
              v62 = v29;
              v31 = [v21 transferGUID];
              v32 = sub_190D56F10();
              v59 = v33;
              v60 = v32;

              v34 = [v21 isReaction];
              v35 = [v21 stickerPackName];
              v66 = v22;
              v67 = v15 + 1;
              v65 = v28;
              if (v35)
              {
                v36 = v35;
                v37 = sub_190D56F10();
                v39 = v38;
              }

              else
              {
                v37 = 0x776F6E6B6E55207BLL;
                v39 = 0xEB000000007D206ELL;
              }

              v40 = [v21 stickerUserInfo];
              sub_190D56D90();

              v41 = sub_190D56DA0();
              v43 = v42;

              v44 = v61;
              *v7 = v62;
              *(v7 + 1) = v44;
              v45 = v59;
              *(v7 + 2) = v60;
              *(v7 + 3) = v45;
              v7[32] = v34;
              v46 = v63;
              *(v7 + 5) = v64;
              *(v7 + 6) = v46;
              *(v7 + 7) = v37;
              *(v7 + 8) = v39;
              *(v7 + 9) = v41;
              *(v7 + 10) = v43;
              sub_190D50450();
              v10 = v55;
              sub_190CCFC18(v7, v55, _s9ViewModelV7StickerVMa);
              v16 = v68;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_19083675C(0, v16[2] + 1, 1, v16);
              }

              v14 = v53;
              v13 = v54;
              v19 = v67;
              v4 = v16[2];
              v47 = v16[3];
              if (v4 >= v47 >> 1)
              {
                v16 = sub_19083675C(v47 > 1, v4 + 1, 1, v16);
              }

              v48 = v66;

              sub_190CCFC80(v7, _s9ViewModelV7StickerVMa);
              v16[2] = v4 + 1;
              sub_190CCFCE0(v10, v16 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v4, _s9ViewModelV7StickerVMa);
            }

            else
            {
            }

            ++v15;
            if (v19 == v14)
            {

              return v16;
            }
          }
        }
      }
    }

    else
    {
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_190CCE350(void *a1)
{
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v106 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v106 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v106 - v20;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  result = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v125 = MEMORY[0x1E69E7CC0];
    v24 = a1;
    v25 = [v22 IMChatItem];
    if (v25)
    {
      v26 = v25;
      v119 = v8;
      v27 = [v25 dataSource];
      if (v27)
      {
        v28 = v27;
        v112 = v26;
        v113 = v24;
        v111 = v11;
        v108 = v5;
        v118 = v3;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_190DDD0E0;
        result = [v28 bundleID];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v30 = result;
        v31 = sub_190D56F10();
        v33 = v32;

        *(inited + 32) = 0xD000000000000013;
        *(inited + 40) = 0x8000000190E7FAF0;
        *(inited + 48) = v31;
        *(inited + 56) = v33;
        v123 = 0;
        v124 = 0xE000000000000000;
        v34 = [v28 url];
        v35 = v28;
        if (v34)
        {
          v36 = v34;
          sub_190D515B0();

          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        v38 = v118;
        v39 = v119;
        v40 = *(v118 + 56);
        v109 = v118 + 56;
        v116 = v40;
        v40(v18, v37, 1, v2);
        sub_190844E18(v18, v21);
        v114 = *(v38 + 48);
        v115 = v38 + 48;
        v41 = v114(v21, 1, v2);
        v110 = v2;
        if (v41 == 1)
        {
          sub_19084CF50(v21);
          v42 = 0xE300000000000000;
          v43 = 7104878;
        }

        else
        {
          v44 = sub_190D51520();
          v42 = v45;
          (*(v38 + 8))(v21, v2);
          v43 = v44;
        }

        MEMORY[0x193AF28B0](v43, v42);

        v46 = v123;
        v47 = v124;
        strcpy((inited + 64), "dataSource.url");
        *(inited + 79) = -18;
        *(inited + 80) = v46;
        *(inited + 88) = v47;
        v48 = [v35 wantsStatusItem];
        v49 = 1702195828;
        if (!v48)
        {
          v49 = 0x65736C6166;
        }

        v50 = 0xE500000000000000;
        if (v48)
        {
          v50 = 0xE400000000000000;
        }

        *(inited + 96) = 0xD00000000000001ALL;
        *(inited + 104) = 0x8000000190E7FB10;
        *(inited + 112) = v49;
        *(inited + 120) = v50;
        v51 = [v35 attachmentGUIDs];
        if (v51)
        {
          v52 = v51;
          v53 = sub_190D57180();
        }

        else
        {
          v53 = 0;
        }

        v123 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628F8);
        v54 = sub_190D56F50();
        *(inited + 128) = 0xD000000000000017;
        *(inited + 136) = 0x8000000190E7FB30;
        *(inited + 144) = v54;
        *(inited + 152) = v55;
        sub_190CAA298(inited);
        v56 = [v35 pluginPayload];
        if (v56)
        {
          v106 = v56;
          v57 = [v56 attachments];
          if (v57)
          {
            v58 = v57;
            v59 = sub_190D57180();
          }

          else
          {
            v59 = MEMORY[0x1E69E7CC0];
          }

          v107 = v35;
          v60 = *(v59 + 16);
          if (v60)
          {
            v61 = v59 + 32;
            v62 = MEMORY[0x1E69E7CC0];
            do
            {
              sub_19021834C(v61, &v123);
              sub_19021834C(&v123, &v122);
              v63 = sub_190D56F50();
              v65 = v64;
              __swift_destroy_boxed_opaque_existential_0(&v123);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = sub_1908354D4(0, *(v62 + 2) + 1, 1, v62);
              }

              v67 = *(v62 + 2);
              v66 = *(v62 + 3);
              if (v67 >= v66 >> 1)
              {
                v62 = sub_1908354D4((v66 > 1), v67 + 1, 1, v62);
              }

              *(v62 + 2) = v67 + 1;
              v68 = &v62[16 * v67];
              *(v68 + 4) = v63;
              *(v68 + 5) = v65;
              v61 += 32;
              --v60;
            }

            while (v60);

            v38 = v118;
            v39 = v119;
          }

          else
          {

            v62 = MEMORY[0x1E69E7CC0];
          }

          v69 = swift_initStackObject();
          *(v69 + 16) = xmmword_190DD1DA0;
          v70 = v106;
          v123 = [v106 text];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62900);
          v71 = sub_190D56F50();
          *(v69 + 32) = 0xD000000000000012;
          *(v69 + 40) = 0x8000000190E7FBB0;
          *(v69 + 48) = v71;
          *(v69 + 56) = v72;
          v123 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
          sub_19085CD58();
          v73 = sub_190D56DF0();
          v75 = v74;

          *(v69 + 64) = 0xD000000000000019;
          *(v69 + 72) = 0x8000000190E7FBD0;
          *(v69 + 80) = v73;
          *(v69 + 88) = v75;
          sub_190CAA298(v69);

          v35 = v107;
        }

        v76 = [v35 richLinkMetadata];
        if (v76)
        {
          v77 = v76;
          v78 = swift_initStackObject();
          *(v78 + 16) = xmmword_190DD9C20;
          v79 = [v77 URL];
          if (v79)
          {
            v80 = v120;
            v81 = v79;
            sub_190D515B0();

            v82 = 0;
            v83 = v110;
          }

          else
          {
            v82 = 1;
            v83 = v110;
            v80 = v120;
          }

          v116(v80, v82, 1, v83);
          v84 = v121;
          sub_190844E18(v80, v121);
          if (v114(v84, 1, v83))
          {
            sub_19084CF50(v84);
            v85 = 0xE300000000000000;
            v86 = 7104878;
          }

          else
          {
            v87 = v35;
            v88 = v108;
            (*(v38 + 16))(v108, v84, v83);
            sub_19084CF50(v84);
            v86 = sub_190D51520();
            v85 = v89;
            v90 = v88;
            v35 = v87;
            v39 = v119;
            (*(v38 + 8))(v90, v83);
          }

          *(v78 + 32) = 0xD000000000000010;
          *(v78 + 40) = 0x8000000190E7FB50;
          *(v78 + 48) = v86;
          *(v78 + 56) = v85;
          v91 = [v77 originalURL];
          if (v91)
          {
            v92 = v91;
            sub_190D515B0();

            v93 = 0;
          }

          else
          {
            v93 = 1;
          }

          v116(v39, v93, 1, v83);
          v94 = v111;
          sub_190844E18(v39, v111);
          if (v114(v94, 1, v83))
          {
            sub_19084CF50(v94);
            v95 = 0xE300000000000000;
            v96 = 7104878;
          }

          else
          {
            v97 = v35;
            v98 = v108;
            (*(v38 + 16))(v108, v94, v83);
            sub_19084CF50(v94);
            v96 = sub_190D51520();
            v95 = v99;
            v100 = v98;
            v35 = v97;
            (*(v38 + 8))(v100, v83);
          }

          v101 = 7104878;
          *(v78 + 64) = 0xD000000000000018;
          *(v78 + 72) = 0x8000000190E7FB70;
          *(v78 + 80) = v96;
          *(v78 + 88) = v95;
          v102 = [v77 title];
          if (v102)
          {
            v103 = v102;
            v101 = sub_190D56F10();
            v105 = v104;
          }

          else
          {
            v105 = 0xE300000000000000;
          }

          *(v78 + 96) = 0xD000000000000012;
          *(v78 + 104) = 0x8000000190E7FB90;
          *(v78 + 112) = v101;
          *(v78 + 120) = v105;
          sub_190CAA298(v78);
        }

        else
        {
        }

        return v125;
      }
    }

    return v125;
  }

  return result;
}

uint64_t sub_190CCED9C(void *a1)
{
  v174 = *MEMORY[0x1E69E9840];
  v2 = sub_190D518A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v170 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v153 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v153 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v153 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = v17;
  v166 = a1;
  v19 = [v18 transferGUID];
  v20 = sub_190D56F10();
  v163 = v21;
  v164 = v20;

  v22 = [v18 mediaObject];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628E0);
  v23 = sub_190D56F50();
  v161 = v24;
  v162 = v23;
  v171 = v22;
  if ([v22 balloonViewClass])
  {
    ObjectType = swift_getObjCClassMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FB0);
    v160[0] = sub_190D56F50();
    v160[1] = v25;
  }

  else
  {
    BYTE5(v160[1]) = 0;
    HIWORD(v160[1]) = -5120;
    strcpy(v160, "{ unknown }}");
  }

  v27 = [v171 fileURL];
  if (v27)
  {
    v28 = v27;
    sub_190D515B0();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v165 = v10;
  v167 = v5;
  v168 = v3;
  v30 = sub_190D515F0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v157 = v31 + 56;
  v158 = v32;
  v32(v13, v29, 1, v30);
  sub_190844E18(v13, v16);
  v155 = *(v31 + 48);
  v156 = v31 + 48;
  if (v155(v16, 1, v30) == 1)
  {
    sub_19084CF50(v16);
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    v34 = sub_190D51520();
    v33 = v35;
    (*(v31 + 8))(v16, v30);
  }

  v36 = [v171 UTIType];
  if (v36)
  {
    v37 = v36;
    v38 = sub_190D56F10();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = [v171 commSafetySensitive];
  v169 = v2;
  v159 = v30;
  v154 = v31;
  if (v41)
  {
    if (v41 == 1)
    {
      v42 = 0x8000000190E7FAB0;
      v43 = 0xD000000000000017;
    }

    else if (v41 == 2)
    {
      v42 = 0x8000000190E7FAD0;
      v43 = 0xD000000000000016;
    }

    else
    {
      v42 = 0x8000000190E7F8C0;
      v43 = 0xD000000000000012;
    }
  }

  else
  {
    v42 = 0xED00006576697469;
    v43 = 0x736E6553746F6E2ELL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F90);
  inited = swift_initStackObject();
  v45 = inited;
  *(inited + 16) = xmmword_190DD6EC0;
  strcpy((inited + 32), "transferGUID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v46 = v163;
  *(inited + 48) = v164;
  *(inited + 56) = v46;
  *(inited + 64) = 0xD000000000000014;
  *(inited + 72) = 0x8000000190E7F8E0;
  v47 = v161;
  *(inited + 80) = v162;
  *(inited + 88) = v47;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x8000000190E7F900;
  v48 = v160[1];
  *(inited + 112) = v160[0];
  *(inited + 120) = v48;
  *(inited + 128) = 0x4C5255656C6966;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = v34;
  *(inited + 152) = v33;
  v49 = 0x6E776F6E6B6E757BLL;
  if (v40)
  {
    v49 = v38;
  }

  v50 = 0xE90000000000007DLL;
  if (v40)
  {
    v50 = v40;
  }

  *(inited + 160) = 0x65707954697475;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 176) = v49;
  *(inited + 184) = v50;
  strcpy((inited + 192), "sensitiveState");
  *(inited + 207) = -18;
  *(inited + 208) = v43;
  *(inited + 216) = v42;
  ObjectType = 0;
  v173 = 0xE000000000000000;
  v51 = v171;
  v52 = [v171 generatePreviewOutOfProcess];
  v53 = v52 == 0;
  if (v52)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v53)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  MEMORY[0x193AF28B0](v54, v55);

  v56 = ObjectType;
  v57 = v173;
  *(v45 + 224) = 0xD00000000000001BLL;
  *(v45 + 232) = 0x8000000190E7F920;
  *(v45 + 240) = v56;
  *(v45 + 248) = v57;
  ObjectType = 0;
  v173 = 0xE000000000000000;
  v58 = [v51 shouldSuppressPreview];
  v59 = v58 == 0;
  if (v58)
  {
    v60 = 1702195828;
  }

  else
  {
    v60 = 0x65736C6166;
  }

  if (v59)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE400000000000000;
  }

  MEMORY[0x193AF28B0](v60, v61);

  v62 = ObjectType;
  v63 = v173;
  *(v45 + 256) = 0xD000000000000015;
  *(v45 + 264) = 0x8000000190E7F940;
  *(v45 + 272) = v62;
  *(v45 + 280) = v63;
  ObjectType = 0;
  v173 = 0xE000000000000000;
  v64 = [v51 forceInlinePreviewGeneration];
  v65 = v64 == 0;
  if (v64)
  {
    v66 = 1702195828;
  }

  else
  {
    v66 = 0x65736C6166;
  }

  if (v65)
  {
    v67 = 0xE500000000000000;
  }

  else
  {
    v67 = 0xE400000000000000;
  }

  MEMORY[0x193AF28B0](v66, v67);

  v68 = ObjectType;
  v69 = v173;
  *(v45 + 288) = 0xD00000000000001CLL;
  *(v45 + 296) = 0x8000000190E7F960;
  *(v45 + 304) = v68;
  *(v45 + 312) = v69;
  v70 = [v51 previewFilenameExtension];
  if (v70)
  {
    v71 = v70;
    v72 = sub_190D56F10();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v75 = v165;
  v76 = 7104878;
  ObjectType = v72;
  v173 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
  v77 = sub_190D56F50();
  *(v45 + 320) = 0xD000000000000020;
  *(v45 + 328) = 0x8000000190E7F980;
  *(v45 + 336) = v77;
  *(v45 + 344) = v78;
  v79 = [v171 transfer];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 fileURL];
    if (v81)
    {
      v82 = v170;
      v83 = v81;
      sub_190D515B0();

      v84 = 0;
    }

    else
    {
      v84 = 1;
      v82 = v170;
    }

    v86 = v159;
    v158(v82, v84, 1, v159);
    sub_190844E18(v82, v75);
    if (v155(v75, 1, v86) == 1)
    {
      sub_19084CF50(v75);
      v87 = 0xE300000000000000;
    }

    else
    {
      v76 = sub_190D51520();
      v87 = v88;
      (*(v154 + 8))(v75, v86);
    }

    v85 = sub_190836784(1, 11, 1, v45);
    *(v85 + 2) = 11;
    *(v85 + 44) = 0xD000000000000014;
    *(v85 + 45) = 0x8000000190E7F9B0;
    *(v85 + 46) = v76;
    *(v85 + 47) = v87;
    ObjectType = 0;
    v173 = 0xE000000000000000;
    v89 = [v80 isDownloadable];
    v90 = v89 == 0;
    if (v89)
    {
      v91 = 1702195828;
    }

    else
    {
      v91 = 0x65736C6166;
    }

    if (v90)
    {
      v92 = 0xE500000000000000;
    }

    else
    {
      v92 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v91, v92);

    v93 = ObjectType;
    v94 = v173;
    v96 = *(v85 + 2);
    v95 = *(v85 + 3);
    if (v96 >= v95 >> 1)
    {
      v85 = sub_190836784((v95 > 1), v96 + 1, 1, v85);
    }

    *(v85 + 2) = v96 + 1;
    v97 = &v85[32 * v96];
    *(v97 + 4) = 0xD00000000000001BLL;
    *(v97 + 5) = 0x8000000190E7F9D0;
    *(v97 + 6) = v93;
    *(v97 + 7) = v94;
    ObjectType = 0;
    v173 = 0xE000000000000000;
    v98 = [v80 isDownloading];
    v99 = v98 == 0;
    if (v98)
    {
      v100 = 1702195828;
    }

    else
    {
      v100 = 0x65736C6166;
    }

    if (v99)
    {
      v101 = 0xE500000000000000;
    }

    else
    {
      v101 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v100, v101);

    v102 = ObjectType;
    v103 = v173;
    v105 = *(v85 + 2);
    v104 = *(v85 + 3);
    if (v105 >= v104 >> 1)
    {
      v85 = sub_190836784((v104 > 1), v105 + 1, 1, v85);
    }

    *(v85 + 2) = v105 + 1;
    v106 = &v85[32 * v105];
    *(v106 + 4) = 0xD00000000000001ALL;
    *(v106 + 5) = 0x8000000190E7F9F0;
    *(v106 + 6) = v102;
    *(v106 + 7) = v103;
    ObjectType = [v80 currentBytes];
    v107 = sub_190D58720();
    v110 = *(v85 + 2);
    v109 = *(v85 + 3);
    if (v110 >= v109 >> 1)
    {
      v147 = v107;
      v148 = v108;
      v149 = sub_190836784((v109 > 1), v110 + 1, 1, v85);
      v108 = v148;
      v85 = v149;
      v107 = v147;
    }

    *(v85 + 2) = v110 + 1;
    v111 = &v85[32 * v110];
    *(v111 + 4) = 0xD000000000000019;
    *(v111 + 5) = 0x8000000190E7FA10;
    *(v111 + 6) = v107;
    *(v111 + 7) = v108;
    ObjectType = [v80 totalBytes];
    v112 = sub_190D58720();
    v115 = *(v85 + 2);
    v114 = *(v85 + 3);
    if (v115 >= v114 >> 1)
    {
      v150 = v112;
      v151 = v113;
      v152 = sub_190836784((v114 > 1), v115 + 1, 1, v85);
      v113 = v151;
      v85 = v152;
      v112 = v150;
    }

    *(v85 + 2) = v115 + 1;
    v116 = &v85[32 * v115];
    *(v116 + 4) = 0xD000000000000017;
    *(v116 + 5) = 0x8000000190E7FA30;
    *(v116 + 6) = v112;
    *(v116 + 7) = v113;
    ObjectType = 0;
    v173 = 0xE000000000000000;
    v117 = [v80 isThumbnail];
    v118 = v117 == 0;
    if (v117)
    {
      v119 = 1702195828;
    }

    else
    {
      v119 = 0x65736C6166;
    }

    if (v118)
    {
      v120 = 0xE500000000000000;
    }

    else
    {
      v120 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v119, v120);

    v121 = ObjectType;
    v122 = v173;
    v124 = *(v85 + 2);
    v123 = *(v85 + 3);
    if (v124 >= v123 >> 1)
    {
      v85 = sub_190836784((v123 > 1), v124 + 1, 1, v85);
    }

    *(v85 + 2) = v124 + 1;
    v125 = &v85[32 * v124];
    *(v125 + 4) = 0xD000000000000018;
    *(v125 + 5) = 0x8000000190E7FA50;
    *(v125 + 6) = v121;
    *(v125 + 7) = v122;
    ObjectType = 0;
    v173 = 0xE000000000000000;
    v126 = [v80 isFromMomentShare];
    v127 = v126 == 0;
    if (v126)
    {
      v128 = 1702195828;
    }

    else
    {
      v128 = 0x65736C6166;
    }

    if (v127)
    {
      v129 = 0xE500000000000000;
    }

    else
    {
      v129 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v128, v129);

    v130 = ObjectType;
    v131 = v173;
    v133 = *(v85 + 2);
    v132 = *(v85 + 3);
    if (v133 >= v132 >> 1)
    {
      v85 = sub_190836784((v132 > 1), v133 + 1, 1, v85);
    }

    *(v85 + 2) = v133 + 1;
    v134 = &v85[32 * v133];
    *(v134 + 4) = 0xD00000000000001ELL;
    *(v134 + 5) = 0x8000000190E7FA70;
    *(v134 + 6) = v130;
    *(v134 + 7) = v131;
    ObjectType = [v80 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628F0);
    v135 = sub_190D56F50();
    v137 = v136;
    v139 = *(v85 + 2);
    v138 = *(v85 + 3);
    if (v139 >= v138 >> 1)
    {
      v85 = sub_190836784((v138 > 1), v139 + 1, 1, v85);
    }

    swift_unknownObjectRelease();
    *(v85 + 2) = v139 + 1;
    v140 = &v85[32 * v139];
    *(v140 + 4) = 0xD000000000000012;
    *(v140 + 5) = 0x8000000190E7FA90;
    *(v140 + 6) = v135;
    *(v140 + 7) = v137;
  }

  else
  {
    v85 = sub_190836784(1, 11, 1, v45);
    *(v85 + 2) = 11;
    strcpy(v85 + 352, "fileTransfer");
    v85[365] = 0;
    *(v85 + 183) = -5120;
    *(v85 + 46) = 7104878;
    *(v85 + 47) = 0xE300000000000000;
  }

  v141 = v169;
  v142 = v167;
  sub_190D50450();
  v143 = sub_190D51850();
  v145 = v144;
  (*(v168 + 8))(v142, v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628E8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_190DD1D90;
  *(v26 + 32) = 0x726566736E617254;
  *(v26 + 40) = 0xE800000000000000;
  *(v26 + 48) = v85;
  *(v26 + 56) = v143;
  *(v26 + 64) = v145;

  return v26;
}

uint64_t sub_190CCFC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190CCFC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190CCFCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190CCFD70()
{
  result = sub_190D518A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_190CCFE30()
{
  result = sub_190D518A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_190CCFF08()
{
  sub_190A9E840(319, &qword_1EAD62948);
  if (v0 <= 0x3F)
  {
    sub_190A9E840(319, &qword_1EAD46740);
    if (v1 <= 0x3F)
    {
      sub_190A10BAC(319, &qword_1EAD62950, &qword_1EAD5CC88);
      if (v2 <= 0x3F)
      {
        sub_190A9E840(319, &qword_1EAD62958);
        if (v3 <= 0x3F)
        {
          sub_190A10BAC(319, &qword_1EAD62960, &qword_1EAD5CD20);
          if (v4 <= 0x3F)
          {
            sub_190A10BAC(319, &qword_1EAD62968, &qword_1EAD5CCB0);
            if (v5 <= 0x3F)
            {
              sub_190A10BAC(319, &qword_1EAD62970, &qword_1EAD5CCE8);
              if (v6 <= 0x3F)
              {
                sub_190D518A0();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_190CD00F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_190D57510();
  if (!v19)
  {
    return sub_190D571C0();
  }

  v41 = v19;
  v45 = sub_190D583E0();
  v32 = sub_190D583F0();
  sub_190D58380();
  result = sub_190D574F0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_190D57560();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_190D583D0();
      result = sub_190D57540();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190CD0518(uint64_t a1)
{
  v3 = qword_1EAD62988;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_190CD1590();
}

uint64_t sub_190CD0574()
{
  sub_190CD25C0();

  return sub_190D52690();
}

uint64_t sub_190CD059C(uint64_t a1)
{
  swift_beginAccess();
  sub_190D57200();
  swift_getWitnessTable();
  v2 = sub_190D56E30();
  if (v2)
  {
    return sub_190CD0518(a1);
  }

  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_190CD13C8();
}

uint64_t sub_190CD0750()
{
  sub_190CD2688(&unk_190E03978, &qword_1EAD62990);

  return sub_190D52690();
}

uint64_t sub_190CD0788(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59000);
  sub_190CD2BC0();
  v3 = sub_190D56E30();
  if (v3)
  {
    *(v1 + qword_1EAD62990) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD13C8();
  }
}

uint64_t sub_190CD0920()
{
  sub_190CD2688(&unk_190E039B0, &qword_1EAD629A8);

  return sub_190D52690();
}

uint64_t sub_190CD0958(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62A58);
  sub_190CD2A7C();
  v3 = sub_190D56E30();
  if (v3)
  {
    *(v1 + qword_1EAD629A8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD13C8();
  }
}

uint64_t sub_190CD0B0C(char a1)
{
  v2 = a1 & 1;
  v3 = sub_190D56E30();
  if (v3)
  {
    *(v1 + qword_1EAD629B0) = v2;
    return sub_190CD1C44();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD13C8();
  }
}

uint64_t sub_190CD0C74(uint64_t a1)
{
  *(v1 + qword_1EAD629B8) = a1;
  sub_190CD1CC8();
}

uint64_t sub_190CD0CBC()
{
  sub_190CD2688(&unk_190E03908, &qword_1EAD629B8);

  return sub_190D52690();
}

uint64_t sub_190CD0CF4(uint64_t a1)
{
  sub_190D57200();
  swift_getWitnessTable();
  v3 = sub_190D56E30();
  if (v3)
  {
    *(v1 + qword_1EAD629B8) = a1;
    sub_190CD1CC8();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD13C8();
  }
}

uint64_t sub_190CD0F84(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190CD132C();

  return *(v2 + *a2);
}

uint64_t sub_190CD1038(char a1, void *a2)
{
  v4 = a1 & 1;
  result = sub_190D56E30();
  if (result)
  {
    *(v2 + *a2) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD13C8();
  }

  return result;
}

uint64_t sub_190CD118C(void *a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = [a1 results];
  sub_1902188FC(0, &unk_1EAD44FC0);
  v4 = sub_190D57180();

  v12 = v4;
  v11 = *(v2 + 80);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62A48);
  v6 = sub_190CD2980();
  v8 = sub_190CD00F8(sub_190CD2910, v10, v5, v11, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);

  return sub_190CD059C(v8);
}

uint64_t sub_190CD12C0()
{
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190CD14C0()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190CD1590()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))();
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9DF70);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 134218242;
    sub_190CD25C0();
    sub_190D52690();
    v7 = sub_190D571F0();

    *(v5 + 4) = v7;

    *(v5 + 12) = 2080;
    v8 = sub_190D58980();
    v10 = sub_19021D9F8(v8, v9, &v13);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_19020E000, v3, v4, "items did change: number of items = %ld for %s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }

  v13 = sub_190CD25C0();
  MEMORY[0x1EEE9AC00](v13);
  sub_190D57200();
  sub_190D515F0();
  sub_190D52690();
  swift_getWitnessTable();
  v11 = sub_190D57140();

  return sub_190CD0788(v11);
}

uint64_t sub_190CD1860@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  if ((*(a2 + 64))(a1, a2))
  {
    return (*(v8 + 56))(a3, 1, 1, v7);
  }

  v40 = v15;
  v37 = a3;
  v38 = v3;
  v41 = v7;
  v36 = *(a2 + 24);
  v17 = v36(a1, a2);
  v18 = [v17 item];

  v19 = [v18 attributeSet];
  v20 = [v19 contentURL];

  if (v20)
  {
    sub_190D515B0();

    v21 = *(v8 + 32);
    v22 = v40;
    v23 = v41;
    v21(v40, v10, v41);
    v24 = *(v8 + 56);
    v24(v22, 0, 1, v23);
    v25 = v37;
    v21(v37, v22, v23);
    return (v24)(v25, 0, 1, v23);
  }

  else
  {
    v26 = 1;
    v35 = *(v8 + 56);
    v35(v40, 1, 1, v41);
    v27 = v36(a1, a2);
    v28 = [v27 item];

    v29 = [v28 attributeSet];
    v30 = [v29 URL];

    if (v30)
    {
      v31 = v39;
      sub_190D515B0();

      v26 = 0;
      v32 = v37;
    }

    else
    {
      v32 = v37;
      v31 = v39;
    }

    v33 = v41;
    v35(v31, v26, 1, v41);
    sub_190844E18(v31, v32);
    v34 = v40;
    result = (*(v8 + 48))(v40, 1, v33);
    if (result != 1)
    {
      return sub_19084CF50(v34);
    }
  }

  return result;
}

uint64_t sub_190CD1C44()
{
  result = sub_190CD0AF8();
  if ((result & 1) == 0)
  {
    v1 = sub_190D571C0();

    return sub_190CD0CF4(v1);
  }

  return result;
}

void sub_190CD1CC8()
{
  sub_190CD2688(&unk_190E03908, &qword_1EAD629B8);
  sub_190D57200();
  swift_getWitnessTable();
  v1 = sub_190D57550() & 1;
  if (v1 != (sub_190D57550() & 1) && *(v0 + qword_1EAD629A0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_190D527F0();
    }
  }
}

uint64_t sub_190CD1DD4()
{
  swift_getKeyPath();
  type metadata accessor for DetailsSpotlightTabViewModel();
  swift_getWitnessTable();
  sub_190D51C30();
}

void sub_190CD1EB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_190CD118C(v4);
}

id sub_190CD1F1C()
{
  v0 = sub_190CD2714();

  return v0;
}

id sub_190CD1F50()
{
  sub_190CD2724();
  sub_1902188FC(0, &qword_1EAD466B0);
  v0 = sub_190D57160();

  return v0;
}

id sub_190CD1FBC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_190CD2788();

  v6 = sub_190D57160();

  return v6;
}

id sub_190CD2034()
{
  sub_1902188FC(0, &qword_1EAD45030);
  v0 = sub_190D57160();

  return v0;
}

uint64_t sub_190CD2088(uint64_t a1)
{
  swift_getKeyPath();
  sub_190CD132C();

  swift_getKeyPath();
  type metadata accessor for DetailsSpotlightTabViewModel();
  swift_getWitnessTable();
  sub_190D51C40();

  swift_beginAccess();
  sub_190D57200();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_190D57570();
  swift_endAccess();
  sub_190CD1590();
  sub_190CD1DD4();
  swift_getKeyPath();
  sub_190CD132C();

  swift_getKeyPath();
  sub_190D51C40();

  v3 = *(a1 + qword_1EAD629B8);
  sub_190D52690();
  sub_190D57570();
  *(a1 + qword_1EAD629B8) = v3;
  sub_190CD1CC8();

  return sub_190CD1DD4();
}

uint64_t sub_190CD2358(uint64_t a1, void *a2)
{
  sub_190D582D0();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_190D582D0();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_190D58760();
  }

  return v4 & 1;
}

id sub_190CD2458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsSpotlightTabViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190CD24C8(uint64_t a1)
{

  v2 = qword_1EAD629D8;
  v3 = sub_190D51C60();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_190CD25C0()
{
  swift_getKeyPath();
  sub_190CD132C();

  v1 = qword_1EAD62988;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190CD2688(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190CD132C();

  return *(v2 + *a2);
}

uint64_t sub_190CD2724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DD55F0;
  v2 = *(v0 + qword_1EAD62978);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

uint64_t sub_190CD2788()
{
  v1 = sub_190CD2688(&unk_190E039B0, &qword_1EAD629A8);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [*(v0 + qword_1EAD62978) chat];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() sharedRegistry];
      v6 = [v5 allGUIDsForChat_];

      v2 = sub_190D57180();
      v7 = sub_190D52690();
      sub_190CD0958(v7);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_190D52690();
  return v2;
}

unint64_t sub_190CD2980()
{
  result = qword_1EAD45120;
  if (!qword_1EAD45120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD62A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45120);
  }

  return result;
}

uint64_t sub_190CD29E4()
{
  *(*(v0 + 16) + qword_1EAD629B8) = *(v0 + 24);
  sub_190D52690();
  sub_190CD1CC8();
}

unint64_t sub_190CD2A7C()
{
  result = qword_1EAD62A60;
  if (!qword_1EAD62A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62A58);
    sub_190CD2B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62A60);
  }

  return result;
}

unint64_t sub_190CD2B00()
{
  result = qword_1EAD62A68;
  if (!qword_1EAD62A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD57920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62A68);
  }

  return result;
}

uint64_t sub_190CD2B7C()
{
  *(*(v0 + 16) + qword_1EAD629A8) = *(v0 + 24);
  sub_190D52690();
}

unint64_t sub_190CD2BC0()
{
  result = qword_1EAD62A70;
  if (!qword_1EAD62A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59000);
    sub_190CD2C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62A70);
  }

  return result;
}

unint64_t sub_190CD2C44()
{
  result = qword_1EAD54D78;
  if (!qword_1EAD54D78)
  {
    sub_190D515F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54D78);
  }

  return result;
}

uint64_t sub_190CD2C9C()
{
  *(*(v0 + 16) + qword_1EAD62990) = *(v0 + 24);
  sub_190D52690();
}

uint64_t sub_190CD2D60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_190D56F10();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

unint64_t type metadata accessor for CKAutomaticTranslationIndicatorCellMenuConfiguration()
{
  result = qword_1EAD62A90;
  if (!qword_1EAD62A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD62A90);
  }

  return result;
}

id sub_190CD2E70(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView;
  type metadata accessor for CKCloudSyncNavBarStatusView.ConstrainedProgressView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_hasFinishedFirstLayoutPass] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview] = 0;
  v1[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_placement] = a1 & 1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CKCloudSyncNavBarStatusView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190CD2FA4();

  return v5;
}

void sub_190CD2FA4()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDD28];
  v4 = [v2 __ck_fontForStyle_weight_];
  if (!v4)
  {
    v4 = [v2 preferredFontForTextStyle_];
  }

  [v1 setFont_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  if (v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_placement])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  if (v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_placement])
  {
    v7 = 0x4059800000000000;
  }

  else
  {
    v7 = 0x4051000000000000;
  }

  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v0 addSubview_];
  v8 = *&v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView];
  v9 = &v8[OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth];
  *v9 = v7;
  v9[8] = 0;
  [v0 addSubview_];
  [v8 setAlpha_];
  v11 = *&v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview];
  *&v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview] = v1;
  v10 = v1;
}

id sub_190CD3170()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for CKCloudSyncNavBarStatusView();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_placement];
  v6 = *&v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel];
  [v6 sizeThatFits_];
  v8 = v7;
  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView];
  [v11 sizeThatFits_];
  v13 = v12;
  v15 = v14;
  [v6 setBounds_];
  [v11 setBounds_];
  if (v5)
  {
    v16 = [v0 _shouldReverseLayoutDirection];
    v17 = v8 * 0.5;
    if (v16)
    {
      v17 = v2 - v8 * 0.5;
    }

    v18 = v4 * 0.5 + 2.0;
    if (v16)
    {
      v19 = v2 - v13 * 0.5;
    }

    else
    {
      v19 = v13 * 0.5;
    }

    v20 = v6;
  }

  else
  {
    v19 = v2 * 0.5;
    v18 = v4 * 0.5 + 0.0;
    v20 = v6;
    v17 = v19;
  }

  [v20 setCenter_];
  result = [v11 setCenter_];
  if ((v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_hasFinishedFirstLayoutPass] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_hasFinishedFirstLayoutPass] = 1;
  }

  return result;
}

id sub_190CD3588(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_190CD3690(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel];
  v6 = [v5 text];
  if (!v6)
  {
LABEL_7:
    v14 = sub_190D56ED0();
    [v5 setText_];

    return [v2 setNeedsLayout];
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_190D58760();

    if (v12)
    {
      return result;
    }

    goto LABEL_7;
  }
}

void sub_190CD382C()
{
  v1 = v0;
  v2 = sub_190D56770();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D567A0();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D567F0();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview;
  v15 = *(v0 + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview);
  v16 = *(v0 + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView);
  if (v15)
  {
    sub_1902188FC(0, &qword_1EAD46530);
    v17 = v16;
    v18 = v15;
    v19 = sub_190D57D90();

    if (v19)
    {
      return;
    }

    v30 = v4;
    v20 = *(v1 + v14);
  }

  else
  {
    v30 = v4;
    v20 = 0;
  }

  *(v1 + v14) = v16;
  v21 = v16;

  sub_1902188FC(0, &qword_1EAD46670);
  v22 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v31 = *(v31 + 8);
  v23 = v10;
  v24 = v32;
  (v31)(v23, v32);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_190CD40A4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_130;
  v26 = _Block_copy(aBlock);

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  v27 = v30;
  v28 = v36;
  sub_190D58170();
  MEMORY[0x193AF30E0](v13, v7, v27, v26);
  _Block_release(v26);

  (*(v35 + 8))(v27, v28);
  (*(v33 + 8))(v7, v34);
  (v31)(v13, v24);
}

uint64_t sub_190CD3C30()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView);
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel);
    v4 = v1;
    sub_190D56530();
    v5 = sub_1902188FC(0, &qword_1EAD46530);
    MEMORY[0x1EEE9AC00](v5);
    sub_190D57CF0();
    v6 = sub_190D56550();
    MEMORY[0x1EEE9AC00](v6);
    sub_190D57CF0();
  }

  return result;
}

void sub_190CD3E0C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview;
  v3 = *(v0 + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview);
  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel);
  if (v3)
  {
    sub_1902188FC(0, &qword_1EAD46530);
    v5 = v4;
    v6 = v3;
    v7 = sub_190D57D90();

    if (v7)
    {
      return;
    }

    v8 = *(v1 + v2);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v2) = v4;
  v4;

  sub_190D56530();
  v9 = sub_1902188FC(0, &qword_1EAD46530);
  MEMORY[0x1EEE9AC00](v9);
  sub_190D57CF0();
  v10 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v10);
  sub_190D57CF0();
}

unint64_t sub_190CD4050()
{
  result = qword_1EAD62AE0;
  if (!qword_1EAD62AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62AE0);
  }

  return result;
}

void sub_190CD40AC()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView;
  type metadata accessor for CKCloudSyncNavBarStatusView.ConstrainedProgressView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_hasFinishedFirstLayoutPass) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_activeStatusSubview) = 0;
  sub_190D58510();
  __break(1u);
}

id CKCatchUpButtonManager.__allocating_init(didTapButton:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_190D55190();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_animator;
  type metadata accessor for CKCatchUpButtonManager.Animator();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0x3FF0000000000000;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0;
  sub_190D51C50();
  *&v7[v8] = v9;
  v7[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_didAnimate] = 0;
  v18 = a1;
  v19 = a2;
  v20 = v9;
  v21 = 0x4030000000000000;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62B08));
  swift_retain_n();
  swift_retain_n();
  v11 = sub_190D54B60();
  sub_190D54250();
  sub_190D54B40();
  v12 = v11;
  result = [v12 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    sub_190D55170();
    sub_190D54B30();
    *&v7[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_catchUpButtonHost] = v12;
    v17.receiver = v7;
    v17.super_class = v3;
    v16 = objc_msgSendSuper2(&v17, sel_init);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKCatchUpButtonManager.init(didTapButton:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_190CD5824(a1, a2);

  return v2;
}

void sub_190CD4450(char a1)
{
  if (a1)
  {

    sub_190CD4BEC();
  }

  else
  {
    v2 = [*&v1[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_catchUpButtonHost] view];
    if (v2)
    {
      v3 = v2;
      [v2 frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12 = OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_didAnimate;
      if (v1[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_didAnimate])
      {
        v13 = objc_opt_self();
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        v19[4] = sub_190CD5AC0;
        v19[5] = v14;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 1107296256;
        v19[2] = sub_190840E6C;
        v19[3] = &block_descriptor_131;
        v15 = _Block_copy(v19);
        v16 = v1;

        [v13 animateWithDuration:v15 animations:0.1];
        _Block_release(v15);
      }

      else
      {
        v22.origin.x = 0.0;
        v22.origin.y = 0.0;
        v22.size.width = 0.0;
        v22.size.height = 0.0;
        v21.origin.x = v5;
        v21.origin.y = v7;
        v21.size.width = v9;
        v21.size.height = v11;
        if (!CGRectEqualToRect(v21, v22))
        {
          v1[v12] = 1;
          v17 = *&v1[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_animator];
          v18 = v7 * 0.5;
          swift_getKeyPath();
          sub_190CD5A68();
          sub_190D51C20();

          swift_getKeyPath();
          sub_190D51C40();

          *(v17 + 32) = v18;
          swift_getKeyPath();
          sub_190D51C30();

          swift_getKeyPath();
          sub_190D51C20();

          swift_getKeyPath();
          sub_190D51C40();

          *(v17 + 72) = v18;
          swift_getKeyPath();
          sub_190D51C30();

          swift_getKeyPath();
          sub_190D51C20();

          v19[0] = v17;
          swift_getKeyPath();
          sub_190D51C40();

          *(v17 + 16) = (*(v17 + 16) & 1) == 0;
          v19[0] = v17;
          swift_getKeyPath();
          sub_190D51C30();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_190CD4854(uint64_t a1)
{
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_animator];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD5A68();
    sub_190D50920();
    sub_190D51C10();

    swift_getKeyPath();
    sub_190D51C20();

    aBlock[0] = v3;
    swift_getKeyPath();
    sub_190D51C40();

    *(v3 + 17) = (*(v3 + 17) & 1) == 0;
    aBlock[0] = v3;
    swift_getKeyPath();
    sub_190D51C30();
    sub_19022123C(a1);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    aBlock[4] = sub_190CD5AE0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_14_2;
    v7 = _Block_copy(aBlock);
    v8 = v1;

    [v5 animateWithDuration:v7 animations:0.1];
    _Block_release(v7);
  }
}

void sub_190CD4ABC(uint64_t a1, double a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_catchUpButtonHost) view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190CD4BEC()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_didAnimate) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_animator);
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  *(v1 + 32) = 0;
  swift_getKeyPath();
  sub_190D51C30();

  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  *(v1 + 24) = 0x3FF0000000000000;
  swift_getKeyPath();
  sub_190D51C30();
}

id CKCatchUpButtonManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKCatchUpButtonManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCatchUpButtonManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190CD4E7C()
{
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  return *(v0 + 16);
}

uint64_t sub_190CD4EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_190CD4F8C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD5A68();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190CD506C()
{
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  return *(v0 + 17);
}

uint64_t sub_190CD50DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_190CD517C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CD5A68();
    sub_190D51C10();
  }

  return result;
}

double sub_190CD525C()
{
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  return *(v0 + 24);
}

__n128 sub_190CD52D0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  result = *(v3 + 24);
  v5 = *(v3 + 40);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_190CD536C()
{
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  return *(v0 + 56);
}

__n128 sub_190CD53E0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  result = *(v3 + 56);
  v5 = *(v3 + 72);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_190CD547C()
{
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C10();
}

uint64_t sub_190CD5514()
{
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  v1 = *(v0 + 88);
  sub_19029063C(v1);
  return v1;
}

uint64_t sub_190CD5598@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CD5A68();
  sub_190D51C20();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_190838A04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_19029063C(v4);
}

uint64_t sub_190CD5654(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_190CD5D18;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19029063C(v1);
  sub_190CD5A68();
  sub_190D51C10();
  sub_19022123C(v4);
}

uint64_t sub_190CD5780()
{
  sub_19022123C(*(v0 + 88));
  v1 = OBJC_IVAR____TtCC7ChatKit22CKCatchUpButtonManager8Animator___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_190CD5824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_190D55190();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_animator;
  type metadata accessor for CKCatchUpButtonManager.Animator();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0x3FF0000000000000;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  sub_190D51C50();
  *&v3[v7] = v8;
  v3[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_didAnimate] = 0;
  v17 = a1;
  v18 = a2;
  v19 = v8;
  v20 = 0x4030000000000000;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62B08));
  swift_retain_n();
  swift_retain_n();
  v10 = sub_190D54B60();
  sub_190D54250();
  sub_190D54B40();
  v11 = v10;
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor_];

    sub_190D55170();
    sub_190D54B30();
    *&v3[OBJC_IVAR____TtC7ChatKit22CKCatchUpButtonManager_catchUpButtonHost] = v11;
    v16.receiver = v3;
    v16.super_class = type metadata accessor for CKCatchUpButtonManager();
    v15 = objc_msgSendSuper2(&v16, sel_init);

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CKCatchUpButtonManager.Animator()
{
  result = qword_1EAD62B10;
  if (!qword_1EAD62B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_190CD5A68()
{
  result = qword_1EAD5EDC0;
  if (!qword_1EAD5EDC0)
  {
    type metadata accessor for CKCatchUpButtonManager.Animator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EDC0);
  }

  return result;
}

uint64_t sub_190CD5BD8()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190CD5CCC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 88);
  *(v2 + 88) = v1;
  *(v2 + 96) = v3;
  sub_19029063C(v1);
  return sub_19022123C(v4);
}

__n128 sub_190CD5D20()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 56) = result;
  *(v1 + 72) = v3;
  return result;
}

__n128 sub_190CD5D38()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = result;
  *(v1 + 40) = v3;
  return result;
}

id FooterButtonsContainer.__allocating_init(actions:type:)(unint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v5[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190CD61C8(a1, a2);

  return v7;
}

unint64_t FooterType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id FooterButtonsContainer.init(actions:type:)(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v2[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FooterButtonsContainer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190CD61C8(a1, a2);

  return v6;
}

void sub_190CD5FEC(unint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___CKFooterButtonsContainer_stackView) subviews];
  sub_1902188FC(0, &qword_1EAD46530);
  v4 = sub_190D57180();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
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

  v10 = OBJC_IVAR___CKFooterButtonsContainer_buttons;
  swift_beginAccess();
  *(v1 + v10) = MEMORY[0x1E69E7CC0];

  sub_190CD61C8(a1, 0);
}

void sub_190CD61C8(unint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___CKFooterButtonsContainer_stackView];
  v6 = [objc_opt_self() sharedBehaviors];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isAccessibilityPreferredContentSizeCategory];

    [v5 setAxis_];
    [v5 setAlignment_];
    [v5 setDistribution_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    if (v9 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
    {
      sub_190D52690();
      if (!i)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x193AF3B90](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = v12;
        sub_190CD63C0(&v15, a2, v2);

        ++v11;
        if (v14 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_16:

    sub_190CD6638(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_190CD63C0(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D57FB0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  sub_1902188FC(0, &qword_1EAD464E0);
  v8 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  sub_190BDDFD0(*&v7[v8]);
  v9 = v7;
  v10 = sub_190D57FC0();
  v11 = v10;
  if (!a2)
  {
    [v10 setRole_];
  }

  v12 = *(a3 + OBJC_IVAR___CKFooterButtonsContainer_stackView);
  v13 = v11;
  [v12 addArrangedSubview_];
  [v12 setCustomSpacing:v13 afterView:12.0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [v13 widthAnchor];

  v15 = [v14 constraintLessThanOrEqualToConstant_];
  [v15 setActive_];

  v16 = OBJC_IVAR___CKFooterButtonsContainer_buttons;
  swift_beginAccess();
  v17 = v13;
  MEMORY[0x193AF29E0]();
  if (*((*(a3 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  swift_endAccess();
  v18 = [v17 titleLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setTextAlignment_];
  }
}

void sub_190CD6638(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_190DD86A0;
    v4 = *&v1[OBJC_IVAR___CKFooterButtonsContainer_stackView];
    v5 = [v4 leadingAnchor];
    v6 = [v1 safeAreaLayoutGuide];
    v7 = [v6 leadingAnchor];

    v8 = [v5 constraintEqualToAnchor_];
    *(v3 + 32) = v8;
    v9 = [v4 trailingAnchor];
    v10 = [v1 safeAreaLayoutGuide];
    v11 = [v10 trailingAnchor];

    v12 = [v9 constraintEqualToAnchor_];
    *(v3 + 40) = v12;
    v13 = [v4 topAnchor];
    v14 = [v1 topAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v3 + 48) = v15;
    v16 = [v4 bottomAnchor];
    v17 = [v1 safeAreaLayoutGuide];
    v18 = [v17 bottomAnchor];

    v19 = [v16 constraintEqualToAnchor_];
  }

  else
  {
    if (a1)
    {
      sub_190D58790();
      __break(1u);
      return;
    }

    v2 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_190DD86A0;
    v20 = *&v1[OBJC_IVAR___CKFooterButtonsContainer_stackView];
    v21 = [v20 leadingAnchor];
    v22 = [v1 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v3 + 32) = v23;
    v24 = [v20 trailingAnchor];
    v25 = [v1 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v3 + 40) = v26;
    v27 = [v20 topAnchor];
    v28 = [v1 topAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v3 + 48) = v29;
    v16 = [v20 bottomAnchor];
    v18 = [v1 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor_];
  }

  v30 = v19;

  *(v3 + 56) = v30;
  sub_1902188FC(0, &qword_1EAD45040);
  v31 = sub_190D57160();

  [v2 activateConstraints_];

  v32 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];
}

id FooterButtonsContainer.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FooterButtonsContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FooterButtonsContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190CD6D0C()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKFooterButtonsContainer_buttons;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    v4 = sub_190D581C0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082E07C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v6 = 0;
    v5 = v39;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      [v7 intrinsicContentSize];
      v10 = v9;

      v39 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19082E07C((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v5 + 16) = v12 + 1;
      *(v5 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    v14 = *(v5 + 32);
    v15 = v13 - 1;
    if (v15)
    {
      v16 = (v5 + 40);
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (v14 < v17)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }
  }

  v19 = *(v1 + v2);
  if (v19 >> 62)
  {
    v20 = sub_190D581C0();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082E07C(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v21 = v40;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AF3B90](v22, v19);
        }

        else
        {
          v23 = *(v19 + 8 * v22 + 32);
        }

        v24 = v23;
        [v23 intrinsicContentSize];
        v26 = v25;

        v40 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_19082E07C((v27 > 1), v28 + 1, 1);
        }

        ++v22;
        *(v21 + 16) = v28 + 1;
        *(v21 + 8 * v28 + 32) = v26;
      }

      while (v20 != v22);

      goto LABEL_31;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_31:
  if (*(v1 + v2) >> 62)
  {
    sub_190D581C0();
    v29 = *(v21 + 16);
    if (!v29)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v29 = *(v21 + 16);
    if (!v29)
    {
      goto LABEL_44;
    }
  }

  if (v29 <= 3)
  {
    v30 = 0;
    v31 = 0.0;
LABEL_38:
    v34 = v29 - v30;
    v35 = (v21 + 8 * v30 + 32);
    do
    {
      v36 = *v35++;
      v31 = v31 + v36;
      --v34;
    }

    while (v34);
    goto LABEL_44;
  }

  v30 = v29 & 0x7FFFFFFFFFFFFFFCLL;
  v32 = (v21 + 48);
  v31 = 0.0;
  v33 = v29 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v31 = v31 + *(v32 - 2) + *(v32 - 1) + *v32 + v32[1];
    v32 += 4;
    v33 -= 4;
  }

  while (v33);
  if (v29 != v30)
  {
    goto LABEL_38;
  }

LABEL_44:
  v37 = [objc_opt_self() sharedBehaviors];
  if (v37)
  {
    v38 = v37;

    [v38 isAccessibilityPreferredContentSizeCategory];

    return;
  }

LABEL_48:
  __break(1u);
}

unint64_t sub_190CD70EC()
{
  result = qword_1EAD62B30[0];
  if (!qword_1EAD62B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAD62B30);
  }

  return result;
}

uint64_t sub_190CD7204()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190CD725C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9E670);
  __swift_project_value_buffer(v10, qword_1EAD9E670);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190CD7540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v68 = v46 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = v46 - v3;
  v64 = sub_190D51440();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_190D51460();
  v58 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53910);
  v65 = v12;
  v13 = *(v12 - 8);
  v55 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v51 = v15;
  *(v15 + 16) = xmmword_190DD5600;
  v67 = v15 + v14;
  v49 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_190D56E50();
  sub_190D51980();
  v62 = *MEMORY[0x1E6968DF0];
  v16 = *(v4 + 104);
  v46[1] = v4 + 104;
  v17 = v64;
  v16(v6);
  v52 = v16;
  sub_190D51470();
  v18 = *(v10 + 56);
  v10 += 56;
  v57 = v18;
  v18(v66, 1, 1, v9);
  v50 = 0xD000000000000019;
  sub_190D50B30();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55940);
  v19 = *(v10 + 16);
  v59 = v10;
  v60 = v19;
  v61 = *(v10 + 24);
  v54 = (v61 + 32) & ~v61;
  v20 = swift_allocObject();
  v53 = xmmword_190DD1D90;
  *(v20 + 16) = xmmword_190DD1D90;
  sub_190D56E50();
  sub_190D51980();
  v21 = v62;
  v22 = v17;
  (v16)(v6, v62, v17);
  sub_190D51470();
  v24 = v66;
  v23 = v67;
  sub_190D50B60();
  v48 = v23 + v55;
  v49 = *(v65 + 48);
  *v48 = 1;
  sub_190D56E50();
  sub_190D51980();
  v25 = v21;
  v26 = v52;
  (v52)(v6, v25, v22);
  sub_190D51470();
  v57(v24, 1, 1, v58);
  sub_190D50B30();
  *(swift_allocObject() + 16) = v53;
  sub_190D56E50();
  sub_190D51980();
  v27 = v64;
  (v26)(v6, v62, v64);
  sub_190D51470();
  v28 = v66;
  sub_190D50B60();
  v49 = 2 * v55;
  v47 = (v67 + 2 * v55);
  v48 = *(v65 + 48);
  *v47 = 2;
  sub_190D56E50();
  sub_190D51980();
  v29 = v62;
  (v26)(v6, v62, v27);
  sub_190D51470();
  v57(v28, 1, 1, v58);
  sub_190D50B30();
  *(swift_allocObject() + 16) = v53;
  sub_190D56E50();
  sub_190D51980();
  v30 = v64;
  v31 = v52;
  (v52)(v6, v29, v64);
  sub_190D51470();
  v32 = v66;
  sub_190D50B60();
  v48 = v67 + v49 + v55;
  v49 = *(v65 + 48);
  *v48 = 3;
  sub_190D56E50();
  sub_190D51980();
  v33 = v62;
  (v31)(v6, v62, v30);
  sub_190D51470();
  v57(v32, 1, 1, v58);
  sub_190D50B30();
  v34 = v54;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_190DD1DA0;
  v50 = (v35 + v34);
  sub_190D56E50();
  sub_190D51980();
  v36 = v64;
  v37 = v52;
  (v52)(v6, v33, v64);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v37(v6, v33, v36);
  sub_190D51470();
  v38 = v66;
  sub_190D50B60();
  v50 = (4 * v55);
  v48 = v67 + 4 * v55;
  v49 = *(v65 + 48);
  *v48 = 4;
  sub_190D56E50();
  sub_190D51980();
  v37(v6, v33, v36);
  v39 = v37;
  sub_190D51470();
  v57(v38, 1, 1, v58);
  sub_190D50B30();
  *(swift_allocObject() + 16) = v53;
  sub_190D56E50();
  sub_190D51980();
  v40 = v62;
  v41 = v64;
  v39(v6, v62, v64);
  sub_190D51470();
  v42 = v66;
  sub_190D50B60();
  v50 += v67 + v55;
  v55 = *(v65 + 48);
  *v50 = 5;
  sub_190D56E50();
  sub_190D51980();
  v43 = v52;
  (v52)(v6, v40, v41);
  sub_190D51470();
  v57(v42, 1, 1, v58);
  sub_190D50B30();
  *(swift_allocObject() + 16) = v53;
  sub_190D56E50();
  sub_190D51980();
  (v43)(v6, v62, v64);
  sub_190D51470();
  sub_190D50B60();
  v44 = sub_190824540(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9E688 = v44;
  return result;
}

unint64_t sub_190CD8474()
{
  result = qword_1EAD45DB0;
  if (!qword_1EAD45DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DB0);
  }

  return result;
}

unint64_t sub_190CD84CC()
{
  result = qword_1EAD45DE0;
  if (!qword_1EAD45DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DE0);
  }

  return result;
}

unint64_t sub_190CD8524()
{
  result = qword_1EAD45DC8;
  if (!qword_1EAD45DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DC8);
  }

  return result;
}

unint64_t sub_190CD857C()
{
  result = qword_1EAD45DA8;
  if (!qword_1EAD45DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DA8);
  }

  return result;
}

unint64_t sub_190CD85D4()
{
  result = qword_1EAD45DD0;
  if (!qword_1EAD45DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DD0);
  }

  return result;
}

unint64_t sub_190CD8628()
{
  result = qword_1EAD45DE8;
  if (!qword_1EAD45DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DE8);
  }

  return result;
}

unint64_t sub_190CD8680()
{
  result = qword_1EAD45DD8;
  if (!qword_1EAD45DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DD8);
  }

  return result;
}

unint64_t sub_190CD875C()
{
  result = qword_1EAD62BB8;
  if (!qword_1EAD62BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62BB8);
  }

  return result;
}

uint64_t sub_190CD87B0(uint64_t a1)
{
  v2 = sub_190CD875C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190CD8800()
{
  result = qword_1EAD45DC0;
  if (!qword_1EAD45DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DC0);
  }

  return result;
}

unint64_t sub_190CD8858()
{
  result = qword_1EAD45DA0;
  if (!qword_1EAD45DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DA0);
  }

  return result;
}

unint64_t sub_190CD88B0()
{
  result = qword_1EAD45DB8;
  if (!qword_1EAD45DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DB8);
  }

  return result;
}

uint64_t sub_190CD8904()
{
  if (qword_1EAD52068 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_190CD8960(uint64_t a1)
{
  v2 = sub_190CD8680();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190CD8A04()
{
  result = qword_1EAD45DF8;
  if (!qword_1EAD45DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45DF8);
  }

  return result;
}

unint64_t sub_190CD8A5C()
{
  result = qword_1EAD45E08;
  if (!qword_1EAD45E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E08);
  }

  return result;
}

uint64_t sub_190CD8B00()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E690);
  __swift_project_value_buffer(v6, qword_1EAD9E690);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190CD8CE8()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9E6A8);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E6A8);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_190CD8D70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62BF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62BF8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1909D50AC();
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C00);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C08);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190CD8F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[132] = a3;
  v3[131] = a2;
  v3[130] = a1;
  sub_190D572A0();
  v3[133] = sub_190D57290();
  v5 = sub_190D57240();
  v3[134] = v5;
  v3[135] = v4;

  return MEMORY[0x1EEE6DFA0](sub_190CD8FFC, v5, v4);
}

uint64_t sub_190CD8FFC()
{
  sub_190D50810();
  v1 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v1;
  v2 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v4;
  v5 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v5;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 1088) = v6;
  sub_190D52690();
  sub_190889CE4(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 1096) = v8;
  *v8 = v0;
  v8[1] = sub_190CD90F4;

  return (sub_190888E50)(v7, v6);
}

uint64_t sub_190CD90F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[138] = a1;
  v4[139] = a2;
  v4[140] = v2;

  if (v2)
  {
    v5 = v4[135];
    v6 = v4[134];
    v7 = sub_190CD9770;
  }

  else
  {

    v5 = v4[135];
    v6 = v4[134];
    v7 = sub_190CD9220;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_190CD9220()
{
  v40 = v0;
  v1 = v0 + 1024;
  v2 = *(v0 + 1104);
  *(v0 + 1024) = v2;
  if (v2 >> 62)
  {
LABEL_33:
    v3 = sub_190D581C0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_34:
    *(swift_task_alloc() + 16) = v1;

LABEL_35:

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v32 = sub_190D53040();
    __swift_project_value_buffer(v32, qword_1EAD9E840);
    v33 = sub_190D53020();
    v34 = sub_190D576A0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_19020E000, v33, v34, "Failed to find an IMMessagePartChatItem to tapback", v35, 2u);
      MEMORY[0x193AF7A40](v35, -1, -1);
    }

    v30 = *(v0 + 1112);

    sub_190CDA7D4();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();
    goto LABEL_40;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_3:
  v4 = v2 & 0xC000000000000001;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = *(v0 + 1104) + 32;
  while (1)
  {
    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v4)
    {
      v8 = MEMORY[0x193AF3B90](v3, *(v0 + 1104));
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v2 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    if (!v3)
    {
      goto LABEL_34;
    }
  }

  v9 = *(v0 + 1120);

  *(swift_task_alloc() + 16) = v1;
  v39 = v3;
  sub_190920978(&v39, &v38);
  if (v9)
  {
    __break(1u);
    goto LABEL_44;
  }

  v10 = v38;
  *(v0 + 1128) = v38;

  if (!v10)
  {
    goto LABEL_35;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  *(v0 + 1136) = v11;
  if (!v11)
  {

    goto LABEL_35;
  }

  v12 = v11;
  v13 = objc_opt_self();
  v14 = v10;
  v15 = [v13 chatItemWithIMChatItem:v12 balloonMaxWidth:0.0];
  *(v0 + 1144) = v15;
  if (!v15)
  {
    v16 = v14;
LABEL_25:

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v26 = sub_190D53040();
    __swift_project_value_buffer(v26, qword_1EAD9E840);
    v27 = sub_190D53020();
    v28 = sub_190D576A0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_19020E000, v27, v28, "Failed to cast CKChatItem to CKMessagePartChatItem", v29, 2u);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }

    v30 = *(v0 + 1112);

    sub_190CDA7D4();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();

LABEL_40:
    v37 = *(v0 + 8);

    v37();
    return;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    goto LABEL_25;
  }

  v18 = v17;
  v19 = *(v0 + 1112);
  sub_190D50810();
  [v19 sendMessageAcknowledgment:*(v0 + 1184) + 2000 forChatItem:v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  inited = swift_initStackObject();
  *(v0 + 1152) = inited;
  *(inited + 16) = xmmword_190DD1D90;
  v21 = [v12 guid];

  if (!v21)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v22 = sub_190D56F10();
  v24 = v23;

  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = swift_task_alloc();
  *(v0 + 1160) = v25;
  *v25 = v0;
  v25[1] = sub_190CD97E0;

  MessageQuery.entities(for:)(inited);
}

uint64_t sub_190CD9770()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190CD97E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[146] = a1;
  v4[147] = v1;

  v5 = v3[144];
  swift_setDeallocating();
  sub_190C4871C(v5 + 32);
  v6 = v3[135];
  v7 = v3[134];
  if (v1)
  {
    v8 = sub_190CD9C64;
  }

  else
  {
    v8 = sub_190CD994C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

void sub_190CD994C()
{
  v40 = v0;
  v1 = *(v0 + 1168);

  if (*(v1 + 16))
  {
    v2 = *(v0 + 1168);
    v3 = *(v0 + 1144);
    v4 = *(v0 + 1128);
    v5 = *(v0 + 1112);
    v6 = v2[3];
    *(v0 + 336) = v2[2];
    *(v0 + 352) = v6;
    v7 = v2[7];
    v9 = v2[4];
    v8 = v2[5];
    *(v0 + 400) = v2[6];
    *(v0 + 416) = v7;
    *(v0 + 368) = v9;
    *(v0 + 384) = v8;
    v10 = v2[11];
    v12 = v2[8];
    v11 = v2[9];
    *(v0 + 464) = v2[10];
    *(v0 + 480) = v10;
    *(v0 + 432) = v12;
    *(v0 + 448) = v11;
    sub_190889C88(v0 + 336, v0 + 496);

    v13 = sub_190D1FE8C();
    v14 = *(v0 + 448);
    *(v0 + 752) = *(v0 + 432);
    *(v0 + 768) = v14;
    v15 = *(v0 + 480);
    *(v0 + 784) = *(v0 + 464);
    *(v0 + 800) = v15;
    v16 = *(v0 + 384);
    *(v0 + 688) = *(v0 + 368);
    *(v0 + 704) = v16;
    v17 = *(v0 + 416);
    *(v0 + 720) = *(v0 + 400);
    *(v0 + 736) = v17;
    v18 = *(v0 + 352);
    *(v0 + 656) = *(v0 + 336);
    *(v0 + 672) = v18;
    sub_190889C88(v0 + 336, v0 + 816);
    sub_190D50820();
    *(v0 + 1032) = v13;
    sub_1909A6A08();
    sub_190D50690();

    sub_190889CE4(v0 + 336);

    v19 = *(v0 + 8);
  }

  else
  {

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1128);
    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9E840);
    v22 = v20;
    v23 = sub_190D53020();
    v24 = sub_190D576A0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 1136);
      v26 = *(v0 + 1128);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      v29 = [v25 guid];

      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = sub_190D56F10();
      v32 = v31;

      v33 = sub_19021D9F8(v30, v32, &v39);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_19020E000, v23, v24, "Failed to find a message entity matching chat item GUID '%s'", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x193AF7A40](v28, -1, -1);
      MEMORY[0x193AF7A40](v27, -1, -1);
    }

    else
    {
      v34 = *(v0 + 1128);
    }

    v35 = *(v0 + 1144);
    v36 = *(v0 + 1128);
    v37 = *(v0 + 1112);
    sub_190CDA7D4();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();

    v19 = *(v0 + 8);
  }

  v19();
}

uint64_t sub_190CD9C64()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1112);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190CD9D60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_190221DA4;

  return sub_190CD8F58(a1, v5, v4);
}

uint64_t sub_190CD9E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190CD9F54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190CD9E34(uint64_t a1)
{
  v2 = sub_1909D50AC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void *sub_190CD9E90(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_190CD9EE8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x193AF3B90](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_190CD9F54()
{
  v56 = sub_190D50C80();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v54 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v34 - v6;
  v7 = sub_190D51440();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D51460();
  v41 = v13;
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v34 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62BE0);
  sub_190D56E50();
  sub_190D51980();
  v18 = *(v8 + 104);
  v38 = *MEMORY[0x1E6968DF0];
  v17 = v38;
  v18(v10, v38, v7);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v35 = v7;
  v18(v10, v17, v7);
  v36 = v8 + 104;
  v37 = v18;
  v19 = v51;
  sub_190D51470();
  v20 = *(v57 + 56);
  v57 += 56;
  v42 = v20;
  v20(v19, 0, 1, v13);
  LOBYTE(v69[0]) = 6;
  sub_190D56E50();
  v49 = sub_190ADD800();
  *v10 = v49;
  v48 = *MEMORY[0x1E6968E00];
  (v18)(v10);
  sub_190D51980();
  sub_190D51470();
  v21 = v53;
  sub_190D505A0();
  v22 = sub_190D50590();
  v39 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v43 = v24;
  v44 = v23 + 56;
  v24(v21, 0, 1, v22);
  v24(v54, 1, 1, v22);
  v46 = *MEMORY[0x1E695A500];
  v25 = *(v58 + 104);
  v58 += 104;
  v47 = v25;
  v25(v55);
  sub_190CD875C();
  v26 = v51;
  v45 = sub_190D50870();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57068);
  sub_190D56E50();
  sub_190D51980();
  v27 = v38;
  v28 = v35;
  v29 = v37;
  v37(v10, v38, v35);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v29(v10, v27, v28);
  sub_190D51470();
  v42(v26, 0, 1, v41);
  sub_19092095C(v69);
  v65 = v69[6];
  v66 = v69[7];
  v67 = v69[8];
  v68 = v69[9];
  v61 = v69[2];
  v62 = v69[3];
  v63 = v69[4];
  v64 = v69[5];
  v59 = v69[0];
  v60 = v69[1];
  sub_190D56E50();
  *v10 = v49;
  v29(v10, v48, v28);
  sub_190D51980();
  sub_190D51470();
  v30 = v53;
  sub_190D505A0();
  v31 = v39;
  v32 = v43;
  v43(v30, 0, 1, v39);
  v32(v54, 1, 1, v31);
  v47(v55, v46, v56);
  sub_190888A1C();
  sub_190D50890();
  return v45;
}

unint64_t sub_190CDA7D4()
{
  result = qword_1EAD62BE8;
  if (!qword_1EAD62BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62BE8);
  }

  return result;
}

unint64_t sub_190CDA83C()
{
  result = qword_1EAD62C18;
  if (!qword_1EAD62C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62C18);
  }

  return result;
}

uint64_t _s8CellViewVMa_0()
{
  result = qword_1EAD62C48;
  if (!qword_1EAD62C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190CDA90C()
{
  _s4LinkVMa(319);
  if (v0 <= 0x3F)
  {
    sub_190A5E2A4();
    if (v1 <= 0x3F)
    {
      sub_190A5E2FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_190CDA9D0()
{
  v0 = sub_190D55490();
  __asm { FMOV            V0.2D, #12.0 }

  xmmword_1EAD62C20 = result;
  qword_1EAD62C30 = 0x4028000000000000;
  unk_1EAD62C38 = v0;
  qword_1EAD62C40 = 0x4024000000000000;
  return result;
}

uint64_t sub_190CDAA08@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  v10 = _s8CellViewVMa_0();
  if (*(a1 + *(v10 + 24)) == 1)
  {
    v11 = *(a1 + *(v10 + 20));
  }

  else
  {
    v11 = 2;
  }

  *v9 = sub_190D564C0();
  v9[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C70);
  sub_190CDAB78(a1, v9 + *(v13 + 44));
  sub_19022FD14(v9, v6, &qword_1EAD62C68);
  *a2 = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C78);
  sub_19022FD14(v6, &a2[*(v14 + 48)], &qword_1EAD62C68);
  sub_19022EEA4(v9, &qword_1EAD62C68);
  return sub_19022EEA4(v6, &qword_1EAD62C68);
}

uint64_t sub_190CDAB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C80);
  MEMORY[0x1EEE9AC00](v117);
  v4 = &v89 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B150);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v89 - v9;
  v113 = _s4LinkVMa(0);
  v103 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v104 = v10;
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C90);
  MEMORY[0x1EEE9AC00](v106);
  v12 = &v89 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C98);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v107 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v89 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62CA0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v89 - v16;
  v101 = sub_190D543C0();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D108);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v89 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62CA8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  v28 = _s8CellViewVMa_0();
  v29 = v28[9];
  v114 = a1;
  v121 = *(a1 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B148);
  sub_190D55FD0();
  v30 = v120;
  if (v120)
  {
    v100 = v25;
    v101 = v4;
    *(v12 + 3) = v113;
    *(v12 + 4) = sub_190CDCCA0(&qword_1EAD555A8, _s4LinkVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    v96 = _s4LinkVMa;
    v32 = v114;
    sub_190CDC034(v114, boxed_opaque_existential_1, _s4LinkVMa);
    v33 = *(v32 + v28[8]);
    v34 = *(v32 + v28[7]);
    v97 = v34;
    *(v12 + 5) = v30;
    *(v12 + 6) = v33;
    v12[56] = v34;
    v12[57] = (*(v32 + v28[6]) & 1) == 0;
    v35 = v33;
    v98 = v30;
    v90 = sub_190D56500();
    v37 = v36;
    sub_190D525D0();
    v39 = v38;
    v95 = sub_190D543E0();
    v40 = *(v95 + 20);
    v93 = *MEMORY[0x1E697F468];
    v41 = v93;
    v92 = sub_190D54A20();
    v42 = *(v92 - 8);
    v91 = *(v42 + 104);
    v94 = v42 + 104;
    v91(&v21[v40], v41, v92);
    *v21 = v39;
    *(v21 + 1) = v39;
    sub_190D52600();
    *&v21[*(v19 + 56)] = 256;
    sub_190D56500();
    v43 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62CC8) + 36)];
    sub_190D54430();
    sub_19081E40C(v21, v43, &qword_1EAD5D108);
    v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62CD0) + 36));
    v45 = v126;
    v44[4] = v125;
    v44[5] = v45;
    v44[6] = v127;
    v46 = v122;
    *v44 = v121;
    v44[1] = v46;
    v47 = v124;
    v44[2] = v123;
    v44[3] = v47;
    v48 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62CD8) + 36));
    *v48 = v90;
    v48[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B220);
    sub_190D544B0();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_190DD1DA0;
    sub_190D54490();
    sub_190D544A0();
    v120 = v49;
    v50 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62CE0) + 36)];
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1F8);
    sub_190CDCCA0(&qword_1EAD5B228, MEMORY[0x1E697ECE8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B230);
    sub_190233640(&qword_1EAD5B238, &qword_1EAD5B230);
    sub_190D58170();
    sub_190D525D0();
    v53 = v52;
    v91(&v50[*(v95 + 20)], v93, v92);
    *v50 = v53;
    *(v50 + 1) = v53;
    v50[*(v51 + 36)] = 0;
    v12[*(v106 + 36)] = 0;
    v54 = v32;
    v55 = v105;
    v56 = v96;
    sub_190CDC034(v54, v105, v96);
    v57 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v58 = swift_allocObject();
    sub_190CDC09C(v55, v58 + v57, v56);
    sub_190CDC164();
    v59 = v102;
    sub_190D55BB0();

    sub_19022EEA4(v12, &qword_1EAD62C90);
    v60 = 1;
    v61 = v119;
    v62 = v109;
    if (v97)
    {
      v63 = *(v114 + *(v113 + 32));
      sub_190D52BD0();
      swift_allocObject();
      v64 = v63;
      sub_190D52BE0();
      v65 = v99;
      sub_190D52BF0();
      sub_190D525C0();
      LOBYTE(v63) = sub_190D552B0();
      sub_190D539C0();
      v66 = v65 + *(v62 + 36);
      *v66 = v63;
      *(v66 + 8) = v67;
      *(v66 + 16) = v68;
      *(v66 + 24) = v69;
      *(v66 + 32) = v70;
      *(v66 + 40) = 0;
      sub_19081E40C(v65, v61, &qword_1EAD5B150);
      v60 = 0;
    }

    (*(v108 + 56))(v61, v60, 1, v62);
    v71 = v111;
    v72 = *(v111 + 16);
    v73 = v61;
    v74 = v107;
    v75 = v112;
    v72(v107, v59, v112);
    v76 = v73;
    v77 = v110;
    sub_190CDC46C(v76, v110);
    v78 = v101;
    v72(v101, v74, v75);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62D20);
    sub_190CDC46C(v77, v78 + *(v79 + 48));
    sub_19022EEA4(v77, &qword_1EAD62C88);
    v80 = *(v71 + 8);
    v80(v74, v75);
    sub_19022FD14(v78, v116, &qword_1EAD62C80);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD62CB8, &qword_1EAD62C80);
    sub_190CDBF38();
    sub_190D54C50();

    sub_19022EEA4(v78, &qword_1EAD62C80);
    sub_19022EEA4(v119, &qword_1EAD62C88);
    return (v80)(v59, v75);
  }

  else
  {
    sub_190D525D0();
    v83 = v82;
    v84 = *(sub_190D543E0() + 20);
    v85 = *MEMORY[0x1E697F468];
    v86 = sub_190D54A20();
    (*(*(v86 - 8) + 104))(&v24[v84], v85, v86);
    *v24 = v83;
    *(v24 + 1) = v83;
    sub_190D52600();
    *&v24[*(v19 + 56)] = 256;
    sub_190D543B0();
    sub_190233640(&qword_1EAD62CB0, &qword_1EAD5D108);
    sub_190D55C40();
    (*(v100 + 8))(v18, v101);
    sub_19022EEA4(v24, &qword_1EAD5D108);
    sub_190D56500();
    sub_190D53C60();
    v87 = &v27[*(v25 + 36)];
    v88 = v122;
    *v87 = v121;
    *(v87 + 1) = v88;
    *(v87 + 2) = v123;
    sub_19022FD14(v27, v116, &qword_1EAD62CA8);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD62CB8, &qword_1EAD62C80);
    sub_190CDBF38();
    sub_190D54C50();
    return sub_19022EEA4(v27, &qword_1EAD62CA8);
  }
}

uint64_t sub_190CDBA24(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_190D572A0();
  v1[7] = sub_190D57290();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_190CDBAD4;

  return sub_190AF88C0();
}

uint64_t sub_190CDBAD4(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190CDBC18, v3, v2);
}

uint64_t sub_190CDBC18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(_s8CellViewVMa_0() + 36));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B148);
  sub_190D55FE0();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190CDBCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD52080 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAD62C30;
  *a2 = sub_190D548D0();
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C58);
  sub_190CDAA08(v3, (a2 + *(v9 + 44)));
  sub_190CDC034(v3, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s8CellViewVMa_0);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_190CDC09C(v7, v11 + v10, _s8CellViewVMa_0);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C60) + 36));
  sub_190D53E20();
  result = sub_190D572C0();
  *v12 = &unk_190E04488;
  v12[1] = v11;
  return result;
}

uint64_t sub_190CDBE6C()
{
  v2 = *(_s8CellViewVMa_0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA4;

  return sub_190CDBA24(v0 + v3);
}

unint64_t sub_190CDBF38()
{
  result = qword_1EAD62CC0;
  if (!qword_1EAD62CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D108);
    sub_190233640(&qword_1EAD62CB0, &qword_1EAD5D108);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62CC0);
  }

  return result;
}

uint64_t sub_190CDC034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190CDC09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_190CDC104()
{
  v1 = *(_s4LinkVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1909C94D8(v2);
}

unint64_t sub_190CDC164()
{
  result = qword_1EAD62CE8;
  if (!qword_1EAD62CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62C90);
    sub_190CDC21C();
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62CE8);
  }

  return result;
}

unint64_t sub_190CDC21C()
{
  result = qword_1EAD62CF0;
  if (!qword_1EAD62CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62CE0);
    sub_190CDC2D4();
    sub_190233640(&qword_1EAD5B1F0, &qword_1EAD5B1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62CF0);
  }

  return result;
}

unint64_t sub_190CDC2D4()
{
  result = qword_1EAD62CF8;
  if (!qword_1EAD62CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62CC8);
    sub_190CDC38C();
    sub_190233640(&qword_1EAD62D18, &qword_1EAD62CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62CF8);
  }

  return result;
}

unint64_t sub_190CDC38C()
{
  result = qword_1EAD62D00;
  if (!qword_1EAD62D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62D08);
    sub_190CDC418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62D00);
  }

  return result;
}

unint64_t sub_190CDC418()
{
  result = qword_1EAD62D10;
  if (!qword_1EAD62D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62D10);
  }

  return result;
}

uint64_t sub_190CDC46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_190CDC4F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_190CDC540(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_190CDC5A0()
{
  result = qword_1EAD62D28;
  if (!qword_1EAD62D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62C60);
    sub_190233640(&qword_1EAD62D30, &qword_1EAD62D38);
    sub_190CDCCA0(&qword_1EAD52288, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62D28);
  }

  return result;
}

id sub_190CDC68C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  [v1 _setPreferredSizeClass_];
  [v1 setMetadata_];
  v2 = 0.0;
  if (*(v0 + 56) == 1)
  {
    sub_190D525B0();
    v4 = v3;
    sub_190D525C0();
    v2 = v4 + v5;
  }

  [v1 setContentInset_];
  v6 = [objc_opt_self() clearColor];
  [v1 _setOverrideBackgroundColor_];

  sub_190D525D0();
  [v1 _setEffectiveCornerRadius_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62D48);
  sub_190D55030();
  [v1 setDelegate_];

  return v1;
}

uint64_t sub_190CDC7D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v6 = 10.0;
  }

  else
  {
    v6 = *&a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62D48);
  sub_190D55030();
  type metadata accessor for CGSize(0);
  sub_190CDCCA0(&qword_1EAD62D50, type metadata accessor for CGSize);
  sub_190D58230();
  v7 = OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_sizeCache;
  swift_beginAccess();
  v8 = *&v18[v7];
  sub_190D52690();

  if (*(v8 + 16) && (v9 = sub_190875C84(v20), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9);
    sub_19084CFD0(v20);

    return v11;
  }

  else
  {

    sub_19084CFD0(v20);
    [a5 sizeThatFits_];
    v14 = v13;
    sub_190D55030();
    sub_190D58230();
    v15 = OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_sizeCache;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *&v19[v15];
    *&v19[v15] = 0x8000000000000000;
    sub_190C1D534(v20, isUniquelyReferenced_nonNull_native, v6, v14);
    sub_19084CFD0(v20);
    *&v19[v15] = v17;
    swift_endAccess();

    return *&v6;
  }
}

uint64_t sub_190CDCA00@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for LPLinkViewRepresentableCoordinator();
  sub_19083B854(v1, v16);
  v4 = *(v1 + 48);
  v5 = v17;
  v6 = v18;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v11 + 16))(v10, v8);
  v12 = v4;
  v13 = sub_190B19CEC(v10, v4, v3, v5, v6);

  result = __swift_destroy_boxed_opaque_existential_0(v16);
  *a1 = v13;
  return result;
}

uint64_t sub_190CDCB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190CDCC4C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190CDCBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190CDCC4C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190CDCC24()
{
  sub_190CDCC4C();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190CDCC4C()
{
  result = qword_1EAD62D40;
  if (!qword_1EAD62D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62D40);
  }

  return result;
}

uint64_t sub_190CDCCA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190CDCCE8(unint64_t a1, uint64_t a2)
{
  v78 = a1;
  v3 = CKFrameworkBundle();
  if (!v3)
  {
    __break(1u);
    goto LABEL_44;
  }

  v4 = v3;
  v5 = sub_190D56ED0();
  v6 = sub_190D56ED0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_190D56F10();
  v8 = CKFrameworkBundle();
  if (!v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v9 = v8;
  v10 = sub_190D56ED0();
  v11 = sub_190D56ED0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  sub_190D56F10();
  v13 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation;
  v14 = [*(v79 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) sendingService];
  sub_1902188FC(0, &qword_1EAD62D58);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [ObjCClassFromMetadata iMessageService];
  v17 = v16;
  v18 = a2;
  if (!v14)
  {
    if (!v16)
    {
LABEL_8:

      v20 = sub_190CDD7E8(v78);
      v21 = CKFrameworkBundle();
      v22 = v21;
      if (v20)
      {
        if (!v21)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else if (!v21)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      goto LABEL_32;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v16)
  {
    v17 = v14;
    goto LABEL_12;
  }

  sub_1902188FC(0, &qword_1EAD5AE70);
  v19 = sub_190D57D90();

  if (v19)
  {
    goto LABEL_8;
  }

LABEL_13:
  v23 = [*(v79 + v13) sendingService];
  v24 = [ObjCClassFromMetadata rcsService];
  v25 = v24;
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_19;
    }

LABEL_27:
    v49 = 1;
    goto LABEL_33;
  }

  if (!v24)
  {

    goto LABEL_27;
  }

  sub_1902188FC(0, &qword_1EAD5AE70);
  v26 = sub_190D57D90();

  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  v27 = [ObjCClassFromMetadata smsService];
  if (!v27)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v28 = v27;

  v29 = [*(v79 + v13) lastAddressedHandle];
  v30 = [*(v79 + v13) lastAddressedSIMID];
  v31 = [v28 __ck_maxRecipientCountForHandle_simID_];

  if (v31 >= *(a2 + 16))
  {
    v50 = sub_190CDD7E8(v78);
    v51 = CKFrameworkBundle();
    v22 = v51;
    if (v50)
    {
      if (!v51)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else if (!v51)
    {
LABEL_54:
      __break(1u);
      return;
    }

LABEL_32:
    v52 = sub_190D56ED0();
    v53 = sub_190D56ED0();
    v54 = [v22 localizedStringForKey:v52 value:0 table:v53];

    sub_190D56F10();
    v49 = 1;
    goto LABEL_33;
  }

  v32 = objc_opt_self();
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v34 = [v32 localizedStringFromNumber:v33 numberStyle:1];

  v35 = sub_190D56F10();
  v37 = v36;

  v38 = CKFrameworkBundle();
  if (!v38)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v39 = v38;
  v40 = sub_190D56ED0();
  v41 = sub_190D56ED0();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  sub_190D56F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_190DD1D90;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_19081EA10();
  *(v43 + 32) = v35;
  *(v43 + 40) = v37;
  v44 = CKFrameworkBundle();
  if (!v44)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v45 = v44;
  v46 = sub_190D56ED0();
  v47 = sub_190D56ED0();
  v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

  sub_190D56F10();
  sub_190D56EE0();

  v49 = 0;
LABEL_33:
  v55 = CKFrameworkBundle();
  if (!v55)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v56 = v55;
  v57 = sub_190D56ED0();
  v58 = sub_190D56ED0();
  v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

  sub_190D56F10();
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v18;
  sub_190D50920();
  sub_190D52690();
  v62 = sub_190D56ED0();

  aBlock[4] = sub_190CDDA40;
  aBlock[5] = v61;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_132;
  v63 = _Block_copy(aBlock);

  v64 = objc_opt_self();
  v65 = [v64 actionWithTitle:v62 style:0 handler:v63];
  _Block_release(v63);

  v66 = CKFrameworkBundle();
  v67 = v66;
  if (v49)
  {
    if (v66)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  if (!v66)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_38:
  v68 = sub_190D56ED0();
  v69 = sub_190D56ED0();
  v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

  sub_190D56F10();
  v71 = sub_190D56ED0();

  v72 = [v64 actionWithTitle:v71 style:1 handler:0];

  v73 = sub_190D56ED0();

  v74 = sub_190D56ED0();

  v75 = [objc_opt_self() alertControllerWithTitle:v73 message:v74 preferredStyle:1];

  if (v49)
  {
    [v75 addAction_];
    [v75 setPreferredAction_];
  }

  [v75 addAction_];
  v76 = *(v79 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
  if (v76)
  {
    v77 = v76;
    [v77 presentViewController:v75 animated:1 completion:0];
  }
}

BOOL sub_190CDD7E8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v6 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AF3B90](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v9 = [v7 ID];
    if (!v9)
    {
      sub_190D56F10();
      v9 = sub_190D56ED0();
    }

    IsEmail = IMStringIsEmail();

    v4 = v6 + 1;
  }

  while (!IsEmail);
  return v3 != v6;
}

void sub_190CDD904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = a3;
      aBlock[4] = sub_190CDDB70;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_9_10;
      v10 = _Block_copy(aBlock);
      sub_190D50920();
      sub_190D52690();

      [v8 dismissViewControllerAnimated:1 completion:v10];
      _Block_release(v10);
    }
  }
}

void sub_190CDDA48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController];
    *&Strong[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController];
    *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController] = 0;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_190D57160();
      [v7 detailsCoordinatorDidRequestNewCompose:v5 addresses:v8];

      swift_unknownObjectRelease();
    }
  }
}

NSAttributedString __swiftcall CKScheduledSectionDateCell.scheduledSectionDateString(controlState:)(UIControlState controlState)
{
  v2 = v1;
  v4 = [v2 timeString];
  if (v4)
  {
    v5 = v4;
    if (![v2 displayEditButton])
    {
      return v5;
    }

    if (controlState == 4 || controlState == 1)
    {
      result.super.isa = [objc_opt_self() sharedBehaviors];
      if (!result.super.isa)
      {
        __break(1u);
        goto LABEL_31;
      }

      isa = result.super.isa;
      v8 = [(objc_class *)result.super.isa sendLaterScheduledSectionTimeHighlightedAttributes];
    }

    else
    {
      result.super.isa = [objc_opt_self() sharedBehaviors];
      if (!result.super.isa)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      isa = result.super.isa;
      v8 = [(objc_class *)result.super.isa sendLaterScheduledSectionTimeAttributes];
    }

    v14 = v8;

    if (!v14)
    {
      return v5;
    }

    type metadata accessor for Key(0);
    sub_19082B370();
    v15 = sub_190D56D90();

    result.super.isa = [objc_opt_self() sharedBehaviors];
    if (result.super.isa)
    {
      v16 = result.super.isa;
      v17 = [(objc_class *)result.super.isa sendLaterScheduledSectionEditAttributes];

      if (v17)
      {
        sub_190D56D90();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_190DD1D90;
        v19 = [v5 string];
        v20 = sub_190D56F10();
        v22 = v21;

        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = sub_19081EA10();
        *(v18 + 32) = v20;
        *(v18 + 40) = v22;
        result.super.isa = CKFrameworkBundle();
        if (result.super.isa)
        {
          v23 = result.super.isa;
          v24 = sub_190D56ED0();
          v25 = sub_190D56ED0();
          v26 = [(objc_class *)v23 localizedStringForKey:v24 value:0 table:v25];

          sub_190D56F10();
          sub_190D56EE0();

          v27 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v28 = sub_190D56ED0();
          v29 = sub_190D56D60();
          v30 = [v27 initWithString:v28 attributes:v29];

          v31 = v30;
          result.super.isa = [v31 string];
          if (result.super.isa)
          {
            v32 = result.super.isa;

            v33 = [v5 string];
            if (!v33)
            {
              sub_190D56F10();
              v33 = sub_190D56ED0();
            }

            v34 = [(objc_class *)v32 rangeOfString:v33];
            v36 = v35;

            if (*(v15 + 16) && (v37 = *MEMORY[0x1E69DB650], v38 = sub_1908789E0(*MEMORY[0x1E69DB650]), (v39 & 1) != 0))
            {
              sub_19021834C(*(v15 + 56) + 32 * v38, v40);

              sub_190824530(v40, &v41);
              __swift_project_boxed_opaque_existential_1(&v41, v42);
              [v31 addAttribute:v37 value:sub_190D58740() range:{v34, v36}];
              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_0(&v41);
            }

            else
            {
            }

            return v31;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      return v5;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1EAD51CA0 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9E028);
  v10 = sub_190D53020();
  v11 = sub_190D576A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, v10, v11, "CKScheduledSectionDateCell does not have a time string. Returning empty attributed string.", v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  return [v13 init];
}

void sub_190CDE170(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v59 - v8;
  v9 = sub_190D505E0();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = (&v59 - v12);
  v72 = sub_190D505B0();
  v63 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = (&v59 - v15);
  v16 = sub_190D50620();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_190D50650();
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_190D50630();
  v74 = *(v22 - 8);
  v75 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v73 = (&v59 - v27);
  v28 = v2;
  v29 = [v2 defaultIMHandle];
  if (v29)
  {
    v30 = v29;
    v60 = v6;
    v61 = a1;
    v31 = [v29 ID];

    v32 = v31;
    if (!v31)
    {
      sub_190D56F10();
      v32 = sub_190D56ED0();
    }

    v33 = sub_190D56F10();
    v35 = v34;
    v36 = [v32 _appearsToBeEmail];

    v37 = v73;
    v38 = v74;
    v39 = *(v74 + 104);
    v40 = MEMORY[0x1E695A028];
    *v73 = v33;
    v37[1] = v35;
    if (!v36)
    {
      v40 = MEMORY[0x1E695A020];
    }

    v41 = v75;
    v39(v37, *v40, v75);
    (*(v38 + 16))(v24, v37, v41);
    (*(v17 + 104))(v19, *MEMORY[0x1E6959FE0], v16);
    sub_190D52690();
    sub_190D50660();
    if (qword_1EAD44E88 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v42 = sub_190D57160();
    v43 = [v28 cnContactWithKeys_];

    if (v43)
    {

      v44 = [v43 identifier];
      v45 = sub_190D56F10();
      v59 = v43;
      v46 = v45;
      v48 = v47;

      v49 = v62;
      v50 = v63;
      *v62 = v46;
      v49[1] = v48;
      v51 = v72;
      (*(v50 + 104))(v49, *MEMORY[0x1E6959F88], v72);
      v52 = v67;
      *v67 = 0;
      v52[1] = 0xE000000000000000;
      v54 = v69;
      v53 = v70;
      (*(v69 + 104))(v52, *MEMORY[0x1E6959FA0], v70);
      (*(v50 + 16))(v71, v49, v51);
      (*(v54 + 16))(v66, v52, v53);
      v55 = v64;
      v56 = v65;
      v57 = v68;
      (*(v64 + 16))(v68, v76, v65);
      (*(v55 + 56))(v57, 0, 1, v56);
      v58 = sub_190D50B50();
      (*(*(v58 - 8) + 56))(v60, 1, 1, v58);
      sub_190D505C0();

      (*(v54 + 8))(v52, v53);
      (*(v50 + 8))(v49, v72);
      (*(v55 + 8))(v76, v56);
      (*(v74 + 8))(v73, v75);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_190CDE8DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD55F0;
  v1 = *MEMORY[0x1E695C258];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  qword_1EAD9D538 = v0;

  return v1;
}

void sub_190CDE944(void *a1)
{
  sub_190944B80(a1);

  sub_190CDE96C();
}

void sub_190CDE96C()
{
  [v0 setAlpha_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:800.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v1 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_19085EA58;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_190840E6C;
  v6[3] = &block_descriptor_124_1;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 addAnimations_];
  _Block_release(v4);
  [v2 startAnimationAfterDelay_];
}

void sub_190CDEAD4(uint64_t a1)
{
  sub_190C76C8C();
  if (a1)
  {
    v2 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v4 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v4;
    sub_190D52690();
    v5 = v4;
    sub_190CAA054(inited);
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AF3B90](v7, v2);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v10 = v8;

            sub_1909471F4(v10);

            goto LABEL_19;
          }

LABEL_8:
          if (*(v8 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v7;
          if (v9 == v6)
          {
            goto LABEL_17;
          }
        }

        if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v6 = sub_190D581C0();
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      v8 = *(v2 + 8 * v7 + 32);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  sub_19094851C();
LABEL_19:
  sub_190CDE96C();
}

void sub_190CDEC60(void *a1)
{
  sub_19094941C(a1);
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode];
  [v1 setAlpha_];
  v3 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
  if (v2 == 1)
  {
    v4 = [v3 initWithMass:1.0 stiffness:700.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v16 = sub_190B45D74;
    v17 = v6;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_190840E6C;
    v15 = &block_descriptor_118;
    v7 = _Block_copy(&v12);
    v8 = v1;

    [v5 addAnimations_];
    _Block_release(v7);
    [v5 startAnimationAfterDelay_];
  }

  else
  {
    v4 = [v3 initWithMass:1.0 stiffness:400.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v16 = sub_19085EA24;
    v17 = v9;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_190840E6C;
    v15 = &block_descriptor_133;
    v10 = _Block_copy(&v12);
    v11 = v1;

    [v5 addAnimations_];
    _Block_release(v10);
    [v5 startAnimationAfterDelay_];
  }
}

id sub_190CDEF40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall CKConversationListCollectionViewController.updateConversations(_:asRead:)(Swift::OpaquePointer _, Swift::Bool asRead)
{
  v3 = v2;
  if (qword_1EAD51CF0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9E100);
  sub_190D52690();
  v6 = sub_190D53020();
  v7 = sub_190D576C0();
  v8 = _._rawValue >> 62;
  rawValue = _._rawValue;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30[0] = v10;
    *v9 = 134218242;
    if (v8)
    {
      v11 = sub_190D581C0();
    }

    else
    {
      v11 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v11;

    *(v9 + 12) = 2080;
    if (asRead)
    {
      v12 = 1684104562;
    }

    else
    {
      v12 = 0x646165726E75;
    }

    if (asRead)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_19021D9F8(v12, v13, v30);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_19020E000, v6, v7, "Logging %ld as %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  else
  {
  }

  if (v8)
  {
    v15 = sub_190D581C0();
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  v16 = 0;
  while (1)
  {
    if ((rawValue & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x193AF3B90](v16, rawValue);
    }

    else
    {
      if (v16 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v17 = *(rawValue + 32 + 8 * v16);
    }

    v18 = v17;
    if (__OFADD__(v16++, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v20 = &selRef_markAllMessagesAsRead;
    if (!asRead)
    {
      v20 = &selRef_markLastMessageAsUnread;
    }

    [v17 *v20];
    v21 = [v3 activeFilterModes];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    sub_1902188FC(0, &qword_1EAD46510);
    sub_190218944();
    _._rawValue = sub_190D57410();

    v23 = sub_190D574B0();

    if (*(v23 + 16) && (sub_190D58870(), MEMORY[0x193AF4110](8), v24 = sub_190D588C0(), v25 = -1 << *(v23 + 32), v26 = v24 & ~v25, ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
    {
      v27 = ~v25;
      while (*(*(v23 + 48) + 8 * v26) != 8)
      {
        v26 = (v26 + 1) & v27;
        if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      [v3 beginHoldingConversationInConversationListIfNeeded_];
    }

    else
    {
LABEL_16:
    }

    if (v16 == v15)
    {
      return;
    }
  }

  __break(1u);
}

void __swiftcall CKConversationListCollectionViewController.recoverableDeleteContextMenuAction(conversations:collectionView:indexPaths:point:)(UIAction *__return_ptr retstr, Swift::OpaquePointer conversations, UICollectionView *collectionView, Swift::OpaquePointer indexPaths, CGPoint point)
{
  y = point.y;
  x = point.x;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2]._rawValue = v10;
  v11[3]._rawValue = conversations._rawValue;
  v11[4]._rawValue = collectionView;
  v11[5]._rawValue = indexPaths._rawValue;
  *&v11[6]._rawValue = x;
  *&v11[7]._rawValue = y;
  sub_190D50920();
  sub_190D52690();
  v12 = collectionView;
  sub_190D52690();
  LODWORD(indexPaths._rawValue) = CKIsRunningInMacCatalyst();
  v13 = CKFrameworkBundle();
  v14 = v13;
  if (LODWORD(indexPaths._rawValue))
  {
    if (v13)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_190D56ED0();
  v16 = sub_190D56ED0();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  sub_190D56F10();
  v18 = sub_190D56ED0();
  v19 = [objc_opt_self() systemImageNamed_];

  sub_1902188FC(0, &qword_1EAD464F0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_190CDFE10;
  *(v20 + 24) = v11;
  v21 = v19;
  sub_190D50920();
  v22 = sub_190D57DC0();
  if (!CKIsRunningInMacCatalyst())
  {
    [v22 setAttributes_];
  }
}

uint64_t sub_190CDF670(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v52 = a6;
  v61 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = sub_190D51C00();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v52 - v20;
  v59 = sub_190D51840();
  v21 = *(v59 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v53 = v21;
    v55 = v25;
    sub_190D517F0();
    v28 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
    [v28 setPresentationViewController_];
    sub_1902188FC(0, &qword_1EAD466B0);
    v56 = a4;
    v29 = sub_190D57160();
    v54 = v28;
    [v28 setTargetConversations_];

    v30 = [v61 indexPathForItemAtPoint_];
    v60 = v27;
    if (v30)
    {
      v31 = v30;
      sub_190D51BC0();

      v32 = *(v16 + 32);
      v32(v11, v18, v15);
      v33 = *(v16 + 56);
      v33(v11, 0, 1, v15);
      v32(v14, v11, v15);
      v33(v14, 0, 1, v15);
      v34 = *(v16 + 48);
      v35 = v53;
    }

    else
    {
      v36 = *(v16 + 56);
      v37 = 1;
      v36(v11, 1, 1, v15);
      if (*(v52 + 16))
      {
        (*(v16 + 16))(v14, v52 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);
        v37 = 0;
      }

      v35 = v53;
      v36(v14, v37, 1, v15);
      v34 = *(v16 + 48);
      if (v34(v11, 1, v15) != 1)
      {
        sub_19098D840(v11);
      }
    }

    v38 = v57;
    if (v34(v14, 1, v15) == 1)
    {
      sub_19098D840(v14);
      v39 = v55;
    }

    else
    {
      (*(v16 + 32))(v38, v14, v15);
      v40 = sub_190D51BB0();
      v41 = [v61 cellForItemAtIndexPath_];

      v39 = v55;
      if (v41)
      {
        v42 = v54;
        [v54 setSourceView_];

        (*(v16 + 8))(v38, v15);
LABEL_14:
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v58;
        v44 = v59;
        (*(v35 + 16))(v58, v39, v59);
        v46 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v47 = swift_allocObject();
        v48 = v39;
        v49 = v56;
        *(v47 + 16) = v43;
        *(v47 + 24) = v49;
        (*(v35 + 32))(v47 + v46, v45, v44);
        aBlock[4] = sub_190CB65E8;
        aBlock[5] = v47;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_190840E6C;
        aBlock[3] = &block_descriptor_134;
        v50 = _Block_copy(aBlock);
        sub_190D52690();

        [v42 setAlertsCompletedBlock_];
        _Block_release(v50);
        v51 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
        [v51 presentRecoverableConversationDeletionConfirmations];

        return (*(v35 + 8))(v48, v44);
      }

      (*(v16 + 8))(v38, v15);
    }

    v42 = v54;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_190CDFE58(void *a1)
{
  sub_190CDFEE4();
  v2 = a1;
  v3 = sub_190D57900();

  return v3;
}

uint64_t UITraitCollection.systemGlassLegibilitySetting.getter()
{
  sub_190CDFEE4();

  return sub_190D57900();
}

unint64_t sub_190CDFEE4()
{
  result = qword_1EAD62D60;
  if (!qword_1EAD62D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62D60);
  }

  return result;
}

uint64_t sub_190CE00E4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190CE0144(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackGlyphView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id TapbackGlyphView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackGlyphView.init()()
{
  *&v0[OBJC_IVAR___CKTapbackGlyphView_attributionScaleFactor] = 0x3FE6A09E667F3BCDLL;
  v1 = &v0[OBJC_IVAR___CKTapbackGlyphView_platterEdgeInsets];
  __asm { FMOV            V0.2D, #4.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___CKTapbackGlyphView_isSelected] = 0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackGlyphView();
  v7 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = objc_opt_self();
  v9 = v7;
  result = [v8 sharedBehaviors];
  if (result)
  {
    v11 = result;
    v12 = v9;
    v13 = [v11 emojiStickerTranscriptCellFont];
    [v12 setFont_];

    [v12 setAdjustsFontSizeToFitWidth_];
    [v12 setUserInteractionEnabled_];
    result = [v11 theme];
    if (result)
    {
      v14 = result;
      v15 = [result primaryLabelColor];

      [v12 setTextColor_];
      v16 = v12;
      [v16 setTextAlignment_];
      v17 = [objc_opt_self() clearColor];
      [v16 setBackgroundColor_];

      [v16 setNumberOfLines_];
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190CE04BC()
{
  v1 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190CE0554(char a1)
{
  v3 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_190CE0604()
{
  v1 = sub_190D56ED0();
  [v0 setText_];

  v2 = [objc_opt_self() sharedBehaviors];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tapbackPickerSizingFont];
    [v0 setFont_];

    [v0 setAdjustsFontSizeToFitWidth_];
    LODWORD(v5) = 1148846080;
    [v0 setContentCompressionResistancePriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v0 setContentHuggingPriority:1 forAxis:v6];
    v7 = [v0 heightAnchor];
    v8 = [v0 widthAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    [v9 setActive_];
  }

  else
  {
    __break(1u);
  }
}

id TapbackGlyphView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TapbackGlyphView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TapbackGlyphView.configure(for:isSelected:)(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 associatedMessageEmoji];
    if (!v6)
    {
      sub_190D56F10();
      v7 = sub_190D56ED0();

      v6 = v7;
    }

    v8 = v6;
    [v1 setText_];
  }
}

Swift::Void __swiftcall TapbackGlyphView.performViewControllerAppearingAnimation()()
{
  [v0 setHidden_];
  CGAffineTransformMakeScale(&v5, 0.001, 0.001);
  [v0 setTransform_];
  if (qword_1EAD51E20 != -1)
  {
    swift_once();
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:qword_1EAD9E338 timingParameters:0.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *&v5.tx = sub_190B529EC;
  *&v5.ty = v2;
  *&v5.a = MEMORY[0x1E69E9820];
  *&v5.b = 1107296256;
  *&v5.c = sub_190840E6C;
  *&v5.d = &block_descriptor_135;
  v3 = _Block_copy(&v5);
  v4 = v0;

  [v1 addAnimations_];
  _Block_release(v3);
  [v1 startAnimationAfterDelay_];
}

double sub_190CE0EA8@<D0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v16[3] = sub_190D54E80();
  *a1 = sub_190D53C70();
  v8 = _s10StyleGuideVMa_0();
  v9 = v8[5];
  v10 = sub_190D565E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v7, 1, 1, v10);
  sub_190CE1150(v7);
  v12(v7, 1, 1, v10);
  sub_190CE11B8(v7, v4);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_190CE1150(v4);
    (*(v11 + 104))(a1 + v9, *MEMORY[0x1E6981DF0], v10);
  }

  else
  {
    (*(v11 + 32))(a1 + v9, v4, v10);
  }

  v13 = v8[6];
  *(a1 + v13) = sub_190D55D50();
  v14 = (a1 + v8[7]);
  result = 0.0;
  *v14 = 0u;
  v14[1] = 0u;
  *(a1 + v8[8]) = 0x4008000000000000;
  return result;
}

double sub_190CE10B8()
{
  v0 = _s10StyleGuideVMa_0();
  __swift_allocate_value_buffer(v0, qword_1EAD9E6C0);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E6C0);
  return sub_190CE0EA8(v1);
}

uint64_t _s10StyleGuideVMa_0()
{
  result = qword_1EAD62D88;
  if (!qword_1EAD62D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CE1150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190CE11B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190CE1250()
{
  sub_190D565E0();
  if (v0 <= 0x3F)
  {
    sub_190CE12FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190CE12FC()
{
  if (!qword_1EAD62D98)
  {
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD62D98);
    }
  }
}

double sub_190CE13C8()
{
  v1 = [v0 IMChatItem];
  if (!v1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
  }

  v4 = [v3 richCards];

  if (v4 && ((v5 = [v4 cards], v4, sub_190D575A0(), v6 = sub_190D57180(), v5, v6 >> 62) ? (v7 = sub_190D581C0()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 > 1))
  {
    return 0.0;
  }

  else
  {
    return *MEMORY[0x1E69DDCE0];
  }
}

id sub_190CE14E4()
{
  v1 = [v0 IMChatItem];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedIndex];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_190CE15BC()
{
  v1 = [v0 IMChatItem];
  if (!v1)
  {
    return type metadata accessor for RichLinkCardStackItemView();
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
  }

  v4 = [v3 richCards];

  if (v4 && ((v5 = [v4 cards], v4, sub_190D575A0(), v6 = sub_190D57180(), v5, v6 >> 62) ? (v7 = sub_190D581C0()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 >= 2))
  {
    return type metadata accessor for RichCardCarouselBalloonView();
  }

  else
  {
    return type metadata accessor for RichLinkCardStackItemView();
  }
}

uint64_t sub_190CE16FC()
{
  v1 = [v0 IMChatItem];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
  }

  v4 = [v3 richCards];

  if (v4 && ((v5 = [v4 cards], v4, sub_190D575A0(), v6 = sub_190D57180(), v5, v6 >> 62) ? (v7 = sub_190D581C0()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 > 1))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

id sub_190CE18A4()
{
  v1 = [v0 IMChatItem];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
    }

    v1 = [v2 richCards];
  }

  return v1;
}

void sub_190CE1928()
{
  v1 = [objc_opt_self() transcriptPreviewCache];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v13 = sub_190CE2A0C;
  v14 = v2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_190CE2F1C;
  v12 = &block_descriptor_136;
  v3 = _Block_copy(&v9);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v13 = sub_190CE3258;
  v14 = v5;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_190840E6C;
  v12 = &block_descriptor_6_12;
  v6 = _Block_copy(&v9);
  v7 = v4;

  v8 = sub_190D56ED0();
  [v1 enqueueGenerationBlock:v3 completion:v6 withPriority:0 forKey:v8];

  _Block_release(v6);
  _Block_release(v3);
}

void sub_190CE1AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_190D515F0();
  v148 = *(v4 - 8);
  v5 = v148[8];
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v119 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v144 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v146 = &v119 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v119 - v25;
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v147 = &v119 - v28;
  v29 = [a3 IMChatItem];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
  }

  v32 = [v31 richCards];

  if (!v32)
  {
    return;
  }

  v140 = v17;
  v141 = v14;
  v134 = v11;
  v137 = v8;
  v131 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v4;
  v33 = [v32 cards];

  sub_190D575A0();
  v34 = sub_190D57180();

  if (v34 >> 62)
  {
LABEL_49:
    v35 = sub_190D581C0();
    if (v35)
    {
      goto LABEL_7;
    }

LABEL_50:

    return;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_50;
  }

LABEL_7:
  v36 = 0;
  v37 = v34 & 0xC000000000000001;
  v151 = v34 & 0xFFFFFFFFFFFFFF8;
  v149 = (v148 + 4);
  v133 = v148 + 2;
  v132 = &v154;
  v139 = (v148 + 1);
  v136 = v34;
  v150 = v35;
  v152 = v34 & 0xC000000000000001;
  while (1)
  {
    if (v37)
    {
      v38 = MEMORY[0x193AF3B90](v36, v34);
    }

    else
    {
      if (v36 >= *(v151 + 16))
      {
        goto LABEL_48;
      }

      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((sub_190D189A4() & 1) == 0)
    {
      goto LABEL_32;
    }

    v41 = [v39 media];
    if (!v41)
    {
      goto LABEL_32;
    }

    v42 = v41;
    v43 = [v41 mediaUrl];

    if (!v43)
    {
      sub_190D56F10();
      v43 = sub_190D56ED0();
    }

    v44 = [v39 urlToTransferMap];
    if (v44)
    {
      break;
    }

LABEL_32:
    if ((sub_190D191E8() & 1) == 0)
    {
      goto LABEL_9;
    }

    v81 = [v39 media];
    if (!v81)
    {
      goto LABEL_9;
    }

    v82 = v81;
    v83 = [v81 thumbnailUrl];

    if (!v83)
    {
      goto LABEL_44;
    }

    v84 = [v39 urlToTransferMap];
    if (!v84)
    {

LABEL_44:
      v37 = v152;
      goto LABEL_10;
    }

    v85 = v84;
    v46 = [v84 transferGuidFromUrl_];

    if (!v46)
    {
      goto LABEL_44;
    }

    v86 = [objc_opt_self() sharedInstance];
    v37 = v152;
    if (!v86)
    {
      goto LABEL_53;
    }

    v87 = v86;
    v88 = [v86 transferForGUID_];

    if (!v88)
    {
      goto LABEL_9;
    }

    v89 = [v88 localURL];
    v90 = v149;
    if (!v89)
    {

LABEL_9:
      goto LABEL_10;
    }

    v91 = v134;
    v92 = v89;
    sub_190D515B0();

    v93 = v141;
    v138 = *v90;
    v138(v141, v91, v145);
    v94 = sub_190D51570();
    v95 = IMPreviewExtension();
    v96 = IMAttachmentPreviewFileURL();

    if (v96)
    {
      sub_190D515B0();

      (v138)();
      IMClientPreviewConstraints();
      v128 = v154;
      v129 = aBlock;
      v159 = v155;
      v157 = BYTE2(v155);
      v158 = 1;
      v130 = [objc_opt_self() sharedInstance];
      if (!v130)
      {
        goto LABEL_55;
      }

      v97 = v141;
      v127 = sub_190D51570();
      v126 = sub_190D51570();
      sub_190D56F10();
      v98 = sub_190D56ED0();

      v125 = [objc_opt_self() contextWithKnownSender:0 serviceName:v98];

      v123 = v159;
      v122 = v158;
      v121 = v157;
      v124 = [v88 guid];
      v99 = v148;
      v100 = v148[2];
      v101 = v144;
      v102 = v97;
      v103 = v145;
      v120 = v88;
      v100(v144, v102, v145);
      v100(v140, v137, v103);
      v104 = *(v99 + 80);
      v105 = (v104 + 24) & ~v104;
      v106 = (v5 + v104 + v105) & ~v104;
      v107 = swift_allocObject();
      *(v107 + 16) = v88;
      v108 = v107 + v105;
      v109 = v138;
      v138(v108, v101, v103);
      v109(v107 + v106, v140, v103);
      v155 = sub_190CE36A0;
      v156 = v107;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_190CE2A14;
      *(&v154 + 1) = &block_descriptor_19_2;
      v110 = _Block_copy(&aBlock);
      v138 = v120;

      v154 = v128;
      aBlock = v129;
      LOBYTE(v155) = v123;
      BYTE1(v155) = v122;
      BYTE2(v155) = v121;
      LOBYTE(v118) = 1;
      v111 = v130;
      v112 = v127;
      v113 = v126;
      v114 = v125;
      v115 = v124;
      [v130 generatePreview:v127 previewURL:v126 senderContext:v125 constraints:&aBlock balloonBundleID:0 transferGUID:v124 completionBlock:v110 blockUntilReply:v118];

      _Block_release(v110);
      v116 = v148[1];
      v117 = v145;
      v116(v137, v145);
      v116(v141, v117);
      v34 = v136;
    }

    else
    {
      (*v139)(v93, v145);
    }

    v35 = v150;
    v37 = v152;
LABEL_10:
    ++v36;
    if (v40 == v35)
    {
      goto LABEL_50;
    }
  }

  v45 = v44;
  v46 = [v44 transferGuidFromUrl_];

  v35 = v150;
  if (!v46)
  {
    goto LABEL_32;
  }

  v47 = [objc_opt_self() sharedInstance];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 transferForGUID_];

    v50 = v149;
    if (v49)
    {
      v51 = [v49 localURL];
      if (v51)
      {
        v52 = v51;
        sub_190D515B0();

        v53 = v147;
        v54 = v145;
        v138 = *v50;
        (v138)();
        v55 = sub_190D51570();
        v56 = IMPreviewExtension();
        v57 = IMAttachmentPreviewFileURL();

        if (v57)
        {
          v135 = v5;
          v58 = v54;
          v59 = v142;
          sub_190D515B0();

          v60 = v58;
          v138(v146, v59, v58);
          IMClientPreviewConstraints();
          v128 = v154;
          v129 = aBlock;
          v159 = v155;
          v157 = BYTE2(v155);
          v158 = 1;
          v130 = [objc_opt_self() sharedInstance];
          if (!v130)
          {
            goto LABEL_54;
          }

          v61 = v147;
          v127 = sub_190D51570();
          v126 = sub_190D51570();
          sub_190D56F10();
          v62 = sub_190D56ED0();

          v125 = [objc_opt_self() contextWithKnownSender:0 serviceName:v62];

          v123 = v159;
          v122 = v158;
          v121 = v157;
          v124 = [v49 guid];
          v63 = v148[2];
          v64 = v148;
          v65 = v144;
          v63(v144, v61, v58);
          v66 = v140;
          v63(v140, v146, v58);
          v67 = *(v64 + 80);
          v68 = (v67 + 24) & ~v67;
          v69 = (v135 + v67 + v68) & ~v67;
          v70 = swift_allocObject();
          *(v70 + 16) = v49;
          v71 = v70 + v68;
          v72 = v138;
          v138(v71, v65, v60);
          v72(v70 + v69, v66, v60);
          v155 = sub_190CE3798;
          v156 = v70;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v154 = sub_190CE2A14;
          *(&v154 + 1) = &block_descriptor_25_1;
          v73 = _Block_copy(&aBlock);
          v138 = v49;

          v154 = v128;
          aBlock = v129;
          LOBYTE(v155) = v123;
          BYTE1(v155) = v122;
          BYTE2(v155) = v121;
          LOBYTE(v118) = 1;
          v74 = v130;
          v75 = v127;
          v76 = v126;
          v77 = v125;
          v78 = v124;
          [v130 generatePreview:v127 previewURL:v126 senderContext:v125 constraints:&aBlock balloonBundleID:0 transferGUID:v124 completionBlock:v73 blockUntilReply:v118];
          _Block_release(v73);

          v79 = v148[1];
          v79(v146, v60);
          v80 = v60;
          v5 = v135;
          v79(v147, v80);
        }

        else
        {
          (*v139)(v53, v54);
        }

        v34 = v136;
        v35 = v150;
        v37 = v152;
      }

      else
      {
      }
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_53:

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_190CE2A14(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  sub_190D50920();
  v10 = a3;
  v9(a2, a3, a4, a5);
}

void sub_190CE2AA4(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v50 = a6;
  v51 = a3;
  v49 = a1;
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  if (qword_1EAD51D18 != -1)
  {
    swift_once();
  }

  v16 = sub_190D53040();
  __swift_project_value_buffer(v16, qword_1EAD9E160);
  v17 = *(v10 + 16);
  v17(v15, a4, v9);
  v17(v12, a5, v9);
  v18 = v51;
  v19 = a2;
  v20 = sub_190D53020();
  v21 = sub_190D57680();
  if (os_log_type_enabled(v20, v21))
  {
    v47 = v21;
    v48 = v10;
    v51 = v12;
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v22 = 136316162;
    v23 = [v18 guid];
    if (v23)
    {
      v24 = v23;

      v25 = sub_190D56F10();
      v27 = v26;

      v28 = sub_19021D9F8(v25, v27, &v53);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      sub_190CE3868(&qword_1EAD55F30, MEMORY[0x1E6968FB0]);
      v29 = sub_190D58720();
      v31 = v30;
      v32 = *(v48 + 8);
      v32(v15, v9);
      v33 = sub_19021D9F8(v29, v31, &v53);

      *(v22 + 14) = v33;
      *(v22 + 22) = 2080;
      v34 = v51;
      v35 = sub_190D58720();
      v37 = v36;
      v32(v34, v9);
      v38 = sub_19021D9F8(v35, v37, &v53);

      *(v22 + 24) = v38;
      *(v22 + 32) = 1024;
      *(v22 + 34) = v49 & 1;
      *(v22 + 38) = 2080;
      v52 = a2;
      v39 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD628F0);
      v40 = sub_190D56F50();
      v42 = sub_19021D9F8(v40, v41, &v53);

      *(v22 + 40) = v42;
      _os_log_impl(&dword_19020E000, v20, v47, v50, v22, 0x30u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v43, -1, -1);
      MEMORY[0x193AF7A40](v22, -1, -1);
    }

    else
    {

      v45 = *(v48 + 8);
      v45(v51, v9);
      v45(v15, v9);
      __break(1u);
    }
  }

  else
  {

    v44 = *(v10 + 8);
    v44(v12, v9);
    v44(v15, v9);
  }
}

id sub_190CE2F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_190D56F10();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_190D50920();
  v6 = v2(v3, v5);

  return v6;
}

uint64_t sub_190CE2FA4(void *a1)
{
  v2 = sub_190D56770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1908E9B68();
  v10 = sub_190D57870();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_190CE3698;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_13_2;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190CE3868(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_190CE3260(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_190D56ED0();
  [v2 postNotificationName:v3 object:a1];
}

id RichLinkCardStackChatItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RichLinkCardStackChatItem.init()()
{
  v1 = OBJC_IVAR___CKRichLinkCardStackChatItem_viewClass;
  *&v0[v1] = type metadata accessor for RichLinkCardStackItemView();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RichLinkCardStackChatItem();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_190CE347C(void *a1, SEL *a2, double a3)
{
  v7 = OBJC_IVAR___CKRichLinkCardStackChatItem_viewClass;
  *&v3[v7] = type metadata accessor for RichLinkCardStackItemView();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for RichLinkCardStackChatItem();
  v8 = objc_msgSendSuper2(&v10, *a2, a1, a3);

  if (v8)
  {
  }

  return v8;
}

id sub_190CE3514(char *a1, double a2, uint64_t a3, void *a4, const char **a5)
{
  v9 = OBJC_IVAR___CKRichLinkCardStackChatItem_viewClass;
  *&a1[v9] = type metadata accessor for RichLinkCardStackItemView();
  v14.receiver = a1;
  v14.super_class = type metadata accessor for RichLinkCardStackChatItem();
  v10 = *a5;
  v11 = a4;
  v12 = objc_msgSendSuper2(&v14, v10, v11, a2);

  if (v12)
  {
  }

  return v12;
}

id RichLinkCardStackChatItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RichLinkCardStackChatItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

void sub_190CE37A4(int a1, void *a2, const char *a3)
{
  v7 = *(sub_190D515F0() - 8);
  v8 = *(v7 + 80);
  sub_190CE2AA4(a1, a2, *(v3 + 16), v3 + ((v8 + 24) & ~v8), v3 + ((*(v7 + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8), a3);
}

uint64_t sub_190CE3868(unint64_t *a1, void (*a2)(uint64_t))
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

id TapbackEmojiView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_190CE3994()
{
  v1 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190CE3A2C(char a1)
{
  v3 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190CE3BDC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190CE3C3C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackEmojiView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

char *TapbackEmojiView.init()()
{
  *&v0[OBJC_IVAR___CKTapbackEmojiView_attributionScaleFactor] = 0x3FE6A09E667F3BCDLL;
  v1 = &v0[OBJC_IVAR___CKTapbackEmojiView_platterEdgeInsets];
  __asm { FMOV            V0.2D, #4.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  v7 = &v0[OBJC_IVAR___CKTapbackEmojiView_emoji];
  *v7 = 0;
  v7[1] = 0;
  v0[OBJC_IVAR___CKTapbackEmojiView_isSelected] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v0[OBJC_IVAR___CKTapbackEmojiView_frameSize];
  *v8 = 0;
  v8[1] = 0;
  *&v0[OBJC_IVAR___CKTapbackEmojiView_displayScale] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  *&v0[OBJC_IVAR___CKTapbackEmojiView_contentView] = v9;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for TapbackEmojiView();
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = *&v10[OBJC_IVAR___CKTapbackEmojiView_contentView];
  v12 = v10;
  [v12 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD1D90;
  v14 = sub_190D53180();
  v15 = MEMORY[0x1E69DC050];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  MEMORY[0x193AF3550](v13, sel_displayScaleChanged);

  swift_unknownObjectRelease();

  return v12;
}