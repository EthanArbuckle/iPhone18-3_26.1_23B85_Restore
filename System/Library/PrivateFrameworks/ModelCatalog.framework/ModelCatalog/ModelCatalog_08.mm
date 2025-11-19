unint64_t sub_18E2ADF28()
{
  result = qword_1EABDF9E0;
  if (!qword_1EABDF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9E0);
  }

  return result;
}

unint64_t sub_18E2ADF7C()
{
  result = qword_1EABDFA00;
  if (!qword_1EABDFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA00);
  }

  return result;
}

uint64_t sub_18E2ADFD0()
{
  v1 = v0[3];

  sub_18E1C9934(v0 + 4);
  sub_18E1C9934(v0 + 9);
  sub_18E1C9934(v0 + 14);
  sub_18E1E6400();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

unint64_t sub_18E2AE01C()
{
  result = qword_1EABDF7F8;
  if (!qword_1EABDF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7F8);
  }

  return result;
}

unint64_t sub_18E2AE070()
{
  result = qword_1EABDF9B8;
  if (!qword_1EABDF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9B8);
  }

  return result;
}

_BYTE *sub_18E2AE228(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t deserializeResourceBundle(jsonData:identifier:resourceBundleType:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v12 = objc_opt_self();
  v13 = sub_18E44E60C();
  *&v48 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:&v48];

  if (v14)
  {
    v15 = v48;
    sub_18E44EF2C();
    swift_unknownObjectRelease();
    sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
    if (sub_18E1C7F2C())
    {
      v16 = v45;
      v50 = MEMORY[0x1E69E6158];
      *&v48 = a3;
      *(&v48 + 1) = a4;
      sub_18E270D70(&v48, &v45);

      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_18E26FF6C();
      v18 = v16;
      sub_18E1C824C(v17, v19, v20, v21, v22, v23, v24, v25, v40, v42, v16, v45, *(&v45 + 1), v46, v47, v48);
      v26 = v50;
      v27 = sub_18E2AE5A8(&v48);
      if (v26)
      {
        sub_18E1C824C(v27, v28, v29, v30, v31, v32, v33, v34, v41, v43, v44, v45, *(&v45 + 1), v46, v47, v48);
        if (v50)
        {
          if (sub_18E1C7F2C())
          {
            v35 = v45;
LABEL_12:
            static Catalog.ResourceBundle.deserialize(json:resourceBundleType:resources:assetBacked:)(v18, a5, a6, a7, v35, v32, v33, v34, v41, v43, v44, v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1), v49, v50, v51);

            goto LABEL_13;
          }
        }

        else
        {
          sub_18E2AE5A8(&v48);
        }
      }

      v35 = 1;
      goto LABEL_12;
    }

    sub_18E2AE554();
    swift_allocError();
    *v37 = 0xD000000000000033;
    *(v37 + 8) = 0x800000018E466070;
    *(v37 + 16) = 1;
  }

  else
  {
    v36 = v48;
    sub_18E44E44C();
  }

  result = swift_willThrow();
LABEL_13:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_18E2AE554()
{
  result = qword_1EABE34F0;
  if (!qword_1EABE34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE34F0);
  }

  return result;
}

uint64_t sub_18E2AE5A8(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE3B70, &qword_18E4AAB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E2AE620(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E6FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_18E2706EC(&unk_1EABE11B8, &qword_18E49E120);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_18E29205C(a1, &v23 - v16);
  sub_18E29205C(a2, &v17[v18]);
  sub_18E1C6AC8(v17);
  if (!v20)
  {
    sub_18E29205C(v17, v12);
    sub_18E1C6AC8(&v17[v18]);
    if (!v20)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_18E2920CC();
      v19 = sub_18E44EA1C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_18E275468(v17, &qword_1EABE11B0, &qword_18E49EF20);
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_18E275468(v17, &unk_1EABE11B8, &qword_18E49E120);
    v19 = 0;
    return v19 & 1;
  }

  sub_18E1C6AC8(&v17[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_18E275468(v17, &qword_1EABE11B0, &qword_18E49EF20);
  v19 = 1;
  return v19 & 1;
}

void static SupportedLanguagesAndRegions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_18E2900E8();
}

uint64_t type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion()
{
  result = qword_1EABE1320;
  if (!qword_1EABE1320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18E2AE938()
{
  sub_18E2AE9A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18E2AE9A4()
{
  if (!qword_1EABDFA78)
  {
    sub_18E44E6FC();
    sub_18E2920CC();
    v0 = type metadata accessor for SupportedArgument();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABDFA78);
    }
  }
}

uint64_t sub_18E2AEA50()
{
  sub_18E223AC4();
  v0(v1);
  sub_18E1D432C();

  return sub_18E44F4CC();
}

uint64_t sub_18E2AEAA4()
{
  sub_18E44F48C();
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

uint64_t sub_18E2AEB1C()
{
  sub_18E223AC4();
  v0(v1);
  sub_18E1D432C();

  return sub_18E44F4CC();
}

uint64_t sub_18E2AEBC4()
{
  sub_18E223AC4();
  v0(v3, v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E2AEC04()
{
  sub_18E44F48C();
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

void AppleDeviceTrackingBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v11 = sub_18E1E16F0();
  v14 = sub_18E1D45EC(v11, v12, v13);
  if (v2)
  {
    sub_18E1FE044(v55);
  }

  else
  {
    sub_18E1FECF0(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29);
    v22 = sub_18E1E6A80();
    memcpy(v22, v23, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v24;
    *(v1 + 208) = v25;
  }

  sub_18E1CFAAC();
}

void AppleDeviceTrackingBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  v15 = sub_18E1E16F0();
  v18 = sub_18E1D45EC(v15, v16, v17);
  if (v3)
  {

    sub_18E1FE044(v138);
  }

  else
  {
    v26 = sub_18E1D5E70(v18, v19, v20, v21, v22, v23, v24, v25, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v138[0]);
    sub_18E201A04(v26, v27, v28, v29, v30, v31, v32, v33, v36, v39);
    *(v2 + 200) = v1;
    *(v2 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t sub_18E2AEDDC(uint64_t a1)
{
  v2 = sub_18E2BFE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2AEE18(uint64_t a1)
{
  v2 = sub_18E2BFE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedAppleDeviceTrackingBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  v13 = sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v33, v36);
  v15 = sub_18E221924(v13, v4 | 0x8000000000000000, v14);
  if (v2)
  {
    sub_18E1FE044(v64);
  }

  else
  {
    sub_18E1C68BC(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_18E1CE9C8();
    sub_18E1FECF0(v23, v24, v25, v26, v27, v28, v29, v30, v35, v38);
    v31 = sub_18E1E6A80();
    memcpy(v31, v32, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

uint64_t sub_18E2AEF94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18E44F48C();
  a4(v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E2AF1B8(uint64_t a1)
{
  v2 = sub_18E2BFEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2AF1F4(uint64_t a1)
{
  v2 = sub_18E2BFEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedDiffusionAdapterBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedDiffusionAdapterBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2AF3E4(uint64_t a1)
{
  v2 = sub_18E2BFF04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2AF420(uint64_t a1)
{
  v2 = sub_18E2BFF04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedDiffusionModelBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedDiffusionModelBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void DisabledUseCaseListBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v11 = sub_18E1E16F0();
  v14 = sub_18E1D45EC(v11, v12, v13);
  if (v2)
  {
    sub_18E1FE044(v55);
  }

  else
  {
    sub_18E1FECF0(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29);
    v22 = sub_18E1E6A80();
    memcpy(v22, v23, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v24;
    *(v1 + 208) = v25;
  }

  sub_18E1CFAAC();
}

void DisabledUseCaseListBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  v15 = sub_18E1E16F0();
  v18 = sub_18E1D45EC(v15, v16, v17);
  if (v3)
  {

    sub_18E1FE044(v138);
  }

  else
  {
    v26 = sub_18E1D5E70(v18, v19, v20, v21, v22, v23, v24, v25, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v138[0]);
    sub_18E201A04(v26, v27, v28, v29, v30, v31, v32, v33, v36, v39);
    *(v2 + 200) = v1;
    *(v2 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t sub_18E2AF6EC(uint64_t a1)
{
  v2 = sub_18E2BFF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2AF728(uint64_t a1)
{
  v2 = sub_18E2BFF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedDisabledUseCaseListBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  v13 = sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v33, v36);
  v15 = sub_18E221924(v13, v4 | 0x8000000000000000, v14);
  if (v2)
  {
    sub_18E1FE044(v64);
  }

  else
  {
    sub_18E1C68BC(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_18E1CE9C8();
    sub_18E1FECF0(v23, v24, v25, v26, v27, v28, v29, v30, v35, v38);
    v31 = sub_18E1E6A80();
    memcpy(v31, v32, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

uint64_t sub_18E2AFA84(uint64_t a1)
{
  v2 = sub_18E2BFFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2AFAC0(uint64_t a1)
{
  v2 = sub_18E2BFFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedEmbeddingDenyListBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedEmbeddingDenyListBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void EmbeddingPreprocessorBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  sub_18E1CFA44();
  v14 = sub_18E237058(v11, v12, v13);
  if (v2)
  {
    sub_18E1FE044(v55);
  }

  else
  {
    sub_18E1FECF0(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29);
    v22 = sub_18E1E6A80();
    memcpy(v22, v23, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v24;
    *(v1 + 208) = v25;
  }

  sub_18E1CFAAC();
}

void EmbeddingPreprocessorBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  sub_18E1E83A4();
  v17 = sub_18E201A88(21, v15, v16);
  if (v2)
  {

    sub_18E1FE044(v137);
  }

  else
  {
    v25 = sub_18E1D5E70(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v137[0]);
    sub_18E201A04(v25, v26, v27, v28, v29, v30, v31, v32, v35, v38);
    *(v3 + 200) = v1;
    *(v3 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t sub_18E2AFD58(uint64_t a1)
{
  v2 = sub_18E2C0000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2AFD94(uint64_t a1)
{
  v2 = sub_18E2C0000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedEmbeddingPreprocessorBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37);
  sub_18E1E9DDC();
  v16 = sub_18E237058(v13, v14, v15);
  if (v2)
  {
    sub_18E1FE044(v65);
  }

  else
  {
    sub_18E1C68BC(v16, v17, v18, v19, v20, v21, v22, v23, v35, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_18E1CE9C8();
    sub_18E1FECF0(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39);
    v32 = sub_18E1E6A80();
    memcpy(v32, v33, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

void HandwritingSynthesizerBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  sub_18E1CFA44();
  v13 = sub_18E21D09C(22, v11, v12);
  if (v2)
  {
    sub_18E1FE044(v54);
  }

  else
  {
    sub_18E1FECF0(v13, v14, v15, v16, v17, v18, v19, v20, v26, v28);
    v21 = sub_18E1E6A80();
    memcpy(v21, v22, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v23;
    *(v1 + 208) = v24;
  }

  sub_18E1CFAAC();
}

void HandwritingSynthesizerBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  sub_18E1E83A4();
  v17 = sub_18E201A88(22, v15, v16);
  if (v2)
  {

    sub_18E1FE044(v137);
  }

  else
  {
    v25 = sub_18E1D5E70(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v137[0]);
    sub_18E201A04(v25, v26, v27, v28, v29, v30, v31, v32, v35, v38);
    *(v3 + 200) = v1;
    *(v3 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t sub_18E2B0070(uint64_t a1)
{
  v2 = sub_18E2C0054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B00AC(uint64_t a1)
{
  v2 = sub_18E2C0054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedHandwritingSynthesizerBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v33, v36);
  sub_18E1E9DDC();
  v15 = sub_18E21D09C(22, v13, v14);
  if (v2)
  {
    sub_18E1FE044(v64);
  }

  else
  {
    sub_18E1C68BC(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_18E1CE9C8();
    sub_18E1FECF0(v23, v24, v25, v26, v27, v28, v29, v30, v35, v38);
    v31 = sub_18E1E6A80();
    memcpy(v31, v32, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

void ImageCuratedPromptsBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v11 = sub_18E1E16F0();
  v14 = sub_18E1D45EC(v11, v12, v13);
  if (v2)
  {
    sub_18E1FE044(v55);
  }

  else
  {
    sub_18E1FECF0(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29);
    v22 = sub_18E1E6A80();
    memcpy(v22, v23, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v24;
    *(v1 + 208) = v25;
  }

  sub_18E1CFAAC();
}

void ImageCuratedPromptsBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  v15 = sub_18E1E16F0();
  v18 = sub_18E1D45EC(v15, v16, v17);
  if (v3)
  {

    sub_18E1FE044(v138);
  }

  else
  {
    v26 = sub_18E1D5E70(v18, v19, v20, v21, v22, v23, v24, v25, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v138[0]);
    sub_18E201A04(v26, v27, v28, v29, v30, v31, v32, v33, v36, v39);
    *(v2 + 200) = v1;
    *(v2 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t sub_18E2B0394(uint64_t a1)
{
  v2 = sub_18E2C00A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B03D0(uint64_t a1)
{
  v2 = sub_18E2C00A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedImageCuratedPromptsBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  v13 = sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v33, v36);
  v15 = sub_18E221924(v13, v4 | 0x8000000000000000, v14);
  if (v2)
  {
    sub_18E1FE044(v64);
  }

  else
  {
    sub_18E1C68BC(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_18E1CE9C8();
    sub_18E1FECF0(v23, v24, v25, v26, v27, v28, v29, v30, v35, v38);
    v31 = sub_18E1E6A80();
    memcpy(v31, v32, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

uint64_t sub_18E2B05E4(uint64_t a1)
{
  v2 = sub_18E2C00FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B0620(uint64_t a1)
{
  v2 = sub_18E2C00FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ImageMagicCleanUpBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  sub_18E1CFA44();
  v14 = sub_18E233268(v11, v12, v13);
  if (v2)
  {
    sub_18E1FE044(v55);
  }

  else
  {
    sub_18E1FECF0(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29);
    v22 = sub_18E1E6A80();
    memcpy(v22, v23, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v24;
    *(v1 + 208) = v25;
  }

  sub_18E1CFAAC();
}

void ImageMagicCleanUpBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  sub_18E1E83A4();
  v17 = sub_18E201A88(17, v15, v16);
  if (v2)
  {

    sub_18E1FE044(v137);
  }

  else
  {
    v25 = sub_18E1D5E70(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v137[0]);
    sub_18E201A04(v25, v26, v27, v28, v29, v30, v31, v32, v35, v38);
    *(v3 + 200) = v1;
    *(v3 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t sub_18E2B08AC(uint64_t a1)
{
  v2 = sub_18E2C0150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B08E8(uint64_t a1)
{
  v2 = sub_18E2C0150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedImageMagicCleanUpBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37);
  sub_18E1E9DDC();
  v16 = sub_18E233268(v13, v14, v15);
  if (v2)
  {
    sub_18E1FE044(v65);
  }

  else
  {
    sub_18E1C68BC(v16, v17, v18, v19, v20, v21, v22, v23, v35, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_18E1CE9C8();
    sub_18E1FECF0(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39);
    v32 = sub_18E1E6A80();
    memcpy(v32, v33, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

void sub_18E2B0A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E221F28();
  v7 = v6;
  sub_18E1DD340();
  memcpy(v8, v9, v10);
  sub_18E1DD340();
  memcpy(v11, v12, v13);
  v14 = sub_18E1D45EC(a2, a3, v28);
  if (v3)
  {
    sub_18E1FE044(v29);
  }

  else
  {
    sub_18E1FECF0(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27);
    v22 = sub_18E1E6A80();
    memcpy(v22, v23, 0xC8uLL);
    sub_18E1C7F4C();
    *(v7 + 200) = v24;
    *(v7 + 208) = v25;
  }

  sub_18E1CFAAC();
}

void sub_18E2B0B38()
{
  sub_18E223548();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_18E1CFFA8(v56);
  sub_18E1CFFA8(v55);
  v11 = sub_18E1D45EC(v4, v2, v55);
  if (v0)
  {

    sub_18E1FE044(v56);
  }

  else
  {
    v19 = sub_18E1D5E70(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17], v55[18], v55[19], v55[20], v55[21], v55[22], v55[23], v55[24], v56[0]);
    sub_18E201A04(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30);
    *(v10 + 200) = v8;
    *(v10 + 208) = v6;
  }

  sub_18E1D0268();
  sub_18E220CC4();
}

uint64_t sub_18E2B0C34(uint64_t a1)
{
  v2 = sub_18E2C01A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B0C70(uint64_t a1)
{
  v2 = sub_18E2C01A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2B0D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E221F28();
  v7 = v6;
  sub_18E1DD340();
  memcpy(v8, v9, v10);
  sub_18E1DD340();
  memcpy(v11, v12, v13);
  v14 = sub_18E1D45EC(a2, a3, v34);
  if (v3)
  {
    sub_18E1FE044(v36);
  }

  else
  {
    sub_18E1C68BC(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v34[18], v34[19], v34[20], v34[21], v34[22], v34[23], v34[24], v35);
    sub_18E1CE9C8();
    sub_18E1FECF0(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34[0]);
    v30 = sub_18E1E6A80();
    memcpy(v30, v31, 0xC8uLL);
    *(v7 + 200) = a2;
    *(v7 + 208) = 0;
  }

  sub_18E1CFAAC();
}

void sub_18E2B0DE8()
{
  sub_18E223548();
  sub_18E1D01B8();
  sub_18E1CFFA8(v83);
  v4 = sub_18E1CFFA8(&v33);
  v6 = sub_18E22179C(v4, v5, &v33);
  if (v1)
  {

    sub_18E1FE044(v83);
  }

  else
  {
    sub_18E223A20(v6, v7, v8, v9, v10, v11, v12, v13, v30, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]);
    sub_18E1C973C();
    v22 = sub_18E1D5E70(v14, v15, v16, v17, v18, v19, v20, v21, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]);
    sub_18E1D4410(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t sub_18E2B0FEC(uint64_t a1)
{
  v2 = sub_18E2C01F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1028(uint64_t a1)
{
  v2 = sub_18E2C01F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedImageSpatialPhotosReliveBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedImageSpatialPhotosReliveBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2B11FC(uint64_t a1)
{
  v2 = sub_18E2C024C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1238(uint64_t a1)
{
  v2 = sub_18E2C024C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedImageTokenizerBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedImageTokenizerBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

BOOL sub_18E2B1374()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  return v0 != 0;
}

BOOL sub_18E2B13BC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B1374();
  *a2 = result;
  return result;
}

BOOL sub_18E2B1408@<W0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B1374();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B1434(uint64_t a1)
{
  v2 = sub_18E2C02A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1470(uint64_t a1)
{
  v2 = sub_18E2C02A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E2B1544()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  sub_18E2452CC();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B15A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B1544();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B15D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B1544();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B15FC(uint64_t a1)
{
  v2 = sub_18E2C02F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1638(uint64_t a1)
{
  v2 = sub_18E2C02F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMAdapterAssetMetadata.ClassifierMetadata.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E221F28();
  v3 = sub_18E2706EC(&qword_1EABE1418, &qword_18E49F140);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C57AC();
  v9 = *v0;
  v14 = v0[2];
  v15 = v0[1];
  v10 = v2[4];
  sub_18E1DD34C(v2, v2[3]);
  sub_18E2C02F4();
  sub_18E1E843C();
  sub_18E44F4EC();
  sub_18E2C0348();
  sub_18E221C6C();
  sub_18E1CFB6C();
  sub_18E44F35C();
  if (!v1)
  {
    sub_18E1D8470(v15);
    sub_18E2706EC(&qword_1EABE1428, &qword_18E49F148);
    sub_18E2C0500(&unk_1EABE1430);
    sub_18E221C6C();
    sub_18E1CFB6C();
    sub_18E44F35C();
    sub_18E1E2F98();
    sub_18E2706EC(&qword_1EABE1440, &qword_18E49F150);
    sub_18E2C03F0();
    sub_18E221C6C();
    sub_18E1CFB6C();
    sub_18E44F2FC();
  }

  v11 = *(v5 + 8);
  v12 = sub_18E1D4BF4();
  v13(v12);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMAdapterAssetMetadata.ClassifierMetadata.init(from:)()
{
  sub_18E1C62A0();
  sub_18E243AFC();
  v2 = sub_18E2706EC(&qword_1EABE1450, &qword_18E49F158);
  sub_18E1C4EAC(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C02F4();
  sub_18E1E67AC();
  if (v1)
  {
    sub_18E1C9934(v0);
  }

  else
  {
    sub_18E2C04AC();
    sub_18E1E327C();
    sub_18E1DD270();
    sub_18E1CF5BC();
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE1428, &qword_18E49F148);
    sub_18E2C0500(&unk_1EABE05F8);
    sub_18E1CC3DC();
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE1440, &qword_18E49F150);
    sub_18E1E2F98();
    sub_18E2C05B4();
    sub_18E1CC3DC();
    sub_18E44F20C();
    v6 = sub_18E1CEAB4();
    v7(v6);
    sub_18E1E2E68();

    sub_18E1C9934(v0);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

uint64_t sub_18E2B1A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BF66C();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B1AAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BF66C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B1ADC(uint64_t a1)
{
  v2 = sub_18E2C0670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1B18(uint64_t a1)
{
  v2 = sub_18E2C0670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E2B1BEC()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B1C4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B1BEC();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B1C7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B1C2C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B1CA4(uint64_t a1)
{
  v2 = sub_18E2C06C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1CE0(uint64_t a1)
{
  v2 = sub_18E2C06C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E2B1DB4()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B1E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B1DB4();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B1E48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B1DF8();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B1E70(uint64_t a1)
{
  v2 = sub_18E2C0718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B1EAC(uint64_t a1)
{
  v2 = sub_18E2C0718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E2B1FA8()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B200C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B1FA8();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B203C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B1FEC();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B2064(uint64_t a1)
{
  v2 = sub_18E2C07D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B20A0(uint64_t a1)
{
  v2 = sub_18E2C07D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

ModelCatalog::LLMAdapterAssetMetadata::LoraRank_optional __swiftcall LLMAdapterAssetMetadata.LoraRank.init(rawValue:)(Swift::String rawValue)
{
  sub_18E1E2F20();
  v3 = v2;
  sub_18E44F19C();
  result.value = sub_18E1E3B74();
  v5 = 6;
  if (v1 < 6)
  {
    v5 = v1;
  }

  *v3 = v5;
  return result;
}

uint64_t sub_18E2B2408()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B2468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B2408();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B2498@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B2448();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B24C0(uint64_t a1)
{
  v2 = sub_18E2C0890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B24FC(uint64_t a1)
{
  v2 = sub_18E2C0890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMAdapterAssetMetadata.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE14B0, &unk_18E49F1B8);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E239C14();
  sub_18E1E640C();
  v21 = *(v0 + 673);
  v22 = *(v0 + 672);
  v18 = *(v0 + 688);
  v19 = *(v0 + 696);
  v20 = *(v0 + 680);
  v11 = v4[4];
  sub_18E1DD34C(v4, v4[3]);
  sub_18E2C0890();
  sub_18E1E843C();
  sub_18E44F4EC();
  v24[0] = v2;
  v23[0] = 0;
  sub_18E2C08E4();
  sub_18E1E68D0();
  if (v1)
  {
    v12 = *(v7 + 8);
    v16 = sub_18E1E33F0();
  }

  else
  {
    sub_18E2219D4();
    v24[0] = v2;
    v23[0] = 2;
    sub_18E2C0938();
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E1E1F3C(3);
    sub_18E233860();
    sub_18E44F31C();
    sub_18E1E1F3C(4);
    sub_18E233860();
    sub_18E44F31C();
    sub_18E1E1F3C(5);
    sub_18E233860();
    sub_18E44F2EC();
    memcpy(v26, v27, sizeof(v26));
    v25[191] = 6;
    sub_18E202008(v27, v24, &qword_1EABE14A0, &qword_18E49F1A8);
    sub_18E2C098C();
    sub_18E223B44();
    sub_18E235A4C();
    sub_18E2CF0FC(v25, &qword_1EABE14A0);
    sub_18E1CFEAC();
    sub_18E2C09E0();
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E1E2254();
    sub_18E221714();
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1C638C(&qword_1ED6A7948);
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E240548();
    sub_18E2C0A34();
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E201EE0();
    memcpy(v24, v28, sizeof(v24));
    v23[327] = 10;
    sub_18E202008(v28, v23, &qword_1EABE14A8, &qword_18E49F1B0);
    sub_18E2C0A88();
    sub_18E207AA0();
    v13 = sub_18E1E259C();
    memcpy(v13, v14, v15);
    sub_18E2CF0FC(v23, &qword_1EABE14A8);
    sub_18E223F54(11);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E223F54(12);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E223450();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1E11DC(&unk_1EABE0088);
    sub_18E1E8554();
    sub_18E44F2FC();
    sub_18E1E0FC0();
    sub_18E44F2BC();
    v16 = sub_18E1CFF5C();
  }

  v17(v16);
  sub_18E1E2968();
  sub_18E1C6650();
}

void LLMAdapterAssetMetadata.init(from:)()
{
  sub_18E1C62A0();
  sub_18E2231E0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE14E8, &qword_18E49F1C8);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v0[3];
  sub_18E1DD34C(v0, v9);
  sub_18E2C0890();
  sub_18E1E33E4();
  sub_18E44F4DC();
  if (v1)
  {
    sub_18E223CF8();
    sub_18E1C9934(v0);
    if (v9)
    {
      sub_18E2246CC();
      sub_18E2CF0FC(v25, &qword_1EABE14A0);
      if ((v5 & 1) == 0)
      {
LABEL_11:
        if (v2)
        {
LABEL_12:

          if ((v4 & 1) == 0)
          {
LABEL_13:
            if (!v23)
            {
              goto LABEL_15;
            }

LABEL_14:
            memcpy(v25, v27, 0x140uLL);
            sub_18E2CF0FC(v25, &qword_1EABE14A8);
            goto LABEL_15;
          }

LABEL_7:
          sub_18E2C1568(v22, v21);
          if ((v23 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_6:
        if (!v4)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_11;
    }

    sub_18E1E85CC();
    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_18E2C0ADC();
  sub_18E1C5380();
  sub_18E44F26C();
  sub_18E1C77EC(1);
  v10 = sub_18E44F1FC();
  sub_18E221BC8(v10, v11);
  sub_18E2C0B30();
  sub_18E1C5380();
  sub_18E44F20C();
  sub_18E1C77EC(3);
  sub_18E44F22C();
  sub_18E1C77EC(4);
  sub_18E44F22C();
  sub_18E1C77EC(5);
  v12 = sub_18E44F1FC();
  sub_18E1E8A9C(v12, v13);
  sub_18E2C0B84();
  sub_18E1C580C();
  sub_18E44F20C();
  sub_18E232F4C();
  sub_18E2C0BD8();
  sub_18E1C5380();
  sub_18E44F20C();
  sub_18E1E22FC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E1E2E04();
  sub_18E1C670C(&qword_1ED6A7940);
  sub_18E2244FC();
  sub_18E1E26E8();
  sub_18E2C0C2C();
  sub_18E1C5380();
  sub_18E44F20C();
  sub_18E216B38();
  sub_18E2C0C80();
  sub_18E1C580C();
  sub_18E44F20C();
  memcpy(v27, v26, sizeof(v27));
  sub_18E1C77EC(11);
  v20 = sub_18E44F1DC();
  sub_18E1C77EC(12);
  v19 = sub_18E44F1DC();
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v24[0] = 13;
  sub_18E1E89AC(&unk_1ED6A8378);
  sub_18E2244FC();
  sub_18E223FC4();
  v14 = sub_18E1CA5C4();
  v15(v14);
  sub_18E221E40();
  sub_18E1CFD00();
  v24[672] = v20;
  v24[673] = v19;
  sub_18E1D4D40();
  sub_18E1E3A90(v16);
  sub_18E2C0CD4(v24, v25);
  sub_18E1C9934(v0);
  sub_18E22332C();
  sub_18E246FA0();
  v25[672] = v20;
  v25[673] = v19;
  sub_18E1D4D40();
  v18 = sub_18E223F78(v17);
  sub_18E2C0D0C(v18);
LABEL_15:
  sub_18E1E19E4();
  sub_18E1C6650();
}

void AssetBackedLLMAdapterBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedLLMAdapterBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

BOOL sub_18E2B3260()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  return v0 != 0;
}

BOOL sub_18E2B329C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B3260();
  *a2 = result;
  return result;
}

BOOL sub_18E2B32D0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B3260();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B32FC(uint64_t a1)
{
  v2 = sub_18E2C0D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B3338(uint64_t a1)
{
  v2 = sub_18E2C0D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2B33A8()
{
  sub_18E1C62A0();
  v17 = v2;
  v4 = v3;
  v6 = sub_18E221758(v3, v5);
  v8 = sub_18E2706EC(v6, v7);
  sub_18E1C4EAC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C8E58();
  v14 = *v0;
  v15 = v4[4];
  v16 = sub_18E1DD34C(v4, v4[3]);
  v17(v16);
  sub_18E2092D8();
  sub_18E44F4EC();
  sub_18E44F34C();
  (*(v10 + 8))(v1, v8);
  sub_18E1C6650();
}

void sub_18E2B34E0()
{
  sub_18E1C62A0();
  sub_18E1E694C();
  v19 = v3;
  v6 = sub_18E221758(v4, v5);
  v8 = sub_18E2706EC(v6, v7);
  sub_18E1C4EAC(v8);
  v20 = v9;
  v11 = *(v10 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1CAFF0();
  v13 = v0[4];
  v14 = sub_18E1DD34C(v0, v0[3]);
  v2(v14);
  sub_18E233330();
  if (!v1)
  {
    sub_18E1E8554();
    v15 = sub_18E44F25C();
    v16 = *(v20 + 8);
    v17 = sub_18E1E2088();
    v18(v17);
    *v19 = v15;
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

ModelCatalog::LLMAdapterMetadataOverrideAssetMetadata::ClassifierMetadata __swiftcall LLMAdapterMetadataOverrideAssetMetadata.ClassifierMetadata.init(defaultOutputClass:outputClasses:outputClassesPerThreshold:)(ModelCatalog::LLMAdapterMetadataOverrideAssetMetadata::ClassifierDefaultOutputClass defaultOutputClass, Swift::OpaquePointer outputClasses, Swift::OpaquePointer_optional outputClassesPerThreshold)
{
  v3->_rawValue = *defaultOutputClass.tokenId;
  v3[1]._rawValue = outputClasses._rawValue;
  v3[2]._rawValue = outputClassesPerThreshold.value;
  result.outputClassesPerThreshold = outputClassesPerThreshold;
  result.outputClasses = outputClasses;
  result.defaultOutputClass = defaultOutputClass;
  return result;
}

uint64_t sub_18E2B3630()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  sub_18E2452CC();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_18E2B366C(char a1)
{
  if (!a1)
  {
    sub_18E1C77B0();
  }
}

uint64_t sub_18E2B36D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B3630();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B3704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B3630();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B372C(uint64_t a1)
{
  v2 = sub_18E2C0D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B3768(uint64_t a1)
{
  v2 = sub_18E2C0D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMAdapterMetadataOverrideAssetMetadata.ClassifierMetadata.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E221F28();
  v3 = sub_18E2706EC(&qword_1EABE1508, &qword_18E49F1E0);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C57AC();
  v9 = *v0;
  v14 = v0[2];
  v15 = v0[1];
  v10 = v2[4];
  sub_18E1DD34C(v2, v2[3]);
  sub_18E2C0D90();
  sub_18E1E843C();
  sub_18E44F4EC();
  sub_18E2C0DE4();
  sub_18E221C6C();
  sub_18E1CFB6C();
  sub_18E44F35C();
  if (!v1)
  {
    sub_18E1D8470(v15);
    sub_18E2706EC(&qword_1EABE1520, &qword_18E49F1E8);
    sub_18E2C0E38(&unk_1EABE1528);
    sub_18E221C6C();
    sub_18E1CFB6C();
    sub_18E44F35C();
    sub_18E1E2F98();
    sub_18E2706EC(&qword_1EABE1538, &qword_18E49F1F0);
    sub_18E2C0EEC();
    sub_18E221C6C();
    sub_18E1CFB6C();
    sub_18E44F2FC();
  }

  v11 = *(v5 + 8);
  v12 = sub_18E1D4BF4();
  v13(v12);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMAdapterMetadataOverrideAssetMetadata.ClassifierMetadata.init(from:)()
{
  sub_18E1C62A0();
  sub_18E243AFC();
  v2 = sub_18E2706EC(&qword_1EABE1548, &qword_18E49F1F8);
  sub_18E1C4EAC(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C0D90();
  sub_18E1E67AC();
  if (v1)
  {
    sub_18E1C9934(v0);
  }

  else
  {
    sub_18E2C0FA8();
    sub_18E1E327C();
    sub_18E1DD270();
    sub_18E1CF5BC();
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE1520, &qword_18E49F1E8);
    sub_18E2C0E38(&unk_1EABE1558);
    sub_18E1CC3DC();
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE1538, &qword_18E49F1F0);
    sub_18E1E2F98();
    sub_18E2C1050();
    sub_18E1CC3DC();
    sub_18E44F20C();
    v6 = sub_18E1CEAB4();
    v7(v6);
    sub_18E1E2E68();

    sub_18E1C9934(v0);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

ModelCatalog::LLMAdapterMetadataOverrideAssetMetadata::ClassifierOutputClass __swiftcall LLMAdapterMetadataOverrideAssetMetadata.ClassifierOutputClass.init(tokenId:tokenProbabilityThreshold:)(Swift::Int tokenId, Swift::Double tokenProbabilityThreshold)
{
  *v2 = tokenId;
  *(v2 + 8) = tokenProbabilityThreshold;
  result.tokenProbabilityThreshold = tokenProbabilityThreshold;
  result.tokenId = tokenId;
  return result;
}

uint64_t sub_18E2B3B98(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x64695F6E656B6F74;
  }
}

uint64_t sub_18E2B3BD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BF66C();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B3C0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BF66C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B3C3C(uint64_t a1)
{
  v2 = sub_18E2C110C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B3C78(uint64_t a1)
{
  v2 = sub_18E2C110C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2B3CE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6 = sub_18E221758(a1, a2);
  v8 = sub_18E2706EC(v6, v7);
  sub_18E1C4EAC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C57AC();
  v14 = *v4;
  v15 = v4[1];
  v16 = a1[4];
  v17 = sub_18E1DD34C(a1, a1[3]);
  a4(v17);
  sub_18E44F4EC();
  sub_18E44F34C();
  if (!v22)
  {
    sub_18E1CFB6C();
    sub_18E44F33C();
  }

  v18 = *(v10 + 8);
  v19 = sub_18E1D4BF4();
  v20(v19);
  sub_18E1CEAC4();
}

void sub_18E2B3E68()
{
  sub_18E1E694C();
  v22 = v3;
  v6 = sub_18E221758(v4, v5);
  v8 = sub_18E2706EC(v6, v7);
  sub_18E1C4EAC(v8);
  v21 = v9;
  v11 = *(v10 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1CAFF0();
  v13 = v0[4];
  v14 = sub_18E1DD34C(v0, v0[3]);
  v2(v14);
  sub_18E233330();
  if (!v1)
  {
    sub_18E1E8554();
    v15 = sub_18E44F25C();
    sub_18E1E8554();
    sub_18E44F24C();
    v17 = v16;
    v18 = *(v21 + 8);
    v19 = sub_18E1E2088();
    v20(v19);
    *v22 = v15;
    v22[1] = v17;
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
}

uint64_t sub_18E2B4024()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B406C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B4024();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B409C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B4064();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B40C4(uint64_t a1)
{
  v2 = sub_18E2C1160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B4100(uint64_t a1)
{
  v2 = sub_18E2C1160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2B4170()
{
  sub_18E1C62A0();
  v3 = v2;
  v5 = v4;
  v7 = sub_18E221758(v4, v6);
  v9 = sub_18E2706EC(v7, v8);
  sub_18E1C4EAC(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  v16 = *v0;
  v15 = v0[1];
  v17 = v0[3];
  v25[4] = v0[2];
  v25[5] = v15;
  v25[3] = v17;
  v18 = v0[4];
  v25[1] = v0[5];
  v25[2] = v18;
  v25[0] = v0[6];
  v20 = v5[3];
  v19 = v5[4];
  v21 = v5;
  v23 = v25 - v22;
  v24 = sub_18E1DD34C(v21, v20);
  v3(v24);

  sub_18E44F4EC();
  v26 = 0;
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E1C638C(&qword_1ED6A7948);
  sub_18E44F2FC();
  if (v1)
  {
  }

  else
  {

    sub_18E1C29A4(1);
    sub_18E1C29A4(2);
    sub_18E1C29A4(3);
    sub_18E1C29A4(4);
    sub_18E1C29A4(5);
    sub_18E1C29A4(6);
  }

  (*(v11 + 8))(v23, v9);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E2B43CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  v13 = v12;
  sub_18E2231E0();
  v15 = v14;
  v18 = sub_18E221758(v16, v17);
  v30 = sub_18E2706EC(v18, v19);
  sub_18E1C4EAC(v30);
  v21 = *(v20 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C8E58();
  v23 = v10[3];
  v24 = v10[4];
  v25 = sub_18E1E63B4();
  v27 = sub_18E1DD34C(v25, v26);
  v13(v27);
  sub_18E2092D8();
  sub_18E44F4DC();
  if (v11)
  {
    sub_18E1C9934(v10);
  }

  else
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1C670C(&qword_1ED6A7940);
    sub_18E1E327C();
    sub_18E44F20C();
    sub_18E1C8734(1);
    sub_18E1C8734(2);
    sub_18E1C8734(3);
    sub_18E1C8734(4);
    sub_18E1C8734(5);
    sub_18E1C8734(6);
    v28 = sub_18E1D4360();
    v29(v28);
    *v15 = a10;
    v15[1] = a10;
    v15[2] = a10;
    v15[3] = a10;
    v15[4] = a10;
    v15[5] = a10;
    v15[6] = a10;

    sub_18E1C9934(v10);
  }

  sub_18E1C6650();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.startPromptTokenStr.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.endPromptToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.chatRoleSystem.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.chatRoleUser.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.chatRoleAssistant.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.chatRoleTool.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.chatComponentTurnend.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.chatRoleSystemDefault.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.stopTokenStr.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.startExecutableStr.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.startExecutableInt.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.endExecutableStr.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.endExecutableInt.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.startImageTokenInt.getter()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.startImageTokenStr.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.endImageTokenInt.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.endImageTokenStr.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return sub_18E1C5BFC();
}

uint64_t sub_18E2B4B30()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B4BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B4B30();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B4BE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B4B74();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B4C08(uint64_t a1)
{
  v2 = sub_18E2C11B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B4C44(uint64_t a1)
{
  v2 = sub_18E2C11B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.draftTreeFactor.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.draftSecondaryTreeFactor.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.draftTreeMaxPaths.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.draftEarlyReturnProbabilityThreshold.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.streamMaximumGamma.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.speculativeDecodeType.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.temperature.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.streamLayerId.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.streamTreeFactor.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t sub_18E2B4EBC()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B4F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B4EBC();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B4F6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B4F00();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B4F94(uint64_t a1)
{
  v2 = sub_18E2C1270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B4FD0(uint64_t a1)
{
  v2 = sub_18E2C1270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

ModelCatalog::LLMAdapterMetadataOverrideAssetMetadata::LoraRank_optional __swiftcall LLMAdapterMetadataOverrideAssetMetadata.LoraRank.init(rawValue:)(Swift::String rawValue)
{
  sub_18E1E2F20();
  v3 = v2;
  sub_18E44F19C();
  result.value = sub_18E1E3B74();
  v5 = 6;
  if (v1 < 6)
  {
    v5 = v1;
  }

  *v3 = v5;
  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.LoraRank.rawValue.getter()
{
  result = 0x345F61726F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x385F61726F6CLL;
      break;
    case 2:
      result = 0x36315F61726F6CLL;
      break;
    case 3:
      result = 0x32335F61726F6CLL;
      break;
    case 4:
      result = 0x34365F61726F6CLL;
      break;
    case 5:
      result = 0x3832315F61726F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.ModelType.rawValue.getter()
{
  if (*v0)
  {
    return 7696487;
  }

  else
  {
    return 6647393;
  }
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.backboneSignature.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.adapterSignature.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_18E1C5BFC();
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.speculativeStreamCount.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_18E2B53F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, (v3 + 72), 0xB9uLL);
  memcpy(a3, (v3 + 72), 0xB9uLL);
  return sub_18E202008(__dst, v8, a1, a2);
}

uint64_t sub_18E2B549C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[41];
  v3 = v1[42];
  v4 = v1[43];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_18E2C132C(v2, v3);
}

uint64_t sub_18E2B54D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, (v3 + 352), 0x140uLL);
  memcpy(a3, (v3 + 352), 0x140uLL);
  return sub_18E202008(__dst, v8, a1, a2);
}

uint64_t LLMAdapterMetadataOverrideAssetMetadata.imageTokenizationMode.getter()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 696);

  return sub_18E1C5BFC();
}

__n128 sub_18E2B55D0@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, void *__src, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, __int16 a17, __int128 a18, uint64_t a19)
{
  v20 = (a9 + 264);
  v21 = *a4;
  v22 = *(a13 + 48);
  v23 = *(a15 + 16);
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 17) = v21;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11 & 1;
  memcpy((a9 + 72), __src, 0xB9uLL);
  v24 = *(a13 + 16);
  *v20 = *a13;
  *(a9 + 280) = v24;
  *(a9 + 296) = *(a13 + 32);
  *(a9 + 312) = v22;
  *(a9 + 320) = a14;
  *(a9 + 328) = *a15;
  *(a9 + 344) = v23;
  memcpy((a9 + 352), a16, 0x140uLL);
  *(a9 + 672) = a17;
  result = a18;
  *(a9 + 680) = a18;
  *(a9 + 696) = a19;
  return result;
}

uint64_t sub_18E2B56CC()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

void sub_18E2B5714()
{
  sub_18E1E6B14();
  switch(v0)
  {
    case 2:
      sub_18E1E23C4();
      break;
    case 3:
    case 10:
      sub_18E1C77B0();
      break;
    case 4:
      sub_18E1E286C(18);
      break;
    case 5:
      sub_18E2079E0();
      break;
    case 6:
      sub_18E242F64();
      break;
    case 7:
      sub_18E1E392C();
      break;
    case 8:
    case 9:
      sub_18E220894();
      break;
    case 11:
      sub_18E25E184();
      break;
    case 12:
      sub_18E1E7B6C(18);
      break;
    case 13:
      sub_18E22440C();
      break;
    default:
      return;
  }
}

uint64_t sub_18E2B5870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B56CC();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B58A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B570C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B58C8(uint64_t a1)
{
  v2 = sub_18E2C1370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B5904(uint64_t a1)
{
  v2 = sub_18E2C1370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMAdapterMetadataOverrideAssetMetadata.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE15E0, &qword_18E49F250);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E239C14();
  sub_18E1E640C();
  v21 = *(v0 + 673);
  v22 = *(v0 + 672);
  v18 = *(v0 + 688);
  v19 = *(v0 + 696);
  v20 = *(v0 + 680);
  v11 = v4[4];
  sub_18E1DD34C(v4, v4[3]);
  sub_18E2C1370();
  sub_18E1E843C();
  sub_18E44F4EC();
  v24[0] = v2;
  v23[0] = 0;
  sub_18E2C13C4();
  sub_18E1E68D0();
  if (v1)
  {
    v12 = *(v7 + 8);
    v16 = sub_18E1E33F0();
  }

  else
  {
    sub_18E2219D4();
    v24[0] = v2;
    v23[0] = 2;
    sub_18E2C1418();
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E1E1F3C(3);
    sub_18E233860();
    sub_18E44F31C();
    sub_18E1E1F3C(4);
    sub_18E233860();
    sub_18E44F31C();
    sub_18E1E1F3C(5);
    sub_18E233860();
    sub_18E44F2EC();
    memcpy(v26, v27, sizeof(v26));
    v25[191] = 6;
    sub_18E202008(v27, v24, &qword_1EABE15D0, &qword_18E49F240);
    sub_18E2C146C();
    sub_18E223B44();
    sub_18E235A4C();
    sub_18E2CF0FC(v25, &qword_1EABE15D0);
    sub_18E1CFEAC();
    sub_18E2C14C0();
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E1E2254();
    sub_18E221714();
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1C638C(&qword_1ED6A7948);
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E240548();
    sub_18E2C1514();
    sub_18E1E3040();
    sub_18E44F2FC();
    sub_18E201EE0();
    memcpy(v24, v28, sizeof(v24));
    v23[327] = 10;
    sub_18E202008(v28, v23, &qword_1EABE15D8, &qword_18E49F248);
    sub_18E2C15AC();
    sub_18E207AA0();
    v13 = sub_18E1E259C();
    memcpy(v13, v14, v15);
    sub_18E2CF0FC(v23, &qword_1EABE15D8);
    sub_18E223F54(11);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E223F54(12);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E223450();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1E11DC(&unk_1EABE0088);
    sub_18E1E8554();
    sub_18E44F2FC();
    sub_18E1E0FC0();
    sub_18E44F2BC();
    v16 = sub_18E1CFF5C();
  }

  v17(v16);
  sub_18E1E2968();
  sub_18E1C6650();
}

void LLMAdapterMetadataOverrideAssetMetadata.init(from:)()
{
  sub_18E1C62A0();
  sub_18E2231E0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE1620, &qword_18E49F258);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = v0[3];
  sub_18E1DD34C(v0, v9);
  sub_18E2C1370();
  sub_18E1E33E4();
  sub_18E44F4DC();
  if (v1)
  {
    sub_18E223CF8();
    sub_18E1C9934(v0);
    if (v9)
    {
      sub_18E2246CC();
      sub_18E2CF0FC(v25, &qword_1EABE15D0);
      if ((v5 & 1) == 0)
      {
LABEL_11:
        if (v2)
        {
LABEL_12:

          if ((v4 & 1) == 0)
          {
LABEL_13:
            if (!v23)
            {
              goto LABEL_15;
            }

LABEL_14:
            memcpy(v25, v27, 0x140uLL);
            sub_18E2CF0FC(v25, &qword_1EABE15D8);
            goto LABEL_15;
          }

LABEL_7:
          sub_18E2C1568(v22, v21);
          if ((v23 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_6:
        if (!v4)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_11;
    }

    sub_18E1E85CC();
    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_18E2C1600();
  sub_18E1C5380();
  sub_18E44F26C();
  sub_18E1C77EC(1);
  v10 = sub_18E44F1FC();
  sub_18E221BC8(v10, v11);
  sub_18E2C1654();
  sub_18E1C5380();
  sub_18E44F20C();
  sub_18E1C77EC(3);
  sub_18E44F22C();
  sub_18E1C77EC(4);
  sub_18E44F22C();
  sub_18E1C77EC(5);
  v12 = sub_18E44F1FC();
  sub_18E1E8A9C(v12, v13);
  sub_18E2C16A8();
  sub_18E1C580C();
  sub_18E44F20C();
  sub_18E232F4C();
  sub_18E2C16FC();
  sub_18E1C5380();
  sub_18E44F20C();
  sub_18E1E22FC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E1E2E04();
  sub_18E1C670C(&qword_1ED6A7940);
  sub_18E2244FC();
  sub_18E1E26E8();
  sub_18E2C1750();
  sub_18E1C5380();
  sub_18E44F20C();
  sub_18E216B38();
  sub_18E2C17A4();
  sub_18E1C580C();
  sub_18E44F20C();
  memcpy(v27, v26, sizeof(v27));
  sub_18E1C77EC(11);
  v20 = sub_18E44F1DC();
  sub_18E1C77EC(12);
  v19 = sub_18E44F1DC();
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v24[0] = 13;
  sub_18E1E89AC(&unk_1ED6A8378);
  sub_18E2244FC();
  sub_18E223FC4();
  v14 = sub_18E1CA5C4();
  v15(v14);
  sub_18E221E40();
  sub_18E1CFD00();
  v24[672] = v20;
  v24[673] = v19;
  sub_18E1D4D40();
  sub_18E1E3A90(v16);
  sub_18E2C17F8(v24, v25);
  sub_18E1C9934(v0);
  sub_18E22332C();
  sub_18E246FA0();
  v25[672] = v20;
  v25[673] = v19;
  sub_18E1D4D40();
  v18 = sub_18E223F78(v17);
  sub_18E2C1830(v18);
LABEL_15:
  sub_18E1E19E4();
  sub_18E1C6650();
}

void AssetBackedLLMAdapterMetadataOverrideBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedLLMAdapterMetadataOverrideBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void AssetBackedLLMAdapterMetadataOverrideBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v49, v54, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v50, v55);
  sub_18E1E3BD4();
  v22 = sub_18E21D09C(27, v20, v21);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v207 || !*(v207 + 16))
  {
    sub_18E2D0B44();
    v46 = sub_18E1C8558();
    sub_18E1E6860(v46, v47);
    sub_18E221DDC(v48, 41);

LABEL_7:

    sub_18E1FE044(&v206);
    goto LABEL_8;
  }

  sub_18E223A20(v22, v23, v24, v25, v26, v27, v28, v29, v51, v56, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v206);
  sub_18E1C973C();
  v38 = sub_18E1D5E70(v30, v31, v32, v33, v34, v35, v36, v37, v52, v57, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v206);
  sub_18E1D4410(v38, v39, v40, v41, v42, v43, v44, v45, v53, v58);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

ModelCatalog::LLMDraftModelAssetMetadata::ANEExtendInfo __swiftcall LLMDraftModelAssetMetadata.ANEExtendInfo.init(type:ctxLen:seqLen:)(Swift::String type, Swift::Int ctxLen, Swift::Int seqLen)
{
  *v3 = type;
  v3[1]._countAndFlagsBits = ctxLen;
  v3[1]._object = seqLen;
  result.type = type;
  result.seqLen = seqLen;
  result.ctxLen = ctxLen;
  return result;
}

uint64_t sub_18E2B653C()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  sub_18E2452CC();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B6578(char a1)
{
  if (!a1)
  {
    return sub_18E1E23C4();
  }

  if (a1 == 1)
  {
    return 0x6E656C5F787463;
  }

  return 0x6E656C5F716573;
}

uint64_t sub_18E2B65E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B653C();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B6610()
{
  v1 = sub_18E1D6250();
  result = sub_18E2B6578(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18E2B6640@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B653C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B6668(uint64_t a1)
{
  v2 = sub_18E2C1860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B66A4(uint64_t a1)
{
  v2 = sub_18E2C1860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMDraftModelAssetMetadata.ANEExtendInfo.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE1658, &qword_18E49F260);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C57AC();
  v11 = *v0;
  v12 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v13 = v4[4];
  sub_18E1DD34C(v4, v4[3]);
  sub_18E2C1860();
  sub_18E1E2A60();
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E44F31C();
  if (!v1)
  {
    sub_18E1C5774();
    sub_18E1CFB6C();
    sub_18E44F34C();
    sub_18E2016B4();
    sub_18E1CFB6C();
    sub_18E44F34C();
  }

  (*(v7 + 8))(v2, v5);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMDraftModelAssetMetadata.ANEExtendInfo.init(from:)()
{
  sub_18E1C62A0();
  sub_18E243AFC();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE1660, &qword_18E49F268);
  sub_18E1C4EAC(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C1860();
  sub_18E1E67AC();
  if (v1)
  {
    sub_18E1C9934(v0);
  }

  else
  {
    sub_18E1DD260();
    v8 = sub_18E44F22C();
    v10 = v9;
    sub_18E1C5774();
    sub_18E1DD260();
    v14 = sub_18E44F25C();
    sub_18E2016B4();
    sub_18E1DD260();
    v11 = sub_18E44F25C();
    v12 = sub_18E1C59F8();
    v13(v12);
    *v3 = v8;
    v3[1] = v10;
    v3[2] = v14;
    v3[3] = v11;

    sub_18E1C9934(v0);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

uint64_t sub_18E2B69EC()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B6A34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B69EC();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B6A64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B6A30();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B6A8C(uint64_t a1)
{
  v2 = sub_18E2C18B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B6AC8(uint64_t a1)
{
  v2 = sub_18E2C18B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E2B6BC4()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B6C0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B6BC4();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B6C3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B6C08();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B6C64(uint64_t a1)
{
  v2 = sub_18E2C1970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B6CA0(uint64_t a1)
{
  v2 = sub_18E2C1970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMDraftModelAssetMetadata.modelConfig.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

uint64_t LLMDraftModelAssetMetadata.backboneSignature.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_18E1C5BFC();
}

uint64_t LLMDraftModelAssetMetadata.defaultParameters.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 56), 0xB9uLL);
  memcpy(a1, (v1 + 56), 0xB9uLL);
  return sub_18E202008(__dst, v4, &qword_1EABE1688, &qword_18E49F290);
}

uint64_t LLMDraftModelAssetMetadata.specialTokensMap.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 248), 0x140uLL);
  memcpy(a1, (v1 + 248), 0x140uLL);
  return sub_18E202008(__dst, v4, &qword_1EABE1690, &qword_18E49F298);
}

void *LLMDraftModelAssetMetadata.init(modelType:modelConfig:backboneSignature:e5FunctionNameMap:defaultParameters:specialTokensMap:prewarmForConstrainedDecoding:rollbackStrings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, const void *a9, char a10, uint64_t a11)
{
  sub_18E223B70(a1, a2, a3, a4, a5, a6, a7, a8);
  memcpy((v12 + 56), v13, 0xB9uLL);
  result = memcpy((a8 + 248), a9, 0x140uLL);
  *(a8 + 568) = a10;
  *(a8 + 576) = a11;
  return result;
}

uint64_t sub_18E2B6F54()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_18E2B6F9C()
{
  sub_18E1E6B14();
  switch(v0)
  {
    case 1:
      sub_18E22EA44();
      break;
    case 2:
    case 4:
    case 5:
      sub_18E1C77B0();
      break;
    case 3:
      sub_18E1CA6EC();
      break;
    case 6:
      sub_18E25E184();
      break;
    case 7:
      sub_18E220894();
      break;
    default:
      return;
  }
}

uint64_t sub_18E2B7098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B6F54();
  *a2 = result;
  return result;
}

void sub_18E2B70C8()
{
  sub_18E1D6250();
  sub_18E2B6F9C();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_18E2B710C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B6F94();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B7134(uint64_t a1)
{
  v2 = sub_18E2C1A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B7170(uint64_t a1)
{
  v2 = sub_18E2C1A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMDraftModelAssetMetadata.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE1698, &qword_18E49F2A0);
  sub_18E1C4EAC(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAFF0();
  v8 = *v0;
  v17 = v0[2];
  v18 = v0[1];
  v15 = v0[4];
  v16 = v0[3];
  v13 = v0[6];
  v14 = v0[5];
  memcpy(v23, v0 + 7, 0xB9uLL);
  memcpy(v24, v0 + 31, 0x140uLL);
  v25 = *(v0 + 568);
  v12 = v0[72];
  v9 = v3[4];
  sub_18E1DD34C(v3, v3[3]);
  sub_18E2C1A2C();
  sub_18E44F4EC();
  LOBYTE(v20[0]) = 0;
  sub_18E44F31C();
  if (!v1)
  {
    sub_18E1E8554();
    sub_18E44F2BC();
    sub_18E1E8554();
    sub_18E44F2BC();
    v20[0] = v13;
    LOBYTE(v19[0]) = 3;
    sub_18E2706EC(&qword_1EABE16A0, &qword_18E49F2A8);
    sub_18E2C1B7C(&unk_1EABE16A8);
    sub_18E1E8554();
    sub_18E44F2FC();
    memcpy(v22, v23, sizeof(v22));
    sub_18E202008(v23, v20, &qword_1EABE1688, &qword_18E49F290);
    sub_18E2C1AD4();
    sub_18E1E8554();
    sub_18E44F2FC();
    memcpy(v21, v22, 0xB9uLL);
    sub_18E2CF0FC(v21, &qword_1EABE1688);
    memcpy(v20, v24, sizeof(v20));
    sub_18E202008(v24, v19, &qword_1EABE1690, &qword_18E49F298);
    sub_18E2C1B28();
    sub_18E1E8554();
    sub_18E44F2FC();
    memcpy(v19, v20, sizeof(v19));
    sub_18E2CF0FC(v19, &qword_1EABE1690);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1E11DC(&unk_1EABE0088);
    sub_18E1E8554();
    sub_18E44F2FC();
  }

  v10 = sub_18E1C59F8();
  v11(v10);
  sub_18E1E2968();
  sub_18E1C6650();
}

void LLMDraftModelAssetMetadata.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v22 = sub_18E2706EC(&qword_1EABE16C8, &qword_18E49F2B0);
  sub_18E1C4EAC(v22);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  v8 = v2[4];
  sub_18E1DD34C(v2, v2[3]);
  sub_18E2C1A2C();
  sub_18E1E33E4();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v2);
  }

  else
  {
    sub_18E1E3108();
    v9 = sub_18E44F22C();
    v11 = v10;
    sub_18E1E3108();
    v12 = sub_18E44F1CC();
    v21 = v13;
    LOBYTE(v24[0]) = 2;
    sub_18E2209B0();
    v19 = sub_18E44F1CC();
    v20 = v14;
    sub_18E2706EC(&qword_1EABE16A0, &qword_18E49F2A8);
    LOBYTE(v23[0]) = 3;
    sub_18E2C1B7C(&unk_1EABDF768);
    sub_18E2209B0();
    sub_18E44F20C();
    v18 = v24[0];
    sub_18E2C1C4C();
    sub_18E2209B0();
    sub_18E44F20C();
    memcpy(v32, v30, sizeof(v32));
    sub_18E2C1CA0();
    sub_18E2209B0();
    sub_18E44F20C();
    memcpy(&v31[7], v29, 0x140uLL);
    LOBYTE(v24[0]) = 6;
    sub_18E2209B0();
    v33 = sub_18E44F1DC();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1E89AC(&unk_1ED6A8378);
    sub_18E2209B0();
    sub_18E44F20C();
    v15 = sub_18E1D7FC0();
    v16(v15);
    v17 = v28;
    v23[0] = v9;
    v23[1] = v11;
    v23[2] = v12;
    v23[3] = v21;
    v23[4] = v19;
    v23[5] = v20;
    v23[6] = v18;
    memcpy(&v23[7], v32, 0xB9uLL);
    memcpy(&v23[30] + 1, v31, 0x147uLL);
    LOBYTE(v23[71]) = v33;
    v23[72] = v28;
    memcpy(v4, v23, 0x248uLL);
    sub_18E2C1CF4(v23, v24);
    sub_18E1C9934(v2);
    v24[0] = v9;
    v24[1] = v11;
    v24[2] = v12;
    v24[3] = v21;
    v24[4] = v19;
    v24[5] = v20;
    v24[6] = v18;
    memcpy(v25, v32, sizeof(v25));
    memcpy(v26, v31, 0x147uLL);
    v26[327] = v33;
    v27 = v17;
    sub_18E2C1D2C(v24);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

void AssetBackedLLMDraftModelBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedLLMDraftModelBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t LLMModelAssetMetadata.ANEExtendInfo.adapterType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

void __swiftcall LLMModelAssetMetadata.ANEExtendInfo.init(type:adapterType:ctxLen:seqLen:)(ModelCatalog::LLMModelAssetMetadata::ANEExtendInfo *__return_ptr retstr, Swift::String type, Swift::String_optional adapterType, Swift::Int ctxLen, Swift::Int seqLen)
{
  retstr->type = type;
  retstr->adapterType = adapterType;
  retstr->ctxLen = ctxLen;
  retstr->seqLen = seqLen;
}

uint64_t sub_18E2B7C98()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2B7CD8(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x5F72657470616461;
      break;
    case 2:
      result = 0x6E656C5F787463;
      break;
    case 3:
      result = 0x6E656C5F716573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E2B7DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B7C98();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B7DD8()
{
  v1 = sub_18E1D6250();
  result = sub_18E2B7CD8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18E2B7E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B7C98();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B7E3C(uint64_t a1)
{
  v2 = sub_18E2C1D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B7E78(uint64_t a1)
{
  v2 = sub_18E2C1D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMModelAssetMetadata.ANEExtendInfo.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE16D0, &qword_18E49F2B8);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C57AC();
  v11 = *v0;
  v12 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v14 = v0[5];
  v15 = v0[4];
  v13 = v4[4];
  sub_18E1DD34C(v4, v4[3]);
  sub_18E2C1D5C();
  sub_18E1E2A60();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E44F31C();
  if (!v1)
  {
    sub_18E1C5774();
    sub_18E1CFB6C();
    sub_18E44F2BC();
    sub_18E2016B4();
    sub_18E1CFB6C();
    sub_18E44F34C();
    sub_18E1CFB6C();
    sub_18E44F34C();
  }

  (*(v7 + 8))(v2, v5);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMModelAssetMetadata.ANEExtendInfo.init(from:)()
{
  sub_18E1C62A0();
  sub_18E243AFC();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE16D8, &qword_18E49F2C0);
  sub_18E1C4EAC(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C1D5C();
  sub_18E1E67AC();
  if (v1)
  {
    sub_18E1C9934(v0);
  }

  else
  {
    sub_18E1DD260();
    v8 = sub_18E44F22C();
    v17 = v9;
    sub_18E1C5774();
    sub_18E1DD260();
    v15 = sub_18E44F1CC();
    v16 = v10;
    sub_18E2016B4();
    v14 = sub_18E44F25C();
    sub_18E1DD260();
    v11 = sub_18E44F25C();
    v12 = sub_18E1C59F8();
    v13(v12);
    *v3 = v8;
    v3[1] = v17;
    v3[2] = v15;
    v3[3] = v16;
    v3[4] = v14;
    v3[5] = v11;

    sub_18E1C9934(v0);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

uint64_t sub_18E2B8260()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_18E2B82A4()
{
  sub_18E221B68();
  switch(v0)
  {
    case 2:
      sub_18E1C77B0();
      break;
    default:
      return;
  }
}

uint64_t sub_18E2B838C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B8260();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B83BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B82A0();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B83E4(uint64_t a1)
{
  v2 = sub_18E2C1DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B8420(uint64_t a1)
{
  v2 = sub_18E2C1DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E2B84F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, char a17, __int128 a18, __int128 a19, uint64_t a20, char a21, __int128 a22, uint64_t a23, char a24, uint64_t a25, char a26, __int128 a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  result = a17 & 1;
  *(a9 + 168) = a17 & 1;
  *(a9 + 176) = a18;
  *(a9 + 192) = a19;
  *(a9 + 208) = a20;
  *(a9 + 216) = a21 & 1;
  *(a9 + 224) = a22;
  *(a9 + 240) = a23;
  *(a9 + 248) = a24 & 1;
  *(a9 + 256) = a25;
  *(a9 + 264) = a26 & 1;
  *(a9 + 272) = a27;
  *(a9 + 288) = a28;
  *(a9 + 296) = a29 & 1;
  *(a9 + 304) = a30;
  *(a9 + 312) = a31;
  return result;
}

uint64_t sub_18E2B85C4()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_18E2B860C(char a1)
{
  switch(a1)
  {
    case 1:
    case 8:
      sub_18E1E7418();
      break;
    case 2:
    case 4:
      sub_18E22440C();
      break;
    case 3:
    case 12:
    case 13:
      sub_18E1CA6EC();
      break;
    case 5:
    case 7:
    case 10:
    case 11:
      return;
    case 6:
    case 18:
    case 19:
      sub_18E220894();
      break;
    case 9:
      sub_18E2079E0();
      break;
    case 16:
    case 17:
      sub_18E1E7B6C(18);
      break;
    default:
      sub_18E1C77B0();
      break;
  }
}

uint64_t sub_18E2B8798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B85C4();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B87C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B8608();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B87F0(uint64_t a1)
{
  v2 = sub_18E2C1E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B882C(uint64_t a1)
{
  v2 = sub_18E2C1E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2B889C()
{
  sub_18E1C62A0();
  v56 = v3;
  v5 = v4;
  v7 = sub_18E221758(v4, v6);
  v9 = sub_18E2706EC(v7, v8);
  sub_18E1C4EAC(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1CAFF0();
  v15 = *(v0 + 8);
  v54 = v0[2];
  v55 = *v0;
  v52 = v0[4];
  v53 = v0[3];
  v50 = v0[6];
  v51 = v0[5];
  v57 = *(v0 + 56);
  v48 = v0[9];
  v49 = v0[8];
  v46 = v0[10];
  v47 = v0[11];
  v44 = v0[12];
  v45 = v0[13];
  v42 = v0[14];
  v43 = v0[15];
  v40 = v0[16];
  v41 = v0[17];
  v38 = v0[18];
  v39 = v0[19];
  v36 = v0[20];
  v37 = *(v0 + 168);
  v34 = v0[22];
  v35 = v0[23];
  v32 = v0[24];
  v33 = v0[25];
  v30 = v0[26];
  v31 = *(v0 + 216);
  v28 = v0[28];
  v29 = v0[29];
  v26 = v0[30];
  v27 = *(v0 + 248);
  v24 = v0[32];
  v25 = *(v0 + 264);
  v18 = v0[34];
  v19 = v0[35];
  v20 = v0[36];
  v21 = *(v0 + 296);
  v22 = v0[38];
  v23 = v0[39];
  v16 = v5[4];
  v17 = sub_18E1DD34C(v5, v5[3]);
  v56(v17);
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E44F2EC();
  if (!v1)
  {
    sub_18E1D4288(1);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(2);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(3);
    sub_18E1CF3D0();
    sub_18E44F2EC();
    sub_18E1D4288(4);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(5);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(6);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(7);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(8);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(9);
    sub_18E1CF3D0();
    sub_18E44F2BC();
    sub_18E1D4288(10);
    sub_18E44F2EC();
    sub_18E1D4288(11);
    sub_18E1E14B8();
    sub_18E44F2BC();
    sub_18E1D4288(12);
    sub_18E1E14B8();
    sub_18E44F2BC();
    sub_18E1D4288(13);
    sub_18E1E14B8();
    sub_18E44F2EC();
    sub_18E1D4288(14);
    sub_18E1E14B8();
    sub_18E44F2BC();
    sub_18E1D4288(15);
    sub_18E1E14B8();
    sub_18E44F2EC();
    sub_18E1D4288(16);
    sub_18E1E14B8();
    sub_18E44F2EC();
    sub_18E1D4288(17);
    sub_18E1E14B8();
    sub_18E44F2BC();
    sub_18E1D4288(18);
    sub_18E1E14B8();
    sub_18E44F2EC();
    sub_18E1D4288(19);
    sub_18E1E14B8();
    sub_18E44F2BC();
  }

  (*(v11 + 8))(v2, v9);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E2B8E08()
{
  sub_18E1C62A0();
  v82 = v1;
  v83 = v2;
  v4 = v3;
  v6 = v5;
  v81 = v7;
  v9 = sub_18E221758(v5, v8);
  v85 = sub_18E2706EC(v9, v10);
  sub_18E1C4EAC(v85);
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C57AC();
  v14 = v6[3];
  v15 = v6[4];
  v16 = sub_18E1E63B4();
  v18 = sub_18E1DD34C(v16, v17);
  v4(v18);
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1D02B4();
    sub_18E1C9934(v6);
    if (v14)
    {

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v88) = 0;
    v19 = sub_18E44F1FC();
    sub_18E221BC8(v19, v20);
    sub_18E1CD770(1);
    v68 = sub_18E44F1CC();
    v80 = v21;
    sub_18E1CD770(2);
    v67 = sub_18E44F1CC();
    v79 = v22;
    sub_18E1CD770(3);
    v66 = sub_18E44F1FC();
    v147 = v23 & 1;
    sub_18E1CD770(4);
    v65 = sub_18E44F1CC();
    v78 = v24;
    sub_18E1CD770(5);
    v64 = sub_18E44F1CC();
    v77 = v25;
    sub_18E1CD770(6);
    v63 = sub_18E44F1CC();
    v76 = v26;
    sub_18E1CD770(7);
    v62 = sub_18E44F1CC();
    v74 = v27;
    sub_18E1CD770(8);
    v61 = sub_18E44F1CC();
    v75 = v28;
    sub_18E1CD770(9);
    v29 = sub_18E44F1CC();
    v73 = v30;
    v31 = v29;
    sub_18E1CF2C4(10);
    v32 = sub_18E44F1FC();
    v145 = v33 & 1;
    sub_18E1CF2C4(11);
    v60 = sub_18E44F1CC();
    v72 = v34;
    sub_18E1CF2C4(12);
    v59 = sub_18E44F1CC();
    v71 = v35;
    sub_18E1CF2C4(13);
    v58 = sub_18E44F1FC();
    v143 = v36 & 1;
    sub_18E1CF2C4(14);
    v57 = sub_18E44F1CC();
    v70 = v37;
    sub_18E1CF2C4(15);
    v56 = sub_18E44F1FC();
    v141 = v38 & 1;
    sub_18E1CF2C4(16);
    v55 = sub_18E44F1FC();
    v139 = v39 & 1;
    sub_18E1CF2C4(17);
    v54 = sub_18E44F1CC();
    v69 = v40;
    sub_18E1CF2C4(18);
    v53 = sub_18E44F1FC();
    v137 = v41 & 1;
    v135 = 19;
    v42 = sub_18E44F1CC();
    v51 = v43;
    v52 = v42;
    v44 = sub_18E224490();
    v45(v44);
    v87[0] = v19;
    v49 = v149;
    LOBYTE(v87[1]) = v149;
    *(&v87[1] + 1) = *v148;
    HIDWORD(v87[1]) = *&v148[3];
    v87[2] = v68;
    v87[3] = v80;
    v87[4] = v67;
    v87[5] = v79;
    v87[6] = v66;
    v48 = v147;
    LOBYTE(v87[7]) = v147;
    *(&v87[7] + 1) = *v146;
    HIDWORD(v87[7]) = *&v146[3];
    v87[8] = v65;
    v87[9] = v78;
    v87[10] = v64;
    v87[11] = v77;
    v87[12] = v63;
    v87[13] = v76;
    v87[14] = v62;
    v87[15] = v74;
    v87[16] = v61;
    v87[17] = v75;
    v50 = v31;
    v87[18] = v31;
    v87[19] = v73;
    v87[20] = v32;
    v86 = v145;
    LOBYTE(v87[21]) = v145;
    *(&v87[21] + 1) = *v144;
    HIDWORD(v87[21]) = *&v144[3];
    v87[22] = v60;
    v87[23] = v72;
    v87[24] = v59;
    v87[25] = v71;
    v87[26] = v58;
    v84 = v143;
    LOBYTE(v87[27]) = v143;
    *(&v87[27] + 1) = *v142;
    HIDWORD(v87[27]) = *&v142[3];
    v87[28] = v57;
    v87[29] = v70;
    v87[30] = v56;
    HIDWORD(v87[31]) = *&v140[3];
    *(&v87[31] + 1) = *v140;
    *(&v87[33] + 1) = *v138;
    v47 = v141;
    LOBYTE(v87[31]) = v141;
    v87[32] = v55;
    *(&v87[37] + 1) = *v136;
    v46 = v139;
    LOBYTE(v87[33]) = v139;
    HIDWORD(v87[33]) = *&v138[3];
    v87[34] = v54;
    v87[35] = v69;
    v87[36] = v53;
    HIDWORD(v87[37]) = *&v136[3];
    LOBYTE(v31) = v137;
    LOBYTE(v87[37]) = v137;
    v87[38] = v52;
    v87[39] = v51;
    memcpy(v81, v87, 0x140uLL);
    v82(v87, &v88);
    sub_18E1C9934(v6);
    v88 = v19;
    v89 = v49;
    v91 = v68;
    v92 = v80;
    v93 = v67;
    v94 = v79;
    v95 = v66;
    v96 = v48;
    v98 = v65;
    v99 = v78;
    v100 = v64;
    v101 = v77;
    *v90 = *v148;
    *&v90[3] = *&v148[3];
    *v97 = *v146;
    *&v97[3] = *&v146[3];
    v102 = v63;
    v103 = v76;
    v104 = v62;
    v105 = v74;
    v106 = v61;
    v107 = v75;
    v108 = v50;
    v109 = v73;
    v110 = v32;
    v111 = v86;
    *v112 = *v144;
    *&v112[3] = *&v144[3];
    v113 = v60;
    v114 = v72;
    v115 = v59;
    v116 = v71;
    v117 = v58;
    v118 = v84;
    *v119 = *v142;
    *&v119[3] = *&v142[3];
    v120 = v57;
    v121 = v70;
    v122 = v56;
    v123 = v47;
    *&v124[3] = *&v140[3];
    *v124 = *v140;
    v125 = v55;
    v126 = v46;
    *v127 = *v138;
    *&v127[3] = *&v138[3];
    v128 = v54;
    v129 = v69;
    v130 = v53;
    v131 = v31;
    *v132 = *v136;
    *&v132[3] = *&v136[3];
    v133 = v52;
    v134 = v51;
    v83(&v88);
  }

LABEL_8:
  sub_18E1C6650();
}

uint64_t sub_18E2B988C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char a13, __int16 a14, uint64_t a15, int a16, uint64_t a17, char a18, __int128 a19, uint64_t a20, int a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5 & 1;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7 & 1;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 73) = a13;
  *(a9 + 74) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16 & 1;
  *(a9 + 89) = *(&a16 + 1);
  *(a9 + 96) = a17;
  result = a18 & 1;
  *(a9 + 104) = a18 & 1;
  *(a9 + 112) = a19;
  *(a9 + 128) = a20;
  *(a9 + 136) = a21 & 1;
  *(a9 + 137) = *(&a21 + 1);
  *(a9 + 144) = a22;
  *(a9 + 152) = a23 & 1;
  *(a9 + 160) = a24;
  *(a9 + 168) = a25 & 1;
  *(a9 + 176) = a26;
  *(a9 + 184) = a27 & 1;
  return result;
}

uint64_t sub_18E2B99A4()
{
  sub_18E1E2F20();
  sub_18E44F3EC();
  sub_18E1E6A20();
  sub_18E240A88();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18E2B99EC(char a1)
{
  result = 0x74735F7466617264;
  switch(a1)
  {
    case 1:
    case 2:
      result = sub_18E1E286C(18);
      break;
    case 3:
    case 11:
      v5 = 9;
      goto LABEL_11;
    case 4:
      sub_18E220894();
      result = v4 | 8;
      break;
    case 5:
    case 10:
    case 12:
      result = sub_18E1CA6EC();
      break;
    case 6:
      sub_18E220894();
      result = v6 + 10;
      break;
    case 7:
      result = sub_18E2D0B08();
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = sub_18E242F64();
      break;
    case 13:
    case 15:
      v5 = 5;
LABEL_11:
      result = v5 | 0xD000000000000012;
      break;
    case 14:
      result = 0x74617265706D6574;
      break;
    case 16:
      sub_18E220894();
      result = v3 + 11;
      break;
    case 17:
      result = 0x6C5F6D6165727473;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E2B9BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2B99A4();
  *a2 = result;
  return result;
}

uint64_t sub_18E2B9C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2B99E8();
  *a1 = result;
  return result;
}

uint64_t sub_18E2B9C30(uint64_t a1)
{
  v2 = sub_18E2C1EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2B9C6C(uint64_t a1)
{
  v2 = sub_18E2C1EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2B9CDC()
{
  sub_18E1C62A0();
  v50 = v2;
  v4 = v3;
  v6 = sub_18E221758(v3, v5);
  v8 = sub_18E2706EC(v6, v7);
  sub_18E1C4EAC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(v0 + 8);
  v51 = *(v0 + 9);
  v48 = v0[2];
  v49 = *v0;
  v47 = *(v0 + 24);
  v46 = v0[4];
  v45 = *(v0 + 40);
  v44 = v0[6];
  v41 = v0[8];
  v42 = *(v0 + 72);
  v43 = *(v0 + 56);
  v39 = *(v0 + 74);
  v40 = *(v0 + 73);
  v36 = v0[10];
  v37 = *(v0 + 88);
  v38 = *(v0 + 75);
  v34 = *(v0 + 90);
  v35 = *(v0 + 89);
  v33 = *(v0 + 104);
  v30 = v0[14];
  v31 = v0[15];
  v32 = v0[12];
  v28 = v0[16];
  v29 = *(v0 + 136);
  v26 = *(v0 + 138);
  v27 = *(v0 + 137);
  v20 = v0[18];
  v21 = *(v0 + 152);
  v22 = v0[20];
  v23 = *(v0 + 168);
  v24 = v0[22];
  v25 = *(v0 + 184);
  v15 = v4[4];
  v16 = sub_18E1DD34C(v4, v4[3]);
  v50(v16);
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E44F2EC();
  if (v1)
  {
    v17 = *(v10 + 8);
    v18 = sub_18E1D03EC();
    v19(v18);
  }

  else
  {
    sub_18E1E3314(1);
    sub_18E1E8710();
    sub_18E1D4288(2);
    sub_18E2209BC();
    sub_18E44F2EC();
    sub_18E1D4288(3);
    sub_18E2209BC();
    sub_18E44F2EC();
    sub_18E1D4288(4);
    sub_18E2209BC();
    sub_18E44F2DC();
    sub_18E1D4288(5);
    sub_18E2209BC();
    sub_18E44F2EC();
    sub_18E1E3314(6);
    sub_18E1E8710();
    sub_18E1E3314(7);
    sub_18E1E8710();
    sub_18E1E3314(8);
    sub_18E1E8710();
    sub_18E1D4288(9);
    sub_18E2209BC();
    sub_18E44F2DC();
    sub_18E1E3314(10);
    sub_18E44F2CC();
    sub_18E1E3314(11);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E1D4288(12);
    sub_18E1E0FC0();
    sub_18E44F2EC();
    sub_18E1D4288(13);
    sub_18E1E0FC0();
    sub_18E44F2BC();
    sub_18E1D4288(14);
    sub_18E1E0FC0();
    sub_18E44F2DC();
    sub_18E1E3314(15);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E1E3314(16);
    sub_18E1E8554();
    sub_18E44F2CC();
    sub_18E1D4288(17);
    sub_18E1E0FC0();
    sub_18E44F2EC();
    sub_18E1D4288(18);
    sub_18E1E0FC0();
    sub_18E44F2DC();
    sub_18E1D4288(19);
    sub_18E1E0FC0();
    sub_18E44F2EC();
    (*(v10 + 8))(0);
  }

  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2BA1E4()
{
  sub_18E1C62A0();
  v66 = v1;
  v67 = v2;
  v4 = v3;
  v6 = v5;
  v65 = v7;
  v9 = sub_18E221758(v5, v8);
  v68 = sub_18E2706EC(v9, v10);
  sub_18E1C4EAC(v68);
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C57AC();
  v14 = v6[3];
  v15 = v6[4];
  v16 = sub_18E1E33F0();
  v18 = sub_18E1DD34C(v16, v17);
  v4(v18);
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v6);
  }

  else
  {
    v64 = sub_18E44F1FC();
    sub_18E221BC8(v64, v19);
    LOBYTE(v72) = 1;
    v63 = sub_18E44F1DC();
    sub_18E1C8540(2);
    v62 = sub_18E44F1FC();
    v136 = v20 & 1;
    sub_18E1C8540(3);
    v61 = sub_18E44F1FC();
    v134 = v21 & 1;
    sub_18E1C8540(4);
    v60 = sub_18E44F1EC();
    v132 = v22 & 1;
    sub_18E1C8540(5);
    v59 = sub_18E44F1FC();
    v130 = v23 & 1;
    sub_18E1C8540(6);
    v58 = sub_18E44F1DC();
    sub_18E1C8540(7);
    v57 = sub_18E44F1DC();
    sub_18E1C8540(8);
    v56 = sub_18E44F1DC();
    sub_18E1C8540(9);
    v24 = sub_18E44F1EC();
    v129 = v25 & 1;
    sub_18E1C61BC(10);
    v26 = sub_18E44F1DC();
    sub_18E1C61BC(11);
    v55 = sub_18E44F1DC();
    sub_18E1C61BC(12);
    v54 = sub_18E44F1FC();
    v126 = v27 & 1;
    sub_18E1C61BC(13);
    v52 = sub_18E44F1CC();
    v53 = v28;
    sub_18E1C61BC(14);
    v51 = sub_18E44F1EC();
    v124 = v29 & 1;
    sub_18E1C61BC(15);
    v50 = sub_18E44F1DC();
    sub_18E1C61BC(16);
    v49 = sub_18E44F1DC();
    sub_18E1C61BC(17);
    v48 = sub_18E44F1FC();
    v121 = v30 & 1;
    sub_18E1C61BC(18);
    v47 = sub_18E44F1EC();
    v119 = v31 & 1;
    v116 = 19;
    v46 = sub_18E44F1FC();
    v44 = v32;
    v33 = sub_18E242D2C();
    v34(v33);
    v117 = v44 & 1;
    v71[0] = v64;
    v70 = v139;
    LOBYTE(v71[1]) = v139;
    BYTE1(v71[1]) = v63;
    *(&v71[1] + 2) = v137;
    HIWORD(v71[1]) = v138;
    v71[2] = v62;
    v69 = v136;
    LOBYTE(v71[3]) = v136;
    *(&v71[3] + 1) = *v135;
    HIDWORD(v71[3]) = *&v135[3];
    v71[4] = v61;
    v45 = v134;
    LOBYTE(v71[5]) = v134;
    *(&v71[5] + 1) = *v133;
    HIDWORD(v71[5]) = *&v133[3];
    v71[6] = v60;
    v43 = v132;
    LOBYTE(v71[7]) = v132;
    *(&v71[7] + 1) = *v131;
    HIDWORD(v71[7]) = *&v131[3];
    v71[8] = v59;
    v42 = v130;
    LOBYTE(v71[9]) = v130;
    BYTE1(v71[9]) = v58;
    BYTE2(v71[9]) = v57;
    BYTE3(v71[9]) = v56;
    v71[10] = v24;
    v41 = v129;
    LOBYTE(v71[11]) = v129;
    v38 = v26;
    BYTE1(v71[11]) = v26;
    BYTE2(v71[11]) = v55;
    HIBYTE(v71[11]) = v128;
    *(&v71[11] + 3) = v127;
    v71[12] = v54;
    v40 = v126;
    LOBYTE(v71[13]) = v126;
    HIDWORD(v71[13]) = *&v125[3];
    *(&v71[13] + 1) = *v125;
    v71[14] = v52;
    v71[15] = v53;
    v71[16] = v51;
    v39 = v124;
    LOBYTE(v71[17]) = v124;
    BYTE1(v71[17]) = v50;
    BYTE2(v71[17]) = v49;
    HIBYTE(v71[17]) = v123;
    *(&v71[17] + 3) = v122;
    v71[18] = v48;
    v37 = v121;
    LOBYTE(v71[19]) = v121;
    HIDWORD(v71[19]) = *&v120[3];
    *(&v71[19] + 1) = *v120;
    v71[20] = v47;
    v36 = v119;
    LOBYTE(v71[21]) = v119;
    HIDWORD(v71[21]) = *&v118[3];
    *(&v71[21] + 1) = *v118;
    v71[22] = v46;
    v35 = v117;
    LOBYTE(v71[23]) = v117;
    memcpy(v65, v71, 0xB9uLL);
    v66(v71, &v72);
    sub_18E1C9934(v6);
    v72 = v64;
    v73 = v70;
    v74 = v63;
    v77 = v62;
    v75 = v137;
    v76 = v138;
    v78 = v69;
    *v79 = *v135;
    *&v79[3] = *&v135[3];
    v80 = v61;
    v81 = v45;
    *&v82[3] = *&v133[3];
    *v82 = *v133;
    v83 = v60;
    v84 = v43;
    *v85 = *v131;
    *&v85[3] = *&v131[3];
    v86 = v59;
    v87 = v42;
    v88 = v58;
    v89 = v57;
    v90 = v56;
    v91 = v24;
    v92 = v41;
    v93 = v38;
    v94 = v55;
    v96 = v128;
    v95 = v127;
    v97 = v54;
    v98 = v40;
    *&v99[3] = *&v125[3];
    *v99 = *v125;
    v100 = v52;
    v101 = v53;
    v102 = v51;
    v103 = v39;
    v104 = v50;
    v105 = v49;
    v107 = v123;
    v106 = v122;
    v108 = v48;
    v109 = v37;
    *&v110[3] = *&v120[3];
    *v110 = *v120;
    v111 = v47;
    v112 = v36;
    *&v113[3] = *&v118[3];
    *v113 = *v118;
    v114 = v46;
    v115 = v35;
    v67(&v72);
  }

  sub_18E1CEAC4();
  sub_18E1C6650();
}

ModelCatalog::LLMModelAssetMetadata::LoraRank_optional __swiftcall LLMModelAssetMetadata.LoraRank.init(rawValue:)(Swift::String rawValue)
{
  sub_18E1E2F20();
  v3 = v2;
  sub_18E44F19C();
  result.value = sub_18E1E3B74();
  v5 = 6;
  if (v1 < 6)
  {
    v5 = v1;
  }

  *v3 = v5;
  return result;
}

ModelCatalog::LLMModelAssetMetadata::ModelVersion_optional __swiftcall LLMModelAssetMetadata.ModelVersion.init(rawValue:)(Swift::String rawValue)
{
  sub_18E1E2F20();
  v3 = v2;
  sub_18E44F19C();
  result.value = sub_18E1E3B74();
  v5 = 3;
  if (v1 < 3)
  {
    v5 = v1;
  }

  *v3 = v5;
  return result;
}

unint64_t sub_18E2BAB2C@<X0>(unint64_t *a1@<X8>)
{
  result = LLMModelAssetMetadata.ModelVersion.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_18E2BAC14()
{
  sub_18E1E2F20();
  v2 = v1;
  sub_18E44F19C();
  result = sub_18E1E3B74();
  if (v0 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v0)
  {
    v4 = 0;
  }

  *v2 = v4;
  return result;
}

uint64_t LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter()
{
  if (*v0)
  {
    return 13942;
  }

  else
  {
    return 13686;
  }
}

uint64_t sub_18E2BACB4@<X0>(uint64_t *a1@<X8>)
{
  result = LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

uint64_t LLMModelAssetMetadata.modelConfig.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_18E1C5BFC();
}

uint64_t LLMModelAssetMetadata.backboneSignature.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_18E1C5BFC();
}

uint64_t LLMModelAssetMetadata.specialTokensMap.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x140uLL);
  memcpy(a1, (v1 + 96), 0x140uLL);
  return sub_18E202008(__dst, v4, &qword_1EABE1710, &qword_18E49F2F8);
}

uint64_t LLMModelAssetMetadata.defaultParameters.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 472), 0xB9uLL);
  memcpy(a1, (v1 + 472), 0xB9uLL);
  return sub_18E202008(__dst, v4, &qword_1EABE1718, &qword_18E49F300);
}

void *LLMModelAssetMetadata.init(modelType:modelVersion:promptPreprocessingTemplateVersion:contextLength:modelConfig:backboneSignature:adapterTypeToSignatureMapping:adapterTypeToSymbolMapping:e5FunctionNameMap:specialTokensMap:localization:defaultParameters:prewarmForConstrainedDecoding:customClientMetadata:allowPromptFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, char a16, uint64_t a17, char a18)
{
  v19 = *a3;
  v20 = *a4;
  v21 = *(a14 + 48);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v19;
  *(a9 + 17) = v20;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  memcpy((a9 + 96), a13, 0x140uLL);
  v22 = *(a14 + 16);
  *(a9 + 416) = *a14;
  *(a9 + 432) = v22;
  *(a9 + 448) = *(a14 + 32);
  *(a9 + 464) = v21;
  result = memcpy((a9 + 472), a15, 0xB9uLL);
  *(a9 + 657) = a16;
  *(a9 + 664) = a17;
  *(a9 + 672) = a18;
  return result;
}

uint64_t sub_18E2BB008()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

void sub_18E2BB04C()
{
  sub_18E1E6B14();
  switch(v0)
  {
    case 2:
    case 7:
    case 14:
      sub_18E220894();
      break;
    case 3:
      sub_18E1E65A8();
      break;
    case 4:
      sub_18E22EA44();
      break;
    case 5:
    case 9:
    case 11:
      sub_18E1C77B0();
      break;
    case 6:
      sub_18E2D0B08();
      break;
    case 8:
      sub_18E1CA6EC();
      break;
    case 10:
      sub_18E1E392C();
      break;
    case 12:
      sub_18E25E184();
      break;
    case 13:
      sub_18E1E7418();
      break;
    default:
      return;
  }
}

uint64_t sub_18E2BB1E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BB008();
  *a2 = result;
  return result;
}

void sub_18E2BB218()
{
  sub_18E1D6250();
  sub_18E2BB04C();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_18E2BB248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BB048();
  *a1 = result;
  return result;
}

uint64_t sub_18E2BB270(uint64_t a1)
{
  v2 = sub_18E2C2010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BB2AC(uint64_t a1)
{
  v2 = sub_18E2C2010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMModelAssetMetadata.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE1720, &qword_18E49F308);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C61D0();
  v11 = *v0;
  v34 = v0[1];
  v32 = *(v0 + 17);
  v33 = *(v0 + 16);
  v31 = v0[3];
  v30 = *(v0 + 32);
  v28 = v0[5];
  v29 = v0[6];
  v26 = v0[7];
  v27 = v0[8];
  v24 = v0[10];
  v25 = v0[9];
  v23 = v0[11];
  memcpy(v39, v0 + 12, sizeof(v39));
  v16 = v0[52];
  v17 = v0[53];
  v21 = v0[55];
  v22 = v0[54];
  v19 = v0[57];
  v20 = v0[56];
  v18 = v0[58];
  memcpy(v40, v0 + 59, 0xB9uLL);
  v15 = *(v0 + 657);
  v14 = v0[83];
  v13 = *(v0 + 672);
  v12 = v4[4];
  sub_18E1DD34C(v4, v4[3]);
  sub_18E2C2010();
  sub_18E1E843C();
  sub_18E44F4EC();
  v38[0] = 0;
  sub_18E44F31C();
  if (v1)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    sub_18E2C2064();
    sub_18E2234C4();
    sub_18E1E23B8();
    sub_18E44F2FC();
    sub_18E2C20B8();
    sub_18E2234C4();
    sub_18E1E23B8();
    sub_18E44F2FC();
    sub_18E1E23B8();
    sub_18E44F2EC();
    sub_18E1E23B8();
    sub_18E44F2BC();
    sub_18E1E23B8();
    sub_18E44F2BC();
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1C638C(&qword_1ED6A7948);
    sub_18E2234C4();
    sub_18E1E23B8();
    sub_18E44F2FC();
    sub_18E2234C4();
    sub_18E1E23B8();
    sub_18E44F2FC();
    v37[0] = 8;
    sub_18E2706EC(&qword_1EABE1738, &qword_18E49F310);
    sub_18E2C210C(&unk_1EABE1740);
    sub_18E2234C4();
    sub_18E1E23B8();
    sub_18E44F2FC();
    memcpy(v38, v39, sizeof(v38));
    v37[327] = 9;
    sub_18E202008(v39, v37, &qword_1EABE1710, &qword_18E49F2F8);
    sub_18E2C21DC();
    sub_18E1E23B8();
    sub_18E44F2FC();
    memcpy(v37, v38, 0x140uLL);
    sub_18E2CF0FC(v37, &qword_1EABE1710);
    v36[0] = v16;
    v36[1] = v17;
    v36[2] = v22;
    v36[3] = v21;
    v36[4] = v20;
    v36[5] = v19;
    v36[6] = v18;
    v35[0] = 10;
    sub_18E2C1F7C(v16);
    sub_18E2C2230();
    sub_18E1E23B8();
    sub_18E44F2FC();
    sub_18E201E80(v36);
    memcpy(v36, v40, 0xB9uLL);
    v35[191] = 11;
    sub_18E202008(v40, v35, &qword_1EABE1718, &qword_18E49F300);
    sub_18E2C2314();
    sub_18E224F70();
    sub_18E44F2FC();
    memcpy(v35, v36, 0xB9uLL);
    sub_18E2CF0FC(v35, &qword_1EABE1718);
    sub_18E224F70();
    sub_18E44F2CC();
    sub_18E44F2FC();
    sub_18E224F70();
    sub_18E44F2CC();
    (*(v7 + 8))(v2, v5);
  }

  sub_18E1E2968();
  sub_18E1C6650();
}

void LLMModelAssetMetadata.init(from:)()
{
  sub_18E1C62A0();
  sub_18E2231E0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE1768, &qword_18E49F318);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C61D0();
  v9 = v0[3];
  v10 = v0[4];
  v60 = v0;
  v11 = sub_18E1E63B4();
  sub_18E1DD34C(v11, v12);
  sub_18E2C2010();
  sub_18E1E33E4();
  sub_18E44F4DC();
  if (v1)
  {
    sub_18E1D02B4();
    sub_18E1EA52C();
    sub_18E1C9934(v0);
    if (v9)
    {

      if (v0)
      {
        goto LABEL_12;
      }
    }

    else if (v0)
    {
LABEL_12:

      if ((v10 & 1) == 0)
      {
LABEL_13:
        if (v2)
        {
LABEL_14:

          if ((v5 & 1) == 0)
          {
LABEL_15:
            if (!v42)
            {
              goto LABEL_17;
            }

LABEL_16:
            memcpy(v44, v55, 0x140uLL);
            sub_18E2CF0FC(v44, &qword_1EABE1710);
            goto LABEL_17;
          }

LABEL_8:

          if ((v42 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_7:
        if (!v5)
        {
          goto LABEL_15;
        }

        goto LABEL_8;
      }

LABEL_6:

      if (v2)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  LOBYTE(v44[0]) = 0;
  sub_18E1E3108();
  v13 = sub_18E44F22C();
  v41 = v14;
  sub_18E2C2368();
  sub_18E1E26A8();
  sub_18E1DD270();
  sub_18E2209B0();
  sub_18E44F20C();
  sub_18E2C23BC();
  sub_18E1E26A8();
  sub_18E1DD270();
  sub_18E2209B0();
  sub_18E44F20C();
  sub_18E220A94(3);
  v27 = sub_18E44F1FC();
  sub_18E221BC8(v27, v15);
  sub_18E220A94(4);
  v16 = sub_18E44F1CC();
  v40 = v17;
  sub_18E220A94(5);
  v26 = sub_18E44F1CC();
  v39 = v18;
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E1C670C(&qword_1ED6A7940);
  sub_18E1E26A8();
  sub_18E2209B0();
  sub_18E44F20C();
  v38 = v44[0];
  sub_18E1E26A8();
  sub_18E2209B0();
  sub_18E44F20C();
  v37 = v44[0];
  sub_18E2706EC(&qword_1EABE1738, &qword_18E49F310);
  sub_18E1E2E04();
  sub_18E2C210C(&unk_1EABE00C8);
  sub_18E1E26A8();
  sub_18E2209B0();
  sub_18E44F20C();
  v36 = v44[0];
  v52[191] = 9;
  sub_18E2C2464();
  sub_18E1DD270();
  sub_18E2209B0();
  sub_18E44F20C();
  memcpy(v55, v53, sizeof(v55));
  sub_18E2C24B8();
  sub_18E1E26A8();
  sub_18E1DD270();
  sub_18E2209B0();
  sub_18E44F20C();
  v29 = v44[0];
  v30 = v44[1];
  v31 = v44[2];
  v32 = v44[3];
  v33 = v44[4];
  v34 = v44[5];
  v35 = v44[6];
  v51 = 11;
  sub_18E2C250C();
  sub_18E1DD270();
  sub_18E2209B0();
  sub_18E44F20C();
  memcpy(v54, v52, sizeof(v54));
  sub_18E220A94(12);
  v24 = sub_18E44F1DC();
  LOBYTE(v43[0]) = 13;
  sub_18E1E26A8();
  sub_18E1DD270();
  sub_18E2209B0();
  sub_18E44F20C();
  v28 = v44[0];
  v50 = 14;
  sub_18E1E3108();
  v19 = sub_18E44F1DC();
  v20 = sub_18E1CBE1C();
  v21(v20);
  v43[0] = v13;
  v43[1] = v41;
  LOWORD(v43[2]) = 0;
  v43[3] = v27;
  v25 = v57;
  LOBYTE(v43[4]) = v57;
  v43[5] = v16;
  v43[6] = v40;
  v43[7] = v26;
  v43[8] = v39;
  v43[9] = v38;
  v43[10] = v37;
  v43[11] = v36;
  memcpy(&v43[12], v55, 0x140uLL);
  v43[52] = v29;
  v43[53] = v30;
  v43[54] = v31;
  v43[55] = v32;
  v43[56] = v33;
  v43[57] = v34;
  v43[58] = v35;
  memcpy(&v43[59], v54, 0xB9uLL);
  BYTE1(v43[82]) = v24;
  sub_18E1E86C8((&v43[82] + 2));
  HIWORD(v43[82]) = v22;
  v43[83] = v28;
  LOBYTE(v43[84]) = v19;
  memcpy(v4, v43, 0x2A1uLL);
  sub_18E2C2560(v43, v44);
  sub_18E1C9934(v60);
  v44[0] = v13;
  v44[1] = v41;
  LOWORD(v44[2]) = 0;
  *(&v44[2] + 2) = v58;
  HIWORD(v44[2]) = v59;
  v44[3] = v27;
  LOBYTE(v44[4]) = v25;
  *(&v44[4] + 1) = *v56;
  HIDWORD(v44[4]) = *&v56[3];
  v44[5] = v16;
  v44[6] = v40;
  v44[7] = v26;
  v44[8] = v39;
  v44[9] = v38;
  v44[10] = v37;
  v44[11] = v36;
  memcpy(&v44[12], v55, 0x140uLL);
  v44[52] = v29;
  v44[53] = v30;
  v44[54] = v31;
  v44[55] = v32;
  v44[56] = v33;
  v44[57] = v34;
  v44[58] = v35;
  memcpy(v45, v54, 0xB9uLL);
  v45[185] = v24;
  sub_18E1E86C8(&v46);
  v47 = v23;
  v48 = v28;
  v49 = v19;
  sub_18E2C2598(v44);
LABEL_17:
  sub_18E1E19E4();
  sub_18E1C6650();
}

void AssetBackedLLMModelBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedLLMModelBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void ServerConfigurationBase.init(configuration:)(void *a1)
{
  v3 = sub_18E1CAFC8(a1);
  sub_18E1E2C90(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  sub_18E1CFA44();
  v13 = sub_18E21D09C(23, v11, v12);
  if (v2)
  {
    sub_18E1FE044(v54);
  }

  else
  {
    sub_18E1FECF0(v13, v14, v15, v16, v17, v18, v19, v20, v26, v28);
    v21 = sub_18E1E6A80();
    memcpy(v21, v22, 0xC8uLL);
    sub_18E1C7F4C();
    *(v1 + 200) = v23;
    *(v1 + 208) = v24;
  }

  sub_18E1CFAAC();
}

void ServerConfigurationBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1D60A8(v4, v5, v6, v7, v8, v9, v10, v11, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137[0]);
  sub_18E1DD340();
  memcpy(v12, v13, v14);
  sub_18E1E83A4();
  v17 = sub_18E201A88(23, v15, v16);
  if (v2)
  {

    sub_18E1FE044(v137);
  }

  else
  {
    v25 = sub_18E1D5E70(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v137[0]);
    sub_18E201A04(v25, v26, v27, v28, v29, v30, v31, v32, v35, v38);
    *(v3 + 200) = v1;
    *(v3 + 208) = v0;
  }

  sub_18E1D0268();
  sub_18E1CD624();
}

uint64_t ServerConfigurationAssetMetadata.CloudLocalization.init(localeInstruction:localeInstructionInjectionLocation:chatRoleSystem:chatRoleSystemDefault:chatRoleAssistant:chatRoleUser:chatComponentTurnend:userDefinedFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_18E2BC4A0()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18E2BC4E8()
{
  result = sub_18E221B68();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 7:
      result = sub_18E233C38();
      break;
    case 5:
      return result;
    case 6:
      result = sub_18E1E7B6C(19);
      break;
    default:
      result = sub_18E1E286C(19);
      break;
  }

  return result;
}

uint64_t sub_18E2BC640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BC4A0();
  *a2 = result;
  return result;
}

unint64_t sub_18E2BC670()
{
  sub_18E1D6250();
  result = sub_18E2BC4E8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18E2BC6B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BC4E0();
  *a1 = result;
  return result;
}

uint64_t sub_18E2BC6DC(uint64_t a1)
{
  v2 = sub_18E2C25C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BC718(uint64_t a1)
{
  v2 = sub_18E2C25C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ServerConfigurationAssetMetadata.CloudLocalization.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E221F28();
  v3 = sub_18E2706EC(&qword_1EABE1770, &qword_18E49F320);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C57AC();
  v9 = *v0;
  v17 = v0[2];
  v18 = v0[1];
  v15 = v0[4];
  v16 = v0[3];
  v13 = v0[6];
  v14 = v0[5];
  v12 = v0[7];
  v10 = v2[4];
  sub_18E1DD34C(v2, v2[3]);
  v11 = sub_18E2C25C8();

  sub_18E1E2A60();
  sub_18E44F4EC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E1C638C(&qword_1ED6A7948);
  sub_18E1CFB6C();
  sub_18E44F2FC();
  if (v11)
  {
  }

  else
  {

    sub_18E1CFB90(1);
    sub_18E1CFB90(2);
    sub_18E1CFB90(3);
    sub_18E1CFB90(4);
    sub_18E1CFB90(5);
    sub_18E1CFB90(6);
    sub_18E2706EC(&qword_1EABE1778, &qword_18E49F328);
    sub_18E2C261C();
    sub_18E1CFB6C();
    sub_18E44F2FC();
  }

  (*(v5 + 8))(v1, v3);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ServerConfigurationAssetMetadata.CloudLocalization.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E2706EC(&qword_1EABE1788, &qword_18E49F330);
  sub_18E1C4EAC(v15);
  v17 = *(v16 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C61D0();
  v19 = v12[4];
  sub_18E1DD34C(v12, v12[3]);
  sub_18E2C25C8();
  sub_18E44F4DC();
  if (v10)
  {
    sub_18E1C9934(v12);
  }

  else
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1C670C(&qword_1ED6A7940);
    sub_18E1C55D8();
    v25 = v35[0];
    sub_18E1C55D8();
    v30 = v35[0];
    sub_18E1C55D8();
    v29 = v35[0];
    sub_18E1C55D8();
    v28 = v35[0];
    sub_18E1C55D8();
    v27 = v35[0];
    sub_18E1C55D8();
    v26 = v35[0];
    sub_18E1C55D8();
    v20 = v35[0];
    sub_18E2706EC(&qword_1EABE1778, &qword_18E49F328);
    v36 = 7;
    sub_18E2C26C4();
    sub_18E44F20C();
    v21 = sub_18E2204A4();
    v22(v21);
    *&v31 = v35[0];
    *(&v31 + 1) = v35[0];
    *&v32 = v35[0];
    *(&v32 + 1) = v35[0];
    *&v33 = v35[0];
    *(&v33 + 1) = v35[0];
    *&v34 = v35[0];
    *(&v34 + 1) = a10;
    v23 = v32;
    *v14 = v31;
    v14[1] = v23;
    v24 = v34;
    v14[2] = v33;
    v14[3] = v24;
    sub_18E2C276C(&v31, v35);
    sub_18E1C9934(v12);
    v35[0] = v25;
    v35[1] = v30;
    v35[2] = v29;
    v35[3] = v28;
    v35[4] = v27;
    v35[5] = v26;
    v35[6] = v20;
    v35[7] = a10;
    sub_18E2C27A4(v35);
  }

  sub_18E1C6650();
}

void __swiftcall ServerConfigurationAssetMetadata.MLMConfig.init(contextLen:inputTokenCountEstimate:heuristicInputTokenCount:)(ModelCatalog::ServerConfigurationAssetMetadata::MLMConfig *__return_ptr retstr, Swift::Int contextLen, Swift::Int_optional inputTokenCountEstimate, Swift::Int_optional heuristicInputTokenCount)
{
  retstr->contextLen = contextLen;
  retstr->inputTokenCountEstimate.value = inputTokenCountEstimate.value;
  retstr->inputTokenCountEstimate.is_nil = inputTokenCountEstimate.is_nil;
  *(&retstr->heuristicInputTokenCount.value + 7) = heuristicInputTokenCount.value;
  LOBYTE(retstr[1].contextLen) = heuristicInputTokenCount.is_nil;
}

uint64_t sub_18E2BCE9C()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  sub_18E2452CC();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E2BCED8(char a1)
{
  if (!a1)
  {
    return sub_18E1E65A8();
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_18E2BCF50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BCE9C();
  *a2 = result;
  return result;
}

uint64_t sub_18E2BCF80()
{
  v1 = sub_18E1D6250();
  result = sub_18E2BCED8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18E2BCFB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BCE9C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2BCFD8(uint64_t a1)
{
  v2 = sub_18E2C27D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BD014(uint64_t a1)
{
  v2 = sub_18E2C27D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ServerConfigurationAssetMetadata.MLMConfig.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE1790, &qword_18E49F338);
  sub_18E1C4EAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C57AC();
  v10 = *v0;
  v18 = *(v0 + 16);
  v16 = v0[3];
  v17 = v0[1];
  v15 = *(v0 + 32);
  v11 = v3[4];
  sub_18E1DD34C(v3, v3[3]);
  sub_18E2C27D4();
  sub_18E1E843C();
  sub_18E44F4EC();
  sub_18E1CFB6C();
  sub_18E44F34C();
  if (!v1)
  {
    sub_18E1C5774();
    sub_18E1CFB6C();
    sub_18E44F2EC();
    sub_18E2016B4();
    sub_18E1CFB6C();
    sub_18E44F2EC();
  }

  v12 = *(v6 + 8);
  v13 = sub_18E1D4BF4();
  v14(v13);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ServerConfigurationAssetMetadata.MLMConfig.init(from:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE1798, &qword_18E49F340);
  sub_18E1C4EAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C27D4();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E8554();
    v12 = sub_18E44F25C();
    sub_18E1C5774();
    sub_18E1E8554();
    v13 = sub_18E44F1FC();
    v19 = v14;
    sub_18E2016B4();
    sub_18E1E8554();
    v15 = sub_18E44F1FC();
    v16 = v1;
    v18 = v17;
    (*(v8 + 8))(v16, v6);
    *v5 = v12;
    *(v5 + 8) = v13;
    *(v5 + 16) = v19 & 1;
    *(v5 + 24) = v15;
    *(v5 + 32) = v18 & 1;
  }

  sub_18E1C9934(v3);
  sub_18E1E2968();
  sub_18E1C6650();
}

__n128 ServerConfigurationAssetMetadata.mlmConfig.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u64[1];
  v4 = v1[2].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u8[0] = v4;
  return result;
}

uint64_t ServerConfigurationAssetMetadata.localization.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v2;
  v4 = *(v1 + 88);
  v8 = *(v1 + 72);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_18E202008(v7, &v6, &qword_1EABE17A0, &qword_18E49F348);
}

__n128 ServerConfigurationAssetMetadata.init(mlmConfig:localization:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  v3 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a3 + 72) = result;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 88) = v5;
  return result;
}

uint64_t sub_18E2BD434(char a1)
{
  if (a1)
  {
    return 0x617A696C61636F6CLL;
  }

  else
  {
    return 0x666E6F635F6D6C6DLL;
  }
}

uint64_t sub_18E2BD49C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BF66C();
  *a2 = result;
  return result;
}

uint64_t sub_18E2BD4D4()
{
  v1 = sub_18E1D6250();
  result = sub_18E2BD434(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18E2BD504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BF66C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2BD534(uint64_t a1)
{
  v2 = sub_18E2C2828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BD570(uint64_t a1)
{
  v2 = sub_18E2C2828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ServerConfigurationAssetMetadata.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE17A8, &qword_18E49F350);
  sub_18E1C4EAC(v5);
  v17 = v6;
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C57AC();
  v11 = *v0;
  v10 = v0[1];
  v27 = *(v0 + 16);
  v12 = v0[3];
  v16 = *(v0 + 32);
  v13 = *(v0 + 7);
  v23 = *(v0 + 5);
  v24 = v13;
  v14 = *(v0 + 11);
  v25 = *(v0 + 9);
  v26 = v14;
  v15 = v4[4];
  sub_18E1DD34C(v4, v4[3]);
  sub_18E2C2828();
  sub_18E1E843C();
  sub_18E44F4EC();
  *&v19 = v11;
  *(&v19 + 1) = v10;
  LOBYTE(v20) = v27;
  *(&v20 + 1) = v12;
  LOBYTE(v21) = v16;
  LOBYTE(v18[0]) = 0;
  sub_18E2C287C();
  sub_18E44F35C();
  if (v1)
  {
    (*(v17 + 8))(v2, v5);
  }

  else
  {
    v19 = v23;
    v20 = v24;
    v21 = v25;
    v22 = v26;
    sub_18E202008(&v23, v18, &qword_1EABE17A0, &qword_18E49F348);
    sub_18E2C28D0();
    sub_18E44F2FC();
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    v18[3] = v22;
    sub_18E2CF0FC(v18, &qword_1EABE17A0);
    (*(v17 + 8))(v2, v5);
  }

  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ServerConfigurationAssetMetadata.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE17C0, &qword_18E49F358);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C2828();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E2C2924();
    sub_18E1DD270();
    sub_18E44F26C();
    v16 = v13;
    sub_18E2C2978();
    sub_18E1DD270();
    sub_18E44F20C();
    v9 = sub_18E1CEAB4();
    v10(v9);
    *(v15 + 7) = v11;
    *(&v15[2] + 7) = v12;
    *(&v15[4] + 7) = v13;
    *(&v15[6] + 7) = v14;
    *v4 = v11;
    *(v4 + 16) = v12;
    *(v4 + 24) = *(&v12 + 1);
    *(v4 + 32) = v13;
    memcpy((v4 + 33), v15, 0x47uLL);
  }

  sub_18E1C9934(v2);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void AssetBackedServerConfigurationBase.init(configuration:)(void *a1)
{
  v5 = sub_18E1CAFC8(a1);
  sub_18E1CD54C(v5, v6, v7, v8, v9, v10, v11, v12, v33, v36);
  sub_18E1E9DDC();
  v15 = sub_18E21D09C(23, v13, v14);
  if (v2)
  {
    sub_18E1FE044(v64);
  }

  else
  {
    sub_18E1C68BC(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_18E1CE9C8();
    sub_18E1FECF0(v23, v24, v25, v26, v27, v28, v29, v30, v35, v38);
    v31 = sub_18E1E6A80();
    memcpy(v31, v32, 0xC8uLL);
    *(v1 + 200) = v3;
    *(v1 + 208) = v4;
  }

  sub_18E1CFAAC();
}

uint64_t sub_18E2BDCBC(uint64_t a1)
{
  v2 = sub_18E2C29CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BDCF8(uint64_t a1)
{
  v2 = sub_18E2C29CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedModelConfigurationReplacementBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedModelConfigurationReplacementBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2BDE28()
{
  memcpy(v4, v0, sizeof(v4));
  v1 = v0[25];
  v2 = v0[26];
  sub_18E44F48C();
  ResourceConfiguration.hash(into:)();
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

uint64_t MotionAdapterBase.init(configuration:variant:)()
{
  sub_18E1E672C();
  sub_18E224EA4();
  return sub_18E2BE454();
}

uint64_t sub_18E2BDF5C(uint64_t a1)
{
  v2 = sub_18E2C2A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BDF98(uint64_t a1)
{
  v2 = sub_18E2C2A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedMotionAdapterBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedMotionAdapterBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void AssetBackedMotionAdapterBase.init(configuration:variant:)()
{
  sub_18E1E672C();
  sub_18E224EA4();
  sub_18E1E3514();
}

uint64_t sub_18E2BE188(uint64_t a1)
{
  v2 = sub_18E2C2A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BE1C4(uint64_t a1)
{
  v2 = sub_18E2C2A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedMotionBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedMotionBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void AssetBackedMotionBase.init(configuration:variant:)()
{
  sub_18E1E672C();
  sub_18E2016F4();
  sub_18E1E3514();
}

uint64_t sub_18E2BE570(uint64_t a1)
{
  v2 = sub_18E2C2AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BE5AC(uint64_t a1)
{
  v2 = sub_18E2C2AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedPromptAllowListBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedPromptAllowListBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2BE8E4(uint64_t a1)
{
  v2 = sub_18E2C2B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BE920(uint64_t a1)
{
  v2 = sub_18E2C2B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedSecureAnalyticsBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedSecureAnalyticsBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2BEC40(uint64_t a1)
{
  v2 = sub_18E2C2B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BEC7C(uint64_t a1)
{
  v2 = sub_18E2C2B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenInputDenyListBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedTokenInputDenyListBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2BEF8C(uint64_t a1)
{
  v2 = sub_18E2C2BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BEFC8(uint64_t a1)
{
  v2 = sub_18E2C2BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputDenyListBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedTokenOutputDenyListBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t sub_18E2BF2CC(uint64_t a1)
{
  v2 = sub_18E2C2C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BF308(uint64_t a1)
{
  v2 = sub_18E2C2C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E2BF388()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v5 = sub_18E221758(v2, v4);
  v7 = sub_18E2706EC(v5, v6);
  sub_18E1C4EAC(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAFF0();
  v11 = v3[4];
  sub_18E1E15F4(v3, v3[3]);
  v1();
  sub_18E1CB000();
  sub_18E44F4EC();
  v12 = sub_18E1CEAB4();
  v13(v12);
  sub_18E1E19E4();
  sub_18E1C6650();
}

void AssetBackedTokenOutputRetainListBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedTokenOutputRetainListBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

void AssetBackedTokenOutputRetainListBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v50, v55, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v51, v56);
  sub_18E1E3BD4();
  v23 = sub_18E237058(v20, v21, v22);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v208 || !*(v208 + 16))
  {
    sub_18E2D0B44();
    v47 = sub_18E1C8558();
    sub_18E1E6860(v47, v48);
    sub_18E221DDC(v49, 41);

LABEL_7:

    sub_18E1FE044(&v207);
    goto LABEL_8;
  }

  sub_18E223A20(v23, v24, v25, v26, v27, v28, v29, v30, v52, v57, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v207);
  sub_18E1C973C();
  v39 = sub_18E1D5E70(v31, v32, v33, v34, v35, v36, v37, v38, v53, v58, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v207);
  sub_18E1D4410(v39, v40, v41, v42, v43, v44, v45, v46, v54, v59);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t _s12ModelCatalog08LLMDraftA13AssetContentsV7baseURLAC10Foundation0G0V_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E44E54C();
  v5 = sub_18E1C4EEC(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t TokenizerAssetMetadata.init(substitutionTextForInputTokenText:substitutionTextForOutputTokenText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_18E2BF66C()
{
  sub_18E1E2F20();
  sub_18E44F19C();
  sub_18E1E6A20();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18E2BF6B0(char a1)
{
  if (a1)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t sub_18E2BF708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E2BF66C();
  *a2 = result;
  return result;
}

unint64_t sub_18E2BF740()
{
  v1 = sub_18E1D6250();
  result = sub_18E2BF6B0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18E2BF770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2BF66C();
  *a1 = result;
  return result;
}

uint64_t sub_18E2BF7A0(uint64_t a1)
{
  v2 = sub_18E2C2C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2BF7DC(uint64_t a1)
{
  v2 = sub_18E2C2C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenizerAssetMetadata.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = sub_18E2706EC(&qword_1EABE1848, &qword_18E49F410);
  sub_18E1C4EAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C57AC();
  v9 = *v0;
  v15 = v0[1];
  v10 = v2[4];
  sub_18E1DD34C(v2, v2[3]);
  v11 = sub_18E2C2C6C();

  sub_18E1E2A60();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E1C638C(&qword_1ED6A7948);
  sub_18E221C6C();
  sub_18E1CFB6C();
  sub_18E44F2FC();

  if (!v11)
  {
    sub_18E1D8470(v15);
    sub_18E221C6C();
    sub_18E1CFB6C();
    sub_18E44F2FC();
  }

  v12 = *(v5 + 8);
  v13 = sub_18E1D4BF4();
  v14(v13);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void TokenizerAssetMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E243AFC();
  v14 = v13;
  v15 = sub_18E2706EC(&qword_1EABE1858, &qword_18E49F418);
  sub_18E1C4EAC(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1CAFF0();
  sub_18E1E64EC();
  sub_18E2C2C6C();
  sub_18E1E67AC();
  if (v11)
  {
    sub_18E1C9934(v10);
  }

  else
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1C670C(&qword_1ED6A7940);
    sub_18E1E327C();
    sub_18E1CF5BC();
    sub_18E44F20C();
    sub_18E1E327C();
    sub_18E1CF5BC();
    sub_18E44F20C();
    (*(v17 + 8))(v12, v15);
    *v14 = a10;
    v14[1] = a10;

    sub_18E1C9934(v10);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

void AssetBackedTokenizerBase.init(configuration:)()
{
  sub_18E1C59C0();
  AssetBackedTokenizerBase.init(configuration:variant:)();
  if (!v0)
  {
    v1 = sub_18E1E6A80();
    memcpy(v1, v2, 0xD8uLL);
  }
}

uint64_t _s12ModelCatalog011AssetBackedA28ConfigurationReplacementBaseV2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  v7 = *(a1 + 200);
  v8 = *(a1 + 208);
  v9 = memcpy(__dst, a2, 0xC1uLL);
  v10 = a2[25];
  v11 = a2[26];
  v19 = sub_18E1CAE64(v9, v12, v13, v14, v15, v16, v17, v18, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v26[18], v26[19], v26[20], v26[21], v26[22], v26[23], v26[24], __src[0]);
  memcpy(v19, v20, v21);
  memcpy(v26, a2, 0xC1uLL);
  sub_18E200C0C(v28, v31);
  sub_18E200C0C(__dst, v31);
  static ResourceConfiguration.== infix(_:_:)();
  LOBYTE(a2) = v22;
  memcpy(v30, v26, 0xC1uLL);
  sub_18E1FE044(v30);
  memcpy(v31, __src, 0xC1uLL);
  sub_18E1FE044(v31);
  if (a2)
  {
    if (v7 == v10 && v8 == v11)
    {
      v24 = 1;
    }

    else
    {
      sub_18E1C5BFC();
      v24 = sub_18E44F3CC();
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t _s12ModelCatalog011AssetBackedA28ConfigurationReplacementBaseV4hash4intoys6HasherVz_tF_0()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[25];
  v2 = v0[26];
  ResourceConfiguration.hash(into:)();

  return sub_18E44EB4C();
}

uint64_t _s12ModelCatalog011AssetBackedA28ConfigurationReplacementBaseV9hashValueSivg_0()
{
  memcpy(v4, v0, sizeof(v4));
  v1 = v0[25];
  v2 = v0[26];
  sub_18E44F48C();
  ResourceConfiguration.hash(into:)();
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

uint64_t sub_18E2BFDF0@<X0>(uint64_t (*a1)(void *)@<X2>, uint64_t *a2@<X8>)
{
  v5 = memcpy(__dst, v2, sizeof(__dst));
  result = a1(v5);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_18E2BFE5C()
{
  result = qword_1EABE1340;
  if (!qword_1EABE1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1340);
  }

  return result;
}

unint64_t sub_18E2BFEB0()
{
  result = qword_1EABE1350;
  if (!qword_1EABE1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1350);
  }

  return result;
}

unint64_t sub_18E2BFF04()
{
  result = qword_1EABE1360;
  if (!qword_1EABE1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1360);
  }

  return result;
}

unint64_t sub_18E2BFF58()
{
  result = qword_1EABE1370;
  if (!qword_1EABE1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1370);
  }

  return result;
}

unint64_t sub_18E2BFFAC()
{
  result = qword_1EABE1380;
  if (!qword_1EABE1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1380);
  }

  return result;
}

unint64_t sub_18E2C0000()
{
  result = qword_1EABE1390;
  if (!qword_1EABE1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1390);
  }

  return result;
}

unint64_t sub_18E2C0054()
{
  result = qword_1EABE13A0;
  if (!qword_1EABE13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE13A0);
  }

  return result;
}

unint64_t sub_18E2C00A8()
{
  result = qword_1EABE13B0;
  if (!qword_1EABE13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE13B0);
  }

  return result;
}

unint64_t sub_18E2C00FC()
{
  result = qword_1EABE13C0;
  if (!qword_1EABE13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE13C0);
  }

  return result;
}

unint64_t sub_18E2C0150()
{
  result = qword_1EABE13D0;
  if (!qword_1EABE13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE13D0);
  }

  return result;
}

unint64_t sub_18E2C01A4()
{
  result = qword_1EABE13E0;
  if (!qword_1EABE13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE13E0);
  }

  return result;
}

unint64_t sub_18E2C01F8()
{
  result = qword_1EABE13F0;
  if (!qword_1EABE13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE13F0);
  }

  return result;
}

unint64_t sub_18E2C024C()
{
  result = qword_1EABE1400;
  if (!qword_1EABE1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1400);
  }

  return result;
}

unint64_t sub_18E2C02A0()
{
  result = qword_1EABE0340;
  if (!qword_1EABE0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0340);
  }

  return result;
}

unint64_t sub_18E2C02F4()
{
  result = qword_1EABE0368;
  if (!qword_1EABE0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0368);
  }

  return result;
}

unint64_t sub_18E2C0348()
{
  result = qword_1EABE1420;
  if (!qword_1EABE1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1420);
  }

  return result;
}

unint64_t sub_18E2C039C()
{
  result = qword_1EABE1438;
  if (!qword_1EABE1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1438);
  }

  return result;
}

unint64_t sub_18E2C03F0()
{
  result = qword_1EABE1448;
  if (!qword_1EABE1448)
  {
    sub_18E2707F8(&qword_1EABE1440, &qword_18E49F150);
    sub_18E2C0500(&unk_1EABE1430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1448);
  }

  return result;
}

unint64_t sub_18E2C04AC()
{
  result = qword_1EABE0328;
  if (!qword_1EABE0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0328);
  }

  return result;
}

unint64_t sub_18E2C0500(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE1428, &qword_18E49F148);
    v2();
    result = sub_18E1E2ACC();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E2C0560()
{
  result = qword_1EABE0348;
  if (!qword_1EABE0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0348);
  }

  return result;
}

unint64_t sub_18E2C05B4()
{
  result = qword_1EABE00C0;
  if (!qword_1EABE00C0)
  {
    sub_18E2707F8(&qword_1EABE1440, &qword_18E49F150);
    sub_18E2C0500(&unk_1EABE05F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00C0);
  }

  return result;
}

unint64_t sub_18E2C0670()
{
  result = qword_1EABE0360;
  if (!qword_1EABE0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0360);
  }

  return result;
}

unint64_t sub_18E2C06C4()
{
  result = qword_1EABE0938;
  if (!qword_1EABE0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0938);
  }

  return result;
}

unint64_t sub_18E2C0718()
{
  result = qword_1EABE0918;
  if (!qword_1EABE0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0918);
  }

  return result;
}

unint64_t sub_18E2C07D4()
{
  result = qword_1EABE1490;
  if (!qword_1EABE1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1490);
  }

  return result;
}

unint64_t sub_18E2C0890()
{
  result = qword_1EABE0950;
  if (!qword_1EABE0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0950);
  }

  return result;
}

unint64_t sub_18E2C08E4()
{
  result = qword_1EABE14B8;
  if (!qword_1EABE14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14B8);
  }

  return result;
}

unint64_t sub_18E2C0938()
{
  result = qword_1EABE14C0;
  if (!qword_1EABE14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14C0);
  }

  return result;
}

unint64_t sub_18E2C098C()
{
  result = qword_1EABE14C8;
  if (!qword_1EABE14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14C8);
  }

  return result;
}

unint64_t sub_18E2C09E0()
{
  result = qword_1EABE14D0;
  if (!qword_1EABE14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14D0);
  }

  return result;
}

unint64_t sub_18E2C0A34()
{
  result = qword_1EABE14D8;
  if (!qword_1EABE14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14D8);
  }

  return result;
}

unint64_t sub_18E2C0A88()
{
  result = qword_1EABE14E0;
  if (!qword_1EABE14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14E0);
  }

  return result;
}

unint64_t sub_18E2C0ADC()
{
  result = qword_1EABE0958;
  if (!qword_1EABE0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0958);
  }

  return result;
}

unint64_t sub_18E2C0B30()
{
  result = qword_1EABE08F0;
  if (!qword_1EABE08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08F0);
  }

  return result;
}

unint64_t sub_18E2C0B84()
{
  result = qword_1EABE0968;
  if (!qword_1EABE0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0968);
  }

  return result;
}

unint64_t sub_18E2C0BD8()
{
  result = qword_1EABE0920;
  if (!qword_1EABE0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0920);
  }

  return result;
}

unint64_t sub_18E2C0C2C()
{
  result = qword_1EABE0970;
  if (!qword_1EABE0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0970);
  }

  return result;
}

unint64_t sub_18E2C0C80()
{
  result = qword_1EABE0900;
  if (!qword_1EABE0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0900);
  }

  return result;
}

unint64_t sub_18E2C0D3C()
{
  result = qword_1EABE14F8;
  if (!qword_1EABE14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE14F8);
  }

  return result;
}

unint64_t sub_18E2C0D90()
{
  result = qword_1EABE1510;
  if (!qword_1EABE1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1510);
  }

  return result;
}

unint64_t sub_18E2C0DE4()
{
  result = qword_1EABE1518;
  if (!qword_1EABE1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1518);
  }

  return result;
}

unint64_t sub_18E2C0E38(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE1520, &qword_18E49F1E8);
    v2();
    result = sub_18E1E2ACC();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E2C0E98()
{
  result = qword_1EABE1530;
  if (!qword_1EABE1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1530);
  }

  return result;
}

unint64_t sub_18E2C0EEC()
{
  result = qword_1EABE1540;
  if (!qword_1EABE1540)
  {
    sub_18E2707F8(&qword_1EABE1538, &qword_18E49F1F0);
    sub_18E2C0E38(&unk_1EABE1528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1540);
  }

  return result;
}

unint64_t sub_18E2C0FA8()
{
  result = qword_1EABE1550;
  if (!qword_1EABE1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1550);
  }

  return result;
}

unint64_t sub_18E2C0FFC()
{
  result = qword_1EABE1560;
  if (!qword_1EABE1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1560);
  }

  return result;
}

unint64_t sub_18E2C1050()
{
  result = qword_1EABE1568;
  if (!qword_1EABE1568)
  {
    sub_18E2707F8(&qword_1EABE1538, &qword_18E49F1F0);
    sub_18E2C0E38(&unk_1EABE1558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1568);
  }

  return result;
}

unint64_t sub_18E2C110C()
{
  result = qword_1EABE1578;
  if (!qword_1EABE1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1578);
  }

  return result;
}

unint64_t sub_18E2C1160()
{
  result = qword_1EABE1590;
  if (!qword_1EABE1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1590);
  }

  return result;
}

unint64_t sub_18E2C11B4()
{
  result = qword_1EABE15A8;
  if (!qword_1EABE15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE15A8);
  }

  return result;
}

unint64_t sub_18E2C1270()
{
  result = qword_1EABE15C0;
  if (!qword_1EABE15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE15C0);
  }

  return result;
}

uint64_t sub_18E2C132C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18E2C1370()
{
  result = qword_1EABE15E8;
  if (!qword_1EABE15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE15E8);
  }

  return result;
}

unint64_t sub_18E2C13C4()
{
  result = qword_1EABE15F0;
  if (!qword_1EABE15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE15F0);
  }

  return result;
}

unint64_t sub_18E2C1418()
{
  result = qword_1EABE15F8;
  if (!qword_1EABE15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE15F8);
  }

  return result;
}

unint64_t sub_18E2C146C()
{
  result = qword_1EABE1600;
  if (!qword_1EABE1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1600);
  }

  return result;
}

unint64_t sub_18E2C14C0()
{
  result = qword_1EABE1608;
  if (!qword_1EABE1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1608);
  }

  return result;
}

unint64_t sub_18E2C1514()
{
  result = qword_1EABE1610;
  if (!qword_1EABE1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1610);
  }

  return result;
}

uint64_t sub_18E2C1568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18E2C15AC()
{
  result = qword_1EABE1618;
  if (!qword_1EABE1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1618);
  }

  return result;
}

unint64_t sub_18E2C1600()
{
  result = qword_1EABE1628;
  if (!qword_1EABE1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1628);
  }

  return result;
}

unint64_t sub_18E2C1654()
{
  result = qword_1EABE1630;
  if (!qword_1EABE1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1630);
  }

  return result;
}

unint64_t sub_18E2C16A8()
{
  result = qword_1EABE1638;
  if (!qword_1EABE1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1638);
  }

  return result;
}

unint64_t sub_18E2C16FC()
{
  result = qword_1EABE1640;
  if (!qword_1EABE1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1640);
  }

  return result;
}

unint64_t sub_18E2C1750()
{
  result = qword_1EABE1648;
  if (!qword_1EABE1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1648);
  }

  return result;
}

unint64_t sub_18E2C17A4()
{
  result = qword_1EABE1650;
  if (!qword_1EABE1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1650);
  }

  return result;
}

unint64_t sub_18E2C1860()
{
  result = qword_1EABE0008;
  if (!qword_1EABE0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0008);
  }

  return result;
}

unint64_t sub_18E2C18B4()
{
  result = qword_1EABDFFE8;
  if (!qword_1EABDFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFE8);
  }

  return result;
}

unint64_t sub_18E2C1970()
{
  result = qword_1EABE0038;
  if (!qword_1EABE0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0038);
  }

  return result;
}

unint64_t sub_18E2C1A2C()
{
  result = qword_1EABE0018;
  if (!qword_1EABE0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0018);
  }

  return result;
}

unint64_t sub_18E2C1A80()
{
  result = qword_1EABE16B0;
  if (!qword_1EABE16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE16B0);
  }

  return result;
}

unint64_t sub_18E2C1AD4()
{
  result = qword_1EABE16B8;
  if (!qword_1EABE16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE16B8);
  }

  return result;
}

unint64_t sub_18E2C1B28()
{
  result = qword_1EABE16C0;
  if (!qword_1EABE16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE16C0);
  }

  return result;
}

unint64_t sub_18E2C1B7C(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    v4 = v3;
    sub_18E2707F8(&qword_1EABE16A0, &qword_18E49F2A8);
    v4();
    sub_18E1E63B4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E2C1BF8()
{
  result = qword_1EABDFFF0;
  if (!qword_1EABDFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFF0);
  }

  return result;
}

unint64_t sub_18E2C1C4C()
{
  result = qword_1EABE0020;
  if (!qword_1EABE0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0020);
  }

  return result;
}

unint64_t sub_18E2C1CA0()
{
  result = qword_1EABDFFD0;
  if (!qword_1EABDFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFD0);
  }

  return result;
}

unint64_t sub_18E2C1D5C()
{
  result = qword_1EABE03F8;
  if (!qword_1EABE03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE03F8);
  }

  return result;
}

unint64_t sub_18E2C1DB0()
{
  result = qword_1EABE03D8;
  if (!qword_1EABE03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE03D8);
  }

  return result;
}

unint64_t sub_18E2C1E04()
{
  result = qword_1EABE03B8;
  if (!qword_1EABE03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE03B8);
  }

  return result;
}

unint64_t sub_18E2C1EC0()
{
  result = qword_1EABE0430;
  if (!qword_1EABE0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0430);
  }

  return result;
}

uint64_t sub_18E2C1F7C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_18E2C2010()
{
  result = qword_1EABE0408;
  if (!qword_1EABE0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0408);
  }

  return result;
}

unint64_t sub_18E2C2064()
{
  result = qword_1EABE1728;
  if (!qword_1EABE1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1728);
  }

  return result;
}

unint64_t sub_18E2C20B8()
{
  result = qword_1EABE1730;
  if (!qword_1EABE1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1730);
  }

  return result;
}

unint64_t sub_18E2C210C(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    v4 = v3;
    sub_18E2707F8(&qword_1EABE1738, &qword_18E49F310);
    v4();
    sub_18E1E63B4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E2C2188()
{
  result = qword_1EABE1748;
  if (!qword_1EABE1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1748);
  }

  return result;
}

unint64_t sub_18E2C21DC()
{
  result = qword_1EABE1750;
  if (!qword_1EABE1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1750);
  }

  return result;
}

unint64_t sub_18E2C2230()
{
  result = qword_1EABE1758;
  if (!qword_1EABE1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1758);
  }

  return result;
}

uint64_t sub_18E2C2284(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_18E2C2314()
{
  result = qword_1EABE1760;
  if (!qword_1EABE1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1760);
  }

  return result;
}

unint64_t sub_18E2C2368()
{
  result = qword_1EABE0410;
  if (!qword_1EABE0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0410);
  }

  return result;
}

unint64_t sub_18E2C23BC()
{
  result = qword_1EABE0390;
  if (!qword_1EABE0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0390);
  }

  return result;
}

unint64_t sub_18E2C2410()
{
  result = qword_1EABE03E0;
  if (!qword_1EABE03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE03E0);
  }

  return result;
}

unint64_t sub_18E2C2464()
{
  result = qword_1EABE03A0;
  if (!qword_1EABE03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE03A0);
  }

  return result;
}

unint64_t sub_18E2C24B8()
{
  result = qword_1EABE03C0;
  if (!qword_1EABE03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE03C0);
  }

  return result;
}

unint64_t sub_18E2C250C()
{
  result = qword_1EABE0418;
  if (!qword_1EABE0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0418);
  }

  return result;
}

unint64_t sub_18E2C25C8()
{
  result = qword_1EABDF8E0;
  if (!qword_1EABDF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF8E0);
  }

  return result;
}

unint64_t sub_18E2C261C()
{
  result = qword_1EABE1780;
  if (!qword_1EABE1780)
  {
    sub_18E2707F8(&qword_1EABE1778, &qword_18E49F328);
    sub_18E291C98(&qword_1ED6A7948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1780);
  }

  return result;
}

unint64_t sub_18E2C26C4()
{
  result = qword_1EABDF758;
  if (!qword_1EABDF758)
  {
    sub_18E2707F8(&qword_1EABE1778, &qword_18E49F328);
    sub_18E291C98(&qword_1ED6A7940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF758);
  }

  return result;
}

unint64_t sub_18E2C27D4()
{
  result = qword_1EABDF8C0;
  if (!qword_1EABDF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF8C0);
  }

  return result;
}

unint64_t sub_18E2C2828()
{
  result = qword_1EABDF8F8;
  if (!qword_1EABDF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF8F8);
  }

  return result;
}

unint64_t sub_18E2C287C()
{
  result = qword_1EABE17B0;
  if (!qword_1EABE17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE17B0);
  }

  return result;
}

unint64_t sub_18E2C28D0()
{
  result = qword_1EABE17B8;
  if (!qword_1EABE17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE17B8);
  }

  return result;
}

unint64_t sub_18E2C2924()
{
  result = qword_1EABDF8A8;
  if (!qword_1EABDF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF8A8);
  }

  return result;
}

unint64_t sub_18E2C2978()
{
  result = qword_1EABDF8C8;
  if (!qword_1EABDF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF8C8);
  }

  return result;
}

unint64_t sub_18E2C29CC()
{
  result = qword_1EABE17D0;
  if (!qword_1EABE17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE17D0);
  }

  return result;
}

unint64_t sub_18E2C2A20()
{
  result = qword_1EABE17E0;
  if (!qword_1EABE17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE17E0);
  }

  return result;
}

unint64_t sub_18E2C2A74()
{
  result = qword_1EABE17F0;
  if (!qword_1EABE17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE17F0);
  }

  return result;
}

unint64_t sub_18E2C2AC8()
{
  result = qword_1EABE1800;
  if (!qword_1EABE1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1800);
  }

  return result;
}

unint64_t sub_18E2C2B1C()
{
  result = qword_1EABE1810;
  if (!qword_1EABE1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1810);
  }

  return result;
}

unint64_t sub_18E2C2B70()
{
  result = qword_1EABE1820;
  if (!qword_1EABE1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1820);
  }

  return result;
}

unint64_t sub_18E2C2BC4()
{
  result = qword_1EABE1830;
  if (!qword_1EABE1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1830);
  }

  return result;
}

unint64_t sub_18E2C2C18()
{
  result = qword_1EABE1840;
  if (!qword_1EABE1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1840);
  }

  return result;
}

unint64_t sub_18E2C2C6C()
{
  result = qword_1EABE1850;
  if (!qword_1EABE1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1850);
  }

  return result;
}

unint64_t sub_18E2C2CC0(uint64_t a1)
{
  result = sub_18E2C2CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C2CE8()
{
  result = qword_1EABE0A20;
  if (!qword_1EABE0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A20);
  }

  return result;
}

unint64_t sub_18E2C2D68()
{
  result = qword_1EABE0378;
  if (!qword_1EABE0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0378);
  }

  return result;
}

unint64_t sub_18E2C2DBC()
{
  result = qword_1EABDF9D8;
  if (!qword_1EABDF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9D8);
  }

  return result;
}

unint64_t sub_18E2C2E3C()
{
  result = qword_1EABE0A38;
  if (!qword_1EABE0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A38);
  }

  return result;
}

unint64_t sub_18E2C2E90()
{
  result = qword_1EABE0A28;
  if (!qword_1EABE0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A28);
  }

  return result;
}

unint64_t sub_18E2C2EE8()
{
  result = qword_1EABE0A30;
  if (!qword_1EABE0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A30);
  }

  return result;
}

unint64_t sub_18E2C2F68()
{
  result = qword_1EABE1860;
  if (!qword_1EABE1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1860);
  }

  return result;
}

unint64_t sub_18E2C2FBC()
{
  result = qword_1EABE1868;
  if (!qword_1EABE1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1868);
  }

  return result;
}

unint64_t sub_18E2C303C()
{
  result = qword_1EABE01A0;
  if (!qword_1EABE01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01A0);
  }

  return result;
}

unint64_t sub_18E2C3090()
{
  result = qword_1EABE01A8;
  if (!qword_1EABE01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01A8);
  }

  return result;
}

unint64_t sub_18E2C3114(uint64_t a1)
{
  result = sub_18E2C313C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C313C()
{
  result = qword_1EABE1880;
  if (!qword_1EABE1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1880);
  }

  return result;
}

unint64_t sub_18E2C31BC()
{
  result = qword_1EABE1888;
  if (!qword_1EABE1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1888);
  }

  return result;
}

unint64_t sub_18E2C3210()
{
  result = qword_1EABE1890;
  if (!qword_1EABE1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1890);
  }

  return result;
}

unint64_t sub_18E2C3264(uint64_t a1)
{
  result = sub_18E2C328C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C328C()
{
  result = qword_1EABE1898;
  if (!qword_1EABE1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1898);
  }

  return result;
}

unint64_t sub_18E2C330C()
{
  result = qword_1EABE18A0;
  if (!qword_1EABE18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18A0);
  }

  return result;
}

unint64_t sub_18E2C3360()
{
  result = qword_1EABE18A8;
  if (!qword_1EABE18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18A8);
  }

  return result;
}

unint64_t sub_18E2C33B8()
{
  result = qword_1EABE18B0;
  if (!qword_1EABE18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18B0);
  }

  return result;
}

unint64_t sub_18E2C3438()
{
  result = qword_1EABE0BB0;
  if (!qword_1EABE0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BB0);
  }

  return result;
}

unint64_t sub_18E2C348C()
{
  result = qword_1EABE0BB8;
  if (!qword_1EABE0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BB8);
  }

  return result;
}

unint64_t sub_18E2C350C()
{
  result = qword_1ED6A7BE8;
  if (!qword_1ED6A7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7BE8);
  }

  return result;
}

unint64_t sub_18E2C3560()
{
  result = qword_1EABE0BA8;
  if (!qword_1EABE0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BA8);
  }

  return result;
}

unint64_t sub_18E2C35E4(uint64_t a1)
{
  result = sub_18E2C360C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C360C()
{
  result = qword_1EABDFFA0;
  if (!qword_1EABDFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFA0);
  }

  return result;
}

unint64_t sub_18E2C368C()
{
  result = qword_1EABE18C0;
  if (!qword_1EABE18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18C0);
  }

  return result;
}

unint64_t sub_18E2C36E0()
{
  result = qword_1EABE18C8;
  if (!qword_1EABE18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18C8);
  }

  return result;
}

unint64_t sub_18E2C3734(uint64_t a1)
{
  result = sub_18E2C375C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C375C()
{
  result = qword_1EABDFFB0;
  if (!qword_1EABDFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFB0);
  }

  return result;
}

unint64_t sub_18E2C37DC()
{
  result = qword_1EABDFFC8;
  if (!qword_1EABDFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFC8);
  }

  return result;
}

unint64_t sub_18E2C3830()
{
  result = qword_1EABDFFB8;
  if (!qword_1EABDFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFB8);
  }

  return result;
}

unint64_t sub_18E2C3888()
{
  result = qword_1EABDFFC0;
  if (!qword_1EABDFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFC0);
  }

  return result;
}

unint64_t sub_18E2C3908()
{
  result = qword_1EABE0C98;
  if (!qword_1EABE0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C98);
  }

  return result;
}

unint64_t sub_18E2C395C()
{
  result = qword_1EABE0CA0;
  if (!qword_1EABE0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0CA0);
  }

  return result;
}

unint64_t sub_18E2C39DC()
{
  result = qword_1ED6A7CA0;
  if (!qword_1ED6A7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7CA0);
  }

  return result;
}

unint64_t sub_18E2C3A30()
{
  result = qword_1EABE0CB8;
  if (!qword_1EABE0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0CB8);
  }

  return result;
}

unint64_t sub_18E2C3AB4(uint64_t a1)
{
  result = sub_18E2C3ADC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C3ADC()
{
  result = qword_1EABE18D8;
  if (!qword_1EABE18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18D8);
  }

  return result;
}

unint64_t sub_18E2C3B5C()
{
  result = qword_1EABE18E0;
  if (!qword_1EABE18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18E0);
  }

  return result;
}

unint64_t sub_18E2C3BB0()
{
  result = qword_1EABE18E8;
  if (!qword_1EABE18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18E8);
  }

  return result;
}

unint64_t sub_18E2C3C30()
{
  result = qword_1EABE18F0;
  if (!qword_1EABE18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18F0);
  }

  return result;
}

unint64_t sub_18E2C3C84()
{
  result = qword_1EABE18F8;
  if (!qword_1EABE18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE18F8);
  }

  return result;
}

unint64_t sub_18E2C3CDC()
{
  result = qword_1EABE1900;
  if (!qword_1EABE1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1900);
  }

  return result;
}

unint64_t sub_18E2C3D5C()
{
  result = qword_1EABE0B70;
  if (!qword_1EABE0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B70);
  }

  return result;
}

unint64_t sub_18E2C3DB0()
{
  result = qword_1EABE0B78;
  if (!qword_1EABE0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B78);
  }

  return result;
}

unint64_t sub_18E2C3E30()
{
  result = qword_1ED6A7BE0;
  if (!qword_1ED6A7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7BE0);
  }

  return result;
}

unint64_t sub_18E2C3E84()
{
  result = qword_1EABE0B30;
  if (!qword_1EABE0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B30);
  }

  return result;
}

unint64_t sub_18E2C3F08(uint64_t a1)
{
  result = sub_18E2C3F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C3F30()
{
  result = qword_1EABE1910;
  if (!qword_1EABE1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1910);
  }

  return result;
}

unint64_t sub_18E2C3FB0()
{
  result = qword_1EABE1918;
  if (!qword_1EABE1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1918);
  }

  return result;
}

unint64_t sub_18E2C4004()
{
  result = qword_1EABE1920;
  if (!qword_1EABE1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1920);
  }

  return result;
}

unint64_t sub_18E2C4058(uint64_t a1)
{
  result = sub_18E2C4080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C4080()
{
  result = qword_1EABE1928;
  if (!qword_1EABE1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1928);
  }

  return result;
}

unint64_t sub_18E2C4100()
{
  result = qword_1EABE1930;
  if (!qword_1EABE1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1930);
  }

  return result;
}

unint64_t sub_18E2C4154()
{
  result = qword_1EABE1938;
  if (!qword_1EABE1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1938);
  }

  return result;
}

unint64_t sub_18E2C41AC()
{
  result = qword_1EABE1940;
  if (!qword_1EABE1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1940);
  }

  return result;
}

unint64_t sub_18E2C422C()
{
  result = qword_1EABE0230;
  if (!qword_1EABE0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0230);
  }

  return result;
}

unint64_t sub_18E2C4280()
{
  result = qword_1EABE0238;
  if (!qword_1EABE0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0238);
  }

  return result;
}

unint64_t sub_18E2C4300()
{
  result = qword_1EABE08A8;
  if (!qword_1EABE08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08A8);
  }

  return result;
}

unint64_t sub_18E2C4354()
{
  result = qword_1EABE08B0;
  if (!qword_1EABE08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08B0);
  }

  return result;
}

unint64_t sub_18E2C43D8(uint64_t a1)
{
  result = sub_18E2C4400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C4400()
{
  result = qword_1EABE1950;
  if (!qword_1EABE1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1950);
  }

  return result;
}

unint64_t sub_18E2C4480()
{
  result = qword_1EABE02B0;
  if (!qword_1EABE02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02B0);
  }

  return result;
}

unint64_t sub_18E2C44D4()
{
  result = qword_1EABDF948;
  if (!qword_1EABDF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF948);
  }

  return result;
}

unint64_t sub_18E2C4554()
{
  result = qword_1EABE1958;
  if (!qword_1EABE1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1958);
  }

  return result;
}

unint64_t sub_18E2C45A8()
{
  result = qword_1EABE1960;
  if (!qword_1EABE1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1960);
  }

  return result;
}

unint64_t sub_18E2C4600()
{
  result = qword_1EABE1968;
  if (!qword_1EABE1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1968);
  }

  return result;
}

unint64_t sub_18E2C4680()
{
  result = qword_1EABDF878;
  if (!qword_1EABDF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF878);
  }

  return result;
}

unint64_t sub_18E2C46D4()
{
  result = qword_1EABDF880;
  if (!qword_1EABDF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF880);
  }

  return result;
}

unint64_t sub_18E2C4784(uint64_t a1)
{
  result = sub_18E2C47AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C47AC()
{
  result = qword_1EABE1980;
  if (!qword_1EABE1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1980);
  }

  return result;
}

unint64_t sub_18E2C482C()
{
  result = qword_1EABE1988;
  if (!qword_1EABE1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1988);
  }

  return result;
}

unint64_t sub_18E2C4880()
{
  result = qword_1EABE1990;
  if (!qword_1EABE1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1990);
  }

  return result;
}

unint64_t sub_18E2C4900()
{
  result = qword_1EABE1998;
  if (!qword_1EABE1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1998);
  }

  return result;
}

unint64_t sub_18E2C4954()
{
  result = qword_1EABE19A0;
  if (!qword_1EABE19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19A0);
  }

  return result;
}

unint64_t sub_18E2C49AC()
{
  result = qword_1EABE19A8;
  if (!qword_1EABE19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19A8);
  }

  return result;
}

unint64_t sub_18E2C4A2C()
{
  result = qword_1EABE0170;
  if (!qword_1EABE0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0170);
  }

  return result;
}

unint64_t sub_18E2C4A80()
{
  result = qword_1EABE0178;
  if (!qword_1EABE0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0178);
  }

  return result;
}

unint64_t sub_18E2C4B00()
{
  result = qword_1ED6A7950;
  if (!qword_1ED6A7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7950);
  }

  return result;
}

unint64_t sub_18E2C4B54()
{
  result = qword_1EABE0688;
  if (!qword_1EABE0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0688);
  }

  return result;
}

unint64_t sub_18E2C4BD8(uint64_t a1)
{
  result = sub_18E2C4C00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C4C00()
{
  result = qword_1EABE19B8;
  if (!qword_1EABE19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19B8);
  }

  return result;
}

unint64_t sub_18E2C4C80()
{
  result = qword_1EABE19C0;
  if (!qword_1EABE19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19C0);
  }

  return result;
}

unint64_t sub_18E2C4CD4()
{
  result = qword_1EABE19C8;
  if (!qword_1EABE19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19C8);
  }

  return result;
}

unint64_t sub_18E2C4D54()
{
  result = qword_1EABE19D0;
  if (!qword_1EABE19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19D0);
  }

  return result;
}

unint64_t sub_18E2C4DA8()
{
  result = qword_1EABE19D8;
  if (!qword_1EABE19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19D8);
  }

  return result;
}

unint64_t sub_18E2C4E00()
{
  result = qword_1EABE19E0;
  if (!qword_1EABE19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19E0);
  }

  return result;
}

unint64_t sub_18E2C4E80()
{
  result = qword_1EABE01C8;
  if (!qword_1EABE01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01C8);
  }

  return result;
}

unint64_t sub_18E2C4ED4()
{
  result = qword_1EABE01D0;
  if (!qword_1EABE01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01D0);
  }

  return result;
}

unint64_t sub_18E2C4F54()
{
  result = qword_1ED6A7B28;
  if (!qword_1ED6A7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B28);
  }

  return result;
}

unint64_t sub_18E2C4FA8()
{
  result = qword_1EABE09E0;
  if (!qword_1EABE09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09E0);
  }

  return result;
}

unint64_t sub_18E2C502C(uint64_t a1)
{
  result = sub_18E2C5054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C5054()
{
  result = qword_1EABE19F8;
  if (!qword_1EABE19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE19F8);
  }

  return result;
}

unint64_t sub_18E2C50D4()
{
  result = qword_1EABE1A00;
  if (!qword_1EABE1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A00);
  }

  return result;
}

unint64_t sub_18E2C5128()
{
  result = qword_1EABE1A08;
  if (!qword_1EABE1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A08);
  }

  return result;
}

unint64_t sub_18E2C51A8()
{
  result = qword_1EABE1A10;
  if (!qword_1EABE1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A10);
  }

  return result;
}

unint64_t sub_18E2C51FC()
{
  result = qword_1EABE1A18;
  if (!qword_1EABE1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A18);
  }

  return result;
}

unint64_t sub_18E2C5254()
{
  result = qword_1EABE1A20;
  if (!qword_1EABE1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A20);
  }

  return result;
}

unint64_t sub_18E2C52D4()
{
  result = qword_1EABE0308;
  if (!qword_1EABE0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0308);
  }

  return result;
}

unint64_t sub_18E2C5328()
{
  result = qword_1EABE0310;
  if (!qword_1EABE0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0310);
  }

  return result;
}

unint64_t sub_18E2C53A8()
{
  result = qword_1ED6A7A08;
  if (!qword_1ED6A7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7A08);
  }

  return result;
}

unint64_t sub_18E2C53FC()
{
  result = qword_1EABE0760;
  if (!qword_1EABE0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0760);
  }

  return result;
}

unint64_t sub_18E2C5480(uint64_t a1)
{
  result = sub_18E2C54A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C54A8()
{
  result = qword_1EABE1A30;
  if (!qword_1EABE1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A30);
  }

  return result;
}

unint64_t sub_18E2C5528()
{
  result = qword_1EABE1A38;
  if (!qword_1EABE1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A38);
  }

  return result;
}

unint64_t sub_18E2C557C()
{
  result = qword_1EABE1A40;
  if (!qword_1EABE1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A40);
  }

  return result;
}

unint64_t sub_18E2C55FC()
{
  result = qword_1EABE1A48;
  if (!qword_1EABE1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A48);
  }

  return result;
}

unint64_t sub_18E2C5650()
{
  result = qword_1EABE1A50;
  if (!qword_1EABE1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A50);
  }

  return result;
}

unint64_t sub_18E2C56A8()
{
  result = qword_1EABE1A58;
  if (!qword_1EABE1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A58);
  }

  return result;
}

unint64_t sub_18E2C5728()
{
  result = qword_1EABDF908;
  if (!qword_1EABDF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF908);
  }

  return result;
}

unint64_t sub_18E2C577C()
{
  result = qword_1EABDF910;
  if (!qword_1EABDF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF910);
  }

  return result;
}

unint64_t sub_18E2C57FC()
{
  result = qword_1ED6A79F8;
  if (!qword_1ED6A79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A79F8);
  }

  return result;
}

unint64_t sub_18E2C5850()
{
  result = qword_1EABE06F8;
  if (!qword_1EABE06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06F8);
  }

  return result;
}

unint64_t sub_18E2C58D4(uint64_t a1)
{
  result = sub_18E2C58FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C58FC()
{
  result = qword_1EABE1A68;
  if (!qword_1EABE1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A68);
  }

  return result;
}

unint64_t sub_18E2C597C()
{
  result = qword_1EABE1A70;
  if (!qword_1EABE1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A70);
  }

  return result;
}

unint64_t sub_18E2C59D0()
{
  result = qword_1EABE1A78;
  if (!qword_1EABE1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A78);
  }

  return result;
}

unint64_t sub_18E2C5A50()
{
  result = qword_1EABE1A80;
  if (!qword_1EABE1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A80);
  }

  return result;
}

unint64_t sub_18E2C5AA4()
{
  result = qword_1EABE1A88;
  if (!qword_1EABE1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A88);
  }

  return result;
}

unint64_t sub_18E2C5AFC()
{
  result = qword_1EABE1A90;
  if (!qword_1EABE1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1A90);
  }

  return result;
}

unint64_t sub_18E2C5B7C()
{
  result = qword_1EABE02F8;
  if (!qword_1EABE02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02F8);
  }

  return result;
}

unint64_t sub_18E2C5BD0()
{
  result = qword_1EABE0300;
  if (!qword_1EABE0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0300);
  }

  return result;
}

unint64_t sub_18E2C5C50()
{
  result = qword_1ED6A7A00;
  if (!qword_1ED6A7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7A00);
  }

  return result;
}

unint64_t sub_18E2C5CA4()
{
  result = qword_1EABE0758;
  if (!qword_1EABE0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0758);
  }

  return result;
}

unint64_t sub_18E2C5D54()
{
  result = qword_1EABE0718;
  if (!qword_1EABE0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0718);
  }

  return result;
}

unint64_t sub_18E2C5DA8()
{
  result = qword_1EABE0258;
  if (!qword_1EABE0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0258);
  }

  return result;
}

unint64_t sub_18E2C5E28()
{
  result = qword_1EABDF818;
  if (!qword_1EABDF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF818);
  }

  return result;
}

unint64_t sub_18E2C5E7C()
{
  result = qword_1EABDF820;
  if (!qword_1EABDF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF820);
  }

  return result;
}

unint64_t sub_18E2C5EFC()
{
  result = qword_1EABE0140;
  if (!qword_1EABE0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0140);
  }

  return result;
}

unint64_t sub_18E2C5F50()
{
  result = qword_1EABE0680;
  if (!qword_1EABE0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0680);
  }

  return result;
}

unint64_t sub_18E2C6000()
{
  result = qword_1EABE0840;
  if (!qword_1EABE0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0840);
  }

  return result;
}

unint64_t sub_18E2C6054()
{
  result = qword_1EABE0500;
  if (!qword_1EABE0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0500);
  }

  return result;
}

unint64_t sub_18E2C60D4()
{
  result = qword_1EABE0740;
  if (!qword_1EABE0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0740);
  }

  return result;
}

unint64_t sub_18E2C6128()
{
  result = qword_1EABE0290;
  if (!qword_1EABE0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0290);
  }

  return result;
}

unint64_t sub_18E2C61DC()
{
  result = qword_1EABE1AB0;
  if (!qword_1EABE1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AB0);
  }

  return result;
}

unint64_t sub_18E2C6234()
{
  result = qword_1EABE1AB8;
  if (!qword_1EABE1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AB8);
  }

  return result;
}

unint64_t sub_18E2C62B4()
{
  result = qword_1ED6A7EA0;
  if (!qword_1ED6A7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7EA0);
  }

  return result;
}

unint64_t sub_18E2C6308()
{
  result = qword_1ED6A7EA8;
  if (!qword_1ED6A7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7EA8);
  }

  return result;
}

unint64_t sub_18E2C63BC(uint64_t a1)
{
  result = sub_18E2C63E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C63E4()
{
  result = qword_1EABE1AC8;
  if (!qword_1EABE1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AC8);
  }

  return result;
}

unint64_t sub_18E2C6464()
{
  result = qword_1EABE1AD0;
  if (!qword_1EABE1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AD0);
  }

  return result;
}

unint64_t sub_18E2C64B8()
{
  result = qword_1EABE1AD8;
  if (!qword_1EABE1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AD8);
  }

  return result;
}

unint64_t sub_18E2C650C(uint64_t a1)
{
  result = sub_18E2C6534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2C6534()
{
  result = qword_1EABE1AE0;
  if (!qword_1EABE1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AE0);
  }

  return result;
}

unint64_t sub_18E2C65B4()
{
  result = qword_1EABE1AE8;
  if (!qword_1EABE1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AE8);
  }

  return result;
}

unint64_t sub_18E2C6608()
{
  result = qword_1EABE1AF0;
  if (!qword_1EABE1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AF0);
  }

  return result;
}

unint64_t sub_18E2C6660()
{
  result = qword_1EABE1AF8;
  if (!qword_1EABE1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1AF8);
  }

  return result;
}

unint64_t sub_18E2C66B8()
{
  result = qword_1EABE1B00;
  if (!qword_1EABE1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B00);
  }

  return result;
}

unint64_t sub_18E2C6710()
{
  result = qword_1EABE1B08;
  if (!qword_1EABE1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B08);
  }

  return result;
}

unint64_t sub_18E2C6790()
{
  result = qword_1EABE1B10;
  if (!qword_1EABE1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B10);
  }

  return result;
}

unint64_t sub_18E2C67E4()
{
  result = qword_1EABE1B18;
  if (!qword_1EABE1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B18);
  }

  return result;
}

unint64_t sub_18E2C6864()
{
  result = qword_1EABE1B20;
  if (!qword_1EABE1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B20);
  }

  return result;
}

unint64_t sub_18E2C68B8()
{
  result = qword_1EABE1B28;
  if (!qword_1EABE1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B28);
  }

  return result;
}

unint64_t sub_18E2C6938()
{
  result = qword_1EABE1B30;
  if (!qword_1EABE1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B30);
  }

  return result;
}

unint64_t sub_18E2C698C()
{
  result = qword_1EABE1B38;
  if (!qword_1EABE1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1B38);
  }

  return result;
}

unint64_t sub_18E2C69E0(uint64_t a1)
{
  result = sub_18E2C6A08();
  *(a1 + 8) = result;
  return result;
}