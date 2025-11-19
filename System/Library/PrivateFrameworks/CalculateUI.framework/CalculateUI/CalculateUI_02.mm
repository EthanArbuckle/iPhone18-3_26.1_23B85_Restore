uint64_t sub_1C1DF52E8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1C1E54ACC();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6910730](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1C1DF5404(uint64_t a1)
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
    sub_1C1E54ACC();
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
  result = sub_1C1E54B6C();
  *v1 = result;
  return result;
}

uint64_t sub_1C1DF54A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1E54ACC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C1E54B6C();
}

uint64_t sub_1C1DF5508(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C1E543EC();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1E54ACC();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C1E54ACC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1DF5628(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1E54ACC();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1C1E54ACC();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1C1DF5404(result);

  return sub_1C1DF5508(v6, v5, 1, v3);
}

unint64_t sub_1C1DF57A0()
{
  result = qword_1EBF1CE90;
  if (!qword_1EBF1CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE98, &qword_1C1E57B38);
    sub_1C1DC1124(&qword_1EBF1CE80, &qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE88, &qword_1EBF1CE68, &qword_1C1E579C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CE90);
  }

  return result;
}

uint64_t type metadata accessor for CalculateGraphExpressionPopoverView()
{
  result = qword_1EBF1CEA8;
  if (!qword_1EBF1CEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DF58F8()
{
  sub_1C1DF5964();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C1DF5964()
{
  if (!qword_1EBF1CEB8)
  {
    type metadata accessor for CalculateGraphExpression(255);
    v0 = sub_1C1E5385C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1CEB8);
    }
  }
}

unint64_t sub_1C1DF59D8()
{
  result = qword_1EBF1CED0;
  if (!qword_1EBF1CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CEC0, &qword_1C1E57BC8);
    sub_1C1DC1124(&qword_1EBF1CED8, &qword_1EBF1CEE0, &qword_1C1E57BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CED0);
  }

  return result;
}

uint64_t sub_1C1DF5A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateGraphExpressionPopoverView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF5AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateGraphExpressionPopoverView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF5B58()
{
  v1 = *(type metadata accessor for CalculateGraphExpressionPopoverView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C1DF4840(v2);
}

unint64_t sub_1C1DF5BB8()
{
  result = qword_1EBF1CF20;
  if (!qword_1EBF1CF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CF18, &qword_1C1E57C10);
    sub_1C1DC1124(&qword_1EBF1CF28, &qword_1EBF1CF30, &qword_1C1E57C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CF20);
  }

  return result;
}

unint64_t sub_1C1DF5C70()
{
  result = qword_1EBF1CF48;
  if (!qword_1EBF1CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CF40, &qword_1C1E57C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CF48);
  }

  return result;
}

uint64_t sub_1C1DF5CF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E2A228(a1);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1DF5D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DF5DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CalculateGraphExpression(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1E54ACC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1E54ACC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DF5EB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1E54ACC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1C1E54ACC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1C1DF5404(result);

  return sub_1C1DF5DB4(v4, v2, 0);
}

uint64_t type metadata accessor for TwoFingerDragRepresentable.Coordinator()
{
  result = qword_1EBF1CF68;
  if (!qword_1EBF1CF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1DF613C()
{
  result = sub_1C1E5350C();
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

uint64_t sub_1C1DF61D8(void *a1)
{
  v2 = sub_1C1E52CFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1E5350C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
    sub_1C1E52F9C();
    *&v40.f64[0] = v7;
    v13 = v45;
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v15 = v14;
    v17 = v16;
    v18 = *(v3 + 8);
    *&v41.f64[0] = v3 + 8;
    v18(v6, v2);
    v19 = *(v8 + 8);
    v19(v12, v7);
    v20 = &v13[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
    *v20 = v15;
    *(v20 + 1) = v17;

    sub_1C1E52F9C();
    v21 = v45;
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v23 = v22;
    v25 = v24;
    v18(v6, v2);
    v19(v12, *&v40.f64[0]);
    v26 = &v21[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    *v26 = v23;
    *(v26 + 1) = v25;

    v27 = v42[1];
    v45 = *v42;
    v46 = v27;
    v47 = *(v42 + 32);
    v43 = 0uLL;
    v44 = 2;
  }

  else if ([a1 state] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
    sub_1C1E52F9C();
    v28 = v7;
    v29 = v45;
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v31 = v30;
    v33 = v32;
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v28);
    v34 = &v29[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    *v34 = v31;
    *(v34 + 1) = v33;

    sub_1C1E52F9C();
    v35 = *&v48[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    v40 = *&v48[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
    v41 = v35;

    v36 = v42[1];
    v45 = *v42;
    v46 = v36;
    v47 = *(v42 + 32);
    v43 = vsubq_f64(v41, v40);
    v44 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
    sub_1C1E52F9C();
    v37 = *&v48[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    v40 = *&v48[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
    v41 = v37;

    v38 = v42[1];
    v45 = *v42;
    v46 = v38;
    v47 = *(v42 + 32);
    v43 = vsubq_f64(v41, v40);
    v44 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF88, &unk_1C1E57DC0);
  return sub_1C1E537AC();
}

uint64_t sub_1C1DF662C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C1E5350C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 16);
  v10(v9, a1, v4, v7);
  v11 = type metadata accessor for TwoFingerDragRepresentable.Coordinator();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  (v10)(&v12[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_converter], v9, v4);
  v17.receiver = v12;
  v17.super_class = v11;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  result = (*(v5 + 8))(v9, v4);
  *a2 = v15;
  return result;
}

void sub_1C1DF6798(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1C1E54ACC() != 2)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 2)
  {
    return;
  }

  sub_1C1DF7224();
  sub_1C1DF7270();
  v4 = sub_1C1E548BC();
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC9E8]) init];
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TwoFingerPanGestureRecognizer();
  v6 = a2;
  objc_msgSendSuper2(&v7, sel_touchesMoved_withEvent_, v4, v5);
}

id sub_1C1DF690C(uint64_t a1, uint64_t a2)
{
  sub_1C1DF7224();
  sub_1C1DF7270();
  v4 = sub_1C1E548BC();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TwoFingerPanGestureRecognizer();
  objc_msgSendSuper2(&v10, sel_touchesEnded_withEvent_, v4, a2);

  result = [v2 _activeTouchesForEvent_];
  if (result)
  {
    v6 = result;
    v7 = sub_1C1E548CC();

    v8 = (v7 & 0xC000000000000001) != 0 ? sub_1C1E54ACC() : *(v7 + 16);

    result = [v2 minimumNumberOfTouches];
    if (v8 < result)
    {
      if ([v2 state] == 1)
      {
        v9 = 3;
      }

      else if ([v2 state] == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 5;
      }

      return [v2 setState_];
    }
  }

  return result;
}

id sub_1C1DF6AE8(uint64_t a1, uint64_t a2)
{
  sub_1C1DF70BC(a1, v17);
  v5 = v18;
  if (v18)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v17, v18);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    v9 = MEMORY[0x1EEE9AC00](v6);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v11, v9);
    v12 = sub_1C1E54D0C();
    (*(v7 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for TwoFingerPanGestureRecognizer();
  v16.receiver = v2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, v12, a2);
  swift_unknownObjectRelease();
  sub_1C1DF712C(a1);
  return v14;
}

id sub_1C1DF6CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C1DF6D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C1DF6D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DragState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DragState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1DF6E68(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C1DF6E80(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_1C1DF6EA8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

LABEL_6:
    v5 = *a1;
    v6 = *a2;
    v7 = *(a2 + 8);
    return *(a1 + 8) == v3 && *a1 == v2;
  }

  return v4 == 2 && (*&v3 | *&v2) == 0;
}

uint64_t sub_1C1DF6F18(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1E545FC();
  v5 = v4;

  if (v3 == 0xD00000000000001ALL && 0x80000001C1E5AF50 == v5)
  {
  }

  else
  {
    v7 = sub_1C1E54D2C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1C1DF6FC8()
{
  type metadata accessor for TwoFingerPanGestureRecognizer();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setMinimumNumberOfTouches_];
  [v0 setMaximumNumberOfTouches_];
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
  sub_1C1E52F9C();
  [v1 setDelegate_];

  v2 = sub_1C1E545BC();
  [v1 setName_];

  return v1;
}

uint64_t sub_1C1DF70BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF90, &qword_1C1E58470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF712C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF90, &qword_1C1E58470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1C1DF7224()
{
  result = qword_1EBF1CF98;
  if (!qword_1EBF1CF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1CF98);
  }

  return result;
}

unint64_t sub_1C1DF7270()
{
  result = qword_1EBF1CFA0;
  if (!qword_1EBF1CFA0)
  {
    sub_1C1DF7224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CFA0);
  }

  return result;
}

Swift::Void __swiftcall CalculateExpression.copyToClipboard(overridePlaintext:)(Swift::String_optional overridePlaintext)
{
  countAndFlagsBits = overridePlaintext.value._countAndFlagsBits;
  object = overridePlaintext.value._object;
  if (!overridePlaintext.value._object)
  {
    v4 = sub_1C1DFFB1C(v1);
    if (!v5)
    {
      return;
    }

    countAndFlagsBits = v4;
    object = v5;
  }

  v6 = objc_opt_self();

  v7 = [v6 generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFB0, &qword_1C1E57DE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1E57DD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFB8, &qword_1C1E57DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  *(inited + 32) = 0xD000000000000011;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x80000001C1E5BB30;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x80000001C1E5AEA0;
  v11 = sub_1C1E53B0C();
  *(inited + 120) = v10;
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  v13 = sub_1C1DF763C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFC0, &qword_1C1E57DF0);
  swift_arrayDestroy();
  *(v8 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFC8, &qword_1C1E57DF8);
  v14 = sub_1C1E547DC();

  [v7 setItems_];
}

uint64_t CalculateExpression.paste(_:)(uint64_t a1, unint64_t a2)
{
  if (sub_1C1E53D2C() == 1)
  {

    return sub_1C1E0030C(a1, a2, v2);
  }

  else
  {

    return sub_1C1E00B14();
  }
}

unint64_t sub_1C1DF7514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFD8, &qword_1C1E57E08);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1CFE0, &qword_1C1E57E10);
      v5 = v11;
      result = sub_1C1DC79A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF763C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D030, &unk_1C1E57E40);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v13, &qword_1EBF1CFC0, &qword_1C1E57DF0);
      v5 = v13;
      v6 = v14;
      result = sub_1C1E33C1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C1DC7B3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF776C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D028, &qword_1C1E5AE60);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1C810, &qword_1C1E576E0);
      v5 = v11;
      result = sub_1C1DC79A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF7894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D020, &qword_1C1E57E38);
    v3 = sub_1C1E54C3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1C1E33C1C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF7994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D000, &qword_1C1E57E20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D008, &qword_1C1E57E28);
    v8 = sub_1C1E54C3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C1DC1424(v10, v6, &qword_1EBF1D000, &qword_1C1E57E20);
      result = sub_1C1E33C94(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C1E51F9C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for Function();
      result = sub_1C1DF7E98(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF7B9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D010, &qword_1C1E57E30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D018, &unk_1C1E5AE50);
    v8 = sub_1C1E54C3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C1DC1424(v10, v6, &qword_1EBF1D010, &qword_1C1E57E30);
      result = sub_1C1E33C94(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C1E51F9C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C1DF7D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF8, &qword_1C1E57E18);
  v3 = sub_1C1E54C3C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1C1E33D2C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1C1E33D2C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1DF7E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CalculateScrubber.formattedValue.getter()
{
  swift_getKeyPath();
  v9 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [v1 formattedResult];
LABEL_5:
    v7 = sub_1C1E545FC();

    return v7;
  }

  v3 = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  v9 = v0;
  sub_1C1E520BC();

  v4 = *(v0 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  sub_1C1DFF098(v3, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, &v9);

  v6 = sub_1C1E544FC();

  if (v6)
  {
    v2 = [v6 formattedResult];

    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

void CalculateScrubber.value.setter(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v2 = sub_1C1E544FC();
  }

  v4 = a1;
  v3 = sub_1C1DFD1D4(v2);

  sub_1C1DFCE18(v3);
}

uint64_t CalculateScrubber.didScrub.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v2 = *(v0 + 56);
  v1 = *(v4 + 64);
  sub_1C1DD6A34(v2);
  return v2;
}

void sub_1C1DF8224(uint64_t a1)
{
  if (*(v1 + 104) == a1)
  {

    sub_1C1DFE054(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1DF8354(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t CalculateScrubber.didEndScrub.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v1 = *(v4 + 80);
  sub_1C1DD6A34(v2);
  return v2;
}

double CalculateScrubber.minValue.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16);
}

double sub_1C1DF85E0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t CalculateScrubber.minValue.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1DF87F0(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*CalculateScrubber.minValue.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF8984;
}

double CalculateScrubber.maxValue.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 24);
}

double sub_1C1DF8A44@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t CalculateScrubber.maxValue.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1DF8C54(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

void (*CalculateScrubber.maxValue.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF8DE8;
}

void *sub_1C1DF8DF4()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_1C1DF8E9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_1C1DF8F54(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1DC0D28(0, &qword_1EBF1D050, 0x1E69922A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C1E549BC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void *CalculateScrubber.step.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  result = *(v0 + 32);
  if (!result)
  {
    return result;
  }

  v2 = [result terms];
  sub_1C1DC0D28(0, &qword_1EBF1D048, 0x1E69922B0);
  v3 = sub_1C1E547EC();

  if (v3 >> 62)
  {
    result = sub_1C1E54ACC();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6910730](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_7:
    v5 = v4;

    v6 = [v5 value];

    [v6 doubleValue];
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1C1DF928C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
  }

  sub_1C1DF8F54(v3);
}

void CalculateScrubber.step.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = (v2 + 32);
    if (*(v2 + 32))
    {
      v4 = 0;
LABEL_14:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
      sub_1C1E520AC();

      return;
    }

    v10 = 0;
    v4 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
    v4 = v5;
    v3 = (v2 + 32);
    v6 = *(v2 + 32);
    if (v6)
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      sub_1C1DC0D28(0, &qword_1EBF1D050, 0x1E69922A8);
      v7 = v6;
      v8 = v4;
      v9 = sub_1C1E549BC();

      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }

      v10 = *v3;
    }

    else
    {
      if (v5)
      {
        goto LABEL_14;
      }

      v10 = 0;
    }
  }

  *v3 = v4;
}

void (*CalculateScrubber.step.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = CalculateScrubber.step.getter();
  *(a1 + 8) = v3 & 1;
  return sub_1C1DF9520;
}

void sub_1C1DF9520(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
  }

  v3 = *(a1 + 16);
  sub_1C1DF8F54(v2);
}

uint64_t CalculateScrubber.didBeginScrub.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v2 = *(v0 + 40);
  v1 = *(v4 + 48);
  sub_1C1DD6A34(v2);
  return v2;
}

uint64_t sub_1C1DF9648@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1DFF7B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1DD6A34(v4);
}

uint64_t sub_1C1DF9748(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1DFF788;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DD6A34(v3);
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();
  sub_1C1DD0EB8(v6);
}

uint64_t sub_1C1DF98D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_1C1DD6A34(a2);
  return sub_1C1DD0EB8(v6);
}

void (*CalculateScrubber.didBeginScrub.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF9A94;
}

uint64_t sub_1C1DF9AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1DFF840;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1DD6A34(v4);
}

uint64_t sub_1C1DF9BA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1DFF808;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DD6A34(v3);
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();
  sub_1C1DD0EB8(v6);
}

uint64_t sub_1C1DF9D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();
  a5(a1, a2);
}

uint64_t sub_1C1DF9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1C1DD6A34(a2);
  return sub_1C1DD0EB8(v6);
}

void (*CalculateScrubber.didScrub.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF9FD0;
}

uint64_t sub_1C1DF9FDC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1DFF9C0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1DD6A34(v4);
}

uint64_t sub_1C1DFA0DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1DFF9A4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DD6A34(v3);
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();
  sub_1C1DD0EB8(v6);
}

uint64_t sub_1C1DFA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  sub_1C1DD6A34(a2);
  return sub_1C1DD0EB8(v6);
}

void (*CalculateScrubber.didEndScrub.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DFA428;
}

void sub_1C1DFA434(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C1E520CC();

  free(v1);
}

id sub_1C1DFA4B8()
{
  result = sub_1C1DFA4D8();
  qword_1EBF1D038 = result;
  return result;
}

id sub_1C1DFA4D8()
{
  v0 = sub_1C1E5207C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v10 = [v9 locale];
  if (v10)
  {
    v11 = v10;
    sub_1C1E5202C();

    (*(v1 + 56))(v8, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v8, 1, 1, v0);
  }

  sub_1C1DC1870(v8, &qword_1EBF1D058, &qword_1C1E57FB0);
  [v9 setNumberStyle_];
  sub_1C1E51FAC();
  v12 = sub_1C1E5200C();
  (*(v1 + 8))(v4, v0);
  [v9 setLocale_];

  [v9 setUsesGroupingSeparator_];
  return v9;
}

uint64_t sub_1C1DFA6DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v203 = a3;
  v209 = a2;
  v208 = a1;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D088, &qword_1C1E58150);
  v3 = *(*(v199 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v199);
  v196 = &v183[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v186 = &v183[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v197 = &v183[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D090, &qword_1C1E58158);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v188 = &v183[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v200 = &v183[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v194 = &v183[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v185 = &v183[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v190 = &v183[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v183[-v22];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v189 = &v183[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v201 = &v183[-v27];
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v183[-v28];
  v212 = sub_1C1E5443C();
  v202 = *(v212 - 8);
  v30 = *(v202 + 64);
  v31 = MEMORY[0x1EEE9AC00](v212);
  v210 = &v183[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v211 = &v183[-v33];
  v34 = sub_1C1E51F9C();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v207 = &v183[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v205 = sub_1C1E53CBC();
  v37 = *(v205 - 1);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v183[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v183[-v42];
  v44 = sub_1C1E5207C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v183[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v49 setNumberStyle_];
  sub_1C1DC1424(v203, v43, &qword_1EBF1D058, &qword_1C1E57FB0);
  v50 = (*(v45 + 48))(v43, 1, v44);
  v187 = v23;
  v195 = v29;
  if (v50 == 1)
  {
    sub_1C1DC1870(v43, &qword_1EBF1D058, &qword_1C1E57FB0);
  }

  else
  {
    (*(v45 + 32))(v48, v43, v44);
    v51 = sub_1C1E5200C();
    [v49 setLocale_];

    (*(v45 + 8))(v48, v44);
  }

  [v49 setMaximumFractionDigits_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E57E50;
  v53 = *MEMORY[0x1E6992278];
  *(inited + 32) = *MEMORY[0x1E6992278];
  v54 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v55 = v53;
  v56 = [v54 initWithUnsignedInteger_];
  v57 = sub_1C1DC0D28(0, &qword_1EBF1C808, 0x1E696AD98);
  *(inited + 40) = v56;
  v58 = *MEMORY[0x1E6992270];
  *(inited + 64) = v57;
  *(inited + 72) = v58;
  v59 = sub_1C1DC0D28(0, &qword_1EBF1D098, 0x1E696ADA0);
  *(inited + 80) = v49;
  v60 = *MEMORY[0x1E6992230];
  *(inited + 104) = v59;
  *(inited + 112) = v60;
  v61 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v62 = v58;
  v198 = v49;
  v63 = v60;
  v64 = [v61 initWithBool_];
  *(inited + 144) = v57;
  *(inited + 120) = v64;
  v65 = sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v67 = v204;
  *&v183[-16] = v204;
  *&v183[-8] = v65;
  v68 = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  v213[0] = v67;
  v69 = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();
  v191 = 0;

  swift_getKeyPath();
  v213[0] = v67;

  v193 = v68;
  sub_1C1E520BC();

  v70 = *(v67 + 128);
  (*(v37 + 104))(v206, *MEMORY[0x1E6992100], v205);

  v71 = v207;
  sub_1C1E51F8C();
  v72 = sub_1C1E5444C();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v203 = sub_1C1E5445C();
  sub_1C1E53D1C();
  v75 = sub_1C1E53AEC();

  v213[0] = MEMORY[0x1E69E7CC0];
  if (v75 >> 62)
  {
LABEL_106:
    v76 = sub_1C1E54ACC();
  }

  else
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v201;
  v192 = v69;
  if (v76)
  {
    v67 = 0;
    v209 = v75 & 0xC000000000000001;
    v208 = v75 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v206) = *MEMORY[0x1E6992140];
    v205 = (v202 + 104);
    v71 = v202 + 8;
    v207 = v76;
    v69 = v210;
    while (1)
    {
      if (v209)
      {
        MEMORY[0x1C6910730](v67, v75);
        v80 = (v67 + 1);
        if (__OFADD__(v67, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v86 = v213[0];
          v77 = v201;
          goto LABEL_20;
        }
      }

      else
      {
        if (v67 >= *(v208 + 16))
        {
          __break(1u);
          goto LABEL_106;
        }

        v79 = *(v75 + 8 * v67 + 32);

        v80 = (v67 + 1);
        if (__OFADD__(v67, 1))
        {
          goto LABEL_17;
        }
      }

      v81 = v75;
      v82 = v211;
      sub_1C1E53D0C();
      v83 = v212;
      (*v205)(v69, v206, v212);
      sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
      v84 = sub_1C1E545AC();
      v85 = *v71;
      (*v71)(v69, v83);
      v85(v82, v83);
      if (v84)
      {
      }

      else
      {
        sub_1C1E54BAC();
        v78 = *(v213[0] + 16);
        sub_1C1E54BDC();
        sub_1C1E54BEC();
        sub_1C1E54BBC();
      }

      v75 = v81;
      ++v67;
      if (v80 == v207)
      {
        goto LABEL_18;
      }
    }
  }

  v86 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v87 = v204;
  if ((v86 & 0x8000000000000000) != 0 || (v86 & 0x4000000000000000) != 0)
  {
    if (sub_1C1E54ACC() != 2)
    {
      goto LABEL_62;
    }

    v206 = sub_1C1E54ACC();
    if (!v206)
    {
      v210 = v86;
      v206 = 0;
      v90 = 1;
      LODWORD(v209) = 1;
      v88 = v195;
      goto LABEL_28;
    }
  }

  else
  {
    if (*(v86 + 16) != 2)
    {
      goto LABEL_62;
    }

    v206 = 2;
  }

  v88 = v195;
  if ((v86 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6910730](0, v86);
  }

  else
  {
    if (!*(v86 + 16))
    {
      __break(1u);
      goto LABEL_115;
    }

    v89 = *(v86 + 32);
  }

  v210 = v86;
  sub_1C1E53D0C();

  v90 = 0;
  LODWORD(v209) = 0;
LABEL_28:
  v91 = v202;
  v87 = v202 + 56;
  v92 = *(v202 + 56);
  v93 = v212;
  v92(v88, v90, 1, v212);
  v94 = *MEMORY[0x1E69921A0];
  v207 = *(v91 + 104);
  (v207)(v77, v94, v93);
  v208 = v92;
  v92(v77, 0, 1, v93);
  v71 = *(v199 + 48);
  v95 = v197;
  sub_1C1DC1424(v88, v197, &qword_1EBF1D090, &qword_1C1E58158);
  v96 = v95;
  sub_1C1DC1424(v77, &v95[v71], &qword_1EBF1D090, &qword_1C1E58158);
  v97 = *(v91 + 48);
  if (v97(v95, 1, v93) != 1)
  {
    v101 = v95;
    v102 = v189;
    sub_1C1DC1424(v101, v189, &qword_1EBF1D090, &qword_1C1E58158);
    if (v97(v96 + v71, 1, v93) != 1)
    {
      v205 = v97;
      v103 = v202;
      v104 = v96 + v71;
      v105 = v211;
      (*(v202 + 32))(v211, v104, v93);
      sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
      v184 = sub_1C1E545AC();
      v106 = v102;
      v98 = *(v103 + 8);
      (v98)(v105, v93);
      v71 = &qword_1C1E58158;
      sub_1C1DC1870(v201, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v195, &qword_1EBF1D090, &qword_1C1E58158);
      (v98)(v106, v93);
      sub_1C1DC1870(v96, &qword_1EBF1D090, &qword_1C1E58158);
      v86 = v210;
      if (v184)
      {
        goto LABEL_36;
      }

LABEL_34:
      v87 = v204;
      goto LABEL_62;
    }

    sub_1C1DC1870(v201, &qword_1EBF1D090, &qword_1C1E58158);
    v99 = v197;
    sub_1C1DC1870(v195, &qword_1EBF1D090, &qword_1C1E58158);
    (*(v202 + 8))(v102, v93);
    v86 = v210;
LABEL_33:
    sub_1C1DC1870(v99, &qword_1EBF1D088, &qword_1C1E58150);
    goto LABEL_34;
  }

  v98 = &qword_1EBF1D090;
  sub_1C1DC1870(v77, &qword_1EBF1D090, &qword_1C1E58158);
  v99 = v197;
  sub_1C1DC1870(v88, &qword_1EBF1D090, &qword_1C1E58158);
  v205 = v97;
  v100 = v97(&v99[v71], 1, v93);
  v86 = v210;
  if (v100 != 1)
  {
    goto LABEL_33;
  }

  sub_1C1DC1870(v99, &qword_1EBF1D090, &qword_1C1E58158);
LABEL_36:
  if (v209)
  {
    v107 = 1;
    v108 = v186;
    v71 = v187;
    goto LABEL_44;
  }

  v109 = v206 - 1;
  v108 = v186;
  v71 = v187;
  if (__OFSUB__(v206, 1))
  {
    goto LABEL_120;
  }

  if ((v86 & 0xC000000000000001) != 0)
  {
    goto LABEL_121;
  }

  if ((v109 & 0x8000000000000000) != 0)
  {
    goto LABEL_123;
  }

  if (v109 >= *(v86 + 16))
  {
    goto LABEL_126;
  }

  v110 = *(v86 + 8 * v109 + 32);

  while (1)
  {
    sub_1C1E53D0C();

    v107 = 0;
LABEL_44:
    v111 = v212;
    v112 = v208;
    (v208)(v71, v107, 1, v212);
    v113 = v190;
    (v207)(v190, *MEMORY[0x1E6992178], v111);
    v112(v113, 0, 1, v111);
    v114 = v111;
    v98 = *(v199 + 48);
    sub_1C1DC1424(v71, v108, &qword_1EBF1D090, &qword_1C1E58158);
    sub_1C1DC1424(v113, v108 + v98, &qword_1EBF1D090, &qword_1C1E58158);
    v115 = v205;
    if (v205(v108, 1, v111) == 1)
    {
      break;
    }

    v117 = v185;
    sub_1C1DC1424(v108, v185, &qword_1EBF1D090, &qword_1C1E58158);
    v118 = v115(v108 + v98, 1, v111);
    v87 = v204;
    if (v118 == 1)
    {
      sub_1C1DC1870(v190, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v71, &qword_1EBF1D090, &qword_1C1E58158);
      (*(v202 + 8))(v117, v111);
      goto LABEL_49;
    }

    v119 = v202;
    v120 = v211;
    (*(v202 + 32))(v211, v108 + v98, v111);
    sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
    LODWORD(v210) = sub_1C1E545AC();
    v121 = v117;
    v98 = v119 + 8;
    v122 = *(v119 + 8);
    v122(v120, v114);
    v71 = &qword_1C1E58158;
    sub_1C1DC1870(v190, &qword_1EBF1D090, &qword_1C1E58158);
    sub_1C1DC1870(v187, &qword_1EBF1D090, &qword_1C1E58158);
    v122(v121, v114);
    sub_1C1DC1870(v108, &qword_1EBF1D090, &qword_1C1E58158);
    if (v210)
    {
      goto LABEL_51;
    }

    while (1)
    {
LABEL_62:
      v132 = sub_1C1E53D7C();
      if (v132)
      {
        v133 = v132;
        v134 = v132;
LABEL_67:
        v139 = v132;
        v140 = v133;
        goto LABEL_68;
      }

      v135 = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
      v71 = swift_getKeyPath();
      v213[0] = v87;
      sub_1C1E520BC();

      v136 = *(v87 + 128);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213[0] = v136;
      v138 = v191;
      sub_1C1DFF098(v135, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, v213);

      if (v138)
      {
        goto LABEL_133;
      }

      v134 = sub_1C1E544FC();

      if (v134)
      {
        v133 = v134;
        v132 = 0;
        goto LABEL_67;
      }

      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v133 = sub_1C1E544FC();

      v140 = 0;
      v134 = v133;
LABEL_68:
      v141 = sub_1C1DFD1D4(v134);

      sub_1C1DFCE18(v141);
      if (v86 >> 62)
      {
        v182 = sub_1C1E54ACC();
        v67 = v200;
        if (v182 != 1)
        {
          goto LABEL_80;
        }

        if (!sub_1C1E54ACC())
        {
          v144 = 1;
          v142 = v194;
          goto LABEL_74;
        }
      }

      else
      {
        v67 = v200;
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_80;
        }
      }

      if ((v86 & 0xC000000000000001) != 0)
      {
LABEL_115:
        MEMORY[0x1C6910730](0, v86);
        v142 = v194;
      }

      else
      {
        v142 = v194;
        if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_117:
          swift_once();
          goto LABEL_85;
        }

        v143 = *(v86 + 32);
      }

      sub_1C1E53D0C();

      v144 = 0;
LABEL_74:
      v145 = v202;
      v146 = *(v202 + 56);
      v147 = v212;
      v146(v142, v144, 1, v212);
      (*(v145 + 104))(v67, *MEMORY[0x1E6992178], v147);
      v146(v67, 0, 1, v147);
      v148 = *(v199 + 48);
      v149 = v196;
      sub_1C1DC1424(v142, v196, &qword_1EBF1D090, &qword_1C1E58158);
      v150 = v149;
      sub_1C1DC1424(v67, &v149[v148], &qword_1EBF1D090, &qword_1C1E58158);
      v71 = v145 + 48;
      v151 = *(v145 + 48);
      if (v151(v150, 1, v147) == 1)
      {
        sub_1C1DC1870(v67, &qword_1EBF1D090, &qword_1C1E58158);
        v152 = v196;
        sub_1C1DC1870(v142, &qword_1EBF1D090, &qword_1C1E58158);
        if (v151(&v152[v148], 1, v147) != 1)
        {
          goto LABEL_79;
        }

        sub_1C1DC1870(v152, &qword_1EBF1D090, &qword_1C1E58158);
      }

      else
      {
        v153 = v188;
        sub_1C1DC1424(v150, v188, &qword_1EBF1D090, &qword_1C1E58158);
        if (v151((v150 + v148), 1, v147) == 1)
        {
          sub_1C1DC1870(v200, &qword_1EBF1D090, &qword_1C1E58158);
          v152 = v196;
          sub_1C1DC1870(v194, &qword_1EBF1D090, &qword_1C1E58158);
          (*(v202 + 8))(v153, v147);
LABEL_79:
          sub_1C1DC1870(v152, &qword_1EBF1D088, &qword_1C1E58150);
LABEL_80:

          v154 = 0;
LABEL_81:

          return v154;
        }

        v156 = v202;
        v157 = v150 + v148;
        v158 = v211;
        (*(v202 + 32))(v211, v157, v147);
        sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8]);
        v159 = v150;
        v160 = sub_1C1E545AC();
        v71 = *(v156 + 8);
        (v71)(v158, v147);
        sub_1C1DC1870(v200, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v194, &qword_1EBF1D090, &qword_1C1E58158);
        (v71)(v153, v147);
        sub_1C1DC1870(v159, &qword_1EBF1D090, &qword_1C1E58158);
        if ((v160 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      if (qword_1EBF1C138 != -1)
      {
        goto LABEL_117;
      }

LABEL_85:
      v161 = qword_1EBF1D038;
      sub_1C1E53BDC();
      sub_1C1E53B0C();
      v98 = sub_1C1E545BC();

      v162 = sub_1C1E545BC();
      v163 = [v98 rangeOfString_];

      v164 = sub_1C1E545BC();
      v165 = [v98 rangeOfString_];

      v212 = sub_1C1E51DEC();
      if (v165 == v212)
      {
        v166 = [v98 length];
        goto LABEL_93;
      }

      v211 = v165;
      if (__OFADD__(v165, 1))
      {
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v167 = [v98 substringFromIndex_];
      v168 = sub_1C1E545FC();
      v170 = v169;

      v171 = sub_1C1DFC47C(v168, v170);
      v71 = (v172 & 1) != 0 ? 0 : v171;
      swift_getKeyPath();
      v213[0] = v87;
      sub_1C1E520BC();

      v213[0] = v87;
      swift_getKeyPath();
      sub_1C1E520DC();

      v173 = *(v87 + 136);
      v174 = __OFADD__(v173, v71);
      v175 = v173 + v71;
      if (!v174)
      {
        break;
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      MEMORY[0x1C6910730](0, v86);
LABEL_55:
      v124 = sub_1C1E53CFC();
      v126 = v125;

      v213[0] = v124;
      v213[1] = v126;
      v127 = v206 - 1;
      if (__OFSUB__(v206, 1))
      {
        __break(1u);
        goto LABEL_130;
      }

      if (v98)
      {
        MEMORY[0x1C6910730](v127, v86);
      }

      else
      {
        if ((v127 & 0x8000000000000000) != 0)
        {
          goto LABEL_131;
        }

        if (v127 >= *(v86 + 16))
        {
          goto LABEL_132;
        }

        v128 = *(v86 + 8 * v127 + 32);
      }

      v129 = sub_1C1E53CFC();
      v71 = v130;

      MEMORY[0x1C69102A0](v129, v71);

      sub_1C1E53B1C();
      sub_1C1E53D1C();
      v131 = sub_1C1E53AEC();

      v86 = v131;
    }

    *(v87 + 136) = v175;
    v213[0] = v87;
    swift_getKeyPath();
    sub_1C1E520CC();

    v165 = v211;
    v166 = v211;
LABEL_93:
    v109 = sub_1C1E51DEC();
    v176 = v166;
    v177 = v166;
    if (v163 == v109)
    {
      goto LABEL_96;
    }

    v177 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v176 = v163;
LABEL_96:
    v211 = v98;
    v108 = v166 - v177;
    if (__OFSUB__(v166, v177))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      v213[0] = v87;
      v71 = v192;
      sub_1C1E520BC();

      v213[0] = v87;
      swift_getKeyPath();
      sub_1C1E520DC();

      v178 = *(v87 + 136);
      v174 = __OFSUB__(v178, v108);
      v179 = v178 - v108;
      if (!v174)
      {
        *(v87 + 136) = v179;
        v213[0] = v87;
        swift_getKeyPath();
        sub_1C1E520CC();

        if (v165 == v212)
        {
        }

        else
        {
          if (v176 <= 3)
          {
            v180 = 3;
          }

          else
          {
            v180 = v176;
          }

          v181 = v198;
          [v198 setMaximumIntegerDigits_];
        }

        v154 = 1;
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    MEMORY[0x1C6910730](v109, v86);
  }

  sub_1C1DC1870(v113, &qword_1EBF1D090, &qword_1C1E58158);
  sub_1C1DC1870(v71, &qword_1EBF1D090, &qword_1C1E58158);
  v116 = v115(v108 + v98, 1, v111);
  v87 = v204;
  if (v116 != 1)
  {
LABEL_49:
    sub_1C1DC1870(v108, &qword_1EBF1D088, &qword_1C1E58150);
    goto LABEL_62;
  }

  sub_1C1DC1870(v108, &qword_1EBF1D090, &qword_1C1E58158);
LABEL_51:
  if (v209)
  {
    goto LABEL_127;
  }

  v98 = v86 & 0xC000000000000001;
  if ((v86 & 0xC000000000000001) != 0)
  {
    goto LABEL_128;
  }

  if (*(v86 + 16))
  {
    v123 = *(v86 + 32);

    goto LABEL_55;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:

  __break(1u);
  return result;
}

uint64_t sub_1C1DFC3D8()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 128);
}

uint64_t sub_1C1DFC47C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C1E54B9C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1C1DFE648(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t CalculateScrubber.__allocating_init(formattedValue:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return CalculateScrubber.init(formattedValue:)(a1, a2);
}

uint64_t CalculateScrubber.init(formattedValue:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  *(v2 + 16) = xmmword_1C1E57E60;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  v9 = objc_opt_self();
  v10 = [v9 lightConfiguration];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v10 view:0];

  *(v2 + 112) = v11;
  v12 = [v9 strongConfiguration];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v12 view:0];

  *(v2 + 120) = v13;
  *(v2 + 128) = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
  *(v2 + 136) = 0;
  sub_1C1E520EC();
  v14 = sub_1C1E5207C();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  LOBYTE(a1) = sub_1C1DFA6DC(a1, a2, v8);

  sub_1C1DC1870(v8, &qword_1EBF1D058, &qword_1C1E57FB0);
  if ((a1 & 1) == 0)
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1C1DFC9B4(uint64_t result)
{
  if (*(v1 + 136) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t CalculateScrubber.__allocating_init(formattedValue:locale:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return CalculateScrubber.init(formattedValue:locale:)(a1, a2, a3);
}

uint64_t CalculateScrubber.init(formattedValue:locale:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1C1E57E60;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 73) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  v7 = objc_opt_self();
  v8 = [v7 lightConfiguration];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v8 view:0];

  *(v3 + 112) = v9;
  v10 = [v7 strongConfiguration];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v10 view:0];

  *(v3 + 120) = v11;
  *(v3 + 128) = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
  *(v3 + 136) = 0;
  sub_1C1E520EC();
  LOBYTE(a1) = sub_1C1DFA6DC(a1, a2, a3);

  sub_1C1DC1870(a3, &qword_1EBF1D058, &qword_1C1E57FB0);
  if ((a1 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

uint64_t CalculateScrubber.isScrubbing.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  return *(v0 + 88);
}

uint64_t sub_1C1DFCD0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 88);
  return result;
}

void sub_1C1DFCDE8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C1DFCE18(v2);
}

void sub_1C1DFCE18(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1DC0D28(0, &qword_1EBF1D050, 0x1E69922A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C1E549BC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void *sub_1C1DFCFAC()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for CalculateScrubber()
{
  result = qword_1EBF1D078;
  if (!qword_1EBF1D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C1DFD0A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_1C1DFD158(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  if (!*a1)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v4 = sub_1C1E544FC();
  }

  v5 = v2;
  v6 = sub_1C1DFD1D4(v4);

  sub_1C1DFCE18(v6);
}

void *sub_1C1DFD1D4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v26 = v1;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v1 + 24) == INFINITY)
  {
    v4 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1E57DD0;
    v6 = *MEMORY[0x1E6992288];
    *(inited + 32) = *MEMORY[0x1E6992288];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1C1E55C40;
    *(v7 + 32) = 0x746C75736572;
    *(v7 + 40) = 0xE600000000000000;
    *(v7 + 48) = a1;
    *(v7 + 56) = 0x6C617678616DLL;
    *(v7 + 64) = 0xE600000000000000;
    swift_getKeyPath();
    v25[0] = v2;
    v8 = a1;
    v9 = v6;
    sub_1C1E520BC();

    *(v7 + 72) = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
    v10 = sub_1C1DF7894(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
    swift_arrayDestroy();
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
    *(inited + 40) = v10;
    v11 = sub_1C1DF776C(inited);
    swift_setDeallocating();
    sub_1C1DC1870(inited + 32, &qword_1EBF1C810, &qword_1C1E576E0);
    swift_getKeyPath();
    v25[0] = v2;
    sub_1C1E520BC();

    v12 = *(v2 + 128);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v12;
    sub_1C1DFF098(v11, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, v25);

    a1 = sub_1C1E544FC();
  }

  swift_getKeyPath();
  v25[0] = v2;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v2 + 16) != -INFINITY)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1C1E57DD0;
    v15 = *MEMORY[0x1E6992288];
    *(v14 + 32) = *MEMORY[0x1E6992288];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1C1E55C40;
    *(v16 + 32) = 0x746C75736572;
    *(v16 + 40) = 0xE600000000000000;
    *(v16 + 48) = a1;
    *(v16 + 56) = 0x6C61766E696DLL;
    *(v16 + 64) = 0xE600000000000000;
    swift_getKeyPath();
    v24 = v2;
    v23 = a1;
    v17 = v15;
    sub_1C1E520BC();

    *(v16 + 72) = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
    v18 = sub_1C1DF7894(v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
    swift_arrayDestroy();
    *(v14 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
    *(v14 + 40) = v18;
    v19 = sub_1C1DF776C(v14);
    swift_setDeallocating();
    sub_1C1DC1870(v14 + 32, &qword_1EBF1C810, &qword_1C1E576E0);
    swift_getKeyPath();
    v24 = v2;
    sub_1C1E520BC();

    v20 = *(v2 + 128);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v20;
    sub_1C1DFF098(v19, sub_1C1DFF048, 0, v21, &v24);

    a1 = sub_1C1E544FC();
  }

  return a1;
}

void (*CalculateScrubber.value.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v3 = *(v1 + 96);
  *a1 = v3;
  v4 = v3;
  return sub_1C1DFD874;
}

void sub_1C1DFD874(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *a1;
  if (a2)
  {
    if (!v3)
    {
      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v4 = sub_1C1E544FC();
    }

    v5 = *(a1 + 16);
    v9 = v3;
    v6 = sub_1C1DFD1D4(v4);

    sub_1C1DFCE18(v6);
  }

  else
  {
    if (!v3)
    {
      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v4 = sub_1C1E544FC();
    }

    v7 = *(a1 + 16);
    v9 = v3;
    v8 = sub_1C1DFD1D4(v4);

    sub_1C1DFCE18(v8);
  }
}

uint64_t CalculateScrubber.scrubberPositionValue.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  return *(v0 + 104);
}

Swift::Void __swiftcall CalculateScrubber.didScrub(positionChange:)(Swift::Int positionChange)
{
  v2 = v1;
  swift_getKeyPath();
  v32 = v1;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  v4 = v1[4];
  if (v4)
  {
    v5 = v1[4];
  }

  else
  {
    v32 = 0x202C303128776F70;
    v33 = 0xE800000000000000;
    swift_getKeyPath();
    v34 = v1;
    sub_1C1E520BC();

    v34 = v1[17];
    v6 = sub_1C1E54CFC();
    MEMORY[0x1C69102A0](v6);

    MEMORY[0x1C69102A0](41, 0xE100000000000000);
    v7 = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
    swift_getKeyPath();
    v32 = v1;
    sub_1C1E520BC();

    v8 = v1[16];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v8;
    sub_1C1DFF098(v7, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, &v32);

    v5 = sub_1C1E544FC();
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  v10 = v4;
  sub_1C1E54B4C();

  v32 = 0x202D2065756C6176;
  v33 = 0xE800000000000000;
  v34 = positionChange;
  v11 = sub_1C1E54CFC();
  MEMORY[0x1C69102A0](v11);

  MEMORY[0x1C69102A0](0x636E69202A20, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E57DD0;
  v13 = *MEMORY[0x1E6992288];
  *(inited + 32) = *MEMORY[0x1E6992288];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1C1E55C40;
  *(v14 + 32) = 0x65756C6176;
  *(v14 + 40) = 0xE500000000000000;
  swift_getKeyPath();
  v32 = v2;
  v15 = v13;
  sub_1C1E520BC();

  v16 = v2[12];
  *(v14 + 48) = v16;
  *(v14 + 56) = 6516329;
  *(v14 + 64) = 0xE300000000000000;
  *(v14 + 72) = v5;
  v17 = v5;
  v18 = v16;
  v19 = sub_1C1DF7894(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
  swift_arrayDestroy();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
  *(inited + 40) = v19;
  v20 = sub_1C1DF776C(inited);
  swift_setDeallocating();
  sub_1C1DC1870(inited + 32, &qword_1EBF1C810, &qword_1C1E576E0);
  swift_getKeyPath();
  v32 = v2;
  sub_1C1E520BC();

  v21 = v2[16];

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v21;
  sub_1C1DFF098(v20, sub_1C1DFF048, 0, v22, &v32);

  v23 = sub_1C1E544FC();

  v24 = v23;
  if (!v23)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v24 = sub_1C1E544FC();
  }

  v25 = v23;
  v26 = sub_1C1DFD1D4(v24);

  sub_1C1DFCE18(v26);
  swift_getKeyPath();
  v32 = v2;
  sub_1C1E520BC();

  v27 = 14;
  if (!v2[13])
  {
    v27 = 15;
  }

  v28 = v2[v27];
  [v28 selectionChanged];
  swift_getKeyPath();
  v32 = v2;
  sub_1C1E520BC();

  swift_beginAccess();
  v29 = v2[7];
  if (v29)
  {
    v30 = v2[8];

    v31 = CalculateScrubber.formattedValue.getter();
    v29(v31);

    sub_1C1DD0EB8(v29);
  }

  else
  {

    v28 = v17;
  }
}

void sub_1C1DFE054(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  if (*(v1 + 104) != v2)
  {
    swift_getKeyPath();
    sub_1C1E520BC();

    v3 = *(v1 + 104);
    if (__OFSUB__(v3, v2))
    {
      __break(1u);
    }

    else
    {
      CalculateScrubber.didScrub(positionChange:)(v3 - v2);
    }
  }
}

uint64_t sub_1C1DFE188()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  return *(v0 + 136);
}

uint64_t sub_1C1DFE228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 128);
}

uint64_t sub_1C1DFE2D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();
}

uint64_t sub_1C1DFE3A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t CalculateScrubber.deinit()
{
  v1 = *(v0 + 48);
  sub_1C1DD0EB8(*(v0 + 40));
  v2 = *(v0 + 64);
  sub_1C1DD0EB8(*(v0 + 56));
  v3 = *(v0 + 80);
  sub_1C1DD0EB8(*(v0 + 72));

  v4 = *(v0 + 128);

  v5 = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  v6 = sub_1C1E520FC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CalculateScrubber.__deallocating_deinit()
{
  CalculateScrubber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1C1DFE540(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C1E545FC();
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v4 = sub_1C1E54DAC();

  return sub_1C1DC7A38(a1, v4);
}

void *sub_1C1DFE5D4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0A8, &qword_1C1E58160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1C1DFE648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C1E5478C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1DFEBD4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1E54B9C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C1DFEBD4()
{
  v0 = sub_1C1E5479C();
  v4 = sub_1C1DFEC54(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C1DFEC54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C1E5467C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C1E549DC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C1DFE5D4(v9, 0);
  v12 = sub_1C1DFEDAC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C1E5467C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C1E54B9C();
LABEL_4:

  return sub_1C1E5467C();
}

unint64_t sub_1C1DFEDAC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C1DFEFCC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C1E5472C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C1E54B9C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C1DFEFCC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C1E5470C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C1DFEFCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C1E5473C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C69102F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_1C1DFF048@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1C1DFF8A8((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

unint64_t sub_1C1DFF098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_1C1E50E1C(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_1C1DC7B3C(v43, v41);
  v13 = *a5;
  result = sub_1C1DC79A0(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1C1E4FB9C(v19, a4 & 1);
    v21 = *a5;
    result = sub_1C1DC79A0(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey(0);
    result = sub_1C1E54D4C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1C1E506F4();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1C1DC7B3C(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1C1DC7B3C(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_1C1E50E1C(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_1C1DC7B3C(v43, v41);
        v31 = *a5;
        result = sub_1C1DC79A0(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_1C1E4FB9C(v35, 1);
          v36 = *a5;
          result = sub_1C1DC79A0(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_1C1DC7B3C(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1C1DC7B3C(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1C1E50E1C(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_1C1DC7EA8();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1C1DFF378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D028, &qword_1C1E5AE60);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1C810, &qword_1C1E576E0);
      v5 = v11;
      result = sub_1C1DFE540(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1DFF4A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C1DFF4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

void sub_1C1DFF548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_1C1DFF5E8()
{
  result = sub_1C1E520FC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C1DFF740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1DFF788()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C1DFF7B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1C1DFF7D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1C1DFE054(v1);
}

uint64_t sub_1C1DFF808(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_1C1DFF840(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_1C1DFF870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

uint64_t sub_1C1DFF8A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C1DFF904()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 24);
}

uint64_t sub_1C1DFF9C4()
{
  v0 = sub_1C1E522AC();
  __swift_allocate_value_buffer(v0, qword_1EBF20D40);
  __swift_project_value_buffer(v0, qword_1EBF20D40);

  return sub_1C1E5229C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C1DFFB1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1C1E51F9C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1C1E53CBC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - v10;
  if (sub_1C1E53D2C() == 1)
  {
    v12 = sub_1C1E53D7C();
    if (!v12)
    {
      if (qword_1EBF1C140 != -1)
      {
        swift_once();
      }

      v28 = sub_1C1E522AC();
      __swift_project_value_buffer(v28, qword_1EBF20D40);
      v29 = sub_1C1E5228C();
      v30 = sub_1C1E5491C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C1DBF000, v29, v30, "no expression result, skipping copy", v31, 2u);
        MEMORY[0x1C6911150](v31, -1, -1);
      }

      return 0;
    }

    v13 = v12;
    v49 = v1;
    sub_1C1E53B7C();
    v14 = *MEMORY[0x1E6992100];
    v48 = v5[13];
    v48(v9, v14, v4);
    v15 = sub_1C1E00ABC();
    sub_1C1E547BC();
    sub_1C1E547BC();
    v16 = v5[1];
    v16(v9, v4);
    v16(v11, v4);
    if (v50 == v52)
    {
      if (qword_1EBF1C140 != -1)
      {
        swift_once();
      }

      v17 = sub_1C1E522AC();
      __swift_project_value_buffer(v17, qword_1EBF20D40);
      v18 = sub_1C1E5228C();
      v19 = sub_1C1E5491C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C1DBF000, v18, v19, "expression in base10, returning formattedResult", v20, 2u);
        MEMORY[0x1C6911150](v20, -1, -1);
      }

      v21 = [v13 formattedResult];
      v22 = sub_1C1E545FC();

      return v22;
    }

    v45 = v16;
    v47 = v15;
    v46 = v13;
    sub_1C1E53D9C();
    sub_1C1E53CCC();
    sub_1C1E51F8C();
    sub_1C1E53D6C();
    sub_1C1E53CEC();
    v32 = sub_1C1E53AAC();

    if (v32 >> 62)
    {
      if (sub_1C1E54ACC())
      {
        goto LABEL_21;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      if ((v32 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6910730](0, v32);
LABEL_24:

        sub_1C1E53B7C();
        v48(v9, *MEMORY[0x1E6992108], v4);
        sub_1C1E547BC();
        sub_1C1E547BC();
        v34 = v45;
        v45(v9, v4);
        v34(v11, v4);
        if (v50 == v52)
        {
          if (qword_1EBF1C140 != -1)
          {
            swift_once();
          }

          v35 = sub_1C1E522AC();
          __swift_project_value_buffer(v35, qword_1EBF20D40);
          v36 = sub_1C1E5228C();
          v37 = sub_1C1E5491C();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_1C1DBF000, v36, v37, "copying expression with base16 prefix", v38, 2u);
            MEMORY[0x1C6911150](v38, -1, -1);
          }

          v50 = 30768;
          v51 = 0xE200000000000000;
          v39 = sub_1C1E5439C();
          MEMORY[0x1C69102A0](v39);

          return v50;
        }

        else
        {
          v40 = sub_1C1E5439C();

          return v40;
        }
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v33 = *(v32 + 32);

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (qword_1EBF1C140 == -1)
    {
LABEL_33:
      v41 = sub_1C1E522AC();
      __swift_project_value_buffer(v41, qword_1EBF20D40);
      v42 = sub_1C1E5228C();
      v43 = sub_1C1E5491C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C1DBF000, v42, v43, "copy expression does not have any rich tokens, skipping copy", v44, 2u);
        MEMORY[0x1C6911150](v44, -1, -1);
      }

      return 0;
    }

LABEL_39:
    swift_once();
    goto LABEL_33;
  }

  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v24 = sub_1C1E522AC();
  __swift_project_value_buffer(v24, qword_1EBF20D40);
  v25 = sub_1C1E5228C();
  v26 = sub_1C1E5491C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C1DBF000, v25, v26, "engine is decimal, copying the plain expression", v27, 2u);
    MEMORY[0x1C6911150](v27, -1, -1);
  }

  return sub_1C1E53AFC();
}

uint64_t sub_1C1E0030C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1C1E5207C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1E53CBC();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v60 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v60 - v19;
  sub_1C1E53B7C();
  v66 = a1;
  v67 = a2;
  v60[1] = a3;
  sub_1C1E53BBC();
  v21 = sub_1C1E51FFC();
  v23 = v22;
  (*(v7 + 8))(v10, v6);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (!v23)
  {
    v23 = 0xE000000000000000;
  }

  v63 = v24;
  v64 = v23;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1C1DC733C();
  v25 = sub_1C1E54A1C();
  v27 = v26;

  v70 = v25;
  v71 = v27;
  result = sub_1C1E5474C();
  if (result)
  {
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
      goto LABEL_51;
    }

    result = sub_1C1DC9F68(v25, v27);
    if (!v30)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v31 = 1;
    goto LABEL_14;
  }

  if (sub_1C1E5474C())
  {
    v31 = 2;
LABEL_14:
    sub_1C1DD3370(v31);
    v33 = v61;
    v32 = v62;
    (*(v61 + 8))(v20, v62);
    v34 = MEMORY[0x1E69920F8];
LABEL_15:
    (*(v33 + 104))(v20, *v34, v32);
    goto LABEL_16;
  }

  if (sub_1C1E5474C())
  {
    sub_1C1DD3370(2);
LABEL_30:
    v33 = v61;
    v32 = v62;
    (*(v61 + 8))(v20, v62);
    v34 = MEMORY[0x1E6992108];
    goto LABEL_15;
  }

  v66 = v25;
  v67 = v27;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v48 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v48 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v68 = 0;
  v69 = v48;

  while (1)
  {
    sub_1C1E546EC();
    if (!v49)
    {
      break;
    }

    sub_1C1E5455C();
    v51 = v50;

    if (v51)
    {

      v33 = v61;
      v32 = v62;
      goto LABEL_16;
    }
  }

  v66 = v25;
  v67 = v27;
  v68 = 0;
  v69 = v48;

  while (1)
  {
    sub_1C1E546EC();
    if (!v52)
    {
      break;
    }

    v53 = sub_1C1E5457C();

    if ((v53 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  v66 = v25;
  v67 = v27;
  v68 = 0;
  v69 = v48;

  v33 = v61;
  v32 = v62;
  do
  {
    sub_1C1E546EC();
    if (!v54)
    {

      goto LABEL_16;
    }

    v55 = sub_1C1E5456C();
    v57 = v56;
  }

  while ((v57 & 1) == 0 && v55 <= 7);

  sub_1C1E53B7C();
  v58 = *(v33 + 104);
  v58(v15, *MEMORY[0x1E69920F8], v32);
  sub_1C1E00ABC();
  sub_1C1E547BC();
  sub_1C1E547BC();
  v59 = *(v33 + 8);
  v59(v15, v32);
  v59(v18, v32);
  if (v66 == v63)
  {
    v59(v20, v32);
    v58(v20, *MEMORY[0x1E6992100], v32);
  }

LABEL_16:
  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v35 = sub_1C1E522AC();
  __swift_project_value_buffer(v35, qword_1EBF20D40);
  v36 = sub_1C1E5228C();
  v37 = sub_1C1E5491C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    swift_beginAccess();
    *(v38 + 4) = sub_1C1E53CAC();
    _os_log_impl(&dword_1C1DBF000, v36, v37, "handlePaste: Attempting to paste a value with base%ld", v38, 0xCu);
    MEMORY[0x1C6911150](v38, -1, -1);
  }

  swift_beginAccess();
  result = sub_1C1E53CAC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_50;
  }

  v39 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v40 = sub_1C1E5464C();

  v41 = strtoull((v40 + 32), 0, v39);

  v65 = v41;
  sub_1C1E54CFC();
  sub_1C1E53D9C();
  v42 = sub_1C1E544FC();

  if (v42)
  {
    sub_1C1E53C4C();
    v43 = v42;
    v44 = sub_1C1E53C5C();

    sub_1C1E53D8C();

    (*(v33 + 8))(v20, v32);
  }

  else
  {
    v45 = sub_1C1E5228C();
    v46 = sub_1C1E5491C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C1DBF000, v45, v46, "Unable to evaluate pasteboard string", v47, 2u);
      MEMORY[0x1C6911150](v47, -1, -1);
    }

    (*(v33 + 8))(v20, v32);
    return 0;
  }

  return v44;
}

unint64_t sub_1C1E00ABC()
{
  result = qword_1EDE738B8;
  if (!qword_1EDE738B8)
  {
    sub_1C1E53CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE738B8);
  }

  return result;
}

uint64_t sub_1C1E00B14()
{
  sub_1C1E53D9C();
  v0 = sub_1C1E544FC();

  if (v0)
  {
    sub_1C1E53C4C();
    v1 = v0;
    v2 = sub_1C1E53C5C();

    sub_1C1E53D8C();
  }

  else
  {
    if (qword_1EBF1C140 != -1)
    {
      swift_once();
    }

    v3 = sub_1C1E522AC();
    __swift_project_value_buffer(v3, qword_1EBF20D40);
    v4 = sub_1C1E5228C();
    v5 = sub_1C1E548FC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C1DBF000, v4, v5, "Unable to evaluate pasteboard contents", v6, 2u);
      MEMORY[0x1C6911150](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1C1E00C70()
{
  v1 = v0;
  v2 = *(v0 + 72);
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (v2 == 2)
    {
      return result;
    }

LABEL_6:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
      sub_1C1E520BC();

      v9 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
      swift_beginAccess();
      v10 = *(v8 + v9);
    }

    else
    {
      v10 = 0;
    }

    *(v1 + 72) = v10;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    v15[5] = sub_1C1E04094;
    v15[6] = v11;

    sub_1C1E537BC();
    v16 = sub_1C1E03368(v67, v68, v69);

    v17 = *(v1 + 24);
    *(v1 + 24) = v16;

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    v21[5] = sub_1C1E04094;
    v21[6] = v11;

    sub_1C1E537BC();
    v22 = sub_1C1E03368(v67, v68, v69);

    v23 = *(v1 + 32);
    *(v1 + 32) = v22;

    sub_1C1E00C70(v24);
    v25 = *(v1 + 24);

    sub_1C1E00C70(v26);
    v27 = *(v1 + 32);

    sub_1C1E036B8(v25, v27);

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v28;
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    v31[5] = sub_1C1E04094;
    v31[6] = v11;

    sub_1C1E537BC();
    v32 = sub_1C1E03368(v67, v68, v69);

    v33 = *(v1 + 40);
    *(v1 + 40) = v32;

    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v34;
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v36;
    v37[5] = sub_1C1E04094;
    v37[6] = v11;

    sub_1C1E537BC();
    v38 = sub_1C1E03368(v67, v68, v69);

    v39 = *(v1 + 48);
    *(v1 + 48) = v38;

    sub_1C1E00C70(v40);
    v41 = *(v1 + 40);

    sub_1C1E00C70(v42);
    v43 = *(v1 + 48);

    sub_1C1E036B8(v41, v43);

    v44 = *(v1 + 72);
    if (v44 == 2 || (v44 & 1) != 0)
    {
      if (v44 != 2 && (v44 & 1) != 0)
      {
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = swift_allocObject();
        v46[2] = 0;
        v46[3] = 0;
        v46[4] = v45;
        v47 = swift_allocObject();
        swift_weakInit();
        v48 = swift_allocObject();
        v48[2] = 0;
        v48[3] = 0;
        v48[4] = v47;
        v48[5] = sub_1C1E04094;
        v48[6] = v11;

        sub_1C1E537BC();
        v49 = sub_1C1E03368(v67, v68, v69);

        v50 = *(v1 + 56);
        *(v1 + 56) = v49;

        v51 = swift_allocObject();
        swift_weakInit();
        v52 = swift_allocObject();
        v52[2] = 0;
        v52[3] = 0;
        v52[4] = v51;
        v53 = swift_allocObject();
        swift_weakInit();
        v54 = swift_allocObject();
        v54[2] = 0;
        v54[3] = 0;
        v54[4] = v53;
        v54[5] = sub_1C1E04094;
        v54[6] = v11;

        sub_1C1E537BC();
        v55 = sub_1C1E03368(v67, v68, v69);

        v56 = *(v1 + 64);
        *(v1 + 64) = v55;

        sub_1C1E00C70(v57);
        v58 = *(v1 + 56);

        sub_1C1E00C70(v59);
        v60 = *(v1 + 64);

        sub_1C1E036B8(v58, v60);
      }

      v61 = *(v1 + 24);
      *(v1 + 24) = 0;

      v62 = *(v1 + 32);
      *(v1 + 32) = 0;

      v63 = *(v1 + 40);
      *(v1 + 40) = 0;

      v64 = *(v1 + 48);
      *(v1 + 48) = 0;
    }

    v65 = *(v1 + 56);
    *(v1 + 56) = 0;

    v66 = *(v1 + 64);
    *(v1 + 64) = 0;
  }

  v4 = result;
  swift_getKeyPath();
  sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v5 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  v6 = *(v4 + v5);

  if (v2 == 2 || ((v6 ^ v2) & 1) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C1E015B4(void (*a1)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 73) = 1;
    v3 = result;
    a1();
    *(v3 + 73) = 0;
  }

  return result;
}

uint64_t sub_1C1E0162C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      MEMORY[0x1EEE9AC00](Strong);
      v13 = a5(a7);
      sub_1C1E00C70(v13);
      v14 = *(v11 + 24);

      sub_1C1E00C70(v15);
      v16 = *(v11 + 32);

      sub_1C1E036B8(v14, v16);
    }
  }

  return result;
}

uint64_t sub_1C1E01744@<X0>(double (*a1)(uint64_t)@<X3>, double *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = -5.0;
  if (result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
      sub_1C1E520BC();

      v8 = *(v7 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

      v5 = a1(v9);
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1E01874(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t), double a4)
{
  swift_getKeyPath();
  sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v8 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  a2(v9);
  v11 = v10;

  v13 = v11 + -0.0001;
  if (v11 + -0.0001 >= a4)
  {
    v13 = a4;
  }

  if (v13 <= v11)
  {
    return a3(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E01984@<X0>(void (*a1)(uint64_t)@<X3>, double *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = 5.0;
  if (result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
      sub_1C1E520BC();

      v8 = *(v7 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

      a1(v9);
      v5 = v10;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1E01AB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      MEMORY[0x1EEE9AC00](Strong);
      v13 = a5(a7);
      sub_1C1E00C70(v13);
      v14 = *(v11 + 40);

      sub_1C1E00C70(v15);
      v16 = *(v11 + 48);

      sub_1C1E036B8(v14, v16);
    }
  }

  return result;
}

uint64_t sub_1C1E01BCC(uint64_t a1, double (*a2)(uint64_t), uint64_t (*a3)(uint64_t, double), double a4)
{
  swift_getKeyPath();
  sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v8 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  v10 = a2(v9);

  v12 = v10 + 0.0001;
  if (v10 + 0.0001 < a4)
  {
    v12 = a4;
  }

  if (v10 <= v12)
  {
    return a3(result, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E01CDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      MEMORY[0x1EEE9AC00](Strong);
      v13 = a5(a7);
      sub_1C1E00C70(v13);
      v14 = *(v11 + 56);

      sub_1C1E00C70(v15);
      v16 = *(v11 + 64);

      sub_1C1E036B8(v14, v16);
    }
  }

  return result;
}

uint64_t sub_1C1E01DF4()
{
  sub_1C1E00C70();
  v1 = *(v0 + 24);
}

uint64_t sub_1C1E01E20()
{
  sub_1C1E00C70();
  v1 = *(v0 + 32);
}

uint64_t sub_1C1E01E4C()
{
  sub_1C1E00C70();
  v1 = *(v0 + 40);
}

uint64_t sub_1C1E01E78()
{
  sub_1C1E00C70();
  v1 = *(v0 + 48);
}

uint64_t sub_1C1E01EA4()
{
  sub_1C1E00C70();
  v1 = *(v0 + 56);
}

uint64_t sub_1C1E01ED0()
{
  sub_1C1E00C70();
  v1 = *(v0 + 64);
}

id sub_1C1E01EFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setMinimumFractionDigits_];
  result = [v0 setMaximumFractionDigits_];
  qword_1EBF20D58 = v0;
  return result;
}

uint64_t sub_1C1E01F60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C1E03EF0(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);

  sub_1C1E520BC();

  v7 = *(a6 + 96);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 terms];
  sub_1C1E03F38();
  v9 = sub_1C1E547EC();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = sub_1C1E54ACC();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C6910730](0, v9);
    goto LABEL_7;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_7:
    v12 = v11;

    v13 = [v12 value];

    [v13 doubleValue];
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0D0, &qword_1C1E582E0);
    sub_1C1E537AC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E021D4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520BC();

    v2 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

    sub_1C1E24AC8();
  }

  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520BC();

    v5 = *(v4 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

    sub_1C1E24CD4();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520BC();

    v8 = *(v7 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

    sub_1C1E24EE0();
  }

  return result;
}

void (*sub_1C1E023E8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  return sub_1C1E03360;
}

void sub_1C1E02468()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + 73))
    {
      goto LABEL_49;
    }

    v2 = swift_weakLoadStrong();
    if (!v2)
    {
      goto LABEL_49;
    }

    v3 = v2;
    sub_1C1E00C70();
    if (v1[3])
    {
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);

      sub_1C1E520BC();

      v4 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

      sub_1C1E24AC8();
      v6 = v5;

      if (qword_1EBF1C148 != -1)
      {
        swift_once();
      }

      v7 = qword_1EBF20D58;
      v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v9 = [v7 stringFromNumber_];

      if (!v9)
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_1C1E545FC();

      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v10 = sub_1C1E544FC();

      v11 = v10;
      if (!v10)
      {
        sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
        v11 = sub_1C1E544FC();
      }

      v12 = v10;
      v13 = sub_1C1DFD1D4(v11);

      sub_1C1DFCE18(v13);
    }

    sub_1C1E00C70();
    if (!v1[4])
    {
LABEL_18:
      sub_1C1E00C70();
      v24 = v1[3];

      sub_1C1E00C70();
      v25 = v1[4];

      sub_1C1E036B8(v24, v25);

      sub_1C1E00C70();
      if (!v1[5])
      {
LABEL_25:
        sub_1C1E00C70();
        if (!v1[6])
        {
LABEL_32:
          sub_1C1E00C70();
          v46 = v1[5];

          sub_1C1E00C70();
          v47 = v1[6];

          sub_1C1E036B8(v46, v47);

          swift_getKeyPath();
          sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);
          sub_1C1E520BC();

          v48 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
          swift_beginAccess();
          if (*(v3 + v48) != 1)
          {
LABEL_48:

LABEL_49:
            v71 = *v1;
            sub_1C1E5209C();

            return;
          }

          sub_1C1E00C70();
          if (!v1[7])
          {
            goto LABEL_40;
          }

          swift_getKeyPath();

          sub_1C1E520BC();

          v49 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

          sub_1C1E24EE0();
          v51 = v50;

          if (qword_1EBF1C148 != -1)
          {
            swift_once();
          }

          v52 = qword_1EBF20D58;
          v53 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          v54 = [v52 stringFromNumber_];

          if (v54)
          {
            sub_1C1E545FC();

            sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
            v55 = sub_1C1E544FC();

            v56 = v55;
            if (!v55)
            {
              sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
              v56 = sub_1C1E544FC();
            }

            v57 = v55;
            v58 = sub_1C1DFD1D4(v56);

            sub_1C1DFCE18(v58);

LABEL_40:
            sub_1C1E00C70();
            if (!v1[8])
            {
LABEL_47:
              sub_1C1E00C70();
              v69 = v1[7];

              sub_1C1E00C70();
              v70 = v1[8];

              sub_1C1E036B8(v69, v70);

              goto LABEL_48;
            }

            swift_getKeyPath();

            sub_1C1E520BC();

            v59 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

            sub_1C1E24EE0();
            v61 = v60;

            if (qword_1EBF1C148 != -1)
            {
              swift_once();
            }

            v62 = qword_1EBF20D58;
            v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
            v64 = [v62 stringFromNumber_];

            if (v64)
            {
              sub_1C1E545FC();

              sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
              v65 = sub_1C1E544FC();

              v66 = v65;
              if (!v65)
              {
                sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
                v66 = sub_1C1E544FC();
              }

              v67 = v65;
              v68 = sub_1C1DFD1D4(v66);

              sub_1C1DFCE18(v68);

              goto LABEL_47;
            }

LABEL_56:
            __break(1u);
            return;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        swift_getKeyPath();
        sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);

        sub_1C1E520BC();

        v36 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

        sub_1C1E24CD4();
        v38 = v37;

        if (qword_1EBF1C148 != -1)
        {
          swift_once();
        }

        v39 = qword_1EBF20D58;
        v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v41 = [v39 stringFromNumber_];

        if (v41)
        {
          sub_1C1E545FC();

          sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
          v42 = sub_1C1E544FC();

          v43 = v42;
          if (!v42)
          {
            sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
            v43 = sub_1C1E544FC();
          }

          v44 = v42;
          v45 = sub_1C1DFD1D4(v43);

          sub_1C1DFCE18(v45);

          goto LABEL_32;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);

      sub_1C1E520BC();

      v26 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

      sub_1C1E24CD4();
      v28 = v27;

      if (qword_1EBF1C148 != -1)
      {
        swift_once();
      }

      v29 = qword_1EBF20D58;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v31 = [v29 stringFromNumber_];

      if (v31)
      {
        sub_1C1E545FC();

        sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
        v32 = sub_1C1E544FC();

        v33 = v32;
        if (!v32)
        {
          sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
          v33 = sub_1C1E544FC();
        }

        v34 = v32;
        v35 = sub_1C1DFD1D4(v33);

        sub_1C1DFCE18(v35);

        goto LABEL_25;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph);

    sub_1C1E520BC();

    v14 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

    sub_1C1E24AC8();
    v16 = v15;

    if (qword_1EBF1C148 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBF20D58;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v19 = [v17 stringFromNumber_];

    if (v19)
    {
      sub_1C1E545FC();

      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v20 = sub_1C1E544FC();

      v21 = v20;
      if (!v20)
      {
        sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
        v21 = sub_1C1E544FC();
      }

      v22 = v20;
      v23 = sub_1C1DFD1D4(v21);

      sub_1C1DFCE18(v23);

      goto LABEL_18;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }
}

void *CalculateGraph.Bounds.deinit()
{
  swift_weakDestroy();
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return v0;
}

uint64_t CalculateGraph.Bounds.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return swift_deallocClassInstance();
}

void sub_1C1E03360()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C1E02468();
}

uint64_t sub_1C1E03368(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28[-v8];
  if (qword_1EBF1C148 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBF20D58;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0D0, &qword_1C1E582E0);
  MEMORY[0x1C690F370](&v29, v11);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v13 = [v10 stringFromNumber_];

  if (v13)
  {
    v14 = sub_1C1E545FC();
    v16 = v15;
  }

  else
  {
    v16 = 0xE100000000000000;
    v14 = 48;
  }

  v17 = [v10 locale];
  if (v17)
  {
    v18 = v17;
    sub_1C1E5202C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1C1E5207C();
  (*(*(v20 - 8) + 56))(v9, v19, 1, v20);
  v21 = type metadata accessor for CalculateScrubber();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  result = CalculateScrubber.init(formattedValue:locale:)(v14, v16, v9);
  if (result)
  {
    v25 = result;

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = a2;
    *(v26 + 32) = a3;
    *(v26 + 40) = v25;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v28[-32] = v25;
    *&v28[-24] = sub_1C1E044BC;
    *&v28[-16] = v26;
    v30 = v25;
    sub_1C1E03EF0(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);

    sub_1C1E520AC();

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E036B8(uint64_t result, uint64_t a2)
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v5 = *MEMORY[0x1E6992260];
  *(inited + 32) = *MEMORY[0x1E6992260];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0C0, &qword_1C1E58258);
  v6 = *(sub_1C1E5207C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1E57DD0;
  v10 = v5;

  sub_1C1E51FAC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0C8, &qword_1C1E58260);
  *(inited + 40) = v9;
  v12 = *MEMORY[0x1E6992288];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1C1E55C40;
  *(v13 + 32) = 0x7265776F6CLL;
  *(v13 + 40) = 0xE500000000000000;
  swift_getKeyPath();
  sub_1C1E03EF0(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  v14 = v12;
  sub_1C1E520BC();

  v15 = *(v3 + 96);
  *(v13 + 48) = v15;
  *(v13 + 56) = 0x7265707075;
  *(v13 + 64) = 0xE500000000000000;
  swift_getKeyPath();
  v16 = v15;
  sub_1C1E520BC();

  v17 = *(a2 + 96);
  *(v13 + 72) = v17;
  v18 = v17;
  v19 = sub_1C1DF7894(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
  swift_arrayDestroy();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
  *(inited + 80) = v19;
  sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  v20 = sub_1C1E544FC();

  v21 = 0.01;
  if (v20)
  {
    v22 = [v20 terms];
    sub_1C1E03F38();
    v23 = sub_1C1E547EC();

    if (v23 >> 62)
    {
      result = sub_1C1E54ACC();
    }

    else
    {
      result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1C6910730](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v24 = *(v23 + 32);
      }

      v25 = v24;

      v26 = [v25 value];

      [v26 doubleValue];
      v21 = v27;
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v28 = *(a2 + 96);
  v29 = 0.0;
  if (!v28)
  {
    goto LABEL_23;
  }

  v30 = [v28 terms];
  sub_1C1E03F38();
  v31 = sub_1C1E547EC();

  if (v31 >> 62)
  {
    result = sub_1C1E54ACC();
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_16:
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1C6910730](0, v31);
        goto LABEL_19;
      }

      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v31 + 32);
LABEL_19:
        v33 = v32;

        v34 = [v33 value];

        [v34 doubleValue];
        v29 = v35;

        goto LABEL_23;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

LABEL_23:
  v36 = v29 - v21;
  swift_beginAccess();
  if (*(v3 + 24) == v36)
  {
    *(v3 + 24) = v36;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E520AC();
  }

  v38 = v20;
  sub_1C1DF8F54(v20);
  swift_getKeyPath();
  sub_1C1E520BC();

  v39 = *(v3 + 96);
  v40 = 0.0;
  if (!v39)
  {
    goto LABEL_35;
  }

  v41 = [v39 &selRef_sceneCaptureState + 7];
  sub_1C1E03F38();
  v42 = sub_1C1E547EC();

  if (!(v42 >> 62))
  {
    result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_29;
    }

LABEL_34:

    goto LABEL_35;
  }

  result = sub_1C1E54ACC();
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1C6910730](0, v42);
    goto LABEL_32;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v43 = *(v42 + 32);
LABEL_32:
  v44 = v43;

  v45 = [v44 value];

  [v45 doubleValue];
  v40 = v46;

LABEL_35:
  v47 = v21 + v40;
  swift_beginAccess();
  if (*(a2 + 16) == v47)
  {
    *(a2 + 16) = v47;
  }

  else
  {
    v48 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v48);
    sub_1C1E520AC();
  }

  sub_1C1DF8F54(v20);
}

uint64_t sub_1C1E03EF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1E03F38()
{
  result = qword_1EBF1D048;
  if (!qword_1EBF1D048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1D048);
  }

  return result;
}

uint64_t *sub_1C1E03FC4()
{
  v1 = *v0;
  swift_weakInit();
  *(v0 + 7) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 36) = 2;
  swift_weakAssign();
  sub_1C1E5209C();
  return v0;
}

uint64_t sub_1C1E0409C@<X0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E01744(sub_1C1E24AC8, a1);
}

uint64_t sub_1C1E040FC@<X0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E01984(sub_1C1E24AC8, a1);
}

uint64_t sub_1C1E0418C@<X0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E01744(sub_1C1E24CD4, a1);
}

uint64_t sub_1C1E041EC@<X0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E01984(sub_1C1E24CD4, a1);
}

uint64_t sub_1C1E0424C@<X0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E01744(sub_1C1E24EE0, a1);
}

uint64_t sub_1C1E042AC@<X0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E01984(sub_1C1E24EE0, a1);
}

uint64_t objectdestroy_59Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1E0451C()
{
  sub_1C1DD0C3C();
  sub_1C1E52B8C();
  return v1;
}

void sub_1C1E04670(void *a1)
{
  v2 = v1;
  v4 = [v2 view];
  [a1 locationInView_];

  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    v15 = CGRectGetMaxY(v19) - *&v2[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight];
    sub_1C1DC0D28(0, &qword_1EBF1D178, 0x1E69DC9D8);
    v17 = sub_1C1E5497C();
    [v17 setPreferredArrowDirection_];
    v16 = *&v2[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction];
    [v16 presentEditMenuWithConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1E049A0()
{
  v1 = sub_1C1E5463C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard + 8);
    v5 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision);
    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision + 8);
      sub_1C1DD6A34(v3);
      v7 = sub_1C1DD6A34(v5);
      v8 = v5(v7);
      sub_1C1DD0EB8(v5);
      if (v8)
      {
        v9 = [objc_opt_self() generalPasteboard];
        v10 = sub_1C1E545BC();
        v11 = [v9 dataForPasteboardType_];

        if (v11)
        {
          v12 = sub_1C1E51EDC();
          v14 = v13;

          sub_1C1E5462C();
          v15 = sub_1C1E5460C();
          if (v16)
          {
            v3(v15);

            sub_1C1DD0EB8(v3);
            sub_1C1E05078(v12, v14);
            return;
          }

          sub_1C1E05078(v12, v14);
        }
      }
    }

    else
    {
      v17 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard + 8);
    }

    v18 = [objc_opt_self() generalPasteboard];
    v19 = [v18 string];

    if (v19)
    {
      v20 = sub_1C1E545FC();
      v22 = v21;

      (v3)(v20, v22);
    }

    sub_1C1DD0EB8(v3);
  }
}

id sub_1C1E04DD0(void *a1)
{
  *&v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction] = 0;
  v3 = &v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PlatformViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1C1E04EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C1E04F84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C1E04FE8()
{
  sub_1C1DD0850();
  sub_1C1E52EEC();
  __break(1u);
}

unint64_t sub_1C1E05010()
{
  result = qword_1EBF1D188;
  if (!qword_1EBF1D188)
  {
    sub_1C1DC0D28(255, &qword_1EBF1D180, 0x1E69DCDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D188);
  }

  return result;
}

uint64_t sub_1C1E05078(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_1C1E050CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D198, &qword_1C1E58478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C1E051D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D1A0, &unk_1C1E58480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1C1E052F8()
{
  v14 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D198, &qword_1C1E58478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E57DD0;
  *(inited + 32) = sel_copy_;
  v1 = objc_opt_self();
  v2 = [v1 generalPasteboard];
  v3 = [v2 hasStrings];

  if (v3 & 1) != 0 || (v4 = [v1 generalPasteboard], v5 = sub_1C1E547DC(), v6 = objc_msgSend(v4, sel_containsPasteboardTypes_, v5), v4, v5, (v6))
  {
    v7 = 2;
    inited = sub_1C1E050CC(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 40) = sel_paste_;
  }

  else
  {
    v7 = *(inited + 16);
  }

  v8 = 32;
  do
  {
    v9 = v7;
    if (v7-- == 0)
    {
      break;
    }

    v11 = *(inited + v8);
    v8 += 8;
  }

  while ((sub_1C1E5208C() & 1) == 0);

  v12 = *MEMORY[0x1E69E9840];
  return v9 != 0;
}

uint64_t sub_1C1E054A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t StocksKitCurrencyCache.Provider.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for StocksKitCurrencyCache.Provider()
{
  result = qword_1EDE73898;
  if (!qword_1EDE73898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StocksKitCurrencyCache.Provider.logo.getter()
{
  v1 = *(v0 + *(type metadata accessor for StocksKitCurrencyCache.Provider() + 24));
}

uint64_t StocksKitCurrencyCache.providerLogo()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[2] = v2;
  v3 = sub_1C1E544AC();
  v0[3] = v3;
  v4 = *(v3 - 8);
  v0[4] = v4;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = *(MEMORY[0x1E69921E8] + 4);
  v9 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1C1E05734;

  return v9(v2);
}

uint64_t sub_1C1E05734()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C1E05830, 0, 0);
}

uint64_t sub_1C1E05830()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v4 = 0;
  }

  else
  {
    v5 = v0[5];
    (*(v2 + 32))(v5, v3, v1);
    v4 = sub_1C1E0701C();
    (*(v2 + 8))(v5, v1);
  }

  v6 = v0[5];
  v7 = v0[2];

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_1C1E05940(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1C1E5485C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1E58598;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C1E585A0;
  v13[5] = v12;
  v14 = a1;
  sub_1C1E06B30(0, 0, v8, &unk_1C1E585A8, v13);
}

uint64_t sub_1C1E05AB4(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[3] = v6;
  v7 = sub_1C1E544AC();
  v2[4] = v7;
  v8 = *(v7 - 8);
  v2[5] = v8;
  v9 = *(v8 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = _Block_copy(a1);
  v10 = *(MEMORY[0x1E69921E8] + 4);
  v13 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  a2;
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_1C1E05C24;

  return v13(v6);
}

uint64_t sub_1C1E05C24()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C1E05D20, 0, 0);
}

uint64_t sub_1C1E05D20()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    (*(v2 + 32))(v5, v3, v1);
    v4 = sub_1C1E0701C();

    (*(v2 + 8))(v5, v1);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  (v7)[2](v7, v4);
  _Block_release(v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t StocksKitCurrencyCache.providerName()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[2] = v2;
  v3 = sub_1C1E544AC();
  v0[3] = v3;
  v4 = *(v3 - 8);
  v0[4] = v4;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = *(MEMORY[0x1E69921E8] + 4);
  v9 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1C1E05FAC;

  return v9(v2);
}

uint64_t sub_1C1E05FAC()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C1E060A8, 0, 0);
}

uint64_t sub_1C1E060A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v0[5];
    (*(v2 + 32))(v6, v3, v1);
    v4 = sub_1C1E5449C();
    v5 = v7;
    (*(v2 + 8))(v6, v1);
  }

  v8 = v0[5];
  v9 = v0[2];

  v10 = v0[1];

  return v10(v4, v5);
}

uint64_t sub_1C1E061CC(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1C1E5485C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1E58550;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C1E58560;
  v13[5] = v12;
  v14 = a1;
  sub_1C1E06B30(0, 0, v8, &unk_1C1E58570, v13);
}

uint64_t sub_1C1E06340(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C1E063E8;

  return StocksKitCurrencyCache.providerName()();
}

uint64_t sub_1C1E063E8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2)
  {
    v8 = sub_1C1E545BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + 24);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t StocksKitCurrencyCache.provider.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v1[3] = v3;
  v4 = sub_1C1E544AC();
  v1[4] = v4;
  v5 = *(v4 - 8);
  v1[5] = v5;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v7 = *(MEMORY[0x1E69921E8] + 4);
  v10 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  v8 = swift_task_alloc();
  v1[7] = v8;
  *v8 = v1;
  v8[1] = sub_1C1E06694;

  return v10(v3);
}

uint64_t sub_1C1E06694()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C1E06790, 0, 0);
}

uint64_t sub_1C1E06790()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v5 = type metadata accessor for StocksKitCurrencyCache.Provider();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    (*(v2 + 32))(v0[6], v3, v1);
    if (sub_1C1E0701C())
    {
      v6 = sub_1C1E5369C();
    }

    else
    {
      v6 = 0;
    }

    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    v10 = v0[2];
    v11 = sub_1C1E5449C();
    v13 = v12;
    v14 = type metadata accessor for StocksKitCurrencyCache.Provider();
    v15 = v10 + *(v14 + 20);
    sub_1C1E5447C();
    (*(v8 + 8))(v7, v9);
    *v10 = v11;
    v10[1] = v13;
    *(v10 + *(v14 + 24)) = v6;
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  v16 = v0[6];
  v17 = v0[3];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1C1E06960(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C1DE184C;

  return v7();
}

uint64_t sub_1C1E06A48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C1DE1518;

  return v8();
}

uint64_t sub_1C1E06B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1C1DC1424(a3, v25 - v11, &qword_1EBF1C748, &qword_1C1E56E20);
  v13 = sub_1C1E5485C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C1DC1870(v12, &qword_1EBF1C748, &qword_1C1E56E20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C1E5484C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1C1E5481C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1C1E5464C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);

    return v23;
  }

LABEL_8:
  sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1E06E2C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1E06F24;

  return v7(a1);
}

uint64_t sub_1C1E06F24()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C1E0701C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1E0, &unk_1C1E585B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v36 - v2;
  v4 = sub_1C1E544EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E5448C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C1DC1870(v3, &qword_1EBF1D1E0, &unk_1C1E585B0);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = sub_1C1E544CC();
  v12 = v11;
  sub_1C1E544DC();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v16 = sub_1C1E51ECC();
  v17 = [v15 initWithData:v16 scale:v14];

  sub_1C1E05078(v10, v12);
  if (!v17)
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v18 = sub_1C1E544BC();
  if (v19 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v20 = v18;
  v21 = v19;
  sub_1C1E07B0C(v18, v19);
  sub_1C1E544DC();
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v25 = sub_1C1E51ECC();
  v26 = [v24 initWithData:v25 scale:v23];

  sub_1C1E07B60(v20, v21);
  if (!v26)
  {
    sub_1C1E07B60(v20, v21);
LABEL_13:
    v33 = [v17 imageWithRenderingMode_];
    v34 = [objc_opt_self() whiteColor];
    v35 = [v33 imageWithTintColor_];

    (*(v5 + 8))(v8, v4);
    return v35;
  }

  v27 = [v17 imageAsset];
  if (!v27)
  {
    sub_1C1E07B60(v20, v21);
    goto LABEL_12;
  }

  v36 = &v36;
  v37 = v27;
  MEMORY[0x1EEE9AC00](v27);
  *(&v36 - 2) = v8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C1E07B74;
  *(v28 + 24) = &v36 - 4;
  aBlock[4] = sub_1C1E07BCC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1E054A4;
  aBlock[3] = &block_descriptor_0;
  v29 = _Block_copy(aBlock);
  v30 = objc_opt_self();

  v31 = [v30 traitCollectionWithTraits_];
  _Block_release(v29);

  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    v32 = v37;
    [v37 registerImage:v26 withTraitCollection:v31];
    sub_1C1E07B60(v20, v21);

LABEL_12:
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1C1E074FC()
{
  sub_1C1E07590();
  if (v0 <= 0x3F)
  {
    sub_1C1E075E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1E07590()
{
  if (!qword_1EDE750A8)
  {
    sub_1C1E51EBC();
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE750A8);
    }
  }
}

void sub_1C1E075E8()
{
  if (!qword_1EBF1D1D0)
  {
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1D1D0);
    }
  }
}

uint64_t sub_1C1E07638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1DE184C;

  return sub_1C1E06340(v2, v3);
}

uint64_t sub_1C1E076E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C1DE184C;

  return sub_1C1E06960(v2, v3, v5);
}

uint64_t sub_1C1E077A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1DE184C;

  return sub_1C1E06A48(a1, v4, v5, v7);
}

uint64_t sub_1C1E07870(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1DE184C;

  return sub_1C1E06E2C(a1, v5);
}

uint64_t sub_1C1E07928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1DE1518;

  return sub_1C1E06E2C(a1, v5);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1E07A20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1DE1518;

  return sub_1C1E05AB4(v2, v3);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1E07B0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C1E07B60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1E05078(a1, a2);
  }

  return a1;
}

id sub_1C1E07B74(void *a1)
{
  v3 = *(v1 + 16);
  sub_1C1E544DC();
  [a1 setDisplayScale_];

  return [a1 setUserInterfaceStyle_];
}

uint64_t sub_1C1E07BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1E07C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C1E07C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C1E07CC8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E545BC();
  CTFontCreateWithNameAndOptions(v2, v1[2], 0, 0x20000uLL);

  sub_1C1E530DC();
  sub_1C1E5308C();
  sub_1C1E530BC();

  sub_1C1E5309C();

  if (v1[3])
  {
    v3 = *v1;
    *(&v57 + 1) = v1[1];
    sub_1C1DC733C();

    v4 = sub_1C1E5316C();
    v6 = v5;
    v8 = v7;
    *&v57 = sub_1C1E5355C();
    v9 = sub_1C1E530FC();
    v11 = v10;
    v13 = v12;
    sub_1C1DECF2C(v4, v6, v8 & 1);

    v14 = sub_1C1E5311C();
    v16 = v15;
    LOBYTE(v4) = v17;

    sub_1C1DECF2C(v9, v11, v13 & 1);

    v18 = v4 & 1;
    sub_1C1E082A0(v14, v16, v4 & 1);

    sub_1C1E082A0(v14, v16, v4 & 1);

    sub_1C1E52CEC();
    v54 = v57;
    v55 = v58;
    v56 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D250, &qword_1C1E58650);
    sub_1C1E082B0();
    sub_1C1E52CEC();
  }

  else
  {
    v19 = *(v1 + 4);
    v62[0] = v19;
    if (!v19)
    {
      v40 = *(v1 + 1);
      *&v57 = *v1;
      *(&v57 + 1) = v40;
      sub_1C1DC733C();

      v41 = sub_1C1E5316C();
      v43 = v42;
      v45 = v44;

      v46 = sub_1C1E5311C();
      v48 = v47;
      v50 = v49;
      v52 = v51;

      sub_1C1DECF2C(v41, v43, v45 & 1);

      *&v54 = v46;
      *(&v54 + 1) = v48;
      *&v55 = v50 & 1;
      *(&v55 + 1) = v52;
      v56 = 256;
      sub_1C1E082A0(v46, v48, v50 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D250, &qword_1C1E58650);
      sub_1C1E082B0();
      sub_1C1E52CEC();

      sub_1C1DECF2C(v46, v48, v50 & 1);
      goto LABEL_6;
    }

    v61 = *v1;
    v57 = *v1;
    sub_1C1E0832C(v62, &v54);
    sub_1C1E0839C(&v61, &v54);
    sub_1C1DC733C();
    v20 = sub_1C1E5316C();
    v22 = v21;
    v24 = v23;
    *&v57 = v19;
    v25 = sub_1C1E530FC();
    v27 = v26;
    v29 = v28;
    sub_1C1DECF2C(v20, v22, v24 & 1);

    v14 = sub_1C1E5311C();
    v16 = v30;
    LOBYTE(v20) = v31;
    v33 = v32;

    sub_1C1DECF2C(v25, v27, v29 & 1);

    v18 = v20 & 1;
    *&v54 = v14;
    *(&v54 + 1) = v16;
    *&v55 = v20 & 1;
    *(&v55 + 1) = v33;
    LOBYTE(v56) = 1;
    sub_1C1E082A0(v14, v16, v20 & 1);

    sub_1C1E082A0(v14, v16, v20 & 1);

    sub_1C1E52CEC();
    v34 = v57;
    v35 = v58;
    v54 = v57;
    v55 = v58;
    v56 = v59;
    sub_1C1E083F8(v57, *(&v57 + 1), v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D250, &qword_1C1E58650);
    sub_1C1E082B0();
    sub_1C1E52CEC();
    sub_1C1E08434(v62);
    sub_1C1E0849C(v34, *(&v34 + 1), v35);
  }

  sub_1C1DECF2C(v14, v16, v18);

  sub_1C1DECF2C(v14, v16, v18);
LABEL_6:

  result = *&v57;
  v37 = v58;
  v38 = v59;
  v39 = v60;
  *a1 = v57;
  *(a1 + 16) = v37;
  *(a1 + 32) = v38;
  *(a1 + 33) = v39;
  return result;
}

uint64_t sub_1C1E082A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C1E082B0()
{
  result = qword_1EBF1D258;
  if (!qword_1EBF1D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D250, &qword_1C1E58650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D258);
  }

  return result;
}

uint64_t sub_1C1E0832C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D260, &qword_1C1E58658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E083F8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C1E082A0(a1, a2, a3 & 1);
}

uint64_t sub_1C1E08434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D260, &qword_1C1E58658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1E0849C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C1DECF2C(a1, a2, a3 & 1);
}

unint64_t sub_1C1E084D8()
{
  result = qword_1EBF1D268;
  if (!qword_1EBF1D268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D270, &qword_1C1E58660);
    sub_1C1E082B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D268);
  }

  return result;
}

uint64_t sub_1C1E08564()
{
  v0 = sub_1C1E5216C();
  __swift_allocate_value_buffer(v0, qword_1EBF20D60);
  __swift_project_value_buffer(v0, qword_1EBF20D60);
  sub_1C1E5215C();
  return sub_1C1E5214C();
}

uint64_t sub_1C1E085BC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return sub_1C1E263C0(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v3 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1C1E54D2C();
  }
}

uint64_t sub_1C1E08614@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_1C1E08620(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1C1E09880(v5, v7);
}

void sub_1C1E0867C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, void *a7, char **a8)
{
  v72 = a6;
  v73 = a8;
  v10 = sub_1C1E51F9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1E51E2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v67 = a7;
    v68 = v14;
    v69 = v11;
    v70 = v10;
    v20 = a1;
    v21 = sub_1C1E545BC();
    v22 = [v20 rangeAtIndex_];
    v24 = [v21 substringWithRange_];

    v25 = sub_1C1E545FC();
    v27 = v26;

    v74 = v25;
    v75 = v27;
    sub_1C1E51E0C();
    sub_1C1DC733C();
    v28 = sub_1C1E549FC();
    v30 = v29;
    (*(v16 + 8))(v19, v15);

    v31 = sub_1C1E545BC();
    v71 = v20;
    v32 = [v20 rangeAtIndex_];
    v34 = [v31 substringWithRange_];

    v35 = sub_1C1E545FC();
    v65 = v36;
    v66 = v35;

    v37 = v72;
    if (*v72)
    {
      goto LABEL_6;
    }

    v38 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v38 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
LABEL_6:
      v39 = 0;
    }

    else
    {

      v39 = sub_1C1E5363C();
      v30 = 0xE100000000000000;
      v28 = 43;
    }

    v41 = v69;
    v40 = v70;
    v42 = sub_1C1E545BC();
    v43 = sub_1C1E545BC();
    v44 = [v43 length];

    v45 = [v67 firstMatchInString:v42 options:0 range:{0, v44}];
    if (v45)
    {
      v46 = sub_1C1E545BC();
      v47 = [v45 rangeAtIndex_];
      v49 = [v46 substringWithRange_];

      v28 = sub_1C1E545FC();
      v51 = v50;

      v30 = v51;
    }

    v52 = v68;
    sub_1C1E51F8C();
    v53 = sub_1C1E51F6C();
    v55 = v54;
    (*(v41 + 8))(v52, v40);
    v56 = v73;
    v57 = *v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v56 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1C1E051D0(0, *(v57 + 2) + 1, 1, v57);
      *v56 = v57;
    }

    v60 = *(v57 + 2);
    v59 = *(v57 + 3);
    if (v60 >= v59 >> 1)
    {
      *v56 = sub_1C1E051D0((v59 > 1), v60 + 1, 1, v57);
    }

    v61 = *v56;
    *(v61 + 2) = v60 + 1;
    v62 = &v61[56 * v60];
    *(v62 + 4) = v53;
    *(v62 + 5) = v55;
    v63 = v65;
    *(v62 + 6) = v66;
    *(v62 + 7) = v63;
    *(v62 + 8) = v28;
    *(v62 + 9) = v30;
    *(v62 + 10) = v39;
    *v37 = 0;
  }
}

void sub_1C1E08AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t sub_1C1E08B64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D278, &qword_1C1E587D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v50 - v7;
  v8 = sub_1C1E5216C();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D280, &qword_1C1E587D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_1C1E521EC();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D288, &unk_1C1E587E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  v23 = sub_1C1E5223C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v50 - v30;
  v59[0] = 36;
  v59[1] = 0xE100000000000000;
  v52 = a1;
  v57 = a2;
  MEMORY[0x1C69102A0](a1, a2, v29);
  MEMORY[0x1C69102A0](36, 0xE100000000000000);
  sub_1C1E5222C();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {

    sub_1C1DC1870(v22, &qword_1EBF1D288, &unk_1C1E587E0);
    v32 = v58;
  }

  else
  {
    (*(v24 + 32))(v31, v22, v23);
    (*(v24 + 16))(v27, v31, v23);
    if (qword_1EBF1C150 != -1)
    {
      swift_once();
    }

    v33 = v54;
    v34 = __swift_project_value_buffer(v54, qword_1EBF20D60);
    (*(v53 + 16))(v11, v34, v33);
    sub_1C1E521FC();
    v36 = v55;
    v35 = v56;
    v37 = (*(v55 + 48))(v15, 1, v56);
    v32 = v58;
    if (v37 != 1)
    {
      v47 = v50;
      (*(v36 + 32))(v50, v15, v35);
      v48 = sub_1C1E5218C();
      v49 = v51;
      (*(*(v48 - 8) + 56))(v51, 1, 1, v48);
      sub_1C1E521DC();
      sub_1C1DC1870(v49, &qword_1EBF1D278, &qword_1C1E587D0);
      (*(v36 + 8))(v47, v35);
      (*(v24 + 8))(v31, v23);
      v44 = 0;
      goto LABEL_12;
    }

    (*(v24 + 8))(v31, v23);
    sub_1C1DC1870(v15, &qword_1EBF1D280, &qword_1C1E587D8);
  }

  v38 = v57;
  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v39 = sub_1C1E522AC();
  __swift_project_value_buffer(v39, qword_1EBF20D40);

  v40 = sub_1C1E5228C();
  v41 = sub_1C1E548FC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v59[0] = v43;
    *v42 = 141558275;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    *(v42 + 14) = sub_1C1E0934C(v52, v38, v59);
    _os_log_impl(&dword_1C1DBF000, v40, v41, "Custom LaTeX failed to generated math presentation for expression: %{private,mask.hash}s", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1C6911150](v43, -1, -1);
    MEMORY[0x1C6911150](v42, -1, -1);
  }

  v44 = 1;
LABEL_12:
  v45 = sub_1C1E5226C();
  return (*(*(v45 - 8) + 56))(v32, v44, 1, v45);
}

id sub_1C1E09270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C1E545BC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1C1E51E9C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1C1E0934C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C1E09418(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C1DFF8A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C1E09418(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C1E09524(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C1E54B9C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C1E09524(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C1E09570(a1, a2);
  sub_1C1E096A0(&unk_1F4186FB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C1E09570(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C1DFE5D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C1E54B9C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C1E546FC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C1DFE5D4(v10, 0);
        result = sub_1C1E54B3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C1E096A0(uint64_t result)
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

  result = sub_1C1E0978C(result, v12, 1, v3);
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

char *sub_1C1E0978C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0A8, &qword_1C1E58160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL sub_1C1E09880(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1C1E54D2C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_1C1E54D2C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  result = (v6 | v7) == 0;
  if (v6)
  {
    if (v7)
    {

      v9 = sub_1C1E5354C();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t sub_1C1E09930(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v3 = sub_1C1E09270(0xD000000000000033, 0x80000001C1E5C050, 0);
  v4 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v5 = sub_1C1E09270(0xD000000000000016, 0x80000001C1E5C0B0, 0);
  v6 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v7 = sub_1C1E09270(0xD000000000000019, 0x80000001C1E5C0D0, 0);
  v8 = sub_1C1E545BC();
  v9 = sub_1C1E545BC();
  v10 = [v9 length];

  v11 = [v3 firstMatchInString:v8 options:0 range:{0, v10}];
  if (!v11)
  {

    v28 = sub_1C1E545BC();
    v29 = sub_1C1E545BC();
    v30 = [v28 rangeOfString:v29 options:1024];

    if (v30 == sub_1C1E51DEC() || sub_1C1E5469C() <= 1)
    {
    }

    else
    {
      v31 = sub_1C1E545BC();
      v32 = [v31 substringToIndex_];

      a1 = sub_1C1E545FC();
    }

    return a1;
  }

  v34 = v5;
  v37 = MEMORY[0x1E69E7CC0];
  v12 = sub_1C1E545BC();
  v13 = [v11 rangeAtIndex_];
  v15 = [v12 substringWithRange_];

  v16 = v15;
  v17 = v15;
  if (!v15)
  {
    sub_1C1E545FC();
    v17 = sub_1C1E545BC();

    sub_1C1E545FC();
    v16 = sub_1C1E545BC();
  }

  v18 = sub_1C1E545FC();
  v20 = v19;
  v36 = 1;
  v21 = v15;
  v22 = [v16 length];

  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v20;
  v23[4] = &v36;
  v23[5] = v7;
  v23[6] = &v37;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C1E0A088;
  *(v24 + 24) = v23;
  aBlock[4] = sub_1C1E0A098;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1E08AF0;
  aBlock[3] = &block_descriptor_1;
  v25 = _Block_copy(aBlock);
  v26 = v7;

  [v34 enumerateMatchesInString:v17 options:0 range:0 usingBlock:{v22, v25}];

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a1 = v37;

    return a1;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C1E09E10()
{

  v0 = 4;
  v1 = &unk_1F4187008;
  do
  {
    v2 = *(v1 - 1);
    v3 = *v1;

    MEMORY[0x1C69102A0](v2, v3);
    sub_1C1DC733C();
    sub_1C1E54A1C();

    v1 += 2;
    --v0;
  }

  while (v0);
  swift_arrayDestroy();
  sub_1C1E54A1C();

  sub_1C1E54A1C();

  v4 = sub_1C1E54A1C();
  v6 = v5;

  MEMORY[0x1C69102A0](v4, v6);

  MEMORY[0x1C69102A0](125, 0xE100000000000000);
  return 0x7B747865745CLL;
}

uint64_t sub_1C1E0A098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C1E0A0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C1E0A13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}