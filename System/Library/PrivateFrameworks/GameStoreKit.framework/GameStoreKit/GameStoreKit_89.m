uint64_t sub_24EF1D56C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24E612E28(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s12GameStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0()
{
  v1 = v0;
  v2 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_24EF1CF74() + 16);

  if (v5)
  {
    v7 = *(sub_24EF1CF74() + 16);

    if (v7)
    {
      sub_24EF1DC78(v1, v4, type metadata accessor for IconRowViewLayout.Metrics);
      sub_24F9222F8();
      v8 = sub_24F922348();
      return (*(*(v8 - 8) + 8))(v4, v8);
    }
  }

  return result;
}

unint64_t sub_24EF1D774()
{
  result = qword_27F233E00;
  if (!qword_27F233E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E00);
  }

  return result;
}

uint64_t sub_24EF1D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconRowViewLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EF1D8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24EF1D964()
{
  type metadata accessor for IconRowViewLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_24EF1D9E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF1D9E8()
{
  if (!qword_27F233E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F235730);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F233E18);
    }
  }
}

uint64_t sub_24EF1DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EF1DB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24EF1DBF4()
{
  result = sub_24F922348();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EF1DC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF1DCE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ComponentModel.pairedWith<A>(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a2, v7);
  ObjectGraphPair.init(value:objectGraph:)(v9, a1, a2, a3);
}

id sub_24EF1DE2C()
{
  v0 = sub_24F922118();
  __swift_allocate_value_buffer(v0, qword_27F233E30);
  v1 = __swift_project_value_buffer(v0, qword_27F233E30);
  v3 = *MEMORY[0x277D76918];
  *v1 = *MEMORY[0x277D76918];
  (*(*(v0 - 8) + 104))();

  return v3;
}

double SpacerDimension.rawValue(in:)(void *a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-1] - v8;
  v10 = *v1;
  if (qword_27F210C58 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922118();
  v12 = __swift_project_value_buffer(v11, qword_27F233E30);
  v25[3] = v11;
  v25[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
  v14 = [a1 traitCollection];
  sub_24F91FE48();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_1(v25);
  v17 = v10 * ((v16 + -1.0) * 0.5 + 1.0);
  sub_24F9220E8();
  *v25 = v17;
  (*(v4 + 16))(v6, v9, v3);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == *MEMORY[0x277D84678])
  {
    v19 = round(v17);
LABEL_13:
    (*(v4 + 8))(v9, v3);
    return v19;
  }

  if (v18 == *MEMORY[0x277D84670])
  {
    v19 = rint(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84680])
  {
    v19 = ceil(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84688])
  {
    v19 = floor(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84660])
  {
    v19 = trunc(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84668])
  {
    (*(v4 + 8))(v9, v3);
    v21 = ceil(v17);
    v22 = floor(v17);
    if (v17 < 0.0)
    {
      return v22;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    sub_24F92BA48();
    v23 = *(v4 + 8);
    v23(v9, v3);
    v23(v6, v3);
    return *v25;
  }
}

UIEdgeInsets __swiftcall SpacerDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v1 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v3 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

uint64_t sub_24EF1E274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDefinitionDetail();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EF1E3B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDefinitionDetail();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for UpdateActivityDefinitionAction()
{
  result = qword_27F233E48;
  if (!qword_27F233E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF1E524()
{
  type metadata accessor for ActivityDefinitionDetail();
  if (v0 <= 0x3F)
  {
    sub_24E6CFC68();
    if (v1 <= 0x3F)
    {
      sub_24F928AD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EF1E5C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_24F928AD8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityDefinitionDetail();
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233E58);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  updated = type metadata accessor for UpdateActivityDefinitionAction();
  MEMORY[0x28223BE20](updated);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EF1EAE0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v14 = v26;
  v22 = v5;
  LOBYTE(v30) = 0;
  sub_24EF1EB98(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail);
  v15 = v27;
  sub_24F92CC68();
  sub_24EF1EB34(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  v33 = 1;
  sub_24EE076B8();
  sub_24F92CC68();
  v16 = &v12[*(updated + 20)];
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  *(v16 + 4) = v32;
  LOBYTE(v30) = 2;
  sub_24EF1EB98(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v18 = v22;
  v19 = v25;
  sub_24F92CC68();
  (*(v14 + 8))(v9, v28);
  (*(v23 + 32))(&v12[*(updated + 24)], v18, v19);
  sub_24EF1EBE0(v12, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_24EF1EC44(v12, type metadata accessor for UpdateActivityDefinitionAction);
}

uint64_t sub_24EF1EA50(uint64_t a1)
{
  v2 = sub_24EF1EAE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF1EA8C(uint64_t a1)
{
  v2 = sub_24EF1EAE0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EF1EAE0()
{
  result = qword_27F233E60;
  if (!qword_27F233E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E60);
  }

  return result;
}

uint64_t sub_24EF1EB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDefinitionDetail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF1EB98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF1EBE0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateActivityDefinitionAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EF1EC44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EF1ECB8()
{
  result = qword_27F233E70;
  if (!qword_27F233E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E70);
  }

  return result;
}

unint64_t sub_24EF1ED10()
{
  result = qword_27F233E78;
  if (!qword_27F233E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E78);
  }

  return result;
}

unint64_t sub_24EF1ED68()
{
  result = qword_27F233E80;
  if (!qword_27F233E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E80);
  }

  return result;
}

uint64_t sub_24EF1EDF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EA0);
  __swift_allocate_value_buffer(v0, qword_27F233E88);
  __swift_project_value_buffer(v0, qword_27F233E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C78);
  return sub_24F928C68();
}

uint64_t static RateLimitedAction.preferencesKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210C60 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EA0);
  v3 = __swift_project_value_buffer(v2, qword_27F233E88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RateLimitedAction.actionKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);

  return v1;
}

void *RateLimitedAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v69 = a2;
  v6 = *v4;
  v64 = v3;
  v65 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v59 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v68 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  v26 = v25;
  v60 = v11;
  v27 = *(v11 + 8);
  v27(v23, v10);
  if (!v26)
  {
    v34 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v35 = 0x654B6E6F69746361;
    v36 = v65;
    v35[1] = 0xE900000000000079;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v67 + 8))(v69, v66);
    v27(v68, v10);
    goto LABEL_5;
  }

  v63 = v27;
  v28 = (v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
  *v28 = v24;
  v28[1] = v26;
  type metadata accessor for Action();
  sub_24F928398();
  v29 = v64;
  v30 = static Action.makeInstance(byDeserializing:using:)(v21, v69);
  v64 = v29;
  if (v29)
  {
    (*(v67 + 8))(v69, v66);
    v31 = v10;
    v32 = v10;
    v33 = v63;
    v63(v68, v32);
    v33(v21, v31);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v38 = v30;
  v39 = v10;
  v40 = v63;
  v63(v21, v10);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction) = v38;
  v41 = v68;
  sub_24F928398();
  v42 = v69;
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v69);
  v40(v18, v39);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction) = v43;
  v44 = v59;
  sub_24F928398();
  v45 = sub_24F928258();
  v47 = v46;
  v40(v44, v39);
  v48 = v41;
  v49 = v42;
  v50 = OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit;
  if (v47)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit) = 0;
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit) = v45;
  }

  v51 = v64;
  *(v4 + v50 + 8) = v47 & 1;
  v52 = v61;
  (*(v60 + 16))(v61, v48, v39);
  v53 = v67;
  v54 = v62;
  v55 = v49;
  v56 = v66;
  (*(v67 + 16))(v62, v55, v66);
  v57 = Action.init(deserializing:using:)(v52, v54);
  v58 = v63;
  if (!v51)
  {
    v4 = v57;
  }

  (*(v53 + 8))(v69, v56);
  v58(v48, v39);
  return v4;
}

void *RateLimitedAction.__allocating_init(actionKey:primaryAction:fallbackAction:rateLimit:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v35 = a4;
  v11 = sub_24F91F6B8();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
  *v22 = a1;
  v22[1] = a2;
  v23 = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction) = a3;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction) = v35;
  v24 = (v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit);
  *v24 = a6;
  *(v24 + 8) = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v18 + 16))(v20, a5, v17);
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v41, &v38);
  if (*(&v39 + 1))
  {
    v28 = v39;
    *v27 = v38;
    *(v27 + 1) = v28;
    *(v27 + 4) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v33 + 8))(v13, v34);
    v36 = v29;
    v37 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  (*(v18 + 8))(v23, v17);
  sub_24E601704(v41, &qword_27F235830);
  sub_24E65E0D4(v16, v21 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v21[2] = 0xD000000000000013;
  v21[3] = 0x800000024FA640B0;
  v21[4] = 0;
  v21[5] = 0;
  (*(v18 + 32))(v21 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v21;
}

void *RateLimitedAction.init(actionKey:primaryAction:fallbackAction:rateLimit:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v35 = a4;
  v34 = sub_24F91F6B8();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
  *v22 = a1;
  v22[1] = a2;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction) = a3;
  v23 = a5;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction) = v35;
  v24 = (v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit);
  *v24 = a6;
  *(v24 + 8) = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v19 + 16))(v21, a5, v18);
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_24E65E064(v44, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v33 + 8))(v14, v34);
    v36 = v27;
    v37 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  (*(v19 + 8))(v23, v18);
  sub_24E601704(v44, &qword_27F235830);
  v30 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v30 + 4) = v43;
  v31 = v42;
  *v30 = v41;
  *(v30 + 1) = v31;
  sub_24E65E0D4(v17, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v7[2] = 0xD000000000000013;
  v7[3] = 0x800000024FA640B0;
  v7[4] = 0;
  v7[5] = 0;
  (*(v19 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v7;
}

uint64_t sub_24EF1FDA0()
{
}

uint64_t RateLimitedAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t RateLimitedAction.__deallocating_deinit()
{
  RateLimitedAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RateLimitedAction()
{
  result = qword_27F233EA8;
  if (!qword_27F233EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int64_t sub_24EF20044(int64_t result)
{
  if (result < 0)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2 <= result)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 8);
    v5 = __OFADD__(result, v4);
    v6 = result + v4;
    if (!v5)
    {
      return *(v3 + 2 * v6);
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v1 + 32);
  if (!v7)
  {
LABEL_12:
    if (*(v1 + 56) <= result || (v9 = *(v1 + 48), v9 > result))
    {
      if (result >= 4)
      {
        v9 = result - 4;
      }

      else
      {
        v9 = 0;
      }

      *(v1 + 48) = v9;
      if (__OFADD__(v9, 2048))
      {
        goto LABEL_28;
      }

      if (v2 >= v9 + 2048)
      {
        v2 = v9 + 2048;
      }

      *(v1 + 56) = v2;
      v10 = *(v1 + 8);
      if (__OFADD__(v10, v9))
      {
        goto LABEL_29;
      }

      v11 = result;
      v13.length = v2 - v9;
      v13.location = v10 + v9;
      CFStringGetCharacters(*v1, v13, *(v1 + 40));
      result = v11;
    }

    v12 = *(v1 + 40);
    if (!v12)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (!__OFSUB__(result, v9))
    {
      return *(v12 + 2 * (result - v9));
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v1 + 8);
  v5 = __OFADD__(result, v8);
  v2 = result + v8;
  if (v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *(v7 + v2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

const char *sub_24EF20144@<X0>(const __CFString *a1@<X0>, const __CFString *a2@<X1>, int64_t a3@<X2>, const __CFString **a4@<X8>)
{
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    result = 0;
    v10 = 0;
LABEL_8:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = CharactersPtr;
    a4[4] = result;
    a4[5] = v10;
    a4[6] = 0;
    a4[7] = 0;
    return result;
  }

  v11 = sub_24F91F288();
  result = CFStringGetCStringPtr(a1, v11);
  if (result)
  {
    v10 = 0;
LABEL_7:
    CharactersPtr = 0;
    goto LABEL_8;
  }

  if (a3 >= 0xC000000000000000)
  {
    v10 = swift_slowAlloc();
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF2021C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24EF20264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA64170 == a2)
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

uint64_t sub_24EF2034C(uint64_t a1)
{
  v2 = sub_24EF205F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF20388(uint64_t a1)
{
  v2 = sub_24EF205F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF203E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EF20414(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_24EF20414(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF205F8();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CC28();
    v10 = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EF205F8()
{
  result = qword_27F233EC0;
  if (!qword_27F233EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EC0);
  }

  return result;
}

unint64_t sub_24EF20660()
{
  result = qword_27F233EC8;
  if (!qword_27F233EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EC8);
  }

  return result;
}

unint64_t sub_24EF206B8()
{
  result = qword_27F233ED0;
  if (!qword_27F233ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233ED0);
  }

  return result;
}

unint64_t sub_24EF20710()
{
  result = qword_27F233ED8;
  if (!qword_27F233ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233ED8);
  }

  return result;
}

uint64_t static ArcadeDebugSubscriptionState.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27F233EE0 = a1;
}

uint64_t sub_24EF20854(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_27F233EE0 = v1;
}

uint64_t ArcadeDebugSubscriptionState.arcadeState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v5 = -127;
    }

    else
    {
      v5 = -64;
    }

    if (*v1)
    {
      result = 0;
    }

    else
    {
      result = *v1;
    }

    if (*v1)
    {
      v4 = v5;
    }

    else
    {
      v4 = -126;
    }
  }

  else if (*v1 > 4u)
  {
    if (v2 == 5)
    {
      v4 = 0;
      result = 2;
    }

    else
    {
      v6 = a1;
      result = swift_allocObject();
      a1 = v6;
      *(result + 16) = 2;
      *(result + 24) = 0;
      v4 = 64;
    }
  }

  else
  {
    result = 1;
    if (v2 == 3)
    {
      v4 = -64;
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_24EF20968()
{
  sub_24EB6CE70(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t ArcadeDebugSubscriptionState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EF20A30()
{
  result = qword_27F233EE8;
  if (!qword_27F233EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EE8);
  }

  return result;
}

unint64_t sub_24EF20A88()
{
  result = qword_27F233EF0;
  if (!qword_27F233EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EF0);
  }

  return result;
}

uint64_t sub_24EF20AEC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27F233EE0;
}

uint64_t sub_24EF20B3C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27F233EE0;
}

uint64_t PreorderDisclaimer.disclaimer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PreorderDisclaimer.__allocating_init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_24E60169C(a1, &v19, &qword_27F235830);
  if (*(&v20 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v19, &qword_27F235830);
  }

  v16 = v23;
  *(v12 + 32) = v22;
  *(v12 + 48) = v16;
  *(v12 + 64) = v24;
  sub_24E65E0D4(a4, v12 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  return v12;
}

uint64_t PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v20, &qword_27F235830);
  if (*(&v21 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v20, &qword_27F235830);
  }

  v17 = v24;
  *(v5 + 32) = v23;
  *(v5 + 48) = v17;
  *(v5 + 64) = v25;
  sub_24E65E0D4(a4, v5 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  return v5;
}

void (*PreorderDisclaimer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v51 = a2;
  v47 = sub_24F9285B8();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_24F91F6B8();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = a1;
  sub_24F928398();
  v42 = sub_24F928348();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v16, v9);
  v41 = v19;
  if (v19)
  {
    v39 = v20;
    sub_24F928398();
    v21 = sub_24F928348();
    v40 = v17;
    v38 = v9;
    if (v22)
    {
      v48 = v21;
      v49 = v22;
    }

    else
    {
      sub_24F91F6A8();
      v25 = sub_24F91F668();
      v27 = v26;
      (*(v36 + 8))(v8, v37);
      v48 = v25;
      v49 = v27;
    }

    sub_24F92C7F8();
    v28 = v9;
    v29 = v39;
    v39(v13, v28);
    sub_24F929608();
    sub_24F928398();
    v30 = v45;
    v31 = v51;
    v32 = v47;
    (*(v45 + 16))(v43, v51, v47);
    v33 = v44;
    sub_24F929548();
    v20 = swift_allocObject();
    PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(v50, v42, v41, v33);
    (*(v30 + 8))(v31, v32);
    v29(v40, v38);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24EF215F0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v24 = 0x6D69616C63736964;
    v24[1] = 0xEA00000000007265;
    v24[2] = v46;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v45 + 8))(v51, v47);
    v20(v17, v9);
  }

  return v20;
}

uint64_t PreorderDisclaimer.deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t PreorderDisclaimer.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF215F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PreorderDisclaimer()
{
  result = qword_27F233F08;
  if (!qword_27F233F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_24EF21684@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  result = PreorderDisclaimer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24EF216F4()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MSOPersonalizationDataSource.__allocating_init(objectGraph:accountChannelsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 16);
  swift_unknownObjectRetain_n();

  v8(v9, &protocol witness table for MSOPersonalizationDataSource, ObjectType, a3);

  swift_unknownObjectRelease_n();
  return v6;
}

uint64_t MSOPersonalizationDataSource.init(objectGraph:accountChannelsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24EF2238C(a1, a2, a3);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_24EF21948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233F18);
    v6 = sub_24F92A9E8();
    v7 = *(a1 + 32);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);

    v9(sub_24EF2279C, v6, ObjectType, v7);

    v10 = sub_24F929638();
    v11 = MEMORY[0x277D21FB0];
    v14 = v10;
    v15 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v13);

    sub_24F929628();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229690);
    sub_24EF227AC();
    sub_24F92A9B8();

    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_24F92A948();
    v14 = v10;
    v15 = v11;
    __swift_allocate_boxed_opaque_existential_1(v13);
    sub_24F929628();
    v5 = sub_24F92A938();

    __swift_destroy_boxed_opaque_existential_1(v13);
    *(a1 + 48) = v5;
  }

  *a2 = v5;
}

void sub_24EF21B50(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_24F92A9C8();
  }

  else
  {
    sub_24EF22810();
    v1 = swift_allocError();
    sub_24F92A9A8();
  }
}

uint64_t sub_24EF21BE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for JSIntentDispatcher();
  v5 = *(a2 + 16);
  sub_24F928FD8();

  sub_24F92A758();
  v6 = sub_24EB4889C(0xD000000000000015, 0x800000024FA64260, v3, v4, v5, "GameStoreKit/MSOPersonalizationDataSource.swift", 47, 2);

  return v6;
}

uint64_t sub_24EF21CB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
}

uint64_t sub_24EF21CFC()
{
  v1 = v0[5];
  [v1 lock];
  v0[6] = 0;

  [v1 unlock];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = v0[9];
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &protocol witness table for MSOPersonalizationDataSource, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EF21E00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24EF21E60(uint64_t *a1))()
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
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EF21EF4;
}

uint64_t sub_24EF21EF8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B050);
  sub_24EBDFD34(v3, v4);
  v8 = sub_24F92A9E8();
  v9 = *(v1 + 40);
  [v9 lock];
  sub_24EF21948(v2, v15);
  [v9 unlock];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v3;
  v11[4] = v4;
  v11[5] = v5;
  v11[6] = v6;
  v12 = sub_24E74EC40();

  sub_24EBDFD34(v3, v4);

  v13 = sub_24F92BEF8();
  v15[3] = v12;
  v15[4] = MEMORY[0x277D225C0];
  v15[0] = v13;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v15);

  return v8;
}

uint64_t sub_24EF220E8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v7 = a2[2];
  v8 = a2[3];
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;
  a2[5] = v6;

  sub_24EBDFDB8(v7, v8);
  swift_beginAccess();
  v10 = a2[2];
  v11 = a2[3];
  sub_24EBDFD34(v10, v11);
  sub_24F92A9C8();
  return sub_24EBDFDB8(v10, v11);
}

uint64_t MSOPersonalizationDataSource.deinit()
{

  swift_unknownObjectRelease();

  sub_24E883630(v0 + 64);
  return v0;
}

uint64_t MSOPersonalizationDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  sub_24E883630(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t (*sub_24EF22264(uint64_t *a1))()
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
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EF228D0;
}

void sub_24EF222F8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_24EF2238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  ObjectType = swift_getObjectType();
  v9 = *(a3 + 16);
  swift_unknownObjectRetain_n();

  v9(v10, &protocol witness table for MSOPersonalizationDataSource, ObjectType, a3);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24EF22464()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF224B0()
{

  return swift_deallocObject();
}

uint64_t sub_24EF224F8()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF2258C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EF225DC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_24EF227AC()
{
  result = qword_27F233F20;
  if (!qword_27F233F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F20);
  }

  return result;
}

unint64_t sub_24EF22810()
{
  result = qword_27F233F28;
  if (!qword_27F233F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F28);
  }

  return result;
}

unint64_t sub_24EF2287C()
{
  result = qword_27F233F30;
  if (!qword_27F233F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F30);
  }

  return result;
}

uint64_t ArcadeSubscriptionDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSubscriptionDecorationIntent.product.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArcadeSubscriptionDecorationIntent.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

unint64_t sub_24EF2295C()
{
  v1 = v0;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  sub_24E643A9C((v1 + 2), &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[0] = v2;
  sub_24E81C1D4(&v17, 0x6E656B6F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v4 = v1[8];
  v5 = v1[9];
  v6 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D837D0];
  *&v17 = v4;
  *(&v17 + 1) = v5;
  sub_24E612B0C(&v17, v16);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v16, 0x64496D616461, 0xE600000000000000, v7);
  v8 = v1[6];
  v9 = v1[7];
  v18 = v6;
  *&v17 = v8;
  *(&v17 + 1) = v9;
  sub_24E612B0C(&v17, v16);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v16, 0x746375646F7270, 0xE700000000000000, v10);
  v11 = v1[10];
  if (v11)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    *&v17 = v11;
    sub_24E612B0C(&v17, v16);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v16, 0x7363697274656DLL, 0xE700000000000000, v12);
  }

  v13 = v1[11];
  if (v13)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    *&v17 = v13;
    sub_24E612B0C(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v16, 0xD000000000000011, 0x800000024FA55000, v14);
  }

  return v2;
}

JSValue __swiftcall ArcadeSubscriptionDecorationIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_24EF2295C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EF22C48()
{
  result = qword_27F233F38;
  if (!qword_27F233F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F38);
  }

  return result;
}

unint64_t sub_24EF22CA4()
{
  result = qword_27F233F40;
  if (!qword_27F233F40)
  {
    type metadata accessor for ArcadeSubscriptionRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F40);
  }

  return result;
}

uint64_t sub_24EF22D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24EF22D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double PreorderDisclaimerLayout.measurements(fitting:in:)(double a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24F922298();
  return a1;
}

uint64_t PreorderDisclaimerLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinX(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  sub_24F92C1D8();
  sub_24F922228();

  return sub_24F922128();
}

uint64_t sub_24EF22F70(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinX(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  sub_24F92C1D8();
  sub_24F922228();

  return sub_24F922128();
}

double sub_24EF230A8(double a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24F922298();
  return a1;
}

JSValue __swiftcall TopChartsPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
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

unint64_t sub_24EF23310()
{
  result = qword_27F233F48;
  if (!qword_27F233F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F48);
  }

  return result;
}

unint64_t sub_24EF2336C()
{
  result = qword_27F233F50;
  if (!qword_27F233F50)
  {
    type metadata accessor for TopChartSegment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F50);
  }

  return result;
}

id sub_24EF233C4(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = v5;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
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

uint64_t ArcadeButtonNameFieldsProvider.init(arcadeSubscriptionManager:appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ArcadeButtonNameFieldsProvider() + 24);
  v9 = *MEMORY[0x277D22340];
  v10 = sub_24F92A2D8();
  result = (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t type metadata accessor for ArcadeButtonNameFieldsProvider()
{
  result = qword_27F233F58;
  if (!qword_27F233F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeButtonNameFieldsProvider() + 24);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeButtonNameFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v11 = v4;
  LOBYTE(v12) = v3;
  sub_24EB6CE50(v4, v3);
  v5 = MetricsFieldsContext.adamIdString.getter();
  v7 = sub_24EF2374C(&v11, v5, v6);
  v9 = v8;

  v13 = MEMORY[0x277D837D0];
  v11 = v7;
  v12 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  sub_24EB6CE70(v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

uint64_t sub_24EF2374C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_24EF23820(a2, a3);
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v4 = *a1;
    if (v3)
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = v6;
      v9 = v7;
      return sub_24EF2374C(&v8);
    }

    else if (*a1)
    {
      if (*a1 == 1)
      {
        return 7959156;
      }

      else
      {
        return 0x6269726373627573;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

uint64_t sub_24EF23820(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2036427888;
  }

  v5 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  v14[1] = a2;
  (*(v5 + 56))(v14, ObjectType, v5);
  v8 = v7;
  v9 = swift_getObjectType();
  (*(v8 + 16))(v15, v9, v8);
  v10 = v18 >> 60;
  if ((v18 >> 60) <= 4)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        sub_24E88D2AC(v15);
        swift_unknownObjectRelease();
        return 0x64616F6C6E776F64;
      }

      goto LABEL_16;
    }

    sub_24E88D2AC(v15);
    swift_unknownObjectRelease();
    return 0x657461647075;
  }

  else if (v10 == 5)
  {
    sub_24E88D2AC(v15);
    swift_unknownObjectRelease();
    return 0x6C65636E6163;
  }

  else
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        if ((v11 = v17 | v19, v12 = v15[3] | v15[2] | v15[1], v18 == 0x8000000000000000) && !(v11 | v15[0] | v16 | v12) || v18 == 0x8000000000000000 && v15[0] == 4 && !(v11 | v16 | v12))
        {
          swift_unknownObjectRelease();
          return 7959906;
        }
      }

LABEL_16:
      sub_24E88D2AC(v15);
      swift_unknownObjectRelease();
      return 0x7379616C70;
    }

    sub_24E88D2AC(v15);
    swift_unknownObjectRelease();
    return 1852141679;
  }
}

uint64_t sub_24EF23A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F92A2D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24EF23AC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24EF23B80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EF23C24()
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v1 <= 0x3F)
  {
    result = sub_24EA24F30();
    if (v2 <= 0x3F)
    {
      result = sub_24F92A2D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24EF23CC0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18ImpressionableRect_impressionId;
  v2 = sub_24F929598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKit18ImpressionableRect_customFields;
  v4 = sub_24F9294C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionableRect()
{
  result = qword_27F233F78;
  if (!qword_27F233F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF23E10()
{
  result = sub_24F929598();
  if (v1 <= 0x3F)
  {
    result = sub_24F9294C8();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24EF23F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24EF23F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24EF23FDC()
{
  result = qword_27F233F88;
  if (!qword_27F233F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F88);
  }

  return result;
}

uint64_t ImageLockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImageLockup.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*ImageLockup.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v75 = v4;
  v7 = *v4;
  v72 = v3;
  v73 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v62 - v9;
  v65 = sub_24F91F6B8();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F9285B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24F928388();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v62 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  type metadata accessor for Artwork();
  v21 = a1;
  sub_24F928398();
  v77 = v12;
  v24 = *(v12 + 16);
  v22 = v12 + 16;
  v23 = v24;
  v24(v14, a2, v11);
  sub_24EF24E88(&qword_27F219660, type metadata accessor for Artwork);
  v85 = v14;
  sub_24F929548();
  v79 = a2;
  if (!v82)
  {
    v29 = sub_24F92AC38();
    sub_24EF24E88(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v30 = 0x6B726F77747261;
    v31 = v73;
    v30[1] = 0xE700000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
LABEL_7:
    v35 = v78;
    (*(v77 + 8))(v79, v11);
    (*(v76 + 8))(v21, v35);
    type metadata accessor for ImageLockup();
    v36 = v75;
    swift_deallocPartialClassInstance();
    return v36;
  }

  v74 = v82;
  type metadata accessor for Lockup();
  sub_24F928398();
  v23(v85, a2, v11);
  sub_24EF24E88(&qword_27F221FB8, type metadata accessor for Lockup);
  sub_24F929548();
  if (!v82)
  {
    v32 = sub_24F92AC38();
    sub_24EF24E88(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v33 = 0x70756B636F6CLL;
    v34 = v73;
    v33[1] = 0xE600000000000000;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();

    goto LABEL_7;
  }

  v66 = v82;
  v67 = v22;
  v73 = v23;
  v25 = v69;
  v62 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v78;
  v68 = v11;
  if (v27)
  {
    v80 = v26;
    v81 = v27;
  }

  else
  {
    v37 = v63;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    (*(v64 + 8))(v37, v65);
    v80 = v38;
    v81 = v40;
  }

  sub_24F92C7F8();
  v41 = *(v76 + 8);
  v76 = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = v25;
  v43 = v41;
  v41(v42, v28);
  v36 = v75;
  v44 = v83;
  *(v75 + 120) = v82;
  *(v36 + 136) = v44;
  *(v36 + 19) = v84;
  sub_24F929608();
  v45 = v62;
  sub_24F928398();
  v73(v85, v79, v68);
  v46 = v71;
  sub_24F929548();
  sub_24E65E0D4(v46, v36 + OBJC_IVAR____TtC12GameStoreKit11ImageLockup_impressionMetrics);
  *(v36 + 2) = v74;

  sub_24F928398();
  v47 = sub_24F928348();
  v49 = v48;
  v50 = v76;
  v43(v20, v28);
  *(v36 + 3) = v47;
  *(v36 + 4) = v49;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v43(v20, v28);
  v75 = v43;
  v76 = v50;
  *(v36 + 5) = v51;
  *(v36 + 6) = v53;
  *(v36 + 7) = v66;

  v54 = v70;
  sub_24F928398();
  LOBYTE(v51) = sub_24F928278();
  v43(v54, v28);
  *(v36 + 64) = v51 & 1;
  sub_24F928398();
  v55 = v85;
  v56 = v79;
  v57 = v68;
  v58 = v73;
  v73(v85, v79, v68);
  sub_24EAFF164(v20, v55, &v82);
  v59 = v84;
  v60 = v83;
  *(v36 + 5) = v82;
  *(v36 + 6) = v60;
  *(v36 + 56) = v59;
  v71 = type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v58(v55, v56, v57);
  sub_24EF24E88(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_24F929548();

  (*(v77 + 8))(v56, v57);
  v75(v45, v78);
  *(v36 + 9) = v82;
  return v36;
}

uint64_t type metadata accessor for ImageLockup()
{
  result = qword_27F233F98;
  if (!qword_27F233F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageLockup.caption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImageLockup.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24EF24B00@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ImageLockup();
  *a1 = v1;
}

id sub_24EF24B44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 112);
  *(a2 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24EF24BA0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 88);
  v12 = *(v6 + 80);
  v9 = *(v6 + 96);
  v10 = *(v6 + 104);
  *(v6 + 80) = v2;
  *(v6 + 88) = v3;
  *(v6 + 96) = v4;
  *(v6 + 104) = v5;
  v11 = *(v6 + 112);
  *(v6 + 112) = v7;
  sub_24E951F10(v2, v3, v4, v5, v7);
  sub_24E951FEC(v12, v8, v9, v10, v11);
}

id sub_24EF24C54@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 112);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

__n128 sub_24EF24CAC(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v8;
  v9 = *(v1 + 112);
  *(v1 + 112) = v3;
  sub_24E951FEC(v4, v5, v6, v7, v9);
  return result;
}

uint64_t ImageLockup.deinit()
{

  sub_24E951FEC(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_24E6585F8(v0 + 120);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit11ImageLockup_impressionMetrics);
  return v0;
}

uint64_t ImageLockup.__deallocating_deinit()
{
  ImageLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF24E88(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_24EF24EF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t)
{
  type metadata accessor for ImageLockup();
  v7 = swift_allocObject();
  result = ImageLockup.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF24F6C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for ImageLockup();
  *a1 = v3;
}

id sub_24EF24FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 112);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24EF25038()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t DiffablePageContentIdentifier.init(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F928D68();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DiffablePageContentIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    result = sub_24E9BBAA8(a1);
    v9 = v17;
    v20 = v17;
    v10 = v16;
    v18 = v15;
    v19 = v16;
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  else
  {
    sub_24E9BBAA8(&v15);
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    *&v18 = v11;
    *(&v18 + 1) = v13;
    sub_24F92C7F8();
    return sub_24E9BBAA8(a1);
  }

  return result;
}

uint64_t DiffablePageContentIdentifier.init(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A48();

  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t DiffablePageContentIdentifier.init<A>(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v2 = sub_24F928A68();
  sub_24F928A48();

  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t DiffablePageContentIdentifier.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EF25550()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EF25594()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

__n128 sub_24EF25648(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_24EF25658()
{
  result = qword_27F233FA8;
  if (!qword_27F233FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233FA8);
  }

  return result;
}

uint64_t UpsellGridContent.__allocating_init(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UpsellGridContent.init(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t UpsellGridContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UpsellGridContent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t UpsellGridContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v28 - v4;
  v5 = sub_24F9285B8();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  type metadata accessor for ImpressionableArtwork();
  sub_24F928398();
  v13 = *(v36 + 16);
  v33 = v5;
  v13(v7, v35, v5);
  sub_24EF25B48();
  sub_24F929548();
  *(v37 + 16) = v38;
  v34 = a1;
  sub_24F928398();
  v14 = v29;
  sub_24F9282B8();
  v15 = *(v9 + 8);
  v30 = v9 + 8;
  v31 = v8;
  v16 = v8;
  v17 = v14;
  v15(v11, v16);
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  if (v20 == 1)
  {
    v21 = v35;
    sub_24E8F2EE8(v17);
    v22 = MEMORY[0x277D84F90];
LABEL_5:
    v15(v34, v31);
    v25 = v36;
    v26 = v37;
    *(v37 + 24) = v22;
    (*(v25 + 8))(v21, v33);
    return v26;
  }

  MEMORY[0x28223BE20](v20);
  v21 = v35;
  *(&v28 - 2) = v35;
  v23 = v32;
  v24 = sub_24F92ABB8();
  if (!v23)
  {
    v22 = v24;
    (*(v19 + 8))(v17, v18);
    goto LABEL_5;
  }

  type metadata accessor for UpsellGridContent();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_24EF25B48()
{
  result = qword_27F225B18;
  if (!qword_27F225B18)
  {
    type metadata accessor for ImpressionableArtwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B18);
  }

  return result;
}

uint64_t sub_24EF25BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EF25B48();
  return sub_24F929548();
}

uint64_t UpsellGridContent.deinit()
{

  return v0;
}

uint64_t UpsellGridContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EF25E04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UpsellGridContent();
  v7 = swift_allocObject();
  result = UpsellGridContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

GameStoreKit::TopShelfInsetItem::TintStyle_optional __swiftcall TopShelfInsetItem.TintStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t TopShelfInsetItem.TintStyle.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24EF25F54@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void *TopShelfInsetItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_24F9285B8();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v12, v7);
  v17 = (v3 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_heading);
  *v17 = v13;
  v17[1] = v15;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v16(v12, v7);
  v21 = (v3 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_subheading);
  *v21 = v18;
  v21[1] = v20;
  v22 = v32;
  sub_24F928398();
  sub_24EF26340();
  sub_24F928208();
  v16(v12, v7);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_tintStyle) = v37;
  v23 = *(v8 + 16);
  v24 = v31;
  v33 = a1;
  v23(v31, a1, v7);
  v25 = v36;
  v26 = v35;
  v27 = v34;
  (*(v35 + 16))(v34, v22, v36);
  v28 = TopShelfItem.init(deserializing:using:)(v24, v27);
  (*(v26 + 8))(v22, v25);
  v16(v33, v7);
  return v28;
}

unint64_t sub_24EF26340()
{
  result = qword_27F233FB0;
  if (!qword_27F233FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233FB0);
  }

  return result;
}

uint64_t TopShelfInsetItem.heading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_heading);

  return v1;
}

uint64_t TopShelfInsetItem.subheading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_subheading);

  return v1;
}

uint64_t sub_24EF26420()
{
}

uint64_t TopShelfInsetItem.deinit()
{
  v0 = TopShelfItem.deinit();

  return v0;
}

uint64_t TopShelfInsetItem.__deallocating_deinit()
{
  TopShelfItem.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EF2655C()
{
  result = qword_27F233FB8;
  if (!qword_27F233FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233FB8);
  }

  return result;
}

uint64_t type metadata accessor for TopShelfInsetItem()
{
  result = qword_27F233FC0;
  if (!qword_27F233FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF26694()
{
  result = sub_24F92B098();
  qword_27F39CFE0 = result;
  return result;
}

id sub_24EF266CC(uint64_t a1)
{
  v2 = v1;
  v46[4] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  sub_24E99091C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E70E058(v7);
    (*(v9 + 56))(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], 1, 1, v8);
    *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = sub_24E6086DC(MEMORY[0x277D84F90]);
    v45.receiver = v2;
    v45.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v45, sel_init);
    sub_24E70E058(a1);
  }

  else
  {
    sub_24F91F3E8();
    v16 = *(v9 + 8);
    v16(v7, v8);
    (*(v9 + 32))(v14, v11, v8);
    v17 = sub_24F91F4B8();
    v39 = ObjectType;
    v40 = v16;
    v20 = v17;
    v22 = v21;
    v23 = objc_opt_self();
    v24 = sub_24F91F4C8();
    v46[0] = 0;
    v25 = [v23 JSONObjectWithData:v24 options:0 error:v46];

    if (v25)
    {
      v37 = v20;
      v38 = v22;
      v26 = v46[0];
      sub_24F92C648();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      v27 = (v9 + 16);
      v28 = (v9 + 56);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = sub_24E6086DC(MEMORY[0x277D84F90]);
        v36 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path;
        (*v27)(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], v14, v8);
        (*v28)(&v2[v36], 0, 1, v8);
        v42.receiver = v2;
        v42.super_class = v39;
        v15 = objc_msgSendSuper2(&v42, sel_init);
        sub_24E627880(v37, v38);
        sub_24E70E058(a1);
        v40(v14, v8);
        return v15;
      }

      *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = v43;
      v29 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path;
      (*v27)(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], v14, v8);
      (*v28)(&v2[v29], 0, 1, v8);
      v41.receiver = v2;
      v41.super_class = v39;
      v30 = objc_msgSendSuper2(&v41, sel_init);
      sub_24E627880(v37, v38);
      v31 = v40;
    }

    else
    {
      v32 = v46[0];
      v33 = sub_24F91F278();

      swift_willThrow();
      v34 = v33;
      sub_24E627880(v20, v22);
      v35 = v39;
      v31 = v40;
      v18 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path;
      (*(v9 + 16))(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], v14, v8);
      (*(v9 + 56))(&v2[v18], 0, 1, v8);
      *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = sub_24E6086DC(MEMORY[0x277D84F90]);
      v44.receiver = v2;
      v44.super_class = v35;
      v30 = objc_msgSendSuper2(&v44, sel_init);
    }

    v15 = v30;
    sub_24E70E058(a1);
    v31(v14, v8);
  }

  return v15;
}

id sub_24EF26C0C()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 URLsForDirectory:9 inDomains:1];

  v9 = sub_24F91F4A8();
  v10 = sub_24F92B5A8();

  if (*(v10 + 16))
  {
    v11 = *(v9 - 8);
    (*(v11 + 16))(v6, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9);

    (*(v11 + 56))(v6, 0, 1, v9);
  }

  else
  {

    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_24E99091C(v6, v3);
  v12 = objc_allocWithZone(ObjectType);
  v13 = sub_24EF266CC(v3);
  sub_24E70E058(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_24EF26EB0()
{
  v1 = v0;
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F92C2F8();
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = sub_24F92C2F8();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      swift_beginAccess();

      sub_24E988E4C(v15, v14, v10, v11);
      swift_endAccess();
      sub_24E99091C(v0 + OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_24E70E058(v4);
        v16 = v0;
        v17 = v10;
        v18 = v11;
        v19 = v15;
      }

      else
      {
        v31 = v15;
        v20 = v32;
        (*(v6 + 32))(v32, v4, v5);
        v21 = objc_opt_self();

        v22 = sub_24F92AE28();

        v33[0] = 0;
        v23 = [v21 dataWithJSONObject:v22 options:0 error:v33];

        v24 = v33[0];
        if (v23)
        {
          v25 = sub_24F91F4E8();
          v27 = v26;

          sub_24F91F4F8();
          (*(v6 + 8))(v20, v5);
          sub_24E627880(v25, v27);
        }

        else
        {
          v28 = v24;
          v29 = sub_24F91F278();

          swift_willThrow();
          (*(v6 + 8))(v20, v5);
        }

        v16 = v1;
        v17 = v10;
        v18 = v11;
        v19 = v31;
      }

      sub_24EF27298(v16, v17, v18, v19, v14);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24EF27298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = sub_24F927D88();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F927DC8();
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300);
  v15 = sub_24F92BEF8();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v17 = v22;
  v16[4] = a3;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_24EF27C1C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_92;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EEAC5D4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v14, v11, v18);
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

id sub_24EF27608(id a1, void *a2, uint64_t a3)
{
  v6 = sub_24F92C2F8();
  if (!v7)
  {
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    v14 = a2;
    sub_24F92A828();
    swift_willThrow();
    return a1;
  }

  v8 = v7;
  v9 = v6;
  v10 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage;
  swift_beginAccess();
  if (*(*(a3 + v10) + 16) && (sub_24E76D644(v9, v8), (v11 & 1) != 0))
  {
    swift_endAccess();
    swift_bridgeObjectRetain_n();
    v12 = sub_24F92CF68();
    a1 = [objc_opt_self() valueWithObject:v12 inContext:a1];
    result = swift_unknownObjectRelease();
    if (a1)
    {

LABEL_8:

      return a1;
    }
  }

  else
  {
    swift_endAccess();
    result = [objc_opt_self() valueWithUndefinedInContext_];
    if (result)
    {
      a1 = result;
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for JSStorageObject()
{
  result = qword_27F233FE0;
  if (!qword_27F233FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF27934()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EF279EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() defaultCenter];
  if (qword_27F210C68 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39CFE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v13 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  *(inited + 96) = v13;
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  sub_24F92C7F8();
  *(inited + 168) = v13;
  *(inited + 144) = a4;
  *(inited + 152) = a5;

  sub_24E608210(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470);
  swift_arrayDestroy();
  v14 = sub_24F92AE28();

  [v10 postNotificationName:v11 object:a1 userInfo:v14];
}

uint64_t sub_24EF27BD4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ReviewsDiffablePagePresenter.init(objectGraph:reviewsPage:preferSelectedActionTitles:)(uint64_t a1, uint64_t a2, int a3)
{
  v69 = a1;
  v6 = sub_24F92BEE8();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24F92BE88();
  MEMORY[0x28223BE20](v64);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v59 - v12;
  v13 = (v3 + qword_27F39CFE8);
  v14._object = 0x800000024FA64580;
  v14._countAndFlagsBits = 0xD000000000000017;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  *v13 = localizedString(_:comment:)(v14, v15);
  v16 = qword_27F39CFF0;
  *(v3 + qword_27F39CFF0) = 0;
  *(v3 + qword_27F39CFF8) = MEMORY[0x277D84F90];
  v17 = v3 + qword_27F39D000;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v3 + qword_27F39D008) = 0;
  v61 = qword_27F39D010;
  *(v3 + qword_27F39D010) = 0;
  v62 = a3;
  *(v3 + qword_27F233FF0) = a3;
  v71 = a2;
  v60 = OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions;
  v18 = *(a2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
  if (v18 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v20 = 0;
    v21 = (v71 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
    while ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x253052270](v20, v18);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v24 = v21[1];
      if (v24)
      {
        v25 = *(v22 + 16) == *v21 && v24 == *(v22 + 24);
        if (v25 || (sub_24F92CE08() & 1) != 0)
        {
          goto LABEL_27;
        }
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_20;
      }
    }

    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v22 = *(v18 + 8 * v20 + 32);

    v23 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v26 = *(v71 + v60);
  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_22;
    }

LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x253052270](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v26 + 32);
  }

LABEL_27:
  swift_beginAccess();
  *(v3 + v16) = v22;

  v28 = 0;
  v29 = 0;
  if ((v62 & 1) == 0)
  {
    v28 = *(v71 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  }

  v30 = (v3 + qword_27F39D018);
  *v30 = v28;
  v30[1] = v29;
  v31 = *(v71 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction);
  v32 = v61;
  swift_beginAccess();
  *(v3 + v32) = v31;

  v33 = sub_24F91F4A8();
  (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  *(v3 + qword_27F39CC00) = 0;
  v34 = MEMORY[0x277D84F90];
  *(v3 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v3 + qword_27F2326C8) = 0;
  v35 = *(*v3 + 640);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE10);
  v37 = *(*(v36 - 8) + 56);
  v37(v3 + v35, 1, 1, v36);
  v38 = *(*v3 + 648);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v39 - 8) + 56))(v3 + v38, 1, 1, v39);
  v40 = *(*v3 + 656);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE08);
  (*(*(v41 - 8) + 56))(v3 + v40, 1, 1, v41);
  v37(v3 + *(*v3 + 664), 1, 1, v36);
  v42 = *(*v3 + 672);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v43 - 8) + 56))(v3 + v42, 1, 1, v43);
  v44 = *(*v3 + 680);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v45 - 8) + 56))(v3 + v44, 1, 1, v45);
  v46 = *(*v3 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v73 = v34;
  sub_24EBD4288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24EC3122C();
  v47 = v3;
  sub_24F92C6A8();
  (*(v67 + 104))(v66, *MEMORY[0x277D85260], v68);
  *(v3 + v46) = sub_24F92BF38();
  sub_24EBD3128(v47 + *(*v47 + 696));
  v48 = (v47 + *(*v47 + 704));
  *v48 = 0u;
  v48[1] = 0u;
  *(v48 + 25) = 0u;
  v49 = *(*v3 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v3 + v49) = sub_24F92ADA8();
  v50 = *(*v3 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v3 + v50) = sub_24F92ADA8();
  v51 = *(*v3 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v3 + v51) = sub_24F92ADA8();
  *(v3 + *(*v3 + 736)) = 0;
  v52 = (v47 + *(*v47 + 752));
  *v52 = 0;
  v52[1] = 0;
  v53 = v70;
  sub_24E60169C(v70, v3 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v74, v47 + *(*v47 + 744), &qword_27F229490);
  v54 = type metadata accessor for InlineUnifiedMessagePresenter();
  v72.receiver = objc_allocWithZone(v54);
  v72.super_class = v54;
  *(v47 + qword_27F39CC08) = objc_msgSendSuper2(&v72, sel_init);

  v56 = sub_24EBBA158(v55, 0, 0, 0);
  v57 = *(*v56 + 1112);

  v58 = v71;
  *(v56 + qword_27F39CC00) = v57(v71);

  sub_24EBC4298(0);

  sub_24E601704(v74, &qword_27F229490);
  sub_24E601704(v53, &qword_27F228530);

  sub_24EF28750(v58);

  return v56;
}

uint64_t sub_24EF28750(uint64_t a1)
{
  v47 = sub_24F91F6B8();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v44 - v5;
  v63 = sub_24F928AD8();
  v6 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v56 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
  if (!(v56 >> 62))
  {
    v11 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      v74 = MEMORY[0x277D84F90];
      v48 = v11;
      sub_24F92C978();
LABEL_4:
      v12 = 0;
      v13 = *(v55 + qword_27F233FF0);
      v54 = v56 & 0xC000000000000001;
      v53 = (v6 + 16);
      v52 = (v6 + 8);
      v45 = (v2 + 8);
      v51 = (v6 + 32);
      v14 = v13 == 0;
      v15 = 32;
      if (!v14)
      {
        v15 = 48;
      }

      v50 = v15;
      v16 = 40;
      if (!v14)
      {
        v16 = 56;
      }

      v49 = v16;
      v17 = v48;
      v44 = v10;
      do
      {
        v60 = v12;
        if (v54)
        {
          v27 = MEMORY[0x253052270](v12, v56);
        }

        else
        {
          v27 = *(v56 + 8 * v12 + 32);
        }

        v28 = *(v27 + 24);
        v72[0] = *(v27 + 16);
        v72[1] = v28;

        sub_24F92C7F8();
        v58 = *(v27 + v50);
        v59 = *(v27 + v49);

        sub_24F928A98();
        v29 = swift_allocObject();
        swift_weakInit();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        *(v30 + 24) = v27;
        type metadata accessor for LocalAction();
        v31 = swift_allocObject();
        v32 = (v31 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler);
        *v32 = sub_24EF29A78;
        v32[1] = v30;
        sub_24E60169C(v73, v72, &qword_27F235830);
        (*v53)(v61, v10, v63);
        v33 = sub_24F929608();
        (*(*(v33 - 8) + 56))(v62, 1, 1, v33);
        v34 = (v31 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
        *v34 = 0u;
        v34[1] = 0u;
        sub_24E60169C(v72, &v69, &qword_27F235830);
        v35 = *(&v70 + 1);
        v57 = v29;

        if (v35)
        {
          sub_24E601704(v72, &qword_27F235830);
          (*v52)(v10, v63);
          sub_24E601704(v73, &qword_27F235830);
          v66 = v69;
          v67 = v70;
          v68 = v71;
        }

        else
        {

          v18 = v46;
          sub_24F91F6A8();
          v19 = sub_24F91F668();
          v21 = v20;
          (*v45)(v18, v47);
          v64 = v19;
          v22 = v63;
          v10 = v44;
          v65 = v21;
          v17 = v48;
          sub_24F92C7F8();

          sub_24E601704(v72, &qword_27F235830);
          (*v52)(v10, v22);
          sub_24E601704(v73, &qword_27F235830);
          sub_24E601704(&v69, &qword_27F235830);
        }

        v12 = v60 + 1;
        v23 = v67;
        v69 = v66;
        v70 = v67;
        v24 = v68;
        v71 = v68;
        v25 = v31 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
        *v25 = v66;
        *(v25 + 1) = v23;
        *(v25 + 4) = v24;
        sub_24E65E0D4(v62, v31 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
        v26 = v59;
        v31[2] = v58;
        v31[3] = v26;
        v31[4] = 0;
        v31[5] = 0;
        (*v51)(v31 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v61, v63);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      while (v17 != v12);
      v36 = v74;
      goto LABEL_17;
    }

LABEL_22:
    v41 = qword_27F39CFF8;
    v42 = v55;
    swift_beginAccess();
    *(v42 + v41) = MEMORY[0x277D84F90];
  }

  if (sub_24F92C738() < 1)
  {
    goto LABEL_22;
  }

  v39 = sub_24F92C738();
  v36 = MEMORY[0x277D84F90];
  if (v39)
  {
    v74 = MEMORY[0x277D84F90];
    v40 = v39;
    sub_24F92C978();
    v48 = v40;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v37 = qword_27F39CFF8;
  v38 = v55;
  swift_beginAccess();
  *(v38 + v37) = v36;
}

uint64_t ReviewsDiffablePagePresenter.title.getter()
{
  v1 = *(v0 + qword_27F39CFE8);

  return v1;
}

uint64_t sub_24EF28F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39CFF0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_24EF28FD8(v5);
}

uint64_t sub_24EF28FD8(uint64_t a1)
{
  v3 = qword_27F39CFF0;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (!a1 || ((result = *(v5 + 16), result == *(a1 + 16)) ? (v6 = *(v5 + 24) == *(a1 + 24)) : (v6 = 0), !v6 && (result = sub_24F92CE08(), (result & 1) == 0)))
    {
      v7 = qword_27F39D008;
      swift_beginAccess();
      *(v1 + v7) = 1;

      sub_24F23AC88(1);
    }
  }

  return result;
}

uint64_t ReviewsDiffablePagePresenter.sortMenuTitle.getter()
{
  v1 = *(v0 + qword_27F39D018);

  return v1;
}

uint64_t ReviewsDiffablePagePresenter.initialFocusedReviewId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39D000;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F235830);
}

uint64_t ReviewsDiffablePagePresenter.isUpdatingSortOption.getter()
{
  v1 = qword_27F39D008;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ReviewsDiffablePagePresenter.trailingNavBarAction.setter(uint64_t a1)
{
  v3 = qword_27F39D010;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EF29280(uint64_t a1)
{
  v3 = v1[2];
  swift_beginAccess();
  v4 = v1[3];
  swift_beginAccess();
  v5 = v1[4];
  v6 = qword_27F39CFF0;
  swift_beginAccess();
  v7 = *(v1 + v6);
  type metadata accessor for ReviewsDiffablePageContentPresenter();
  swift_allocObject();

  return ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(v3, a1, v4, v5, v7);
}

uint64_t sub_24EF29368(uint64_t a1, char a2)
{
  sub_24F2F62DC(a1, a2);
  sub_24EF28750(a1);
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8))
  {

    sub_24F92C7F8();
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  v4 = qword_27F39D000;
  swift_beginAccess();
  sub_24E74EE5C(v7, v2 + v4);
  swift_endAccess();
  v5 = qword_27F39D008;
  result = swift_beginAccess();
  *(v2 + v5) = 0;
  return result;
}

uint64_t sub_24EF2943C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = qword_27F39CFF0;
    swift_beginAccess();
    v6 = *(v4 + v5);
    *(v4 + v5) = a2;
    if (v6 && (*(a2 + 16) == *(v6 + 16) ? (v7 = *(a2 + 24) == *(v6 + 24)) : (v7 = 0), v7 || (sub_24F92CE08() & 1) != 0))
    {
    }

    else
    {
      v8 = qword_27F39D008;
      swift_beginAccess();
      *(v4 + v8) = 1;

      sub_24F23AC88(1);
    }
  }

  return result;
}

uint64_t ReviewsDiffablePagePresenter.perform(action:sender:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_24E60169C(a2, &v4, &qword_27F2129B0);

  sub_24F92AD88();
  return sub_24E601704(&v3, &qword_27F22CE40);
}

uint64_t sub_24EF295F4()
{

  sub_24E601704(v0 + qword_27F39D000, &qword_27F235830);
}

uint64_t ReviewsDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBF388();

  sub_24E601704(v0 + qword_27F39D000, &qword_27F235830);

  return v0;
}

uint64_t ReviewsDiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_24EBBF388();

  sub_24E601704(v0 + qword_27F39D000, &qword_27F235830);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF2981C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_24E60169C(a2, &v4, &qword_27F2129B0);

  sub_24F92AD88();
  return sub_24E601704(&v3, &qword_27F22CE40);
}

uint64_t sub_24EF298AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39CFF0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for ReviewsDiffablePagePresenter()
{
  result = qword_27F233FF8;
  if (!qword_27F233FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF29A00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EF29A38()
{

  return swift_deallocObject();
}

double sub_24EF29A90(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v2 = swift_allocObject();
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v2 + 16) = xmmword_24F979FB0;
  *(v2 + 32) = xmmword_24F976090;
  v7 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 48) = v7;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  __asm { FMOV            V6.2D, #1.0 }

  *(v2 + 88) = _Q6;
  __asm { FMOV            V7.2D, #10.0 }

  *(v2 + 104) = _Q7;
  *(v2 + 120) = _Q7;
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  *(v2 + 152) = 1;
  *(v2 + 160) = result;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = xmmword_24F976010;
  *(v2 + 208) = v7;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 248) = _Q6;
  *(v2 + 264) = 0x4028000000000000;
  __asm { FMOV            V6.2D, #12.0 }

  *(v2 + 272) = _Q6;
  *(v2 + 288) = 0x4028000000000000;
  *(v2 + 296) = a1;
  *(v2 + 304) = a1;
  *(v2 + 312) = 1;
  *(v2 + 320) = result;
  *(v2 + 328) = v4;
  *(v2 + 336) = v5;
  *(v2 + 344) = v6;
  *(v2 + 352) = xmmword_24F976080;
  *(v2 + 368) = v7;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x3FF0000000000000;
  *(v2 + 416) = xmmword_24F9B1B90;
  *(v2 + 432) = _Q6;
  *(v2 + 448) = 0x4028000000000000;
  *(v2 + 456) = a1;
  *(v2 + 464) = a1;
  *(v2 + 472) = 1;
  *(v2 + 480) = result;
  *(v2 + 488) = v4;
  *(v2 + 496) = v5;
  *(v2 + 504) = v6;
  *(v2 + 512) = xmmword_24F976070;
  *(v2 + 528) = v7;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0x4000000000000000;
  __asm { FMOV            V6.2D, #20.0 }

  *(v2 + 576) = xmmword_24F9B1BA0;
  *(v2 + 592) = _Q6;
  *(v2 + 608) = 0x4034000000000000;
  *(v2 + 616) = a1;
  *(v2 + 624) = a1;
  *(v2 + 632) = 1;
  *(v2 + 640) = result;
  *(v2 + 648) = v4;
  *(v2 + 656) = v5;
  *(v2 + 664) = v6;
  *(v2 + 672) = xmmword_24F976060;
  *(v2 + 688) = v7;
  *(v2 + 704) = 0;
  *(v2 + 710) = v18;
  *(v2 + 706) = v17;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0x4000000000000000;
  *(v2 + 736) = xmmword_24F9B1BA0;
  *(v2 + 752) = _Q6;
  *(v2 + 768) = 0x4034000000000000;
  *(v2 + 776) = a1;
  *(v2 + 784) = a1;
  *(v2 + 792) = 1;
  *(v2 + 796) = *&v16[3];
  *(v2 + 793) = *v16;
  *(v2 + 800) = result;
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  *(v2 + 824) = v6;
  *(v2 + 832) = xmmword_24F976050;
  *(v2 + 848) = v7;
  *(v2 + 864) = 0;
  *(v2 + 870) = v21;
  *(v2 + 866) = v20;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0x4008000000000000;
  *(v2 + 896) = xmmword_24F97EE50;
  *(v2 + 912) = _Q6;
  *(v2 + 928) = 0x4034000000000000;
  *(v2 + 936) = a1;
  *(v2 + 944) = a1;
  *(v2 + 952) = 1;
  *(v2 + 956) = *&v19[3];
  *(v2 + 953) = *v19;
  *(v2 + 960) = result;
  *(v2 + 968) = v4;
  *(v2 + 976) = v5;
  *(v2 + 984) = v6;
  *(v2 + 992) = xmmword_24F976040;
  *(v2 + 1008) = v7;
  *(v2 + 1024) = 0;
  *(v2 + 1030) = v24;
  *(v2 + 1026) = v23;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0x4010000000000000;
  *(v2 + 1056) = xmmword_24F97EE60;
  *(v2 + 1072) = _Q6;
  *(v2 + 1088) = 0x4034000000000000;
  *(v2 + 1096) = a1;
  *(v2 + 1104) = a1;
  *(v2 + 1112) = 1;
  *(v2 + 1116) = *&v22[3];
  *(v2 + 1113) = *v22;
  *(v2 + 1120) = result;
  *(v2 + 1128) = v4;
  *(v2 + 1136) = v5;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = xmmword_24F976030;
  *(v2 + 1168) = v7;
  *(v2 + 1184) = 0;
  *(v2 + 1190) = v27;
  *(v2 + 1186) = v26;
  *(v2 + 1192) = 0u;
  *(v2 + 1208) = 0x4014000000000000;
  *(v2 + 1216) = xmmword_24F97EE70;
  *(v2 + 1232) = _Q6;
  *(v2 + 1248) = 0x4034000000000000;
  *(v2 + 1256) = a1;
  *(v2 + 1264) = a1;
  *(v2 + 1272) = 1;
  *(v2 + 1276) = *&v25[3];
  *(v2 + 1273) = *v25;
  *(v2 + 1280) = result;
  *(v2 + 1288) = v4;
  *(v2 + 1296) = v5;
  *(v2 + 1304) = v6;
  return result;
}

void *NetworkActivity.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v1 = sub_24E74EC40();
  v2 = sub_24F92BEF8();
  v3 = MEMORY[0x277D225C0];
  v0[8] = v1;
  v0[9] = v3;
  v0[5] = v2;
  v0[10] = 0;
  return v0;
}

void *NetworkActivity.init()()
{
  v1 = v0;
  v0[2] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v2 = sub_24E74EC40();
  v3 = sub_24F92BEF8();
  v4 = MEMORY[0x277D225C0];
  v1[8] = v2;
  v1[9] = v4;
  v1[5] = v3;
  v1[10] = 0;
  return v1;
}

uint64_t sub_24EF29F10(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_24EF2A624(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t NetworkActivity.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_24EF2A624(a1, a2);

  return swift_unknownObjectRelease();
}

void (*NetworkActivity.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 40) = Strong;
  *(v4 + 48) = v6;
  return sub_24EF2A02C;
}

void sub_24EF2A02C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 64) + 32) = *(*a1 + 48);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[8];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + 16);
    [v5 lock];
    if (*(v4 + 80) >= 1)
    {
      v6 = v3[8];
      swift_beginAccess();
      sub_24E615E00(v6 + 40, v3);
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_24EF2A880;
      v7[4] = 0;

      sub_24F928C78();

      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    [v5 unlock];
  }

  free(v3);
}

uint64_t NetworkActivity.delegateScheduler.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);
  sub_24E612C80(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_24EF2A28C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall NetworkActivity.begin()()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 80);
  if (!v2)
  {
    swift_beginAccess();
    sub_24E615E00(v0 + 40, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = swift_allocObject();
    v3[2] = v0;
    v3[3] = sub_24EF2A880;
    v3[4] = 0;

    sub_24F928C78();

    __swift_destroy_boxed_opaque_existential_1(v6);
    v2 = *(v0 + 80);
  }

  v4 = __OFADD__(v2, 1);
  v5 = v2 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v5;
    [v1 unlock];
  }
}

Swift::Void __swiftcall NetworkActivity.end()()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 80);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v4;
    if (!v4)
    {
      swift_beginAccess();
      sub_24E615E00(v0 + 40, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v5 = swift_allocObject();
      v5[2] = v0;
      v5[3] = sub_24EF2A56C;
      v5[4] = 0;

      sub_24F928C78();

      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    [v1 unlock];
  }
}

uint64_t NetworkActivity.deinit()
{
  sub_24E883630(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  return v0;
}

uint64_t NetworkActivity.__deallocating_deinit()
{
  sub_24E883630(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_24EF2A624(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[4] = a2;
  swift_unknownObjectWeakAssign();
  v4 = v2[2];
  [v4 lock];
  if (v2[10] >= 1)
  {
    swift_beginAccess();
    sub_24E615E00((v2 + 5), v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = sub_24EF2A880;
    v5[4] = 0;

    sub_24F928C78();

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return [v4 unlock];
}

uint64_t sub_24EF2A768@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t objectdestroyTm_41()
{

  return swift_deallocObject();
}

uint64_t sub_24EF2A8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if ((v3 & 0xE000) == 0x8000 && v3 == 0x8000 && *v1 == 1 && (*(v1 + 16) | *(v1 + 24) | *(v1 + 8)) == 0)
  {
    sub_24F926C88();
    sub_24F926D08();
  }

  result = sub_24F924E28();
  *a1 = v7;
  *(a1 + 8) = v8;
  return result;
}

unint64_t sub_24EF2A990()
{
  result = qword_27F234008;
  if (!qword_27F234008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234008);
  }

  return result;
}

char *ShowSettingsAction.__allocating_init(title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v11 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v10[v11], a3, v12);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v15 = sub_24F929608();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = &v10[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v10[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v33, &v30);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *v17 = v30;
    *(v17 + 1) = v18;
    *(v17 + 4) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v6;
    v21 = a3;
    v22 = a1;
    v23 = a2;
    v24 = v19;
    v25 = v7;
    v27 = v26;
    (*(v25 + 8))(v9, v20);
    v29[1] = v24;
    v29[2] = v27;
    a2 = v23;
    a1 = v22;
    a3 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830);
  }

  (*(v13 + 8))(a3, v12);
  sub_24E601704(v33, &qword_27F235830);
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  return v10;
}

void *ShowSettingsAction.init(title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v15 + 16))(v17, a3, v14);
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v22 = v20;
    v31 = a3;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    (*(v32 + 8))(v10, v21);
    v33 = v22;
    v34 = v26;
    a2 = v24;
    a1 = v23;
    a3 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v41, &qword_27F235830);
  v27 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

char *ShowSettingsAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ShowSettingsAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ShowSettingsAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t ShowSettingsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowSettingsAction()
{
  result = qword_27F234018;
  if (!qword_27F234018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF2B6D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EF2B73C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EF2B7DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EF2B88C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchHintsPresenter.init(objectGraph:searchTextPresenter:searchGhostHintTracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_precedingFetch) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchBarCancelAction) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchFieldClearAction) = 0;
  v9 = (v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchTextPresenter) = a2;

  v11 = sub_24EC8415C(v10, 0, 0, 0);

  if (a3)
  {
    v12 = type metadata accessor for SearchGhostHintMetricsTracker();
    v13 = &protocol witness table for SearchGhostHintMetricsTracker;
    v14 = a3;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v14;
  v23 = v12;
  v24 = v13;
  v15 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
  swift_beginAccess();

  sub_24EF2D334(v22, v11 + v15);
  swift_endAccess();
  if (a2)
  {
    v16 = sub_24E74EC40();

    v17 = sub_24F92BEF8();
    v23 = v16;
    v24 = MEMORY[0x277D225C0];
    v22[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233248);
    type metadata accessor for SearchHintsPresenter();
    sub_24E602068(&qword_27F234038, &qword_27F233248);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = 0;
  }

  else
  {

    v18 = 1;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  (*(*(v19 - 8) + 56))(v8, v18, 1, v19);
  sub_24E601704(v8, &qword_27F2226F0);
  return v11;
}

uint64_t sub_24EF2BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_24EF2BED0(1);
}

uint64_t (*sub_24EF2BE2C(uint64_t a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EF2DAB4;
  *(v2 + 24) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24EF2DAF4;
  *(v3 + 24) = v2;

  return sub_24EF2DB1C;
}

uint64_t sub_24EF2BED0(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v7 = v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v8 = *(v7 + 8), v9 = swift_getObjectType(), LOBYTE(v8) = (*(v8 + 24))(v9, v8), swift_unknownObjectRelease(), (v8 & 1) != 0))
  {
    swift_beginAccess();
    *(v2 + 32) = 1;
    v10 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_precedingFetch;
    v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_precedingFetch);
    if (v11)
    {
      v12 = *(v11 + 16);

      [v12 lock];
      if ((*(v11 + 32) & 1) == 0)
      {

        v13 = sub_24F92A928();

        if ((v13 & 1) == 0)
        {
          *(v11 + 32) = 1;
          sub_24EF2D3F0();
          v14 = swift_allocError();

          sub_24F92A9A8();
        }
      }

      [v12 unlock];
    }

    v15 = (v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
    swift_beginAccess();
    v16 = v15[1];
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = *v15;
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = *v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      type metadata accessor for JSIntentDispatcher();
      v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
      sub_24F928FD8();

      sub_24F92A758();

      sub_24EB47808(v17, v16, v19, "GameStoreKit/SearchHintsPresenter.swift", 39, 2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234048);
      v20 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229680);

      *(v20 + 24) = sub_24F92A9E8();
      *(v20 + 16) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
      *(v20 + 32) = 0;
      v31 = sub_24F929638();
      v32 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v30);
      swift_retain_n();
      sub_24F929628();
      sub_24E602068(&qword_27F234050, &qword_27F229680);
      sub_24F92A558();

      __swift_destroy_boxed_opaque_existential_1(v30);
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v17;
      v22[4] = v16;
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = v17;
      v24[4] = v16;
      v25 = sub_24E74EC40();

      v26 = sub_24F92BEF8();
      v31 = v25;
      v32 = MEMORY[0x277D225C0];
      v30[0] = v26;

      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(v30);

      *(v2 + v10) = v20;
    }

    else
    {
LABEL_19:
      *(v2 + v4) = MEMORY[0x277D84F90];

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v28 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v28 + 16) + 8))(ObjectType);
        result = swift_unknownObjectRelease();
      }

      *(v2 + 32) = 0;
    }
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A588();
  }

  return result;
}

uint64_t sub_24EF2C55C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24F9287F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = (result + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
    swift_beginAccess();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14 == a3 && v15 == a4;
      if (v16 || (sub_24F92CE08() & 1) != 0)
      {
        v17 = v11[2];
        v18 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
        swift_beginAccess();
        *(v13 + v18) = v17;

        v31[3] = type metadata accessor for SearchHintSet();
        v31[4] = &protocol witness table for SearchHintSet;
        v31[5] = sub_24EF2DA5C();
        v31[0] = v11;
        swift_beginAccess();

        sub_24EA095A4(v31, v13 + 40);
        swift_endAccess();
        sub_24EC832DC();
        sub_24E601704(v31, &qword_27F224F98);
        sub_24F9287E8();
        sub_24ED48060(v10);
        (*(v8 + 8))(v10, v7);
        v19 = v11[4];
        if (v19)
        {
          v20 = v11[3];
          if (!UIAccessibilityIsVoiceOverRunning())
          {
            if (*(v13 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchTextPresenter))
            {

              v21._countAndFlagsBits = a3;
              v21._object = a4;
              v22._countAndFlagsBits = v20;
              v22._object = v19;
              SearchTextPresenter.suggestGhostHint(toExpand:to:)(v21, v22);
            }
          }
        }

        v23 = *(v11 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction);
        v24 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchFieldClearAction;
        swift_beginAccess();
        *(v13 + v24) = v23;

        v25 = *(v11 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction);
        v26 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchBarCancelAction;
        swift_beginAccess();
        *(v13 + v26) = v25;

        v27 = v13 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = *(v27 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v28 + 16) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        *(v13 + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_24EF2C8C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  result = swift_dynamicCast();
  if (!result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v8 = result;
      v9 = (result + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
      swift_beginAccess();
      v10 = v9[1];
      if (v10)
      {
        v11 = *v9 == a3 && v10 == a4;
        if (v11 || (sub_24F92CE08() & 1) != 0)
        {
          if (qword_27F210568 != -1)
          {
            swift_once();
          }

          v12 = sub_24F92AAE8();
          __swift_project_value_buffer(v12, qword_27F39C398);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = xmmword_24F9479A0;

          sub_24F928448();

          sub_24F9283A8();
          swift_getErrorValue();
          v19[3] = v18;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
          (*(*(v18 - 8) + 16))(boxed_opaque_existential_1);
          sub_24F9283B8();
          sub_24E601704(v19, &qword_27F2129B0);
          sub_24F92A5A8();

          v14 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
          swift_beginAccess();
          *(v8 + v14) = MEMORY[0x277D84F90];

          v15 = v8 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v16 = *(v15 + 8);
            ObjectType = swift_getObjectType();
            (*(*(v16 + 16) + 8))(ObjectType);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          *(v8 + 32) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EF2CC14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return sub_24EF2BED0(1);
}

uint64_t sub_24EF2CC90()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24EF2CCE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_24EF2BED0(1);
}

uint64_t sub_24EF2CD64()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24EF2CDCC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x253052270](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF2CE78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    result = sub_24F92C738();
    if (result <= a1)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= a1)
    {
      return result;
    }
  }

  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v7 = *(v6 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v7 = MEMORY[0x253052270](a1, v6);

LABEL_7:
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for SearchHintsPresenter();
  v13[0] = v1;
  v11 = *(v9 + 8);
  v12 = *(v11 + 8);

  v12(v7, v13, ObjectType, v11);

  swift_unknownObjectRelease();
  return sub_24E601704(v13, &qword_27F2129B0);
}

uint64_t sub_24EF2D04C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view);
}

uint64_t SearchHintsPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view);

  return v0;
}

uint64_t SearchHintsPresenter.__deallocating_deinit()
{
  SearchHintsPresenter.deinit();

  return swift_deallocClassInstance();
}

id sub_24EF2D230(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  [v3 lock];
  if ((*(a2 + 32) & 1) == 0)
  {

    sub_24F92A9A8();
  }

  return [v3 unlock];
}

id sub_24EF2D2B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  [v3 lock];
  if ((*(a2 + 32) & 1) == 0)
  {

    sub_24F92A9C8();
  }

  return [v3 unlock];
}

uint64_t sub_24EF2D334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224FA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SearchHintsPresenter()
{
  result = qword_27F234058;
  if (!qword_27F234058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EF2D3F0()
{
  result = qword_27F234040;
  if (!qword_27F234040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234040);
  }

  return result;
}

uint64_t sub_24EF2D454()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EF2D4E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EF2D544(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EF2D5A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EF2D660@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

unint64_t sub_24EF2DA5C()
{
  result = qword_27F234068;
  if (!qword_27F234068)
  {
    type metadata accessor for SearchHintSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234068);
  }

  return result;
}

uint64_t sub_24EF2DABC()
{

  return swift_deallocObject();
}

GameStoreKit::ComponentDecoration_optional __swiftcall ComponentDecoration.init(rawValue:)(Swift::String rawValue)
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

uint64_t ComponentDecoration.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x656461637261;
  }
}

uint64_t sub_24EF2DE1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x656461637261;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x800000024FA421F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x656461637261;
  }

  if (*a2)
  {
    v6 = 0x800000024FA421F0;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24EF2DEC8()
{
  result = qword_27F234070;
  if (!qword_27F234070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234070);
  }

  return result;
}

uint64_t sub_24EF2DF1C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF2DFA0()
{
  sub_24F92B218();
}

uint64_t sub_24EF2E010()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF2E090@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24EF2E0F0(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA421F0;
  v3 = 0x656461637261;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24EF2E158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v39 = a4;
  v40 = a2;
  v38 = a3;
  v41 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  type metadata accessor for OfferButtonViewModel();
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v44) = 0;
  sub_24F923058();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8);
  sub_24F923058();
  (*(v8 + 32))(v15 + v17, v10, v7);
  v18 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v44 = xmmword_24F943570;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0);
  sub_24F923058();
  (*(v4 + 32))(v15 + v18, v6, v37);
  v19 = v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = (v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v20 = 0xD000000000000015;
  v20[1] = 0x800000024FA3FE10;
  v21 = (v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v21 = 0;
  v21[1] = 0;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = v38;
  v22 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v39;
  v23 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v24 = *(v8 + 8);

  v24(v15 + v23, v7);
  v51 = v40;
  v25 = v40;

  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v44 = xmmword_24F943590;
  v45 = 0;
  v46 = 0;
  v47 = 4;
  v49 = 0;
  v48 = 0;
  v50 = 0;
  v26 = v25;
  sub_24F923058();
  swift_endAccess();
  v27 = v41;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v41;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928FD8();

  sub_24F92A758();

  v28 = v44;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    *(v31 + 32) = v27;
    *(v31 + 40) = v25;
    *(v31 + 48) = 0;
    *(v31 + 60) = 0;
    *(v31 + 56) = 3;
    *(v31 + 62) = 16843009;
    *(v31 + 66) = 257;
    v32 = *&v28[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v32 lock];
    sub_24F213714(v15, sub_24E690EC8, v31, v28);
    [v32 unlock];
  }

  v33 = &v28[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v33) = (v33[8] & 0xC0) == 128;
  WORD2(v51) = 0;
  LODWORD(v51) = 3;
  v43 = 257;
  v42 = 16843009;
  v34 = *(v15 + v22);

  sub_24EEFB79C(v33, v27, v26, 0, &v51, &v42, v34);

  return v15;
}

uint64_t sub_24EF2E784()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EF2E7BC()
{

  return swift_deallocObject();
}

uint64_t sub_24EF2E814@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OfferButtonDesign(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9234F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340A8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v42 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340B0);
  MEMORY[0x28223BE20](v47);
  v49 = &v42 - v20;
  v45 = v19;
  sub_24EF2EE34(v2, v19);
  type metadata accessor for OfferButtonView(0);
  sub_24F769CA8(v9);
  v21 = *v2;
  v22 = type metadata accessor for OfferButtonViewModel();
  sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  v46 = v21;
  v44 = v22;
  v23 = *(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);

  sub_24EF36FC8(&v9[*(v7 + 28)], v5, type metadata accessor for OfferButtonDesign.Size);
  sub_24EF37030(v9, type metadata accessor for OfferButtonDesign);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    v5 = v42;
    (*(v11 + 104))(v42, **(&unk_27968E270 + v23), v10);
  }

  v24 = *(v11 + 32);
  v25 = v43;
  v24(v43, v5, v10);
  v26 = v48;
  v24(v48, v25, v10);
  KeyPath = swift_getKeyPath();
  v28 = v49;
  v29 = &v49[*(v47 + 36)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118);
  v24(v29 + *(v30 + 28), v26, v10);
  *v29 = KeyPath;
  sub_24E6009C8(v45, v28, &qword_27F2340A8);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v31 = v51[0];
  if (v51[0])
  {
    v32 = type metadata accessor for Action();
    v33 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v51[1] = 0;
    v51[2] = 0;
  }

  v34 = v50;
  v51[0] = v31;
  v51[3] = v32;
  v51[4] = v33;
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340B8) + 36);
  sub_24E60169C(v51, v35, qword_27F21B590);
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  *(v35 + 40) = qword_27F24E488;
  *(v35 + 48) = swift_getKeyPath();
  *(v35 + 88) = 0;
  v37 = type metadata accessor for FocusedAlternativeSelectionButtonModifier();
  v38 = *(v37 + 28);
  *(v35 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v39 = v35 + *(v37 + 32);
  *v39 = swift_getKeyPath();
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  sub_24E6009C8(v28, v34, &qword_27F2340B0);
  v40 = v36;
  return sub_24E601704(v51, qword_27F21B590);
}

uint64_t sub_24EF2EE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340C0);
  MEMORY[0x28223BE20](v42);
  v38 = (&v36 - v3);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340C8);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340D0);
  MEMORY[0x28223BE20](v50);
  v43 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340D8);
  MEMORY[0x28223BE20](v40);
  v37 = (&v36 - v6);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340E0);
  MEMORY[0x28223BE20](v51);
  v54 = &v36 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340E8);
  MEMORY[0x28223BE20](v47);
  v49 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340F0);
  MEMORY[0x28223BE20](v44);
  v45 = &v36 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340F8);
  MEMORY[0x28223BE20](v48);
  v46 = &v36 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234100);
  MEMORY[0x28223BE20](v52);
  v53 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234108);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OfferButtonViewModel();
  sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  sub_24F923628();
  type metadata accessor for OfferButtonView(0);
  sub_24F769788(v18);
  sub_24EEFA964(v18, v56);

  (*(v16 + 8))(v18, v15);
  if (v56[0] <= 1u)
  {
    if (!v56[0])
    {
      *v14 = sub_24F924C88();
      *(v14 + 1) = 0x4014000000000000;
      v14[16] = 0;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234110);
      sub_24EF2F9C0(a1, 0, 1, &v14[*(v26 + 44)]);
      sub_24E60169C(v14, v45, &qword_27F234108);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F234118, &qword_27F234108);
      v28 = v46;
      sub_24F924E28();
      sub_24E60169C(v28, v49, &qword_27F2340F8);
      swift_storeEnumTagMultiPayload();
      sub_24EF36D4C();
      sub_24EF36DFC();
      v29 = v53;
      sub_24F924E28();
      sub_24E601704(v28, &qword_27F2340F8);
      sub_24E60169C(v29, v54, &qword_27F234100);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234140);
      sub_24EF36EDC();
      sub_24E602068(&qword_27F234150, &qword_27F234140);
      sub_24F924E28();
      sub_24E601704(v29, &qword_27F234100);
      v24 = v14;
      v25 = &qword_27F234108;
      return sub_24E601704(v24, v25);
    }

LABEL_7:
    *v14 = sub_24F924C88();
    *(v14 + 1) = 0x4014000000000000;
    v14[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234110);
    sub_24EF2F9C0(a1, 1, 0, &v14[*(v27 + 44)]);
    sub_24E60169C(v14, v45, &qword_27F234108);
    goto LABEL_8;
  }

  if (v56[0] == 2)
  {
    v30 = sub_24F9249A8();
    v31 = v37;
    *v37 = v30;
    *(v31 + 8) = 0x4028000000000000;
    *(v31 + 16) = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234160);
    sub_24EF30124(a1, v31 + *(v32 + 44));
    sub_24E60169C(v31, v41, &qword_27F2340D8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F234130, &qword_27F2340D8);
    sub_24E602068(&qword_27F234138, &qword_27F2340C0);
    v33 = v43;
    sub_24F924E28();
    sub_24E60169C(v33, v49, &qword_27F2340D0);
    swift_storeEnumTagMultiPayload();
    sub_24EF36D4C();
    sub_24EF36DFC();
    v34 = v53;
    sub_24F924E28();
    sub_24E601704(v33, &qword_27F2340D0);
    sub_24E60169C(v34, v54, &qword_27F234100);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234140);
    sub_24EF36EDC();
    sub_24E602068(&qword_27F234150, &qword_27F234140);
    sub_24F924E28();
    sub_24E601704(v34, &qword_27F234100);
    v24 = v31;
    v25 = &qword_27F2340D8;
    return sub_24E601704(v24, v25);
  }

  if (v56[0] != 3)
  {
    goto LABEL_7;
  }

  v19 = sub_24F9249A8();
  v20 = v38;
  *v38 = v19;
  *(v20 + 8) = 0x4028000000000000;
  *(v20 + 16) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234158);
  sub_24EF3088C(a1, v20 + *(v21 + 44));
  sub_24E60169C(v20, v41, &qword_27F2340C0);
  swift_storeEnumTagMultiPayload();
  sub_24E602068(&qword_27F234130, &qword_27F2340D8);
  sub_24E602068(&qword_27F234138, &qword_27F2340C0);
  v22 = v43;
  sub_24F924E28();
  sub_24E60169C(v22, v49, &qword_27F2340D0);
  swift_storeEnumTagMultiPayload();
  sub_24EF36D4C();
  sub_24EF36DFC();
  v23 = v53;
  sub_24F924E28();
  sub_24E601704(v22, &qword_27F2340D0);
  sub_24E60169C(v23, v54, &qword_27F234100);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234140);
  sub_24EF36EDC();
  sub_24E602068(&qword_27F234150, &qword_27F234140);
  sub_24F924E28();
  sub_24E601704(v23, &qword_27F234100);
  v24 = v20;
  v25 = &qword_27F2340C0;
  return sub_24E601704(v24, v25);
}

uint64_t sub_24EF2F9C0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v60 = a3;
  LODWORD(v53) = a2;
  v63 = a4;
  v5 = type metadata accessor for OfferButtonView.OfferButton(0);
  MEMORY[0x28223BE20](v5);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v52 - v9);
  v65 = type metadata accessor for OfferButtonView.Subtitle(0);
  MEMORY[0x28223BE20](v65);
  v61 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = v52 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v52 - v15;
  MEMORY[0x28223BE20](v17);
  v59 = v52 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v52 - v20;
  MEMORY[0x28223BE20](v22);
  v66 = v52 - v23;
  v24 = *a1;
  v25 = a1[1];
  LODWORD(a1) = *(a1 + 16);
  v26 = type metadata accessor for OfferButtonViewModel();
  v27 = sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  v56 = v25;
  v57 = v24;
  v55 = a1;
  v54 = v26;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v64 = v7;
  v58 = v5;
  v52[2] = v27;
  if (v74 <= 2u)
  {
    v28 = v69;
    v29 = v70;
    if (!v74)
    {

      goto LABEL_8;
    }

    v30 = v71;
    if (v74 == 1)
    {

      v28 = v29;
      v29 = v30;
      goto LABEL_8;
    }

    sub_24EEFE350(v67, v68, v69, v70, v71, v72 | (v73 << 32), 2);
  }

  v28 = 0;
  v29 = 0;
LABEL_8:
  v31 = *(v65 + 24);
  *&v21[v31] = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  swift_storeEnumTagMultiPayload();
  v67 = 0x4020000000000000;
  v33 = sub_24E62C088();
  sub_24F9237C8();
  v67 = 0x4022000000000000;
  v52[1] = v33;
  sub_24F9237C8();
  *v21 = v28;
  *(v21 + 1) = v29;
  v21[16] = v53;
  sub_24EF38190(v21, v66, type metadata accessor for OfferButtonView.Subtitle);
  sub_24F923628();
  *v10 = sub_24F923C28();
  v10[1] = v34;
  v35 = v58;
  v36 = v58[5];
  *(v10 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v37 = v35[6];
  *(v10 + v37) = swift_getKeyPath();
  v53 = v32;
  swift_storeEnumTagMultiPayload();
  v38 = v35[7];
  *(v10 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  swift_storeEnumTagMultiPayload();
  v39 = v10 + v35[8];
  *v39 = swift_getKeyPath();
  *(v39 + 1) = 0;
  v39[16] = 0;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v74 > 2u)
  {
    v40 = 0;
    v41 = 0;
    v43 = v63;
    v42 = v64;
  }

  else
  {
    v40 = v69;
    v41 = v70;
    v43 = v63;
    v42 = v64;
    if (v74)
    {
      v44 = v71;
      if (v74 == 1)
      {

        v40 = v41;
        v41 = v44;
      }

      else
      {
        sub_24EEFE350(v67, v68, v69, v70, v71, v72 | (v73 << 32), 2);
        v40 = 0;
        v41 = 0;
      }
    }

    else
    {
    }
  }

  v45 = *(v65 + 24);
  *&v16[v45] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v67 = 0x4020000000000000;
  sub_24F9237C8();
  v67 = 0x4022000000000000;
  sub_24F9237C8();
  *v16 = v40;
  *(v16 + 1) = v41;
  v16[16] = v60;
  v46 = v59;
  sub_24EF38190(v16, v59, type metadata accessor for OfferButtonView.Subtitle);
  v47 = v66;
  v48 = v62;
  sub_24EF36FC8(v66, v62, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF36FC8(v10, v42, type metadata accessor for OfferButtonView.OfferButton);
  v49 = v61;
  sub_24EF36FC8(v46, v61, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF36FC8(v48, v43, type metadata accessor for OfferButtonView.Subtitle);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234168);
  sub_24EF36FC8(v42, v43 + *(v50 + 48), type metadata accessor for OfferButtonView.OfferButton);
  sub_24EF36FC8(v49, v43 + *(v50 + 64), type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v46, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v10, type metadata accessor for OfferButtonView.OfferButton);
  sub_24EF37030(v47, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v49, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v42, type metadata accessor for OfferButtonView.OfferButton);
  return sub_24EF37030(v48, type metadata accessor for OfferButtonView.Subtitle);
}

uint64_t sub_24EF30124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = type metadata accessor for OfferButtonView.OfferButton(0);
  MEMORY[0x28223BE20](v57);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v46 - v6);
  v8 = type metadata accessor for OfferButtonView.Subtitle(0);
  MEMORY[0x28223BE20](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234170);
  MEMORY[0x28223BE20](v47);
  v54 = v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234178);
  MEMORY[0x28223BE20](v49);
  v56 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  MEMORY[0x28223BE20](v16);
  v55 = v46 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  v21 = type metadata accessor for OfferButtonViewModel();
  v22 = sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  v52 = v18;
  v51 = v19;
  v50 = v20;
  v53 = v21;
  v48 = v22;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v59 = v4;
  if (BYTE14(v62) > 2u)
  {
    goto LABEL_7;
  }

  v24 = *(&v61 + 1);
  v23 = v61;
  if (!BYTE14(v62))
  {

    goto LABEL_8;
  }

  v25 = v62;
  if (BYTE14(v62) != 1)
  {
    sub_24EEFE350(v60, *(&v60 + 1), v61, *(&v61 + 1), v62, DWORD2(v62) | (WORD6(v62) << 32), 2);
LABEL_7:
    v23 = 0;
    v24 = 0;
    goto LABEL_8;
  }

  v23 = v24;
  v24 = v25;
LABEL_8:
  v26 = *(v8 + 24);
  *&v10[v26] = swift_getKeyPath();
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  swift_storeEnumTagMultiPayload();
  *&v60 = 0x4020000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  *&v60 = 0x4022000000000000;
  sub_24F9237C8();
  *v10 = v23;
  *(v10 + 1) = v24;
  v10[16] = 0;
  KeyPath = swift_getKeyPath();
  v28 = v54;
  sub_24EF38190(v10, v54, type metadata accessor for OfferButtonView.Subtitle);
  v29 = v28 + *(v47 + 36);
  *v29 = KeyPath;
  *(v29 + 8) = 2;
  type metadata accessor for OfferButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  sub_24F927638();
  sub_24F9242E8();
  sub_24E6009C8(v28, v15, &qword_27F234170);
  v30 = &v15[*(v49 + 36)];
  v31 = v65;
  *(v30 + 4) = v64;
  *(v30 + 5) = v31;
  *(v30 + 6) = v66;
  v32 = v61;
  *v30 = v60;
  *(v30 + 1) = v32;
  v33 = v63;
  *(v30 + 2) = v62;
  *(v30 + 3) = v33;
  v34 = v55;
  sub_24E6009C8(v15, v55, &qword_27F234178);
  sub_24F923628();
  *v7 = sub_24F923C28();
  v7[1] = v35;
  v36 = v57;
  v37 = *(v57 + 20);
  *(v7 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v38 = v36[6];
  *(v7 + v38) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v36[7];
  *(v7 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  swift_storeEnumTagMultiPayload();
  v40 = v7 + v36[8];
  *v40 = swift_getKeyPath();
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = v56;
  sub_24E60169C(v34, v56, &qword_27F234178);
  v42 = v59;
  sub_24EF36FC8(v7, v59, type metadata accessor for OfferButtonView.OfferButton);
  v43 = v58;
  sub_24E60169C(v41, v58, &qword_27F234178);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234180);
  sub_24EF36FC8(v42, v43 + *(v44 + 48), type metadata accessor for OfferButtonView.OfferButton);
  sub_24EF37030(v7, type metadata accessor for OfferButtonView.OfferButton);
  sub_24E601704(v34, &qword_27F234178);
  sub_24EF37030(v42, type metadata accessor for OfferButtonView.OfferButton);
  return sub_24E601704(v41, &qword_27F234178);
}

uint64_t sub_24EF3088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v37 = type metadata accessor for OfferButtonView.Subtitle(0);
  MEMORY[0x28223BE20](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234188);
  MEMORY[0x28223BE20](v39);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v9;
  v10 = type metadata accessor for OfferButtonView.OfferButton(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v36 - v14);
  v38 = a1;
  type metadata accessor for OfferButtonViewModel();
  sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  sub_24F923628();
  *v15 = sub_24F923C28();
  v15[1] = v16;
  v17 = v11[7];
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v18 = v11[8];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  swift_storeEnumTagMultiPayload();
  v19 = v11[9];
  *(v15 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  swift_storeEnumTagMultiPayload();
  v20 = v15 + v11[10];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (BYTE14(v47) > 2u)
  {
    goto LABEL_7;
  }

  v21 = *(&v46 + 1);
  v22 = v46;
  if (!BYTE14(v47))
  {

    goto LABEL_8;
  }

  v23 = v47;
  if (BYTE14(v47) != 1)
  {
    sub_24EEFE350(v45, *(&v45 + 1), v46, *(&v46 + 1), v47, DWORD2(v47) | (WORD6(v47) << 32), 2);
LABEL_7:
    v22 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v22 = v21;
  v21 = v23;
LABEL_8:
  v24 = *(v37 + 24);
  *&v4[v24] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v45 = 0x4020000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  *&v45 = 0x4022000000000000;
  sub_24F9237C8();
  *v4 = v22;
  *(v4 + 1) = v21;
  v4[16] = 0;
  type metadata accessor for OfferButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  sub_24F927628();
  sub_24F9242E8();
  v25 = v40;
  sub_24EF38190(v4, v40, type metadata accessor for OfferButtonView.Subtitle);
  v26 = (v25 + *(v39 + 36));
  v27 = v50;
  v26[4] = v49;
  v26[5] = v27;
  v26[6] = v51;
  v28 = v46;
  *v26 = v45;
  v26[1] = v28;
  v29 = v48;
  v26[2] = v47;
  v26[3] = v29;
  v30 = v41;
  sub_24E6009C8(v25, v41, &qword_27F234188);
  v31 = v42;
  sub_24EF36FC8(v15, v42, type metadata accessor for OfferButtonView.OfferButton);
  v32 = v43;
  sub_24E60169C(v30, v43, &qword_27F234188);
  v33 = v44;
  sub_24EF36FC8(v31, v44, type metadata accessor for OfferButtonView.OfferButton);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234190);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F234188);
  sub_24E601704(v30, &qword_27F234188);
  sub_24EF37030(v15, type metadata accessor for OfferButtonView.OfferButton);
  sub_24E601704(v32, &qword_27F234188);
  return sub_24EF37030(v31, type metadata accessor for OfferButtonView.OfferButton);
}

uint64_t sub_24EF30F18@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F923D48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(type metadata accessor for OfferButtonView.OfferButton(0) + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (*(v11 + 16) == 1)
  {

    if (v13)
    {
LABEL_3:

      sub_24F923D38();
      v14 = type metadata accessor for CapsuleButtonContent.Symbol(0);
      sub_24F923D18();

      (*(v4 + 8))(v6, v3);
      *a1 = v12;
      a1[1] = v13;
      *(a1 + *(v14 + 24)) = 0;
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }
  }

  else
  {

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    v23 = v7;
    v17 = a1;
    v18 = v4;
    v19 = v3;
    v20 = v16;
    sub_24F921FD8();

    v3 = v19;
    v4 = v18;
    a1 = v17;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(v12, v13, 0);
    (*(v8 + 8))(v10, v23);
    v12 = v24;
    v13 = v25;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  v21 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t sub_24EF311F0@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v84 = sub_24F929888();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F9234F8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = v62 - v7;
  v88 = sub_24F923E98();
  v75 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v73 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  v64 = type metadata accessor for OfferButtonDesign.Context(0);
  MEMORY[0x28223BE20](v64);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OfferButtonDesign(0);
  MEMORY[0x28223BE20](v63);
  v15 = (v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2341E8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v62 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2341F0);
  MEMORY[0x28223BE20](v67);
  v71 = v62 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2341F8);
  MEMORY[0x28223BE20](v77);
  v76 = v62 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234200);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = v62 - v23;
  v68 = v20;
  sub_24EF31D54(v1, v20);
  v24 = type metadata accessor for OfferButtonView.OfferButton(0);
  v86 = v15;
  sub_24F769CA8(v15);
  v62[1] = *(v24 + 20);
  sub_24F769788(v11);
  v79 = v1;
  v25 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v25;
  sub_24F923098();

  v26 = v98;
  v27 = v99;
  v28 = v100;
  v29 = DWORD2(v100) | (WORD6(v100) << 32);
  v30 = BYTE14(v100);
  if ((BYTE14(v100) | 2) == 2)
  {

    v31 = sub_24F92B228();
  }

  else
  {
    v31 = 0;
  }

  sub_24EEFE350(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v32 = v97 != 0;
  sub_24EEFE350(v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95 | (v96 << 32), v97);
  v33 = v75;
  (*(v75 + 32))(v13, v11, v88);
  v34 = v64;
  v13[*(v64 + 20)] = 8;
  *&v13[*(v34 + 24)] = v31;
  v13[*(v34 + 28)] = v32;
  v35 = *v86;
  v36 = v65;
  sub_24EF36FC8(v86 + *(v63 + 20), v65, type metadata accessor for OfferButtonDesign.Size);
  v37 = v72;
  v38 = v74;
  if ((*(v72 + 48))(v36, 1, v74) == 1)
  {
    v39 = v69;
    (*(v37 + 104))(v69, *MEMORY[0x277CDF440], v38);
    v40 = *(v37 + 32);
  }

  else
  {
    v41 = v36;
    v40 = *(v37 + 32);
    v39 = v69;
    v40(v69, v41, v38);
  }

  v42 = v70;
  v40(v70, v39, v38);
  v43 = v66;
  v35(v13, v42);
  (*(v37 + 8))(v42, v38);
  sub_24EF37030(v13, type metadata accessor for OfferButtonDesign.Context);
  sub_24EF37030(v86, type metadata accessor for OfferButtonDesign);
  sub_24EF37030(v43, type metadata accessor for OfferButtonDesign.Metrics);
  v44 = v73;
  sub_24F769788(v73);
  v45 = v87;
  sub_24EEFAD30(v44);
  (*(v33 + 8))(v44, v88);
  sub_24F9238C8();
  v46 = v71;
  sub_24E6009C8(v68, v71, &qword_27F2341E8);
  v47 = (v46 + *(v67 + 36));
  v48 = v99;
  *v47 = v98;
  v47[1] = v48;
  v47[2] = v100;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  LOBYTE(v43) = v92;
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v43;
  v51 = v76;
  sub_24E6009C8(v46, v76, &qword_27F2341F0);
  v52 = v77;
  v53 = (v51 + *(v77 + 36));
  *v53 = KeyPath;
  v53[1] = sub_24E600A48;
  v53[2] = v50;
  v92 = 0u;
  v93 = 0u;
  memset(v91, 0, sizeof(v91));
  v54 = v82;
  sub_24F9297B8();
  sub_24E601704(v91, &qword_27F2129B0);
  sub_24E601704(&v92, &qword_27F2129B0);
  v55 = sub_24EF37D08();
  v56 = v78;
  sub_24F925EE8();
  (*(v83 + 8))(v54, v84);
  sub_24E601704(v51, &qword_27F2341F8);
  v57 = (v45 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  if (v57[1])
  {
    v58 = *v57;
    v59 = v57[1];
  }

  else
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  *&v91[0] = v58;
  *(&v91[0] + 1) = v59;

  v89 = v52;
  v90 = v55;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v60 = v81;
  sub_24F926538();

  return (*(v80 + 8))(v56, v60);
}

uint64_t sub_24EF31D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v158 = type metadata accessor for OfferButtonView.ProgressButton(0);
  MEMORY[0x28223BE20](v158);
  v134 = (&v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v136 = &v130 - v5;
  v142 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  MEMORY[0x28223BE20](v142);
  v137 = (&v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234270);
  MEMORY[0x28223BE20](v138);
  v140 = &v130 - v7;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234258);
  MEMORY[0x28223BE20](v152);
  v143 = &v130 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234278);
  MEMORY[0x28223BE20](v154);
  v156 = &v130 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234280);
  MEMORY[0x28223BE20](v149);
  v151 = &v130 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234288);
  MEMORY[0x28223BE20](v139);
  v141 = &v130 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234248);
  MEMORY[0x28223BE20](v150);
  v13 = &v130 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234238);
  MEMORY[0x28223BE20](v155);
  v153 = &v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78);
  v144 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v159 = (&v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = v16;
  MEMORY[0x28223BE20](v17);
  v147 = (&v130 - v18);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C80);
  MEMORY[0x28223BE20](v148);
  v20 = (&v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v135 = &v130 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v130 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v130 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = (&v130 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v130 - v33;
  v146 = a1;
  v35 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v35;
  sub_24F923098();

  v37 = v166;
  v38 = v167;
  if (v168 <= 1u)
  {
    v140 = v34;
    v142 = v28;
    v136 = v163;
    v137 = v164;
    v143 = v13;
    if (!v168)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v142 = v160;
      if (v160)
      {
        v138 = type metadata accessor for Action();
        v135 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action);
      }

      else
      {
        v135 = 0;
        v138 = 0;
      }

      v84 = type metadata accessor for CapsuleButtonContent.Symbol(0);
      (*(*(v84 - 8) + 56))(v147, 1, 1, v84);
      sub_24EF30F18(v159);
      LODWORD(v146) = *(v35 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v85 = v160;
      v86 = v161;
      v133 = v160;
      v132 = v161;
      v87 = v162;
      v134 = v162;
      v88 = swift_allocObject();
      v88[2] = v85;
      v88[3] = v86;
      v88[4] = v87;
      v89 = *(v144 + 80);
      v90 = (v89 + 16) & ~v89;
      v91 = (v145 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v89 + 16 + v91) & ~v89;
      v93 = v92 + v145;
      v94 = (v92 + v145) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      sub_24E6009C8(v147, v95 + v90, &qword_27F216C78);
      v96 = (v95 + v91);
      v97 = v137;
      *v96 = v136;
      v96[1] = v97;
      sub_24E6009C8(v159, v95 + v92, &qword_27F216C78);
      *(v95 + v93) = v146;
      v98 = (v95 + v94);
      v99 = v133;
      v100 = v132;
      v98[1] = v133;
      v98[2] = v100;
      v101 = v134;
      v98[3] = v134;
      v102 = *(v148 + 44);
      *(v31 + v102) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
      swift_storeEnumTagMultiPayload();
      *v31 = v142;
      v31[1] = 0;
      v103 = v138;
      v31[2] = 0;
      v31[3] = v103;
      v31[4] = v135;
      v31[5] = sub_24EF3A5E8;
      v31[6] = v95;
      v31[7] = sub_24E6910A4;
      v31[8] = v88;
      v104 = v140;
      sub_24E6009C8(v31, v140, &qword_27F216C80);
      sub_24E60169C(v104, v141, &qword_27F216C80);
      swift_storeEnumTagMultiPayload();
      sub_24E969B2C(v99, v100, v101);
      sub_24E602068(&qword_27F216C90, &qword_27F216C80);
      v105 = v143;
      sub_24F924E28();
      sub_24E60169C(v105, v151, &qword_27F234248);
      swift_storeEnumTagMultiPayload();
      sub_24EF37FB8();
      sub_24EF38068();
      v106 = v153;
      sub_24F924E28();
      sub_24E601704(v105, &qword_27F234248);
      sub_24E60169C(v106, v156, &qword_27F234238);
      swift_storeEnumTagMultiPayload();
      sub_24EF37F2C();
      sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton);
      sub_24F924E28();
      sub_24E601704(v106, &qword_27F234238);
      v107 = v104;
      return sub_24E601704(v107, &qword_27F216C80);
    }

    v59 = v165;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v140 = v160;
    if (v160)
    {
      v138 = type metadata accessor for Action();
      v135 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action);
    }

    else
    {
      v138 = 0;
      v135 = 0;
    }

    v108 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    v109 = v147;
    sub_24F923D28();
    v110 = v137;
    *v109 = v136;
    v109[1] = v110;
    *(v109 + *(v108 + 24)) = v59;
    (*(*(v108 - 8) + 56))(v109, 0, 1, v108);
    sub_24EF30F18(v159);
    LODWORD(v146) = *(v35 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v111 = v160;
    v112 = v161;
    v136 = v160;
    v134 = v161;
    v113 = v162;
    v137 = v162;
    v114 = swift_allocObject();
    v114[2] = v111;
    v114[3] = v112;
    v114[4] = v113;
    v115 = *(v144 + 80);
    v116 = (v115 + 16) & ~v115;
    v117 = (v145 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = (v115 + 16 + v117) & ~v115;
    v119 = v118 + v145;
    v120 = (v118 + v145) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    sub_24E6009C8(v109, v121 + v116, &qword_27F216C78);
    v122 = (v121 + v117);
    *v122 = 0;
    v122[1] = 0;
    sub_24E6009C8(v159, v121 + v118, &qword_27F216C78);
    *(v121 + v119) = v146;
    v123 = (v121 + v120);
    v124 = v136;
    v125 = v134;
    v123[1] = v136;
    v123[2] = v125;
    v126 = v137;
    v123[3] = v137;
    v127 = *(v148 + 44);
    *(v25 + v127) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    *v25 = v140;
    v25[1] = 0;
    v128 = v138;
    v25[2] = 0;
    v25[3] = v128;
    v25[4] = v135;
    v25[5] = sub_24EF3A5E8;
    v25[6] = v121;
    v25[7] = sub_24E6910A4;
    v25[8] = v114;
    v81 = v142;
    sub_24E6009C8(v25, v142, &qword_27F216C80);
    sub_24E60169C(v81, v141, &qword_27F216C80);
    swift_storeEnumTagMultiPayload();
    sub_24E969B2C(v124, v125, v126);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    v82 = v143;
    sub_24F924E28();
    v83 = &qword_27F234248;
    sub_24E60169C(v82, v151, &qword_27F234248);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_24EF37FB8();
    sub_24EF38068();
    v129 = v153;
    sub_24F924E28();
    sub_24E601704(v82, v83);
    sub_24E60169C(v129, v156, &qword_27F234238);
    swift_storeEnumTagMultiPayload();
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton);
    sub_24F924E28();
    sub_24E601704(v129, &qword_27F234238);
    v107 = v81;
    return sub_24E601704(v107, &qword_27F216C80);
  }

  if (v168 == 2)
  {
    v48 = v165;
    v136 = v163;
    v137 = v164;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v141 = v160;
    if (v160)
    {
      v139 = type metadata accessor for Action();
      v134 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action);
    }

    else
    {
      v139 = 0;
      v134 = 0;
    }

    v60 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    v61 = v147;
    sub_24F923D28();
    *v61 = v48;
    v61[1] = v37;
    *(v61 + *(v60 + 24)) = v38;
    (*(*(v60 - 8) + 56))(v61, 0, 1, v60);
    sub_24EF30F18(v159);
    LODWORD(v146) = *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v62 = v160;
    v63 = v161;
    v132 = v160;
    v131 = v161;
    v64 = v162;
    v133 = v162;
    v65 = swift_allocObject();
    v65[2] = v62;
    v65[3] = v63;
    v65[4] = v64;
    v66 = *(v144 + 80);
    v67 = (v66 + 16) & ~v66;
    v68 = (v145 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v66 + 16 + v68) & ~v66;
    v70 = v69 + v145;
    v71 = (v69 + v145) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    sub_24E6009C8(v61, v72 + v67, &qword_27F216C78);
    v73 = (v72 + v68);
    v74 = v137;
    *v73 = v136;
    v73[1] = v74;
    sub_24E6009C8(v159, v72 + v69, &qword_27F216C78);
    *(v72 + v70) = v146;
    v75 = (v72 + v71);
    v76 = v132;
    v77 = v131;
    v75[1] = v132;
    v75[2] = v77;
    v78 = v133;
    v75[3] = v133;
    v79 = *(v148 + 44);
    *(v20 + v79) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    *v20 = v141;
    v20[1] = 0;
    v80 = v139;
    v20[2] = 0;
    v20[3] = v80;
    v20[4] = v134;
    v20[5] = sub_24E68FFB4;
    v20[6] = v72;
    v20[7] = sub_24E68FFA8;
    v20[8] = v65;
    v81 = v135;
    sub_24E6009C8(v20, v135, &qword_27F216C80);
    sub_24E60169C(v81, v140, &qword_27F216C80);
    swift_storeEnumTagMultiPayload();
    sub_24E969B2C(v76, v77, v78);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24EF36D04(&qword_27F234260, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
    v82 = v143;
    sub_24F924E28();
    v83 = &qword_27F234258;
    sub_24E60169C(v82, v151, &qword_27F234258);
    goto LABEL_22;
  }

  if (v168 == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v39 = v137;
    *v137 = v160;
    v40 = v142;
    v41 = *(v142 + 5);
    *(v39 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
    swift_storeEnumTagMultiPayload();
    v42 = *(v40 + 24);
    *(v39 + v42) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v43 = *(v40 + 28);
    *(v39 + v43) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
    swift_storeEnumTagMultiPayload();
    sub_24EF36FC8(v39, v140, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24EF36D04(&qword_27F234260, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
    v44 = v143;
    sub_24F924E28();
    sub_24E60169C(v44, v151, &qword_27F234258);
    swift_storeEnumTagMultiPayload();
    sub_24EF37FB8();
    sub_24EF38068();
    v45 = v153;
    sub_24F924E28();
    sub_24E601704(v44, &qword_27F234258);
    sub_24E60169C(v45, v156, &qword_27F234238);
    swift_storeEnumTagMultiPayload();
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton);
    sub_24F924E28();
    sub_24E601704(v45, &qword_27F234238);
    v46 = type metadata accessor for OfferButtonView.IndeterminateProgressButton;
    v47 = v39;
  }

  else
  {
    v49 = BYTE6(v164);
    v50 = v163;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v51 = 15.0;
    if (*(v35 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) == 1)
    {
      v51 = 10.0;
    }

    v52 = v134;
    *v134 = v160;
    *(v52 + 8) = v50;
    *(v52 + 16) = v51;
    *(v52 + 24) = v49 & 1;
    v53 = v158;
    v54 = *(v158 + 32);
    *(v52 + v54) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
    swift_storeEnumTagMultiPayload();
    v55 = *(v53 + 36);
    *(v52 + v55) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v56 = *(v53 + 40);
    *(v52 + v56) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
    swift_storeEnumTagMultiPayload();
    v57 = v136;
    sub_24EF38190(v52, v136, type metadata accessor for OfferButtonView.ProgressButton);
    sub_24EF36FC8(v57, v156, type metadata accessor for OfferButtonView.ProgressButton);
    swift_storeEnumTagMultiPayload();
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton);
    sub_24F924E28();
    v46 = type metadata accessor for OfferButtonView.ProgressButton;
    v47 = v57;
  }

  return sub_24EF37030(v47, v46);
}

uint64_t sub_24EF33674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  if (v11)
  {
    v47 = *v2;
    v48 = v11;
    sub_24E600AEC();

    v12 = sub_24F925E18();
    v45 = v13;
    v46 = v12;
    v15 = v14;
    type metadata accessor for OfferButtonView.Subtitle(0);
    sub_24F76A05C(v10);
    v16 = (*(v8 + 88))(v10, v7);
    v17 = v16 == *MEMORY[0x277CDF418] || v16 == *MEMORY[0x277CDF438];
    v44 = v2;
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      sub_24F9237D8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      sub_24F9237D8();
      (*(v8 + 8))(v10, v7);
    }

    v25 = sub_24F925908();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_24F925968();
    sub_24E601704(v6, &qword_27F214698);
    v26 = v46;
    v27 = v15;
    v28 = v45;
    v29 = sub_24F925C98();
    v31 = v30;
    v33 = v32;

    sub_24E600B40(v26, v28, v27 & 1);

    sub_24F925938();
    v34 = sub_24F925B78();
    v36 = v35;
    v38 = v37;
    sub_24E600B40(v29, v31, v33 & 1);

    if (*(v44 + 16) == 1)
    {
      v47 = sub_24F926C98();
    }

    else
    {
      LOBYTE(v47) = 1;
      sub_24ED1A304();
    }

    v47 = sub_24F9238D8();
    v18 = sub_24F925C58();
    v19 = v39;
    v41 = v40;
    v21 = v42;
    sub_24E600B40(v34, v36, v38 & 1);

    result = swift_getKeyPath();
    LOBYTE(v47) = v41 & 1;
    v49 = 0;
    v20 = v41 & 1;
    v24 = 0x10000;
    v23 = 3;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    result = 0;
    v23 = 0;
    v24 = 0;
  }

  *a1 = v18;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  *(a1 + 32) = result;
  *(a1 + 40) = v23;
  *(a1 + 48) = v24;
  *(a1 + 50) = BYTE2(v24);
  return result;
}

uint64_t sub_24EF33AB4@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_24F9241F8();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v58 = v5;
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v54 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342E0);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v54 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342E8);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v54 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342F0);
  MEMORY[0x28223BE20](v62);
  v63 = &v54 - v10;
  v11 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F9234F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v74 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v54 - v17;
  v18 = type metadata accessor for OfferButtonDesign.Context(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OfferButtonDesign(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = (&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = (&v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F769CA8(v25);
  v29 = v55;
  v61 = v1;
  sub_24F769788(v21);
  v21[v19[7]] = 8;
  *&v21[v19[8]] = 0;
  v21[v19[9]] = 1;
  v30 = *v25;
  sub_24EF36FC8(v25 + *(v23 + 28), v29, type metadata accessor for OfferButtonDesign.Size);
  if ((*(v14 + 48))(v29, 1, v13) == 1)
  {
    (*(v14 + 104))(v74, *MEMORY[0x277CDF440], v13);
    v31 = *(v14 + 32);
  }

  else
  {
    v31 = *(v14 + 32);
    v31(v74, v29, v13);
  }

  v32 = v56;
  v31(v56, v74, v13);
  v30(v21, v32);
  (*(v14 + 8))(v32, v13);
  sub_24EF37030(v21, type metadata accessor for OfferButtonDesign.Context);
  sub_24EF37030(v25, type metadata accessor for OfferButtonDesign);
  v33 = *v28;
  sub_24EF37030(v28, type metadata accessor for OfferButtonDesign.Metrics);
  v34 = sub_24F9232F8();
  (*(*(v34 - 8) + 56))(v60, 1, 1, v34);
  v35 = v61;
  v36 = *v61;
  if (*v61)
  {
    v37 = type metadata accessor for Action();
    v38 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  *&v75 = v36;
  *(&v76 + 1) = v37;
  *&v77 = v38;
  v39 = v59;
  sub_24EF36FC8(v35, v59, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
  v40 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v33;
  sub_24EF38190(v39, v41 + v40, type metadata accessor for OfferButtonView.IndeterminateProgressButton);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342F8);
  sub_24EF390D0();
  v42 = v65;
  sub_24F921788();
  v43 = v70;
  sub_24F9241E8();
  sub_24E602068(&qword_27F234310, &qword_27F2342E0);
  sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18]);
  v44 = v64;
  v45 = v69;
  v46 = v72;
  sub_24F926178();
  (*(v71 + 8))(v43, v46);
  (*(v67 + 8))(v42, v45);
  sub_24F927618();
  sub_24F9238C8();
  v47 = v63;
  (*(v66 + 32))(v63, v44, v68);
  v48 = &v47[*(v62 + 36)];
  v49 = v76;
  *v48 = v75;
  *(v48 + 1) = v49;
  *(v48 + 2) = v77;
  v50 = v47;
  v51 = v73;
  sub_24E6009C8(v50, v73, &qword_27F2342F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234318);
  v53 = v51 + *(result + 36);
  *v53 = 0x4020000000000000;
  *(v53 + 8) = 1;
  return result;
}

uint64_t sub_24EF34438@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_24EF3454C();
  sub_24F926F28();
  *a1 = v17;
  *(a1 + 8) = v18;
  v5 = *(type metadata accessor for IndeterminateProgressSpinner(0) + 28);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(a1 + 16) = a2;
  *(a1 + 24) = v4;
  sub_24EF3454C();
  v6 = sub_24F925808();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342F8);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

double sub_24EF3454C()
{
  v1 = sub_24F924848();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  sub_24E60169C(v0 + *(v14 + 20), v6, &qword_27F21B398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
    v15 = *(v8 + 32);
  }

  v15(v10, v13, v7);
  v17 = (*(v8 + 88))(v10, v7);
  result = 3.0;
  if (v17 != *MEMORY[0x277CDF418] && v17 != *MEMORY[0x277CDF438])
  {
    result = 4.0;
    if (v17 != *MEMORY[0x277CDF440] && v17 != *MEMORY[0x277CDF420] && v17 != *MEMORY[0x277CDF410])
    {
      (*(v8 + 8))(v10, v7, 4.0);
      return 4.0;
    }
  }

  return result;
}

uint64_t sub_24EF34898@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_24F9241F8();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  v71 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OfferButtonView.ProgressButton(0);
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = v5;
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v55 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234320);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v55 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234328);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v55 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234330);
  MEMORY[0x28223BE20](v63);
  v64 = &v55 - v10;
  v11 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F9234F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v55 - v17;
  v18 = type metadata accessor for OfferButtonDesign.Context(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OfferButtonDesign(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = (&v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F769CA8(v25);
  v29 = v56;
  v62 = v1;
  sub_24F769788(v21);
  v21[v19[7]] = 8;
  *&v21[v19[8]] = 0;
  v21[v19[9]] = 1;
  v30 = *v25;
  sub_24EF36FC8(v25 + *(v23 + 28), v29, type metadata accessor for OfferButtonDesign.Size);
  if ((*(v14 + 48))(v29, 1, v13) == 1)
  {
    (*(v14 + 104))(v75, *MEMORY[0x277CDF440], v13);
    v31 = *(v14 + 32);
  }

  else
  {
    v31 = *(v14 + 32);
    v31(v75, v29, v13);
  }

  v32 = v57;
  v31(v57, v75, v13);
  v30(v21, v32);
  (*(v14 + 8))(v32, v13);
  sub_24EF37030(v21, type metadata accessor for OfferButtonDesign.Context);
  sub_24EF37030(v25, type metadata accessor for OfferButtonDesign);
  v33 = *v28;
  sub_24EF37030(v28, type metadata accessor for OfferButtonDesign.Metrics);
  v34 = sub_24F9232F8();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v35 = v62;
  v36 = *v62;
  if (*v62)
  {
    v37 = type metadata accessor for Action();
    v38 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    *(&v76 + 1) = 0;
    *&v77 = 0;
  }

  *&v76 = v36;
  *(&v77 + 1) = v37;
  *&v78 = v38;
  v39 = v60;
  sub_24EF36FC8(v35, v60, type metadata accessor for OfferButtonView.ProgressButton);
  v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v41 = (v59 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_24EF38190(v39, v42 + v40, type metadata accessor for OfferButtonView.ProgressButton);
  *(v42 + v41) = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234338);
  sub_24EF394B4();
  v43 = v66;
  sub_24F921788();
  v44 = v71;
  sub_24F9241E8();
  sub_24E602068(&qword_27F234350, &qword_27F234320);
  sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18]);
  v45 = v65;
  v46 = v70;
  v47 = v73;
  sub_24F926178();
  (*(v72 + 8))(v44, v47);
  (*(v68 + 8))(v43, v46);
  sub_24F927618();
  sub_24F9238C8();
  v48 = v64;
  (*(v67 + 32))(v64, v45, v69);
  v49 = &v48[*(v63 + 36)];
  v50 = v77;
  *v49 = v76;
  *(v49 + 1) = v50;
  *(v49 + 2) = v78;
  v51 = v48;
  v52 = v74;
  sub_24E6009C8(v51, v74, &qword_27F234330);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234358);
  v54 = v52 + *(result + 36);
  *v54 = 0x4020000000000000;
  *(v54 + 8) = 1;
  return result;
}

uint64_t sub_24EF35228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a1;
  v6 = *(a1 + 8);
  v7 = sub_24EF35334();
  v8 = sub_24EF3567C();
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for ProgressSpinner(0) + 40);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *a2 = v6;
  *(a2 + 8) = a3;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  sub_24EF35334();
  LOBYTE(v4) = sub_24F925808();
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234338);
  v21 = a2 + *(result + 36);
  *v21 = v4;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

double sub_24EF35334()
{
  v1 = sub_24F924848();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for OfferButtonView.ProgressButton(0);
  sub_24E60169C(v0 + *(v14 + 32), v6, &qword_27F21B398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
    v15 = *(v8 + 32);
  }

  v15(v10, v13, v7);
  v17 = (*(v8 + 88))(v10, v7);
  result = 3.0;
  if (v17 != *MEMORY[0x277CDF418] && v17 != *MEMORY[0x277CDF438])
  {
    result = 4.0;
    if (v17 != *MEMORY[0x277CDF440] && v17 != *MEMORY[0x277CDF420] && v17 != *MEMORY[0x277CDF410])
    {
      (*(v8 + 8))(v10, v7, 4.0);
      return 4.0;
    }
  }

  return result;
}

double sub_24EF3567C()
{
  v16 = sub_24F924848();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfferButtonView.ProgressButton(0);
  sub_24E60169C(v0 + *(v11 + 32), v6, &qword_27F21B398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 5.0;
  if (v13 != *MEMORY[0x277CDF418])
  {
    result = 8.0;
    if (v13 != *MEMORY[0x277CDF438])
    {
      result = 12.0;
      if (v13 != *MEMORY[0x277CDF440])
      {
        result = 14.0;
        if (v13 != *MEMORY[0x277CDF420] && v13 != *MEMORY[0x277CDF410])
        {
          (*(v8 + 8))(v10, v7, 14.0);
          return 12.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EF35994@<X0>(uint64_t a1@<X8>)
{
  sub_24F923658();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[2];

  result = sub_24F9278A8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v5;
  *(a1 + 64) = 256;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  return result;
}

uint64_t sub_24EF35A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for IndeterminateProgressSpinner(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24EF35C7C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndeterminateProgressSpinner(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v13 = *(v1 + 8);
  v40 = *v1;
  v12 = v40;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v31 = v39;
  v32 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v14 = *(v1 + 24);
  sub_24F927618();
  sub_24F9238C8();
  sub_24EF35A74(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDFA90], v5);
  v30 = sub_24F923F68();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  sub_24F9278A8();
  v17 = v16;
  v19 = v18;
  v40 = v12;
  v41 = v13;
  sub_24F926F38();
  v20 = 0;
  if (v39 == 1)
  {
    sub_24F9276B8();
    v20 = sub_24F927658();
  }

  if (v30)
  {
    v21 = -1.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (v31)
  {
    v22 = 6.28318531;
  }

  else
  {
    v22 = 0.0;
  }

  v40 = v12;
  v41 = v13;
  sub_24F926F38();
  v23 = v39;
  v24 = v35;
  sub_24EF36FC8(v1, v35, type metadata accessor for IndeterminateProgressSpinner);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_24EF38190(v24, v26 + v25, type metadata accessor for IndeterminateProgressSpinner);
  *a1 = xmmword_24F9B2010;
  *(a1 + 16) = v22;
  *(a1 + 24) = v32;
  *(a1 + 32) = v14;
  v27 = v37;
  *(a1 + 40) = v36;
  *(a1 + 56) = v27;
  result = v38[0];
  *(a1 + 72) = *v38;
  *(a1 + 88) = v21;
  *(a1 + 96) = 0x3FF0000000000000;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v23;
  *(a1 + 136) = sub_24EF3A030;
  *(a1 + 144) = v26;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_24EF360A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ProgressSpinner(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24EF362B0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923F78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_24EF360A8(&v22 - v8);
  (*(v4 + 104))(v6, *MEMORY[0x277CDFA90], v3);
  v10 = sub_24F923F68();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = 1.57079633;
  }

  else
  {
    v12 = -1.57079633;
  }

  v13 = sub_24F9276B8();
  v14 = sub_24F927618();
  v16 = v15;
  sub_24EF3656C(v1, &v34, v12);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v33 = v41;
  sub_24E60169C(&v24, v23, &qword_27F2343B0);
  sub_24E601704(v32, &qword_27F2343B0);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v34 = v24;
  v35 = v25;
  v41 = v31;
  v36 = v26;
  v37 = v27;
  sub_24F927618();
  sub_24F9238C8();
  v17 = v39;
  *(a1 + 80) = v38;
  *(a1 + 96) = v17;
  *(a1 + 112) = v40;
  v18 = v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v18;
  v19 = v37;
  *(a1 + 48) = v36;
  *(a1 + 64) = v19;
  v20 = v23[1];
  *(a1 + 136) = v23[0];
  result = *v1;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 128) = v41;
  *(a1 + 152) = v20;
  *(a1 + 168) = v23[2];
  *(a1 + 184) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_24EF3656C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v9 = sub_24F926D08();

  v10 = a1[2];
  if (a1[5])
  {
    v11 = 0;
    KeyPath = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v11 = sub_24F926DF8();
    v13 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    KeyPath = swift_getKeyPath();
    v16 = sub_24F925908();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v15 = sub_24F925968();
    sub_24E601704(v8, &qword_27F214698);
    v14 = swift_getKeyPath();
  }

  v17 = *a1;
  v18 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();

  sub_24E6DC040(v11);

  sub_24E6DC0B0(v11);
  *a2 = xmmword_24F98B440;
  *(a2 + 16) = a3;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = 0;
  *(a2 + 88) = v17;
  *(a2 + 96) = a3;
  *(a2 + 104) = v18;
  *(a2 + 112) = v10;

  sub_24E6DC0B0(v11);
}

uint64_t sub_24EF367F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24EF36990(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_24EF36B3C()
{
  sub_24EF37558(319, &qword_27F234090, MEMORY[0x277CDF4A0]);
  if (v0 <= 0x3F)
  {
    sub_24EF36C6C();
    if (v1 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EF36C6C()
{
  if (!qword_27F2340A0)
  {
    sub_24E62C088();
    v0 = sub_24F9237E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2340A0);
    }
  }
}

uint64_t sub_24EF36D04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF36D4C()
{
  result = qword_27F234120;
  if (!qword_27F234120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340F8);
    sub_24E602068(&qword_27F234118, &qword_27F234108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234120);
  }

  return result;
}

unint64_t sub_24EF36DFC()
{
  result = qword_27F234128;
  if (!qword_27F234128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340D0);
    sub_24E602068(&qword_27F234130, &qword_27F2340D8);
    sub_24E602068(&qword_27F234138, &qword_27F2340C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234128);
  }

  return result;
}

unint64_t sub_24EF36EDC()
{
  result = qword_27F234148;
  if (!qword_27F234148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234100);
    sub_24EF36D4C();
    sub_24EF36DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234148);
  }

  return result;
}

uint64_t sub_24EF36FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF37030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF370AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24EF37250(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_24EF373E0()
{
  sub_24EF37558(319, &qword_27F2341A8, MEMORY[0x277CDF860]);
  if (v0 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24EF375F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24EF37558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for OfferButtonViewModel();
    v7 = sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24EF375F4()
{
  if (!qword_27F21B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21B368);
    }
  }
}

uint64_t sub_24EF3766C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_24EF377C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EF37904()
{
  sub_24E7EA96C(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24EF36C6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EF37A00()
{
  result = qword_27F2341C0;
  if (!qword_27F2341C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340B8);
    sub_24EF37ABC();
    sub_24EF36D04(&qword_27F21B3C8, type metadata accessor for FocusedAlternativeSelectionButtonModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341C0);
  }

  return result;
}

unint64_t sub_24EF37ABC()
{
  result = qword_27F2341C8;
  if (!qword_27F2341C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340B0);
    sub_24EF37B74();
    sub_24E602068(&qword_27F236280, &qword_27F217118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341C8);
  }

  return result;
}

unint64_t sub_24EF37B74()
{
  result = qword_27F2341D0;
  if (!qword_27F2341D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340A8);
    sub_24EF37BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341D0);
  }

  return result;
}

unint64_t sub_24EF37BF8()
{
  result = qword_27F2341D8;
  if (!qword_27F2341D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341E0);
    sub_24EF36EDC();
    sub_24E602068(&qword_27F234150, &qword_27F234140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341D8);
  }

  return result;
}

unint64_t sub_24EF37D08()
{
  result = qword_27F234208;
  if (!qword_27F234208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341F8);
    sub_24EF3A2B0(&qword_27F234210, &qword_27F2341F0, &unk_24F9B2478, sub_24EF37DEC);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234208);
  }

  return result;
}

unint64_t sub_24EF37DEC()
{
  result = qword_27F234218;
  if (!qword_27F234218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341E8);
    sub_24EF37E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234218);
  }

  return result;
}

unint64_t sub_24EF37E70()
{
  result = qword_27F234220;
  if (!qword_27F234220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234228);
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234220);
  }

  return result;
}

unint64_t sub_24EF37F2C()
{
  result = qword_27F234230;
  if (!qword_27F234230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234238);
    sub_24EF37FB8();
    sub_24EF38068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234230);
  }

  return result;
}

unint64_t sub_24EF37FB8()
{
  result = qword_27F234240;
  if (!qword_27F234240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234248);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234240);
  }

  return result;
}

unint64_t sub_24EF38068()
{
  result = qword_27F234250;
  if (!qword_27F234250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234258);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24EF36D04(&qword_27F234260, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234250);
  }

  return result;
}

uint64_t sub_24EF38190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF3822C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[8];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_24EF383DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

void sub_24EF3856C()
{
  sub_24EF39818(319, &qword_27F230A10, type metadata accessor for Action, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EF38708(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

char *sub_24EF388B8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_24EF38A48()
{
  sub_24EF39818(319, &qword_27F230A10, type metadata accessor for Action, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24EF38BC0()
{
  result = qword_27F2342B0;
  if (!qword_27F2342B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341F8);
    sub_24EF37D08();
    swift_getOpaqueTypeConformance2();
    sub_24EF36D04(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2342B0);
  }

  return result;
}

unint64_t sub_24EF38CBC()
{
  result = qword_27F2342C0;
  if (!qword_27F2342C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342C8);
    sub_24EF38D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2342C0);
  }

  return result;
}

unint64_t sub_24EF38D40()
{
  result = qword_27F2342D0;
  if (!qword_27F2342D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342D8);
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2342D0);
  }

  return result;
}

uint64_t sub_24EF38E04()
{
  v1 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F9234F8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = *(type metadata accessor for OfferButtonDesign(0) + 20);
    v9 = sub_24F9234F8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF3905C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  v3 = *(v1 + 16);

  return sub_24EF34438(a1, v3);
}

unint64_t sub_24EF390D0()
{
  result = qword_27F234300;
  if (!qword_27F234300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342F8);
    sub_24EF36D04(&qword_27F234308, type metadata accessor for IndeterminateProgressSpinner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234300);
  }

  return result;
}

uint64_t sub_24EF391B4()
{
  v1 = type metadata accessor for OfferButtonView.ProgressButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F9234F8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = *(type metadata accessor for OfferButtonDesign(0) + 20);
    v9 = sub_24F9234F8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF39418@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfferButtonView.ProgressButton(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EF35228(v1 + v4, a1, v5);
}

unint64_t sub_24EF394B4()
{
  result = qword_27F234340;
  if (!qword_27F234340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234338);
    sub_24EF36D04(&qword_27F234348, type metadata accessor for ProgressSpinner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234340);
  }

  return result;
}

uint64_t sub_24EF395A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24EF39680(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EF39730()
{
  sub_24E7EA96C(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF39818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EF39890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EF39960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EF39A0C()
{
  sub_24EF39818(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24EF39AD0()
{
  result = qword_27F234380;
  if (!qword_27F234380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234318);
    sub_24EF39B88();
    sub_24E602068(&qword_27F234390, &qword_27F234398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234380);
  }

  return result;
}

unint64_t sub_24EF39B88()
{
  result = qword_27F234388;
  if (!qword_27F234388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342E0);
    sub_24F9241F8();
    sub_24E602068(&qword_27F234310, &qword_27F2342E0);
    sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234388);
  }

  return result;
}

unint64_t sub_24EF39CD8()
{
  result = qword_27F2343A0;
  if (!qword_27F2343A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234358);
    sub_24EF39D90();
    sub_24E602068(&qword_27F234390, &qword_27F234398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343A0);
  }

  return result;
}

unint64_t sub_24EF39D90()
{
  result = qword_27F2343A8;
  if (!qword_27F2343A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234320);
    sub_24F9241F8();
    sub_24E602068(&qword_27F234350, &qword_27F234320);
    sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343A8);
  }

  return result;
}

uint64_t sub_24EF39F14()
{
  v1 = (type metadata accessor for IndeterminateProgressSpinner(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF3A030()
{
  type metadata accessor for IndeterminateProgressSpinner(0);

  return sub_24EF36044();
}

unint64_t sub_24EF3A0B4()
{
  result = qword_27F2343B8;
  if (!qword_27F2343B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2343C0);
    sub_24EF3A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343B8);
  }

  return result;
}

unint64_t sub_24EF3A140()
{
  result = qword_27F2343C8;
  if (!qword_27F2343C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2343D0);
    sub_24EF3A1F8();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343C8);
  }

  return result;
}

unint64_t sub_24EF3A1F8()
{
  result = qword_27F2343D8;
  if (!qword_27F2343D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2343E0);
    sub_24EF3A2B0(&qword_27F2343E8, &qword_27F2343F0, &unk_24F9B2920, sub_24EF3A334);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343D8);
  }

  return result;
}

uint64_t sub_24EF3A2B0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24EF3A334()
{
  result = qword_27F2343F8;
  if (!qword_27F2343F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343F8);
  }

  return result;
}

unint64_t sub_24EF3A38C()
{
  result = qword_27F234400;
  if (!qword_27F234400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234408);
    sub_24EF3A444();
    sub_24E602068(&qword_27F229228, &qword_27F229230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234400);
  }

  return result;
}

unint64_t sub_24EF3A444()
{
  result = qword_27F234410;
  if (!qword_27F234410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234418);
    sub_24E602068(&qword_27F234420, &qword_27F234428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234410);
  }

  return result;
}

unint64_t sub_24EF3A51C()
{
  result = qword_27F234430;
  if (!qword_27F234430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234438);
    sub_24E602068(&qword_27F234440, &qword_27F234448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234430);
  }

  return result;
}

char *ClearAppUsageDataAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a7, &qword_27F213E68);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830);
  sub_24E601704(v39, &qword_27F235830);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearAppUsageDataAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830);
  }

  sub_24E601704(v22, &qword_27F213E68);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830);
  sub_24E601704(v52, &qword_27F235830);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}