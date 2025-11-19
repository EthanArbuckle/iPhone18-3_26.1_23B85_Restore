id sub_1D92E4000(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1D9327F74();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1D92E4078(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1D9327F84();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

id CHUISControlPickerOption.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = (v0 + OBJC_IVAR___CHUISControlPickerOption_value);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___CHUISControlPickerOption_icon) = 0;
  *(v0 + OBJC_IVAR___CHUISControlPickerOption_tint) = 0;
  v2 = (v0 + OBJC_IVAR___CHUISControlPickerOption_status);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___CHUISControlPickerOption_actionHint);
  *v3 = 0;
  v3[1] = 0;
  v5.super_class = CHUISControlPickerOption;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D92E4298(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v54 - v6;
  v8 = type metadata accessor for ControlIconView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v54 - v16;
  v17 = *a1;
  [v2 setState_];
  if (a1[2])
  {
    v18 = a1[1];
    v19 = sub_1D9327F74();
  }

  else
  {
    v19 = 0;
  }

  [v2 setTitle_];

  v20 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v21 = (a1 + v20[8]);
  if (v21[1])
  {
    v22 = *v21;
    v23 = sub_1D9327F74();
  }

  else
  {
    v23 = 0;
  }

  [v2 setSubtitle_];

  sub_1D92E11F4(a1 + v20[7], v7);
  v24 = v8;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D92933A0(v7, &qword_1ECAFCA50, &unk_1D932DF60);
  }

  else
  {
    v25 = v55;
    sub_1D92E1264(v7, v55);
    v26 = v24;
    v24 = [v2 iconView];
    sub_1D92D30E0(v25, v15);
    *&v15[*(v26 + 5)] = [v24 style];
    v27 = v56;
    sub_1D92D30E0(v15, v56);
    sub_1D92D2694(v27);

    sub_1D92D2EB0(v15);
    sub_1D92D2EB0(v25);
  }

  [v2 setRedacted_];
  [v2 setDisabled_];
  [v2 setHasError_];
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v28 = a1[3];
  if (v17 >= *(v28 + 16))
  {
LABEL_31:
    __break(1u);
    v53 = v24[3];
    v59 = v64;
    v60 = v53;
    v61 = v66;
    v57 = v62;
    v58 = v63;
    sub_1D92E5FC0(&v57);

    __break(1u);
    return result;
  }

  v29 = (v28 + 32);
  v30 = v28 + 32 + 72 * v17;
  v71[0] = *v30;
  v31 = *(v30 + 16);
  v32 = *(v30 + 32);
  v33 = *(v30 + 48);
  v74 = *(v30 + 64);
  v72 = v32;
  v73 = v33;
  v71[1] = v31;
  if (*(&v71[0] + 1))
  {
    sub_1D92E5F64(v71, v69);

    v34 = sub_1D9327F74();
  }

  else
  {
    sub_1D92E5F64(v71, v69);
    v34 = 0;
  }

  v35 = v72;
  [v2 setCurrentValue_];

  if (v35 && (v36 = sub_1D9327344()) != 0)
  {
    v37 = v36;
    v38 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v38 = 0;
  }

  [v2 setCurrentTint_];

  v39 = (a1 + v20[14]);
  if (v39[1])
  {
    v40 = *v39;
    v41 = sub_1D9327F74();
  }

  else
  {
    v41 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v43 = *(v28 + 16);
  if (v43)
  {
    v56 = v2;
    v68 = MEMORY[0x1E69E7CC0];
    v42 = sub_1D93284C4();
    if (*(v28 + 16))
    {
      v44 = 0;
      while (1)
      {
        v69[0] = *v29;
        v45 = v29[1];
        v46 = v29[2];
        v47 = v29[3];
        v70 = *(v29 + 8);
        v69[2] = v46;
        v69[3] = v47;
        v69[1] = v45;
        v48 = v29[2];
        v65 = v29[3];
        v66 = *(v29 + 8);
        v49 = *v29;
        v63 = v29[1];
        v64 = v48;
        v62 = v49;
        sub_1D92E5F64(v69, &v57);
        sub_1D92E4870(&v62, &v67);
        v59 = v64;
        v60 = v65;
        v61 = v66;
        v57 = v62;
        v58 = v63;
        sub_1D92E5FC0(&v57);
        sub_1D93284A4();
        v50 = *(v68 + 16);
        sub_1D93284D4();
        sub_1D93284E4();
        v42 = sub_1D93284B4();
        if (v43 - 1 == v44)
        {
          break;
        }

        v29 = (v29 + 72);
        if (++v44 >= *(v28 + 16))
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      __break(1u);
    }

    v2 = v56;
  }

  type metadata accessor for CHUISControlPickerOption(v42);
  v51 = sub_1D9328014();

  [v2 setOptions_];

  return sub_1D92E5FC0(v71);
}

void sub_1D92E4870(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[8];
  v16 = a1[7];
  v10 = [objc_allocWithZone(CHUISControlPickerOption) init];
  if (v3)
  {
    v3 = sub_1D9327F74();
  }

  [v10 setValue_];

  [v10 setIcon_];
  if (v5 && (v11 = sub_1D9327344()) != 0)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v13 = 0;
  }

  [v10 setTint_];

  if (v8)
  {
    v14 = sub_1D9327F74();
  }

  else
  {
    v14 = 0;
  }

  [v10 setStatus_];

  if (v9)
  {
    v15 = sub_1D9327F74();
  }

  else
  {
    v15 = 0;
  }

  [v10 setActionHint_];

  *a2 = v10;
}

id CHUISControlInstancePicker.iconView.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  v2 = *(v4 + 24);

  return v2;
}

id CHUISControlInstancePicker.tintColor.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 currentTint];
  }

  else
  {

    return 0;
  }

  return v4;
}

id CHUISControlInstancePicker.state.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 state];
  }

  else
  {

    return 0;
  }

  return v4;
}

id sub_1D92E4E20(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D9327F74();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1D92E4EAC(SEL *a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = v4;

    v6 = [v5 *a1];

    if (v6)
    {
      v7 = sub_1D9327F84();

      return v7;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t CHUISControlInstancePicker.options.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v8 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 options];

    if (v4)
    {
      type metadata accessor for CHUISControlPickerOption(v5);
      v6 = sub_1D9328024();

      return v6;
    }
  }

  else
  {
  }

  return 0;
}

void *CHUISControlInstancePicker.viewModel.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v5 + 16);
  v3 = v2;

  return v2;
}

id CHUISControlInstancePicker.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

char *CHUISControlInstancePicker.init(instanceIdentity:)(void *a1)
{
  BSDispatchQueueAssertMain();
  v21.receiver = v1;
  v21.super_class = CHUISControlInstancePicker;
  v3 = objc_msgSendSuper2(&v21, sel_initWithInstanceIdentity_, a1);
  v4 = qword_1EDE3C588;
  v5 = v3;
  v6 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v20);
  v7 = type metadata accessor for ControlInstancePicker(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D929CF00(v20, v17);
  v10 = sub_1D92E1390(v6, v17);

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_allocObject();
  v12 = sub_1D92DF7A8(v10);
  swift_unknownObjectWeakAssign();
  v20[3] = v11;
  v20[4] = &off_1F54C1D40;
  v20[0] = v12;
  v13 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&v5[v13], v17);
  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v15 + 120))(v14, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v5[v13], v20);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v5;
}

uint64_t CHUISControlInstancePicker.setState(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v16 - v9;
  v11 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v3 + v11, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  v12 = v16[1];
  BSDispatchQueueAssertMain();
  v13 = sub_1D93280D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;

  sub_1D92E5ECC(a2);
  sub_1D9328194();

  return sub_1D92933A0(v10, &unk_1ECAFC910, &qword_1D932E360);
}

uint64_t sub_1D92E5970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  sub_1D93280A4();
  v5[9] = sub_1D9328094();
  v7 = sub_1D9328064();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D92E5A0C, v7, v6);
}

uint64_t sub_1D92E5A0C()
{
  v1 = v0[5];
  swift_beginAccess();
  v0[12] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1D92E5ACC;
  v3 = v0[6];

  return sub_1D9307F38(v3);
}

uint64_t sub_1D92E5ACC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = v0;

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1D92E5C9C;
  }

  else
  {
    v8 = sub_1D92E5C24;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D92E5C24()
{
  v1 = v0[9];
  v2 = v0[7];

  if (v2)
  {
    v3 = v0[8];
    (v0[7])(0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D92E5C9C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[14];
  if (v2)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v3;
    v5(v3);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D92E5D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D92D9CEC;

  return sub_1D92E5970(a1, a2, v10, a4, a5);
}

uint64_t sub_1D92E5E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92D9CEC;

  return sub_1D92E5D38(a1, v4, v1 + 3, v5, v6);
}

uint64_t sub_1D92E5ECC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D92E5EE0()
{
  result = qword_1ECAFCB40;
  if (!qword_1ECAFCB40)
  {
    type metadata accessor for ControlInstancePicker.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCB40);
  }

  return result;
}

uint64_t sub_1D92E5F4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static ControlInstanceFactory.makeInstance(of:instanceIdentity:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  switch(result)
  {
    case 1:
      if (qword_1EDE3C588 != -1)
      {
        swift_once();
      }

      sub_1D929CF00(&qword_1EDE400D0, v22);
      v16 = type metadata accessor for ControlInstanceToggle(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_1D929CF00(v22, v21);
      v19 = a2;
      v20 = sub_1D92E23F8(v19, v21);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v10 = v20 | 0x4000000000000000;
      break;
    case 3:
      if (qword_1EDE3C588 != -1)
      {
        swift_once();
      }

      sub_1D929CF00(&qword_1EDE400D0, v22);
      v11 = type metadata accessor for ControlInstancePicker(0);
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      sub_1D929CF00(v22, v21);
      v14 = a2;
      v15 = sub_1D92E1390(v14, v21);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v10 = v15 | 0x8000000000000000;
      break;
    case 2:
      if (qword_1EDE3C588 != -1)
      {
        swift_once();
      }

      sub_1D929CF00(&qword_1EDE400D0, v22);
      v5 = type metadata accessor for ControlInstanceButton(0);
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      v8 = swift_allocObject();
      *(v8 + qword_1EDE3CCC0) = 0;
      *(v8 + qword_1EDE3CCB0) = 0;
      *(v8 + qword_1EDE3CCC8) = 0;
      *(v8 + qword_1EDE3CCB8) = 0;
      sub_1D929CF00(v22, v21);
      v9 = a2;
      v10 = sub_1D92E0EA4(v9, v21);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
      break;
    default:
      v10 = 0xF000000000000007;
      break;
  }

  *a3 = v10;
  return result;
}

void static ControlInstanceFactory.makeInstance(identity:type:contentType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a3 hostIdentifier:0 configurationIdentifier:0];
  static ControlInstanceFactory.makeInstance(of:instanceIdentity:)(a2, v6, a4);
}

id CHUISControlToggleOption.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = (v0 + OBJC_IVAR___CHUISControlToggleOption_value);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___CHUISControlToggleOption_icon) = 0;
  *(v0 + OBJC_IVAR___CHUISControlToggleOption_tint) = 0;
  v2 = (v0 + OBJC_IVAR___CHUISControlToggleOption_status);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___CHUISControlToggleOption_actionHint);
  *v3 = 0;
  v3[1] = 0;
  v5.super_class = CHUISControlToggleOption;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1D92E6598(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  [v2 setState_];
  if (*(a1 + 2))
  {
    v19 = *(a1 + 1);
    v20 = sub_1D9327F74();
  }

  else
  {
    v20 = 0;
  }

  [v2 setTitle_];

  if (*(a1 + 4))
  {
    v21 = *(a1 + 3);
    v22 = sub_1D9327F74();
  }

  else
  {
    v22 = 0;
  }

  [v2 setSubtitle_];

  v23 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v24 = &a1[v23[8]];
  if (*(v24 + 1))
  {
    v25 = *v24;
    v26 = sub_1D9327F74();
  }

  else
  {
    v26 = 0;
  }

  [v2 setCurrentValue_];

  [v2 setRedacted_];
  [v2 setDisabled_];
  [v2 setHasError_];
  if (*&a1[v23[9]] && (v27 = sub_1D9327344()) != 0)
  {
    v28 = v27;
    v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v29 = 0;
  }

  [v2 setCurrentTint_];

  v30 = &a1[v23[16]];
  if (*(v30 + 1))
  {
    v31 = *v30;
    v32 = sub_1D9327F74();
  }

  else
  {
    v32 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v33 = v23[7];
  sub_1D92E11F4(&a1[v33], v18);
  v34 = *(v5 + 48);
  if (v34(v18, 1, v4) == 1)
  {
    sub_1D92E7B44(v18);
    v35 = 0;
  }

  else
  {
    v35 = sub_1D92F656C();
    sub_1D92D2EB0(v18);
  }

  [v2 setIcon_];

  sub_1D92E11F4(&a1[v33], v16);
  if (v34(v16, 1, v4) == 1)
  {
    sub_1D92E7B44(v16);
  }

  else
  {
    v36 = v43;
    sub_1D92E1264(v16, v43);
    v37 = [v2 iconView];
    v38 = v45;
    sub_1D92D30E0(v36, v45);
    *(v38 + *(v4 + 20)) = [v37 style];
    v39 = v44;
    sub_1D92D30E0(v38, v44);
    sub_1D92D2694(v39);

    sub_1D92D2EB0(v38);
    sub_1D92D2EB0(v36);
  }

  v40 = sub_1D92E6A30(&a1[v23[10]]);
  [v2 setOnOption_];

  v41 = sub_1D92E6A30(&a1[v23[11]]);
  [v2 setOffOption_];
}

id sub_1D92E6A30(uint64_t *a1)
{
  v2 = [objc_allocWithZone(CHUISControlToggleOption) init];
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1D9327F74();
  }

  else
  {
    v4 = 0;
  }

  [v2 setValue_];

  [v2 setIcon_];
  if (a1[4] && (v5 = sub_1D9327344()) != 0)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v7 = 0;
  }

  [v2 setTint_];

  if (a1[6])
  {
    v8 = a1[5];
    v9 = sub_1D9327F74();
  }

  else
  {
    v9 = 0;
  }

  [v2 setStatus_];

  if (a1[8])
  {
    v10 = a1[7];
    v11 = sub_1D9327F74();
  }

  else
  {
    v11 = 0;
  }

  [v2 setActionHint_];

  return v2;
}

id CHUISControlInstanceToggle.iconView.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  v2 = *(v4 + 24);

  return v2;
}

id CHUISControlInstanceToggle.tintColor.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 currentTint];
  }

  else
  {

    return 0;
  }

  return v4;
}

id CHUISControlInstanceToggle.state.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 state];
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1D92E6FC0(SEL *a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = v4;

    v6 = [v5 *a1];

    if (v6)
    {
      v7 = sub_1D9327F84();

      return v7;
    }
  }

  else
  {
  }

  return 0;
}

id sub_1D92E70F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D9327F74();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t CHUISControlInstanceToggle.valueLabelAfterAction.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v8 + 16);
  v3 = v2;

  if (v2)
  {
    if ([v3 state])
    {
      v4 = [v3 offOption];
    }

    else
    {
      v4 = [v3 onOption];
    }

    v5 = [v4 value];

    if (v5)
    {
      v6 = sub_1D9327F84();

      return v6;
    }
  }

  return 0;
}

void *CHUISControlInstanceToggle.viewModel.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v5 + 16);
  v3 = v2;

  return v2;
}

_BYTE *CHUISControlInstanceToggle.init(control:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:0 hostIdentifier:0 configurationIdentifier:0];
  v4 = [v1 initWithInstanceIdentity_];
  v4[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 1;
  v5 = &v4[OBJC_IVAR___CHUISControlInstance__adapter];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 16);
  v9 = v4;
  v8(1, v6, v7);
  swift_endAccess();

  return v9;
}

id CHUISControlInstanceToggle.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

char *CHUISControlInstanceToggle.init(instanceIdentity:)(void *a1)
{
  BSDispatchQueueAssertMain();
  v21.receiver = v1;
  v21.super_class = CHUISControlInstanceToggle;
  v3 = objc_msgSendSuper2(&v21, sel_initWithInstanceIdentity_, a1);
  v4 = qword_1EDE3C588;
  v5 = v3;
  v6 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v20);
  v7 = type metadata accessor for ControlInstanceToggle(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D929CF00(v20, v17);
  v10 = sub_1D92E23F8(v6, v17);

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_allocObject();
  v12 = sub_1D92DF9D0(v10);
  swift_unknownObjectWeakAssign();
  v20[3] = v11;
  v20[4] = &off_1F54C1D40;
  v20[0] = v12;
  v13 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&v5[v13], v17);
  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v15 + 120))(v14, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v5[v13], v20);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v5;
}

id CHUISControlInstanceToggle.init(widget:)(void *a1)
{
  return sub_1D92DF6F8(a1, &selRef_initWithWidget_);
}

{
  v2 = sub_1D92E79C8(a1);

  return v2;
}

id sub_1D92E79C8(void *a1)
{
  BSDispatchQueueAssertMain();
  v3 = [a1 extensionIdentity];
  v4 = [a1 kind];
  if (!v4)
  {
    sub_1D9327F84();
    v4 = sub_1D9327F74();
  }

  v5 = [a1 intentReference];
  v6 = [objc_allocWithZone(MEMORY[0x1E6994260]) initWithExtensionIdentity:v3 kind:v4 intentReference:v5];

  v7 = [v1 initWithControl_];
  return v7;
}

unint64_t sub_1D92E7AC4()
{
  result = qword_1ECAFCB88;
  if (!qword_1ECAFCB88)
  {
    type metadata accessor for ControlInstanceToggle.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCB88);
  }

  return result;
}

uint64_t sub_1D92E7B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlInstance.__allocating_init(instanceIdentity:)(uint64_t a1)
{
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v4);
  return (*(v1 + 592))(a1, v4);
}

uint64_t sub_1D92E7C84()
{
  result = sub_1D9327384();
  qword_1EDE400F8 = result;
  return result;
}

uint64_t sub_1D92E7CA4()
{
  result = sub_1D9327444();
  qword_1ECAFF0D0 = result;
  return result;
}

uint64_t ControlInstance.viewModelUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = sub_1D9328174();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t sub_1D92E7D78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  sub_1D9328134();
  v6 = sub_1D9328374();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1D92E7E30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  sub_1D9328134();
  v6 = sub_1D9328374();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_1D92E7EF0(NSObject *a1)
{
  v108 = a1;
  v86 = *v1;
  v2 = v86;
  v3 = *(v86 + 80);
  v4 = sub_1D9328134();
  v99 = *(v4 - 8);
  v5 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v84 - v6;
  v100 = v7;
  v94 = sub_1D9328374();
  v92 = *(v94 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v84 - v9;
  v97 = sub_1D93280F4();
  v98 = sub_1D9328374();
  v96 = *(v98 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v84 - v11;
  v12 = sub_1D9326BE4();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 - 8);
  isa = v16[8].isa;
  v18 = MEMORY[0x1EEE9AC00](v14);
  v91 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v84 - v20;
  v21 = sub_1D9328374();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v107 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v88 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v84 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = *(TupleTypeMetadata2 - 8);
  v30 = v90[8].isa;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = &v84 - v31;
  v33 = *(v2 + 112);
  swift_beginAccess();
  v34 = *(TupleTypeMetadata2 + 48);
  v109 = v33;
  v110 = v22;
  v35 = *(v22 + 16);
  v106 = v1;
  v35(v32, &v1[v33], v21);
  v35(&v32[v34], v108, v21);
  v108 = v16;
  v36 = v16 + 6;
  v37 = v16[6].isa;
  v38 = v3;
  v39 = v3;
  v40 = v36;
  v41 = v37(v32, 1, v39);
  v101 = v37;
  if (v41 == 1)
  {
    if (v37(&v32[v34], 1, v38) == 1)
    {
      (*(v110 + 8))(v32, v21);
      v42 = v106;
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v35(v105, v32, v21);
  if (v37(&v32[v34], 1, v38) == 1)
  {
    (v108[1].isa)(v105, v38);
LABEL_6:
    (v90[1].isa)(v32, TupleTypeMetadata2);
    v42 = v106;
    goto LABEL_7;
  }

  v90 = v40;
  v64 = v21;
  v65 = v35;
  v66 = v108;
  v67 = v38;
  v68 = v89;
  (v108[4].isa)(v89, &v32[v34], v67);
  v69 = *(*(v86 + 88) + 8);
  v70 = v105;
  LODWORD(v86) = sub_1D9327F64();
  v71 = v66[1].isa;
  v71(v68, v67);
  v38 = v67;
  v71(v70, v67);
  v35 = v65;
  v21 = v64;
  (*(v110 + 8))(v32, v64);
  v37 = v101;
  v42 = v106;
  if ((v86 & 1) == 0)
  {
LABEL_7:
    v87 = v35;
    v44 = v102;
    v43 = v103;
    v45 = v104;
    (*(v103 + 16))(v102, &v42[*(*v42 + 176)], v104);

    v46 = sub_1D9326BC4();
    v47 = sub_1D9328234();

    LODWORD(v106) = v47;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v111 = v105;
      *v48 = 136446466;
      v49 = &v42[*(*v42 + 184)];
      v50 = *v49;
      v51 = v49[1];

      v52 = sub_1D9293524(v50, v51, &v111);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2082;
      v53 = v88;
      v54 = v21;
      v90 = v46;
      v55 = v101;
      v56 = v21;
      v57 = v87;
      v87(v88, &v42[v109], v54);
      v58 = v55(v53, 1, v38);
      (*(v110 + 8))(v53, v56);
      if (v58 == 1)
      {
        v59 = 7104878;
      }

      else
      {
        v59 = 0x6C696E20746F6ELL;
      }

      if (v58 == 1)
      {
        v60 = 0xE300000000000000;
      }

      else
      {
        v60 = 0xE700000000000000;
      }

      v61 = sub_1D9293524(v59, v60, &v111);
      v35 = v57;
      v21 = v56;
      v37 = v55;

      *(v48 + 14) = v61;
      v62 = v90;
      _os_log_impl(&dword_1D928E000, v90, v106, "[%{public}s] View model changed. new value is %{public}s", v48, 0x16u);
      v63 = v105;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v63, -1, -1);
      MEMORY[0x1DA72F920](v48, -1, -1);

      (*(v103 + 8))(v102, v104);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      v35 = v87;
      v37 = v101;
    }
  }

LABEL_17:
  v72 = v107;
  v35(v107, &v42[v109], v21);
  if (v37(v72, 1, v38) == 1)
  {
    return (*(v110 + 8))(v72, v21);
  }

  v74 = v108;
  v75 = v91;
  (v108[4].isa)(v91, v72, v38);
  v76 = v93;
  sub_1D92E7D78(v93);
  v78 = v99;
  v77 = v100;
  v79 = (*(v99 + 48))(v76, 1, v100);
  v80 = (v92 + 8);
  if (v79)
  {
    (v74[1].isa)(v75, v38);
    (*v80)(v76, v94);
    v81 = 1;
    v82 = v95;
  }

  else
  {
    v83 = v85;
    (*(v78 + 16))(v85, v76, v77);
    (*v80)(v76, v94);
    (v74[2].isa)(v89, v75, v38);
    v82 = v95;
    sub_1D9328114();
    (*(v78 + 8))(v83, v77);
    (v74[1].isa)(v75, v38);
    v81 = 0;
  }

  (*(*(v97 - 8) + 56))(v82, v81, 1);
  return (*(v96 + 8))(v82, v98);
}

uint64_t sub_1D92E8A38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1D9328374();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

id sub_1D92E8B00()
{
  v1 = [*(v0 + *(*v0 + 120)) control];

  return v1;
}

uint64_t ControlInstance.descriptorUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D92E8C00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  return sub_1D92973DC(v1 + v3, a1, &qword_1ECAFCA68, &qword_1D932FE90);
}

uint64_t sub_1D92E8C74(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  sub_1D92C3C20(a1, v1 + v3, &qword_1ECAFCA68, &qword_1D932FE90);
  return swift_endAccess();
}

void *sub_1D92E8CF0()
{
  v1 = *(v0 + *(*v0 + 168));
  if (v1)
  {
    swift_beginAccess();
    v1 = v1[4];
    v2 = v1;
  }

  return v1;
}

void sub_1D92E8D50(void *a1)
{
  v2 = *(v1 + *(*v1 + 168));
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    *(v2 + 32) = a1;
    v4 = a1;

    sub_1D92D34F0(v3);
  }

  else
  {
  }
}

void (*sub_1D92E8E08(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D92E8CF0();
  return sub_1D92E8E50;
}

void sub_1D92E8E50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_1D92E8D50(v2);
  }

  else
  {
    sub_1D92E8D50(*a1);
  }
}

uint64_t sub_1D92E8EB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v10[0] = v2;
  v10[1] = v3;
  v11 = v4;
  v12 = v5;
  v13 = v7;
  v14 = v6;

  return sub_1D92E9250(v10);
}

uint64_t sub_1D92E8F14()
{
  v1 = *(v0 + *(*v0 + 168));
  if (v1)
  {
    v2 = (v0 + *(*v0 + 144));
    swift_beginAccess();
    v15 = v2[1];
    v16 = *v2;
    v14 = *(v2 + 1);
    v13 = v2[16];
    v4 = *(v2 + 3);
    v3 = *(v2 + 4);
    v5 = (v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    v8 = *(v5 + 1);
    v9 = v5[16];
    v11 = *(v5 + 3);
    v10 = *(v5 + 4);
    *v5 = v16;
    v5[1] = v15;
    *(v5 + 1) = v14;
    v5[16] = v13;
    *(v5 + 3) = v4;
    *(v5 + 4) = v3;

    v17[0] = v6;
    v17[1] = v7;
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    sub_1D92D422C(v17);
  }

  return result;
}

uint64_t sub_1D92E9074@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_1D92E90F4(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  v4 = *(v3 + 4);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  *(v3 + 4) = *(a1 + 32);

  v7 = *(v1 + *(*v1 + 168));
  if (v7)
  {
    v19 = v3[1];
    v20 = *v3;
    v18 = *(v3 + 1);
    v17 = v3[16];
    v9 = *(v3 + 3);
    v8 = *(v3 + 4);
    v10 = (v7 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 1);
    v14 = v10[16];
    v16 = *(v10 + 3);
    v15 = *(v10 + 4);
    *v10 = v20;
    v10[1] = v19;
    *(v10 + 1) = v18;
    v10[16] = v17;
    *(v10 + 3) = v9;
    *(v10 + 4) = v8;

    v21[0] = v11;
    v21[1] = v12;
    v22 = v13;
    v23 = v14;
    v24 = v16;
    v25 = v15;
    sub_1D92D422C(v21);
  }

  return result;
}

uint64_t sub_1D92E9250(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = v1 + *(*v1 + 144);
  swift_beginAccess();
  v9 = *(v8 + 32);
  *v8 = v2;
  *(v8 + 1) = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;

  return sub_1D92E8F14();
}

void (*sub_1D92E92EC(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92F0604;
}

void (*sub_1D92E9384(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92E941C;
}

void (*sub_1D92E9420(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92F0604;
}

void sub_1D92E94B8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + *(*v4 + 168));
    if (v5)
    {
      v6 = (v4 + v3[4]);
      v18 = v6[1];
      v19 = *v6;
      v17 = *(v6 + 1);
      v16 = v6[16];
      v7 = *(v6 + 4);
      v15 = *(v6 + 3);
      v8 = (v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
      swift_beginAccess();
      v9 = *v8;
      v10 = v8[1];
      v11 = *(v8 + 1);
      v12 = v8[16];
      v14 = *(v8 + 3);
      v13 = *(v8 + 4);
      *v8 = v19;
      v8[1] = v18;
      *(v8 + 1) = v17;
      v8[16] = v16;
      *(v8 + 3) = v15;
      *(v8 + 4) = v7;

      v20[0] = v9;
      v20[1] = v10;
      v21 = v11;
      v22 = v12;
      v23 = v14;
      v24 = v13;
      sub_1D92D422C(v20);
    }
  }

  free(v3);
}

uint64_t (*sub_1D92E9608(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92E9678;
}

uint64_t sub_1D92E9690(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1D92E9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a2;
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  if (a1)
  {
    sub_1D92D79B0();
  }

  v19 = *v8;
  v20 = *(*v8 + 216);
  if (*(v8 + v20))
  {
    v21 = *(v8 + v20);

    sub_1D9326C14();

    v19 = *v8;
  }

  v22 = *(v19 + 168);
  v23 = *(v8 + v22);
  if (v23)
  {
    v24 = *(v8 + v22);

    v25 = sub_1D92993CC();
    v34 = v25;

    v41 = v25;
    sub_1D92DBC3C();
    v36 = a4;
    v26 = sub_1D93282A4();
    v37 = a5;
    v27 = v26;
    v40 = v26;
    v28 = sub_1D9328284();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v35 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
    sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20);
    sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C);
    sub_1D9326C74();
    sub_1D92933A0(v13, &qword_1ECAFC540, &qword_1D932E450);

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v36;
    *(v30 + 24) = v29;
    sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0);
    v31 = v35;
    v23 = sub_1D9326C94();

    (*(v15 + 8))(v18, v31);
  }

  v32 = *(v8 + v20);
  *(v8 + v20) = v23;
}

uint64_t sub_1D92E9B0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  if (a1)
  {
    sub_1D92D79B0();
    v4 = *v2;
  }

  v15 = *(v4 + 216);
  if (*(v2 + v15))
  {
    v16 = *(v2 + v15);

    sub_1D9326C14();

    v4 = *v2;
  }

  v17 = *(v4 + 168);
  if (*(v2 + v17))
  {
    v18 = *(v2 + v17);

    v19 = sub_1D92993CC();

    v34 = v19;
    sub_1D92DBC3C();
    v31 = v5;
    v20 = sub_1D93282A4();
    v33 = v20;
    v21 = sub_1D9328284();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
    v32 = v10;
    sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20);
    sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C);
    sub_1D9326C74();
    sub_1D92933A0(v9, &qword_1ECAFC540, &qword_1D932E450);

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v31;
    v23[2] = *(v31 + 80);
    v23[3] = *(v24 + 88);
    v23[4] = v22;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1D92F054C;
    *(v25 + 24) = v23;
    sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0);
    v26 = v32;
    v27 = sub_1D9326C94();

    (*(v11 + 8))(v14, v26);
    v4 = *v2;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v4 + 216);
  v29 = *(v2 + v28);
  *(v2 + v28) = v27;
}

uint64_t sub_1D92E9F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB0, &qword_1D932E7A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    BSDispatchQueueAssertMain();
    v15 = *v14;
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      v31 = v12;
      v19 = v0;
      v20 = v4;
      v21 = v1;
      v22 = ObjectType;
      v23 = *(v17 + 16);

      v24 = v22;
      v1 = v21;
      v4 = v20;
      v0 = v19;
      v12 = v31;
      v23(v24, v17);

      v15 = *v14;
    }

    v25 = *(v15 + 136);
    swift_beginAccess();
    sub_1D92973DC(v14 + v25, v8, &qword_1ECAFCA68, &qword_1D932FE90);
    if ((*(v1 + 48))(v8, 1, v0))
    {

      sub_1D92933A0(v8, &qword_1ECAFCA68, &qword_1D932FE90);
      v26 = 1;
    }

    else
    {
      (*(v1 + 16))(v4, v8, v0);
      sub_1D92933A0(v8, &qword_1ECAFCA68, &qword_1D932FE90);
      v27 = *(v14 + *(*v14 + 168));
      if (v27)
      {
        swift_beginAccess();
        v27 = v27[4];
        v28 = v27;
      }

      v32 = v27;
      sub_1D9328114();

      (*(v1 + 8))(v4, v0);
      v26 = 0;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB8, &unk_1D932E7B0);
    (*(*(v29 - 8) + 56))(v12, v26, 1, v29);
    return sub_1D92933A0(v12, &qword_1ECAFCBB0, &qword_1D932E7A8);
  }

  return result;
}

uint64_t sub_1D92EA2FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB0, &qword_1D932E7A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1D92EDD00();
    sub_1D92E8C00(v8);
    if ((*(v1 + 48))(v8, 1, v0))
    {

      sub_1D92933A0(v8, &qword_1ECAFCA68, &qword_1D932FE90);
      v15 = 1;
    }

    else
    {
      (*(v1 + 16))(v4, v8, v0);
      sub_1D92933A0(v8, &qword_1ECAFCA68, &qword_1D932FE90);
      v16 = *(v14 + *(*v14 + 168));
      if (v16)
      {
        swift_beginAccess();
        v16 = v16[4];
        v17 = v16;
      }

      v19 = v16;
      sub_1D9328114();

      (*(v1 + 8))(v4, v0);
      v15 = 0;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB8, &unk_1D932E7B0);
    (*(*(v18 - 8) + 56))(v12, v15, 1, v18);
    return sub_1D92933A0(v12, &qword_1ECAFCBB0, &qword_1D932E7A8);
  }

  return result;
}

uint64_t sub_1D92EA5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 176);
  v4 = sub_1D9326BE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D92EA6A0(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t ControlInstance.__allocating_init(control:contentType:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v7);
  v5 = (*(v2 + 592))(v4, v7);

  return v5;
}

uint64_t *ControlInstance.__allocating_init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_1D92EE728(a1, a2);

  return v7;
}

uint64_t *ControlInstance.init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  v3 = sub_1D92EE728(a1, a2);

  return v3;
}

void ControlInstance.deinit()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + v1[26]) == 1)
  {
    v2 = v1[12];
    v3 = v1[10];
    v4 = sub_1D9328174();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    v5 = *(*v0 + 104);
    sub_1D9328134();
    v6 = sub_1D9328374();
    (*(*(v6 - 8) + 8))(v0 + v5, v6);
    v7 = *(*v0 + 112);
    v8 = sub_1D9328374();
    (*(*(v8 - 8) + 8))(v0 + v7, v8);

    v9 = *(*v0 + 128);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);
    v11 = *(v0 + *(*v0 + 144) + 32);

    v12 = *(v0 + *(*v0 + 152));

    v13 = *(v0 + *(*v0 + 168));

    v14 = *(*v0 + 176);
    v15 = sub_1D9326BE4();
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    v16 = *(v0 + *(*v0 + 184) + 8);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
    v17 = *(v0 + *(*v0 + 216));

    v18 = *(v0 + *(*v0 + 224));
  }

  else
  {
    __break(1u);
  }
}

uint64_t ControlInstance.__deallocating_deinit()
{
  ControlInstance.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D92EABB4()
{
  result = BSDispatchQueueAssertMain();
  v2 = *(v0 + *(*v0 + 168));
  if (v2)
  {
    v3 = *(*v0 + 232);
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    v6 = *(v2 + v5);
    *(v2 + v5) = v4;

    sub_1D92D490C(v6);
  }

  return result;
}

uint64_t sub_1D92EAC8C()
{
  v1 = *(*v0 + 232);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D92EACDC(uint64_t a1)
{
  v3 = *(*v1 + 232);
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = BSDispatchQueueAssertMain();
  v5 = *(v1 + *(*v1 + 168));
  if (v5)
  {
    v6 = *(v1 + v3);
    v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;

    sub_1D92D490C(v8);
  }

  return result;
}

uint64_t sub_1D92EADA0(uint64_t a1)
{
  v3 = *(*v1 + 232);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1D92EABB4();
}

void (*sub_1D92EAE00(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92F0608;
}

void (*sub_1D92EAE98(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92EAF30;
}

void (*sub_1D92EAF34(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92F0608;
}

void sub_1D92EAFCC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    BSDispatchQueueAssertMain();
    v5 = *(v4 + *(*v4 + 168));
    if (v5)
    {
      v6 = *(v3[3] + v3[4]);
      v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
      swift_beginAccess();
      v8 = *(v5 + v7);
      *(v5 + v7) = v6;

      sub_1D92D490C(v8);
    }
  }

  free(v3);
}

uint64_t (*sub_1D92EB08C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92EB0FC;
}

uint64_t sub_1D92EB114(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_1D92EB158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  result = BSDispatchQueueAssertMain();
  v19 = *v4;
  if ((*(v4 + *(*v4 + 208)) & 1) == 0)
  {
    v20 = *(v4 + *(v19 + 168));
    if (v20)
    {
      if ((*(v20 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) & 1) == 0)
      {
        v45 = a4;
        v21 = *(v19 + 232);
        swift_beginAccess();
        v44 = a3;
        v22 = *(v4 + v21);
        v43 = a2;
        v23 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
        swift_beginAccess();
        v24 = *(v20 + v23);
        *(v20 + v23) = v22;

        v42 = a1;
        v25 = v4;
        sub_1D92D490C(v24);
        sub_1D92D594C();
        v27 = v26;
        v28 = *(*v4 + 152);
        v29 = *(v4 + v28);
        *(v25 + v28) = v26;

        v46 = v27;
        v41 = sub_1D92993CC();
        v47 = v41;
        sub_1D92DBC3C();
        v40 = sub_1D93282A4();
        v48 = v40;
        v30 = sub_1D9328284();
        (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
        sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20);
        sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C);
        sub_1D9326C74();
        sub_1D92933A0(v12, &qword_1ECAFC540, &qword_1D932E450);

        v31 = swift_allocObject();
        swift_weakInit();
        v32 = swift_allocObject();
        *(v32 + 16) = v44;
        *(v32 + 24) = v31;
        sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0);
        sub_1D9326C94();

        (*(v14 + 8))(v17, v13);
        v33 = *(*v25 + 224);
        swift_beginAccess();
        sub_1D9326C04();
        swift_endAccess();

        sub_1D92D5CC0();
        BSDispatchQueueAssertMain();
        v34 = *v25;
        v35 = swift_conformsToProtocol2();
        if (v35)
        {
          v36 = v35;
          ObjectType = swift_getObjectType();
          v38 = *(v36 + 16);

          v38(ObjectType, v36);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D92EB640()
{
  v1 = *v0;
  sub_1D9326BE4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  result = BSDispatchQueueAssertMain();
  v12 = *v0;
  if ((*(v0 + *(*v0 + 208)) & 1) == 0)
  {
    v13 = *(v0 + *(v12 + 168));
    if (v13)
    {
      if ((*(v13 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) & 1) == 0)
      {
        v31 = v7;
        v14 = *(v12 + 232);
        swift_beginAccess();
        v15 = *(v0 + v14);
        v16 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
        swift_beginAccess();
        v17 = *(v13 + v16);
        *(v13 + v16) = v15;

        v18 = v0;
        sub_1D92D490C(v17);
        sub_1D92D594C();
        v20 = v19;
        v21 = *(*v0 + 152);
        v22 = *(v0 + v21);
        *(v18 + v21) = v19;

        v32 = v20;
        v30 = sub_1D92993CC();
        v33 = v30;
        sub_1D92DBC3C();
        v29 = sub_1D93282A4();
        v34 = v29;
        v23 = sub_1D9328284();
        (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
        sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20);
        sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C);
        sub_1D9326C74();
        sub_1D92933A0(v5, &qword_1ECAFC540, &qword_1D932E450);

        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        v25[2] = *(v1 + 80);
        v25[3] = *(v1 + 88);
        v25[4] = v24;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1D92EF828;
        *(v26 + 24) = v25;
        sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0);
        sub_1D9326C94();

        (*(v31 + 8))(v10, v6);
        v27 = *(*v18 + 224);
        swift_beginAccess();
        sub_1D9326C04();
        swift_endAccess();

        sub_1D92D5CC0();
        sub_1D92EDD00();
      }
    }
  }

  return result;
}

uint64_t sub_1D92EBB1C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    BSDispatchQueueAssertMain();
    v2 = *v1;
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
    }
  }

  return result;
}

uint64_t sub_1D92EBBDC()
{
  sub_1D9326BE4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D92EDD00();
  }

  return result;
}

void sub_1D92EBC44()
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1107296256;
  v1[2] = sub_1D9290DB0;
  v1[3] = &block_descriptor_2;
  v0 = _Block_copy(v1);

  BSDispatchMain();
  _Block_release(v0);
}

uint64_t sub_1D92EBCF8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAD8, &qword_1D932E038);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAC8, &unk_1D932E7D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  result = MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v26 = *(*a1 + 208);
  if ((*(a1 + v26) & 1) == 0)
  {
    v67 = v6;
    v76 = v11;
    *(a1 + v26) = 1;
    v27 = *(*a1 + 216);
    v28 = *(a1 + v27);
    v68 = v23;
    v66 = v18;
    if (v28)
    {

      sub_1D9326C14();

      v29 = *(a1 + v27);
    }

    v73 = v25;
    v75 = v14;
    v70 = v3;
    v71 = v2;
    *(a1 + v27) = 0;

    v30 = *(*a1 + 224);
    swift_beginAccess();
    v31 = *(a1 + v30);
    v69 = v13;
    v74 = v15;
    if ((v31 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10]);
      result = sub_1D93281E4();
      v32 = v79;
      v33 = v80;
      v34 = v81;
      v35 = v82;
      v36 = v83;
    }

    else
    {
      v37 = -1 << *(v31 + 32);
      v33 = v31 + 56;
      v34 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v36 = v39 & *(v31 + 56);
      result = swift_bridgeObjectRetain_n();
      v35 = 0;
      v32 = v31;
    }

    v72 = v34;
    v40 = (v34 + 64) >> 6;
    if (v32 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v41 = v35;
      v42 = v36;
      v43 = v35;
      if (!v36)
      {
        break;
      }

LABEL_15:
      v44 = (v42 - 1) & v42;
      v45 = *(*(v32 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

      if (!v45)
      {
LABEL_21:
        sub_1D92C9738();

        v47 = *(*a1 + 136);
        swift_beginAccess();
        v48 = v73;
        sub_1D92973DC(a1 + v47, v73, &qword_1ECAFCA68, &qword_1D932FE90);
        v50 = v74;
        v49 = v75;
        if ((*(v74 + 48))(v48, 1, v75))
        {
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v51 = v66;
          (*(v50 + 16))(v66, v48, v49);
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          (*(v50 + 8))(v51, v49);
        }

        v52 = v71;
        v53 = v70;
        v54 = v69;
        v55 = v68;
        (*(v50 + 56))(v68, 1, 1, v49);
        swift_beginAccess();
        sub_1D92C3C20(v55, a1 + v47, &qword_1ECAFCA68, &qword_1D932FE90);
        swift_endAccess();
        v56 = *(*a1 + 104);
        swift_beginAccess();
        sub_1D92973DC(a1 + v56, v54, &qword_1ECAFCAC8, &unk_1D932E7D0);
        if ((*(v53 + 48))(v54, 1, v52))
        {
          sub_1D92933A0(v54, &qword_1ECAFCAC8, &unk_1D932E7D0);
        }

        else
        {
          v57 = v67;
          (*(v53 + 16))(v67, v54, v52);
          sub_1D92933A0(v54, &qword_1ECAFCAC8, &unk_1D932E7D0);
          sub_1D9328124();
          (*(v53 + 8))(v57, v52);
        }

        v58 = v76;
        (*(v53 + 56))(v76, 1, 1, v52);
        swift_beginAccess();
        sub_1D92C3C20(v58, a1 + v56, &qword_1ECAFCAC8, &unk_1D932E7D0);
        swift_endAccess();
        v59 = *a1;
        v60 = *(*a1 + 152);
        if (*(a1 + v60))
        {
          v61 = *(a1 + v60);

          sub_1D92C7A24();

          v59 = *a1;
        }

        v62 = *(v59 + 168);
        if (*(a1 + v62))
        {
          v63 = *(a1 + v62);

          sub_1D92D79B0();

          v64 = *(a1 + v62);
        }

        else
        {
          v64 = 0;
        }

        *(a1 + v62) = 0;
        sub_1D92E9748(v64, &unk_1F54C14C0, &unk_1F54C14E8, sub_1D92F0560, sub_1D92CA824);
      }

      while (1)
      {
        sub_1D9326C14();

        v35 = v43;
        v36 = v44;
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v46 = sub_1D93283F4();
        if (v46)
        {
          v77 = v46;
          sub_1D9326C24();
          swift_dynamicCast();
          v43 = v35;
          v44 = v36;
          if (v78)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_21;
      }

      v42 = *(v33 + 8 * v43);
      ++v41;
      if (v42)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D92EC534(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAB8, &unk_1D932E000);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA8, &qword_1D932DFF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  result = MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v26 = *(*a1 + 208);
  if ((*(a1 + v26) & 1) == 0)
  {
    v67 = v6;
    v76 = v11;
    *(a1 + v26) = 1;
    v27 = *(*a1 + 216);
    v28 = *(a1 + v27);
    v68 = v23;
    v66 = v18;
    if (v28)
    {

      sub_1D9326C14();

      v29 = *(a1 + v27);
    }

    v73 = v25;
    v75 = v14;
    v70 = v3;
    v71 = v2;
    *(a1 + v27) = 0;

    v30 = *(*a1 + 224);
    swift_beginAccess();
    v31 = *(a1 + v30);
    v69 = v13;
    v74 = v15;
    if ((v31 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10]);
      result = sub_1D93281E4();
      v32 = v79;
      v33 = v80;
      v34 = v81;
      v35 = v82;
      v36 = v83;
    }

    else
    {
      v37 = -1 << *(v31 + 32);
      v33 = v31 + 56;
      v34 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v36 = v39 & *(v31 + 56);
      result = swift_bridgeObjectRetain_n();
      v35 = 0;
      v32 = v31;
    }

    v72 = v34;
    v40 = (v34 + 64) >> 6;
    if (v32 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v41 = v35;
      v42 = v36;
      v43 = v35;
      if (!v36)
      {
        break;
      }

LABEL_15:
      v44 = (v42 - 1) & v42;
      v45 = *(*(v32 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

      if (!v45)
      {
LABEL_21:
        sub_1D92C9738();

        v47 = *(*a1 + 136);
        swift_beginAccess();
        v48 = v73;
        sub_1D92973DC(a1 + v47, v73, &qword_1ECAFCA68, &qword_1D932FE90);
        v50 = v74;
        v49 = v75;
        if ((*(v74 + 48))(v48, 1, v75))
        {
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v51 = v66;
          (*(v50 + 16))(v66, v48, v49);
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          (*(v50 + 8))(v51, v49);
        }

        v52 = v71;
        v53 = v70;
        v54 = v69;
        v55 = v68;
        (*(v50 + 56))(v68, 1, 1, v49);
        swift_beginAccess();
        sub_1D92C3C20(v55, a1 + v47, &qword_1ECAFCA68, &qword_1D932FE90);
        swift_endAccess();
        v56 = *(*a1 + 104);
        swift_beginAccess();
        sub_1D92973DC(a1 + v56, v54, &qword_1ECAFCAA8, &qword_1D932DFF0);
        if ((*(v53 + 48))(v54, 1, v52))
        {
          sub_1D92933A0(v54, &qword_1ECAFCAA8, &qword_1D932DFF0);
        }

        else
        {
          v57 = v67;
          (*(v53 + 16))(v67, v54, v52);
          sub_1D92933A0(v54, &qword_1ECAFCAA8, &qword_1D932DFF0);
          sub_1D9328124();
          (*(v53 + 8))(v57, v52);
        }

        v58 = v76;
        (*(v53 + 56))(v76, 1, 1, v52);
        swift_beginAccess();
        sub_1D92C3C20(v58, a1 + v56, &qword_1ECAFCAA8, &qword_1D932DFF0);
        swift_endAccess();
        v59 = *a1;
        v60 = *(*a1 + 152);
        if (*(a1 + v60))
        {
          v61 = *(a1 + v60);

          sub_1D92C7A24();

          v59 = *a1;
        }

        v62 = *(v59 + 168);
        if (*(a1 + v62))
        {
          v63 = *(a1 + v62);

          sub_1D92D79B0();

          v64 = *(a1 + v62);
        }

        else
        {
          v64 = 0;
        }

        *(a1 + v62) = 0;
        sub_1D92E9748(v64, &unk_1F54C1560, &unk_1F54C1588, sub_1D92F05EC, sub_1D92CA824);
      }

      while (1)
      {
        sub_1D9326C14();

        v35 = v43;
        v36 = v44;
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v46 = sub_1D93283F4();
        if (v46)
        {
          v77 = v46;
          sub_1D9326C24();
          swift_dynamicCast();
          v43 = v35;
          v44 = v36;
          if (v78)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_21;
      }

      v42 = *(v33 + 8 * v43);
      ++v41;
      if (v42)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D92ECD70(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA90, &unk_1D932DFC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA80, &qword_1D932DFB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  result = MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v26 = *(*a1 + 208);
  if ((*(a1 + v26) & 1) == 0)
  {
    v67 = v6;
    v76 = v11;
    *(a1 + v26) = 1;
    v27 = *(*a1 + 216);
    v28 = *(a1 + v27);
    v68 = v23;
    v66 = v18;
    if (v28)
    {

      sub_1D9326C14();

      v29 = *(a1 + v27);
    }

    v73 = v25;
    v75 = v14;
    v70 = v3;
    v71 = v2;
    *(a1 + v27) = 0;

    v30 = *(*a1 + 224);
    swift_beginAccess();
    v31 = *(a1 + v30);
    v69 = v13;
    v74 = v15;
    if ((v31 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10]);
      result = sub_1D93281E4();
      v32 = v79;
      v33 = v80;
      v34 = v81;
      v35 = v82;
      v36 = v83;
    }

    else
    {
      v37 = -1 << *(v31 + 32);
      v33 = v31 + 56;
      v34 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v36 = v39 & *(v31 + 56);
      result = swift_bridgeObjectRetain_n();
      v35 = 0;
      v32 = v31;
    }

    v72 = v34;
    v40 = (v34 + 64) >> 6;
    if (v32 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v41 = v35;
      v42 = v36;
      v43 = v35;
      if (!v36)
      {
        break;
      }

LABEL_15:
      v44 = (v42 - 1) & v42;
      v45 = *(*(v32 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

      if (!v45)
      {
LABEL_21:
        sub_1D92C9738();

        v47 = *(*a1 + 136);
        swift_beginAccess();
        v48 = v73;
        sub_1D92973DC(a1 + v47, v73, &qword_1ECAFCA68, &qword_1D932FE90);
        v50 = v74;
        v49 = v75;
        if ((*(v74 + 48))(v48, 1, v75))
        {
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v51 = v66;
          (*(v50 + 16))(v66, v48, v49);
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          (*(v50 + 8))(v51, v49);
        }

        v52 = v71;
        v53 = v70;
        v54 = v69;
        v55 = v68;
        (*(v50 + 56))(v68, 1, 1, v49);
        swift_beginAccess();
        sub_1D92C3C20(v55, a1 + v47, &qword_1ECAFCA68, &qword_1D932FE90);
        swift_endAccess();
        v56 = *(*a1 + 104);
        swift_beginAccess();
        sub_1D92973DC(a1 + v56, v54, &qword_1ECAFCA80, &qword_1D932DFB0);
        if ((*(v53 + 48))(v54, 1, v52))
        {
          sub_1D92933A0(v54, &qword_1ECAFCA80, &qword_1D932DFB0);
        }

        else
        {
          v57 = v67;
          (*(v53 + 16))(v67, v54, v52);
          sub_1D92933A0(v54, &qword_1ECAFCA80, &qword_1D932DFB0);
          sub_1D9328124();
          (*(v53 + 8))(v57, v52);
        }

        v58 = v76;
        (*(v53 + 56))(v76, 1, 1, v52);
        swift_beginAccess();
        sub_1D92C3C20(v58, a1 + v56, &qword_1ECAFCA80, &qword_1D932DFB0);
        swift_endAccess();
        v59 = *a1;
        v60 = *(*a1 + 152);
        if (*(a1 + v60))
        {
          v61 = *(a1 + v60);

          sub_1D92C7A24();

          v59 = *a1;
        }

        v62 = *(v59 + 168);
        if (*(a1 + v62))
        {
          v63 = *(a1 + v62);

          sub_1D92D79B0();

          v64 = *(a1 + v62);
        }

        else
        {
          v64 = 0;
        }

        *(a1 + v62) = 0;
        sub_1D92E9748(v64, &unk_1F54C13D0, &unk_1F54C13F8, sub_1D92F05EC, sub_1D92CA824);
      }

      while (1)
      {
        sub_1D9326C14();

        v35 = v43;
        v36 = v44;
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v46 = sub_1D93283F4();
        if (v46)
        {
          v77 = v46;
          sub_1D9326C24();
          swift_dynamicCast();
          v43 = v35;
          v44 = v36;
          if (v78)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_21;
      }

      v42 = *(v33 + 8 * v43);
      ++v41;
      if (v42)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D92ED5AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = sub_1D9328134();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v65 - v7;
  v9 = sub_1D9328374();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v77 = *(v17 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  result = MEMORY[0x1EEE9AC00](v22);
  v76 = &v65 - v25;
  v26 = *(v2 + 208);
  if ((*(a1 + v26) & 1) == 0)
  {
    v73 = v24;
    *(a1 + v26) = 1;
    v27 = *a1;
    v28 = *(a1 + *(*a1 + 216));
    v66 = v16;
    if (v28)
    {

      sub_1D9326C14();

      v27 = *a1;
    }

    v67 = v10;
    v69 = v14;
    v65 = v8;
    v70 = v5;
    v29 = *(v27 + 216);
    v30 = *(a1 + v29);
    *(a1 + v29) = 0;

    v31 = *(*a1 + 224);
    swift_beginAccess();
    v32 = *(a1 + v31);
    v71 = v4;
    v68 = v9;
    v74 = v17;
    if ((v32 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10]);
      result = sub_1D93281E4();
      v33 = v80;
      v34 = v81;
      v35 = v82;
      v36 = v83;
      v37 = v84;
    }

    else
    {
      v38 = -1 << *(v32 + 32);
      v34 = v32 + 56;
      v35 = ~v38;
      v39 = -v38;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v37 = v40 & *(v32 + 56);
      result = swift_bridgeObjectRetain_n();
      v36 = 0;
      v33 = v32;
    }

    v72 = v35;
    v41 = (v35 + 64) >> 6;
    if (v33 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v42 = v36;
      v43 = v37;
      v44 = v36;
      if (!v37)
      {
        break;
      }

LABEL_15:
      v45 = (v43 - 1) & v43;
      v46 = *(*(v33 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));

      if (!v46)
      {
LABEL_21:
        sub_1D92C9738();

        v48 = v76;
        sub_1D92E8C00(v76);
        v49 = v77;
        v50 = v74;
        if ((*(v77 + 48))(v48, 1, v74))
        {
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v51 = v75;
          (*(v49 + 16))(v75, v48, v50);
          sub_1D92933A0(v48, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          v49 = v77;
          (*(v77 + 8))(v51, v50);
        }

        v53 = v70;
        v52 = v71;
        v55 = v68;
        v54 = v69;
        v56 = v67;
        v57 = v66;
        v58 = v73;
        (*(v49 + 56))(v73, 1, 1, v50);
        sub_1D92E8C74(v58);
        sub_1D92E7D78(v57);
        if ((*(v53 + 48))(v57, 1, v52))
        {
          (*(v56 + 8))(v57, v55);
        }

        else
        {
          v59 = v65;
          (*(v53 + 16))(v65, v57, v52);
          (*(v56 + 8))(v57, v55);
          sub_1D9328124();
          (*(v53 + 8))(v59, v52);
        }

        (*(v53 + 56))(v54, 1, 1, v52);
        sub_1D92E7E30(v54);
        v60 = *a1;
        v61 = *(*a1 + 152);
        if (*(a1 + v61))
        {
          v62 = *(a1 + v61);

          sub_1D92C7A24();

          v60 = *a1;
        }

        v63 = *(v60 + 168);
        if (*(a1 + v63))
        {
          v64 = *(a1 + v63);

          sub_1D92D79B0();
        }

        return sub_1D92EE6D0(0);
      }

      while (1)
      {
        sub_1D9326C14();

        v36 = v44;
        v37 = v45;
        if ((v33 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v47 = sub_1D93283F4();
        if (v47)
        {
          v78 = v47;
          sub_1D9326C24();
          swift_dynamicCast();
          v44 = v36;
          v45 = v37;
          if (v79)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {
        goto LABEL_21;
      }

      v43 = *(v34 + 8 * v44);
      ++v42;
      if (v43)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D92EDD00()
{
  BSDispatchQueueAssertMain();
  v1 = *v0;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = result;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);

    v5(ObjectType, v3);
  }

  return result;
}

uint64_t ControlInstanceToggle.ViewModel.valueLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t (*sub_1D92EDE38(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D92EAE00(v3);
  return sub_1D92C4C64;
}

uint64_t (*sub_1D92EDEAC(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D92E92EC(v3);
  return sub_1D92C4C64;
}

uint64_t (*sub_1D92EDFC4(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D92EAE98(v3);
  return sub_1D92C40D4;
}

uint64_t (*sub_1D92EE038(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D92E9384(v3);
  return sub_1D92C4C64;
}

uint64_t sub_1D92EE0C0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v7 + 112);
  swift_beginAccess();
  return sub_1D92973DC(v7 + v8, a3, a1, a2);
}

id sub_1D92EE1D0()
{
  v1 = [*(*v0 + *(**v0 + 120)) control];

  return v1;
}

void *sub_1D92EE248()
{
  v1 = *(*v0 + *(**v0 + 168));
  if (v1)
  {
    swift_beginAccess();
    v1 = v1[4];
    v2 = v1;
  }

  return v1;
}

uint64_t sub_1D92EE2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 128);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D92EE340()
{
  v1 = *v0;
  v2 = *(**v0 + 232);
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_1D92EE394(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D92EAF34(v3);
  return sub_1D92C4C64;
}

uint64_t sub_1D92EE408@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 144);
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t (*sub_1D92EE48C(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1D92E9420(v3);
  return sub_1D92C4C64;
}

uint64_t sub_1D92EE528@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v5 + 96);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

void sub_1D92EE630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[4] = a3;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D9290DB0;
  v7[3] = a4;
  v6 = _Block_copy(v7);

  BSDispatchMain();
  _Block_release(v6);
}

uint64_t sub_1D92EE6D0(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1D92E9B0C(v3);
}

uint64_t *sub_1D92EE728(void *a1, uint64_t *a2)
{
  v3 = v2;
  v136 = a2;
  v5 = *v3;
  v133 = sub_1D9326BE4();
  v135 = *(v133 - 8);
  v6 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D93268B4();
  v131 = *(v132 - 8);
  v8 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v102 - v12;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA70, &unk_1D932DFA0);
  v127 = *(v128 - 8);
  v13 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v102 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v122 = *(v123 - 8);
  v19 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v102 - v20;
  v21 = *(v5 + 80);
  v22 = sub_1D9328134();
  v119 = sub_1D9328374();
  v118 = *(v119 - 8);
  v23 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v102 - v24;
  v112 = sub_1D9328104();
  v111 = *(v112 - 8);
  v25 = *(v111 + 64);
  v26 = MEMORY[0x1EEE9AC00](v112);
  v28 = &v102 - v27;
  v29 = *(v22 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v106 = &v102 - v31;
  v110 = sub_1D9328174();
  v107 = *(v110 - 8);
  v32 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v34 = &v102 - v33;
  v35 = v3 + *(v5 + 104);
  v109 = v29;
  v36 = *(v29 + 56);
  v108 = v35;
  v105 = v22;
  v104 = v36;
  v36();
  (*(*(v21 - 8) + 56))(v3 + *(*v3 + 112), 1, 1, v21);
  v37 = v3 + *(*v3 + 136);
  v124 = v16;
  v38 = *(v16 + 56);
  v116 = v37;
  v126 = v15;
  v114 = v16 + 56;
  v113 = v38;
  v38();
  *(v3 + *(*v3 + 152)) = 0;
  *(v3 + *(*v3 + 160)) = 0;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  *(v3 + *(*v3 + 224)) = MEMORY[0x1E69E7CD0];
  if (qword_1EDE3C840 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&unk_1EDE40100, v3 + *(*v3 + 200));
  *(v3 + *(*v3 + 120)) = a1;
  v39 = a1;
  v40 = [v39 control];
  v41 = [v40 _loggingIdentifier];

  v42 = sub_1D9327F84();
  v44 = v43;

  v142 = 58;
  v143 = 0xE100000000000000;
  v115 = v39;
  [v39 contentType];
  v45 = sub_1D93282F4();
  MEMORY[0x1DA72E570](v45);

  v47 = v142;
  v46 = v143;
  v142 = v42;
  v143 = v44;

  MEMORY[0x1DA72E570](v47, v46);

  v48 = v143;
  v49 = (v3 + *(*v3 + 184));
  *v49 = v142;
  v49[1] = v48;
  v50 = v3 + *(*v3 + 144);
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 1;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v3 + *(*v3 + 232)) = 0;
  if (qword_1EDE3BF60 != -1)
  {
    swift_once();
  }

  v51 = v133;
  v52 = __swift_project_value_buffer(v133, qword_1EDE40088);
  v53 = *(*v3 + 176);
  v54 = *(v135 + 16);
  v102 = v135 + 16;
  v103 = v54;
  v54(v3 + v53, v52, v51);
  sub_1D929CF00(v136, v3 + *(*v3 + 192));
  v55 = *MEMORY[0x1E69E8650];
  v56 = v111;
  v57 = v112;
  (*(v111 + 104))(v28, v55, v112);
  v58 = v106;
  sub_1D93280E4();
  (*(v56 + 8))(v28, v57);
  v59 = v117;
  v60 = v105;
  (*(v109 + 32))(v117, v58, v105);
  (v104)(v59, 0, 1, v60);
  (*(v107 + 32))(v3 + *(*v3 + 96), v34, v110);
  v61 = v108;
  swift_beginAccess();
  (*(v118 + 40))(v61, v59, v119);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA0, &qword_1D932DFD0);
  v62 = v127;
  v63 = v125;
  v64 = v55;
  v65 = v128;
  (*(v127 + 104))(v125, v64, v128);
  v66 = v120;
  v67 = v121;
  sub_1D93280E4();
  (*(v62 + 8))(v63, v65);
  v68 = v129;
  v69 = v126;
  (*(v124 + 32))(v129, v67, v126);
  (v113)(v68, 0, 1, v69);
  v70 = v66;
  v71 = v51;
  (*(v122 + 32))(v3 + *(*v3 + 128), v70, v123);
  v72 = v116;
  swift_beginAccess();
  sub_1D92C3C20(v68, v72, &qword_1ECAFCA68, &qword_1D932FE90);
  swift_endAccess();
  v142 = 0;
  v143 = 0xE000000000000000;
  sub_1D9328444();

  v142 = 0x536C6F72746E6F43;
  v143 = 0xEF2D6E6F69737365;
  v73 = v130;
  sub_1D93268A4();
  v74 = sub_1D9326894();
  (*(v131 + 8))(v73, v132);
  v138[0] = v74;
  v75 = sub_1D9328614();
  MEMORY[0x1DA72E570](v75);

  sub_1D9326AD4();
  v76 = v115;
  sub_1D9326A94();
  sub_1D929CF00(v3 + *(*v3 + 192), &v142);
  v77 = v3 + *(*v3 + 144);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  v80 = *(v77 + 1);
  v81 = v77[16];
  v82 = *(v77 + 3);
  v83 = *(v77 + 4);
  LOBYTE(v138[0]) = v78;
  BYTE1(v138[0]) = v79;
  v138[1] = v80;
  v139 = v81;
  v140 = v82;
  v141 = v83;
  sub_1D929CF00(v3 + *(*v3 + 200), v137);
  v84 = type metadata accessor for ControlSession();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();

  sub_1D92D8EF4(v87, &v142, v138, v137);

  v88 = v134;
  v103(v134, v3 + *(*v3 + 176), v51);

  v89 = sub_1D9326BC4();
  v90 = sub_1D9328204();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v142 = v92;
    *v91 = 136446466;
    v93 = (v3 + *(*v3 + 184));
    v94 = *v93;
    v95 = v93[1];

    v96 = sub_1D9293524(v94, v95, &v142);

    *(v91 + 4) = v96;
    *(v91 + 12) = 2082;
    v97 = sub_1D9327F54();
    v99 = sub_1D9293524(v97, v98, &v142);

    *(v91 + 14) = v99;
    _os_log_impl(&dword_1D928E000, v89, v90, "[%{public}s] created new ControlInstance:%{public}s", v91, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v92, -1, -1);
    MEMORY[0x1DA72F920](v91, -1, -1);

    (*(v135 + 8))(v134, v71);
  }

  else
  {

    (*(v135 + 8))(v88, v51);
  }

  sub_1D92EE6D0(v100);

  __swift_destroy_boxed_opaque_existential_1Tm(v136);
  return v3;
}

uint64_t sub_1D92EF6C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1D9328374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = *(v3 + 112);
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v10, v5);
  swift_beginAccess();
  (*(v6 + 24))(v1 + v10, a1, v5);
  swift_endAccess();
  sub_1D92E7EF0(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D92EF828()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D92EBBDC();
}

uint64_t sub_1D92EF854(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D92EF8B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t dispatch thunk of ControlInstanceProtocol.performAction()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 136);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92D9CEC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ControlInstanceProtocol.setState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D92DA198;

  return v11(a1, a2, a3);
}

void sub_1D92EFD94(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = sub_1D9328174();
  if (v3 <= 0x3F)
  {
    v14 = *(v2 - 8) + 64;
    sub_1D9328134();
    v4 = sub_1D9328374();
    if (v5 <= 0x3F)
    {
      v15 = *(v4 - 8) + 64;
      v6 = sub_1D9328374();
      if (v7 <= 0x3F)
      {
        v16 = *(v6 - 8) + 64;
        sub_1D92D9F34(319, &qword_1EDE3BC30, &qword_1ECAFCAA0, &qword_1D932DFD0, MEMORY[0x1E69E8698]);
        if (v9 <= 0x3F)
        {
          v17 = *(v8 - 8) + 64;
          sub_1D92D9F34(319, &qword_1EDE3BC40, &qword_1ECAFCA78, &qword_1D932E600, MEMORY[0x1E69E6720]);
          if (v11 <= 0x3F)
          {
            v18 = *(v10 - 8) + 64;
            v12 = sub_1D9326BE4();
            if (v13 <= 0x3F)
            {
              v19 = *(v12 - 8) + 64;
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlInstanceErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlInstanceErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D92F0450()
{
  result = qword_1ECAFCBA0;
  if (!qword_1ECAFCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCBA0);
  }

  return result;
}

unint64_t sub_1D92F04A8()
{
  result = qword_1ECAFCBA8;
  if (!qword_1ECAFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCBA8);
  }

  return result;
}

uint64_t sub_1D92F0504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D92F054C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D92EA2FC();
}

uint64_t sub_1D92F06A8()
{
  MEMORY[0x1DA72F920](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D92F06E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ControlIconView.Mode(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v6 = sub_1D93273D4();
  LOBYTE(v26) = 0;
  sub_1D9327544();
  v7 = v29;
  v8 = v30;
  v9 = v31;
  v10 = type metadata accessor for ControlIconView(0);
  v11 = v10[7];
  *(a1 + v10[10]) = 1;
  v12 = v10[11];
  v13 = sub_1D9326E44();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = a1 + v10[12];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  sub_1D929705C(v5, a1, type metadata accessor for ControlIconView.Mode);
  *(a1 + v10[5]) = 0;
  *(a1 + v10[6]) = 1;
  *(a1 + v11) = v6;
  v15 = a1 + v10[8];
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  MEMORY[0x1DA72DAB0](&v22, v16);
  v21[6] = v22;
  sub_1D9327544();
  result = sub_1D929748C(v5, type metadata accessor for ControlIconView.Mode);
  v18 = v27;
  v19 = v28;
  v20 = a1 + v10[9];
  *v20 = v26;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19;
  return result;
}

uint64_t sub_1D92F08E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D92973DC(a3, v27 - v11, &unk_1ECAFC910, &qword_1D932E360);
  v13 = sub_1D93280D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D92933A0(v12, &unk_1ECAFC910, &qword_1D932E360);
  }

  else
  {
    sub_1D93280C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D9328064();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D9327FA4() + 32;
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

      sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);

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

  sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);
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

uint64_t sub_1D92F0C04()
{
  v1 = sub_1D9327034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ControlIconView(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1D9328224();
    v9 = sub_1D93271F4();
    sub_1D9326BB4();

    sub_1D9327024();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t ControlIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D929E614(a1);
  v3 = *(v1 + *(type metadata accessor for ControlIconView(0) + 20));
  v4 = sub_1D9326CA4();
  v5 = sub_1D9326CA4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD0, &qword_1D932E918);
  v7 = (a1 + *(result + 36));
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v5;
  return result;
}

uint64_t ControlIconView.systemSymbolName.getter()
{
  v1 = sub_1D93271C4();
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D93271E4();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = type metadata accessor for ControlIconView.Mode(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D929705C(v0, v22, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v4;
    sub_1D9297374(v22, v18, &qword_1ECAFCBD8, &qword_1D932E920);
    sub_1D92973DC(v18, v16, &qword_1ECAFCBD8, &qword_1D932E920);
    v26 = v34;
    if ((*(v34 + 48))(v16, 1, v5) == 1)
    {
      sub_1D92933A0(v18, &qword_1ECAFCBD8, &qword_1D932E920);
      sub_1D92933A0(v16, &qword_1ECAFCBD8, &qword_1D932E920);
    }

    else
    {
      (*(v26 + 32))(v11, v16, v5);
      if (sub_1D9327194())
      {
        (*(v26 + 16))(v9, v11, v5);
        if ((*(v26 + 88))(v9, v5) == *MEMORY[0x1E697CB08])
        {
          (*(v26 + 96))(v9, v5);
          v28 = v32;
          v27 = v33;
          (*(v33 + 32))(v32, v9, v1);
          v29 = sub_1D93271B4();
          (*(v27 + 8))(v28, v1);
          (*(v26 + 8))(v11, v5);
          sub_1D92933A0(v18, &qword_1ECAFCBD8, &qword_1D932E920);
          return v29;
        }

        v30 = *(v26 + 8);
        v30(v11, v5);
        sub_1D92933A0(v18, &qword_1ECAFCBD8, &qword_1D932E920);
        v30(v9, v5);
      }

      else
      {
        (*(v26 + 8))(v11, v5);
        sub_1D92933A0(v18, &qword_1ECAFCBD8, &qword_1D932E920);
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      result = *v22;
      v25 = v22[1];
      return result;
    }

    sub_1D929748C(v22, type metadata accessor for ControlIconView.Mode);
  }

  return 0;
}

uint64_t ControlIconView.controlIconViewParameters(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ControlIconView(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D929705C(v3, v10, type metadata accessor for ControlIconView);
  *&v10[v7[7]] = *a1;
  v11 = type metadata accessor for ControlIconViewParameters(0);
  v10[v7[12]] = *(a1 + v11[10]);
  sub_1D92F8448(a1 + v11[9], &v10[v7[13]]);
  KeyPath = swift_getKeyPath();
  v13 = a1[1];
  sub_1D929705C(v10, a2, type metadata accessor for ControlIconView);
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE8, &qword_1D932E958) + 36));
  *v14 = KeyPath;
  v14[1] = v13;
  v15 = swift_getKeyPath();
  v16 = a1[2];
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBF0, &qword_1D932E988) + 36));
  *v17 = v15;
  v17[1] = v16;
  v18 = swift_getKeyPath();
  v19 = a1[3];
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBF8, &qword_1D932E9B8) + 36));
  *v20 = v18;
  v20[1] = v19;
  v21 = swift_getKeyPath();
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC00, &qword_1D932E9E8) + 36));
  *v22 = v21;
  v22[1] = v13;
  v23 = swift_getKeyPath();
  v24 = v11[8];
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC08, &qword_1D932EA18) + 36));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC10, &qword_1D932EA20);
  sub_1D92973DC(a1 + v24, v25 + *(v26 + 28), &qword_1ECAFCC18, &qword_1D932EA28);
  *v25 = v23;
  v27 = swift_getKeyPath();
  v28 = *(a1 + v11[11]);
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC20, &qword_1D932EA30) + 36));
  *v29 = v27;
  v29[1] = v28;
  swift_retain_n();

  return sub_1D929748C(v10, type metadata accessor for ControlIconView);
}

uint64_t sub_1D92F16A4@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1D9327044();
  *a2 = v4;
  return result;
}

uint64_t sub_1D92F17A8(void (*a1)(void))
{
  a1();
  sub_1D9327044();
  return v2;
}

uint64_t sub_1D92F17F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();

  return sub_1D9327054();
}

uint64_t EnvironmentValues.controlIconImageScale.getter()
{
  sub_1D92A1FA8();

  return sub_1D9327044();
}

uint64_t sub_1D92F18DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1D92973DC(a1, &v10 - v7, &qword_1ECAFCC18, &qword_1D932EA28);
  sub_1D92973DC(v8, v6, &qword_1ECAFCC18, &qword_1D932EA28);
  sub_1D92A1FA8();
  sub_1D9327054();
  return sub_1D92933A0(v8, &qword_1ECAFCC18, &qword_1D932EA28);
}

uint64_t EnvironmentValues.controlIconImageScale.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D92973DC(a1, &v6 - v4, &qword_1ECAFCC18, &qword_1D932EA28);
  sub_1D92A1FA8();
  sub_1D9327054();
  return sub_1D92933A0(a1, &qword_1ECAFCC18, &qword_1D932EA28);
}

uint64_t sub_1D92F1AA8()
{
  sub_1D929E550();
  sub_1D9327044();
  return v1;
}

uint64_t sub_1D92F1AE4(uint64_t *a1)
{
  v2 = *a1;
  sub_1D929E550();

  return sub_1D9327054();
}

uint64_t sub_1D92F1B44@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v70 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC70, &qword_1D932EC00);
  v7 = *(*(v84 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v84);
  v76 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE70, &qword_1D932F478);
  v12 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v70 - v13;
  v14 = sub_1D9327454();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9327274();
  v74 = *(v18 - 8);
  v75 = v18;
  v19 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9327214();
  v72 = *(v22 - 8);
  v73 = v22;
  v23 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9327034();
  v71 = *(v26 - 8);
  v27 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE78, &unk_1D932F480);
  v30 = *(*(v81 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v81);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v70 - v34;
  if (!*v1)
  {
    v42 = v77;
    v41 = v78;
    v43 = v76;
    v80 = v11;
    sub_1D9327444();
    v44 = *(v1 + 8);
    if (v44 < 2)
    {
      sub_1D93270D4();
    }

    else if (v44 == 3)
    {
      sub_1D93270C4();
    }

    else
    {
      if (v44 != 2)
      {
        v69 = sub_1D93270E4();
        (*(*(v69 - 8) + 56))(v41, 1, 1, v69);
        goto LABEL_15;
      }

      sub_1D93270B4();
    }

    v54 = sub_1D93270E4();
    (*(*(v54 - 8) + 56))(v41, 0, 1, v54);
LABEL_15:
    sub_1D9297374(v41, v42, &qword_1ECAFCE68, &qword_1D932F470);
    v55 = sub_1D9327474();

    sub_1D92933A0(v42, &qword_1ECAFCE68, &qword_1D932F470);
    LODWORD(v79) = *(v1 + 16);
    v56 = sub_1D9326CE4();
    v57 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC80, &qword_1D932EC10) + 36));
    *v57 = v44;
    v58 = type metadata accessor for ImageScaleOverride(0);
    v59 = *(v58 + 20);
    *(v57 + v59) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
    swift_storeEnumTagMultiPayload();
    v60 = *(v58 + 24);

    *(v57 + v60) = sub_1D9326CC4();
    *v43 = v55;
    v43[1] = v56;
    KeyPath = swift_getKeyPath();
    v62 = sub_1D9326CE4();
    v63 = sub_1D9326CE4();

    v64 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC78, &qword_1D932EC08) + 36);
    *v64 = KeyPath;
    v64[8] = 0;
    *(v64 + 2) = v62;
    *(v64 + 3) = v63;
    v65 = (v43 + *(v84 + 36));
    *v65 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v66 = type metadata accessor for SymbolColorEffect(0);
    *(v65 + v66[5]) = v44;
    *(v65 + v66[6]) = v79;
    *(v65 + v66[7]) = 0;
    v51 = &qword_1ECAFCC70;
    v52 = &qword_1D932EC00;
    v67 = v80;
    sub_1D9297374(v43, v80, &qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92973DC(v67, v83, &qword_1ECAFCC70, &qword_1D932EC00);
    swift_storeEnumTagMultiPayload();
    sub_1D92FA6AC();
    sub_1D92A092C();
    sub_1D9327104();
    v53 = v67;
    return sub_1D92933A0(v53, v51, v52);
  }

  v78 = *(v1 + 8);
  if (*(v1 + 40))
  {
    v36 = *(type metadata accessor for RasterizedImageView(0) + 32);

    sub_1D92A1DC8(v29);
    if (!sub_1D9326FA4())
    {
      sub_1D9327224();
    }

    sub_1D9326F14();
    sub_1D9327284();

    (*(v74 + 8))(v21, v75);
    sub_1D9327204();
    v38 = v37;
    (*(v72 + 8))(v25, v73);
    v39 = v38 * 2.72 * 0.5;
    (*(v71 + 8))(v29, v26);
    v40 = v39;
  }

  else
  {
    v39 = *(v1 + 24);
    v40 = *(v1 + 32);
  }

  v46 = v79;
  v45 = v80;
  (*(v79 + 104))(v17, *MEMORY[0x1E6981630], v80);
  v47 = sub_1D93274A4();
  (*(v46 + 8))(v17, v45);
  v48 = &v33[*(v81 + 36)];
  *v48 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  swift_storeEnumTagMultiPayload();
  v49 = type metadata accessor for AppIconStyleEffect(0);
  *(v48 + *(v49 + 20)) = v78;
  v50 = (v48 + *(v49 + 24));
  *v50 = v39;
  v50[1] = v40;
  *v33 = v47;
  *(v33 + 1) = 0;
  *(v33 + 8) = 1;
  v51 = &qword_1ECAFCE78;
  v52 = &unk_1D932F480;
  sub_1D9297374(v33, v35, &qword_1ECAFCE78, &unk_1D932F480);
  sub_1D92973DC(v35, v83, &qword_1ECAFCE78, &unk_1D932F480);
  swift_storeEnumTagMultiPayload();
  sub_1D92FA6AC();
  sub_1D92A092C();
  sub_1D9327104();

  v53 = v35;
  return sub_1D92933A0(v53, v51, v52);
}

uint64_t sub_1D92F24D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1D9327274();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D9327214();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D9327034();
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  v10 = MEMORY[0x1EEE9AC00](v43);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37 - v21;
  sub_1D92973DC(v2, v17, &qword_1ECAFCD48, &qword_1D932EDC8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D92933A0(v17, &qword_1ECAFCD48, &qword_1D932EDC8);
    v23 = type metadata accessor for AppIconImageCache.CacheKey(0);
    return (*(*(v23 - 8) + 56))(v46, 1, 1, v23);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    (*(v19 + 16))(v46, v22, v18);
    v25 = *(type metadata accessor for AppIconView(0) + 28);
    v37 = v2;
    sub_1D92A1DC8(v13);
    if (!sub_1D9326FA4())
    {
      sub_1D9327224();
    }

    v26 = v39;
    sub_1D9326F14();
    sub_1D9327284();

    (*(v44 + 8))(v26, v45);
    sub_1D9327204();
    v28 = v27;
    (*(v40 + 8))(v8, v42);
    v29 = v28 * 2.72 * 0.5;
    v30 = *(v41 + 8);
    v31 = v43;
    v30(v13, v43);
    v32 = v38;
    sub_1D92A1DC8(v38);
    sub_1D9326EA4();
    v34 = v33;
    v30(v32, v31);
    (*(v19 + 8))(v22, v18);
    v35 = type metadata accessor for AppIconImageCache.CacheKey(0);
    v36 = v46;
    *(v46 + *(v35 + 20)) = v29;
    *(v36 + *(v35 + 24)) = v34;
    return (*(*(v35 - 8) + 56))(v36, 0, 1, v35);
  }
}

id sub_1D92F29B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for AppIconView(0);
  v37 = *(v3 - 1);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = v5;
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v33 - v7;
  v40 = type metadata accessor for RasterizedImageView(0);
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + v3[8]);
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  v47 = v12;
  v48 = v13;
  v49 = v15;
  v50 = v14;
  v36 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEA0, &unk_1D932F4E8);
  sub_1D93274D4();
  v16 = 0;
  v17 = v46;
  if (v46 >= 2)
  {
    v34 = v15;
    v35 = v44;
    v18 = v45;
    v19 = v46;
    result = [v19 CGImage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    [v19 scale];
    sub_1D9327084();
    sub_1D93272A4();
    v16 = sub_1D93274B4();
    v21 = v35;
    sub_1D92FA80C(v35, v18, v17);
    sub_1D92FA80C(v21, v18, v17);
    v15 = v34;
  }

  v22 = v3[6];
  v23 = *(v2 + v3[5]);
  v24 = *(v2 + v22);
  v47 = v12;
  v48 = v13;
  v49 = v15;
  v50 = v36;
  sub_1D93274D4();
  v25 = v46 == 1;
  if (v46 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v44;
  }

  if (v46 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v45;
  }

  sub_1D92FA80C(v44, v45, v46);
  v28 = *(v40 + 32);
  *&v10[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  swift_storeEnumTagMultiPayload();
  *v10 = v16;
  *(v10 + 1) = v23;
  v10[16] = v24;
  *(v10 + 3) = v26;
  *(v10 + 4) = v27;
  v10[40] = v25;
  v29 = v42;
  sub_1D92F24D0(v42);
  v30 = v39;
  sub_1D929705C(v2, v39, type metadata accessor for AppIconView);
  v31 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v32 = swift_allocObject();
  sub_1D92FAC24(v30, v32 + v31, type metadata accessor for AppIconView);
  sub_1D9297444(qword_1EDE3CE50, type metadata accessor for RasterizedImageView);
  sub_1D92FA89C();
  sub_1D9327314();

  sub_1D92933A0(v29, &qword_1ECAFCE98, &qword_1D932F4E0);
  return sub_1D929748C(v10, type metadata accessor for RasterizedImageView);
}

uint64_t sub_1D92F2E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AppIconView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_1D93280D4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D929705C(a3, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppIconView);
  sub_1D92973DC(a2, v9, &qword_1ECAFCE98, &qword_1D932F4E0);
  sub_1D93280A4();
  v18 = sub_1D9328094();
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  sub_1D92FAC24(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v19, type metadata accessor for AppIconView);
  sub_1D9297374(v9, v21 + v20, &qword_1ECAFCE98, &qword_1D932F4E0);
  sub_1D92F08E8(0, 0, v16, &unk_1D932F500, v21);
}

uint64_t sub_1D92F30D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_1D93280A4();
  v5[15] = sub_1D9328094();
  v8 = sub_1D9328064();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D92F31A4, v8, v7);
}

uint64_t sub_1D92F31A4()
{
  v1 = *(v0 + 112);
  sub_1D92973DC(*(v0 + 104), v1, &qword_1ECAFCE98, &qword_1D932F4E0);
  v2 = type metadata accessor for AppIconImageCache.CacheKey(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);

    sub_1D92933A0(v4, &qword_1ECAFCE98, &qword_1D932F4E0);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = (v6 + *(type metadata accessor for AppIconView(0) + 32));
    v8 = v7[1];
    *(v0 + 16) = *v7;
    *(v0 + 32) = v8;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEA0, &unk_1D932F4E8);
    sub_1D93274E4();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D92F3320, 0, 0);
  }
}

uint64_t sub_1D92F3320()
{
  if (qword_1ECAFC3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];

  v2 = sub_1D92F4E84(v1);
  v4 = v3;
  v6 = v5;

  if (v6 == 1)
  {
    v7 = v0[14];
    v8 = swift_task_alloc();
    v0[18] = v8;
    *(v8 + 16) = v7;
    v9 = *(MEMORY[0x1E69E88D0] + 4);
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_1D92F34E8;

    return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0x496E6F6349707061, 0xEE0029286567616DLL, sub_1D92FAC1C, v8, &type metadata for AppIconImageCache.ImageResult);
  }

  else
  {
    v0[21] = v4;
    v0[22] = v6;
    v0[20] = v2;
    sub_1D929748C(v0[14], type metadata accessor for AppIconImageCache.CacheKey);
    v11 = v0[16];
    v12 = v0[17];

    return MEMORY[0x1EEE6DFA0](sub_1D92F3688, v11, v12);
  }
}

uint64_t sub_1D92F34E8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D92F3600, 0, 0);
}

uint64_t sub_1D92F3600()
{
  v1 = *(v0 + 72);
  *(v0 + 176) = *(v0 + 88);
  *(v0 + 160) = v1;
  sub_1D929748C(*(v0 + 112), type metadata accessor for AppIconImageCache.CacheKey);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D92F3688, v2, v3);
}

uint64_t sub_1D92F3688()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 176);
  v9 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (v4 + *(type metadata accessor for AppIconView(0) + 32));
  v6 = v5[1];
  *(v0 + 16) = *v5;
  *(v0 + 32) = v6;
  *(v0 + 48) = v9;
  *(v0 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEA0, &unk_1D932F4E8);
  sub_1D93274E4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D92F3768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFB0, &qword_1D932F7E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFB8, &qword_1D932F7F0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFC0, &qword_1D932F7F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFC8, &qword_1D932F800);
  v15 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD0, &qword_1D932F808);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v44 - v20);
  v22 = type metadata accessor for AppIconStyleEffect(0);
  v23 = *(v2 + *(v22 + 20));
  if ((v23 - 1) >= 3)
  {
    if (!v23)
    {
      *v21 = sub_1D93275E4();
      v21[1] = v33;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD010, &qword_1D932F820);
      sub_1D92F3DE4(v2, v45, v21 + *(v34 + 44));
      sub_1D92973DC(v21, v14, &qword_1ECAFCFD0, &qword_1D932F808);
      swift_storeEnumTagMultiPayload();
      sub_1D9290D60(&qword_1ECAFCFF0, &qword_1ECAFCFD0, &qword_1D932F808);
      sub_1D92FB8D0();
      sub_1D9327104();
      sub_1D92973DC(v17, v10, &qword_1ECAFCFC8, &qword_1D932F800);
      swift_storeEnumTagMultiPayload();
      sub_1D92FB818();
      sub_1D9327104();
      sub_1D92933A0(v17, &qword_1ECAFCFC8, &qword_1D932F800);
      return sub_1D92933A0(v21, &qword_1ECAFCFD0, &qword_1D932F808);
    }

    v36 = (v2 + *(v22 + 24));
    v37 = *v36 * 0.225;
    v38 = v36[1] * 0.225;
    v39 = &v7[*(v4 + 36)];
    v40 = *(sub_1D9326E34() + 20);
    v41 = *MEMORY[0x1E697F468];
    v42 = sub_1D9327094();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = v37;
    v39[1] = v38;
    *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810) + 36)) = 256;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFE0, &qword_1D932F818);
    (*(*(v43 - 8) + 16))(v7, v45, v43);
    sub_1D92973DC(v7, v10, &qword_1ECAFCFB0, &qword_1D932F7E8);
    swift_storeEnumTagMultiPayload();
    sub_1D92FB818();
    sub_1D92FB8D0();
    sub_1D9327104();
  }

  else
  {
    v24 = (v2 + *(v22 + 24));
    v25 = *v24 * 0.225;
    v26 = v24[1] * 0.225;
    v27 = &v7[*(v4 + 36)];
    v28 = sub_1D9326E34();
    v44 = a2;
    v29 = *(v28 + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_1D9327094();
    (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
    *v27 = v25;
    v27[1] = v26;
    *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810) + 36)) = 256;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFE0, &qword_1D932F818);
    (*(*(v32 - 8) + 16))(v7, v45, v32);
    sub_1D92973DC(v7, v14, &qword_1ECAFCFB0, &qword_1D932F7E8);
    swift_storeEnumTagMultiPayload();
    sub_1D9290D60(&qword_1ECAFCFF0, &qword_1ECAFCFD0, &qword_1D932F808);
    sub_1D92FB8D0();
    sub_1D9327104();
    sub_1D92973DC(v17, v10, &qword_1ECAFCFC8, &qword_1D932F800);
    swift_storeEnumTagMultiPayload();
    sub_1D92FB818();
    sub_1D9327104();
    sub_1D92933A0(v17, &qword_1ECAFCFC8, &qword_1D932F800);
  }

  return sub_1D92933A0(v7, &qword_1ECAFCFB0, &qword_1D932F7E8);
}

uint64_t sub_1D92F3DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v51 = a1;
  v59 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD018, &qword_1D932F828);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD020, &qword_1D932F830);
  v7 = *(v6 - 8);
  v57 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD028, &qword_1D932F838);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v48 = sub_1D93273B4();
  v19 = a1 + *(type metadata accessor for AppIconStyleEffect(0) + 24);
  v21 = *(v19 + 8);
  v49 = *v19;
  v20 = v49;
  v50 = v21;
  sub_1D93275E4();
  sub_1D9326D84();
  v22 = v60;
  v23 = v61;
  v47 = v62;
  v24 = v63;
  v25 = v64;
  v26 = v65;
  v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD030, &qword_1D932F840) + 36)];
  v28 = *(sub_1D9326E34() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1D9327094();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v20 * 0.225;
  v27[1] = v21 * 0.225;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810) + 36)) = 256;
  *v18 = v48;
  *(v18 + 1) = v22;
  v18[16] = v23;
  *(v18 + 3) = v47;
  v18[32] = v24;
  *(v18 + 5) = v25;
  *(v18 + 6) = v26;
  sub_1D9327394();
  v31 = sub_1D93273C4();

  v32 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD038, &qword_1D932F848) + 36)];
  *v32 = v31;
  *(v32 + 8) = xmmword_1D932E880;
  *(v32 + 3) = 0xC008000000000000;
  v33 = *(v13 + 44);
  v34 = *MEMORY[0x1E6981E10];
  v35 = sub_1D9327604();
  (*(*(v35 - 8) + 104))(&v18[v33], v34, v35);
  sub_1D93275E4();
  sub_1D9326D84();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFE0, &qword_1D932F818);
  v37 = v52;
  (*(*(v36 - 8) + 16))(v52, v56, v36);
  v38 = (v37 + *(v55 + 36));
  v39 = v67;
  *v38 = v66;
  v38[1] = v39;
  v38[2] = v68;
  v69 = 0u;
  v70 = 0u;
  memset(v71, 0, 28);
  *&v71[7] = xmmword_1D932E890;
  v71[11] = 0;
  sub_1D92FB9B4();
  v40 = v54;
  sub_1D93272E4();
  sub_1D92933A0(v37, &qword_1ECAFD018, &qword_1D932F828);
  sub_1D92F439C(v51, v40 + *(v57 + 44));
  v41 = v53;
  sub_1D92973DC(v18, v53, &qword_1ECAFD028, &qword_1D932F838);
  v42 = v58;
  sub_1D92973DC(v40, v58, &qword_1ECAFD020, &qword_1D932F830);
  v43 = v59;
  sub_1D92973DC(v41, v59, &qword_1ECAFD028, &qword_1D932F838);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD048, &qword_1D932F850);
  sub_1D92973DC(v42, v43 + *(v44 + 48), &qword_1ECAFD020, &qword_1D932F830);
  sub_1D92933A0(v40, &qword_1ECAFD020, &qword_1D932F830);
  sub_1D92933A0(v18, &qword_1ECAFD028, &qword_1D932F838);
  sub_1D92933A0(v42, &qword_1ECAFD020, &qword_1D932F830);
  return sub_1D92933A0(v41, &qword_1ECAFD028, &qword_1D932F838);
}

uint64_t sub_1D92F439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D93273B4();
  sub_1D92A1DC8(v8);
  sub_1D93273E4();
  v10 = v9;
  sub_1D93273F4();
  v12 = v11 * v10;
  sub_1D9327414();
  v14 = v10 * v13;
  sub_1D9327404();
  v16 = v15;

  (*(v5 + 8))(v8, v4);
  v25 = xmmword_1D932E8A0;
  v26 = v12;
  v27 = xmmword_1D932E8B0;
  v28 = v14;
  v29 = xmmword_1D932E8C0;
  v30 = v10 * v16;
  v31 = xmmword_1D932E8D0;
  v32 = 0;
  sub_1D93272E4();
  v17 = (a1 + *(type metadata accessor for AppIconStyleEffect(0) + 24));
  v18 = *v17 * 0.225;
  v19 = v17[1] * 0.225;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD050, &qword_1D932F858) + 36));
  v21 = *(sub_1D9326E34() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1D9327094();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v18;
  v20[1] = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810);
  *(v20 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1D92F4608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  sub_1D93280B4();
  v16 = sub_1D93280D4();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_1D929705C(a2, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppIconImageCache.CacheKey);
  (*(v5 + 16))(v8, a1, v4);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1D92FAC24(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for AppIconImageCache.CacheKey);
  (*(v5 + 32))(v19 + v18, v8, v4);
  sub_1D92F49F4(0, 0, v15, &unk_1D932F530, v19);

  return sub_1D92933A0(v15, &unk_1ECAFC910, &qword_1D932E360);
}

uint64_t sub_1D92F48D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D92F48F4, 0, 0);
}

uint64_t sub_1D92F48F4()
{
  if (qword_1ECAFC3E0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];

  v3 = sub_1D92F4F68(v2);
  v5 = v4;
  v7 = v6;
  v8 = v3;

  v0[2] = v5;
  v0[3] = v7;
  v0[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520);
  sub_1D9328084();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D92F49F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D92973DC(a3, v27 - v11, &unk_1ECAFC910, &qword_1D932E360);
  v13 = sub_1D93280D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D92933A0(v12, &unk_1ECAFC910, &qword_1D932E360);
  }

  else
  {
    sub_1D93280C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D9328064();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D9327FA4() + 32;
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

uint64_t sub_1D92F4CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  sub_1D9290D60(&qword_1ECAFCF10, &qword_1ECAFCD38, &qword_1D932ECB0);
  sub_1D9327F24();
  v1 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA72ED00](*&v2);
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1DA72ED00](*&v3);
}

uint64_t sub_1D92F4D90()
{
  sub_1D9328724();
  sub_1D92F4CB4();
  return sub_1D9328764();
}

uint64_t sub_1D92F4DD4()
{
  sub_1D9328724();
  sub_1D92F4CB4();
  return sub_1D9328764();
}

_DWORD *sub_1D92F4E14()
{
  type metadata accessor for AppIconImageCache();
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  result = swift_slowAlloc();
  *result = 0;
  *(v1 + 16) = result;
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  qword_1ECAFF0D8 = v0;
  return result;
}

uint64_t sub_1D92F4E84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v1 + 24);
  if (*(v5 + 16))
  {
    v6 = *(v1 + 24);

    v7 = sub_1D931D5B4(a1);
    if (v8)
    {
      v9 = *(v5 + 56) + 24 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(*(v3 + 16));

  return v10;
}

void *sub_1D92F4F68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE3BF60 != -1)
  {
    swift_once();
  }

  v8 = sub_1D9326BE4();
  __swift_project_value_buffer(v8, qword_1EDE40088);
  sub_1D929705C(a1, v7, type metadata accessor for AppIconImageCache.CacheKey);
  v9 = sub_1D9326BC4();
  v10 = sub_1D9328234();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446210;
    v13 = *&v7[*(v4 + 20)];
    v14 = sub_1D93281C4();
    v16 = v15;
    sub_1D929748C(v7, type metadata accessor for AppIconImageCache.CacheKey);
    v17 = sub_1D9293524(v14, v16, &v30);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D928E000, v9, v10, "Compute app icon image for side length: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72F920](v12, -1, -1);
    MEMORY[0x1DA72F920](v11, -1, -1);
  }

  else
  {

    sub_1D929748C(v7, type metadata accessor for AppIconImageCache.CacheKey);
  }

  sub_1D92F4E84(a1);
  if (v18 != 1)
  {
    return v18;
  }

  v19 = *(a1 + *(v4 + 20));
  v20 = *(a1 + *(v4 + 24));
  v21 = sub_1D9326B04();
  v22 = *(v2 + 16);
  v23 = *(v22 + 16);
  v24 = v21;

  os_unfair_lock_lock(v23);
  swift_beginAccess();
  v25 = v24;
  v26 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_1D92F782C(v21, a1, isUniquelyReferenced_nonNull_native, v19, v19);
  *(v2 + 24) = v29;
  swift_endAccess();

  os_unfair_lock_unlock(*(v22 + 16));

  return v21;
}

void *sub_1D92F529C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v26 = a7;
  v27 = a1;
  v12 = sub_1D9327164();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  result = MEMORY[0x1DA72DAB0](&v28);
  if (v28 == 1)
  {
    v19 = a4 & 1;
    v29 = a5;
    v30 = a6;
    v25 = v12;
    v20 = v26 & 1;
    v31 = v26 & 1;
    MEMORY[0x1DA72DAB0](&v28, v17);
    if (v28)
    {
      v21 = a2;
    }

    else
    {
      v21 = a5;
    }

    if (v28)
    {
      v22 = a3;
    }

    else
    {
      v22 = a6;
    }

    if (v28)
    {
      v20 = v19;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    *(v23 + 32) = v20;

    sub_1D9327154();
    sub_1D9326D14();

    return (*(v13 + 8))(v16, v25);
  }

  return result;
}

void *sub_1D92F54D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  result = MEMORY[0x1DA72DAB0](&v10);
  if (v10 == 1)
  {
    v11 = a4;
    v12 = a5;
    v13 = a6 & 1;
    v10 = 1;
    return sub_1D9327514();
  }

  return result;
}

double sub_1D92F5574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21 = sub_1D9327444();
  v12 = sub_1D93273A4();
  v13 = sub_1D93270A4();
  v14 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD058, &qword_1D932F860) + 36);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  a4 &= 1u;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD060, &qword_1D932F868);
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD068, &qword_1D932F870) + 36)];
  *v17 = sub_1D92F577C;
  *(v17 + 1) = 0;
  *(v17 + 2) = sub_1D92FBA6C;
  *(v17 + 3) = v15;
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD070, &qword_1D932F878) + 36)];
  *v18 = v13;
  v18[1] = a2;
  *a6 = v21;
  a6[1] = v12;
  *&v22 = a3;
  BYTE8(v22) = a4;
  *&v23 = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD078, &qword_1D932F880);
  sub_1D93274D4();
  sub_1D93275E4();
  sub_1D9326D84();
  v19 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD080, &qword_1D932F888) + 36));
  *v19 = v22;
  v19[1] = v23;
  result = *&v24;
  v19[2] = v24;
  return result;
}

uint64_t sub_1D92F577C@<X0>(void *a1@<X8>)
{
  result = sub_1D9326DA4();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.controlIconHierarchicalPrimary.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1D92F8514();
  sub_1D9327044();
  return sub_1D92F5838;
}

uint64_t (*EnvironmentValues.controlIconHierarchicalSecondary.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1D92F8568();
  sub_1D9327044();
  return sub_1D92F58BC;
}

uint64_t sub_1D92F58E0@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = sub_1D9326D94();
  *a2 = result;
  return result;
}

uint64_t (*EnvironmentValues.controlIconHierarchicalTertiary.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1D92F85BC();
  sub_1D9327044();
  return sub_1D92F5990;
}

uint64_t sub_1D92F599C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_1D9327054();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_1D9327054();
  }
}

void (*EnvironmentValues.controlIconImageScale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1D92A1FA8();
  sub_1D9327044();
  return sub_1D92F5B4C;
}

void sub_1D92F5B4C(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1D92973DC((*a1)[3], (*a1)[2], &qword_1ECAFCC18, &qword_1D932EA28);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_1D92973DC(v3[2], v3[1], &qword_1ECAFCC18, &qword_1D932EA28);
    sub_1D9327054();
    sub_1D92933A0(v7, &qword_1ECAFCC18, &qword_1D932EA28);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_1D9327054();
  }

  sub_1D92933A0(v4, &qword_1ECAFCC18, &qword_1D932EA28);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t sub_1D92F5C5C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D93273B4();
  result = sub_1D9326D94();
  *a1 = result;
  return result;
}

uint64_t sub_1D92F5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D92FBAD8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t ControlIconViewParameters.primaryShapeStyle.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ControlIconViewParameters.secondaryShapeStyle.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ControlIconViewParameters.tertiaryShapeStyle.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ControlIconViewParameters.allowsSymbolEffects.setter(char a1)
{
  result = type metadata accessor for ControlIconViewParameters(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ControlIconViewParameters.defaultTint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlIconViewParameters(0) + 44));
}

uint64_t ControlIconViewParameters.defaultTint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlIconViewParameters(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ControlIconViewParameters.init(style:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D9327124();
  *(a2 + 1) = sub_1D9326D94();
  sub_1D9327144();
  *(a2 + 2) = sub_1D9326D94();
  sub_1D9327134();
  *(a2 + 3) = sub_1D9326D94();
  v4 = type metadata accessor for ControlIconViewParameters(0);
  v5 = v4[8];
  v6 = sub_1D9327494();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[9];
  v8 = sub_1D9326E44();
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  a2[v4[10]] = 1;
  v9 = v4[11];
  if (qword_1EDE3C838 != -1)
  {
    swift_once();
  }

  *&a2[v9] = qword_1EDE400F8;
  *a2 = a1;
}

uint64_t sub_1D92F62C8(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D9327354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D93273E4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1D93273E4();
  v22.n128_f32[0] = (v21.n128_f32[0] * 0.0721) + ((v19.n128_f32[0] * 0.2125) + (v20.n128_f32[0] * 0.7154));
  v23 = 1.0 - v18;
  v24 = (v18 * ((v16 * 0.0721) + ((v12 * 0.2125) + (v14 * 0.7154)))) + ((1.0 - v18) * v22.n128_f32[0]);
  if (vabds_f32(v24, v22.n128_f32[0]) >= a1)
  {
  }

  else
  {
    v25 = v22.n128_f32[0] < a1;
    if (v22.n128_f32[0] < v24)
    {
      v25 = (v22.n128_f32[0] + a1) <= 1.0;
    }

    v19.n128_f32[0] = (v18 * v12) + (v23 * v19.n128_f32[0]);
    v20.n128_f32[0] = (v18 * v14) + (v23 * v20.n128_f32[0]);
    v21.n128_f32[0] = (v18 * v16) + (v23 * v21.n128_f32[0]);
    v26 = -a1;
    if (v25)
    {
      v26 = a1;
    }

    v27 = v22.n128_f32[0] + v26;
    v22.n128_f32[0] = (v21.n128_f32[0] * 0.0721) + ((v19.n128_f32[0] * 0.2125) + (v20.n128_f32[0] * 0.7154));
    if (v22.n128_f32[0] != 0.0)
    {
      v22.n128_f32[0] = v27 / v22.n128_f32[0];
    }

    (*(v7 + 104))(v10, *MEMORY[0x1E69814D8], v6, v19, v20, v21, v22);
    sub_1D93273F4();
    sub_1D9327414();
    sub_1D9327404();
    return sub_1D9327424();
  }

  return a4;
}

id sub_1D92F656C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v53 - v14;
  v15 = sub_1D93271E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - v25;
  v27 = type metadata accessor for ControlIconView.Mode(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D929705C(v1, v30, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v32 = *v30;
      v33 = v30[1];
      v34 = sub_1D9327F74();

      v35 = [objc_opt_self() _systemImageNamed_];

      return v35;
    }

    sub_1D9297374(v30, v26, &qword_1ECAFCBD8, &qword_1D932E920);
    sub_1D92973DC(v26, v24, &qword_1ECAFCBD8, &qword_1D932E920);
    if ((*(v16 + 48))(v24, 1, v15) == 1)
    {
      sub_1D92933A0(v24, &qword_1ECAFCBD8, &qword_1D932E920);
      v42 = sub_1D9327F74();
      v35 = [objc_opt_self() systemImageNamed_];

      v43 = v26;
      v44 = &qword_1ECAFCBD8;
      v45 = &qword_1D932E920;
LABEL_22:
      sub_1D92933A0(v43, v44, v45);
      return v35;
    }

    (*(v16 + 32))(v19, v24, v15);
    v35 = sub_1D9327174();
    (*(v16 + 8))(v19, v15);
    v44 = &qword_1ECAFCBD8;
    v45 = &qword_1D932E920;
LABEL_21:
    v43 = v26;
    goto LABEL_22;
  }

  v35 = 0;
  if (EnumCaseMultiPayload != 2)
  {
    return v35;
  }

  v26 = v56;
  sub_1D9297374(v30, v56, &qword_1ECAFCD48, &qword_1D932EDC8);
  sub_1D92973DC(v26, v13, &qword_1ECAFCD48, &qword_1D932EDC8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v37 = *(v36 - 8);
  v38 = 1;
  v39 = (*(v37 + 48))(v13, 1, v36);
  v40 = v55;
  if (v39 != 1)
  {
    (*(v37 + 32))(v5, v13, v36);
    v38 = 0;
    *&v5[*(v40 + 20)] = 0x4059000000000000;
    *&v5[*(v40 + 24)] = 0x4008000000000000;
  }

  v41 = v54;
  (*(v54 + 56))(v5, v38, 1, v40);
  if ((*(v41 + 48))(v5, 1, v40) == 1)
  {
    sub_1D92933A0(v5, &qword_1ECAFCE98, &qword_1D932F4E0);
    goto LABEL_19;
  }

  v46 = v53;
  sub_1D92FAC24(v5, v53, type metadata accessor for AppIconImageCache.CacheKey);
  if (qword_1ECAFC3E0 != -1)
  {
    swift_once();
  }

  v47 = sub_1D92F4F68(v46);

  if (!v47)
  {
    sub_1D929748C(v46, type metadata accessor for AppIconImageCache.CacheKey);
    goto LABEL_19;
  }

  v48 = v47;
  result = [v48 CGImage];
  if (result)
  {
    v50 = result;
    [v48 scale];
    v35 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v50 scale:0 orientation:v51];

    sub_1D929748C(v46, type metadata accessor for AppIconImageCache.CacheKey);
    if (v35)
    {
LABEL_20:
      v44 = &qword_1ECAFCD48;
      v45 = &qword_1D932EDC8;
      goto LABEL_21;
    }

LABEL_19:
    v52 = sub_1D9327F74();
    v35 = [objc_opt_self() systemImageNamed_];

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t ControlIconView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t ControlIconView.controlIconViewStyle(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D929705C(v2, a2, type metadata accessor for ControlIconView);
  result = type metadata accessor for ControlIconView(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1D92F6DC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92F6EBC;

  return v7(a1);
}

uint64_t sub_1D92F6EBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D92F6FB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FA4();
  *a1 = result;
  return result;
}

uint64_t sub_1D92F6FE0(uint64_t *a1)
{
  v1 = *a1;

  return sub_1D9326FB4();
}

uint64_t sub_1D92F700C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF40, &qword_1D932F5B8);
  v51 = a2;
  result = sub_1D9328564();
  v13 = result;
  if (*(v10 + 16))
  {
    v47 = v2;
    v48 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v53 = *(v49 + 72);
      v28 = v27 + v53 * v26;
      if (v51)
      {
        sub_1D92FAC24(v28, v9, type metadata accessor for AppIconImageCache.CacheKey);
        v29 = (*(v10 + 56) + 24 * v26);
        v30 = *v29;
        v31 = v29[1];
        v52 = v29[2];
      }

      else
      {
        sub_1D929705C(v28, v9, type metadata accessor for AppIconImageCache.CacheKey);
        v32 = (*(v10 + 56) + 24 * v26);
        v30 = *v32;
        v31 = v32[1];
        v52 = v32[2];
        v33 = v52;
      }

      v34 = *(v13 + 40);
      sub_1D9328724();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
      sub_1D9290D60(&qword_1ECAFCF10, &qword_1ECAFCD38, &qword_1D932ECB0);
      sub_1D9327F24();
      v35 = v50;
      v36 = *&v9[*(v50 + 20)];
      if (v36 == 0.0)
      {
        v36 = 0.0;
      }

      MEMORY[0x1DA72ED00](*&v36);
      v37 = *&v9[*(v35 + 24)];
      if (v37 == 0.0)
      {
        v37 = 0.0;
      }

      MEMORY[0x1DA72ED00](*&v37);
      result = sub_1D9328764();
      v38 = -1 << *(v13 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v20 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v10 = v48;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v40);
          if (v44 != -1)
          {
            v21 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v39) & ~*(v20 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v10 = v48;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1D92FAC24(v9, *(v13 + 48) + v53 * v21, type metadata accessor for AppIconImageCache.CacheKey);
      v22 = (*(v13 + 56) + 24 * v21);
      *v22 = v30;
      v22[1] = v31;
      v22[2] = v52;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_40;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v15, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v45;
    }

    *(v10 + 16) = 0;
  }

LABEL_40:
  *v3 = v13;
  return result;
}

uint64_t sub_1D92F7450(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9327774();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C8, &qword_1D932CBB8);
  v43 = a2;
  result = sub_1D9328564();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1D9297444(&qword_1EDE3BCE0, MEMORY[0x1E6993DC8]);
      result = sub_1D9327F14();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_1D92F782C(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v18 = sub_1D931D5B4(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_1D92F7D4C();
      goto LABEL_7;
    }

    sub_1D92F700C(v21, a3 & 1);
    v27 = *v6;
    v28 = sub_1D931D5B4(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D929705C(a2, v15, type metadata accessor for AppIconImageCache.CacheKey);
      sub_1D92F7BC4(v18, v15, a1, v24, a4, a5);
      return;
    }

LABEL_15:
    sub_1D9328694();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7] + 24 * v18;
  v26 = *(v25 + 16);
  *v25 = a4;
  *(v25 + 8) = a5;
  *(v25 + 16) = a1;
}

uint64_t sub_1D92F79F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9327774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D9293100(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D92F7FA8();
      goto LABEL_7;
    }

    sub_1D92F7450(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1D9293100(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1D92F7C94(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1D9328694();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1D92F7BC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for AppIconImageCache.CacheKey(0);
  result = sub_1D92FAC24(a2, v12 + *(*(v13 - 8) + 72) * a1, type metadata accessor for AppIconImageCache.CacheKey);
  v15 = a4[7] + 24 * a1;
  *v15 = a5;
  *(v15 + 8) = a6;
  *(v15 + 16) = a3;
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1D92F7C94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9327774();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_1D92F7D4C()
{
  v1 = v0;
  v2 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF40, &qword_1D932F5B8);
  v6 = *v0;
  v7 = sub_1D9328554();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v29 + 72) * v21;
        sub_1D929705C(*(v6 + 48) + v22, v5, type metadata accessor for AppIconImageCache.CacheKey);
        v21 *= 24;
        v23 = (*(v6 + 56) + v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        sub_1D92FAC24(v5, *(v8 + 48) + v22, type metadata accessor for AppIconImageCache.CacheKey);
        v27 = (*(v8 + 56) + v21);
        *v27 = v24;
        v27[1] = v25;
        v27[2] = v26;
        result = v26;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_1D92F7FA8()
{
  v1 = v0;
  v34 = sub_1D9327774();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C8, &qword_1D932CBB8);
  v4 = *v0;
  v5 = sub_1D9328554();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D92F8228(uint64_t a1)
{
  v2 = sub_1D9327494();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D9326E64();
}

BOOL sub_1D92F82F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  sub_1D9290D60(&qword_1ECAFCF18, &qword_1ECAFCD38, &qword_1D932ECB0);
  sub_1D9327FF4();
  sub_1D9327FF4();
  if (v10 == v8 && v11 == v9)
  {
  }

  else
  {
    v5 = sub_1D9328654();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for AppIconImageCache.CacheKey(0);
  if (*(a1 + *(v6 + 20)) == *(a2 + *(v6 + 20)))
  {
    return *(a1 + *(v6 + 24)) == *(a2 + *(v6 + 24));
  }

  return 0;
}

uint64_t sub_1D92F8448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_2Tm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1D9327044();
  *a2 = v4;
  return result;
}

unint64_t sub_1D92F8514()
{
  result = qword_1ECAFCC28;
  if (!qword_1ECAFCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC28);
  }

  return result;
}

unint64_t sub_1D92F8568()
{
  result = qword_1ECAFCC30;
  if (!qword_1ECAFCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC30);
  }

  return result;
}

unint64_t sub_1D92F85BC()
{
  result = qword_1ECAFCC38;
  if (!qword_1ECAFCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC38);
  }

  return result;
}

unint64_t sub_1D92F8630()
{
  result = qword_1ECAFCC40;
  if (!qword_1ECAFCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC40);
  }

  return result;
}

void sub_1D92F86AC()
{
  type metadata accessor for ControlIconView.Mode(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v1 <= 0x3F)
    {
      sub_1D92F9C20(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D92F9C20(319, &qword_1EDE3BCF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1D92FA0B4(319, &qword_1EDE3BE10, MEMORY[0x1E697ED18], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D92F9C20(319, &qword_1EDE3BEF8, MEMORY[0x1E69815C0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D92F888C()
{
  type metadata accessor for ControlIconViewStyle(319);
  if (v0 <= 0x3F)
  {
    sub_1D92FA0B4(319, &qword_1ECAFCC58, MEMORY[0x1E69816E8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D92FA0B4(319, &qword_1EDE3BE10, MEMORY[0x1E697ED18], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlIconView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ControlIconView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1D92F8A04()
{
  result = qword_1EDE3BED0;
  if (!qword_1EDE3BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBD0, &qword_1D932E918);
    sub_1D92F8A90();
    sub_1D92F90C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BED0);
  }

  return result;
}

unint64_t sub_1D92F8A90()
{
  result = qword_1EDE3BDA8;
  if (!qword_1EDE3BDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC60, &qword_1D932EBF0);
    sub_1D92A0B30();
    sub_1D92A0BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDA8);
  }

  return result;
}

unint64_t sub_1D92F8B1C()
{
  result = qword_1EDE3BE40;
  if (!qword_1EDE3BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC78, &qword_1D932EC08);
    sub_1D92F8BA8();
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE40);
  }

  return result;
}

unint64_t sub_1D92F8BA8()
{
  result = qword_1EDE3BE58;
  if (!qword_1EDE3BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC80, &qword_1D932EC10);
    sub_1D92FAF20(&qword_1EDE3BE80, &qword_1ECAFCC88, &qword_1D932EC18, sub_1D92F8C90);
    sub_1D9297444(qword_1EDE3D048, type metadata accessor for ImageScaleOverride);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE58);
  }

  return result;
}

unint64_t sub_1D92F8C90()
{
  result = qword_1EDE3C848[0];
  if (!qword_1EDE3C848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3C848);
  }

  return result;
}

unint64_t sub_1D92F8CE4()
{
  result = qword_1EDE3D968[0];
  if (!qword_1EDE3D968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3D968);
  }

  return result;
}

unint64_t sub_1D92F8D38()
{
  result = qword_1EDE3BE28;
  if (!qword_1EDE3BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
    sub_1D92F8DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE28);
  }

  return result;
}

unint64_t sub_1D92F8DC4()
{
  result = qword_1EDE3BE38;
  if (!qword_1EDE3BE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCB0, &qword_1D932EC40);
    sub_1D92F8E80();
    sub_1D9297444(qword_1EDE3D0E8, type metadata accessor for SymbolColorEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE38);
  }

  return result;
}

unint64_t sub_1D92F8E80()
{
  result = qword_1EDE3BE50;
  if (!qword_1EDE3BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCB8, &qword_1D932EC48);
    sub_1D92F8F0C();
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE50);
  }

  return result;
}

unint64_t sub_1D92F8F0C()
{
  result = qword_1EDE3BE78;
  if (!qword_1EDE3BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCC0, &qword_1D932EC50);
    sub_1D92F8FC8();
    sub_1D9297444(qword_1EDE3D048, type metadata accessor for ImageScaleOverride);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE78);
  }

  return result;
}

unint64_t sub_1D92F8FC8()
{
  result = qword_1EDE3BED8;
  if (!qword_1EDE3BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCC8, &qword_1D932EC58);
    sub_1D9297444(&qword_1EDE3BC70, MEMORY[0x1E69859F0]);
    sub_1D92F8C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BED8);
  }

  return result;
}

unint64_t sub_1D92F90C4()
{
  result = qword_1EDE3D188;
  if (!qword_1EDE3D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3D188);
  }

  return result;
}

unint64_t sub_1D92F9118()
{
  result = qword_1ECAFCCE0;
  if (!qword_1ECAFCCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC20, &qword_1D932EA30);
    sub_1D92F91D0();
    sub_1D9290D60(&qword_1ECAFCD28, &qword_1ECAFCD30, &qword_1D932EC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCE0);
  }

  return result;
}

unint64_t sub_1D92F91D0()
{
  result = qword_1ECAFCCE8;
  if (!qword_1ECAFCCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC08, &qword_1D932EA18);
    sub_1D92F9288();
    sub_1D9290D60(&qword_1ECAFCD20, &qword_1ECAFCC10, &qword_1D932EA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCE8);
  }

  return result;
}

unint64_t sub_1D92F9288()
{
  result = qword_1ECAFCCF0;
  if (!qword_1ECAFCCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC00, &qword_1D932E9E8);
    sub_1D92F9340();
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCF0);
  }

  return result;
}

unint64_t sub_1D92F9340()
{
  result = qword_1ECAFCCF8;
  if (!qword_1ECAFCCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBF8, &qword_1D932E9B8);
    sub_1D92F93F8();
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCF8);
  }

  return result;
}

unint64_t sub_1D92F93F8()
{
  result = qword_1ECAFCD00;
  if (!qword_1ECAFCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBF0, &qword_1D932E988);
    sub_1D92F94B0();
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCD00);
  }

  return result;
}

unint64_t sub_1D92F94B0()
{
  result = qword_1ECAFCD08;
  if (!qword_1ECAFCD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBE8, &qword_1D932E958);
    sub_1D9297444(qword_1EDE3D458, type metadata accessor for ControlIconView);
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCD08);
  }

  return result;
}

uint64_t sub_1D92F9598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D92F95F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D92F96A0()
{
  sub_1D92F971C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D92F971C()
{
  if (!qword_1EDE3DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCD40, &qword_1D932ECC8);
    sub_1D9290D60(&qword_1EDE3DA50, &qword_1ECAFCD40, &qword_1D932ECC8);
    sub_1D9290D60(&qword_1EDE3DA38, &qword_1ECAFCD40, &qword_1D932ECC8);
    sub_1D9290D60(&qword_1EDE3DA48, &qword_1ECAFCD40, &qword_1D932ECC8);
    sub_1D9290D60(&qword_1EDE3DA40, &qword_1ECAFCD40, &qword_1D932ECC8);
    v0 = sub_1D9326B34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3DA28);
    }
  }
}

uint64_t sub_1D92F98B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D92F98FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D92F9974()
{
  sub_1D92F9F48(319, &qword_1EDE3DA18, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v1 <= 0x3F)
    {
      sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D92F9F48(319, &qword_1EDE3BCF8, &qword_1ECAFCD58, &qword_1D932EDE8, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D92F9AE0()
{
  sub_1D92F9C20(319, &qword_1EDE3BD00, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v1 <= 0x3F)
    {
      sub_1D92FA0B4(319, &qword_1EDE3BBF8, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D92F9C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D92F9C98()
{
  sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v1 <= 0x3F)
    {
      sub_1D92F9C20(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D92F9D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D92F9DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D92F9E50()
{
  type metadata accessor for ControlIconViewStyle(319);
  if (v0 <= 0x3F)
  {
    sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D92F9F48(319, &qword_1EDE3BF08, &qword_1ECAFCD60, &qword_1D932EED8, MEMORY[0x1E697BD78]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D92F9F48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D92F9FBC()
{
  sub_1D92FA03C();
  if (v0 <= 0x3F)
  {
    sub_1D92FA118();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D92FA03C()
{
  if (!qword_1EDE3BD38)
  {
    sub_1D92FA0B4(0, &qword_1EDE3BD30, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3BD38);
    }
  }
}

void sub_1D92FA0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D92FA118()
{
  if (!qword_1EDE3DA20)
  {
    sub_1D92F9F48(0, &qword_1EDE3DA18, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3DA20);
    }
  }
}

unint64_t sub_1D92FA190()
{
  result = qword_1ECAFCD68;
  if (!qword_1ECAFCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCD68);
  }

  return result;
}

unint64_t sub_1D92FA2F4()
{
  result = qword_1EDE3BEB0;
  if (!qword_1EDE3BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE38, &qword_1D932F448);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
    sub_1D9290D60(&qword_1EDE3BD50, &qword_1ECAFCE40, &qword_1D932F450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEB0);
  }

  return result;
}

unint64_t sub_1D92FA3D8()
{
  result = qword_1EDE3BE68;
  if (!qword_1EDE3BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDE8, &qword_1D932F3F8);
    sub_1D92FA490();
    sub_1D9290D60(&qword_1EDE3BDF8, &qword_1ECAFCE48, &qword_1D932F458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE68);
  }

  return result;
}

unint64_t sub_1D92FA490()
{
  result = qword_1EDE3BEA0;
  if (!qword_1EDE3BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDE0, &qword_1D932F3F0);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
    sub_1D9290D60(&qword_1EDE3BD48, &qword_1ECAFCE50, &qword_1D932F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEA0);
  }

  return result;
}

unint64_t sub_1D92FA574()
{
  result = qword_1EDE3BEA8;
  if (!qword_1EDE3BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDC8, &qword_1D932F3D8);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
    sub_1D9290D60(&qword_1EDE3BD58, &qword_1ECAFCE58, &qword_1D932F468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEA8);
  }

  return result;
}

unint64_t sub_1D92FA658()
{
  result = qword_1ECAFCE60;
  if (!qword_1ECAFCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCE60);
  }

  return result;
}

unint64_t sub_1D92FA6AC()
{
  result = qword_1ECAFCE80;
  if (!qword_1ECAFCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE78, &unk_1D932F480);
    sub_1D92FA768();
    sub_1D9297444(&qword_1ECAFCE90, type metadata accessor for AppIconStyleEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCE80);
  }

  return result;
}

unint64_t sub_1D92FA768()
{
  result = qword_1EDE3B2C8;
  if (!qword_1EDE3B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE88, &qword_1D932F4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2C8);
  }

  return result;
}

uint64_t sub_1D92FA80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

uint64_t sub_1D92FA81C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppIconView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D92F2E18(a1, a2, v6);
}

unint64_t sub_1D92FA89C()
{
  result = qword_1ECAFCEA8;
  if (!qword_1ECAFCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE98, &qword_1D932F4E0);
    sub_1D9297444(&qword_1ECAFCD70, type metadata accessor for AppIconImageCache.CacheKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCEA8);
  }

  return result;
}

uint64_t sub_1D92FA950(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppIconView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D92D9CEC;

  return sub_1D92F30D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1D92FAAAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D92DA198;

  return sub_1D92F6DC4(a1, v5);
}

uint64_t sub_1D92FAB64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D92D9CEC;

  return sub_1D92F6DC4(a1, v5);
}

uint64_t sub_1D92FAC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D92FAC8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppIconImageCache.CacheKey(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D92DA198;

  return sub_1D92F48D4(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1D92FADE8()
{
  result = qword_1EDE3D190;
  if (!qword_1EDE3D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3D190);
  }

  return result;
}

unint64_t sub_1D92FAE3C()
{
  result = qword_1EDE3BE60;
  if (!qword_1EDE3BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCEE8, &qword_1D932F578);
    sub_1D92FAF20(&qword_1EDE3BE88, &qword_1ECAFCEF0, &qword_1D932F580, sub_1D92F8CE4);
    sub_1D9290D60(&qword_1EDE3BD60, &qword_1ECAFCEF8, &qword_1D932F588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE60);
  }

  return result;
}

uint64_t sub_1D92FAF20(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_170Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D92FB01C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1D92F5484();
}

uint64_t sub_1D92FB03C(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);

  a1(*(v3 + 24));

  return a3(v3, a2, 7);
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1D92FB1D8()
{
  sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D92FB2A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D92FB300(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1D92FB364()
{
  result = qword_1EDE3BE90;
  if (!qword_1EDE3BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCD88, &qword_1D932F338);
    sub_1D9290D60(&qword_1EDE3BD70, &qword_1ECAFCD80, &qword_1D932F330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE90);
  }

  return result;
}

unint64_t sub_1D92FB41C()
{
  result = qword_1EDE3BE98;
  if (!qword_1EDE3BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCD90, &qword_1D932F370);
    sub_1D9290D60(&qword_1EDE3BD78, &qword_1ECAFCDA0, &qword_1D932F380);
    sub_1D9290D60(&qword_1EDE3BD20, &qword_1ECAFCD98, &qword_1D932F378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE98);
  }

  return result;
}

unint64_t sub_1D92FB500()
{
  result = qword_1EDE3BEC8;
  if (!qword_1EDE3BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDB8, &qword_1D932F3C8);
    sub_1D9290D60(&qword_1EDE3BD90, &qword_1ECAFCDB0, &qword_1D932F3C0);
    sub_1D9290D60(&qword_1EDE3BD28, &qword_1ECAFC808, &qword_1D932DA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEC8);
  }

  return result;
}

unint64_t sub_1D92FB5E4()
{
  result = qword_1EDE3BDA0;
  if (!qword_1EDE3BDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCF90, &qword_1D932F6C0);
    sub_1D92A43A4();
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDA0);
  }

  return result;
}

unint64_t sub_1D92FB69C()
{
  result = qword_1ECAFCF98;
  if (!qword_1ECAFCF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFA0, &qword_1D932F6C8);
    sub_1D92FA6AC();
    sub_1D92A092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCF98);
  }

  return result;
}

unint64_t sub_1D92FB728()
{
  result = qword_1EDE3BDC0;
  if (!qword_1EDE3BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFA8, &qword_1D932F6D0);
    sub_1D92A1504();
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDC0);
  }

  return result;
}

unint64_t sub_1D92FB818()
{
  result = qword_1ECAFCFE8;
  if (!qword_1ECAFCFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFC8, &qword_1D932F800);
    sub_1D9290D60(&qword_1ECAFCFF0, &qword_1ECAFCFD0, &qword_1D932F808);
    sub_1D92FB8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCFE8);
  }

  return result;
}

unint64_t sub_1D92FB8D0()
{
  result = qword_1ECAFCFF8;
  if (!qword_1ECAFCFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFB0, &qword_1D932F7E8);
    sub_1D9290D60(&qword_1ECAFD000, &qword_1ECAFCFE0, &qword_1D932F818);
    sub_1D9290D60(&qword_1ECAFD008, &qword_1ECAFCFD8, &qword_1D932F810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCFF8);
  }

  return result;
}

unint64_t sub_1D92FB9B4()
{
  result = qword_1ECAFD040;
  if (!qword_1ECAFD040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD018, &qword_1D932F828);
    sub_1D9290D60(&qword_1ECAFD000, &qword_1ECAFCFE0, &qword_1D932F818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD040);
  }

  return result;
}

uint64_t sub_1D92FBA6C(uint64_t *a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD078, &qword_1D932F880);
  return sub_1D93274E4();
}

unint64_t sub_1D92FBAD8()
{
  result = qword_1ECAFD088;
  if (!qword_1ECAFD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD088);
  }

  return result;
}

unint64_t sub_1D92FBB2C()
{
  result = qword_1ECAFD090;
  if (!qword_1ECAFD090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD098, &qword_1D932F890);
    sub_1D92FB818();
    sub_1D92FB8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD090);
  }

  return result;
}

unint64_t sub_1D92FBBB8()
{
  result = qword_1ECAFD0A0;
  if (!qword_1ECAFD0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD080, &qword_1D932F888);
    sub_1D92FBC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD0A0);
  }

  return result;
}

unint64_t sub_1D92FBC44()
{
  result = qword_1ECAFD0A8;
  if (!qword_1ECAFD0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD058, &qword_1D932F860);
    sub_1D92FBCFC();
    sub_1D9290D60(&unk_1ECAFD0C0, &qword_1ECAFD070, &qword_1D932F878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD0A8);
  }

  return result;
}

unint64_t sub_1D92FBCFC()
{
  result = qword_1ECAFD0B0;
  if (!qword_1ECAFD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD0B8, &qword_1D932F898);
    sub_1D9290D60(&qword_1EDE3BD60, &qword_1ECAFCEF8, &qword_1D932F588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD0B0);
  }

  return result;
}

void sub_1D92FBDC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D93267C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id CHUISControlInstance.control.getter()
{
  v1 = [v0 instanceIdentity];
  v2 = [v1 control];

  return v2;
}

id CHUISControlInstance.contentType.getter()
{
  v1 = [v0 instanceIdentity];
  v2 = [v1 contentType];

  return v2;
}

uint64_t CHUISControlInstance.visibility.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance_visibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CHUISControlInstance.visibility.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance_visibility;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 88))(a1, v5, v6);
  return swift_endAccess();
}

char *CHUISControlInstance.configuration.getter()
{
  v1 = (v0 + OBJC_IVAR___CHUISControlInstance__adapter);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 56))(v13, v2, v3);
  v4 = v13[0];
  LOBYTE(v2) = BYTE1(v13[0]);
  v5 = v13[1];
  v6 = v14;
  v7 = v15;
  v8 = v16;
  swift_endAccess();
  v9 = [objc_allocWithZone(CHUISControlInstanceConfiguration) init];
  v10 = &v9[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v11 = *&v9[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32];
  *v10 = v4;
  v10[1] = v2;
  *(v10 + 1) = v5;
  v10[16] = v6;
  *(v10 + 3) = v7;
  *(v10 + 4) = v8;

  return v9;
}

uint64_t CHUISControlInstance.descriptor.getter()
{
  v1 = (v0 + OBJC_IVAR___CHUISControlInstance__adapter);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t CHUISControlInstance.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

_BYTE *CHUISControlInstance.init(control:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:0 hostIdentifier:0 configurationIdentifier:0];
  v4 = [v1 initWithInstanceIdentity_];
  v4[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 1;
  v5 = &v4[OBJC_IVAR___CHUISControlInstance__adapter];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 16);
  v9 = v4;
  v8(1, v6, v7);
  swift_endAccess();

  return v9;
}

id CHUISControlInstance.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

id CHUISControlInstance.init(instanceIdentity:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 0;
  v3 = type metadata accessor for EmptyControlInstanceAdapter();
  v4 = swift_allocObject();
  v5 = &v1[OBJC_IVAR___CHUISControlInstance__adapter];
  v5[3] = v3;
  v5[4] = &off_1F54C1CA0;
  *v5 = v4;
  *&v1[OBJC_IVAR___CHUISControlInstance_instanceIdentity] = a1;
  *&v1[OBJC_IVAR___CHUISControlInstance_visibility] = 0;
  v7.receiver = v1;
  v7.super_class = CHUISControlInstance;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall CHUISControlInstance.activate()()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 112))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

Swift::Void __swiftcall CHUISControlInstance.invalidate()()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 120))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

void CHUISControlInstance.modifyConfiguration(_:)(void (*a1)())
{
  v3 = [v1 configuration];
  [v3 mutableCopy];

  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISMutableControlInstanceConfiguration(0);
  swift_dynamicCast();
  a1();
  [v4 copy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISControlInstanceConfiguration(0);
  swift_dynamicCast();
  [v1 setConfiguration_];
}

uint64_t CHUISControlInstance.performControlAction(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v2 + v5, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 128))(a1, a2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t CHUISControlInstance.registerObserver(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 136))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t CHUISControlInstance.unregisterObserver(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 144))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

_BYTE *sub_1D92FDBD4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:0 hostIdentifier:0 configurationIdentifier:0];
  v4 = [swift_getObjCClassFromMetadata() instanceOfType:a2 instanceIdentity:v3];
  v4[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 1;
  v5 = &v4[OBJC_IVAR___CHUISControlInstance__adapter];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(1, v6, v7);
  swift_endAccess();

  return v4;
}

uint64_t sub_1D92FDF9C(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = sub_1D9328374();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D92FE0A8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  swift_beginAccess();
  (*(*(v1 + 104) + 88))(*(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE150(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 24);
  v6 = v2[20];
  swift_beginAccess();
  (*(v2[13] + 96))(v8, v2[10]);
  return swift_endAccess();
}

uint64_t sub_1D92FE21C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 160);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(v2 + 104) + 48))(v3);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_1D92FE368()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 144));
  v3 = *(*v0 + 160);
  swift_beginAccess();
  (*(*(v1 + 104) + 72))(v2, *(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE440()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  v3 = *(*v0 + 160);
  swift_beginAccess();
  (*(*(v1 + 96) + 16))(v2, *(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE518(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  BSDispatchQueueAssertMain();
  v12 = *v1;
  v13 = *(*v1 + 176);
  if (!*(v1 + v13))
  {
    v14 = sub_1D93280D4();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = *(v2 + 88);
    *(v16 + 32) = *(v2 + 96);
    *(v16 + 48) = *(v2 + 112);
    *(v16 + 56) = v15;
    v17 = sub_1D9328194();
    sub_1D92933A0(v11, &unk_1ECAFC910, &qword_1D932E360);
    v18 = *(v1 + v13);
    *(v1 + v13) = v17;

    v12 = *v1;
  }

  v19 = *(v12 + 160);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v19, v3);
  (*(*(v2 + 104) + 152))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D92FE7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a3;
  v6[10] = a6;
  v6[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[11] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v11 = *(*(sub_1D9328374() - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v12 = sub_1D9328174();
  v6[15] = v12;
  v13 = *(v12 - 8);
  v6[16] = v13;
  v14 = *(v13 + 64) + 15;
  v6[17] = swift_task_alloc();
  v15 = *(a3 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = sub_1D9328164();
  v6[20] = v17;
  v18 = *(v17 - 8);
  v6[21] = v18;
  v19 = *(v18 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = sub_1D93280A4();
  v6[24] = sub_1D9328094();
  v21 = sub_1D9328064();
  v6[25] = v21;
  v6[26] = v20;

  return MEMORY[0x1EEE6DFA0](sub_1D92FEA34, v21, v20);
}

uint64_t sub_1D92FEA34()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v28 = v0[22];
    v4 = v0[18];
    v3 = v0[19];
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v9 = v0[9];
    v8 = v0[10];
    v10 = *(*Strong + 160);
    v11 = Strong;
    swift_beginAccess();
    (*(v4 + 16))(v3, v11 + v10, v9);
    (*(v8 + 128))(v9, v8);
    (*(v4 + 8))(v3, v9);
    sub_1D9328144();
    (*(v6 + 8))(v5, v7);
    v12 = v0[23];
    v13 = sub_1D9328094();
    v0[28] = v13;
    v14 = *(MEMORY[0x1E69E8678] + 4);
    v15 = swift_task_alloc();
    v0[29] = v15;
    *v15 = v0;
    v15[1] = sub_1D92FEC7C;
    v16 = v0[22];
    v17 = v0[20];
    v18 = v0[14];
    v19 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v18, v13, v19, v17);
  }

  else
  {
    v20 = v0[24];
    v21 = v0[22];
    v22 = v0[19];
    v23 = v0[17];
    v25 = v0[13];
    v24 = v0[14];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1D92FEC7C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D92FEDC0, v5, v4);
}

uint64_t sub_1D92FEDC0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[27];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v5 = v0[24];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[17];
    v10 = v0[13];
    v9 = v0[14];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v3 + 32))(v0[13], v1, v2);
    if ((sub_1D93281A4() & 1) == 0)
    {
      v13 = v0[27];
      sub_1D92FFFF0(v0[13]);
    }

    (*(v0[12] + 8))(v0[13], v0[11]);
    v14 = v0[23];
    v15 = sub_1D9328094();
    v0[28] = v15;
    v16 = *(MEMORY[0x1E69E8678] + 4);
    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    v17[1] = sub_1D92FEC7C;
    v18 = v0[22];
    v19 = v0[20];
    v20 = v0[14];
    v21 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v20, v15, v21, v19);
  }
}

uint64_t sub_1D92FEFA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[11];
  v4 = sub_1D9328374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21[-v8];
  v10 = v2[10];
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v21[-v13];
  BSDispatchQueueAssertMain();
  v15 = *(*v1 + 160);
  swift_beginAccess();
  (*(v11 + 16))(v14, &v1[v15], v10);
  (*(v2[13] + 160))(v10);
  (*(v11 + 8))(v14, v10);
  v16 = *(*v1 + 176);
  if (*&v1[v16])
  {
    v17 = *&v1[v16];

    sub_1D9328184();

    v18 = *&v1[v16];
  }

  *&v1[v16] = 0;

  [*&v1[*(*v1 + 168)] removeAllObjects];
  (*(*(v3 - 8) + 56))(v9, 1, 1, v3);
  v19 = *(*v1 + 120);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v19], v9, v4);
  return swift_endAccess();
}

uint64_t sub_1D92FF290(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v29 - v10;
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v29 - v15;
  BSDispatchQueueAssertMain();
  v17 = *(*v3 + 160);
  swift_beginAccess();
  (*(v13 + 16))(v16, &v3[v17], v12);
  type metadata accessor for ControlInstanceButton(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = *(*v3 + 136);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v20 = Strong;
  v21 = [Strong delegate];
  if (!v21)
  {

    goto LABEL_13;
  }

  v22 = v21;
  v23 = sub_1D92FF63C(v3);
  if (!v23)
  {
    v23 = sub_1D92FF5B4(v3);
    if (!v23)
    {

      swift_unknownObjectRelease();
      goto LABEL_13;
    }
  }

  v24 = v23;
  if (![v22 respondsToSelector_])
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v25 = [v22 controlInstance:v20 handlePerformAction:v24];

  result = swift_unknownObjectRelease();
  if ((v25 & 1) == 0)
  {
LABEL_13:
    v27 = sub_1D93280D4();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = v3;
    v28[3] = a1;
    v28[4] = a2;

    sub_1D92E5ECC(a1);
    sub_1D9328194();

    return sub_1D92933A0(v11, &unk_1ECAFC910, &qword_1D932E360);
  }

  if (a1)
  {
    return a1(0);
  }

  return result;
}

id sub_1D92FF5B4(uint64_t a1)
{
  v1 = *(*a1 + 136);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [Strong control];

  v5 = [v4 intentReference];
  return v5;
}

id sub_1D92FF63C(char *a1)
{
  v2 = *a1;
  v3 = sub_1D9327A94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v26 - v11;
  v13 = *(v2 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v17 = v26 - v16;
  v18 = *(v2 + 160);
  swift_beginAccess();
  (*(v14 + 16))(v17, &a1[v18], v13);
  type metadata accessor for ControlInstanceButton(0);
  if (swift_dynamicCast())
  {
    v19 = v26[0];
    v20 = *(*v26[0] + 112);
    swift_beginAccess();
    sub_1D9300AE8(v19 + v20, v12);

    v21 = type metadata accessor for ControlInstanceButton.ViewModel(0);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) || (v22 = *(v21 + 68), (*(v4 + 48))(&v12[v22], 1, v3)))
    {
      sub_1D92933A0(v12, &unk_1ECAFD180, &unk_1D932E7E0);
    }

    else
    {
      (*(v4 + 16))(v7, &v12[v22], v3);
      sub_1D92933A0(v12, &unk_1ECAFD180, &unk_1D932E7E0);
      v24 = sub_1D9327A84();
      (*(v4 + 8))(v7, v3);
      if (v24)
      {
        v25 = [objc_allocWithZone(MEMORY[0x1E69942D0]) initWithIntent_];

        return v25;
      }
    }
  }

  return 0;
}

uint64_t sub_1D92FF980(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = *a2;
  v4[8] = *a2;
  v6 = *(v5 + 80);
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_1D93280A4();
  v4[12] = sub_1D9328094();
  v10 = sub_1D9328064();
  v4[13] = v10;
  v4[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D92FFAB0, v10, v9);
}

uint64_t sub_1D92FFAB0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = *(*v5 + 160);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5 + v6, v3);
  v7 = *(v4 + 104);
  v13 = (*(v7 + 136) + **(v7 + 136));
  v8 = *(*(v7 + 136) + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D92FFC2C;
  v10 = v0[11];
  v11 = v0[9];

  return v13(v11, v7);
}

uint64_t sub_1D92FFC2C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 112);
  v9 = *(v2 + 104);
  if (v0)
  {
    v10 = sub_1D92FFE44;
  }

  else
  {
    v10 = sub_1D92FFDC4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D92FFDC4()
{
  v1 = v0[12];
  v2 = v0[6];

  if (v2)
  {
    v3 = v0[7];
    (v0[6])(0);
  }

  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D92FFE44()
{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[16];
  if (v2)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v3;
    v5(v3);
  }

  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

void sub_1D92FFEE8(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v3 = *(*v1 + 168);
  [*(v1 + v3) addObject_];
  v4 = [*(v1 + v3) count];
  if (v4 <= 1 && *(v1 + *(*v1 + 152)) == 1)
  {
    sub_1D92FE518(v4);

    sub_1D930035C();
  }
}

id sub_1D92FFF98(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v3 = *(v1 + *(*v1 + 168));

  return [v3 removeObject_];
}

void sub_1D92FFFF0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v27 = *v1;
  v4 = *(v27 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v24 - v7;
  v8 = sub_1D9328374();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  BSDispatchQueueAssertMain();
  v16 = *(*v2 + 120);
  swift_beginAccess();
  (*(v9 + 16))(v15, &v2[v16], v8);
  v28 = v5;
  v29 = *(v5 + 48);
  v17 = v29(v15, 1, v4);
  (*(v9 + 8))(v15, v8);
  if (v17 == 1)
  {
    v18 = *&v2[*(*v2 + 128)];
    v25 = v3;
    v19 = *(v27 + 112);
    v24 = *(v19 + 24);
    v20 = v18;
    v21 = v19;
    v3 = v25;
    v24(v20, v4, v21);
    (*(v28 + 56))(v13, 0, 1, v4);
    swift_beginAccess();
    (*(v9 + 40))(&v2[v16], v13, v8);
    swift_endAccess();
  }

  if (!v29(&v2[v16], 1, v4))
  {
    v22 = v28;
    v23 = v26;
    (*(v28 + 16))(v26, &v2[v16], v4);
    (*(*(v27 + 112) + 32))(v3, v4);
    (*(v22 + 8))(v23, v4);
  }

  sub_1D9300504();
}

void sub_1D930035C()
{
  BSDispatchQueueAssertMain();
  v1 = *(*v0 + 136);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [*(v0 + *(*v0 + 168)) allObjects];
  v5 = sub_1D9328024();

  if (v5 >> 62)
  {
    v6 = sub_1D9328544();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA72EA00](i, v5);
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v8 respondsToSelector_] && (objc_msgSend(v8, sel_respondsToSelector_, sel_instanceDidLoad_) & 1) != 0)
        {
          [v8 instanceDidLoad_];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1D9300504()
{
  BSDispatchQueueAssertMain();
  v1 = *(*v0 + 136);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [*(v0 + *(*v0 + 168)) allObjects];
  v5 = sub_1D9328024();

  if (v5 >> 62)
  {
    v6 = sub_1D9328544();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72EA00](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      if ([v8 respondsToSelector_])
      {
        v9 = [v8 respondsToSelector_];
        v10 = &selRef_instanceDidChangeState_;
        if ((v9 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (![v8 respondsToSelector_])
        {
          goto LABEL_7;
        }

        v11 = [v8 respondsToSelector_];
        v10 = &selRef_controlInstanceViewModelDidChange_;
        if ((v11 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      [v8 *v10];
LABEL_7:
      ++v7;
      swift_unknownObjectRelease();
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
}

uint64_t *sub_1D93006F0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 88);
  v4 = sub_1D9328374();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  MEMORY[0x1DA72F9C0](v0 + *(*v0 + 136));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 160));

  v5 = *(v0 + *(*v0 + 176));

  v6 = *(v0 + *(*v0 + 184));

  return v0;
}

uint64_t sub_1D930085C()
{
  sub_1D93006F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9300A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92D9CEC;

  return sub_1D92FF980(a1, v4, v5, v6);
}

uint64_t sub_1D9300AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}