uint64_t sub_2282C1744(uint64_t a1, uint64_t a2)
{
  sub_2282C16E0(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282C17D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282C16E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282C1850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v35 = a2;
  v34 = sub_22838F4A0();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_280DDF3C8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_2282C1618(a2, v4 + qword_280DDF3D0, type metadata accessor for MedicationsDoseLogHeaderItem);
  *(v4 + qword_280DDF3D8) = a1;
  v11 = MEMORY[0x277D84560];
  sub_2282C16E0(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
  v12 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  v31 = xmmword_228397F40;
  *(v15 + 16) = xmmword_228397F40;
  v16 = v15 + v14;
  swift_retain_n();
  sub_22838F490();
  v17 = (v16 + v12[7]);
  type metadata accessor for MedicationDoseRecordAllCell();
  sub_2282C15D0(&qword_280DDC200, v18, type metadata accessor for MedicationDoseRecordAllCell);
  *v17 = sub_22838FBB0();
  v17[1] = v19;
  *(v16 + v12[9] + 8) = 0;
  v20 = swift_unknownObjectWeakInit();
  *(v16 + v12[8]) = a1;
  *(v20 + 8) = v32;
  swift_unknownObjectWeakAssign();
  sub_2282C16E0(0, &qword_27D823910, MEMORY[0x277D10F78], v11);
  v21 = *(sub_22838FEF0() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = v31;
  sub_2281958B0(v15);
  swift_setDeallocating();
  sub_2282C1680(v16, type metadata accessor for MedicationDoseRecordAllItem);
  swift_deallocClassInstance();
  sub_22838F490();
  sub_22838F450();
  v24 = *(v7 + 8);
  v25 = v34;
  v24(v10, v34);
  sub_22838FED0();
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v36, "MutableArray<");
  HIWORD(v36[1]) = -4864;
  sub_22838F490();
  v26 = sub_22838F450();
  v28 = v27;
  v24(v10, v25);
  MEMORY[0x22AAB5C80](v26, v28);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v29 = sub_22838FF30();
  sub_2282C1680(v35, type metadata accessor for MedicationsDoseLogHeaderItem);
  return v29;
}

uint64_t sub_2282C1CD4()
{
  result = sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicationDoseRecordAllViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MedicationLogDetailsViewController()
{
  result = qword_27D8272E0;
  if (!qword_27D8272E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282C1ED0(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = v5 >> 5;
      if (v5 >> 5 > 2)
      {
        if (v6 == 3)
        {
          if (v4 == 96)
          {
            if (a1 == 96)
            {
              return 1;
            }
          }

          else if (a1 == 97)
          {
            return 1;
          }
        }

        else if (v6 == 4)
        {
          if (v4 == 128)
          {
            if (a1 == 128)
            {
              return 1;
            }
          }

          else if (a1 == 129)
          {
            return 1;
          }
        }

        else if (v4 == 160)
        {
          if (a1 == 160)
          {
            return 1;
          }
        }

        else if (a1 == 161)
        {
          return 1;
        }
      }

      else
      {
        if (!v6)
        {
          if (a1 > 0x1Fu)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        if (v6 == 1)
        {
          if ((a1 & 0xE0) != 0x20)
          {
            goto LABEL_4;
          }

LABEL_16:
          if (((v4 ^ a1) & 1) == 0)
          {
            return 1;
          }

          goto LABEL_4;
        }

        if (v4 == 64)
        {
          if (a1 == 64)
          {
            return 1;
          }
        }

        else if (a1 == 65)
        {
          return 1;
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return 0;
}

void sub_2282C201C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2282C4D98(0);
    [v2 addGestureRecognizer_];

    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      v7 = sub_2282C4D98(1);
      [v6 addGestureRecognizer_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2282C2118(void *a1)
{
  v1 = a1;
  sub_2282C21A4();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MedicationLogDetailsViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 setPreservesSuperviewLayoutMargins_];

    sub_2282C201C();
  }

  else
  {
    __break(1u);
  }
}

void sub_2282C21A4()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_didTapCancel];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v3 action:sel_didTapDone_];

  [v5 setRightBarButtonItem_];
}

id sub_2282C22C8()
{
  v1 = qword_27D8272D8;
  v2 = *(v0 + qword_27D8272D8);
  if (v2)
  {
    v3 = *(v0 + qword_27D8272D8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v4 setTimeStyle_];
    [v4 setDateStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2282C23C4()
{
  v1 = *(v0 + qword_27D8272A8);

  sub_22818B730(v0 + qword_27D8272B8);
  v2 = *(v0 + qword_27D8272C0);

  v3 = *(v0 + qword_27D8272C8);

  v4 = *(v0 + qword_27D8272D0);

  v5 = *(v0 + qword_27D8272D8);
}

id sub_2282C2444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationLogDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282C247C(uint64_t a1)
{
  v2 = *(a1 + qword_27D8272A8);

  sub_22818B730(a1 + qword_27D8272B8);
  v3 = *(a1 + qword_27D8272C0);

  v4 = *(a1 + qword_27D8272C8);

  v5 = *(a1 + qword_27D8272D0);

  v6 = *(a1 + qword_27D8272D8);
}

void sub_2282C2510(char *a1)
{
  v2 = v1;
  v4 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v4 animated:0];

  v5 = sub_22838F750();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = qword_27D8272D0;
  v7 = *(v1 + qword_27D8272D0);
  if (v5 >= *(v7 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = *(v7 + v5 + 32);
  v9 = sub_22838F750();
  v10 = *(v1 + v6);
  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (*(v10 + v9 + 32) != 1)
  {
    return;
  }

  v11 = sub_22838F750();
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v12 = *(v1 + v6);
  if (v11 >= *(v12 + 16))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = *(v12 + v11 + 32);
  v14 = sub_22838F740();
  v15 = v14;
  if (v13)
  {
    a1 = qword_27D8272C8;
    v9 = swift_beginAccess();
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v10 = *&a1[v2];
    if (v15 >= *(v10 + 16))
    {
      __break(1u);
LABEL_13:
      if ((v9 & 0x8000000000000000) == 0)
      {
        if (v9 < *(v10 + 16))
        {
          v16 = *(v10 + v9 + 32);
          v17 = sub_22838F740();
          if ((v16 & 1) == 0)
          {
            goto LABEL_19;
          }

          v18 = qword_27D8272C8;
          swift_beginAccess();
          if ((v17 & 0x8000000000000000) == 0)
          {
            v19 = *(v2 + v18);
            if (v17 < *(v19 + 16))
            {
              goto LABEL_21;
            }

            __break(1u);
LABEL_19:
            if ((v17 & 0x8000000000000000) == 0)
            {
              v19 = *(v2 + qword_27D8272C0);
              if (v17 < *(v19 + 16))
              {
LABEL_21:
                if (!*(v19 + v17 + 32))
                {
                  v20 = sub_22838F710();
                  v21 = [a1 cellForItemAtIndexPath_];

                  if (v21)
                  {
                    type metadata accessor for MedicationLogDetailsUnitCell();
                    if (swift_dynamicCastClass())
                    {
                      v22 = sub_228214130();
                      v23 = sub_228215168();
                      v24 = [v23 isFirstResponder];

                      if (v24)
                      {
                        [v22 endEditing_];
                      }

                      else
                      {
                        v30 = *&v22[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField];
                        [v30 becomeFirstResponder];
                      }
                    }
                  }

                  v31 = qword_27D8272C8;
                  swift_beginAccess();
                  v32 = *(v2 + v31);
                  v33 = *(v32 + 16);
                  v34 = (v32 + 32);
                  while (v33)
                  {
                    v35 = *v34++;
                    --v33;
                    if (v35 == 2)
                    {
                      goto LABEL_40;
                    }
                  }
                }

                return;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_47;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v10 = *(v2 + qword_27D8272C0);
    if (v14 >= *(v10 + 16))
    {
LABEL_55:
      __break(1u);
      return;
    }
  }

  if (*(v10 + v15 + 32) == 1)
  {
    v25 = qword_27D8272C8;
    swift_beginAccess();
    v26 = *(v2 + v25);
    v27 = *(v26 + 16);
    v28 = (v26 + 32);
    do
    {
      if (!v27)
      {
        sub_2282C2B84();
        return;
      }

      v29 = *v28++;
      --v27;
    }

    while (v29 != 2);
LABEL_40:
    sub_2282C2854();
  }
}

void sub_2282C2854()
{
  v1 = v0;
  v2 = sub_22838F760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27D8272C8;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 32;
    while (*(v11 + v10) != 2)
    {
      if (v9 == ++v10)
      {
        return;
      }
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      MEMORY[0x22AAB32D0](v10, 1);
      v14 = sub_22838F710();
      (*(v3 + 8))(v6, v2);
      v15 = [v13 cellForItemAtIndexPath_];

      if (v15)
      {
        type metadata accessor for MedicationLogDetailsTimePickerCell();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v17 = v16;
          swift_beginAccess();
          sub_2282A35B8(v10);
          swift_endAccess();
          v18 = objc_opt_self();
          v19 = swift_allocObject();
          v19[2] = v17;
          v19[3] = v1;
          v19[4] = v10;
          v31 = sub_2282C58C4;
          v32 = v19;
          aBlock = MEMORY[0x277D85DD0];
          v28 = 1107296256;
          v29 = sub_228191E9C;
          v30 = &block_descriptor_18;
          v20 = _Block_copy(&aBlock);
          v21 = v15;
          v22 = v1;

          v23 = swift_allocObject();
          *(v23 + 16) = v17;
          v31 = sub_2282C58D0;
          v32 = v23;
          aBlock = MEMORY[0x277D85DD0];
          v28 = 1107296256;
          v29 = sub_2282C49D0;
          v30 = &block_descriptor_24_0;
          v24 = _Block_copy(&aBlock);
          v25 = v21;

          [v18 animateWithDuration:v20 animations:v24 completion:0.4];
          _Block_release(v24);
          _Block_release(v20);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2282C2B84()
{
  v1 = sub_22838F760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27D8272C8;
  result = swift_beginAccess();
  v8 = *(v0 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 32;
    while (*(v11 + v10) != 1)
    {
      if (v9 == ++v10)
      {
        return result;
      }
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      if (v9 >= v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          sub_2282C4E64(v12, v12, 2);
          swift_endAccess();
          v20 = *(v0 + qword_27D8272A8);
          v19 = *(v20 + qword_27D829090);
          v13 = type metadata accessor for MedicationLogDetailsTimePickerItem();
          v21[3] = v13;
          v21[4] = sub_2282C58D8(&qword_27D823C88, type metadata accessor for MedicationLogDetailsTimePickerItem);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);

          sub_22838F490();
          v15 = boxed_opaque_existential_1 + v13[6];
          *(v15 + 1) = 0;
          swift_unknownObjectWeakInit();
          v16 = v2;
          v17 = (boxed_opaque_existential_1 + v13[7]);
          type metadata accessor for MedicationLogDetailsTimePickerCell();
          sub_2282C58D8(&qword_27D827308, type metadata accessor for MedicationLogDetailsTimePickerCell);
          *v17 = sub_22838FBB0();
          v17[1] = v18;
          *(boxed_opaque_existential_1 + v13[5]) = v19;
          *(v15 + 1) = &off_283B6BBB8;
          swift_unknownObjectWeakAssign();
          MEMORY[0x22AAB32D0](v12, 1);
          sub_22838FF80();
          (*(v16 + 8))(v5, v1);
          return __swift_destroy_boxed_opaque_existential_0(v21);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2282C2E40(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2282C2510(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2282C2F3C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + qword_27D8272D0);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = qword_27D8272C8;
    v8 = qword_27D8272C0;
    v9 = v4 + 32;
    swift_beginAccess();
    for (i = 0; i != v5; ++i)
    {
      if (*(v9 + i))
      {
        v11 = 0;
        v12 = *(v2 + v7);
        v13 = *(v12 + 16);
        v14 = v12 + 32;
        while (v13 != v11)
        {
          v15 = v11 + 1;
          v16 = *(v14 + v11++);
          if (v16 == v6)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = *(v2 + v8);
        v19 = *(v18 + 16);
        v20 = v18 + 32;
        while (v19 != v17)
        {
          v15 = v17 + 1;
          v21 = *(v20 + v17++);
          if (v21 == v6)
          {
LABEL_14:
            MEMORY[0x22AAB32D0](v15 - 1);
            v22 = 0;
            goto LABEL_15;
          }
        }
      }
    }
  }

  v22 = 1;
LABEL_15:
  v23 = sub_22838F760();
  return (*(*(v23 - 8) + 56))(a2, v22, 1, v23);
}

id sub_2282C308C(uint64_t a1)
{
  v150 = a1;
  ObjectType = swift_getObjectType();
  v154 = sub_22838F6C0();
  v153 = *(v154 - 8);
  v2 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2282C56E0(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v151 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v160 = (&v144 - v9);
  v10 = sub_22838F440();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v155 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v157 = &v144 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v159 = &v144 - v18;
  MEMORY[0x28223BE20](v17);
  v156 = &v144 - v19;
  v20 = sub_2283911B0();
  v165 = *(v20 - 8);
  v166 = v20;
  v21 = *(v165 + 8);
  v22 = MEMORY[0x28223BE20](v20);
  v162 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v144 - v24;
  sub_2282C56E0(0, &qword_27D827300, MEMORY[0x277CC9AF8], v4);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v163 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v144 - v30;
  v32 = sub_22838F760();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v161 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v144 - v37;
  v167 = swift_allocBox();
  v158 = v39;
  sub_2282C2F3C(0, v31);
  v40 = *(v33 + 48);
  if (v40(v31, 1, v32) == 1)
  {
    sub_2282C57A4(v31, &qword_27D827300, MEMORY[0x277CC9AF8]);
LABEL_12:
    sub_228391190();
    v54 = sub_2283911A0();
    v55 = sub_2283925C0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock = v57;
      *v56 = 136315138;
      v58 = sub_228393600();
      v60 = sub_2281C96FC(v58, v59, &aBlock);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_22816B000, v54, v55, "[%s] Couldn't reference unit value", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AAB7B80](v57, -1, -1);
      MEMORY[0x22AAB7B80](v56, -1, -1);
    }

    (*(v165 + 1))(v25, v166);
    return swift_deallocBox();
  }

  v148 = v11;
  v146 = v10;
  v147 = *(v33 + 32);
  v147(v38, v31, v32);
  v149 = v1;
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v42 = result;
  v43 = sub_22838F710();
  v44 = [v42 cellForItemAtIndexPath_];

  if (!v44)
  {
LABEL_11:
    (*(v33 + 8))(v38, v32);
    goto LABEL_12;
  }

  type metadata accessor for MedicationLogDetailsUnitCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v45 = sub_228214130();
  v145 = sub_228215CFC();
  v47 = v46;

  v48 = *(v33 + 8);
  v48(v38, v32);
  if (v47)
  {
    goto LABEL_12;
  }

  v49 = v163;
  v50 = v149;
  sub_2282C2F3C(1u, v163);
  if (v40(v49, 1, v32) == 1)
  {
    v51 = &qword_27D827300;
    v52 = MEMORY[0x277CC9AF8];
    v53 = v49;
LABEL_9:
    sub_2282C57A4(v53, v51, v52);
LABEL_23:
    v73 = v162;
    sub_228391190();
    v74 = sub_2283911A0();
    v75 = sub_2283925C0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      v78 = sub_228393600();
      v80 = sub_2281C96FC(v78, v79, &aBlock);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_22816B000, v74, v75, "[%s] Couldn't reference date value", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x22AAB7B80](v77, -1, -1);
      MEMORY[0x22AAB7B80](v76, -1, -1);
    }

    (*(v165 + 1))(v73, v166);
    return swift_deallocBox();
  }

  v61 = v48;
  v62 = v161;
  v147(v161, v49, v32);
  result = [v50 collectionView];
  if (!result)
  {
    goto LABEL_42;
  }

  v63 = result;
  v64 = sub_22838F710();
  v65 = [v63 cellForItemAtIndexPath_];

  v66 = v148;
  if (!v65)
  {
LABEL_22:
    v61(v62, v32);
    goto LABEL_23;
  }

  type metadata accessor for MedicationLogDetailsTimeCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_22;
  }

  v67 = sub_22825AD54();

  v61(v62, v32);
  v68 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  swift_beginAccess();
  v69 = v67 + v68;
  v70 = v160;
  sub_22822BFC0(v69, v160);

  v71 = v66[6];
  v72 = v146;
  if (v71(v70, 1, v146) == 1)
  {
    v51 = &qword_280DDCDB0;
    v52 = MEMORY[0x277CC9578];
    v53 = v70;
    goto LABEL_9;
  }

  v165 = v71;
  v81 = v66[4];
  v82 = v156;
  v81(v156, v70, v72);
  v83 = v158;
  v162 = (v66 + 4);
  v161 = v81;
  v81(v158, v82, v72);
  v166 = swift_allocObject();
  *(v166 + 16) = v50;
  ObjectType = *&v50[qword_27D8272A8];
  v163 = qword_27D829090;
  v84 = *(ObjectType + qword_27D829090);
  v85 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  swift_beginAccess();
  v86 = v66[2];
  v87 = v159;
  v86(v159, v84 + v85, v72);
  v88 = v157;
  v86(v157, v83, v72);
  sub_2282C58D8(&unk_27D827B20, MEMORY[0x277CC9578]);
  v89 = v149;
  LOBYTE(v84) = sub_228391FB0();
  v90 = v66[1];
  v90(v88, v72);
  v148 = v66 + 1;
  v90(v87, v72);
  v91 = v89;
  if ((v84 & 1) != 0 || v89[qword_27D8272B0] != 1)
  {
    v107 = *&v145;
    v108 = v159;
    v109 = v146;
    v86(v159, v158, v146);
    sub_2282C4474(v108, 0, v89, v107);

    v90(v108, v109);
  }

  else
  {
    v160 = v90;
    v92 = ObjectType;
    v93 = v163;
    v94 = *&v163[ObjectType];

    v95 = v151;
    sub_22830071C(v151);

    v96 = v146;
    v97 = v165;
    if (v165(v95, 1, v146) == 1)
    {
      v98 = v93;
      v99 = v91;
      v100 = *&v98[v92];
      v101 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v102 = v100 + v101;
      v91 = v99;
      v86(v155, v102, v96);
      v103 = v97(v95, 1, v96);
      v104 = v154;
      v105 = v153;
      v106 = v152;
      if (v103 != 1)
      {
        sub_2282C57A4(v95, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (v161)(v155, v95, v96);
      v104 = v154;
      v105 = v153;
      v106 = v152;
    }

    sub_22838F680();
    sub_22838F5A0();
    (*(v105 + 8))(v106, v104);
    v110 = sub_2282C22C8();
    v111 = sub_228391FC0();

    v112 = sub_22838F380();
    v113 = v91;
    v114 = [v110 hm:v111 localizableTimeStringKeyWithPrefix:v112 date:?];

    v165 = sub_228392000();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v116 = qword_280DDCF20;
    v115 = *algn_280DDCF28;
    sub_2282C5C6C(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_228397F40;
    ObjectType = v113;
    v118 = *&v113[qword_27D8272D8];
    v119 = sub_22838F380();
    v120 = [v118 stringFromDate_];

    v121 = sub_228392000();
    v123 = v122;

    *(v117 + 56) = MEMORY[0x277D837D0];
    *(v117 + 64) = sub_22818E210();
    *(v117 + 32) = v121;
    *(v117 + 40) = v123;
    sub_22838F0C0();

    if (*(v117 + 16))
    {
      sub_228391FD0();
    }

    v124 = sub_228391FC0();

    v125 = [objc_opt_self() alertControllerWithTitle:0 message:v124 preferredStyle:0];

    v165 = v125;
    v126 = [v125 popoverPresentationController];
    if (v126)
    {
      v127 = v126;
      [v126 setSourceItem_];
    }

    v159 = v116;
    sub_22838F0C0();
    v128 = sub_228391FC0();

    v161 = objc_opt_self();
    v163 = [v161 actionWithTitle:v128 style:1 handler:0];

    sub_22838F0C0();
    v129 = swift_allocObject();
    v158 = v115;
    v130 = v129;
    v131 = v166;
    v132 = v167;
    v129[2] = sub_2282C5814;
    v129[3] = v131;
    v133 = v145;
    v129[4] = v145;
    v129[5] = v132;

    v134 = sub_228391FC0();

    v172 = sub_2282C581C;
    v173 = v130;
    aBlock = MEMORY[0x277D85DD0];
    v169 = 1107296256;
    v170 = sub_228281980;
    v171 = &block_descriptor_21;
    v135 = _Block_copy(&aBlock);

    v136 = v161;
    v162 = [v161 actionWithTitle:v134 style:0 handler:v135];
    _Block_release(v135);

    sub_22838F0C0();
    v137 = swift_allocObject();
    v137[2] = sub_2282C5814;
    v137[3] = v131;
    v137[4] = v133;
    v137[5] = v132;

    v138 = sub_228391FC0();

    v172 = sub_2282C589C;
    v173 = v137;
    aBlock = MEMORY[0x277D85DD0];
    v169 = 1107296256;
    v170 = sub_228281980;
    v171 = &block_descriptor_12_0;
    v139 = _Block_copy(&aBlock);

    v140 = [v136 actionWithTitle:v138 style:0 handler:v139];
    _Block_release(v139);

    v141 = v165;
    v142 = v163;
    [v165 addAction_];
    [v141 addAction_];
    v143 = v162;
    [v141 addAction_];
    [ObjectType presentViewController:v141 animated:1 completion:0];

    v160(v155, v146);
  }
}

uint64_t sub_2282C4474(uint64_t a1, char a2, char *a3, double a4)
{
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 dismissViewControllerAnimated:1 completion:0];
  v13 = *&a3[qword_27D8272A8];
  v14 = qword_27D829090;
  v15 = *(v13 + qword_27D829090);
  *(v15 + 40) = a4;
  (*(v9 + 16))(v12, a1, v8);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  swift_beginAccess();
  v17 = *(v9 + 40);

  v17(v15 + v16, v12, v8);
  swift_endAccess();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v13 + v14);

    sub_2282D196C(v20, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2282C4630(double a1, uint64_t a2, void (*a3)(char *, uint64_t, double), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_22838F440();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  a3(v13, a6, a1);
  return (*(v10 + 8))(v13, v9);
}

void sub_2282C476C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2282C308C(v4);
}

uint64_t sub_2282C47E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22818E638();
  [v11 setAlpha_];

  v12 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v13 = *(a2 + qword_27D8272A8);
  MEMORY[0x22AAB32D0](a3, 1);
  sub_22838FF00();
  return (*(v7 + 8))(v10, v6);
}

void sub_2282C4938(char a1, void *a2)
{
  if (a1)
  {
    v3 = sub_22818E638();
    [v3 setAlpha_];

    v4 = [objc_opt_self() systemBackgroundColor];
    [a2 setBackgroundColor_];
  }
}

uint64_t sub_2282C49D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_2282C4A24(uint64_t a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_2282C56E0(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  sub_2282C56E0(0, &qword_27D827300, MEMORY[0x277CC9AF8], v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_22838F760();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282C2F3C(1u, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2282C57A4(v11, &qword_27D827300, MEMORY[0x277CC9AF8]);
  }

  (*(v13 + 32))(v16, v11, v12);
  result = [v1 collectionView];
  if (result)
  {
    v18 = result;
    v19 = sub_22838F710();
    v20 = [v18 cellForItemAtIndexPath_];

    if (v20)
    {
      type metadata accessor for MedicationLogDetailsTimeCell();
      if (swift_dynamicCastClass())
      {
        v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        [v21 setDateStyle_];
        [v21 setTimeStyle_];
        v22 = sub_22825AD54();
        v23 = sub_22838F440();
        v24 = *(v23 - 8);
        (*(v24 + 16))(v7, a1, v23);
        (*(v24 + 56))(v7, 0, 1, v23);
        sub_22825B848(v7);
      }

      else
      {
      }
    }

    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2282C4D98(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v7 = v3;
    sub_22818FDE4();
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

char *sub_2282C4E64(char *result, uint64_t a2, char a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_228199A30(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_2282C4F38(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *sub_2282C4F38(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2282C4FF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_22818217C(0, &qword_280DDCD60);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (a3 >= 1)
  {
    result = sub_228180FB0(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return sub_2282C5BE4(a4);
}

char *sub_2282C5114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v50 = a2;
  *&v51 = a7;
  v52 = a4;
  v53 = a6;
  v13 = type metadata accessor for MedicationLogDetailsHeaderItem();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = v9 + qword_27D8272B8;
  *(v9 + qword_27D8272B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + qword_27D8272C0) = &unk_283B66BF0;
  *(v9 + qword_27D8272C8) = &unk_283B66C18;
  *(v9 + qword_27D8272D0) = &unk_283B66BC8;
  *(v9 + qword_27D8272D8) = 0;
  *(v9 + qword_27D8272B0) = a8;

  sub_22838F490();
  v22 = v14[7];

  v23 = &v20[v22];
  *v23 = 0xD00000000000001ALL;
  *(v23 + 1) = 0x80000002283B20E0;
  v24 = &v20[v14[8]];
  *v24 = v50;
  *(v24 + 1) = a3;
  v25 = &v20[v14[9]];
  *v25 = v52;
  *(v25 + 1) = a5;
  v52 = v20;
  sub_2282C567C(v20, v18);
  v26 = type metadata accessor for MedicationLogDetailsDataSource();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v30 = sub_228351A24(v29, v18);

  v31 = qword_27D8272A8;
  *(v9 + qword_27D8272A8) = v30;
  *(v21 + 8) = v51;
  swift_unknownObjectWeakAssign();
  sub_2283901F0();
  sub_228182110();
  v32 = swift_allocObject();
  v51 = xmmword_228397F40;
  *(v32 + 16) = xmmword_228397F40;
  v33 = MEMORY[0x277D10F80];
  *(v32 + 32) = *(v9 + v31);
  *(v32 + 40) = v33;

  sub_228390220();
  v34 = sub_228390480();
  v35 = *&v34[qword_27D8272A8];
  v36 = v35 + qword_27D829098;
  *(v35 + qword_27D829098 + 8) = &off_283B6BBB8;
  swift_unknownObjectWeakAssign();
  sub_2282C56E0(0, &qword_27D8272F0, type metadata accessor for MedicationLogDetailsUnitItem, MEMORY[0x277D84560]);
  v37 = (type metadata accessor for MedicationLogDetailsUnitItem() - 8);
  v38 = *(*v37 + 72);
  v39 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v51;
  v41 = v40 + v39;
  v42 = *(v35 + qword_27D829090);
  swift_unknownObjectWeakLoadStrong();
  *&v51 = *(v36 + 8);
  v43 = v34;

  sub_22838F490();
  v44 = v40 + v39 + v37[8];
  *(v44 + 8) = 0;
  swift_unknownObjectWeakInit();
  v45 = (v40 + v39 + v37[9]);
  type metadata accessor for MedicationLogDetailsUnitCell();
  sub_2282C58D8(&qword_27D8272F8, type metadata accessor for MedicationLogDetailsUnitCell);
  *v45 = sub_22838FBB0();
  v45[1] = v46;
  *(v41 + v37[7]) = v42;
  *(v44 + 8) = v51;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_228195AA4(v40);
  swift_setDeallocating();
  sub_2282C5744(v41, type metadata accessor for MedicationLogDetailsUnitItem);
  swift_deallocClassInstance();
  sub_22838FF60();

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v47 = sub_228391FC0();

  [v43 setTitle_];
  swift_unknownObjectRelease();

  sub_2282C5744(v52, type metadata accessor for MedicationLogDetailsHeaderItem);
  return v43;
}

uint64_t sub_2282C567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsHeaderItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2282C56E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282C5744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282C57A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282C56E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2282C58D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2282C5920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Dosage();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2282C5A68(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2281984E8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2282C5920(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_2282C5B28()
{
  *(v0 + qword_27D8272B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_27D8272C0) = &unk_283B66EE8;
  *(v0 + qword_27D8272C8) = &unk_283B66F10;
  *(v0 + qword_27D8272D0) = &unk_283B66BC8;
  *(v0 + qword_27D8272D8) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282C5BE4(uint64_t a1)
{
  sub_2282C5C6C(0, &qword_27D827310, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D84220]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2282C5C6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22818217C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2282C5CF0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_identifier;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_reuseIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicationsDayHistoryEmptyItem()
{
  result = qword_27D827318;
  if (!qword_27D827318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282C5E08()
{
  result = sub_22838F4A0();
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

uint64_t sub_2282C5EA4()
{
  v1 = *v0;
  sub_228393520();
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText);
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText + 8);
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2282C5EF8()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText);
  v2 = *v1;
  v3 = v1[1];
  return sub_2283920B0();
}

uint64_t sub_2282C5F10()
{
  sub_228393520();
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText);
  v2 = *v1;
  v3 = v1[1];

  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2282C5F78()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_reuseIdentifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2282C5FB8(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText) && v2[1] == *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText + 8))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

unint64_t sub_2282C5FF4()
{
  v1 = *v0;
  sub_2283931D0();

  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0xD000000000000014;
}

uint64_t sub_2282C607C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_2282C6148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationsDayHistoryEmptyItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282C618C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2282C84EC();
  return sub_22819482C(v6);
}

uint64_t sub_2282C61FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282C6254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282C84EC();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282C62C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282C6324;
}

uint64_t sub_2282C6324(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282C84EC();
  }

  return result;
}

id sub_2282C6358()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_2282C63B8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282C63B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v1 = *MEMORY[0x277D76918];
  v2 = sub_228392AD0();
  [v0 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  v4 = *MEMORY[0x277D12788];
  v9 = sub_228392000();
  v10 = v5;
  v6 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B23A0);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setNumberOfLines_];
  [v6 setAdjustsFontForContentSizeCategory_];
  return v6;
}

id sub_2282C659C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v9 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v10;
    v11 = v5;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B23A0);

    MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

    v12 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setNumberOfLines_];
    [v11 setAdjustsFontForContentSizeCategory_];
    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_2282C67C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton);
  }

  else
  {
    v4 = sub_2282C6828(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282C6828(uint64_t a1)
{
  sub_2282C8874(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  v6 = sub_228392DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v12 = *MEMORY[0x277D12788];
  v23[0] = sub_228392000();
  v23[1] = v13;
  v14 = v11;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B23A0);

  MEMORY[0x22AAB5C80](0x747542746964452ELL, 0xEB000000006E6F74);

  v15 = sub_228391FC0();

  [v14 setAccessibilityIdentifier_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v16];
  v17 = v14;
  [v17 addTarget:a1 action:sel_editButtonTapped_ forControlEvents:64];
  [v17 setContentHorizontalAlignment_];

  sub_228392DA0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392DB0();
  v18 = *MEMORY[0x277D75060];
  v19 = *(MEMORY[0x277D75060] + 8);
  v20 = *(MEMORY[0x277D75060] + 16);
  v21 = *(MEMORY[0x277D75060] + 24);
  sub_228392CF0();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_228392E10();
  (*(v7 + 8))(v10, v6);
  return v17;
}

void sub_2282C6BA8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints;
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints) = a1;

  v5 = sub_228210990(v4, v3);

  if (v5)
  {
  }

  else
  {
    v6 = objc_opt_self();
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v7 = sub_228392190();

    [v6 deactivateConstraints_];

    v8 = *(v1 + v2);

    v9 = sub_228392190();

    [v6 activateConstraints_];
  }
}

id sub_2282C6CDC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints] = MEMORY[0x277D84F90];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for InteractionFactorsCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2282C6F24();

  return v10;
}

id sub_2282C6DE0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] = 0;
  v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionFactorsCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_2282C6F24()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 contentView];
  v3 = sub_2282C6358();
  [v2 addSubview_];

  v4 = [v0 contentView];
  v5 = sub_2282C659C();
  [v4 addSubview_];

  v6 = [v0 contentView];
  v7 = sub_2282C67C4();
  [v6 addSubview_];

  sub_2282C7B48(*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout));
  sub_2282C8874(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F30;
  v9 = sub_2283915A0();
  v10 = MEMORY[0x277D74C50];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_228391640();
  v12 = MEMORY[0x277D74DB8];
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_2282C7124()
{
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_228391150();
    v7 = sub_2283911A0();
    v8 = sub_2283925B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      v11 = sub_228393600();
      v13 = sub_2281C96FC(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22816B000, v7, v8, "[%{public}s] traitCollectionDidChange", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAB7B80](v10, -1, -1);
      MEMORY[0x22AAB7B80](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    [v6 invalidateIntrinsicContentSize];
    [v6 setNeedsLayout];
  }
}

uint64_t sub_2282C7318()
{
  v1 = v0;
  sub_2282C8874(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_228391330();
  v10 = type metadata accessor for InteractionFactorsCell();
  v16.receiver = v1;
  v16.super_class = v10;
  objc_msgSendSuper2(&v16, sel__bridgedUpdateConfigurationUsingState_, v9);

  MEMORY[0x22AAB6410]();
  v11 = sub_2283913A0();
  if ((*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    sub_228205274(v8, v6);
    MEMORY[0x22AAB6420](v6);
    return sub_228205308(v8);
  }

  else
  {
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    v13 = objc_opt_self();
    v14 = [v13 systemBackgroundColor];
    v15 = [v13 secondarySystemBackgroundColor];
    sub_228392B80();

    sub_228391370();
    return MEMORY[0x22AAB6420](v8);
  }
}

id sub_2282C75FC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_228393600();
    v13 = sub_2281C96FC(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22816B000, v7, v8, "[%{public}s] layoutSubviews", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = type metadata accessor for InteractionFactorsCell();
  v18.receiver = v1;
  v18.super_class = v14;
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  return sub_2282C7818();
}

id sub_2282C7818()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  CGRectGetWidth(v31);
  v7 = sub_2282C67C4();
  v8 = [v7 titleLabel];

  if (v8)
  {
    sub_228392AF0();
  }

  v9 = sub_2282C6358();
  sub_228392AF0();
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel];
  sub_228392AF0();
  v14 = v13;

  sub_228391150();
  v15 = v1;
  v16 = sub_2283911A0();
  v17 = sub_2283925B0();
  if (os_log_type_enabled(v16, v17))
  {
    v28 = v2;
    v27 = v11 < v14;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136446722;
    v20 = sub_228393600();
    v22 = sub_2281C96FC(v20, v21, &v29);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v27;
    *(v18 + 18) = 1024;
    v23 = v15[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout];

    *(v18 + 20) = v23;
    _os_log_impl(&dword_22816B000, v16, v17, "[%{public}s] shouldUseVerticalLayout: %{BOOL}d, isUsingVerticalLayout: %{BOOL}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);

    result = (*(v3 + 8))(v6, v28);
  }

  else
  {

    result = (*(v3 + 8))(v6, v2);
  }

  if (v11 < v14 != v15[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout])
  {
    sub_2282C7B48(v11 < v14);
    [v15 invalidateIntrinsicContentSize];
    v25 = type metadata accessor for InteractionFactorsCell();
    v30.receiver = v15;
    v30.super_class = v25;
    return objc_msgSendSuper2(&v30, sel_layoutSubviews);
  }

  return result;
}

void sub_2282C7B48(char a1)
{
  if (a1)
  {
    v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 1;
    sub_228180ED0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_228399D50;
    v3 = sub_2282C6358();
    v4 = [v3 leadingAnchor];

    v5 = [v1 contentView];
    v6 = [v5 layoutMarginsGuide];

    v7 = [v6 &selRef_logTimeChanged_ + 1];
    v8 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v8;
    v9 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel;
    v10 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] topAnchor];
    v11 = [v1 contentView];
    v12 = [v11 topAnchor];

    v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
    *(v2 + 40) = v13;
    v14 = [*&v1[v9] trailingAnchor];
    v15 = [v1 contentView];
    v16 = [v15 layoutMarginsGuide];

    v17 = [v16 trailingAnchor];
    v18 = [v14 constraintEqualToAnchor_];

    *(v2 + 48) = v18;
    v19 = sub_2282C659C();
    v20 = [v19 leadingAnchor];

    v21 = [*&v1[v9] leadingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v2 + 56) = v22;
    v23 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel;
    v24 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] topAnchor];
    v25 = [*&v1[v9] bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v2 + 64) = v26;
    v27 = [*&v1[v23] trailingAnchor];
    v28 = [v1 contentView];
    v29 = [v28 layoutMarginsGuide];

    v30 = [v29 trailingAnchor];
    v31 = [v27 constraintEqualToAnchor_];

    *(v2 + 72) = v31;
    v32 = sub_2282C67C4();
    v33 = [v32 leadingAnchor];

    v34 = [v1 contentView];
    v35 = [v34 &selRef_addSubview_ + 1];

    v36 = [v35 leadingAnchor];
    v37 = [v33 constraintEqualToAnchor_];

    *(v2 + 80) = v37;
    v38 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton];
    v39 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] topAnchor];
    v40 = [*&v1[v23] bottomAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v2 + 88) = v41;
    v42 = [*v38 trailingAnchor];
    v43 = [v1 contentView];
    v44 = [v43 layoutMarginsGuide];

    v45 = [v44 trailingAnchor];
    v46 = &off_2785F4000;
    v47 = [v42 constraintEqualToAnchor_];

    *(v2 + 96) = v47;
    v48 = (v2 + 104);
  }

  else
  {
    v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 0;
    sub_228180ED0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2283A25D0;
    v49 = sub_2282C6358();
    v50 = [v49 leadingAnchor];

    v51 = [v1 contentView];
    v52 = [v51 layoutMarginsGuide];

    v53 = [v52 &selRef_logTimeChanged_ + 1];
    v54 = [v50 constraintEqualToAnchor_];

    *(v2 + 32) = v54;
    v55 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel;
    v56 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] topAnchor];
    v57 = [v1 contentView];
    v58 = [v57 topAnchor];

    v59 = [v56 constraintEqualToAnchor:v58 constant:16.0];
    *(v2 + 40) = v59;
    v60 = sub_2282C67C4();
    v61 = [v60 &selRef_logTimeChanged_ + 1];

    v62 = [*&v1[v55] trailingAnchor];
    v63 = [v61 constraintGreaterThanOrEqualToAnchor:v62 constant:16.0];

    *(v2 + 48) = v63;
    v64 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton;
    v65 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] firstBaselineAnchor];
    v66 = [*&v1[v55] firstBaselineAnchor];
    v67 = [v65 constraintEqualToAnchor_];

    *(v2 + 56) = v67;
    v68 = *&v1[v64];
    v46 = &off_2785F4000;
    v69 = [v68 trailingAnchor];
    v70 = [v1 contentView];
    v71 = [v70 trailingAnchor];

    v72 = [v69 &selRef_resignFirstResponder + 6];
    *(v2 + 64) = v72;
    v73 = sub_2282C659C();
    v74 = [v73 leadingAnchor];

    v75 = [*&v1[v55] leadingAnchor];
    v76 = [v74 constraintEqualToAnchor_];

    *(v2 + 72) = v76;
    v38 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel];
    v77 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] topAnchor];
    v78 = [*&v1[v55] bottomAnchor];
    v79 = [v77 constraintEqualToAnchor_];

    *(v2 + 80) = v79;
    v80 = [*v38 trailingAnchor];
    v81 = [*&v1[v55] trailingAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v2 + 88) = v82;
    v48 = (v2 + 96);
  }

  v83 = [*v38 bottomAnchor];
  v84 = [v1 v46[84]];
  v85 = [v84 bottomAnchor];

  v86 = [v83 constraintEqualToAnchor:v85 constant:-16.0];
  *v48 = v86;

  sub_2282C6BA8(v2);
}

uint64_t sub_2282C84EC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v7, v26);
  if (v27)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for InteractionFactorsItem();
    if (swift_dynamicCast())
    {
      v8 = v25;
      v9 = sub_2282C6358();
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      v10 = sub_228391FC0();

      [v9 setText_];

      v11 = sub_2282C659C();
      v12 = *(v8 + 16);

      Array<A>.displayString()(v13);

      v14 = sub_228391FC0();

      [v11 setText_];

      sub_2282C7818();
    }
  }

  else
  {
    sub_22819482C(v26);
  }

  sub_228391150();
  v16 = v1;
  v17 = sub_2283911A0();
  v18 = sub_2283925C0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    sub_22817E6C8(v1 + v7, v26);
    sub_228181D50();
    v21 = sub_228392040();
    v23 = sub_2281C96FC(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_22816B000, v17, v18, "Incorrect view model for InteractionFactorsItem: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAB7B80](v20, -1, -1);
    MEMORY[0x22AAB7B80](v19, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_2282C8874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Array<A>.displayString()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2281C9E44(0, v1, 0);
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 32 + 8 * v3);
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_30;
        }

        v6 = 0xE700000000000000;
        v7 = 0x4C4F484F434C41;
LABEL_12:
        sub_2283931D0();

        MEMORY[0x22AAB5C80](v7, v6);

        MEMORY[0x22AAB5C80](95, 0xE100000000000000);
        if (v3)
        {
          v8 = 0x4445444445424D45;
        }

        else
        {
          v8 = 0x4F4C41444E415453;
        }

        if (v3)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEA0000000000454ELL;
        }

        MEMORY[0x22AAB5C80](v8, v9);

        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        v4 = sub_22838F0C0();
        v5 = v10;

        goto LABEL_21;
      }

      v5 = 0xE000000000000000;
LABEL_21:
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9E44((v11 > 1), v12 + 1, 1);
      }

      ++v3;
      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v4;
      *(v13 + 40) = v5;
      if (v1 == v3)
      {
        v14 = [objc_allocWithZone(MEMORY[0x277CCAAF0]) init];
        sub_2281966EC(v19);

        v15 = sub_228392190();

        v16 = [v14 stringFromItems_];

        if (v16)
        {
          v17 = sub_228392000();

          return v17;
        }

        else
        {

          return 0;
        }
      }
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
      v7 = 0x4F434341424F54;
    }

    else
    {
      if (v4 != 2)
      {
LABEL_30:
        result = sub_228393300();
        __break(1u);
        return result;
      }

      v6 = 0xE900000000000041;
      v7 = 0x4E41554A4952414DLL;
    }

    goto LABEL_12;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  return sub_22838F0C0();
}

void sub_2282C8CC0()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v7, v20);
  if (v21)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for InteractionFactorsItem();
    if (swift_dynamicCast())
    {
      v8 = [v1 viewController];
      if (v8)
      {
        v9 = v8;
        sub_2282BEE90(v8);

        return;
      }
    }
  }

  else
  {
    sub_22819482C(v20);
  }

  sub_228391150();
  v10 = v1;
  v11 = sub_2283911A0();
  v12 = sub_2283925C0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    sub_22817E6C8(v1 + v7, v20);
    sub_228181D50();
    v15 = sub_228392040();
    v17 = sub_2281C96FC(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22816B000, v11, v12, "Incorrect view model for InteractionFactorsItem: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

id InteractionFactorsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282C910C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2282C7124();
}

unint64_t sub_2282C9114()
{
  sub_2283931D0();

  v3 = v0[4];
  v1 = sub_228393420();
  MEMORY[0x22AAB5C80](v1);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v0[2], v0[3]);
  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2282C91E4(uint64_t a1)
{
  v2 = sub_2282CB510(&qword_27D823E78, type metadata accessor for ScheduleIntervalItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_2282C9260()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setAdjustsFontForContentSizeCategory_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = *MEMORY[0x277D76918];
    v8 = *MEMORY[0x277D74420];
    v9 = sub_228392AD0();
    [v5 setFont_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2282C93EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v8 = sub_228392190();
    v9 = [v7 initWithArrangedSubviews_];

    [v9 setAxis_];
    [v9 setAlignment_];
    [v9 setDistribution_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setSpacing_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_2282C950C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView);
  }

  else
  {
    v4 = sub_2282C9570();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282C9570()
{
  sub_228180ED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F20;
  *(v0 + 32) = sub_2282C93CC();
  *(v0 + 40) = sub_2282C93DC();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 addArrangedSubview_];

  return v3;
}

void sub_2282C9838()
{
  v1 = [v0 contentView];
  v2 = sub_2282C9260();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_2282C950C();
  [v3 addSubview_];

  v44 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228399190;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel] topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:12.0];
  *(v5 + 32) = v10;
  v11 = [*&v0[v6] leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 &selRef_logTimeChanged_ + 1];
  v15 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v15;
  v16 = [*&v0[v6] trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 &selRef_addSubview_ + 1];

  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v5 + 48) = v20;
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView;
  v22 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView] topAnchor];
  v23 = [*&v0[v6] bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:12.0];

  *(v5 + 56) = v24;
  v25 = [*&v0[v21] bottomAnchor];
  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-12.0];
  *(v5 + 64) = v28;
  v29 = [*&v0[v21] leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  *(v5 + 72) = v33;
  v34 = [*&v0[v21] trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintEqualToAnchor:v37 constant:8.0];

  *(v5 + 80) = v38;
  v39 = sub_2282C93CC();
  v40 = [v39 trailingAnchor];

  v41 = sub_2282C93DC();
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:-8.0];
  *(v5 + 88) = v43;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v45 = sub_228392190();

  [v44 activateConstraints_];
}

uint64_t sub_2282C9DB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v67 = *(v2 - 8);
  v3 = *(v67 + 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2282CA85C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282CA85C(0, &qword_27D827398, type metadata accessor for ScheduleIntervalItem, v6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v63 - v17;
  v19 = type metadata accessor for ScheduleIntervalItem();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v24], v69);
  if (!v70)
  {
    sub_2282CA90C(v69, &qword_280DDCD50, sub_22817A700);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_8:
    sub_2282CA90C(v18, &qword_27D827398, type metadata accessor for ScheduleIntervalItem);
    sub_228391150();
    v49 = v1;
    v50 = sub_2283911A0();
    v51 = sub_2283925C0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65 = v2;
      v54 = v53;
      v68 = v53;
      *v52 = 136446466;
      v55 = sub_228393600();
      v57 = sub_2281C96FC(v55, v56, &v68);
      v58 = v67;
      v59 = v57;

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      sub_22817E6C8(&v1[v24], v69);
      sub_2282CA85C(0, &qword_280DDCD50, sub_22817A700, MEMORY[0x277D83D88]);
      v60 = sub_228392040();
      v62 = sub_2281C96FC(v60, v61, &v68);

      *(v52 + 14) = v62;
      _os_log_impl(&dword_22816B000, v50, v51, "%{public}s Incorrect view model for %s Expecting ScheduleIntervalItem", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v54, -1, -1);
      MEMORY[0x22AAB7B80](v52, -1, -1);

      return (*(v58 + 1))(v5, v65);
    }

    else
    {

      return (*(v67 + 1))(v5, v2);
    }
  }

  sub_22817A700();
  v25 = swift_dynamicCast();
  (*(v20 + 56))(v18, v25 ^ 1u, 1, v19);
  v26 = *(v20 + 48);
  v64 = v19;
  if (v26(v18, 1, v19) == 1)
  {
    goto LABEL_8;
  }

  v67 = v10;
  sub_2282CA97C(v18, v23);
  v27 = sub_2282C9260();
  v28 = v23[2];
  v29 = v23[3];
  v30 = sub_228391FC0();
  [v27 setText_];

  v31 = sub_2282C93CC();
  sub_228392B10();

  v32 = sub_2282C93DC();
  sub_228392B10();

  ObjectType = v23;
  v33 = v23[5];
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___timesStackView;
    v36 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___dosesStackView;
    v37 = v33 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v38 = *(v65 + 72);
    do
    {
      sub_2282CB134(v37, v14);
      v39 = sub_2282CAEA8(v14);
      v41 = v40;
      sub_2282CB198(v14, type metadata accessor for ScheduleDataSource.DoseItem);
      [*&v1[v35] addArrangedSubview_];
      [*&v1[v36] addArrangedSubview_];

      v37 += v38;
      --v34;
    }

    while (v34);
  }

  v42 = *(v64 + 32);
  v43 = sub_2283913A0();
  v44 = *(v43 - 8);
  v45 = ObjectType;
  v46 = ObjectType + v42;
  v47 = v67;
  (*(v44 + 16))(v67, v46, v43);
  (*(v44 + 56))(v47, 0, 1, v43);
  MEMORY[0x22AAB6420](v47);
  return sub_2282CB198(v45, type metadata accessor for ScheduleIntervalItem);
}

id sub_2282CA4C0(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setAttributedText_];
  if (a2)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_2282CB510(&qword_280DDBAE0, type metadata accessor for UILayoutPriority);
    sub_2283911C0();
    LODWORD(v5) = v7;
  }

  else
  {
    LODWORD(v5) = 1144750080;
  }

  [v4 setContentHuggingPriority:0 forAxis:v5];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setNumberOfLines_];
  [v4 setMaximumContentSizeCategory_];
  return v4;
}

id sub_2282CA600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleIntervalCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282CA6E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282CA73C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282C9DB4();
  return sub_2282CA90C(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2282CA7C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282CA828;
}

uint64_t sub_2282CA828(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282C9DB4();
  }

  return result;
}

void sub_2282CA85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ScheduleIntervalItem()
{
  result = qword_27D8273D0;
  if (!qword_27D8273D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282CA90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282CA85C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282CA97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleIntervalItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2282CA9E0()
{
  v28 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v0 = *MEMORY[0x277D76918];
  v27 = sub_228392AD0();
  v26 = [v27 fontDescriptor];
  sub_2282CB1F8(0, &qword_27D8273A0, &qword_27D8242B8, type metadata accessor for AttributeName);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F40;
  v2 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  sub_2282CA85C(0, &qword_27D8273A8, sub_2282CB254, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228397F40;
  sub_2282CB1F8(0, &qword_27D8273B8, &qword_27D8273C0, type metadata accessor for FeatureKey);
  v4 = swift_initStackObject();
  v5 = MEMORY[0x277D76908];
  *(v4 + 16) = xmmword_228397F30;
  v6 = *v5;
  *(v4 + 32) = *v5;
  v7 = *MEMORY[0x277D76900];
  *(v4 + 40) = 6;
  *(v4 + 48) = v7;
  *(v4 + 56) = 0;
  v8 = v2;
  v9 = v6;
  v10 = v7;
  v11 = sub_2281A8CA8(v4);
  swift_setDeallocating();
  sub_2282CB358(0, &qword_27D8273C0, type metadata accessor for FeatureKey);
  swift_arrayDestroy();
  *(v3 + 32) = v11;
  sub_2282CA85C(0, &qword_27D8273C8, sub_2282CB254, MEMORY[0x277D83940]);
  *(inited + 64) = v12;
  *(inited + 40) = v3;
  sub_2281A8D88(inited);
  swift_setDeallocating();
  sub_2282CB2F0(inited + 32, &qword_27D8242B8, type metadata accessor for AttributeName);
  type metadata accessor for AttributeName(0);
  sub_2282CB510(&qword_27D8236C8, type metadata accessor for AttributeName);
  v13 = sub_228391F10();

  v14 = [v26 fontDescriptorByAddingAttributes_];

  [v27 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  sub_2282CB1F8(0, &qword_280DDB880, &qword_280DDBA20, type metadata accessor for Key);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_228397F40;
  v18 = *MEMORY[0x277D740A8];
  *(v17 + 32) = *MEMORY[0x277D740A8];
  *(v17 + 64) = v28;
  *(v17 + 40) = v16;
  v19 = v18;
  v20 = v16;
  sub_2281A859C(v17);
  swift_setDeallocating();
  sub_2282CB2F0(v17 + 32, &qword_280DDBA20, type metadata accessor for Key);
  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_228391FC0();
  type metadata accessor for Key(0);
  sub_2282CB510(&qword_280DDBA40, type metadata accessor for Key);
  v23 = sub_228391F10();

  v24 = [v21 initWithString:v22 attributes:v23];

  return v24;
}

id sub_2282CAEA8(uint64_t a1)
{
  v2 = sub_22838F250();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F270();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F260();
  sub_22838F240();
  sub_22838F400();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = *MEMORY[0x277D74420];
  v13 = sub_2282CA9E0();

  v14 = (a1 + *(type metadata accessor for ScheduleDataSource.DoseItem(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = *MEMORY[0x277D74418];
  v18 = sub_2282CA9E0();
  v19 = sub_2282CA4C0(v13, 1);
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 setAttributedText_];
  v21 = v20;
  LODWORD(v22) = 1144750080;
  [v21 setContentHuggingPriority:0 forAxis:v22];
  [v21 setAdjustsFontForContentSizeCategory_];
  [v21 setNumberOfLines_];
  [v21 setMaximumContentSizeCategory_];

  return v19;
}

uint64_t sub_2282CB134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282CB198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2282CB1F8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2282CB358(255, a3, a4);
    v5 = sub_228393430();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2282CB254()
{
  if (!qword_27D8273B0)
  {
    type metadata accessor for FeatureKey(255);
    sub_2282CB510(&qword_27D8236B8, type metadata accessor for FeatureKey);
    v0 = sub_228391F40();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8273B0);
    }
  }
}

uint64_t sub_2282CB2F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2282CB358(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2282CB358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2282CB3EC()
{
  type metadata accessor for HKMedicationScheduleType(319);
  if (v0 <= 0x3F)
  {
    sub_2282CA85C(319, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2283913A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2282CB510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2282CB58C(uint64_t a1)
{
  v2 = sub_2282CC240();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282CB5D8()
{
  swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v6, v16);
  if (v16[3])
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      sub_2282CB948(v15[0], v15[1], v15[2], v15[3]);
    }
  }

  else
  {
    sub_22819482C(v16);
  }

  sub_228391150();
  v8 = sub_2283911A0();
  v9 = sub_2283925C0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    v12 = sub_228393600();
    v14 = sub_2281C96FC(v12, v13, v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22816B000, v8, v9, "[%s]: Unexpected view model.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_2282CB948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary];
  v7 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary];
  v8 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary + 8];
  v9 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary + 16];
  v10 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary + 24];
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;

  sub_228267618(v7, v8);
  v11 = *v6;
  v12 = v6[1];
  v20 = *v6;
  v21 = v12;
  v22 = v6[2];
  v23 = v6[3];
  sub_2282CC2DC();
  objc_allocWithZone(v13);
  sub_228267888(v11, v12);
  v14 = sub_228391C30();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    v18 = [v5 contentView];
    [v18 addSubview_];

    v19 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView];
    *&v5[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView] = v16;
  }

  sub_2282CBAB8();
}

void sub_2282CBAB8()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = objc_opt_self();
    sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22839CC40;
    v6 = [v2 separatorLayoutGuide];
    v7 = [v6 leadingAnchor];

    v8 = [v2 contentView];
    v9 = [v8 leadingAnchor];

    v10 = [v7 constraintEqualToAnchor_];
    *(v5 + 32) = v10;
    v11 = [v3 leadingAnchor];
    v12 = [v2 contentView];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
    *(v5 + 40) = v14;
    v15 = [v3 trailingAnchor];
    v16 = [v2 contentView];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:-8.0];
    *(v5 + 48) = v18;
    v19 = [v3 topAnchor];
    v20 = [v2 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:12.0];
    *(v5 + 56) = v22;
    v23 = [v3 bottomAnchor];
    v24 = [v2 contentView];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintEqualToAnchor:v25 constant:-12.0];
    *(v5 + 64) = v26;
    sub_2281BF1B8();
    v27 = sub_228392190();

    [v4 activateConstraints_];
  }
}

id sub_2282CBE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282CBF38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282CBF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282CB5D8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282CBFFC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282CC454;
}

uint64_t sub_2282CC060@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2282CC0BC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2282CB5D8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282CC12C(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2282CC194;
}

uint64_t sub_2282CC198(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282CB5D8();
  }

  return result;
}

uint64_t sub_2282CC1CC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22838FE40();
}

unint64_t sub_2282CC240()
{
  result = qword_27D827400;
  if (!qword_27D827400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827400);
  }

  return result;
}

unint64_t sub_2282CC294()
{
  result = qword_27D827408;
  if (!qword_27D827408)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D827408);
  }

  return result;
}

void sub_2282CC2DC()
{
  if (!qword_27D827410)
  {
    sub_2281E00EC(255, &qword_27D827418, &type metadata for MedicationSummaryView, MEMORY[0x277D83D88]);
    sub_2282CC364();
    v0 = sub_228391C40();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827410);
    }
  }
}

unint64_t sub_2282CC364()
{
  result = qword_27D827420;
  if (!qword_27D827420)
  {
    sub_2281E00EC(255, &qword_27D827418, &type metadata for MedicationSummaryView, MEMORY[0x277D83D88]);
    sub_2282CC400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827420);
  }

  return result;
}

unint64_t sub_2282CC400()
{
  result = qword_27D827428;
  if (!qword_27D827428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827428);
  }

  return result;
}

uint64_t CycleData.localizedDescription.getter()
{
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = CycleData.calculateTotalActiveDays()();
  v7 = *v0;
  v8 = [*v0 scheduleType];
  if (v8 == 7)
  {
    v9 = 1;
  }

  else
  {
    if (v8 != 8)
    {
      goto LABEL_19;
    }

    v9 = 0;
    active /= 7;
  }

  v10 = CycleData.calculateTotalPauseDays()();
  v11 = [v7 scheduleType];
  if (v11 != 7)
  {
    if (v11 == 8)
    {
      if ((v9 & 1) == 0)
      {
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
        sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_228397F30;
        v21 = MEMORY[0x277D83B88];
        v22 = MEMORY[0x277D83C10];
        *(v20 + 56) = MEMORY[0x277D83B88];
        *(v20 + 64) = v22;
        *(v20 + 32) = active;
        *(v20 + 96) = v21;
        *(v20 + 104) = v22;
        *(v20 + 72) = v10 / 7;
        v15 = sub_228391FD0();

        goto LABEL_18;
      }

      goto LABEL_12;
    }

LABEL_19:
    result = sub_228393300();
    __break(1u);
    return result;
  }

  if (v9)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_228397F30;
    v13 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = MEMORY[0x277D83B88];
    *(v12 + 64) = v14;
    *(v12 + 32) = active;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v10;
    v15 = sub_228391FD0();

LABEL_18:

    return v15;
  }

LABEL_12:
  sub_228391150();
  v16 = sub_2283911A0();
  v17 = sub_2283925C0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22816B000, v16, v17, "Attempted to display mismatched units for localizeDescription of CycleData", v18, 2u);
    MEMORY[0x22AAB7B80](v18, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

uint64_t CycleData.localizedNextPhaseDateChangeDescription.getter()
{
  sub_2282CE218(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14[-v2 - 8];
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  CycleData.nextCycleChangeDate.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2281982F0(v3);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  CycleData.currentPhase.getter(v14);
  if (v16 == 255)
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  if (!v15)
  {
    if (v16)
    {
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_280DDCF18 == -1)
    {
LABEL_16:
      v12 = sub_22838F0C0();
      goto LABEL_17;
    }

    swift_once();
    goto LABEL_16;
  }

  if (v16)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_14:
  sub_22838F0C0();
  sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F40;
  v11 = Date.formattedWithYearIfDifferent()();
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_22818E210();
  *(v10 + 32) = v11;
  v12 = sub_228391FD0();

LABEL_17:
  (*(v5 + 8))(v8, v4);
  return v12;
}

void CycleData.currentPhase.getter(uint64_t a1@<X8>)
{
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F430();
  v8 = *v1;
  v9 = sub_22838F380();
  v10 = v1 + *(type metadata accessor for CycleData() + 24);
  v11 = sub_22838F610();
  v12 = [v8 dayInCycleFor:v9 calendar:v11];

  if (!v12)
  {
    (*(v4 + 8))(v7, v3);
    *a1 = 0;
    *(a1 + 8) = 0;
    v17 = -1;
    goto LABEL_8;
  }

  v13 = [v12 daysIntoCycle];
  if ([v12 isInPauseInterval])
  {
    v14 = CycleData.calculateTotalPauseDays()();

    v15 = __OFSUB__(v13, v14);
    v16 = &v13[-v14];
    if (!v15)
    {
      if ((v16 & 0x8000000000000000) == 0 || (v15 = __OFSUB__(0, v16), v16 = -v16, !v15))
      {
        (*(v4 + 8))(v7, v3);
        *a1 = v13;
        *(a1 + 8) = v16;
        v17 = 1;
LABEL_8:
        *(a1 + 16) = v17;
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  active = CycleData.calculateTotalActiveDays()();

  v15 = __OFSUB__(v13, active);
  v19 = &v13[-active];
  if (v15)
  {
    goto LABEL_15;
  }

  if (v19 < 0)
  {
    v15 = __OFSUB__(0, v19);
    v19 = -v19;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  (*(v4 + 8))(v7, v3);
  *a1 = v13;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
}

uint64_t CycleData.nextCycleChangeDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22838F440();
  v13 = *(v2 - 8);
  v3 = v13[8];
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7 - 8];
  CycleData.currentPhase.getter(v14);
  if (v16 == 255)
  {
    v12 = v13[7];

    return v12(a1, 1, 1, v2);
  }

  else
  {
    v9 = v15;
    sub_22838F430();
    sub_22838F3C0();
    v10 = v13[1];
    result = v10(v6, v2);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22838F350();
      v10(v8, v2);
      return (v13[7])(a1, 0, 1, v2);
    }
  }

  return result;
}

uint64_t CycleData.localizeCurrentPhaseDescription.getter()
{
  CycleData.currentPhase.getter(&v12);
  if (v14 == 255)
  {
    return 0;
  }

  v1 = v13;
  if (!v13)
  {
    if (v14)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    swift_once();
    return sub_22838F0C0();
  }

  if (v14)
  {
    return CycleData.localizedNextPhaseDateChangeDescription.getter();
  }

  v3 = *v0;
  if ([*v0 scheduleType] == 7)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_228397F30;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v1;
    v7 = CycleData.calculateTotalPauseDays()();
    v8 = [v3 scheduleType];
    if (v8 == 7)
    {
      goto LABEL_23;
    }

    if (v8 == 8)
    {
      v7 = 7 * (v7 / 7);
LABEL_23:
      *(v4 + 96) = v5;
      *(v4 + 104) = v6;
      *(v4 + 72) = v7;
      v10 = sub_228391FD0();

      return v10;
    }
  }

  else if ([v3 scheduleType] == 8)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_228397F30;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v1;
    v7 = CycleData.calculateTotalPauseDays()();
    v9 = [v3 scheduleType];
    if (v9 == 7)
    {
      goto LABEL_23;
    }

    if (v9 == 8)
    {
      v7 /= 7;
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_2283931D0();
    MEMORY[0x22AAB5C80](0xD000000000000059, 0x80000002283B2700);
    [v3 scheduleType];
    v11 = sub_228393420();
    MEMORY[0x22AAB5C80](v11);
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

void *sub_2282CD5E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB6D80](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2282CD6F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = v9;

    v10 = a1(v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2282CD7B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Dosage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_2282112C8(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_22821132C(v11);
      }

      if (v15)
      {
        break;
      }

      sub_22821132C(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_2282CEAC4(v11, v19, type metadata accessor for Dosage);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_2282CD948@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CycleData();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 scheduleType] - 7 > 1)
  {
    sub_228391150();
    v22 = sub_2283911A0();
    v23 = sub_2283925C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = a2;
      v25 = a3;
      v26 = v24;
      *v24 = 0;
      v27 = v26;
      a3 = v25;
      a2 = v31;
      MEMORY[0x22AAB7B80](v27, -1, -1);
    }

    v28 = sub_22838F6C0();
    (*(*(v28 - 8) + 8))(a2, v28);
    (*(v7 + 8))(v10, v6);
    v21 = 1;
  }

  else
  {
    *v15 = a1;
    v16 = *(v11 + 24);
    v17 = sub_22838F6C0();
    v18 = *(v17 - 8);
    (*(v18 + 16))(&v15[v16], a2, v17);
    v19 = a1;
    *(v15 + 1) = _s19HealthMedicationsUI9CycleDataV22calculateTakeIntervals8scheduleSaySo028HKMedicationScheduleIntervalE0CGSo0jK0C_tFZ_0(v19);
    IntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0 = _s19HealthMedicationsUI9CycleDataV26calculateLastIntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0(v19);

    (*(v18 + 8))(a2, v17);
    *&v15[*(v11 + 28)] = IntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0;
    sub_2282CEAC4(v15, a3, type metadata accessor for CycleData);
    v21 = 0;
  }

  return (*(v12 + 56))(a3, v21, 1, v11);
}

Swift::Int __swiftcall CycleData.calculateTotalActiveDays()()
{
  result = type metadata accessor for CycleData();
  v2 = *(v0 + *(result + 28));
  if (v2 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v3 = 0;
    if (v2)
    {
      v4 = 0;
      v17 = *(v0 + *(result + 28));
      v18 = *v0;
      do
      {
        v5 = [v18 timeIntervals];
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        v6 = sub_2283921A0();

        if (v6 >> 62)
        {
          result = sub_2283930D0();
          v7 = result;
          if (!result)
          {
LABEL_20:

            v15 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v7)
          {
            goto LABEL_20;
          }
        }

        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x22AAB6D80](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            result = *(v6 + 8 * v8 + 32);
          }

          v9 = result;
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = [result cycleIndex];
          if (v11)
          {
            v12 = v11;
            v13 = [v11 integerValue];

            if (v13 == v4)
            {
              break;
            }
          }

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_20;
          }
        }

        v14 = [v9 cycleIntervalDays];

        if (v14)
        {
          v15 = [v14 integerValue];
        }

        else
        {
          v15 = 0;
        }

LABEL_21:
        v16 = __OFADD__(v3, v15);
        v3 += v15;
        if (v16)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        ++v4;
      }

      while (v4 != v17);
    }

    return v3;
  }

  return result;
}

Swift::Int __swiftcall CycleData.calculateTotalPauseDays()()
{
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = [*v0 timeIntervals];
  sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v8 = sub_2283921A0();

  if (v8 >> 62)
  {
    v9 = sub_2283930D0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = [v6 timeIntervals];
    v6 = sub_2283921A0();

    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v6 + 8 * v11 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return result;
    }
  }

  v14 = MEMORY[0x22AAB6D80](v11, v6);
LABEL_8:
  v15 = v14;

  v16 = [v15 cycleIntervalDays];

  if (v16)
  {
    v17 = [v16 integerValue];

    return v17;
  }

  else
  {
    sub_228391150();
    v18 = sub_2283911A0();
    v19 = sub_2283925C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22816B000, v18, v19, "Failed to get the cycle Interval days for the last time interval on the schedule during CycleData calculation.", v20, 2u);
      MEMORY[0x22AAB7B80](v20, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

id sub_2282CE140@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1();
  result = [*v2 scheduleType];
  if (result == 7)
  {
    v6 = 1;
LABEL_5:
    *a2 = v4;
    *(a2 + 8) = v6;
    return result;
  }

  if (result == 8)
  {
    v6 = 0;
    v4 /= 7;
    goto LABEL_5;
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

void sub_2282CE218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CycleData()
{
  result = qword_27D827430;
  if (!qword_27D827430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _s19HealthMedicationsUI9CycleDataV22calculateTakeIntervals8scheduleSaySo028HKMedicationScheduleIntervalE0CGSo0jK0C_tFZ_0(void *a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - v8;
  v9 = [a1 scheduleType];
  v10 = [a1 timeIntervals];
  sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v11 = sub_2283921A0();

  v12 = v11 >> 62;
  if (v9 == 7)
  {
    v35 = v3;
    v36 = v2;
    if (v12)
    {
      goto LABEL_25;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
    {
      v14 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAB6D80](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 dose];
        if (!v18 || (v19 = v18, v20 = [v18 integerValue], v19, v20))
        {

          sub_228180ED0();
          result = swift_allocObject();
          *(result + 16) = xmmword_228396260;
          *(result + 32) = v16;
          return result;
        }

        ++v14;
        if (v17 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v28 = v37;
    sub_228391150();
    v29 = sub_2283911A0();
    v30 = sub_2283925C0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      MEMORY[0x22AAB7B80](v31, -1, -1);
    }

    (*(v35 + 8))(v28, v36);
    return MEMORY[0x277D84F90];
  }

  if (v12)
  {
    v21 = sub_2283930D0();
    if (v21)
    {
LABEL_16:
      v22 = __OFSUB__(v21, 1);
      result = v21 - 1;
      if (v22)
      {
        __break(1u);
      }

      else if ((v11 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v24 = *(v11 + 8 * result + 32);
LABEL_21:
          v25 = v24;

          v26 = [a1 timeIntervals];
          sub_2283921A0();

          v38 = v25;
          sub_2282CEB2C();
          v27 = sub_2283921C0();

          return v27;
        }

        __break(1u);
        return result;
      }

      v24 = MEMORY[0x22AAB6D80](result, v11);
      goto LABEL_21;
    }
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_16;
    }
  }

  sub_228391150();
  v32 = sub_2283911A0();
  v33 = sub_2283925C0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    MEMORY[0x22AAB7B80](v34, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return MEMORY[0x277D84F90];
}

unint64_t _s19HealthMedicationsUI9CycleDataV26calculateLastIntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0(void *a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 timeIntervals];
  sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v8 = sub_2283921A0();

  if (v8 >> 62)
  {
    v9 = sub_2283930D0();
    if (v9)
    {
LABEL_3:
      v10 = __OFSUB__(v9, 1);
      result = v9 - 1;
      if (v10)
      {
        __break(1u);
      }

      else if ((v8 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v8 + 8 * result + 32);
          goto LABEL_8;
        }

        __break(1u);
        return result;
      }

      v12 = MEMORY[0x22AAB6D80](result, v8);
LABEL_8:
      v13 = v12;

      v14 = [v13 cycleIndex];

      if (v14)
      {
        v15 = [v14 integerValue];

        return v15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }
  }

LABEL_12:
  sub_228391150();
  v16 = sub_2283911A0();
  v17 = sub_2283925C0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    MEMORY[0x22AAB7B80](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

void sub_2282CE9A8()
{
  sub_22817A958(319, &unk_280DDBA68, 0x277D11570);
  if (v0 <= 0x3F)
  {
    sub_2282CEA5C();
    if (v1 <= 0x3F)
    {
      sub_22838F6C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2282CEA5C()
{
  if (!qword_27D8249F0)
  {
    sub_22817A958(255, &qword_280DDB9C8, 0x277D11580);
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8249F0);
    }
  }
}

uint64_t sub_2282CEAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2282CEB2C()
{
  result = qword_27D827440;
  if (!qword_27D827440)
  {
    sub_22817A958(255, &qword_280DDB9C8, 0x277D11580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827440);
  }

  return result;
}

void sub_2282CEB94(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2281C9E44(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_228393070();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_228393040();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v38;
        v10 = v40;
        v35 = v39;
        v11 = v1;
        v12 = [*(sub_2282D9174(v38 v39];
        v13 = [v12 stringValue];

        v14 = sub_228392000();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2281C9E44((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_228393090())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_2282D9D2C(0, &qword_27D827460, MEMORY[0x277D83B18]);
          v7 = sub_2283924A0();
          sub_228393130();
          v7(v37, 0);
          if (v6 == v33)
          {
LABEL_32:
            sub_228205ADC(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v21 = 1 << *(v11 + 32);
          if (v9 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v9 >> 6;
          v23 = *(v32 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_228205ADC(v9, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_228205ADC(v9, v35, 0);
          }

LABEL_31:
          v30 = *(v11 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          v2 = v33;
          if (v6 == v33)
          {
            goto LABEL_32;
          }
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
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(unint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v10 = v8;
  v167 = a4;
  v168 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v18 = *(*(v168 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v168);
  v170 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v169 = &v162 - v21;
  v176 = sub_22838F440();
  v174 = *(v176 - 8);
  v22 = *(v174 + 64);
  v23 = MEMORY[0x28223BE20](v176);
  v166 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v23);
  v175 = &v162 - v26;
  *(v10 + qword_280DDC818) = MEMORY[0x277D84FA0];
  v27 = v10 + qword_280DDC7E8;
  *v27 = vdupq_n_s64(0x4040000000000000uLL);
  *(v27 + 16) = xmmword_2283A2960;
  *(v10 + qword_280DDC800) = 0x4049000000000000;
  v28 = &unk_280DDC000;
  v171 = qword_280DDC838;
  *(v10 + qword_280DDC838) = 0;
  v178 = qword_280DDC848;
  *(v10 + qword_280DDC848) = 0;
  v29 = qword_280DDC7F0;
  *(v10 + qword_280DDC7F0) = 0;
  v30 = qword_280DDC810;
  *(v10 + qword_280DDC810) = 0;
  *(v10 + qword_280DDF418) = 0;
  *(v10 + qword_280DDC7E0) = 0;
  *(v10 + qword_280DDC820) = 0;
  *(v10 + qword_280DDC828) = 0;
  *(v10 + qword_27D827448) = 0;
  v177 = a1;
  *(v10 + qword_280DDC840) = a1;
  v173 = a2;
  *(v10 + qword_280DDC830) = a2;
  if (a6)
  {
    __break(1u);
    goto LABEL_98;
  }

  v164 = v30;
  v165 = v29;
  *(v10 + qword_280DDF420) = a5;
  if (a8)
  {
LABEL_98:
    __break(1u);
    return result;
  }

  *(v10 + qword_280DDF410) = a7;
  v31 = sub_228390BF0();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v173;

  v35 = v177;

  *(v10 + qword_280DDC7F8) = sub_228390BE0();
  *(v10 + qword_280DDC808) = a3;
  v172 = a3;
  v36 = v175;
  sub_22838F430();
  if (!v35)
  {
    goto LABEL_11;
  }

  v37 = *(v177 + 16);
  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v34)
    {
      v42 = *(v34 + 16);
      if (v42 >> 62)
      {
        if (v42 < 0)
        {
          v121 = *(v34 + 16);
        }

        if (sub_2283930D0())
        {
          goto LABEL_14;
        }
      }

      else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v9 = 0;
    v38 = v174;
    goto LABEL_53;
  }

  if (v37 < 0)
  {
    v41 = *(v177 + 16);
  }

  if (!sub_2283930D0())
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!v34)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
LABEL_21:
    v62 = v177;

    v63 = *(v62 + 16);
    v64 = type metadata accessor for MedicationsLogDataSource();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();

    v68 = sub_228321434(v67, v39, v40, 0, 0);
    v69 = v178;
    swift_beginAccess();
    v70 = *(v69 + v10);
    *(v69 + v10) = v68;

    v71 = *(v62 + 16);
    if (v71 >> 62)
    {
      if (v71 < 0)
      {
        v120 = *(v62 + 16);
      }

      v72 = sub_2283930D0();
    }

    else
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v176;
    v74 = v174;
    (*(v174 + 8))(v36, v176);
    v75 = __OFADD__(v38, v72);
    v38 += v72;
    if (v75)
    {
      __break(1u);
      goto LABEL_48;
    }

    v60 = *(v177 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
    v59 = *(v177 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title + 8);
    (*(v74 + 16))(v36, v177 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v73);

    goto LABEL_30;
  }

LABEL_14:
  v43 = *(v34 + 16);
  if (v43 >> 62)
  {
    if (v43 < 0)
    {
      v76 = *(v34 + 16);
    }

    if (sub_2283930D0())
    {
LABEL_16:
      v44 = *(v34 + 16);
      v45 = qword_280DDCF18;

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = sub_22838F0C0();
      v48 = v47;
      v49 = type metadata accessor for MedicationsLogDataSource();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = sub_228321434(v44, v46, v48, 0, 0);
      v53 = *(v10 + v171);
      *(v10 + v171) = v52;

      v163 = sub_22838F0C0();
      v40 = v54;
      v55 = *(v34 + 16);
      if (v55 >> 62)
      {
        if (v55 < 0)
        {
          v161 = *(v34 + 16);
        }

        v56 = sub_2283930D0();
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = v174;
      v36 = v175;
      v58 = v176;
      (*(v174 + 8))(v175, v176);
      v60 = *(v173 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
      v59 = *(v173 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title + 8);
      v61 = *(v57 + 16);
      v9 = v57 + 16;
      v61(v36, v173 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v58);

      v38 = v56;
      v39 = v163;
      if (v177)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }
  }

  else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v60 = 0;
  v59 = 0xE000000000000000;
  if (v177)
  {
    goto LABEL_21;
  }

LABEL_29:

  v73 = v176;
LABEL_30:
  if ((v167 & 1) == 0)
  {
    v94 = v36;
    v95 = v174;
    v96 = *(v174 + 16);
    v97 = v166;
    v96(v166, v94, v176);
    v98 = type metadata accessor for MedicationsDoseLogHeaderDataSource(0);
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    v169 = swift_allocObject();
    v101 = v168;
    v102 = v170;
    v96((v170 + *(v168 + 28)), v97, v176);
    sub_22838F490();
    v103 = (v102 + v101[5]);
    *v103 = 0xD00000000000001BLL;
    v103[1] = 0x80000002283B2800;
    v104 = (v102 + v101[6]);
    *v104 = v60;
    v104[1] = v59;
    v105 = v101[8];
    v106 = v97;
    v9 = v38;
    *(v102 + v105) = v38;
    v38 = v95;
    sub_2281AEB50(v102, v169 + qword_27D828A40);
    sub_2282D9B08(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v107 = *(sub_22838FEF0() - 8);
    v108 = *(v107 + 72);
    v109 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    v110 = MEMORY[0x277D84F90];
    sub_22838FEB0();
    v90 = sub_228390380();
    (*(v95 + 8))(v106, v176);
    v69 = sub_228198C84(0, 1, 1, v110);
    v93 = v69[2];
    v111 = v69[3];
    v62 = v93 + 1;
    if (v93 >= v111 >> 1)
    {
      v69 = sub_228198C84((v111 > 1), v93 + 1, 1, v69);
    }

    v36 = v175;
    goto LABEL_36;
  }

  v77 = v168;
  v78 = v169;
  (*(v174 + 16))(v169 + *(v168 + 28), v36, v73);
  sub_22838F490();
  v79 = (v78 + v77[5]);
  *v79 = 0xD00000000000001BLL;
  v79[1] = 0x80000002283B2800;
  v80 = (v78 + v77[6]);
  *v80 = v60;
  v80[1] = v59;
  *(v78 + v77[8]) = v38;
  v81 = type metadata accessor for MedicationDoseRecordAllViewModel(0);
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  v84 = swift_allocObject();
  *(v84 + 16) = 1;
  sub_22838F430();
  v85 = *(v10 + v164);
  *(v10 + v164) = v84;

  v86 = v170;
  sub_2281AEC14(v78, v170);
  v87 = type metadata accessor for MedicationsRecordAllDataSource(0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  v90 = sub_2282C1850(v84, v86, 0, 0);

  v91 = *(v10 + v165);
  *(v10 + v165) = v90;

  v69 = sub_228198C84(0, 1, 1, MEMORY[0x277D84F90]);
  v93 = v69[2];
  v92 = v69[3];
  v62 = v93 + 1;
  v9 = v38;
  if (v93 >= v92 >> 1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    sub_2282D9960(v169, type metadata accessor for MedicationsDoseLogHeaderItem);
    v38 = v174;
LABEL_36:
    v69[2] = v62;
    v112 = &v69[2 * v93];
    v73 = MEMORY[0x277D10F80];
    v112[4] = v90;
    v112[5] = v73;
    v72 = *(v10 + v171);
    if (v72)
    {
      v74 = v69[3];
      v39 = v62 + 1;
      v113 = *(v10 + v171);

      if (v62 >= v74 >> 1)
      {
LABEL_48:
        v69 = sub_228198C84((v74 > 1), v39, 1, v69);
      }

      v69[2] = v39;
      v114 = &v69[2 * v62];
      v114[4] = v72;
      v114[5] = v73;
    }

    v115 = v178;
    swift_beginAccess();
    v116 = *(v10 + v115);
    if (v116)
    {
      v117 = v69[2];
      v118 = v69[3];

      if (v117 >= v118 >> 1)
      {
        v69 = sub_228198C84((v118 > 1), v117 + 1, 1, v69);
      }

      v69[2] = v117 + 1;
      v119 = &v69[2 * v117];
      v119[4] = v116;
      v119[5] = v73;
    }

    v28 = &unk_280DDC000;
LABEL_53:
    (*(v38 + 16))(v10 + qword_27D827450, v36, v176);
    *(v10 + qword_280DDC7D8) = v9;
    v122 = sub_2283901F0();
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    swift_allocObject();
    sub_228390210();
    v62 = sub_228390480();
    v125 = *(v62 + qword_280DDC7F0);
    if (v125)
    {
      *(v125 + qword_280DDF3C8 + 8) = &off_283B6BE98;
      swift_unknownObjectWeakAssign();

      v126 = v62;
      sub_2282C0DF8();
    }

    v127 = *(v62 + v28[263]);
    v9 = &unk_280DDC000;
    if (v127)
    {
      v10 = v127 + qword_280DDCCF8;
      *(v127 + qword_280DDCCF8 + 8) = &off_283B6BE98;
      swift_unknownObjectWeakAssign();
      v128 = *(v127 + qword_280DDCCF0);
      if (v128 >> 62)
      {
        if (v128 < 0)
        {
          v141 = *(v127 + qword_280DDCCF0);
        }

        v142 = *(v127 + qword_280DDCCF0);
        v143 = sub_2283930D0();
        v128 = v142;
        v36 = v143;
        if (v143)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v36 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
LABEL_58:
          v183[0] = MEMORY[0x277D84F90];
          v129 = v127;
          v90 = v36 & ~(v36 >> 63);
          v93 = v128;
          v130 = v62;
          v170 = v129;

          v69 = v183;
          sub_2281CA04C(0, v90, 0);
          if (v36 < 0)
          {
            __break(1u);
            goto LABEL_92;
          }

          v178 = v36;
          v171 = v62;
          v131 = v183[0];
          type metadata accessor for MedicationDoseLogMedicationCell();
          v132 = 0;
          v133 = v93;
          v134 = v93 & 0xC000000000000001;
          v135 = v93;
          do
          {
            if (v134)
            {
              v136 = MEMORY[0x22AAB6D80](v132, v133);
            }

            else
            {
              v136 = *(v133 + 8 * v132 + 32);
            }

            swift_unknownObjectWeakLoadStrong();
            v137 = *(v10 + 8);
            sub_2282D98CC(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell);
            v179 = sub_22838FBB0();
            v180 = v138;
            v182 = 0;
            swift_unknownObjectWeakInit();
            v181 = v136;
            v182 = v137;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            v183[0] = v131;
            v140 = *(v131 + 16);
            v139 = *(v131 + 24);
            if (v140 >= v139 >> 1)
            {
              sub_2281CA04C((v139 > 1), v140 + 1, 1);
              v131 = v183[0];
            }

            ++v132;
            *(v131 + 16) = v140 + 1;
            sub_2281D3334(&v179, v131 + 40 * v140 + 32);
            v133 = v135;
          }

          while (v178 != v132);

          v38 = v174;
          v9 = 0x280DDC000;
          v62 = v171;
          goto LABEL_71;
        }
      }

      v144 = v62;

      v131 = MEMORY[0x277D84F90];
LABEL_71:
      sub_22819578C(v131);

      sub_22838FF60();

      v36 = v175;
    }

    v145 = *(v9 + 2120);
    swift_beginAccess();
    v146 = *(v62 + v145);
    if (!v146)
    {
      (*(v38 + 8))(v36, v176);
      swift_endAccess();

      return v62;
    }

    swift_endAccess();
    v10 = v146 + qword_280DDCCF8;
    *(v146 + qword_280DDCCF8 + 8) = &off_283B6BE98;
    swift_unknownObjectWeakAssign();
    v147 = *(v146 + qword_280DDCCF0);
    if (v147 >> 62)
    {
      if (v147 < 0)
      {
        v159 = *(v146 + qword_280DDCCF0);
      }

      v9 = sub_2283930D0();
      if (!v9)
      {
LABEL_88:
        v160 = v62;

        v149 = MEMORY[0x277D84F90];
        goto LABEL_89;
      }
    }

    else
    {
      v9 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_88;
      }
    }

    v183[0] = MEMORY[0x277D84F90];
    v90 = v9 & ~(v9 >> 63);
    v148 = v62;

    v93 = v147;

    v69 = v183;
    sub_2281CA04C(0, v90, 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    v69 = sub_228198C84((v92 > 1), v62, 1, v69);
  }

  v178 = v9;
  v170 = v146;
  v171 = v62;
  v149 = v183[0];
  type metadata accessor for MedicationDoseLogMedicationCell();
  v150 = 0;
  v151 = v93;
  v152 = v93 & 0xC000000000000001;
  v153 = v93;
  do
  {
    if (v152)
    {
      v154 = MEMORY[0x22AAB6D80](v150, v151);
    }

    else
    {
      v154 = *(v151 + 8 * v150 + 32);
    }

    swift_unknownObjectWeakLoadStrong();
    v155 = *(v10 + 8);
    sub_2282D98CC(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell);
    v179 = sub_22838FBB0();
    v180 = v156;
    v182 = 0;
    swift_unknownObjectWeakInit();
    v181 = v154;
    v182 = v155;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v183[0] = v149;
    v158 = *(v149 + 16);
    v157 = *(v149 + 24);
    if (v158 >= v157 >> 1)
    {
      sub_2281CA04C((v157 > 1), v158 + 1, 1);
      v149 = v183[0];
    }

    ++v150;
    *(v149 + 16) = v158 + 1;
    sub_2281D3334(&v179, v149 + 40 * v158 + 32);
    v151 = v153;
  }

  while (v178 != v150);

  v38 = v174;
  v62 = v171;
LABEL_89:
  sub_22819578C(v149);

  sub_22838FF60();

  (*(v38 + 8))(v175, v176);
  return v62;
}

id sub_2282D0168()
{
  v1 = qword_280DDC7E0;
  v2 = *(v0 + qword_280DDC7E0);
  if (v2)
  {
    v3 = *(v0 + qword_280DDC7E0);
  }

  else
  {
    v4 = sub_2282D01C8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282D01C8()
{
  v0 = [objc_opt_self() boldButton];
  v1 = qword_280DDCF18;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  return v2;
}

id sub_2282D02C4()
{
  v1 = qword_280DDC820;
  v2 = *(v0 + qword_280DDC820);
  if (v2)
  {
    v3 = *(v0 + qword_280DDC820);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282D0374()
{
  v1 = qword_280DDC828;
  v2 = *(v0 + qword_280DDC828);
  if (v2)
  {
    v3 = *(v0 + qword_280DDC828);
  }

  else
  {
    v4 = sub_2282D03D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282D03D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    v4 = sub_2282D02C4();
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = qword_280DDC820;
    [v2 addSubview_];
    [*(a1 + v5) hk:v2 alignConstraintsWithView:*MEMORY[0x277D75060] insets:{*(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  }

  v6 = sub_2282D0168();
  [v2 addSubview_];

  v7 = qword_280DDC7E0;
  [*(a1 + qword_280DDC7E0) setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [*(a1 + v7) leftAnchor];
  v9 = [v2 leftAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:32.0];

  [v10 setActive_];
  v11 = [*(a1 + v7) rightAnchor];
  v12 = [v2 rightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-32.0];

  [v13 setActive_];
  v14 = [*(a1 + v7) topAnchor];
  v15 = [v2 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:32.0];

  [v16 setActive_];
  v17 = [*(a1 + v7) bottomAnchor];
  v18 = [v2 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-48.0];

  [v19 setActive_];
  v20 = [*(a1 + v7) heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  [v21 setActive_];
  return v2;
}

id sub_2282D0748()
{
  v1 = v0;
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27D827448;
  v8 = *(v1 + qword_27D827448);
  if (v8)
  {
    v9 = *(v1 + qword_27D827448);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_22838F540();
    v11 = sub_22838F4F0();
    (*(v3 + 8))(v6, v2);
    [v10 setLocale_];

    [v10 setFormattingContext_];
    v12 = sub_228391FC0();
    [v10 setLocalizedDateFormatFromTemplate_];

    v13 = *(v1 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v14 = v8;
  return v9;
}

void sub_2282D08E0()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_2282D0374();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 convertRect:*&v0[qword_280DDC828] fromCoordinateSpace:{v5, v7, v9, v11}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  MinY = CGRectGetMinY(v30);
  v21 = [v0 collectionView];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 contentSize];
  v24 = v23;

  v25 = sub_2282D02C4();
  v28 = v25;
  v26 = 0.0;
  if (MinY < v24 && v24 > 0.0)
  {
    v26 = 1.0;
  }

  [v25 setAlpha_];
}

void sub_2282D0A30()
{
  v1 = sub_2282D0168();
  [v1 addTarget:v0 action:sel_didTapDone forControlEvents:64];

  v2 = qword_280DDC7E0;
  [*&v0[qword_280DDC7E0] setEnabled_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_2282D0374();
  [v4 addSubview_];

  v6 = qword_280DDC828;
  [*&v0[qword_280DDC828] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [*&v0[v6] leftAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 leftAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  [v11 setActive_];

  v12 = [*&v0[v6] rightAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 rightAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  [v16 setActive_];

  v17 = [*&v0[v6] bottomAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 bottomAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  [v21 setActive_];

  if (!_UISolariumEnabled())
  {
    return;
  }

  v22 = *&v0[v2];
  v23 = [v0 collectionView];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v23 edge:4 style:0];

  [v22 addInteraction_];
}

void sub_2282D0D78()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_didTapCancel];
  v2 = [v0 navigationItem];
  [v2 setLeftBarButtonItem_];

  v3 = [v0 navigationItem];
  v4 = sub_2282D0748();
  v5 = sub_22838F380();
  v6 = [v4 stringFromDate_];

  if (!v6)
  {
    sub_228392000();
    v6 = sub_228391FC0();
  }

  [v3 setTitle_];
}

void sub_2282D0EE4()
{
  sub_2283904D0();
  v1 = sub_2283904E0();
  v1();
  v2 = [v0 collectionView];
  if (v2)
  {
    type metadata accessor for MedicationDoseLogHeaderView();
    sub_2282D98CC(qword_280DDC208, type metadata accessor for MedicationDoseLogHeaderView);
    sub_2283926D0();
  }

  else
  {
    __break(1u);
  }
}

void sub_2282D0FBC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MedicationsLogViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  sub_2282D08E0();
}

void sub_2282D1018(void *a1)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for MedicationsLogViewController();
  v1 = v12.receiver;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  sub_2282D0A30();
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 contentInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 setContentInset_];

      sub_2282D0D78();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2282D1114()
{
  v0[2] = sub_2283922A0();
  v0[3] = sub_228392290();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2282D11C0;

  return sub_2282D3D58();
}

uint64_t sub_2282D11C0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282D12FC, v5, v4);
}

uint64_t sub_2282D12FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2282D135C(void *a1)
{
  sub_2282D9B08(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_2283922D0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2283922A0();
  v7 = a1;
  v8 = sub_228392290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_2281DC568(0, 0, v5, &unk_2283A2A00, v9);

  sub_2282D50AC(1);
  [v7 dismissViewControllerAnimated:1 completion:0];
}

void sub_2282D14D4(void *a1)
{
  v1 = a1;
  sub_2282D50AC(4);
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_2282D153C(char a1, char a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MedicationsLogViewController();
  objc_msgSendSuper2(&v13, sel_setEditing_animated_, a1 & 1, a2 & 1);
  v5 = [v2 collectionView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 setEditing_];

  v7 = [v2 collectionView];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  [v7 setAllowsSelection_];

  v9 = [v2 collectionView];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 setAllowsMultipleSelection_];

  v11 = [v2 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setAllowsMultipleSelectionDuringEditing_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2282D1668(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_2282D153C(a3, a4);
}

void sub_2282D16C4(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_22817A958(0, &qword_27D827770, 0x277D752A8);
    sub_2281810DC(0, &qword_27D8243E0);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_22819A62C(v6, v9);
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_2282D9960(v6, sub_2281ED284);
    }
  }
}

uint64_t sub_2282D1828(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2282D16C4(v10);

  return (*(v6 + 8))(v9, v5);
}

void sub_2282D1924(void *a1)
{
  v1 = a1;
  sub_2282D08E0();
}

uint64_t sub_2282D196C(uint64_t a1, int a2)
{
  v3 = v2;
  v100 = sub_22838F4A0();
  v99 = *(v100 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v112 = sub_22838F440();
  v8 = *(v112 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v112);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v96 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v96 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v108 = &v96 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v96 - v20;
  v111 = qword_280DDC818;
  swift_beginAccess();

  v109 = a1;
  sub_2282D5FA0(&v113, a1);
  swift_endAccess();

  v22 = &unk_280DDC000;
  v110 = v2;
  v97 = a2;
  v103 = v8;
  if ((a2 & 1) == 0)
  {
    goto LABEL_22;
  }

  result = *(v2 + qword_280DDC840);
  if (result)
  {
    v24 = *(result + 16);
    if (v24 >> 62)
    {
      goto LABEL_69;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_5:
      v105 = v14;
      v102 = v17;
      if (v25 >= 1)
      {
        v26 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
        v107 = v24 & 0xC000000000000001;
        v106 = result;

        swift_beginAccess();
        v27 = 0;
        v28 = (v8 + 16);
        v29 = (v8 + 40);
        v30 = v24;
        do
        {
          if (v107)
          {
            v31 = MEMORY[0x22AAB6D80](v27, v24);
          }

          else
          {
            v31 = *(v24 + 8 * v27 + 32);
          }

          ++v27;
          v32 = v112;
          (*v28)(v21, v109 + v26, v112);
          v33 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
          swift_beginAccess();
          (*v29)(v31 + v33, v21, v32);
          swift_endAccess();
          swift_beginAccess();

          sub_2282D5FA0(&v113, v31);
          swift_endAccess();

          v24 = v30;
        }

        while (v25 != v27);

        v8 = v103;
        v3 = v110;
        v22 = &unk_280DDC000;
        v17 = v102;
        v14 = v105;
        goto LABEL_12;
      }

      __break(1u);
LABEL_76:
      __break(1u);
      return result;
    }
  }

  while (1)
  {
LABEL_12:
    result = *(v3 + v22[262]);
    if (!result)
    {
      goto LABEL_22;
    }

    v34 = *(result + 16);
    if (v34 >> 62)
    {
      v94 = *(v3 + v22[262]);
      if (v34 < 0)
      {
        v95 = *(result + 16);
      }

      v35 = sub_2283930D0();
      result = v94;
      if (!v35)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_22;
      }
    }

    v105 = v14;
    v102 = v17;
    if (v35 < 1)
    {
      goto LABEL_76;
    }

    v36 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
    v107 = v34 & 0xC000000000000001;
    v106 = result;

    swift_beginAccess();
    v37 = 0;
    v38 = (v8 + 16);
    v39 = (v8 + 40);
    v40 = v34;
    do
    {
      if (v107)
      {
        v41 = MEMORY[0x22AAB6D80](v37, v34);
      }

      else
      {
        v41 = *(v34 + 8 * v37 + 32);
      }

      ++v37;
      v42 = v112;
      (*v38)(v21, v109 + v36, v112);
      v43 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*v39)(v41 + v43, v21, v42);
      swift_endAccess();
      swift_beginAccess();

      sub_2282D5FA0(&v113, v41);
      swift_endAccess();

      v34 = v40;
    }

    while (v35 != v37);

    v8 = v103;
    v3 = v110;
    v22 = &unk_280DDC000;
    v17 = v102;
    v14 = v105;
LABEL_22:
    sub_22838F430();
    v24 = *(v3 + qword_280DDC840);
    if (!v24)
    {
      LODWORD(v17) = 0;
      v45 = v112;
      goto LABEL_47;
    }

    v44 = *(v24 + 16);
    if (v44 >> 62)
    {
      goto LABEL_65;
    }

    result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
    v45 = v112;
    if (!result)
    {
      break;
    }

    v105 = v14;
    if ((v44 & 0xC000000000000001) != 0)
    {
      swift_retain_n();

      v46 = MEMORY[0x22AAB6D80](0, v44);

      goto LABEL_29;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v44 + 32);
      swift_retain_n();

LABEL_29:
      v47 = *(v8 + 8);
      v48 = v108;
      v107 = v8 + 8;
      v106 = v47;
      v47(v108, v45);
      v49 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v50 = v8;
      v51 = v8 + 16;
      v52 = *(v8 + 16);
      v53 = v46 + v49;
      v44 = v105;
      v52(v105, v53, v45);

      v54 = *(v50 + 32);
      v14 = (v50 + 32);
      v54(v17, v44, v45);
      v105 = v51;
      v104 = v52;
      v52(v48, v17, v45);
      v55 = *(v24 + 16);
      v102 = v17;
      v96 = v24;
      v22 = (v55 & 0xFFFFFFFFFFFFFF8);
      if (v55 >> 62)
      {
        v8 = sub_2283930D0();
      }

      else
      {
        v8 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = v55 & 0xC000000000000001;

      v24 = 0;
      while (1)
      {
        v17 = v8 != v24;
        if (v8 == v24)
        {
          goto LABEL_41;
        }

        if (v3)
        {
          v14 = MEMORY[0x22AAB6D80](v24, v55);
          if (__OFADD__(v24, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            v106(v102, v45);

            v24 = v96;

            v8 = v103;
            v3 = v110;
            v22 = &unk_280DDC000;
            goto LABEL_44;
          }
        }

        else
        {
          if (v24 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_65:
            result = sub_2283930D0();
            goto LABEL_25;
          }

          v14 = *(v55 + 8 * v24 + 32);

          if (__OFADD__(v24, 1))
          {
            goto LABEL_40;
          }
        }

        v56 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
        swift_beginAccess();
        v104(v21, &v14[v56], v45);
        sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578]);
        v44 = sub_228391FB0();

        v106(v21, v45);
        ++v24;
        if ((v44 & 1) == 0)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
LABEL_69:
    v93 = result;
    v25 = sub_2283930D0();
    result = v93;
    if (v25)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v17) = 0;
LABEL_44:
  v57 = qword_280DDC848;
  swift_beginAccess();
  if (*(v3 + v57))
  {
    v58 = v22;
    v59 = *(v24 + 16);

    v22 = v58;
    sub_228320E1C(v60);
  }

LABEL_47:
  v61 = *(v3 + v22[262]);
  if (v61 && *(v3 + qword_280DDC838))
  {
    v62 = *(v61 + 16);

    sub_228320E1C(v63);
  }

  if (*(v3 + qword_280DDC7F0))
  {
    v64 = *(v3 + qword_280DDC810);
    if (v64)
    {
      if (v17 != *(v64 + 17))
      {
        v65 = v97 ^ 1;
        *(v64 + 17) = v17 & (v97 ^ 1);
        if ((v65 & 1) == 0)
        {
          v66 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
          v67 = v109;
          swift_beginAccess();
          v68 = v67 + v66;
          v69 = v101;
          (*(v8 + 16))(v101, v68, v45);
          goto LABEL_58;
        }

        v69 = v101;
        if (v17)
        {

          sub_22838F430();
        }

        else
        {
          (*(v8 + 16))(v101, v108, v45);
LABEL_58:
        }

        v70 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
        swift_beginAccess();
        (*(v8 + 40))(v64 + v70, v69, v45);
        swift_endAccess();
        v71 = MEMORY[0x277D84560];
        sub_2282D9B08(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
        v72 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
        v73 = *(*v72 + 72);
        v74 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
        v75 = swift_allocObject();
        v112 = xmmword_228397F40;
        *(v75 + 16) = xmmword_228397F40;
        v76 = v75 + v74;

        sub_22838F490();
        v77 = (v75 + v74 + v72[7]);
        type metadata accessor for MedicationDoseRecordAllCell();
        sub_2282D98CC(&qword_280DDC200, type metadata accessor for MedicationDoseRecordAllCell);
        *v77 = sub_22838FBB0();
        v77[1] = v78;
        *(v76 + v72[9] + 8) = 0;
        v79 = swift_unknownObjectWeakInit();
        *(v76 + v72[8]) = v64;
        *(v79 + 8) = &off_283B6BE98;
        v80 = v110;
        swift_unknownObjectWeakAssign();
        sub_2282D9B08(0, &qword_27D823910, MEMORY[0x277D10F78], v71);
        v81 = *(sub_22838FEF0() - 8);
        v82 = *(v81 + 72);
        v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        *(swift_allocObject() + 16) = v112;
        sub_2281958B0(v75);
        swift_setDeallocating();
        sub_2282D9960(v76, type metadata accessor for MedicationDoseRecordAllItem);
        swift_deallocClassInstance();
        v84 = v98;
        sub_22838F490();
        sub_22838F450();
        (*(v99 + 8))(v84, v100);
        v3 = v80;
        v8 = v103;
        sub_22838FED0();
        sub_22838FF50();
      }
    }
  }

  v85 = sub_2282D0168();
  v86 = v111;
  v87 = *(v3 + v111);

  v89 = sub_2282D2E74(v88);

  if (v89)
  {
    v90 = 1;
  }

  else
  {
    v91 = *(v3 + v86);

    v90 = sub_2282D326C(v92);
  }

  [v85 setEnabled_];

  return (*(v8 + 8))(v108, v45);
}

void sub_2282D2868(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = swift_retain_n();
    v10 = sub_2281D3518(v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = *&v2[qword_280DDF410] == 1 && *&v2[qword_280DDC7D8] > 1;
    objc_allocWithZone(type metadata accessor for MedicationLogDetailsViewController());

    v25 = v2;
    v26 = sub_2282C5114(a1, v10, v12, v14, v16, v2, &off_283B6BE98, v17);

    v28 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
    [v28 setModalPresentationStyle_];
    [v28 setModalInPresentation_];
    [v25 presentViewController:v28 animated:1 completion:0];

    v27 = v28;
  }

  else
  {
    sub_228391190();
    v18 = sub_2283911A0();
    v19 = sub_2283925C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = sub_228393600();
      v24 = sub_2281C96FC(v22, v23, &v29);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_22816B000, v18, v19, "[%s] Couldn't load view model", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAB7B80](v21, -1, -1);
      MEMORY[0x22AAB7B80](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2282D2B6C()
{
  v1 = v0;
  sub_2282D9B08(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = v23 - v5;
  v7 = *&v0[qword_280DDC840];
  if (!v7)
  {
    return result;
  }

  v8 = qword_280DDC848;
  result = swift_beginAccess();
  v9 = *&v1[v8];
  if (!v9)
  {
    return result;
  }

  v10 = *(v7 + 16);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v14 = *(v7 + 16);
    }

    result = sub_2283930D0();
    v11 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_5:
      v24 = v6;
      if (v11 < 1)
      {
        __break(1u);
        return result;
      }

      v23[1] = v9;

      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AAB6D80](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        ++v12;
        *(v13 + 48) = 4;
        swift_beginAccess();

        sub_2282D5FA0(&v25, v13);
        swift_endAccess();
      }

      while (v11 != v12);

      v6 = v24;
      goto LABEL_16;
    }
  }

LABEL_16:
  v15 = *(v7 + 16);

  sub_228320E1C(v16);
  v17 = *&v1[qword_280DDF418];
  if ((v17 & 0x20) == 0)
  {
    *&v1[qword_280DDF418] = v17 | 0x20;
  }

  v18 = sub_2283922D0();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_2283922A0();
  v19 = v1;
  v20 = sub_228392290();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_2281DC568(0, 0, v6, &unk_2283A2A08, v21);

  sub_2282D50AC(1);
  [v19 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_2282D2E74(uint64_t a1)
{
  v37 = sub_22838F440();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
    result = sub_2283924C0();
    a1 = v42;
    v6 = v43;
    v7 = v44;
    v8 = v45;
    v9 = v46;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
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

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v35 = (v2 + 16);
  v33[1] = v7;
  v34 = (v2 + 8);
  p_name = &OBJC_PROTOCOL___UIPickerViewDataSource.name;
  v15 = v9;
  v38 = a1;
  while (a1 < 0)
  {
    v19 = sub_228393100();
    if (!v19 || (v40 = v19, type metadata accessor for MedicationsDoseLogViewModel(0), swift_dynamicCast(), (v18 = v41) == 0))
    {
LABEL_27:
      sub_228176F04();
      return 0;
    }

LABEL_17:
    v20 = *(v18 + 48);
    if (v20 != *&p_name[280][v18])
    {
      sub_228176F04();

      return 1;
    }

    v21 = *(v18 + 24);
    v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
    if (v21)
    {
      v23 = v22 == 4;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v39 = v15;
      v24 = v21;
      v25 = COERCE_DOUBLE(sub_2283928B0());
      if ((v26 & 1) != 0 || *(v18 + 40) != v25)
      {

LABEL_30:
        sub_228176F04();
        return 1;
      }

      v27 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v28 = v36;
      v29 = v18 + v27;
      v30 = v37;
      (*v35)(v36, v29, v37);
      sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578]);
      v31 = sub_228391FB0();

      v32 = v28;
      p_name = (&OBJC_PROTOCOL___UIPickerViewDataSource + 8);
      result = (*v34)(v32, v30);
      a1 = v38;
      v15 = v39;
      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v16 = v8;
  v17 = v15;
  if (v15)
  {
LABEL_13:
    v15 = (v17 - 1) & v17;
    v18 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v18)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_27;
    }

    v17 = *(v6 + 8 * v8);
    ++v16;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282D326C(uint64_t a1)
{
  v48 = sub_22838F440();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v48);
  v47 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = v42 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
    result = sub_2283924C0();
    a1 = v52;
    v8 = v53;
    v9 = v54;
    v10 = v55;
    v11 = v56;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v42[1] = v9;
  v15 = (v9 + 64) >> 6;
  v44 = v2 + 8;
  v45 = (v2 + 16);
  v49 = a1;
  v43 = v15;
  v16 = (v2 + 8);
  while (1)
  {
    v20 = v11;
    v21 = v10;
    if (a1 < 0)
    {
      v25 = sub_228393100();
      if (!v25 || (v50 = v25, type metadata accessor for MedicationsDoseLogViewModel(0), swift_dynamicCast(), (v24 = v51) == 0))
      {
LABEL_27:
        v41 = 1;
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    v22 = v10;
    v23 = v11;
    if (!v11)
    {
      break;
    }

LABEL_15:
    v11 = (v23 - 1) & v23;
    v24 = *(*(a1 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v24)
    {
      goto LABEL_27;
    }

LABEL_19:
    v26 = *(v24 + 24);
    if (v26)
    {
      v27 = v26;
      if ([v27 logStatus] != *(v24 + 48) || (v28 = COERCE_DOUBLE(sub_2283928B0()), (v29 & 1) != 0) || *(v24 + 40) != v28)
      {

        v41 = 0;
        goto LABEL_28;
      }

      v42[2] = v21;
      v42[3] = v20;
      v30 = [v27 startDate];
      v31 = v46;
      sub_22838F3E0();

      v32 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v33 = v24 + v32;
      v34 = v11;
      v35 = v8;
      v37 = v47;
      v36 = v48;
      (*v45)(v47, v33, v48);
      sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578]);
      v38 = sub_228391FB0();

      v39 = *v16;
      v40 = v37;
      v8 = v35;
      v11 = v34;
      v15 = v43;
      (*v16)(v40, v36);
      v39(v31, v36);

      a1 = v49;
      if ((v38 & 1) == 0)
      {
        v41 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(v24 + 48);
      v18 = *(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);

      v19 = v17 == v18;
      a1 = v49;
      if (!v19)
      {
        v41 = 0;
LABEL_28:
        sub_228176F04();
        return v41;
      }
    }
  }

  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      v41 = 1;
      goto LABEL_28;
    }

    v23 = *(v8 + 8 * v10);
    ++v22;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_2282D36C0()
{
  if (*(v0 + qword_280DDC7F0))
  {
    v1 = *(v0 + qword_280DDC810);
    if (v1)
    {
      v2 = *(v0 + qword_280DDC840);
      if (v2)
      {
        v3 = *(v2 + 16);
        if (!(v3 >> 62))
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_6;
        }

        while (1)
        {
          v4 = sub_2283930D0();
LABEL_6:
          v5 = qword_280DDC818;
          swift_beginAccess();
          v6 = *(v0 + v5);
          if ((v6 & 0xC000000000000001) != 0)
          {
            if (v6 < 0)
            {
              v7 = *(v0 + v5);
            }

            v8 = sub_2283930D0();
          }

          else
          {
            v8 = *(v6 + 16);
          }

          if (v8 >= v4)
          {
            break;
          }

          v9 = *(v0 + v5);
          if ((v9 & 0xC000000000000001) != 0)
          {

            swift_unknownObjectRetain();
            v0 = sub_228393080();
            type metadata accessor for MedicationsDoseLogViewModel(0);
            sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
            sub_2283924C0();
            v11 = v33;
            v10 = v34;
            v13 = v35;
            v12 = v36;
            v14 = v37;
          }

          else
          {
            v15 = -1 << *(v9 + 32);
            v10 = v9 + 56;
            v13 = ~v15;
            v16 = -v15;
            if (v16 < 64)
            {
              v17 = ~(-1 << v16);
            }

            else
            {
              v17 = -1;
            }

            v14 = v17 & *(v9 + 56);
            v11 = *(v0 + v5);
            swift_bridgeObjectRetain_n();
            v12 = 0;
          }

          v18 = (v13 + 64) >> 6;
          if (v11 < 0)
          {
            while (sub_228393100())
            {
              type metadata accessor for MedicationsDoseLogViewModel(0);
              swift_dynamicCast();
              v0 = v32;
              v21 = v12;
              v22 = v14;
              if (!v32)
              {
                break;
              }

LABEL_27:
              if (*(v0 + 48) == 5)
              {
                sub_228176F04();

                goto LABEL_33;
              }

              v12 = v21;
              v14 = v22;
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_30;
          }

LABEL_19:
          v19 = v12;
          v20 = v14;
          v21 = v12;
          if (v14)
          {
LABEL_23:
            v22 = (v20 - 1) & v20;
            v0 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

            if (v0)
            {
              goto LABEL_27;
            }

LABEL_30:
            sub_228176F04();

            if (*(v1 + 16))
            {
              goto LABEL_36;
            }

            v23 = 1;
            goto LABEL_35;
          }

          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_30;
            }

            v20 = *(v10 + 8 * v21);
            ++v19;
            if (v20)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
        }

LABEL_33:
        if ((*(v1 + 16) & 1) == 0)
        {
          goto LABEL_36;
        }

        v23 = 0;
LABEL_35:
        *(v1 + 16) = v23;
        sub_2282D9B08(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
        v24 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
        v25 = *(*v24 + 72);
        v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_228397F40;
        v28 = v27 + v26;

        sub_22838F490();
        v29 = (v27 + v26 + v24[7]);
        type metadata accessor for MedicationDoseRecordAllCell();
        sub_2282D98CC(&qword_280DDC200, type metadata accessor for MedicationDoseRecordAllCell);
        *v29 = sub_22838FBB0();
        v29[1] = v30;
        *(v28 + v24[9] + 8) = 0;
        v31 = swift_unknownObjectWeakInit();
        *(v28 + v24[8]) = v1;
        *(v31 + 8) = &off_283B6BE98;
        swift_unknownObjectWeakAssign();
        sub_2281958B0(v27);
        swift_setDeallocating();
        sub_2282D9960(v28, type metadata accessor for MedicationDoseRecordAllItem);
        swift_deallocClassInstance();
        sub_22838FF60();

LABEL_36:
      }
    }
  }
}

void sub_2282D3BD8(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 48) == 1)
  {
    v4 = qword_280DDC818;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = *(v2 + v4);

    v7 = sub_228284048(a1, v5);

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    sub_2282D86F4(a1);
  }

  else
  {
    swift_beginAccess();

    sub_2282D5FA0(v16, a1);
  }

  swift_endAccess();

LABEL_6:
  v8 = sub_2282D0168();
  v9 = qword_280DDC818;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v12 = sub_2282D2E74(v11);

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = *(v2 + v9);

    v13 = sub_2282D326C(v15);
  }

  [v8 setEnabled_];

  sub_2282D36C0();
}

uint64_t sub_2282D3D58()
{
  v1[16] = v0;
  v1[17] = swift_getObjectType();
  v2 = sub_2283911B0();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = sub_228390D60();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v8 = sub_22838F440();
  v1[24] = v8;
  v9 = *(v8 - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_2283922A0();
  v1[28] = sub_228392290();
  v12 = sub_228392250();
  v1[29] = v12;
  v1[30] = v11;

  return MEMORY[0x2822009F8](sub_2282D3F1C, v12, v11);
}

uint64_t sub_2282D3F1C()
{
  v1 = *(v0 + 128);
  v2 = qword_280DDC818;
  swift_beginAccess();
  v52 = *(v1 + v2);
  if ((v52 & 0xC000000000000001) != 0)
  {

    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
    v3 = sub_2283924C0();
    v4 = *(v0 + 24);
    v52 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v52 + 32);
    v4 = v52 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v52 + 56);

    v6 = 0;
  }

  v11 = *(v0 + 200);
  v45 = *(v0 + 176);
  v12 = (v5 + 64) >> 6;
  v47 = (v11 + 8);
  v48 = (v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v49 = v4;
LABEL_8:
  v46 = v13;
  *(v0 + 248) = v13;
  v14 = v6;
  while ((v52 & 0x8000000000000000) == 0)
  {
    v15 = v14;
    v16 = v7;
    v6 = v14;
    if (!v7)
    {
      while (1)
      {
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v6 >= v12)
        {
          goto LABEL_32;
        }

        v16 = *(v4 + 8 * v6);
        ++v15;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x28216A890](v3);
    }

LABEL_16:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v52 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_20:
    v20 = *(v18 + 24);
    if (v20)
    {
      v50 = v17;
      v21 = v20;
      if ([v21 logStatus] != *(v18 + 48) || (v22 = COERCE_DOUBLE(sub_2283928B0()), (v23 & 1) != 0) || *(v18 + 40) != v22)
      {

        v17 = v50;
LABEL_27:
        sub_228300900(*(v0 + 184));
        v13 = v46;
        v51 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_228199B3C(0, v46[2] + 1, 1, v46);
        }

        v32 = v13[2];
        v31 = v13[3];
        if (v32 >= v31 >> 1)
        {
          v13 = sub_228199B3C(v31 > 1, v32 + 1, 1, v13);
        }

        v33 = *(v0 + 184);
        v34 = *(v0 + 168);

        v13[2] = v32 + 1;
        v3 = (*(v45 + 32))(v13 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v32, v33, v34);
        v4 = v49;
        v7 = v51;
        goto LABEL_8;
      }

      v24 = *(v0 + 208);
      v25 = *(v0 + 216);
      v26 = *(v0 + 192);
      v27 = [v21 startDate];
      sub_22838F3E0();

      v28 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*v48)(v24, v18 + v28, v26);
      sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578]);
      LOBYTE(v28) = sub_228391FB0();

      v29 = *v47;
      v30 = v24;
      v4 = v49;
      (*v47)(v30, v26);
      v29(v25, v26);
      v17 = v50;
      if ((v28 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (*(v18 + 48) != *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus))
    {
      goto LABEL_27;
    }

    v14 = v6;
    v7 = v17;
  }

  v19 = sub_228393100();
  if (v19)
  {
    *(v0 + 120) = v19;
    type metadata accessor for MedicationsDoseLogViewModel(0);
    swift_dynamicCast();
    v18 = *(v0 + 112);
    v6 = v14;
    v17 = v7;
    if (v18)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  sub_228176F04();
  if (v46[2])
  {
    v35 = *(*(v0 + 128) + qword_280DDC7F8);
    v36 = *(MEMORY[0x277D11690] + 4);
    v37 = swift_task_alloc();
    *(v0 + 256) = v37;
    *v37 = v0;
    v37[1] = sub_2282D44BC;
    v3 = v46;

    return MEMORY[0x28216A890](v3);
  }

  v38 = *(v0 + 224);

  v40 = *(v0 + 208);
  v39 = *(v0 + 216);
  v41 = *(v0 + 184);
  v42 = *(v0 + 160);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2282D44BC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[29];
    v5 = v2[30];
    v6 = sub_2282D4680;
  }

  else
  {
    v7 = v2[31];

    v4 = v2[29];
    v5 = v2[30];
    v6 = sub_2282D45F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2282D45F0()
{
  v1 = v0[28];

  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2282D4680()
{
  v32 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 160);

  sub_228391190();
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 152);
    v30 = *(v0 + 160);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315394;
    v14 = sub_228393600();
    v16 = sub_2281C96FC(v14, v15, &v31);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v0 + 104) = v8;
    v17 = v8;
    sub_2281810DC(0, &qword_280DDB860);
    v18 = sub_228392020();
    v20 = sub_2281C96FC(v18, v19, &v31);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_22816B000, v6, v7, "[%s] Error saving medication dose event samples %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v30, v10);
  }

  else
  {
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v23 = *(v0 + 144);

    (*(v22 + 8))(v21, v23);
  }

  v25 = *(v0 + 208);
  v24 = *(v0 + 216);
  v26 = *(v0 + 184);
  v27 = *(v0 + 160);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2282D48E8()
{
  v45 = sub_22838F440();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = qword_280DDC818;
  swift_beginAccess();
  v41 = v0;
  v5 = *(v0 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v0 + v4);
    }

    v7 = *(v0 + v4);

    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
    result = sub_2283924C0();
    v5 = v52;
    v9 = v53;
    v11 = v54;
    v10 = v55;
    v12 = v56;
  }

  else
  {
    v13 = -1 << *(v5 + 32);
    v9 = v5 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v5 + 56);

    v10 = 0;
  }

  v49 = 0;
  v16 = 0;
  v17 = 0;
  v48 = 0;
  v40 = v11;
  v18 = v11 + 64;
  v19 = 0;
  v20 = v18 >> 6;
  v42 = (v1 + 8);
  v43 = (v1 + 16);
  v46 = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  v26 = sub_228393100();
  if (!v26 || (v50 = v26, type metadata accessor for MedicationsDoseLogViewModel(0), swift_dynamicCast(), v25 = v51, v24 = v10, v47 = v12, v5 = v46, !v51))
  {
LABEL_87:
    result = sub_228176F04();
    v31 = v41;
    if (v48)
    {
      v32 = qword_280DDF418;
      v33 = *(v41 + qword_280DDF418);
      if ((v33 & 8) == 0)
      {
        v33 |= 8uLL;
        *(v41 + qword_280DDF418) = v33;
      }

      if ((v33 & 0x100) == 0 && *(v31 + qword_280DDF410) == 3)
      {
        *(v31 + v32) = v33 | 0x100;
      }
    }

    if (v17)
    {
      v34 = qword_280DDF418;
      v35 = *(v31 + qword_280DDF418);
      if ((v35 & 0x10) == 0)
      {
        v35 |= 0x10uLL;
        *(v31 + qword_280DDF418) = v35;
      }

      if ((v35 & 0x80) == 0 && *(v31 + qword_280DDF410) == 3)
      {
        *(v31 + v34) = v35 | 0x80;
      }
    }

    if (v16)
    {
      v36 = *(v31 + qword_280DDF418);
      if ((v36 & 0x200) == 0)
      {
        *(v31 + qword_280DDF418) = v36 | 0x200;
      }
    }

    if ((v49 & 0x100000000) != 0)
    {
      v37 = *(v31 + qword_280DDF418);
      if ((v37 & 0x400) == 0)
      {
        *(v31 + qword_280DDF418) = v37 | 0x400;
      }
    }

    if (v49)
    {
      v38 = *(v31 + qword_280DDF418);
      if ((v38 & 0x800) == 0)
      {
        *(v31 + qword_280DDF418) = v38 | 0x800;
      }
    }

    if (v19)
    {
      v39 = *(v31 + qword_280DDF418);
      if ((v39 & 0x40) == 0)
      {
        *(v31 + qword_280DDF418) = v39 | 0x40;
      }
    }

    return result;
  }

  while (1)
  {
    if (v48)
    {
      if (v17)
      {
        if (v16)
        {
          if ((v49 & 0x100000000) != 0)
          {
            if (v49)
            {
              if (v19)
              {

                v19 = 1;
                v49 = 0x100000001;
                v16 = 1;
                v17 = 1;
                v48 = 1;
                goto LABEL_14;
              }

              v49 = 0x100000001;
              v16 = 1;
              v17 = 1;
              v48 = 1;
LABEL_13:
              v21 = *(v25 + 48);

              v19 = v21 == 5;
              goto LABEL_14;
            }

            HIDWORD(v49) = 1;
            v16 = 1;
            v17 = 1;
            v48 = 1;
            goto LABEL_73;
          }

          v16 = 1;
          v17 = 1;
          v48 = 1;
          goto LABEL_61;
        }

        v17 = 1;
        v48 = 1;
        goto LABEL_47;
      }

      v27 = v19;
      v48 = 1;
    }

    else
    {
      v48 = *(v25 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) != *(v25 + 40);
      if (v17)
      {
        if (v16)
        {
          if ((v49 & 0x100000000) != 0)
          {
            if (v49)
            {
              if (!v19)
              {
                v49 = 0x100000001;
                v16 = 1;
                v17 = 1;
                goto LABEL_13;
              }

              v19 = 1;
              v49 = 0x100000001;
              v16 = 1;
              v17 = 1;
              goto LABEL_14;
            }

            HIDWORD(v49) = 1;
            v16 = 1;
            v17 = 1;
            goto LABEL_73;
          }

          v16 = 1;
          v17 = 1;
LABEL_61:
          if (*(v25 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) == 5)
          {
            HIDWORD(v49) = *(v25 + 48) == 4;
            if (v49)
            {
              if (v19)
              {

LABEL_68:
                v19 = 1;
                LODWORD(v49) = 1;
                goto LABEL_14;
              }

              goto LABEL_12;
            }
          }

          else
          {
            if (v49)
            {
              if (v19)
              {

                HIDWORD(v49) = 0;
                goto LABEL_68;
              }

              HIDWORD(v49) = 0;
LABEL_12:
              LODWORD(v49) = 1;
              goto LABEL_13;
            }

            HIDWORD(v49) = 0;
          }

LABEL_73:
          if ((*(v25 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) & 0xFFFFFFFFFFFFFFFELL) == 4)
          {
            LODWORD(v49) = *(v25 + 48) == 6;
            if (!v19)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (!v19)
            {
              LODWORD(v49) = 0;
              goto LABEL_13;
            }

            LODWORD(v49) = 0;
          }

          v19 = 1;
LABEL_14:
          v10 = v24;
          v12 = v47;
          if (v5 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_15;
        }

        v17 = 1;
LABEL_47:
        if (*(v25 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) == 4)
        {
          v16 = *(v25 + 48) == 5;
          if ((v49 & 0x100000000) == 0)
          {
            goto LABEL_61;
          }

          if (v49)
          {
            if (v19)
            {

LABEL_56:
              v19 = 1;
              v49 = 0x100000001;
              goto LABEL_14;
            }

            goto LABEL_84;
          }
        }

        else
        {
          if ((v49 & 0x100000000) == 0)
          {
            v16 = 0;
            goto LABEL_61;
          }

          if (v49)
          {
            if (v19)
            {

              v16 = 0;
              goto LABEL_56;
            }

            v16 = 0;
LABEL_84:
            v49 = 0x100000001;
            goto LABEL_13;
          }

          v16 = 0;
        }

        HIDWORD(v49) = 1;
        goto LABEL_73;
      }

      v27 = v19;
    }

    v28 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
    swift_beginAccess();
    v29 = v44;
    v30 = v45;
    (*v43)(v44, v25 + v28, v45);
    sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578]);
    LOBYTE(v28) = sub_228391FB0();
    (*v42)(v29, v30);
    v17 = v28 ^ 1;
    if (!v16)
    {
      v19 = v27;
      v5 = v46;
      goto LABEL_47;
    }

    if ((v49 & 0x100000000) == 0)
    {
      v19 = v27;
      v16 = 1;
      v5 = v46;
      goto LABEL_61;
    }

    v19 = v27;
    if ((v49 & 1) == 0)
    {
      HIDWORD(v49) = 1;
      v16 = 1;
      v5 = v46;
      goto LABEL_73;
    }

    if (!v27)
    {
      v49 = 0x100000001;
      v16 = 1;
      v5 = v46;
      goto LABEL_13;
    }

    v19 = 1;
    v49 = 0x100000001;
    v16 = 1;
    v10 = v24;
    v5 = v46;
    v12 = v47;
    if (v46 < 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v22 = v10;
    v23 = v12;
    v24 = v10;
    if (!v12)
    {
      break;
    }

LABEL_19:
    v47 = (v23 - 1) & v23;
    v25 = *(*(v5 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v25)
    {
      goto LABEL_87;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      goto LABEL_87;
    }

    v23 = *(v9 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282D50AC(uint64_t a1)
{
  v101 = sub_22838F440();
  v3 = *(v101 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v101);
  v91[0] = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = v91 - v8;
  MEMORY[0x28223BE20](v7);
  v103 = v91 - v9;
  v10 = qword_280DDF418;
  v11 = *(v1 + qword_280DDF418);
  if ((a1 & ~v11) != 0)
  {
    *(v1 + qword_280DDF418) = v11 | a1;
  }

  sub_2282D48E8();
  sub_22838F3F0();
  v12 = qword_280DDC818;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *(v1 + v12);
    }

    v15 = *(v1 + v12);

    v16 = sub_2283930D0();

    v13 = *(v1 + v12);
  }

  else
  {
    v16 = *(v13 + 16);
  }

  v17 = v16 != 0;
  if ((v13 & 0xC000000000000001) != 0)
  {

    v18 = sub_2283930D0();

    v13 = *(v1 + v12);
  }

  else
  {
    v18 = *(v13 + 16);
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v18)
  {
    v19 = 0;
  }

  v107 = v19;
  if ((v13 & 0xC000000000000001) != 0)
  {

    v20 = sub_2283930D0();

    v13 = *(v1 + v12);
  }

  else
  {
    v20 = *(v13 + 16);
  }

  v21 = v20 != 0;
  if ((v13 & 0xC000000000000001) != 0)
  {

    v22 = sub_2283930D0();

    v13 = *(v1 + v12);
  }

  else
  {
    v22 = *(v13 + 16);
  }

  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v22)
  {
    v23 = 0;
  }

  v105 = v23;
  if ((v13 & 0xC000000000000001) != 0)
  {

    v24 = sub_2283930D0();

    v13 = *(v1 + v12);
  }

  else
  {
    v24 = *(v13 + 16);
  }

  v25 = v24 != 0;
  if ((v13 & 0xC000000000000001) != 0)
  {

    v26 = sub_2283930D0();

    v13 = *(v1 + v12);
  }

  else
  {
    v26 = *(v13 + 16);
  }

  v106 = (v17 << 63);
  v104 = v21 << 63;
  v98 = v25 << 63;
  if (v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 0;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {

    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel);
    sub_2283924C0();
    v13 = v111;
    v28 = v112;
    v29 = v113;
    v30 = v114;
    v31 = v115;
  }

  else
  {
    v32 = -1 << *(v13 + 32);
    v28 = v13 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v13 + 56);

    v31 = v35;
    v30 = 0;
  }

  v92 = v12;
  v93 = v10;
  v94 = v1;
  v108 = 0;
  v91[1] = v29;
  v36 = ((v29 + 64) >> 6);
  v97 = (v3 + 16);
  v100 = (v3 + 8);
  v95 = v13;
  v96 = v36;
  while (1)
  {
    v37 = v30;
    v38 = v31;
    if (v13 < 0)
    {
      break;
    }

    while (1)
    {
      v40 = v37;
      v41 = v38;
      v30 = v37;
      if (!v38)
      {
        while (1)
        {
          v30 = (v40 + 1);
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v30 >= v36)
          {
            goto LABEL_78;
          }

          v41 = *(v28 + 8 * v30);
          ++v40;
          if (v41)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_45:
      v102 = (v41 - 1) & v41;
      v29 = *(*(v13 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v41)))));

      if (!v29)
      {
        goto LABEL_78;
      }

LABEL_46:
      v1 = v29;
      v42 = sub_228300D60() & 1;
      v43 = __OFADD__(v108, v42);
      v108 += v42;
      if (v43)
      {
        goto LABEL_86;
      }

      v13 = v28;
      v44 = v27;
      v27 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v10 = *v97;
      v36 = v99;
      v45 = v101;
      (*v97)(v99, v29 + v27, v101);
      v1 = v103;
      sub_22838F360();
      v47 = v46;
      v37 = *v100;
      (*v100)(v36, v45);
      v48 = v47 / 3600.0;
      if (COERCE__INT64(fabs(v47 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_87;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_88;
      }

      if (v48 >= 9.22337204e18)
      {
        goto LABEL_89;
      }

      v50 = v106;
      v49 = v107;
      if (v106 <= v48)
      {
        v50 = v48;
      }

      if (v107 >= v48)
      {
        v49 = v48;
      }

      v51 = *(v29 + 32);
      v106 = v50;
      v107 = v49;
      if (!v51)
      {
        v104 &= ~(v104 >> 63);
        v105 &= v105 >> 63;
        goto LABEL_65;
      }

      v36 = v99;
      sub_228390920();
      v1 = v103;
      sub_22838F360();
      v53 = v52;

      (v37)(v36, v101);
      v54 = v53 / 3600.0;
      if (COERCE__INT64(fabs(v53 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_90;
      }

      if (v54 <= -9.22337204e18)
      {
        goto LABEL_91;
      }

      if (v54 >= 9.22337204e18)
      {
        goto LABEL_92;
      }

      v56 = v104;
      v55 = v105;
      if (v104 <= v54)
      {
        v56 = v54;
      }

      v57 = *(v29 + 32);
      if (v54 < v105)
      {
        v55 = v54;
      }

      v104 = v56;
      v105 = v55;
      if (v57)
      {
        break;
      }

LABEL_65:

      v27 = v44;
      v36 = v96;
      if (v98 < 0)
      {
        v98 = 0;
        v58 = 0;
        v28 = v13;
        goto LABEL_75;
      }

      v27 = v44 & (v44 >> 63);
      v37 = v30;
      v38 = v102;
      v28 = v13;
      v13 = v95;
      if (v95 < 0)
      {
        goto LABEL_38;
      }
    }

    v59 = v29 + v27;
    v60 = v99;
    v61 = v101;
    (v10)(v99, v59, v101);

    v10 = v91[0];
    sub_228390920();
    v1 = v60;
    sub_22838F360();
    v63 = v62;

    v29 = v100;
    (v37)(v10, v61);
    result = (v37)(v60, v61);
    v65 = v63 / 3600.0;
    if (COERCE__INT64(fabs(v63 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      return result;
    }

    v36 = v96;
    if (v65 <= -9.22337204e18)
    {
      goto LABEL_97;
    }

    if (v65 >= 9.22337204e18)
    {
      goto LABEL_98;
    }

    v27 = v44;
    v28 = v13;
    v58 = v65;
    v66 = v98;
    if (v98 <= v65)
    {
      v66 = v65;
    }

    v98 = v66;
LABEL_75:
    v13 = v95;
    v31 = v102;
    if (v58 < v27)
    {
      v27 = v58;
    }
  }

LABEL_38:
  v39 = sub_228393100();
  if (v39)
  {
    v109 = v39;
    type metadata accessor for MedicationsDoseLogViewModel(0);
    swift_dynamicCast();
    v29 = v110;
    v30 = v37;
    v102 = v38;
    if (v110)
    {
      goto LABEL_46;
    }
  }

LABEL_78:
  sub_228176F04();
  v1 = 0x277CCA000uLL;
  v67 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v106 = [v67 initWithInteger_];
  v68 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v69 = [v68 initWithInteger_];
  v10 = v94;
  v29 = *&v94[qword_280DDF410];
  v107 = v69;
  if (v29 == 1)
  {
    v70 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v104 = [v70 initWithInteger_];
    v71 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v13 = [v71 initWithInteger_];
    v72 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v105 = [v72 initWithInteger_];
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  else
  {
    v37 = 0;
    v104 = 0;
    v105 = 0;
    v13 = 0;
  }

  v27 = v93;
  v36 = v92;
  v73 = *(v10 + qword_280DDC840);
  v102 = v29;
  if (!v73)
  {
    goto LABEL_94;
  }

  v74 = *(v73 + 16);
  if (v74 >> 62)
  {
LABEL_93:
    v75 = sub_2283930D0();
    if (v29 != 1)
    {
      goto LABEL_94;
    }

LABEL_84:
    v76 = [objc_allocWithZone(*(v1 + 2992)) initWithBool_];
  }

  else
  {
    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 == 1)
    {
      goto LABEL_84;
    }

LABEL_94:
    v76 = 0;
  }

  v77 = *&v36[v10];

  sub_2282CEB94(v78);

  v99 = objc_opt_self();
  v79 = *(v10 + qword_280DDC808);
  v80 = *(v10 + v27);
  v81 = *(v10 + qword_280DDF420);
  v82 = sub_228392190();

  v83 = v108 > 1;
  v90 = v37;
  v108 = v37;
  v84 = v105;
  v89 = v13;
  v85 = v13;
  v86 = v104;
  v87 = v107;
  v88 = v106;
  [v99 submitLogMetricWithHealthStore:v79 actions:v80 provenance:v81 context:v102 medicationIdentifiers:v82 loggingMultipleMeds:v83 hoursAgoLoggedForMax:v106 hoursAgoLoggedForMin:v107 hoursFromScheduledTimeLoggedMax:v104 hoursFromScheduledTimeLoggedMin:v89 hoursFromScheduledToTakenOrSkippedMax:v105 hoursFromScheduledToTakenOrSkippedMin:v90 isPartiallyLoggingScheduledMeds:v76 dataSource:v79];

  return (*v100)(v103, v101);
}

id MedicationsLogViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_2282D5CD0()
{
  v1 = *(v0 + qword_280DDC840);

  v2 = *(v0 + qword_280DDC830);

  v3 = *(v0 + qword_280DDC7F8);

  v4 = *(v0 + qword_280DDC818);

  v5 = qword_27D827450;
  v6 = sub_22838F440();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + qword_280DDC838);

  v8 = *(v0 + qword_280DDC848);

  v9 = *(v0 + qword_280DDC7F0);

  v10 = *(v0 + qword_280DDC810);

  v11 = *(v0 + qword_27D827448);
}

id MedicationsLogViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsLogViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282D5E40(uint64_t a1)
{
  v2 = *(a1 + qword_280DDC840);

  v3 = *(a1 + qword_280DDC830);

  v4 = *(a1 + qword_280DDC7F8);

  v5 = *(a1 + qword_280DDC818);

  v6 = qword_27D827450;
  v7 = sub_22838F440();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = *(a1 + qword_280DDC838);

  v9 = *(a1 + qword_280DDC848);

  v10 = *(a1 + qword_280DDC7F0);

  v11 = *(a1 + qword_280DDC810);

  v12 = *(a1 + qword_27D827448);
}

uint64_t sub_2282D5FA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2283930E0();

    if (v8)
    {

      type metadata accessor for MedicationsDoseLogViewModel(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v65[0];
    }

    else
    {
      result = sub_2283930D0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v54 = sub_2282D69BC(v7, result + 1);
        v65[0] = v54;
        v55 = *(v54 + 16);
        if (*(v54 + 24) <= v55)
        {
          sub_2282D703C(v55 + 1);
          v54 = v65[0];
        }

        sub_2282D7578(v56, v54);

        *v3 = v54;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  v57 = v2;
  v10 = *(v6 + 40);
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  v11 = sub_228393570();
  v12 = v6 + 56;
  v13 = -1 << *(v6 + 32);
  v14 = v11 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_37:
    v51 = *v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = *v57;

    sub_2282D76BC(v53, v14, isUniquelyReferenced_nonNull_native);
    *v57 = v65[0];
    *a1 = a2;
    return 1;
  }

  v62 = ~v13;
  v60 = v6;
  v61 = *MEMORY[0x277CCC520];
  v59 = v6 + 56;
  while (1)
  {
    v15 = *(v6 + 48);
    v16 = *(v15 + 8 * v14);
    v17 = *(v16 + 24);
    if (!v17)
    {
      v31 = *(v15 + 8 * v14);

      goto LABEL_20;
    }

    v18 = *(v15 + 8 * v14);

    v19 = v17;
    v20 = [v19 metadata];
    if (!v20)
    {

      goto LABEL_20;
    }

    v21 = v20;
    v22 = sub_228391F20();

    v23 = sub_228392000();
    if (!*(v22 + 16))
    {

      goto LABEL_20;
    }

    v25 = sub_2281A76E0(v23, v24);
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      v6 = v60;
LABEL_20:
      v32 = [*(v16 + 16) semanticIdentifier];
      v33 = [v32 stringValue];

      v28 = sub_228392000();
      v29 = v34;

      v30 = *(a2 + 24);
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    sub_2281BC4A4(*(v22 + 56) + 32 * v25, v65);

    v6 = v60;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v28 = v63;
    v29 = v64;
    v30 = *(a2 + 24);
    if (!v30)
    {
      goto LABEL_30;
    }

LABEL_21:
    v35 = v30;
    v36 = [v35 metadata];
    if (v36)
    {
      v37 = v36;
      v38 = sub_228391F20();

      v39 = sub_228392000();
      if (*(v38 + 16))
      {
        v41 = sub_2281A76E0(v39, v40);
        v43 = v42;

        if (v43)
        {
          sub_2281BC4A4(*(v38 + 56) + 32 * v41, v65);

          if (swift_dynamicCast())
          {
            v45 = v63;
            v44 = v64;
            v12 = v59;
            v6 = v60;
            goto LABEL_31;
          }
        }

        else
        {
        }

        v12 = v59;
        v6 = v60;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_30:
    v46 = [*(a2 + 16) semanticIdentifier];
    v47 = [v46 stringValue];

    v45 = sub_228392000();
    v44 = v48;

LABEL_31:
    if (v28 == v45 && v29 == v44)
    {

      goto LABEL_44;
    }

    v50 = sub_228393460();

    if (v50)
    {
      break;
    }

    v14 = (v14 + 1) & v62;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_44:
  *a1 = *(*(v6 + 48) + 8 * v14);

  return 0;
}

uint64_t sub_2282D6520(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  v12 = sub_228393570();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_228393460() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_228393460() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_2282D78B8(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_2282D671C(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2283930E0();

    if (v17)
    {

      sub_22817A958(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_2283930D0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2282D6BE4(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2282D6E20(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_2282D7638(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_22817A958(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_228392C50();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_228392C60();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_2282D7A84(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2282D69BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
    v2 = sub_228393190();
    v16 = v2;
    sub_228393080();
    if (sub_228393100())
    {
      type metadata accessor for MedicationsDoseLogViewModel(0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2282D703C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_228393520();
        sub_228300540();
        sub_2283920B0();

        result = sub_228393570();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_228393100());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2282D6BE4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_2281F0644(0, a3, a4, a5, a6);
    v10 = sub_228393190();
    v24 = v10;
    sub_228393080();
    if (sub_228393100())
    {
      sub_22817A958(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2282D6E20(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_228392C50();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_228393100());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2282D6E20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_2281F0644(0, a2, a3, a4, a5);
  result = sub_228393180();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_228392C50();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}