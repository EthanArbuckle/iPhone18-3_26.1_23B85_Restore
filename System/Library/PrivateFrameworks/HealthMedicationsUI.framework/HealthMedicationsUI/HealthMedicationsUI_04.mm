uint64_t sub_2281D31D8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_2281D320C()
{
  sub_2283931D0();

  v1 = *(v0 + 16);
  v2 = sub_228300540();
  MEMORY[0x22AAB5C80](v2);

  return 0xD000000000000016;
}

uint64_t sub_2281D328C(uint64_t a1)
{
  v2 = sub_2281D519C();

  return MEMORY[0x282169440](a1, v2);
}

unint64_t sub_2281D32E0()
{
  result = qword_280DDCD30;
  if (!qword_280DDCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCD30);
  }

  return result;
}

uint64_t sub_2281D336C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_228392000();
  v6 = v5;
  if (v4 == sub_228392000() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_228393460();
  }

  return v9 & 1;
}

uint64_t sub_2281D33FC(uint64_t a1, uint64_t a2)
{
  sub_2283931D0();

  v4 = *(a1 + 16);
  v5 = sub_228300540();
  MEMORY[0x22AAB5C80](v5);

  sub_2283931D0();

  v6 = *(a2 + 16);
  v7 = sub_228300540();
  MEMORY[0x22AAB5C80](v7);

  return 1;
}

uint64_t sub_2281D3518(uint64_t a1)
{
  v2 = 0xE000000000000000;
  v3 = *(a1 + 16);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();

  v4 = *(a1 + 16);
  v5 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v2 = v7;
  }

  v9 = [*(a1 + 16) userSpecifiedName];
  if (v9 && (v10 = v9, sub_228392000(), v10, v11 = sub_2283920A0(), v13 = v12, , v13))
  {

    v21 = *(a1 + 16);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_228390F00();
    v14 = *(a1 + 16);
    sub_228392A30();
    v16 = v15;

    if (!v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = *(a1 + 16);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    v11 = sub_228390F20();
    sub_2283920A0();
    if (v17)
    {

      goto LABEL_14;
    }
  }

LABEL_14:
  sub_2283920A0();
  if (v18)
  {

    sub_2283920A0();
    if (v19)
    {

      MEMORY[0x22AAB5C80](v8, v2);

      MEMORY[0x22AAB5C80](8236, 0xE200000000000000);
    }
  }

  return v11;
}

void sub_2281D3788()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  v3 = [v1 secondaryLabelColor];
  [v0 setTextColor_];

  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];

  if (v7)
  {
    v8 = v7;
    [v5 pointSize];
    v9 = [v4 fontWithDescriptor:v8 size:?];

    [v0 setFont_];
    [v0 setNumberOfLines_];
    [v0 setLineBreakMode_];
    v10 = objc_opt_self();
    v11 = v0;
    v12 = [v10 mainScreen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    if (CGRectGetWidth(v33) >= 390.0)
    {
      v22 = [v10 mainScreen];
      [v22 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v34.origin.x = v24;
      v34.origin.y = v26;
      v34.size.width = v28;
      v34.size.height = v30;
      Width = CGRectGetWidth(v34);
      v21 = MEMORY[0x277D767F0];
      if (Width < 414.0)
      {
        v21 = MEMORY[0x277D767F8];
      }
    }

    else
    {
      v21 = MEMORY[0x277D76800];
    }

    v32 = *v21;
    [v11 setMaximumContentSizeCategory_];

    [v11 setLineBreakMode_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2281D3AB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v3 = [v1 secondaryLabelColor];
  [v0 setTextColor_];

  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v5 = objc_opt_self();
  v6 = v0;
  v7 = [v5 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  Width = CGRectGetWidth(v20);
  v17 = MEMORY[0x277D767F8];
  if (Width >= 414.0)
  {
    v17 = MEMORY[0x277D767F0];
  }

  v18 = *v17;
  [v6 setMaximumContentSizeCategory_];

  return v6;
}

BOOL sub_2281D3CBC()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_22838F0C0();
  v0 = sub_2283920C0();

  if (v0 < 8)
  {
    v2 = sub_2283920C0();

    return v2 > 7;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_2281D3E10(uint64_t a1)
{
  sub_2281D5084(0, &qword_280DDB878, type metadata accessor for UIContentSizeCategory, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v51 = xmmword_22839A470;
  *(inited + 16) = xmmword_22839A470;
  v3 = *MEMORY[0x277D76808];
  v4 = *MEMORY[0x277D76800];
  v5 = MEMORY[0x277D767F8];
  *(inited + 32) = *MEMORY[0x277D76808];
  *(inited + 40) = v4;
  v6 = *v5;
  v7 = *MEMORY[0x277D767F0];
  *(inited + 48) = *v5;
  *(inited + 56) = v7;
  v8 = *MEMORY[0x277D767E8];
  *(inited + 64) = *MEMORY[0x277D767E8];
  v53 = inited;
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  LOBYTE(v6) = sub_2281D3CBC();
  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v21;
  v54.size.height = v23;
  Width = CGRectGetWidth(v54);
  if (v6)
  {
    if (Width < 414.0)
    {

      return 1;
    }

    v26 = swift_initStackObject();
    *(v26 + 16) = v51;
    v30 = *MEMORY[0x277D76840];
    v31 = *MEMORY[0x277D76838];
    *(v26 + 32) = *MEMORY[0x277D76840];
    *(v26 + 40) = v31;
    v32 = *MEMORY[0x277D76828];
    v33 = *MEMORY[0x277D76820];
    *(v26 + 48) = *MEMORY[0x277D76828];
    *(v26 + 56) = v33;
    v28 = *MEMORY[0x277D76818];
    *(v26 + 64) = *MEMORY[0x277D76818];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    goto LABEL_9;
  }

  if (Width < 390.0)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_228397F30;
    v27 = *MEMORY[0x277D76820];
    v28 = *MEMORY[0x277D76818];
    *(v26 + 32) = *MEMORY[0x277D76820];
    *(v26 + 40) = v28;
    v29 = v27;
LABEL_9:
    v48 = v28;
    v47 = sub_2281D5988(v26);
    goto LABEL_10;
  }

  v38 = [v14 mainScreen];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v55.origin.x = v40;
  v55.origin.y = v42;
  v55.size.width = v44;
  v55.size.height = v46;
  if (CGRectGetWidth(v55) < 414.0)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_228397F40;
    v28 = *MEMORY[0x277D76818];
    *(v26 + 32) = *MEMORY[0x277D76818];
    goto LABEL_9;
  }

LABEL_10:
  v52 = a1;
  MEMORY[0x28223BE20](v47);
  v50[2] = &v52;
  v49 = sub_2283088F8(sub_2281D52B4, v50, v53);

  return v49 & 1;
}

void sub_2281D4178()
{
  v0 = sub_228392DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle_];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];

  if (v11)
  {
    v12 = v11;
    [v9 pointSize];
    v13 = [v8 fontWithDescriptor:v12 size:?];

    v14 = [objc_opt_self() configurationWithFont:v13 scale:1];
    sub_228392DA0();
    v15 = [objc_opt_self() tertiaryLabelColor];
    sub_228392D60();
    sub_228392CF0();
    v16 = sub_228391FC0();
    v17 = [objc_opt_self() systemImageNamed_];

    v40 = v14;
    if (v17)
    {
      v18 = [v17 imageWithConfiguration_];
    }

    sub_228392D90();
    sub_228392D10();
    sub_228392CE0();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    (*(v1 + 16))(v5, v7, v0);
    v19 = sub_228392DF0();
    v20 = [v19 titleLabel];
    if (v20)
    {
      v21 = v20;
      v22 = v12;
      [v9 pointSize];
      v23 = [v8 fontWithDescriptor:v22 size:?];

      [v21 setFont_];
    }

    [v19 setContentHorizontalAlignment_];
    v24 = [v19 titleLabel];
    [v24 setNumberOfLines_];

    v25 = objc_opt_self();
    v26 = v19;
    v27 = [v25 mainScreen];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v41.origin.x = v29;
    v41.origin.y = v31;
    v41.size.width = v33;
    v41.size.height = v35;
    Width = CGRectGetWidth(v41);
    v37 = MEMORY[0x277D76800];
    if (Width >= 414.0)
    {
      v37 = MEMORY[0x277D767F8];
    }

    v38 = *v37;
    [v26 setMaximumContentSizeCategory_];

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2281D460C(uint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 + 16);
  v7 = *(a1 + 40);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v53 = sub_228390AB0();
  v54 = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v9 setDateStyle_];
  [v9 setTimeStyle_];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  *&v51 = a1;
  swift_beginAccess();
  v11 = v3[2];
  v12 = a1 + v10;
  v13 = v2;
  v11(v6, v12, v2);
  v14 = sub_22838F380();
  v15 = v3[1];
  v15(v6, v2);
  v16 = [v9 stringFromDate_];

  v50 = sub_228392000();
  v52 = v17;

  v18 = sub_228391FC0();
  v11(v6, v51 + v10, v13);
  v19 = sub_22838F380();
  v15(v6, v13);
  v49 = v9;
  v20 = [v9 hm:v18 localizableTimeStringKeyWithPrefix:v19 date:?];

  sub_228392000();
  v22 = v21;

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  v51 = xmmword_228397F30;
  *(v23 + 16) = xmmword_228397F30;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_22818E210();
  v26 = v54;
  *(v23 + 32) = v53;
  *(v23 + 40) = v26;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  v27 = v50;
  *(v23 + 64) = v25;
  *(v23 + 72) = v27;
  *(v23 + 80) = v52;

  v28 = sub_22838F0C0();
  v29 = *(v23 + 16);
  v48[1] = v22;
  if (v29)
  {
    v53 = sub_228391FD0();
  }

  else
  {
    v53 = v28;
  }

  v30 = objc_opt_self();
  v31 = [v30 preferredFontForTextStyle_];
  v32 = [v31 fontDescriptor];
  v33 = [v32 fontDescriptorWithSymbolicTraits_];

  sub_2281D5084(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = v51;
  v35 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 systemBlueColor];
  result = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  *(inited + 40) = v38;
  v40 = *MEMORY[0x277D740A8];
  *(inited + 64) = result;
  *(inited + 72) = v40;
  if (v33)
  {
    v41 = v40;
    v42 = v33;

    [v31 pointSize];
    v43 = [v30 fontWithDescriptor:v42 size:?];

    *(inited + 104) = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    *(inited + 80) = v43;
    sub_2281A859C(inited);
    swift_setDeallocating();
    sub_2281D50E8();
    swift_arrayDestroy();
    v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v45 = sub_228391FC0();

    type metadata accessor for Key(0);
    sub_2281D5154(&qword_280DDBA40, type metadata accessor for Key);
    v46 = sub_228391F10();

    v47 = [v44 initWithString:v45 attributes:v46];

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2281D4CA8(unsigned __int8 a1)
{
  sub_2281D5084(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel))
  {

    v7 = sub_2281D460C(v38);
    v8 = sub_2281D0024();
    v39 = v7;
    [v8 setAttributedTitle:v7 forState:0];

    v9 = sub_2281CFE9C();
    v37 = "$__lazy_storage_$_closeButton";
    v10 = a1;
    v11 = a1 != 1 && a1 == 2;
    sub_2281D1ADC(v10 == 1, 0xD000000000000021, 0x80000002283A87E0, 0xD000000000000015);
    v12 = sub_228392DE0();
    v13 = *(*(v12 - 8) + 56);
    v13(v6, 0, 1, v12);
    sub_228392E10();

    v14 = sub_2281CFD14();
    sub_2281D1ADC(v11, 0xD000000000000023, 0x80000002283A87B0, 0xD000000000000011);
    v13(v6, 0, 1, v12);
    sub_228392E10();

    v15 = sub_2281D05A4();
    if (sub_2281D3CBC())
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v41.origin.x = v18;
      v41.origin.y = v20;
      v41.size.width = v22;
      v41.size.height = v24;
      Width = CGRectGetWidth(v41);
      v26 = MEMORY[0x277D76800];
      if (Width < 414.0)
      {
        v26 = MEMORY[0x277D76808];
      }
    }

    else
    {
      v26 = MEMORY[0x277D767F8];
    }

    v27 = *v26;
    [v15 setMaximumContentSizeCategory_];

    v28 = v38;
    v29 = [*(v38 + 16) userSpecifiedName];
    if (v29)
    {
      v30 = v29;
      sub_228392000();

      sub_2283920A0();
      v32 = v31;

      if (v32)
      {

        v40 = *(v28 + 16);
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        sub_228390F00();
        if (v33)
        {
          sub_2283920A0();
          v35 = v34;

          if (v35)
          {

            v36 = sub_2281CFC3C();
            [v36 setNumberOfLines_];
          }
        }
      }
    }
  }
}

void sub_2281D5084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281D50E8()
{
  if (!qword_280DDBA20)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBA20);
    }
  }
}

uint64_t sub_2281D5154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2281D519C()
{
  result = qword_280DDCD38;
  if (!qword_280DDCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCD38);
  }

  return result;
}

unint64_t sub_2281D51F0()
{
  result = qword_27D8249C0;
  if (!qword_27D8249C0)
  {
    sub_2281810DC(255, &qword_27D8250A0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D8249C0);
  }

  return result;
}

unint64_t sub_2281D5250()
{
  result = qword_27D8249D0;
  if (!qword_27D8249D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8249D0);
  }

  return result;
}

void sub_2281D52D4()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_logDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___timeFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___formStrengthLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___notesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___doseAmountTimeButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView) = 0;
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel;
  *(v0 + v1) = sub_2281D0880();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() systemGray3Color];
  [v3 setBackgroundColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2281D548C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2281D54DC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228198390(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2281D5624(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22819886C(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2281D5738(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_22818217C(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2281D5890(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2283930D0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_2283930D0();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2281D7998(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2281D5988(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228198DD0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2281D5AB0(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_228199404(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_2282668C4(&v46, &v4[32 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_49:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v49 = v24;
          v50 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v46;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v4 + 2);
  v14 = v47;
  v15 = v48;
  v2 = v49;
  v45 = v47;
  v42 = v48;
  if (!v50)
  {
    goto LABEL_19;
  }

  v20 = (v50 - 1) & v50;
  v21 = __clz(__rbit64(v50)) | (v49 << 6);
  v22 = (v48 + 64) >> 6;
LABEL_27:
  v44 = result;
  v27 = (*(result + 48) + 32 * v21);
  v29 = *v27;
  v28 = v27[1];
  v31 = v27[2];
  v30 = v27[3];

  v32 = v45;
LABEL_29:
  while (1)
  {
    v33 = *(v4 + 3);
    v34 = v33 >> 1;
    if ((v33 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v34)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v6;
  }

  v40 = sub_228199404((v33 > 1), v6 + 1, 1, v4);
  v32 = v45;
  v4 = v40;
  v34 = *(v40 + 3) >> 1;
  if (v6 >= v34)
  {
    goto LABEL_28;
  }

LABEL_31:
  v43 = v34;
  while (1)
  {
    v35 = &v4[32 * v6 + 32];
    *v35 = v29;
    *(v35 + 1) = v28;
    *(v35 + 2) = v31;
    *(v35 + 3) = v30;
    ++v6;
    if (!v20)
    {
      break;
    }

    result = v44;
LABEL_39:
    v38 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v39 = (*(result + 48) + ((v2 << 11) | (32 * v38)));
    v29 = *v39;
    v28 = v39[1];
    v31 = v39[2];
    v30 = v39[3];

    v32 = v45;
    if (v6 == v43)
    {
      v6 = v43;
      *(v4 + 2) = v43;
      goto LABEL_29;
    }
  }

  v36 = v2;
  result = v44;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v37 >= v22)
    {
      break;
    }

    v20 = *(v32 + 8 * v37);
    ++v36;
    if (v20)
    {
      v2 = v37;
      goto LABEL_39;
    }
  }

  if (v22 <= v2 + 1)
  {
    v41 = v2 + 1;
  }

  else
  {
    v41 = v22;
  }

  v48 = v42;
  v49 = v41 - 1;
  v50 = 0;
  *(v4 + 2) = v6;
LABEL_13:
  result = sub_228176F04();
  *v1 = v4;
  return result;
}

uint64_t sub_2281D5D94(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228199528(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2281D5EA4(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228198C84(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_22818217C(0, &qword_27D8238E8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2281D600C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.firstItemName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t InteractionMedicationItem.secondItemName.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t InteractionMedicationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t sub_2281D6248()
{
  v1 = v0;
  v2 = v0[2];
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:

    v5 = MEMORY[0x22AAB6D80](0, v3);

    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = [v5 uniqueIdentifier];

    v7 = sub_228392000();
    v8 = v1[8];
    v9 = v1[9];

    MEMORY[0x22AAB5C80](v8, v9);

    v11 = v1[20];
    v10 = v1[21];

    MEMORY[0x22AAB5C80](v11, v10);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.__allocating_init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:secondItemName:secondItemDetailsProviding:healthStore:analyticsManager:roomType:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10)
{
  v18 = a2[3];
  v17 = a2[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a2, v18);
  v20 = sub_2281DAC00(a1, v19, a3, a4, a5, a6, a7, a8, a9, a10, v10, v18, v17);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v20;
}

uint64_t InteractionMedicationItem.init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:secondItemName:secondItemDetailsProviding:healthStore:analyticsManager:roomType:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v25 = a9;
  v17 = a2[3];
  v16 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_2281DA5EC(a1, v21, a3, a4, a5, v26, v27, v28, v25, a10, v10, v17, v16);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v23;
}

uint64_t sub_2281D65A4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();

  sub_2281D5890(v2, sub_2281D97FC);
  sub_2281D76AC((v1 + 16));
  return swift_endAccess();
}

uint64_t InteractionMedicationItem.deinit()
{
  v1 = v0;
  v2 = *(v0 + 216);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 216);
    }

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_2281DAD60(&qword_27D824180, 255, MEMORY[0x277CBCDA8]);
    result = sub_2283924C0();
    v6 = v27;
    v5 = v28;
    v7 = v29;
    v8 = v30;
    v9 = v31;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_228176F04();

      v19 = *(v1 + 16);

      __swift_destroy_boxed_opaque_existential_0((v1 + 24));
      v20 = *(v1 + 72);

      __swift_destroy_boxed_opaque_existential_0((v1 + 80));
      __swift_destroy_boxed_opaque_existential_0((v1 + 120));
      v21 = *(v1 + 168);

      v22 = *(v1 + 184);

      v23 = *(v1 + 200);

      v24 = *(v1 + 216);

      v25 = *(v1 + 224);

      return v1;
    }

    while (1)
    {
      sub_228391810();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.__deallocating_deinit()
{
  InteractionMedicationItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2281D68D0(uint64_t a1)
{
  v3 = v1[22];
  v4 = v1[23];
  sub_2283920B0();
  v5 = v1[2];
  swift_beginAccess();
  v6 = *(v5 + 16);

  sub_2281DA444(a1, v6);

  v7 = v1[8];
  v8 = v1[9];
  sub_2283920B0();
  v9 = v1[20];
  v10 = v1[21];
  return sub_2283920B0();
}

uint64_t sub_2281D6958()
{
  sub_228393520();
  v1 = v0[22];
  v2 = v0[23];
  sub_2283920B0();
  v3 = v0[2];
  swift_beginAccess();
  v4 = *(v3 + 16);

  sub_2281DA444(v10, v4);

  v5 = v0[8];
  v6 = v0[9];
  sub_2283920B0();
  v7 = v0[20];
  v8 = v0[21];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281D69EC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 184);

  return v1;
}

uint64_t sub_2281D6A78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 184);
  sub_2283920B0();
  v6 = v3[2];
  swift_beginAccess();
  v7 = *(v6 + 16);

  sub_2281DA444(a1, v7);

  v8 = v3[8];
  v9 = v3[9];
  sub_2283920B0();
  v10 = v3[20];
  v11 = v3[21];
  return sub_2283920B0();
}

uint64_t sub_2281D6B04()
{
  sub_228393520();
  v1 = *v0;
  v2 = v1[22];
  v3 = v1[23];
  sub_2283920B0();
  v4 = v1[2];
  swift_beginAccess();
  v5 = *(v4 + 16);

  sub_2281DA444(v11, v5);

  v6 = v1[8];
  v7 = v1[9];
  sub_2283920B0();
  v8 = v1[20];
  v9 = v1[21];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281D6BBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t Array<A>.sortedByName()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2283930D0();
    if (v4)
    {
      v5 = v4;
      v1 = sub_2281D791C(v4, 0);

      sub_2281D99C4(v1 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v1 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v1 = a1 & 0xFFFFFFFFFFFFFF8;

LABEL_3:
  v8 = v1;
  sub_2281D7724(&v8);
  return v8;
}

uint64_t sub_2281D6CE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 64) == *(*a2 + 64) && *(*a1 + 72) == *(*a2 + 72);
  if (v4 || (v5 = *(*a1 + 64), (sub_228393460())) && (*(v2 + 160) == *(v3 + 160) ? (v6 = *(v2 + 168) == *(v3 + 168)) : (v6 = 0), v6))
  {
    return 0;
  }

  else
  {
    return sub_228393460() & 1;
  }
}

uint64_t Array<A>.deduped()(unint64_t a1)
{
  v1 = a1;
  v50 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_120:
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v46 = 0;
  while (1)
  {
    v4 = v1 >> 62;
    if (v1 >> 62)
    {
      if (!sub_2283930D0())
      {
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (!sub_2283930D0())
      {
        goto LABEL_117;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_116;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB6D80](0, v1);
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v5 = *(v1 + 32);

      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
LABEL_10:
        result = *(v6 + 16);
        if (!result)
        {
          break;
        }

        goto LABEL_19;
      }
    }

    result = sub_2283930D0();
    if (!result)
    {
      break;
    }

    result = sub_2283930D0();
    if (result < 1)
    {
      goto LABEL_122;
    }

    result = sub_2283930D0();
LABEL_19:
    v8 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_119;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v4)
      {
        goto LABEL_27;
      }

      v9 = (v1 & 0xFFFFFFFFFFFFFF8);
      if (v8 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v4)
      {
LABEL_27:
        sub_2283930D0();
        goto LABEL_28;
      }

      v9 = (v1 & 0xFFFFFFFFFFFFFF8);
    }

    v10 = v9[2];
LABEL_28:
    v1 = sub_2283931F0();
    v9 = (v1 & 0xFFFFFFFFFFFFFF8);
LABEL_29:
    v12 = v9 + 4;
    v11 = v9[4];

    if (v1 >> 62)
    {
      result = sub_2283930D0();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_124;
      }

      memmove(v9 + 4, v9 + 5, 8 * (result - 1));
      result = sub_2283930D0();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_123;
      }

      v9[2] = result - 1;
      v3 = (v9 + 2);
      if (!sub_2283930D0())
      {
LABEL_96:

        MEMORY[0x22AAB5D20](v43);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();

        v3 = v50;
        goto LABEL_99;
      }

      v48 = sub_2283930D0();
    }

    else
    {
      v13 = v9[2];
      v3 = (v9 + 2);
      memmove(v12, (v3 + 24), 8 * v13 - 8);
      v48 = v13 - 1;
      *v3 = v13 - 1;
      if (v13 == 1)
      {
        goto LABEL_96;
      }
    }

    v14 = MEMORY[0x277D84F90];
    if (v48)
    {
      v15 = 0;
      v47 = v5;
      do
      {
        v16 = v15;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x22AAB6D80](v16, v1);
            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_110;
            }
          }

          else
          {
            if (v16 >= *v3)
            {
              goto LABEL_111;
            }

            v17 = *(v1 + 8 * v16 + 32);

            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
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
              goto LABEL_116;
            }
          }

          v18 = *(v5 + 16);
          v19 = *(v17 + 16);
          swift_beginAccess();
          v20 = *(v19 + 16);
          if (v20 >> 62)
          {
            if (v20 < 0)
            {
              v26 = *(v19 + 16);
            }

            if (!sub_2283930D0())
            {
              goto LABEL_112;
            }
          }

          else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          if ((v20 & 0xC000000000000001) != 0)
          {

            v22 = MEMORY[0x22AAB6D80](0, v20);
          }

          else
          {
            if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_114;
            }

            v21 = *(v20 + 32);

            v22 = v21;
          }

          swift_beginAccess();
          v23 = *(v18 + 16);
          if (v23 >> 62)
          {
            if (v23 < 0)
            {
              v27 = *(v18 + 16);
            }

            if (!sub_2283930D0())
            {
              goto LABEL_113;
            }
          }

          else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_113;
          }

          if ((v23 & 0xC000000000000001) != 0)
          {

            v24 = MEMORY[0x22AAB6D80](0, v23);
          }

          else
          {
            if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v24 = *(v23 + 32);
          }

          v25 = [v24 hasSameAncestorIdentifiersAsInteractionResult_];

          if (v25)
          {
            break;
          }

          ++v16;
          v5 = v47;
          if (v15 == v48)
          {
            goto LABEL_68;
          }
        }

        v5 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_228198F1C(0, *(v14 + 2) + 1, 1, v14);
        }

        v29 = *(v14 + 2);
        v28 = *(v14 + 3);
        if (v29 >= v28 >> 1)
        {
          v14 = sub_228198F1C((v28 > 1), v29 + 1, 1, v14);
        }

        *(v14 + 2) = v29 + 1;
        *&v14[8 * v29 + 32] = v16;
      }

      while (v15 != v48);
    }

LABEL_68:
    v49 = MEMORY[0x277D84F90];
    v30 = *(v14 + 2);
    if (v30)
    {
      while (v30 <= *(v14 + 2))
      {
        v3 = *&v14[8 * v30 + 24];
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2281D9314(v1);
        }

        v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 >= v31)
        {
          goto LABEL_105;
        }

        v32 = v31 - 1;
        v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        memmove(((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 32), ((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 40), 8 * (v31 - 1 - v3));
        *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v32;
        v3 = *(v33 + 16);

        swift_beginAccess();
        v34 = *(v3 + 16);
        if (v34 >> 62)
        {
          if (v34 < 0)
          {
            v37 = *(v3 + 16);
          }

          if (!sub_2283930D0())
          {
            goto LABEL_106;
          }
        }

        else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        if ((v34 & 0xC000000000000001) != 0)
        {

          v35 = MEMORY[0x22AAB6D80](0, v34);
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_107;
          }

          v35 = *(v34 + 32);
        }

        v36 = v35;
        MEMORY[0x22AAB5D20]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        --v30;
        v3 = &v49;
        sub_228392230();

        if (!v30)
        {
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:

      return v3;
    }

LABEL_89:

    v39 = *(v5 + 16);
    swift_beginAccess();

    sub_2281D5890(v40, sub_2281D97FC);
    swift_endAccess();
    v41 = *(v5 + 16);
    swift_beginAccess();
    sub_2281D76AC((v41 + 16));
    swift_endAccess();

    MEMORY[0x22AAB5D20](v42);
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2283921E0();
    }

    sub_228392230();

    v3 = v50;

LABEL_99:
    if (v1 >> 62)
    {
      if (!sub_2283930D0())
      {
        goto LABEL_108;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_108;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.deselectionBehavior(in:)()
{
  type metadata accessor for InteractionMedicationItem();
  sub_2281DAD60(&qword_27D8249D8, v0, type metadata accessor for InteractionMedicationItem);
  return sub_22838FE80();
}

uint64_t sub_2281D7650()
{
  v2 = *v0;
  type metadata accessor for InteractionMedicationItem();
  return sub_22838FE80();
}

void sub_2281D76AC(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2281D9314(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_2281D7A38(v4);
  *a1 = v2;
}

uint64_t sub_2281D7724(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22834169C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2281D7B4C(v6);
  return sub_228393220();
}

size_t sub_2281D7808(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2281DAF74(0, a3, 255, a4, MEMORY[0x277D84560]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2281D791C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_228180ED0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

uint64_t sub_2281D7998(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2283930D0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2283931F0();
  *v1 = result;
  return result;
}

void sub_2281D7A38(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_228393410();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        v6 = sub_228392220();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2281D7E98(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2281D7C4C(0, v2, 1, a1);
  }
}

uint64_t sub_2281D7B4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InteractionMedicationItem();
        v6 = sub_228392220();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2281D85B4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2281D7D80(0, v2, 1, a1);
  }

  return result;
}

void sub_2281D7C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = *(v20 + 8 * a3);
    v17 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = [v10 rawIdentifier];

      v12 = [v9 identifier];
      v13 = [v12 rawIdentifier];

      if (v11 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 8;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v14;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2281D7D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
LABEL_5:
    v20 = a3;
    v7 = *(v4 + 8 * a3);
    v18 = v6;
    v19 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7[8] == *(*v5 + 64) && v7[9] == *(*v5 + 72);
      if (v9 || (v10 = v7[8], v11 = v7[9], v12 = *(*v5 + 64), v13 = *(*v5 + 72), (sub_228393460())) && ((result = v7[20], result == *(v8 + 160)) ? (v14 = v7[21] == *(v8 + 168)) : (v14 = 0), v14) || (result = sub_228393460(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v19 + 1;
        v6 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v15 = *v5;
      v7 = v5[1];
      *v5 = v7;
      v5[1] = v15;
      --v5;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2281D7E98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_2283406C0(v5);
    }

    v96 = *(v5 + 2);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v96 - 1);
        v98 = *&v5[16 * v96];
        v99 = *&v5[16 * v96 + 24];
        sub_2281D8C7C((v97 + 8 * v98), (v97 + 8 * *&v5[16 * v96 + 16]), (v97 + 8 * v99), v10);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2283406C0(v5);
        }

        if (v96 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v100 = &v5[16 * v96];
        *v100 = v98;
        *(v100 + 1) = v99;
        sub_228340634(v96 - 1);
        v96 = *(v5 + 2);
        v7 = a3;
      }

      while (v96 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v110 = v8;
      v106 = v6;
      v5 = v9;
      v102 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v7 + 8 * v12);
      v17 = v15;
      v18 = [v16 identifier];
      v114 = [v18 rawIdentifier];

      v19 = [v17 identifier];
      v112 = [v19 rawIdentifier];

      v104 = v5;
      v20 = v5 + 2;
      while (1)
      {
        v12 = v110;
        if (v110 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        v24 = [v22 identifier];
        v5 = v10;
        v25 = [v24 rawIdentifier];

        v26 = [v23 identifier];
        v27 = [v26 rawIdentifier];

        v28 = v25 < v27;
        v10 = v5;
        v29 = !v28;
        ++v20;
        ++v14;
        if ((((v114 < v112) ^ v29) & 1) == 0)
        {
          v12 = (v20 - 1);
          break;
        }
      }

      v11 = v104;
      v6 = v106;
      v7 = a3;
      v30 = v102;
      if (v114 < v112)
      {
        if (v12 < v104)
        {
          goto LABEL_118;
        }

        if (v104 < v12)
        {
          v31 = 8 * v12 - 8;
          v32 = v12;
          v33 = v104;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v37 = &v11[a4];
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_228198978(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_228198978((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v11;
    *(v53 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v117 = v12;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v10 + 4);
          v56 = *(v10 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_105;
          }

          v71 = &v10[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_108;
          }

          v77 = &v10[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_112;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v81 = &v10[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_72:
        if (v76)
        {
          goto LABEL_107;
        }

        v84 = &v10[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_110;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_79:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v93 = *&v10[16 * v92 + 32];
        v94 = *&v10[16 * v54 + 40];
        sub_2281D8C7C((*v7 + 8 * v93), (*v7 + 8 * *&v10[16 * v54 + 32]), (*v7 + 8 * v94), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v94 < v93)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2283406C0(v10);
        }

        if (v92 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v95 = &v10[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        sub_228340634(v54);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v10[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_103;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_104;
      }

      v66 = &v10[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_106;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_109;
      }

      if (v70 >= v62)
      {
        v88 = &v10[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v117;
    if (v117 >= v8)
    {
      goto LABEL_89;
    }
  }

  v103 = v10;
  v105 = v11;
  v107 = v6;
  v38 = *v7;
  v39 = *v7 + 8 * v12 - 8;
  v40 = &v11[-v12];
  v111 = v37;
LABEL_31:
  v115 = v39;
  v116 = v12;
  v41 = *(v38 + 8 * v12);
  v113 = v40;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = [v43 identifier];
    v5 = [v45 rawIdentifier];

    v46 = [v44 identifier];
    v47 = [v46 rawIdentifier];

    if (v5 >= v47)
    {
LABEL_30:
      ++v12;
      v39 = v115 + 8;
      v40 = v113 - 1;
      if (v116 + 1 != v111)
      {
        goto LABEL_31;
      }

      v12 = v111;
      v11 = v105;
      v6 = v107;
      v7 = a3;
      v10 = v103;
      goto LABEL_38;
    }

    if (!v38)
    {
      break;
    }

    v48 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v48;
    v39 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_2281D85B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v100 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_114:
    v5 = v10;
    v10 = *v100;
    if (!*v100)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_146:
      result = sub_2283406C0(v5);
      v5 = result;
    }

    v111 = v5;
    v91 = *(v5 + 16);
    if (v91 >= 2)
    {
      while (1)
      {
        v92 = *v7;
        if (!*v7)
        {
          goto LABEL_150;
        }

        v7 = (v91 - 1);
        v93 = *(v5 + 16 * v91);
        v94 = *(v5 + 16 * (v91 - 1) + 40);
        sub_2281D8FDC((v92 + 8 * v93), (v92 + 8 * *(v5 + 16 * (v91 - 1) + 32)), (v92 + 8 * v94), v10);
        if (v6)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2283406C0(v5);
        }

        if (v91 - 2 >= *(v5 + 16))
        {
          goto LABEL_140;
        }

        v95 = (v5 + 16 * v91);
        *v95 = v93;
        v95[1] = v94;
        v111 = v5;
        result = sub_228340634(v91 - 1);
        v5 = v111;
        v91 = *(v111 + 16);
        v7 = a3;
        if (v91 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    v101 = v11;
    if (v9 < v8)
    {
      v12 = *v7;
      v13 = *(*v7 + 8 * v9);
      v109 = *(*v7 + 8 * v11);
      v110 = v13;
      v5 = v11;
      result = sub_2281D6CE8(&v110, &v109);
      v106 = result;
      if (v6)
      {
      }

      v9 = v5 + 2;
      v11 = v5;
      if (v5 + 2 < v8)
      {
        v96 = v10;
        v14 = v12 + 8 * v5 + 16;
        while (1)
        {
          v5 = v9;
          v15 = *(v14 - 8);
          v16 = *v14;
          v17 = *(*v14 + 64) == v15[8] && *(*v14 + 72) == v15[9];
          if (v17 || (v18 = *(*v14 + 64), v19 = *(*v14 + 72), v20 = v15[8], v21 = v15[9], (sub_228393460())) && ((result = *(v16 + 160), result == v15[20]) ? (v22 = *(v16 + 168) == v15[21]) : (v22 = 0), v22))
          {
            v7 = a3;
            v9 = v5;
            if (v106)
            {
              v10 = v96;
              v11 = v101;
              if (v5 < v101)
              {
                goto LABEL_143;
              }

              goto LABEL_25;
            }
          }

          else
          {
            result = sub_228393460();
            v7 = a3;
            v9 = v5;
            if ((v106 ^ result))
            {
              goto LABEL_22;
            }
          }

          ++v9;
          v14 += 8;
          if (v8 == v9)
          {
            v9 = v8;
LABEL_22:
            v10 = v96;
            v11 = v101;
            break;
          }
        }
      }

      if (v106)
      {
        if (v9 < v11)
        {
          goto LABEL_143;
        }

LABEL_25:
        if (v11 < v9)
        {
          v23 = 8 * v9 - 8;
          v24 = 8 * v11;
          v25 = v9;
          v26 = v11;
          do
          {
            if (v26 != --v25)
            {
              v28 = *v7;
              if (!*v7)
              {
                goto LABEL_149;
              }

              v27 = *(v28 + v24);
              *(v28 + v24) = *(v28 + v23);
              *(v28 + v23) = v27;
            }

            ++v26;
            v23 -= 8;
            v24 += 8;
          }

          while (v26 < v25);
        }
      }
    }

    v29 = v7[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_142;
      }

      if (v9 - v11 < a4)
      {
        v30 = (v11 + a4);
        if (__OFADD__(v11, a4))
        {
          goto LABEL_144;
        }

        if (v30 >= v29)
        {
          v30 = v7[1];
        }

        if (v30 < v11)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v9 != v30)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v9 < v11)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v45 = *(v10 + 2);
    v44 = *(v10 + 3);
    v46 = v45 + 1;
    v47 = v101;
    if (v45 >= v44 >> 1)
    {
      result = sub_228198978((v44 > 1), v45 + 1, 1, v10);
      v10 = result;
      v47 = v101;
    }

    *(v10 + 2) = v46;
    v48 = &v10[16 * v45];
    *(v48 + 4) = v47;
    *(v48 + 5) = v9;
    v108 = *v100;
    if (!*v100)
    {
      goto LABEL_151;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_80:
          if (v53)
          {
            goto LABEL_130;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_133;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_137;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_94:
        if (v71)
        {
          goto LABEL_132;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_135;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_101:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v7)
        {
          goto LABEL_148;
        }

        v5 = v9;
        v88 = *&v10[16 * v87 + 32];
        v89 = *&v10[16 * v49 + 40];
        sub_2281D8FDC((*v7 + 8 * v88), (*v7 + 8 * *&v10[16 * v49 + 32]), (*v7 + 8 * v89), v108);
        if (v6)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2283406C0(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_127;
        }

        v90 = &v10[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        v111 = v10;
        result = sub_228340634(v49);
        v10 = v111;
        v46 = *(v111 + 16);
        v9 = v5;
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_128;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_129;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_131;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_134;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_138;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_114;
    }
  }

  v97 = v10;
  v98 = v6;
  v31 = *v7;
  v32 = (*v7 + 8 * v9 - 8);
  v33 = v11 - v9;
  v102 = v30;
LABEL_42:
  v105 = v32;
  v107 = v9;
  v34 = *(v31 + 8 * v9);
  v104 = v33;
  while (1)
  {
    v35 = *v32;
    v5 = v34[9];
    v36 = v34[8] == *(*v32 + 64) && v5 == *(*v32 + 72);
    if (v36 || (v37 = v34[8], v38 = v34[9], v39 = *(*v32 + 64), v40 = *(*v32 + 72), (sub_228393460())) && (v34[20] == *(v35 + 160) ? (v41 = v34[21] == *(v35 + 168)) : (v41 = 0), v41) || (result = sub_228393460(), (result & 1) == 0))
    {
LABEL_41:
      v9 = (v107 + 1);
      v32 = v105 + 1;
      v33 = v104 - 1;
      if (v107 + 1 != v102)
      {
        goto LABEL_42;
      }

      v9 = v102;
      v10 = v97;
      v6 = v98;
      v7 = a3;
      v11 = v101;
      goto LABEL_60;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v32;
    v34 = v32[1];
    *v32 = v34;
    v32[1] = v42;
    --v32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_2281D8C7C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v26;
    }

    v25 = a2;
    v44 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v43 = v14;
LABEL_27:
      __dst = v25;
      v27 = v25 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v25 - 1;
      do
      {
        v30 = v28;
        v31 = (v28 + 1);
        v32 = *(v29 - 1);
        v29 -= 8;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 identifier];
        v37 = [v36 rawIdentifier];

        v38 = [v35 identifier];
        v39 = [v38 rawIdentifier];

        if (v37 < v39)
        {
          v4 = v30;
          if (v31 != __dst)
          {
            *v30 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v25 = v42, v42 <= v5))
          {
            v25 = v42;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > v43);
      v44 = v29;
      v14 = v43;
      v25 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 identifier];
        v20 = [v19 rawIdentifier];

        v21 = [v18 identifier];
        v22 = [v21 rawIdentifier];

        if (v20 >= v22)
        {
          break;
        }

        v23 = v15;
        v24 = v5 == v15++;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v44 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v23 = v14;
      v24 = v5 == v14++;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = v5;
  }

LABEL_38:
  if (v25 != v14 || v25 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v14, 8 * ((v44 - v14) / 8));
  }

  return 1;
}

uint64_t sub_2281D8FDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    v25 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v41 = &v14[8 * v11];
    if (v9 >= 8 && v25 > v5)
    {
      v37 = v14;
LABEL_37:
      v40 = v25;
      v26 = v25 - 8;
      v4 -= 8;
      v27 = v41;
      v38 = v26;
      do
      {
        v29 = *(v27 - 1);
        v27 -= 8;
        v28 = v29;
        v30 = *v26;
        v31 = *(v29 + 72);
        v32 = *(v29 + 64) == *(*v26 + 64) && v31 == *(*v26 + 72);
        if (!v32 && (v33 = *(*v26 + 64), v34 = *(*v26 + 72), (sub_228393460() & 1) == 0) || (*(v28 + 160) == *(v30 + 160) ? (v35 = *(v28 + 168) == *(v30 + 168)) : (v35 = 0), !v35))
        {
          if (sub_228393460())
          {
            v14 = v37;
            if (v4 + 8 != v40)
            {
              *v4 = *v38;
            }

            if (v41 <= v37 || (v25 = v38, v38 <= v5))
            {
              v25 = v38;
              goto LABEL_59;
            }

            goto LABEL_37;
          }
        }

        v14 = v37;
        if (v4 + 8 != v41)
        {
          *v4 = *v27;
        }

        v4 -= 8;
        v41 = v27;
        v26 = v38;
      }

      while (v27 > v37);
      v41 = v27;
      v25 = v40;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v8);
      a4 = v13;
    }

    v41 = &a4[8 * v8];
    v14 = a4;
    if (v6 >= 8 && __src < v4)
    {
      v15 = __src;
      while (1)
      {
        v39 = v15;
        v16 = *v15;
        v17 = *v14;
        v18 = *(*v15 + 64) == *(*v14 + 64) && *(*v15 + 72) == *(*v14 + 72);
        if (v18 || (v19 = *(*v15 + 64), v20 = *(*v15 + 72), v21 = *(*v14 + 64), v22 = *(*v14 + 72), (sub_228393460() & 1) != 0))
        {
          if (*(v16 + 160) == *(v17 + 160) && *(v16 + 168) == *(v17 + 168))
          {
            break;
          }
        }

        if ((sub_228393460() & 1) == 0)
        {
          break;
        }

        v24 = v39;
        v15 = v39 + 8;
        if (v5 != v39)
        {
          goto LABEL_27;
        }

LABEL_28:
        v5 += 8;
        if (v14 >= v41 || v15 >= v4)
        {
          goto LABEL_30;
        }
      }

      v24 = v14;
      v18 = v5 == v14;
      v14 += 8;
      v15 = v39;
      if (v18)
      {
        goto LABEL_28;
      }

LABEL_27:
      *v5 = *v24;
      goto LABEL_28;
    }

LABEL_30:
    v25 = v5;
  }

LABEL_59:
  if (v25 != v14 || v25 >= &v14[(v41 - v14 + (v41 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v25, v14, 8 * ((v41 - v14) / 8));
  }

  return 1;
}

uint64_t sub_2281D9314(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2283930D0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2283931F0();
}

uint64_t sub_2281D93D0(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_2283930D0();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_2281D791C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2281D946C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A38, &qword_27D824A30, 0x277CCDAF0, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A40, &qword_27D824A38, &qword_27D824A30, 0x277CCDAF0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_27D824A30, 0x277CCDAF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9634(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A58, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D97FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A70, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A78, &qword_27D824A70, &qword_280DDBA10, 0x277D11518);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D99C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v16 = a2;
    result = sub_2283930D0();
    a2 = v16;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF74(0, &qword_27D824A60, v8, type metadata accessor for InteractionMedicationItem, MEMORY[0x277D83940]);
          sub_2281DAFD8(v9, v10, v11);
          for (i = 0; i != v6; ++i)
          {
            v13 = sub_2281CB8DC(v17, i, a3);
            v15 = *v14;

            (v13)(v17, 0);
            *(v4 + 8 * i) = v15;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for InteractionMedicationItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9B5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A20, &qword_280DDBA90, 0x277CCAAD0, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A28, &qword_27D824A20, &qword_280DDBA90, 0x277CCAAD0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9D24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A18, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9EEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A08, &qword_27D824A00, 0x277D12AC0, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A10, &qword_27D824A08, &qword_27D824A00, 0x277D12AC0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB964(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_27D824A00, 0x277D12AC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281DA0B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A48, &qword_27D827D20, 0x277D11568, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A50, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_27D827D20, 0x277D11568);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281DA27C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D8249F0, &qword_280DDB9C8, 0x277D11580, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D8249F8, &qword_27D8249F0, &qword_280DDB9C8, 0x277D11580);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2281DA444(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2283930D0();
    MEMORY[0x22AAB70D0](v8);
    v3 = sub_2283930D0();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AAB70D0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x22AAB6D80](i, a2);
      sub_228392C70();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_228392C70();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2281DA534(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AAB70D0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      v10 = v5[4];

      sub_2283920B0();
      sub_2283920B0();

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2281DA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25[3] = a12;
  v25[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a2, a12);
  type metadata accessor for InteractionMedicationCell();
  sub_2281DAD60(&qword_27D824A80, 255, type metadata accessor for InteractionMedicationCell);
  *(a11 + 176) = sub_22838FBB0();
  *(a11 + 184) = v20;
  *(a11 + 216) = MEMORY[0x277D84FA0];
  *(a11 + 224) = 0;
  *(a11 + 192) = a9;
  *(a11 + 208) = a10;
  *(a11 + 16) = a1;
  if (a6 == a3 && a7 == a4 || (sub_228393460() & 1) == 0)
  {
    *(a11 + 64) = a3;
    *(a11 + 72) = a4;
    sub_22816DFFC(a5, a11 + 80);
    *(a11 + 160) = a6;
    *(a11 + 168) = a7;
    sub_22816DFFC(a8, a11 + 120);
    sub_228180FB0(v25, a11 + 24);
  }

  else
  {
    *(a11 + 64) = a6;
    *(a11 + 72) = a7;
    sub_228180FB0(a8, a11 + 80);
    *(a11 + 160) = a3;
    *(a11 + 168) = a4;
    sub_228180FB0(a5, a11 + 120);
    (*(a13 + 40))(v24, a12);
    __swift_destroy_boxed_opaque_existential_0(a8);
    __swift_destroy_boxed_opaque_existential_0(a5);
    sub_22816DFFC(v24, a11 + 24);
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  return a11;
}

uint64_t _s19HealthMedicationsUI25InteractionMedicationItemC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  swift_beginAccess();
  v6 = *(v4 + 16);
  swift_beginAccess();
  v7 = *(v5 + 16);

  v8 = sub_2282100E4(v6, v7);

  if (v8 & 1) != 0 && (a1[8] == a2[8] && a1[9] == a2[9] || (sub_228393460()))
  {
    if (a1[20] == a2[20] && a1[21] == a2[21])
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_228393460();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_2281DA8E0(void *a1)
{
  v2 = v1;
  v25 = v1[2];
  sub_228180FB0((v1 + 3), v31);
  v3 = v1[9];
  v26 = v1[8];
  sub_228180FB0((v1 + 10), v30);
  v4 = v1[13];
  v5 = v1[14];
  __swift_project_boxed_opaque_existential_0(v1 + 10, v4);
  v6 = *(v5 + 48);

  v7 = v6(v4, v5);
  v8 = v1[20];
  v9 = v1[21];
  sub_228180FB0((v1 + 15), v29);
  v10 = v1[18];
  v11 = v1[19];
  __swift_project_boxed_opaque_existential_0(v2 + 15, v2[18]);
  v12 = *(v11 + 48);

  v13 = v12(v10, v11);
  v14 = type metadata accessor for InteractionResultDetailViewController();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_27D824388] = v25;
  sub_228180FB0(v31, &v15[qword_27D824390]);
  v16 = &v15[qword_27D824398];
  *v16 = v26;
  *(v16 + 1) = v3;
  sub_228180FB0(v30, &v15[qword_27D8243A0]);
  *&v15[qword_27D8243A8] = v7;
  v17 = &v15[qword_27D8243B0];
  *v17 = v8;
  *(v17 + 1) = v9;
  sub_228180FB0(v29, &v15[qword_27D8243B8]);
  *&v15[qword_27D8243C0] = v13;
  v28.receiver = v15;
  v28.super_class = v14;

  v18 = objc_msgSendSuper2(&v28, sel_initWithCollectionViewLayout_, 0);
  v19 = qword_280DDCF18;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v21 = sub_228391FC0();

  [v20 setTitle_];

  v22 = [v20 navigationItem];
  [v22 setLargeTitleDisplayMode_];

  [v20 setModalPresentationStyle_];
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  [v20 setModalPresentationStyle_];

  [a1 showAdaptively:v20 sender:v2];
  v24 = v2[25];
  v23 = v2[26];
  sub_228390FE0();
}

uint64_t sub_2281DAC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a7;
  v27 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a9;
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](a1);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionMedicationItem();
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a2, a12);
  return sub_2281DA5EC(a1, v20, a3, a4, v24, v25, v26, v27, v23, a10, v21, a12, a13);
}

uint64_t sub_2281DAD60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2281DAF0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281DAF74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2281DAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27D824A68;
  if (!qword_27D824A68)
  {
    sub_2281DAF74(255, &qword_27D824A60, a3, type metadata accessor for InteractionMedicationItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824A68);
  }

  return result;
}

uint64_t sub_2281DB060(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2281DAF0C(255, a2, a3, a4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2281DB0CC()
{
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 scheduleType];
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result != 1)
      {
LABEL_23:
        v15 = 0;
        v16 = 0xE000000000000000;
        sub_2283931D0();

        v15 = 0xD00000000000002DLL;
        v16 = 0x80000002283AA450;
        v14[1] = [v0 scheduleType];
        v12 = sub_228393420();
        MEMORY[0x22AAB5C80](v12);

        sub_228393300();
        __break(1u);
        return sub_22830F6D4(1);
      }

      sub_22830F590(&v15);
      if ((v16 & 1) == 0)
      {
        return sub_22830F6D4(1);
      }

      sub_228391150();
      v7 = v0;
      v8 = sub_2283911A0();
      v9 = sub_2283925C0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = [v7 scheduleType];

        _os_log_impl(&dword_22816B000, v8, v9, "Attempted to display localizedString with nil frequencyInterval for %ld returning empty string", v10, 0xCu);
        MEMORY[0x22AAB7B80](v10, -1, -1);
      }

      else
      {

        v8 = v7;
      }

      (*(v2 + 8))(v5, v1);
      goto LABEL_27;
    }

    if (result == 2)
    {
LABEL_14:
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

LABEL_31:
      swift_once();
      return sub_22838F0C0();
    }

LABEL_20:
    result = sub_2281DBC40();
    if (v11)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (result != 6)
  {
    if (result == 7 || result == 8)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

      goto LABEL_31;
    }

    goto LABEL_23;
  }

LABEL_27:
  if (qword_27D8232A0 != -1)
  {
    swift_once();
  }

  v13 = qword_27D828AC0;

  return v13;
}

void sub_2281DB4DC()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCF20;

  v1 = sub_22838F0C0();
  v3 = v2;

  qword_27D828AC0 = v1;
  *algn_27D828AC8 = v3;
}

size_t sub_2281DB5B4()
{
  v64 = sub_22838F4A0();
  v1 = *(v64 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v64);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22838F440();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v63);
  v66 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_228391130();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeekdaysAndDosages(0);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [v0 timeIntervals];
  sub_2281DC17C();
  v16 = sub_2283921A0();

  v67 = MEMORY[0x277D84F90];
  v59 = v16;
  if (v16 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v18 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v56 = v8;
    v57 = v5;
    v58 = v1;
    v19 = 0;
    v5 = v59;
    v20 = v59 & 0xC000000000000001;
    v8 = v59 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v20)
      {
        v21 = MEMORY[0x22AAB6D80](v19, v5);
      }

      else
      {
        if (v19 >= *(v8 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v5 + 8 * v19 + 32);
      }

      v1 = v21;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = [v21 dose];
      if (v23 && (v24 = v23, [v23 floatValue], v26 = v25, v24, v26 > 0.0))
      {
        sub_228393210();
        v27 = *(v67 + 16);
        sub_228393250();
        v5 = v59;
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v19;
      if (v22 == i)
      {
        v28 = v67;
        v5 = v57;
        v1 = v58;
        v8 = v56;
        v18 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      goto LABEL_20;
    }

LABEL_40:

    return MEMORY[0x277D84F90];
  }

  v29 = sub_2283930D0();
  if (!v29)
  {
    goto LABEL_40;
  }

LABEL_20:
  v67 = v18;
  result = sub_2281C9CD4(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v67;
    v33 = v28;
    v59 = v28 & 0xC000000000000001;
    v55 = (v5 + 32);
    v56 = (v1 + 4);
    v54 = (v1 + 1);
    v34 = (v8 + 32);
    v53 = xmmword_228397F40;
    v57 = v29;
    v58 = v33;
    do
    {
      if (v59)
      {
        v35 = MEMORY[0x22AAB6D80](v31);
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v31 >= v33[2])
        {
          goto LABEL_37;
        }

        v35 = v33[v31 + 4];
      }

      v36 = v35;
      v37 = [v35 daysOfWeek];
      sub_2282D9ECC(v37, v65);
      sub_2281DC1C8();
      v38 = type metadata accessor for Dosage();
      v39 = *(*(v38 - 8) + 72);
      v40 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v53;
      sub_22838F430();
      v42 = [v36 dose];
      if (v42)
      {
        v43 = v42;
        [v42 doubleValue];
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v41 + v40;
      sub_22838F490();
      v47 = v41 + v40;
      v8 = v64;
      (*v56)(v47, v4, v64);
      (*v55)(v46 + *(v38 + 20), v66, v63);
      *(v46 + *(v38 + 24)) = v45;
      sub_22838F490();
      v48 = sub_22838F450();
      v50 = v49;
      (*v54)(v4, v8);
      *v14 = v48;
      v14[1] = v50;
      v51 = v61;
      (*v34)(v14 + *(v61 + 20), v65, v62);

      *(v14 + *(v51 + 24)) = v41;
      v67 = v32;
      v5 = *(v32 + 16);
      v52 = *(v32 + 24);
      v1 = (v5 + 1);
      if (v5 >= v52 >> 1)
      {
        sub_2281C9CD4(v52 > 1, v5 + 1, 1);
        v32 = v67;
      }

      ++v31;
      *(v32 + 16) = v1;
      sub_2281DC220(v14, v32 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v5);
      v33 = v58;
    }

    while (v57 != v31);

    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281DBC40()
{
  v0 = sub_22838F6C0();
  v46 = *(v0 - 8);
  v1 = *(v46 + 64);
  MEMORY[0x28223BE20](v0);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for WeekdaysAndDosages(0);
  v52 = *(v50 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391130();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v44 = &v40 - v21;
  v22 = sub_2281DB5B4();
  v53 = 0;
  v51 = sub_2281DC0DC(&qword_280DDBD00);
  sub_2283935F0();
  v23 = v7[2];
  v43 = v20;
  v24 = v20;
  v25 = v23;
  v23(v17, v24, v6);
  v26 = v22;
  v27 = *(v22 + 16);
  if (v27)
  {
    v41 = v7;
    v42 = v0;
    v28 = *(v50 + 20);
    v49 = v25;
    v50 = v28;
    v29 = *(v52 + 80);
    v40 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v31 = *(v52 + 72);
    v47 = v7 + 2;
    v48 = v31;
    v52 = (v7 + 1);
    v32 = (v7 + 4);
    do
    {
      sub_2281CBF8C(v30, v5);
      sub_2281DC0DC(&qword_27D824818);
      sub_228392170();
      sub_2283935F0();
      v49(v11, &v5[v50], v6);
      sub_2281DC0DC(&qword_27D824820);
      sub_228393000();
      sub_2281DC120(v5);
      v33 = *v52;
      (*v52)(v17, v6);
      (*v32)(v17, v14, v6);
      v30 += v48;
      --v27;
    }

    while (v27);
    v52 = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v34 = v41;
    v0 = v42;
  }

  else
  {

    v34 = v7;
    v35 = (v7 + 1);
    v33 = v7[1];
    v52 = v35 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v33(v43, v6);
  v36 = v44;
  (v34[4])(v44, v17, v6);
  v37 = v45;
  sub_22838F680();
  v38 = sub_228391100();
  (*(v46 + 8))(v37, v0);
  v33(v36, v6);
  return v38;
}

uint64_t sub_2281DC0DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_228391130();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2281DC120(uint64_t a1)
{
  v2 = type metadata accessor for WeekdaysAndDosages(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2281DC17C()
{
  result = qword_280DDB9C8;
  if (!qword_280DDB9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9C8);
  }

  return result;
}

void sub_2281DC1C8()
{
  if (!qword_27D823E30)
  {
    type metadata accessor for Dosage();
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823E30);
    }
  }
}

uint64_t sub_2281DC220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekdaysAndDosages(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281DC284()
{
  result = sub_228391FC0();
  qword_280DDBA80 = result;
  return result;
}

uint64_t (*static NSNotificationName.UserDidRequestToShowCurrentMedication.modify())()
{
  if (qword_280DDBA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2281DC38C()
{
  result = sub_228391FC0();
  qword_27D824A88 = result;
  return result;
}

id sub_2281DC3E8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_2281DC474(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static NSNotificationName.UserDidAddMedicationWhenNotificationsDisabled.modify())()
{
  if (qword_27D8232B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2281DC568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2281E006C(a3, v27 - v11);
  v13 = sub_2283922D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2281E0494(v12, &qword_27D827C30, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2283922C0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_228392250();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_228392060() + 32;
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

      sub_2281E0494(a3, &qword_27D827C30, MEMORY[0x277D85720]);

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

  sub_2281E0494(a3, &qword_27D827C30, MEMORY[0x277D85720]);
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

uint64_t sub_2281DC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2281E006C(a3, v27 - v11);
  v13 = sub_2283922D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2281E0494(v12, &qword_27D827C30, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2283922C0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_228392250();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_228392060() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2281E00EC(0, &qword_27D824AF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

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

      sub_2281E0494(v27[0], &qword_27D827C30, MEMORY[0x277D85720]);

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

  sub_2281E0494(a3, &qword_27D827C30, MEMORY[0x277D85720]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_2281E00EC(0, &qword_27D824AF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2281DCC0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10E58];
  v3 = sub_22838FB90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_2281DCD08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D824AA0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2281DCD68()
{
  v1 = qword_27D824AA0;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2281DCDBC(uint64_t a1)
{
  v3 = qword_27D824AA0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2281DCE74(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_2281DCEE4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_2281DCF34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_2281DCFE8()
{
  v1 = qword_27D824AB8;
  v2 = *(v0 + qword_27D824AB8);
  if (v2)
  {
    v3 = *(v0 + qword_27D824AB8);
  }

  else
  {
    v4 = qword_27D824AA0;
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2281DD088()
{
  v1 = qword_27D824AC0;
  v2 = *(v0 + qword_27D824AC0);
  if (v2)
  {
    v3 = *(v0 + qword_27D824AC0);
  }

  else
  {
    sub_228390640();
    v4 = qword_27D824AA0;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = v0;
    v7 = sub_228390630();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *MedicationConceptDetailViewController.__allocating_init(medication:healthStore:listManager:provenance:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v3);
  v9 = &v8[qword_27D824AB0];
  v10 = *MEMORY[0x277D12788];
  v31 = sub_228392000();
  v32 = v11;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  v12 = v32;
  *v9 = v31;
  v9[1] = v12;
  *&v8[qword_27D824AB8] = 0;
  *&v8[qword_27D824AC0] = 0;
  *&v8[qword_27D824AC8] = 0;
  *&v8[qword_27D824A90] = a1;
  *&v8[qword_27D824A98] = a3;
  *&v8[qword_27D824AA0] = a2;
  v13 = a1;

  v14 = a2;
  v15 = [v13 localizedOntologyEducationContent];
  if (v15)
  {
    v31 = v15;
    v16 = v15;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v18 = v17;

    if (v18)
    {
    }
  }

  v19 = [v13 localizedOntologyEducationContent];
  if (v19)
  {
    v31 = v19;
    v20 = v19;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v22 = v21;

    if (v22)
    {
    }
  }

  v23 = sub_228391020();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v8[qword_27D824AA8] = sub_228390FF0();
  v30.receiver = v8;
  v30.super_class = v4;
  v26 = objc_msgSendSuper2(&v30, sel_initWithCollectionViewLayout_, 0);
  v27 = *((*MEMORY[0x277D85000] & *v26) + class metadata base offset for MedicationConceptDetailViewController + 224);
  v28 = v26;
  v27(v13);

  return v28;
}

void *MedicationConceptDetailViewController.init(medication:healthStore:listManager:provenance:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[qword_27D824AB0];
  v9 = *MEMORY[0x277D12788];
  v30 = sub_228392000();
  v31 = v10;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  v11 = v31;
  *v8 = v30;
  v8[1] = v11;
  *&v3[qword_27D824AB8] = 0;
  *&v3[qword_27D824AC0] = 0;
  *&v3[qword_27D824AC8] = 0;
  *&v3[qword_27D824A90] = a1;
  *&v3[qword_27D824A98] = a3;
  *&v3[qword_27D824AA0] = a2;
  v12 = a1;

  v13 = a2;
  v14 = [v12 localizedOntologyEducationContent];
  if (v14)
  {
    v30 = v14;
    v15 = v14;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v17 = v16;

    if (v17)
    {
    }
  }

  v18 = [v12 localizedOntologyEducationContent];
  if (v18)
  {
    v30 = v18;
    v19 = v18;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v21 = v20;

    if (v21)
    {
    }
  }

  v22 = sub_228391020();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v4[qword_27D824AA8] = sub_228390FF0();
  v29.receiver = v4;
  v29.super_class = type metadata accessor for MedicationConceptDetailViewController();
  v25 = objc_msgSendSuper2(&v29, sel_initWithCollectionViewLayout_, 0);
  v26 = *((*MEMORY[0x277D85000] & *v25) + class metadata base offset for MedicationConceptDetailViewController + 224);
  v27 = v25;
  v26(v12);

  return v27;
}

uint64_t type metadata accessor for MedicationConceptDetailViewController()
{
  result = qword_27D824AE0;
  if (!qword_27D824AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MedicationConceptDetailViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2281DD748()
{
  v1 = v0;
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v34 - v4;
  v5 = *&v0[qword_27D824A90];
  v6 = qword_27D824A98;
  swift_beginAccess();
  v7 = *&v1[v6];
  v8 = qword_27D824AA0;
  v35 = qword_27D824AA0;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = qword_27D824AA8;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = type metadata accessor for MedicationConceptDetailDataSourceProvider();
  v13 = swift_allocObject();
  sub_228390890();
  v14 = v5;

  v15 = v9;

  sub_228390880();
  v16 = sub_228390870();

  *(v13 + 6) = v16;
  *(v13 + 7) = 0;
  *(v13 + 2) = v7;
  *(v13 + 3) = v14;
  *(v13 + 4) = v15;
  *(v13 + 5) = v11;
  v39 = v12;
  v40 = sub_2281E0500(&qword_27D824AD0, type metadata accessor for MedicationConceptDetailDataSourceProvider);
  v37 = v13;
  sub_2283904B0();
  v17 = type metadata accessor for MedicationConceptDetailViewController();
  v36.receiver = v1;
  v36.super_class = v17;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v18 = sub_2283922D0();
  v19 = v34;
  (*(*(v18 - 8) + 56))(v34, 1, 1, v18);
  sub_2283922A0();
  v20 = v1;
  v21 = sub_228392290();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  sub_2281DC568(0, 0, v19, &unk_22839A908, v22);

  v24 = *&v1[v10];

  sub_228390FE0();

  v37 = v20;
  v25 = *MEMORY[0x277D12728];
  v26 = *&v1[v35];
  v27 = sub_2281E0500(&qword_27D824AD8, type metadata accessor for MedicationConceptDetailViewController);
  v28 = v26;
  MEMORY[0x22AAB40A0](0xD000000000000014, 0x80000002283AA540, v25, v28, v17, v27);

  v29 = [v20 navigationController];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 navigationBar];

    v32 = *&v20[qword_27D824AB0 + 8];
    v37 = *&v20[qword_27D824AB0];
    v38 = v32;

    MEMORY[0x22AAB5C80](0x7461676976614E2ELL, 0xEE007261426E6F69);
    v33 = sub_228391FC0();

    [v31 setAccessibilityIdentifier_];
  }
}

void sub_2281DDB40(void *a1)
{
  v1 = a1;
  sub_2281DD748();
}

void sub_2281DDB88(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391310();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22838FB90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 104))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D10E58]);
  v11 = a1;
  sub_2283926F0();
  sub_228391300();
  sub_228392700();
  v12 = type metadata accessor for MedicationConceptDetailViewController();
  v13.receiver = v11;
  v13.super_class = v12;
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a3);
}

uint64_t sub_2281DDD04(void *a1)
{
  v2 = v1;
  v4 = qword_27D824AA8;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = [a1 localizedOntologyEducationContent];
  if (v6)
  {
    v7 = v6;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v9 = v8;

    if (v9)
    {
    }
  }

  sub_228391000();

  v10 = *(v2 + v4);

  v11 = [a1 localizedOntologyEducationContent];
  if (v11)
  {
    v12 = v11;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v14 = v13;

    if (v14)
    {
    }
  }

  sub_228391010();

  sub_2281DDE84(a1);
  return sub_2281DDFD8(a1);
}

uint64_t sub_2281DDE84(void *a1)
{
  v9[0] = a1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_228390F20();
  v3 = sub_228391FC0();

  [v1 setTitle_];

  sub_2283904A0();
  if (!v9[3])
  {
    return sub_2281AC828(v9, &qword_27D824B28, &qword_27D824B30);
  }

  sub_22818217C(0, &qword_27D824B30);
  type metadata accessor for MedicationConceptDetailDataSourceProvider();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v8 + 24);
    *(v8 + 24) = a1;
    v6 = a1;

    sub_22836160C();
    v7 = *(v8 + 24);
    sub_228391850();
  }

  return result;
}

uint64_t sub_2281DDFD8(void *a1)
{
  sub_2281E01F4(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  sub_2281E0248();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281E03D8();
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + qword_27D824AC8))
  {
    v32 = v1;
    v33 = result;
    v34 = v16;
    v35 = qword_27D824AC8;
    v19 = sub_2281DD088();
    v20 = sub_228390620();
    v30 = v20;

    v37 = v20;
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
    v31 = a1;
    v21 = sub_228392790();
    v36 = v21;
    v22 = sub_228392730();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_2281E0300(0, &qword_27D824B00, MEMORY[0x277D77BD8]);
    sub_2281E0364();
    sub_2281A1504();
    sub_228391A70();
    sub_2281E0494(v6, &qword_280DDBAD0, MEMORY[0x277D85248]);

    v23 = swift_allocObject();
    v24 = v31;
    *(v23 + 16) = v31;
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_2281E0500(&qword_27D824B18, sub_2281E0248);
    v25 = v24;
    sub_2283919A0();

    (*(v9 + 8))(v12, v8);
    swift_allocObject();
    v26 = v32;
    swift_unknownObjectWeakInit();
    sub_2281E0500(&qword_27D824B20, sub_2281E03D8);
    v27 = v33;
    v28 = sub_228391AC0();

    (*(v34 + 8))(v18, v27);
    v29 = *(v26 + v35);
    *(v26 + v35) = v28;
  }

  return result;
}

unint64_t sub_2281DE420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v37 = a2;
  v5 = sub_228390610();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v6 + 88))(v9, v5) != *MEMORY[0x277D77BD0])
  {
    *a3 = 0;
    return (*(v6 + 8))(v9, v5);
  }

  v35 = a3;
  (*(v6 + 96))(v9, v5);
  v10 = *v9;
  v38 = MEMORY[0x277D84F90];
  v11 = (v10 & 0xFFFFFFFFFFFFFF8);
  if (v10 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v13 = MEMORY[0x277D84F90];
    if (i)
    {
      v14 = 0;
      v15 = MEMORY[0x277D84F90];
      do
      {
        v16 = v14;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x22AAB6D80](v16, v10);
          }

          else
          {
            if (v16 >= v11[2])
            {
              goto LABEL_35;
            }

            v17 = *(v10 + 8 * v16 + 32);
          }

          v18 = v17;
          v14 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v16;
          if (v14 == i)
          {
            goto LABEL_21;
          }
        }

        MEMORY[0x22AAB5D20]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();
        v15 = v38;
      }

      while (v14 != i);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v38 = v13;
    if (v15 >> 62)
    {
      break;
    }

    v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v35;
    if (!v10)
    {
      goto LABEL_40;
    }

LABEL_23:
    v21 = 0;
    v36 = v15 & 0xC000000000000001;
    v22 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v36)
      {
        v24 = v15;
        v25 = MEMORY[0x22AAB6D80](v21, v15);
      }

      else
      {
        if (v21 >= *(v22 + 16))
        {
          goto LABEL_37;
        }

        v24 = v15;
        v25 = *(v15 + 8 * v21 + 32);
      }

      v26 = v25;
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
      v28 = [v26 semanticIdentifier];
      v11 = [v37 semanticIdentifier];
      v29 = sub_228392C60();

      if (v29)
      {
        sub_228393210();
        v11 = *(v38 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v21;
      v23 = v27 == v10;
      v15 = v24;
      if (v23)
      {
        v30 = v38;
        v11 = v35;
        goto LABEL_41;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v10 = sub_2283930D0();
  v11 = v35;
  if (v10)
  {
    goto LABEL_23;
  }

LABEL_40:
  v30 = MEMORY[0x277D84F90];
LABEL_41:

  if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    v31 = sub_2283930D0();
    if (!v31)
    {
      goto LABEL_51;
    }

LABEL_44:
    v32 = __OFSUB__(v31, 1);
    result = v31 - 1;
    if (v32)
    {
      __break(1u);
    }

    else if ((v30 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v30 + 16))
      {
        v33 = *(v30 + 8 * result + 32);
LABEL_49:
        v34 = v33;

        *v11 = v34;
        return result;
      }

      __break(1u);
      return result;
    }

    v33 = MEMORY[0x22AAB6D80](result, v30);
    goto LABEL_49;
  }

  v31 = *(v30 + 16);
  if (v31)
  {
    goto LABEL_44;
  }

LABEL_51:

  *v11 = 0;
  return result;
}

void sub_2281DE880(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2281DDE84(v1);
  }
}

uint64_t sub_2281DE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_2283911B0();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_2283922A0();
  v4[26] = sub_228392290();
  v9 = sub_228392250();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](sub_2281DE9DC, v9, v8);
}

uint64_t sub_2281DE9DC()
{
  v26 = v0;
  v1 = v0[25];
  v2 = v0[21];
  sub_228391150();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();

  if (os_log_type_enabled(v4, v5))
  {
    v24 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136446210;
    v0[20] = v8;
    type metadata accessor for MedicationConceptDetailViewController();
    v11 = v8;
    v12 = sub_228392040();
    v14 = sub_2281C96FC(v12, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] Marking interaction shard as required during viewing DDI overview", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    v15 = *(v7 + 8);
    v15(v24, v6);
  }

  else
  {
    v16 = v0[25];
    v17 = v0[22];
    v18 = v0[23];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v0[29] = v15;
  v19 = v0[21];
  v20 = sub_2281DCFE8();
  v0[30] = v20;
  v0[2] = v0;
  v0[3] = sub_2281DEC54;
  v21 = swift_continuation_init();
  sub_2281E0600();
  v0[17] = v22;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2282B4368;
  v0[13] = &block_descriptor_6;
  v0[14] = v21;
  [v20 markInteractionsShardAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2281DEC54()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = sub_2281DEDFC;
  }

  else
  {
    v6 = sub_2281DED84;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2281DED84()
{
  v1 = v0[30];
  v2 = v0[26];

  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2281DEDFC()
{
  v35 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);

  swift_willThrow();

  sub_228391150();
  v6 = v5;
  v7 = v1;
  v8 = sub_2283911A0();
  v9 = sub_2283925C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 248);
    v11 = *(v0 + 184);
    v32 = *(v0 + 192);
    v33 = *(v0 + 232);
    v12 = *(v0 + 168);
    v31 = *(v0 + 176);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136446466;
    *(v0 + 144) = v12;
    type metadata accessor for MedicationConceptDetailViewController();
    v15 = v12;
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v0 + 152) = v10;
    v19 = v10;
    sub_22818217C(0, &qword_280DDB860);
    v20 = sub_228392020();
    v22 = sub_2281C96FC(v20, v21, v34);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_22816B000, v8, v9, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v23 = *(v0 + 232);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v26 = *(v0 + 176);

    v23(v24, v26);
  }

  v28 = *(v0 + 192);
  v27 = *(v0 + 200);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2281DF080(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10);

  return (*(v6 + 8))(v9, v5);
}

id MedicationConceptDetailViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_2281DF250()
{
  v1 = *(v0 + qword_27D824AB0 + 8);

  v2 = *(v0 + qword_27D824A98);

  v3 = *(v0 + qword_27D824AA8);

  v4 = *(v0 + qword_27D824AC8);
}

id MedicationConceptDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationConceptDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281DF32C(uint64_t a1)
{
  v2 = *(a1 + qword_27D824AB0 + 8);

  v3 = *(a1 + qword_27D824A98);

  v4 = *(a1 + qword_27D824AA8);

  v5 = *(a1 + qword_27D824AC8);
}

Swift::Void __swiftcall MedicationConceptDetailViewController.presentMedicationsInputViewController()()
{
  v1 = v0;
  sub_2281E0300(0, &qword_27D8245A0, sub_2281DFB88);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_228391890();
  v6 = *&v0[qword_27D824A90];
  v7 = objc_allocWithZone(type metadata accessor for MedicationsInputViewController());

  v8 = MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(v5, v6, 0, 0);
  v9 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v9 setModalPresentationStyle_];
  [v9 setModalInPresentation_];
  [v1 presentViewController:v9 animated:1 completion:0];
}

uint64_t MedicationConceptDetailViewController.getLogDoseViewController(medication:prefillLogDate:prefillDosage:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = v9[2];
  v16(v37 - v14, a2, v8);
  v17 = type metadata accessor for MedicationsDoseLogViewModel(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = a1;
  *(v20 + 40) = a3;
  *(v20 + 48) = 1;
  *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = 1;
  v16((v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate), v15, v8);
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate;
  v22 = v9[4];
  v23 = a1;
  v22(v20 + v21, v15, v8);
  *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = *(v20 + 40);
  *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = 0;
  sub_22838F430();
  v37[1] = v23;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v24 = sub_228390F20();
  v26 = v25;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228396260;
  *(v27 + 32) = v20;
  v28 = type metadata accessor for MedicationDoseLogListViewModel(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v22(v31 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v13, v8);
  v32 = (v31 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v32 = v24;
  v32[1] = v26;
  *(v31 + 16) = v27;
  v33 = qword_27D824AA0;
  swift_beginAccess();
  v34 = *(v4 + v33);
  v35 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController());
  return MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v31, 0, v34, 0, 4, 0, 2, 0);
}

uint64_t sub_2281DF7F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2281DF8EC;

  return v7(a1);
}

uint64_t sub_2281DF8EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void _s19HealthMedicationsUI37MedicationConceptDetailViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + qword_27D824AB0);
  v2 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v5 = v3;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  *v1 = v4;
  v1[1] = v5;
  *(v0 + qword_27D824AB8) = 0;
  *(v0 + qword_27D824AC0) = 0;
  *(v0 + qword_27D824AC8) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2281DFAD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_2281DE8DC(a1, v4, v5, v6);
}

void sub_2281DFB88()
{
  if (!qword_280DDBA60)
  {
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBA60);
    }
  }
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_2281E006C(uint64_t a1, uint64_t a2)
{
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2281E00EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2281E013C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22819D87C;

  return sub_2282E2D80(a1, v5);
}

void sub_2281E01F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2281E0248()
{
  if (!qword_27D824AF8)
  {
    sub_2281E0300(255, &qword_27D824B00, MEMORY[0x277D77BD8]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281E0364();
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824AF8);
    }
  }
}

void sub_2281E0300(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2281E0364()
{
  result = qword_27D824B08;
  if (!qword_27D824B08)
  {
    sub_2281E0300(255, &qword_27D824B00, MEMORY[0x277D77BD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B08);
  }

  return result;
}

void sub_2281E03D8()
{
  if (!qword_27D824B10)
  {
    sub_2281E0248();
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    sub_2281E0500(&qword_27D824B18, sub_2281E0248);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824B10);
    }
  }
}

uint64_t sub_2281E0494(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281E01F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281E0500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281E0548(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22819DA1C;

  return sub_2281DF7F4(a1, v5);
}

void sub_2281E0600()
{
  if (!qword_27D824B38)
  {
    sub_22818217C(255, &qword_280DDB860);
    v0 = sub_228392350();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824B38);
    }
  }
}

uint64_t AddMedicationItem.init(enabled:onTap:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0xD000000000000011;
  *(a4 + 8) = 0x800000022839A9D0;
  type metadata accessor for AddMedicationCell();
  sub_2281E075C();
  result = sub_22838FBB0();
  *(a4 + 40) = result;
  *(a4 + 48) = v9;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_2281E075C()
{
  result = qword_27D824B40;
  if (!qword_27D824B40)
  {
    type metadata accessor for AddMedicationCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B40);
  }

  return result;
}

uint64_t AddMedicationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

unint64_t AddMedicationItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283931D0();

  MEMORY[0x22AAB5C80](v1, v2);
  return 0xD000000000000012;
}

uint64_t static AddMedicationItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t AddMedicationItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2283920B0();
}

uint64_t AddMedicationItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E08E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E092C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2283920B0();
}

uint64_t sub_2281E0934()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E097C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

unint64_t sub_2281E09AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283931D0();

  MEMORY[0x22AAB5C80](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_2281E0A28(uint64_t a1)
{
  v2 = sub_2281E3590();

  return MEMORY[0x282169440](a1, v2);
}

id sub_2281E0A94()
{
  sub_22817A958(0, &qword_27D823CB0, 0x277CCA8D8);
  v0 = sub_228392C30();
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];

  return v4;
}

id sub_2281E0BA8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setText_];

  v2 = *MEMORY[0x277D12788];
  sub_228392000();
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000019, 0x80000002283AA880);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = v3;
  [v5 setIsAccessibilityElement_];
  sub_22838F0C0();
  v6 = sub_228391FC0();

  [v5 setAccessibilityLabel_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setNumberOfLines_];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v7 = *MEMORY[0x277D76918];
  v8 = *MEMORY[0x277D74420];
  v9 = sub_228392AD0();
  [v5 setFont_];

  v10 = [objc_opt_self() labelColor];
  [v5 setTextColor_];

  return v5;
}

id sub_2281E0E9C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281E0EFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setText_];

  v2 = *MEMORY[0x277D12788];
  sub_228392000();
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA840);

  MEMORY[0x22AAB5C80](0x4C6C69617465442ELL, 0xEC0000006C656261);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  v6 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  return v3;
}

id sub_2281E1154()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2281E1218()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel];
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v6 = sub_228391FC0();

    [v5 setText_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setNumberOfLines_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = *MEMORY[0x277D76918];
    v8 = *MEMORY[0x277D74420];
    v9 = sub_228392AD0();
    [v5 setFont_];

    v10 = [objc_opt_self() systemBlueColor];
    [v5 setTextColor_];

    v11 = sub_228391FC0();
    [v4 setAccessibilityIdentifier_];

    v12 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id AddMedicationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for AddMedicationView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281E1688();

  return v9;
}

void sub_2281E1688()
{
  sub_22838F7B0();
  v1 = *MEMORY[0x277CDA138];
  sub_228392B00();
  v2 = sub_2281E0A74();
  [v0 addSubview_];

  v3 = sub_2281E0B88();
  [v0 addSubview_];

  v4 = sub_2281E0E7C();
  [v0 addSubview_];

  v5 = sub_2281E1154();
  [v0 addSubview_];

  v6 = sub_2281E1218();
  [v0 addSubview_];

  v64 = objc_opt_self();
  sub_228180ED0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22839A9E0;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView] topAnchor];
  v10 = [v0 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:12.0];

  *(v7 + 32) = v11;
  v12 = [*&v0[v8] leadingAnchor];
  v13 = [v0 &selRef_logTimeChanged_ + 1];
  v14 = [v12 &selRef_resignFirstResponder + 6];

  *(v7 + 40) = v14;
  v15 = [*&v0[v8] widthAnchor];
  v16 = [v15 constraintEqualToConstant_];

  *(v7 + 48) = v16;
  v17 = [*&v0[v8] heightAnchor];
  v18 = [v17 &selRef:60.0 setDateTimeStyle:? + 1];

  *(v7 + 56) = v18;
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel;
  v20 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel] &selRef_logTimeChanged_ + 1];
  v21 = [*&v0[v8] trailingAnchor];
  v22 = [v20 &selRef_resignFirstResponder + 6];

  *(v7 + 64) = v22;
  v23 = [*&v0[v19] trailingAnchor];
  v24 = [v0 trailingAnchor];
  v25 = [v23 &selRef_resignFirstResponder + 6];

  *(v7 + 72) = v25;
  v26 = [*&v0[v19] topAnchor];
  v27 = [v0 topAnchor];
  v28 = [v26 &selRef_resignFirstResponder + 6];

  *(v7 + 80) = v28;
  v29 = [*&v0[v19] bottomAnchor];
  v30 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel;
  v31 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel] topAnchor];
  v32 = [v29 &selRef_resignFirstResponder + 6];

  *(v7 + 88) = v32;
  v33 = [*&v0[v30] leadingAnchor];
  v34 = [*&v0[v19] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v7 + 96) = v35;
  v36 = [*&v0[v30] trailingAnchor];
  v37 = [*&v0[v19] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v7 + 104) = v38;
  v39 = [*&v0[v30] bottomAnchor];
  v40 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView;
  v41 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView] topAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:-12.0];

  *(v7 + 112) = v42;
  v43 = [*&v0[v40] heightAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v7 + 120) = v44;
  v45 = [*&v0[v40] leadingAnchor];
  v46 = [*&v0[v19] leadingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v7 + 128) = v47;
  v48 = [*&v0[v40] trailingAnchor];
  v49 = [*&v0[v19] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v7 + 136) = v50;
  v51 = [*&v0[v40] bottomAnchor];
  v52 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel;
  v53 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel] topAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:-14.0];

  *(v7 + 144) = v54;
  v55 = [*&v0[v52] leadingAnchor];
  v56 = [*&v0[v8] trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:12.0];

  *(v7 + 152) = v57;
  v58 = [*&v0[v52] trailingAnchor];
  v59 = [*&v0[v19] trailingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v7 + 160) = v60;
  v61 = [*&v0[v52] bottomAnchor];
  v62 = [v0 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-12.0];

  *(v7 + 168) = v63;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v65 = sub_228392190();

  [v64 activateConstraints_];
}

uint64_t sub_2281E1F44(uint64_t a1, uint64_t *a2)
{
  sub_2281E3284(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281E2E30();
  return sub_2281E32F0(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281E1FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  return sub_2281E3284(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281E205C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281E2E30();
  return sub_2281E32F0(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2281E20E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281E2148;
}

uint64_t sub_2281E2148(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281E2E30();
  }

  return result;
}

id sub_2281E217C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView);
  }

  else
  {
    type metadata accessor for AddMedicationView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addTarget:v0 action:sel_actionButtonTappedWithSender_ forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281E2228(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AddMedicationCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for AddMedicationCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281E2460();

  return v10;
}

void sub_2281E2460()
{
  v1 = v0;
  sub_22838F7B0();
  v2 = *MEMORY[0x277CDA138];
  sub_228392B00();
  v3 = [v0 contentView];
  v4 = sub_2281E217C();
  [v3 addSubview_];

  v5 = objc_opt_self();
  sub_228180ED0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228397F00;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView;
  v8 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView] topAnchor];
  v9 = [v1 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [*&v1[v7] bottomAnchor];
  v13 = [v1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v15;
  v16 = [*&v1[v7] leadingAnchor];
  v17 = [v1 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v6 + 48) = v19;
  v20 = [*&v1[v7] trailingAnchor];
  v21 = [v1 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v6 + 56) = v23;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v24 = sub_228392190();

  [v5 activateConstraints_];
}

uint64_t sub_2281E2768()
{
  v1 = v0;
  sub_2281E35E4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for AddMedicationCell();
  v21.receiver = v1;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel__bridgedUpdateConfigurationUsingState_, v12);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v14 = sub_2283913A0();
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {
      v15 = MEMORY[0x277D74BD0];
      sub_2281E3284(v11, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v9);
      v16 = v11;
      return sub_2281E32F0(v16, &unk_280DDBCD0, v15);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v19 = v11;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v17 = sub_2283913A0();
    if ((*(*(v17 - 8) + 48))(v6, 1, v17))
    {
      v15 = MEMORY[0x277D74BD0];
      sub_2281E3284(v6, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v9);
      v16 = v6;
      return sub_2281E32F0(v16, &unk_280DDBCD0, v15);
    }

    v20 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v19 = v6;
  }

  return MEMORY[0x22AAB6420](v19);
}

uint64_t sub_2281E2AFC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_2281E3284(v1 + v7, v21, &qword_280DDCD50, sub_22817A700);
  if (v21[3])
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v20();
    }
  }

  else
  {
    sub_2281E32F0(v21, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v9 = v1;
  v10 = sub_2283911A0();
  v11 = sub_2283925C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v2;
    v14 = v13;
    v21[0] = v13;
    *v12 = 136446210;
    sub_2281E3284(v1 + v7, v19, &qword_280DDCD50, sub_22817A700);
    sub_2281E35E4(0, &qword_280DDCD50, sub_22817A700);
    v15 = sub_228392040();
    v17 = sub_2281C96FC(v15, v16, v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22816B000, v10, v11, "Incorrect view model for AddMedicationItem: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    return (*(v3 + 8))(v6, v18);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2281E2E30()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2281E35E4(0, &qword_280DDB950, MEMORY[0x277D75058]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v13 = &v36[-v12 - 8];
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_2281E3284(&v1[v14], v37, &qword_280DDCD50, sub_22817A700);
  if (!v37[3])
  {
    sub_2281E32F0(v37, &qword_280DDCD50, sub_22817A700);
LABEL_9:
    sub_228391150();
    v26 = v1;
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v2;
      v31 = v30;
      v37[0] = v30;
      *v29 = 136446210;
      sub_2281E3284(&v1[v14], v36, &qword_280DDCD50, sub_22817A700);
      sub_2281E35E4(0, &qword_280DDCD50, sub_22817A700);
      v32 = sub_228392040();
      v34 = sub_2281C96FC(v32, v33, v37);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_22816B000, v27, v28, "Incorrect view model for AddMedicationItem: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAB7B80](v31, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);

      return (*(v3 + 8))(v6, v35);
    }

    else
    {

      return (*(v3 + 8))(v6, v2);
    }
  }

  sub_22817A700();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = v36[16];
  v16 = objc_opt_self();
  v17 = &selRef_linkColor;
  if (!v15)
  {
    v17 = &selRef_secondaryLabelColor;
  }

  v18 = [v16 *v17];
  v19 = sub_2281E217C();
  sub_228392E00();

  v20 = sub_228392DE0();
  if (!(*(*(v20 - 8) + 48))(v13, 1, v20))
  {
    v21 = v18;
    sub_228392D60();
  }

  v22 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView];
  v23 = MEMORY[0x277D75058];
  sub_2281E3284(v13, v11, &qword_280DDB950, MEMORY[0x277D75058]);
  v24 = v22;
  sub_228392E10();

  return sub_2281E32F0(v13, &qword_280DDB950, v23);
}

uint64_t sub_2281E3284(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2281E35E4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281E32F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281E35E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_2281E3364(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2281E33A0()
{
  result = qword_27D824B80;
  if (!qword_27D824B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B80);
  }

  return result;
}

unint64_t sub_2281E33F8()
{
  result = qword_27D824B88;
  if (!qword_27D824B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B88);
  }

  return result;
}

unint64_t sub_2281E3590()
{
  result = qword_27D824B90;
  if (!qword_27D824B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B90);
  }

  return result;
}

void sub_2281E35E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for VisualizationModificationStepViewController()
{
  result = qword_27D824BB0;
  if (!qword_27D824BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281E36F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  sub_2281E4A38(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v73 - v7;
  sub_2281E4A38(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = v73 - v11;
  v12 = sub_2283909E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2283908E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = qword_27D824B98;
  result = sub_2283908B0();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v75 = v16;
  v76 = v8;
  v84 = v13;
  v82 = v12;
  v77 = a2;
  v80 = a3;
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = *(v18 + 16);
  v25(v21, result + v24, v17);

  v26 = sub_2283908D0();
  v27 = *(v18 + 8);
  v27(v21, v17);
  v85 = v26;
  sub_2281E4A8C(0, &qword_27D824BC8, sub_2281AF0A0);
  v29 = v28;
  v30 = *(v28 + 48);
  v31 = *(v28 + 52);
  swift_allocObject();
  *(v83 + v22) = sub_228391890();
  v81 = qword_27D824BA0;
  result = sub_2283908A0();
  if (!*(result + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v74 = v22;
  v25(v21, result + v24, v17);

  v32 = sub_2283908D0();
  v27(v21, v17);
  v85 = v32;
  v33 = *(v29 + 48);
  v34 = *(v29 + 52);
  swift_allocObject();
  *(v83 + v81) = sub_228391890();
  v35 = qword_27D824BA8;
  result = sub_2283908A0();
  if (*(result + 16))
  {
    v25(v21, result + v24, v17);

    v36 = sub_2283908D0();
    v27(v21, v17);
    v85 = v36;
    v37 = *(v29 + 48);
    v38 = *(v29 + 52);
    swift_allocObject();
    v39 = sub_228391890();
    v40 = v82;
    v41 = v83;
    *(v83 + v35) = v39;
    *(v41 + qword_27D828AE0) = MEMORY[0x277D84FA0];
    v42 = v35;
    v43 = v75;
    (*(v84 + 16))(v75, v80, v40);
    sub_2281E4A8C(0, &qword_27D824BD0, MEMORY[0x277D11640]);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = sub_228391890();
    v48 = *(v41 + v74);
    v49 = *(v41 + v81);
    v50 = *(v41 + v42);
    v51 = type metadata accessor for VisualizationModificationDataSource();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    v54 = swift_allocObject();
    v55 = qword_27D8280A8;
    v56 = sub_228390D50();
    (*(*(v56 - 8) + 56))(v78, 1, 1, v56);
    sub_2281E4AF0();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();

    *(v54 + v55) = sub_228391890();
    *(v54 + qword_27D8280D0) = MEMORY[0x277D84FA0];
    v73[1] = v47;
    *(v54 + qword_27D8280B0) = v47;
    *(v54 + qword_27D8280B8) = v48;
    *(v54 + qword_27D8280C0) = v49;
    *(v54 + qword_27D8280C8) = v50;

    sub_228391870();
    sub_228391870();
    v60 = v85;
    sub_228391870();
    v61 = v87;
    sub_228391870();
    v62 = v86;
    sub_2283478F0(v43, v60, v61, v86);

    v63 = *(v84 + 8);
    v84 += 8;
    v63(v43, v82);
    *(swift_allocObject() + 16) = 0;
    v64 = sub_228390380();
    sub_228344684();

    v65 = v79;
    v66 = v76;
    sub_228181FB4(v79, v76);
    sub_228181FB4(v66, v41 + qword_27D828B18);
    sub_2281E4B7C();
    v67 = swift_allocObject();
    *(v67 + 16) = v64;
    v68 = qword_27D8280A8;
    swift_beginAccess();
    v69 = *(v64 + v68);
    *(v41 + qword_27D824D88) = v67;
    *(v67 + 24) = v69;
    *(v41 + qword_27D824D90) = v77;
    sub_2283901F0();
    sub_228182110();
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_228397F40;
    v71 = MEMORY[0x277D10F80];
    *(v70 + 32) = v64;
    *(v70 + 40) = v71;
    swift_retain_n();

    sub_228390220();
    v72 = sub_228390480();
    sub_2281E4648(v66, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

    v63(v80, v82);
    sub_2281E4648(v65, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    return v72;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2281E3EF4(void *a1)
{
  v2 = v1;
  sub_2281E4A38(0, &qword_27D824BC0, sub_228199F78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  sub_228199F78();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v14 animated:1];

  v15 = sub_22838F710();
  v34 = [a1 cellForItemAtIndexPath_];

  if (!v34)
  {
    return;
  }

  type metadata accessor for ColorCell();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    v20 = v34;

    return;
  }

  v17 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  v18 = v16;
  swift_beginAccess();
  sub_22817E6C8(v18 + v17, v35);
  if (!v35[3])
  {

    sub_2281E4708(v35, sub_228181D50);
    (*(v10 + 56))(v7, 1, 1, v9);
    goto LABEL_10;
  }

  sub_22818217C(0, &qword_280DDCD60);
  v19 = swift_dynamicCast();
  (*(v10 + 56))(v7, v19 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {

LABEL_10:
    sub_2281E4648(v7, &qword_27D824BC0, sub_228199F78);
    return;
  }

  sub_2281E46A4(v7, v13);
  sub_228390470();
  v21 = sub_2283901E0();

  if (!v21[2])
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = v21[4];
  v22 = v21[5];
  swift_unknownObjectRetain();

  swift_getObjectType();
  v24 = sub_22838FD40();
  swift_unknownObjectRelease();
  v25 = sub_22838F750();
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 >= *(v24 + 16))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v26 = v24 + 16 * v25;
  v28 = *(v26 + 32);
  v27 = *(v26 + 40);

  if (v28 == 0xD000000000000011 && 0x80000002283AA970 == v27 || (sub_228393460() & 1) != 0)
  {

    v29 = qword_27D824BA0;
  }

  else if (v28 == 0xD000000000000012 && 0x80000002283AA990 == v27 || (sub_228393460() & 1) != 0)
  {

    v29 = qword_27D824BA8;
  }

  else
  {
    if (v28 == 0x756F72676B636162 && v27 == 0xEF726F6C6F43646ELL)
    {
    }

    else
    {
      v32 = sub_228393460();

      if ((v32 & 1) == 0)
      {
        sub_2281E4708(v13, sub_228199F78);

        return;
      }
    }

    v29 = qword_27D824B98;
  }

  v30 = *(v2 + v29);

  v31 = sub_2283908D0();
  v35[0] = v31;
  sub_228391850();

  sub_2281E4708(v13, sub_228199F78);
}

uint64_t sub_2281E4410(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281E3EF4(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2281E453C()
{
  v1 = *(v0 + qword_27D824B98);

  v2 = *(v0 + qword_27D824BA0);

  v3 = *(v0 + qword_27D824BA8);

  v4 = *(v0 + qword_27D828AE0);
}

id sub_2281E459C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualizationModificationStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281E45D4(uint64_t a1)
{
  v2 = *(a1 + qword_27D824B98);

  v3 = *(a1 + qword_27D824BA0);

  v4 = *(a1 + qword_27D824BA8);

  v5 = *(a1 + qword_27D828AE0);
}

uint64_t sub_2281E4648(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281E4A38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281E46A4(uint64_t a1, uint64_t a2)
{
  sub_228199F78();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281E4708(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2281E4768()
{
  v4 = sub_2283908E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27D824B98;
  v10 = sub_2283908B0();
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v2 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v1 = *(v5 + 16);
  v1(v8, v10 + v2, v4);

  v11 = sub_2283908D0();
  v3 = *(v5 + 8);
  v3(v8, v4);
  v24 = v11;
  sub_2281E4A8C(0, &qword_27D824BC8, sub_2281AF0A0);
  v0 = v12;
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v23 + v9) = sub_228391890();
  v9 = qword_27D824BA0;
  v10 = sub_2283908A0();
  if (!*(v10 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1(v8, v10 + v2, v4);

  v15 = sub_2283908D0();
  v3(v8, v4);
  v24 = v15;
  v16 = *(v0 + 48);
  v17 = *(v0 + 52);
  swift_allocObject();
  *(v23 + v9) = sub_228391890();
  v9 = qword_27D824BA8;
  v10 = sub_2283908A0();
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v1(v8, v10 + v2, v4);

  v18 = sub_2283908D0();
  v3(v8, v4);
  v24 = v18;
  v19 = *(v0 + 48);
  v20 = *(v0 + 52);
  swift_allocObject();
  v21 = sub_228391890();
  v22 = v23;
  *(v23 + v9) = v21;
  *(v22 + qword_27D828AE0) = MEMORY[0x277D84FA0];
  sub_228393300();
  __break(1u);
}

void sub_2281E4A38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2281E4A8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2281E4AF0()
{
  if (!qword_27D827800)
  {
    sub_2281E4A38(255, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827800);
    }
  }
}

void sub_2281E4B7C()
{
  if (!qword_27D824BD8)
  {
    type metadata accessor for VisualizationModificationDataSource();
    sub_2281E4C10(&qword_27D824BE0, type metadata accessor for VisualizationModificationDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824BD8);
    }
  }
}

uint64_t sub_2281E4C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281E4C58()
{
  result = type metadata accessor for MedicationOnboardingFlowManager(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

id sub_2281E4D74(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = *(v1 + qword_27D828AF8);
  v4 = *(v1 + qword_27D828AF8 + 8);
  type metadata accessor for OnboardingStepViewController();
  v5 = [v2 initWithBarButtonSystemItem:1 target:sub_228393450() action:sel_hxui_cancelButtonTapped];
  swift_unknownObjectRelease();
  return v5;
}

id sub_2281E4E68(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281E4ECC(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  v2 = sub_228391FC0();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = *(v1 + qword_27D828AF8);
  v6 = *(v1 + qword_27D828AF8 + 8);
  type metadata accessor for OnboardingStepViewController();
  v7 = [v4 initWithImage:v3 style:0 target:sub_228393450() action:sel_tapToRadarButtonTappedWithSender_];

  swift_unknownObjectRelease();
  return v7;
}

void sub_2281E4FEC()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + qword_27D828AF8);
  v3 = *(v1 + qword_27D828AF8 + 8);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OnboardingStepViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_2281E51F0();
  sub_2281E5388();
  v4 = v0 + qword_27D824BF0;
  v5 = v4[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
  if (v5 == 64 || (v5 & 0xE0) != 0x40)
  {
    sub_2281E50AC();
  }
}

void sub_2281E50AC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2281E7400(0);
    [v2 addGestureRecognizer_];

    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      v7 = sub_2281E7400(1);
      [v6 addGestureRecognizer_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2281E51A8(void *a1)
{
  v1 = a1;
  sub_2281E4FEC();
}

void sub_2281E51F0()
{
  v1 = v0;
  v2 = sub_2283902A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390290();
  v7 = sub_228390280();
  (*(v3 + 8))(v6, v2);
  v8 = [v1 navigationItem];
  if (v7)
  {
    sub_228180ED0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_228397F20;
    *(v9 + 32) = sub_2281E4E48();
    *(v9 + 40) = sub_2281E4D54();
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    v10 = sub_228392190();

    v11 = &selRef_setRightBarButtonItems_animated_;
  }

  else
  {
    v10 = sub_2281E4D54();
    v11 = &selRef_setRightBarButtonItem_animated_;
  }

  [v8 *v11];
}

void sub_2281E5388()
{
  v1 = *&v0[qword_27D824C00];
  if (v1 && v0[qword_27D824C08] == 1)
  {
    v32 = v1;
    v2 = [v0 headerView];
    v3 = [v2 customIconContainerView];

    if (v3)
    {

      v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      [v4 setTranslatesAutoresizingMaskIntoConstraints_];
      [v4 setContentMode_];
      v5 = [v0 headerView];
      [v5 addSubview_];

      v6 = [v0 contentView];
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor_];

      sub_228180ED0();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_228397F00;
      v9 = [v0 headerView];
      v10 = [v9 topAnchor];

      v11 = [v4 topAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v8 + 32) = v12;
      v13 = [v0 headerView];
      v14 = [v13 centerXAnchor];

      v15 = [v4 centerXAnchor];
      v16 = [v14 constraintEqualToAnchor_];

      *(v8 + 40) = v16;
      v17 = [v0 headerView];
      v18 = [v17 widthAnchor];

      v19 = [v4 widthAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v8 + 48) = v20;
      v21 = [v4 heightAnchor];

      v22 = [v21 constraintEqualToConstant_];
      *(v8 + 56) = v22;
      v33 = v8;
      v23 = &v0[qword_27D824BF0];
      if (v23[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)] == 160)
      {
        v24 = [v0 contentView];
        v25 = [v24 topAnchor];

        v26 = [v0 headerView];
        v27 = [v26 bottomAnchor];

        v28 = [v25 constraintEqualToAnchor:v27 constant:15.0];
        MEMORY[0x22AAB5D20]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();
      }

      v29 = objc_opt_self();
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
      v30 = sub_228392190();

      [v29 activateConstraints_];
    }

    else
    {
    }
  }
}

void *sub_2281E5880()
{
  if ([v0 isFirstResponder])
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 subviews];
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v3 = sub_2283921A0();

    if (v3 >> 62)
    {
LABEL_18:
      v4 = sub_2283930D0();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB6D80](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v0 = sub_2281E5880();

      if (v0)
      {

        return v0;
      }
    }

    return 0;
  }

  return v0;
}

void sub_2281E59C4()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v4 = *(v2 + qword_27D828AF8);
  v3 = *(v2 + qword_27D828AF8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_228392F00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = v0 + qword_27D824BF0;
  v12 = v11[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
  v13 = v12 >> 5;
  if (v12 >> 5 > 2)
  {
    if (v13 == 5)
    {
      if (v12 == 160)
      {
        goto LABEL_15;
      }
    }

    else if (v13 == 4 || v12 == 96)
    {
      goto LABEL_15;
    }

LABEL_14:
    v15 = *(v1 + qword_27D824C20);
    sub_2281ED058();
    (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);

    sub_228391850();

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  if (v13)
  {
    v14 = v13 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 && (v12 & 1) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_2281E5D7C();
  sub_2281E63A4();
}

void sub_2281E5BD4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 endEditing_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2281E5C38(void *a1)
{
  v1 = a1;
  sub_2281E5BD4();
}

void sub_2281E5C80()
{
  sub_2281E5D7C();

  sub_2281E63A4();
}

void sub_2281E5CAC(void *a1)
{
  v1 = a1;
  sub_2281E5C80();
}

id sub_2281E5CF4()
{
  sub_2281E5D7C();

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_2281E5D34(void *a1)
{
  v1 = a1;
  sub_2281E5CF4();
}

uint64_t sub_2281E5D7C()
{
  sub_2281E78E8(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = v0 + qword_27D824BF0;
  result = type metadata accessor for MedicationOnboardingFlowManager(0);
  v10 = *(v8 + *(result + 28));
  if (v10 >> 5 != 2 || v10 != 64)
  {
    v11 = *(v0 + qword_27D824C10);
    v12 = *(v8 + *(result + 76));
    sub_228391870();
    v13 = v24;
    if (v24)
    {
      [v24 scheduleType];
    }

    sub_228390DD0();
    sub_228390890();

    sub_228390880();
    sub_228390830();

    sub_228391870();
    v14 = v24;
    if (v24)
    {
      v15 = [v24 endDateTime];

      if (v15)
      {
        sub_22838F3E0();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v18 = sub_22838F440();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v5, v16, 1, v18);
      sub_2281E793C(v5, v7);
      (*(v19 + 48))(v7, 1, v18);
    }

    else
    {
      v17 = sub_22838F440();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    sub_2281E79BC(v7, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v20 = sub_228390D90();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_228390D80();
    sub_228390E70();
    sub_228390E60();
  }

  return result;
}

uint64_t sub_2281E6144()
{
  sub_2281E78E8(0, &qword_27D824CC8, MEMORY[0x277D117F0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = sub_228390540();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390580();
  sub_228390570();
  sub_228390560();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2281E79BC(v4, &qword_27D824CC8, MEMORY[0x277D117F0]);
    return _s19HealthMedicationsUI0B10TapToRadarC19medicationsTracking14viewControllerySo06UIViewJ0CSg_tFZ_0(v0);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_228390530();
    MEMORY[0x22AAB40C0](v9, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2281E6330(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_228392F90();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_2281E63A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2281E78E8(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_22839ACB8, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_2281E78BC;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E0E8;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_7;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

uint64_t sub_2281E66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2283911B0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_2283922A0();
  v5[8] = sub_228392290();
  v10 = sub_228392250();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_2281E67BC, v10, v9);
}

uint64_t sub_2281E67BC()
{
  v1 = [*(v0 + 24) buttonTray];
  [v1 showButtonsBusy];

  sub_228390890();
  sub_228390880();
  sub_228390840();

  *(v0 + 88) = sub_228390660();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_2281E68C8;

  return sub_22836DF24();
}

uint64_t sub_2281E68C8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_2281E6AD0;
  }

  else
  {
    v7 = sub_2281E6A04;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2281E6A04()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[3];

  sub_2281E6E0C();
  sub_2281E6D30();
  sub_2281E74DC(v1);

  [v3 dismissViewControllerAnimated:1 completion:0];
  v4 = [v3 buttonTray];
  [v4 showButtonsAvailable];

  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2281E6AD0()
{
  v29 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  sub_228391150();
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 48);
    v27 = *(v0 + 56);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446722;
    v14 = sub_228393600();
    v16 = sub_2281C96FC(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_2281C96FC(0xD000000000000023, 0x80000002283AAC50, &v28);
    *(v12 + 22) = 2080;
    *(v0 + 16) = v8;
    v17 = v8;
    sub_228192C1C();
    v18 = sub_228392020();
    v20 = sub_2281C96FC(v18, v19, &v28);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s.%{public}s]: Failed to save medication with %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v27, v10);
  }

  else
  {
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v23 = *(v0 + 40);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 56);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2281E6D30()
{
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v1 = sub_2283907E0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_228390700();
  if ((sub_228390750() & 1) == 0)
  {
    v4 = v0 + qword_27D824BF0;
    v5 = *(v4 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 32));
    sub_228390760();
  }
}

void sub_2281E6E0C()
{
  swift_getObjectType();
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v5 = sub_2283911A0();
  v6 = sub_2283925A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v9 = sub_228393600();
    v11 = sub_2281C96FC(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22816B000, v5, v6, "[%{public}s]: Submitting Tips Discoverability Signal", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAB7B80](v8, -1, -1);
    MEMORY[0x22AAB7B80](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v12 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v13 = [v12 Signals];
  swift_unknownObjectRelease();
  v14 = [v13 source];
  v15 = *MEMORY[0x277CCE3A8];
  sub_2281E70E8();
  v16 = objc_allocWithZone(MEMORY[0x277CF1168]);
  v17 = sub_228391FC0();
  v18 = sub_228391FC0();

  v19 = [v16 initWithContentIdentifier:v17 context:v15 osBuild:v18 userInfo:0];

  [v14 sendEvent_];
}

uint64_t sub_2281E70E8()
{
  v0 = sub_228391FC0();
  result = MGGetStringAnswer();
  if (result)
  {
    v2 = result;
    v3 = sub_228392000();
    v5 = v4;

    MEMORY[0x22AAB5C80](v3, v5);

    return 760434537;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2281E71B8()
{
  v1 = *(v0 + qword_27D824BE8 + 8);

  sub_2281E7A18(v0 + qword_27D824BF0);
  v2 = *(v0 + qword_27D824BF8);

  v3 = *(v0 + qword_27D824C10);

  v4 = *(v0 + qword_27D824C40);
}

id sub_2281E728C()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + qword_27D828AF8);
  v3 = *(v1 + qword_27D828AF8 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OnboardingStepViewController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_2281E7308(uint64_t a1)
{
  v2 = *(a1 + qword_27D824BE8 + 8);

  sub_2281E7A18(a1 + qword_27D824BF0);
  v3 = *(a1 + qword_27D824BF8);

  v4 = *(a1 + qword_27D824C10);

  v5 = *(a1 + qword_27D824C40);
}

id sub_2281E7400(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v7 = v3;
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v4 = sub_228393450();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_endEditing_];
  swift_unknownObjectRelease();
  [v5 setCancelsTouchesInView_];
  return v5;
}

void sub_2281E74DC(unint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_22838F810();
  sub_22838F800();
  v13 = sub_22838F7F0();

  v21 = [v13 authorizationStatus];

  if (a1 >> 62)
  {
LABEL_19:
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_2283930D0();
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v23 = a1 & 0xC000000000000001;
  v15 = v3 + 1;
  while (v24 != v14)
  {
    if (v23)
    {
      v16 = MEMORY[0x22AAB6D80](v14, a1);
    }

    else
    {
      if (v14 >= *(v22 + 16))
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 8 * v14 + 32);
    }

    v3 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v17 = [v16 creationDate];
    sub_22838F3E0();

    sub_22838F430();
    sub_22838F350();
    v18 = *v15;
    (*v15)(v7, v2);
    LOBYTE(v17) = sub_22838F3A0();

    v18(v10, v2);
    v18(v12, v2);
    ++v14;
    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  if (v21 != 2)
  {
    v19 = [objc_opt_self() defaultCenter];
    if (qword_27D8232B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v19 postNotificationName:qword_27D824A88 object:0];
  }
}