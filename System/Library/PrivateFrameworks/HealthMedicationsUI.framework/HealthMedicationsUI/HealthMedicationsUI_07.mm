void sub_22821E71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationListItemCell()
{
  result = qword_280DDC4A8;
  if (!qword_280DDC4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MedicationListItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationListItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22821E950()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v8);
  if (v9)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for MedicationListItem();
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v2 = *(v7 + 48);

      sub_22817E6C8(v0 + v1, v8);
      if (v9)
      {
        if (swift_dynamicCast())
        {
          v3 = *(v6 + 16);

          v4 = sub_2283906B0();

          return (v4 & 1) == 0;
        }
      }

      else
      {
        sub_2282203EC(v8, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
      }
    }
  }

  else
  {
    sub_2282203EC(v8, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

void sub_22821EB5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283906E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
    goto LABEL_21;
  }

  v30 = ObjectType;
  sub_2281810DC(0, &qword_280DDCD60);
  type metadata accessor for MedicationListItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = v39;
  swift_beginAccess();
  v10 = *(v9 + 48);

  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v31 = v7;
  v11 = *(v38 + 16);

  v12 = sub_2283906B0();

  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
LABEL_21:
    sub_2282203EC(aBlock, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    goto LABEL_22;
  }

  v13 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v14 = v12;
  v15 = v38;
  swift_beginAccess();
  v16 = *(v15 + 48);

  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
    goto LABEL_19;
  }

  v17 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = *(v37 + 16);

  v19 = v31;
  ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(v18);

  (*(v13 + 8))(v19, v17);
  if ((v14 & 1) == 0)
  {
    return;
  }

  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v20 = *(v37 + 16);

  v21 = [v20 firstOntologyCoding];

  if (!v21)
  {
    return;
  }

  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    while (1)
    {
LABEL_22:
      sub_228393300();
      __break(1u);
LABEL_23:
      sub_2282203EC(aBlock, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    }
  }

  v22 = v37;
  swift_beginAccess();
  v23 = *(v22 + 32);

  v24 = [objc_allocWithZone(MEMORY[0x277D11530]) initWithHealthStore_];

  sub_22817E6C8(v1 + v8, aBlock);
  if (!v33)
  {
LABEL_19:
    sub_2282203EC(aBlock, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v25 = *(v36 + 16);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = v30;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v34 = sub_2282203E4;
  v35 = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  v33 = &block_descriptor_39;
  v29 = _Block_copy(aBlock);

  [v24 deleteDismissedPregnancyLactationInteractionsForMedication:v25 interactionTypes:0 completion:v29];
  _Block_release(v29);
}

uint64_t sub_22821F158(uint64_t a1, void *a2)
{
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  if (a2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      (*(v4 + 16))(v8, result + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_logger, v3);

      v13 = a2;
      v14 = sub_2283911A0();
      v15 = sub_2283925C0();

      if (!os_log_type_enabled(v14, v15))
      {

LABEL_17:
        return (*(v4 + 8))(v8, v3);
      }

      v16 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v16 = 136446978;
      v17 = sub_228393600();
      v19 = sub_2281C96FC(v17, v18, &v54);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v51 = 0xD000000000000015;
      v52 = 0x80000002283ACED0;
      v20 = sub_228392070();
      v22 = sub_2281C96FC(v20, v21, &v54);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2112;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        goto LABEL_16;
      }

      v24 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
      swift_beginAccess();
      sub_22817E6C8(Strong + v24, &v51);
      if (v53)
      {
        sub_2281810DC(0, &qword_280DDCD60);
        type metadata accessor for MedicationListItem();
        if (swift_dynamicCast())
        {

          v25 = *(v50 + 16);

          Strong = [v25 semanticIdentifier];

LABEL_16:
          *(v16 + 24) = Strong;
          v41 = v48;
          *v48 = Strong;
          *(v16 + 32) = 2080;
          v51 = a2;
          v42 = a2;
          sub_228220448(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], sub_2281810DC);
          v43 = sub_228392020();
          v45 = sub_2281C96FC(v43, v44, &v54);

          *(v16 + 34) = v45;
          _os_log_impl(&dword_22816B000, v14, v15, "%{public}s] Unexpected error deleting dismissed %s interactions for medication: %@, error: %s", v16, 0x2Au);
          sub_2282203EC(v41, &qword_27D823DA0, &qword_27D825620, 0x277D82BB8, sub_22817A958);
          MEMORY[0x22AAB7B80](v41, -1, -1);
          v46 = v49;
          swift_arrayDestroy();
          MEMORY[0x22AAB7B80](v46, -1, -1);
          MEMORY[0x22AAB7B80](v16, -1, -1);
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v26 = result;
      (*(v4 + 16))(v10, result + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_logger, v3);

      v27 = sub_2283911A0();
      v28 = sub_2283925E0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54 = v49;
        *v29 = 136446722;
        v31 = sub_228393600();
        v33 = sub_2281C96FC(v31, v32, &v54);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v51 = 0xD000000000000015;
        v52 = 0x80000002283ACED0;
        v34 = sub_228392070();
        v36 = sub_2281C96FC(v34, v35, &v54);

        *(v29 + 14) = v36;
        *(v29 + 22) = 2112;
        swift_beginAccess();
        v37 = swift_unknownObjectWeakLoadStrong();
        if (v37)
        {
          v38 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
          swift_beginAccess();
          sub_22817E6C8(v37 + v38, &v51);
          if (!v53)
          {
LABEL_23:
            sub_2282203EC(&v51, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
            goto LABEL_25;
          }

          sub_2281810DC(0, &qword_280DDCD60);
          type metadata accessor for MedicationListItem();
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_25:
            result = sub_228393300();
            __break(1u);
            return result;
          }

          v39 = *(v50 + 16);

          v37 = [v39 semanticIdentifier];

          v40 = v37;
        }

        else
        {
          v40 = 0;
        }

        *(v29 + 24) = v37;
        *v30 = v40;
        _os_log_impl(&dword_22816B000, v27, v28, "%{public}s] Successfully deleted dismissed %s interactions for medication: %@", v29, 0x20u);
        sub_2282203EC(v30, &qword_27D823DA0, &qword_27D825620, 0x277D82BB8, sub_22817A958);
        MEMORY[0x22AAB7B80](v30, -1, -1);
        v47 = v49;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v47, -1, -1);
        MEMORY[0x22AAB7B80](v29, -1, -1);
      }

      return (*(v4 + 8))(v10, v3);
    }
  }

  return result;
}

id MedicationListItemCell.trailingSwipeActionsConfigurationProvider.getter()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (sub_22821E950())
  {
    v2 = sub_22821FE0C(sub_22821FD0C, v1);
  }

  else
  {
    v2 = sub_228220018(sub_22821FC08, v0);
  }

  v3 = v2;
  sub_228180ED0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228396260;
  *(v4 + 32) = v3;
  sub_22817A958(0, &qword_27D8255D0, 0x277D753C0);
  v5 = v3;
  v6 = sub_228392190();

  v7 = [objc_opt_self() configurationWithActions_];

  return v7;
}

void sub_22821FA90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = a3;
    v9[4] = a4;
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    swift_retain_n();

    v11 = _sSo17UIAlertControllerC19HealthMedicationsUIE31makeAlertForArchivingMedication9onConfirm0K6CancelAByyc_yycSgtFZ_0(sub_2282204A4, v9, sub_2282204B0, v10);

    v12 = [v7 viewController];
    if (v12)
    {
      v13 = v12;
      [v12 presentViewController:v11 animated:1 completion:0];
    }
  }

  else
  {
    a3();
  }
}

uint64_t sub_22821FC10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22821EB5C();
  }

  return a2(1);
}

void sub_22821FC84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_22821EB5C();
    (a3)(1);
  }

  else
  {
    a3();
  }
}

void sub_22821FD38(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_2282203CC, v9);
}

id sub_22821FE0C(uint64_t a1, uint64_t a2)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22821FD38;
  aBlock[3] = &block_descriptor_10;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:v4 handler:{v5, 0xE000000000000000}];

  _Block_release(v5);

  v8 = sub_228391FC0();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  v10 = [objc_opt_self() systemYellowColor];
  [v7 setBackgroundColor_];

  return v7;
}

id sub_228220018(uint64_t a1, uint64_t a2)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22821FD38;
  aBlock[3] = &block_descriptor_32;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:v4 handler:{v5, 0xE000000000000000}];

  _Block_release(v5);

  v8 = sub_228391FC0();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  v10 = [objc_opt_self() systemYellowColor];
  [v7 setBackgroundColor_];

  return v7;
}

uint64_t sub_22822022C()
{
  result = sub_2283911B0();
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

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2282203E4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22821F158(a1, a2);
}

uint64_t sub_2282203EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_228220448(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_228220448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_228392F00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2282204B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_2282204DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InteractionNoneFoundItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_228220568()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  return v2;
}

uint64_t InteractionNoneFoundItem.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for InteractionNoneFoundCell();
  sub_228220A10(&qword_27D825630, 255, type metadata accessor for InteractionNoneFoundCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t InteractionNoneFoundItem.init()()
{
  type metadata accessor for InteractionNoneFoundCell();
  sub_228220A10(&qword_27D825630, 255, type metadata accessor for InteractionNoneFoundCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t static InteractionNoneFoundItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  v4 = v7;
  v3 = v9;
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  if (v4 == v8 && v3 == v10)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_228393460();
  }

  return v5 & 1;
}

uint64_t sub_228220790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2283920B0();
}

uint64_t InteractionNoneFoundItem.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t InteractionNoneFoundItem.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2282207F0()
{
  sub_228393520();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228220834(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v7 = *(*a1 + 16);
  v9 = *(*a1 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  v4 = v7;
  v3 = v9;
  v8 = *(v2 + 16);
  v10 = *(v2 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  if (v4 == v8 && v3 == v10)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_228393460();
  }

  return v5 & 1;
}

uint64_t sub_228220950()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return sub_2283920B0();
}

uint64_t sub_228220A10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_228220A58()
{
  sub_228393520();
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228220AB4()
{
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  return v2;
}

uint64_t sub_228220B0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228220C08(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_228220C68()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_228220CB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_228220D58()
{
  sub_22838F4A0();
  sub_228220FC0(&qword_27D824618, 255, MEMORY[0x277CC95F0]);
  v4 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  MEMORY[0x22AAB5C80](v2, v1);

  return v4;
}

uint64_t MedicationComponentsItem.__allocating_init(medicationName:componentsList:hasEducation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  type metadata accessor for MedicationComponentsItemCell();
  sub_228220FC0(&qword_27D825650, v12, type metadata accessor for MedicationComponentsItemCell);
  *(v11 + 48) = sub_22838FBB0();
  *(v11 + 56) = v13;
  sub_22838F490();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  return v11;
}

uint64_t MedicationComponentsItem.init(medicationName:componentsList:hasEducation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for MedicationComponentsItemCell();
  sub_228220FC0(&qword_27D825650, v9, type metadata accessor for MedicationComponentsItemCell);
  *(v4 + 48) = sub_22838FBB0();
  *(v4 + 56) = v10;
  sub_22838F490();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_228220FC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *MedicationComponentsItem.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24MedicationComponentsItem_uuid;
  v5 = sub_22838F4A0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t MedicationComponentsItem.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24MedicationComponentsItem_uuid;
  v5 = sub_22838F4A0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228221134()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

uint64_t sub_228221184()
{
  v1 = *v0;
  sub_22838F4A0();
  sub_228220FC0(&qword_27D824618, 255, MEMORY[0x277CC95F0]);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  MEMORY[0x22AAB5C80](v2, v3);

  return v5;
}

uint64_t sub_228221260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_2282212C4(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2282224E8();
  return sub_22819482C(v6);
}

uint64_t sub_228221334@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22822138C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282224E8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282213F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22822145C;
}

uint64_t sub_22822145C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282224E8();
  }

  return result;
}

id sub_2282214B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283AD0E0);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v5];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

id sub_228221680(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2282216E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v9 = sub_228392000();
  v10 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283AD0E0);

  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283A9590);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

id sub_2282218C8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsWithoutEducationLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MedicationComponentsItemCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228221AA8();

  return v10;
}

id sub_2282219C4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsWithoutEducationLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MedicationComponentsItemCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_228221AA8()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_2283913A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 contentView];
  v12 = sub_228221490();
  [v11 addSubview_];

  v13 = [v1 contentView];
  v14 = sub_228221660();
  [v13 addSubview_];

  sub_228391390();
  v15 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  MEMORY[0x22AAB6420](v5);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_228221CE4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel;
  if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel])
  {
    v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel];
  }

  else
  {
    v2 = sub_228221D4C(v0);
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_228221D4C(char *a1)
{
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22839CC40;
  v3 = sub_228221490();
  v4 = [v3 topAnchor];

  v5 = [a1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:8.0];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel;
  v9 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] bottomAnchor];
  v10 = [a1 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-8.0];
  *(v2 + 40) = v12;
  v13 = [*&a1[v8] leadingAnchor];
  v14 = [a1 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v17;
  v18 = [*&a1[v8] trailingAnchor];
  v19 = [a1 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v18 constraintEqualToAnchor_];

  *(v2 + 56) = v22;
  v23 = [a1 contentView];
  v24 = [v23 heightAnchor];

  v25 = [v24 constraintGreaterThanOrEqualToConstant_];
  *(v2 + 64) = v25;
  return v2;
}

uint64_t sub_22822207C(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = sub_2282220E0(v2, a2);
    v6 = *&v2[v3];
    *&v2[v3] = v5;
  }

  return v5;
}

uint64_t sub_2282220E0(char *a1, double a2)
{
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228399E10;
  v5 = sub_228221490();
  v6 = [v5 topAnchor];

  v7 = [a1 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v4 + 32) = v9;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel;
  v11 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] leadingAnchor];
  v12 = [a1 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 &selRef_logTimeChanged_ + 1];
  v15 = [v11 constraintEqualToAnchor_];

  *(v4 + 40) = v15;
  v16 = [*&a1[v10] trailingAnchor];
  v17 = [a1 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v4 + 48) = v20;
  v21 = sub_228221660();
  v22 = [v21 topAnchor];

  v23 = [*&a1[v10] bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:2.0];

  *(v4 + 56) = v24;
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel;
  v26 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel] leadingAnchor];
  v27 = [*&a1[v10] leadingAnchor];
  v28 = [v26 &selRef_freeTextMedicationName + 5];

  *(v4 + 64) = v28;
  v29 = [*&a1[v25] trailingAnchor];
  v30 = [*&a1[v10] trailingAnchor];
  v31 = [v29 &selRef_freeTextMedicationName + 5];

  *(v4 + 72) = v31;
  v32 = [*&a1[v25] bottomAnchor];
  v33 = [a1 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:a2];
  *(v4 + 80) = v35;
  return v4;
}

uint64_t sub_2282224E8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v7, v34);
  if (v34[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationComponentsItem();
    if (swift_dynamicCast())
    {
      v8 = v33;
      v9 = sub_228221490();
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);

      v12 = sub_228391FC0();

      [v9 setText_];

      v13 = sub_228221660();
      v34[0] = *(v8 + 32);
      sub_228222D8C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2281BF13C();

      sub_228391F90();

      v14 = sub_228391FC0();

      [v13 setText_];

      if (*(*(v8 + 32) + 16))
      {
        v15 = *(v8 + 40);
        v16 = objc_opt_self();
        if (v15 != 1)
        {
          sub_22822206C();
          sub_2281BF1B8();
          v29 = sub_228392190();

          [v16 activateConstraints_];

          sub_228221CE4();
          v30 = sub_228392190();

          [v16 deactivateConstraints_];

          sub_228221CD4();
          goto LABEL_13;
        }

        sub_228221CD4();
        sub_2281BF1B8();
        v17 = sub_228392190();

        [v16 activateConstraints_];

        sub_228221CE4();
      }

      else
      {
        v16 = objc_opt_self();
        sub_228221CE4();
        sub_2281BF1B8();
        v27 = sub_228392190();

        [v16 activateConstraints_];

        sub_228221CD4();
      }

      v28 = sub_228392190();

      [v16 deactivateConstraints_];

      sub_22822206C();
LABEL_13:
      v31 = sub_228392190();

      [v16 deactivateConstraints_];
    }
  }

  else
  {
    sub_22819482C(v34);
  }

  sub_228391150();
  v18 = v1;
  v19 = sub_2283911A0();
  v20 = sub_2283925C0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136446210;
    sub_22817E6C8(v1 + v7, v34);
    sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
    v23 = sub_228392040();
    v25 = sub_2281C96FC(v23, v24, &v33);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_22816B000, v19, v20, "Incorrect view model for MedicationListItemCell: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAB7B80](v22, -1, -1);
    MEMORY[0x22AAB7B80](v21, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id MedicationComponentsItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationComponentsItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationComponentsItem()
{
  result = qword_27D825668;
  if (!qword_27D825668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228222B68()
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

void sub_228222D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t InteractionFactorsLifestyleOptionsItem.__allocating_init(factor:enabled:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return InteractionFactorsLifestyleOptionsItem.init(factor:enabled:)(a1, a2);
}

uint64_t InteractionFactorsLifestyleOptionsItem.init(factor:enabled:)(uint64_t a1, char a2)
{
  *(v2 + qword_27D8256A8) = a1;
  *(v2 + qword_27D8256A0) = a2;
  sub_2281AF0A0();
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  v6 = [v4 secondarySystemBackgroundColor];
  sub_228392B80();

  HKDrugInteractionLifestyleFactor.image.getter(a1);
  v8 = 0;
  HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v8, a1);

  return sub_2283901A0();
}

uint64_t InteractionFactorsLifestyleOptionsItem.__deallocating_deinit()
{
  _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractionFactorsLifestyleOptionsItem()
{
  result = qword_27D8256B0;
  if (!qword_27D8256B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282230F0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_228223120()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_228393540();
  if (v6)
  {
    sub_2283920B0();
  }

  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2282231D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_2283920B0();
  sub_2283920B0();
  sub_228393540();
  if (v6)
  {
    sub_2283920B0();
  }

  return sub_228392C70();
}

uint64_t sub_228223270()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_228393540();
  if (v6)
  {
    sub_2283920B0();
  }

  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_228223324(uint64_t a1)
{
  v2 = sub_228223E38();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228223370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_228223ACC(v7, v9) & 1;
}

uint64_t sub_228223554()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v0[v1], v30);
  if (!v31)
  {
    return sub_22819482C(v30);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v32[2] = v27;
    v32[3] = v28;
    v33 = v29;
    v32[0] = v25;
    v32[1] = v26;
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView;
    [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView] removeFromSuperview];
    v4 = sub_228223BEC(v32);
    v5 = *&v0[v3];
    *&v0[v3] = v4;
    v6 = v4;

    [v0 addSubview_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_228180ED0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_228397F00;
    v8 = [v6 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [objc_allocWithZone(MEMORY[0x277CCDD30]) init];
    v11 = [v10 isiPad];

    if (v11)
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = objc_opt_self();
    v14 = [v8 constraintEqualToAnchor:v9 constant:v12];

    *(v7 + 32) = v14;
    v15 = [v6 trailingAnchor];
    v16 = [v0 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v7 + 40) = v17;
    v18 = [v6 topAnchor];
    v19 = [v0 topAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v7 + 48) = v20;
    v21 = [v6 bottomAnchor];
    v22 = [v0 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-30.0];

    *(v7 + 56) = v23;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v24 = sub_228392190();

    [v13 activateConstraints_];

    return sub_228223CE0(v32);
  }

  return result;
}

id sub_2282238CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationOnboardingHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228223970@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282239C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228223554();
  return sub_22819482C(a1);
}

uint64_t (*sub_228223A34(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228223A98;
}

uint64_t sub_228223A98(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228223554();
  }

  return result;
}

uint64_t sub_228223ACC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_228393460() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v8 = a1[6];
  v9 = a2[6];
  if ((sub_228392C60() & 1) == 0)
  {
    return 0;
  }

  if (a1[7] == a2[7] && a1[8] == a2[8])
  {
    return 1;
  }

  return sub_228393460();
}

id sub_228223BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = sub_228391FC0();
  if (v4)
  {
    v7 = sub_228391FC0();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D37640]) initWithTitle:v6 detailText:v7 icon:v5];

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor_];

  return v10;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_228223D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_228223D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228223DE0()
{
  result = qword_27D8256D0;
  if (!qword_27D8256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8256D0);
  }

  return result;
}

unint64_t sub_228223E38()
{
  result = qword_27D8256D8;
  if (!qword_27D8256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8256D8);
  }

  return result;
}

uint64_t sub_228223E8C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_228223ED4(uint64_t a1)
{
  v2 = sub_2282251AC(&qword_27D824350);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t MedicationMarkdownItemCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228223F94(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228224070();
  return sub_22819482C(v6);
}

uint64_t MedicationMarkdownItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228224070();
  return sub_22819482C(a1);
}

void sub_228224070()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v41);
  if (v41[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationMarkdownItem();
    if (swift_dynamicCast())
    {
      v8 = v40;
      v9 = *(v40 + 64);
      v10 = sub_228224588();
      v11 = v10;
      if (v9 == 1)
      {
        v12 = sub_228224660();
        [v11 insertArrangedSubview:v12 atIndex:0];
      }

      else
      {
        v21 = [v10 arrangedSubviews];

        sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
        v22 = sub_2283921A0();

        v23 = sub_228224660();
        v41[0] = v23;
        MEMORY[0x28223BE20](v23);
        *(&v39 - 2) = v41;
        v24 = sub_228309FEC(sub_2282251EC, (&v39 - 4), v22);

        if (v24)
        {
          [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView] removeArrangedSubview_];
        }
      }

      v25 = sub_228224768();
      v26 = v8[4];
      v27 = v8[5];

      v28 = sub_228391FC0();

      [v25 setText_];

      v29 = sub_2282248D4();
      if (v8[7])
      {
        v30 = v8[6];
        v31 = v8[7];

        v32 = sub_228391FC0();
      }

      else
      {
        v32 = 0;
      }

      [v29 setText_];

      v33 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel];
      if (v8[7])
      {
        v34 = v8[6];
        v35 = v33;

        sub_2283920A0();
        v37 = v36;

        if (v37)
        {

          v38 = 0;
LABEL_19:
          [v35 setHidden_];

          return;
        }
      }

      else
      {
        v35 = v33;
      }

      v38 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    sub_22819482C(v41);
  }

  sub_228391150();
  v13 = v1;
  v14 = sub_2283911A0();
  v15 = sub_2283925C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136446210;
    sub_22817E6C8(&v1[v7], v41);
    sub_228181D50();
    v18 = sub_228392040();
    v20 = sub_2281C96FC(v18, v19, &v40);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_22816B000, v14, v15, "Incorrect view model for MedicationMarkdownItem: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAB7B80](v17, -1, -1);
    MEMORY[0x22AAB7B80](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

void (*MedicationMarkdownItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228224554;
}

void sub_228224554(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_228224070();
  }
}

id sub_228224588()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228224660()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton);
  }

  else
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0x616369746972432ELL, 0xE90000000000006CLL);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_228224768()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    v9 = sub_228392190();
    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_2282248D4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D769D0];
    v7 = sub_228392AD0();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v8 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v9 = v5;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    v10 = sub_228392190();
    v11 = HKUIJoinStringsForAutomationIdentifier();

    [v9 setAccessibilityIdentifier_];
    v12 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

char *sub_228224A7C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_228391590();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel] = 0;
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  [v16 setUserInteractionEnabled_];
  v17 = sub_228224588();
  v18 = sub_228224768();
  [v17 addArrangedSubview_];

  v19 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView;
  v20 = *&v16[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView];
  v21 = sub_2282248D4();
  [v20 addArrangedSubview_];

  v22 = [v16 contentView];
  [v22 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v11 + 8))(v14, v10);
  v31 = *&v16[v19];
  v32 = [v16 contentView];
  [v31 hk:v32 alignHorizontalConstraintsWithView:v24 insets:{v26, v28, v30}];

  v33 = objc_opt_self();
  sub_228180ED0();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_228397F20;
  v35 = [*&v16[v19] topAnchor];
  v36 = [v16 contentView];
  v37 = [v36 topAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:16.0];
  *(v34 + 32) = v38;
  v39 = [*&v16[v19] bottomAnchor];
  v40 = [v16 contentView];

  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];

  *(v34 + 40) = v42;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v43 = sub_228392190();

  [v33 activateConstraints_];

  return v16;
}

id MedicationMarkdownItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228225008@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228225060(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228224070();
  return sub_22819482C(a1);
}

void (*sub_2282250CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228224554;
}

uint64_t sub_2282251AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationMarkdownItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MedicationNicknameNotes.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_228393540();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_228393540();
  }

  v3 = *v0;
  sub_228393540();
  sub_2283920B0();
  if (!v2)
  {
    return sub_228393540();
  }

LABEL_3:
  sub_228393540();

  return sub_2283920B0();
}

uint64_t MedicationNicknameNotes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_228393520();
  if (!v2)
  {
    sub_228393540();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_228393540();
    return sub_228393570();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_228393540();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22822537C()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_228393540();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_228393540();
  }

  v3 = *v0;
  sub_228393540();
  sub_2283920B0();
  if (!v2)
  {
    return sub_228393540();
  }

LABEL_3:
  sub_228393540();

  return sub_2283920B0();
}

uint64_t sub_228225434()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_228393520();
  if (!v2)
  {
    sub_228393540();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_228393540();
    return sub_228393570();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_228393540();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t _s19HealthMedicationsUI23MedicationNicknameNotesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_228393460() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_228393460() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_228225590()
{
  result = qword_27D825710;
  if (!qword_27D825710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825710);
  }

  return result;
}

uint64_t sub_2282255E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_228225640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t InteractionFactorsHeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InteractionFactorsHeaderItem.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_228225980(&qword_27D825718, 255, type metadata accessor for InteractionFactorsHeaderCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t InteractionFactorsHeaderItem.init()()
{
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_228225980(&qword_27D825718, 255, type metadata accessor for InteractionFactorsHeaderCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t static InteractionFactorsHeaderItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t InteractionFactorsHeaderItem.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t InteractionFactorsHeaderItem.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22822585C(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t sub_228225980(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2282259C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t InteractionStackedMedmojiDataProvider.firstItemConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 20);

  return sub_2281C5FCC(v3, a1);
}

uint64_t InteractionStackedMedmojiDataProvider.firstItemConfig.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 20);

  return sub_228227E20(a1, v3);
}

uint64_t InteractionStackedMedmojiDataProvider.secondItemConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 24);

  return sub_2281C5FCC(v3, a1);
}

uint64_t InteractionStackedMedmojiDataProvider.secondItemConfig.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 24);

  return sub_228227E20(a1, v3);
}

uint64_t InteractionStackedMedmojiDataProvider.reversedItemConfig()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  v5 = *(v4 + 24);
  a1[3] = v4;
  a1[4] = sub_228228208(&qword_27D825730, type metadata accessor for InteractionStackedMedmojiDataProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2281C5FCC(v1 + v5, boxed_opaque_existential_1 + *(v4 + 20));
  result = sub_2281C5FCC(v1 + *(v4 + 20), boxed_opaque_existential_1 + *(v4 + 24));
  *boxed_opaque_existential_1 = v3;
  return result;
}

BOOL static InteractionStackedMedmojiDataProvider.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  if (!_s19HealthMedicationsUI34DrugInteractionVisualizationConfigO2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s19HealthMedicationsUI34DrugInteractionVisualizationConfigO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_228225E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = *(a1 + 24);
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_2281C5FCC(v3 + v6, boxed_opaque_existential_1 + *(a1 + 20));
  result = sub_2281C5FCC(v3 + *(a1 + 20), boxed_opaque_existential_1 + *(a1 + 24));
  *boxed_opaque_existential_1 = v5;
  return result;
}

uint64_t sub_228225EAC(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (static DrugInteractionVisualizationConfig.== infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static DrugInteractionVisualizationConfig.== infix(_:_:)(a1 + v6, a2 + v6);
}

id sub_228225F54(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    v6 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_width) * 0.5;
    v7 = *MEMORY[0x277CDA138];
    v8 = v5;
    v9 = v1;
    sub_228392B00();
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    v10 = *(v1 + v2);
    *(v9 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v11 = v3;
  return v4;
}

id sub_228226040(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_2282260C4(uint64_t a1, uint64_t *a2)
{
  sub_228227E84(a1, v6, &qword_27D823888, sub_228227EF0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  sub_228227F54(v6, v3 + v4);
  swift_endAccess();
  sub_228226168();
  return sub_2282285E8(v6, &qword_27D823888, sub_228227EF0);
}

void sub_228226168()
{
  v1 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v97 = &v95[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v100 = &v95[-v6];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v95[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v95[-v10];
  sub_228228328(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v98 = &v95[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v95[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v95[-v18];
  v20 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig);
  swift_beginAccess();
  v21 = v20[3];
  if (v21)
  {
    v99 = v0;
    v22 = v20[4];
    v23 = __swift_project_boxed_opaque_existential_0(v20, v21);
    v24 = *(v21 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = &v95[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v24 + 16))(v27);
    (*(v22 + 24))(v21, v22);
    (*(v24 + 8))(v27, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_228228588(v11, type metadata accessor for DrugInteractionVisualizationConfig);
      v28 = v20[3];
      v29 = v99;
      if (!v28)
      {
        return;
      }

      v30 = v20[4];
      v31 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
      v32 = *(v28 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v31);
      v35 = &v95[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v32 + 16))(v35);
      (*(v30 + 24))(v28, v30);
      (*(v32 + 8))(v35, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = sub_228227FF8(*v9);
        v37 = sub_228225F3C();
        [v37 setImage_];

        [*(v29 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView) setHidden_];
        v38 = sub_228225F30();
        [v38 setHidden_];

        v39 = v20[3];
        if (!v39)
        {
          return;
        }
      }

      else
      {
        sub_228228588(v9, type metadata accessor for DrugInteractionVisualizationConfig);
        v39 = v20[3];
        if (!v39)
        {
          return;
        }
      }
    }

    else
    {
      sub_2281AA8D4(v11, v19);
      v29 = v99;
      v40 = sub_228225F30();
      v41 = MEMORY[0x277D116C8];
      sub_228227E84(v19, v101, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      [*(v29 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView) setHidden_];
      v42 = sub_228225F3C();
      [v42 setHidden_];

      sub_2282285E8(v19, &qword_280DDBD20, v41);
      v39 = v20[3];
      if (!v39)
      {
        return;
      }
    }

    v43 = v20[4];
    v44 = __swift_project_boxed_opaque_existential_0(v20, v39);
    v45 = *(v39 - 8);
    v46 = *(v45 + 64);
    MEMORY[0x28223BE20](v44);
    v48 = &v95[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v45 + 16))(v48);
    v49 = v100;
    (*(v43 + 32))(v39, v43);
    (*(v45 + 8))(v48, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_228228588(v49, type metadata accessor for DrugInteractionVisualizationConfig);
      v50 = v20[3];
      if (v50)
      {
        v51 = v20[4];
        v52 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
        v53 = *(v50 - 8);
        v54 = *(v53 + 64);
        MEMORY[0x28223BE20](v52);
        v56 = &v95[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v53 + 16))(v56);
        v57 = v97;
        (*(v51 + 32))(v50, v51);
        (*(v53 + 8))(v56, v50);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v58 = EnumCaseMultiPayload;
          v59 = sub_228227FF8(*v57);
          v60 = v29;
          v61 = sub_228226034();
          [v61 setImage_];

          v62 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView;
          [*(v60 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView) setHidden_];
          v63 = sub_228225F48();
          [v63 setHidden_];

          v64 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint;
          v65 = *(v60 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint);
          if (v65)
          {
            v66 = objc_opt_self();
            sub_228180ED0();
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_228396260;
            *(v67 + 32) = v65;
            sub_2281BF1B8();
            v68 = v65;
            v69 = sub_228392190();

            [v66 deactivateConstraints_];
          }

          v70 = v99;
          v71 = [*(v99 + v62) topAnchor];
          if (v58 == 1)
          {
            v72 = sub_228225F3C();
          }

          else
          {
            v72 = sub_228225F30();
          }

          v73 = [v72 bottomAnchor];

          v92 = [v71 constraintEqualToAnchor:v73 constant:-4.0];
          v93 = *(v70 + v64);
          *(v70 + v64) = v92;
          v94 = v92;

          [v94 setActive_];
        }

        else
        {
          sub_228228588(v57, type metadata accessor for DrugInteractionVisualizationConfig);
        }
      }
    }

    else
    {
      v74 = EnumCaseMultiPayload;
      v75 = v98;
      sub_2281AA8D4(v49, v98);
      v76 = sub_228225F48();
      sub_228227E84(v75, v101, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      v77 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView;
      [*(v29 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView) setHidden_];
      v78 = sub_228226034();
      [v78 setHidden_];

      v79 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint;
      v80 = *(v29 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint);
      if (v80)
      {
        v81 = objc_opt_self();
        sub_228180ED0();
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_228396260;
        *(v82 + 32) = v80;
        sub_2281BF1B8();
        v83 = v80;
        v84 = sub_228392190();

        [v81 deactivateConstraints_];
      }

      v85 = [*(v29 + v77) topAnchor];
      if (v74 == 1)
      {
        v86 = sub_228225F3C();
      }

      else
      {
        v86 = sub_228225F30();
      }

      v87 = v86;
      v88 = [v86 bottomAnchor];

      v89 = [v85 constraintEqualToAnchor:v88 constant:-4.0];
      v90 = *(v29 + v79);
      *(v29 + v79) = v89;
      v91 = v89;

      [v91 setActive_];
      sub_2282285E8(v75, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }
  }
}

uint64_t sub_228226CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  return sub_228227E84(v1 + v3, a1, &qword_27D823888, sub_228227EF0);
}

uint64_t sub_228226D14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  sub_228227F54(a1, v1 + v3);
  swift_endAccess();
  sub_228226168();
  return sub_2282285E8(a1, &qword_27D823888, sub_228227EF0);
}

void (*sub_228226D9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228226E00;
}

void sub_228226E00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_228226168();
  }
}

char *InteractionStackedMedmojiView.init(width:)(double a1)
{
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView] = 0;
  v2 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_width] = a1;
  v69.receiver = v1;
  v69.super_class = type metadata accessor for InteractionStackedMedmojiView();
  v3 = objc_msgSendSuper2(&v69, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = sub_228225F48();
  [v3 addSubview_];

  v5 = sub_228226034();
  [v3 addSubview_];

  v6 = sub_228225F30();
  [v3 addSubview_];

  v7 = sub_228225F3C();
  [v3 addSubview_];

  v68 = objc_opt_self();
  sub_228180ED0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22839D300;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView;
  v10 = [*&v3[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView] leadingAnchor];
  v11 = [v3 &selRef_logTimeChanged_ + 1];

  v12 = [v10 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [*&v3[v9] trailingAnchor];
  v14 = [v3 trailingAnchor];

  v15 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v15;
  v16 = [*&v3[v9] topAnchor];
  v17 = [v3 topAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v8 + 48) = v18;
  v19 = [*&v3[v9] widthAnchor];
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_width;
  v21 = [v19 constraintEqualToConstant_];

  *(v8 + 56) = v21;
  v22 = [*&v3[v9] heightAnchor];
  v23 = [v22 &selRef:*&v3[v20] setDateTimeStyle:? + 1];

  *(v8 + 64) = v23;
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView;
  v25 = [*&v3[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView] &selRef_logTimeChanged_ + 1];
  v26 = [v3 &selRef_logTimeChanged_ + 1];

  v27 = [v25 constraintEqualToAnchor_];
  *(v8 + 72) = v27;
  v28 = [*&v3[v24] trailingAnchor];
  v29 = [v3 trailingAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v8 + 80) = v30;
  v31 = [*&v3[v24] topAnchor];
  v32 = [v3 topAnchor];

  v33 = [v31 constraintEqualToAnchor_];
  *(v8 + 88) = v33;
  v34 = [*&v3[v24] widthAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v8 + 96) = v35;
  v36 = [*&v3[v24] heightAnchor];
  v37 = [v36 constraintEqualToConstant_];

  *(v8 + 104) = v37;
  v38 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView;
  v39 = [*&v3[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView] leadingAnchor];
  v40 = [v3 leadingAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v8 + 112) = v41;
  v42 = [*&v3[v38] trailingAnchor];
  v43 = [v3 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v8 + 120) = v44;
  v45 = [*&v3[v38] bottomAnchor];
  v46 = [v3 bottomAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v8 + 128) = v47;
  v48 = [*&v3[v38] widthAnchor];
  v49 = [v48 constraintEqualToConstant_];

  *(v8 + 136) = v49;
  v50 = [*&v3[v38] heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v8 + 144) = v51;
  v52 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView;
  v53 = [*&v3[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView] leadingAnchor];
  v54 = [v3 leadingAnchor];

  v55 = [v53 constraintEqualToAnchor_];
  *(v8 + 152) = v55;
  v56 = [*&v3[v52] trailingAnchor];
  v57 = [v3 trailingAnchor];

  v58 = [v56 constraintEqualToAnchor_];
  *(v8 + 160) = v58;
  v59 = [*&v3[v52] bottomAnchor];
  v60 = [v3 bottomAnchor];

  v61 = [v59 constraintEqualToAnchor_];
  *(v8 + 168) = v61;
  v62 = [*&v3[v52] widthAnchor];
  v63 = [v62 constraintEqualToConstant_];

  *(v8 + 176) = v63;
  v64 = [*&v3[v52] heightAnchor];
  v65 = [v64 constraintEqualToConstant_];

  *(v8 + 184) = v65;
  sub_2281BF1B8();
  v66 = sub_228392190();

  [v68 activateConstraints_];

  return v3;
}

id InteractionStackedMedmojiView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InteractionStackedMedmojiView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionStackedMedmojiView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionStackedMedmojiView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s19HealthMedicationsUI34DrugInteractionVisualizationConfigO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390D50();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228228328(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v39 - v9;
  sub_228228644();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  sub_2282286C4();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 56);
  sub_2281C5FCC(a1, v26);
  sub_2281C5FCC(a2, &v26[v27]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2281C5FCC(v26, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2282285E8(v21, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v30 = 0;
      v29 = sub_2282286C4;
      goto LABEL_15;
    }

    v31 = *(v11 + 48);
    sub_2281AA8D4(v21, v14);
    sub_2281AA8D4(&v26[v27], &v14[v31]);
    v32 = v42;
    v33 = *(v42 + 48);
    if (v33(v14, 1, v4) == 1)
    {
      if (v33(&v14[v31], 1, v4) == 1)
      {
        sub_2282285E8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
        v30 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      v34 = v41;
      sub_228227E84(v14, v41, &qword_280DDBD20, MEMORY[0x277D116C8]);
      if (v33(&v14[v31], 1, v4) != 1)
      {
        v36 = v40;
        (*(v32 + 32))(v40, &v14[v31], v4);
        sub_228228208(&qword_27D8257B8, MEMORY[0x277D116C8]);
        v37 = sub_228391FB0();
        v38 = *(v32 + 8);
        v38(v36, v4);
        v38(v34, v4);
        sub_2282285E8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
        v29 = type metadata accessor for DrugInteractionVisualizationConfig;
        if (v37)
        {
          v30 = 1;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      (*(v32 + 8))(v34, v4);
    }

    sub_228228588(v14, sub_228228644);
LABEL_13:
    v30 = 0;
    goto LABEL_14;
  }

  sub_2281C5FCC(v26, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = sub_2282286C4;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = *v19 == *&v26[v27];
LABEL_14:
    v29 = type metadata accessor for DrugInteractionVisualizationConfig;
    goto LABEL_15;
  }

  v30 = 0;
LABEL_15:
  sub_228228588(v26, v29);
  return v30;
}

uint64_t sub_228227E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_228227E84(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228228328(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_228227EF0()
{
  result = qword_27D826170;
  if (!qword_27D826170)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D826170);
  }

  return result;
}

uint64_t sub_228227F54(uint64_t a1, uint64_t a2)
{
  sub_228228328(0, &qword_27D823888, sub_228227EF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_228227FF8(uint64_t a1)
{
  if (a1 != 1 && a1 != 3 && a1 != 2)
  {
    return 0;
  }

  type metadata accessor for InteractionFactorsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_228391FC0();

  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  return v4;
}

void _s19HealthMedicationsUI29InteractionStackedMedmojiViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282281B0(uint64_t a1)
{
  result = sub_228228208(&qword_27D825770, type metadata accessor for InteractionStackedMedmojiDataProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228228208(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228228250()
{
  sub_2282282C4();
  if (v0 <= 0x3F)
  {
    sub_22822837C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2282282C4()
{
  if (!qword_27D825788)
  {
    sub_228228328(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (!v1)
    {
      atomic_store(v0, &qword_27D825788);
    }
  }
}

void sub_228228328(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_22822837C()
{
  if (!qword_27D825790)
  {
    type metadata accessor for HKDrugInteractionLifestyleFactor(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D825790);
    }
  }
}

void sub_22822843C()
{
  type metadata accessor for HKDrugInteractionSeverityLevel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DrugInteractionVisualizationConfig(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_228228588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282285E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228228328(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228228644()
{
  if (!qword_27D8257A8)
  {
    sub_228228328(255, &qword_280DDBD20, MEMORY[0x277D116C8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8257A8);
    }
  }
}

void sub_2282286C4()
{
  if (!qword_27D8257B0)
  {
    type metadata accessor for DrugInteractionVisualizationConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8257B0);
    }
  }
}

uint64_t sub_2282287A8()
{
  v1 = v0;
  v2 = *v0;
  sub_22822A63C();
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + qword_27D8257C8);
  v18 = *(v0 + qword_27D8257C0);
  v19 = v8;
  sub_22822A740(0, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
  sub_22822A740(0, &qword_27D825858, sub_22822A7A4);
  sub_22822A8F4(&qword_27D825868, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
  sub_22822A8F4(&qword_27D825870, &qword_27D825858, sub_22822A7A4);
  sub_2283919E0();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22822A7F4;
  *(v11 + 24) = v10;
  sub_228229B24(&qword_27D825878, sub_22822A63C);
  v12 = v17;
  v13 = sub_228391AC0();

  (*(v4 + 8))(v7, v12);
  v14 = *(v1 + qword_27D8257E0);
  *(v1 + qword_27D8257E0) = v13;
}

uint64_t sub_228228A5C(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 != 2)
  {
    v3 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v4 = result;
      if ((v3 - 7) > 1)
      {
      }

      else
      {
        v5 = *(result + qword_27D8257D8);
        v8 = v2 & 1;
        sub_22822A3C4(v5, &v8);
        v6 = *(v4 + qword_27D8257D0);
        v8 = v2 & 1;
        sub_22822A3C4(v6, &v8);
        v8 = v2 & 1;
        v7 = sub_228228B54(&v8);
        sub_228194894(v7);

        sub_22838FF60();
      }
    }
  }

  return result;
}

uint64_t sub_228228B54(unsigned __int8 *a1)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_228229BC0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = *a1;
  sub_228229BC0(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F30;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v29 = *algn_280DDCF28;
  v30 = qword_280DDCF20;
  v28 = qword_280DDCF30;
  v11 = sub_22838F0C0();
  v23 = v12;
  v24 = v11;
  sub_228391390();
  v27 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v13 = sub_2283913A0();
  v14 = *(v13 - 8);
  v25 = *(v14 + 56);
  v26 = v14 + 56;
  v25(v8, 0, 1, v13);
  v32 = v9;
  sub_22828FEA4(&v32);
  swift_allocObject();
  v21 = v9;
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  v20 = v1;
  v15 = MEMORY[0x277D10E20];
  sub_22822A54C(0, &qword_27D825838, MEMORY[0x277D10E20]);
  v22 = v16;
  *(v10 + 56) = v16;
  v17 = sub_22822A5B0(&qword_27D825840, &qword_27D825838, v15);
  *(v10 + 64) = v17;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_228229B6C();
  sub_22838FB70();
  sub_22838F0C0();
  v30 = v18;
  sub_228391390();
  sub_228392BD0();
  sub_228391370();
  v25(v8, 0, 1, v13);
  v31 = v21;
  sub_22828FEA4(&v31);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  *(v10 + 96) = v22;
  *(v10 + 104) = v17;
  __swift_allocate_boxed_opaque_existential_1((v10 + 72));
  sub_22838FB70();
  return v10;
}

uint64_t sub_228229050@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + *a1);
    sub_228391870();
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

uint64_t sub_2282290D4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + *a4);
    sub_228391850();
  }

  return result;
}

uint64_t sub_228229184()
{
  v1 = *(v0 + qword_27D8257C0);

  v2 = *(v0 + qword_27D8257C8);

  v3 = *(v0 + qword_27D8257D0);

  v4 = *(v0 + qword_27D8257D8);

  v5 = *(v0 + qword_27D8257E0);
}

uint64_t sub_2282291F4()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8257C0);

  v2 = *(v0 + qword_27D8257C8);

  v3 = *(v0 + qword_27D8257D0);

  v4 = *(v0 + qword_27D8257D8);

  v5 = *(v0 + qword_27D8257E0);

  return swift_deallocClassInstance();
}

uint64_t sub_228229300()
{
  type metadata accessor for ScheduleDurationCell();
  sub_228229B24(&qword_27D825810, type metadata accessor for ScheduleDurationCell);
  sub_2283926D0();
  v0 = MEMORY[0x277D11008];
  sub_22822A54C(0, &qword_27D825818, MEMORY[0x277D11008]);
  sub_22822A5B0(&qword_27D825828, &qword_27D825818, v0);
  return sub_2283926B0();
}

uint64_t sub_2282293E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_228393460();

    if ((v9 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_228229B24(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v11 = sub_22838F0C0();
  v13 = v12;
  type metadata accessor for ScheduleHeaderCell();
  sub_228229B24(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  v14 = sub_22838FBB0();
  v16 = v15;
  sub_22838FBB0();

  a3[3] = &type metadata for ScheduleHeaderItem;
  a3[4] = sub_228194464();
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v11;
  *(result + 24) = v13;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v14;
  *(result + 64) = v16;
  return result;
}

uint64_t sub_228229600()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_228229748@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22838F4A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22822ABC0(*a1);
  sub_228229BC0(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v10 = *(sub_22838FEF0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_228397F40;
  sub_228194894(v9);

  sub_22838F490();
  sub_22838F450();
  (*(v5 + 8))(v8, v4);
  result = sub_22838FED0();
  *a2 = v13;
  return result;
}

void *sub_22822995C()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283901C0();
  v5 = sub_2283900C0();
  swift_unknownObjectRelease();
  [v5 contentInsets];
  [v5 setContentInsets_];
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_228229AA4()
{
  sub_22838FE20();

  return swift_deallocClassInstance();
}

uint64_t sub_228229B24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228229B6C()
{
  result = qword_27D825820;
  if (!qword_27D825820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825820);
  }

  return result;
}

void sub_228229BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228229C24(void *a1)
{
  v2 = v1;
  v55 = v2;
  v54 = *v2;
  v47 = MEMORY[0x277D85248];
  sub_228229BC0(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - v6;
  v8 = sub_228391DD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822A82C();
  v43 = v13;
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822A944();
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822AA10();
  v50 = v22;
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  MEMORY[0x28223BE20](v22);
  v44 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822AAEC();
  v51 = v25;
  v53 = *(v25 - 8);
  v26 = *(v53 + 64);
  MEMORY[0x28223BE20](v25);
  v46 = v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_22822A740(0, &qword_27D8245A0, sub_2281DFB88);
  sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
  sub_22822A8F4(&qword_27D8245A8, &qword_27D8245A0, sub_2281DFB88);
  sub_2283919A0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C0], v8);
  v28 = sub_2283927C0();
  (*(v9 + 8))(v12, v8);
  v56 = v28;
  v29 = sub_228392730();
  v30 = *(v29 - 8);
  v41 = *(v30 + 56);
  v42 = v30 + 56;
  v41(v7, 1, 1, v29);
  sub_228229B24(&qword_27D825890, sub_22822A82C);
  v40[1] = sub_2281A1504();
  v31 = v43;
  sub_228391A70();
  v32 = v47;
  sub_22822B114(v7, &qword_280DDBAD0, v47);

  (*(v45 + 8))(v16, v31);
  *(swift_allocObject() + 16) = v54;
  sub_228229BC0(0, &qword_27D8258A0, MEMORY[0x277D10F78], MEMORY[0x277D83940]);
  sub_228229B24(&qword_27D8258A8, sub_22822A944);
  v33 = v44;
  v34 = v48;
  sub_2283919F0();

  (*(v49 + 8))(v21, v34);
  v35 = sub_228392790();
  v56 = v35;
  v41(v7, 1, 1, v29);
  sub_228229B24(&qword_27D8258B8, sub_22822AA10);
  v36 = v46;
  v37 = v50;
  sub_228391A70();
  sub_22822B114(v7, &qword_280DDBAD0, v32);

  (*(v52 + 8))(v33, v37);
  sub_228229B24(&qword_27D8258C0, sub_22822AAEC);
  v38 = v51;
  sub_228391980();
  (*(v53 + 8))(v36, v38);
  sub_228390260();
  sub_22838FD50();

  return sub_22838FE10();
}

uint64_t sub_22822A3C4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_228391870();
  if (v6 == 255)
  {
    return sub_228391850();
  }

  result = sub_228391870();
  if ((v2 ^ v6))
  {
    return result;
  }

  if ((v2 & 1) == 0)
  {
    if ((v6 & 1) != 0 || (v5 * 7) >> 64 == (7 * v5) >> 63)
    {
      return sub_228391850();
    }

    goto LABEL_15;
  }

  if (v6)
  {
    v4 = ceil(v5 / 7.0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          return sub_228391850();
        }

LABEL_17:
        __break(1u);
        return result;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return sub_228391850();
}

void sub_22822A54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228229B6C();
    v7 = a3(a1, &type metadata for PauseUsePeriod, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22822A5B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22822A54C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22822A63C()
{
  if (!qword_27D825848)
  {
    sub_22822A740(255, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
    sub_22822A740(255, &qword_27D825858, sub_22822A7A4);
    sub_22822A8F4(&qword_27D825868, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
    sub_22822A8F4(&qword_27D825870, &qword_27D825858, sub_22822A7A4);
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825848);
    }
  }
}

void sub_22822A740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_22822A7A4()
{
  if (!qword_27D825860)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825860);
    }
  }
}

uint64_t sub_22822A7F4(uint64_t result, unsigned __int8 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_228228A5C(result, a2);
}

uint64_t sub_22822A7FC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1 + 1);
}

void sub_22822A82C()
{
  if (!qword_27D825880)
  {
    sub_22822A740(255, &qword_27D8245A0, sub_2281DFB88);
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    sub_22822A8F4(&qword_27D8245A8, &qword_27D8245A0, sub_2281DFB88);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825880);
    }
  }
}

uint64_t sub_22822A8F4(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22822A740(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22822A944()
{
  if (!qword_27D825888)
  {
    sub_22822A82C();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228229B24(&qword_27D825890, sub_22822A82C);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825888);
    }
  }
}

void sub_22822AA10()
{
  if (!qword_27D825898)
  {
    sub_22822A944();
    sub_228229BC0(255, &qword_27D8258A0, MEMORY[0x277D10F78], MEMORY[0x277D83940]);
    sub_228229B24(&qword_27D8258A8, sub_22822A944);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825898);
    }
  }
}

void sub_22822AAEC()
{
  if (!qword_27D8258B0)
  {
    sub_22822AA10();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228229B24(&qword_27D8258B8, sub_22822AA10);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8258B0);
    }
  }
}

uint64_t sub_22822ABC0(void *a1)
{
  v2 = sub_2283911B0();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F6C0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228229BC0(0, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for CycleData();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v7;
    v24 = a1;
    sub_22838F620();
    sub_2282CD948(v24, v14, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      sub_22822B114(v18, &qword_27D824550, type metadata accessor for CycleData);
    }

    else
    {
      sub_22822B184(v18, v23);
      CycleData.localizedNextPhaseDateChangeDescription.getter();
      if (v25)
      {
        sub_228229BC0(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_228397F40;
        v42[0] = 0x74497265746F6F46;
        v42[1] = 0xEB000000005F6D65;
        sub_22838F490();
        v27 = sub_22838F450();
        v29 = v28;
        (*(v39 + 8))(v10, v6);
        MEMORY[0x22AAB5C80](v27, v29);

        *(v26 + 56) = sub_228390330();
        *(v26 + 64) = sub_228229B24(&qword_27D8258C8, MEMORY[0x277D110D8]);
        __swift_allocate_boxed_opaque_existential_1((v26 + 32));
        sub_228390320();

        sub_22822B1E8(v23);
        return v26;
      }

      sub_22822B1E8(v23);
    }
  }

  sub_228391190();
  v31 = a1;
  v32 = sub_2283911A0();
  v33 = sub_2283925C0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 136315138;
    v42[2] = a1;
    sub_2281DFB88();
    v36 = sub_228392EF0();
    v38 = sub_2281C96FC(v36, v37, v42);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_22816B000, v32, v33, "[MedicationsPauseDataSource] Unable to set the next phase footer information because contextual information is nil. Current Schedule: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AAB7B80](v35, -1, -1);
    MEMORY[0x22AAB7B80](v34, -1, -1);
  }

  (*(v40 + 8))(v5, v41);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22822B114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228229BC0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22822B184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22822B1E8(uint64_t a1)
{
  v2 = type metadata accessor for CycleData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22822B254()
{
  sub_228390360();
  result = sub_228390350();
  qword_27D8258D0 = v1;
  return result;
}

double sub_22822B288()
{
  if (qword_27D8232D0 != -1)
  {
    swift_once();
  }

  result = *&qword_27D8258D0 * 0.5;
  *&qword_27D8258D8 = *&qword_27D8258D0 * 0.5;
  return result;
}

uint64_t DurationDatePickerItem.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DurationDatePickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t DurationDatePickerItem.uniqueIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for DurationDatePickerItem() + 20);
  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0xD000000000000017;
}

uint64_t type metadata accessor for DurationDatePickerItem()
{
  result = qword_27D825938;
  if (!qword_27D825938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DurationDatePickerItem.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DurationDatePickerItem() + 20);
  v4 = sub_22838F4A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DurationDatePickerItem.title.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DurationDatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DurationDatePickerItem.placeholderText.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DurationDatePickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DurationDatePickerItem.cellAccessories.getter()
{
  v1 = *(v0 + *(type metadata accessor for DurationDatePickerItem() + 32));
}

uint64_t DurationDatePickerItem.cellAccessories.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DurationDatePickerItem() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DurationDatePickerItem.backgroundConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DurationDatePickerItem() + 36);
  v4 = sub_2283913A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DurationDatePickerItem.backgroundConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DurationDatePickerItem() + 36);
  v4 = sub_2283913A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22822B840(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for DurationDatePickerItem() + 40));
  v6 = *v5;
  v7 = v5[1];
  sub_228176FA8(v2);
  result = sub_228176EC8(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t DurationDatePickerItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem() + 40));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DurationDatePickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem() + 40));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22822B980@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DurationDatePickerItem() + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F0D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_22822BA14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DurationDatePickerItem() + 44));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3);
  result = sub_228176EC8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DurationDatePickerItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem() + 44));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DurationDatePickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem() + 44));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22822BB94@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DurationDatePickerItem() + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_22822BC28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DurationDatePickerItem() + 48));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3);
  result = sub_228176EC8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DurationDatePickerItem.deletionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem() + 48));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DurationDatePickerItem.deletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem() + 48));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DurationDatePickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for DurationDatePickerItem();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t DurationDatePickerItem.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for DurationDatePickerItem();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t DurationDatePickerItem.datePickerStyle.setter(uint64_t a1)
{
  result = type metadata accessor for DurationDatePickerItem();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t DurationDatePickerItem.minimumDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DurationDatePickerItem() + 64);

  return sub_22822BFC0(v3, a1);
}

uint64_t sub_22822BFC0(uint64_t a1, uint64_t a2)
{
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DurationDatePickerItem.minimumDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DurationDatePickerItem() + 64);

  return sub_22822C098(a1, v3);
}

uint64_t sub_22822C098(uint64_t a1, uint64_t a2)
{
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static DurationDatePickerItem.defaultBackgroundConfiguration.getter()
{
  sub_228391390();
  v0 = [objc_opt_self() systemBackgroundColor];
  return sub_228391370();
}

uint64_t DurationDatePickerItem.init(uuid:title:placeholderText:isEditEnabled:cellAccessories:backgroundConfiguration:datePickerMode:datePickerStyle:minimumDate:dataProvider:updateHandler:deletionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  type metadata accessor for DurationDatePickerCollectionViewCell();
  sub_22822EC78(&qword_27D8258E8, v20, type metadata accessor for DurationDatePickerCollectionViewCell);
  *a9 = sub_22838FBB0();
  a9[1] = v21;
  v22 = type metadata accessor for DurationDatePickerItem();
  v23 = (a9 + v22[7]);
  v24 = (a9 + v22[10]);
  v25 = (a9 + v22[11]);
  v26 = (a9 + v22[12]);
  v27 = v22[16];
  v28 = sub_22838F440();
  (*(*(v28 - 8) + 56))(a9 + v27, 1, 1, v28);
  v29 = v22[5];
  v30 = sub_22838F4A0();
  (*(*(v30 - 8) + 32))(a9 + v29, a1, v30);
  v31 = (a9 + v22[6]);
  *v31 = a2;
  v31[1] = a3;
  *v23 = a4;
  v23[1] = a5;
  *(a9 + v22[13]) = a6;
  *(a9 + v22[14]) = a10;
  *(a9 + v22[15]) = a11;
  sub_22822C098(a12, a9 + v27);
  *v24 = a13;
  v24[1] = a14;
  *v25 = a15;
  v25[1] = a16;
  *v26 = a17;
  v26[1] = a18;
  *(a9 + v22[8]) = a7;
  v32 = v22[9];
  v33 = sub_2283913A0();
  v34 = *(*(v33 - 8) + 32);

  return v34(a9 + v32, a8, v33);
}

uint64_t sub_22822C430(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_22822C474(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = v2[1];
  }

  sub_228176FA8(*v2);
  return v4;
}

uint64_t sub_22822C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 40));
  v7 = v6[1];
  result = sub_228176EC8(*v6);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_22822C4F8(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822C53C;
}

uint64_t sub_22822C540(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = v2[1];
  }

  sub_228176FA8(*v2);
  return v4;
}

uint64_t sub_22822C580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 44));
  v7 = v6[1];
  result = sub_228176EC8(*v6);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_22822C5C4(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 44);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822F0FC;
}

uint64_t sub_22822C608(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (*(result + 16) + *(result + 24));
  if (!*result)
  {
    v1 = 0;
  }

  *v2 = *result;
  v2[1] = v1;
  return result;
}

unint64_t sub_22822C628(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = sub_22838F450();
  MEMORY[0x22AAB5C80](v3);

  return 0xD000000000000017;
}

uint64_t sub_22822C68C(uint64_t a1)
{
  v2 = sub_22822EC78(&qword_27D825920, 255, type metadata accessor for DurationDatePickerItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_22822C70C(uint64_t a1, void **a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v5);
  return sub_22822E05C(v7, sub_228181D50);
}

uint64_t sub_22822C7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22822C818(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v4);
  return sub_22822E05C(a1, sub_228181D50);
}

uint64_t (*sub_22822C8C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22822C92C;
}

uint64_t sub_22822C92C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xC0))(result);
  }

  return result;
}

id sub_22822C990()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_22822C9F8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22822C9F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *MEMORY[0x277D12788];
  v2 = sub_228392000();
  v4 = v3;
  sub_22822EC78(&qword_27D8258E8, v3, type metadata accessor for DurationDatePickerCollectionViewCell);
  v5 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v5);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v6 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v7 = *MEMORY[0x277D76918];
  v8 = sub_228392AD0();
  [v0 setFont_];

  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setUserInteractionEnabled_];
  return v0;
}

id sub_22822CC6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setPreferredDatePickerStyle_];
  [v0 setDatePickerMode_];
  v1 = *MEMORY[0x277D12788];
  v5 = sub_228392000();
  v6 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000022, 0x80000002283AD8C0);

  v3 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

id DurationDatePickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DurationDatePickerCollectionViewCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker;
  *(v0 + v2) = sub_22822CC6C();
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints) = MEMORY[0x277D84F90];
  sub_228393300();
  __break(1u);
}

uint64_t sub_22822CFDC()
{
  v1 = [v0 contentView];
  v2 = sub_22822C990();
  [v1 addSubview_];

  v3 = [v0 contentView];
  [v3 addSubview_];

  sub_22822DF3C();
  sub_22822D8B4(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F40;
  v5 = sub_228391640();
  v6 = MEMORY[0x277D74DB8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_22822D154(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LODWORD(v3) = sub_2283928C0() & 1;
  v5 = [a2 preferredContentSizeCategory];
  LODWORD(v4) = sub_2283928C0() & 1;

  if (v3 != v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_22822DF3C();
    }
  }
}

uint64_t sub_22822D22C()
{
  v1 = v0;
  v2 = sub_22838F440();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  sub_22822D8B4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], v5);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - v15;
  sub_22822D8B4(0, &qword_27D825918, type metadata accessor for DurationDatePickerItem, v5);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v46 - v19;
  v21 = type metadata accessor for DurationDatePickerItem();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v26], v48);
  if (!v49)
  {
    sub_22822E05C(v48, sub_228181D50);
    (*(v22 + 56))(v20, 1, 1, v21);
    return sub_22822D97C(v20, &qword_27D825918, type metadata accessor for DurationDatePickerItem);
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v27 = swift_dynamicCast();
  (*(v22 + 56))(v20, v27 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_22822D97C(v20, &qword_27D825918, type metadata accessor for DurationDatePickerItem);
  }

  sub_22822D918(v20, v25);
  v28 = v21[9];
  v29 = sub_2283913A0();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v16, &v25[v28], v29);
  (*(v30 + 56))(v16, 0, 1, v29);
  MEMORY[0x22AAB6420](v16);
  v31 = sub_22822C990();
  v32 = &v25[v21[6]];
  v33 = *v32;
  v34 = *(v32 + 1);
  v35 = sub_228391FC0();
  [v31 setText_];

  v36 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker];
  [v36 setDatePickerMode_];
  [v36 setPreferredDatePickerStyle_];
  sub_22822BFC0(&v25[v21[16]], v12);
  v37 = *(v47 + 48);
  v38 = 0;
  if (v37(v12, 1, v2) != 1)
  {
    v38 = sub_22838F380();
    (*(v47 + 8))(v12, v2);
  }

  [v36 setMinimumDate_];

  [v1 setUserInteractionEnabled_];
  v39 = &v25[v21[10]];
  if (!*v39)
  {
    (*(v47 + 56))(v10, 1, 1, v2);
    goto LABEL_11;
  }

  v40 = v39[1];
  (*v39)(v25);
  if (v37(v10, 1, v2) == 1)
  {
LABEL_11:
    sub_22822D97C(v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    goto LABEL_12;
  }

  v42 = v46;
  v41 = v47;
  (*(v47 + 32))(v46, v10, v2);
  v43 = sub_22838F380();
  [v36 setDate:v43 animated:1];

  (*(v41 + 8))(v42, v2);
LABEL_12:
  sub_22822DF3C();
  [v36 addTarget:v1 action:sel_pickerDateChanged_ forControlEvents:0xFFFFFFFFLL];
  sub_22822D9EC(v36);
  v45 = *&v25[v21[8]];

  sub_2283928F0();
  return sub_22822E05C(v25, type metadata accessor for DurationDatePickerItem);
}

void sub_22822D8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22822D918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DurationDatePickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22822D97C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22822D8B4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22822D9EC(void *a1)
{
  v2 = v1;
  v37[0] = a1;
  v37[1] = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v37 - v11;
  sub_22822D8B4(0, &qword_27D825918, type metadata accessor for DurationDatePickerItem, v8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v37 - v15;
  v17 = type metadata accessor for DurationDatePickerItem();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v22, v38);
  if (v38[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v23 = swift_dynamicCast();
    (*(v18 + 56))(v16, v23 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_22822D918(v16, v21);
      v24 = &v21[*(v17 + 44)];
      v25 = *v24;
      if (*v24)
      {
        v26 = *(v24 + 1);
        v27 = [v37[0] date];
        sub_22838F3E0();

        v28 = sub_22838F440();
        (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
        v25(v21, v12);
        sub_22822D97C(v12, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      }

      return sub_22822E05C(v21, type metadata accessor for DurationDatePickerItem);
    }
  }

  else
  {
    sub_22822E05C(v38, sub_228181D50);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_22822D97C(v16, &qword_27D825918, type metadata accessor for DurationDatePickerItem);
  sub_228391170();
  v30 = sub_2283911A0();
  v31 = sub_2283925E0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136315138;
    v34 = sub_228393600();
    v36 = sub_2281C96FC(v34, v35, v38);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_22816B000, v30, v31, "[%s] item is not a DatePickerItem", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAB7B80](v33, -1, -1);
    MEMORY[0x22AAB7B80](v32, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_22822DF3C()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints;
  v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints];
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v4 = sub_228392190();

  [v1 deactivateConstraints_];

  v5 = *&v0[v2];
  *&v0[v2] = MEMORY[0x277D84F90];

  v6 = [v0 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_2283928C0();
  if (v6)
  {
    sub_22822E0BC();
  }

  else
  {
    sub_22822E57C();
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_22822E05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22822E0BC()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399E10;
  v2 = sub_22822C990();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  if (qword_27D8232D0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27D8258D0;
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&qword_27D8258D0];

  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:6.0];
  *(v1 + 40) = v12;
  v13 = [v0 separatorLayoutGuide];
  v14 = [v13 leadingAnchor];

  v15 = [*&v0[v8] leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v1 + 48) = v16;
  v17 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker];
  v18 = [v17 leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:v6];
  *(v1 + 56) = v21;
  v22 = [v17 trailingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 trailingAnchor];

  if (qword_27D8232D8 != -1)
  {
    swift_once();
  }

  v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-*&qword_27D8258D8];

  *(v1 + 64) = v25;
  v26 = [v17 topAnchor];
  v27 = [*&v0[v8] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];

  *(v1 + 72) = v28;
  v29 = [v17 bottomAnchor];
  v30 = [v0 contentView];
  v31 = [v30 bottomAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-6.0];
  *(v1 + 80) = v32;
  v33 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v34 = sub_228392190();
  [v33 activateConstraints_];

  v35 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints] = v1;
}

uint64_t sub_22822E57C()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399190;
  v2 = sub_22822C990();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  if (qword_27D8232D0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27D8258D0;
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&qword_27D8258D0];

  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:6.0];
  *(v1 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [*&v0[v8] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:6.0];

  *(v1 + 48) = v16;
  v17 = [v0 separatorLayoutGuide];
  v18 = [v17 leadingAnchor];

  v19 = [*&v0[v8] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 56) = v20;
  v21 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker];
  v22 = [v21 leadingAnchor];
  v23 = [*&v0[v8] trailingAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:v6];

  *(v1 + 64) = v24;
  v25 = [v0 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v21 trailingAnchor];
  if (qword_27D8232D8 != -1)
  {
    swift_once();
  }

  v28 = [v26 constraintEqualToAnchor:v27 constant:*&qword_27D8258D8];

  *(v1 + 72) = v28;
  v29 = [v21 topAnchor];
  v30 = [v0 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:6.0];
  *(v1 + 80) = v32;
  v33 = [v0 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v21 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:6.0];

  *(v1 + 88) = v36;
  v37 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v38 = sub_228392190();
  [v37 activateConstraints_];

  v39 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints] = v1;
}

id DurationDatePickerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationDatePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DurationDatePickerCollectionViewCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22822EC78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22822ECC0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22838FE40();
}

uint64_t sub_22822ED34@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_22822EDD8()
{
  v0 = MEMORY[0x277D837D0];
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_22821B3F8(319, &qword_27D825070, v0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22822D8B4(319, &qword_27D825950, MEMORY[0x277D74AE0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2283913A0();
        if (v4 <= 0x3F)
        {
          sub_22822D8B4(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Mode(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UIDatePickerStyle(319);
              if (v7 <= 0x3F)
              {
                sub_22822D8B4(319, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
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

uint64_t sub_22822F0A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22822F0D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for MedicationSourceListViewController()
{
  result = qword_27D825958;
  if (!qword_27D825958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22822F190(void *a1, void *a2)
{
  sub_22822F844(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for MedicationSourceListDataSource();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2282B9378(a2, a1);
  sub_2283901F0();
  sub_22822F844(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228397F40;
  v13 = MEMORY[0x277D10F80];
  *(v12 + 32) = v11;
  *(v12 + 40) = v13;

  sub_228390220();

  v14 = sub_228390480();
  v15 = sub_2283922D0();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_2283922A0();

  v16 = v14;
  v17 = sub_228392290();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v11;
  sub_2281DC568(0, 0, v7, &unk_22839D7F8, v18);

  [v16 setModalPresentationStyle_];

  return v16;
}

void sub_22822F444()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MedicationSourceListViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v3 = sub_228391FC0();

    [v0 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void sub_22822F560(void *a1)
{
  v1 = a1;
  sub_22822F444();
}

id sub_22822F608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSourceListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22822F648()
{
  [v0 setModalPresentationStyle_];
  v1 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v3 = sub_228392640();
  [v1 setRightBarButtonItem_];
}

void sub_22822F790(void *a1)
{
  v1 = a1;
  sub_22822F648();
}

void sub_22822F7D8(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_22822F844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22822F8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_2282B4618(a1, v4, v5, v6);
}

uint64_t MedicationRegularEducationDataSource.__allocating_init(with:analyticsManager:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return MedicationRegularEducationDataSource.init(with:analyticsManager:)(a1, a2);
}

uint64_t MedicationRegularEducationDataSource.init(with:analyticsManager:)(uint64_t a1, uint64_t a2)
{
  v4 = qword_27D825968;
  *(v2 + qword_27D825968) = 0;
  *(v2 + qword_27D825970) = MEMORY[0x277D84FA0];
  *(v2 + qword_27D825978) = a2;
  *(v2 + v4) = a1;
  v5 = qword_280DDCF18;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_22838F0C0();
  v7 = (v2 + qword_27D825980);
  *v7 = v6;
  v7[1] = v8;
  v9 = sub_22838F920();

  sub_22822FB8C(a1);
  sub_228391870();
  sub_228230A78(v11, v9);

  return v9;
}

uint64_t MedicationRegularEducationDataSource.__allocating_init(with:analyticsManager:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_228231C1C(a1, a2);

  return v7;
}

uint64_t MedicationRegularEducationDataSource.init(with:analyticsManager:)(uint64_t *a1, uint64_t a2)
{
  v2 = sub_228231C1C(a1, a2);

  return v2;
}

uint64_t sub_22822FB8C(uint64_t a1)
{
  v19[0] = a1;
  v2 = MEMORY[0x277D85248];
  sub_228231FE8(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  sub_228232114();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[2] = a1;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v13 = sub_228392790();
  v19[5] = v13;
  v14 = sub_228392730();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_2281A65B4();
  sub_228231DB4(&qword_27D8241C0, sub_2281A65B4);
  sub_2281A1504();
  sub_228391A70();
  sub_2282321E0(v6, &qword_280DDBAD0, v2);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v19[0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_228231DB4(&unk_27D8259C0, sub_228232114);

  sub_228391AC0();

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22822FEAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_228391870();
    sub_228230A78(v2, v1);
  }

  return result;
}

uint64_t sub_22822FF20(uint64_t a1)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v11 = sub_228390090();
  *(v12 + 16) = 0x4024000000000000;
  v11(v22, 0);
  if (*(v1 + qword_27D825968))
  {
    v23 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    v24 = &protocol witness table for HKMedicationUserDomainConcept;

    sub_228391870();
    v13 = v23;
    v14 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    (v14[6])(v20, v13, v14);
    if (v21)
    {
      __swift_project_boxed_opaque_existential_0(v20, v21);
      v15 = sub_22838F960();
      __swift_destroy_boxed_opaque_existential_0(v20);
      if (v15)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            v16 = sub_228390090();
            *v17 = 0x4024000000000000;
            v16(v20, 0);
          }
        }

        else
        {
          sub_228390000();
          (*(v4 + 8))(v10, v3);
          (*(v4 + 32))(v10, v8, v3);
        }
      }
    }

    else
    {

      sub_22823203C(v20, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
    }

    sub_228231D60(v22);
  }

  v18 = sub_2283900C0();
  (*(v4 + 8))(v10, v3);
  return v18;
}

uint64_t sub_228230220()
{
  v1 = *(v0 + qword_27D825980 + 8);

  v2 = *(v0 + qword_27D825978);

  v3 = *(v0 + qword_27D825968);

  v4 = *(v0 + qword_27D825970);
}

uint64_t MedicationRegularEducationDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D825980 + 8);

  v2 = *(v0 + qword_27D825978);

  v3 = *(v0 + qword_27D825968);

  v4 = *(v0 + qword_27D825970);

  return v0;
}

uint64_t MedicationRegularEducationDataSource.__deallocating_deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D825980 + 8);

  v2 = *(v0 + qword_27D825978);

  v3 = *(v0 + qword_27D825968);

  v4 = *(v0 + qword_27D825970);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationRegularEducationDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_228231DB4(&qword_27D824620, type metadata accessor for MedicationEducationAndComponentsItemCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
}

uint64_t sub_2282304C0()
{
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_228231DB4(&qword_27D824620, type metadata accessor for MedicationEducationAndComponentsItemCell);
  sub_2283926B0();
  sub_2283904F0();
  return sub_2283926B0();
}

uint64_t MedicationRegularEducationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391590();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v15 == a2)
  {

    goto LABEL_13;
  }

  v17 = sub_228393460();

  if (v17)
  {
LABEL_13:
    v22 = v3 + qword_27D825980;
    v23 = *(v3 + qword_27D825980);
    v24 = *(v22 + 8);

    sub_228391500();
    v25 = sub_22838FB60();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_22838FB50();
    a3[3] = v25;
    result = sub_228231DB4(&qword_27D823960, MEMORY[0x277D10E18]);
    a3[4] = result;
    *a3 = v28;
    return result;
  }

  v18 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_228393460();

    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!*(v3 + qword_27D825968))
  {
LABEL_20:
    a3[3] = sub_22838FC00();
    a3[4] = sub_228231DB4(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_22838FBF0();
  }

  v30 = *(v3 + qword_27D825968);

  sub_228391870();
  v31 = v40;
  v32 = [v40 localizedOntologyEducationContent];
  if (v32 && (v33 = v32, v34 = [v32 primarySection], v33, v34))
  {
    v35 = sub_228392A90();

    v42 = v35;
    sub_228231DFC();
    sub_228231DB4(&qword_27D825080, sub_228231DFC);
    sub_228391F90();

    v40 = 0x74497265746F6F46;
    v41 = 0xEB000000005F6D65;
    sub_22838F490();
    v36 = sub_22838F450();
    v38 = v37;
    (*(v8 + 8))(v11, v7);
    MEMORY[0x22AAB5C80](v36, v38);

    a3[3] = sub_228390330();
    a3[4] = sub_228231DB4(&qword_27D8244F8, MEMORY[0x277D110D8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_228390320();
  }

  else
  {

    a3[3] = sub_22838FC00();
    a3[4] = sub_228231DB4(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_22838FBF0();
  }
}

uint64_t sub_228230A78(void *a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228231FE8(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - v9;
  v11 = sub_22838FEF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v56 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v69[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v69[4] = &protocol witness table for HKMedicationUserDomainConcept;
  v69[0] = a1;
  sub_228180FB0(v69, v68);
  v23 = a1;
  sub_22832642C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2282321E0(v10, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v54 = v4;
    v55 = v3;
    v25 = *(v12 + 32);
    v25(v22, v10, v11);
    (*(v12 + 16))(v20, v22, v11);
    v24 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_228198AA0(v26 > 1, v27 + 1, 1, v24);
    }

    (*(v12 + 8))(v22, v11);
    *(v24 + 2) = v27 + 1;
    v25(&v24[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v27], v20, v11);
    v3 = v55;
    v4 = v54;
  }

  sub_2283266DC(2, &v62);
  if (v63)
  {
    sub_22816DFFC(&v62, v65);
    v28 = *(v59 + qword_27D825978);
    LOBYTE(v62) = 0;
    sub_228327428(&v62, v28, &v60);
    if (v61)
    {
      sub_22816DFFC(&v60, &v62);
    }

    else
    {
      sub_22823203C(&v60, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v60) = 0;
      sub_228326FA8(&v62);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_228397F30;
    v33 = v66;
    v32 = v67;
    v34 = __swift_project_boxed_opaque_existential_0(v65, v66);
    *(v31 + 56) = v33;
    *(v31 + 64) = *(v32 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
    (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v34, v33);
    v37 = v63;
    v36 = v64;
    v38 = __swift_project_boxed_opaque_existential_0(&v62, v63);
    *(v31 + 96) = v37;
    *(v31 + 104) = *(v36 + 8);
    v39 = __swift_allocate_boxed_opaque_existential_1((v31 + 72));
    (*(*(v37 - 8) + 16))(v39, v38, v37);
    v40 = v58;
    sub_22838F490();
    sub_22838F450();
    (*(v4 + 8))(v40, v3);
    v41 = v57;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_228198AA0(0, *(v24 + 2) + 1, 1, v24);
    }

    v43 = *(v24 + 2);
    v42 = *(v24 + 3);
    if (v43 >= v42 >> 1)
    {
      v24 = sub_228198AA0(v42 > 1, v43 + 1, 1, v24);
    }

    *(v24 + 2) = v43 + 1;
    (*(v12 + 32))(&v24[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v43], v41, v11);
    __swift_destroy_boxed_opaque_existential_0(&v62);
  }

  else
  {
    sub_22823203C(&v62, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v29 = *(v59 + qword_27D825978);
    LOBYTE(v65[0]) = 0;
    sub_228327428(v65, v29, &v62);
    v30 = v4;
    if (v63)
    {
      sub_22816DFFC(&v62, v65);
    }

    else
    {
      sub_22823203C(&v62, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v62) = 0;
      sub_228326FA8(v65);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_228397F40;
    v46 = v66;
    v45 = v67;
    v47 = __swift_project_boxed_opaque_existential_0(v65, v66);
    *(v44 + 56) = v46;
    *(v44 + 64) = *(v45 + 8);
    v48 = __swift_allocate_boxed_opaque_existential_1((v44 + 32));
    (*(*(v46 - 8) + 16))(v48, v47, v46);
    v49 = v58;
    sub_22838F490();
    sub_22838F450();
    (*(v30 + 8))(v49, v3);
    v50 = v56;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_228198AA0(0, *(v24 + 2) + 1, 1, v24);
    }

    v52 = *(v24 + 2);
    v51 = *(v24 + 3);
    if (v52 >= v51 >> 1)
    {
      v24 = sub_228198AA0(v51 > 1, v52 + 1, 1, v24);
    }

    *(v24 + 2) = v52 + 1;
    (*(v12 + 32))(&v24[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v52], v50, v11);
  }

  __swift_destroy_boxed_opaque_existential_0(v65);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  sub_228231D60(v68);
  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_228231340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a2;
  v7 = sub_22838F4A0();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228231FE8(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - v12;
  v14 = sub_22838FEF0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v57 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v58 = &v56 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v71[3] = a3;
  v71[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_228180FB0(v71, v70);
  sub_22832642C(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2282321E0(v13, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = v7;
    v28 = *(v15 + 32);
    v28(v25, v13, v14);
    (*(v15 + 16))(v23, v25, v14);
    v27 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_228198AA0(v29 > 1, v30 + 1, 1, v27);
    }

    (*(v15 + 8))(v25, v14);
    *(v27 + 2) = v30 + 1;
    v28(&v27[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v30], v23, v14);
    v7 = v56;
  }

  sub_2283266DC(2, &v64);
  if (v65)
  {
    sub_22816DFFC(&v64, v67);
    v31 = *(v61 + qword_27D825978);
    LOBYTE(v64) = 0;
    sub_228327428(&v64, v31, &v62);
    if (v63)
    {
      sub_22816DFFC(&v62, &v64);
    }

    else
    {
      sub_22823203C(&v62, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v62) = 0;
      sub_228326FA8(&v64);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_228397F30;
    v34 = v68;
    v35 = v69;
    v36 = __swift_project_boxed_opaque_existential_0(v67, v68);
    *(v33 + 56) = v34;
    *(v33 + 64) = *(v35 + 8);
    v37 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    v38 = v65;
    v39 = v66;
    v40 = __swift_project_boxed_opaque_existential_0(&v64, v65);
    *(v33 + 96) = v38;
    *(v33 + 104) = *(v39 + 8);
    v41 = __swift_allocate_boxed_opaque_existential_1((v33 + 72));
    (*(*(v38 - 8) + 16))(v41, v40, v38);
    v42 = v59;
    sub_22838F490();
    sub_22838F450();
    (*(v60 + 8))(v42, v7);
    v43 = v58;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_228198AA0(0, *(v27 + 2) + 1, 1, v27);
    }

    v45 = *(v27 + 2);
    v44 = *(v27 + 3);
    if (v45 >= v44 >> 1)
    {
      v27 = sub_228198AA0(v44 > 1, v45 + 1, 1, v27);
    }

    *(v27 + 2) = v45 + 1;
    (*(v15 + 32))(&v27[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v45], v43, v14);
    __swift_destroy_boxed_opaque_existential_0(&v64);
  }

  else
  {
    sub_22823203C(&v64, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v32 = *(v61 + qword_27D825978);
    LOBYTE(v67[0]) = 0;
    sub_228327428(v67, v32, &v64);
    if (v65)
    {
      sub_22816DFFC(&v64, v67);
    }

    else
    {
      sub_22823203C(&v64, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v64) = 0;
      sub_228326FA8(v67);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_228397F40;
    v47 = v68;
    v48 = v69;
    v49 = __swift_project_boxed_opaque_existential_0(v67, v68);
    *(v46 + 56) = v47;
    *(v46 + 64) = *(v48 + 8);
    v50 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    (*(*(v47 - 8) + 16))(v50, v49, v47);
    v51 = v59;
    sub_22838F490();
    sub_22838F450();
    (*(v60 + 8))(v51, v7);
    v52 = v57;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_228198AA0(0, *(v27 + 2) + 1, 1, v27);
    }

    v54 = *(v27 + 2);
    v53 = *(v27 + 3);
    if (v54 >= v53 >> 1)
    {
      v27 = sub_228198AA0(v53 > 1, v54 + 1, 1, v27);
    }

    *(v27 + 2) = v54 + 1;
    (*(v15 + 32))(&v27[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v54], v52, v14);
  }

  __swift_destroy_boxed_opaque_existential_0(v67);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  sub_228231D60(v70);
  return __swift_destroy_boxed_opaque_existential_0(v71);
}

uint64_t sub_228231C1C(uint64_t *a1, uint64_t a2)
{
  *(v2 + qword_27D825968) = 0;
  *(v2 + qword_27D825970) = MEMORY[0x277D84FA0];
  *(v2 + qword_27D825978) = a2;
  v4 = qword_280DDCF18;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22838F0C0();
  v6 = (v2 + qword_27D825980);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_22838F920();
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, v9);

  sub_228231340(v11, v8, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_228231DB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228231DFC()
{
  if (!qword_27D827E10)
  {
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827E10);
    }
  }
}

uint64_t type metadata accessor for MedicationRegularEducationDataSource()
{
  result = qword_27D8259A0;
  if (!qword_27D8259A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MedicationRegularEducationDataSource.__allocating_init(with:analyticsManager:)()
{
  return (*(v0 + class metadata base offset for MedicationRegularEducationDataSource + 80))();
}

{
  return (*(v0 + class metadata base offset for MedicationRegularEducationDataSource + 88))();
}

void sub_228231FE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_22823203C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2282320AC(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2282320AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228232114()
{
  if (!qword_27D8259B8)
  {
    sub_2281A65B4();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228231DB4(&qword_27D8241C0, sub_2281A65B4);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8259B8);
    }
  }
}

uint64_t sub_2282321E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228231FE8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22823223C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22822FEAC();
}

id MedicationChartUserInfo.__allocating_init(takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount] = a5;
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount] = a6;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval;
  v16 = sub_22838F080();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a1, v16);
  sub_228180FB0(a2, &v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication]);
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount] = a3;
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount] = a4;
  v20.receiver = v14;
  v20.super_class = v7;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v17 + 8))(a1, v16);
  return v18;
}

id MedicationChartUserInfo.init(takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount] = a5;
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount] = a6;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval;
  v12 = sub_22838F080();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v6[v11], a1, v12);
  sub_228180FB0(a2, &v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication]);
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount] = a3;
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount] = a4;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for MedicationChartUserInfo(0);
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v13 + 8))(a1, v12);
  return v14;
}

uint64_t sub_2282325DC()
{
  sub_228233E5C(0, &unk_280DDCD70, MEMORY[0x277CC9A70]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v26 - v3;
  sub_228233E5C(0, &qword_280DDCD80, MEMORY[0x277CC99E8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v26 - v7;
  v9 = sub_22838F080();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval;
  v15 = sub_22838F6C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v28 = v16 + 56;
  v29 = v17;
  v17(v8, 1, 1, v15);
  v18 = sub_22838F700();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v26[2] = v19 + 56;
  v27 = v20;
  v20(v4, 1, 1, v18);
  v31 = v4;
  sub_22838F060();
  v21 = sub_228233EB0();
  v33 = v0;
  v30 = v14;
  v26[1] = v21;
  LOBYTE(v4) = sub_228391FB0();
  v22 = *(v10 + 8);
  v32 = v10 + 8;
  v22(v13, v9);
  v23 = 0;
  if ((v4 & 1) == 0)
  {
    v29(v8, 1, 1, v15);
    v27(v31, 1, 1, v18);
    sub_22838F060();
    v24 = sub_228391FB0();
    v22(v13, v9);
    v23 = v24 ^ 1;
  }

  return v23 & 1;
}

double sub_2282329D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) / v1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount);
  if (v4)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount) / v4;
  }

  return v3 + v2;
}

id MedicationChartPoint.__allocating_init(startDate:endDate:takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v17 = a4[3];
  v18 = a4[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v20 = sub_2282338CC(a1, a2, a3, v19, a5, a6, a7, a8, v8, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v20;
}

id MedicationChartPoint.init(startDate:endDate:takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v17 = a4[3];
  v18 = a4[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v20 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_228233688(a1, a2, a3, v22, a5, a6, v8, v17, a7, a8, v18);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v24;
}

uint64_t sub_228232C30@<X0>(uint64_t *a1@<X8>)
{
  sub_228233E5C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = sub_22838F380();
  v8 = sub_22838F380();
  v9 = HKUIMidDate();

  if (v9)
  {
    sub_22838F3E0();

    v10 = sub_22838F440();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  }

  else
  {
    v11 = sub_22838F440();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2281E793C(v6, boxed_opaque_existential_1);
}

id sub_228232DB4(void *a1)
{
  v1 = a1;
  sub_228232C30(v4);

  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v2 = sub_228393450();
  __swift_destroy_boxed_opaque_existential_0(v4);

  return v2;
}

void sub_228232E2C(uint64_t a1@<X8>)
{
  if (sub_2282325DC())
  {
    v3 = sub_2282329D8();
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) + *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
  }

  *(a1 + 24) = MEMORY[0x277D839F8];
  *a1 = v3;
}

uint64_t sub_228232F18()
{
  v1 = sub_2282325DC();
  sub_228233A0C();
  result = swift_allocObject();
  *(result + 16) = xmmword_228397F30;
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) / v3;
    }

    else
    {
      v4 = 0.0;
    }

    v8 = MEMORY[0x277D839F8];
    *(result + 56) = MEMORY[0x277D839F8];
    *(result + 32) = v4;
    v9 = result;
    v10 = sub_2282329D8();
    result = v9;
    *(v9 + 88) = v8;
    *(v9 + 64) = v10;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
    v6 = MEMORY[0x277D839F8];
    *(result + 56) = MEMORY[0x277D839F8];
    *(result + 32) = v5;
    v7 = v5 + *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
    *(result + 88) = v6;
    *(result + 64) = v7;
  }

  return result;
}

uint64_t sub_228233054@<X0>(uint64_t a1@<X8>)
{
  result = sub_2282325DC();
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) / v4;
    }

    else
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
  }

  *(a1 + 24) = MEMORY[0x277D839F8];
  *a1 = v5;
  return result;
}

id sub_228233204(void *a1)
{
  v1 = a1;
  if (sub_2282325DC())
  {
    sub_2282329D8();
  }

  else
  {
    v2 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount];
    v3 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount];
  }

  v4 = sub_228393480();

  return v4;
}

id sub_228233294()
{
  v1 = sub_22838F080();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
  v7 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
  v8 = *(v2 + 16);
  v8(v5, v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval, v1);
  sub_228180FB0(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_medication, v17);
  v9 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
  v10 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount);
  v11 = type metadata accessor for MedicationChartUserInfo(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount] = v6;
  *&v12[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount] = v7;
  v8(&v12[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval], v5, v1);
  sub_228180FB0(v17, &v12[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication]);
  *&v12[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount] = v9;
  *&v12[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount] = v10;
  v16.receiver = v12;
  v16.super_class = v11;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v17);
  (*(v2 + 8))(v5, v1);
  return v13;
}

id MedicationChartPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_228233568(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_228233688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v33[3] = a8;
  v33[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount] = a9;
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount] = a10;
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_startDate;
  v22 = sub_22838F440();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v24(&a7[v21], a1, v22);
  v24(&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_endDate], a2, v22);
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval;
  v26 = sub_22838F080();
  v27 = *(v26 - 8);
  (*(v27 + 16))(&a7[v25], a3, v26);
  sub_228180FB0(v33, &a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_medication]);
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount] = a5;
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount] = a6;
  v32.receiver = a7;
  v32.super_class = type metadata accessor for MedicationChartPoint(0);
  v28 = objc_msgSendSuper2(&v32, sel_init);
  (*(v27 + 8))(a3, v26);
  v29 = *(v23 + 8);
  v29(a2, v22);
  v29(a1, v22);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v28;
}

id sub_2282338CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a6;
  v19 = *(a10 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](a1);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(type metadata accessor for MedicationChartPoint(0));
  (*(v19 + 16))(v22, a4, a10);
  return sub_228233688(a1, a2, a3, v22, a5, v26, v23, a10, a7, a8, a11);
}

void sub_228233A0C()
{
  if (!qword_27D8247D8)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8247D8);
    }
  }
}

uint64_t sub_228233A88()
{
  result = sub_22838F080();
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

uint64_t sub_228233B68()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22838F080();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_228233E5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_228233EB0()
{
  result = qword_27D825A80;
  if (!qword_27D825A80)
  {
    sub_22838F080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825A80);
  }

  return result;
}

uint64_t type metadata accessor for FormStepResult()
{
  result = qword_27D825A90;
  if (!qword_27D825A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228233F74()
{
  sub_228390C30();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKMedicationFreeTextFormTypeCode(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_228234030()
{
  v1 = v0;
  v2 = sub_228390C30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormStepResult();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228393520();
  sub_228234878(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x22AAB7100](*v10);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_22823493C(&unk_27D825AB0, MEMORY[0x277D116A0]);
    sub_228391F70();
    (*(v3 + 8))(v6, v2);
  }

  return sub_228393570();
}

uint64_t sub_2282341F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390C30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228234878(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return MEMORY[0x22AAB7100](*v12);
  }

  (*(v5 + 32))(v9, v12, v4);
  sub_22823493C(&unk_27D825AB0, MEMORY[0x277D116A0]);
  sub_228391F70();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_22823439C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_228390C30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228393520();
  sub_228234878(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x22AAB7100](*v13);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    sub_22823493C(&unk_27D825AB0, MEMORY[0x277D116A0]);
    sub_228391F70();
    (*(v6 + 8))(v10, v5);
  }

  return sub_228393570();
}

uint64_t sub_22823455C(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390C30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormStepResult();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_228234814();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_228234878(a1, v20);
  sub_228234878(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_228234878(v20, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = sub_228234814;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v13 == *&v20[v21];
LABEL_8:
      v23 = type metadata accessor for FormStepResult;
      goto LABEL_9;
    }

    v24 = 0;
  }

  else
  {
    sub_228234878(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v8, &v20[v21], v4);
      v24 = sub_228390C20();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v15, v4);
      goto LABEL_8;
    }

    (*(v5 + 8))(v15, v4);
    v24 = 0;
    v23 = sub_228234814;
  }

LABEL_9:
  sub_2282348DC(v20, v23);
  return v24 & 1;
}

void sub_228234814()
{
  if (!qword_27D825AA8)
  {
    type metadata accessor for FormStepResult();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825AA8);
    }
  }
}

uint64_t sub_228234878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormStepResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282348DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22823493C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2282349D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = *a2;
    v10 = sub_228392AD0();
    [v8 setFont_];

    [v8 setNumberOfLines_];
    v11 = [objc_opt_self() labelColor];
    [v8 setTextColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v7 + v3);
    *(v7 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v13 = v4;
  return v5;
}

uint64_t sub_228234B14@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v3, v10);
  if (v10[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v9[3];
      a1[2] = v9[2];
      a1[3] = v5;
      a1[4] = v9[4];
      v6 = v9[1];
      *a1 = v9[0];
      a1[1] = v6;
      return result;
    }

    v7 = v1;
  }

  else
  {
    v7 = v1;
    sub_22819482C(v10);
  }

  *&v9[0] = 0;
  *(&v9[0] + 1) = 0xE000000000000000;
  sub_2283931D0();

  v10[0] = 0xD000000000000026;
  v10[1] = 0x80000002283ADC30;
  sub_22817E6C8(v7 + v3, v9);
  sub_228181D50();
  v8 = sub_228392040();
  MEMORY[0x22AAB5C80](v8);

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_228234C7C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228234CEC();
  return sub_22819482C(v6);
}

uint64_t sub_228234CEC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v17);
  if (!v17[3])
  {
    sub_22819482C(v17);
    goto LABEL_11;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_2283931D0();

    v17[0] = 0xD000000000000026;
    v17[1] = 0x80000002283ADC30;
    sub_22817E6C8(v0 + v1, v10);
    sub_228181D50();
    v9 = sub_228392040();
    MEMORY[0x22AAB5C80](v9);

    result = sub_228393300();
    __break(1u);
    return result;
  }

  v2 = sub_2282349A0();
  v3 = v2;
  if (v13)
  {
    [v2 setAttributedText_];
  }

  else
  {
    v4 = sub_228391FC0();
    [v3 setText_];
  }

  v5 = sub_2282349B8();
  v6 = v5;
  if (v16)
  {
    [v5 setAttributedText_];
  }

  else
  {
    v7 = sub_228391FC0();
    [v6 setText_];
  }

  sub_2282354CC();

  sub_2281EA7E0(v11, v12, v13);
  sub_2281EA7E0(v14, v15, v16);
}

uint64_t sub_228234F40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228234F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228234CEC();
  return sub_22819482C(a1);
}

uint64_t (*sub_228235004(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228235068;
}

uint64_t sub_228235068(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228234CEC();
  }

  return result;
}

id TitleWithSubtitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitleWithSubtitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints] = MEMORY[0x277D84F90];
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item];
  v10 = type metadata accessor for TitleWithSubtitleView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228235358();

  return v11;
}

uint64_t sub_228235358()
{
  v1 = sub_2282349A0();
  [v0 addSubview_];

  v2 = sub_2282349B8();
  [v0 addSubview_];

  sub_2282354CC();
  sub_2282355CC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228397F30;
  v4 = sub_2283915A0();
  v5 = MEMORY[0x277D74C50];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = sub_228391640();
  v7 = MEMORY[0x277D74DB8];
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_228235478()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2282354CC();
  }
}

id sub_2282354CC()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints;
  v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints];
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v4 = sub_228392190();

  [v1 deactivateConstraints_];

  v5 = sub_22823562C();
  v6 = *&v0[v2];
  *&v0[v2] = v5;

  v7 = *&v0[v2];

  v8 = sub_228392190();

  [v1 activateConstraints_];

  return [v0 setNeedsLayout];
}

void sub_2282355CC()
{
  if (!qword_27D825090)
  {
    sub_2281D51F0();
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825090);
    }
  }
}

uint64_t sub_22823562C()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399E10;
  v2 = sub_2282349A0();
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel] leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:2.0];

  *(v1 + 40) = v9;
  v10 = [v0 trailingAnchor];
  v11 = [*&v0[v6] trailingAnchor];
  v12 = [v10 &selRef_resignFirstResponder + 6];

  *(v1 + 48) = v12;
  v13 = sub_2282349B8();
  v14 = [v13 topAnchor];

  v15 = [*&v0[v6] bottomAnchor];
  v16 = [v14 &selRef_resignFirstResponder + 6];

  *(v1 + 56) = v16;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel;
  v18 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel] leadingAnchor];
  v19 = [*&v0[v6] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 64) = v20;
  v21 = [*&v0[v17] trailingAnchor];
  v22 = [*&v0[v6] trailingAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v1 + 72) = v23;
  v24 = [v0 bottomAnchor];
  v25 = [*&v0[v17] lastBaselineAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v1 + 80) = v26;
  return v1;
}

id TitleWithSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleWithSubtitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282359F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_228235A50(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_228234CEC();
  return sub_22819482C(a1);
}

uint64_t (*sub_228235AC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_228235068;
}

uint64_t MedicationSecondaryEducationType.shouldShowCriticalButton(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_228236718(v4, v1, v2, v3);
}

uint64_t MedicationSecondaryEducationType.title.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v1 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = &qword_280DDCF20;
LABEL_8:
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;

  v5 = sub_22838F0C0();

  return v5;
}

uint64_t MedicationSecondaryEducationType.content(from:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_22823651C(v4, v1, v2, v3);
}

uint64_t MedicationSecondaryEducationType.automationSuffix.getter()
{
  v1 = 0x636E616E67657250;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617463614CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6666452065646953;
  }
}

unint64_t MedicationSecondaryEducationType.titleKey.getter()
{
  v1 = 0x434E414E47455250;
  if (*v0 != 1)
  {
    v1 = 0x4F4954415443414CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t MedicationSecondaryEducationType.source.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    if (qword_27D823310 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v2 = &qword_27D826AD0;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v2 = &qword_280DDCF20;
  }

  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  v6 = v3;
}

uint64_t MedicationSecondaryEducationType.text.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v1 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = &qword_280DDCF20;
LABEL_8:
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;

  v5 = sub_22838F0C0();

  return v5;
}

unint64_t MedicationSecondaryEducationType.textKey.getter()
{
  v1 = 0x434E414E47455250;
  if (*v0 != 1)
  {
    v1 = 0x4F4954415443414CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t MedicationSecondaryEducationType.unavailableText.getter()
{
  if (*v0)
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v1 = &qword_27D826AD0;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v1 = &qword_280DDCF20;
  }

  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;

  v5 = sub_22838F0C0();

  return v5;
}

unint64_t MedicationSecondaryEducationType.unavailableKey.getter()
{
  *v0;
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t MedicationSecondaryEducationType.uniqueIdentifier.getter()
{
  v1 = 0x636E616E67657270;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617463616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6566664565646973;
  }
}

uint64_t MedicationSecondaryEducationType.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_22823651C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  if (!*a2)
  {
    (*(a4 + 48))(v15, a3, a4);
    if (v16)
    {
      __swift_project_boxed_opaque_existential_0(v15, v16);
      v11 = sub_22838F980();
      goto LABEL_9;
    }

LABEL_10:
    sub_228236928(v15);
    v12 = 0;
    goto LABEL_11;
  }

  if (*a2 != 1)
  {
    (*(a4 + 48))(v15, a3, a4);
    if (v16)
    {
      __swift_project_boxed_opaque_existential_0(v15, v16);
      v11 = sub_22838F9A0();
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  (*(a4 + 48))(v15, a3, a4);
  if (!v16)
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_0(v15, v16);
  v11 = sub_22838F9B0();
LABEL_9:
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_11:
  (*(v7 + 8))(v10, a3);
  return v12;
}

uint64_t sub_228236718(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  if (!*a2)
  {
    goto LABEL_9;
  }

  if (*a2 != 1)
  {
    (*(a4 + 48))(v15, a3, a4);
    if (v16)
    {
      __swift_project_boxed_opaque_existential_0(v15, v16);
      v11 = sub_22838F9C0();
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  (*(a4 + 48))(v15, a3, a4);
  if (!v16)
  {
LABEL_8:
    sub_228236928(v15);
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_0(v15, v16);
  v11 = sub_22838F9D0();
LABEL_7:
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_10:
  (*(v7 + 8))(v10, a3);
  return v12 & 1;
}

unint64_t sub_2282368C4()
{
  result = qword_27D825AE0;
  if (!qword_27D825AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825AE0);
  }

  return result;
}

uint64_t sub_228236928(uint64_t a1)
{
  sub_228236984();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228236984()
{
  if (!qword_27D825988)
  {
    sub_2282369DC();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825988);
    }
  }
}

unint64_t sub_2282369DC()
{
  result = qword_27D825990;
  if (!qword_27D825990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D825990);
  }

  return result;
}

uint64_t sub_228236A40@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v22 = sub_22838F250();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F270();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F440();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(a1 + 16);
  v24 = *a1;
  v25 = v15;
  LoggableDose.scheduleDate.getter(v16);
  sub_22838F260();
  sub_22838F240();
  v17 = sub_22838F400();
  v19 = v18;
  (*(v3 + 8))(v6, v22);
  (*(v8 + 8))(v11, v7);
  result = (*(v13 + 8))(v16, v12);
  v21 = v23;
  *v23 = v17;
  v21[1] = v19;
  return result;
}

uint64_t sub_228236C88(__int128 *a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = *(a1 + 16);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v20 = *a1;
  v21 = v12;
  LoggableDose.scheduleDate.getter(v18 - v10);
  v18[1] = v13;
  v18[2] = v14;
  v19 = v15;
  LoggableDose.scheduleDate.getter(v9);
  LOBYTE(a2) = sub_22838F3A0();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a2 & 1;
}

uint64_t sub_228236DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v25 = sub_22838F250();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F270();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F440();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = sub_228390A10();
  v19 = [v18 startDate];

  sub_22838F3E0();
  sub_22838F260();
  sub_22838F240();
  v20 = sub_22838F400();
  v22 = v21;
  (*(v3 + 8))(v6, v25);
  (*(v8 + 8))(v11, v7);
  result = (*(v13 + 8))(v16, v12);
  v24 = v26;
  *v26 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_228237048(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = sub_228390A10();
  v15 = [v14 startDate];

  sub_22838F3E0();
  v16 = sub_228390A10();
  v17 = [v16 startDate];

  sub_22838F3E0();
  LOBYTE(v16) = sub_22838F3A0();
  v18 = *(v5 + 8);
  v18(v9, v4);
  v18(v11, v4);
  return v16 & 1;
}

uint64_t sub_228237284(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_2282373C8(255, a3, a4);
  v4 = sub_2283916D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_2283919A0();
  swift_getWitnessTable();
  v9 = sub_228391990();
  (*(v5 + 8))(v8, v4);
  return v9;
}

void sub_2282373C8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2281810DC(255, a3);
    v4 = sub_228392240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228237474@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, void, uint64_t, void, void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  a4(a2, 0, a3, 0, *a1);
  v8 = a5();

  *a6 = v8;
  return result;
}

uint64_t Publisher.delayIf<A>(condition:for:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a2;
  v55 = a8;
  v56 = a3;
  v58 = a4;
  v59 = a1;
  v52 = a6;
  v54 = *(a6 - 8);
  v57 = *(v54 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v44 - v14;
  swift_getAssociatedTypeWitness();
  v16 = sub_2283917F0();
  v17 = swift_getAssociatedTypeWitness();
  v18 = v16;
  v51 = v16;
  WitnessTable = swift_getWitnessTable();
  v50 = WitnessTable;
  v46 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = v18;
  v62 = v17;
  v63 = WitnessTable;
  v64 = AssociatedConformanceWitness;
  v21 = sub_228391710();
  v22 = swift_getWitnessTable();
  v61 = v21;
  v62 = a5;
  v23 = a5;
  v44[1] = a5;
  v63 = v22;
  v64 = a7;
  v24 = sub_228391780();
  v25 = *(v24 - 8);
  v48 = v24;
  v49 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v47 = v44 - v27;
  v28 = v12;
  v29 = *(v12 + 16);
  v30 = v15;
  v29(v15, v56, AssociatedTypeWitness);
  v32 = v53;
  v31 = v54;
  v33 = v52;
  (*(v54 + 16))(v53, v58, v52);
  v34 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v35 = (v13 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v23;
  *(v36 + 3) = v33;
  v37 = v45;
  v38 = v55;
  *(v36 + 4) = v46;
  *(v36 + 5) = v38;
  v39 = v60;
  *(v36 + 6) = v59;
  *(v36 + 7) = v39;
  (*(v28 + 32))(&v36[v34], v30, v37);
  (*(v31 + 32))(&v36[v35], v32, v33);

  sub_2283917E0();
  v40 = v47;
  sub_228391A40();

  v41 = v48;
  swift_getWitnessTable();
  v42 = sub_228391990();
  (*(v49 + 8))(v40, v41);
  return v42;
}

uint64_t sub_228237970@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>, uint64_t a7)
{
  v60 = a4;
  v51 = a3;
  v55 = a2;
  v56 = a1;
  v62 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_2283918B0();
  WitnessTable = swift_getWitnessTable();
  v63 = v9;
  v64 = a5;
  v65 = WitnessTable;
  v66 = a7;
  v11 = sub_2283917D0();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v44 - v13;
  v53 = swift_getAssociatedTypeWitness();
  v14 = sub_228392F00();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v54 = &v44 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedTypeWitness();
  v17 = sub_228392F00();
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v44 - v25;
  v52 = *(v9 - 8);
  v27 = *(v52 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v44 - v28;
  v61 = v9;
  v63 = v9;
  v64 = a5;
  v59 = WitnessTable;
  v65 = WitnessTable;
  v66 = a7;
  v30 = sub_228391760();
  v44 = *(v30 - 8);
  v31 = *(v44 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v44 - v33;
  v35 = v55(v32);
  (*(v22 + 16))(v26, v56, AssociatedTypeWitness);
  sub_2283918C0();
  if (v35)
  {
    (*(*(v45 - 8) + 56))(v21, 1, 1);
    v36 = v54;
    (*(*(v53 - 8) + 56))(v54, 1, 1);
    v37 = v61;
    sub_228391A20();
    (*(v57 + 8))(v36, v58);
    (*(v46 + 8))(v21, v47);
    (*(v52 + 8))(v29, v37);
    swift_getWitnessTable();
    v38 = sub_228391990();
    result = (*(v44 + 8))(v34, v30);
  }

  else
  {
    v40 = v54;
    (*(*(v53 - 8) + 56))(v54, 1, 1);
    v41 = v48;
    v42 = v61;
    sub_228391A70();
    (*(v57 + 8))(v40, v58);
    (*(v52 + 8))(v29, v42);
    v43 = v50;
    swift_getWitnessTable();
    v38 = sub_228391990();
    result = (*(v49 + 8))(v41, v43);
  }

  *v62 = v38;
  return result;
}

uint64_t sub_228237FD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = *(v2 + 56);
  return sub_228237970(a1, *(v2 + 48), v2 + v10, v2 + ((v10 + *(v9 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v6, a2, v8);
}

uint64_t type metadata accessor for ShapeSelectionViewController()
{
  result = qword_27D825B00;
  if (!qword_27D825B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2282381D4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ShapeSelectionViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  result = sub_228390490();
  if (result)
  {
    sub_2283902D0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2282382D0(void *a1)
{
  v1 = a1;
  sub_2282381D4();
}

void sub_228238374(void *a1)
{
  v2 = v1;
  sub_22823894C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  sub_22823894C(0, &qword_27D8238B0, sub_228181CBC);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  sub_228181CBC();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v18 animated:1];

  v19 = sub_22838F710();
  v29 = [a1 cellForItemAtIndexPath_];

  if (v29)
  {
    type metadata accessor for ShapeCell();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
      v22 = v20;
      swift_beginAccess();
      sub_22817E6C8(v22 + v21, v30);
      if (!v31)
      {

        sub_2282389A0(v30, &qword_280DDCD50, sub_22817A700);
        (*(v14 + 56))(v11, 1, 1, v13);
        goto LABEL_10;
      }

      sub_22817A700();
      v23 = swift_dynamicCast();
      (*(v14 + 56))(v11, v23 ^ 1u, 1, v13);
      if ((*(v14 + 48))(v11, 1, v13) == 1)
      {

LABEL_10:
        sub_2282389A0(v11, &qword_27D8238B0, sub_228181CBC);
        return;
      }

      sub_228181E18(v11, v17);
      v25 = *(v2 + qword_27D825AF8);
      v26 = sub_2283909E0();
      v27 = *(v26 - 8);
      (*(v27 + 16))(v7, v17, v26);
      (*(v27 + 56))(v7, 0, 1, v26);

      sub_228391850();

      sub_2282389A0(v7, &qword_27D8238A8, MEMORY[0x277D11640]);
      sub_2282389FC(v17);
    }

    else
    {
      v24 = v29;
    }
  }
}

uint64_t sub_228238790(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_228238374(v10);

  return (*(v6 + 8))(v9, v5);
}

id sub_2282388FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22823894C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2282389A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22823894C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282389FC(uint64_t a1)
{
  sub_228181CBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_228238A58()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v4 setNumberStyle_];
    [v4 setMaximumFractionDigits_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_228238AF4(unint64_t a1, uint64_t a2)
{
  v3 = sub_2281BFC38(a1);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  v38 = a2;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v3 & 0xC000000000000001;
  if (v6)
  {
    while (1)
    {
      v8 = 0;
      v9 = 0.0;
      v10 = 0.0;
      while (v7)
      {
        v11 = MEMORY[0x22AAB6D80](v8, v4);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
          return MEMORY[0x277D84F90];
        }

LABEL_8:
        v9 = v9 + *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount];
        v13 = *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount];

        v10 = v10 + v13;
        ++v8;
        if (v12 == v6)
        {
          goto LABEL_17;
        }
      }

      if (v8 < *(v5 + 16))
      {
        break;
      }

      __break(1u);
LABEL_15:
      v6 = sub_2283930D0();
      v7 = v4 & 0xC000000000000001;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v11 = *(v4 + 8 * v8 + 32);
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_16:
  v10 = 0.0;
  v9 = 0.0;
LABEL_17:
  v15 = v4;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (v6 != v16)
  {
    if (v7)
    {
      v19 = MEMORY[0x22AAB6D80](v16, v4);
      if (__OFADD__(v16, 1))
      {
LABEL_28:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v16 >= *(v5 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v19 = *(v4 + 8 * v16 + 32);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_28;
      }
    }

    v20 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount];
    v21 = __OFADD__(v18, v20);
    v18 += v20;
    if (v21)
    {
      goto LABEL_45;
    }

    a2 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount];

    ++v16;
    v21 = __OFADD__(v17, a2);
    v17 += a2;
    if (v21)
    {
      goto LABEL_46;
    }
  }

  a2 = [objc_allocWithZone(MEMORY[0x277D12A38]) initWithStatisticsType_];
  if (qword_280DDCF18 == -1)
  {
    goto LABEL_30;
  }

LABEL_47:
  swift_once();
LABEL_30:
  sub_22838F0C0();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_228391FC0();

  v24 = [v22 initWithString_];

  [a2 setAttributedString_];
  sub_228180ED0();
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = xmmword_228396260;
  *(result + 32) = a2;
  if (v9 <= 0.0 && v10 <= 0.0 || !v6)
  {

    return v14;
  }

  v37 = a2;
  if (v7)
  {
    v36 = a2;
    v28 = MEMORY[0x22AAB6D80](0, v15);
LABEL_36:
    v29 = v28;

    v30 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication;
    v31 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval;
    v32 = sub_228238FAC(&v29[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication], 0x1C, v18, &v29[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval], v38);
    if (v32)
    {
      v33 = v32;
      v34 = sub_228238FAC(&v29[v30], 0x1D, v17, &v29[v31], v38);
      if (!v34)
      {

        goto LABEL_42;
      }

      v35 = v34;

      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_228397F20;
      *(v14 + 32) = v33;
      *(v14 + 40) = v35;
    }

LABEL_42:
    return v14;
  }

  if (*(v5 + 16))
  {
    v26 = *(v15 + 32);
    v27 = a2;
    v28 = v26;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_228238FAC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v84 = a4;
  v81 = a5;
  v82 = a3;
  v74 = a1;
  v75 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_228239B40(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v71 - v8;
  sub_228239B40(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v5);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v71 - v12;
  *&v80 = sub_22838F080();
  v14 = *(v80 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v80);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F6C0();
  v19 = *(v18 - 8);
  v78 = *(v19 + 56);
  v79 = (v19 + 56);
  v78(v13, 1, 1, v18);
  v20 = sub_22838F700();
  v21 = *(v20 - 8);
  v76 = *(v21 + 56);
  v77 = v21 + 56;
  v76(v9, 1, 1, v20);
  sub_22838F060();
  v85 = MEMORY[0x22AAB2B60](v84, v17);
  v22 = *(v14 + 8);
  v23 = v80;
  v22(v17, v80);
  v78(v13, 1, 1, v18);
  v76(v9, 1, 1, v20);
  sub_22838F060();
  v24 = MEMORY[0x22AAB2B60](v84, v17);
  v22(v17, v23);
  if (v81)
  {
    v25 = v85;
    if (v81 != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = v85 | v24;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 8;
  }

  v27 = sub_228238A58();
  v28 = sub_22838F770();
  v29 = [v27 stringForObjectValue_];

  if (!v29)
  {
    return 0;
  }

  v71[0] = v26;
  v85 = v25;
  v30 = v74[4];
  __swift_project_boxed_opaque_existential_0(v74, v74[3]);
  v81 = sub_228390DA0();
  v82 = v31;
  v84 = [objc_allocWithZone(MEMORY[0x277D12A38]) initWithStatisticsType_];
  [v84 setDataType_];
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399D40;
  sub_228239B40(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  v34 = v33;
  v35 = swift_initStackObject();
  v80 = xmmword_228397F30;
  *(v35 + 16) = xmmword_228397F30;
  v36 = *MEMORY[0x277D740A8];
  *(v35 + 32) = *MEMORY[0x277D740A8];
  v37 = objc_opt_self();
  v38 = v36;
  v79 = v37;
  v39 = [v37 hk_chartCurrentValueValueFont];
  v40 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  *(v35 + 40) = v39;
  v41 = *MEMORY[0x277D740C0];
  v77 = v40;
  *(v35 + 64) = v40;
  *(v35 + 72) = v41;
  v42 = objc_opt_self();
  v75 = v41;
  v76 = v42;
  v43 = [v42 hk_chartLollipopValueColor];
  v72 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  *(v35 + 104) = v72;
  *(v35 + 80) = v43;
  sub_2281A859C(v35);
  swift_setDeallocating();
  sub_2281D50E8();
  v71[1] = v44;
  swift_arrayDestroy();
  v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  v47 = v46;
  sub_228239BA4();
  v74 = v47;
  v48 = sub_228391F10();

  v49 = [v45 initWithString:v29 attributes:v48];

  *(inited + 32) = v49;
  v73 = inited + 32;
  v78 = v34;
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_228397F40;
  v51 = v38;
  *(v50 + 32) = v38;
  v52 = [v83 minorFont];
  if (v52)
  {
    v53 = v77;
    *(v50 + 64) = v77;
    *(v50 + 40) = v52;
    sub_2281A859C(v50);
    swift_setDeallocating();
    sub_228239BFC(v50 + 32);
    v54 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v55 = sub_228391FC0();
    v56 = sub_228391F10();

    v57 = [v54 initWithString:v55 attributes:v56];

    *(inited + 40) = v57;
    v58 = swift_initStackObject();
    *(v58 + 16) = v80;
    *(v58 + 32) = v51;
    *(v58 + 40) = [v79 hk_chartCurrentValueUnitFont];
    v60 = v75;
    v59 = v76;
    *(v58 + 64) = v53;
    *(v58 + 72) = v60;
    v61 = [v59 hk_chartLollipopLabelColor];
    *(v58 + 104) = v72;
    *(v58 + 80) = v61;
    sub_2281A859C(v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v63 = sub_228391FC0();

    v64 = sub_228391F10();

    v65 = [v62 initWithString:v63 attributes:v64];

    *(inited + 48) = v65;
    sub_2281960E8(inited);
    swift_setDeallocating();
    v66 = *(inited + 16);
    swift_arrayDestroy();
    v67 = sub_228392190();

    v68 = HKUIJoinAttributedStringsForLocale();

    if (v68)
    {
      v69 = v84;
      [v84 setAttributedString_];
      if ((v85 & 1) == 0)
      {
        [v69 setStatisticsType_];
      }

      return v69;
    }

    return 0;
  }

  __break(1u);
LABEL_17:
  result = sub_228393300();
  __break(1u);
  return result;
}

id MedicationChartDataFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationChartDataFormatter.init()()
{
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationChartDataFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MedicationChartDataFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationChartDataFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228239ADC()
{
  result = qword_27D825B28;
  if (!qword_27D825B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D825B28);
  }

  return result;
}

void sub_228239B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228239BA4()
{
  result = qword_280DDBA40;
  if (!qword_280DDBA40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBA40);
  }

  return result;
}

uint64_t sub_228239BFC(uint64_t a1)
{
  sub_2281D50E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_228239C58(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter;
  sub_22823AB9C();
  *&v1[v4] = sub_228392600();
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_day;
  v8 = sub_228391060();
  v9 = *(v8 - 8);
  v36 = v8;
  (*(v9 + 16))(&v2[v7], a1);
  v37.receiver = v2;
  v37.super_class = type metadata accessor for DayPickerDay();
  v10 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel;
  v12 = *&v10[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter;
  v14 = *&v10[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter];
  v15 = v10;
  v16 = v12;
  v17 = v14;
  sub_228392620();
  v19 = v18;

  if (v19)
  {
    v20 = sub_228391FC0();
  }

  else
  {
    v20 = 0;
  }

  [v16 setText_];

  v21 = *&v10[v13];
  v22 = v15;
  v23 = v21;
  sub_228392610();
  v25 = v24;

  if (v25)
  {
    v26 = sub_228391FC0();
  }

  else
  {
    v26 = 0;
  }

  [v22 setLargeContentTitle_];

  v27 = [v22 layer];
  [v27 addSublayer_];

  [v22 addSubview_];
  sub_22823A03C();
  sub_2282355CC();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228398270;
  v29 = sub_228391640();
  v30 = MEMORY[0x277D74DB8];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v31 = sub_228391320();
  v32 = MEMORY[0x277D74B98];
  *(v28 + 48) = v31;
  *(v28 + 56) = v32;
  v33 = sub_2283915A0();
  v34 = MEMORY[0x277D74C50];
  *(v28 + 64) = v33;
  *(v28 + 72) = v34;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  (*(v9 + 8))(a1, v36);
  return v22;
}

void sub_228239FC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_22823A03C();
  }
}

id sub_22823A03C()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
  result = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  if (result)
  {
    v3 = result;
    [v1 setFont_];

    [v0 setShowsLargeContentViewer_];
    [v0 setScalesLargeContentImage_];
    v4 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v0 addInteraction_];

    sub_22823A148();

    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22823A148()
{
  v1 = v0;
  if ([v0 isEnabled])
  {
    v2 = [v0 isSelected];
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background];
    if (v2)
    {
      v4 = [v0 tintColor];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [v1 traitCollection];
      v7 = sub_228392BE0();

      [v3 setFillColor_];
      v8 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
      v9 = [objc_opt_self() whiteColor];
      [v8 setTextColor_];

      v10 = sub_228391FC0();
      v11 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v18 = objc_opt_self();
      v19 = [v18 clearColor];
      v20 = [v1 traitCollection];
      v21 = sub_228392BE0();

      [v3 setFillColor_];
      v22 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
      v23 = [v18 labelColor];
      [v22 setTextColor_];

      v10 = sub_228391FC0();
      v11 = [objc_opt_self() systemImageNamed_];
    }
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background];
    v13 = objc_opt_self();
    v14 = [v13 clearColor];
    v15 = [v14 CGColor];

    [v12 setFillColor_];
    v16 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
    v17 = [v13 tertiaryLabelColor];
    [v16 setTextColor_];

    v10 = sub_228391FC0();
    v11 = [objc_opt_self() systemImageNamed_];
  }

  v24 = v11;

  [v1 setLargeContentImage_];
}

id sub_22823A4A4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DayPickerDay();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v2 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3 = [v1 traitCollection];
  [v2 scaledValueForValue:v3 compatibleWithTraitCollection:34.0];
  v5 = v4;

  [v1 bounds];
  v6 = CGRectGetHeight(v14) + -4.0;
  [v1 bounds];
  v7 = CGRectGetWidth(v15) + -4.0;
  if (v5 <= 34.0)
  {
    if (v7 >= v6)
    {
      if (v6 <= 34.0)
      {
        v5 = v6;
      }

      else
      {
        v5 = 34.0;
      }
    }

    else if (v7 <= 34.0)
    {
      v5 = v7;
    }

    else
    {
      v5 = 34.0;
    }
  }

  else
  {
    if (v7 >= v6)
    {
      v7 = v6;
    }

    if (v5 >= v7)
    {
      v5 = v7;
    }
  }

  v8 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background];
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v5;
  v16.size.height = v5;
  v9 = CGPathCreateWithEllipseInRect(v16, 0);
  [v8 setPath_];

  v10 = [v8 path];
  [v8 setShadowPath_];

  [v8 setFrame_];
  [v1 bounds];
  sub_228392AB0();
  sub_228392B60();
  v11 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
  [v11 sizeToFit];
  [v1 bounds];
  sub_228392AB0();
  return [v11 setCenter_];
}

id sub_22823A908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayPickerDay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DayPickerDay()
{
  result = qword_280DDCD08;
  if (!qword_280DDCD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22823AA30()
{
  result = sub_228391060();
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

void sub_22823AAD0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter;
  sub_22823AB9C();
  *(v0 + v2) = sub_228392600();
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_228393300();
  __break(1u);
}

unint64_t sub_22823AB9C()
{
  result = qword_27D825B98;
  if (!qword_27D825B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D825B98);
  }

  return result;
}

uint64_t InteractionCriticalAlertItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_22823AC2C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 uniqueIdentifier];

  v7 = sub_228392000();
  v9 = v8;

  MEMORY[0x22AAB5C80](v7, v9);

  return v2;
}

uint64_t InteractionCriticalAlertItem.learnMoreAction.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t InteractionCriticalAlertItem.dismissAction.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

void *InteractionCriticalAlertItem.__allocating_init(resultDisplayable:learnMoreAction:dismissAction:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_22823B82C(v13, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

void *InteractionCriticalAlertItem.init(resultDisplayable:learnMoreAction:dismissAction:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_22823B72C(v16, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t static InteractionCriticalAlertItem.== infix(_:_:)(void *a1, void *a2)
{
  sub_2281A2270();
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_0(a1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = [v6 identifier];

  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_0(a2 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 identifier];

  v12 = sub_228392C60();
  return v12 & 1;
}

uint64_t sub_22823AFF4()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_2283920B0();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 identifier];

  v7 = [v6 rawIdentifier];
  return MEMORY[0x22AAB7100](v7);
}

uint64_t *InteractionCriticalAlertItem.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  return v0;
}

uint64_t InteractionCriticalAlertItem.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  return swift_deallocClassInstance();
}

uint64_t sub_22823B120()
{
  sub_228393520();
  v1 = v0[7];
  v2 = v0[8];
  sub_2283920B0();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 identifier];

  v7 = [v6 rawIdentifier];
  MEMORY[0x22AAB7100](v7);
  return sub_228393570();
}

uint64_t sub_22823B1E0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);

  return v1;
}

uint64_t sub_22823B214(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2281A2270();
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = [v6 identifier];

  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 identifier];

  v12 = sub_228392C60();
  return v12 & 1;
}

uint64_t sub_22823B35C()
{
  v1 = *v0;
  v2 = v1[7];
  v3 = v1[8];
  sub_2283920B0();
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = [v6 identifier];

  v8 = [v7 rawIdentifier];
  return MEMORY[0x22AAB7100](v8);
}

uint64_t sub_22823B404()
{
  sub_228393520();
  v1 = *v0;
  v2 = v1[7];
  v3 = v1[8];
  sub_2283920B0();
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = [v6 identifier];

  v8 = [v7 rawIdentifier];
  MEMORY[0x22AAB7100](v8);
  return sub_228393570();
}

uint64_t sub_22823B4C4()
{
  v2 = *(*v0 + 56);
  v1 = *(*v0 + 64);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_0((*v0 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 uniqueIdentifier];

  v7 = sub_228392000();
  v9 = v8;

  MEMORY[0x22AAB5C80](v7, v9);

  return v2;
}

uint64_t sub_22823B58C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

Swift::Void __swiftcall InteractionCriticalAlertItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  v3(_, in);
}

uint64_t InteractionCriticalAlertItem.deselectionBehavior(in:)()
{
  type metadata accessor for InteractionCriticalAlertItem();
  sub_22823BA94(&qword_27D825BA0, v0, type metadata accessor for InteractionCriticalAlertItem);
  return sub_22838FE80();
}

uint64_t sub_22823B6A4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
  return v1();
}

uint64_t sub_22823B6D0()
{
  v2 = *v0;
  type metadata accessor for InteractionCriticalAlertItem();
  return sub_22838FE80();
}

void *sub_22823B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  type metadata accessor for InteractionCriticalAlertCell();
  sub_22823BA94(&unk_280DDC1E0, 255, type metadata accessor for InteractionCriticalAlertCell);
  a6[7] = sub_22838FBB0();
  a6[8] = v16;
  sub_22816DFFC(&v18, (a6 + 2));
  a6[9] = a2;
  a6[10] = a3;
  a6[11] = a4;
  a6[12] = a5;
  return a6;
}

void *sub_22823B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionCriticalAlertItem();
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a1, a7);
  return sub_22823B72C(v18, a2, a3, a4, a5, v19, a7, a8);
}

uint64_t sub_22823BA94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22823BADC(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22823BD14();
  return sub_22817A8FC(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22823BB80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22823BBF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22823BD14();
  return sub_22817A8FC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22823BC7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22823BCE0;
}

uint64_t sub_22823BCE0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22823BD14();
  }

  return result;
}

uint64_t sub_22823BD14()
{
  v1 = sub_228391590();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - v11;
  [v0 setUserInteractionEnabled_];
  sub_228391390();
  v13 = sub_2283913A0();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = MEMORY[0x22AAB6420](v12);
  MEMORY[0x22AAB6410](v15);
  if ((*(v14 + 48))(v10, 1, v13))
  {
    v16 = MEMORY[0x277D74BD0];
    sub_22817A890(v10, v12, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v12);
    v17 = sub_22817A8FC(v10, &unk_280DDBCD0, v16);
  }

  else
  {
    v18 = [objc_opt_self() tertiarySystemFillColor];
    sub_228391370();
    v17 = MEMORY[0x22AAB6420](v10);
  }

  MEMORY[0x22AAB64A0](v17);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v19 = [objc_opt_self() secondaryLabelColor];
  v20 = sub_228391450();
  sub_228391420();
  v20(v27, 0);
  sub_22823C530();
  v21 = *MEMORY[0x277D76918];
  v22 = *MEMORY[0x277D74418];
  sub_228392AD0();
  v23 = sub_228391450();
  sub_228391410();
  v23(v27, 0);
  v27[3] = v1;
  v27[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
  MEMORY[0x22AAB6400](v27);
  return (*(v2 + 8))(v5, v1);
}

id InteractionNoneFoundCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionNoneFoundCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item];
  found = type metadata accessor for InteractionNoneFoundCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = found;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id InteractionNoneFoundCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InteractionNoneFoundCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item];
  found = type metadata accessor for InteractionNoneFoundCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = found;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}