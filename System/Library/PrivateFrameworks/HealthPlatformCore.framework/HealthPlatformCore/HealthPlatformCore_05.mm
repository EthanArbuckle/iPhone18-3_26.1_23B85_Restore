uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_22877F07C()
{
  if (!qword_280DE18B0)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18B0);
    }
  }
}

unint64_t sub_22877F0F4()
{
  result = qword_280DE2A90;
  if (!qword_280DE2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2A90);
  }

  return result;
}

unint64_t sub_22877F148()
{
  result = qword_280DE0F80;
  if (!qword_280DE0F80)
  {
    type metadata accessor for AppSessionAnalyticsManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE0F80);
  }

  return result;
}

unint64_t sub_22877F18C()
{
  result = qword_280DE1030;
  if (!qword_280DE1030)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE1030);
  }

  return result;
}

void sub_22877F208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22877F26C()
{
  if (!qword_280DE02B0)
  {
    v0 = MEMORY[0x277CBCEA8];
    sub_22877F360(255, &qword_280DE1A48, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics, MEMORY[0x277CBCEA8]);
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22877DB44(&qword_280DE1A50, &qword_280DE1A48, v0);
    sub_22871EC78();
    v1 = sub_2287CAC60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE02B0);
    }
  }
}

void sub_22877F360(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_22877C950();
    v9 = a4(a1, a3, &type metadata for AppSessionAnalyticsEvent.Failure, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22877F3CC()
{
  if (!qword_280DE03D0)
  {
    sub_22877F26C();
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22877D9EC(&qword_280DE02B8, sub_22877F26C);
    sub_22871EC78();
    v0 = sub_2287CABD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE03D0);
    }
  }
}

unint64_t sub_22877F4A0()
{
  result = qword_280DE2C88;
  if (!qword_280DE2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2C88);
  }

  return result;
}

unint64_t sub_22877F4F4()
{
  result = qword_27D850E30;
  if (!qword_27D850E30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D850E30);
  }

  return result;
}

void sub_22877F53C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_22877F5F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_22877F670()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_2287C9D80() & 1;
}

uint64_t sub_22877F6D4()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_2287C9DB0();
}

uint64_t sub_22877F71C()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_2287C9D90();
}

uint64_t sub_22877F79C()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_2287C9DC0();
}

uint64_t sub_22877F7EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = &type metadata for DispatchQueueGeneratorScheduler;
  a2[4] = sub_228741120();
  v6 = swift_allocObject();
  *a2 = v6;
  v6[5] = type metadata accessor for CommitRedirectingFeedItemContext();
  v6[6] = a1;
  v6[2] = v5;
}

uint64_t sub_22877F86C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  return v1();
}

uint64_t sub_22877F8A0()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_2287C9D60();
}

uint64_t sub_22877F918()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_2287C9DA0();
}

uint64_t sub_22877F998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

void sub_22877FA00()
{
  v0 = *MEMORY[0x277CCE378];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    sub_228780FDC();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    qword_280DE3340 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static BundleFeedItemPluginBundleProvider.sharedInstance.getter()
{
  if (qword_280DE3338 != -1)
  {
    swift_once();
  }
}

id sub_22877FAF8()
{
  result = *(v0 + 40);
  if (result == 1)
  {
    swift_beginAccess();
    result = [*(v0 + 16) principalClass];
    if (result)
    {
      result = swift_getObjCClassMetadata();
    }

    *(v0 + 40) = result;
  }

  return result;
}

void *(*sub_22877FB58(id *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_22877FAF8();
  return sub_22877FBA0;
}

uint64_t sub_22877FBAC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43[-1] - v11;
  v13 = sub_22877FAF8();
  if (v13)
  {
    v14 = v13;
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = *(*(v14 - 1) + 64);
      MEMORY[0x28223BE20](v15);
      sub_2287010E4(a1, v43);
      sub_2287CA520();
      sub_2287809DC();
      if (swift_dynamicCast())
      {
        return v43[0];
      }

      sub_2287CA9D0();
      v39 = sub_2287CAA40();
      v40 = sub_2287CB5F0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2286FF000, v39, v40, "Principal class is not operation-backed", v41, 2u);
        MEMORY[0x22AABFD90](v41, -1, -1);
      }

      v37 = *(v6 + 8);
      v38 = v12;
      goto LABEL_11;
    }
  }

  sub_2287CA9D0();

  v18 = sub_2287CAA40();
  v19 = sub_2287CB5F0();

  if (!os_log_type_enabled(v18, v19))
  {

    v37 = *(v6 + 8);
    v38 = v10;
LABEL_11:
    v37(v38, v5);
    return 0;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v44 = v21;
  *v20 = 136446978;
  v43[0] = v4;
  swift_getMetatypeMetadata();
  v22 = sub_2287CB250();
  v24 = sub_2287031D8(v22, v23, &v44);
  v42 = v5;
  v25 = v24;

  *(v20 + 4) = v25;
  *(v20 + 12) = 2082;
  swift_beginAccess();
  v26 = v2[3];
  v27 = v2[4];

  v28 = sub_2287031D8(v26, v27, &v44);

  *(v20 + 14) = v28;
  *(v20 + 22) = 2082;
  v43[5] = v2[5];
  sub_228780984();
  v29 = sub_2287CB250();
  v31 = sub_2287031D8(v29, v30, &v44);

  *(v20 + 24) = v31;
  *(v20 + 32) = 2082;
  swift_beginAccess();
  v32 = [v2[2] bundlePath];
  v33 = sub_2287CB220();
  v35 = v34;

  v36 = sub_2287031D8(v33, v35, &v44);

  *(v20 + 34) = v36;
  _os_log_impl(&dword_2286FF000, v18, v19, "[%{public}s]: Bundle %{public}s principal class %{public}s does not conform to FeedItemGenerator protocol. Location: %{public}s", v20, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x22AABFD90](v21, -1, -1);
  MEMORY[0x22AABFD90](v20, -1, -1);

  (*(v6 + 8))(v10, v42);
  return 0;
}

double sub_228780020@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_22877FAF8();
  if (v13)
  {
    v14 = v13;
    if (swift_conformsToProtocol2())
    {

      v16 = sub_228780B9C(v15);

      *(a1 + 24) = type metadata accessor for GenerationOperationToPluginDelegateAdaptor();
      *(a1 + 32) = sub_228780F94(qword_280DE1D60, 255, type metadata accessor for GenerationOperationToPluginDelegateAdaptor);
      *a1 = v16;
      return result;
    }

    v34 = swift_conformsToProtocol2();
    if (v34)
    {
      *(a1 + 24) = v14;
      *(a1 + 32) = v34;
      __swift_allocate_boxed_opaque_existential_0(a1);
      sub_2287C9950();
      return result;
    }

    sub_2287CA9D0();

    v35 = sub_2287CAA40();
    v36 = sub_2287CB5F0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v37 = 136446978;
      v57 = v4;
      swift_getMetatypeMetadata();
      v38 = sub_2287CB250();
      v40 = sub_2287031D8(v38, v39, &v58);

      *(v37 + 4) = v40;
      v55 = v6;
      *(v37 + 12) = 2082;
      swift_beginAccess();
      v41 = v2[3];
      v42 = v2[4];

      v43 = sub_2287031D8(v41, v42, &v58);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2082;
      v56 = v2[5];
      sub_228780984();
      v44 = sub_2287CB250();
      v46 = sub_2287031D8(v44, v45, &v58);

      *(v37 + 24) = v46;
      *(v37 + 32) = 2082;
      swift_beginAccess();
      v47 = [v2[2] bundlePath];
      v48 = sub_2287CB220();
      v50 = v49;

      v51 = sub_2287031D8(v48, v50, &v58);

      *(v37 + 34) = v51;
      _os_log_impl(&dword_2286FF000, v35, v36, "[%{public}s]: Bundle %{public}s principal class %{public}s does not conform to FeedItemGenerator or HealthPluginDelegate protocol. Location: %{public}s", v37, 0x2Au);
      v52 = v54;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v52, -1, -1);
      MEMORY[0x22AABFD90](v37, -1, -1);

      (*(v55 + 8))(v12, v5);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }
  }

  else
  {
    sub_2287CA9D0();

    v18 = sub_2287CAA40();
    v19 = sub_2287CB5F0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v55 = v6;
      v22 = v21;
      v58 = v21;
      *v20 = 136446722;
      v57 = v4;
      swift_getMetatypeMetadata();
      v23 = sub_2287CB250();
      v25 = sub_2287031D8(v23, v24, &v58);

      *(v20 + 4) = v25;
      v54 = v5;
      *(v20 + 12) = 2082;
      swift_beginAccess();
      v26 = v2[3];
      v27 = v2[4];

      v28 = sub_2287031D8(v26, v27, &v58);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2082;
      swift_beginAccess();
      v29 = [v2[2] bundlePath];
      v30 = sub_2287CB220();
      v32 = v31;

      v33 = sub_2287031D8(v30, v32, &v58);

      *(v20 + 24) = v33;
      _os_log_impl(&dword_2286FF000, v18, v19, "[%{public}s]: Bundle %{public}s doesn't have a principal class. Location: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v22, -1, -1);
      MEMORY[0x22AABFD90](v20, -1, -1);

      (*(v55 + 8))(v10, v54);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t BundleFeedItemGenerationPluginInfo.__allocating_init(bundle:)(void *a1)
{
  swift_allocObject();
  v2 = sub_228780A58(a1);

  return v2;
}

uint64_t BundleFeedItemGenerationPluginInfo.init(bundle:)(void *a1)
{
  v2 = sub_228780A58(a1);

  return v2;
}

uint64_t BundleFeedItemGenerationPluginInfo.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t BundleFeedItemGenerationPluginInfo.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *(*sub_228780728(id *a1))(void *result)
{
  a1[1] = *v1;
  *a1 = sub_22877FAF8();
  return sub_22878106C;
}

void sub_2287807BC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  swift_allocObject();
  v4 = sub_228780A58(a1);

  *a2 = v4;
}

uint64_t BundleFeedItemGenerationPluginInfo.description.getter()
{
  sub_2287CBA20();
  MEMORY[0x22AABE980](60, 0xE100000000000000);
  v1 = *v0;
  sub_228780CE0();
  v2 = sub_2287CB250();
  MEMORY[0x22AABE980](v2);

  MEMORY[0x22AABE980](32, 0xE100000000000000);
  sub_2287CBB30();
  MEMORY[0x22AABE980](0xD000000000000014, 0x80000002287D22C0);
  swift_beginAccess();
  v4 = v0[3];
  v3 = v0[4];

  MEMORY[0x22AABE980](v4, v3);

  MEMORY[0x22AABE980](62, 0xE100000000000000);
  return 0;
}

void sub_228780984()
{
  if (!qword_280DDFE00)
  {
    sub_2287150D0();
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE00);
    }
  }
}

unint64_t sub_2287809DC()
{
  result = qword_280DE3368;
  if (!qword_280DE3368)
  {
    sub_228703004(255, &qword_280DE19B8, 0x277CCABD0);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3368);
  }

  return result;
}

uint64_t sub_228780A58(void *a1)
{
  v1[5] = 1;
  v1[2] = a1;
  v2 = a1;
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2287CB220();
    v7 = v6;

    v1[3] = v5;
    v1[4] = v7;
    return v1;
  }

  else
  {
    sub_2287CBA20();

    v9 = [v2 description];
    v10 = sub_2287CB220();
    v12 = v11;

    MEMORY[0x22AABE980](v10, v12);

    MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1460);
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t sub_228780B9C(uint64_t a1)
{
  type metadata accessor for GenerationOperationToPluginDelegateAdaptor();
  v2 = swift_allocObject();
  v7[3] = type metadata accessor for BundleFeedItemGenerationPluginInfo();
  v7[4] = sub_228780F94(&qword_280DE21E0, v3, type metadata accessor for BundleFeedItemGenerationPluginInfo);
  v7[0] = a1;
  sub_2287010E4(v7, v2 + 16);
  sub_228703004(0, &qword_280DE3880, 0x277CCABD8);

  sub_2287CBA20();

  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  MEMORY[0x22AABE980](0x746172656E65475FLL, 0xEF6575657551726FLL);
  *(v2 + 56) = sub_2287CB650();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v2;
}

unint64_t sub_228780CE0()
{
  result = qword_280DE21D8;
  if (!qword_280DE21D8)
  {
    type metadata accessor for BundleFeedItemGenerationPluginInfo();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE21D8);
  }

  return result;
}

uint64_t sub_228780D48(uint64_t a1, uint64_t a2)
{
  result = sub_228780F94(&qword_280DE3760, a2, type metadata accessor for BundleFeedItemGenerationPluginInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228780F94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_228780FDC()
{
  if (!qword_280DE2D98)
  {
    type metadata accessor for BundleFeedItemGenerationPluginInfo();
    sub_228780F94(&qword_280DE3760, v0, type metadata accessor for BundleFeedItemGenerationPluginInfo);
    v1 = type metadata accessor for PluginBundleProvider();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE2D98);
    }
  }
}

void sub_228781074()
{
  sub_2287CA040();
  sub_2287CA120();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE62A8 = v1;
}

id sub_2287810F4()
{
  result = [objc_opt_self() frequencyTransformWithCount:1000 minimumValidCount:100];
  qword_280DE6290 = result;
  return result;
}

void sub_228781138()
{
  if (qword_280DE11D0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE11B8;
  v1 = qword_280DE62A8;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6290;
  v3 = [v1 featureByUsingTransformer_];

  qword_280DE6298 = v3;
}

void sub_22878120C()
{
  if (qword_280DE11C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6298;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = sub_2287CB210();
  v7[4] = sub_228781370;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22878141C;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = [v1 customTransformerWithName:v3 outputType:2 block:v4];
  _Block_release(v4);

  v6 = [v2 featureByUsingTransformer_];
  qword_280DE62A0 = v6;
}

id sub_228781370(void *a1)
{
  if ([a1 int64Value])
  {
    v2 = objc_opt_self();
  }

  else
  {
    [a1 doubleValue];
    v4 = v3;
    v2 = objc_opt_self();
    if (v4 < 0.05)
    {
      v5 = 1.0;
      goto LABEL_6;
    }
  }

  v5 = 0.0;
LABEL_6:
  v6 = [v2 featureValueWithDouble_];

  return v6;
}

id sub_22878141C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void sub_228781484()
{
  v1 = sub_2287CA040();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  (*(v2 + 16))(v5, v0, v1);
  v11 = sub_2287CAA40();
  v12 = sub_2287CB610();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v0;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = v15;
    v28 = v15;
    *v14 = 136315138;
    v17 = sub_2287CA030();
    v25 = v6;
    v19 = v18;
    (*(v2 + 8))(v5, v1);
    v20 = sub_2287031D8(v17, v19, &v28);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2286FF000, v11, v12, "Incrementing novelty count for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v14, -1, -1);

    (*(v26 + 8))(v10, v25);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
  }

  if (qword_280DE11B8 != -1)
  {
    swift_once();
  }

  v21 = qword_280DE6290;
  sub_2287CA110();
  v22 = sub_2287CB210();

  v23 = [objc_opt_self() featureValueWithString_];

  [v21 increaseCountForFeatureValue_];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SearchSection.localizedHeaderTitle(for:)(char a1, unsigned __int8 a2)
{
  if (a2 > 6u)
  {
    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (a2 == 11)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }

      goto LABEL_40;
    }

    if (a2 - 7 >= 2)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }

      goto LABEL_40;
    }

    goto LABEL_20;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (a2 > 4u)
  {
    if (a2 != 5)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }

      goto LABEL_40;
    }

LABEL_20:
    if (a1)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (a2 == 3)
  {
    if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (a1)
  {
    if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_40;
  }

  if (qword_280DE1280 != -1)
  {
LABEL_40:
    swift_once();
  }

  return sub_2287C9620();
}

uint64_t HKHealthStore.makePreferredTransactionPublisher()()
{
  sub_22873CD8C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CB5B0();
  v6 = MEMORY[0x277D83940];
  sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
  v7 = MEMORY[0x277D83D88];
  sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v6);
  sub_2287CAF70();
  sub_228783E6C(&qword_280DE05D0, sub_22873CD8C);
  v8 = sub_2287CAF40();

  (*(v2 + 8))(v5, v1);
  v12 = v8;
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v7);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v7);
  v9 = sub_2287CAF40();

  return v9;
}

uint64_t HKHealthStore.makeSharedSummariesFromLatestTransactionPublisher(sharedTransactionPublisher:pluginName:identifiers:objectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v48 = a3;
  v49 = a4;
  v46 = a2;
  sub_22873C170();
  v8 = v7;
  v53 = *(v7 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773BD4();
  v51 = v11;
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783CDC();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783DB4();
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = a1;
  }

  else
  {
    v44 = v23;
    v45 = v5;
    v27 = sub_2287CB5B0();
    v43 = v16;
    v55 = v27;
    v28 = MEMORY[0x277D83940];
    sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
    sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v28);
    sub_2287CAFA0();

    v29 = MEMORY[0x277D83D88];
    sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    sub_228783E6C(&qword_280DE0528, sub_228783DB4);
    sub_2287CAF70();
    sub_228783E6C(&qword_280DE05B0, sub_228783CDC);
    v30 = sub_2287CAF40();
    (*(v43 + 8))(v19, v15);
    (*(v44 + 8))(v25, v21);
    v55 = v30;
    sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v29);
    sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v29);
    v26 = sub_2287CAF40();
  }

  v55 = v26;
  v31 = MEMORY[0x277D83D88];
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88]);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v31);

  v32 = v50;
  sub_2287CAFA0();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v35 = v46;
  v34[2] = v33;
  v34[3] = v35;
  v36 = v49;
  v34[4] = v48;
  v34[5] = v36;
  v34[6] = v47;

  sub_2287CACC0();
  sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
  v37 = MEMORY[0x277CBCD88];
  sub_228783BF4(0, &qword_280DE1A90, MEMORY[0x277CBCD88]);
  sub_228783E6C(&qword_280DE0518, sub_22873C170);
  sub_228783C98(&qword_280DE1A98, &qword_280DE1A90, v37);
  v38 = v52;
  sub_2287CAFE0();

  (*(v53 + 8))(v32, v8);
  sub_228783E6C(&qword_280DE0428, sub_228773BD4);
  v39 = v51;
  v40 = sub_2287CAF40();

  (*(v54 + 8))(v38, v39);
  return v40;
}

uint64_t HKHealthStore.makeSharedSummariesStreamPublisher(sharedTransactionPublisher:pluginName:identifiers:objectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_22873AB44();
  v49 = v12;
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773D34();
  v50 = v15;
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v15);
  v46 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  if (a1)
  {
    v24 = a1;
  }

  else
  {
    v43 = a3;
    v51 = sub_2287CB5B0();
    v25 = MEMORY[0x277D83940];
    sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
    v41[1] = v6;
    v26 = MEMORY[0x277D83D88];
    sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    v42 = a2;
    sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v25);
    sub_2287CAF70();
    sub_228783E6C(&qword_280DE05D0, sub_22873CD8C);
    v27 = sub_2287CAF40();

    (*(v20 + 8))(v23, v19);
    v51 = v27;
    sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v26);
    sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v26);
    a2 = v42;
    v28 = sub_2287CAF40();
    a3 = v43;
    v24 = v28;
  }

  v43 = v24;
  v51 = v24;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a2;
  v30[4] = a3;
  v30[5] = a4;
  v30[6] = a5;
  v31 = MEMORY[0x277D83D88];
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88]);
  v32 = MEMORY[0x277CBCD88];
  sub_228783BF4(0, &qword_280DE1A90, MEMORY[0x277CBCD88]);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v31);

  v33 = v45;
  sub_2287CAF70();

  v34 = sub_228783E6C(&qword_280DE05C0, sub_22873AB44);
  v35 = sub_228783C98(&qword_280DE1A98, &qword_280DE1A90, v32);
  v36 = v46;
  v37 = v49;
  MEMORY[0x22AABE600](v49, v34, v35);
  (*(v47 + 8))(v33, v37);
  sub_228783E6C(&qword_280DE06B0, sub_228773D34);
  v38 = v50;
  v39 = sub_2287CAF40();

  (*(v48 + 8))(v36, v38);
  return v39;
}

uint64_t sub_228782F1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v33[1] = a3;
  v33[2] = a4;
  v33[0] = a2;
  sub_228783EDC();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783BF4(0, &qword_280DDFE10, MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v33 - v16;
  v18 = sub_2287CAA50();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a1;
    v36 = sub_2287CB5A0();
    v24 = MEMORY[0x277CBCD88];
    sub_228783BF4(0, &qword_280DE1A90, MEMORY[0x277CBCD88]);
    sub_228783C98(&qword_280DE1A98, &qword_280DE1A90, v24);
    sub_228783F60();
    v25 = sub_2287CAE60();

    v36 = v25;
    v26 = sub_2287CAF40();
  }

  else
  {
    v34 = v8;
    v35 = v14;
    v27 = v7;
    v28 = v13;
    sub_2287CAA20();
    v29 = sub_2287CAA40();
    v30 = sub_2287CB610();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2286FF000, v29, v30, "[Transaction] Transaction does not exist. Returning 0 summaries", v31, 2u);
      MEMORY[0x22AABFD90](v31, -1, -1);
    }

    (*(v19 + 8))(v22, v18);
    v36 = MEMORY[0x277D84F90];
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_2287CADB0();
    sub_22874A0A4();
    sub_2287CAD80();
    (*(v34 + 8))(v11, v27);
    sub_228783C98(&qword_280DDFE18, &qword_280DDFE10, MEMORY[0x277CBCF38]);
    v26 = sub_2287CAF40();
    (*(v35 + 8))(v17, v28);
  }

  return v26;
}

uint64_t HKHealthStore.makeLatestTransactionPublisher()()
{
  sub_228783CDC();
  v17 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783DB4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CB5B0();
  v11 = MEMORY[0x277D83940];
  sub_228783B18(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
  sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v11);
  sub_2287CAFA0();

  v12 = MEMORY[0x277D83D88];
  sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_228783E6C(&qword_280DE0528, sub_228783DB4);
  sub_2287CAF70();
  sub_228783E6C(&qword_280DE05B0, sub_228783CDC);
  v13 = v17;
  v14 = sub_2287CAF40();
  (*(v1 + 8))(v4, v13);
  (*(v7 + 8))(v10, v6);
  v18 = v14;
  sub_228783B18(0, &qword_280DE0148, &qword_280DDFEB0, v12);
  sub_228783BA4(&unk_280DE0150, &qword_280DE0148, &qword_280DDFEB0, v12);
  v15 = sub_2287CAF40();

  return v15;
}

uint64_t Publisher<>.filterAndSelectPreferredTransaction()()
{
  sub_22873AC2C(255, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  v0 = sub_2287CAB50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_2287CAF70();
  swift_getWitnessTable();
  v5 = sub_2287CAF40();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void sub_2287837EC(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v28 = a6;
  sub_228783EDC();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228783BF4(0, &qword_280DDFE10, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  v21 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = sub_228782F1C(v21, a2, a3, v26, v27);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_2287CADB0();
    sub_22874A0A4();
    sub_2287CAD80();
    (*(v11 + 8))(v14, v10);
    sub_228783C98(&qword_280DDFE18, &qword_280DDFE10, MEMORY[0x277CBCF38]);
    v24 = sub_2287CAF40();
    (*(v17 + 8))(v20, v16);
  }

  *v28 = v24;
}

uint64_t sub_228783A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_22873AC2C(0, &unk_280DDFF58, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83940]);
  sub_228783FE4();
  result = sub_2287CB500();
  *a2 = result;
  return result;
}

void sub_228783B18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22873AC2C(255, a3, &qword_280DE1958, 0x277CCD940, a4);
    sub_22874A0A4();
    v5 = sub_2287CACD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228783BA4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228783B18(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228783BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_22874A0A4();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228783C98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_228783BF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228783CDC()
{
  if (!qword_280DE05A8)
  {
    sub_228783DB4();
    sub_22873AC2C(255, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    sub_228783E6C(&qword_280DE0528, sub_228783DB4);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE05A8);
    }
  }
}

void sub_228783DB4()
{
  if (!qword_280DE0520)
  {
    v0 = MEMORY[0x277D83940];
    sub_228783B18(255, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940]);
    sub_228783BA4(&qword_280DE0180, &qword_280DE0178, &unk_280DDFF58, v0);
    v1 = sub_2287CAB70();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0520);
    }
  }
}

uint64_t sub_228783E6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228783EDC()
{
  if (!qword_280DE00A0)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    v0 = sub_2287CADA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE00A0);
    }
  }
}

unint64_t sub_228783F60()
{
  result = qword_280DDFF90;
  if (!qword_280DDFF90)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFF90);
  }

  return result;
}

unint64_t sub_228783FE4()
{
  result = qword_27D850E38;
  if (!qword_27D850E38)
  {
    sub_22873AC2C(255, &unk_280DDFF58, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E38);
  }

  return result;
}

uint64_t Feed.isTooOldForDisplay.getter()
{
  sub_228705B74(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_2287C97C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = sub_2287CA600();
  Feed.Kind.earliestDisplayDateUpdated.getter(v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22878DA04(v4, &qword_280DE3A98, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    v14 = [v0 dateUpdated];
    sub_2287C97A0();

    LOBYTE(v14) = sub_2287C9780();
    v15 = *(v6 + 8);
    v15(v10, v5);
    v15(v12, v5);
    if (v14)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_228784298(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2287042D4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22870317C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2287042D4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t Feed.findSection(for:)()
{
  if (((1 << sub_2287CA600()) & 0x17) != 0)
  {

    return sub_22878883C();
  }

  else
  {
    sub_2287CA600();

    return sub_22878AD68();
  }
}

uint64_t sub_22878441C()
{
  v1 = [v0 feedItems];
  sub_2287CA800();
  v2 = sub_2287CB580();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AABF120](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 setSectionSortOrder_];

      ++v4;
      if (v7 == i)
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
}

uint64_t sub_228784538(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2287CB920();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_228725020(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_2287CB920() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_2287CB920();
  v2 = sub_228725258(v5, v6);
LABEL_10:

  return sub_228725A28(a1, v2);
}

uint64_t sub_22878462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2287CBD80();
  sub_2287CB290();
  v7 = sub_2287CBDB0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2287CBD00() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_228784724(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_2287CBD80();
  MEMORY[0x22AABF460](a1);
  v5 = sub_2287CBDB0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_2287847F0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2287CB960();
  }

  else if (*(a2 + 16) && (sub_228703004(0, &qword_280DE3870, 0x277CCD7C8), v5 = *(a2 + 40), v6 = sub_2287CB7E0(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_2287CB7F0();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_228784920(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2287CB8C0();
    v7 = v6;
    v8 = sub_2287CB970();
    v10 = v9;
    v11 = MEMORY[0x22AABEFC0](v5, v7, v8, v9);
    sub_228717DF8(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_228717DF8(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = sub_2287CB890();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(v5, v7, v4 != 0, a1);
  sub_228717DF8(v5, v7, v4 != 0);
  return v14;
}

void sub_228784A44()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x22AABF120](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_2287CB920())
  {
    goto LABEL_20;
  }

  if (!sub_2287CB920())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_2287CB920();
LABEL_16:
    if (v3)
    {
      sub_228750C04(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_228784B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2287134C0(0, v1, 0);
    v2 = v16;
    sub_22872C748();
    sub_228714F50();
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v12 = *(v4 - 2);
      v13 = *(v4 - 1);

      v6 = v5;
      swift_dynamicCast();
      v7 = v15;
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2287134C0((v8 > 1), v9 + 1, 1);
        v7 = v15;
      }

      *(v16 + 16) = v9 + 1;
      v10 = v16 + 24 * v9;
      *(v10 + 32) = v14;
      *(v10 + 40) = v7;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_228784C48(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_2287CB920();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_22871353C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x22AABF120](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_22871353C((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_22873E2D8(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22871353C((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_22873E2D8(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_228784E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2287135AC(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    sub_22874FDD4();
    sub_2287150D0();
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2287135AC((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_228784F20(unsigned int a1, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v217 = a4;
  v222 = a3;
  v202 = a1;
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v200 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v208 = &v199 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v207 = &v199 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v205 = &v199 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v209 = &v199 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v221 = &v199 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v223 = &v199 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v199 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v199 - v27;
  sub_2287CA9E0();
  swift_bridgeObjectRetain_n();
  v29 = sub_2287CAA40();
  v30 = sub_2287CB610();
  v31 = os_log_type_enabled(v29, v30);
  v218 = v7;
  v204 = v8;
  v220 = v5;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v224[0] = v33;
    *v32 = 136315650;
    v34 = sub_2287CBE60();
    v36 = sub_2287031D8(v34, v35, v224);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2050;
    if (a2 >> 62)
    {
      v37 = sub_2287CB920();
    }

    else
    {
      v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v222;

    *(v32 + 14) = v37;

    *(v32 + 22) = 2082;
    v39 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v41 = sub_2287031D8(v39, v40, v224);

    *(v32 + 24) = v41;
    _os_log_impl(&dword_2286FF000, v29, v30, "[%s]: %{public}ld REElements retrieved from RelevanceEngine for feed %{public}s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v33, -1, -1);
    MEMORY[0x22AABFD90](v32, -1, -1);

    v7 = v218;
    v219 = *(v204 + 8);
    v219(v28, v218);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v219 = *(v8 + 8);
    v219(v28, v7);
    v38 = v222;
  }

  v42 = sub_22878AFA8();
  v215 = v42;
  if (v42)
  {
    v43 = v42;
    sub_2287CA9E0();

    v44 = sub_2287CAA40();
    v45 = sub_2287CB610();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v43;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v224[0] = v48;
      *v47 = 136315394;
      v49 = sub_2287CBE60();
      v51 = sub_2287031D8(v49, v50, v224);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = MEMORY[0x22AABEA80](v46, MEMORY[0x277D837D0]);
      v54 = sub_2287031D8(v52, v53, v224);

      *(v47 + 14) = v54;
      _os_log_impl(&dword_2286FF000, v44, v45, "[%s]: Relevance Override Default detected, ignoring RelevanceEngine and proceeding with %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v48, -1, -1);
      MEMORY[0x22AABFD90](v47, -1, -1);

      v7 = v218;
      v219(v26, v218);
    }

    else
    {

      v7 = v218;
      v219(v26, v218);
      v46 = v43;
    }

    v69 = v202;
    v56 = v223;
  }

  else
  {
    if (a2 >> 62)
    {
      v55 = sub_2287CB920();
    }

    else
    {
      v55 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v223;
    v46 = MEMORY[0x277D84F90];
    if (v55)
    {
      v224[0] = MEMORY[0x277D84F90];
      result = sub_2287042D4(0, v55 & ~(v55 >> 63), 0);
      if (v55 < 0)
      {
        __break(1u);
        return result;
      }

      v58 = 0;
      v46 = v224[0];
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x22AABF120](v58, a2);
        }

        else
        {
          v59 = *(a2 + 8 * v58 + 32);
        }

        v60 = v59;
        v61 = [v59 identifier];
        v62 = sub_2287CB220();
        v64 = v63;

        v224[0] = v46;
        v66 = *(v46 + 16);
        v65 = *(v46 + 24);
        v67 = v46;
        if (v66 >= v65 >> 1)
        {
          sub_2287042D4((v65 > 1), v66 + 1, 1);
          v67 = v224[0];
        }

        ++v58;
        *(v67 + 16) = v66 + 1;
        v68 = v67 + 16 * v66;
        *(v68 + 32) = v62;
        *(v68 + 40) = v64;
        v46 = v67;
      }

      while (v55 != v58);
      v7 = v218;
      v69 = v202;
      v38 = v222;
      v56 = v223;
    }

    else
    {
      v69 = v202;
    }
  }

  v70 = [v217 profileIdentifier];
  v210 = static FeedPopulationManaging.fetchAndValidateFeedToPopulate(kind:managedObjectContext:associatedProfileIdentifier:)(v69, v38, v70, v220);

  if (qword_280DE0D98 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v71 = NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(v69, qword_280DE0DA0);
    sub_2287CA9E0();
    swift_bridgeObjectRetain_n();
    v72 = sub_2287CAA40();
    v73 = sub_2287CB610();
    v74 = v71 >> 62;
    if (os_log_type_enabled(v72, v73))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v224[0] = v76;
      *v75 = 136315650;
      v77 = sub_2287CBE60();
      v79 = sub_2287031D8(v77, v78, v224);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2082;
      v80 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v82 = sub_2287031D8(v80, v81, v224);

      *(v75 + 14) = v82;
      v74 = v71 >> 62;
      *(v75 + 22) = 2050;
      if (v71 >> 62)
      {
        v83 = sub_2287CB920();
      }

      else
      {
        v83 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = v221;

      *(v75 + 24) = v83;

      _os_log_impl(&dword_2286FF000, v72, v73, "[%s]: Picking elements for a new %{public}s feed from %{public}ld Core Data elements", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v76, -1, -1);
      MEMORY[0x22AABFD90](v75, -1, -1);

      v7 = v218;
      v219(v223, v218);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v219(v56, v7);
      v56 = v221;
    }

    sub_2287CA9E0();

    v84 = sub_2287CAA40();
    v85 = sub_2287CB610();

    v86 = os_log_type_enabled(v84, v85);
    v214 = v74;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v224[0] = v88;
      *v87 = 136315650;
      v89 = sub_2287CBE60();
      v91 = sub_2287031D8(v89, v90, v224);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2082;
      v92 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v94 = sub_2287031D8(v92, v93, v224);

      *(v87 + 14) = v94;
      *(v87 + 22) = 2080;
      v95 = MEMORY[0x22AABEA80](v46, MEMORY[0x277D837D0]);
      v97 = sub_2287031D8(v95, v96, v224);

      *(v87 + 24) = v97;
      _os_log_impl(&dword_2286FF000, v84, v85, "[%s]: Picking feed of kind %{public}s from these ranked identifiers (the rest were dropped): %s", v87, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v88, -1, -1);
      MEMORY[0x22AABFD90](v87, -1, -1);

      v98 = v204;
      v99 = v56;
      v100 = v218;
    }

    else
    {

      v98 = v204;
      v99 = v56;
      v100 = v7;
    }

    v219(v99, v100);
    v69 = v215;
    v216 = v46;
    v102 = *(v46 + 16);
    v223 = v71;
    v213 = v102;
    if (v102)
    {
      v7 = 0;
      v212 = v216 + 32;
      v46 = v71 & 0xFFFFFFFFFFFFFF8;
      if ((v71 & 0x8000000000000000) != 0)
      {
        v103 = v71;
      }

      else
      {
        v103 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      v199 = v103;
      v222 = v71 & 0xC000000000000001;
      v211 = v98 + 8;
      *&v101 = 136315394;
      v206 = v101;
      *&v101 = 136315650;
      v201 = v101;
      do
      {
        if (v7 >= *(v216 + 16))
        {
          goto LABEL_107;
        }

        v106 = (v212 + 16 * v7);
        v107 = *v106;
        v108 = v106[1];
        v221 = v7;
        if (v69)
        {
          if (v214)
          {
            v69 = sub_2287CB920();
          }

          else
          {
            v69 = *(v46 + 16);
          }

          if (v69)
          {
            v7 = 0;
            while (1)
            {
              if (v222)
              {
                v109 = MEMORY[0x22AABF120](v7, v71);
              }

              else
              {
                if (v7 >= *(v46 + 16))
                {
                  goto LABEL_102;
                }

                v109 = *(v71 + 8 * v7 + 32);
              }

              v110 = v109;
              v111 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                break;
              }

              v112 = [v109 uniqueIdentifier];
              sub_2287CB220();
              v56 = v113;

              LOBYTE(v112) = sub_22873E55C();

              if (v112)
              {
                goto LABEL_79;
              }

              ++v7;
              v128 = v111 == v69;
              v71 = v223;
              if (v128)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_56:
          v114 = v209;
          sub_2287CA9E0();

          v115 = sub_2287CAA40();
          v116 = sub_2287CB5F0();

          if (!os_log_type_enabled(v115, v116))
          {
LABEL_38:

            v104 = v114;
            goto LABEL_39;
          }

          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v224[0] = v118;
          *v117 = v206;
          v119 = sub_2287CBE60();
          v56 = v120;
          v121 = sub_2287031D8(v119, v120, v224);

          *(v117 + 4) = v121;
          *(v117 + 12) = 2082;
          v122 = sub_2287031D8(v107, v108, v224);

          *(v117 + 14) = v122;
          _os_log_impl(&dword_2286FF000, v115, v116, "[%s]: Relevance Override Default set, but no feedItem found for %{public}s", v117, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v118, -1, -1);
          MEMORY[0x22AABFD90](v117, -1, -1);

          v104 = v209;
        }

        else
        {
          if (v214)
          {
            v69 = sub_2287CB920();
          }

          else
          {
            v69 = *(v46 + 16);
          }

          if (v69)
          {
            v7 = 0;
            while (1)
            {
              if (v222)
              {
                v123 = MEMORY[0x22AABF120](v7, v71);
              }

              else
              {
                if (v7 >= *(v46 + 16))
                {
                  goto LABEL_104;
                }

                v123 = *(v71 + 8 * v7 + 32);
              }

              v110 = v123;
              v124 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_103;
              }

              v56 = [v123 uniqueIdentifier];
              v125 = sub_2287CB220();
              v127 = v126;

              v128 = v125 == v107 && v127 == v108;
              if (v128)
              {
                break;
              }

              v56 = sub_2287CBD00();

              if (v56)
              {
                goto LABEL_79;
              }

              ++v7;
              v128 = v124 == v69;
              v71 = v223;
              if (v128)
              {
                goto LABEL_76;
              }
            }

LABEL_79:

            v136 = v110;
            v105 = v221;
            [v136 setSortOrder_];
            v137 = sub_2287CA600();
            v138 = v207;
            v139 = v208;
            if (((1 << v137) & 0x17) != 0)
            {
              v140 = sub_22878883C();

              if (!v140)
              {
                sub_2287CA9E0();
                v141 = v136;
                v142 = sub_2287CAA40();
                v143 = sub_2287CB610();

                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  v145 = swift_slowAlloc();
                  v224[0] = v145;
                  *v144 = v206;
                  v146 = sub_2287CBE60();
                  v148 = sub_2287031D8(v146, v147, v224);

                  *(v144 + 4) = v148;
                  *(v144 + 12) = 2080;
                  v149 = [v141 uniqueIdentifier];
                  v150 = sub_2287CB220();
                  v152 = v151;

                  v56 = sub_2287031D8(v150, v152, v224);

                  *(v144 + 14) = v56;
                  _os_log_impl(&dword_2286FF000, v142, v143, "[%s]: Section not found for feedItem %s", v144, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x22AABFD90](v145, -1, -1);
                  MEMORY[0x22AABFD90](v144, -1, -1);
                }

                v219(v139, v218);
                v69 = v215;
                v105 = v221;
                [v141 setFeedSection_];
                sub_2287CA800();
                [v141 setSectionSortOrder_];

LABEL_88:
                v71 = v223;
                goto LABEL_40;
              }
            }

            else
            {
              sub_2287CA600();
              v140 = sub_22878AD68();
            }

            sub_2287CA9E0();
            v153 = v136;
            v154 = v138;
            v155 = v140;
            v156 = sub_2287CAA40();
            v157 = sub_2287CB610();

            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              v203 = swift_slowAlloc();
              v224[0] = v203;
              *v158 = v201;
              v159 = sub_2287CBE60();
              v161 = sub_2287031D8(v159, v160, v224);

              *(v158 + 4) = v161;
              *(v158 + 12) = 2080;
              v162 = [v155 identifier];
              v163 = sub_2287CB220();
              v165 = v164;

              v166 = sub_2287031D8(v163, v165, v224);

              *(v158 + 14) = v166;
              *(v158 + 22) = 2080;
              v167 = [v153 uniqueIdentifier];
              v168 = sub_2287CB220();
              v170 = v169;

              v56 = sub_2287031D8(v168, v170, v224);

              *(v158 + 24) = v56;
              _os_log_impl(&dword_2286FF000, v156, v157, "[%s]: Section %s found for feedItem %s", v158, 0x20u);
              v171 = v203;
              swift_arrayDestroy();
              MEMORY[0x22AABFD90](v171, -1, -1);
              v172 = v158;
              v105 = v221;
              MEMORY[0x22AABFD90](v172, -1, -1);
            }

            v219(v154, v218);
            v69 = v215;
            [v155 addFeedItemsObject_];

            goto LABEL_88;
          }

LABEL_76:
          v114 = v205;
          sub_2287CA9E0();

          v115 = sub_2287CAA40();
          v129 = sub_2287CB610();

          if (!os_log_type_enabled(v115, v129))
          {
            goto LABEL_38;
          }

          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v224[0] = v131;
          *v130 = v206;
          v132 = sub_2287CBE60();
          v56 = v133;
          v134 = sub_2287031D8(v132, v133, v224);

          *(v130 + 4) = v134;
          *(v130 + 12) = 2080;
          v135 = sub_2287031D8(v107, v108, v224);

          *(v130 + 14) = v135;
          _os_log_impl(&dword_2286FF000, v115, v129, "[%s]: Item %s was returned by the RelevanceEngine but is now deleted", v130, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v131, -1, -1);
          MEMORY[0x22AABFD90](v130, -1, -1);

          v104 = v205;
        }

LABEL_39:
        v219(v104, v218);
        v69 = v215;
        v105 = v221;
LABEL_40:
        v7 = (v105 + 1);
      }

      while (v7 != v213);
    }

    v173 = [v210 sections];
    sub_2287C9B40();
    v69 = sub_2287CB580();

    if (v69 >> 62)
    {
      break;
    }

    v7 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_110;
    }

LABEL_93:
    v56 = 0;
    while (1)
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        v174 = MEMORY[0x22AABF120](v56, v69);
      }

      else
      {
        if (v56 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        v174 = *(v69 + 8 * v56 + 32);
      }

      v175 = v174;
      v46 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      sub_228786618(v174, v217);

      ++v56;
      if (v46 == v7)
      {
        goto LABEL_110;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  v7 = sub_2287CB920();
  if (v7)
  {
    goto LABEL_93;
  }

LABEL_110:

  v176 = v210;
  sub_228786DE8();
  v177 = [v176 sections];
  v178 = sub_2287CB580();

  if (v178 >> 62)
  {
    goto LABEL_122;
  }

  v179 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &unk_278607000; v179; i = &unk_278607000)
  {
    v181 = 0;
    while (1)
    {
      if ((v178 & 0xC000000000000001) != 0)
      {
        v182 = MEMORY[0x22AABF120](v181, v178);
      }

      else
      {
        if (v181 >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v182 = *(v178 + 8 * v181 + 32);
      }

      v183 = v182;
      v184 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        break;
      }

      [v182 i[122]];

      ++v181;
      if (v184 == v179)
      {
        goto LABEL_123;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    v179 = sub_2287CB920();
  }

LABEL_123:

  v185 = v200;
  sub_2287CA9E0();
  v186 = v210;
  v187 = sub_2287CAA40();
  v188 = sub_2287CB610();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v224[0] = v190;
    *v189 = 136315650;
    v191 = sub_2287CBE60();
    v193 = sub_2287031D8(v191, v192, v224);

    *(v189 + 4) = v193;
    *(v189 + 12) = 2082;
    v194 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v196 = sub_2287031D8(v194, v195, v224);

    *(v189 + 14) = v196;
    *(v189 + 22) = 2050;
    v197 = [v186 sections];
    v198 = [v197 count];

    *(v189 + 24) = v198;
    _os_log_impl(&dword_2286FF000, v187, v188, "[%s]: Picked feed of kind %{public}s with %{public}ld sections", v189, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v190, -1, -1);
    MEMORY[0x22AABFD90](v189, -1, -1);
  }

  else
  {
  }

  return (v219)(v185, v218);
}

uint64_t sub_228786618(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2287CAA50();
  v82 = *(v6 - 8);
  v7 = *(v82 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = [a1 managedObjectContext];
  if (!v13)
  {
    sub_2287CBB90();
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2287CA9E0();
  v14 = a1;
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  v17 = os_log_type_enabled(v15, v16);
  v18 = &unk_278607000;
  v80 = a2;
  v81 = v3;
  if (v17)
  {
    v19 = swift_slowAlloc();
    v79 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v83 = v21;
    *v20 = 136315650;
    v22 = sub_2287CBE60();
    v24 = v6;
    v25 = sub_2287031D8(v22, v23, &v83);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = [v14 identifier];
    v27 = sub_2287CB220();
    v29 = v28;

    v30 = v27;
    v6 = v24;
    v31 = v82;
    v32 = sub_2287031D8(v30, v29, &v83);

    *(v20 + 14) = v32;
    *(v20 + 22) = 2050;
    v33 = [v14 feedItems];
    v34 = [v33 count];

    *(v20 + 24) = v34;
    _os_log_impl(&dword_2286FF000, v15, v16, "[%s]: Before curation, section %{public}s has %{public}ld feedItems", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v21, -1, -1);
    v35 = v20;
    v10 = v79;
    v18 = &unk_278607000;
    MEMORY[0x22AABFD90](v35, -1, -1);

    v36 = v31;
  }

  else
  {

    v36 = v82;
  }

  v37 = *(v36 + 8);
  v37(v12, v6);
  v38 = [v14 v18[89]];
  v39 = sub_2287CB220();
  v41 = v40;

  v42 = MEMORY[0x22AABD640](v39, v41);
  if (v42 <= 1)
  {
    if (!v42)
    {
      v46 = sub_22878AFA8();
      if (v46)
      {
      }

      v47 = v46 == 0;
      v48 = [v14 feedItems];
      sub_2287CA800();
      v49 = sub_2287CB580();

      v50 = sub_228786F4C(v49, v47);

      sub_228784C48(v50, MEMORY[0x277D121F8]);
      goto LABEL_17;
    }
  }

  else if (v42 != 2)
  {
    if (v42 != 3)
    {
      v51 = [v14 feedItems];
      sub_2287CA800();
      sub_2287CB580();

      v83 = sub_22878A378(v52);
      sub_2287891A0(&v83);

      sub_228784C48(v83, MEMORY[0x277D121F8]);

      goto LABEL_18;
    }

    v43 = [v14 feedItems];
    sub_2287CA800();
    v44 = sub_2287CB580();

    v45 = sub_22878C46C(v44, v80);
    goto LABEL_16;
  }

  v53 = [v14 feedItems];
  sub_2287CA800();
  v54 = sub_2287CB580();

  v45 = sub_22878C248(v54);
LABEL_16:
  v55 = v45;

  sub_228784C48(v55, MEMORY[0x277D121F8]);
LABEL_17:

LABEL_18:
  v56 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v57 = sub_2287CB390();

  v58 = [v56 initWithArray_];

  [v14 setFeedItems_];
  sub_22878441C();
  sub_2287CA9E0();
  v59 = v14;
  v60 = sub_2287CAA40();
  v61 = sub_2287CB610();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v80 = v37;
    v64 = v18;
    v65 = v63;
    v83 = v63;
    *v62 = 136315650;
    v66 = sub_2287CBE60();
    v68 = sub_2287031D8(v66, v67, &v83);
    v81 = v6;
    v69 = v68;

    *(v62 + 4) = v69;
    *(v62 + 12) = 2082;
    v70 = [v59 v64 + 1656];
    v71 = sub_2287CB220();
    v72 = v10;
    v74 = v73;

    v75 = sub_2287031D8(v71, v74, &v83);

    *(v62 + 14) = v75;
    *(v62 + 22) = 2050;
    v76 = [v59 feedItems];
    v77 = [v76 count];

    *(v62 + 24) = v77;
    _os_log_impl(&dword_2286FF000, v60, v61, "[%s]: Curated section %{public}s has %{public}ld feedItems", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v65, -1, -1);
    MEMORY[0x22AABFD90](v62, -1, -1);

    return (v80)(v72, v81);
  }

  else
  {

    return (v37)(v10, v6);
  }
}

void sub_228786DE8()
{
  v1 = v0;
  v2 = [v0 sections];
  sub_2287C9B40();
  v3 = sub_2287CB570();
  v5 = v4;
  v7 = v6;

  v11 = sub_22878A92C(v3, v5, v7);
  sub_22878D840(&v11, &unk_283BC03B0);

  sub_228784C48(v11, MEMORY[0x277D11E58]);

  v8 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v9 = sub_2287CB390();

  v10 = [v8 initWithArray_];

  [v1 setSections_];
}

uint64_t sub_228786F4C(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = sub_2287CA040();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3370, MEMORY[0x277D12198], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v93 - v12;
  sub_228705B74(0, &qword_280DE3398, MEMORY[0x277D12080], v9);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v93 - v15);
  v17 = sub_2287CAA50();
  v108 = *(v17 - 8);
  v18 = *(v108 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v93 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = (&v93 - v23);
  v25 = (a1 >> 62);
  v98 = v5;
  if (a1 >> 62)
  {
    goto LABEL_95;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    return v27;
  }

  v103 = v4;

  v112[0] = sub_22878A378(v28);
  sub_2287891A0(v112);
  v114 = v112[0];
  v113 = v27;
  v29 = swift_allocObject();
  v109 = v29;
  *(v29 + 16) = MEMORY[0x277D84FA0];
  v99 = v29 + 16;
  if ((v2 & 1) == 0)
  {
    v105 = 8;
    v4 = v103;
LABEL_17:
    sub_2287CA9E0();
    swift_bridgeObjectRetain_n();
    v33 = sub_2287CAA40();
    v34 = sub_2287CB610();
    v35 = os_log_type_enabled(v33, v34);
    v110 = v16;
    if (v35)
    {
      v107 = v24;
      v36 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v112[0] = v104;
      *v36 = 136315650;
      v37 = sub_2287CBE60();
      v39 = sub_2287031D8(v37, v38, v112);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2050;
      *(v36 + 14) = v105;
      *(v36 + 22) = 2050;
      if (v25)
      {
        v25 = sub_2287CB920();
      }

      else
      {
        v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v110;

      *(v36 + 24) = v25;

      _os_log_impl(&dword_2286FF000, v33, v34, "[%s]: Will curate %{public}ld highlights from %{public}ld ranked highlights", v36, 0x20u);
      v24 = v104;
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x22AABFD90](v24, -1, -1);
      MEMORY[0x22AABFD90](v36, -1, -1);

      v42 = *(v108 + 8);
      v108 += 8;
      v104 = v42;
      (v42)(v107, v17);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v40 = *(v108 + 8);
      v108 += 8;
      v104 = v40;
      (v40)(v24, v17);
    }

    v27 = MEMORY[0x277D84F90];
    *&v41 = 136315650;
    v97 = v41;
    a1 = v106;
    v102 = v17;
    while (1)
    {
      v107 = (v27 >> 62);
      if (v27 >> 62)
      {
        if (sub_2287CB920() >= v105)
        {
LABEL_86:

          if (!v107)
          {
            goto LABEL_78;
          }

          goto LABEL_87;
        }

        v43 = sub_2287CB920();
        if (v43)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v43 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43 >= v105)
        {
          goto LABEL_86;
        }

        if (v43)
        {
LABEL_27:
          v2 = v43 - 1;
          if (__OFSUB__(v43, 1))
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          if ((v27 & 0xC000000000000001) == 0)
          {
            if ((v2 & 0x8000000000000000) == 0)
            {
              if (v2 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                a1 = *(v27 + 8 * v2 + 32);
                goto LABEL_32;
              }

LABEL_94:
              __break(1u);
LABEL_95:
              v26 = sub_2287CB920();
              goto LABEL_3;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          a1 = MEMORY[0x22AABF120](v2, v27);

LABEL_32:
          v44 = sub_2287CA500();
          v45 = v101;
          sub_2287CA700();
          v46 = *(v44 - 8);
          if ((*(v46 + 48))(v45, 1, v44) == 1)
          {
            sub_22878DA04(v45, &qword_280DE3370, MEMORY[0x277D12198]);
            v47 = 1;
          }

          else
          {
            sub_2287CA4F0();
            (*(v46 + 8))(v45, v44);
            v47 = 0;
          }

          v48 = sub_2287CA2E0();
          (*(*(v48 - 8) + 56))(v16, v47, 1, v48);
          v2 = v114;
          if (v114 >> 62)
          {
            v24 = sub_2287CB920();
            if (v24)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v24 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v24)
            {
LABEL_37:
              v49 = 0;
              v4 = (v2 & 0xC000000000000001);
              v17 = v2 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v4)
                {
                  v50 = MEMORY[0x22AABF120](v49, v2);
                }

                else
                {
                  if (v49 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_91;
                  }

                  v50 = *(v2 + 8 * v49 + 32);
                }

                v25 = v50;
                v16 = (v49 + 1);
                if (__OFADD__(v49, 1))
                {
                  break;
                }

                if (sub_22878B078(v50, v110, v109, a1, v111))
                {
                  v51 = v25;

                  v16 = v110;
                  sub_22878DA04(v110, &qword_280DE3398, MEMORY[0x277D12080]);
                  v17 = v102;
                  v4 = v103;
                  a1 = v106;
                  goto LABEL_50;
                }

                ++v49;
                if (v16 == v24)
                {
                  goto LABEL_71;
                }
              }

              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }
          }

LABEL_71:

          v78 = v100;
          sub_2287CA9E0();
          swift_bridgeObjectRetain_n();
          v79 = sub_2287CAA40();
          v80 = sub_2287CB610();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v112[0] = v82;
            *v81 = 136315394;
            v83 = sub_2287CBE60();
            v85 = sub_2287031D8(v83, v84, v112);

            *(v81 + 4) = v85;
            *(v81 + 12) = 2050;
            v4 = v103;
            if (v107)
            {
              v86 = sub_2287CB920();
            }

            else
            {
              v86 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v81 + 14) = v86;

            _os_log_impl(&dword_2286FF000, v79, v80, "[%s]: No more eligible highlights; curation is complete at %{public}ld elements", v81, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v82);
            MEMORY[0x22AABFD90](v82, -1, -1);
            MEMORY[0x22AABFD90](v81, -1, -1);

            (v104)(v100, v102);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            (v104)(v78, v102);
            v4 = v103;
          }

          sub_22878DA04(v110, &qword_280DE3398, MEMORY[0x277D12080]);
          if (!v107)
          {
LABEL_78:
            v87 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v87)
            {
              goto LABEL_79;
            }

LABEL_88:

            return v27;
          }

LABEL_87:
          v87 = sub_2287CB920();
          if (!v87)
          {
            goto LABEL_88;
          }

LABEL_79:
          if (v87 >= 1)
          {
            v88 = (v98 + 8);

            v89 = 0;
            do
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                v90 = MEMORY[0x22AABF120](v89, v27);
              }

              else
              {
                v90 = *(v27 + 8 * v89 + 32);
              }

              ++v89;
              v91 = v90;
              sub_2287CA020();
              sub_228781484();

              (*v88)(v8, v4);
            }

            while (v87 != v89);

            return v27;
          }

          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }
      }

      sub_228784A44();
      v51 = v52;
LABEL_50:
      sub_2287CA9E0();
      v53 = v51;
      v54 = sub_2287CAA40();
      v55 = sub_2287CB610();

      if (os_log_type_enabled(v54, v55))
      {
        v95 = v55;
        v56 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v112[0] = v94;
        *v56 = v97;
        v57 = sub_2287CBE60();
        v59 = sub_2287031D8(v57, v58, v112);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        v96 = v53;
        v60 = [v53 uniqueIdentifier];
        v25 = sub_2287CB220();
        v62 = v61;

        v63 = sub_2287031D8(v25, v62, v112);

        *(v56 + 14) = v63;
        *(v56 + 22) = 2080;
        if (v107)
        {
          v64 = sub_2287CB920();
        }

        else
        {
          v64 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v106;
        if (v64)
        {
          v65 = v64 - 1;
          v17 = v102;
          if (__OFSUB__(v64, 1))
          {
            goto LABEL_97;
          }

          if ((v27 & 0xC000000000000001) != 0)
          {

            v66 = MEMORY[0x22AABF120](v65, v27);
          }

          else
          {
            if ((v65 & 0x8000000000000000) != 0)
            {
              goto LABEL_98;
            }

            if (v65 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v66 = *(v27 + 8 * v65 + 32);
          }

          v67 = [v66 uniqueIdentifier];

          v68 = sub_2287CB220();
          v70 = v69;

          a1 = v106;
        }

        else
        {
          v70 = 0xE300000000000000;
          v68 = 7104878;
          v17 = v102;
        }

        v71 = sub_2287031D8(v68, v70, v112);

        *(v56 + 24) = v71;
        _os_log_impl(&dword_2286FF000, v54, v95, "[%s]: Adding highlight %s to curated list after %s", v56, 0x20u);
        v72 = v94;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v72, -1, -1);
        MEMORY[0x22AABFD90](v56, -1, -1);

        (v104)(a1, v17);
        v53 = v96;
      }

      else
      {

        (v104)(a1, v17);
      }

      swift_beginAccess();
      v73 = v53;
      MEMORY[0x22AABEA50]();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v77 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
        v4 = v103;
      }

      sub_2287CB420();
      v27 = v113;
      swift_endAccess();
      v74 = sub_2287CA750();

      v75 = v99;
      swift_beginAccess();
      v76 = v74;
      v24 = v75;
      sub_228787E14(v76);
      swift_endAccess();
    }
  }

  v4 = v103;
  if (v25)
  {
    v30 = sub_2287CB920();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v30 * 0.4;
  if (COERCE__INT64(fabs(v31)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_100;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_101:
    __break(1u);
  }

  else if (v31 < 9.22337204e18)
  {
    v32 = v31;
    if (v31 >= 8)
    {
      v32 = 8;
    }

    if (v32 <= 3)
    {
      v32 = 3;
    }

    v105 = v32;
    goto LABEL_17;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_228787D84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22878A2EC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_228787E14(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    sub_22873A2A8(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    sub_2287CB4C0();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_22870B3D4();
      return;
    }

    while (1)
    {
      sub_228724218(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2287CB950())
      {
        sub_228703004(0, &qword_280DE3638, 0x277CCD720);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_228788020(void **a1, uint64_t a2, uint64_t *a3)
{
  v91 = sub_2287CAA50();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v91);
  v10 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v87[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v87[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v87[-v17];
  v19 = *a1;
  v20 = sub_2287CA750();
  v21 = sub_228784920(v20, sub_2287BFFF0);

  if (!v21)
  {
    sub_2287CA9E0();
    v42 = v19;
    v43 = sub_2287CAA40();
    v44 = sub_2287CB5F0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v94[0] = v46;
      *v45 = 136446210;
      v47 = [v42 uniqueIdentifier];
      v48 = sub_2287CB220();
      v50 = v49;

      v51 = sub_2287031D8(v48, v50, v94);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_2286FF000, v43, v44, "Ignoring ranked app that has no object type %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AABFD90](v46, -1, -1);
      MEMORY[0x22AABFD90](v45, -1, -1);
    }

    (*(v6 + 8))(v18, v91);
    return 0;
  }

  v22 = [v21 hk:a2 metadataValueDisplayTypeInStore:?];
  if (!v22)
  {
    sub_2287CA9E0();
    v52 = v19;
    v53 = v21;
    v54 = sub_2287CAA40();
    v55 = sub_2287CB5F0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v94[0] = v57;
      *v56 = 136446466;
      v58 = [v52 uniqueIdentifier];
      v59 = sub_2287CB220();
      v61 = v60;

      v62 = sub_2287031D8(v59, v61, v94);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2082;
      v63 = [v53 identifier];
      v64 = sub_2287CB220();
      v66 = v65;

      v67 = sub_2287031D8(v64, v66, v94);

      *(v56 + 14) = v67;
      _os_log_impl(&dword_2286FF000, v54, v55, "Ignoring ranked app %{public}s that has an object type %{public}s with no display type", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v57, -1, -1);
      MEMORY[0x22AABFD90](v56, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v16, v91);
    return 0;
  }

  v23 = v22;
  v24 = [v22 categoryIdentifier];
  swift_beginAccess();
  if (sub_228784724(v24, *a3))
  {
    sub_2287CA9E0();
    v25 = v19;
    v26 = v23;
    v27 = sub_2287CAA40();
    v28 = sub_2287CB610();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v92[0] = v90;
      *v29 = 136315394;
      v30 = [v25 uniqueIdentifier];
      v31 = sub_2287CB220();
      v33 = v32;

      v34 = sub_2287031D8(v31, v33, v92);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      v35 = [v26 displayCategory];
      v36 = [v35 categoryName];

      v37 = sub_2287CB220();
      v39 = v38;

      v40 = sub_2287031D8(v37, v39, v92);

      *(v29 + 14) = v40;
      _os_log_impl(&dword_2286FF000, v27, v28, "Ignoring ranked app that has already been picked %s with category %{public}s", v29, 0x16u);
      v41 = v90;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v41, -1, -1);
      MEMORY[0x22AABFD90](v29, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v13, v91);
    return 0;
  }

  sub_2287CA9E0();
  v68 = v19;
  v69 = v23;
  v70 = sub_2287CAA40();
  v71 = sub_2287CB610();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v92[0] = v89;
    *v72 = 136446466;
    v73 = [v68 uniqueIdentifier];
    v74 = sub_2287CB220();
    v90 = v69;
    v75 = v74;
    v88 = v71;
    v77 = v76;

    v78 = sub_2287031D8(v75, v77, v92);

    *(v72 + 4) = v78;
    *(v72 + 12) = 2082;
    v79 = [v90 displayCategory];
    v80 = [v79 categoryName];

    v81 = sub_2287CB220();
    v83 = v82;

    v84 = sub_2287031D8(v81, v83, v92);

    *(v72 + 14) = v84;
    v69 = v90;
    _os_log_impl(&dword_2286FF000, v70, v88, "Adding app %{public}s with category %{public}s to curated list", v72, 0x16u);
    v85 = v89;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v85, -1, -1);
    MEMORY[0x22AABFD90](v72, -1, -1);
  }

  (*(v6 + 8))(v10, v91);
  swift_beginAccess();
  sub_228724DFC(&v93, v24);
  swift_endAccess();

  return 1;
}

uint64_t sub_22878883C()
{
  v1 = v0;
  v2 = sub_2287C9B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 managedObjectContext];
  if (v7)
  {
    v8 = v7;
    sub_2287CA710();
    v9 = sub_2287C9F60();
    (*(v3 + 8))(v6, v2);
    if (v9 == 4)
    {

      return 0;
    }

    else
    {
      sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
      sub_228705B74(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2287CCFF0;
      *(v11 + 56) = sub_2287CA640();
      *(v11 + 64) = sub_22878DBFC(&qword_280DE1188, MEMORY[0x277D121D0]);
      *(v11 + 32) = v1;
      v12 = v1;
      v13 = sub_2287C9F80();
      v15 = v14;
      *(v11 + 96) = MEMORY[0x277D837D0];
      *(v11 + 104) = sub_2287043F8();
      *(v11 + 72) = v13;
      *(v11 + 80) = v15;
      v16 = sub_2287CB550();
      sub_2287C9B40();
      v17 = sub_2287CA2F0();
      sub_2287C9F80();
      v18 = sub_2287CB210();

      [v17 setIdentifier_];

      [v17 setFeed_];
      return v17;
    }
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

BOOL sub_228788B38(void **a1, id *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [*a2 identifier];
  v6 = sub_2287CB220();
  v8 = v7;

  if (MEMORY[0x22AABD640](v6, v8) == 4)
  {
    return 1;
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  v11 = a3 + 32;
  while (1)
  {
    v12 = *(v11 + v10);
    v13 = sub_2287C9F80();
    v15 = v14;
    if (v13 == sub_2287C9F80() && v15 == v16)
    {
      break;
    }

    v18 = sub_2287CBD00();

    if (v18)
    {
      goto LABEL_13;
    }

    if (v9 == ++v10)
    {
      return 1;
    }
  }

LABEL_13:
  v20 = [v4 identifier];
  v21 = sub_2287CB220();
  v23 = v22;

  if (MEMORY[0x22AABD640](v21, v23) == 4)
  {
    return 0;
  }

  v24 = 0;
  while (1)
  {
    v25 = *(v11 + v24);
    v26 = sub_2287C9F80();
    v28 = v27;
    if (v26 == sub_2287C9F80() && v28 == v29)
    {
      break;
    }

    v31 = sub_2287CBD00();

    if (v31)
    {
      return v24 < v10;
    }

    if (v9 == ++v24)
    {
      return 0;
    }
  }

  return v24 < v10;
}

uint64_t static SummaryTabFeedPopulationManager.highlightsFeedStalenessTimeout.getter()
{
  v0 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3958, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - v3;
  sub_228705B74(0, &unk_280DE3960, MEMORY[0x277CC99E8], v0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  sub_228705BD8(0, &qword_280DE17C0, MEMORY[0x277D83B88], MEMORY[0x277D11E70]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v19 - v13;
  if (qword_280DE1430 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280DE1438);
  (*(v11 + 16))(v14, v15, v10);
  sub_2287C9B80();
  result = (*(v11 + 8))(v14, v10);
  if (__OFSUB__(0, v19[1]))
  {
    __break(1u);
  }

  else
  {
    sub_2287C9850();
    v17 = sub_2287C9870();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    v18 = sub_2287C98A0();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    return sub_2287C9600();
  }

  return result;
}

void sub_2287890A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2287CA800();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2287891A0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_228709550(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22878921C(v6);
  return sub_2287CBAA0();
}

void sub_22878921C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2287CBCB0();
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
        sub_2287CA800();
        v6 = sub_2287CB400();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_228789418(v8, v9, a1, v4);
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
    sub_228789320(0, v2, 1, a1);
  }
}

void sub_228789320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 sortOrder];
      v13 = [v11 sortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_228789418(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_22878A1B0(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_228789E40((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_22878A1B0(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_22878A124(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 sortOrder];
      v104 = [v14 sortOrder];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 sortOrder];
        v7 = [v18 sortOrder];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_228722F14(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_228722F14((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
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
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_228789E40((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22878A1B0(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_22878A124(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 sortOrder];
    v41 = [v39 sortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
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
}

uint64_t sub_228789A80(void **__src, void **a2, void **a3, uint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_228788B38(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_228788B38(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_228789E40(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
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
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 sortOrder];
          v35 = [v33 sortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 sortOrder];
          v20 = [v18 sortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_22878A124(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22878A1B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_22878A1C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_228705B74(0, &qword_280DE1820, sub_22878D8EC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_22878A2EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2287CB920();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2287CBA60();
}

uint64_t sub_22878A378(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2287CB920();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_228723B70(v3, 0);
  sub_22878A774((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22878A40C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2287CB920();
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
      result = sub_2287CB920();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22878DD68(0, &qword_27D850B70, &qword_280DE1960, 0x277D44488);
          sub_22878DDC0(&qword_27D850B78, &qword_27D850B70, &qword_280DE1960, 0x277D44488);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228799C8C(v13, i, a3);
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
        sub_228703004(0, &qword_280DE1960, 0x277D44488);
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

uint64_t sub_22878A5C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2287CB920();
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
      result = sub_2287CB920();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22878DD68(0, &qword_27D850E40, &qword_280DE35E0, 0x277D44418);
          sub_22878DDC0(&qword_27D850E48, &qword_27D850E40, &qword_280DE35E0, 0x277D44418);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228799C8C(v13, i, a3);
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
        sub_228703004(0, &qword_280DE35E0, 0x277D44418);
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

uint64_t sub_22878A774(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2287CB920();
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
      result = sub_2287CB920();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_228705B74(0, &qword_280DDFFE0, MEMORY[0x277D121F8], MEMORY[0x277D83940]);
          sub_22878DCF4(&qword_280DDFFD0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228799D0C(v13, i, a3);
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
        sub_2287CA800();
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

uint64_t sub_22878A92C(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3)
{
  v43 = a2;
  sub_22878D944();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 count];
  v11 = v10;
  if (v10)
  {
    if (v10 <= 0)
    {
      v12 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      v12[2] = v11;
      v12[3] = (2 * (v14 >> 3)) | 1;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12[3];

  result = sub_2287CB560();
  v17 = &v9[*(v6 + 44)];
  *v17 = v43;
  *(v17 + 1) = a3;
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = v12 + 4;
  v19 = v15 >> 1;
  if (v11)
  {
    v19 -= v11;
    sub_2287C9650();
    sub_22878DBFC(&qword_280DE34C0, MEMORY[0x277CC9178]);

    v20 = v43;
    while (1)
    {
      result = sub_2287CB830();
      v46 = v48;
      v47 = v49;
      if (!*(&v49 + 1))
      {
        goto LABEL_41;
      }

      sub_22873E2D8(&v46, v45);
      v20(&v44, v45);
      __swift_destroy_boxed_opaque_existential_0(v45);
      *v18++ = v44;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }
  }

  v20 = v43;
LABEL_16:
  v21 = sub_2287C9650();
  v22 = sub_22878DBFC(&qword_280DE34C0, MEMORY[0x277CC9178]);
  sub_2287CB830();
  v46 = v48;
  v47 = v49;
  if (*(&v49 + 1))
  {
    v42 = v9;
    while (1)
    {
      sub_22873E2D8(&v46, v45);
      v20(&v44, v45);
      result = __swift_destroy_boxed_opaque_existential_0(v45);
      v23 = v44;
      if (!v19)
      {
        v24 = v12[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v25 = v22;
        v26 = v21;
        v27 = a3;
        v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v30 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v30);
        v32 = v31 - 32;
        if (v31 < 32)
        {
          v32 = v31 - 25;
        }

        v33 = v32 >> 3;
        v30[2] = v29;
        v30[3] = (2 * (v32 >> 3)) | 1;
        v34 = (v30 + 4);
        v35 = v12[3] >> 1;
        if (v12[2])
        {
          v36 = v12 + 4;
          if (v30 != v12 || v34 >= v36 + 8 * v35)
          {
            memmove(v30 + 4, v36, 8 * v35);
          }

          v12[2] = 0;
        }

        v18 = (v34 + 8 * v35);
        v19 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v12 = v30;
        a3 = v27;
        v21 = v26;
        v22 = v25;
        v9 = v42;
        v20 = v43;
      }

      v37 = __OFSUB__(v19--, 1);
      if (v37)
      {
        break;
      }

      *v18++ = v23;
      sub_2287CB830();
      v46 = v48;
      v47 = v49;
      if (!*(&v49 + 1))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  result = sub_22878DB9C(v9, sub_22878D944);
  v38 = v12[3];
  if (v38 < 2)
  {
    return v12;
  }

  v39 = v38 >> 1;
  v37 = __OFSUB__(v39, v19);
  v40 = v39 - v19;
  if (!v37)
  {
    v12[2] = v40;
    return v12;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_22878AD68()
{
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v5 = v4;
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228705B74(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2287CCFF0;
    *(v6 + 56) = sub_2287CA640();
    *(v6 + 64) = sub_22878DBFC(&qword_280DE1188, MEMORY[0x277D121D0]);
    *(v6 + 32) = v0;
    *(v6 + 96) = MEMORY[0x277D837D0];
    *(v6 + 104) = sub_2287043F8();
    *(v6 + 72) = v3;
    *(v6 + 80) = v5;
    v7 = v0;

    v8 = sub_2287CB550();
    sub_2287C9B40();
    v9 = sub_2287CA2F0();
    v10 = sub_2287CB210();

    [v9 setIdentifier_];

    [v9 setFeed_];
    return v9;
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t sub_22878AFA8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2287CB210();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2287CB3A0();

  v4 = sub_228784298(v3);

  return v4;
}

uint64_t sub_22878B078(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v189 = a5;
  v182 = a3;
  v183 = a4;
  v187 = a2;
  sub_22878DA74();
  v179 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v181 = &v165[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v177 = &v165[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v180 = &v165[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v176 = &v165[-v17];
  MEMORY[0x28223BE20](v16);
  v186 = &v165[-v18];
  v19 = sub_2287CAA50();
  v190 = *(v19 - 8);
  v191 = v19;
  v20 = *(v190 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v178 = &v165[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v184 = &v165[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v188 = &v165[-v26];
  MEMORY[0x28223BE20](v25);
  v28 = &v165[-v27];
  sub_228705B74(0, &qword_280DE3370, MEMORY[0x277D12198], v9);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v165[-v31];
  v33 = sub_2287CA2E0();
  v34 = *(v33 - 8);
  v35 = v34[8];
  v36 = MEMORY[0x28223BE20](v33);
  v175 = &v165[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v185 = &v165[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v165[-v41];
  MEMORY[0x28223BE20](v40);
  v44 = &v165[-v43];
  v45 = sub_2287CA500();
  v46 = a1;
  sub_2287CA700();
  v47 = *(v45 - 8);
  if ((*(v47 + 48))(v32, 1, v45) != 1)
  {
    sub_2287CA4F0();
    (*(v47 + 8))(v32, v45);
    v63 = v34[4];
    v170 = v34 + 4;
    v169 = v63;
    v63(v44, v42, v33);
    sub_2287CA9E0();
    v64 = v34[2];
    v172 = v34 + 2;
    v171 = v64;
    (v64)(v185, v44, v33);
    sub_22878DB08(v187, v186);
    v65 = v46;
    v66 = sub_2287CAA40();
    v67 = sub_2287CB5E0();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v34;
    v178 = v44;
    v173 = v65;
    if (v68)
    {
      v166 = v67;
      v167 = v66;
      v168 = v28;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v193[0] = v71;
      *v70 = 136315906;
      v72 = sub_2287CBE60();
      v74 = sub_2287031D8(v72, v73, v193);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = [v65 uniqueIdentifier];
      v76 = sub_2287CB220();
      v78 = v77;

      v79 = sub_2287031D8(v76, v78, v193);

      *(v70 + 14) = v79;
      *(v70 + 22) = 2080;
      v80 = v185;
      v81 = sub_2287CA2D0();
      v83 = v82;
      v84 = v34[1];
      (v84)(v80, v33);
      v85 = sub_2287031D8(v81, v83, v193);

      *(v70 + 24) = v85;
      *(v70 + 32) = 2080;
      v86 = v186;
      v87 = v176;
      sub_22878DB08(v186, v176);
      if ((*(v69 + 48))(v87, 1, v33) == 1)
      {
        sub_22878DA04(v87, &qword_280DE3398, MEMORY[0x277D12080]);
        v88 = 0xE300000000000000;
        v89 = 7104878;
      }

      else
      {
        v89 = sub_2287CA2D0();
        v88 = v93;
        (v84)(v87, v33);
      }

      v90 = v182;
      v92 = v187;
      sub_22878DA04(v86, &qword_280DE3398, MEMORY[0x277D12080]);
      v94 = sub_2287031D8(v89, v88, v193);

      *(v70 + 34) = v94;
      v95 = v167;
      _os_log_impl(&dword_2286FF000, v167, v166, "[%s]: Comparing highlight %s DVK %s to previous of kind %s", v70, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v71, -1, -1);
      MEMORY[0x22AABFD90](v70, -1, -1);

      v186 = *(v190 + 8);
      (v186)(v168, v191);
      v91 = v188;
    }

    else
    {

      sub_22878DA04(v186, &qword_280DE3398, MEMORY[0x277D12080]);
      v84 = v34[1];
      (v84)(v185, v33);
      v186 = *(v190 + 8);
      (v186)(v28, v191);
      v90 = v182;
      v92 = v187;
      v91 = v188;
    }

    v96 = v180;
    v171();
    (*(v69 + 56))(v96, 0, 1, v33);
    v97 = *(v179 + 48);
    v98 = v181;
    sub_22878DB08(v96, v181);
    sub_22878DB08(v92, &v98[v97]);
    v187 = v69;
    v99 = *(v69 + 48);
    if (v99(v98, 1, v33) == 1)
    {
      sub_22878DA04(v96, &qword_280DE3398, MEMORY[0x277D12080]);
      v100 = v99(&v98[v97], 1, v33);
      v101 = v173;
      if (v100 == 1)
      {
        sub_22878DA04(v98, &qword_280DE3398, MEMORY[0x277D12080]);
        LODWORD(v98) = 0;
LABEL_18:
        v109 = sub_2287CA750();
        swift_beginAccess();
        v110 = *(v90 + 16);

        v112 = sub_228784538(v111, v109);

        sub_2287CA9E0();
        v113 = v101;

        v114 = sub_2287CAA40();
        v115 = sub_2287CB5E0();

        v116 = os_log_type_enabled(v114, v115);
        v174 = v33;
        v185 = v84;
        if (v116)
        {
          v117 = swift_slowAlloc();
          LODWORD(v182) = v98;
          v98 = v117;
          v181 = swift_slowAlloc();
          v192 = v181;
          *v98 = 136315906;
          v118 = sub_2287CBE60();
          LODWORD(v180) = v115;
          v120 = v90;
          v121 = sub_2287031D8(v118, v119, &v192);

          *(v98 + 4) = v121;
          *(v98 + 6) = 2080;
          v122 = [v113 uniqueIdentifier];
          v123 = sub_2287CB220();
          v125 = v124;

          v126 = sub_2287031D8(v123, v125, &v192);

          *(v98 + 14) = v126;
          *(v98 + 11) = 2080;
          sub_2287CA750();
          sub_228703004(0, &qword_280DE3638, 0x277CCD720);
          sub_22873A2A8(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
          v127 = sub_2287CB480();
          v129 = v128;

          v130 = sub_2287031D8(v127, v129, &v192);

          *(v98 + 3) = v130;
          *(v98 + 16) = 2080;
          swift_beginAccess();
          v131 = *(v120 + 16);

          v132 = sub_2287CB480();
          v134 = v133;

          v135 = sub_2287031D8(v132, v134, &v192);

          *(v98 + 34) = v135;
          _os_log_impl(&dword_2286FF000, v114, v180, "[%s]: Highlight %s has HKTypes %s compared to existing pool of %s", v98, 0x2Au);
          v136 = v181;
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v136, -1, -1);
          v137 = v98;
          LOBYTE(v98) = v182;
          MEMORY[0x22AABFD90](v137, -1, -1);

          v138 = v188;
        }

        else
        {

          v138 = v91;
        }

        (v186)(v138, v191);
        v139 = v184;
        if ((v112 & 0xC000000000000001) != 0)
        {
          v140 = sub_2287CB920();
        }

        else
        {
          v140 = *(v112 + 16);
        }

        v62 = v98 & (v140 != 0);
        sub_2287CA9E0();
        v141 = v113;
        v142 = v183;
        v143 = sub_2287CAA40();
        v144 = sub_2287CB610();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v192 = v146;
          *v145 = 136315906;
          v147 = sub_2287CBE60();
          v149 = sub_2287031D8(v147, v148, &v192);

          *(v145 + 4) = v149;
          *(v145 + 12) = 2080;
          v150 = [v141 uniqueIdentifier];
          v151 = sub_2287CB220();
          v153 = v152;

          v154 = sub_2287031D8(v151, v153, &v192);

          *(v145 + 14) = v154;
          *(v145 + 22) = 2080;
          v155 = [v142 uniqueIdentifier];
          v156 = sub_2287CB220();
          v158 = v157;

          v159 = sub_2287031D8(v156, v158, &v192);

          *(v145 + 24) = v159;
          *(v145 + 32) = 2080;
          if (v62)
          {
            v160 = 5457241;
          }

          else
          {
            v160 = 20302;
          }

          if (v62)
          {
            v161 = 0xE300000000000000;
          }

          else
          {
            v161 = 0xE200000000000000;
          }

          v162 = sub_2287031D8(v160, v161, &v192);

          *(v145 + 34) = v162;
          _os_log_impl(&dword_2286FF000, v143, v144, "[%s]: Highlight %s eligibility for placement after %s: %s", v145, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v146, -1, -1);
          MEMORY[0x22AABFD90](v145, -1, -1);

          v163 = v184;
        }

        else
        {

          v163 = v139;
        }

        (v186)(v163, v191);
        (v185)(v178, v174);
        return v62;
      }
    }

    else
    {
      v102 = v84;
      v103 = v177;
      sub_22878DB08(v98, v177);
      if (v99(&v98[v97], 1, v33) != 1)
      {
        v105 = v175;
        v169(v175, &v98[v97], v33);
        sub_22878DBFC(&unk_280DE33B0, MEMORY[0x277D12080]);
        v106 = sub_2287CB200();
        (v102)(v105, v33);
        v107 = MEMORY[0x277D12080];
        sub_22878DA04(v96, &qword_280DE3398, MEMORY[0x277D12080]);
        v108 = v103;
        v84 = v102;
        (v102)(v108, v33);
        sub_22878DA04(v98, &qword_280DE3398, v107);
        LODWORD(v98) = v106 ^ 1;
        v101 = v173;
        v91 = v188;
        goto LABEL_18;
      }

      sub_22878DA04(v96, &qword_280DE3398, MEMORY[0x277D12080]);
      v104 = v103;
      v84 = v102;
      (v102)(v104, v33);
      v101 = v173;
      v91 = v188;
    }

    sub_22878DB9C(v98, sub_22878DA74);
    LODWORD(v98) = 1;
    goto LABEL_18;
  }

  sub_22878DA04(v32, &qword_280DE3370, MEMORY[0x277D12198]);
  v48 = v178;
  sub_2287CA9E0();
  v49 = v46;
  v50 = sub_2287CAA40();
  v51 = sub_2287CB5F0();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v193[0] = v53;
    *v52 = 136315394;
    v54 = sub_2287CBE60();
    v56 = sub_2287031D8(v54, v55, v193);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = [v49 uniqueIdentifier];
    v58 = sub_2287CB220();
    v60 = v59;

    v61 = sub_2287031D8(v58, v60, v193);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_2286FF000, v50, v51, "[%s]: Highlight %s has no data visualization kind; leaving it alone", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v53, -1, -1);
    MEMORY[0x22AABFD90](v52, -1, -1);
  }

  (*(v190 + 8))(v48, v191);
  return 1;
}

unint64_t sub_22878C248(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    v15 = sub_2287CB920();
    if (!v15)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = v15;
    if (sub_2287CB920() >= 5)
    {
      goto LABEL_4;
    }

LABEL_34:

    return v2;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  if (v4 < 5)
  {
    goto LABEL_34;
  }

LABEL_4:
  if (v4 < 0)
  {
    v5 = 4;
    if (!v3)
    {
LABEL_9:
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    if (!v3)
    {
      goto LABEL_9;
    }
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_2287CB920() < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = sub_2287CB920();
LABEL_16:
  if (v6 < v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_2287CA800();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_2287CBA30();
      v7 = v8;
    }

    while (v5 != v8);
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!v3)
    {
LABEL_21:
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      v9 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = (2 * v5) | 1;
      goto LABEL_25;
    }
  }

  v4 = sub_2287CBBB0();
  v3 = v10;
  v2 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_24:
    sub_2287890A0(v4, v9, v3, v2);
    v2 = v12;
    swift_unknownObjectRelease();
    return v2;
  }

LABEL_25:
  v1 = v9;
  sub_2287CBD10();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);

  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_38;
  }

  if (v14 != (v2 >> 1) - v3)
  {
LABEL_39:
    swift_unknownObjectRelease();
    v9 = v1;
    goto LABEL_24;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22878C46C(uint64_t a1, void *a2)
{
  v4 = sub_2287CAA50();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D84FA0];

  v45 = sub_22878A378(v7);
  sub_2287891A0(&v45);
  v8 = v45;
  sub_22878DC44();
  inited = swift_initStackObject();
  *(inited + 16) = v8;
  v10 = v8 < 0 || (v8 & 0x4000000000000000) != 0;
  v11 = (v8 & 0xC000000000000001);
  swift_retain_n();
  v12 = a2;
  v42 = inited;

  v13 = 0;
  v14 = 0;
  v44 = MEMORY[0x277D84F90];
  v15 = (MEMORY[0x277D84F90] + 32);
  v16 = 5;
  while (1)
  {
    while (1)
    {
      if (v10)
      {
        if (v13 == sub_2287CB920())
        {
          goto LABEL_33;
        }
      }

      else if (v13 == *(v8 + 16))
      {
        goto LABEL_33;
      }

      if (v11)
      {
        v17 = MEMORY[0x22AABF120](v13, v8);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v13 >= *(v8 + 16))
        {
          goto LABEL_47;
        }

        v17 = *(v8 + 8 * v13 + 32);
      }

      v2 = v17;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_46;
      }

      v45 = v17;
      if (sub_228788020(&v45, v12, &v46))
      {
        break;
      }

      ++v13;
    }

    if (!v14)
    {
      break;
    }

LABEL_29:
    v31 = __OFSUB__(v14--, 1);
    if (v31)
    {
      goto LABEL_48;
    }

    *v15++ = v2;
    v13 = v18;
    if (!--v16)
    {
LABEL_33:

      v16 = v43;
      v32 = v44;
      v33 = *(v44 + 24);
      if (v33 < 2)
      {
        goto LABEL_36;
      }

      v34 = v33 >> 1;
      v31 = __OFSUB__(v34, v14);
      v35 = v34 - v14;
      if (!v31)
      {
        v32 = v44;
        *(v44 + 16) = v35;
LABEL_36:

        sub_2287CA9E0();

        v11 = sub_2287CAA40();
        LOBYTE(v2) = sub_2287CB610();
        if (os_log_type_enabled(v11, v2))
        {
          v13 = swift_slowAlloc();
          *v13 = 134218240;
          if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
          {
            v36 = sub_2287CB920();
          }

          else
          {
            v36 = *(v32 + 16);
          }

          *(v13 + 4) = v36;

          *(v13 + 12) = 2048;
          if (!v10)
          {
            v37 = *(v8 + 16);
            goto LABEL_42;
          }

LABEL_50:
          v37 = sub_2287CB920();
LABEL_42:

          *(v13 + 14) = v37;

          _os_log_impl(&dword_2286FF000, v11, v2, "Picked ranked apps with count %ld from ranked apps count %ld", v13, 0x16u);
          MEMORY[0x22AABFD90](v13, -1, -1);

          v32 = v44;
        }

        else
        {
        }

        (*(v40 + 8))(v16, v41);

        return v32;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  v19 = v44;
  v20 = *(v44 + 24);
  if (((v20 >> 1) + 0x4000000000000000) >= 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    v23 = _swift_stdlib_malloc_size(v13);
    v24 = v23 - 32;
    if (v23 < 32)
    {
      v24 = v23 - 25;
    }

    v25 = v24 >> 3;
    *(v13 + 16) = v22;
    *(v13 + 24) = (2 * (v24 >> 3)) | 1;
    v26 = v13 + 32;
    v27 = *(v19 + 16);
    v28 = v19;
    v29 = *(v19 + 24) >> 1;
    if (v27)
    {
      v30 = (v28 + 32);
      if (v13 != v28 || v26 >= v30 + 8 * v29)
      {
        v39 = v24 >> 3;
        memmove((v13 + 32), v30, 8 * v29);
        v25 = v39;
      }

      *(v44 + 16) = 0;
    }

    v15 = (v26 + 8 * v29);
    v14 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v29;

    v44 = v13;
    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22878C8EC(void **a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x277D84F90];
LABEL_141:
    v161 = *a1;
    if (!*a1)
    {
      goto LABEL_180;
    }

    swift_bridgeObjectRetain_n();
    v9 = v152;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_173:
      v8 = sub_22878A1B0(v8);
    }

    v164 = v8;
    v132 = *(v8 + 16);
    if (v132 < 2)
    {
LABEL_151:

      swift_bridgeObjectRelease_n();
      return;
    }

    while (1)
    {
      v133 = *a3;
      if (!*a3)
      {
        break;
      }

      v134 = v8;
      v8 = *(v8 + 16 * v132);
      v135 = v134;
      v136 = *&v134[16 * v132 + 24];
      v137 = (v133 + 8 * v8);
      v138 = (v133 + 8 * *&v134[16 * v132 + 16]);
      v139 = (v133 + 8 * v136);

      sub_228789A80(v137, v138, v139, v161, a5);
      if (v9)
      {
        goto LABEL_151;
      }

      if (v136 < v8)
      {
        goto LABEL_167;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_22878A1B0(v135);
      }

      if (v132 - 2 >= *(v135 + 2))
      {
        goto LABEL_168;
      }

      v140 = &v135[16 * v132];
      *v140 = v8;
      v140[1] = v136;
      v164 = v135;
      sub_22878A124(v132 - 1);
      v8 = v164;
      v132 = *(v164 + 16);
      if (v132 <= 1)
      {
        goto LABEL_151;
      }
    }
  }

  else
  {
    v161 = (a5 + 32);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_4:
    v9 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_45;
    }

    v10 = *(*a3 + 8 * v9);
    v150 = *a3;
    v162 = *(*a3 + 8 * v7);
    v11 = v162;
    v163 = v10;
    v12 = v10;
    v13 = v11;
    v154 = sub_228788B38(&v163, &v162, v5);
    if (v152)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    v142 = v8;

    v14 = v7 + 2;
    v156 = v7;
    v146 = v6;
    if (v7 + 2 >= v6)
    {
      goto LABEL_36;
    }

    do
    {
      v16 = *(v150 + 8 * v9);
      v9 = v14;
      __dst = *(v150 + 8 * v14);
      v17 = v16;
      v18 = [v17 identifier];
      v19 = sub_2287CB220();
      v21 = v20;

      if (MEMORY[0x22AABD640](v19, v21) == 4 || (v22 = *(a5 + 16)) == 0)
      {
LABEL_8:

        v7 = v156;
        v15 = v146;
        if (!v154)
        {
          v43 = v9;
          v5 = a5;
          v8 = v142;
          goto LABEL_46;
        }
      }

      else
      {
        v23 = 0;
        while (1)
        {
          v24 = v161[v23];
          v25 = sub_2287C9F80();
          v27 = v26;
          if (v25 == sub_2287C9F80() && v27 == v28)
          {
            break;
          }

          v30 = sub_2287CBD00();

          if (v30)
          {
            goto LABEL_21;
          }

          if (v22 == ++v23)
          {
            goto LABEL_8;
          }
        }

LABEL_21:
        v31 = [__dst identifier];
        v32 = sub_2287CB220();
        v34 = v33;

        if (MEMORY[0x22AABD640](v32, v34) == 4)
        {
LABEL_29:

          v7 = v156;
          v15 = v146;
          if (v154)
          {
            v5 = a5;
            v8 = v142;
            if (v9 < v156)
            {
              goto LABEL_174;
            }

LABEL_38:
            v43 = v9;
            if (v7 < v9)
            {
              v44 = 8 * v9 - 8;
              v45 = 8 * v7;
              v46 = v7;
              while (1)
              {
                if (v46 != --v43)
                {
                  v48 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_178;
                  }

                  v47 = *(v48 + v45);
                  *(v48 + v45) = *(v48 + v44);
                  *(v48 + v44) = v47;
                }

                ++v46;
                v44 -= 8;
                v45 += 8;
                if (v46 >= v43)
                {
                  goto LABEL_45;
                }
              }
            }

LABEL_46:
            v49 = a3[1];
            v147 = v43;
            if (v43 >= v49)
            {
              goto LABEL_86;
            }

            if (__OFSUB__(v43, v7))
            {
              goto LABEL_170;
            }

            if (v43 - v7 >= a4)
            {
              goto LABEL_86;
            }

            v50 = v7 + a4;
            if (__OFADD__(v7, a4))
            {
              goto LABEL_171;
            }

            if (v50 >= v49)
            {
              v50 = a3[1];
            }

            if (v50 < v7)
            {
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

            if (v43 == v50)
            {
              goto LABEL_86;
            }

            v157 = v7;
            v143 = v8;
            v51 = v43;
            v52 = *a3;
            v145 = v50;
            v155 = *a3;
            while (2)
            {
              v53 = *(v52 + 8 * v51);
              v148 = v51;
              while (2)
              {
                v54 = v51 - 1;
                v55 = *(v52 + 8 * (v51 - 1));
                __dsta = v53;
                v56 = v55;
                v57 = [v56 identifier];
                v58 = sub_2287CB220();
                v60 = v59;

                v61 = MEMORY[0x22AABD640](v58, v60);
                if (v61 == 4 || (v62 = *(a5 + 16)) == 0)
                {
LABEL_67:

                  v52 = v155;
                  goto LABEL_68;
                }

                v9 = v61;
                v63 = 0;
                while (1)
                {
                  v64 = v161[v63];
                  v65 = sub_2287C9F80();
                  v67 = v66;
                  if (v65 == sub_2287C9F80() && v67 == v68)
                  {
                    break;
                  }

                  v70 = sub_2287CBD00();

                  if (v70)
                  {
                    goto LABEL_72;
                  }

                  if (v62 == ++v63)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_72:
                v151 = v56;
                v71 = [__dsta identifier];
                v72 = sub_2287CB220();
                v74 = v73;

                if (MEMORY[0x22AABD640](v72, v74) != 4)
                {
                  v75 = 0;
                  while (1)
                  {
                    v76 = v161[v75];
                    v77 = sub_2287C9F80();
                    v79 = v78;
                    if (v77 == sub_2287C9F80() && v79 == v80)
                    {

                      goto LABEL_83;
                    }

                    v9 = sub_2287CBD00();

                    if (v9)
                    {
                      break;
                    }

                    if (v62 == ++v75)
                    {
                      goto LABEL_55;
                    }
                  }

LABEL_83:
                  v52 = v155;
                  if (v75 >= v63)
                  {
                    goto LABEL_56;
                  }

LABEL_68:
                  if (!v52)
                  {
                    goto LABEL_175;
                  }

                  v53 = *(v52 + 8 * v51);
                  *(v52 + 8 * v51) = *(v52 + 8 * v54);
                  *(v52 + 8 * v54) = v53;
                  --v51;
                  if (v54 == v157)
                  {
                    goto LABEL_56;
                  }

                  continue;
                }

                break;
              }

LABEL_55:

              v52 = v155;
LABEL_56:
              v51 = v148 + 1;
              if (v148 + 1 != v145)
              {
                continue;
              }

              break;
            }

            v147 = v145;
            v5 = a5;
            v8 = v143;
            v7 = v157;
LABEL_86:
            if (v147 < v7)
            {
              goto LABEL_169;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_228722F14(0, *(v8 + 16) + 1, 1, v8);
            }

            v83 = *(v8 + 16);
            v82 = *(v8 + 24);
            v9 = v83 + 1;
            if (v83 >= v82 >> 1)
            {
              v8 = sub_228722F14((v82 > 1), v83 + 1, 1, v8);
            }

            *(v8 + 16) = v9;
            v84 = v8 + 16 * v83;
            *(v84 + 32) = v7;
            *(v84 + 40) = v147;
            __dstb = *a1;
            if (!*a1)
            {
              goto LABEL_179;
            }

            if (v83)
            {
              while (2)
              {
                v85 = v9 - 1;
                if (v9 >= 4)
                {
                  v90 = v8 + 32 + 16 * v9;
                  v91 = *(v90 - 64);
                  v92 = *(v90 - 56);
                  v96 = __OFSUB__(v92, v91);
                  v93 = v92 - v91;
                  if (v96)
                  {
                    goto LABEL_156;
                  }

                  v95 = *(v90 - 48);
                  v94 = *(v90 - 40);
                  v96 = __OFSUB__(v94, v95);
                  v88 = v94 - v95;
                  v89 = v96;
                  if (v96)
                  {
                    goto LABEL_157;
                  }

                  v97 = (v8 + 16 * v9);
                  v99 = *v97;
                  v98 = v97[1];
                  v96 = __OFSUB__(v98, v99);
                  v100 = v98 - v99;
                  if (v96)
                  {
                    goto LABEL_159;
                  }

                  v96 = __OFADD__(v88, v100);
                  v101 = v88 + v100;
                  if (v96)
                  {
                    goto LABEL_162;
                  }

                  if (v101 >= v93)
                  {
                    v119 = (v8 + 32 + 16 * v85);
                    v121 = *v119;
                    v120 = v119[1];
                    v96 = __OFSUB__(v120, v121);
                    v122 = v120 - v121;
                    if (v96)
                    {
                      goto LABEL_166;
                    }

                    if (v88 < v122)
                    {
                      v85 = v9 - 2;
                    }
                  }

                  else
                  {
LABEL_106:
                    if (v89)
                    {
                      goto LABEL_158;
                    }

                    v102 = (v8 + 16 * v9);
                    v104 = *v102;
                    v103 = v102[1];
                    v105 = __OFSUB__(v103, v104);
                    v106 = v103 - v104;
                    v107 = v105;
                    if (v105)
                    {
                      goto LABEL_161;
                    }

                    v108 = (v8 + 32 + 16 * v85);
                    v110 = *v108;
                    v109 = v108[1];
                    v96 = __OFSUB__(v109, v110);
                    v111 = v109 - v110;
                    if (v96)
                    {
                      goto LABEL_164;
                    }

                    if (__OFADD__(v106, v111))
                    {
                      goto LABEL_165;
                    }

                    if (v106 + v111 < v88)
                    {
                      goto LABEL_120;
                    }

                    if (v88 < v111)
                    {
                      v85 = v9 - 2;
                    }
                  }
                }

                else
                {
                  if (v9 == 3)
                  {
                    v86 = *(v8 + 32);
                    v87 = *(v8 + 40);
                    v96 = __OFSUB__(v87, v86);
                    v88 = v87 - v86;
                    v89 = v96;
                    goto LABEL_106;
                  }

                  v112 = (v8 + 16 * v9);
                  v114 = *v112;
                  v113 = v112[1];
                  v96 = __OFSUB__(v113, v114);
                  v106 = v113 - v114;
                  v107 = v96;
LABEL_120:
                  if (v107)
                  {
                    goto LABEL_160;
                  }

                  v115 = v8 + 16 * v85;
                  v117 = *(v115 + 32);
                  v116 = *(v115 + 40);
                  v96 = __OFSUB__(v116, v117);
                  v118 = v116 - v117;
                  if (v96)
                  {
                    goto LABEL_163;
                  }

                  if (v118 < v106)
                  {
                    break;
                  }
                }

                v123 = v85 - 1;
                if (v85 - 1 >= v9)
                {
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
LABEL_165:
                  __break(1u);
LABEL_166:
                  __break(1u);
LABEL_167:
                  __break(1u);
LABEL_168:
                  __break(1u);
LABEL_169:
                  __break(1u);
LABEL_170:
                  __break(1u);
LABEL_171:
                  __break(1u);
                  goto LABEL_172;
                }

                v124 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v125 = v8;
                v126 = v8 + 32;
                v8 = *(v8 + 32 + 16 * v123);
                v127 = *(v126 + 16 * v85 + 8);
                v128 = (v124 + 8 * v8);
                v129 = (v124 + 8 * *(v126 + 16 * v85));
                v130 = (v124 + 8 * v127);

                sub_228789A80(v128, v129, v130, __dstb, v5);
                v9 = v152;
                if (v152)
                {
                  swift_bridgeObjectRelease_n();

                  return;
                }

                if (v127 < v8)
                {
                  goto LABEL_154;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v125 = sub_22878A1B0(v125);
                }

                if (v123 >= *(v125 + 2))
                {
                  goto LABEL_155;
                }

                v152 = 0;
                v131 = &v125[16 * v123];
                *(v131 + 4) = v8;
                *(v131 + 5) = v127;
                v164 = v125;
                sub_22878A124(v85);
                v8 = v164;
                v9 = *(v164 + 16);
                if (v9 <= 1)
                {
                  break;
                }

                continue;
              }
            }

            v7 = v147;
            v6 = a3[1];
            if (v147 >= v6)
            {
              goto LABEL_141;
            }

            goto LABEL_4;
          }
        }

        else
        {
          v35 = 0;
          while (1)
          {
            v36 = v161[v35];
            v37 = sub_2287C9F80();
            v39 = v38;
            if (v37 == sub_2287C9F80() && v39 == v40)
            {

              goto LABEL_33;
            }

            v42 = sub_2287CBD00();

            if (v42)
            {
              break;
            }

            if (v22 == ++v35)
            {
              goto LABEL_29;
            }
          }

LABEL_33:
          v7 = v156;
          v15 = v146;
          if (((v154 ^ (v35 >= v23)) & 1) == 0)
          {
            v14 = v9;
            goto LABEL_36;
          }
        }
      }

      v14 = v9 + 1;
    }

    while (v9 + 1 != v15);
    v14 = v15;
LABEL_36:
    v9 = v14;
    v5 = a5;
    v8 = v142;
    if (!v154)
    {
LABEL_45:
      v43 = v9;
      goto LABEL_46;
    }

    if (v14 >= v7)
    {
      goto LABEL_38;
    }

LABEL_174:
    __break(1u);
LABEL_175:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_176:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }

  __break(1u);
LABEL_178:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_180:
  swift_bridgeObjectRelease_n();
  __break(1u);
}

void sub_22878D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a5;
    v6 = a3;
    v7 = *a4;
    v44 = a5 + 32;
    v41 = *a4;
LABEL_6:
    v8 = *(v7 + 8 * v6);
    v38 = v6;
    while (1)
    {
      v9 = v6 - 1;
      v10 = *(v7 + 8 * (v6 - 1));
      v43 = v8;
      v42 = v10;
      v11 = [v42 identifier];
      v12 = sub_2287CB220();
      v14 = v13;

      if (MEMORY[0x22AABD640](v12, v14) == 4 || (v15 = *(v5 + 16)) == 0)
      {
LABEL_16:

        v7 = v41;
      }

      else
      {
        v16 = 0;
        while (1)
        {
          v17 = *(v44 + v16);
          v18 = sub_2287C9F80();
          v20 = v19;
          if (v18 == sub_2287C9F80() && v20 == v21)
          {
            break;
          }

          v23 = sub_2287CBD00();

          if (v23)
          {
            goto LABEL_21;
          }

          if (v15 == ++v16)
          {
            goto LABEL_16;
          }
        }

LABEL_21:
        v24 = [v43 identifier];
        v25 = sub_2287CB220();
        v27 = v26;

        if (MEMORY[0x22AABD640](v25, v27) == 4)
        {
LABEL_4:

          v5 = a5;
          v7 = v41;
LABEL_5:
          v6 = v38 + 1;
          if (v38 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v28 = 0;
        while (1)
        {
          v29 = *(v44 + v28);
          v30 = sub_2287C9F80();
          v32 = v31;
          if (v30 == sub_2287C9F80() && v32 == v33)
          {

            goto LABEL_32;
          }

          v35 = sub_2287CBD00();

          if (v35)
          {
            break;
          }

          if (v15 == ++v28)
          {
            goto LABEL_4;
          }
        }

LABEL_32:
        v7 = v41;
        v36 = v28 >= v16;
        v5 = a5;
        if (v36)
        {
          goto LABEL_5;
        }
      }

      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 8 * v6);
      *(v7 + 8 * v6) = *(v7 + 8 * v9);
      *(v7 + 8 * v9) = v8;
      --v6;
      if (v9 == a1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22878D6E4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2287CBCB0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2287C9B40();
        v8 = sub_2287CB400();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_22878C8EC(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22878D41C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22878D840(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_228709550(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_22878D6E4(v8, a2);

  sub_2287CBAA0();
  return swift_bridgeObjectRelease_n();
}

void sub_22878D8EC()
{
  if (!qword_280DE19C0)
  {
    v0 = sub_2287CB540();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE19C0);
    }
  }
}

void sub_22878D944()
{
  if (!qword_280DDFE68)
  {
    sub_228703004(255, &qword_280DE1998, 0x277CBEB70);
    sub_2287C9B40();
    sub_22873A2A8(&qword_280DE19A0, &qword_280DE1998, 0x277CBEB70);
    v0 = sub_2287CBB20();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE68);
    }
  }
}

uint64_t sub_22878DA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228705B74(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22878DA74()
{
  if (!qword_280DE3390)
  {
    sub_228705B74(255, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE3390);
    }
  }
}

uint64_t sub_22878DB08(uint64_t a1, uint64_t a2)
{
  sub_228705B74(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22878DB9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22878DBFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22878DC44()
{
  if (!qword_280DDFE70)
  {
    sub_228705B74(255, &qword_280DDFFE0, MEMORY[0x277D121F8], MEMORY[0x277D83940]);
    sub_22878DCF4(&qword_280DDFFD8);
    v0 = sub_2287CBA70();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE70);
    }
  }
}

uint64_t sub_22878DCF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_228705B74(255, &qword_280DDFFE0, MEMORY[0x277D121F8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22878DD68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_228703004(255, a3, a4);
    v5 = sub_2287CB450();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22878DDC0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_22878DD68(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v11 = a5 + v10[9];
  sub_2287C9800();
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  sub_228706AD4(a2, a5 + v10[7]);
  v12 = v10[8];
  v13 = sub_2287C9ED0();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a3, v13);
}

uint64_t GeneratorPipelineManagerWrapper.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_2287C9ED0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeneratorPipelineManagerWrapper.uuid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2287C9810();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeneratorPipelineProviderWrapper.init(wrapped:pluginInfo:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for GeneratorPipelineProviderWrapper() + 28);

  return sub_228706AD4(a2, v6);
}

unint64_t sub_22878E0F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22878E900();
    if (v4 <= 0x3F)
    {
      result = sub_2287C9ED0();
      if (v5 <= 0x3F)
      {
        result = sub_2287C9810();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22878E1B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v35 = sub_2287C9ED0();
  v8 = *(v35 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v7;
  }

  v11 = sub_2287C9810();
  v12 = *(v11 - 8);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v19 = ((v15 + v16 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v14)) & ~v16) + *(*(v11 - 8) + 64);
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_13;
  }

  v23 = ((a2 - v18 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

LABEL_21:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v25 = v19;
        }

        else
        {
          v25 = 4;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v26 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v26 = *a1;
          }
        }

        else if (v25 == 1)
        {
          v26 = *a1;
        }

        else
        {
          v26 = *a1;
        }
      }

      else
      {
        v26 = 0;
      }

      return v18 + (v26 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v7 == v18)
  {
    v27 = *(v6 + 48);
    v28 = a1;
    v29 = v7;
    v30 = v5;
LABEL_36:

    return v27(v28, v29, v30);
  }

  v31 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v17 & 0x80000000) != 0)
  {
    v28 = (v31 + v14 + 40) & ~v14;
    if (v9 == v18)
    {
      v27 = *(v8 + 48);
      v29 = v9;
      v30 = v35;
      goto LABEL_36;
    }

    v33 = *(v12 + 48);
    v34 = (v28 + v15 + v16) & ~v16;

    return v33(v34);
  }

  else
  {
    v32 = *(v31 + 24);
    if (v32 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }
}

void sub_22878E50C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v7 = *(v38 - 8);
  v37 = v7;
  v8 = *(v7 + 84);
  v36 = sub_2287C9ED0();
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_2287C9810();
  v13 = *(v12 - 8);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((v16 + v17 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v15)) & ~v17) + *(*(v12 - 8) + 64);
  if (a3 <= v19)
  {
    v22 = 0;
    v21 = a1;
  }

  else
  {
    v21 = a1;
    if (v20 <= 3)
    {
      v25 = ((a3 - v19 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v19 < a2)
  {
    v23 = ~v19 + a2;
    if (v20 < 4)
    {
      v24 = (v23 >> (8 * v20)) + 1;
      if (v20)
      {
        v27 = v23 & ~(-1 << (8 * v20));
        bzero(v21, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v21 = v27;
            if (v22 > 1)
            {
LABEL_55:
              if (v22 == 2)
              {
                *&v21[v20] = v24;
              }

              else
              {
                *&v21[v20] = v24;
              }

              return;
            }
          }

          else
          {
            *v21 = v23;
            if (v22 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *v21 = v27;
        v21[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(v21, v20);
      *v21 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v22)
    {
      v21[v20] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&v21[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v21[v20] = 0;
  }

  else if (v22)
  {
    v21[v20] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 == v19)
  {
    v28 = v38;
    v29 = *(v37 + 56);
    v30 = v21;
    v31 = a2;
    v32 = v8;
LABEL_39:

    v29(v30, v31, v32, v28);
    return;
  }

  v33 = &v21[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v33 + 8) = 0u;
      *(v33 + 24) = 0u;
      *v33 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v33 + 24) = (a2 - 1);
    }

    return;
  }

  v30 = (v33 + v15 + 40) & ~v15;
  if (v10 == v19)
  {
    v29 = *(v9 + 56);
    v31 = a2;
    v32 = v10;
    v28 = v36;
    goto LABEL_39;
  }

  v34 = *(v13 + 56);
  v35 = (v30 + v16 + v17) & ~v17;

  v34(v35, a2);
}

unint64_t sub_22878E900()
{
  result = qword_280DE3438;
  if (!qword_280DE3438)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3438);
  }

  return result;
}

unint64_t sub_22878E96C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22878E900();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22878E9F4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_22878EB30(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

id sub_22878ECFC()
{
  sub_22878FC04();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2287CA280();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_2287CA0A0();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22878FD4C(v3, sub_22878FC04);
    return MEMORY[0x277D84F90];
  }

  (*(v5 + 32))(v11, v3, v4);
  sub_22878FE84(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CCC50;
  v13 = *(v5 + 16);
  v13(v9, v11, v4);
  v14 = type metadata accessor for DateRangeRelevanceProvider();
  v15 = objc_allocWithZone(v14);
  v13(&v15[OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval], v9, v4);
  v19.receiver = v15;
  v19.super_class = v14;
  result = objc_msgSendSuper2(&v19, sel_init);
  if (result)
  {
    v17 = result;
    v18 = *(v5 + 8);
    v18(v9, v4);
    *(v12 + 32) = v17;
    v18(v11, v4);
    return v12;
  }

  __break(1u);
  return result;
}

id sub_22878F134(uint64_t a1)
{
  v3 = sub_2287CA280();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22878FBA0();
  v46 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22878FC04();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = v4[2];
  v44 = v1;
  v20(&v41 - v18, &v1[OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval], v3);
  v47 = v4;
  v21 = v4[7];
  v21(v19, 0, 1, v3);
  v43 = a1;
  sub_22878FC5C(a1, v50);
  if (v51)
  {
    type metadata accessor for DateRangeRelevanceProvider();
    if (swift_dynamicCast())
    {
      v22 = v48;
      v20(v17, &v48[OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval], v3);

      v23 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_228710894(v50);
  }

  v23 = 1;
LABEL_6:
  v21(v17, v23, 1, v3);
  v24 = *(v46 + 48);
  sub_22878FCE8(v19, v10);
  sub_22878FCE8(v17, &v10[v24]);
  v25 = v47;
  v26 = v47[6];
  if (v26(v10, 1, v3) != 1)
  {
    v27 = v45;
    sub_22878FCE8(v10, v45);
    if (v26(&v10[v24], 1, v3) != 1)
    {
      v29 = v42;
      (v25[4])(v42, &v10[v24], v3);
      sub_22878FDAC();
      v30 = sub_2287CB200();
      v31 = v25[1];
      v31(v29, v3);
      sub_22878FD4C(v17, sub_22878FC04);
      sub_22878FD4C(v19, sub_22878FC04);
      v31(v27, v3);
      sub_22878FD4C(v10, sub_22878FC04);
      if (v30)
      {
        goto LABEL_14;
      }

      return 0;
    }

    sub_22878FD4C(v17, sub_22878FC04);
    sub_22878FD4C(v19, sub_22878FC04);
    (v25[1])(v27, v3);
LABEL_11:
    sub_22878FD4C(v10, sub_22878FBA0);
    return 0;
  }

  sub_22878FD4C(v17, sub_22878FC04);
  sub_22878FD4C(v19, sub_22878FC04);
  if (v26(&v10[v24], 1, v3) != 1)
  {
    goto LABEL_11;
  }

  sub_22878FD4C(v10, sub_22878FC04);
LABEL_14:
  sub_22878FC5C(v43, v50);
  v32 = v51;
  if (v51)
  {
    v33 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v37 = &v41 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    v38 = sub_2287CBCF0();
    (*(v34 + 8))(v37, v32);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v38 = 0;
  }

  v39 = type metadata accessor for DateRangeRelevanceProvider();
  v49.receiver = v44;
  v49.super_class = v39;
  v40 = objc_msgSendSuper2(&v49, sel_isEqual_, v38);
  swift_unknownObjectRelease();
  return v40;
}

uint64_t sub_22878F828()
{
  v1 = sub_2287CA280();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](60, 0xE100000000000000);
  ObjectType = swift_getObjectType();
  sub_22878FB58();
  v6 = sub_2287CB250();
  MEMORY[0x22AABE980](v6);

  MEMORY[0x22AABE980](8250, 0xE200000000000000);
  ObjectType = v0;
  sub_2287CBB30();
  MEMORY[0x22AABE980](0xD000000000000016, 0x80000002287D2AD0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval, v1);
  v7 = sub_2287CB250();
  MEMORY[0x22AABE980](v7);

  MEMORY[0x22AABE980](62, 0xE100000000000000);
  return v11;
}

id sub_22878F9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateRangeRelevanceProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DateRangeRelevanceProvider()
{
  result = qword_280DE3768;
  if (!qword_280DE3768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22878FAC8()
{
  result = sub_2287CA280();
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

unint64_t sub_22878FB58()
{
  result = qword_280DE26D8[0];
  if (!qword_280DE26D8[0])
  {
    type metadata accessor for DateRangeRelevanceProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_280DE26D8);
  }

  return result;
}

void sub_22878FBA0()
{
  if (!qword_280DE17A8)
  {
    sub_22878FC04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE17A8);
    }
  }
}

void sub_22878FC04()
{
  if (!qword_280DE33C8)
  {
    sub_2287CA280();
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE33C8);
    }
  }
}

uint64_t sub_22878FC5C(uint64_t a1, uint64_t a2)
{
  sub_22878FE84(0, &qword_280DE3988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22878FCE8(uint64_t a1, uint64_t a2)
{
  sub_22878FC04();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22878FD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22878FDAC()
{
  result = qword_280DE17B0;
  if (!qword_280DE17B0)
  {
    sub_2287CA280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE17B0);
  }

  return result;
}

void sub_22878FE04()
{
  sub_2287CA0B0();
  sub_2287CA120();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:2];

  qword_280DE63C0 = v1;
}

void sub_22878FE84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22878FED4()
{
  if (qword_280DE37F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63C0;
  v1 = sub_228795DF8(5);

  qword_280DE63C8 = v1;
}

uint64_t DispatchQueueOrchestrationScheduler.__allocating_init(environment:)(char a1)
{
  v2 = sub_2287CACC0();
  type metadata accessor for DispatchQueueOrchestrationScheduler();
  v3 = swift_allocObject();
  DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(a1 & 1, v2, 3);
  return v3;
}

uint64_t DispatchQueueOrchestrationScheduler.__allocating_init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(a1 & 1, a2, a3);
  return v6;
}

void *DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v61 = sub_2287CB090();
  v70 = *(v61 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB6B0();
  v12 = *(v11 - 8);
  v72 = v11;
  v73 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287CB670();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287CB0E0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  *(v4 + 16) = a1 & 1;
  v4[3] = a2;
  v4[4] = a3;
  v67 = v4;
  v68 = v8;
  v74 = sub_2287CBE60();
  v75 = v21;
  MEMORY[0x22AABE980](0x6F6F6C6B726F775FLL, 0xE900000000000070);
  v22 = sub_2287CB280();

  v23 = MEMORY[0x22AABF6B0](v22 + 32);

  v4[5] = v23;
  v66 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v74 = 0;
  v75 = 0xE000000000000000;
  v24 = v23;
  sub_2287CBA20();
  v25 = sub_2287CBE60();
  v27 = v26;

  v74 = v25;
  v75 = v27;
  MEMORY[0x22AABE980](0xD00000000000001CLL, 0x80000002287D2AF0);
  v56[3] = v75;
  v57 = v74;
  sub_2287CB0B0();
  v74 = MEMORY[0x277D84F90];
  v65 = sub_228791B14(&qword_280DE39D8, MEMORY[0x277D85230]);
  sub_228791C04(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  v29 = v28;
  v30 = sub_22871EFD0();
  v64 = v24;
  v31 = v24;
  v62 = v29;
  v63 = v15;
  sub_2287CB880();
  v71 = *MEMORY[0x277D85260];
  v32 = v72;
  v33 = *(v73 + 104);
  v73 += 104;
  v69 = v33;
  v34 = v59;
  v33(v59);
  v58 = v31;
  v67[9] = sub_2287CB6D0();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_2287CBA20();
  v35 = sub_2287CBE60();
  v37 = v36;

  v74 = v35;
  v75 = v37;
  MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D2B10);
  v38 = *MEMORY[0x277D851B8];
  v39 = *(v70 + 104);
  v70 += 104;
  v57 = v39;
  v39(v60, v38, v61);
  sub_2287CB0D0();
  v74 = MEMORY[0x277D84F90];
  sub_2287CB880();
  v69(v34, v71, v32);
  v67[8] = sub_2287CB6D0();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_2287CBA20();
  v40 = sub_2287CBE60();
  v42 = v41;

  v74 = v40;
  v75 = v42;
  MEMORY[0x22AABE980](0xD00000000000001ALL, 0x80000002287D2B30);
  sub_2287CB0C0();
  v74 = MEMORY[0x277D84F90];
  v56[1] = v18;
  v56[2] = v30;
  sub_2287CB880();
  v43 = v59;
  v69(v59, v71, v72);
  v44 = v43;
  v45 = sub_2287CB6D0();
  v46 = v67;
  v67[7] = v45;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_2287CBA20();
  v47 = sub_2287CBE60();
  v49 = v48;

  v74 = v47;
  v75 = v49;
  MEMORY[0x22AABE980](0xD000000000000017, 0x80000002287D2B50);
  v57(v60, *MEMORY[0x277D851D0], v61);
  sub_2287CB0D0();
  v74 = MEMORY[0x277D84F90];
  sub_2287CB880();
  v50 = v69;
  v69(v44, v71, v72);
  v46[6] = sub_2287CB6D0();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_2287CBA20();
  v51 = sub_2287CBE60();
  v53 = v52;

  v74 = v51;
  v75 = v53;
  MEMORY[0x22AABE980](0xD00000000000001FLL, 0x80000002287D2B70);
  sub_2287CB0C0();
  v74 = MEMORY[0x277D84F90];
  sub_2287CB880();
  v50(v44, v71, v72);
  v54 = sub_2287CB6D0();

  result = v46;
  v46[10] = v54;
  return result;
}

uint64_t sub_228790874(uint64_t a1)
{
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228790900(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = a1;
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v11 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78);
  v23 = a2;
  v24 = v10;
  v25 = a3;
  v26 = v11;
  v12 = sub_2287CAC60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = *(v3 + 64);
  v23 = v17;
  v18 = sub_2287CB680();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = v17;
  sub_2287CAFF0();
  sub_228790874(v9);

  swift_getWitnessTable();
  v20 = sub_2287CAF40();
  (*(v13 + 8))(v16, v12);
  return v20;
}

uint64_t sub_228790B60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24[1] = a1;
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v13 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78);
  v25 = a3;
  v26 = v12;
  v27 = a4;
  v28 = v13;
  v14 = sub_2287CAA90();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v19 = *(v4 + 16);
  v20 = sub_228790DCC(a2);
  v25 = v20;
  v21 = sub_2287CB680();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_2287CB030();
  sub_228790874(v11);
  swift_getWitnessTable();
  v22 = sub_2287CAF40();

  (*(v15 + 8))(v18, v14);
  return v22;
}

id sub_228790DCC(uint64_t a1)
{
  sub_2287919EC();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287C9DF0();
  v9 = *(v8 - 8);
  v60 = v8;
  v61 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287C9B20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  if (sub_2287CA420())
  {
    v56 = v4;
    v57 = a1;
    v58 = v1;
    v59 = v7;
    sub_228791C04(0, &qword_280DE3858, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
    v21 = *(v14 + 72);
    v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2287CCFF0;
    v24 = *(v14 + 104);
    v24(v23 + v22, *MEMORY[0x277D11DC0], v13);
    v24(v23 + v22 + v21, *MEMORY[0x277D11DD8], v13);
    v25 = sub_22872BCEC(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v62 = v25;
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v27 = result;
      v28 = [result isiPad];

      v29 = v59;
      if (v28)
      {
        v24(v18, *MEMORY[0x277D11E00], v13);
        sub_2287244B0(v20, v18);
        (*(v14 + 8))(v20, v13);
      }

      v30 = sub_2287C9E50();
      sub_2287C9E00();
      v31 = sub_2287C9E20();
      sub_2287C9E60();
      v32 = *(v56 + 48);
      v33 = v12;
      v34 = v60;
      (*(v61 + 32))(&v29[v32], v33, v60);

      v35 = v30;
      v36 = sub_2287C9CA0();
      v37 = sub_2287C9C80();

      if (v37)
      {
        v38 = sub_2287B5474(v62, v31);

        v39 = v38[2];

        if (v39)
        {

          v40 = *(v61 + 8);
          v41 = *(v58 + 72);
          v40(&v29[v32], v34);
          return v41;
        }
      }

      else
      {
      }

      v43 = v61;
      v44 = (*(v61 + 88))(&v29[v32], v34);
      if (v44 == *MEMORY[0x277D11F20])
      {
        v45 = v35;
        v46 = sub_2287C9CA0();
        v47 = sub_2287C9C80();

        if (v47)
        {

          v48 = *(v58 + 56);
LABEL_18:
          v52 = *(v43 + 8);
LABEL_22:
          v41 = v48;
          v52(&v29[v32], v34);
          return v41;
        }
      }

      else if (v44 == *MEMORY[0x277D11F18])
      {
        v49 = v35;
        v50 = sub_2287C9CA0();
        v51 = sub_2287C9C80();

        if (v51)
        {

          v48 = *(v58 + 48);
          goto LABEL_18;
        }
      }

      v53 = sub_2287C9CA0();
      v54 = sub_2287C9C80();

      v52 = *(v43 + 8);
      if (v54)
      {
        v48 = *(v58 + 64);
      }

      else
      {
        v48 = *(v58 + 48);
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v42 = *(v1 + 80);

    return v42;
  }

  return result;
}

uint64_t DispatchQueueOrchestrationScheduler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_2287913F8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_2287CACC0();
  type metadata accessor for DispatchQueueOrchestrationScheduler();
  v5 = swift_allocObject();
  result = DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(a1 & 1, v4, 3);
  *a2 = v5;
  return result;
}

uint64_t sub_22879150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *), void (*a6)(void *, char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v28 = a3;
  v29 = a4;
  v30 = a1;
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v16 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78);
  v33[0] = a3;
  v33[1] = v15;
  v33[2] = a4;
  v33[3] = v16;
  v17 = a5(0, v33);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  v22 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v23 = sub_2287C9DC0();
  v33[0] = v23;
  v24 = sub_2287CB680();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  v31(v33, v14, v28, v15, v29, v16);
  sub_228790874(v14);

  swift_getWitnessTable();
  v25 = sub_2287CAF40();
  (*(v18 + 8))(v21, v17);
  return v25;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22879194C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_228791994(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_2287919EC()
{
  if (!qword_280DE11E8)
  {
    sub_2287C9DF0();
    sub_228791A80();
    sub_228791B5C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280DE11E8);
    }
  }
}

void sub_228791A80()
{
  if (!qword_280DE19C8)
  {
    sub_2287C9B20();
    sub_228791B14(&qword_280DE3430, MEMORY[0x277D11E28]);
    v0 = sub_2287CB4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE19C8);
    }
  }
}

uint64_t sub_228791B14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228791B5C()
{
  if (!qword_280DDFF28)
  {
    sub_228703004(255, &qword_280DE3638, 0x277CCD720);
    sub_22873A2A8(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    v0 = sub_2287CB4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFF28);
    }
  }
}

void sub_228791C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228791C78(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x277D84F90];
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 64);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 3);
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v15[0] = v6;
    v15[1] = v7;
    v15[2] = v8;
    v15[3] = v9;
    v16 = v10;
    sub_228745E98(v6, v7, v8, v9, v10);
    a1(&v14, v15);
    if (v3)
    {
      sub_228745FAC(v6, v7, v8, v9, v10);

      return v12;
    }

    sub_228745FAC(v6, v7, v8, v9, v10);
    if (v14)
    {
      MEMORY[0x22AABEA50]();
      if (*(v17 + 16) >= *(v17 + 24) >> 1)
      {
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v12 = v17;
    }

    v5 += 40;
    --v4;
  }

  while (v4);
  return v12;
}

uint64_t sub_228791DD8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AABF120](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x22AABEA50]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2287CB3E0();
        }

        sub_2287CB420();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_228791F84(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_228793004(0, &qword_280DE1908, sub_22871511C, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  sub_22871511C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v33 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(type metadata accessor for ModelTrainingEvent() - 8);
  v28 = v13;
  v20 = (v13 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x277D84F90];
  v29 = v12;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v12) == 1)
    {
      sub_228793068(v10);
    }

    else
    {
      v23 = v31;
      sub_2287930F4(v10, v31, sub_22871511C);
      sub_2287930F4(v23, v33, sub_22871511C);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_228723804(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_228723804(v24 > 1, v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_2287930F4(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, sub_22871511C);
      v12 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}