void (*sub_225BDF2F4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_225BDF5EC(v7);
  v7[9] = sub_225BDF400(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_225BDF3A0;
}

void sub_225BDF3A0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_225BDF400(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2259F1F14(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_225A45A7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_225A43358(v18, a4 & 1);
    v13 = sub_2259F1F14(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_225BDF558;
}

void sub_225BDF558(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_225A9FA20(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_225B2BD80(v1[4], *v1[3]);
  }

  free(v1);
}

uint64_t (*sub_225BDF5EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_225BDF614;
}

uint64_t sub_225BDF638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_225BDF6C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225BDF70C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IntensityPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntensityPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_225BDF7CC()
{
  result = qword_27D73FC08;
  if (!qword_27D73FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FC08);
  }

  return result;
}

id sub_225BDF820()
{
  result = sub_225BDF840();
  qword_281059A80 = result;
  return result;
}

id sub_225BDF840()
{
  v0 = sub_225CCCDA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v26 - v7;
  v9 = sub_225CCCEA4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v26 - v16;
  if (qword_27D739FB0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_27D73FC10);
  sub_225A33B7C(v18, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_225B6CC84(v8);
    v19 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v20 = sub_225CCE444();
    v21 = [v19 initWithPath_];
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
    v26[0] = 0xD000000000000047;
    v26[1] = 0x8000000225D23B80;
    (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
    sub_2259D8654();
    sub_225CCCE94();
    (*(v1 + 8))(v4, v0);
    v22 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v23 = sub_225CCCDF4();
    v21 = [v22 initWithURL_];

    v24 = *(v10 + 8);
    v24(v14, v9);
    v24(v17, v9);
  }

  return v21;
}

uint64_t static NSBundle.internalSettings.getter()
{
  if (qword_281059A78 != -1)
  {
    swift_once();
  }

  v0 = qword_281059A80;
  v1 = qword_281059A80;
  return v0;
}

uint64_t sub_225BDFC08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  __swift_allocate_value_buffer(v0, qword_27D73FC10);
  v1 = __swift_project_value_buffer(v0, qword_27D73FC10);
  v2 = sub_225CCCEA4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

void sub_225BDFCA8()
{
  v0 = MEMORY[0x22AA6EE60]();
  sub_225BDFD68(&v1);
  objc_autoreleasePoolPop(v0);
  qword_28105B700 = v1;
}

uint64_t static DIPFeatures.sharedInstance.getter()
{
  if (qword_28105B6F8 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

void sub_225BDFD68(uint64_t *a1@<X8>)
{
  v82 = sub_225CCD954();
  v3 = *(v82 - 8);
  v5 = MEMORY[0x28223BE20](v82, v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v73 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v73 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v73 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v73 - v25;
  if (qword_281059A78 != -1)
  {
    swift_once();
  }

  if (!qword_281059A80)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v49));
    v50 = v82;
    (*(v3 + 16))(v26, &v47[v48], v82);
    os_unfair_lock_unlock(&v47[v49]);
    v51 = sub_225CCD934();
    v52 = sub_225CCED34();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2259A7000, v51, v52, "no settings bundle created", v53, 2u);
      MEMORY[0x22AA6F950](v53, -1, -1);
    }

    (*(v3 + 8))(v26, v50);
    goto LABEL_26;
  }

  v81 = qword_281059A80;
  if (([v81 load] & 1) == 0)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v54 = off_28105B918;
    v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v56));
    v57 = v82;
    (*(v3 + 16))(v7, &v54[v55], v82);
    os_unfair_lock_unlock(&v54[v56]);
    v58 = sub_225CCD934();
    v59 = sub_225CCED34();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2259A7000, v58, v59, "failed loading Features", v60, 2u);
      MEMORY[0x22AA6F950](v60, -1, -1);
    }

    (*(v3 + 8))(v7, v57);
LABEL_26:
    v38 = 0;
    goto LABEL_35;
  }

  v74 = v11;
  v79 = a1;
  v80 = v1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v75 = *(v3 + 16);
  v76 = v28;
  v75(v23, &v27[v28], v82);
  v77 = v29;
  os_unfair_lock_unlock(&v27[v29]);
  v30 = sub_225CCD934();
  v31 = sub_225CCED34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2259A7000, v30, v31, "successfully loaded Settings Bundle from Preferences", v32, 2u);
    MEMORY[0x22AA6F950](v32, -1, -1);
  }

  v33 = *(v3 + 8);
  v34 = v82;
  v78 = v3 + 8;
  v33(v23, v82);
  v35 = sub_225CCE444();
  v36 = [v81 classNamed_];

  if (!v36)
  {
    v61 = v77;
    os_unfair_lock_lock(&v27[v77]);
    v75(v19, &v27[v76], v34);
    os_unfair_lock_unlock(&v27[v61]);
    v62 = sub_225CCD934();
    v63 = sub_225CCECF4();
    v64 = v34;
    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2259A7000, v62, v63, "could not find class for Features", v65, 2u);
      MEMORY[0x22AA6F950](v65, -1, -1);
    }

    v66 = v19;
    v67 = v64;
    goto LABEL_33;
  }

  swift_getObjCClassMetadata();
  sub_225BE069C();
  if (!swift_dynamicCastMetatype())
  {
    v68 = v77;
    os_unfair_lock_lock(&v27[v77]);
    v69 = v82;
    v75(v15, &v27[v76], v82);
    os_unfair_lock_unlock(&v27[v68]);
    v70 = sub_225CCD934();
    v71 = sub_225CCED34();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2259A7000, v70, v71, "Unable to instantiate class for Features", v72, 2u);
      MEMORY[0x22AA6F950](v72, -1, -1);
    }

    v66 = v15;
    v67 = v69;
LABEL_33:
    v33(v66, v67);
    v38 = 0;
LABEL_34:
    a1 = v79;
    goto LABEL_35;
  }

  v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v83 = &unk_283927988;
  v38 = swift_dynamicCastObjCProtocolConditional();
  if (!v38)
  {

    goto LABEL_34;
  }

  v39 = v77;
  os_unfair_lock_lock(&v27[v77]);
  v40 = v74;
  v41 = v82;
  v75(v74, &v27[v76], v82);
  os_unfair_lock_unlock(&v27[v39]);
  v42 = sub_225CCD934();
  v43 = sub_225CCED34();
  if (!os_log_type_enabled(v42, v43))
  {

    v33(v40, v41);
    goto LABEL_34;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  *v44 = 138543362;
  a1 = v79;
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v44 + 4) = v46;
  *v45 = v46;
  _os_log_impl(&dword_2259A7000, v42, v43, "Features i = %{public}@", v44, 0xCu);
  sub_225BE06E8(v45);
  MEMORY[0x22AA6F950](v45, -1, -1);
  MEMORY[0x22AA6F950](v44, -1, -1);

  v33(v74, v41);
LABEL_35:
  *a1 = v38;
}

unint64_t sub_225BE069C()
{
  result = qword_281059A68;
  if (!qword_281059A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A68);
  }

  return result;
}

uint64_t sub_225BE06E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DIPFeaturesProtocol.triggerTapToRadar(forContext:title:error:attachmentFilePaths:deleteOnAttach:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_225CCE444();
  v13 = sub_225CCE444();
  if (a5)
  {
    a5 = sub_225CCCCB4();
  }

  v14 = sub_225CCE7F4();
  if (a9)
  {
    v15 = sub_225CCE444();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [v9 triggerTapToRadarForContext:v12 title:v13 error:a5 attachmentFilePaths:v14 deleteOnAttach:a7 & 1 description:?];
}

const char *CoreIDVFeatureFlag.feature.getter()
{
  v1 = "unittesting";
  v2 = "MobileDocumentReaderMACAuthentication";
  if (*v0 != 2)
  {
    v2 = "rac";
  }

  if (*v0)
  {
    v1 = "ISO18013_5SecondEditionSupport";
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

uint64_t CoreIDVFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

Swift::Bool __swiftcall FeatureFlagProvider.isEnabled(_:)(CoreIDVShared::CoreIDVFeatureFlag a1)
{
  v1 = a1;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v7 = "MobileDocumentReaderMACAuthentication";
      v8 = 37;
    }

    else
    {
      v7 = "rac";
      v8 = 3;
    }
  }

  else if (*v1)
  {
    v7 = "ISO18013_5SecondEditionSupport";
    v8 = 30;
  }

  else
  {
    v7 = "unittesting";
    v8 = 11;
  }

  v26[3] = &type metadata for FeatureFlag;
  v26[4] = sub_225BE0D50();
  v9 = swift_allocObject();
  v26[0] = v9;
  *(v9 + 16) = "CoreIDV";
  *(v9 + 24) = 7;
  *(v9 + 32) = 2;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  *(v9 + 56) = 2;
  v10 = sub_225CCD4D4();
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v3 + 16))(v6, &v11[v12], v2);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136315394;
    v18 = sub_225CCF234();
    v20 = sub_2259BE198(v18, v19, v26);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    if (v10)
    {
      v21 = 0x64656C62616E65;
    }

    else
    {
      v21 = 0x62616E6520746F6ELL;
    }

    if (v10)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xEB0000000064656CLL;
    }

    v23 = sub_2259BE198(v21, v22, v26);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_2259A7000, v14, v15, "Feature flag %s is %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v10 & 1;
}

unint64_t sub_225BE0D50()
{
  result = qword_28105B6E8;
  if (!qword_28105B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6E8);
  }

  return result;
}

unint64_t sub_225BE0DA8()
{
  result = qword_27D73FCA0;
  if (!qword_27D73FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FCA0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_225BE0E44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225BE0E64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

Swift::Bool __swiftcall NSUserDefaults.internalBool(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 != 1)
  {
    return 0;
  }

  v2 = sub_225CCE444();
  v3 = [v1 BOOLForKey_];

  return v3;
}

unint64_t sub_225BE0F54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B180);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_2259CB810(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_2259B9624(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF98);
        swift_dynamicCast();
        sub_2259B9624(&v23, v25);
        sub_2259B9624(v25, v26);
        sub_2259B9624(v26, &v24);
        result = sub_2259F18D4(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_2259B9624(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_2259B9624(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_225BE11E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2259CB810(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2259B9624(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2259B9624(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2259B9624(v31, v32);
    result = sub_225CCF174();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2259B9624(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_225BE14A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCA8);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_2259CB810(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_2259B9624(v30, &v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_2259F18D4(v16, *(&v16 + 1));
        if (v17)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          result = sub_225BE2FC8(&v24, v2[7] + 32 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          v18 = (v2[7] + 32 * result);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_225BE171C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2259B9624(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2259B9624(v29, v30);
    result = sub_225CCF174();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2259B9624(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_225BE19E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_2259CB810(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_2259B9624((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_2259B9624(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_2259B9624(v30, v31);
    result = sub_225CCF174();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_2259B9624(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall isInternalBuild()()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = os_variant_allows_internal_security_policies();
  if (v5)
  {
    v6 = v5;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v7 = off_28105B918;
    v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v9));
    (*(v1 + 16))(v4, &v7[v8], v0);
    os_unfair_lock_unlock(&v7[v9]);
    v10 = sub_225CCD934();
    v11 = sub_225CCED04();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2259A7000, v10, v11, "Internal build detected", v12, 2u);
      MEMORY[0x22AA6F950](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    LOBYTE(v5) = v6;
  }

  return v5;
}

BOOL sub_225BE1EA8()
{
  result = isInternalBuild()();
  byte_28105B9F8 = result;
  return result;
}

uint64_t _isInternalBuild.getter()
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  return byte_28105B9F8;
}

Swift::String_optional __swiftcall experimentalGroup()()
{
  if (!isInternalBuild()())
  {
    goto LABEL_6;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_225CCE444();
  v5 = [v3 stringForKey_];

  if (!v5)
  {

LABEL_6:
    v10 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v6 = sub_225CCE474();
  v8 = v7;

  v9 = v8;
  v10 = v6;
LABEL_7:
  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall NSUserDefaults.internalString(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringForKey_], v2, v3))
  {
    v4 = sub_225CCE474();
    v6 = v5;

    v7 = v6;
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::Int_optional __swiftcall NSUserDefaults.internalInt(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v2 = sub_225CCE444();
    v3 = [v1 stringForKey_];

    if (v3)
    {
      v4 = sub_225CCE474();
      v6 = v5;

      v8 = HIBYTE(v6) & 0xF;
      v9 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v10 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          v33 = 0;
          v12 = sub_2259F3F08(v4, v6, 10);
          v30 = v31;
LABEL_67:

          if (v30)
          {
            v7 = 0;
          }

          else
          {
            v7 = v12;
          }

          goto LABEL_72;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v32[0] = v4;
          v32[1] = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v8)
            {
              if (--v8)
              {
                v12 = 0;
                v22 = v32 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  v24 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    break;
                  }

                  v12 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          if (v4 != 45)
          {
            if (v8)
            {
              v12 = 0;
              v27 = v32;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }

          if (v8)
          {
            if (--v8)
            {
              v12 = 0;
              v16 = v32 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v7 = sub_225CCF354();
          }

          v11 = *v7;
          if (v11 == 43)
          {
            if (v9 >= 1)
            {
              v8 = v9 - 1;
              if (v9 != 1)
              {
                v12 = 0;
                if (v7)
                {
                  v19 = v7 + 1;
                  while (1)
                  {
                    v20 = *v19 - 48;
                    if (v20 > 9)
                    {
                      goto LABEL_65;
                    }

                    v21 = 10 * v12;
                    if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                    {
                      goto LABEL_65;
                    }

                    v12 = v21 + v20;
                    if (__OFADD__(v21, v20))
                    {
                      goto LABEL_65;
                    }

                    ++v19;
                    if (!--v8)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                goto LABEL_57;
              }

              goto LABEL_65;
            }

            goto LABEL_77;
          }

          if (v11 != 45)
          {
            if (v9)
            {
              v12 = 0;
              if (v7)
              {
                while (1)
                {
                  v25 = *v7 - 48;
                  if (v25 > 9)
                  {
                    goto LABEL_65;
                  }

                  v26 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    goto LABEL_65;
                  }

                  ++v7;
                  if (!--v9)
                  {
                    goto LABEL_57;
                  }
                }
              }

              goto LABEL_57;
            }

LABEL_65:
            v12 = 0;
            LOBYTE(v8) = 1;
            goto LABEL_66;
          }

          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v12 = 0;
              if (v7)
              {
                v13 = v7 + 1;
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_65;
                  }

                  v15 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_65;
                  }

                  ++v13;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

LABEL_57:
              LOBYTE(v8) = 0;
LABEL_66:
              v33 = v8;
              v30 = v8;
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          __break(1u);
        }

        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }
  }

  v7 = 0;
  v30 = 1;
LABEL_72:
  LOBYTE(v9) = v30 & 1;
LABEL_79:
  result.is_nil = v9;
  result.value = v7;
  return result;
}

void __swiftcall NSUserDefaults.internalFloat(forKey:)(Swift::Float_optional *__return_ptr retstr, Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v3 = sub_225CCE444();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_225CCE474();
      v7 = v6;

      v8 = 0;
      sub_225BE2D60(v5, v7, &v8, MEMORY[0x277D84FB0]);
    }
  }
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.internalStringArray(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    object = forKey._object;
    swift_once();
    LOBYTE(forKey._object) = object;
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringArrayForKey_], v2, v3))
  {
    v4 = sub_225CCE814();

    forKey._countAndFlagsBits = v4;
  }

  else
  {
    forKey._countAndFlagsBits = 0;
  }

  return *&forKey._countAndFlagsBits;
}

Swift::Double_optional __swiftcall NSUserDefaults.internalDouble(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringForKey_], v2, v3))
  {
    v4 = sub_225CCE474();
    v6 = v5;

    v10 = 0;
    v7 = sub_225BE2D60(v4, v6, &v10, MEMORY[0x277D84FA8]);

    v8 = v7 && v10;
  }

  else
  {
    v8 = 0;
  }

  result.value = v9;
  result.is_nil = v8;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.internalDictionary(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    object = forKey._object;
    swift_once();
    LOBYTE(forKey._object) = object;
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 dictionaryForKey_], v2, v3))
  {
    v4 = sub_225CCE2D4();

    v5 = sub_225BE14A8(v4);

    forKey._countAndFlagsBits = v5;
  }

  else
  {
    forKey._countAndFlagsBits = 0;
  }

  return *&forKey._countAndFlagsBits;
}

unint64_t static NSUserDefaults.globalInternalInt(forKey:)(uint64_t a1, uint64_t a2)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 != 1)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 persistentDomainForName_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_225CCE2D4();

  if (!v6)
  {
    return 0;
  }

  if (*(v6 + 16))
  {

    v7 = sub_2259F18D4(a1, a2);
    if (v8)
    {
      sub_2259CB810(*(v6 + 56) + 32 * v7, v41);

      if (swift_dynamicCast())
      {

        return v39;
      }
    }

    else
    {
    }
  }

  if (!*(v6 + 16))
  {
    goto LABEL_33;
  }

  v10 = sub_2259F18D4(a1, a2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_2259CB810(*(v6 + 56) + 32 * v10, v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v40;
  v12 = HIBYTE(v40) & 0xF;
  v13 = v39 & 0xFFFFFFFFFFFFLL;
  if (!((v40 & 0x2000000000000000) != 0 ? HIBYTE(v40) & 0xF : v39 & 0xFFFFFFFFFFFFLL))
  {
LABEL_33:

    return 0;
  }

  if ((v40 & 0x1000000000000000) == 0)
  {
    if ((v40 & 0x2000000000000000) != 0)
    {
      v41[0] = v39;
      v41[1] = v40 & 0xFFFFFFFFFFFFFFLL;
      if (v39 == 43)
      {
        if (v12)
        {
          v15 = (v12 - 1);
          if (v12 != 1)
          {
            v18 = 0;
            v29 = v41 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v15)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_86:
        __break(1u);
        return result;
      }

      if (v39 != 45)
      {
        if (v12)
        {
          v18 = 0;
          v34 = v41;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v12)
            {
LABEL_75:
              LOBYTE(v15) = 0;
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if (v12)
      {
        v15 = (v12 - 1);
        if (v12 != 1)
        {
          v18 = 0;
          v22 = v41 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v15)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }
    }

    else
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v15 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v15 = sub_225CCF354();
        result = v40;
      }

      v16 = *v15;
      if (v16 == 43)
      {
        if (v13 >= 1)
        {
          v25 = v13 - 1;
          if (v13 != 1)
          {
            v18 = 0;
            if (v15)
            {
              v26 = v15 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_76;
                }

                v28 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_76;
                }

                v18 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_76;
                }

                ++v26;
                if (!--v25)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_77;
          }

          goto LABEL_76;
        }

        goto LABEL_85;
      }

      if (v16 != 45)
      {
        if (v13)
        {
          v18 = 0;
          if (v15)
          {
            while (1)
            {
              v32 = *v15 - 48;
              if (v32 > 9)
              {
                goto LABEL_76;
              }

              v33 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_76;
              }

              v18 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_76;
              }

              ++v15;
              if (!--v13)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_76:
        v18 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_77;
      }

      if (v13 >= 1)
      {
        v17 = v13 - 1;
        if (v13 != 1)
        {
          v18 = 0;
          if (v15)
          {
            v19 = v15 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_76;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_76;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                goto LABEL_76;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_75;
              }
            }
          }

LABEL_77:
          v37 = v15;
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v18 = sub_2259F3F08(v39, v40, 10);
  v37 = v38;
LABEL_78:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

BOOL sub_225BE2D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_225CCF1F4();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t _sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_28105B9F0 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a1 = v10;
    a2 = v11;
  }

  if (byte_28105B9F8 == 1)
  {
    v2 = a1;
    v3 = a2;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [v4 persistentDomainForName_];

    if (v5)
    {
      v6 = sub_225CCE2D4();

      if (v6)
      {
        if (*(v6 + 16) && (v7 = sub_2259F18D4(v2, v3), (v8 & 1) != 0))
        {
          sub_2259CB810(*(v6 + 56) + 32 * v7, v13);

          if (swift_dynamicCast())
          {
            return v12;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_225BE2FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_225BE3090@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t ISO18013DocumentValidator.init(signatureValidator:dateProvider:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a1;
  v4 = *a1 >> 16;
  if (*a1 == 1183)
  {
    LOWORD(v3) = 769;
    LOWORD(v4) = 770;
    v5 = 771;
  }

  else
  {
    v5 = WORD2(*a1);
  }

  if (*a1 == 1183)
  {
    v6 = 772;
  }

  else
  {
    v6 = HIWORD(*a1);
  }

  *a3 = v3;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return sub_2259D8B6C(a2, (a3 + 4));
}

uint64_t ISO18013DocumentValidator.authenticateDocument(_:issuerCertificateChain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for ISO18013MobileSecurityObject(0);
  v4[36] = swift_task_alloc();
  v5 = sub_225CCD354();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for ISO18013Response.Document(0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v6 = sub_225CCD954();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225BE3350, 0, 0);
}

uint64_t sub_225BE3350()
{
  v159 = v0;
  v1 = *(v0 + 240);
  v2 = *v1;
  v3 = v1[1];

  log = v2;
  v4 = sub_225CCF5D4();

  if (v4 > 2)
  {
    v25 = *(v0 + 272);
    sub_225CCF204();

    v153 = 0xD00000000000001ALL;
    v154 = 0x8000000225D23C70;
    MEMORY[0x22AA6CE70](log, v3);
    v26 = MEMORY[0x277D84F90];
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v25, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v25, 1, v30);
    sub_2259CB640(v25, &unk_27D73B050);
    if (v30)
    {
      v32 = 755;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v33;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v153);

    v35 = v153;
    v36 = sub_225B29AA0(0, 1, 1, v26);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD00000000000001ALL;
    *(v39 + 5) = 0x8000000225D23C70;
    *(v39 + 6) = 0xD00000000000002DLL;
    *(v39 + 7) = 0x8000000225D23C90;
    *(v39 + 8) = 0xD00000000000002FLL;
    *(v39 + 9) = 0x8000000225D23CC0;
    *(v39 + 10) = 63;
    *v29 = v32;
    *(v29 + 8) = v36;
    *(v29 + 16) = 0xD00000000000001ALL;
    *(v29 + 24) = 0x8000000225D23C70;
    *(v29 + 32) = v35;
    *(v29 + 40) = 0;
    swift_willThrow();
    goto LABEL_55;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 240);
  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  v138 = *(v7 + 16);
  v141 = v11;
  v150 = v7 + 16;
  v138(v5, &v10[v11], v6);
  v145 = v12;
  v148 = v10;
  os_unfair_lock_unlock(&v10[v12]);
  sub_225BEB7CC(v9, v8, type metadata accessor for ISO18013Response.Document);
  v13 = sub_225CCD934();
  v14 = sub_225CCED04();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 368);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 336);
  if (v15)
  {
    v11 = swift_slowAlloc();
    v136 = v18;
    v20 = swift_slowAlloc();
    v153 = v20;
    *v11 = 136315138;
    v134 = v16;
    v21 = *v19;
    v22 = v19[1];

    sub_225BEB720(v19, type metadata accessor for ISO18013Response.Document);
    v23 = sub_2259BE198(v21, v22, &v153);

    *(v11 + 4) = v23;
    _os_log_impl(&dword_2259A7000, v13, v14, "ISO18013DocumentValidator begins validating document %s with chain", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA6F950](v20, -1, -1);
    MEMORY[0x22AA6F950](v11, -1, -1);

    v24 = *(v17 + 8);
    v24(v134, v136);
  }

  else
  {

    sub_225BEB720(v19, type metadata accessor for ISO18013Response.Document);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v40 = *(v0 + 312);
  v41 = *(v0 + 296);
  v42 = *(v0 + 304);
  v43 = *(v0 + 248);
  v44 = (*(v0 + 240) + *(*(v0 + 320) + 20));
  v45 = type metadata accessor for ISO18013Response.IssuerSigned(0);
  (*(v42 + 16))(v40, v44 + *(v45 + 20), v41);
  if (v43 >> 62)
  {
    if (sub_225CCF144())
    {
      goto LABEL_15;
    }

LABEL_36:
    v92 = *(v0 + 272);
    v150 = 0x8000000225D23C90;
    log = 0x8000000225D23D60;
    v148 = 0x8000000225D23CC0;
    v93 = MEMORY[0x277D84F90];
    v94 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v19 = swift_allocError();
    v40 = v95;
    v96 = sub_225CCE954();
    v97 = *(v96 - 8);
    (*(v97 + 56))(v92, 1, 1, v96);
    LODWORD(v96) = (*(v97 + 48))(v92, 1, v96);
    sub_2259CB640(v92, &unk_27D73B050);
    if (v96)
    {
      LOWORD(v3) = 794;
    }

    else
    {
      LOWORD(v3) = 23;
    }

    v98 = sub_225B2C374(v93);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v98;
    sub_225B2C4A0(v94, sub_225B2AC40, 0, v99, &v153);

    v11 = v153;
    v46 = sub_225B29AA0(0, 1, 1, v93);
    v41 = *(v46 + 2);
    v47 = *(v46 + 3);
    v43 = v41 + 1;
    if (v41 < v47 >> 1)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_15:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x22AA6DA80](0, *(v0 + 248));
LABEL_18:
    v49 = v48;
    sub_225BE4630(*(v0 + 288));
    sub_225BE5860(*v44, *(v0 + 288));
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = (v50 + *(v51 + 32));
    if (log == *v52 && v3 == v52[1])
    {
      goto LABEL_22;
    }

    if (sub_225CCF934())
    {
      v51 = *(v0 + 280);
      v50 = *(v0 + 288);
LABEL_22:
      sub_225BE6D54(v50 + *(v51 + 36), v49);
      sub_225BE7F30(*(v0 + 240), *(v0 + 288), v49);
      v71 = *(v0 + 360);
      v72 = *(v0 + 344);
      v73 = *(v0 + 328);
      v74 = *(v0 + 240);
      os_unfair_lock_lock((v148 + v145));
      v138(v71, (v148 + v141), v72);
      os_unfair_lock_unlock((v148 + v145));
      sub_225BEB7CC(v74, v73, type metadata accessor for ISO18013Response.Document);
      v75 = sub_225CCD934();
      v76 = sub_225CCED04();
      loga = v75;
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 360);
      v79 = *(v0 + 344);
      v80 = *(v0 + 328);
      v82 = *(v0 + 304);
      v81 = *(v0 + 312);
      v83 = *(v0 + 296);
      if (v77)
      {
        v149 = *(v0 + 344);
        v84 = swift_slowAlloc();
        v147 = v81;
        v85 = swift_slowAlloc();
        v153 = v85;
        *v84 = 136315138;
        v139 = v78;
        v143 = v83;
        v86 = *v80;
        v87 = v80[1];

        sub_225BEB720(v80, type metadata accessor for ISO18013Response.Document);
        v88 = sub_2259BE198(v86, v87, &v153);

        *(v84 + 4) = v88;
        _os_log_impl(&dword_2259A7000, loga, v76, "ISO18013DocumentValidator successfully validated document with type %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x22AA6F950](v85, -1, -1);
        MEMORY[0x22AA6F950](v84, -1, -1);

        v24(v139, v149);
        (*(v82 + 8))(v147, v143);
      }

      else
      {

        sub_225BEB720(v80, type metadata accessor for ISO18013Response.Document);
        v24(v78, v79);
        (*(v82 + 8))(v81, v83);
      }

      sub_225BEB414(*(v0 + 288), *(v0 + 232));

      v89 = *(v0 + 8);
      v90 = *(v0 + 248);

      return v89(v90);
    }

    v53 = *(v0 + 272);
    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v19 = swift_allocError();
    v57 = v56;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v53, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v53, 1, v58);
    sub_2259CB640(v53, &unk_27D73B050);
    if (v58)
    {
      v60 = 800;
    }

    else
    {
      v60 = 23;
    }

    v146 = v60;
    v61 = sub_225B2C374(v54);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v61;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, v62, &v153);

    v142 = v153;
    v63 = sub_225B29AA0(0, 1, 1, v54);
    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v63);
    }

    v66 = *(v0 + 304);
    v67 = *(v0 + 312);
    v69 = *(v0 + 288);
    v68 = *(v0 + 296);
    *(v63 + 2) = v65 + 1;
    v70 = &v63[56 * v65];
    *(v70 + 4) = 0xD00000000000001BLL;
    *(v70 + 5) = 0x8000000225D23D40;
    *(v70 + 6) = 0xD00000000000002DLL;
    *(v70 + 7) = 0x8000000225D23C90;
    *(v70 + 8) = 0xD00000000000002FLL;
    *(v70 + 9) = 0x8000000225D23CC0;
    *(v70 + 10) = 82;
    *v57 = v146;
    *(v57 + 8) = v63;
    *(v57 + 16) = 0xD00000000000001BLL;
    *(v57 + 24) = 0x8000000225D23D40;
    *(v57 + 32) = v142;
    *(v57 + 40) = 0;
    swift_willThrow();

    (*(v66 + 8))(v67, v68);
    sub_225BEB720(v69, type metadata accessor for ISO18013MobileSecurityObject);
    goto LABEL_41;
  }

  v47 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    v48 = *(*(v0 + 248) + 32);
    goto LABEL_18;
  }

  __break(1u);
LABEL_60:
  v46 = sub_225B29AA0((v47 > 1), v43, 1, v46);
LABEL_40:
  v101 = *(v0 + 304);
  v100 = *(v0 + 312);
  v102 = *(v0 + 296);
  *(v46 + 2) = v43;
  v103 = &v46[56 * v41];
  *(v103 + 4) = 0xD00000000000004DLL;
  *(v103 + 5) = log;
  *(v103 + 6) = 0xD00000000000002DLL;
  *(v103 + 7) = v150;
  *(v103 + 8) = 0xD00000000000002FLL;
  *(v103 + 9) = v148;
  *(v103 + 10) = 71;
  *v40 = v3;
  *(v40 + 8) = v46;
  *(v40 + 16) = 0xD00000000000004DLL;
  *(v40 + 24) = log;
  *(v40 + 32) = v11;
  *(v40 + 40) = 0;
  swift_willThrow();
  (*(v101 + 8))(v100, v102);
LABEL_41:
  v104 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 26;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20);
  *(inited + 72) = sub_2259D8B24(&qword_27D73FCB0, &qword_27D73AD20);
  *(inited + 40) = v104;

  v106 = v19;
  v107 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060);
  sub_2259CB5EC();
  swift_allocError();
  v109 = v108;
  swift_getErrorValue();
  v110 = *(v0 + 184);
  v111 = v19;
  sub_225B21FAC(v110, &v153);

  v112 = v154;
  if (v154)
  {
    v113 = v107;
    v140 = v155;
    v144 = v153;
    v114 = v157;
    v135 = v158;
    v137 = v156;
  }

  else
  {
    *(v0 + 208) = v19;
    v115 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    v113 = v107;
    if (swift_dynamicCast())
    {
      v116 = *(v0 + 216);
      v117 = swift_initStackObject();
      *(v117 + 16) = xmmword_225CD30F0;
      *(v117 + 32) = 20;
      v118 = [v116 code];
      v119 = MEMORY[0x277D83BF8];
      *(v117 + 64) = MEMORY[0x277D83B88];
      *(v117 + 72) = v119;
      *(v117 + 40) = v118;
      v114 = sub_225B2C374(v117);
      swift_setDeallocating();
      sub_2259CB640(v117 + 32, &qword_27D73B060);

      v120 = v19;
      v140 = 0;
      v144 = 0;
      v137 = 0;
      v112 = MEMORY[0x277D84F90];
    }

    else
    {
      v121 = *(v0 + 264);
      *(v0 + 224) = v19;
      v122 = v19;
      v123 = sub_225CCE954();
      v124 = swift_dynamicCast();
      v125 = *(v123 - 8);
      (*(v125 + 56))(v121, v124 ^ 1u, 1, v123);
      LODWORD(v125) = (*(v125 + 48))(v121, 1, v123);
      sub_2259CB640(v121, &unk_27D73B050);
      if (v125)
      {
        v126 = 0;
      }

      else
      {
        v126 = 23;
      }

      v144 = v126;
      v112 = MEMORY[0x277D84F90];
      v114 = sub_225B2C374(MEMORY[0x277D84F90]);
      v127 = v19;
      v137 = 0x8000000225D23CF0;
      v140 = 0xD00000000000004FLL;
    }

    v135 = v19;
  }

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v114;
  sub_225B2C4A0(v113, sub_225B2AC40, 0, v128, &v153);

  v129 = v153;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v112 = sub_225B29AA0(0, *(v112 + 2) + 1, 1, v112);
  }

  v131 = *(v112 + 2);
  v130 = *(v112 + 3);
  if (v131 >= v130 >> 1)
  {
    v112 = sub_225B29AA0((v130 > 1), v131 + 1, 1, v112);
  }

  *(v112 + 2) = v131 + 1;
  v132 = &v112[56 * v131];
  *(v132 + 4) = 0xD00000000000004FLL;
  *(v132 + 5) = 0x8000000225D23CF0;
  *(v132 + 6) = 0xD00000000000002DLL;
  *(v132 + 7) = 0x8000000225D23C90;
  *(v132 + 8) = 0xD00000000000002FLL;
  *(v132 + 9) = 0x8000000225D23CC0;
  *(v132 + 10) = 95;
  *v109 = v144;
  *(v109 + 8) = v112;
  *(v109 + 16) = v140;
  *(v109 + 24) = v137;
  *(v109 + 32) = v129;
  *(v109 + 40) = v135;
  swift_willThrow();

LABEL_55:

  v133 = *(v0 + 8);

  return v133();
}

void sub_225BE4630(unint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v138 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v129 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCC8);
  MEMORY[0x28223BE20](v11, v12);
  v140 = &v129 - v13;
  v14 = sub_225CCD954();
  v139 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = SecCertificateRef.rawECPublicKeyData()();
  if (v19 >> 60 == 15)
  {
    v142 = 0x8000000225D23C90;
    v141 = 0x8000000225D24370;
    v20 = MEMORY[0x277D84F90];
    v21 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v22 = swift_allocError();
    v24 = v23;
    v25 = sub_225CCE954();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v10, 1, 1, v25);
    LODWORD(v25) = (*(v26 + 48))(v10, 1, v25);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v25)
    {
      v27 = 770;
    }

    else
    {
      v27 = 23;
    }

    v28 = sub_225B2C374(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = v28;
    sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v144);

    v30 = v144;
    v31 = sub_225B29AA0(0, 1, 1, v20);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_225B29AA0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[56 * v33];
    *(v34 + 4) = 0xD000000000000032;
    *(v34 + 5) = 0x8000000225D24330;
    v35 = v142;
    *(v34 + 6) = 0xD00000000000002DLL;
    *(v34 + 7) = v35;
    v36 = v141;
    *(v34 + 8) = 0xD00000000000003ELL;
    *(v34 + 9) = v36;
    *(v34 + 10) = 109;
    *v24 = v27;
    *(v24 + 8) = v31;
    *(v24 + 16) = 0xD000000000000032;
    *(v24 + 24) = 0x8000000225D24330;
    *(v24 + 32) = v30;
    *(v24 + 40) = 0;
    v37 = v22;
    swift_willThrow();
    goto LABEL_23;
  }

  v136 = a1;
  v137 = v2;
  v141 = v18;
  v142 = v19;
  SecCertificateRef.publicKeyAlgorithm()();
  v38 = v144;
  if (v144 == 5)
  {
    v39 = 0x8000000225D243F0;
    v140 = 0x8000000225D23C90;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v42 = swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v10, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v10, 1, v45);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v45)
    {
      v47 = 770;
    }

    else
    {
      v47 = 23;
    }

    v48 = sub_225B2C374(v40);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v144 = v48;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, v49, &v144);

    v50 = v144;
    v51 = sub_225B29AA0(0, 1, 1, v40);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[56 * v53];
    v55 = 0xD000000000000037;
    *(v54 + 4) = 0xD000000000000037;
    *(v54 + 5) = 0x8000000225D243F0;
    v56 = v140;
    *(v54 + 6) = 0xD00000000000002DLL;
    *(v54 + 7) = v56;
    *(v54 + 8) = 0xD00000000000003ELL;
    *(v54 + 9) = 0x8000000225D24370;
    v57 = 113;
LABEL_22:
    *(v54 + 10) = v57;
    *v44 = v47;
    *(v44 + 8) = v51;
    *(v44 + 16) = v55;
    *(v44 + 24) = v39;
    *(v44 + 32) = v50;
    *(v44 + 40) = 0;
    v37 = v42;
    swift_willThrow();
    sub_2259B97A8(v141, v142);
    goto LABEL_23;
  }

  v58 = sub_225CCD324();
  if (v59 >> 60 == 15)
  {
    v39 = 0x8000000225D24430;
    v140 = 0x8000000225D23C90;
    v60 = MEMORY[0x277D84F90];
    v61 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v42 = swift_allocError();
    v44 = v62;
    v63 = sub_225CCE954();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v10, 1, 1, v63);
    LODWORD(v63) = (*(v64 + 48))(v10, 1, v63);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v63)
    {
      v47 = 773;
    }

    else
    {
      v47 = 23;
    }

    v65 = sub_225B2C374(v60);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v144 = v65;
    sub_225B2C4A0(v61, sub_225B2AC40, 0, v66, &v144);

    v50 = v144;
    v51 = sub_225B29AA0(0, 1, 1, v60);
    v68 = *(v51 + 2);
    v67 = *(v51 + 3);
    if (v68 >= v67 >> 1)
    {
      v51 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v51);
    }

    *(v51 + 2) = v68 + 1;
    v54 = &v51[56 * v68];
    v55 = 0xD000000000000035;
    *(v54 + 4) = 0xD000000000000035;
    *(v54 + 5) = 0x8000000225D24430;
    v69 = v140;
    *(v54 + 6) = 0xD00000000000002DLL;
    *(v54 + 7) = v69;
    *(v54 + 8) = 0xD00000000000003ELL;
    *(v54 + 9) = 0x8000000225D24370;
    v57 = 117;
    goto LABEL_22;
  }

  v134 = v59;
  v135 = v58;
  v101 = *v1;
  v132 = sub_225CCD334();
  v133 = v102;
  v103 = sub_225CCD304();
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = v103;
  v105 = sub_225B2C828(inited);
  swift_setDeallocating();
  v144 = v105;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
  sub_2259DB480();
  v106 = v137;
  v107 = sub_225CCD3F4();
  v37 = v106;
  if (v106)
  {

    sub_2259B97A8(v135, v134);
    sub_2259B97A8(v141, v142);
    sub_2259BEF00(v132, v133);
  }

  else
  {
    v109 = v108;
    v130 = v103;
    v110 = v107;

    v131 = v110;
    v144 = v110;
    v145 = v109;
    v146 = xmmword_225CD4150;
    v147 = v135;
    v148 = v134;
    sub_2259CB710(v135, v134);
    sub_2259E44EC();
    v137 = v109;
    v111 = sub_225CCD3F4();
    v144 = v101;
    LOBYTE(v143) = v38;
    v112 = v132;
    v113 = v133;
    v114 = v130;
    v115 = v111;
    v130 = v116;
    sub_2259DBE5C(v132, v133, v141, v142, &v143, v114, v111, v116);
    v129 = 0;
    sub_2259BEF00(v112, v113);

    sub_2259BEF00(v115, v130);
    sub_2259BEF00(v131, v137);
    sub_2259BEF00(0, 0xC000000000000000);
    v117 = v134;
    sub_2259BEF00(v135, v134);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v118 = off_28105B918;
    v119 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v120 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v120));
    v121 = v139;
    (*(v139 + 16))(v17, &v118[v119], v14);
    os_unfair_lock_unlock(&v118[v120]);
    v122 = sub_225CCD934();
    v123 = sub_225CCED04();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_2259A7000, v122, v123, "ISO18013DocumentValidator successfully validated signature of IssuerAuth", v124, 2u);
      MEMORY[0x22AA6F950](v124, -1, -1);
    }

    (*(v121 + 8))(v17, v14);
    sub_225CCD3A4();
    swift_allocObject();
    sub_225CCD394();
    sub_2259D8B24(&qword_27D73FCD0, &qword_27D73FCC8);
    v125 = v140;
    v126 = v135;
    v127 = v129;
    sub_225CCD364();
    v128 = v136;
    if (!v127)
    {

      sub_2259B97A8(v126, v117);
      sub_2259B97A8(v141, v142);
      sub_225BEB7CC(v125 + *(v11 + 48), v128, type metadata accessor for ISO18013MobileSecurityObject);
      sub_2259CB640(v125, &qword_27D73FCC8);
      return;
    }

    sub_2259B97A8(v126, v117);
    sub_2259B97A8(v141, v142);
    v37 = v127;
  }

LABEL_23:
  v139 = "ng public key data";
  v70 = v37;
  v140 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v71 = swift_allocError();
  v73 = v72;
  swift_getErrorValue();
  v74 = v149;
  v75 = v37;
  sub_225B21FAC(v74, &v144);

  v76 = v145;
  v142 = v71;
  v141 = 0x8000000225D243B0;
  if (v145)
  {
    v77 = v37;
    v138 = v144;
    v136 = *(&v146 + 1);
    v137 = v146;
    v78 = v147;
    v37 = v148;
  }

  else
  {
    v144 = v37;
    v79 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v80 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v81 = swift_initStackObject();
      *(v81 + 16) = xmmword_225CD30F0;
      *(v81 + 32) = 20;
      v82 = [v80 code];
      v83 = MEMORY[0x277D83BF8];
      *(v81 + 64) = MEMORY[0x277D83B88];
      *(v81 + 72) = v83;
      *(v81 + 40) = v82;
      v78 = sub_225B2C374(v81);
      swift_setDeallocating();
      sub_2259CB640(v81 + 32, &qword_27D73B060);

      v84 = v37;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v76 = MEMORY[0x277D84F90];
      v77 = v37;
    }

    else
    {
      v144 = v37;
      v85 = v37;
      v86 = sub_225CCE954();
      v87 = v37;
      v88 = v138;
      v89 = swift_dynamicCast();
      v90 = *(v86 - 8);
      (*(v90 + 56))(v88, v89 ^ 1u, 1, v86);
      LODWORD(v90) = (*(v90 + 48))(v88, 1, v86);
      sub_2259CB640(v88, &unk_27D73B050);
      if (v90)
      {
        v91 = 0;
      }

      else
      {
        v91 = 23;
      }

      v138 = v91;
      v76 = MEMORY[0x277D84F90];
      v78 = sub_225B2C374(MEMORY[0x277D84F90]);
      v92 = v87;
      v137 = 0xD00000000000003DLL;
      v136 = 0x8000000225D243B0;
      v77 = v87;
      v37 = v87;
    }
  }

  v93 = v139 | 0x8000000000000000;
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v144 = v78;
  sub_225B2C4A0(v140, sub_225B2AC40, 0, v94, &v144);

  v95 = v144;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v76 = sub_225B29AA0(0, *(v76 + 2) + 1, 1, v76);
  }

  v97 = *(v76 + 2);
  v96 = *(v76 + 3);
  if (v97 >= v96 >> 1)
  {
    v76 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v76);
  }

  *(v76 + 2) = v97 + 1;
  v98 = &v76[56 * v97];
  v99 = v141;
  *(v98 + 4) = 0xD00000000000003DLL;
  *(v98 + 5) = v99;
  *(v98 + 6) = 0xD00000000000002DLL;
  *(v98 + 7) = 0x8000000225D23C90;
  *(v98 + 8) = 0xD00000000000003ELL;
  *(v98 + 9) = v93;
  *(v98 + 10) = 134;
  *v73 = v138;
  v100 = v137;
  *(v73 + 8) = v76;
  *(v73 + 16) = v100;
  *(v73 + 24) = v136;
  *(v73 + 32) = v95;
  *(v73 + 40) = v37;
  swift_willThrow();
}

void sub_225BE5860(unint64_t a1, int64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v152 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v154 = &v146 - v12;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v168 = *(v171 - 8);
  v14 = MEMORY[0x28223BE20](v171, v13);
  v174 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v176 = &v146 - v17;
  v175 = sub_225CCD954();
  v18 = *(v175 - 8);
  v20 = MEMORY[0x28223BE20](v175, v19);
  v22 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v173 = &v146 - v25;
  MEMORY[0x28223BE20](v24, v26);
  if (a1)
  {
    v151 = &v146 - v27;
    v28 = *(a2 + 24);

    v29 = sub_225CCF5D4();

    v164 = v29;
    if (v29 > 2)
    {
      v175 = 0x8000000225D23C90;
      v174 = 0x8000000225D24290;
      v95 = MEMORY[0x277D84F90];
      v96 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v18 = swift_allocError();
      v98 = v97;
      v99 = sub_225CCE954();
      v100 = *(v99 - 8);
      v101 = v154;
      (*(v100 + 56))(v154, 1, 1, v99);
      LODWORD(v99) = (*(v100 + 48))(v101, 1, v99);
      sub_2259CB640(v101, &unk_27D73B050);
      if (v99)
      {
        v102 = 803;
      }

      else
      {
        v102 = 23;
      }

      v103 = sub_225B2C374(v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = v103;
      sub_225B2C4A0(v96, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v178);

      v105 = v178;
      v106 = sub_225B29AA0(0, 1, 1, v95);
      v108 = *(v106 + 2);
      v107 = *(v106 + 3);
      if (v108 >= v107 >> 1)
      {
        v106 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v106);
      }

      *(v106 + 2) = v108 + 1;
      v109 = &v106[56 * v108];
      *(v109 + 4) = 0xD000000000000018;
      *(v109 + 5) = 0x8000000225D24270;
      *(v109 + 6) = 0xD00000000000002DLL;
      *(v109 + 7) = v175;
      *(v109 + 8) = 0xD00000000000002ALL;
      *(v109 + 9) = v174;
      *(v109 + 10) = 147;
      *v98 = v102;
      *(v98 + 8) = v106;
      *(v98 + 16) = 0xD000000000000018;
      *(v98 + 24) = 0x8000000225D24270;
      *(v98 + 32) = v105;
      *(v98 + 40) = 0;
      swift_willThrow();
LABEL_85:
      v173 = 0;
LABEL_86:
      v3 = 0x8000000225D242C0;
      v119 = v18;
      v120 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v121 = swift_allocError();
      a1 = v122;
      swift_getErrorValue();
      v123 = v184;
      v124 = v18;
      sub_225B21FAC(v123, &v178);

      v28 = v179;
      v172 = v121;
      v176 = 0x8000000225D242C0;
      if (v179)
      {
        v171 = v178;
        v4 = v180;
        v3 = v181;
        v125 = v182;
        v34 = v183;
      }

      else
      {
        v178 = v18;
        v126 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v127 = v177;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v129 = [v127 code];
          v130 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v130;
          *(inited + 40) = v129;
          v125 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v131 = v18;
          v171 = 0;
          v4 = 0;
          v3 = 0;
          v28 = MEMORY[0x277D84F90];
        }

        else
        {
          v178 = v18;
          v132 = v18;
          v133 = sub_225CCE954();
          v134 = v152;
          v135 = swift_dynamicCast();
          v136 = *(v133 - 8);
          (*(v136 + 56))(v134, v135 ^ 1u, 1, v133);
          LODWORD(v133) = (*(v136 + 48))(v134, 1, v133);
          sub_2259CB640(v134, &unk_27D73B050);
          if (v133)
          {
            v137 = 0;
          }

          else
          {
            v137 = 23;
          }

          v171 = v137;
          v28 = MEMORY[0x277D84F90];
          v125 = sub_225B2C374(MEMORY[0x277D84F90]);
          v138 = v18;
          v4 = 0xD000000000000036;
        }

        v34 = v18;
      }

      v139 = swift_isUniquelyReferenced_nonNull_native();
      v178 = v125;
      sub_225B2C4A0(v120, sub_225B2AC40, 0, v139, &v178);

      v33 = v178;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_96;
      }
    }

    else
    {
      v30 = a1 + 64;
      v31 = 1 << *(a1 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(a1 + 64);
      v34 = (v31 + 63) >> 6;
      v165 = (v18 + 16);
      v166 = (v18 + 8);

      v35 = 0;
      *&v36 = 136315138;
      v148 = v36;
      *&v36 = 134217984;
      v150 = v36;
      v157 = a2;
      v147 = a1 + 64;
      v146 = v34;
      if (v33)
      {
        while (1)
        {
          v37 = a1;
          v38 = a2;
LABEL_11:
          v149 = v35;
          v40 = __clz(__rbit64(v33)) | (v35 << 6);
          v41 = v37;
          v42 = (*(v37 + 48) + 16 * v40);
          v3 = *v42;
          v18 = v42[1];
          v43 = *(*(v37 + 56) + 8 * v40);
          v44 = *(v38 + 32);
          v45 = *(v44 + 16);

          v167 = v43;
          v170 = v3;
          if (!v45)
          {
            break;
          }

          v46 = sub_2259F18D4(v3, v18);
          if (v47)
          {
            v153 = *(*(v44 + 56) + 8 * v46);
LABEL_15:
            a2 = v38;

            goto LABEL_17;
          }

          v153 = 0;
          a2 = v38;
LABEL_17:
          a1 = v41;
          v172 = v4;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v48 = off_28105B918;
          v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v50));
          v51 = *v165;
          v161 = v49;
          v52 = &v48[v49];
          v34 = v151;
          v159 = v51;
          v51(v151, v52, v175);
          v162 = v48;
          v160 = v50;
          os_unfair_lock_unlock(&v48[v50]);

          v53 = sub_225CCD934();
          v54 = sub_225CCED04();

          v55 = os_log_type_enabled(v53, v54);
          v163 = v33;
          v56 = v153;
          if (v55)
          {
            v3 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v178 = v57;
            *v3 = v148;
            *(v3 + 4) = sub_2259BE198(v170, v18, &v178);
            _os_log_impl(&dword_2259A7000, v53, v54, "ISO18013DocumentValidator comparing digests for namespace %s", v3, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v57);
            v58 = v57;
            v33 = v163;
            MEMORY[0x22AA6F950](v58, -1, -1);
            a2 = v157;
            MEMORY[0x22AA6F950](v3, -1, -1);
          }

          v158 = *v166;
          v158(v34, v175);
          v4 = v172;
          v59 = v167;
          v28 = &unk_225CDC650;
          v155 = *(v167 + 16);
          if (v155)
          {
            v3 = 0;
            v156 = v18;
            do
            {
              if (v3 >= *(v59 + 16))
              {
                goto LABEL_102;
              }

              v60 = v176;
              sub_225A0DE54(v59 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v3, v176, &qword_27D73B3D0);
              LOBYTE(v178) = v164;
              v61 = computeISO18013Digest(algorithm:data:)(&v178, *(v60 + 8), *(v60 + 16));
              if (v4)
              {

                sub_2259CB640(v176, &qword_27D73B3D0);
                v173 = 0;
                v175 = 0x8000000225D23C90;
                v174 = 0x8000000225D24290;
                v18 = v4;
                goto LABEL_86;
              }

              v172 = v3;
              v169 = v61;
              v170 = v62;
              v63 = v162;
              v64 = v160;
              os_unfair_lock_lock(&v162[v160]);
              v159(v173, &v63[v161], v175);
              os_unfair_lock_unlock(&v63[v64]);
              v34 = v174;
              sub_225A0DE54(v176, v174, &qword_27D73B3D0);
              v28 = sub_225CCD934();
              v33 = sub_225CCED04();
              if (os_log_type_enabled(v28, v33))
              {
                v65 = swift_slowAlloc();
                *v65 = v150;
                v66 = *(v174 + *(v171 + 48));
                sub_2259CB640(v174, &qword_27D73B3D0);
                *(v65 + 4) = v66;
                v4 = 0;
                v56 = v153;
                _os_log_impl(&dword_2259A7000, v28, v33, "ISO18013DocumentValidator comparing digests for digestID %lu", v65, 0xCu);
                v67 = v65;
                a2 = v157;
                MEMORY[0x22AA6F950](v67, -1, -1);
              }

              else
              {
                sub_2259CB640(v34, &qword_27D73B3D0);
              }

              v158(v173, v175);
              v18 = v156;
              v3 = v172;
              if (!v56)
              {
                v173 = a1;
LABEL_78:

LABEL_79:

LABEL_80:
                v56 = 0x8000000225D24300;
                v175 = 0x8000000225D23C90;
                v174 = 0x8000000225D24290;
                v110 = MEMORY[0x277D84F90];
                v111 = sub_225B2C248(MEMORY[0x277D84F90]);
                sub_2259CB5EC();
                v18 = swift_allocError();
                v73 = v112;
                v113 = sub_225CCE954();
                v114 = *(v113 - 8);
                v115 = v154;
                (*(v114 + 56))(v154, 1, 1, v113);
                LODWORD(v113) = (*(v114 + 48))(v115, 1, v113);
                sub_2259CB640(v115, &unk_27D73B050);
                if (v113)
                {
                  LOWORD(v74) = 799;
                }

                else
                {
                  LOWORD(v74) = 23;
                }

                v116 = sub_225B2C374(v110);
                v117 = swift_isUniquelyReferenced_nonNull_native();
                v178 = v116;
                sub_225B2C4A0(v111, sub_225B2AC40, 0, v117, &v178);

                v34 = v178;
                v70 = sub_225B29AA0(0, 1, 1, v110);
                a1 = *(v70 + 2);
                v78 = *(v70 + 3);
                a2 = a1 + 1;
                if (a1 >= v78 >> 1)
                {
LABEL_108:
                  v70 = sub_225B29AA0((v78 > 1), a2, 1, v70);
                }

                *(v70 + 2) = a2;
                v118 = &v70[56 * a1];
                *(v118 + 4) = 0xD00000000000002ELL;
                *(v118 + 5) = v56;
                *(v118 + 6) = 0xD00000000000002DLL;
                *(v118 + 7) = v175;
                *(v118 + 8) = 0xD00000000000002ALL;
                *(v118 + 9) = v174;
                *(v118 + 10) = 160;
                *v73 = v74;
                *(v73 + 8) = v70;
                *(v73 + 16) = 0xD00000000000002ELL;
                *(v73 + 24) = v56;
                *(v73 + 32) = v34;
                *(v73 + 40) = 0;
                swift_willThrow();

                sub_2259BEF00(v169, v170);
                sub_2259CB640(v176, &qword_27D73B3D0);
                goto LABEL_85;
              }

              v68 = *(v176 + *(v171 + 48));
              if (v68 < 0)
              {
                goto LABEL_103;
              }

              if (!*(v56 + 16) || (v69 = sub_2259F1900(v68), (v71 & 1) == 0))
              {
                v173 = a1;

                goto LABEL_78;
              }

              v72 = (*(v56 + 56) + 16 * v69);
              v74 = *v72;
              v73 = v72[1];
              v75 = v170;
              v76 = v170 >> 62;
              v77 = v73 >> 62;
              if (v170 >> 62 == 3)
              {
                v78 = 0;
                v79 = v169;
                if (!v169 && v170 == 0xC000000000000000 && v73 >> 62 == 3)
                {
                  v78 = 0;
                  if (!v74 && v73 == 0xC000000000000000)
                  {
                    v79 = 0;
                    v75 = 0xC000000000000000;
LABEL_24:
                    sub_2259BEF00(v79, v75);
                    goto LABEL_25;
                  }
                }
              }

              else
              {
                v79 = v169;
                if (v76)
                {
                  if (v76 == 1)
                  {
                    v78 = (HIDWORD(v169) - v169);
                    if (__OFSUB__(HIDWORD(v169), v169))
                    {
                      goto LABEL_106;
                    }

                    v78 = v78;
                  }

                  else
                  {
                    v81 = *(v169 + 2);
                    v80 = *(v169 + 3);
                    v82 = __OFSUB__(v80, v81);
                    v78 = v80 - v81;
                    if (v82)
                    {
                      goto LABEL_107;
                    }
                  }
                }

                else
                {
                  v78 = BYTE6(v170);
                }
              }

              if (v77 > 1)
              {
                if (v77 != 2)
                {
                  if (v78)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_24;
                }

                v85 = *(v74 + 16);
                v84 = *(v74 + 24);
                v82 = __OFSUB__(v84, v85);
                v83 = v84 - v85;
                if (v82)
                {
                  __break(1u);
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
LABEL_107:
                  __break(1u);
                  goto LABEL_108;
                }
              }

              else if (v77)
              {
                LODWORD(v83) = HIDWORD(v74) - v74;
                if (__OFSUB__(HIDWORD(v74), v74))
                {
                  goto LABEL_105;
                }

                v83 = v83;
              }

              else
              {
                v83 = BYTE6(v73);
              }

              if (v78 != v83)
              {
LABEL_99:
                v173 = a1;
                sub_2259CB710(v74, v73);

                sub_2259BEF00(v74, v73);
                goto LABEL_80;
              }

              if (v78 < 1)
              {
                goto LABEL_24;
              }

              v34 = a1;
              v86 = v79;
              v87 = v170;
              sub_2259CB710(v74, v73);
              sub_2259CB710(v74, v73);
              v88 = sub_225BEB284(v86, v87, v74, v73);
              sub_2259BEF00(v74, v73);
              if ((v88 & 1) == 0)
              {
                v173 = v34;

                goto LABEL_79;
              }

              sub_2259BEF00(v86, v87);
              a2 = v157;
              a1 = v34;
              v3 = v172;
LABEL_25:
              ++v3;
              v28 = &unk_225CDC650;
              sub_2259CB640(v176, &qword_27D73B3D0);
              v33 = v163;
              v59 = v167;
            }

            while (v155 != v3);
          }

          v33 &= v33 - 1;

          v30 = v147;
          v34 = v146;
          v35 = v149;
          if (!v33)
          {
            goto LABEL_7;
          }
        }

        v153 = 0;
        goto LABEL_15;
      }

LABEL_7:
      while (1)
      {
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v39 >= v34)
        {

          return;
        }

        v33 = *(v30 + 8 * v39);
        ++v35;
        if (v33)
        {
          v37 = a1;
          v38 = a2;
          v35 = v39;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
    }

    v28 = sub_225B29AA0(0, v28[2].isa + 1, 1, v28);
LABEL_96:
    isa = v28[2].isa;
    v140 = v28[3].isa;
    if (isa >= v140 >> 1)
    {
      v28 = sub_225B29AA0((v140 > 1), isa + 1, 1, v28);
    }

    v28[2].isa = (isa + 1);
    v142 = &v28[7 * isa];
    v143 = v176;
    v142[4].isa = 0xD000000000000036;
    v142[5].isa = v143;
    v144 = v175;
    v142[6].isa = 0xD00000000000002DLL;
    v142[7].isa = v144;
    v145 = v174;
    v142[8].isa = 0xD00000000000002ALL;
    v142[9].isa = v145;
    v142[10].isa = 168;
    *a1 = v171;
    *(a1 + 8) = v28;
    *(a1 + 16) = v4;
    *(a1 + 24) = v3;
    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    swift_willThrow();

    return;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v89 = off_28105B918;
  v90 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v91 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v91));
  (*(v18 + 16))(v22, &v89[v90], v175);
  os_unfair_lock_unlock(&v89[v91]);
  v92 = sub_225CCD934();
  v93 = sub_225CCED04();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_2259A7000, v92, v93, "ISO18013DocumentValidator found nil issuer signed namespaces. Skipping digests check as there is nothing to compare.", v94, 2u);
    MEMORY[0x22AA6F950](v94, -1, -1);
  }

  (*(v18 + 8))(v22, v175);
}

void sub_225BE6D54(uint64_t a1, void *a2)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v126 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v129 = &v125 - v8;
  v9 = sub_225CCD0B4();
  v128 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  (*(v14 + 16))(v17, &v18[v19], v13);
  os_unfair_lock_unlock(&v18[v20]);
  MEMORY[0x28223BE20](v21, v22);
  *(&v125 - 2) = a1;
  Logger.sensitive(_:)(sub_225BEB780);
  (*(v14 + 8))(v17, v13);
  sub_225CCD004();
  if (SecCertificateIsValid())
  {
    type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
    if (sub_225CCD054())
    {
      v23 = v127;
      v24 = v127[4];
      v25 = v127[5];
      __swift_project_boxed_opaque_existential_1(v127 + 1, v24);
      (*(v25 + 8))(v24, v25);
      v130 = sub_225BEB788(&qword_27D73D9C0);
      v26 = sub_225CCE3B4();
      v28 = v128 + 8;
      v27 = *(v128 + 8);
      v27(v12, v9);
      if ((v26 & 1) == 0)
      {
        v33 = 0x8000000225D24140;
        v93 = MEMORY[0x277D84F90];
        v94 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v130 = swift_allocError();
        v37 = v95;
        v96 = sub_225CCE954();
        v97 = *(v96 - 8);
        v98 = v129;
        (*(v97 + 56))(v129, 1, 1, v96);
        LODWORD(v96) = (*(v97 + 48))(v98, 1, v96);
        sub_2259CB640(v98, &unk_27D73B050);
        if (v96)
        {
          v99 = 774;
        }

        else
        {
          v99 = 23;
        }

        v100 = sub_225B2C374(v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133 = v100;
        sub_225B2C4A0(v94, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v133);

        v44 = v133;
        v45 = sub_225B29AA0(0, 1, 1, v93);
        v103 = *(v45 + 2);
        v102 = *(v45 + 3);
        if (v103 >= v102 >> 1)
        {
          v45 = sub_225B29AA0((v102 > 1), v103 + 1, 1, v45);
        }

        *(v45 + 2) = v103 + 1;
        v104 = &v45[56 * v103];
        *(v104 + 4) = 0xD000000000000031;
        *(v104 + 5) = 0x8000000225D24140;
        *(v104 + 6) = 0xD00000000000002DLL;
        *(v104 + 7) = 0x8000000225D23C90;
        v128 = 0x8000000225D23C90;
        *(v104 + 8) = 0xD000000000000031;
        *(v104 + 9) = 0x8000000225D24090;
        *(v104 + 10) = 189;
        *v37 = v99;
        v49 = 0xD000000000000031;
        goto LABEL_22;
      }

      v128 = v28;
      v29 = v23;
      v30 = v23[4];
      v31 = v23[5];
      __swift_project_boxed_opaque_existential_1(v29 + 1, v30);
      (*(v31 + 8))(v30, v31);
      v32 = sub_225CCE3B4();
      v27(v12, v9);
      if (v32)
      {
        if (sub_225CCE3B4())
        {
          return;
        }

        v33 = 0x8000000225D241B0;
        v115 = MEMORY[0x277D84F90];
        v116 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v130 = swift_allocError();
        v37 = v117;
        v118 = sub_225CCE954();
        v119 = *(v118 - 8);
        v120 = v129;
        (*(v119 + 56))(v129, 1, 1, v118);
        LODWORD(v118) = (*(v119 + 48))(v120, 1, v118);
        sub_2259CB640(v120, &unk_27D73B050);
        if (v118)
        {
          v41 = 801;
        }

        else
        {
          v41 = 23;
        }

        v121 = sub_225B2C374(v115);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v121;
        sub_225B2C4A0(v116, sub_225B2AC40, 0, v122, &v133);

        v44 = v133;
        v45 = sub_225B29AA0(0, 1, 1, v115);
        v124 = *(v45 + 2);
        v123 = *(v45 + 3);
        if (v124 >= v123 >> 1)
        {
          v45 = sub_225B29AA0((v123 > 1), v124 + 1, 1, v45);
        }

        *(v45 + 2) = v124 + 1;
        v48 = &v45[56 * v124];
        v49 = 0xD000000000000032;
        *(v48 + 4) = 0xD000000000000032;
        *(v48 + 5) = 0x8000000225D241B0;
        *(v48 + 6) = 0xD00000000000002DLL;
        *(v48 + 7) = 0x8000000225D23C90;
        v128 = 0x8000000225D23C90;
        *(v48 + 8) = 0xD000000000000031;
        *(v48 + 9) = 0x8000000225D24090;
        v50 = 197;
      }

      else
      {
        v33 = 0x8000000225D24180;
        v105 = MEMORY[0x277D84F90];
        v106 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v130 = swift_allocError();
        v37 = v107;
        v108 = sub_225CCE954();
        v109 = *(v108 - 8);
        v110 = v129;
        (*(v109 + 56))(v129, 1, 1, v108);
        LODWORD(v108) = (*(v109 + 48))(v110, 1, v108);
        sub_2259CB640(v110, &unk_27D73B050);
        if (v108)
        {
          v41 = 774;
        }

        else
        {
          v41 = 23;
        }

        v111 = sub_225B2C374(v105);
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v111;
        sub_225B2C4A0(v106, sub_225B2AC40, 0, v112, &v133);

        v44 = v133;
        v45 = sub_225B29AA0(0, 1, 1, v105);
        v114 = *(v45 + 2);
        v113 = *(v45 + 3);
        if (v114 >= v113 >> 1)
        {
          v45 = sub_225B29AA0((v113 > 1), v114 + 1, 1, v45);
        }

        *(v45 + 2) = v114 + 1;
        v48 = &v45[56 * v114];
        v49 = 0xD000000000000023;
        *(v48 + 4) = 0xD000000000000023;
        *(v48 + 5) = 0x8000000225D24180;
        *(v48 + 6) = 0xD00000000000002DLL;
        *(v48 + 7) = 0x8000000225D23C90;
        v128 = 0x8000000225D23C90;
        *(v48 + 8) = 0xD000000000000031;
        *(v48 + 9) = 0x8000000225D24090;
        v50 = 193;
      }
    }

    else
    {
      v33 = 0x8000000225D24110;
      v51 = MEMORY[0x277D84F90];
      v52 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v130 = swift_allocError();
      v37 = v53;
      v54 = sub_225CCE954();
      v55 = *(v54 - 8);
      v56 = v129;
      (*(v55 + 56))(v129, 1, 1, v54);
      LODWORD(v54) = (*(v55 + 48))(v56, 1, v54);
      sub_2259CB640(v56, &unk_27D73B050);
      if (v54)
      {
        v41 = 801;
      }

      else
      {
        v41 = 23;
      }

      v57 = sub_225B2C374(v51);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v57;
      sub_225B2C4A0(v52, sub_225B2AC40, 0, v58, &v133);

      v44 = v133;
      v45 = sub_225B29AA0(0, 1, 1, v51);
      v60 = *(v45 + 2);
      v59 = *(v45 + 3);
      if (v60 >= v59 >> 1)
      {
        v45 = sub_225B29AA0((v59 > 1), v60 + 1, 1, v45);
      }

      *(v45 + 2) = v60 + 1;
      v48 = &v45[56 * v60];
      v49 = 0xD00000000000002ELL;
      *(v48 + 4) = 0xD00000000000002ELL;
      *(v48 + 5) = 0x8000000225D24110;
      *(v48 + 6) = 0xD00000000000002DLL;
      *(v48 + 7) = 0x8000000225D23C90;
      v128 = 0x8000000225D23C90;
      *(v48 + 8) = 0xD000000000000031;
      *(v48 + 9) = 0x8000000225D24090;
      v50 = 185;
    }
  }

  else
  {
    v33 = 0x8000000225D24040;
    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v130 = swift_allocError();
    v37 = v36;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    v40 = v129;
    (*(v39 + 56))(v129, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v40, 1, v38);
    sub_2259CB640(v40, &unk_27D73B050);
    if (v38)
    {
      v41 = 801;
    }

    else
    {
      v41 = 23;
    }

    v42 = sub_225B2C374(v34);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v42;
    sub_225B2C4A0(v35, sub_225B2AC40, 0, v43, &v133);

    v44 = v133;
    v45 = sub_225B29AA0(0, 1, 1, v34);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    v49 = 0xD00000000000004DLL;
    *(v48 + 4) = 0xD00000000000004DLL;
    *(v48 + 5) = 0x8000000225D24040;
    *(v48 + 6) = 0xD00000000000002DLL;
    *(v48 + 7) = 0x8000000225D23C90;
    v128 = 0x8000000225D23C90;
    *(v48 + 8) = 0xD000000000000031;
    *(v48 + 9) = 0x8000000225D24090;
    v50 = 181;
  }

  *(v48 + 10) = v50;
  *v37 = v41;
LABEL_22:
  *(v37 + 8) = v45;
  *(v37 + 16) = v49;
  *(v37 + 24) = v33;
  *(v37 + 32) = v44;
  *(v37 + 40) = 0;
  v61 = v130;
  swift_willThrow();
  v129 = 0x8000000225D240D0;
  v62 = v61;
  v63 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v131 = swift_allocError();
  v65 = v64;
  swift_getErrorValue();
  v66 = v139;
  v67 = v61;
  sub_225B21FAC(v66, &v133);

  v68 = v134;
  if (v134)
  {
    v127 = v133;
    v69 = v136;
    v126 = v135;
    v70 = v137;
    v61 = v138;
  }

  else
  {
    v133 = v61;
    v71 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v72 = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v74 = [v72 code];
      v75 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v75;
      *(inited + 40) = v74;
      v70 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v76 = v61;
      v127 = 0;
      v126 = 0;
      v69 = 0;
      v68 = MEMORY[0x277D84F90];
    }

    else
    {
      v133 = v61;
      v77 = v61;
      v78 = sub_225CCE954();
      v79 = v126;
      v80 = swift_dynamicCast();
      v81 = *(v78 - 8);
      (*(v81 + 56))(v79, v80 ^ 1u, 1, v78);
      LODWORD(v81) = (*(v81 + 48))(v79, 1, v78);
      sub_2259CB640(v79, &unk_27D73B050);
      if (v81)
      {
        v82 = 0;
      }

      else
      {
        v82 = 23;
      }

      v127 = v82;
      v68 = MEMORY[0x277D84F90];
      v70 = sub_225B2C374(MEMORY[0x277D84F90]);
      v83 = v61;
      v126 = 0xD000000000000036;
      v69 = v129;
    }
  }

  v84 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v70;
  sub_225B2C4A0(v63, sub_225B2AC40, 0, v84, &v133);

  v85 = v133;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v68 = sub_225B29AA0(0, *(v68 + 2) + 1, 1, v68);
  }

  v87 = *(v68 + 2);
  v86 = *(v68 + 3);
  if (v87 >= v86 >> 1)
  {
    v68 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v68);
  }

  v88 = v130;

  *(v68 + 2) = v87 + 1;
  v89 = &v68[56 * v87];
  v90 = v129;
  *(v89 + 4) = 0xD000000000000036;
  *(v89 + 5) = v90;
  v91 = v128;
  *(v89 + 6) = 0xD00000000000002DLL;
  *(v89 + 7) = v91;
  *(v89 + 8) = 0xD000000000000031;
  *(v89 + 9) = 0x8000000225D24090;
  *(v89 + 10) = 200;
  *v65 = v127;
  v92 = v126;
  *(v65 + 8) = v68;
  *(v65 + 16) = v92;
  *(v65 + 24) = v69;
  *(v65 + 32) = v85;
  *(v65 + 40) = v61;
  swift_willThrow();
}

void sub_225BE7F30(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v206 = a3;
  v200 = a2;
  v224 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v197 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v202 = &v194 - v11;
  v213 = sub_225CCD0B4();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213, v12);
  v203 = &v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for ISO18013Response.Document(0);
  MEMORY[0x28223BE20](v204, v14);
  v195 = (&v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v194 - v22;
  v24 = sub_225CCD954();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v199 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v198 = &v194 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v201 = &v194 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v196 = &v194 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v194 - v39;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v214 = v23;
  v41 = off_28105B918;
  v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v43));
  v44 = *(v25 + 16);
  v207 = v42;
  v216 = v24;
  v209 = v25 + 16;
  v208 = v44;
  v44(v40, &v41[v42], v24);
  v210 = v43;
  os_unfair_lock_unlock(&v41[v43]);
  v45 = sub_225CCD934();
  v46 = sub_225CCED04();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2259A7000, v45, v46, "ISO18013DocumentValidator begin validating consistency of response.", v47, 2u);
    v48 = v47;
    v4 = v3;
    MEMORY[0x22AA6F950](v48, -1, -1);
  }

  v215 = v4;

  v49 = *(v25 + 8);
  v211 = v25 + 8;
  v49(v40, v216);
  v50 = *a1;
  v51 = a1[1];
  v52 = *a1 == 0xD000000000000015;
  v205 = v49;
  if (v52 && 0x8000000225D0AC40 == v51 || (sub_225CCF934() & 1) != 0)
  {
    v53 = v214;
    sub_225BE99D4(3, v214);
    v54 = sub_225BE9F20(5);
    v56 = v55;
    v57 = sub_225BE9F20(22);
LABEL_10:
    v204 = v57;
    v59 = v58;
    v60 = v213;
    v61 = v212;
    goto LABEL_11;
  }

  if ((v50 != 0xD000000000000016 || 0x8000000225D0AC60 != v51) && (sub_225CCF934() & 1) == 0)
  {
    if ((v50 != 0xD000000000000017 || 0x8000000225D0AC80 != v51) && (sub_225CCF934() & 1) == 0)
    {
      v182 = v210;
      os_unfair_lock_lock(&v41[v210]);
      v183 = v196;
      v184 = v216;
      v208(v196, &v41[v207], v216);
      os_unfair_lock_unlock(&v41[v182]);
      v185 = v195;
      sub_225BEB7CC(a1, v195, type metadata accessor for ISO18013Response.Document);
      v186 = sub_225CCD934();
      v187 = sub_225CCED04();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v219.data = v189;
        *v188 = 136315138;
        v190 = *v185;
        v191 = v185[1];

        sub_225BEB720(v185, type metadata accessor for ISO18013Response.Document);
        v192 = sub_2259BE198(v190, v191, &v219);

        *(v188 + 4) = v192;
        _os_log_impl(&dword_2259A7000, v186, v187, "ISO18013DocumentValidator skipping consistency check on document with type %s", v188, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v189);
        MEMORY[0x22AA6F950](v189, -1, -1);
        MEMORY[0x22AA6F950](v188, -1, -1);

        v193 = v196;
      }

      else
      {

        sub_225BEB720(v185, type metadata accessor for ISO18013Response.Document);
        v193 = v183;
      }

      v49(v193, v184);
      return;
    }

    v53 = v214;
    sub_225BEA430(13, v214);
    v54 = sub_225BEA984(17);
    v56 = v167;
    v57 = sub_225BEA984(16);
    goto LABEL_10;
  }

  v61 = v212;
  v53 = v214;
  v60 = v213;
  (*(v212 + 56))(v214, 1, 1, v213);
  v204 = 0;
  v59 = 0;
  v54 = 0;
  v56 = 0;
LABEL_11:
  sub_225A0DE54(v53, v20, &unk_27D73FD00);
  if ((*(v61 + 48))(v20, 1, v60) == 1)
  {
    sub_2259CB640(v20, &unk_27D73FD00);
    if (!v56)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v62 = v54;
    v63 = v203;
    (*(v61 + 32))(v203, v20, v60);
    type metadata accessor for ISO18013MobileSecurityObject(0);
    v64 = v200;
    type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
    if ((sub_225CCD054() & 1) == 0)
    {

      v70 = v210;
      os_unfair_lock_lock(&v41[v210]);
      v71 = v201;
      v72 = v216;
      v208(v201, &v41[v207], v216);
      os_unfair_lock_unlock(&v41[v70]);
      MEMORY[0x28223BE20](v73, v74);
      *(&v194 - 2) = v63;
      *(&v194 - 1) = v64;
      Logger.sensitive(_:)(sub_225BEB718);
      v205(v71, v72);
      v216 = 0x8000000225D23E10;
      v75 = MEMORY[0x277D84F90];
      v76 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v77 = swift_allocError();
      v79 = v78;
      v80 = sub_225CCE954();
      v81 = *(v80 - 8);
      v82 = v202;
      (*(v81 + 56))(v202, 1, 1, v80);
      LODWORD(v80) = (*(v81 + 48))(v82, 1, v80);
      sub_2259CB640(v82, &unk_27D73B050);
      if (v80)
      {
        v83 = 797;
      }

      else
      {
        v83 = 23;
      }

      v84 = sub_225B2C374(v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219.data = v84;
      sub_225B2C4A0(v76, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v219);

      data = v219.data;
      v87 = sub_225B29AA0(0, 1, 1, v75);
      v89 = *(v87 + 2);
      v88 = *(v87 + 3);
      if (v89 >= v88 >> 1)
      {
        v87 = sub_225B29AA0((v88 > 1), v89 + 1, 1, v87);
      }

      *(v87 + 2) = v89 + 1;
      v90 = &v87[56 * v89];
      *(v90 + 4) = 0xD000000000000024;
      *(v90 + 5) = 0x8000000225D23EF0;
      *(v90 + 6) = 0xD00000000000002DLL;
      *(v90 + 7) = 0x8000000225D23C90;
      v211 = 0x8000000225D23C90;
      v91 = v216;
      *(v90 + 8) = 0xD000000000000036;
      *(v90 + 9) = v91;
      *(v90 + 10) = 243;
      *v79 = v83;
      *(v79 + 8) = v87;
      *(v79 + 16) = 0xD000000000000024;
      *(v79 + 24) = 0x8000000225D23EF0;
      *(v79 + 32) = data;
      *(v79 + 40) = 0;
      swift_willThrow();
      sub_2259CB640(v214, &unk_27D73FD00);
      (*(v212 + 8))(v203, v213);
      goto LABEL_48;
    }

    (*(v61 + 8))(v63, v60);
    v54 = v62;
    v53 = v214;
    if (!v56)
    {
      goto LABEL_33;
    }
  }

  v219 = oidCountryName;

  v65 = SecCertificateCopySubjectAttributeValue();
  if (v65)
  {
    v66 = v65;
    v67 = sub_225CCE474();
    v69 = v68;

    if (v54 == v67 && v56 == v69)
    {
      swift_bridgeObjectRelease_n();
LABEL_32:

LABEL_33:
      v93 = v216;
      v94 = v205;
      if (!v59)
      {
LABEL_53:
        v146 = v210;
        os_unfair_lock_lock(&v41[v210]);
        v147 = v199;
        v208(v199, &v41[v207], v93);
        os_unfair_lock_unlock(&v41[v146]);
        v148 = sub_225CCD934();
        v149 = sub_225CCED04();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&dword_2259A7000, v148, v149, "ISO18013DocumentValidator successfully validated consistency of response.", v150, 2u);
          MEMORY[0x22AA6F950](v150, -1, -1);
        }

        v94(v147, v93);
        sub_2259CB640(v53, &unk_27D73FD00);
        return;
      }

      v219 = oidStateOrProvinceName;
      v95 = SecCertificateCopySubjectAttributeValue();
      if (!v95)
      {
LABEL_52:

        goto LABEL_53;
      }

      v96 = v95;
      v213 = sub_225CCE474();
      v98 = v97;

      v99 = v210;
      os_unfair_lock_lock(&v41[v210]);
      v208(v198, &v41[v207], v93);
      os_unfair_lock_unlock(&v41[v99]);
      v100 = sub_225CCD934();
      v101 = sub_225CCED04();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_2259A7000, v100, v101, "ISO18013DocumentValidator performing issuing jurisdiction consistency check.", v102, 2u);
        v53 = v214;
        MEMORY[0x22AA6F950](v102, -1, -1);
      }

      v93 = v216;
      v94(v198, v216);
      v103 = v204;
      if (v204 == v213 && v59 == v98 || (sub_225CCF934() & 1) != 0)
      {

        goto LABEL_52;
      }

      v168 = v210;
      os_unfair_lock_lock(&v41[v210]);
      v169 = v201;
      v208(v201, &v41[v207], v93);
      os_unfair_lock_unlock(&v41[v168]);
      sub_225B414AC(v169, v103, v59, v213, v98);

      v94(v169, v93);
      v108 = 0x8000000225D23DB0;
      v211 = 0x8000000225D23C90;
      v216 = 0x8000000225D23E10;
      v170 = MEMORY[0x277D84F90];
      v171 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v77 = swift_allocError();
      v112 = v172;
      v173 = sub_225CCE954();
      v174 = *(v173 - 8);
      v175 = v202;
      (*(v174 + 56))(v202, 1, 1, v173);
      LODWORD(v173) = (*(v174 + 48))(v175, 1, v173);
      sub_2259CB640(v175, &unk_27D73B050);
      if (v173)
      {
        v116 = 796;
      }

      else
      {
        v116 = 23;
      }

      v176 = sub_225B2C374(v170);
      v177 = swift_isUniquelyReferenced_nonNull_native();
      v219.data = v176;
      sub_225B2C4A0(v171, sub_225B2AC40, 0, v177, &v219);

      v119 = v219.data;
      v120 = sub_225B29AA0(0, 1, 1, v170);
      v179 = *(v120 + 2);
      v178 = *(v120 + 3);
      if (v179 >= v178 >> 1)
      {
        v120 = sub_225B29AA0((v178 > 1), v179 + 1, 1, v120);
      }

      *(v120 + 2) = v179 + 1;
      v123 = &v120[56 * v179];
      v124 = 0xD000000000000052;
      *(v123 + 4) = 0xD000000000000052;
      *(v123 + 5) = 0x8000000225D23DB0;
      v180 = v211;
      *(v123 + 6) = 0xD00000000000002DLL;
      *(v123 + 7) = v180;
      v181 = v216;
      *(v123 + 8) = 0xD000000000000036;
      *(v123 + 9) = v181;
      v126 = 260;
      goto LABEL_47;
    }

    v92 = sub_225CCF934();

    if (v92)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v104 = v210;
  os_unfair_lock_lock(&v41[v210]);
  v105 = v201;
  v106 = v216;
  v208(v201, &v41[v207], v216);
  os_unfair_lock_unlock(&v41[v104]);
  v107 = v206;
  sub_225B412A4(v105, v54, v56);

  v205(v105, v106);
  v108 = 0x8000000225D23EA0;
  v216 = 0x8000000225D23E10;
  v109 = MEMORY[0x277D84F90];
  v110 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v77 = swift_allocError();
  v112 = v111;
  v113 = sub_225CCE954();
  v114 = *(v113 - 8);
  v115 = v202;
  (*(v114 + 56))(v202, 1, 1, v113);
  LODWORD(v113) = (*(v114 + 48))(v115, 1, v113);
  sub_2259CB640(v115, &unk_27D73B050);
  if (v113)
  {
    v116 = 795;
  }

  else
  {
    v116 = 23;
  }

  v117 = sub_225B2C374(v109);
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v219.data = v117;
  sub_225B2C4A0(v110, sub_225B2AC40, 0, v118, &v219);

  v119 = v219.data;
  v120 = sub_225B29AA0(0, 1, 1, v109);
  v122 = *(v120 + 2);
  v121 = *(v120 + 3);
  if (v122 >= v121 >> 1)
  {
    v120 = sub_225B29AA0((v121 > 1), v122 + 1, 1, v120);
  }

  *(v120 + 2) = v122 + 1;
  v123 = &v120[56 * v122];
  v124 = 0xD000000000000045;
  *(v123 + 4) = 0xD000000000000045;
  *(v123 + 5) = 0x8000000225D23EA0;
  *(v123 + 6) = 0xD00000000000002DLL;
  *(v123 + 7) = 0x8000000225D23C90;
  v211 = 0x8000000225D23C90;
  v125 = v216;
  *(v123 + 8) = 0xD000000000000036;
  *(v123 + 9) = v125;
  v126 = 251;
LABEL_47:
  *(v123 + 10) = v126;
  *v112 = v116;
  *(v112 + 8) = v120;
  *(v112 + 16) = v124;
  *(v112 + 24) = v108;
  *(v112 + 32) = v119;
  *(v112 + 40) = 0;
  swift_willThrow();
  sub_2259CB640(v214, &unk_27D73FD00);
LABEL_48:
  v214 = 0x8000000225D23E50;
  v127 = v77;
  v128 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v129 = swift_allocError();
  v131 = v130;
  swift_getErrorValue();
  v132 = v218;
  v133 = v77;
  sub_225B21FAC(v132, &v219);

  length = v219.length;
  v215 = v129;
  if (v219.length)
  {
    v135 = v77;
    v213 = v219.data;
    v136 = v220;
    v137 = v221;
    v138 = v222;
    v139 = v223;
  }

  else
  {
    v219.data = v77;
    v140 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    v139 = v77;
    if (swift_dynamicCast())
    {
      v141 = v217;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v143 = [v141 code];
      v144 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v144;
      *(inited + 40) = v143;
      v138 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v145 = v77;
      v213 = 0;
      v136 = 0;
      v137 = 0;
      length = MEMORY[0x277D84F90];
      v135 = v139;
    }

    else
    {
      v219.data = v77;
      v151 = v77;
      v152 = sub_225CCE954();
      v212 = 0;
      v153 = v77;
      v154 = v197;
      v155 = swift_dynamicCast();
      v156 = *(v152 - 8);
      (*(v156 + 56))(v154, v155 ^ 1u, 1, v152);
      LODWORD(v156) = (*(v156 + 48))(v154, 1, v152);
      sub_2259CB640(v154, &unk_27D73B050);
      if (v156)
      {
        v157 = 0;
      }

      else
      {
        v157 = 23;
      }

      v213 = v157;
      length = MEMORY[0x277D84F90];
      v138 = sub_225B2C374(MEMORY[0x277D84F90]);
      v158 = v77;
      v136 = 0xD000000000000042;
      v137 = v214;
      v135 = v153;
      v139 = v153;
    }
  }

  v159 = swift_isUniquelyReferenced_nonNull_native();
  v219.data = v138;
  sub_225B2C4A0(v128, sub_225B2AC40, 0, v159, &v219);

  v160 = v219.data;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    length = sub_225B29AA0(0, *(length + 2) + 1, 1, length);
  }

  v162 = *(length + 2);
  v161 = *(length + 3);
  if (v162 >= v161 >> 1)
  {
    length = sub_225B29AA0((v161 > 1), v162 + 1, 1, length);
  }

  *(length + 2) = v162 + 1;
  v163 = &length[56 * v162];
  v164 = v214;
  *(v163 + 4) = 0xD000000000000042;
  *(v163 + 5) = v164;
  v165 = v211;
  *(v163 + 6) = 0xD00000000000002DLL;
  *(v163 + 7) = v165;
  v166 = v216;
  *(v163 + 8) = 0xD000000000000036;
  *(v163 + 9) = v166;
  *(v163 + 10) = 266;
  *v131 = v213;
  *(v131 + 8) = length;
  *(v131 + 16) = v136;
  *(v131 + 24) = v137;
  *(v131 + 32) = v160;
  *(v131 + 40) = v139;
  swift_willThrow();
}

uint64_t sub_225BE9864()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000033, 0x8000000225D241F0);
  sub_225CCD0B4();
  sub_225BEB788(&qword_27D73FCC0);
  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D24230);
  type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D24250);
  v2 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v2);

  return 0;
}

uint64_t sub_225BE99D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ISO18013IssuerSignedItem();
  MEMORY[0x28223BE20](v44, v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v47 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v42 - v20;
  v22 = *v2;
  if (!v22 || !*(v22 + 16) || (sub_2259F18D4(0xD000000000000011, 0x8000000225D0ACA0), (v23 & 1) == 0) || (result = ) == 0)
  {
    (*(v11 + 56))(v21, 1, 1, v10);
LABEL_16:
    sub_225A0DE54(v21, v18, &qword_27D73FCB8);
    if ((*(v11 + 48))(v18, 1, v10) == 1)
    {
      sub_2259CB640(v21, &qword_27D73FCB8);
      sub_2259CB640(v18, &qword_27D73FCB8);
      memset(v48, 0, sizeof(v48));
    }

    else
    {
      v38 = v45;
      sub_225BEB7CC(&v18[*(v10 + 48)], v45, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v18, &qword_27D73B3D0);
      v39 = v46;
      sub_225BEB7CC(v38 + *(v44 + 28), v46, type metadata accessor for AnyCodable);
      sub_225BEB720(v38, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v48);
      sub_225BEB720(v39, type metadata accessor for AnyCodable);
      sub_2259CB640(v21, &qword_27D73FCB8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
    v40 = sub_225CCD0B4();
    v41 = swift_dynamicCast();
    return (*(*(v40 - 8) + 56))(a2, v41 ^ 1u, 1, v40);
  }

  v25 = *(result + 16);
  v42 = a2;
  v43 = v25;
  if (!v25)
  {
LABEL_14:

    (*(v11 + 56))(v21, 1, 1, v10);
LABEL_22:
    a2 = v42;
    goto LABEL_16;
  }

  v26 = 0;
  while (v26 < *(result + 16))
  {
    v27 = v21;
    v28 = result;
    v29 = v47;
    sub_225A0DE54(result + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v47, &qword_27D73B3D0);
    v30 = a1;
    LOBYTE(v48[0]) = a1;
    v31 = v10;
    v32 = v29 + *(v10 + 48);
    v34 = *(v32 + 24);
    v33 = *(v32 + 32);
    if (v34 == ISO18013_5_1_ElementIdentifier.rawValue.getter() && v33 == v35)
    {

LABEL_21:

      v10 = v31;
      v21 = v27;
      sub_225A47298(v47, v27);
      (*(v11 + 56))(v27, 0, 1, v31);
      goto LABEL_22;
    }

    v37 = sub_225CCF934();

    if (v37)
    {
      goto LABEL_21;
    }

    ++v26;
    sub_2259CB640(v47, &qword_27D73B3D0);
    a1 = v30;
    v21 = v27;
    v10 = v31;
    result = v28;
    if (v43 == v26)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225BE9F20(uint64_t a1)
{
  v3 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ISO18013IssuerSignedItem();
  MEMORY[0x28223BE20](v41, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v43 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v38 - v19;
  v21 = *v1;
  if (!v21 || !*(v21 + 16) || (sub_2259F18D4(0xD000000000000011, 0x8000000225D0ACA0), (v22 & 1) == 0) || (result = ) == 0)
  {
    (*(v10 + 56))(v20, 1, 1, v9);
LABEL_16:
    sub_225A0DE54(v20, v17, &qword_27D73FCB8);
    if ((*(v10 + 48))(v17, 1, v9) == 1)
    {
      sub_2259CB640(v20, &qword_27D73FCB8);
      sub_2259CB640(v17, &qword_27D73FCB8);
      memset(v44, 0, sizeof(v44));
    }

    else
    {
      v37 = v42;
      sub_225BEB7CC(&v17[*(v9 + 48)], v42, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v17, &qword_27D73B3D0);
      sub_225BEB7CC(v37 + *(v41 + 28), v6, type metadata accessor for AnyCodable);
      sub_225BEB720(v37, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v44);
      sub_225BEB720(v6, type metadata accessor for AnyCodable);
      sub_2259CB640(v20, &qword_27D73FCB8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
    if (swift_dynamicCast())
    {
      return v45;
    }

    else
    {
      return 0;
    }
  }

  v24 = *(result + 16);
  v39 = v6;
  v40 = v24;
  if (!v24)
  {
LABEL_14:

    (*(v10 + 56))(v20, 1, 1, v9);
LABEL_24:
    v6 = v39;
    goto LABEL_16;
  }

  v25 = 0;
  while (v25 < *(result + 16))
  {
    v26 = v20;
    v27 = result;
    v28 = v43;
    sub_225A0DE54(result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v43, &qword_27D73B3D0);
    v29 = a1;
    LOBYTE(v44[0]) = a1;
    v30 = v9;
    v31 = v28 + *(v9 + 48);
    v33 = *(v31 + 24);
    v32 = *(v31 + 32);
    if (v33 == ISO18013_5_1_ElementIdentifier.rawValue.getter() && v32 == v34)
    {

LABEL_23:

      v9 = v30;
      v20 = v26;
      sub_225A47298(v43, v26);
      (*(v10 + 56))(v26, 0, 1, v30);
      goto LABEL_24;
    }

    v36 = sub_225CCF934();

    if (v36)
    {
      goto LABEL_23;
    }

    ++v25;
    sub_2259CB640(v43, &qword_27D73B3D0);
    a1 = v29;
    v20 = v26;
    v9 = v30;
    result = v27;
    if (v40 == v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225BEA430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ISO18013IssuerSignedItem();
  MEMORY[0x28223BE20](v44, v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v47 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v42 - v20;
  v22 = *v2;
  if (!v22 || !*(v22 + 16) || (sub_2259F18D4(0x2E6F73692E67726FLL, 0xEF312E3032323332), (v23 & 1) == 0) || (result = ) == 0)
  {
    (*(v11 + 56))(v21, 1, 1, v10);
LABEL_16:
    sub_225A0DE54(v21, v18, &qword_27D73FCB8);
    if ((*(v11 + 48))(v18, 1, v10) == 1)
    {
      sub_2259CB640(v21, &qword_27D73FCB8);
      sub_2259CB640(v18, &qword_27D73FCB8);
      memset(v48, 0, sizeof(v48));
    }

    else
    {
      v38 = v45;
      sub_225BEB7CC(&v18[*(v10 + 48)], v45, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v18, &qword_27D73B3D0);
      v39 = v46;
      sub_225BEB7CC(v38 + *(v44 + 28), v46, type metadata accessor for AnyCodable);
      sub_225BEB720(v38, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v48);
      sub_225BEB720(v39, type metadata accessor for AnyCodable);
      sub_2259CB640(v21, &qword_27D73FCB8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
    v40 = sub_225CCD0B4();
    v41 = swift_dynamicCast();
    return (*(*(v40 - 8) + 56))(a2, v41 ^ 1u, 1, v40);
  }

  v25 = *(result + 16);
  v42 = a2;
  v43 = v25;
  if (!v25)
  {
LABEL_14:

    (*(v11 + 56))(v21, 1, 1, v10);
LABEL_22:
    a2 = v42;
    goto LABEL_16;
  }

  v26 = 0;
  while (v26 < *(result + 16))
  {
    v27 = v21;
    v28 = result;
    v29 = v47;
    sub_225A0DE54(result + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v47, &qword_27D73B3D0);
    v30 = a1;
    LOBYTE(v48[0]) = a1;
    v31 = v10;
    v32 = v29 + *(v10 + 48);
    v34 = *(v32 + 24);
    v33 = *(v32 + 32);
    if (v34 == ISO23220_1_ElementIdentifier.rawValue.getter() && v33 == v35)
    {

LABEL_21:

      v10 = v31;
      v21 = v27;
      sub_225A47298(v47, v27);
      (*(v11 + 56))(v27, 0, 1, v31);
      goto LABEL_22;
    }

    v37 = sub_225CCF934();

    if (v37)
    {
      goto LABEL_21;
    }

    ++v26;
    sub_2259CB640(v47, &qword_27D73B3D0);
    a1 = v30;
    v21 = v27;
    v10 = v31;
    result = v28;
    if (v43 == v26)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225BEA984(uint64_t a1)
{
  v3 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ISO18013IssuerSignedItem();
  MEMORY[0x28223BE20](v41, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v43 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v38 - v19;
  v21 = *v1;
  if (!v21 || !*(v21 + 16) || (sub_2259F18D4(0x2E6F73692E67726FLL, 0xEF312E3032323332), (v22 & 1) == 0) || (result = ) == 0)
  {
    (*(v10 + 56))(v20, 1, 1, v9);
LABEL_16:
    sub_225A0DE54(v20, v17, &qword_27D73FCB8);
    if ((*(v10 + 48))(v17, 1, v9) == 1)
    {
      sub_2259CB640(v20, &qword_27D73FCB8);
      sub_2259CB640(v17, &qword_27D73FCB8);
      memset(v44, 0, sizeof(v44));
    }

    else
    {
      v37 = v42;
      sub_225BEB7CC(&v17[*(v9 + 48)], v42, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v17, &qword_27D73B3D0);
      sub_225BEB7CC(v37 + *(v41 + 28), v6, type metadata accessor for AnyCodable);
      sub_225BEB720(v37, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v44);
      sub_225BEB720(v6, type metadata accessor for AnyCodable);
      sub_2259CB640(v20, &qword_27D73FCB8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
    if (swift_dynamicCast())
    {
      return v45;
    }

    else
    {
      return 0;
    }
  }

  v24 = *(result + 16);
  v39 = v6;
  v40 = v24;
  if (!v24)
  {
LABEL_14:

    (*(v10 + 56))(v20, 1, 1, v9);
LABEL_24:
    v6 = v39;
    goto LABEL_16;
  }

  v25 = 0;
  while (v25 < *(result + 16))
  {
    v26 = v20;
    v27 = result;
    v28 = v43;
    sub_225A0DE54(result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v43, &qword_27D73B3D0);
    v29 = a1;
    LOBYTE(v44[0]) = a1;
    v30 = v9;
    v31 = v28 + *(v9 + 48);
    v33 = *(v31 + 24);
    v32 = *(v31 + 32);
    if (v33 == ISO23220_1_ElementIdentifier.rawValue.getter() && v32 == v34)
    {

LABEL_23:

      v9 = v30;
      v20 = v26;
      sub_225A47298(v43, v26);
      (*(v10 + 56))(v26, 0, 1, v30);
      goto LABEL_24;
    }

    v36 = sub_225CCF934();

    if (v36)
    {
      goto LABEL_23;
    }

    ++v25;
    sub_2259CB640(v43, &qword_27D73B3D0);
    a1 = v29;
    v20 = v26;
    v9 = v30;
    result = v27;
    if (v40 == v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225BEAE9C()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000025, 0x8000000225D23F20);
  sub_225CCD0B4();
  sub_225BEB788(&qword_27D73FCC0);
  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D23F50);
  type metadata accessor for ISO18013MobileSecurityObject(0);
  type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  return 0;
}

uint64_t sub_225BEAFD0(uint64_t a1, uint64_t a2)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000029, 0x8000000225D23F70);
  MEMORY[0x22AA6CE70](a1, a2);
  MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D23FA0);
  v4 = SecCertificateCopySubjectAttributeValue();
  if (v4)
  {
    v5 = v4;
    v6 = sub_225CCE474();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x22AA6CE70](v6, v8);

  return 0;
}

uint64_t sub_225BEB10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000002ELL, 0x8000000225D23FD0);
  MEMORY[0x22AA6CE70](a1, a2);
  MEMORY[0x22AA6CE70](0xD000000000000033, 0x8000000225D24000);
  MEMORY[0x22AA6CE70](a3, a4);
  return 0;
}

uint64_t sub_225BEB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A13BBC;

  return ISO18013DocumentValidator.authenticateDocument(_:issuerCertificateChain:)(a1, a2, a3);
}

uint64_t sub_225BEB284(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_225BEB660(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2259BEF00(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_225ABC240(v13, a3, a4, &v12);
  v10 = v4;
  sub_2259BEF00(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_225BEB414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013MobileSecurityObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ISO18013DocumentValidating.authenticateDocument(_:issuerCertificateChain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A206E8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_225BEB5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_225BEB604(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_225BEB660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_225CCCA44();
  v11 = result;
  if (result)
  {
    result = sub_225CCCA74();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_225CCCA64();
  sub_225ABC240(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_225BEB720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225BEB788(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_225CCD0B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225BEB7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225BEB8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_225CCE434();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_225CCE3D4();
  if (qword_28105B8B8 != -1)
  {
    swift_once();
  }

  v11 = qword_28105E338;
  sub_225CCD1B4();
  result = sub_225CCE4E4();
  *a4 = result;
  *a5 = v13;
  return result;
}

uint64_t sub_225BEBA1C(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t UserNotificationAction.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

CoreIDVShared::UserNotificationCategory_optional __swiftcall UserNotificationCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

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

unint64_t UserNotificationCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000049;
  }

  else
  {
    return 0xD000000000000034;
  }
}

uint64_t sub_225BEBBC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000049;
  }

  else
  {
    v3 = 0xD000000000000034;
  }

  if (v2)
  {
    v4 = "ssEqual";
  }

  else
  {
    v4 = "ion-category.default";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000049;
  }

  else
  {
    v6 = 0xD000000000000034;
  }

  if (*a2)
  {
    v7 = "ion-category.default";
  }

  else
  {
    v7 = "ssEqual";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_225CCF934();
  }

  return v9 & 1;
}

uint64_t sub_225BEBC6C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BEBCEC()
{
  sub_225CCE5B4();
}

uint64_t sub_225BEBD58()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BEBDD4@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

void sub_225BEBE34(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000049;
  }

  else
  {
    v2 = 0xD000000000000034;
  }

  if (*v1)
  {
    v3 = "ion-category.default";
  }

  else
  {
    v3 = "ssEqual";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t UserNotificationRequest.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserNotificationRequest.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotificationRequest.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserNotificationRequest.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserNotificationRequest.iconSystemImageName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UserNotificationRequest.iconSystemImageName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t UserNotificationRequest.identifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t UserNotificationRequest.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t UserNotificationRequest.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserNotificationRequest(0) + 48);

  return sub_225A94014(v3, a1);
}

uint64_t UserNotificationRequest.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for UserNotificationRequest(0) + 48);

  return sub_225BEC214(a1, v3);
}

uint64_t sub_225BEC214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UserNotificationRequest.init(title:body:category:iconSystemImageName:defaultActionRequiresAuthentication:identifier:playSound:isTimeSensitive:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, uint64_t a14)
{
  v19 = *a5;
  v20 = *(type metadata accessor for UserNotificationRequest(0) + 48);
  v21 = sub_225CCD0B4();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v19;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 81) = a13;

  return sub_225BEC214(a14, a9 + v20);
}

uint64_t UserNotificationRequest.hash(into:)()
{
  v1 = sub_225CCD0B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  sub_225CCE5B4();
  sub_225CCE5B4();
  sub_225CCE5B4();

  if (*(v0 + 48))
  {
    sub_225CCFBF4();
    sub_225CCE5B4();
  }

  else
  {
    sub_225CCFBF4();
  }

  sub_225CCFBF4();
  sub_225CCE5B4();
  sub_225CCFBF4();
  sub_225CCFBF4();
  v10 = type metadata accessor for UserNotificationRequest(0);
  sub_225A94014(v0 + *(v10 + 48), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_225CCFBF4();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_225CCFBF4();
  sub_225BEE864(&qword_27D73D1C0, MEMORY[0x277CC9578]);
  sub_225CCE354();
  return (*(v2 + 8))(v5, v1);
}

uint64_t UserNotificationRequest.hashValue.getter()
{
  sub_225CCFBD4();
  UserNotificationRequest.hash(into:)();
  return sub_225CCFC24();
}

uint64_t sub_225BEC6AC()
{
  sub_225CCFBD4();
  UserNotificationRequest.hash(into:)();
  return sub_225CCFC24();
}

uint64_t sub_225BEC6F0()
{
  sub_225CCFBD4();
  UserNotificationRequest.hash(into:)();
  return sub_225CCFC24();
}

uint64_t UserNotificationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  UserNotificationManager.init()();
  return v0;
}

uint64_t UserNotificationManager.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_225CCE444();
  v4 = [v2 initWithBundleIdentifier_];

  *(v1 + 16) = v4;
  v5 = [objc_allocWithZone(type metadata accessor for UserNotificationManagerDelegate()) init];
  *(v1 + 24) = v5;
  [*(v1 + 16) setDelegate_];
  v15 = MEMORY[0x277D84F90];
  v6 = *(v1 + 16);
  sub_225CCF394();
  v7 = objc_allocWithZone(MEMORY[0x277CE1F50]);
  v8 = sub_225CCE444();
  v9 = [v7 initWithIdentifier_];

  [v9 setOptions_];
  sub_225CCF364();
  sub_225CCF3A4();
  sub_225CCF3B4();
  sub_225CCF374();
  v10 = objc_allocWithZone(MEMORY[0x277CE1F50]);
  v11 = sub_225CCE444();
  v12 = [v10 initWithIdentifier_];

  [v12 setOptions_];
  sub_225CCF364();
  sub_225CCF3A4();
  sub_225CCF3B4();
  sub_225CCF374();
  sub_225BEE6B8(v15);

  sub_225BEE818();
  sub_225BEE864(&qword_281059AA8, sub_225BEE818);
  v13 = sub_225CCEBE4();

  [v6 setNotificationCategories_];

  [*(v1 + 16) setWantsNotificationResponsesDelivered];
  return v1;
}

uint64_t UserNotificationManager.addNotification(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225BECB18, 0, 0);
}

uint64_t sub_225BECB18()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v0[24] = v2;
  v3 = sub_225CCE444();
  [v2 setBody_];

  v4 = sub_225CCE444();

  [v2 setCategoryIdentifier_];

  if (*(v1 + 48))
  {
    v5 = sub_225CCE444();
    v6 = [objc_opt_self() iconForSystemImageNamed_];
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[18];
  [v2 setIcon_];

  [v2 setShouldAuthenticateDefaultAction_];
  [v2 setShouldBackgroundDefaultAction_];
  if (*(v7 + 80) == 1)
  {
    v8 = [objc_opt_self() defaultSound];
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[23];
  v10 = v0[18];
  [v2 setSound_];

  v11 = sub_225CCE444();
  [v2 setTitle_];

  v12 = *(v10 + 81);
  [v2 setShouldIgnoreDoNotDisturb_];
  [v2 setShouldIgnoreDowntime_];
  [v2 setInterruptionLevel_];
  v13 = type metadata accessor for UserNotificationRequest(0);
  sub_225A94014(v10 + *(v13 + 48), v9);
  v14 = sub_225CCD0B4();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v9, 1, v14) != 1)
  {
    v17 = v0[23];
    v16 = sub_225CCD034();
    (*(v15 + 8))(v17, v14);
  }

  v19 = v0[21];
  v18 = v0[22];
  v21 = v0[19];
  v20 = v0[20];
  [v2 setExpirationDate_];

  v22 = v2;
  v23 = sub_225CCE444();
  v24 = [objc_opt_self() requestWithIdentifier:v23 content:v22 trigger:0 destinations:15];
  v0[25] = v24;

  v25 = *(v21 + 16);
  v0[2] = v0;
  v0[3] = sub_225BECFD8;
  swift_continuation_init();
  v0[17] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v19 + 32))(boxed_opaque_existential_1, v18, v20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225BED200;
  v0[13] = &block_descriptor_8;
  [v25 addNotificationRequest:v24 withCompletionHandler:?];
  (*(v19 + 8))(boxed_opaque_existential_1, v20);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225BECFD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_225BED16C;
  }

  else
  {
    v2 = sub_225BED0E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225BED0E8()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225BED16C()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_225BED200(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
    sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
    sub_225CCE934();
  }
}

Swift::Void __swiftcall UserNotificationManager.removeDeliveredNotifications(withIdentifiers:)(Swift::OpaquePointer withIdentifiers)
{
  v2 = *(v1 + 16);
  v3 = sub_225CCE7F4();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t UserNotificationManager.makeResponseStream(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v37 = a3;
  v4 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v30 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD20);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - v14;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v16);
  v18 = &v30 - v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FD30);
  v19 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v20);
  v22 = &v30 - v21;
  (*(v12 + 104))(v15, *MEMORY[0x277D85778], v11);
  sub_225CCE9A4();
  (*(v12 + 8))(v15, v11);

  sub_225CCD114();
  *v10 = v32;
  v10[1] = a2;
  v23 = v34;
  v24 = *(*(v34 + 24) + OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations);
  v38 = v10;
  v39 = v18;

  os_unfair_lock_lock(v24 + 6);
  sub_225BEE8E4(&v24[4]);
  os_unfair_lock_unlock(v24 + 6);

  v25 = v33;
  sub_2259F6158(v10, v33);
  v26 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  sub_225A9FBA0(v25, v27 + v26);

  v28 = v31;
  sub_225CCE9B4();
  (*(v19 + 32))(v37, v22, v30);
  sub_2259F61BC(v10);
  return (*(v35 + 8))(v18, v28);
}

uint64_t sub_225BED6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2259F6158(a2, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a3, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  return sub_225A056A4(v8, v12);
}

uint64_t sub_225BED848(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) + OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations);

  os_unfair_lock_lock(v2 + 6);
  sub_225BEF9F4(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_225BED8B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v13 - v5;
  v7 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2259F6158(a2, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  return sub_225A056A4(v6, v10);
}

uint64_t UserNotificationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225BEDA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2259FE39C;

  return UserNotificationManager.addNotification(_:)(a1);
}

void sub_225BEDAE8()
{
  v1 = *(v0 + 16);
  v2 = sub_225CCE7F4();
  [v1 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t sub_225BEDB4C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCD124();
  sub_225BEE864(&qword_27D73FDF0, MEMORY[0x277CC95F0]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225BEDBF4()
{
  sub_225CCE5B4();
  sub_225CCD124();
  sub_225BEE864(&qword_27D73FDF0, MEMORY[0x277CC95F0]);
  return sub_225CCE354();
}

uint64_t sub_225BEDC80()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCD124();
  sub_225BEE864(&qword_27D73FDF0, MEMORY[0x277CC95F0]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225BEDD24(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  return sub_225CCD0E4();
}

uint64_t sub_225BEDF38(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_225BEE008;

  return sub_225BEF0C8(v9);
}

uint64_t sub_225BEE008()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

BOOL _s13CoreIDVShared23UserNotificationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD0B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE28);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_225CCF934() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  v33 = v5;
  if (*(a1 + 32))
  {
    v17 = 0xD000000000000049;
  }

  else
  {
    v17 = 0xD000000000000034;
  }

  if (*(a1 + 32))
  {
    v18 = "ion-category.default";
  }

  else
  {
    v18 = "ssEqual";
  }

  v19 = v18 | 0x8000000000000000;
  if (*(a2 + 32))
  {
    v20 = 0xD000000000000049;
  }

  else
  {
    v20 = 0xD000000000000034;
  }

  if (*(a2 + 32))
  {
    v21 = "ion-category.default";
  }

  else
  {
    v21 = "ssEqual";
  }

  if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
  {
  }

  else
  {
    v22 = sub_225CCF934();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 48);
  v24 = *(a2 + 48);
  if (v23)
  {
    if (!v24 || (*(a1 + 40) != *(a2 + 40) || v23 != v24) && (sub_225CCF934() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56) || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_225CCF934() & 1) == 0 || *(a1 + 80) != *(a2 + 80) || *(a1 + 81) != *(a2 + 81))
  {
    return 0;
  }

  v25 = *(type metadata accessor for UserNotificationRequest(0) + 48);
  v26 = *(v13 + 48);
  sub_225A94014(a1 + v25, v16);
  sub_225A94014(a2 + v25, &v16[v26]);
  v27 = v33;
  v28 = *(v33 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v26], 1, v4) == 1)
    {
      sub_2259CB640(v16, &unk_27D73FD00);
      return 1;
    }

    goto LABEL_41;
  }

  sub_225A94014(v16, v12);
  if (v28(&v16[v26], 1, v4) == 1)
  {
    (*(v27 + 8))(v12, v4);
LABEL_41:
    sub_2259CB640(v16, &qword_27D73FE28);
    return 0;
  }

  (*(v27 + 32))(v8, &v16[v26], v4);
  sub_225BEE864(&unk_27D73FE30, MEMORY[0x277CC9578]);
  v30 = sub_225CCE3C4();
  v31 = *(v27 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_2259CB640(v16, &unk_27D73FD00);
  return (v30 & 1) != 0;
}

uint64_t sub_225BEE6B8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_225CCF144())
  {
    v4 = sub_225BEE818();
    v5 = sub_225BEE864(&qword_281059AA8, sub_225BEE818);
    result = MEMORY[0x22AA6D450](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA6DA80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_225B1C768(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_225CCF144();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_225BEE818()
{
  result = qword_281059AB0;
  if (!qword_281059AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059AB0);
  }

  return result;
}

uint64_t sub_225BEE864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225BEE900(uint64_t a1)
{
  type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v3 = *(v1 + 16);

  return sub_225BED848(a1, v3);
}

unint64_t sub_225BEE978()
{
  result = qword_27D73FD40;
  if (!qword_27D73FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FD40);
  }

  return result;
}

unint64_t sub_225BEE9D0()
{
  result = qword_27D73FD48;
  if (!qword_27D73FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FD48);
  }

  return result;
}

unint64_t sub_225BEEA28()
{
  result = qword_27D73FD50;
  if (!qword_27D73FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FD50);
  }

  return result;
}

void sub_225BEEB1C()
{
  sub_225BEEBD4();
  if (v0 <= 0x3F)
  {
    sub_225A91220();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225BEEBD4()
{
  if (!qword_281059B50)
  {
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_281059B50);
    }
  }
}

uint64_t dispatch thunk of UserNotificationManaging.addNotification(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2259FE39C;

  return v9(a1, a2, a3);
}

uint64_t sub_225BEEDEC()
{
  result = sub_225CCD124();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225BEEEB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2259FE39C;

  return sub_225BEDF38(v2, v3, v5, v4);
}

uint64_t sub_225BEEF70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CBCAA0(v2, v3, v4);
}

uint64_t sub_225BEF030(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA6D450](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_225B1C618(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_225BEF0C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE08);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = *(type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0) - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE10);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225BEF2A4, 0, 0);
}

uint64_t sub_225BEF2A4()
{
  v70 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations);
  KeyPath = swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_225BDF630;
  *(v3 + 24) = KeyPath;

  os_unfair_lock_lock((v1 + 24));
  v4 = 0;
  sub_225BEF940((v1 + 16), &v69);
  os_unfair_lock_unlock((v1 + 24));
  v67 = v0[14];
  v68 = v0;
  v64 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v69;

  v9 = v7 + 64;
  v65 = v7;
  v10 = -1;
  v11 = -1 << *(v7 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v7 + 64);
  v59 = (63 - v11) >> 6;
  v13 = (v5 + 32);
  v63 = v5;
  v66 = (v5 + 8);
  v60 = (v6 + 8);
  v62 = v9;
  v61 = (v5 + 32);
  while (v12)
  {
    v14 = v4;
LABEL_15:
    v17 = v68;
    v19 = v68[12];
    v18 = v68[13];
    v20 = v68[10];
    v21 = v68[7];
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v23 = v22 | (v14 << 6);
    sub_2259F6158(*(v65 + 48) + *(v64 + 72) * v23, v19);
    (*(v63 + 16))(v20, *(v65 + 56) + *(v63 + 72) * v23, v21);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE18);
    v25 = *(v24 + 48);
    sub_225A9FBA0(v19, v18);
    v26 = v18 + v25;
    v13 = v61;
    (*(v63 + 32))(v26, v20, v21);
    (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
    v9 = v62;
LABEL_16:
    v27 = v17[14];
    sub_225BEF984(v17[13], v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE18);
    v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
    v30 = v17[14];
    v31 = v17;
    if (v29 == 1)
    {

      v58 = v17[1];

      return v58();
    }

    v32 = v17[2];
    (*v13)(v17[9], &v30[*(v28 + 48)], v17[7]);
    v33 = *v30;
    v34 = *(v67 + 8);

    sub_2259F61BC(v30);
    v35 = [v32 notification];
    v36 = [v35 request];

    v37 = [v36 identifier];
    v38 = sub_225CCE474();
    v40 = v39;

    if (v33 == v38 && v34 == v40)
    {
    }

    else
    {
      v41 = sub_225CCF934();

      if ((v41 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v42 = [v31[2] actionIdentifier];
    v43 = sub_225CCE474();
    v45 = v44;

    if (sub_225CCE474() == v43 && v46 == v45)
    {

LABEL_25:
      v48 = v31[9];
      v50 = v31[6];
      v49 = v31[7];
      v51 = v31[4];

      *(v31 + 121) = 0;
      sub_225CCE9C4();
      (*v60)(v50, v51);
      goto LABEL_26;
    }

    v47 = sub_225CCF934();

    if (v47)
    {
      goto LABEL_25;
    }

    if (sub_225CCE474() == v43 && v54 == v45)
    {

LABEL_32:
      v48 = v31[9];
      v56 = v31[6];
      v49 = v31[7];
      v57 = v31[4];
      *(v31 + 120) = 1;
      sub_225CCE9C4();
      (*v60)(v56, v57);
LABEL_26:
      result = (*v66)(v48, v49);
    }

    else
    {
      v55 = sub_225CCF934();

      if (v55)
      {
        goto LABEL_32;
      }

LABEL_4:
      result = (*v66)(v31[9], v31[7]);
    }
  }

  if (v59 <= v4 + 1)
  {
    v15 = v4 + 1;
  }

  else
  {
    v15 = v59;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v14 >= v59)
    {
      v17 = v68;
      v52 = v68[13];
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE18);
      (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
      v12 = 0;
      v4 = v16;
      goto LABEL_16;
    }

    v12 = *(v9 + 8 * v14);
    ++v4;
    if (v12)
    {
      v4 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225BEF940@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_225BEF984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225BEFA10()
{
  qword_27D73FE40 = 0x6230303661636235;
  *algn_27D73FE48 = 0xE800000000000000;
  qword_27D73FE50 = 0xD00000000000001FLL;
  unk_27D73FE58 = 0x8000000225D24620;
}

uint64_t static DeviceMigrationMilestone.accountKAKCreated.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FC8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FE48;
  v2 = qword_27D73FE50;
  v3 = unk_27D73FE58;
  *a1 = qword_27D73FE40;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BEFAD4()
{
  qword_27D73FE60 = 0x6265623464636264;
  *algn_27D73FE68 = 0xE800000000000000;
  qword_27D73FE70 = 0xD000000000000021;
  unk_27D73FE78 = 0x8000000225D245F0;
}

uint64_t static DeviceMigrationMilestone.accountKAKRetrieved.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FD0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FE68;
  v2 = qword_27D73FE70;
  v3 = unk_27D73FE78;
  *a1 = qword_27D73FE60;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

CoreIDVShared::Milestone __swiftcall Milestone.init(tag:description:)(Swift::String tag, Swift::String description)
{
  *v2 = tag;
  v2[1] = description;
  result.description = description;
  result.tag = tag;
  return result;
}

void sub_225BEFBD0()
{
  qword_27D73FE80 = 0x3263316330383734;
  *algn_27D73FE88 = 0xE800000000000000;
  qword_27D73FE90 = 0xD000000000000030;
  unk_27D73FE98 = 0x8000000225D24BB0;
}

uint64_t static MobileDocumentReaderMilestone.readerIdentifierCalled.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FE88;
  v2 = qword_27D73FE90;
  v3 = unk_27D73FE98;
  *a1 = qword_27D73FE80;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BEFC94()
{
  qword_27D73FEA0 = 0x3465343466356666;
  *algn_27D73FEA8 = 0xE800000000000000;
  qword_27D73FEB0 = 0xD000000000000027;
  unk_27D73FEB8 = 0x8000000225D24B80;
}

uint64_t static MobileDocumentReaderMilestone.prepareCalled.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FEA8;
  v2 = qword_27D73FEB0;
  v3 = unk_27D73FEB8;
  *a1 = qword_27D73FEA0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BEFD58()
{
  qword_27D73FEC0 = 0x6430316161326630;
  *algn_27D73FEC8 = 0xE800000000000000;
  qword_27D73FED0 = 0xD00000000000002ELL;
  unk_27D73FED8 = 0x8000000225D24B50;
}

uint64_t static MobileDocumentReaderMilestone.merchantCalled.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FEC8;
  v2 = qword_27D73FED0;
  v3 = unk_27D73FED8;
  *a1 = qword_27D73FEC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BEFE1C()
{
  qword_27D73FEE0 = 0x3238363537383936;
  *algn_27D73FEE8 = 0xE800000000000000;
  qword_27D73FEF0 = 0xD00000000000002CLL;
  unk_27D73FEF8 = 0x8000000225D24B20;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentCalled.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FEE8;
  v2 = qword_27D73FEF0;
  v3 = unk_27D73FEF8;
  *a1 = qword_27D73FEE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BEFEE0()
{
  qword_27D73FF00 = 0x3661626533643933;
  *algn_27D73FF08 = 0xE800000000000000;
  qword_27D73FF10 = 0xD00000000000002FLL;
  unk_27D73FF18 = 0x8000000225D24AF0;
}

uint64_t static MobileDocumentReaderMilestone.canRequestDocumentCalled.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739FF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF08;
  v2 = qword_27D73FF10;
  v3 = unk_27D73FF18;
  *a1 = qword_27D73FF00;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BEFFA4()
{
  qword_27D73FF20 = 0x6331386165316233;
  *algn_27D73FF28 = 0xE800000000000000;
  qword_27D73FF30 = 0xD00000000000002ALL;
  unk_27D73FF38 = 0x8000000225D24AC0;
}

uint64_t static MobileDocumentReaderMilestone.cancelReadCalled.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A000 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF28;
  v2 = qword_27D73FF30;
  v3 = unk_27D73FF38;
  *a1 = qword_27D73FF20;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0068()
{
  qword_27D73FF40 = 0x3133653862306436;
  *algn_27D73FF48 = 0xE800000000000000;
  qword_27D73FF50 = 0xD000000000000044;
  unk_27D73FF58 = 0x8000000225D24A70;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentInProgress.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A008 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF48;
  v2 = qword_27D73FF50;
  v3 = unk_27D73FF58;
  *a1 = qword_27D73FF40;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF012C()
{
  qword_27D73FF60 = 0x3763396539636537;
  *algn_27D73FF68 = 0xE800000000000000;
  qword_27D73FF70 = 0xD00000000000004ALL;
  unk_27D73FF78 = 0x8000000225D24A20;
}

uint64_t static MobileDocumentReaderMilestone.noReadInProgressToCancel.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A010 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF68;
  v2 = qword_27D73FF70;
  v3 = unk_27D73FF78;
  *a1 = qword_27D73FF60;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF01F0()
{
  qword_27D73FF80 = 0x6134613935316464;
  *algn_27D73FF88 = 0xE800000000000000;
  qword_27D73FF90 = 0xD000000000000024;
  unk_27D73FF98 = 0x8000000225D249F0;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentReaderReady.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A018 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF88;
  v2 = qword_27D73FF90;
  v3 = unk_27D73FF98;
  *a1 = qword_27D73FF80;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF02B4()
{
  qword_27D73FFA0 = 0x3731383135623932;
  *algn_27D73FFA8 = 0xE800000000000000;
  qword_27D73FFB0 = 0xD00000000000001FLL;
  unk_27D73FFB8 = 0x8000000225D249D0;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentReaderConnecting.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A020 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FFA8;
  v2 = qword_27D73FFB0;
  v3 = unk_27D73FFB8;
  *a1 = qword_27D73FFA0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0378()
{
  qword_27D73FFC0 = 0x3164346634623938;
  *algn_27D73FFC8 = 0xE800000000000000;
  qword_27D73FFD0 = 0xD000000000000026;
  unk_27D73FFD8 = 0x8000000225D249A0;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentReaderAwaitingApproval.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A028 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FFC8;
  v2 = qword_27D73FFD0;
  v3 = unk_27D73FFD8;
  *a1 = qword_27D73FFC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF043C()
{
  qword_27D73FFE0 = 0x6430623035333834;
  *algn_27D73FFE8 = 0xE800000000000000;
  qword_27D73FFF0 = 0xD00000000000003ELL;
  unk_27D73FFF8 = 0x8000000225D24960;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentResponseReceived.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A030 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FFE8;
  v2 = qword_27D73FFF0;
  v3 = unk_27D73FFF8;
  *a1 = qword_27D73FFE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0500()
{
  qword_27D740000 = 0x3265353634636239;
  *algn_27D740008 = 0xE800000000000000;
  qword_27D740010 = 0xD00000000000002BLL;
  unk_27D740018 = 0x8000000225D24930;
}

uint64_t static MobileDocumentReaderMilestone.readDocumentReturningResponse.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A038 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740008;
  v2 = qword_27D740010;
  v3 = unk_27D740018;
  *a1 = qword_27D740000;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF05C4()
{
  qword_27D740020 = 0x6330646664616339;
  *algn_27D740028 = 0xE800000000000000;
  qword_27D740030 = 0xD000000000000032;
  unk_27D740038 = 0x8000000225D248F0;
}

uint64_t static MobileDocumentReaderMilestone.readRequestBuilt.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A040 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740028;
  v2 = qword_27D740030;
  v3 = unk_27D740038;
  *a1 = qword_27D740020;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0688()
{
  qword_27D740040 = 0x3562316263326233;
  *algn_27D740048 = 0xE800000000000000;
  qword_27D740050 = 0xD000000000000032;
  unk_27D740058 = 0x8000000225D248B0;
}

uint64_t static MobileDocumentReaderMilestone.readRequestSigned.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A048 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740048;
  v2 = qword_27D740050;
  v3 = unk_27D740058;
  *a1 = qword_27D740040;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF074C()
{
  qword_27D740060 = 0x6632396531363235;
  *algn_27D740068 = 0xE800000000000000;
  qword_27D740070 = 0xD000000000000029;
  unk_27D740078 = 0x8000000225D24880;
}

uint64_t static MobileDocumentReaderMilestone.readerAuthenticationCertificateFetched.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A050 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740068;
  v2 = qword_27D740070;
  v3 = unk_27D740078;
  *a1 = qword_27D740060;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0810()
{
  qword_27D740080 = 0x3662383539363238;
  *algn_27D740088 = 0xE800000000000000;
  qword_27D740090 = 0xD000000000000034;
  unk_27D740098 = 0x8000000225D24840;
}

uint64_t static MobileDocumentReaderMilestone.readerAuthenticationCertificateStored.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A058 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740088;
  v2 = qword_27D740090;
  v3 = unk_27D740098;
  *a1 = qword_27D740080;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF08D4()
{
  qword_27D7400A0 = 0x3635353162613039;
  *algn_27D7400A8 = 0xE800000000000000;
  qword_27D7400B0 = 0xD000000000000029;
  unk_27D7400B8 = 0x8000000225D24810;
}

uint64_t static MobileDocumentReaderMilestone.readerAuthenticationCertificateDeleted.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A060 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7400A8;
  v2 = qword_27D7400B0;
  v3 = unk_27D7400B8;
  *a1 = qword_27D7400A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0998()
{
  qword_27D7400C0 = 0x3230313136363138;
  *algn_27D7400C8 = 0xE800000000000000;
  qword_27D7400D0 = 0xD000000000000021;
  unk_27D7400D8 = 0x8000000225D247E0;
}

uint64_t static MobileDocumentReaderMilestone.readerAuthenticationKeyFetched.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A068 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7400C8;
  v2 = qword_27D7400D0;
  v3 = unk_27D7400D8;
  *a1 = qword_27D7400C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0A5C()
{
  qword_27D7400E0 = 0x3064376665376264;
  *algn_27D7400E8 = 0xE800000000000000;
  qword_27D7400F0 = 0xD000000000000035;
  unk_27D7400F8 = 0x8000000225D247A0;
}

uint64_t static MobileDocumentReaderMilestone.readerAuthenticationKeyCreated.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A070 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7400E8;
  v2 = qword_27D7400F0;
  v3 = unk_27D7400F8;
  *a1 = qword_27D7400E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0B20()
{
  qword_27D740100 = 0x6138653438636464;
  *algn_27D740108 = 0xE800000000000000;
  qword_27D740110 = 0xD000000000000021;
  unk_27D740118 = 0x8000000225D24770;
}

uint64_t static MobileDocumentReaderMilestone.readerAuthenticationKeyDeleted.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A078 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740108;
  v2 = qword_27D740110;
  v3 = unk_27D740118;
  *a1 = qword_27D740100;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0BE4()
{
  qword_27D740120 = 0x3535623739396634;
  *algn_27D740128 = 0xE800000000000000;
  qword_27D740130 = 0xD000000000000033;
  unk_27D740138 = 0x8000000225D24730;
}

uint64_t static MobileDocumentReaderMilestone.prepareCertificateFound.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A080 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740128;
  v2 = qword_27D740130;
  v3 = unk_27D740138;
  *a1 = qword_27D740120;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0CA8()
{
  qword_27D740140 = 0x3939313732356531;
  *algn_27D740148 = 0xE800000000000000;
  qword_27D740150 = 0xD00000000000003CLL;
  unk_27D740158 = 0x8000000225D246F0;
}

uint64_t static MobileDocumentReaderMilestone.prepareCertificateNotFound.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A088 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740148;
  v2 = qword_27D740150;
  v3 = unk_27D740158;
  *a1 = qword_27D740140;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0D6C()
{
  qword_27D740160 = 0x3065613565366264;
  *algn_27D740168 = 0xE800000000000000;
  qword_27D740170 = 0xD000000000000034;
  unk_27D740178 = 0x8000000225D246B0;
}

uint64_t static MobileDocumentReaderMilestone.prepareIdentityKeyFound.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A090 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740168;
  v2 = qword_27D740170;
  v3 = unk_27D740178;
  *a1 = qword_27D740160;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0E30()
{
  qword_27D740180 = 0x3733373965383831;
  *algn_27D740188 = 0xE800000000000000;
  qword_27D740190 = 0xD00000000000003DLL;
  unk_27D740198 = 0x8000000225D24670;
}

uint64_t static MobileDocumentReaderMilestone.prepareIdentityKeyNotFound.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A098 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740188;
  v2 = qword_27D740190;
  v3 = unk_27D740198;
  *a1 = qword_27D740180;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0EF4()
{
  qword_27D7401A0 = 0x6266636434646163;
  *algn_27D7401A8 = 0xE800000000000000;
  qword_27D7401B0 = 0xD000000000000029;
  unk_27D7401B8 = 0x8000000225D24640;
}

uint64_t static MobileDocumentReaderMilestone.prepareCertificateFetched.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0A0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7401A8;
  v2 = qword_27D7401B0;
  v3 = unk_27D7401B8;
  *a1 = qword_27D7401A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF0FC8()
{
  qword_27D7401C0 = 0x3937346566616562;
  *algn_27D7401C8 = 0xE800000000000000;
  qword_27D7401D0 = 0xD000000000000013;
  unk_27D7401D8 = 0x8000000225D24DB0;
}

uint64_t static VICALMilestone.loadDocument.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0A8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7401C8;
  v2 = qword_27D7401D0;
  v3 = unk_27D7401D8;
  *a1 = qword_27D7401C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF108C()
{
  qword_27D7401E0 = 0x6337336634633661;
  *algn_27D7401E8 = 0xE800000000000000;
  qword_27D7401F0 = 0xD000000000000020;
  unk_27D7401F8 = 0x8000000225D24D80;
}

uint64_t static VICALMilestone.cdnReturnedDocument.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7401E8;
  v2 = qword_27D7401F0;
  v3 = unk_27D7401F8;
  *a1 = qword_27D7401E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF1150()
{
  qword_27D740200 = 0x6262623531663065;
  *algn_27D740208 = 0xE800000000000000;
  qword_27D740210 = 0xD000000000000022;
  unk_27D740218 = 0x8000000225D24D50;
}

uint64_t static VICALMilestone.cacheReturnedDocument.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0B8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740208;
  v2 = qword_27D740210;
  v3 = unk_27D740218;
  *a1 = qword_27D740200;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF1214()
{
  qword_27D740220 = 0x3232633134633263;
  *algn_27D740228 = 0xE800000000000000;
  qword_27D740230 = 0xD000000000000029;
  unk_27D740238 = 0x8000000225D24D20;
}

uint64_t static VICALMilestone.documentSignerCertificateTrusted.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740228;
  v2 = qword_27D740230;
  v3 = unk_27D740238;
  *a1 = qword_27D740220;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF12D8()
{
  qword_27D740240 = 0x6233396138383764;
  *algn_27D740248 = 0xE800000000000000;
  qword_27D740250 = 0xD000000000000030;
  unk_27D740258 = 0x8000000225D24CE0;
}

uint64_t static VICALMilestone.documentSignerCertificateUntrusted.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0C8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740248;
  v2 = qword_27D740250;
  v3 = unk_27D740258;
  *a1 = qword_27D740240;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF139C()
{
  qword_27D740260 = 0x3962326133626130;
  *algn_27D740268 = 0xE800000000000000;
  qword_27D740270 = 0xD000000000000032;
  unk_27D740278 = 0x8000000225D24CA0;
}

uint64_t static VICALMilestone.documentSignerCertificateRevoked.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740268;
  v2 = qword_27D740270;
  v3 = unk_27D740278;
  *a1 = qword_27D740260;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF1460()
{
  qword_27D740280 = 0x6630346536643161;
  *algn_27D740288 = 0xE800000000000000;
  qword_27D740290 = 0xD00000000000002CLL;
  unk_27D740298 = 0x8000000225D24C70;
}

uint64_t static VICALMilestone.documentSignerCertificateExpired.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740288;
  v2 = qword_27D740290;
  v3 = unk_27D740298;
  *a1 = qword_27D740280;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF1524()
{
  qword_27D7402A0 = 0x3865616337303564;
  *algn_27D7402A8 = 0xE800000000000000;
  qword_27D7402B0 = 0xD000000000000021;
  unk_27D7402B8 = 0x8000000225D24C40;
}

uint64_t static VICALMilestone.documentSignatureValid.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0E0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7402A8;
  v2 = qword_27D7402B0;
  v3 = unk_27D7402B8;
  *a1 = qword_27D7402A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF15E8()
{
  qword_27D7402C0 = 0x3531346539373062;
  *algn_27D7402C8 = 0xE800000000000000;
  qword_27D7402D0 = 0xD00000000000001FLL;
  unk_27D7402D8 = 0x8000000225D24C20;
}

uint64_t static VICALMilestone.storeDocument.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0E8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7402C8;
  v2 = qword_27D7402D0;
  v3 = unk_27D7402D8;
  *a1 = qword_27D7402C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

void sub_225BF16AC()
{
  qword_27D7402E0 = 0x3230623063303464;
  *algn_27D7402E8 = 0xE800000000000000;
  qword_27D7402F0 = 0xD000000000000021;
  unk_27D7402F8 = 0x8000000225D24BF0;
}

uint64_t static VICALMilestone.missingDocument.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D73A0F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7402E8;
  v2 = qword_27D7402F0;
  v3 = unk_27D7402F8;
  *a1 = qword_27D7402E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

_BYTE *MobileAssetInfo.init(assetType:filters:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_225BF1790()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_225BF17CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_225BF1814(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MobileAssetManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v1 setRequiresPowerPluggedIn_];
  [v1 setAllowsCellularAccess_];
  [v1 setAllowsExpensiveAccess_];
  [v1 setDiscretionary_];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MobileAssetManager.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v1 setRequiresPowerPluggedIn_];
  [v1 setAllowsCellularAccess_];
  [v1 setAllowsExpensiveAccess_];
  [v1 setDiscretionary_];
  *(v0 + 16) = v1;
  return v0;
}

void sub_225BF1994(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  (*(v10 + 16))(v13, &v15[v16], v9);
  os_unfair_lock_unlock(&v15[v17]);
  v18 = sub_225CCD934();
  v19 = sub_225CCED04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2259A7000, v18, v19, "Start MobileAsset Catalog download", v20, 2u);
    MEMORY[0x22AA6F950](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = objc_opt_self();
  v22 = sub_225CCE444();

  v23 = *(v5 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = v27;
  *(v24 + 24) = a4;
  *(v24 + 32) = v14;
  *(v24 + 40) = a2;
  aBlock[4] = sub_225BF5C78;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225BF29E8;
  aBlock[3] = &block_descriptor_18;
  v25 = _Block_copy(aBlock);

  [v21 startCatalogDownload:v22 options:v23 then:v25];
  _Block_release(v25);
}

void sub_225BF1CBC(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a2;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v70 - v9;
  if (a1)
  {
    if (a1 != 44)
    {
      aBlock = 0;
      v74 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000002CLL, 0x8000000225D24E20);
      v79 = a1;
      type metadata accessor for MADownloadResult(0);
      sub_225CCF434();
      v34 = aBlock;
      v33 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 32) = 20;
      v36 = inited + 32;
      v37 = MEMORY[0x277D83B88];
      *(inited + 16) = xmmword_225CD30F0;
      v38 = MEMORY[0x277D83BF8];
      *(inited + 64) = v37;
      *(inited + 72) = v38;
      *(inited + 40) = a1;
      v39 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(v36, &qword_27D73B060);
      sub_2259CB5EC();
      v16 = swift_allocError();
      v41 = v40;
      v42 = sub_225CCE954();
      v43 = *(v42 - 8);
      (*(v43 + 56))(v10, 1, 1, v42);
      LODWORD(v42) = (*(v43 + 48))(v10, 1, v42);
      sub_2259CB640(v10, &unk_27D73B050);
      if (v42)
      {
        v44 = 469;
      }

      else
      {
        v44 = 23;
      }

      v45 = MEMORY[0x277D84F90];
      v46 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v46;
      sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

      v48 = aBlock;
      v49 = sub_225B29AA0(0, 1, 1, v45);
      v51 = *(v49 + 2);
      v50 = *(v49 + 3);
      if (v51 >= v50 >> 1)
      {
        v49 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v49);
      }

      *(v49 + 2) = v51 + 1;
      v52 = &v49[56 * v51];
      *(v52 + 4) = v34;
      *(v52 + 5) = v33;
      *(v52 + 6) = 0xD000000000000026;
      *(v52 + 7) = 0x8000000225D24E50;
      *(v52 + 8) = 0xD000000000000022;
      *(v52 + 9) = 0x8000000225D24E80;
      *(v52 + 10) = 38;
      *v41 = v44;
      *(v41 + 8) = v49;
      *(v41 + 16) = v34;
      *(v41 + 24) = v33;
      *(v41 + 32) = v48;
      *(v41 + 40) = 0;
      goto LABEL_33;
    }

    v11 = 0x8000000225D24ED0;
    v12 = 0x8000000225D24E50;
    v13 = 0x8000000225D24E80;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v16 = swift_allocError();
    a5 = v17;
    v18 = sub_225CCE954();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v10, 1, 1, v18);
    LODWORD(v18) = (*(v19 + 48))(v10, 1, v18);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v18)
    {
      LOWORD(v20) = 465;
    }

    else
    {
      LOWORD(v20) = 23;
    }

    v21 = sub_225B2C374(v14);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v21;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, v22, &aBlock);

    v23 = aBlock;
    v24 = sub_225B29AA0(0, 1, 1, v14);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    v27 = (v26 + 1);
    if (v26 < v25 >> 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v29 = objc_allocWithZone(MEMORY[0x277D289D8]);
    v23 = sub_225CCE444();

    v16 = [v29 initWithType_];

    if (!v16)
    {
      v70 = 0x8000000225D24E50;
      v57 = MEMORY[0x277D84F90];
      v58 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v16 = swift_allocError();
      a5 = v59;
      v60 = sub_225CCE954();
      v61 = *(v60 - 8);
      (*(v61 + 56))(v10, 1, 1, v60);
      LODWORD(v60) = (*(v61 + 48))(v10, 1, v60);
      sub_2259CB640(v10, &unk_27D73B050);
      if (v60)
      {
        v62 = 470;
      }

      else
      {
        v62 = 23;
      }

      v63 = sub_225B2C374(v57);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v63;
      sub_225B2C4A0(v58, sub_225B2AC40, 0, v64, &aBlock);

      v23 = aBlock;
      v65 = sub_225B29AA0(0, 1, 1, v57);
      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      if (v67 >= v66 >> 1)
      {
        v65 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v65);
      }

      *(v65 + 2) = v67 + 1;
      v68 = &v65[56 * v67];
      *(v68 + 4) = 0xD000000000000016;
      *(v68 + 5) = 0x8000000225D24EB0;
      v69 = v70;
      *(v68 + 6) = 0xD000000000000026;
      *(v68 + 7) = v69;
      *(v68 + 8) = 0xD000000000000022;
      *(v68 + 9) = 0x8000000225D24E80;
      *(v68 + 10) = 45;
      *a5 = v62;
      *(a5 + 8) = v65;
      *(a5 + 16) = 0xD000000000000016;
      *(a5 + 24) = 0x8000000225D24EB0;
      goto LABEL_32;
    }

    v27 = *MEMORY[0x277D288E8];
    v26 = sub_225CCE444();
    [v16 addKeyValuePair:v27 with:v26];

    v13 = a5 + 64;
    v30 = 1 << *(a5 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v20 = v31 & *(a5 + 64);
    v11 = (v30 + 63) >> 6;

    v12 = 0;
    while (v20)
    {
      v25 = v12;
LABEL_17:
      v32 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v23 = *(*(a5 + 56) + ((v25 << 10) | (16 * v32)));

      v27 = sub_225CCE444();

      v26 = sub_225CCE444();

      [v16 addKeyValuePair:v27 with:v26];
    }

    while (1)
    {
      v25 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v25 >= v11)
      {

        v53 = swift_allocObject();
        v54 = v72;
        v53[2] = v71;
        v53[3] = v54;
        v53[4] = v16;
        v77 = sub_225BF5C88;
        v78 = v53;
        aBlock = MEMORY[0x277D85DD0];
        v74 = 1107296256;
        v75 = sub_225BF29E0;
        v76 = &block_descriptor_24;
        v55 = _Block_copy(&aBlock);

        v56 = v16;

        [v56 queryMetaDataWithError_];
        _Block_release(v55);

        return;
      }

      v20 = *(v13 + 8 * v25);
      ++v12;
      if (v20)
      {
        v12 = v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  v24 = sub_225B29AA0((v25 > 1), v27, 1, v24);
LABEL_7:
  *(v24 + 2) = v27;
  v28 = &v24[56 * v26];
  *(v28 + 4) = 0xD000000000000015;
  *(v28 + 5) = v11;
  *(v28 + 6) = 0xD000000000000026;
  *(v28 + 7) = v12;
  *(v28 + 8) = 0xD000000000000022;
  *(v28 + 9) = v13;
  *(v28 + 10) = 34;
  *a5 = v20;
  *(a5 + 8) = v24;
  *(a5 + 16) = 0xD000000000000015;
  *(a5 + 24) = v11;
LABEL_32:
  *(a5 + 32) = v23;
  *(a5 + 40) = 0;
LABEL_33:
  v71(v16, 1);
}

void sub_225BF2664(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v33 - v10;
  if (a2)
  {
    v12 = a2;
    a3(a2, 1);
  }

  else
  {
    v13 = [a5 results];
    if (v13)
    {
      v14 = v13;
      sub_2259D8718(0, &qword_27D740380);
      v15 = sub_225CCE814();

      a3(v15, 0);
    }

    else
    {
      v33 = 0x8000000225D24E80;
      v34 = 0x8000000225D24E50;
      v16 = MEMORY[0x277D84F90];
      v17 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v18 = swift_allocError();
      v20 = v19;
      v21 = sub_225CCE954();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v11, 1, 1, v21);
      LODWORD(v21) = (*(v22 + 48))(v11, 1, v21);
      sub_2259CB640(v11, &unk_27D73B050);
      if (v21)
      {
        v23 = 471;
      }

      else
      {
        v23 = 23;
      }

      v24 = sub_225B2C374(v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v24;
      sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v35);

      v26 = v35;
      v27 = sub_225B29AA0(0, 1, 1, v16);
      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[56 * v29];
      *(v30 + 4) = 0xD000000000000015;
      *(v30 + 5) = 0x8000000225D24EF0;
      v31 = v34;
      *(v30 + 6) = 0xD000000000000026;
      *(v30 + 7) = v31;
      v32 = v33;
      *(v30 + 8) = 0xD000000000000022;
      *(v30 + 9) = v32;
      *(v30 + 10) = 65;
      *v20 = v23;
      *(v20 + 8) = v27;
      *(v20 + 16) = 0xD000000000000015;
      *(v20 + 24) = 0x8000000225D24EF0;
      *(v20 + 32) = v26;
      *(v20 + 40) = 0;
      a3(v18, 1);
    }
  }
}

uint64_t sub_225BF29E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t MobileAssetManager.retrieveMostRecentAsset<A>(info:isFirstMoreRecent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 8);
  v19 = *a1;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = v8;

  sub_225BF1994(&v19, v16, sub_225BF3B9C, v17);
}

uint64_t sub_225BF2B20(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v134 = a7;
  v141 = a6;
  v140 = a5;
  v132 = sub_225CCCEA4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v15);
  v133 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v137 = &v122 - v19;
  sub_2259D8718(255, &qword_27D740380);
  v145 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v142 = sub_225CCEFC4();
  v136 = *(v142 - 8);
  v22 = MEMORY[0x28223BE20](v142, v21);
  v24 = &v122 - v23;
  v25 = *(TupleTypeMetadata2 - 8);
  v27 = MEMORY[0x28223BE20](v22, v26);
  v135 = (&v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v122 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388);
  v34 = MEMORY[0x28223BE20](v32, v33);
  v138 = (&v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34, v36);
  v144 = (&v122 - v37);
  v38 = sub_225CCD954();
  v146 = *(v38 - 8);
  v147 = v38;
  v40 = MEMORY[0x28223BE20](v38, v39);
  v42 = MEMORY[0x28223BE20](v40, v41);
  MEMORY[0x28223BE20](v42, v43);
  v47 = &v122 - v46;
  v148 = a4;
  if (a2)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v48 = off_28105B918;
    v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v50));
    v51 = v146;
    v52 = v147;
    (*(v146 + 16))(v47, &v48[v49], v147);
    os_unfair_lock_unlock(&v48[v50]);
    v53 = a1;
    v54 = sub_225CCD934();
    v55 = sub_225CCED14();
    sub_225BF5CA0(a1, 1);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v143 = a3;
      v57 = v56;
      v58 = swift_slowAlloc();
      v139 = v32;
      v59 = v58;
      *&aBlock = v58;
      *v57 = 136315138;
      swift_getErrorValue();
      v60 = sub_225CCFB24();
      v62 = sub_2259BE198(v60, v61, &aBlock);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_2259A7000, v54, v55, "error : %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA6F950](v59, -1, -1);
      v63 = v57;
      a3 = v143;
      MEMORY[0x22AA6F950](v63, -1, -1);
    }

    (*(v51 + 8))(v47, v52);
    v64 = v144;
    *v144 = a1;
    swift_storeEnumTagMultiPayload();
    v65 = a1;
    a3(v64);
    return sub_2259CB640(v64, &qword_27D740388);
  }

  else
  {
    v124 = v45;
    v123 = v44;
    v128 = v31;
    v139 = v32;
    v143 = a3;
    v149 = a1;
    v67 = swift_allocObject();
    v68 = v145;
    v67[2] = v145;
    v67[3] = a9;
    v67[4] = a10;

    v130 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740390);
    sub_2259D8B24(&qword_27D740398, &qword_27D740390);
    sub_225CCF5B4();

    sub_225BF5CA0(a1, 0);
    v129 = aBlock;
    v127 = v151;
    v126 = v152;
    v125 = v153;
    MEMORY[0x28223BE20](v69, v70);
    *(&v122 - 6) = v68;
    *(&v122 - 5) = a9;
    v71 = v140;
    *(&v122 - 4) = a10;
    *(&v122 - 3) = v71;
    *(&v122 - 2) = v141;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7403A0);
    sub_2259D8B24(&qword_27D7403A8, &qword_27D7403A0);
    v72 = v142;
    sub_225CCF424();
    swift_getWitnessTable();
    sub_225CCF534();
    swift_getWitnessTable();
    sub_225CCF424();
    swift_getWitnessTable();
    sub_225CCE734();
    v73 = v130;
    v74 = TupleTypeMetadata2;
    if ((*(v130 + 48))(v24, 1, TupleTypeMetadata2) == 1)
    {
      (*(v136 + 8))(v24, v72);
      v147 = 0x8000000225D24F50;
      v75 = MEMORY[0x277D84F90];
      v76 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v77 = swift_allocError();
      v79 = v78;
      v80 = sub_225CCE954();
      v81 = *(v80 - 8);
      v82 = v137;
      (*(v81 + 56))(v137, 1, 1, v80);
      LODWORD(v80) = (*(v81 + 48))(v82, 1, v80);
      sub_2259CB640(v82, &unk_27D73B050);
      if (v80)
      {
        v83 = 466;
      }

      else
      {
        v83 = 23;
      }

      v84 = sub_225B2C374(v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v84;
      sub_225B2C4A0(v76, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

      v86 = aBlock;
      v87 = sub_225B29AA0(0, 1, 1, v75);
      v89 = *(v87 + 2);
      v88 = *(v87 + 3);
      if (v89 >= v88 >> 1)
      {
        v87 = sub_225B29AA0((v88 > 1), v89 + 1, 1, v87);
      }

      *(v87 + 2) = v89 + 1;
      v90 = &v87[56 * v89];
      *(v90 + 4) = 0xD000000000000028;
      *(v90 + 5) = 0x8000000225D24F20;
      *(v90 + 6) = 0xD000000000000026;
      *(v90 + 7) = 0x8000000225D24E50;
      *(v90 + 8) = 0xD00000000000003BLL;
      *(v90 + 9) = v147;
      *(v90 + 10) = 93;
      *v79 = v83;
      *(v79 + 8) = v87;
      *(v79 + 16) = 0xD000000000000028;
      *(v79 + 24) = 0x8000000225D24F20;
      *(v79 + 32) = v86;
      *(v79 + 40) = 0;
      v91 = v138;
      *v138 = v77;
      swift_storeEnumTagMultiPayload();
      v143(v91);

      return sub_2259CB640(v91, &qword_27D740388);
    }

    else
    {
      v92 = v128;
      (*(v73 + 32))(v128, v24, TupleTypeMetadata2);
      v93 = v135;
      (*(v73 + 16))(v135, v92, TupleTypeMetadata2);
      v94 = *v93;
      (*(*(v145 - 8) + 8))(v93 + *(TupleTypeMetadata2 + 48));
      if ([v94 wasLocal] && (v95 = objc_msgSend(v94, sel_getLocalUrl)) != 0)
      {
        v96 = v95;
        sub_225CCCE34();

        v97 = v147;
        v98 = v146;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v99 = off_28105B918;
        v100 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v101 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v101));
        (*(v98 + 16))(v123, &v99[v100], v97);
        os_unfair_lock_unlock(&v99[v101]);
        v102 = sub_225CCD934();
        v103 = sub_225CCECF4();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_2259A7000, v102, v103, "Already have local asset, returning without download", v104, 2u);
          MEMORY[0x22AA6F950](v104, -1, -1);
        }

        (*(v98 + 8))(v123, v97);
        v105 = v131;
        v106 = v144;
        v107 = v133;
        v108 = v132;
        (*(v131 + 16))(v144, v133, v132);
        swift_storeEnumTagMultiPayload();
        v143(v106);

        sub_2259CB640(v106, &qword_27D740388);
        (*(v105 + 8))(v107, v108);
      }

      else
      {
        v110 = v147;
        v109 = v148;
        v111 = v146;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v112 = off_28105B918;
        v113 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v114 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v114));
        (*(v111 + 16))(v124, &v112[v113], v110);
        os_unfair_lock_unlock(&v112[v114]);
        v115 = sub_225CCD934();
        v116 = sub_225CCECF4();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_2259A7000, v115, v116, "Downloading asset", v117, 2u);
          MEMORY[0x22AA6F950](v117, -1, -1);
        }

        (*(v111 + 8))(v124, v110);
        v118 = *(v134 + 16);
        v119 = swift_allocObject();
        v119[2] = v143;
        v119[3] = v109;
        v119[4] = v94;
        *&v152 = sub_225BF5D80;
        *(&v152 + 1) = v119;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v151 = sub_225BF51C4;
        *(&v151 + 1) = &block_descriptor_33_0;
        v120 = _Block_copy(&aBlock);

        v121 = v94;

        [v121 startDownload:v118 completionWithError:v120];

        _Block_release(v120);
      }

      return (*(v73 + 8))(v128, v74);
    }
  }
}

id sub_225BF3BD4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v6 = sub_225CCEFC4();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = v21 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *a1;
  result = [v21[0] attributes];
  if (result)
  {
    v16 = result;
    sub_225CCE2D4();

    sub_225BF3F38();

    (*(v11 + 56))(v10, 0, 1, a2);
    v17 = *(v11 + 32);
    v17(v14, v10, a2);
    sub_2259D8718(255, &qword_27D740380);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v19 = *(TupleTypeMetadata2 + 48);
    *a3 = v21[0];
    v17(a3 + v19, v14, a2);
    (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 0, 1, TupleTypeMetadata2);
    v20 = v21[0];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_225BF3F38()
{
  v65 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v46 - v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v6 = sub_225CCE2B4();
  v7 = [v5 initWithDictionary_];

  v8 = objc_opt_self();
  v59 = 0;
  v9 = [v8 dataWithPropertyList:v7 format:200 options:0 error:&v59];
  v10 = v59;
  if (v9)
  {
    v11 = sub_225CCCFA4();
    v13 = v12;

    sub_225CCCC14();
    swift_allocObject();
    sub_225CCCC04();
    sub_225CCCBF4();
    if (!v0)
    {

      sub_2259BEF00(v11, v13);

      return;
    }

    sub_2259BEF00(v11, v13);
    v54 = 0;
    v14 = v0;
  }

  else
  {
    v15 = v10;
    v14 = sub_225CCCCC4();

    swift_willThrow();
    v54 = 0;
  }

  v52 = "ad catalog, returned error: ";
  v51 = "Conversion error";
  v16 = v14;
  v17 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v53 = swift_allocError();
  v19 = v18;
  swift_getErrorValue();
  v20 = v58;
  v21 = v14;
  sub_225B21FAC(v20, &v59);

  v22 = v60;
  v56 = v7;
  if (v60)
  {
    v50 = v59;
    v48 = v61;
    v49 = v62;
    v23 = v63;
    v47 = v64;
  }

  else
  {
    v59 = v14;
    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v25 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v27 = [v25 code];
      v28 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v28;
      *(inited + 40) = v27;
      v23 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v29 = v14;
      v49 = 0;
      v48 = 0;
      v50 = 0;
      v22 = MEMORY[0x277D84F90];
    }

    else
    {
      v59 = v14;
      v30 = v14;
      v31 = sub_225CCE954();
      v32 = swift_dynamicCast();
      v33 = *(v31 - 8);
      (*(v33 + 56))(v4, v32 ^ 1u, 1, v31);
      v34 = (*(v33 + 48))(v4, 1, v31);
      sub_2259CB640(v4, &unk_27D73B050);
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = 23;
      }

      v50 = v35;
      v22 = MEMORY[0x277D84F90];
      v23 = sub_225B2C374(MEMORY[0x277D84F90]);
      v36 = v14;
      v49 = 0x8000000225D24FD0;
      v48 = 0xD000000000000010;
    }

    v47 = v14;
  }

  v55 = 0x8000000225D24FD0;
  v37 = v52 | 0x8000000000000000;
  v38 = v51 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v23;
  sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v59);

  v40 = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_225B29AA0(0, *(v22 + 2) + 1, 1, v22);
  }

  v42 = *(v22 + 2);
  v41 = *(v22 + 3);
  if (v42 >= v41 >> 1)
  {
    v22 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v22);
  }

  *(v22 + 2) = v42 + 1;
  v43 = &v22[56 * v42];
  v44 = v55;
  *(v43 + 4) = 0xD000000000000010;
  *(v43 + 5) = v44;
  *(v43 + 6) = 0xD000000000000026;
  *(v43 + 7) = v37;
  *(v43 + 8) = 0xD000000000000016;
  *(v43 + 9) = v38;
  *(v43 + 10) = 158;
  *v19 = v50;
  v45 = v48;
  *(v19 + 8) = v22;
  *(v19 + 16) = v45;
  *(v19 + 24) = v49;
  *(v19 + 32) = v40;
  *(v19 + 40) = v47;
  swift_willThrow();
}

uint64_t sub_225BF45CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v59 = a5;
  v62 = a3;
  v63 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v57 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388);
  MEMORY[0x28223BE20](v58, v10);
  v12 = (&v57 - v11);
  v13 = sub_225CCDA34();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_225CCDA64();
  v17 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_225CCDA44();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 10 && a1)
  {
    v61 = v12;
    aBlock = 0;
    v65 = 0xE000000000000000;
    sub_225CCF204();

    aBlock = 0xD00000000000001DLL;
    v65 = 0x8000000225D24F90;
    v70 = a1;
    v34 = MEMORY[0x277D83B88];
    v35 = MEMORY[0x277D83BF8];
    v36 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v36);

    v38 = aBlock;
    v37 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v40 = inited + 32;
    *(inited + 64) = v34;
    *(inited + 72) = v35;
    *(inited + 40) = a1;
    v41 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v40, &qword_27D73B060);
    sub_2259CB5EC();
    v42 = swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v9, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v9, 1, v45);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v45)
    {
      v47 = 467;
    }

    else
    {
      v47 = 23;
    }

    v48 = MEMORY[0x277D84F90];
    v49 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v49;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

    v51 = aBlock;
    v52 = sub_225B29AA0(0, 1, 1, v48);
    v54 = *(v52 + 2);
    v53 = *(v52 + 3);
    if (v54 >= v53 >> 1)
    {
      v52 = sub_225B29AA0((v53 > 1), v54 + 1, 1, v52);
    }

    *(v52 + 2) = v54 + 1;
    v55 = &v52[56 * v54];
    *(v55 + 4) = v38;
    *(v55 + 5) = v37;
    *(v55 + 6) = 0xD000000000000026;
    *(v55 + 7) = 0x8000000225D24E50;
    *(v55 + 8) = 0xD00000000000003BLL;
    *(v55 + 9) = 0x8000000225D24F50;
    *(v55 + 10) = 108;
    *v44 = v47;
    *(v44 + 8) = v52;
    *(v44 + 16) = v38;
    *(v44 + 24) = v37;
    *(v44 + 32) = v51;
    *(v44 + 40) = 0;
    v56 = v61;
    *v61 = v42;
    swift_storeEnumTagMultiPayload();
    v62(v56);
    return sub_2259CB640(v56, &qword_27D740388);
  }

  else
  {
    sub_2259D8718(0, &qword_28105BFA8);
    (*(v22 + 104))(v25, *MEMORY[0x277D851C8], v21);
    v26 = sub_225CCEDE4();
    (*(v22 + 8))(v25, v21);
    v27 = swift_allocObject();
    v28 = v59;
    v29 = v62;
    v30 = v63;
    v27[2] = v59;
    v27[3] = v29;
    v27[4] = v30;
    v68 = sub_225BF5D8C;
    v69 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_225A1A000;
    v67 = &block_descriptor_39;
    v31 = _Block_copy(&aBlock);
    v32 = v28;

    sub_225CCDA54();
    v70 = MEMORY[0x277D84F90];
    sub_225BF5C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170);
    sub_2259D8B24(&qword_28105BFD0, &unk_27D73B170);
    sub_225CCF0E4();
    MEMORY[0x22AA6D600](0, v20, v16, v31);
    _Block_release(v31);

    v61[1](v16, v13);
    (*(v17 + 8))(v20, v60);
  }
}

uint64_t sub_225BF4D10(void *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v44 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388);
  v11 = MEMORY[0x28223BE20](v46, v10);
  v13 = (v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = v44 - v15;
  v17 = sub_225CCCEA4();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v44 - v24;
  if ([a1 refreshState] && objc_msgSend(a1, sel_wasLocal) && (v26 = objc_msgSend(a1, sel_getLocalUrl)) != 0)
  {
    v27 = v26;
    sub_225CCCE34();

    (*(v18 + 32))(v25, v22, v17);
    (*(v18 + 16))(v16, v25, v17);
    swift_storeEnumTagMultiPayload();
    a2(v16);
    sub_2259CB640(v16, &qword_27D740388);
    return (*(v18 + 8))(v25, v17);
  }

  else
  {
    v44[1] = a3;
    v45 = a2;
    v44[0] = 0x8000000225D24F50;
    v29 = MEMORY[0x277D84F90];
    v30 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v31 = swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v9, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v9, 1, v34);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v34)
    {
      v36 = 468;
    }

    else
    {
      v36 = 23;
    }

    v37 = sub_225B2C374(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v37;
    sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v47);

    v39 = v47;
    v40 = sub_225B29AA0(0, 1, 1, v29);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD000000000000018;
    *(v43 + 5) = 0x8000000225D24FB0;
    *(v43 + 6) = 0xD000000000000026;
    *(v43 + 7) = 0x8000000225D24E50;
    *(v43 + 8) = 0xD00000000000003BLL;
    *(v43 + 9) = v44[0];
    *(v43 + 10) = 117;
    *v33 = v36;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0xD000000000000018;
    *(v33 + 24) = 0x8000000225D24FB0;
    *(v33 + 32) = v39;
    *(v33 + 40) = 0;
    *v13 = v31;
    swift_storeEnumTagMultiPayload();
    v45(v13);
    return sub_2259CB640(v13, &qword_27D740388);
  }
}

void sub_225BF51CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t MobileAssetManager.evictAssets(type:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_225B2E928(MEMORY[0x277D84F90]);
  sub_225BF1994(&v8, v6, sub_225BF56A8, v5);
}

uint64_t sub_225BF52FC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_225CCDA34();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCDA64();
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCDA44();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a3(a1);
  }

  sub_2259D8718(0, &qword_28105BFA8);
  (*(v17 + 104))(v20, *MEMORY[0x277D851C8], v16);

  v26 = sub_225CCEDE4();
  (*(v17 + 8))(v20, v16);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a3;
  v22[4] = a4;
  aBlock[4] = sub_225BF5BFC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);

  sub_225CCDA54();
  v30 = MEMORY[0x277D84F90];
  sub_225BF5C20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170);
  sub_2259D8B24(&qword_28105BFD0, &unk_27D73B170);
  sub_225CCF0E4();
  v24 = v26;
  MEMORY[0x22AA6D600](0, v15, v11, v23);
  _Block_release(v23);

  (*(v29 + 8))(v11, v8);
  (*(v27 + 8))(v15, v28);
}

void sub_225BF56B4(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v42 = sub_225CCD954();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = a3;
  v32 = a2;
  if (a1 >> 62)
  {
LABEL_20:
    v11 = sub_225CCF144();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_21:
    v32(0);
    return;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_3:
  v12 = 0;
  v13 = a1 & 0xC000000000000001;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v41 = (v6 + 2);
  v39 = (v6 + 1);
  v6 = &off_278575000;
  *&v8 = 136315138;
  v36 = v8;
  v34 = v10;
  v35 = a1;
  v33 = v11;
  v40 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v13)
    {
      v15 = MEMORY[0x22AA6DA80](v12, a1);
    }

    else
    {
      if (v12 >= *(v37 + 16))
      {
        goto LABEL_19;
      }

      v15 = *(a1 + 8 * v12 + 32);
    }

    v16 = v15;
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v15 v6[395]])
    {
      break;
    }

LABEL_6:

    ++v12;
    if (v17 == v11)
    {
      goto LABEL_21;
    }
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  (*v41)(v10, &v18[v19], v42);
  os_unfair_lock_unlock(&v18[v20]);
  v21 = v16;
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  if (!os_log_type_enabled(v22, v23))
  {

    (*v39)(v10, v42);
    v14 = v21;
LABEL_5:
    [v14 purgeSync];
    v13 = v40;
    v6 = &off_278575000;
    goto LABEL_6;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v43 = v25;
  *v24 = v36;
  v26 = [v21 assetId];
  v38 = v21;

  if (v26)
  {
    v27 = sub_225CCE474();
    v29 = v28;

    v30 = sub_2259BE198(v27, v29, &v43);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_2259A7000, v22, v23, "Purging result with id %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AA6F950](v25, -1, -1);
    MEMORY[0x22AA6F950](v24, -1, -1);

    v10 = v34;
    (*v39)(v34, v42);
    a1 = v35;
    v11 = v33;
    v14 = v38;
    goto LABEL_5;
  }

  __break(1u);
}