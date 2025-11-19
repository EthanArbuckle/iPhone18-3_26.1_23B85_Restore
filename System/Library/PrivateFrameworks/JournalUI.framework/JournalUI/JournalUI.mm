uint64_t static RestorableController.getRestorableState(from:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_255780F04();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  if (!a1)
  {
    goto LABEL_13;
  }

  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  v14 = sub_255780D94();

  v29 = v27;
  v30 = a3;

  sub_255780F44();
  if (!*(v14 + 16) || (v15 = sub_255777BEC(v31), (v16 & 1) == 0))
  {

    sub_255777D54(v31);
LABEL_13:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_14;
  }

  sub_255777E08(*(v14 + 56) + 32 * v15, &v32);
  sub_255777D54(v31);

  if (!*(&v33 + 1))
  {
LABEL_14:
    sub_255777DA8(&v32, &qword_27F7D25E8, &qword_255781AE0);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v28, 1, 1, AssociatedTypeWitness);
  }

  sub_255777E64(&v32, v34);
  sub_255777E08(v34, v31);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static RestorableState.decode(from:)(v31, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  sub_255777DA8(v31, &qword_27F7D25E8, &qword_255781AE0);
  v18 = *(AssociatedTypeWitness - 8);
  if ((*(v18 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v11, v7);
    if (qword_27F7D2410 != -1)
    {
      swift_once();
    }

    v19 = sub_255780C64();
    __swift_project_value_buffer(v19, qword_27F7D2618);

    v20 = sub_255780C44();
    v21 = sub_255780EE4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_25577A97C(v27, a3, v31);
      _os_log_impl(&dword_255776000, v20, v21, "getRestorableState[%s]: Failed to decode state.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x259C3FED0](v23, -1, -1);
      MEMORY[0x259C3FED0](v22, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v34);
    return (*(v18 + 56))(v28, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
    v25 = v28;
    (*(v18 + 32))(v28, v11, AssociatedTypeWitness);
    return (*(v18 + 56))(v25, 0, 1, AssociatedTypeWitness);
  }
}

unint64_t sub_255777BEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_255780F24();

  return sub_255777C30(a1, v5);
}

unint64_t sub_255777C30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_255777CF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C3FA30](v9, a1);
      sub_255777D54(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_255777DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255777E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_255777E64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255777E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D25E8, &qword_255781AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static RestorableState.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_255777E74(a1, v15);
  if (!v16)
  {
    sub_255779F40(v15);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v12 = 1;
    return (*(*(a2 - 8) + 56))(a4, v12, 1, a2);
  }

  v7 = sub_255780B44();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_255780B34();
  v10 = *(a3 + 8);
  sub_255780B24();
  sub_255778020(v13, v14);

  v12 = 0;
  return (*(*(a2 - 8) + 56))(a4, v12, 1, a2);
}

uint64_t sub_255778020(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t RestorableController.getRestorableStateFromUserActivity()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 userActivity];
  v8 = (*(a2 + 24))(a1, a2);
  static RestorableController.getRestorableState(from:key:)(v7, v8, v9, a3);
}

uint64_t RestorableController.addRestorableState(_:to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(a3, a4);
  static RestorableController.addRestorableState(_:to:key:)(a1, a2, v6, v7);
}

void static RestorableController.addRestorableState(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = RestorableState.encode()(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v10 >> 60 == 15)
  {
    if (qword_27F7D2410 != -1)
    {
      swift_once();
    }

    v11 = sub_255780C64();
    __swift_project_value_buffer(v11, qword_27F7D2618);

    oslog = sub_255780C44();
    v12 = sub_255780EE4();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_25577A97C(a3, a4, v20);
      _os_log_impl(&dword_255776000, oslog, v12, "addRestorableState[%s]: Failed to encode state.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x259C3FED0](v14, -1, -1);
      MEMORY[0x259C3FED0](v13, -1, -1);
    }

    else
    {
    }
  }

  else if (a2)
  {
    v15 = v9;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2630, &qword_255781AE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255781AC0;
    v20[0] = a3;
    v20[1] = a4;

    sub_255780F44();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v15;
    *(inited + 80) = v16;
    sub_25577870C(v15, v16);
    sub_2557785D0(inited);
    swift_setDeallocating();
    sub_255777DA8(inited + 32, &qword_27F7D2638, &unk_255781AF0);
    v18 = sub_255780D84();

    [a2 addUserInfoEntriesFromDictionary_];
    sub_255778518(v15, v16);
  }

  else
  {

    sub_255778518(v9, v10);
  }
}

uint64_t sub_255778518(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255778020(a1, a2);
  }

  return a1;
}

uint64_t RestorableState.encode()(uint64_t a1, uint64_t a2)
{
  v3 = sub_255780B74();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_255780B64();
  v6 = *(a2 + 16);
  v7 = sub_255780B54();

  return v7;
}

unint64_t sub_2557785D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2640, &qword_255781B38);
    v3 = sub_255780F94();
    v4 = a1 + 32;

    while (1)
    {
      sub_25577B2D4(v4, v13, &qword_27F7D2638, &unk_255781AF0);
      result = sub_255777BEC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_255777E64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25577870C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255778720(a1, a2);
  }

  return a1;
}

uint64_t sub_255778720(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_255778774@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_255780DD4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2557787A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2557787D8()
{
  MEMORY[0x259C3FF30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255778810()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D25E0, &qword_255781A98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2557788A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2557788EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25577899C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2557789EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

UIVisualEffectView __swiftcall UIView.applyBlurEffectToBackground(style:)(UIBlurEffectStyle style)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [v1 bounds];
  [v5 setFrame_];
  [v5 setAutoresizingMask_];
  [v5 setUserInteractionEnabled_];

  [v1 insertSubview:v5 atIndex:0];
  return v5;
}

void *UIView.viewControllerForPresenting.getter()
{
  sub_255778C0C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v1 presentedViewController];
  if (v2)
  {
    v3 = v1;
    while (1)
    {
      v4 = v2;
      if ([v2 isBeingDismissed])
      {
        break;
      }

      v2 = [v4 presentedViewController];
      v3 = v4;
      if (!v2)
      {
        v3 = v4;
        goto LABEL_10;
      }
    }

    v1 = v4;
  }

  else
  {
    v3 = v1;
  }

LABEL_10:

  return v3;
}

void sub_255778C0C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v3 = v0;
  v4 = v0;
  if (v0)
  {
    do
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        v7 = [v1 nextResponder];
        if (!v7)
        {
          break;
        }

        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v8 = [v7 nextResponder];
          v7 = v8;
          if (!v8)
          {
            goto LABEL_14;
          }
        }

        v1 = v7;
      }

      MEMORY[0x259C3F930]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_255780E64();
      }

      sub_255780E74();
      v2 = v11;
      if (!v1)
      {
        break;
      }

      v5 = [v1 nextResponder];
      v6 = v5;

      v1 = v5;
    }

    while (v5);
  }

LABEL_14:

  if (v2 >> 62)
  {
    if (!sub_255780F84())
    {
      goto LABEL_20;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C3FA60](0, v2);
    goto LABEL_20;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v2 + 32);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t UIView.next<A>(of:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = sub_255778F60;
  *(v1 + 24) = 0;
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2588, &qword_255781850);
  sub_255779514();
  sub_255780E24();

  sub_255780E84();
  swift_getWitnessTable();
  sub_255780ED4();
}

id sub_255778F60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 nextResponder];
  *a2 = result;
  return result;
}

uint64_t sub_255778F9C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_255779780();
  v6 = v5;
  v7 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v7 ^ 1u, 1, a2);
}

uint64_t sub_255779048(uint64_t a1, id *a2)
{
  result = sub_255780DB4();
  *a2 = 0;
  return result;
}

uint64_t sub_2557790C0(uint64_t a1, id *a2)
{
  v3 = sub_255780DC4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_255779140@<X0>(uint64_t *a1@<X8>)
{
  sub_255780DD4();
  v2 = sub_255780DA4();

  *a1 = v2;
  return result;
}

uint64_t sub_255779184()
{
  v1 = *v0;
  v2 = sub_255780DD4();
  v3 = MEMORY[0x259C3F900](v2);

  return v3;
}

uint64_t sub_2557791C0()
{
  v1 = *v0;
  sub_255780DD4();
  sub_255780DE4();
}

uint64_t sub_255779214()
{
  v1 = *v0;
  sub_255780DD4();
  sub_255780FE4();
  sub_255780DE4();
  v2 = sub_255780FF4();

  return v2;
}

uint64_t sub_255779288(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_255780DD4();
  v6 = v5;
  if (v4 == sub_255780DD4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255780FD4();
  }

  return v9 & 1;
}

uint64_t sub_255779310@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255780DA4();

  *a2 = v5;
  return result;
}

uint64_t sub_255779358(uint64_t a1)
{
  v2 = sub_255779708(&qword_27F7D25C8);
  v3 = sub_255779708(&qword_27F7D25D0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_2557793F0(uint64_t a1, void (*a2)(id *__return_ptr, id *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
    v3 = v2;
  }

  else if (v2)
  {
    v9 = *a1;
    v6 = v2;
    a2(&v10, &v9);

    v2 = v10;
    v7 = v10;

    *a1 = v2;
  }

  return v2;
}

id sub_255779484@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  result = sub_2557793F0(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_255779514()
{
  result = qword_27F7D2590;
  if (!qword_27F7D2590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D2588, &qword_255781850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2590);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2557795F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255779618(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_255779654(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_255779708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255779780()
{
  result = qword_27F7D25D8;
  if (!qword_27F7D25D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D25D8);
  }

  return result;
}

id UIViewController.forPresenting.getter()
{
  v1 = v0;
  v2 = [v1 presentedViewController];
  if (v2)
  {
    while (1)
    {
      v3 = v2;
      if ([v2 isBeingDismissed])
      {
        break;
      }

      v2 = [v3 presentedViewController];
      v1 = v3;
      if (!v2)
      {
        return v3;
      }
    }
  }

  return v1;
}

uint64_t UIViewController.dismissAsync(animated:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  *(v2 + 24) = sub_255780EC4();
  *(v2 + 32) = sub_255780EB4();
  v4 = sub_255780E94();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_25577995C, v4, v3);
}

uint64_t sub_25577995C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 88);
  *(v0 + 56) = sub_255780EB4();
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  swift_unknownObjectWeakInit();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_255779A98;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_255779A98()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v9 = *v0;

  v6 = *(v1 + 48);
  v7 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_255779C1C, v7, v6);
}

uint64_t sub_255779C1C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_255779C7C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D25E0, &qword_255781A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &aBlock[-1] - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v6 + 16))(v9, a1, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v9, v5);
    aBlock[4] = sub_255779E78;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_255779EE4;
    aBlock[3] = &block_descriptor;
    v14 = _Block_copy(aBlock);

    [v11 dismissViewControllerAnimated:a3 & 1 completion:v14];
    _Block_release(v14);
  }

  else
  {
    sub_255780EA4();
  }
}

uint64_t sub_255779E78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D25E0, &qword_255781A98) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_255780EA4();
}

uint64_t sub_255779EE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255779F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D25E8, &qword_255781AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall NSMutableAttributedString.ensureListIntegrity(range:)(__C::_NSRange_optional range)
{
  length = range.value.length;
  location = range.value.location;
  v12 = MEMORY[0x277D84F90];
  if (range.is_nil)
  {
    v4 = [v1 length];
    if (v4 < 0)
    {
      goto LABEL_7;
    }

    length = v4;
    location = 0;
  }

  v5 = *MEMORY[0x277D74118];
  v6 = swift_allocObject();
  *(v6 + 16) = &v12;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25577A814;
  *(v7 + 24) = v6;
  aBlock[4] = sub_25577A81C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25577A768;
  aBlock[3] = &block_descriptor_0;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 enumerateAttribute:v5 inRange:location options:length usingBlock:{0, v8}];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {

    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

void sub_25577A168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  sub_255777E74(a1, v44);
  if (!v45)
  {
    sub_255777DA8(v44, &qword_27F7D25E8, &qword_255781AE0);
    return;
  }

  v10 = sub_25577A85C(0, &qword_27F7D25F0, 0x277D74248);
  if (swift_dynamicCast())
  {
    [v43 mutableCopy];
    sub_255780F14();
    swift_unknownObjectRelease();
    sub_25577A85C(0, &qword_27F7D25F8, 0x277D74240);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v11 = [v43 textLists];
    sub_25577A85C(0, &qword_27F7D2600, 0x277D742B8);
    v12 = sub_255780E54();

    if (v12 >> 62)
    {
      v13 = sub_255780F84();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v13)
    {

      v26 = *a5;
      *a5 = MEMORY[0x277D84F90];
LABEL_44:

      return;
    }

    v14 = *a5;
    if (*a5 >> 62)
    {
      if (v14 < 0)
      {
        v35 = *a5;
      }

      if (!sub_255780F84())
      {
        goto LABEL_43;
      }
    }

    else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v15 = *a5;
    if (*a5 >> 62)
    {
      if (v15 < 0)
      {
        v36 = *a5;
      }

      if (!sub_255780F84())
      {
        goto LABEL_43;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      v37 = [v43 textLists];
      v38 = sub_255780E54();

      v39 = *a5;
      *a5 = v38;
      goto LABEL_44;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x259C3FA60](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_47;
      }

      v16 = *(v15 + 32);
    }

    v17 = [v43 textLists];
    v15 = sub_255780E54();

    if (v15 >> 62)
    {
      if (sub_255780F84())
      {
LABEL_16:
        v42 = v16;
        if ((v15 & 0xC000000000000001) == 0)
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v18 = *(v15 + 32);
          goto LABEL_19;
        }

LABEL_47:
        v18 = MEMORY[0x259C3FA60](0, v15);
LABEL_19:
        v19 = v18;

        v20 = [v42 markerFormat];
        v41 = v19;
        v21 = [v19 markerFormat];
        v40 = v20;
        v22 = sub_255780DD4();
        v24 = v23;
        if (v22 == sub_255780DD4() && v24 == v25)
        {

LABEL_26:
          v28 = *a5;

          v29 = sub_255780E44();

          [v43 setTextLists_];

          [v43 copy];
          sub_255780F14();
          swift_unknownObjectRelease();
          if (swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2608, &qword_255781AD0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_255781AC0;
            v31 = *MEMORY[0x277D74118];
            *(inited + 32) = *MEMORY[0x277D74118];
            *(inited + 64) = v10;
            *(inited + 40) = v43;
            v32 = v31;
            v33 = v43;
            sub_25577B0F4(inited);
            swift_setDeallocating();
            sub_255777DA8(inited + 32, &qword_27F7D2610, &unk_255781B50);
            type metadata accessor for Key(0);
            sub_25577A8A4();
            v34 = sub_255780D84();

            [a6 addAttributes:v34 range:{a2, a3}];
          }

          return;
        }

        v27 = sub_255780FD4();

        if (v27)
        {
          goto LABEL_26;
        }

        v16 = v41;
        goto LABEL_42;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_42:

    goto LABEL_43;
  }
}

uint64_t sub_25577A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_255777E64(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_255777DA8(v14, &qword_27F7D25E8, &qword_255781AE0);
}

uint64_t sub_25577A81C()
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

uint64_t sub_25577A85C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25577A8A4()
{
  result = qword_27F7D25C8;
  if (!qword_27F7D25C8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D25C8);
  }

  return result;
}

uint64_t sub_25577A8FC()
{
  v0 = sub_255780C64();
  __swift_allocate_value_buffer(v0, qword_27F7D2618);
  __swift_project_value_buffer(v0, qword_27F7D2618);
  return sub_255780C54();
}

uint64_t sub_25577A97C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25577AA48(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_255777E08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25577AA48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25577AB54(a5, a6);
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
    result = sub_255780F74();
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

uint64_t sub_25577AB54(uint64_t a1, unint64_t a2)
{
  v4 = sub_25577ABA0(a1, a2);
  sub_25577ACD0(&unk_28678F648);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25577ABA0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25577ADBC(v5, 0);
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

  result = sub_255780F74();
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
        v10 = sub_255780DF4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25577ADBC(v10, 0);
        result = sub_255780F54();
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

uint64_t sub_25577ACD0(uint64_t result)
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

  result = sub_25577AE30(result, v12, 1, v3);
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

void *sub_25577ADBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2648, &qword_255781B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25577AE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2648, &qword_255781B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_25577AF24(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_255780DD4();
  sub_255780FE4();
  sub_255780DE4();
  v4 = sub_255780FF4();

  return sub_25577AFF0(a1, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25577AFF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_255780DD4();
      v9 = v8;
      if (v7 == sub_255780DD4() && v9 == v10)
      {
        break;
      }

      v12 = sub_255780FD4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25577B0F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2650, &qword_255781B48);
    v3 = sub_255780F94();
    v4 = a1 + 32;

    while (1)
    {
      sub_25577B2D4(v4, &v11, &qword_27F7D2610, &unk_255781B50);
      v5 = v11;
      result = sub_25577AF24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_255777E64(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
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

uint64_t sub_25577B2D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void MergeableAssetTextAttachment.init(assetTextAttachment:)(void *a1, uint64_t a2)
{
  v4 = sub_255780BC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = sub_255780B94();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_255780B84();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  v17 = (*(a2 + 16))(ObjectType, a2);
  MEMORY[0x259C3F6A0](v17);
  v18 = (*(a2 + 24))(ObjectType, a2);
  if ((v19 & 1) != 0 || v18 > 2)
  {
    v20 = MEMORY[0x277D22A98];
  }

  else
  {
    v20 = qword_2797F3D38[v18];
  }

  (*(v5 + 104))(v9, *v20, v4);
  (*(v5 + 32))(v11, v9, v4);
  sub_255780BD4();
}

void MergeableFollowUpPromptAttachment.init(followUpPromptAttachment:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_255780BE4();
}

uint64_t static MergeableColor.normalized(fromFixed:compatibleWith:)@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2658, &qword_255781BC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_255780C14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 userInterfaceStyle];
  v13 = sub_255780D74();
  sub_25577B900(v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25577B9D0(v7);
    v14 = sub_255780BB4();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v12, v7, v8);
    v16(a2, v12, v8);
    v17 = *MEMORY[0x277D22A90];
    v18 = sub_255780BB4();
    v19 = *(v18 - 8);
    (*(v19 + 104))(a2, v17, v18);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }
}

uint64_t sub_25577B900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = 0;
  v7 = 0;
  v8 = 0;
  [a1 getRed:v10 green:&v9 blue:&v8 alpha:&v7];
  sub_255780BF4();

  v4 = sub_255780C14();
  result = (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25577B9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2658, &qword_255781BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SRGBColor.adaptivePlatformColor.getter()
{
  v0 = sub_255780C04();
  if (v0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
    v2 = objc_allocWithZone(MEMORY[0x277D75348]);
    v5[4] = sub_25577BBC8;
    v5[5] = v1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_25577BBD0;
    v5[3] = &block_descriptor_1;
    v3 = _Block_copy(v5);
    v0 = [v2 initWithDynamicProvider_];
    _Block_release(v3);
  }

  return v0;
}

id sub_25577BB24(void *a1, uint64_t a2)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
    v4 = sub_255780D74();

    return v4;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v6 initWithCGColor_];
  }
}

id sub_25577BBD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static ImageResource.wingsBackground(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
    case 1:
      if (qword_27F7D2420 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2670;
      break;
    case 2:
      if (qword_27F7D2428 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2688;
      break;
    case 3:
      if (qword_27F7D2430 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D26A0;
      break;
    case 4:
      if (qword_27F7D2438 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D26B8;
      break;
    case 5:
      if (qword_27F7D2440 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D26D0;
      break;
    case 6:
      if (qword_27F7D2448 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D26E8;
      break;
    case 7:
      if (qword_27F7D2450 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2700;
      break;
    case 8:
      if (qword_27F7D2458 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2718;
      break;
    case 9:
      if (qword_27F7D2460 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2730;
      break;
    case 10:
      if (qword_27F7D2468 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2748;
      break;
    case 11:
      if (qword_27F7D2470 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2760;
      break;
    case 12:
      if (qword_27F7D2478 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2778;
      break;
    case 13:
      if (qword_27F7D2480 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2790;
      break;
    case 14:
      if (qword_27F7D2488 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D27A8;
      break;
    case 15:
      if (qword_27F7D2490 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D27C0;
      break;
    case 16:
      if (qword_27F7D2498 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D27D8;
      break;
    case 17:
      if (qword_27F7D24A0 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D27F0;
      break;
    case 18:
      if (qword_27F7D24A8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2808;
      break;
    case 19:
      if (qword_27F7D24B0 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2820;
      break;
    case 20:
      if (qword_27F7D24B8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2838;
      break;
    case 21:
      if (qword_27F7D24C0 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2850;
      break;
    case 22:
      if (qword_27F7D24C8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2868;
      break;
    case 23:
      if (qword_27F7D24D0 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2880;
      break;
    case 24:
      if (qword_27F7D24D8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2898;
      break;
    case 25:
      if (qword_27F7D24E0 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D28B0;
      break;
    case 26:
      if (qword_27F7D24E8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D28C8;
      break;
    case 27:
      if (qword_27F7D24F0 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D28E0;
      break;
    case 28:
      if (qword_27F7D24F8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D28F8;
      break;
    case 29:
      if (qword_27F7D2500 != -1)
      {
        swift_once();
      }

      v3 = qword_27F7D2910;
      break;
    default:
      if ((a1 - 30) > 9)
      {
        if ((a1 - 40) > 9)
        {
          if ((a1 - 50) > 9)
          {
            if ((a1 - 60) > 9)
            {
              if ((a1 - 70) > 9)
              {
                if ((a1 - 80) > 9)
                {
                  if ((a1 - 90) > 9)
                  {
                    if (a1)
                    {
                      if (qword_27F7D2580 != -1)
                      {
                        swift_once();
                      }

                      v3 = qword_27F7D2A90;
                    }

                    else
                    {
                      if (qword_27F7D2578 != -1)
                      {
                        swift_once();
                      }

                      v3 = qword_27F7D2A78;
                    }
                  }

                  else if (a1)
                  {
                    if (qword_27F7D2570 != -1)
                    {
                      swift_once();
                    }

                    v3 = qword_27F7D2A60;
                  }

                  else
                  {
                    if (qword_27F7D2568 != -1)
                    {
                      swift_once();
                    }

                    v3 = qword_27F7D2A48;
                  }
                }

                else if (a1)
                {
                  if (qword_27F7D2560 != -1)
                  {
                    swift_once();
                  }

                  v3 = qword_27F7D2A30;
                }

                else
                {
                  if (qword_27F7D2558 != -1)
                  {
                    swift_once();
                  }

                  v3 = qword_27F7D2A18;
                }
              }

              else if (a1)
              {
                if (qword_27F7D2550 != -1)
                {
                  swift_once();
                }

                v3 = qword_27F7D2A00;
              }

              else
              {
                if (qword_27F7D2548 != -1)
                {
                  swift_once();
                }

                v3 = qword_27F7D29E8;
              }
            }

            else if (a1)
            {
              if (qword_27F7D2540 != -1)
              {
                swift_once();
              }

              v3 = qword_27F7D29D0;
            }

            else
            {
              if (qword_27F7D2538 != -1)
              {
                swift_once();
              }

              v3 = qword_27F7D29B8;
            }
          }

          else if (a1)
          {
            if (qword_27F7D2530 != -1)
            {
              swift_once();
            }

            v3 = qword_27F7D29A0;
          }

          else
          {
            if (qword_27F7D2528 != -1)
            {
              swift_once();
            }

            v3 = qword_27F7D2988;
          }
        }

        else if (a1)
        {
          if (qword_27F7D2520 != -1)
          {
            swift_once();
          }

          v3 = qword_27F7D2970;
        }

        else
        {
          if (qword_27F7D2518 != -1)
          {
            swift_once();
          }

          v3 = qword_27F7D2958;
        }
      }

      else if (a1)
      {
        if (qword_27F7D2510 != -1)
        {
          swift_once();
        }

        v3 = qword_27F7D2940;
      }

      else
      {
        if (qword_27F7D2508 != -1)
        {
          swift_once();
        }

        v3 = qword_27F7D2928;
      }

      break;
  }

  v4 = sub_255780C34();
  v5 = __swift_project_value_buffer(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t MergeableAnchorAlignment.init(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *MEMORY[0x277D22A98];
    v5 = sub_255780BC4();
    v6 = *(*(v5 - 8) + 104);
    v7 = v5;
    v8 = a3;
    v9 = v4;
  }

  else
  {
    v7 = sub_255780BC4();
    v6 = *(*(v7 - 8) + 104);
    if (a1 == 2)
    {
      v11 = MEMORY[0x277D22AB0];
    }

    else if (a1 == 1)
    {
      v11 = MEMORY[0x277D22AA0];
    }

    else if (a1)
    {
      v11 = MEMORY[0x277D22A98];
    }

    else
    {
      v11 = MEMORY[0x277D22AA8];
    }

    v9 = *v11;
    v8 = a3;
  }

  return v6(v8, v9, v7);
}

uint64_t CRExtensible<>.anchoredAttachmentPosition.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2660, &qword_255781BD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = sub_255780BC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_25577CCAC(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25577CD1C(v5);
    return 0;
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v11, v13, v6);
  v15 = (*(v7 + 88))(v11, v6);
  if (v15 == *MEMORY[0x277D22AA8])
  {
    v14 = 0;
LABEL_11:
    (*(v7 + 8))(v13, v6);
    return v14;
  }

  if (v15 == *MEMORY[0x277D22AB0])
  {
    v14 = 2;
    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x277D22AA0])
  {
    v14 = 1;
    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x277D22A98])
  {
    v14 = 0;
    goto LABEL_11;
  }

  result = sub_255780FC4();
  __break(1u);
  return result;
}

uint64_t MergeableAnchorAlignment.anchoredAttachmentPosition.getter()
{
  v1 = sub_255780BC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D22AA8])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D22AB0])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D22AA0])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D22A98])
  {
    return 0;
  }

  result = sub_255780FC4();
  __break(1u);
  return result;
}

uint64_t sub_25577CCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2660, &qword_255781BD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25577CD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2660, &qword_255781BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CRAttributedString<>.init(nsAttributedString:traitCollection:customAttributeProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v44 = a5;
  v11 = *(a5 + 8);
  v12 = sub_255780D54();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  if (!a1)
  {
    sub_255780D44();

    __swift_destroy_boxed_opaque_existential_0(a3);
    v36 = v13[4];
    v36(v19, v17, v12);
    v32 = 0;
    v36(a6, v19, v12);
    return sub_25577D124(v32);
  }

  v42 = a2;
  v20 = a1;
  sub_255780D64();
  v40 = v13[4];
  v40(v19, v17, v12);
  v21 = v13[2];
  v41 = v19;
  v21(v17, v19, v12);
  v22 = sub_255780C84();
  v23 = v13[1];
  v39 = v12;
  v23(v17, v12);
  v43 = v20;
  result = [v20 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v37 = a6;
    v38 = a3;
    sub_25577DCE4(a3, v46);
    v26 = swift_allocObject();
    v27 = v44;
    v26[2] = a4;
    v26[3] = v27;
    v28 = v42;
    v26[4] = v42;
    sub_25577DD48(v46, (v26 + 5));
    v29 = v22;
    v30 = v41;
    v26[10] = v41;
    v31 = swift_allocObject();
    v32 = sub_25577DD60;
    *(v31 + 16) = sub_25577DD60;
    *(v31 + 24) = v26;
    aBlock[4] = sub_25577DD94;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25577D348;
    aBlock[3] = &block_descriptor_2;
    v33 = _Block_copy(aBlock);
    v34 = v28;

    [v29 enumerateAttributesInRange:0 options:v25 usingBlock:{0, v33}];
    _Block_release(v33);
    v35 = v43;

    __swift_destroy_boxed_opaque_existential_0(v38);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      v40(v37, v30, v39);
      return sub_25577D124(v32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25577D124(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25577D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a3;
  v29 = a7;
  v25 = a5;
  v26 = a6;
  v27 = a2;
  v11 = *(a9 + 8);
  v12 = sub_255780C94();
  v13 = sub_255780F04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - v17;
  v19 = *(v12 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v24 - v21;
  (*(a9 + 16))(a1, v25, v26, a8, a9);
  (*(v19 + 16))(v18, v22, v12);
  (*(v19 + 56))(v18, 0, 1, v12);
  sub_255780D54();
  sub_255780CA4();
  (*(v14 + 8))(v18, v13);
  return (*(v19 + 8))(v22, v12);
}

uint64_t sub_25577D348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_25577A8A4();
  v10 = sub_255780D94();
  v9(v10, a3, a4, a5);
}

uint64_t CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v5 = *(a3 + 16);
  v57 = a4;
  v6 = *(a4 + 8);
  v53 = sub_255780C94();
  v48 = *(v53 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v53);
  v47 = &v45 - v8;
  v9 = sub_255780CE4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = sub_255780F04();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v54 = v5;
  v18 = sub_255780D04();
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v60 = a3;
  v23 = sub_255780C84();
  v24 = [v23 string];

  if (!v24)
  {
    sub_255780DD4();
    v24 = sub_255780DA4();
  }

  v58 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  sub_255780D14();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x259C3F910](v18, WitnessTable);
  v59 = v22;
  v60 = v18;
  sub_255780CF4();
  v51 = v10[6];
  v52 = v10 + 6;
  v26 = v51(v17, 1, v9);
  v27 = v47;
  if (v26 != 1)
  {
    v29 = v10[4];
    v28 = v10 + 4;
    v49 = v57 + 24;
    v50 = v29;
    v48 += 8;
    v30 = (v28 - 3);
    while (1)
    {
      v31 = v28;
      v50(v13, v17, v9);
      sub_255780CC4();
      (*(v57 + 24))(v27, v55, v56);
      v32 = sub_255780CD4();
      sub_255780CD4();
      v34 = v33;
      result = sub_255780CD4();
      v36 = v34 - result;
      if (__OFSUB__(v34, result))
      {
        break;
      }

      type metadata accessor for Key(0);
      sub_25577A8A4();
      v37 = sub_255780D84();

      [v58 setAttributes:v37 range:{v32, v36}];

      (*v48)(v27, v53);
      (*v30)(v13, v9);
      sub_255780CF4();
      v28 = v31;
      if (v51(v17, 1, v9) == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_7:
  (*(v46 + 8))(v59, v60);
  v62 = MEMORY[0x277D84F90];
  v38 = v58;
  result = [v38 length];
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v39 = result;
  v40 = *MEMORY[0x277D74118];
  v41 = swift_allocObject();
  *(v41 + 16) = &v62;
  *(v41 + 24) = v38;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_25577A814;
  *(v42 + 24) = v41;
  aBlock[4] = sub_25577DDD4;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25577A768;
  aBlock[3] = &block_descriptor_12;
  v43 = _Block_copy(aBlock);
  v44 = v38;

  [v44 enumerateAttribute:v40 inRange:0 options:v39 usingBlock:{0, v43}];

  _Block_release(v43);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {

    return v44;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t CRAttributedString<>.replace(with:traitCollection:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a1;
  v9 = sub_255780C74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255780D24();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_255780CB4();
    v33 = v14;
    v20 = *(a3 + 16);
    v31 = a2;
    v21 = (*(a4 + 32))(v20, a4);
    v32 = v9;
    v29 = a4;
    v30 = v5;
    v23 = v22;
    v24 = v34;
    v25 = *(v22 + 8);
    v35[3] = v21;
    v35[4] = v22;
    __swift_allocate_boxed_opaque_existential_1(v35);
    v25(v21, v23);
    v26 = v24;
    CRAttributedString<>.init(nsAttributedString:traitCollection:customAttributeProvider:)(v24, v31, v35, v20, v29, v18);
    v27 = v33;
    sub_255780D34();
    (*(v10 + 8))(v27, v32);
    return (*(v15 + 8))(v18, a3);
  }

  return result;
}

uint64_t sub_25577DCE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25577DD48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25577DD94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_25577DE7C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F7D2668 = result;
  return result;
}

uint64_t sub_25577DED4()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2670);
  __swift_project_value_buffer(v0, qword_27F7D2670);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577DFA0()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2688);
  __swift_project_value_buffer(v0, qword_27F7D2688);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E06C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D26A0);
  __swift_project_value_buffer(v0, qword_27F7D26A0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E138()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D26B8);
  __swift_project_value_buffer(v0, qword_27F7D26B8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E204()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D26D0);
  __swift_project_value_buffer(v0, qword_27F7D26D0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E2D0()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D26E8);
  __swift_project_value_buffer(v0, qword_27F7D26E8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E39C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2700);
  __swift_project_value_buffer(v0, qword_27F7D2700);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E468()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2718);
  __swift_project_value_buffer(v0, qword_27F7D2718);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E534()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2730);
  __swift_project_value_buffer(v0, qword_27F7D2730);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E600()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2748);
  __swift_project_value_buffer(v0, qword_27F7D2748);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E6CC()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2760);
  __swift_project_value_buffer(v0, qword_27F7D2760);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E798()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2778);
  __swift_project_value_buffer(v0, qword_27F7D2778);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E864()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2790);
  __swift_project_value_buffer(v0, qword_27F7D2790);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E930()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D27A8);
  __swift_project_value_buffer(v0, qword_27F7D27A8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577E9FC()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D27C0);
  __swift_project_value_buffer(v0, qword_27F7D27C0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577EAC8()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D27D8);
  __swift_project_value_buffer(v0, qword_27F7D27D8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577EB94()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D27F0);
  __swift_project_value_buffer(v0, qword_27F7D27F0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577EC60()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2808);
  __swift_project_value_buffer(v0, qword_27F7D2808);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577ED2C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2820);
  __swift_project_value_buffer(v0, qword_27F7D2820);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577EDF8()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2838);
  __swift_project_value_buffer(v0, qword_27F7D2838);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577EEC4()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2850);
  __swift_project_value_buffer(v0, qword_27F7D2850);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577EF90()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2868);
  __swift_project_value_buffer(v0, qword_27F7D2868);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F05C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2880);
  __swift_project_value_buffer(v0, qword_27F7D2880);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F128()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2898);
  __swift_project_value_buffer(v0, qword_27F7D2898);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F1F4()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D28B0);
  __swift_project_value_buffer(v0, qword_27F7D28B0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F2C0()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D28C8);
  __swift_project_value_buffer(v0, qword_27F7D28C8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F38C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D28E0);
  __swift_project_value_buffer(v0, qword_27F7D28E0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F458()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D28F8);
  __swift_project_value_buffer(v0, qword_27F7D28F8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F524()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2910);
  __swift_project_value_buffer(v0, qword_27F7D2910);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F5F0()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2928);
  __swift_project_value_buffer(v0, qword_27F7D2928);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F6BC()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2940);
  __swift_project_value_buffer(v0, qword_27F7D2940);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F788()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2958);
  __swift_project_value_buffer(v0, qword_27F7D2958);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F854()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2970);
  __swift_project_value_buffer(v0, qword_27F7D2970);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F920()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2988);
  __swift_project_value_buffer(v0, qword_27F7D2988);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577F9EC()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D29A0);
  __swift_project_value_buffer(v0, qword_27F7D29A0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FAB8()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D29B8);
  __swift_project_value_buffer(v0, qword_27F7D29B8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FB84()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D29D0);
  __swift_project_value_buffer(v0, qword_27F7D29D0);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FC50()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D29E8);
  __swift_project_value_buffer(v0, qword_27F7D29E8);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FD1C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A00);
  __swift_project_value_buffer(v0, qword_27F7D2A00);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FDE8()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A18);
  __swift_project_value_buffer(v0, qword_27F7D2A18);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FEB4()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A30);
  __swift_project_value_buffer(v0, qword_27F7D2A30);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25577FF80()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A48);
  __swift_project_value_buffer(v0, qword_27F7D2A48);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_25578004C()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A60);
  __swift_project_value_buffer(v0, qword_27F7D2A60);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_255780118()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A78);
  __swift_project_value_buffer(v0, qword_27F7D2A78);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_2557801E4()
{
  v0 = sub_255780C34();
  __swift_allocate_value_buffer(v0, qword_27F7D2A90);
  __swift_project_value_buffer(v0, qword_27F7D2A90);
  if (qword_27F7D2418 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7D2668;
  return sub_255780C24();
}

uint64_t sub_2557802B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_255780C34();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_25578036C()
{
  result = qword_27F7D2AA8;
  if (!qword_27F7D2AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D2AA8);
  }

  return result;
}

uint64_t sub_2557809E8(void *a1, uint64_t a2)
{
  v4 = sub_255780C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25578036C();
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  return sub_255780EF4();
}