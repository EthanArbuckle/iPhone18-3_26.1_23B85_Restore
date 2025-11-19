void _s12GameStoreKit43ArcadeTitleEffectCollectionElementsObserverC30willDisplayGlobalSupplementary_14registeredWith14collectionView8asPartOfySo020UICollectionReusableQ0C_AA03AnyvM12Registration_pSo0uQ0C9JetEngine15BaseObjectGraphCtF_0(void *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    ObjectType = swift_getObjectType();
    v7 = a1;
    if (!Strong || (swift_unknownObjectRelease(), Strong != v7))
    {
      v8 = *(v1 + 24);
      v9 = *(v1 + 32);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = *(v1 + 56);
      v14 = *(v1 + 16);
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v13 = *(v4 + 8);
      sub_24ED21BB0(v14, v8, v9, v10, v11, v12);
      v13(&v14, 0, 0, 1, 0, ObjectType, v4);
      sub_24EF43964(v14, v15, v16, v17, v18, v19);
      *(v1 + 72) = v4;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_24F268A28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F268A78(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for ArcadeTitleEffectCollectionElementsObserver()
{
  result = qword_27F23D0A8;
  if (!qword_27F23D0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F268B3C()
{
  sub_24F268C0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F268C0C()
{
  if (!qword_27F23D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D098);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23D0B8);
    }
  }
}

uint64_t sub_24F268C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F268CE0()
{
  result = qword_27F23D0D8;
  if (!qword_27F23D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D0D8);
  }

  return result;
}

uint64_t sub_24F268D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

size_t sub_24F268DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F7D8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B78);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F9479A0;
  sub_24F91F638();
  sub_24F91F568();
  sub_24F91F568();
  sub_24F91F638();
  sub_24F91F558();
  v12 = v11;
  (*(v4 + 8))(v9, v3);
  if (v12 > 3600.0)
  {
    sub_24F91F568();
    (*(v4 + 32))(v2, v7, v3);
    v13 = *(v10 + 16);
    if (v13)
    {
      v16 = v10;
      if (v13 < *(v10 + 24) >> 1)
      {
LABEL_4:
        sub_24EDAAC14(1, 1, 1, v2);
        return v10;
      }
    }

    else
    {
      __break(1u);
    }

    v10 = sub_24E616878(1uLL, v13 + 1, 1, v10);
    v16 = v10;
    goto LABEL_4;
  }

  return v10;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter()
{
  if (*(v0 + 96) == 5)
  {
    if (qword_27F210568 == -1)
    {
LABEL_3:
      v1 = sub_24F92AAE8();
      __swift_project_value_buffer(v1, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A5A8();

      return 0;
    }

LABEL_14:
    swift_once();
    goto LABEL_3;
  }

  v3 = *(v0 + 192);
  if ((v3 & 0xC0) == 0x80)
  {
    if (!*(v0 + 40))
    {
      v4 = *(v0 + 184);
      v5 = qword_27F210568;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_24F92AAE8();
      __swift_project_value_buffer(v7, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A5A8();

      sub_24EB6CE70(v4, v3);
      return 0;
    }
  }

  else if (!*(v0 + 32))
  {
    if (qword_27F210568 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  swift_allocObject();
  v12 = sub_24F26A038(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t sub_24F2694BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_24F26BCD4(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_24F26BCD4(a1, a2);

  return swift_unknownObjectRelease();
}

void (*ArcadeSubscriptionOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F2695DC;
}

void sub_24F2695DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_24F26BCD4(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F26BCD4(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id ArcadeSubscriptionOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E9534EC(v2, v3);
}

void ArcadeSubscriptionOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 120);
  *(a1 + 4) = v2;
}

void ArcadeSubscriptionOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 130);
  *a1 = *(v1 + 126);
  *(a1 + 4) = v2;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v6 = sub_24F26A038(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_24F269728()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_24F269780(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 184);
    *(result + 184) = v1;
    v5 = *(result + 192);
    *(result + 192) = v2;
    sub_24EB6CE50(v1, v2);
    sub_24EB6CE70(v4, v5);
    _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_24F26981C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.deinit()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 208);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  sub_24E97D004(*(v0 + 104), *(v0 + 112));

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  sub_24EB6CE70(*(v0 + 184), *(v0 + 192));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__deallocating_deinit()
{
  ArcadeSubscriptionOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F269978(char a1)
{
  v2 = *(v1 + 88);
  if ((a1 & 1) == 0)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 88);
    if (!*(v3 + 16))
    {
      return 0;
    }

    v4 = sub_24E76DB58(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v7 = *(*(v3 + 56) + 16 * v4);

    return v7;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 88);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_24E76DB58(9);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:

  return 0;
}

BOOL sub_24F269A28()
{
  v1 = *(v0 + 88);
  if (v1 && *(v1 + 96) == 5)
  {
    return 0;
  }

  v2 = *(v0 + 192) >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v1)
      {
        v4 = *(v1 + 16);
        if (v4 != 4 && (sub_24F0C8AE0(v4, 2u) & 1) != 0)
        {
          return *(v0 + 40) != 0;
        }
      }

      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v7 = 0;
      v5 = &v7;
      return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
    }

LABEL_11:
    __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    v8 = 0;
    v5 = &v8;
    return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_24F269B08()
{
  v1 = sub_24F928418();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
  if (v2)
  {
    v3 = v2;
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    v5 = sub_24F9283F8();
    v6 = (*(*v3 + 192))(v5);
    v17 = MEMORY[0x277D837D0];
    v14 = v6;
    v15 = v7;
    sub_24F9283D8();
    sub_24E857CC8(&v14);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      Strong = swift_unknownObjectWeakLoadStrong();
      v10 = Strong;
      if (Strong)
      {
        Strong = swift_getObjectType();
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      v14 = v10;
      v17 = Strong;
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(v3, &v14, ObjectType);

      swift_unknownObjectRelease();
      return sub_24E857CC8(&v14);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24F269F40(uint64_t a1, uint64_t a2)
{
  sub_24F26BCD4(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_24F269F7C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24F2695DC;
}

uint64_t sub_24F26A038(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v7 = v6;
  v71 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233758);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v62 - v16;
  LODWORD(v16) = a4[1];
  v62 = *a4;
  v63 = v16;
  v17 = a4[2];
  v18 = a4[3];
  v19 = a4[4];
  v20 = a4[5];
  v21 = *a6 | (*(a6 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 184) = 0;
  *(v7 + 192) = -64;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80);
  v67 = a1;

  sub_24F928F28();
  sub_24E612C80(&v74, v7 + 48);
  v24 = v62;
  v23 = v63;
  *(v7 + 126) = v62;
  *(v7 + 127) = v23;
  *(v7 + 128) = v17;
  *(v7 + 129) = v18;
  *(v7 + 130) = v19;
  *(v7 + 131) = v20;
  if (v21 == 3)
  {
    v73[0] = v24;
    v73[1] = v23;
    v73[2] = v17;
    v73[3] = v18;
    v73[4] = v19;
    v73[5] = v20;
    sub_24E9536D8(v73, &v74, v22);
    LOBYTE(v21) = v74;
    v25.i32[0] = *(&v74 + 1);
    v26 = vmovl_u8(v25).u64[0];
    LOBYTE(v27) = BYTE5(v74);
  }

  else
  {
    v28 = vdupq_n_s64(v21);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_24F99A2D0), vshlq_u64(v28, xmmword_24F99A2C0)));
    v27 = v21 >> 40;
  }

  *(v7 + 120) = v21;
  *(v7 + 121) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 125) = v27;
  v29 = v67;
  if (!v67)
  {
    v32 = 0;
    v31 = 16;
    v33 = 3;
    goto LABEL_8;
  }

  v30 = *(v67 + 96);
  v31 = *(v67 + 97);
  v33 = *(v67 + 104);
  v32 = *(v67 + 112);
  sub_24E9534EC(v33, v32);
  if (v30 == 7)
  {
LABEL_8:
    v30 = 0;
  }

  if (v31 == 16)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  if (v33 == 3)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  *(v7 + 96) = v30;
  *(v7 + 97) = v34;
  if (v33 == 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = v32;
  }

  *(v7 + 104) = v35;
  *(v7 + 112) = v36;
  v75 = type metadata accessor for Restrictions();
  v76 = &protocol witness table for Restrictions;
  sub_24F928FD8();
  sub_24F92A758();
  sub_24E612C80(&v74, v7 + 144);
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F92A758();
  v37 = v74;
  *(v7 + 136) = v74;
  v38 = v37 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v7 + 184);
  v41 = *(v38 + 8);
  *(v7 + 184) = *v38;
  LOBYTE(v38) = *(v7 + 192);
  *(v7 + 192) = v41;
  sub_24EB6CE50(v39, v41);
  sub_24EB6CE70(v40, v38);
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  if (qword_27F210B10 != -1)
  {
    swift_once();
  }

  v42 = v64;
  sub_24F92A3B8();
  v43 = v66;
  sub_24F92A408();

  (*(v65 + 8))(v42, v43);
  *(v7 + 216) = v72;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);

    sub_24F92A758();
    v44 = *(&v74 + 1);
    ObjectType = swift_getObjectType();
    v46 = *(v29 + 32);
    *&v74 = *(v29 + 24);
    *(&v74 + 1) = v46;
    v47 = *(v44 + 56);

    v48 = v47(&v74, ObjectType, v44);
    v50 = v49;

    *(v7 + 200) = v48;
    *(v7 + 208) = v50;
    v51 = swift_getObjectType();
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = *(v50 + 72);

    v53(v7, sub_24F26BEB4, v52, v51, v50);

    swift_unknownObjectRelease();
  }

  else
  {
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  v54 = *(v7 + 136);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = *&v54[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();
  v57 = v54;

  [v56 lock];
  sub_24F213714(v7, sub_24F26BEA4, v55, v57);
  [v56 unlock];

  v58 = *(v7 + 72);
  v59 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1((v7 + 48), v58);
  (*(v59 + 16))(v58, v59);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08);
  sub_24EEFE2E4();
  sub_24F9288B8();
  v60 = v68;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  (*(v69 + 8))(v60, v70);
  return v7;
}

uint64_t sub_24F26A7B8(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1[8] >> 6;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = *a3;
      if (v14 == 4 || (sub_24F0C8AE0(v14, 2u) & 1) == 0)
      {
        if (!*(a2 + 16) || (v10 = sub_24E76DB58(4), (v19 & 1) == 0))
        {
          v12 = 0xD000000000000016;
          v13 = 0x800000024FA5BA00;
          goto LABEL_22;
        }
      }

      else
      {
        v16 = *(a2 + 16);
        if (a6)
        {
          if (!v16 || (v10 = sub_24E76DB58(13), (v17 & 1) == 0))
          {
            v12 = 0xD00000000000002BLL;
            v13 = 0x800000024FA6B8C0;
            goto LABEL_22;
          }
        }

        else if (!v16 || (v10 = sub_24E76DB58(11), (v23 & 1) == 0))
        {
          v12 = 0xD00000000000001CLL;
          v13 = 0x800000024FA5BA80;
          goto LABEL_22;
        }
      }

      goto LABEL_31;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    if (a6)
    {
      if (!*(a2 + 16) || (v10 = sub_24E76DB58(14), (v11 & 1) == 0))
      {
        v12 = 0xD00000000000002ELL;
        v13 = 0x800000024FA71020;
LABEL_22:
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        return localizedString(_:comment:)(*&v12, v20)._countAndFlagsBits;
      }

      goto LABEL_31;
    }

    v21 = *(a2 + 16);
    if (*a1 == 1)
    {
      if (v21)
      {
        v10 = sub_24E76DB58(9);
        if (v22)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_17;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = sub_24E76DB58(10);
    if (v18)
    {
LABEL_31:
      a4 = *(*(a2 + 56) + 16 * v10);
      goto LABEL_32;
    }

LABEL_17:
    if (!a5)
    {
      v13 = 0x800000024FA5BAC0;
      v12 = 0xD000000000000015;
      goto LABEL_22;
    }

LABEL_32:

    return a4;
  }

  return 0;
}

uint64_t _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 48), v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    v11._object = 0x800000024FA500B0;
    v11._countAndFlagsBits = 0xD000000000000016;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = localizedString(_:comment:)(v11, v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  LOBYTE(v216) = 0;
  v4 = *(v0 + 88);
  if (RestrictionsProtocol.doesAllow(_:properties:)(&v216, v4) || !v4)
  {
    v22 = (v0 + 184);
    v21 = *(v0 + 184);
    v24 = (v0 + 192);
    v23 = *(v0 + 192);
    v216 = v21;
    LOBYTE(v217) = v23;
    if (!v4)
    {
      sub_24EB6CE50(v21, v23);
      v25 = sub_24E6096FC(MEMORY[0x277D84F90]);
      v26 = 4;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(v4 + 72);
    if (*(v5 + 16))
    {

      v6 = sub_24E76DB58(12);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        countAndFlagsBits = *v8;
        object = v8[1];

LABEL_8:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          v16 = *(v1 + 104);
          v17 = *(v1 + 112);
          LOWORD(v220) = *(v1 + 96);
          v222 = v16;
          v223 = v17;
          v18 = *(v14 + 32);
          sub_24E9534EC(v16, v17);
          v18(countAndFlagsBits, object, 0, 0, &v220, ObjectType, v14);
          swift_unknownObjectRelease();
          sub_24E97D004(v222, v223);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
        }

        v19 = *(v1 + 24);
        v20 = swift_getObjectType();
        (*(v19 + 128))(countAndFlagsBits, object, v20, v19);
        return swift_unknownObjectRelease();
      }
    }

    v22 = (v1 + 184);
    v21 = *(v1 + 184);
    v24 = (v1 + 192);
    v23 = *(v1 + 192);
    v216 = v21;
    LOBYTE(v217) = v23;
  }

  v25 = *(v4 + 72);
  v26 = *(v4 + 16);
  sub_24EB6CE50(v21, v23);

LABEL_18:
  LOBYTE(v220) = v26;
  v28 = *(v1 + 32);
  if (v28)
  {
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);

    if (v4)
    {
LABEL_20:
      v31 = *(v4 + 122);
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    if (v4)
    {
      goto LABEL_20;
    }
  }

  v31 = 0;
LABEL_23:
  v208 = sub_24F26A7B8(&v216, v25, &v220, v29, v30, v31);
  v33 = v32;

  sub_24EB6CE70(v216, v217);
  v34 = *v24 >> 6;
  if (v34 <= 1)
  {
    if (v34)
    {
      if (v4)
      {
        v55 = *(v4 + 16);
        if (v55 != 4 && (sub_24F0C8AE0(v55, 2u) & 1) != 0)
        {
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v56 = *(v1 + 24);
            v57 = swift_getObjectType();
            v58 = *(v1 + 124);
            v220 = *(v1 + 120);
            v221 = v58;
            v59 = *(v1 + 104);
            v60 = *(v1 + 112);
            LOWORD(v216) = *(v1 + 96);
            v217 = v59;
            v218 = v60;
            v61 = v24;
            v62 = *(v56 + 56);
            sub_24E9534EC(v59, v60);
            v62(0, 0, &v220, &v216, 0, v57, v56);
            v24 = v61;
            swift_unknownObjectRelease();
            sub_24E97D004(v217, v218);
          }
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v63 = *(v1 + 24);
        v64 = swift_getObjectType();
        (*(v63 + 144))(0x6973616863727570, 0xEA0000000000676ELL, v64, v63);
LABEL_67:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v35 = sub_24F269978(*(v1 + 184) == 1);
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        v202 = v22;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = v37;
          v40 = v33;
          v41 = *(v1 + 24);
          v204 = v24;
          v42 = swift_getObjectType();
          v43 = *(v1 + 130);
          v214 = *(v1 + 126);
          v215 = v43;
          v44 = *(v1 + 104);
          v45 = *(v1 + 112);
          LOWORD(v216) = *(v1 + 96);
          v217 = v44;
          v218 = v45;
          v46 = *(v41 + 24);
          sub_24E9534EC(v44, v45);
          v194 = v42;
          v197 = v41;
          v33 = v40;
          v37 = v39;
          v24 = v204;
          v46(v208, v33, v39, v38, &v214, 0, 0, &v216, v194, v197);
          swift_unknownObjectRelease();
          sub_24E97D004(v217, v218);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v47 = v37;
          v48 = v24;
          v49 = *(v1 + 24);
          v50 = swift_getObjectType();
          v216 = v208;
          v217 = v33;

          MEMORY[0x253050C20](8236, 0xE200000000000000);
          MEMORY[0x253050C20](v47, v38);

          v51 = *(v49 + 128);
          v52 = v49;
          v24 = v48;
          v51(v216, v217, v50, v52);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        v22 = v202;
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v95 = *(v1 + 24);
          v96 = swift_getObjectType();
          v97 = *(v1 + 104);
          v98 = *(v1 + 112);
          LOWORD(v216) = *(v1 + 96);
          v217 = v97;
          v218 = v98;
          v99 = v24;
          v100 = *(v95 + 32);
          sub_24E9534EC(v97, v98);
          v100(v208, v33, 0, 0, &v216, v96, v95);
          v24 = v99;
          swift_unknownObjectRelease();
          sub_24E97D004(v217, v218);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v101 = *(v1 + 24);
          v102 = swift_getObjectType();
          v103 = v24;
          v104 = *(v101 + 128);

          v104(v208, v33, v102, v101);
          v24 = v103;
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v105 = *(v1 + 24);
        v106 = swift_getObjectType();
        (*(v105 + 144))(0x6269726373627573, 0xE900000000000065, v106, v105);
        goto LABEL_67;
      }
    }

LABEL_68:
    v117 = sub_24F269A28();
    if (!v4 || (*(v4 + 122) & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_70;
  }

  if (v34 != 2)
  {
    if (v4)
    {
      v65 = *(v4 + 88);
      if (*(v65 + 16))
      {

        v66 = sub_24E76DB58(10);
        if (v67)
        {
          v201 = v33;
          v68 = (*(v65 + 56) + 16 * v66);
          v69 = *v68;
          v70 = v68[1];

          swift_beginAccess();
          v205 = v24;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v71 = v69;
            v72 = *(v1 + 24);
            v73 = swift_getObjectType();
            v74 = *(v1 + 130);
            v214 = *(v1 + 126);
            v215 = v74;
            v75 = *(v1 + 104);
            v76 = *(v1 + 112);
            LOWORD(v216) = *(v1 + 96);
            v217 = v75;
            v218 = v76;
            v77 = *(v72 + 24);
            sub_24E9534EC(v75, v76);
            v195 = v73;
            v198 = v72;
            v69 = v71;
            v24 = v205;
            v77(v208, v33, v71, v70, &v214, 0, 0, &v216, v195, v198);
            swift_unknownObjectRelease();
            sub_24E97D004(v217, v218);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v78 = *(v1 + 24);
            v79 = swift_getObjectType();
            v216 = v208;
            v217 = v33;

            MEMORY[0x253050C20](8236, 0xE200000000000000);
            MEMORY[0x253050C20](v69, v70);

            v80 = *(v78 + 128);
            v81 = v78;
            v24 = v205;
            v80(v216, v217, v79, v81);
            swift_unknownObjectRelease();
            goto LABEL_101;
          }

LABEL_99:
          v33 = v201;
          goto LABEL_101;
        }
      }
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v107 = *(v1 + 24);
      v108 = swift_getObjectType();
      v109 = *(v1 + 104);
      v110 = *(v1 + 112);
      LOWORD(v216) = *(v1 + 96);
      v217 = v109;
      v218 = v110;
      v111 = v24;
      v112 = *(v107 + 32);
      sub_24E9534EC(v109, v110);
      v112(v208, v33, 0, 0, &v216, v108, v107);
      v24 = v111;
      swift_unknownObjectRelease();
      sub_24E97D004(v217, v218);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v113 = *(v1 + 24);
      v114 = swift_getObjectType();
      v115 = v24;
      v116 = *(v113 + 128);

      v116(v208, v33, v114, v113);
      v24 = v115;
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (!v4)
  {
    goto LABEL_88;
  }

  v53 = *(v4 + 16);
  if (v53 != 4 && (sub_24F0C8AE0(v53, 2u) & 1) != 0)
  {
    v201 = v33;
    if (*(v1 + 40))
    {
      v54 = *(v1 + 96);
    }

    else
    {
      v54 = 5;
    }

    v152 = *(v1 + 97);
    v154 = *(v1 + 104);
    v153 = *(v1 + 112);
    sub_24E9534EC(v154, v153);
    swift_beginAccess();
    v206 = v24;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v155 = *(v1 + 24);
      v156 = swift_getObjectType();
      LOBYTE(v216) = v54;
      BYTE1(v216) = v152;
      v217 = v154;
      v218 = v153;
      v157 = *(v155 + 32);
      sub_24E9534EC(v154, v153);
      v158 = v155;
      v24 = v206;
      v157(v208, v201, 0, 0, &v216, v156, v158);
      swift_unknownObjectRelease();
      sub_24E97D004(v217, v218);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v159 = *(v1 + 24);
      v160 = swift_getObjectType();
      v200 = *(v159 + 128);
      v33 = v201;

      v161 = v159;
      v24 = v206;
      v200(v208, v201, v160, v161);
      sub_24E97D004(v154, v153);
      swift_unknownObjectRelease();
      goto LABEL_101;
    }

    sub_24E97D004(v154, v153);
    goto LABEL_99;
  }

  v82 = *(v4 + 88);
  if (!*(v82 + 16))
  {
LABEL_88:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v140 = *(v1 + 24);
      v141 = swift_getObjectType();
      v142 = *(v1 + 104);
      v143 = *(v1 + 112);
      LOWORD(v216) = *(v1 + 96);
      v217 = v142;
      v218 = v143;
      v144 = v24;
      v145 = *(v140 + 32);
      sub_24E9534EC(v142, v143);
      v145(v208, v33, 0, 0, &v216, v141, v140);
      v24 = v144;
      swift_unknownObjectRelease();
      sub_24E97D004(v217, v218);
    }

    goto LABEL_68;
  }

  v83 = sub_24E76DB58(4);
  if ((v84 & 1) == 0)
  {

    goto LABEL_88;
  }

  v85 = (*(v82 + 56) + 16 * v83);
  v86 = *v85;
  v87 = v85[1];

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v88 = *(v1 + 24);
    v199 = v86;
    v89 = v24;
    v90 = swift_getObjectType();
    v91 = *(v1 + 130);
    v214 = *(v1 + 126);
    v215 = v91;
    v92 = *(v1 + 104);
    v93 = *(v1 + 112);
    LOWORD(v216) = *(v1 + 96);
    v217 = v92;
    v218 = v93;
    v203 = v22;
    v94 = *(v88 + 24);
    sub_24E9534EC(v92, v93);
    v196 = v90;
    v24 = v89;
    v94(v208, v33, v199, v87, &v214, 0, 0, &v216, v196, v88);
    v22 = v203;

    swift_unknownObjectRelease();
    sub_24E97D004(v217, v218);
  }

  else
  {
  }

LABEL_101:
  v117 = sub_24F269A28();
  if ((*(v4 + 122) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_70:
  if (!*(v1 + 200))
  {
    goto LABEL_102;
  }

  v118 = *(v1 + 208);
  v119 = swift_getObjectType();
  (*(v118 + 16))(&v216, v119, v118);
  if (v219 >> 60 == 1)
  {
    if (v216)
    {
      if (*(v1 + 216) != 1)
      {
        v146 = *(v1 + 97);
        v148 = *(v1 + 104);
        v147 = *(v1 + 112);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v149 = *(v1 + 24);
          v150 = swift_getObjectType();
          LOBYTE(v211) = 5;
          HIBYTE(v211) = v146;
          v212 = v148;
          v213 = v147;
          v151 = *(v149 + 32);
          sub_24E9534EC(v148, v147);
          v151(v208, v33, 0, 0, &v211, v150, v149);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_24E9534EC(v148, v147);
        }

        sub_24E97D004(v148, v147);
        v117 = 0;
        goto LABEL_126;
      }

      v133 = *v24;
      if (v133 >> 6 == 2)
      {
        v164 = *(v4 + 80);
        if (*(v164 + 16))
        {
          v165 = v33;
          v166 = *v22;
          sub_24EB6CE50(*v22, v133);

          v167 = sub_24E76DB58(15);
          if (v168)
          {
            v169 = (*(v164 + 56) + 16 * v167);
            v138 = *v169;
            v139 = v169[1];

            sub_24EB6CE70(v166, v133);
            v33 = v165;
            goto LABEL_112;
          }

          sub_24EB6CE70(v166, v133);
          v33 = v165;
        }
      }

      else if (!(v133 >> 6))
      {
        v134 = *(v4 + 80);
        if (*(v134 + 16))
        {

          v135 = sub_24E76DB58(16);
          if (v136)
          {
            v137 = (*(v134 + 56) + 16 * v135);
            v138 = *v137;
            v139 = v137[1];

LABEL_112:

            v170 = *(v1 + 97);
            if (v170 == 3 || v170 == 6)
            {
              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v175 = *(v1 + 24);
                v176 = swift_getObjectType();
                v177 = *(v1 + 97);
                LOBYTE(v211) = 0;
                HIBYTE(v211) = v177;
                v212 = 0;
                v213 = 0;
                (*(v175 + 48))(v138, v139, &v211, v176, v175);
LABEL_134:
                swift_unknownObjectRelease();

                goto LABEL_125;
              }
            }

            else
            {
              if (v170 == 8)
              {
                swift_beginAccess();
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v171 = *(v1 + 24);
                  v207 = swift_getObjectType();
                  v172 = *(v1 + 97);
                  if (qword_27F210200 != -1)
                  {
                    swift_once();
                  }

                  v173 = qword_27F2287C0;
                  v174 = objc_opt_self();
                  LOBYTE(v211) = 0;
                  HIBYTE(v211) = v172;
                  v212 = v173;
                  v213 = [v174 whiteColor];
                  (*(v171 + 48))(v138, v139, &v211, v207, v171);

                  swift_unknownObjectRelease();
                  sub_24E97D004(v212, v213);
                  goto LABEL_126;
                }

                goto LABEL_135;
              }

              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v187 = *(v1 + 24);
                v188 = v33;
                v189 = swift_getObjectType();
                v190 = *(v1 + 104);
                v191 = *(v1 + 112);
                v211 = *(v1 + 96);
                v212 = v190;
                v213 = v191;
                v192 = *(v187 + 48);
                sub_24E9534EC(v190, v191);
                v193 = v189;
                v33 = v188;
                v192(v138, v139, &v211, v193, v187);
                goto LABEL_134;
              }
            }

LABEL_135:

            goto LABEL_126;
          }
        }
      }

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_126:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v183 = *(v1 + 24);
          v184 = swift_getObjectType();
          (*(v183 + 128))(v208, v33, v184, v183);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_103;
        }

        v185 = *(v1 + 24);
        v186 = swift_getObjectType();
        (*(v185 + 144))(0x726564726F657270, 0xEA00000000006465, v186, v185);
        goto LABEL_131;
      }

      v178 = *(v1 + 24);
      v179 = swift_getObjectType();
      v180 = *(v1 + 104);
      v181 = *(v1 + 112);
      v211 = *(v1 + 96);
      v212 = v180;
      v213 = v181;
      v182 = *(v178 + 32);
      sub_24E9534EC(v180, v181);
      v182(v208, v33, 0, 0, &v211, v179, v178);
      swift_unknownObjectRelease();
LABEL_125:
      sub_24E97D004(v212, v213);
      goto LABEL_126;
    }

LABEL_102:

    goto LABEL_103;
  }

  if (!(v219 >> 60))
  {

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v120 = *(v1 + 24);
      v121 = swift_getObjectType();
      v122 = *(v1 + 124);
      v209 = *(v1 + 120);
      v210 = v122;
      v123 = *(v1 + 104);
      v124 = *(v1 + 112);
      v211 = *(v1 + 96);
      v212 = v123;
      v213 = v124;
      v125 = *(v120 + 56);
      sub_24E9534EC(v123, v124);
      v125(0, 0, &v209, &v211, 0, v121, v120);
      swift_unknownObjectRelease();
      sub_24E97D004(v212, v213);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v126 = *(v1 + 24);
      v127 = swift_getObjectType();
      v128._countAndFlagsBits = 0xD00000000000001CLL;
      v128._object = 0x800000024FA71000;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      v130 = localizedString(_:comment:)(v128, v129);
      (*(v126 + 128))(v130._countAndFlagsBits, v130._object, v127, v126);
      swift_unknownObjectRelease();
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_103;
    }

    v131 = *(v1 + 24);
    v132 = swift_getObjectType();
    (*(v131 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v132, v131);
LABEL_131:
    swift_unknownObjectRelease();
    goto LABEL_103;
  }

  sub_24E88D2AC(&v216);
LABEL_103:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v162 = *(v1 + 24);
  v163 = swift_getObjectType();
  (*(v162 + 16))(v117, v163, v162);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F26BCD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  return _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24F26BDC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F26BE6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24F26BED8()
{
  result = qword_27F23D0E0;
  if (!qword_27F23D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D0E0);
  }

  return result;
}

unint64_t sub_24F26BF34()
{
  result = qword_27F23D0E8[0];
  if (!qword_27F23D0E8[0])
  {
    type metadata accessor for BatchPurchaseParams();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23D0E8);
  }

  return result;
}

id sub_24F26BF8C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    v7 = *(a2 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v15 = MEMORY[0x277D84F90];
      sub_24F457900(0, v7, 0);
      v8 = v15;
      v9 = a2 + 32;
      do
      {
        sub_24EB69CEC(v9, v14);
        v10 = sub_24EBA9E24();
        sub_24E95A048(v14);
        v15 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24F457900((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v9 += 160;
        --v7;
      }

      while (v7);
    }

    v14[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
    v13 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v13)
    {
      sub_24F92C328();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F26C13C(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

unint64_t sub_24F26C248()
{
  result = qword_27F23A788;
  if (!qword_27F23A788)
  {
    type metadata accessor for LocalAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A788);
  }

  return result;
}

void sub_24F26C2B8(uint64_t a1)
{
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_24F929FB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    type metadata accessor for PageRenderMetricsViewModifier();
    sub_24F76A268(v8);
    v13 = *(a1 + 8);
    if (*(a1 + 16) != 1)
    {

      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      v17 = v2;
      v15 = v3;
      v16 = v14;
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v13, 0);
      (*(v15 + 8))(v5, v17);
    }

    sub_24F929F78();
    sub_24F92A0B8();
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_24F26C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24F26CBF0(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24F26CC58(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D188);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D190) + 36));
  *v11 = sub_24F26CCBC;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_24F26CBF0(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_24F26CC58(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D198);
  v14 = (a3 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_24F26CE9C;
  v14[3] = v12;
  return result;
}

uint64_t sub_24F26C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageRenderMetricsViewModifier();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 1) = swift_getKeyPath();
  v8[16] = 0;
  v9 = *(v6 + 24);
  *&v8[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;

  MEMORY[0x25304C420](v8, a2, v6, a3);
  return sub_24F26C880(v8);
}

uint64_t type metadata accessor for PageRenderMetricsViewModifier()
{
  result = qword_27F23D170;
  if (!qword_27F23D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F26C84C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9244D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F26C880(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F26C8F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_24F26C9CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F26CA7C()
{
  sub_24F26CB18();
  if (v0 <= 0x3F)
  {
    sub_24EB999AC();
    if (v1 <= 0x3F)
    {
      sub_24F26CB70();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F26CB18()
{
  if (!qword_27F23D180)
  {
    sub_24F92A0F8();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23D180);
    }
  }
}

void sub_24F26CB70()
{
  if (!qword_27F231550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C330);
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F231550);
    }
  }
}

uint64_t sub_24F26CBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F26CC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F26CCBC()
{
  v1 = type metadata accessor for PageRenderMetricsViewModifier();
  v3 = *(v1 - 8);
  result = v1 - 8;
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80))))
  {
    return sub_24F92A0A8();
  }

  return result;
}

uint64_t objectdestroyTm_59()
{
  v1 = (type metadata accessor for PageRenderMetricsViewModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_24E62A5EC(*(v2 + 8), *(v2 + 16));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F9219D8();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24F26CE9C()
{
  v1 = *(type metadata accessor for PageRenderMetricsViewModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24F26C2B8(v2);
}

uint64_t sub_24F26CF70(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F26CFF4()
{
  result = qword_27F23D1B0;
  if (!qword_27F23D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D1B0);
  }

  return result;
}

uint64_t sub_24F26D05C()
{
  v0 = sub_24F91EF78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  sub_24F91EE38();
  sub_24F26E2F4(&qword_27F225C00);
  v7 = 0;
  if ((sub_24F92BBE8() & 1) == 0)
  {
    sub_24F92BC08();
    sub_24F26E2F4(&qword_27F22D310);
    sub_24F92AF58();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v9 = sub_24F92BC88();
    v7 = *v10;

    v9(v12, 0);
    v8(v6, v0);
  }

  return v7;
}

uint64_t sub_24F26D234(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_24F92B248();
  return sub_24F92B3A8();
}

Swift::String __swiftcall String.asMarkdown(configuration:)(GameStoreKit::NqmlConfiguration *configuration)
{
  v1 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v25 = v1;
  v26 = *&configuration->orderedListItemBulletFormat._object;
  v2 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v23 = v2;
  v3 = type metadata accessor for MarkdownStringGenerator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_didParseEverything] = 1;
  v6 = objc_allocWithZone(ASKNQMLParser);

  sub_24E8EB83C(&newline, v21);
  v7 = sub_24F92B098();

  v8 = [v6 initWithString_];

  *&v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser] = v8;
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_configuration];
  *v9 = newline;
  v10 = v26;
  v12 = v23;
  v11 = listItemBullet;
  v9[3] = v25;
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  v20.receiver = v4;
  v20.super_class = v3;
  v13 = [(GameStoreKit::NqmlConfiguration *)&v20 init];
  [*(&v13->newline._countAndFlagsBits + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser) setDelegate_];
  v14 = sub_24F26D57C();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_24F26D434()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23D1C0);
  __swift_project_value_buffer(v4, qword_27F23D1C0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24F26D57C()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser) parse];
  v5 = (v0 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator);
  swift_beginAccess();
  v6 = v5[1];
  v11[1] = *v5;
  v11[2] = v6;

  sub_24F91EA68();
  sub_24E600AEC();
  v7 = sub_24F92C538();
  v9 = v8;
  (*(v2 + 8))(v4, v1);

  *v5 = v7;
  v5[1] = v9;

  return v7;
}

id sub_24F26DA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarkdownStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24F26DAFC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_24F26DC4C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_24F92C878();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_24F92C928() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_24F26DC4C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_24F26DCE4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_24F26DD58(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_24F26DCE4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_24F26DE7C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F26DD58(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_24F92C928();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_24F26DE7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24F92B348();
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
    v5 = MEMORY[0x253050C70](15, a1 >> 16);
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

uint64_t sub_24F26DEF8()
{
  if (qword_27F211030 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F23D1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v5);
  sub_24F92A5A8();

  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_didParseEverything) = 0;
  return result;
}

unint64_t sub_24F26E0C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_24F26D234(v4, v5);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_10;
  }

  if (sub_24F92AF18())
  {

LABEL_9:
    sub_24E8EC218();
    sub_24F92BC98();
    goto LABEL_10;
  }

  result = sub_24F26DAFC(v6, v8);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    return result;
  }

  v10 = result;

  v11 = (v10 - 14) <= 0xFFFFFFFB && (v10 - 8232) >= 2;
  if (!v11 || v10 == 133)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (qword_27F210F40 != -1)
  {
    swift_once();
  }

  v13 = a1;
  v12 = a2;
  if (qword_27F39DBA0)
  {
    v14 = qword_27F39DBA0;
    v15 = sub_24F92B098();
    v16 = sub_24F92B228();

    v17 = sub_24F92B098();
    v18 = [v14 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v16, v17}];

    v13 = sub_24F92B0D8();
    v12 = v19;
  }

  swift_beginAccess();
  MEMORY[0x253050C20](v13, v12);
  swift_endAccess();
}

uint64_t sub_24F26E2F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F91EE38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ConversationHandle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_24EA15AB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_24EDD3E74(v2, v3);
}

uint64_t sub_24F26E39C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];
  v5 = *(result + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      sub_24ED7CF18(&v7, *(v2 + v6));
      v6 += 24;
      --v5;
    }

    while (v5);

    v4 = v8;
  }

  *a2 = v2;
  a2[1] = v4;
  return result;
}

unint64_t ConversationHandle.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x646E61486C6C6163;
  *(inited + 40) = 0xEB0000000073656CLL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  *(inited + 80) = sub_24F26F088(&qword_27F23D1F8, sub_24F26E56C);
  *(inited + 48) = v3;

  v5 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v6 = sub_24E80FFAC(v5);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_24F26E56C()
{
  result = qword_27F23D200;
  if (!qword_27F23D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D200);
  }

  return result;
}

uint64_t sub_24F26E5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x646E61486C6C6163 && a2 == 0xEB0000000073656CLL;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E61486C6C6163 && a2 == 0xEF7365707954656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F26E6DC(uint64_t a1)
{
  v2 = sub_24F26EF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F26E718(uint64_t a1)
{
  v2 = sub_24F26EF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F26EF68();

  sub_24F92D128();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  sub_24F26F088(&qword_27F22BE30, sub_24EC37814);
  sub_24F92CD48();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D218);
    sub_24F26EFBC(&qword_27F23D220, sub_24F26F034);
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ConversationHandle.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24EA1DBB0(a1, v3);

  return sub_24EDC97AC(a1, v4);
}

uint64_t ConversationHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24EA1DBB0(v4, v1);
  sub_24EDC97AC(v4, v2);
  return sub_24F92D0B8();
}

uint64_t ConversationHandle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F26EF68();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  v13 = 0;
  sub_24F26F088(&qword_27F22BE48, sub_24EC37CB4);
  sub_24F92CC68();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D218);
  v13 = 1;
  sub_24F26EFBC(&qword_27F23D238, sub_24F26F100);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F26ECB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24EA1DBB0(v4, v1);
  sub_24EDC97AC(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24F26ED04(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24EA1DBB0(a1, v3);

  return sub_24EDC97AC(a1, v4);
}

uint64_t sub_24F26ED44()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24EA1DBB0(v4, v1);
  sub_24EDC97AC(v4, v2);
  return sub_24F92D0B8();
}

unint64_t sub_24F26EDC4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x646E61486C6C6163;
  *(inited + 40) = 0xEB0000000073656CLL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  *(inited + 80) = sub_24F26F088(&qword_27F23D1F8, sub_24F26E56C);
  *(inited + 48) = v3;

  v5 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v6 = sub_24E80FFAC(v5);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F26EF0C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_24EA15AB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_24EDD3E74(v2, v3);
}

unint64_t sub_24F26EF68()
{
  result = qword_27F23D210;
  if (!qword_27F23D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D210);
  }

  return result;
}

uint64_t sub_24F26EFBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D218);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F26F034()
{
  result = qword_27F23D228;
  if (!qword_27F23D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D228);
  }

  return result;
}

uint64_t sub_24F26F088(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F26F100()
{
  result = qword_27F23D240;
  if (!qword_27F23D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D240);
  }

  return result;
}

unint64_t sub_24F26F158()
{
  result = qword_27F23D248;
  if (!qword_27F23D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D248);
  }

  return result;
}

unint64_t sub_24F26F1D0()
{
  result = qword_27F23D250;
  if (!qword_27F23D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D250);
  }

  return result;
}

unint64_t sub_24F26F228()
{
  result = qword_27F23D258;
  if (!qword_27F23D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D258);
  }

  return result;
}

unint64_t sub_24F26F280()
{
  result = qword_27F23D260;
  if (!qword_27F23D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D260);
  }

  return result;
}

id EmptyLayoutSectionProvider.layoutSection(for:with:in:shelfLayoutSpacingProvider:shelfSupplementaryProvider:itemSupplementaryProvider:asPartOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24EB07708(a1, &v8 - v3);
  v5 = type metadata accessor for ShelfLayoutContext();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v4);
  sub_24F0857FC(v4);
  return v6;
}

id sub_24F26F3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24EB07708(a1, &v8 - v3);
  v5 = type metadata accessor for ShelfLayoutContext();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v4);
  sub_24F0857FC(v4);
  return v6;
}

uint64_t sub_24F26F55C(uint64_t a1, void *a2)
{
  if (a1 == 0xD000000000000017 && 0x800000024FA71110 == a2 || (sub_24F92CE08() & 1) != 0)
  {
    v4 = sub_24F91FE58();
    *(&v22 + 1) = v4;
    v23 = sub_24F17D9D0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v4);
    v6 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {

    v8._countAndFlagsBits = a1;
    v8._object = a2;
    Feature.init(rawValue:)(v8);
    if (v16 == 16)
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0;

      Feature.iOS.init(rawValue:)(&v16);
      v9 = v16;
      if (v16 == 11)
      {
        v10 = 0;
        v11 = 0;
        *&v22 = 0;
        v21 = 0uLL;
      }

      else
      {
        v11 = sub_24F26F8C0();
        LOBYTE(v21) = v9;
        v10 = &type metadata for Feature.iOS;
      }

      *(&v22 + 1) = v10;
      v23 = v11;
      if (*(&v19 + 1))
      {
        sub_24F26F7E8(&v18);
      }
    }

    else
    {
      *(&v19 + 1) = &type metadata for Feature;
      v20 = sub_24EAEAC44();
      LOBYTE(v18) = v16;
      sub_24E612C80(&v18, &v21);
    }

    sub_24F26F850(&v21, &v16);
    if (v17)
    {
      sub_24E612C80(&v16, &v18);
    }

    else
    {

      v12 = sub_24F28B3E4();
      if (v12 == 5)
      {
        v13 = 0;
        v14 = 0;
        v18 = 0uLL;
        *&v19 = 0;
      }

      else
      {
        v15 = v12;
        v14 = sub_24EDA569C();
        LOBYTE(v18) = v15;
        v13 = &_s14descr2861AC041O5GamesON;
      }

      *(&v19 + 1) = v13;
      v20 = v14;
      if (v17)
      {
        sub_24F26F7E8(&v16);
      }
    }

    sub_24F26F7E8(&v21);
    v21 = v18;
    v22 = v19;
    v23 = v20;
    sub_24F26F850(&v21, &v16);
    if (v17)
    {
      sub_24E612C80(&v16, &v18);
      v6 = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(&v18);
      sub_24F26F7E8(&v21);
    }

    else
    {
      sub_24F26F7E8(&v16);
      sub_24F26F7E8(&v21);
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_24F26F7E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F26F850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F26F8C0()
{
  result = qword_27F23D270[0];
  if (!qword_27F23D270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23D270);
  }

  return result;
}

uint64_t sub_24F26F92C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v2 = sub_24F92A9E8();
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F92A758();
  v3 = v19[0];
  v4 = v19[0] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v5 = *(v4 + 8) >> 6;
  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_purchasingAction;
    }

    else
    {
      v6 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction;
    }

    v8 = *(a1 + *v6);
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v7 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_subscribedAction;
  }

  else
  {
    v7 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_unknownAction;
  }

  v8 = *(a1 + *v7);
  if (v8)
  {
LABEL_11:
    v10 = type metadata accessor for Action();
    v9 = sub_24F26FC54(&qword_27F216DE8, type metadata accessor for Action);
    goto LABEL_13;
  }

  v10 = 0;
  v9 = 0;
LABEL_13:
  v19[0] = v8;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = v10;
  v19[4] = v9;

  sub_24E7538CC(v19, &v15);
  if (v16)
  {
    sub_24E612C80(&v15, v18);
    type metadata accessor for ArcadeSubscriptionStateActionImplementation();
    swift_getWitnessTable();
    sub_24F1489C4(v18);
    v11 = sub_24E74EC40();
    swift_retain_n();
    v12 = sub_24F92BEF8();
    v16 = v11;
    v17 = MEMORY[0x277D225C0];
    *&v15 = v12;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_24EA418B4(v19);
    __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    sub_24EA418B4(&v15);
    type metadata accessor for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError();
    swift_getWitnessTable();
    v13 = swift_allocError();
    sub_24F92A9A8();

    sub_24EA418B4(v19);
  }

  return v2;
}

uint64_t sub_24F26FC54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProductNoRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v20);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  return v25;
}

uint64_t ProductNoRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v21);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  return v25;
}

uint64_t ProductNoRatings.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t ProductNoRatings.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductNoRatings()
{
  result = qword_27F23D378;
  if (!qword_27F23D378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F27023C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F2702BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AsymmetricalInsetRoundedRectangle()
{
  result = qword_27F23D388;
  if (!qword_27F23D388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F270378()
{
  result = sub_24F924258();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F2703F0()
{
  result = qword_27F23D398;
  if (!qword_27F23D398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D398);
  }

  return result;
}

CGFloat sub_24F270454(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = sub_24F923F78();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  if (!CGRectIsNull(v36))
  {
    v35 = a3;
    v37.origin.x = a5;
    v37.origin.y = a6;
    v37.size.width = a7;
    v37.size.height = a8;
    v38 = CGRectStandardize(v37);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v27 = a4;
    if (a2 != a4)
    {
      v28 = *MEMORY[0x277CDFA88];
      v29 = *(v17 + 104);
      v29(v22, v28, v16, a4);
      (v29)(v19, v28, v16);
      LOBYTE(v28) = sub_24F923F68();
      v30 = *(v17 + 8);
      v30(v19, v16);
      v30(v22, v16);
      if (v28)
      {
        v27 = a2;
      }

      else
      {
        v27 = a4;
      }
    }

    a5 = x + v27;
    v31 = width - (a2 + a4);
    v32 = height - (a1 + v35);
    v39.origin.x = x + v27;
    v39.origin.y = y + a1;
    v39.size.width = v31;
    v39.size.height = v32;
    if (CGRectGetWidth(v39) < 0.0)
    {
      return *MEMORY[0x277CBF398];
    }

    v40.origin.x = a5;
    v40.origin.y = y + a1;
    v40.size.width = v31;
    v40.size.height = v32;
    if (CGRectGetHeight(v40) < 0.0)
    {
      return *MEMORY[0x277CBF398];
    }
  }

  return a5;
}

double sub_24F2706B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_24F270454(*(v6 + *(a1 + 20)), *(v6 + *(a1 + 20) + 8), *(v6 + *(a1 + 20) + 16), *(v6 + *(a1 + 20) + 24), a3, a4, a5, a6);
  sub_24F924228();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

void (*sub_24F270718(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F2707A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F270970(&qword_27F215938);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F270820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F270970(&qword_27F215938);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F2708A0(uint64_t a1)
{
  v2 = sub_24F270970(&qword_27F215938);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24F270970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AsymmetricalInsetRoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24F2709B4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v5 = 200;
    v3 = &selRef_setIncludeFullRequestInHARLogging_;
    v2 = &selRef_setIncludeFullResponseInHARLogging_;
    v1 = a1 == 2;
  }

  else
  {
    v1 = 0;
    v2 = &selRef_setIncludeFullRequestInHARLogging_;
    v3 = &selRef_setIncludeFullResponseInHARLogging_;
    if (!a1)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v5 = 50;
  }

  v4 = v1;
  v6 = objc_opt_self();
  v1 = 1;
  [v6 setHARLoggingEnabled_];
  [v6 setHARLoggingItemLimit_];
LABEL_7:
  v7 = objc_opt_self();
  [v7 *v3];
  v8 = *v2;

  return [v7 v8];
}

uint64_t sub_24F270AC8()
{
  v0 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F9479A0;
  *(v1 + 32) = @"debug";
  *(v1 + 40) = @"convergence";
  *(v1 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v2 = @"debug";
  v3 = @"convergence";
  v4 = @"internal";
  v5 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v0, v5);

  if (IsAnyOf)
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = sub_24F92B098();
    v9 = [v7 BOOLForKey_];

    if (v9)
    {

      return 3;
    }
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
    goto LABEL_10;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
LABEL_9:

    return 2;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {
LABEL_10:

    return 2;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {
    goto LABEL_9;
  }

  v22 = sub_24F92B0D8();
  v24 = v23;
  if (v22 == sub_24F92B0D8() && v24 == v25)
  {

    return 1;
  }

  else
  {
    v26 = sub_24F92CE08();

    return v26 & 1;
  }
}

uint64_t MarketingIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  v4 = sub_24F9285B8();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v33 = a1;
  sub_24F928398();
  v16 = sub_24F928348();
  v34 = v11;
  v32[2] = v12;
  if (v17)
  {
    v38 = v16;
    v39 = v17;
    sub_24F92C7F8();
    v18 = *(v12 + 8);
    v18(v15, v11);
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v32[0] = v6;
    v20 = v11;
    v22 = v21;
    (*(v8 + 8))(v10, v7);
    v38 = v19;
    v39 = v22;
    sub_24F92C7F8();
    v18 = *(v12 + 8);
    v23 = v20;
    v6 = v32[0];
    v18(v15, v23);
  }

  type metadata accessor for MarketingItemRequestInfo();
  v24 = v33;
  sub_24F928398();
  v26 = v35;
  v25 = v36;
  v27 = v37;
  (*(v35 + 16))(v6, v37, v36);
  sub_24F27124C(&qword_27F23D3B8, type metadata accessor for MarketingItemRequestInfo);
  sub_24F929548();
  v28 = v38;
  if (v38)
  {
    (*(v26 + 8))(v27, v25);
    result = (v18)(v24, v34);
    *(v40 + 40) = v28;
  }

  else
  {
    v30 = sub_24F92AC38();
    sub_24F27124C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v31 = 0x4974736575716572;
    v31[1] = 0xEB000000006F666ELL;
    v31[2] = &type metadata for MarketingIntent;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v26 + 8))(v27, v25);
    v18(v24, v34);
    return sub_24E6585F8(v40);
  }

  return result;
}

uint64_t sub_24F27124C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 MarketingIntent.init(id:requestInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

JSValue __swiftcall MarketingIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_24E65864C(v2, v8);
  v7 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  result.super.isa = [v4 valueWithObject:*(v2 + 40) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_24F271448()
{
  result = qword_27F23D3C0;
  if (!qword_27F23D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D3C0);
  }

  return result;
}

uint64_t ProductMediaItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_24F91F6B8();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  type metadata accessor for Artwork();
  sub_24F928398();
  v43 = v6;
  v12 = *(v6 + 16);
  v12(v8, a2, v5);
  sub_24F27213C(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  v13 = v46[0];
  type metadata accessor for Video();
  sub_24F928398();
  v12(v8, a2, v5);
  sub_24F27213C(&qword_27F221590, 255, type metadata accessor for Video);
  sub_24F929548();
  v14 = v46[0];
  v38 = v13;
  if (v13 | v46[0])
  {
    v18 = v41;
    v17 = v42;
    v40 = v5;
    v19 = a2;
    v20 = v39;
    v21 = v47;
    sub_24F928398();
    v22 = sub_24F928348();
    if (v23)
    {
      v44 = v22;
      v45 = v23;
    }

    else
    {
      v24 = v21;
      v25 = v35;
      sub_24F91F6A8();
      v26 = sub_24F91F668();
      v28 = v27;
      v29 = v25;
      v21 = v24;
      (*(v36 + 8))(v29, v37);
      v44 = v26;
      v45 = v28;
    }

    sub_24F92C7F8();
    v30 = *(v18 + 8);
    v31 = v17;
    v30(v20, v17);
    v32 = v40;
    type metadata accessor for ProductMediaItem();
    v15 = swift_allocObject();
    ProductMediaItem.init(id:screenshot:video:)(v46, v38, v14);
    (*(v43 + 8))(v19, v32);
    v30(v21, v31);
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24F27213C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v16 = 0x68736E6565726373;
    v16[1] = 0xEA0000000000746FLL;
    v16[2] = v40;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D22530], v15);
    swift_willThrow();
    (*(v43 + 8))(a2, v5);
    (*(v41 + 8))(v47, v42);
  }

  return v15;
}

uint64_t sub_24F271A54()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v1 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t ProductMediaItem.__allocating_init(id:screenshot:video:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E9BBAA8(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t ProductMediaItem.init(id:screenshot:video:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E9BBAA8(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t ProductMediaItem.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t ProductMediaItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24F271E6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProductMediaItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F271E98()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    v2 = *(*v0 + 24);
    if (v2)
    {
      v1 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_24F271EFC()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24F271F6C()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit16ProductMediaItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5)
    {

      v6 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  v9 = (v7 | v8) == 0;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {

    if (sub_24F91F418())
    {
      v9 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v7 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v8 + OBJC_IVAR____TtC12GameStoreKit5Video_preview));
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_24F27213C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double Unactionable<>.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

Swift::Void __swiftcall TriggerPersistantStore.markTriggerIdsSeen(_:)(Swift::OpaquePointer a1)
{
  v4 = v2;
  v5 = v1;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  (*(v4 + 32))(v5, v4);
  sub_24F272380(a1._rawValue, v3, v10, v5, v4);
  (*(v4 + 40))(v5, v4);
  (*(v8 + 8))(v10, v7);
}

void sub_24F272380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a5 + 16);
    v14 = (a1 + 32);
    v19[1] = a5 + 8;
    do
    {
      v16 = *v14++;
      v15 = v16;
      v22 = v16;
      v13(&v22, a4, a5, v9);
      v17 = sub_24F91F648();
      v18 = (*(*(v17 - 8) + 48))(v11, 1, v17);
      sub_24E728998(v11);
      if (v18 == 1)
      {
        v21 = v15;
        (*(a5 + 8))(&v21, v20, a4, a5);
      }

      --v12;
    }

    while (v12);
  }
}

Swift::Void __swiftcall TriggerPersistantStore.markTriggersSeen(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  v2._rawValue = MEMORY[0x277D84F90];
  if (v1)
  {
    rawValue = MEMORY[0x277D84F90];
    sub_24F458DC8(0, v1, 0);
    v2._rawValue = rawValue;
    v4 = a1._rawValue + 32;
    do
    {
      sub_24E615E00(v4, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v6 + 8))(&v13, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v7 = v13;
      rawValue = v2._rawValue;
      v9 = *(v2._rawValue + 2);
      v8 = *(v2._rawValue + 3);
      if (v9 >= v8 >> 1)
      {
        sub_24F458DC8((v8 > 1), v9 + 1, 1);
        v2._rawValue = rawValue;
      }

      *(v2._rawValue + 2) = v9 + 1;
      *(v2._rawValue + v9 + 32) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  TriggerPersistantStore.markTriggerIdsSeen(_:)(v2);
}

Swift::Void __swiftcall TriggerPersistantStore.removeAllTriggers()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 32))();
  sub_24F27269C(v2, v4, v3);
  v5 = *(v3 + 40);

  v5(v4, v3);
}

uint64_t sub_24F27269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v10 = 0;
  v5(&v10);
  v9 = 1;
  (v5)(&v9, a2, a3);
  v8 = 2;
  (v5)(&v8, a2, a3);
  v7 = 3;
  return (v5)(&v7, a2, a3);
}

uint64_t TriggerPersistantStore.migrate(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24F272864(a2, a3);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 32))(v8, v9);
  sub_24F272C24(v7, a1);
  (*(v9 + 40))(v8, v9);

  (*(a3 + 32))(a2, a3);
  sub_24F27269C(v3, a2, a3);
  v10 = *(a3 + 40);

  return v10(a2, a3);
}

uint64_t sub_24F272864(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  v8 = sub_24F91F648();
  MEMORY[0x28223BE20](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v47 = v38 - v13;
  v14 = 0;
  v15 = *(a2 + 16);
  v48 = (v16 + 48);
  v49 = v15;
  v45 = (v16 + 16);
  v46 = (v16 + 32);
  v42 = v16 + 8;
  v44 = v16;
  v38[1] = v16 + 40;
  v17 = MEMORY[0x277D84F98];
  v40 = a2;
  v41 = a1;
  v38[2] = a2 + 16;
  v39 = v2;
  v43 = v10;
  while (1)
  {
    v18 = byte_2861C1FB8[v14 + 32];
    v51 = v18;
    v49(&v51, a1, a2, v12);
    if ((*v48)(v7, 1, v8) == 1)
    {
      sub_24E728998(v7);
      goto LABEL_3;
    }

    v19 = v47;
    v20 = *v46;
    v21 = v8;
    v22 = v7;
    (*v46)(v47, v7, v21);
    (*v45)(v10, v19, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v17;
    v25 = sub_24E76EAD8(v18);
    v26 = v17[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v17[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8B6648();
      }
    }

    else
    {
      sub_24E8A8AFC(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_24E76EAD8(v18);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    v7 = v22;
    v17 = v50;
    v8 = v21;
    if (v29)
    {
      v10 = v43;
      v32 = v44;
      (*(v44 + 40))(v50[7] + *(v44 + 72) * v25, v43, v21);
      (*(v32 + 8))(v47, v21);
    }

    else
    {
      v50[(v25 >> 6) + 8] |= 1 << v25;
      *(v17[6] + v25) = v18;
      v10 = v43;
      v33 = v44;
      v20((v17[7] + *(v44 + 72) * v25), v43, v21);
      (*(v33 + 8))(v47, v21);
      v34 = v17[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v17[2] = v36;
    }

    a2 = v40;
    a1 = v41;
LABEL_3:
    if (++v14 == 4)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F272C24(uint64_t a1, void *a2)
{
  v43 = a2;
  v47 = sub_24F91F648();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D3D8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = *(a1 + 64);
  v37 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v39 = v3 + 16;
  v40 = v3;
  v46 = (v3 + 32);
  v41 = a1;
  v42 = (v3 + 8);

  v16 = 0;
  v38 = v9;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v17 << 6);
      v23 = v40;
      v24 = *(*(v41 + 48) + v22);
      v25 = v45;
      v26 = v47;
      (*(v40 + 16))(v45, *(v41 + 56) + *(v40 + 72) * v22, v47);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D3E0);
      v28 = *(v27 + 48);
      v29 = v44;
      *v44 = v24;
      v20 = v29;
      (*(v23 + 32))(&v29[v28], v25, v26);
      (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
      v19 = v17;
      v9 = v38;
LABEL_13:
      sub_24F273098(v20, v9);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D3E0);
      if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
      {
      }

      v31 = *v9;
      v32 = v45;
      v33 = v47;
      (*v46)(v45, &v9[*(v30 + 48)], v47);
      v34 = v43[3];
      v35 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v34);
      v48 = v31;
      (*(v35 + 8))(&v48, v32, v34, v35);
      result = (*v42)(v32, v33);
      v16 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    v20 = v44;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D3E0);
        (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v37 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F273098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double OrderedSet.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OrderedSet.init(_:)(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_24F92B6E8();
  sub_24F92B6D8();
  sub_24F92AEA8();
  sub_24F92AE98();
}

uint64_t OrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24F92AEC8();
  v7 = v11;

  if (v7 == 1)
  {
    v8 = *(v4 + 16);
    v8(v6, a1, v3);
    v10 = sub_24F92B648();
    v11 = 0;
    sub_24F92AEA8();
    sub_24F92AED8();
    v8(v6, a1, v3);
    sub_24F92B6E8();
    sub_24F92B658();
  }

  return v7;
}

uint64_t OrderedSet.subscript.getter()
{

  sub_24F92B758();
}

uint64_t OrderedSet.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F92B608();
  result = sub_24F92AE08();
  a1[1] = result;
  return result;
}

uint64_t OrderedSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92B608();
  v10 = sub_24F92AE08();
  v20 = v9;
  v21 = v10;
  if (sub_24F92B648())
  {
    v17 = v7;
    v18 = a3;
    v11 = 0;
    while (1)
    {
      v12 = sub_24F92B628();
      sub_24F92B5D8();
      if (v12)
      {
        (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, a2);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_24F92C8D8();
        if (v17 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v6 + 16))(v8, &v19, a2);
        swift_unknownObjectRelease();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v9 = v20;
          v10 = v21;
          a3 = v18;
          goto LABEL_13;
        }
      }

      v14 = type metadata accessor for OrderedSet();
      OrderedSet.append(_:)(v8, v14);
      (*(v6 + 8))(v8, a2);
      ++v11;
      if (v13 == sub_24F92B648())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t OrderedSet.isEmpty.getter()
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  return sub_24F92BC58() & 1;
}

uint64_t OrderedSet.contents.getter()
{
  sub_24F274564();
}

uint64_t OrderedSet.removeFirst()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_24F92C4A8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92BCC8();
  v47 = v2;
  v41 = sub_24F92AEA8();
  sub_24F92AE58();
  v42 = v1;
  v12 = *(v1 + 8);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v35[1] = v3 + 16;
  v39 = v3;
  v40 = v12;
  v46 = (v3 + 32);
  v43 += 4;
  v44 = TupleTypeMetadata2 - 8;

  v19 = 0;
  v37 = v8;
  v38 = v5;
  v36 = v11;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v39;
      v25 = v40;
      v27 = v38;
      v28 = v47;
      (*(v39 + 16))(v38, *(v40 + 48) + *(v39 + 72) * v24, v47);
      v29 = *(*(v25 + 56) + 8 * v24);
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = *(v26 + 32);
      v5 = v27;
      v8 = v37;
      v31(v37, v5, v28);
      v32 = 0;
      *&v8[v30] = v29;
      v22 = v20;
      v11 = v36;
LABEL_13:
      v33 = *(TupleTypeMetadata2 - 8);
      (*(v33 + 56))(v8, v32, 1, TupleTypeMetadata2);
      (*v43)(v11, v8, v45);
      if ((*(v33 + 48))(v11, 1, TupleTypeMetadata2) == 1)
      {
      }

      v34 = *&v11[*(TupleTypeMetadata2 + 48)];
      result = (*v46)(v5, v11, v47);
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_20;
      }

      v48 = v34 - 1;
      v49 = 0;
      result = sub_24F92AED8();
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v16 = 0;
        v32 = 1;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.removeLast()()
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F92BCD8();
  sub_24F92AEA8();
  return sub_24F92AE58();
}

uint64_t == infix<A>(_:_:)()
{

  v0 = sub_24F92B718();

  return v0 & 1;
}

uint64_t sub_24F273D00@<X0>(uint64_t *a1@<X8>)
{
  result = OrderedSet.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t OrderedSet.endIndex.getter()
{

  v0 = sub_24F92B648();

  return v0;
}

void (*sub_24F273D6C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24F273E3C(v6, *a2, a3);
  return sub_24F273DF4;
}

void sub_24F273DF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_24F273E3C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  v6 = *(v5 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  a1[2] = v7;
  OrderedSet.subscript.getter();
  return sub_24F273F0C;
}

void sub_24F273F0C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_24F273F5C()
{
  swift_getWitnessTable();

  return sub_24F92BB68();
}

uint64_t sub_24F274054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

__n128 sub_24F2740DC@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_24F2740EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_24F274140()
{
  swift_getWitnessTable();
  v0 = sub_24F2748E0();

  return v0;
}

uint64_t sub_24F2741D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_24F274260(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_24F2742D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24F27435C()
{
  swift_getWitnessTable();

  return sub_24F92BB28();
}

uint64_t sub_24F2743E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t OrderedSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_24F92B6F8();
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FB920](a1, v4, v5, v7, v6, v8);
}

uint64_t OrderedSet.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_24F92D068();
  OrderedSet.hash(into:)(v4, a1);
  return sub_24F92D0B8();
}

uint64_t sub_24F274520(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  OrderedSet.hash(into:)(v4, a2);
  return sub_24F92D0B8();
}

uint64_t sub_24F2746F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F274730()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_24F92AF98();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_24F92BCF8();
  result = sub_24F92AF98();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F2747FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_24F92AF98();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PersonalizationTransparencyPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PersonalizationTransparencyPageIntent.makeValue(in:)(JSContext in)
{
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F274970()
{
  result = qword_27F23D468;
  if (!qword_27F23D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D468);
  }

  return result;
}

unint64_t sub_24F2749C8()
{
  result = qword_27F23D470;
  if (!qword_27F23D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D470);
  }

  return result;
}

unint64_t sub_24F274A20()
{
  result = qword_27F23D478;
  if (!qword_27F23D478)
  {
    type metadata accessor for PersonalizationTransparencyPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D478);
  }

  return result;
}

uint64_t SearchResults.facets.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_24E903680(v3);
}

uint64_t SearchResults.__allocating_init(results:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v73) = a7;
  LODWORD(v72) = a6;
  v69 = a1;
  v70 = a4;
  v77 = a14;
  v78 = a13;
  v74 = a12;
  v75 = a15;
  v79 = a11;
  v71 = a10;
  v67 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v20 - 8);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v76 = &v62 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v32 = *(a3 + 16);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_results) = v69;
  v33 = *(a3 + 24);
  v68 = a5;
  v69 = a2;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_message) = a2;
  v34 = v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
  *v34 = *a3;
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_selectedFacetOptions) = v70;
  sub_24E60169C(a5, v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isAutoPlayEnabled) = v72;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v73;
  v70 = a8;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_transparencyLink) = a8;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokens) = v67;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchQueries) = v71;
  sub_24E60169C(v78, v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68);
  v35 = v75;
  sub_24E60169C(v77, v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
  v36 = *(v28 + 16);
  v36(v30, v79, v27);
  v72 = a16;
  sub_24E60169C(a16, v26, &qword_27F2218B0);
  *(v31 + 16) = v35;
  v73 = v30;
  v36((v31 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v30, v27);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v74;
  v71 = v26;
  v37 = v76;
  sub_24E60169C(v26, v76, &qword_27F2218B0);
  v38 = sub_24F9285B8();
  v67 = *(v38 - 8);
  v39 = *(v67 + 48);
  if (v39(v37, 1, v38) == 1)
  {
    sub_24E601704(v72, &qword_27F2218B0);
    sub_24E601704(v77, &qword_27F213E68);
    sub_24E601704(v78, &qword_27F213E68);
    v40 = *(v28 + 8);
    v40(v79, v27);
    sub_24E601704(v68, &qword_27F2129B0);
    sub_24E601704(v71, &qword_27F2218B0);
    v40(v73, v27);
    v41 = v37;
  }

  else
  {
    v63 = v39;
    v65 = v28;
    v42 = v68;
    v43 = qword_27F2105F0;

    if (v43 != -1)
    {
      swift_once();
    }

    v64 = v27;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v44, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v45 = v80;
    v46 = v42;
    v47 = v67;
    if (v80)
    {
    }

    v48 = *(v47 + 8);
    v48(v76, v38);
    v49 = v79;
    if (!v45)
    {

      sub_24E601704(v72, &qword_27F2218B0);
      sub_24E601704(v77, &qword_27F213E68);
      sub_24E601704(v78, &qword_27F213E68);
      v55 = *(v65 + 8);
      v56 = v49;
      v57 = v64;
      v55(v56, v64);
      sub_24E601704(v46, &qword_27F2129B0);
      sub_24E601704(v71, &qword_27F2218B0);
      v55(v73, v57);
      return v31;
    }

    v50 = v71;
    v51 = v66;
    sub_24E60169C(v71, v66, &qword_27F2218B0);
    if (v63(v51, 1, v38) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v72, &qword_27F2218B0);
      sub_24E601704(v77, &qword_27F213E68);
      sub_24E601704(v78, &qword_27F213E68);
      v58 = *(v65 + 8);
      v59 = v49;
      v60 = v64;
      v58(v59, v64);
      sub_24E601704(v46, &qword_27F2129B0);
      sub_24E601704(v50, &qword_27F2218B0);
      v58(v73, v60);
      v48(v51, v38);
      return v31;
    }

    sub_24E601704(v72, &qword_27F2218B0);
    sub_24E601704(v77, &qword_27F213E68);
    sub_24E601704(v78, &qword_27F213E68);
    v52 = *(v65 + 8);
    v53 = v49;
    v54 = v64;
    v52(v53, v64);
    sub_24E601704(v46, &qword_27F2129B0);
    sub_24E601704(v50, &qword_27F2218B0);
    v52(v73, v54);
    v41 = v51;
  }

  sub_24E601704(v41, &qword_27F2218B0);
  return v31;
}

uint64_t SearchResults.init(results:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  LODWORD(v74) = a7;
  LODWORD(v73) = a6;
  v72 = a4;
  v77 = a5;
  v78 = a14;
  v75 = a15;
  v76 = a12;
  v79 = a11;
  v69 = a9;
  v70 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v71 = &v62 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v29 = sub_24F928818();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a3 + 16);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_results) = a1;
  v34 = *(a3 + 24);
  v68 = a2;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_message) = a2;
  v35 = v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
  *v35 = *a3;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_selectedFacetOptions) = v72;
  v37 = v36;
  sub_24E60169C(v77, v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isAutoPlayEnabled) = v73;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v74;
  v72 = a8;
  v73 = a13;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_transparencyLink) = a8;
  v38 = v70;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokens) = v69;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchQueries) = v38;
  sub_24E60169C(a13, v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E60169C(v78, v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
  v39 = *(v30 + 16);
  v39(v32, v79, v37);
  sub_24E60169C(a16, v28, &qword_27F2218B0);
  *(v16 + 16) = v75;
  v74 = v37;
  v39((v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v32, v37);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v76;
  v40 = v28;
  v41 = v28;
  v42 = v71;
  sub_24E60169C(v41, v71, &qword_27F2218B0);
  v43 = sub_24F9285B8();
  v70 = *(v43 - 8);
  v44 = *(v70 + 48);
  if (v44(v42, 1, v43) == 1)
  {
    sub_24E601704(a16, &qword_27F2218B0);
    sub_24E601704(v78, &qword_27F213E68);
    sub_24E601704(v73, &qword_27F213E68);
    v45 = *(v30 + 8);
    v46 = v74;
    v45(v79, v74);
    sub_24E601704(v77, &qword_27F2129B0);
    sub_24E601704(v40, &qword_27F2218B0);
    v45(v32, v46);
    v47 = v42;
  }

  else
  {
    v63 = v44;
    v64 = a16;
    v65 = v32;
    v66 = v30;
    v69 = v40;
    v48 = qword_27F2105F0;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v49, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v50 = v80;
    v51 = v70;
    if (v80)
    {
    }

    v52 = *(v51 + 8);
    v52(v42, v43);
    if (!v50)
    {

      sub_24E601704(v64, &qword_27F2218B0);
      sub_24E601704(v78, &qword_27F213E68);
      sub_24E601704(v73, &qword_27F213E68);
      v57 = *(v66 + 8);
      v58 = v74;
      v57(v79, v74);
      sub_24E601704(v77, &qword_27F2129B0);
      sub_24E601704(v69, &qword_27F2218B0);
      v57(v65, v58);
      return v17;
    }

    v53 = v67;
    sub_24E60169C(v69, v67, &qword_27F2218B0);
    if (v63(v53, 1, v43) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v64, &qword_27F2218B0);
      sub_24E601704(v78, &qword_27F213E68);
      sub_24E601704(v73, &qword_27F213E68);
      v59 = *(v66 + 8);
      v60 = v74;
      v59(v79, v74);
      sub_24E601704(v77, &qword_27F2129B0);
      sub_24E601704(v69, &qword_27F2218B0);
      v59(v65, v60);
      v52(v53, v43);
      return v17;
    }

    v54 = v53;
    sub_24E601704(v64, &qword_27F2218B0);
    sub_24E601704(v78, &qword_27F213E68);
    sub_24E601704(v73, &qword_27F213E68);
    v55 = *(v66 + 8);
    v56 = v74;
    v55(v79, v74);
    sub_24E601704(v77, &qword_27F2129B0);
    sub_24E601704(v69, &qword_27F2218B0);
    v55(v65, v56);
    v47 = v54;
  }

  sub_24E601704(v47, &qword_27F2218B0);
  return v17;
}

void (*SearchResults.init(deserializing:using:)(void (*a1)(void, void), uint64_t a2))(void, void)
{
  v3 = v2;
  v114 = v2;
  v115 = a2;
  v109 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v95 - v8;
  v116 = sub_24F9285B8();
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = &v95 - v11;
  MEMORY[0x28223BE20](v12);
  v119 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v95 - v17;
  v19 = sub_24F928388();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v101 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v98 = &v95 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - v30;
  v32 = sub_24F92AC28();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v111 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v36 = v33;
  v110 = v20;
  v37 = v20 + 8;
  v38 = *(v20 + 8);
  v38(v31, v19);
  if ((*(v36 + 48))(v18, 1, v32) == 1)
  {
    sub_24E601704(v18, &qword_27F2213B0);
    v39 = sub_24F92AC38();
    sub_24F276E70(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v40 = 0x73746C75736572;
    v41 = v109;
    v40[1] = 0xE700000000000000;
    v40[2] = v41;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v113 + 8))(v115, v116);
    v38(v35, v19);
    type metadata accessor for SearchResults();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v102 = v38;
    v103 = v37;
    v42 = v114;
    v106 = v19;
    v108 = v35;
    (*(v36 + 32))(v111, v18, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v100 = v36;
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D84F90];
    *(v43 + 16) = MEMORY[0x277D84F90];
    *&v117 = v43;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v45, qword_27F22D8D8);
    v46 = v119;
    sub_24F928528();

    v47 = v100;
    v48 = v96;
    (*(v100 + 16))(v96, v111, v32);
    (*(v47 + 56))(v48, 0, 1, v32);
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s12GameStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v48, v46);
    sub_24E601704(v48, &qword_27F2213B0);
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v50 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    else
    {
      v50 = v44;
    }

    *(v42 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_results) = v50;
    type metadata accessor for SearchResultsMessage();
    v51 = v28;
    sub_24F928398();
    v52 = v113 + 16;
    v53 = *(v113 + 16);
    v95 = v32;
    v54 = v112;
    v55 = v116;
    (v53)(v112, v46, v116);
    v96 = v53;
    v109 = v52;
    sub_24F276E70(&qword_27F2230F8, type metadata accessor for SearchResultsMessage);
    sub_24F929548();
    v56 = v114;
    *(v114 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_message) = v117;
    sub_24F928398();
    (v53)(v54, v46, v55);
    sub_24E90362C();
    sub_24F929548();
    v57 = v118;
    v58 = BYTE8(v118);
    v59 = v56;
    v60 = v56 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
    *v60 = v117;
    *(v60 + 16) = v57;
    *(v60 + 24) = v58;
    v61 = v99;
    sub_24F928398();
    v62 = v106;
    (*(v110 + 56))(v61, 0, 1, v106);
    v63 = *(v60 + 8);
    v64 = *(v60 + 16);
    v65 = *(v60 + 24);
    *&v117 = *v60;
    *(&v117 + 1) = v63;
    *&v118 = v64;
    BYTE8(v118) = v65;
    sub_24E903680(v117);
    v66 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v61, &v117, v115);
    sub_24E9036C4(v117);
    sub_24E601704(v61, &qword_27F212F48);
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_selectedFacetOptions) = v66;
    sub_24F928398();
    sub_24F928368();
    v67 = v102;
    v102(v51, v62);
    v68 = (v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage);
    v69 = v118;
    *v68 = v117;
    v68[1] = v69;
    v70 = v97;
    sub_24F928398();
    LOBYTE(v66) = sub_24F928278();
    v67(v70, v62);
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isAutoPlayEnabled) = v66 & 1;
    v71 = v98;
    sub_24F928398();
    LOBYTE(v66) = sub_24F928278();
    v67(v71, v62);
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v66 & 1;
    type metadata accessor for LinkableText();
    sub_24F928398();
    v72 = v119;
    v73 = v116;
    v74 = v96;
    (v96)(v112, v119, v116);
    sub_24F276E70(&qword_27F21C360, type metadata accessor for LinkableText);
    sub_24F929548();
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_transparencyLink) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120);
    sub_24F928398();
    v75 = v112;
    (v74)(v112, v72, v73);
    v76 = v74;
    sub_24ECDE448();
    sub_24F929548();
    v77 = v59;
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokens) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D828);
    v78 = v108;
    sub_24F928398();
    (v76)(v75, v119, v73);
    sub_24ECDE544();
    v79 = v75;
    sub_24F929548();
    *(v77 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchQueries) = v117;
    sub_24F929608();
    v80 = v78;
    sub_24F928398();
    v81 = v79;
    v82 = v79;
    v83 = v115;
    v84 = v96;
    (v96)(v82, v115, v73);
    v85 = v105;
    sub_24F929548();
    v86 = v114;
    sub_24E65E0D4(v85, v114 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics);
    sub_24F928398();
    v87 = v116;
    (v84)(v81, v83, v116);
    v88 = v106;
    sub_24F929548();
    sub_24E65E0D4(v85, v86 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics);
    v89 = v101;
    (*(v110 + 16))(v101, v80, v88);
    v90 = v104;
    (v84)(v104, v83, v87);
    v91 = v107;
    v92 = BasePage.init(deserializing:using:)(v89, v90);
    if (v91)
    {
      v35 = *(v113 + 8);
      v35(v83, v87);
      v102(v80, v88);
      v35(v119, v87);
    }

    else
    {
      v35 = v92;
      v93 = *(v113 + 8);
      v93(v83, v87);
      v102(v80, v88);
      v93(v119, v87);
    }

    (*(v100 + 8))(v111, v95);
  }

  return v35;
}

uint64_t type metadata accessor for SearchResults()
{
  result = qword_27F23D480;
  if (!qword_27F23D480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F276BB4()
{

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
}

uint64_t SearchResults.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t SearchResults.__deallocating_deinit()
{
  SearchResults.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F276E70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F276EC0()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ImpressionsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v20 = a1;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v10, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929AC8();
  if (v18)
  {
    v17 = v1;
    swift_getObjectType();
    v16 = v2;
    (*(v7 + 104))(v9, *MEMORY[0x277D22230], v6);
    sub_24F91F638();
    v11 = sub_24F9296A8();
    (*(v3 + 8))(v5, v16);
    (*(v7 + 8))(v9, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
    v18 = v11;
    v12 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v13 = v17;
    sub_24F929A28();
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v19 = MEMORY[0x277D83B88];
      v18 = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
      sub_24F929A28();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t FastImpressionsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  v2 = sub_24F91F648();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_24F92A008();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v11, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929AC8();
  if (v28 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D4A0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v30 + 1))
    {
      sub_24E612C80(&v29, v32);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v12 = sub_24F929A18();
      if (*(v12 + 16))
      {
        v13 = sub_24E76D644(0x726556746E657665, 0xEC0000006E6F6973);
        v14 = v27;
        if (v15)
        {
          sub_24E643A9C(*(v12 + 56) + 32 * v13, &v29);

          if (swift_dynamicCast())
          {
            v16 = v28;
LABEL_17:
            v25 = v16;
            sub_24F277AC4(v16, v7);
            v19 = *(v14 + 48);
            if (v19(v7, 1, v8) == 1)
            {
              (*(v14 + 104))(v10, *MEMORY[0x277D22230], v8);
              if (v19(v7, 1, v8) != 1)
              {
                sub_24E601704(v7, &qword_27F23D490);
              }
            }

            else
            {
              (*(v14 + 32))(v10, v7, v8);
            }

            v20 = v33;
            v21 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            sub_24F91F638();
            v22 = (*(v21 + 8))(v10, v4, v20, v21);
            (*(v26 + 8))(v4, v2);
            *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
            *&v29 = v22;
            __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
            v23 = v35;
            sub_24F929A28();
            if (!v23)
            {
              __swift_destroy_boxed_opaque_existential_1(&v29);
              *(&v30 + 1) = MEMORY[0x277D83B88];
              *&v29 = v25;
              __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
              sub_24F929A28();
            }

            (*(v27 + 8))(v10, v8);
            __swift_destroy_boxed_opaque_existential_1(&v29);
            return __swift_destroy_boxed_opaque_existential_1(v32);
          }
        }

        else
        {
        }

        v16 = 4;
        goto LABEL_17;
      }

      v16 = 4;
      v14 = v27;
      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  sub_24E601704(&v29, &qword_27F23D498);
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v17 = sub_24F92AAE8();
  __swift_project_value_buffer(v17, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();
}

uint64_t sub_24F277AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F92A008();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 3) >= 3)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&unk_27968F390 + a1 - 3);
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t SnapshotImpressionsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v20 = a1;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v10, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929AC8();
  if (v18)
  {
    v17 = v1;
    swift_getObjectType();
    v16 = v2;
    (*(v7 + 104))(v9, *MEMORY[0x277D22230], v6);
    sub_24F91F638();
    v11 = sub_24F929698();
    (*(v3 + 8))(v5, v16);
    (*(v7 + 8))(v9, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
    v18 = v11;
    v12 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v13 = v17;
    sub_24F929A28();
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v19 = MEMORY[0x277D83B88];
      v18 = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
      sub_24F929A28();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t Lockup.numberOfPurchasedChildren(using:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 304);
  if (!v3)
  {
    return 0;
  }

  v26 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_27:
    v5 = sub_24F92C738();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v6, v3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v7 = *(v3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = v26;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        ObjectType = swift_getObjectType();
        v10 = *(v7 + 24);
        *&v20[0] = *(v7 + 16);
        *(&v20[0] + 1) = v10;
        v11 = *(a2 + 56);

        v11(v20, ObjectType, a2);
        v13 = v12;

        v14 = swift_getObjectType();
        (*(v13 + 16))(v20, v14, v13);
        swift_unknownObjectRelease();
        v22 = v20[0];
        v23 = v20[1];
        v24 = v20[2];
        v25 = v21;
        if (v21 >> 60)
        {
          if (v21 >> 60 != 8 || ((v15 = *(&v24 + 1) | *(&v25 + 1), v16 = *(&v23 + 1) | v23 | *(&v22 + 1), v21 != 0x8000000000000000) || v15 | *&v20[0] | v24 | v16) && (v21 != 0x8000000000000000 || *&v20[0] != 4 || v15 | v24 | v16))
          {
            sub_24E88D2AC(&v22);
LABEL_19:
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            goto LABEL_6;
          }
        }

        else if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_6:
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if ((v17 & 0x4000000000000000) != 0)
  {
LABEL_33:
    v18 = sub_24F92C738();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  return v18;
}

uint64_t PrivacyTypeLayout.Metrics.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t PrivacyTypeLayout.Metrics.iconTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return sub_24E612C80(a1, v1 + 8);
}

uint64_t PrivacyTypeLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t PrivacyTypeLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t PrivacyTypeLayout.Metrics.minimumCategoriesColumnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 232);

  return sub_24E612C80(a1, v1 + 232);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 272);

  return sub_24E612C80(a1, v1 + 272);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 312);

  return sub_24E612C80(a1, v1 + 312);
}

uint64_t PrivacyTypeLayout.Metrics.horizontalMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 352);

  return sub_24E612C80(a1, v1 + 352);
}

uint64_t PrivacyTypeLayout.Metrics.compactBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 392);

  return sub_24E612C80(a1, v1 + 392);
}

uint64_t PrivacyTypeLayout.Metrics.regularBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 432);

  return sub_24E612C80(a1, v1 + 432);
}

uint64_t PrivacyTypeLayout.Metrics.init(horizontalAlignment:iconTopSpace:iconSize:iconBaseline:titleTopSpace:detailTopSpace:maxTextWidth:minimumCategoriesColumnWidth:categoriesTopSpace:categoriesHorizontalPadding:categoriesBottomSpace:horizontalMargin:compactBottomMargin:regularBottomMargin:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __int128 *a13, __int128 *a14, __int128 *a15, __int128 *a16)
{
  v26 = *a1;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0;
  *(a9 + 152) = 0u;
  *a9 = v26;
  sub_24E612C80(a2, a9 + 8);
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  sub_24E612C80(a3, a9 + 72);
  sub_24E612C80(a4, a9 + 112);
  sub_24EA63A70(a5, a9 + 152);
  sub_24E612C80(a6, a9 + 192);
  sub_24E612C80(a7, a9 + 232);
  sub_24E612C80(a8, a9 + 272);
  sub_24E612C80(a13, a9 + 312);
  sub_24E612C80(a14, a9 + 352);
  sub_24E612C80(a15, a9 + 392);

  return sub_24E612C80(a16, a9 + 432);
}

uint64_t PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v19 = *a11;
  memcpy(a9, __src, 0x1D8uLL);
  v20 = *(a2 + 16);
  *(a9 + 472) = *a2;
  *(a9 + 488) = v20;
  *(a9 + 504) = *(a2 + 32);
  v21 = *(a3 + 16);
  *(a9 + 512) = *a3;
  *(a9 + 528) = v21;
  *(a9 + 544) = *(a3 + 32);
  *(a9 + 584) = *(a4 + 32);
  v22 = *(a4 + 16);
  *(a9 + 552) = *a4;
  *(a9 + 568) = v22;
  v23 = *(a5 + 16);
  *(a9 + 592) = *a5;
  *(a9 + 608) = v23;
  *(a9 + 624) = *(a5 + 32);
  sub_24E612C80(a6, a9 + 632);
  sub_24E612C80(a7, a9 + 672);
  result = sub_24E612C80(a8, a9 + 712);
  *(a9 + 752) = a10;
  *(a9 + 760) = v19;
  return result;
}

double static PrivacyTypeLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_24F9225E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_24F922618();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x277D22788], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F942000;
  sub_24E615E00(a1 + 72, v18);
  v12 = sub_24F9229A8();
  v13 = MEMORY[0x277D228E0];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 112, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1 + 232, v18);
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 112));
  sub_24F9229B8();
  sub_24E615E00(a1 + 312, v18);
  *(v11 + 176) = v12;
  *(v11 + 184) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + 432, v18);
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 192));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

void PrivacyTypeLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 760))
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      v41 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1((v2 + 352), *(v2 + 376));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v7 + 8))(v9, v6);
  v41 = 1;
LABEL_6:
  sub_24F92C228();
  sub_24E60169C(v2 + 152, &v50, &qword_27F22F780);
  if (*(&v51 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v11 = v7;
    v12 = *(v7 + 8);
    v13 = v6;
    v12(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    v11 = v7;
    v13 = v6;
    sub_24E601704(&v50, &qword_27F22F780);
  }

  sub_24E60169C(v2 + 592, &v50, &qword_27F229780);
  v42 = a2;
  if (*(&v51 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    v14 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(&v50);
    if ((v14 & 1) == 0)
    {
      v15 = [a1 traitCollection];
      sub_24F922D08();
    }
  }

  else
  {
    sub_24E601704(&v50, &qword_27F229780);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 1, v3[4]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16 = *(v11 + 8);
  v43 = v11 + 8;
  v16(v9, v13);
  v17 = v9;
  __swift_project_boxed_opaque_existential_1(v3 + 84, v3[87]);
  sub_24F922288();
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
  sub_24F9223C8();
  *&v50 = v19;
  sub_24F922398();
  __swift_project_boxed_opaque_existential_1(v3 + 89, v3[92]);
  sub_24F922288();
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v3 + 14, v3[17]);
  sub_24F9223C8();
  *&v50 = v21;
  sub_24F922398();
  v45 = v3[94];
  if (!*(v45 + 16))
  {
    if (!v41)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(v3 + 29, v3[32]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v9, v13);
  v22 = _s12GameStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v3, v42);
  __swift_project_boxed_opaque_existential_1(v3 + 34, v3[37]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v9, v13);
  if (__OFSUB__(v22, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v22 < 0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v40 = v13;
  v39 = v3;
  v38 = v9;
  v37 = v16;
  if (v22)
  {
    v23 = sub_24F92B618();
    *(v23 + 16) = v22;
    bzero((v23 + 32), 8 * v22);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = 0;
  v44 = v45 + 32;
  v25 = *(v45 + 16);
  while (1)
  {
    v26 = 0uLL;
    v27 = v25;
    v28 = 0uLL;
    v29 = 0uLL;
    if (v24 != v25)
    {
      if (v24 >= *(v45 + 16))
      {
        goto LABEL_40;
      }

      v27 = v24 + 1;
      *&v47 = v24;
      sub_24E615E00(v44 + 40 * v24, &v47 + 8);
      v26 = v47;
      v28 = v48;
      v29 = v49;
    }

    v50 = v26;
    v51 = v28;
    v52 = v29;
    if (!v29)
    {
      break;
    }

    v46 = v26;
    sub_24E612C80((&v50 + 8), &v47);
    if (!v22)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v30 = v46 % v22;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    sub_24F922288();
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if (v30 >= *(v23 + 16))
    {
      goto LABEL_39;
    }

    *(v23 + 32 + 8 * v30) = v31 + *(v23 + 32 + 8 * v30);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v24 = v27;
  }

  sub_24ED6EC84(v23);

  v13 = v40;
  v3 = v39;
  v17 = v38;
  v16 = v37;
  if (!v41)
  {
    goto LABEL_32;
  }

LABEL_31:
  __swift_project_boxed_opaque_existential_1(v3 + 39, v3[42]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v17, v13);
LABEL_32:
  v32 = [a1 traitCollection];
  v33 = sub_24F92BF78();

  v34 = 49;
  if (v33)
  {
    v34 = 54;
  }

  v35 = 52;
  if (v33)
  {
    v35 = 57;
  }

  __swift_project_boxed_opaque_existential_1(&v3[v34], v3[v35]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v17, v13);
}

void PrivacyTypeLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v131 = a6;
  v130 = a4;
  v129 = a3;
  v118[1] = a2;
  v123 = sub_24F922CE8();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  *&v124 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = COERCE_DOUBLE(sub_24F922D18());
  v128 = *(*&v132 - 8);
  MEMORY[0x28223BE20](*&v132);
  v12 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = v6[760];
  v127 = a1;
  if (v15)
  {
    v17 = sub_24F92CE08();

    if ((v17 & 1) == 0)
    {
      v18 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1(v7 + 44, *(v7 + 47));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v14 + 8))(v16, v13);
  v18 = 1;
LABEL_6:
  sub_24F92C1C8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E60169C((v7 + 152), &v137, &qword_27F22F780);
  v121 = v26;
  v126 = v20;
  v120 = v22;
  v125 = v24;
  if (*(&v138 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    sub_24E8ED7D8();
    v27 = v127;
    sub_24F9223A8();
    v29 = v28;
    (*(v14 + 8))(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v137);
    v140.origin.x = v20;
    v140.origin.y = v22;
    v140.size.width = v24;
    v140.size.height = v26;
    Width = CGRectGetWidth(v140);
    if (v29 < Width)
    {
      Width = v29;
    }

    *&v133 = Width;
  }

  else
  {
    sub_24E601704(&v137, &qword_27F22F780);
    *&v133 = v24;
    v27 = v127;
  }

  v31 = [v27 traitCollection];
  v32 = sub_24F92BF78();

  v33 = 392;
  if (v32)
  {
    v33 = 432;
  }

  v34 = 416;
  if (v32)
  {
    v34 = 456;
  }

  __swift_project_boxed_opaque_existential_1(&v7[v33], *&v7[v34]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v35 = *(v14 + 8);
  v35(v16, v13);
  v36 = v129;
  v141.origin.x = v129;
  v37 = v130;
  v141.origin.y = v130;
  v141.size.width = a5;
  v38 = v131;
  v141.size.height = v131;
  CGRectGetMinX(v141);
  v142.origin.x = v36;
  v142.origin.y = v37;
  v142.size.width = a5;
  v142.size.height = v38;
  CGRectGetMinY(v142);
  v143.origin.x = v36;
  v143.origin.y = v37;
  v143.size.width = a5;
  v143.size.height = v38;
  CGRectGetWidth(v143);
  v144.origin.x = v36;
  v144.origin.y = v37;
  v144.size.width = a5;
  v144.size.height = v38;
  CGRectGetHeight(v144);
  sub_24E60169C((v7 + 472), &v137, &qword_27F229780);
  if (*(&v138 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v137);
  }

  else
  {
    sub_24E601704(&v137, &qword_27F229780);
  }

  sub_24E60169C((v7 + 512), &v137, &qword_27F229780);
  v39 = v125;
  if (*(&v138 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v137);
  }

  else
  {
    sub_24E601704(&v137, &qword_27F229780);
  }

  v40 = v126;
  sub_24E60169C((v7 + 552), &v137, &qword_27F229780);
  if (*(&v138 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v137);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_24E601704(&v137, &qword_27F229780);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  sub_24E60169C((v7 + 592), &v134, &qword_27F229780);
  if (*(&v135 + 1))
  {
    sub_24E612C80(&v134, &v137);
    (*(*&v122 + 104))(COERCE_DOUBLE(*&v124), *MEMORY[0x277D22A08], v123);
    *(&v135 + 1) = sub_24F922418();
    *&v136 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v134);
    sub_24F922408();
    sub_24F922CF8();
    __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    sub_24F922CD8();
    sub_24F922228();
    (*(*&v128 + 8))(v12, COERCE_DOUBLE(*&v132));
    __swift_destroy_boxed_opaque_existential_1(&v137);
  }

  else
  {
    sub_24E601704(&v134, &qword_27F229780);
  }

LABEL_28:
  v128 = a5;
  v145.origin.x = v40;
  v41 = v120;
  v145.origin.y = v120;
  v145.size.width = v39;
  v42 = v121;
  v145.size.height = v121;
  MinY = CGRectGetMinY(v145);
  __swift_project_boxed_opaque_existential_1(v7 + 1, *(v7 + 4));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v45 = v44;
  v35(v16, v13);
  v46 = *(v7 + 6);
  v47 = *(v7 + 7);
  v132 = *(v7 + 8);
  v48 = MinY + v45 - v47 + v132;
  v49 = *v7;
  v146.origin.x = v40;
  v146.origin.y = v41;
  v146.size.width = v39;
  v146.size.height = v42;
  MinX = CGRectGetMinX(v146);
  if (v49 == 1)
  {
    v147.origin.x = v40;
    v147.origin.y = v41;
    v147.size.width = v39;
    v147.size.height = v121;
    MinX = MinX + (CGRectGetWidth(v147) - v46) * 0.5;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 79, *(v7 + 82));
  v51 = v40;
  sub_24F92C1D8();
  sub_24F922228();
  v148.origin.x = MinX;
  v148.origin.y = v48;
  v148.size.width = v46;
  v148.size.height = v47;
  v124 = CGRectGetMaxY(v148) - v132;
  v52 = *(v7 + 87);
  v132 = *&v7;
  __swift_project_boxed_opaque_existential_1(v7 + 84, v52);
  v53 = *&v133;
  v54 = v121;
  sub_24F922288();
  v56 = v55;
  v58 = v57;
  __swift_project_boxed_opaque_existential_1((*&v132 + 72), *(*&v132 + 96));
  sub_24F9223C8();
  v60 = v59;
  v61 = v51;
  v149.origin.x = v51;
  v62 = v41;
  v149.origin.y = v41;
  v149.size.width = v53;
  v149.size.height = v54;
  v63 = CGRectGetMinX(v149);
  v64 = v124 + v60;
  v150.origin.x = v61;
  v150.origin.y = v62;
  v150.size.width = v53;
  v150.size.height = v54;
  v65 = CGRectGetWidth(v150);
  __swift_project_boxed_opaque_existential_1((*&v132 + 672), *(*&v132 + 696));
  v66 = v128;
  sub_24F92C1D8();
  sub_24F922228();
  v151.origin.x = v63;
  v151.origin.y = v64;
  v151.size.width = v65;
  v151.size.height = v56;
  v124 = CGRectGetMaxY(v151) - v58;
  __swift_project_boxed_opaque_existential_1((*&v132 + 712), *(*&v132 + 736));
  sub_24F922288();
  v68 = v67;
  v70 = v69;
  __swift_project_boxed_opaque_existential_1((*&v132 + 112), *(*&v132 + 136));
  v123 = v70;
  v71 = v66;
  sub_24F9223C8();
  v73 = v72;
  v74 = v126;
  v152.origin.x = v126;
  v75 = v120;
  v152.origin.y = v120;
  v152.size.width = v53;
  v152.size.height = v54;
  v76 = CGRectGetMinX(v152);
  v77 = v124 + v73;
  v153.origin.x = v74;
  v153.origin.y = v75;
  v153.size.width = v53;
  v153.size.height = v54;
  v78 = CGRectGetWidth(v153);
  __swift_project_boxed_opaque_existential_1((*&v132 + 712), *(*&v132 + 736));
  sub_24F92C1D8();
  v79 = v132;
  sub_24F922228();
  v154.origin.x = v76;
  v154.origin.y = v77;
  v154.size.width = v78;
  v154.size.height = v68;
  MaxY = CGRectGetMaxY(v154);
  if (!*(*(*&v79 + 752) + 16))
  {
LABEL_65:
    sub_24F922128();
    return;
  }

  v81 = MaxY;
  v124 = *(*&v79 + 752);
  __swift_project_boxed_opaque_existential_1((*&v79 + 232), *(*&v79 + 256));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v83 = v82;
  v35(v16, v13);
  v84 = _s12GameStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(*&v79, v71);
  __swift_project_boxed_opaque_existential_1((*&v79 + 272), *(*&v79 + 296));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v86 = v85;
  v35(v16, v13);
  if (!__OFSUB__(v84, 1))
  {
    v122 = v83;
    *&v133 = v81;
    v119 = v86;
    v87 = floor((v125 - v86 * (v84 - 1)) / v84);
    v88 = v124;
    v89 = *(*&v124 + 16);
    if (v89)
    {
      v90 = *&v124 + 32;
      v91 = MEMORY[0x277D84F90];
      v92 = 0.0;
      v93 = v120;
      do
      {
        sub_24E615E00(v90, &v137);
        __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
        sub_24F922288();
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v101 = v100;
        __swift_destroy_boxed_opaque_existential_1(&v137);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_24E617C90(0, *(v91 + 2) + 1, 1, v91);
        }

        v103 = *(v91 + 2);
        v102 = *(v91 + 3);
        if (v103 >= v102 >> 1)
        {
          v91 = sub_24E617C90((v102 > 1), v103 + 1, 1, v91);
        }

        *(v91 + 2) = v103 + 1;
        v104 = &v91[32 * v103];
        *(v104 + 4) = v95;
        *(v104 + 5) = v97;
        *(v104 + 6) = v99;
        *(v104 + 7) = v101;
        if (v92 <= v95)
        {
          v92 = v95;
        }

        v90 += 40;
        --v89;
      }

      while (v89);
    }

    else
    {
      v91 = MEMORY[0x277D84F90];
      v93 = v120;
    }

    if (v84 < 0)
    {
      goto LABEL_74;
    }

    if (v84)
    {
      v105 = sub_24F92B618();
      *(v105 + 16) = v84;
      bzero((v105 + 32), 8 * v84);
    }

    else
    {
      v105 = MEMORY[0x277D84F90];
    }

    v106 = v121;
    v107 = v119;
    v108 = 0;
    v109 = *(*&v88 + 16);
    *&v119 = *&v88 + 32;
    v123 = (v91 + 32);
    v122 = v107 + v87;
    while (1)
    {
      v110 = 0uLL;
      v111 = v109;
      v112 = 0uLL;
      v113 = 0uLL;
      if (v108 != v109)
      {
        if (v108 >= *(*&v88 + 16))
        {
          goto LABEL_72;
        }

        v111 = v108 + 1;
        *&v134 = v108;
        sub_24E615E00(*&v119 + 40 * v108, &v134 + 8);
        v110 = v134;
        v112 = v135;
        v113 = v136;
      }

      v137 = v110;
      v138 = v112;
      v139 = v113;
      if (!v113)
      {

        goto LABEL_65;
      }

      v133 = v110;
      sub_24E612C80((&v137 + 8), &v134);
      if (!v84)
      {
        break;
      }

      v114 = v133 % v84;
      if (v133 % v84 < 0)
      {
        goto LABEL_67;
      }

      if (v114 >= *(v105 + 16))
      {
        goto LABEL_68;
      }

      if ((v133 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v133 >= *(v91 + 2))
      {
        goto LABEL_70;
      }

      v115 = *(v123 + 32 * v133 + 8);
      if ((*(*&v88 + 16) == 1 || v84 == 1) && **&v132 == 1)
      {
        v116 = v126;
        v155.origin.x = v126;
        v155.origin.y = v120;
        v117 = v125;
        v155.size.width = v125;
        v155.size.height = v121;
        CGRectGetMinX(v155);
        v156.origin.x = v116;
        v93 = v120;
        v156.origin.y = v120;
        v156.size.width = v117;
        v106 = v121;
        v156.size.height = v121;
        CGRectGetWidth(v156);
      }

      else
      {
        v157.origin.x = v126;
        v157.origin.y = v93;
        v157.size.width = v125;
        v157.size.height = v106;
        CGRectGetMinX(v157);
      }

      __swift_project_boxed_opaque_existential_1(&v134, *(&v135 + 1));
      sub_24F92C1D8();
      sub_24F922228();
      if (v114 >= *(v105 + 16))
      {
        goto LABEL_71;
      }

      *(v105 + 32 + 8 * v114) = v115 + *(v105 + 32 + 8 * v114);
      __swift_destroy_boxed_opaque_existential_1(&v134);
      v108 = v111;
      v88 = v124;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t _s12GameStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((a1 + 192), *(a1 + 216));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v9 = v8;
  v10 = *(v5 + 8);
  v10(v7, v4);
  __swift_project_boxed_opaque_existential_1((a1 + 272), *(a1 + 296));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = v11;
  v10(v7, v4);
  __swift_project_boxed_opaque_existential_1((a1 + 352), *(a1 + 376));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v14 = v13;
  result = (v10)(v7, v4);
  v16 = floor((v12 + a2 - (v14 + v14)) / (v9 + v12));
  v17 = fmax(v16, 1.0);
  if (v16 >= 3.0)
  {
    v18 = 3.0;
  }

  else
  {
    v18 = v17;
  }

  if (v18 == INFINITY)
  {
    __break(1u);
  }

  else if (v18 > -9.22337204e18)
  {
    if (v18 < 9.22337204e18)
    {
      return v18;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_24F27AF88()
{
  result = qword_27F23D4D8;
  if (!qword_27F23D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4D8);
  }

  return result;
}

uint64_t sub_24F27AFE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F27B02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F27B14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F27B194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F27B290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F27B314(uint64_t a1)
{
  v2 = sub_24F27B528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F27B350(uint64_t a1)
{
  v2 = sub_24F27B528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F27B3AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D4E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F27B528();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

unint64_t sub_24F27B528()
{
  result = qword_27F23D4E8;
  if (!qword_27F23D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4E8);
  }

  return result;
}

unint64_t sub_24F27B590()
{
  result = qword_27F23D4F0;
  if (!qword_27F23D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4F0);
  }

  return result;
}

unint64_t sub_24F27B5E8()
{
  result = qword_27F23D4F8;
  if (!qword_27F23D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4F8);
  }

  return result;
}

unint64_t sub_24F27B640()
{
  result = qword_27F23D500;
  if (!qword_27F23D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D500);
  }

  return result;
}

id URLProtocolDelegate.__allocating_init(dialogStyle:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  *&v3[OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;
  sub_24ED8F464(v6);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_24F27B71C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23D510);
  __swift_project_value_buffer(v4, qword_27F23D510);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id URLProtocolDelegate.init(dialogStyle:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  *&v1[OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v6 = *&v1[v5];
  *&v1[v5] = v4;
  sub_24ED8F464(v6);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id URLProtocolDelegate.dialogStyle.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_24ED8F454(v4);
}

void URLProtocolDelegate.dialogStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_24ED8F464(v4);
}

id URLProtocolDelegate.presentDialog(for:)(void *a1)
{
  v38 = a1;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927D88();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    if (v14 == 1)
    {
      if (qword_27F211038 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v2, qword_27F23D510);
      (*(v3 + 16))(v5, v15, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v16 = [v38 logKey];
      if (v16)
      {
        v17 = v16;
        v18 = sub_24F92B0D8();
        v20 = v19;

        v21 = MEMORY[0x277D837D0];
      }

      else
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v41 = 0;
      }

      aBlock = v18;
      v40 = v20;
      v42 = v21;
      sub_24F928438();
      sub_24E857CC8(&aBlock);
      sub_24F92A5A8();

      (*(v3 + 8))(v5, v2);
      sub_24F27BFF8();
      v33 = swift_allocError();
      v34 = sub_24F91F268();
      v24 = [objc_opt_self() promiseWithError_];
    }

    else
    {
      v25 = objc_allocWithZone(MEMORY[0x277CEE600]);
      v26 = v14;
      v27 = [v25 init];
      sub_24E74EC40();
      v36 = sub_24F92BEF8();
      v28 = swift_allocObject();
      v29 = v38;
      v28[2] = v26;
      v28[3] = v29;
      v28[4] = v27;
      v43 = sub_24F27C050;
      v44 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24EAF8248;
      v42 = &block_descriptor_133;
      v30 = _Block_copy(&aBlock);
      sub_24ED8F454(v14);
      v31 = v29;
      v24 = v27;

      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24E858250();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E8582A8();
      sub_24F92C6A8();
      v32 = v36;
      MEMORY[0x2530518B0](0, v12, v8, v30);
      _Block_release(v30);

      sub_24ED8F464(v14);
      (*(v37 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_24F27BFF8();
    v22 = swift_allocError();
    v23 = sub_24F91F268();
    v24 = [objc_opt_self() promiseWithError_];

    sub_24ED8F464(0);
  }

  return v24;
}

unint64_t sub_24F27BFF8()
{
  result = qword_27F23D530;
  if (!qword_27F23D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D530);
  }

  return result;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id URLProtocolDelegate.performAuthentication(for:)(void *a1)
{
  v39 = a1;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927D88();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    if (v14 != 1)
    {
      v26 = objc_allocWithZone(MEMORY[0x277CEE600]);
      v27 = v14;
      v28 = [v26 init];
      sub_24E74EC40();
      v37 = sub_24F92BEF8();
      v29 = swift_allocObject();
      v30 = v39;
      v29[2] = v27;
      v29[3] = v30;
      v29[4] = v28;
      v44 = sub_24F27C714;
      v45 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_24EAF8248;
      v43 = &block_descriptor_6_6;
      v31 = _Block_copy(&aBlock);
      sub_24ED8F454(v14);
      v32 = v30;
      v33 = v28;

      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24E858250();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E8582A8();
      sub_24F92C6A8();
      v34 = v37;
      MEMORY[0x2530518B0](0, v12, v8, v31);
      _Block_release(v31);

      sub_24ED8F464(v14);
      (*(v38 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
      return v33;
    }

    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27F23D510);
    (*(v3 + 16))(v5, v15, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v16 = v39;
    v17 = [v39 logKey];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24F92B0D8();
      v21 = v20;

      v22 = MEMORY[0x277D837D0];
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v22 = 0;
      v42 = 0;
    }

    aBlock = v19;
    v41 = v21;
    v43 = v22;
    sub_24F928438();
    sub_24E857CC8(&aBlock);
    sub_24F92A5A8();

    (*(v3 + 8))(v5, v2);
    v36 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
    v25 = [v36 performAuthentication];
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277CEE3E8]);
    v24 = [v23 initWithRequest_];
    v25 = [v24 performAuthentication];

    sub_24ED8F464(0);
  }

  return v25;
}

void sub_24F27C654(void *a1, uint64_t a2, void *a3, Class *a4, SEL *a5)
{
  v9 = [a1 frontmostViewController];
  v10 = [objc_allocWithZone(*a4) initWithRequest:a2 presentingViewController:v9];
  v11 = [v10 *a5];

  [a3 finishWithPromise_];
}

void URLProtocolDelegate.amsurlSession(_:task:handle:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = URLProtocolDelegate.presentDialog(for:)(a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = ObjectType;
  v13[4] = sub_24F27CD40;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24F13C6AC;
  v13[3] = &block_descriptor_12_6;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v9 addFinishBlock_];
  _Block_release(v11);
}

{
  ObjectType = swift_getObjectType();
  v9 = URLProtocolDelegate.performAuthentication(for:)(a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = ObjectType;
  v13[4] = sub_24F27D4B8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24F13C6AC;
  v13[3] = &block_descriptor_18_0;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v9 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_24F27C854(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = sub_24F92AAE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if (a2)
  {
    v14 = a2;
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    swift_getErrorValue();
    v16 = v37;
    v17 = v38;
    v42 = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F9283A8();
    v19 = [a3 logKey];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24F92B0D8();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v41 = 0;
    }

    v39 = v21;
    v40 = v23;
    v42 = v24;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v13, v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v26 = [a3 logKey];
    if (v26)
    {
      v27 = v26;
      v28 = sub_24F92B0D8();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v41 = 0;
    }

    v39 = v28;
    v40 = v30;
    v42 = v31;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A598();

    v10 = v13;
  }

  (*(v8 + 8))(v10, v7);
  return v36(v34, a2);
}

uint64_t sub_24F27CFC8(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = sub_24F92AAE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if (a2)
  {
    v14 = a2;
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    swift_getErrorValue();
    v16 = v37;
    v17 = v38;
    v42 = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F9283A8();
    v19 = [a3 logKey];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24F92B0D8();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v41 = 0;
    }

    v39 = v21;
    v40 = v23;
    v42 = v24;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v13, v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v26 = [a3 logKey];
    if (v26)
    {
      v27 = v26;
      v28 = sub_24F92B0D8();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v41 = 0;
    }

    v39 = v28;
    v40 = v30;
    v42 = v31;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A598();

    v10 = v13;
  }

  (*(v8 + 8))(v10, v7);
  return v36(v34, a2);
}

id URLProtocolDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLProtocolDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24F27D780()
{
  result = qword_27F23D600;
  if (!qword_27F23D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D600);
  }

  return result;
}

uint64_t sub_24F27D7D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

void __swiftcall ChallengeDefinitionDataIntent.init(bundleID:definitionID:playerID:requireRefresh:)(GameStoreKit::ChallengeDefinitionDataIntent *__return_ptr retstr, Swift::String bundleID, Swift::String definitionID, Swift::String playerID, Swift::Bool requireRefresh)
{
  retstr->bundleID = bundleID;
  retstr->definitionID = definitionID;
  retstr->playerID = playerID;
  retstr->requireRefresh = requireRefresh;
}

uint64_t sub_24F27D8E4()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x4449726579616C70;
  if (*v0 != 2)
  {
    v2 = 0x5265726975716572;
  }

  if (*v0)
  {
    v1 = 0x6974696E69666564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F27D974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F27DEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F27D99C(uint64_t a1)
{
  v2 = sub_24F27DCF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F27D9D8(uint64_t a1)
{
  v2 = sub_24F27DCF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDefinitionDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F27DCF0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v9 = sub_24F92CC28();
  v26 = v10;
  v29 = 1;
  v11 = sub_24F92CC28();
  v25 = v12;
  v23 = v11;
  v28 = 2;
  v22 = sub_24F92CC28();
  v24 = v13;
  v27 = 3;
  v15 = sub_24F92CC38();
  (*(v6 + 8))(v8, v5);
  v16 = v15 & 1;
  v18 = v25;
  v17 = v26;
  *a2 = v9;
  *(a2 + 8) = v17;
  v19 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v18;
  v20 = v24;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F27DCF0()
{
  result = qword_27F23D618;
  if (!qword_27F23D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D618);
  }

  return result;
}

unint64_t sub_24F27DDA0()
{
  result = qword_27F23D620;
  if (!qword_27F23D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D620);
  }

  return result;
}

unint64_t sub_24F27DDF8()
{
  result = qword_27F23D628;
  if (!qword_27F23D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D628);
  }

  return result;
}

unint64_t sub_24F27DE50()
{
  result = qword_27F23D630;
  if (!qword_27F23D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D630);
  }

  return result;
}

uint64_t sub_24F27DEA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5265726975716572 && a2 == 0xEE00687365726665)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F27E088()
{
  result = sub_24F92CD88();
  qword_27F23D638 = result;
  unk_27F23D640 = v1;
  return result;
}

uint64_t sub_24F27E0D8()
{
  result = sub_24F92CD88();
  qword_27F23D648 = result;
  unk_27F23D650 = v1;
  return result;
}

char *WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(char *result, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_natural] = result;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight] = a2;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft] = a3;
  v4 = &result[a2];
  if (__CFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(v4, a3);
  v6 = &v4[a3];
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_total] = v6;
  v7 = result != 0;
  if (!a3)
  {
    if (a2)
    {
      ++v7;
    }

    *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v7;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = a2 != 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = 0;
    goto LABEL_12;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v8 + v7;
  v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = 1;
  if (!__CFADD__(a3, a2))
  {
    v9 = a3 / (a3 + a2);
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = v9 >= 0.4;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = v9 >= 0.15;
LABEL_12:
    v10.receiver = v3;
    v10.super_class = type metadata accessor for WritingDirectionsCounts();
    return objc_msgSendSuper2(&v10, sel_init);
  }

LABEL_15:
  __break(1u);
  return result;
}

char *WritingDirectionsCounts.__allocating_init(summing:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (!v1)
  {
LABEL_10:

    v13 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v3, v2);
  }

  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }

    result = [v6 writingDirectionsQuantities];
    v9 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
    v10 = __CFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      break;
    }

    v11 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
    v10 = __CFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

    v10 = __CFADD__(v2, v12);
    v2 += v12;
    if (v10)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_3:
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void WritingDirectionsCounts.__allocating_init(counting:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_14:
    v4 = 0;
    v3 = 0;
    v2 = 0;
LABEL_15:

    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v2, v3, v4);
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 32);
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = [v7 writingDirectionsQuantities];
    if (v9[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
    {
      break;
    }

    v10 = v9[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts];

    if (v10 == 1)
    {
      v6 = __CFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __CFADD__(v2++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_15;
    }
  }

  v6 = __CFADD__(v4++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_24F27E5C0(uint64_t a1)
{
  sub_24E94E17C(a1, v6);
  if (v7)
  {
    type metadata accessor for WritingDirectionsCounts();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_natural] && *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight])
      {
        v2 = *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
        v3 = *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_24E857CC8(v6);
  }

  return 0;
}

char *+ infix(_:_:)(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_24F27E850()
{
  v0 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  result = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(0, 0, 0);
  qword_27F23D658 = result;
  return result;
}

id static WritingDirectionsCounts.zero.getter()
{
  if (qword_27F211050 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23D658;

  return v1;
}

uint64_t sub_24F27E9B0()
{
  strcpy(v16, "Natural: ");
  WORD1(v16[1]) = 0;
  HIDWORD(v16[1]) = -385875968;
  v1 = sub_24F92CD88();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](8236, 0xE200000000000000);
  v2 = v16[0];
  v3 = v16[1];
  strcpy(v16, "{ Counts: { ");
  MEMORY[0x253050C20](v2, v3);

  sub_24F92C888();

  v4 = sub_24F92CD88();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0x2D6F742D7466654CLL, 0xEF203A7468676972);

  v5 = v16[0];
  sub_24F92C888();

  v6 = sub_24F92CD88();
  MEMORY[0x253050C20](v6);

  MEMORY[0x253050C20](32, 0xE100000000000000);

  MEMORY[0x253050C20](0x6F742D7468676952, 0xEF203A7466656C2DLL);

  MEMORY[0x253050C20](2108541, 0xE300000000000000);

  sub_24F92C888();

  v16[0] = 0x45204C5452207349;
  v16[1] = 0xEF28206867756F6ELL;
  if (qword_27F211040 != -1)
  {
    swift_once();
  }

  v7 = qword_27F23D638;
  v8 = unk_27F23D640;

  MEMORY[0x253050C20](v7, v8);

  MEMORY[0x253050C20](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](v16[0], v16[1]);

  sub_24F92C888();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x800000024FA71480;
  if (qword_27F211048 != -1)
  {
    swift_once();
  }

  v11 = qword_27F23D648;
  v12 = unk_27F23D650;

  MEMORY[0x253050C20](v11, v12);

  MEMORY[0x253050C20](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v13, v14);

  MEMORY[0x253050C20](32, 0xE100000000000000);

  MEMORY[0x253050C20](v16[0], v16[1]);

  MEMORY[0x253050C20](125, 0xE100000000000000);

  return v5;
}

id WritingDirectionsCounts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WritingDirectionsCounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WritingDirectionsCounts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void += infix(_:_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v5 = (v3 + v4);
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v8 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

  v12 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v13 = v11 + v12;
  if (!__CFADD__(v11, v12))
  {
    v14 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    *a1 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v5, v9, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_24F27F038(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24F27F124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for LaunchChallengeDefinitionAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F281A48(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LaunchChallengeDefinitionAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24F281AB0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LaunchChallengeDefinitionAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9DC440;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F27F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = type metadata accessor for Leaderboard(0);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for ChallengeDefinitionDetail(0);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F27F4E4, 0, 0);
}

uint64_t sub_24F27F4E4()
{
  *(v0 + 296) = sub_24F92B7F8();
  *(v0 + 304) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F27F57C, v2, v1);
}

uint64_t sub_24F27F57C()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 312) = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_24F27F604, 0, 0);
}

uint64_t sub_24F27F604()
{
  *(v0 + 320) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F27F690, v2, v1);
}

uint64_t sub_24F27F690()
{
  v1 = v0[39];

  swift_getKeyPath();
  v0[23] = v1;
  sub_24F281B78(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[41] = *v2;
  v0[42] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_24F27F808;

  return MEMORY[0x28217F228](v0 + 9, v3, v3);
}

uint64_t sub_24F27F808()
{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F2805A4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[45] = v3;
    *v3 = v2;
    v3[1] = sub_24F27F984;
    v4 = v2[27];
    v5 = v2[25];
    v6 = v2[26];

    return sub_24F280BF0(v6, v5, v4);
  }
}

uint64_t sub_24F27F984(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[46] = a2;
  v5[47] = v2;

  if (v2)
  {

    v6 = sub_24F27FD24;
  }

  else
  {
    v5[48] = a1;
    v6 = sub_24F27FAB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F27FAB4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 208);
  v6 = *(v5 + 16);
  *(v0 + 392) = v6;
  v7 = *(v5 + 24);
  *(v0 + 400) = v7;
  v8 = *(v0 + 96);
  v14 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v8);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = 1;

  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  v10 = sub_24E65404C();
  *v9 = v0;
  v9[1] = sub_24F27FBF0;
  v11 = *(v0 + 288);
  v12 = *(v0 + 200);

  return MEMORY[0x28217F4B0](v11, v0 + 16, v12, &type metadata for ChallengeDefinitionDataIntent, v10, v8, v14);
}

uint64_t sub_24F27FBF0()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24F280640;
  }

  else
  {

    v2 = sub_24F27FF54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F27FD24()
{
  v1 = v0[47];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "LaunchChallengeDefinitionActionImplementation unable to fetch definition data, default to launch game action", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = v0[26];

  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v0[17] = type metadata accessor for LaunchGameAction();
  v0[18] = sub_24F281B78(&qword_27F2162D0, type metadata accessor for LaunchGameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

  sub_24F928A98();

  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v10;
  boxed_opaque_existential_1[3] = v9;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
  v12 = swift_task_alloc();
  v0[53] = v12;
  v13 = type metadata accessor for LaunchChallengeDefinitionActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24F2803E0;
  v15 = v0[24];
  v16 = v0[25];

  return sub_24F1487B0(v15, (v0 + 14), v16, v13, WitnessTable);
}

uint64_t sub_24F27FF54()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  sub_24E60169C(v0[36] + *(v0[35] + 52), v3, &qword_27F212A00);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[30], &qword_27F212A00);
LABEL_10:
    v25 = v0[49];
    v24 = v0[50];
    v26 = v0[36];
    v27 = v0[26];
    v29 = *v27;
    v28 = v27[1];
    v0[17] = type metadata accessor for LaunchGameAction();
    v0[18] = sub_24F281B78(&qword_27F2162D0, type metadata accessor for LaunchGameAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

    sub_24F928A98();
    sub_24F281B18(v26, type metadata accessor for ChallengeDefinitionDetail);
    *boxed_opaque_existential_1 = v29;
    boxed_opaque_existential_1[1] = v28;
    boxed_opaque_existential_1[2] = v25;
    boxed_opaque_existential_1[3] = v24;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    goto LABEL_11;
  }

  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[28];
  sub_24F281AB0(v0[30], v5, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24F281A48(v5, v4, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24F281AB0(v4, v6, type metadata accessor for Leaderboard);
  v8 = (v6 + *(v7 + 64));
  v9 = v8[1];
  if (!v9)
  {
    v23 = v0[34];
    sub_24F281B18(v0[29], type metadata accessor for Leaderboard);
    sub_24F281B18(v23, type metadata accessor for ChallengeDefinitionDetail.Trackable);
    goto LABEL_10;
  }

  v39 = *v8;
  v10 = qword_27F2113B8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E778);
  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24E5DD000, v12, v13, "LaunchChallengeDefinitionActionImplementation activityIdentifier found, performing LaunchGameActivityAction", v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  v15 = v0[50];
  v38 = v0[49];
  v16 = v0[36];
  v17 = v0[34];
  v19 = v0[28];
  v18 = v0[29];

  v20 = *(v18 + 24);
  v37 = *(v18 + 16);
  v21 = *(v18 + *(v19 + 68));
  v0[17] = type metadata accessor for LaunchGameActivityAction();
  v0[18] = sub_24F281B78(&qword_27F2162D8, type metadata accessor for LaunchGameActivityAction);
  v22 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

  sub_24F928A98();
  sub_24F281B18(v18, type metadata accessor for Leaderboard);
  sub_24F281B18(v17, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24F281B18(v16, type metadata accessor for ChallengeDefinitionDetail);
  *v22 = v38;
  v22[1] = v15;
  v22[2] = v39;
  v22[3] = v9;
  v22[4] = v37;
  v22[5] = v20;
  v22[6] = 0;
  v22[7] = 0;
  v22[8] = v21;
LABEL_11:
  v31 = swift_task_alloc();
  v0[53] = v31;
  v32 = type metadata accessor for LaunchChallengeDefinitionActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v31 = v0;
  v31[1] = sub_24F2803E0;
  v34 = v0[24];
  v35 = v0[25];

  return sub_24F1487B0(v34, (v0 + 14), v35, v32, WitnessTable);
}

uint64_t sub_24F2803E0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_24F280890;
  }

  else
  {
    v2 = sub_24F2804F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2804F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2805A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F280640()
{

  v1 = v0[52];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "LaunchChallengeDefinitionActionImplementation unable to fetch definition data, default to launch game action", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = v0[26];

  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v0[17] = type metadata accessor for LaunchGameAction();
  v0[18] = sub_24F281B78(&qword_27F2162D0, type metadata accessor for LaunchGameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

  sub_24F928A98();

  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v10;
  boxed_opaque_existential_1[3] = v9;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
  v12 = swift_task_alloc();
  v0[53] = v12;
  v13 = type metadata accessor for LaunchChallengeDefinitionActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24F2803E0;
  v15 = v0[24];
  v16 = v0[25];

  return sub_24F1487B0(v15, (v0 + 14), v16, v13, WitnessTable);
}

uint64_t sub_24F280890()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2809A4()
{
  v1 = (type metadata accessor for LaunchChallengeDefinitionAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F280AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for LaunchChallengeDefinitionAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F27F37C(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F280BA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F280BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_24F920C38();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D720) - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F280E00, 0, 0);
}

uint64_t sub_24F280E00()
{
  v1 = v0[12];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = qword_27F2113B8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E778);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "LaunchChallengeDefinitionActionImplementation definitionID provided", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = v0[1];

    return v9(v3, v2);
  }

  else
  {
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    v0[28] = __swift_project_value_buffer(v11, qword_27F39E778);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BD98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "LaunchChallengeDefinitionActionImplementation fetching definition ID", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
    v16 = swift_task_alloc();
    v0[29] = v16;
    *v16 = v0;
    v16[1] = sub_24F2810E0;

    return MEMORY[0x28217F228](v0 + 7, v15, v15);
  }
}

uint64_t sub_24F2810E0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24F2814AC;
  }

  else
  {
    v2 = sub_24F2811F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2811F4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  sub_24F920FF8();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E7C0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[31] = v7;
  *(v7 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v7 + v6, v1, v3);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_24F281370;

  return MEMORY[0x2821651A0](v7, v4, v5);
}

uint64_t sub_24F281370(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_24F28197C;
  }

  else
  {
    v4 = sub_24F281558;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F2814AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F281558()
{
  v1 = v0[33];
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = *(v0[21] + 80);
  sub_24E60169C(v1 + ((v7 + 32) & ~v7), v2, qword_27F23D720);

  sub_24F281BC0(v2, v3);
  sub_24E60169C(v3, v4, qword_27F23D720);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = v0[22];
    sub_24E601704(v0[24], qword_27F23D720);
    sub_24E601704(v8, qword_27F23D720);
LABEL_5:
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "LaunchChallengeDefinitionActionImplementation unable to find challenge description", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];

    type metadata accessor for LaunchChallengeDefinitionActionImplementation.FetchError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    goto LABEL_10;
  }

  v15 = v0[34];
  (*(v0[19] + 32))(v0[20], v0[22], v0[18]);
  sub_24F920BD8();
  v16 = sub_24F920FB8();
  v18 = v15;
  v20 = v0[26];
  v19 = v0[27];
  v22 = v0[24];
  v21 = v0[25];
  v24 = v0[19];
  v23 = v0[20];
  v25 = v0[18];
  v26 = v0[16];
  if (v18)
  {
    (*(v26 + 8))(v0[17], v0[15]);
    (*(v24 + 8))(v23, v25);
    sub_24E601704(v22, qword_27F23D720);
    (*(v20 + 8))(v19, v21);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v27 = v0[1];

    return v27();
  }

  v29 = v16;
  v30 = v17;
  (*(v26 + 8))(v0[17], v0[15]);
  (*(v24 + 8))(v23, v25);
  sub_24E601704(v22, qword_27F23D720);
  (*(v20 + 8))(v19, v21);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v31 = v0[1];

  return v31(v29, v30);
}

uint64_t sub_24F28197C()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F281A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F281AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F281B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F281B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F281BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D7A8);
  v7 = swift_allocObject();
  v8 = *(*v7 + 88);
  v9 = sub_24F922118();
  result = (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(a3 + 8) = v7;
  *(a3 + 16) = a2;
  return result;
}

uint64_t CappedSizeStaticDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(*v3 + 88);
  swift_beginAccess();
  v5 = sub_24F922118();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void CappedSizeStaticDimension.value(compatibleWith:rounded:)(void *a1, uint64_t a2)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);
  v10 = *(v2 + 16);
  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_24F92C148();

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F9C29E0;
    *(v14 + 32) = a1;
    v15 = objc_opt_self();
    v16 = a1;
    *(v14 + 40) = [v15 traitCollectionWithPreferredContentSizeCategory_];
    sub_24F1E21D4();
    v17 = sub_24F92B588();

    v18 = [v15 traitCollectionWithTraitsFromCollections_];
  }

  else
  {
    v18 = a1;
  }

  v19 = *(*v11 + 88);
  swift_beginAccess();
  v20 = sub_24F922118();
  v25[3] = v20;
  v25[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v11 + v19, v20);
  sub_24F91FE48();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v25[0] = v23;
  (*(v6 + 16))(v9, a2, v5);
  v24 = (*(v6 + 88))(v9, v5);
  if (v24 == *MEMORY[0x277D84678] || v24 == *MEMORY[0x277D84670] || v24 == *MEMORY[0x277D84680] || v24 == *MEMORY[0x277D84688] || v24 == *MEMORY[0x277D84660] || v24 == *MEMORY[0x277D84668])
  {
  }

  else
  {
    sub_24F92BA48();

    (*(v6 + 8))(v9, v5);
  }
}

double CappedSizeStaticDimension.rawValue(in:)(void *a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = sub_24F92C148();

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F9C29E0;
    *(v7 + 32) = v4;
    v8 = objc_opt_self();
    v9 = v4;
    *(v7 + 40) = [v8 traitCollectionWithPreferredContentSizeCategory_];
    sub_24F1E21D4();
    v10 = sub_24F92B588();

    v4 = [v8 traitCollectionWithTraitsFromCollections_];
  }

  v11 = *(*v3 + 88);
  swift_beginAccess();
  v12 = sub_24F922118();
  v17[3] = v12;
  v17[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v3 + v11, v12);
  sub_24F91FE48();
  v15 = v14;

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

UIEdgeInsets __swiftcall CappedSizeStaticDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v3 = sub_24F922118();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = [(objc_class *)compatibleWith.super.isa preferredContentSizeCategory];
  v11 = sub_24F92C148();

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24F9C29E0;
    *(v12 + 32) = compatibleWith;
    v13 = objc_opt_self();
    v14 = compatibleWith.super.isa;
    *(v12 + 40) = [v13 traitCollectionWithPreferredContentSizeCategory_];
    sub_24F1E21D4();
    v15 = sub_24F92B588();

    v16 = [v13 traitCollectionWithTraitsFromCollections_];
  }

  else
  {
    v16 = compatibleWith.super.isa;
  }

  v17 = *(*v9 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v7, v9 + v17, v3);
  v18 = sub_24F922108();
  (*(v4 + 8))(v7, v3);
  sub_24F92C278();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

uint64_t CappedSizeStaticDimension.description.getter()
{
  v1 = sub_24F922118();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_24F92C888();
  v13 = v11;
  v14 = v12;
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA716A0);
  v7 = sub_24F92BA38();
  MEMORY[0x253050C20](v7);

  MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v8 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v8, v1);
  sub_24F92CA38();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA716C0);
  v10 = v6;
  type metadata accessor for UIContentSizeCategory(0);
  sub_24F92CA38();
  return v13;
}

uint64_t _s12GameStoreKit25CappedSizeStaticDimensionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922118();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  if (*a1 == *a2 && (v11 = *(a2 + 8), v23[1] = *(a2 + 16), v12 = *(a1 + 8), v13 = *(*v12 + 88), swift_beginAccess(), v14 = *(v5 + 16), v14(v10, v12 + v13, v4), v15 = *(*v11 + 88), swift_beginAccess(), v14(v7, v11 + v15, v4), LOBYTE(v15) = MEMORY[0x253047A80](v10, v7), v16 = *(v5 + 8), v16(v7, v4), v16(v10, v4), (v15 & 1) != 0))
  {
    v17 = sub_24F92B0D8();
    v19 = v18;
    if (v17 == sub_24F92B0D8() && v19 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_24F92CE08();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

GameStoreKit::MetadataRibbonSecondaryViewPlacement_optional __swiftcall MetadataRibbonSecondaryViewPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MetadataRibbonSecondaryViewPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}