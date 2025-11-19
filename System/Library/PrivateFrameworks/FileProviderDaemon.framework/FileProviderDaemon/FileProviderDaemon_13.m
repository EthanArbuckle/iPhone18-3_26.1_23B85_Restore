uint64_t sub_1CF1B8DC4()
{
  sub_1CF9E81D8();
  sub_1CF9E6E68();
  return sub_1CF9E8228();
}

void *sub_1CF1B8E24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1CF1B8E3C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_1CF1B8E60(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1CF1B8DC4();
}

uint64_t sub_1CF1B8E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_1CF1B8770();
}

uint64_t sub_1CF1B8E78(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  v4 = *(v2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1CF1B8770();
  return sub_1CF9E8228();
}

uint64_t sub_1CF1B8EC0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = sub_1CF1B9600();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_1CF1B8F0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(a1 + 16);
  result = sub_1CF1B8DAC();
  *a2 = result;
  return result;
}

void (*sub_1CF1B8F3C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = *(a3 + 24);
  v7[4] = sub_1CF1B9010(v7, *a2, *v3, v3[1], *(a3 + 16));
  return sub_1CF1B8FC8;
}

void sub_1CF1B8FC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1CF1B9010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v6 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  sub_1CF9E6EA8();
  return sub_1CF1B90E4;
}

void sub_1CF1B90E4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1CF1B9140()
{
  swift_getWitnessTable();

  return sub_1CF9E67A8();
}

uint64_t sub_1CF1B91BC()
{
  swift_getWitnessTable();

  return sub_1CF9E6798();
}

uint64_t sub_1CF1B9240()
{
  swift_getWitnessTable();

  return sub_1CF9E67B8();
}

void *sub_1CF1B9330@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1CF1B9348(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_1CF1B9378@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1CF1B9388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1CF1B93E4()
{
  swift_getWitnessTable();
  v1 = sub_1CF1B95FC();
  v2 = *v0;

  v3 = v0[1];

  return v1;
}

uint64_t sub_1CF1B944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1CF9E67F8();
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

uint64_t sub_1CF1B9530()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1CF9E67F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1CF9E71A8() + 36);
  result = sub_1CF9E67F8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF1B9600()
{
  v1 = sub_1CF9E65D8();
  sub_1CF9E65E8();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E6BE8();
  return v1;
}

uint64_t sub_1CF1B96FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF1B98B0(uint64_t a1)
{
  v2 = sub_1CF9E53C8();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1CF9E5A58();
  v60 = *(v62 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - v13;
  v59 = a1;
  sub_1CF9E5A18();
  v72 = 0;
  v73 = 256;
  v71 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = &v72;
  *(v15 + 24) = sub_1CF1BA18C;
  *(v15 + 32) = 0;
  *(v15 + 40) = &v71;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF1C09E8;
  *(v16 + 24) = v15;
  v69 = sub_1CF005DC8;
  v70 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1CF005DF8;
  v68 = &block_descriptor_21;
  v17 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v18 = fpfs_openat();

  _Block_release(v17);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v71;
  if (v71)
  {
LABEL_3:
    swift_willThrow();

    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = v60;
    v23 = v62;
    (*(v60 + 16))(v8, v59, v62);
    v24 = v20;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315394;
      v29 = sub_1CF9E5928();
      v30 = [v29 fp_shortDescription];
      v59 = v9;
      v31 = v30;

      v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v58 = v14;
      v34 = v33;

      (*(v22 + 8))(v8, v62);
      v35 = sub_1CEFD0DF0(v32, v34, &aBlock);

      *(v27 + 4) = v35;
      *(v27 + 12) = 2112;
      swift_getErrorValue();
      v36 = Error.prettyDescription.getter(v64);
      *(v27 + 14) = v36;
      v37 = v57;
      *v57 = v36;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "Failed to open %s: %@", v27, 0x16u);
      sub_1CF19CAB0(v37);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);

      (*(v61 + 8))(v58, v59);
    }

    else
    {

      (*(v22 + 8))(v8, v23);
      (*(v61 + 8))(v14, v9);
    }

    v38 = 0;
    v39 = 1;
    goto LABEL_10;
  }

  if ((v18 & 0x80000000) == 0)
  {
    if ((v73 & 0x100) == 0)
    {
      v38 = v72;
      v40 = v73;

      v39 = v40 & 1;
LABEL_10:
      LOBYTE(aBlock) = v39;
      return v38 | (v39 << 32);
    }

    goto LABEL_19;
  }

  if (MEMORY[0x1D38683F0](v19))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v20 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v42 = sub_1CF9E6138();
      if ((v42 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v42;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF1C0A8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v43 = v58;
      sub_1CF9E57D8();
      v20 = sub_1CF9E53A8();
      (*(v57 + 8))(v5, v43);
    }

    goto LABEL_3;
  }

LABEL_20:
  v44 = v9;
  aBlock = 0;
  v66 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v66 = 0x80000001CFA2DF30;
  v63 = v18;
  v45 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v45);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v46 = aBlock;
  v47 = v66;
  v48 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v49 = sub_1CF9E6108();
  v50 = sub_1CF9E72B8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock = v52;
    *v51 = 136315650;
    v53 = sub_1CF9E7988();
    v55 = sub_1CEFD0DF0(v53, v54, &aBlock);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2048;
    *(v51 + 14) = 315;
    *(v51 + 22) = 2080;
    *(v51 + 24) = sub_1CEFD0DF0(v46, v47, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v49, v50, "[ASSERT] ‼️  %s:%lu: %s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v51, -1, -1);
  }

  (*(v61 + 8))(v56, v44);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1BA18C@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = fpfs_track_document();
  *a1 = 0;
  *(a1 + 4) = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1CF1BA200(_BYTE *a1)
{
  v2 = v1;
  aBlock[14] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v169 = *(v4 - 8);
  v5 = v169[8];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v158 = &v154[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v160 = &v154[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v164 = &v154[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v154[-v12];
  v167 = sub_1CF9E6118();
  v166 = *(v167 - 8);
  v13 = *(v166 + 64);
  v14 = MEMORY[0x1EEE9AC00](v167);
  v159 = &v154[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v162 = &v154[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v154[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v154[-v20];
  v1[2] = 1;
  v1[3] = [objc_allocWithZone(MEMORY[0x1E69E5930]) init];
  v1[4] = 0x6D5F70756B636162;
  v1[5] = 0xEF74736566696E61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC330;
  v22 = *MEMORY[0x1E695DA88];
  *(inited + 32) = *MEMORY[0x1E695DA88];
  v23 = *MEMORY[0x1E695E2F0];
  if (!*MEMORY[0x1E695E2F0])
  {
    goto LABEL_35;
  }

  v24 = OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_resourceValuesToFetch;
  v25 = *MEMORY[0x1E695DAB8];
  *(inited + 40) = v23;
  *(inited + 48) = v25;
  v26 = inited;
  v27 = v22;
  v28 = v23;
  v29 = v25;
  *(v26 + 56) = sub_1CF9E6888();
  v30 = sub_1CF8E4440(v26);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  *(v1 + v24) = v30;
  v31 = v169[2];
  v31((v1 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_url), a1, v4);
  v32 = v1[3];
  v33 = sub_1CF9E5928();
  aBlock[0] = 0;
  LODWORD(v32) = [v32 openAtURL:v33 withFlags:3145734 error:aBlock];

  v34 = a1;
  v35 = v4;
  if (!v32)
  {
    v44 = v31;
    v45 = aBlock[0];
    v46 = sub_1CF9E57F8();

    swift_willThrow();
    v47 = fpfs_current_or_default_log();
    v48 = v165;
    sub_1CF9E6128();
    v49 = v164;
    v44(v164, v34, v35);
    v50 = v48;
    v51 = v46;
    v52 = sub_1CF9E6108();
    v53 = v35;
    v54 = sub_1CF9E72A8();

    if (os_log_type_enabled(v52, v54))
    {
      v55 = swift_slowAlloc();
      v159 = v2;
      v56 = v55;
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      aBlock[0] = v163;
      *v56 = 136315394;
      LODWORD(v161) = v54;
      v35 = v53;
      v57 = sub_1CF9E5928();
      v58 = [v57 fp_shortDescription];
      v168 = v46;
      v59 = v34;
      v60 = v58;

      v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v63 = v62;

      v64 = v49;
      v65 = v169[1];
      v65(v64, v35);
      v66 = sub_1CEFD0DF0(v61, v63, aBlock);

      *(v56 + 4) = v66;
      v34 = v59;
      *(v56 + 12) = 2112;
      swift_getErrorValue();
      v67 = Error.prettyDescription.getter(v173);
      *(v56 + 14) = v67;
      v68 = v162;
      *v162 = v67;
      _os_log_impl(&dword_1CEFC7000, v52, v161, "Failed to open database %s: %@", v56, 0x16u);
      sub_1CF19CAB0(v68);
      MEMORY[0x1D386CDC0](v68, -1, -1);
      v69 = v163;
      __swift_destroy_boxed_opaque_existential_1(v163);
      MEMORY[0x1D386CDC0](v69, -1, -1);
      v70 = v56;
      v2 = v159;
      MEMORY[0x1D386CDC0](v70, -1, -1);

      (*(v166 + 8))(v165, v167);
      swift_willThrow();
    }

    else
    {

      v75 = v49;
      v65 = v169[1];
      v65(v75, v53);
      (*(v166 + 8))(v50, v167);
      swift_willThrow();
      v35 = v53;
    }

    goto LABEL_28;
  }

  v36 = *(v2 + 3);
  v37 = aBlock[0];
  v38 = [v36 setupPragmas];
  v39 = *(v2 + 3);
  if (v38)
  {
    v40 = v31;
    v41 = [v39 userVersion];
    v42 = [v41 integerValue];

    if (v42 > 0)
    {
      v43 = 0;
LABEL_14:
      [*(v2 + 3) useBatchingWithDelay:1000 changeCount:0.5];
      (v169[1])(v34, v35);
      sub_1CEFF7124(v43);
LABEL_30:
      v133 = *MEMORY[0x1E69E9840];
      return v2;
    }

    v163 = v35;
    v76 = *(v2 + 3);
    v77 = swift_allocObject();
    v77[2] = sub_1CF1C0B20;
    v77[3] = v2;
    aBlock[4] = sub_1CEFE7610;
    aBlock[5] = v77;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFE7548;
    aBlock[3] = &block_descriptor_112;
    v78 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v79 = [v76 executeSwift:v78 error:aBlock];
    _Block_release(v78);
    v80 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v79)
      {
        [*(v2 + 3) setUserVersion_];
        v43 = sub_1CF1C0B20;
        v35 = v163;
        goto LABEL_14;
      }

      v134 = sub_1CF9E57F8();

      swift_willThrow();
      v135 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v136 = v158;
      v40(v158, v34, v163);
      v137 = v134;
      v138 = sub_1CF9E6108();
      v139 = sub_1CF9E72A8();
      v168 = v134;

      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        aBlock[0] = v164;
        *v140 = 136315394;
        v141 = sub_1CF9E5928();
        v165 = v34;
        v142 = v141;
        v143 = [v141 fp_shortDescription];

        v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v146 = v145;

        v161 = v169[1];
        v147 = v136;
        v148 = v163;
        v161(v147, v163);
        v149 = sub_1CEFD0DF0(v144, v146, aBlock);

        *(v140 + 4) = v149;
        v34 = v165;
        *(v140 + 12) = 2112;
        swift_getErrorValue();
        v150 = Error.prettyDescription.getter(v170);
        *(v140 + 14) = v150;
        v151 = v162;
        *v162 = v150;
        _os_log_impl(&dword_1CEFC7000, v138, v139, "Failed to create table %s: %@", v140, 0x16u);
        sub_1CF19CAB0(v151);
        MEMORY[0x1D386CDC0](v151, -1, -1);
        v152 = v164;
        __swift_destroy_boxed_opaque_existential_1(v164);
        MEMORY[0x1D386CDC0](v152, -1, -1);
        MEMORY[0x1D386CDC0](v140, -1, -1);

        (*(v166 + 8))(v159, v167);
        swift_willThrow();
        v132 = sub_1CF1C0B20;
        v35 = v148;
        v65 = v161;
      }

      else
      {

        v153 = v169[1];
        v35 = v163;
        v153(v136, v163);
        (*(v166 + 8))(v159, v167);
        swift_willThrow();
        v132 = sub_1CF1C0B20;
        v65 = v153;
      }

LABEL_29:

      v65(v34, v35);
      sub_1CEFF7124(v132);
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  v159 = v2;
  v71 = [v39 lastError];
  if (v71)
  {
    swift_getErrorValue();
    v72 = v171;
    v73 = v71;
    v74 = Error.prettyDescription.getter(v72);
  }

  else
  {
    sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
    v74 = sub_1CF9E7598();
  }

  v82 = fpfs_current_or_default_log();
  v83 = v163;
  sub_1CF9E6128();
  v84 = v161;
  v165 = v34;
  v31(v161, v34, v35);
  v85 = v74;
  v86 = sub_1CF9E6108();
  v87 = sub_1CF9E72A8();

  v88 = os_log_type_enabled(v86, v87);
  v168 = v71;
  v157 = v31;
  v164 = v85;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    aBlock[0] = v158;
    *v89 = 136315394;
    v155 = v87;
    v90 = sub_1CF9E5928();
    v91 = v84;
    v92 = [v90 fp_shortDescription];

    v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v95 = v94;

    v65 = v169[1];
    v65(v91, v35);
    v96 = sub_1CEFD0DF0(v93, v95, aBlock);

    *(v89 + 4) = v96;
    *(v89 + 12) = 2112;
    *(v89 + 14) = v85;
    v97 = v156;
    *v156 = v85;
    v98 = v85;
    _os_log_impl(&dword_1CEFC7000, v86, v155, "Failed to set up pragmas %s: %@", v89, 0x16u);
    sub_1CF19CAB0(v97);
    MEMORY[0x1D386CDC0](v97, -1, -1);
    v99 = v158;
    __swift_destroy_boxed_opaque_existential_1(v158);
    MEMORY[0x1D386CDC0](v99, -1, -1);
    v100 = v89;
    v71 = v168;
    MEMORY[0x1D386CDC0](v100, -1, -1);

    v101 = *(v166 + 8);
    (v101)(v163, v167);
  }

  else
  {

    v102 = v84;
    v65 = v169[1];
    v65(v102, v35);
    v101 = *(v166 + 8);
    (v101)(v83, v167);
  }

  v2 = v159;
  v103 = *(v159 + 3);
  aBlock[0] = 0;
  v104 = [v103 close_];
  v105 = v162;
  if (v104)
  {
    v106 = aBlock[0];
    v34 = v165;
  }

  else
  {
    v158 = v101;
    v161 = v65;
    v107 = aBlock[0];
    v108 = sub_1CF9E57F8();

    swift_willThrow();
    v109 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v110 = v160;
    v34 = v165;
    (v157)(v160, v165, v35);
    v111 = v108;
    v112 = v105;
    v113 = sub_1CF9E6108();
    v114 = sub_1CF9E72A8();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v163 = v35;
      v116 = v115;
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock[0] = v157;
      *v116 = 136315394;
      v117 = sub_1CF9E5928();
      v118 = [v117 fp_shortDescription];

      v119 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v121 = v120;

      v122 = v110;
      v65 = v161;
      v161(v122, v163);
      v123 = sub_1CEFD0DF0(v119, v121, aBlock);
      v2 = v159;

      *(v116 + 4) = v123;
      v34 = v165;
      *(v116 + 12) = 2112;
      swift_getErrorValue();
      v124 = Error.prettyDescription.getter(v172);
      *(v116 + 14) = v124;
      v125 = v156;
      *v156 = v124;
      _os_log_impl(&dword_1CEFC7000, v113, v114, "Failed to close database %s: %@", v116, 0x16u);
      sub_1CF19CAB0(v125);
      MEMORY[0x1D386CDC0](v125, -1, -1);
      v126 = v157;
      __swift_destroy_boxed_opaque_existential_1(v157);
      MEMORY[0x1D386CDC0](v126, -1, -1);
      v127 = v116;
      v35 = v163;
      MEMORY[0x1D386CDC0](v127, -1, -1);

      v128 = v162;
    }

    else
    {

      v129 = v110;
      v65 = v161;
      v161(v129, v35);
      v128 = v112;
    }

    (v158)(v128, v167);
    v71 = v168;
  }

  v130 = v164;
  if (v71 || (result = FPNotPermittedWriteError()) != 0)
  {
    swift_willThrow();

LABEL_28:
    v132 = 0;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1BB478(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD0000000000000A2, 0x80000001CFA2E450);
  return 0;
}

uint64_t sub_1CF1BB514()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = *(v2 + 16);
  v24 = OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_url;
  v8(&v23 - v6, v0 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_url, v1);
  v9 = *(v0 + 24);
  v10 = [v9 serialQueue];
  if (!v10)
  {
    v17 = *(v2 + 8);
    v17(v7, v1);

    v20 = 0;
    goto LABEL_5;
  }

  v11 = v10;
  v8(v5, v7, v1);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  (*(v2 + 32))(v13 + v12, v5, v1);
  v14 = swift_allocObject();
  v23 = sub_1CF1C0A1C;
  *(v14 + 16) = sub_1CF1C0A1C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_40_0;
  v15 = _Block_copy(aBlock);
  v16 = v9;

  dispatch_sync(v11, v15);
  _Block_release(v15);

  v17 = *(v2 + 8);
  v17(v7, v1);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v20 = v23;
LABEL_5:

    v21 = *(v0 + 40);

    v17((v0 + v24), v1);
    v22 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_resourceValuesToFetch);

    sub_1CEFF7124(v20);
    return v0;
  }

  __break(1u);
  return result;
}

id sub_1CF1BB840(void *a1, uint64_t a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43[0] = 0;
  v14 = [a1 close_];
  v15 = v43[0];
  if (v14)
  {
    v16 = *MEMORY[0x1E69E9840];

    return v15;
  }

  else
  {
    v41 = v43[0];
    v18 = v43[0];
    v19 = sub_1CF9E57F8();

    swift_willThrow();
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v5 + 16))(v8, a2, v4);
    v21 = v19;
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = v10;
      v25 = v24;
      v38 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43[0] = v40;
      *v25 = 136315394;
      v37 = v23;
      v26 = sub_1CF9E5928();
      v27 = [v26 fp_shortDescription];

      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v9;
      v30 = v29;

      (*(v5 + 8))(v8, v4);
      v31 = sub_1CEFD0DF0(v28, v30, v43);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      swift_getErrorValue();
      v32 = Error.prettyDescription.getter(v42);
      *(v25 + 14) = v32;
      v33 = v38;
      *v38 = v32;
      _os_log_impl(&dword_1CEFC7000, v22, v37, "Can't close database %s: %@", v25, 0x16u);
      sub_1CF19CAB0(v33);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      v34 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);

      result = v41[1](v13, v39);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      result = (*(v10 + 8))(v13, v9);
    }

    v35 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1CF1BBC64()
{
  sub_1CF1BB514();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SQLBackupManifest()
{
  result = qword_1EC4BE0A8;
  if (!qword_1EC4BE0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF1BBD10()
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF1BBDD4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 24);
  v33 = v3;
  v34 = a1;
  result = sub_1CF1E8034(1, sub_1CF1C09F4, v32);
  if (v2)
  {
    v12 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v13 = v2;
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E72A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v31 = v5;
      v17 = v16;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v17 = 136315394;
      v18 = sub_1CF9E5928();
      v19 = [v18 fp_shortDescription];

      v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v6;
      v23 = v22;

      v24 = sub_1CEFD0DF0(v20, v23, &v36);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2112;
      swift_getErrorValue();
      v25 = Error.prettyDescription.getter(v35);
      *(v17 + 14) = v25;
      v26 = v29;
      *v29 = v25;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "Can't insert into the database %s: %@", v17, 0x16u);
      sub_1CF19CAB0(v26);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      v27 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);

      (*(v21 + 8))(v9, v31);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF1BC0B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E6118();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a3 + 32);
  v13 = swift_allocObject();
  v13[2] = sub_1CF1C0A10;
  v13[3] = v11;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_31;
  v14 = _Block_copy(aBlock);

  sub_1CF1C098C(a3, v39);

  aBlock[0] = 0;
  v15 = [a1 executeSwift:v14 error:aBlock];
  _Block_release(v14);
  v16 = aBlock[0];
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  if (v15)
  {

    *v37 = 1;
  }

  else
  {
    v18 = sub_1CF9E57F8();

    swift_willThrow();
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v20 = v18;
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v23 = 136315394;
      v24 = sub_1CF9E5928();
      v25 = [v24 fp_shortDescription];

      v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v27;

      v29 = sub_1CEFD0DF0(v26, v28, aBlock);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2112;
      swift_getErrorValue();
      v30 = Error.prettyDescription.getter(v38);
      *(v23 + 14) = v30;
      v31 = v34;
      *v34 = v30;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "Failed to insert into %s: %@", v23, 0x16u);
      sub_1CF19CAB0(v31);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      v32 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    (*(v35 + 8))(v10, v36);
    swift_willThrow();
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1BC4F8(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD00000000000006DLL, 0x80000001CFA2E110);
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1CF9E6888();
  v9 = [a1 bindStringParameter_];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v17 = sub_1CF1DF1A8(a3[3], *(a3 + 32));
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v18 = [a1 bindUnsignedIntegerParameter_];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);

  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA2E180);
  return 0;
}

NSObject *sub_1CF1BC728()
{
  result = [*(v0 + 24) serialQueue];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1CF1C0ADC;
    *(v3 + 24) = v0;
    v5[4] = sub_1CF1C0B54;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1CEFFD02C;
    v5[3] = &block_descriptor_67;
    v4 = _Block_copy(v5);

    dispatch_sync(v2, v4);

    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF1BC87C(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  v9 = *(a1 + 24);
  v10 = swift_allocObject();
  v10[2] = sub_1CF1C0AE4;
  v10[3] = a1;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_74;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v12 = [v9 executeSwift:v11 error:aBlock];
  _Block_release(v11);
  v13 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v12)
  {
    v56 = v3;
    v15 = sub_1CF9E57F8();

    swift_willThrow();
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v17 = v15;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v57 = v2;
      v21 = v20;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v21 = 136315394;
      v22 = sub_1CF9E5928();
      v23 = [v22 fp_shortDescription];

      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;

      v27 = sub_1CEFD0DF0(v24, v26, aBlock);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2112;
      swift_getErrorValue();
      v28 = Error.prettyDescription.getter(v59);
      *(v21 + 14) = v28;
      v29 = v54;
      *v54 = v28;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Could not create a unique index %s: %@", v21, 0x16u);
      sub_1CF19CAB0(v29);
      MEMORY[0x1D386CDC0](v29, -1, -1);
      v30 = v55;
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      v31 = v21;
      v2 = v57;
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    else
    {
    }

    v3 = v56;
    (v56[1])(v8, v2);
  }

  [v9 makeNextFlushFullSync];
  [v9 flush];
  aBlock[0] = 0;
  if ([v9 close_])
  {
    v32 = aBlock[0];
  }

  else
  {
    v33 = aBlock[0];
    v34 = sub_1CF9E57F8();

    swift_willThrow();
    v35 = fpfs_current_or_default_log();
    v36 = v58;
    sub_1CF9E6128();

    v37 = v34;
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E72A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v40 = 136315394;
      v42 = sub_1CF9E5928();
      v43 = [v42 fp_shortDescription];
      v57 = v2;
      v44 = v43;

      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v46 = v3;
      v48 = v47;

      v49 = sub_1CEFD0DF0(v45, v48, aBlock);

      *(v40 + 4) = v49;
      *(v40 + 12) = 2112;
      swift_getErrorValue();
      v50 = Error.prettyDescription.getter(v60);
      *(v40 + 14) = v50;
      *v41 = v50;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "Can't close database %s: %@", v40, 0x16u);
      sub_1CF19CAB0(v41);
      MEMORY[0x1D386CDC0](v41, -1, -1);
      v51 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1D386CDC0](v51, -1, -1);
      MEMORY[0x1D386CDC0](v40, -1, -1);

      (v46[1])(v58, v57);
    }

    else
    {

      (v3[1])(v36, v2);
    }
  }

  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1BCEF0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA2E2C0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA2E300);
  return 0;
}

uint64_t sub_1CF1BCF8C(void *a1, uint64_t *a2)
{
  v221 = a1;
  v251[4] = *MEMORY[0x1E69E9840];
  v231 = sub_1CF9E5248();
  v230 = *(v231 - 8);
  v3 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v229 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1CF9E53C8();
  v234 = *(v235 - 8);
  v5 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v233 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1CF9E6118();
  v241 = *(v240 - 8);
  v7 = *(v241 + 64);
  v8 = MEMORY[0x1EEE9AC00](v240);
  v225 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v224 = &v220 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v227 = &v220 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v232 = &v220 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v238 = &v220 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v237 = &v220 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v220 = &v220 - v20;
  v239 = sub_1CF9E5648();
  v236 = *(v239 - 8);
  v21 = *(v236 + 64);
  v22 = MEMORY[0x1EEE9AC00](v239);
  v24 = &v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v220 - v25;
  v244 = sub_1CF9E5A58();
  v243 = *(v244 - 8);
  v27 = *(v243 + 64);
  v28 = MEMORY[0x1EEE9AC00](v244);
  v223 = &v220 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v222 = &v220 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v226 = &v220 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v228 = &v220 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v220 - v36;
  v38 = sub_1CF9E6888();
  v39 = a2;
  v41 = *a2;
  v40 = a2[1];
  v42 = sub_1CF9E6888();
  v43 = [v38 stringByAppendingPathComponent_];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E58C8();
  v44 = *(v246 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_resourceValuesToFetch);
  v245 = v37;
  v45 = v242;
  sub_1CF9E58A8();
  if (v45)
  {

    v46 = v45;
    LODWORD(aBlock[0]) = sub_1CF9E5328();
    sub_1CF196978();
    v47 = sub_1CF9E5658();

    if (v47)
    {

      v48 = fpfs_current_or_default_log();
      v49 = v232;
      sub_1CF9E6128();
      v50 = v243;
      v51 = v228;
      v52 = v245;
      v53 = v244;
      (*(v243 + 16))(v228, v245, v244);
      v54 = sub_1CF9E6108();
      v55 = sub_1CF9E72A8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        aBlock[0] = v246;
        *v56 = 136315138;
        v57 = sub_1CF9E5928();
        v58 = [v57 fp_shortDescription];

        v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v60 = v50;
        v62 = v61;

        v63 = *(v60 + 8);
        v64 = v51;
        v65 = v244;
        v63(v64, v244);
        v66 = sub_1CEFD0DF0(v59, v62, aBlock);

        *(v56 + 4) = v66;
        _os_log_impl(&dword_1CEFC7000, v54, v55, "Failed to populate new columns. ENOENT %s does not exist.", v56, 0xCu);
        v67 = v246;
        __swift_destroy_boxed_opaque_existential_1(v246);
        MEMORY[0x1D386CDC0](v67, -1, -1);
        MEMORY[0x1D386CDC0](v56, -1, -1);

        (*(v241 + 8))(v49, v240);
        result = (v63)(v245, v65);
LABEL_27:
        v143 = *MEMORY[0x1E69E9840];
        return result;
      }

      v104 = *(v50 + 8);
      v104(v51, v53);
      (*(v241 + 8))(v49, v240);
    }

    else
    {
      v82 = v45;
      v83 = v229;
      sub_1CF9E50F8();
      sub_1CF1C0A8C(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
      v84 = v231;
      v85 = sub_1CF9E5658();

      v86 = *(v230 + 8);
      v86(v83, v84);
      if ((v85 & 1) == 0)
      {
        v105 = v45;
        sub_1CF9E5118();
        v106 = sub_1CF9E5658();

        v86(v83, v84);
        if (v106)
        {

          v107 = fpfs_current_or_default_log();
          v108 = v224;
          sub_1CF9E6128();
          v109 = v243;
          v110 = v222;
          v111 = v245;
          v112 = v244;
          (*(v243 + 16))(v222, v245, v244);
          v113 = sub_1CF9E6108();
          v114 = sub_1CF9E72A8();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            aBlock[0] = v116;
            *v115 = 136315138;
            v117 = sub_1CF9E5928();
            v118 = v110;
            v119 = [v117 fp_shortDescription];

            v120 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v122 = v121;

            v123 = *(v109 + 8);
            v124 = v118;
            v125 = v244;
            v123(v124, v244);
            v126 = sub_1CEFD0DF0(v120, v122, aBlock);

            *(v115 + 4) = v126;
            _os_log_impl(&dword_1CEFC7000, v113, v114, "Failed to populate new columns. fileReadNoSuchFile %s does not exist.", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v116);
            MEMORY[0x1D386CDC0](v116, -1, -1);
            MEMORY[0x1D386CDC0](v115, -1, -1);

            (*(v241 + 8))(v224, v240);
            result = (v123)(v245, v125);
          }

          else
          {

            v168 = *(v109 + 8);
            v168(v110, v112);
            (*(v241 + 8))(v108, v240);
            result = (v168)(v111, v112);
          }
        }

        else
        {
          v144 = fpfs_current_or_default_log();
          v145 = v225;
          sub_1CF9E6128();
          v146 = v243;
          v147 = v223;
          v148 = v245;
          v149 = v244;
          (*(v243 + 16))(v223, v245, v244);
          v150 = v45;
          v151 = sub_1CF9E6108();
          v152 = sub_1CF9E72A8();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v242 = swift_slowAlloc();
            v246 = swift_slowAlloc();
            aBlock[0] = v246;
            *v153 = 136315394;
            v154 = sub_1CF9E5928();
            v155 = v147;
            v156 = [v154 fp_shortDescription];

            v157 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v158 = v146;
            v160 = v159;

            v161 = *(v158 + 8);
            v162 = v155;
            v163 = v244;
            v161(v162, v244);
            v164 = sub_1CEFD0DF0(v157, v160, aBlock);

            *(v153 + 4) = v164;
            *(v153 + 12) = 2112;
            swift_getErrorValue();
            v165 = Error.prettyDescription.getter(v247);
            *(v153 + 14) = v165;
            v166 = v242;
            *v242 = v165;
            _os_log_impl(&dword_1CEFC7000, v151, v152, "Failed to populate new columns for %s: %@", v153, 0x16u);
            sub_1CF19CAB0(v166);
            MEMORY[0x1D386CDC0](v166, -1, -1);
            v167 = v246;
            __swift_destroy_boxed_opaque_existential_1(v246);
            MEMORY[0x1D386CDC0](v167, -1, -1);
            MEMORY[0x1D386CDC0](v153, -1, -1);

            (*(v241 + 8))(v225, v240);
            swift_willThrow();
            result = (v161)(v245, v163);
          }

          else
          {

            v169 = *(v146 + 8);
            v169(v147, v149);
            (*(v241 + 8))(v145, v240);
            swift_willThrow();
            result = (v169)(v148, v149);
          }
        }

        goto LABEL_27;
      }

      v87 = fpfs_current_or_default_log();
      v88 = v227;
      sub_1CF9E6128();
      v89 = v243;
      v90 = v226;
      v52 = v245;
      v53 = v244;
      (*(v243 + 16))(v226, v245, v244);
      v91 = sub_1CF9E6108();
      v92 = sub_1CF9E72A8();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        aBlock[0] = v246;
        *v93 = 136315138;
        v94 = sub_1CF9E5928();
        v95 = [v94 fp_shortDescription];

        v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v98 = v97;

        v99 = *(v89 + 8);
        v100 = v90;
        v101 = v244;
        v99(v100, v244);
        v102 = sub_1CEFD0DF0(v96, v98, aBlock);

        *(v93 + 4) = v102;
        _os_log_impl(&dword_1CEFC7000, v91, v92, "Failed to populate new columns. fileNoSuchFile %s does not exist.", v93, 0xCu);
        v103 = v246;
        __swift_destroy_boxed_opaque_existential_1(v246);
        MEMORY[0x1D386CDC0](v103, -1, -1);
        MEMORY[0x1D386CDC0](v93, -1, -1);

        (*(v241 + 8))(v88, v240);
        result = (v99)(v245, v101);
        goto LABEL_27;
      }

      v104 = *(v89 + 8);
      v104(v90, v53);
      (*(v241 + 8))(v88, v240);
    }

    result = (v104)(v52, v53);
    goto LABEL_27;
  }

  v230 = 0;
  v231 = v40;
  v69 = v238;
  v70 = v237;
  v232 = v39;
  v71 = v236;
  (*(v236 + 32))(v26, v24, v239);
  result = sub_1CF9E5568();
  v72 = *MEMORY[0x1E695E2F0];
  if (*MEMORY[0x1E695E2F0])
  {
    v73 = result;

    v74 = v243;
    if (*(v73 + 16))
    {
      v75 = v72;
      v76 = sub_1CEFE863C(v75);
      if (v77)
      {
        v242 = v26;
        sub_1CEFD1104(*(v73 + 56) + 32 * v76, v251);

        sub_1CEFD1104(v251, aBlock);
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v78 = v248;
          v229 = [v248 integerValue];

          v79 = v232;
          v80 = v71;
          if (v232[32])
          {
            v228 = 0;
            LODWORD(v81) = 1;
          }

          else
          {
            v228 = sub_1CF1B98B0(v245);
            v81 = HIDWORD(v228) & 1;
          }

          v170 = sub_1CF9E6888();
          v171 = sub_1CF9E5568();
          v172 = *(v171 + 16);
          v238 = v170;
          if (v172 && (v173 = sub_1CEFE863C(v170), (v174 & 1) != 0))
          {
            sub_1CEFD1104(*(v171 + 56) + 32 * v173, &v250);

            sub_1CEFD1104(&v250, aBlock);
            if (swift_dynamicCast())
            {
              v175 = v248;
              LODWORD(v237) = [v248 unsignedIntValue];

              v176 = fpfs_current_or_default_log();
              v177 = v220;
              sub_1CF9E6128();
              v178 = v231;

              v179 = sub_1CF9E6108();
              v180 = sub_1CF9E7298();
              sub_1CF1C090C(v79);
              if (os_log_type_enabled(v179, v180))
              {
                v181 = swift_slowAlloc();
                v235 = v41;
                v182 = v181;
                v183 = swift_slowAlloc();
                aBlock[0] = v183;
                *v182 = 134218754;
                v184 = v229;
                *(v182 + 4) = v229;
                *(v182 + 12) = 1024;
                v185 = v228;
                if (v81)
                {
                  v186 = 0;
                }

                else
                {
                  v186 = v228;
                }

                *(v182 + 14) = v186;
                *(v182 + 18) = 1024;
                *(v182 + 20) = v237;
                *(v182 + 24) = 2082;
                *(v182 + 26) = sub_1CEFD0DF0(v235, v178, aBlock);
                _os_log_impl(&dword_1CEFC7000, v179, v180, "Updating %ld %u %u into database for %{public}s", v182, 0x22u);
                __swift_destroy_boxed_opaque_existential_1(v183);
                v187 = v183;
                v79 = v232;
                MEMORY[0x1D386CDC0](v187, -1, -1);
                MEMORY[0x1D386CDC0](v182, -1, -1);

                v188 = v177;
                v189 = v184;
                (*(v241 + 8))(v188, v240);
                v190 = v221;
              }

              else
              {

                (*(v241 + 8))(v177, v240);
                v190 = v221;
                v185 = v228;
                v189 = v229;
              }

              v210 = swift_allocObject();
              *(v210 + 16) = v246;
              *(v210 + 24) = v189;
              *(v210 + 32) = v185;
              *(v210 + 36) = v81;
              *(v210 + 40) = v237;
              v211 = *(v79 + 16);
              *(v210 + 48) = *v79;
              *(v210 + 64) = v211;
              *(v210 + 80) = *(v79 + 32);
              v212 = swift_allocObject();
              v212[2] = sub_1CF1C0960;
              v212[3] = v210;
              aBlock[4] = sub_1CEFE75B8;
              aBlock[5] = v212;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1CEFE7548;
              aBlock[3] = &block_descriptor_3;
              v213 = _Block_copy(aBlock);
              sub_1CF1C098C(v79, &v248);

              aBlock[0] = 0;
              v214 = [v190 executeSwift:v213 error:aBlock];
              _Block_release(v213);
              v215 = aBlock[0];
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
              }

              v217 = v243;
              v218 = v239;
              v219 = v238;
              if (v214)
              {
              }

              else
              {
                sub_1CF9E57F8();

                swift_willThrow();
              }

              __swift_destroy_boxed_opaque_existential_1(&v250);
              __swift_destroy_boxed_opaque_existential_1(v251);
              (*(v236 + 8))(v242, v218);
              (*(v217 + 8))(v245, v244);

              goto LABEL_27;
            }

            v191 = v80;
            __swift_destroy_boxed_opaque_existential_1(&v250);
          }

          else
          {

            v191 = v80;
          }

          v192 = fpfs_current_or_default_log();
          v193 = v70;
          sub_1CF9E6128();

          v194 = sub_1CF9E6108();
          v195 = sub_1CF9E72A8();

          v196 = os_log_type_enabled(v194, v195);
          v74 = v243;
          if (v196)
          {
            v197 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            aBlock[0] = v198;
            *v197 = 136315138;
            v199 = sub_1CF9E5928();
            v200 = [v199 fp_shortDescription];

            v201 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v203 = v202;

            v204 = v191;
            v205 = sub_1CEFD0DF0(v201, v203, aBlock);

            *(v197 + 4) = v205;
            _os_log_impl(&dword_1CEFC7000, v194, v195, "Failed to get the gen count for %s", v197, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v198);
            MEMORY[0x1D386CDC0](v198, -1, -1);
            MEMORY[0x1D386CDC0](v197, -1, -1);

            (*(v241 + 8))(v237, v240);
            v206 = v242;
            v207 = v235;
            v208 = v234;
          }

          else
          {

            (*(v241 + 8))(v193, v240);
            v206 = v242;
            v207 = v235;
            v208 = v234;
            v204 = v191;
          }

          LODWORD(aBlock[0]) = 2;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF1C0A8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v209 = v233;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v208 + 8))(v209, v207);
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_1(v251);
          (*(v204 + 8))(v206, v239);
          goto LABEL_24;
        }

        __swift_destroy_boxed_opaque_existential_1(v251);
        v26 = v242;
LABEL_20:
        v127 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v128 = sub_1CF9E6108();
        v129 = sub_1CF9E72A8();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v242 = v26;
          v131 = v130;
          v132 = swift_slowAlloc();
          aBlock[0] = v132;
          *v131 = 136315138;
          v133 = sub_1CF9E5928();
          v134 = [v133 fp_shortDescription];

          v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v137 = v136;

          v138 = sub_1CEFD0DF0(v135, v137, aBlock);

          *(v131 + 4) = v138;
          _os_log_impl(&dword_1CEFC7000, v128, v129, "Failed to get canonical path for %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v132);
          MEMORY[0x1D386CDC0](v132, -1, -1);
          v139 = v131;
          v26 = v242;
          MEMORY[0x1D386CDC0](v139, -1, -1);

          (*(v241 + 8))(v238, v240);
        }

        else
        {

          (*(v241 + 8))(v69, v240);
        }

        v140 = v234;
        v141 = v233;
        LODWORD(aBlock[0]) = 2;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF1C0A8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v142 = v235;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v140 + 8))(v141, v142);
        swift_willThrow();
        (*(v71 + 8))(v26, v239);
LABEL_24:
        result = (*(v74 + 8))(v245, v244);
        goto LABEL_27;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1BEAD0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA2E090);
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA2E0B0);
  v16 = sub_1CF074C58(a4 | ((HIDWORD(a4) & 1) << 32));
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA2E0D0);
  v17 = [a1 bindUnsignedIntegerParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA2E0F0);
  v21 = *a6;
  v22 = a6[1];
  v23 = sub_1CF9E6888();
  v24 = [a1 bindStringParameter_];

  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);

  return 0;
}

void sub_1CF1BED00(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  v7[2] = sub_1CF1C0B18;
  v7[3] = a2;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_105;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v25 = a1;
  v9 = [a1 fetchSwift:v8 error:aBlock];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    v23 = a3;
    if ([v9 next])
    {
      v12 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v24 = v9;
      while (1)
      {
        v13 = v9;
        v14 = [v13 stringAtIndex_];
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;

        v18 = [v13 v12[469]];
        v19 = [v13 isNullAtIndex_];
        v20 = (v19 & 1) != 0 ? 0 : [v13 v12[469]];
        v21 = [v13 unsignedIntAtIndex_];

        v27[0] = v15;
        v27[1] = v17;
        v27[2] = v18;
        v27[3] = v20;
        v28 = v19;
        v29 = v21;
        sub_1CF1BCF8C(v25, v27);
        if (v3)
        {
          break;
        }

        v9 = v24;
        v12 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        if (([v13 next] & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      *v23 = 1;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1BF004(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  strcpy(v4, "SELECT *\nFROM ");
  HIBYTE(v4[1]) = -18;
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA2E430);
  return v4[0];
}

uint64_t sub_1CF1BF09C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v42 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6118();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF1C0B08;
  *(v11 + 24) = a2;
  v53 = sub_1CEFE7610;
  v54 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1CEFE7548;
  v52 = &block_descriptor_91;
  v12 = _Block_copy(&aBlock);
  v46 = a2;

  aBlock = 0;
  v13 = [a1 executeSwift:v12 error:&aBlock];
  _Block_release(v12);
  v14 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!v13)
  {
    v23 = sub_1CF9E57F8();

    swift_willThrow();
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = v23;
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E72A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_getErrorValue();
      v30 = Error.prettyDescription.getter(v48);
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "Failed to create file_id_gen_count_index: %@", v28, 0xCu);
      sub_1CF19CAB0(v29);
      MEMORY[0x1D386CDC0](v29, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    v31 = 0;
    goto LABEL_12;
  }

  v16 = swift_allocObject();
  v17 = v46;
  *(v16 + 16) = sub_1CF1C0B10;
  *(v16 + 24) = v17;
  v53 = sub_1CEFE7610;
  v54 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1CEFE7548;
  v52 = &block_descriptor_98;
  v18 = _Block_copy(&aBlock);

  aBlock = 0;
  v19 = [a1 executeSwift:v18 error:&aBlock];
  _Block_release(v18);
  v20 = aBlock;
  v21 = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_15:
    __break(1u);
  }

  if ((v19 & 1) == 0)
  {
    v32 = sub_1CF9E57F8();

    swift_willThrow();
    v33 = fpfs_current_or_default_log();
    v34 = v43;
    sub_1CF9E6128();
    v35 = v32;
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_getErrorValue();
      v40 = Error.prettyDescription.getter(v47);
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "Failed to create doc_id_index: %@", v38, 0xCu);
      sub_1CF19CAB0(v39);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    v31 = sub_1CF1C0B10;
    v10 = v34;
LABEL_12:
    (*(v44 + 8))(v10, v45);
    swift_willThrow();

    result = sub_1CEFF7124(v31);
    goto LABEL_13;
  }

  *v42 = 1;
LABEL_13:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1BF66C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA2E3D0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2E410);
  return 0;
}

uint64_t sub_1CF1BF708(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA2E3A0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0x2964695F636F6428, 0xE800000000000000);
  return 0;
}

unint64_t sub_1CF1BF798@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6[2] = a1;
  v7 = a2;
  result = sub_1CF7F1200(sub_1CF1C0AEC, v6);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  return result;
}

unint64_t sub_1CF1BF7F8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA2E280);
  v6 = [a1 bindUnsignedIntegerParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  return 0xD000000000000017;
}

void *sub_1CF1BF8E4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v9[3] = a2;
  v9[2] = a1;
  result = sub_1CF7F145C(sub_1CF1C0B00, v9);
  if (!v3)
  {
    if (v7)
    {
      v8 = a2;
    }

    else
    {
      v8 = result;
    }

    *a3 = v8;
  }

  return result;
}

unint64_t sub_1CF1BF94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2E2A0);
  v5 = sub_1CF074ABC(a3, 0);
  MEMORY[0x1D3868CC0](v5);

  return 0xD000000000000018;
}

void sub_1CF1BFA14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v31 = a5;
  v29 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v30 = sub_1CF9E6118();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  v13[2] = sub_1CF1C0AF8;
  v13[3] = v12;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_84;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v15 = [a1 fetchSwift:v14 error:aBlock];
  _Block_release(v14);
  v16 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v15)
  {
    if (![v15 next] || (objc_msgSend(v15, sel_isNullAtIndex_, 0) & 1) != 0 || (objc_msgSend(v15, sel_isNullAtIndex_, 1) & 1) != 0 || (objc_msgSend(v15, sel_isNullAtIndex_, 2) & 1) != 0)
    {
      v18 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v19 = sub_1CF9E6108();
      v20 = sub_1CF9E72A8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = a3;
        _os_log_impl(&dword_1CEFC7000, v19, v20, "Failed to find new fileID for %llu", v21, 0xCu);
        MEMORY[0x1D386CDC0](v21, -1, -1);
      }

      (*(v8 + 8))(v11, v30);

      v22 = v31;
      *v31 = a3;
      *(v22 + 2) = 0;
      *(v22 + 12) = 0;
    }

    else
    {
      v24 = [v15 unsignedLongLongAtIndex_];
      v25 = [v15 unsignedIntAtIndex_];
      v26 = [v15 unsignedIntAtIndex_];

      v27 = v31;
      *v31 = v24;
      if (v26 == v29)
      {
        *(v27 + 2) = v25;
      }

      else
      {
        *(v27 + 2) = 0;
      }

      *(v27 + 12) = 1;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1BFE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA2E340);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2E2A0);
  v5 = sub_1CF074ABC(a3, 0);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

void sub_1CF1BFED0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1CF9E5268();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  v14[2] = sub_1CF1C0AD4;
  v14[3] = v13;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_60;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v16 = [a1 fetchSwift:v15 error:aBlock];
  _Block_release(v15);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v16)
  {
    sub_1CF9E57F8();

    swift_willThrow();

    goto LABEL_11;
  }

  if (![v16 next])
  {
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF1C0A8C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v26 + 8))(v12, v9);
    swift_willThrow();

    goto LABEL_11;
  }

  if ([v16 isNullAtIndex_])
  {
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    goto LABEL_14;
  }

  v19 = [v16 stringAtIndex_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  if ([v16 isNullAtIndex_])
  {
LABEL_13:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
LABEL_14:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v23 = [v16 unsignedIntAtIndex_];

  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  *(v24 + 4) = v23;
LABEL_11:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1C031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA2E250);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2E2A0);
  v5 = sub_1CF074ABC(a3, 0);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

void sub_1CF1C03E8(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v27 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1CF9E5268();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  v14[2] = sub_1CF1C0A80;
  v14[3] = v13;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_50;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v16 = [a1 fetchSwift:v15 error:aBlock];
  _Block_release(v15);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v16)
  {
    sub_1CF9E57F8();

    swift_willThrow();

    goto LABEL_11;
  }

  if (![v16 next])
  {
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF1C0A8C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v26 + 8))(v12, v9);
    swift_willThrow();

    goto LABEL_11;
  }

  if ([v16 isNullAtIndex_])
  {
    goto LABEL_13;
  }

  if (swift_dynamicCastMetatype())
  {
    goto LABEL_14;
  }

  v19 = [v16 stringAtIndex_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  if ([v16 isNullAtIndex_])
  {
LABEL_13:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
LABEL_14:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v23 = [v16 unsignedIntAtIndex_];

  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  *(v24 + 4) = v23;
LABEL_11:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1C0838(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA2E250);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA2E280);
  v5 = sub_1CF074C58(a3);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF1C09E8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BCFF8(a1, *(v1 + 16), *(v1 + 24));
}

id sub_1CF1C0A1C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CF1BB840(v2, v3);
}

uint64_t sub_1CF1C0A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF1C0B84()
{
  result = sub_1CF9E6498();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1CF9E6388();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CF1C0CE4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0D0, &qword_1CF9FC5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C518C();
  sub_1CF9E82A8();
  v11 = *v3;
  LOBYTE(v15) = 0;
  sub_1CF9E7EC8();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = v3[16];
    v14 = 1;
    sub_1CF1C5234();
    sub_1CF9E7E68();
    v15 = *(v3 + 3);
    v16 = v3[32];
    v14 = 2;
    sub_1CF9E7E68();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF1C0EB0()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x677275507473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964656572476E69;
  }
}

uint64_t sub_1CF1C0F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF1C4E2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1C0F50(uint64_t a1)
{
  v2 = sub_1CF1C518C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1C0F8C(uint64_t a1)
{
  v2 = sub_1CF1C518C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CF1C0FC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CF1C4F5C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_1CF1C1028(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t sub_1CF1C1050()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = objc_sync_exit(v0);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF1C1160()
{
  v6 = 0;
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C12B0(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

uint64_t sub_1CF1C12B0(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 256);
  v5 = *(*a1 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = v45 - v9;
  v57 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = sub_1CF9E75D8();
  v54 = *(v56 - 8);
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v56);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v45 - v16;
  v18 = qword_1EDEA4990;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v45[2] = v7 + 32;
  v45[3] = v7 + 16;
  v54 += 32;
  v55 = TupleTypeMetadata2 - 8;
  v50 = v7;
  v52 = v19;
  v53 = (v7 + 8);

  v26 = 0;
  v51 = a2;
  v47 = v15;
  v48 = TupleTypeMetadata2;
  v46 = v17;
  if (v23)
  {
    while (1)
    {
      v27 = v26;
LABEL_12:
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v31 = v30 | (v27 << 6);
      v32 = v52;
      v33 = v49;
      v34 = v50;
      v35 = v57;
      (*(v50 + 16))(v49, *(v52 + 48) + *(v50 + 72) * v31, v57);
      v36 = *(*(v32 + 56) + 8 * v31);
      v37 = *(v48 + 48);
      v38 = *(v34 + 32);
      v15 = v47;
      v39 = v33;
      TupleTypeMetadata2 = v48;
      v38(v47, v39, v35);
      v40 = 0;
      *&v15[v37] = v36;
      v29 = v27;
      a2 = v51;
      v17 = v46;
LABEL_13:
      v41 = *(TupleTypeMetadata2 - 8);
      (*(v41 + 56))(v15, v40, 1, TupleTypeMetadata2);
      (*v54)(v17, v15, v56);
      result = (*(v41 + 48))(v17, 1, TupleTypeMetadata2);
      if (result == 1)
      {
      }

      v42 = *&v17[*(TupleTypeMetadata2 + 48)];
      v43 = __OFADD__(*a2, v42);
      v44 = *a2 + v42;
      if (v43)
      {
        goto LABEL_20;
      }

      *a2 = v44;
      result = (*v53)(v17, v57);
      v26 = v29;
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v24 <= v26 + 1)
    {
      v28 = v26 + 1;
    }

    else
    {
      v28 = v24;
    }

    v29 = v28 - 1;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v23 = 0;
        v40 = 1;
        goto LABEL_13;
      }

      v23 = *(v20 + 8 * v27);
      ++v26;
      if (v23)
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

uint64_t sub_1CF1C16D0()
{
  v36 = *v0;
  v1 = sub_1CF9E6448();
  v37 = *(v1 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E73D8();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v14 = qword_1EDEBB760;
  }

  v15 = *(v0 + v14);
  result = swift_beginAccess();
  if (*(v0 + 80) == 1 && (v0[12] & 1) == 0)
  {
    v17 = v0[11];
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      __break(1u);
    }

    else
    {
      v19 = v0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v21 = v20;
      result = (*(v10 + 8))(v13, v9);
      v22 = v21 * 1000000000.0;
      if (COERCE__INT64(fabs(v21 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v22 > -9.22337204e18)
        {
          if (v22 < 9.22337204e18)
          {
            if (v18 <= v22)
            {
              return result;
            }

            v34 = v18;
            v23 = v22;
            sub_1CF1C1C54();
            v24 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
            v33[0] = *(v0 + qword_1EDEA4968);
            v33[1] = v24;
            v38 = MEMORY[0x1E69E7CC0];
            sub_1CF1C52F4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CF9E77B8();
            v25 = sub_1CF9E73E8();
            (*(v35 + 8))(v8, v5);
            v26 = *(v19 + qword_1EDEBB6C0);
            *(v19 + qword_1EDEBB6C0) = v25;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            swift_getObjectType();
            v27 = swift_allocObject();
            swift_weakInit();
            v28 = swift_allocObject();
            v29 = v36;
            v28[2] = *(v36 + 248);
            v28[3] = *(v29 + 256);
            v28[4] = v27;

            sub_1CF042F9C();
            sub_1CEFD5828(0, v4, sub_1CF1C533C, v28);

            (*(v37 + 8))(v4, v1);

            v30 = v34 - v23;
            if (!__OFSUB__(v34, v23))
            {
              v31 = dispatch_time(0x8000000000000000, 0);
              v32 = dispatch_time(v31, v30);
              sub_1CF4FBB4C(v32);
              sub_1CF9E7428();
              return swift_unknownObjectRelease();
            }

LABEL_17:
            __break(1u);
            return result;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1CF1C1BB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1CF1C1C54();
    v2 = *(v1 + qword_1EDEBB6D0);
    if (v2)
    {
      v3 = *(v1 + qword_1EDEBB6D0 + 8);

      v2(1);
      sub_1CEFF7124(v2);
    }
  }

  return result;
}

uint64_t sub_1CF1C1C54()
{
  v1 = qword_1EDEBB6C0;
  if (*(v0 + qword_1EDEBB6C0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      v2 = *(v0 + v1);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v3 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF1C1CFC()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF1C260C(0);
  if (v8)
  {
    v9 = (v0 + 80);
    swift_beginAccess();
    return *v9;
  }

  v11 = v7;
  v12 = sub_1CF1C1160();
  v9 = (v1 + 80);
  result = swift_beginAccess();
  v13 = v11 - v12;
  v14 = __OFSUB__(v11, v12);
  if (*(v1 + 80) == 1)
  {
    if (!v14)
    {
      if (v13 < *(v1 + qword_1EDEBB6E8))
      {
        *(v1 + 80) = 0;
        *(v1 + 72) = 1;
        sub_1CF7F20A0();
        v15 = v1 + qword_1EDEBB6D0;
        v16 = *(v1 + qword_1EDEBB6D0);
        if (v16)
        {
          v17 = *(v15 + 8);

          v16(0);
          sub_1CEFF7124(v16);
        }
      }

      return *v9;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v14)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v1 + qword_1EDEBB6E0) >= v13)
  {
    return *v9;
  }

  *(v1 + 80) = 1;
  *(v1 + 72) = 1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v19 = v18;
  result = (*(v3 + 8))(v6, v2);
  v20 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v20 < 9.22337204e18)
  {
    *(v1 + 88) = v20;
    *(v1 + 96) = 0;
    *(v1 + 72) = 1;
    sub_1CF7F20A0();
    sub_1CF1C16D0();
    return *v9;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C1F58()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF1C1CFC();
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2 & 1;
}

uint64_t sub_1CF1C2044(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001CFA2E990;
  v4 = *(v1 + qword_1EDEA4970 + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v1 + qword_1EDEA4970);
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CFA2E9B0;
  v6 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 1;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000015;
  v7 = 5457241;
  if (a1)
  {
    v7 = 20302;
  }

  v8 = 0xE300000000000000;
  if (a1)
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 168) = v5;
  *(inited + 136) = 0x80000001CFA2EA30;
  *(inited + 144) = v7;
  *(inited + 152) = v8;

  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v9 = sub_1CF9E6618();

  v10 = CacheDeleteCopyPurgeableSpaceWithInfo();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1CF9E6628();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1CF1C2358()
{
  v1 = v0;
  v2 = sub_1CF9E6498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  if (*(v0 + qword_1EDEBB708 + 8))
  {
    v13 = qword_1EDEA4988;
    swift_beginAccess();
    (*(v3 + 16))(v12, v0 + v13, v2);
    sub_1CF9E6488();
    sub_1CF9E6478();
    v14 = sub_1CF9E6468();
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v10, v2);
    v16 = sub_1CF1C2044((v14 & 1) == 0);
    if (v17)
    {
      v15(v12, v2);
      return 0;
    }

    else
    {
      v19 = v16;
      sub_1CF9E6478();
      v15(v12, v2);
      swift_beginAccess();
      (*(v3 + 40))(v1 + v13, v10, v2);
      swift_endAccess();
      return v19;
    }
  }

  else
  {
    result = *(v0 + qword_1EDEBB708);
    if ((*(v0 + qword_1EDEBB6C8 + 8) & 1) == 0)
    {
      v20 = *(v0 + qword_1EDEBB6C8);
    }
  }

  return result;
}

uint64_t sub_1CF1C25D8()
{
  if (*(v0 + qword_1EDEBB740 + 8) != 1)
  {
    return *(v0 + qword_1EDEBB740);
  }

  v1 = *(v0 + 152);
  return *(v0 + 144);
}

uint64_t sub_1CF1C260C(char a1)
{
  v2 = v1;
  v4 = sub_1CF9E6498();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = v2 + qword_1EDEBB708;
  if (*(v2 + qword_1EDEBB708 + 8) == 1)
  {
    v16 = qword_1EDEA4980;
    swift_beginAccess();
    v17 = *(v5 + 16);
    v28 = v16;
    v17(v14, v2 + v16, v4);
    sub_1CF9E6488();
    sub_1CF9E6478();
    v18 = sub_1CF9E6468();
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v12, v4);
    if (a1 & 1) == 0 || (v18)
    {
      v20 = [*(v2 + 120) freeSize];
      if (v20)
      {
        v21 = v20;
        v22 = (v2 + qword_1EDEBB740);
        if (*(v2 + qword_1EDEBB740 + 8) == 1)
        {
          if (*(v2 + 152))
          {
            v19(v14, v4);

LABEL_14:
            v15 = v2 + 128;
            v25 = *(v2 + 136);
            return *v15;
          }

          v22 = (v2 + 144);
        }

        v23 = *v22;
        *(v2 + 128) = [v20 longLongValue];
        *(v2 + 136) = 0;
        if (v23 < [v21 longLongValue])
        {
          *(v2 + 128) = v23;
          *(v2 + 136) = 0;
        }

        sub_1CF9E6478();

        v19(v14, v4);
        v24 = v28;
        swift_beginAccess();
        (*(v5 + 40))(v2 + v24, v12, v4);
        swift_endAccess();
        goto LABEL_14;
      }
    }

    v19(v14, v4);
    goto LABEL_14;
  }

  return *v15;
}

uint64_t sub_1CF1C28EC(uint64_t a1)
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF1C1050();
  v10 = v9;
  result = sub_1CF1C1160();
  v12 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1CF1C2358();
  if (v14)
  {
    return 0;
  }

  if (__OFSUB__(result, v12))
  {
    goto LABEL_26;
  }

  v15 = qword_1EDEBB6E8;
  if (result - v12 >= *(v1 + qword_1EDEBB6E8) || v13 == 0)
  {
    return 0;
  }

  v17 = result;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v19 = v18;
  result = (*(v4 + 8))(v7, v3);
  v20 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10)
  {
    goto LABEL_17;
  }

  v21 = v20;
  if (v8 >= v20)
  {
    goto LABEL_17;
  }

  v22 = __OFSUB__(v21, v8);
  v23 = v21 - v8;
  if (v22)
  {
    goto LABEL_30;
  }

  v24 = *(v1 + qword_1EDEBB768);
  v22 = __OFSUB__(v24, v23);
  v25 = v24 - v23;
  if (v22)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 > 0)
  {
    return 0;
  }

LABEL_17:
  result = sub_1CF1C1F58();
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

  v26 = *(v1 + v15);
  v22 = __OFADD__(v26, a1);
  v27 = v26 + a1;
  if (v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!__OFSUB__(v27, v17))
  {
    return 1;
  }

  __break(1u);
LABEL_22:
  v28 = *(v1 + qword_1EDEBB6E0);
  v22 = __OFADD__(v28, a1);
  v29 = v28 + a1;
  if (v22)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!__OFSUB__(v29, v17))
  {
    return 1;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C2B1C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = sub_1CF9E63A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6448();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1CF1C3DF8())
  {
    return a2(0);
  }

  v22 = *(v3 + qword_1EDEA4968);
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = sub_1CF1C52D4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1CF1C52F4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v21 = v12;
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v16, v11, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v21);
}

void sub_1CF1C2E14(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CF1C28EC(a2) & 1) != 0 && (v14 = qword_1EDEBB6F0, (a1[qword_1EDEBB6F0] & 1) == 0))
  {
    v15 = v13;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E7298();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = a4;
      v20 = v14;
      v21 = v19;
      *v19 = 134217984;
      *(v19 + 4) = v15;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "💾 calling CD to purge: %lld", v19, 0xCu);
      v22 = v21;
      v14 = v20;
      a4 = v38;
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v23 = *&a1[qword_1EDEBB6F8];
    if (v23)
    {
      v24 = *&a1[qword_1EDEBB6F8 + 8];

      v25 = v23(v15);
      v26 = *&a1[qword_1EDEBB700];
      if (v26)
      {
        v27 = *&a1[qword_1EDEBB700 + 8];

        v26(v15);
        sub_1CEFF7124(v26);
      }

      if (v25)
      {
        v28 = objc_sync_enter(a1);
        if (v28)
        {
          MEMORY[0x1EEE9AC00](v28);
          *(&v37 - 2) = a1;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v37 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        sub_1CF1C3C64(a1);
        v29 = objc_sync_exit(a1);
        if (v29)
        {
          MEMORY[0x1EEE9AC00](v29);
          *(&v37 - 2) = a1;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v37 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }
      }

      sub_1CF1C1CFC();
      a3(v25 & 1);
      sub_1CEFF7124(v23);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FC3C0;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x80000001CFA2E990;
      v31 = *&a1[qword_1EDEA4970 + 8];
      v32 = MEMORY[0x1E69E6158];
      *(inited + 48) = *&a1[qword_1EDEA4970];
      *(inited + 56) = v31;
      *(inited + 72) = v32;
      *(inited + 80) = 0xD000000000000014;
      *(inited + 88) = 0x80000001CFA2E9B0;
      v33 = MEMORY[0x1E69E72F0];
      *(inited + 96) = 1;
      *(inited + 120) = v33;
      *(inited + 128) = 0xD000000000000013;
      *(inited + 168) = MEMORY[0x1E69E7360];
      *(inited + 136) = 0x80000001CFA2E9D0;
      *(inited + 144) = v15;

      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_arrayDestroy();
      a1[v14] = 1;
      v34 = sub_1CF9E6618();

      v35 = swift_allocObject();
      v35[2] = a1;
      v35[3] = a3;
      v35[4] = a4;
      aBlock[4] = sub_1CF1C52E0;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF02C158;
      aBlock[3] = &block_descriptor_13;
      v36 = _Block_copy(aBlock);

      CacheDeletePurgeSpaceWithInfo();
      _Block_release(v36);
    }
  }

  else
  {
    a3(0);
  }
}

uint64_t sub_1CF1C3390(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v54 = a2;
  v4 = sub_1CF9E63A8();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6448();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (aBlock[0] = 0, sub_1CF9E6628(), (v23 = aBlock[0]) == 0))
  {
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "💾 No results returned by CacheDeletePurgeSpaceWithInfo", v37, 2u);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    (*(v13 + 8))(v22, v12);
    goto LABEL_11;
  }

  if (*(aBlock[0] + 16))
  {
    v24 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EA10);
    if (v25)
    {
      sub_1CEFD1104(*(v23 + 56) + 32 * v24, aBlock);
      if (swift_dynamicCast())
      {

        v27 = v57;
        v26 = v58;
        v28 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v29 = sub_1CF9E6108();
        v30 = sub_1CF9E72A8();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          aBlock[0] = v32;
          *v31 = 136315138;
          v33 = sub_1CEFD0DF0(v27, v26, aBlock);

          *(v31 + 4) = v33;
          _os_log_impl(&dword_1CEFC7000, v29, v30, "💾 CD failed while purging with: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1D386CDC0](v32, -1, -1);
          MEMORY[0x1D386CDC0](v31, -1, -1);
        }

        else
        {
        }

        (*(v13 + 8))(v20, v12);
LABEL_11:
        v38 = 0;
        goto LABEL_21;
      }
    }
  }

  if (!*(v23 + 16) || (v39 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA2E9D0), (v40 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_1CEFD1104(*(v23 + 56) + 32 * v39, aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v41 = 0;
    goto LABEL_18;
  }

  v41 = v57;
LABEL_18:
  v42 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v43 = sub_1CF9E6108();
  v44 = sub_1CF9E7298();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = v41;
    _os_log_impl(&dword_1CEFC7000, v43, v44, "💾 CD was able to purge: %lld bytes", v45, 0xCu);
    MEMORY[0x1D386CDC0](v45, -1, -1);
  }

  (*(v13 + 8))(v17, v12);
  v46 = v54;
  v47 = *(v54 + qword_1EDEA4968);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v41;
  aBlock[4] = sub_1CF1C52EC;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_22;
  v49 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1CF1C52F4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v11, v7, v49);
  _Block_release(v49);
  (*(v53 + 8))(v7, v4);
  (*(v51 + 8))(v11, v52);

  v38 = 1;
LABEL_21:
  sub_1CF1C1CFC();
  return v56(v38);
}

uint64_t sub_1CF1C3AAC(char *a1, uint64_t a2)
{
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v10 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C3C64(a1);
  result = objc_sync_exit(a1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v10 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  a1[qword_1EDEBB6F0] = 0;
  v6 = &a1[qword_1EDEBB700];
  v7 = *&a1[qword_1EDEBB700];
  if (v7)
  {
    v8 = *(v6 + 1);

    v7(a2);

    return sub_1CEFF7124(v7);
  }

  return result;
}

uint64_t sub_1CF1C3C64(uint64_t a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  v10 = v8 * 1000000000.0;
  if (COERCE__INT64(fabs(v8 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = v10;
    swift_beginAccess();
    *(a1 + 104) = v11;
    *(a1 + 112) = 0;
    *(a1 + 72) = 1;
    return sub_1CF7F20A0();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C3DD0()
{
  v1 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v1 = qword_1EDEBB760;
  }

  return *(v0 + v1);
}

uint64_t sub_1CF1C3DF8()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 96))
  {
    return 0;
  }

  v6 = *(v0 + 88);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  v10 = v8 * 1000000000.0;
  if (COERCE__INT64(fabs(v8 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  if (v6 >= v10)
  {
    return 0;
  }

  v12 = __OFSUB__(v11, v6);
  v13 = v11 - v6;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v14 = qword_1EDEBB760;
  }

  v15 = *(v0 + v14);
  v12 = __OFSUB__(v15, v13);
  v16 = v15 - v13;
  if (!v12)
  {
    return v16 > 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C3FAC(uint64_t a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C410C(v1, a1, v8);
  v4 = objc_sync_exit(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v8[0];
}

uint64_t sub_1CF1C410C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CF1C1F58();
  if ((result & 1) == 0)
  {
    v7 = 0;
    v8 = 128;
    goto LABEL_12;
  }

  result = sub_1CF1C3DF8();
  if (result)
  {
    v7 = 0;
    v8 = 256;
LABEL_12:
    *a3 = v7;
    *(a3 + 8) = v8;
    return result;
  }

  result = sub_1CF1C260C(1);
  if (v9)
  {
LABEL_11:
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v10 = result;
  result = sub_1CF1C1160();
  v11 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v11 >= v10)
    {
      goto LABEL_11;
    }

    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (*(a1 + qword_1EDEBB6E8) < v13)
      {
        v8 = 0;
        v7 = 1;
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1C4228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 256);
  v6 = *(*a1 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v10 + 16))(v13 - v9, a2, AssociatedTypeWitness);
  v13[4] = a3;
  v14 = 0;
  swift_beginAccess();
  v11 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E6708();
  sub_1CF9E6738();
  return swift_endAccess();
}

uint64_t sub_1CF1C4418(uint64_t a1, uint64_t a2)
{
  v5 = *(*a1 + 256);
  v6 = *(*a1 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = (a1 + qword_1EDEBB708);
  if (*(a1 + qword_1EDEBB708 + 8))
  {
    goto LABEL_5;
  }

  v24 = v2;
  v19 = *v12;
  v13 = qword_1EDEA4990;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = *(swift_getAssociatedConformanceWitness() + 40);

  sub_1CF9E6728();

  if (v21 == 1)
  {
    goto LABEL_5;
  }

  if (!__OFSUB__(v19, v20))
  {
    *v12 = v19 - v20;
    *(v12 + 8) = 0;
LABEL_5:
    (*(v8 + 16))(v11, a2, AssociatedTypeWitness);
    v22 = 0;
    v23 = 1;
    swift_beginAccess();
    v17 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1C4680()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C47CC(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

uint64_t sub_1CF1C47CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1CF9E7948();

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(a1 + 80))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v4, v5);

  if ((*(a1 + 112) & 1) == 0)
  {
    v7 = *(a1 + 104);
    sub_1CF9E7948();

    sub_1CF064F48();
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v8);

    MEMORY[0x1D3868CC0](0x7275507473616C20, 0xEF3A657461446567);
  }

  if (*(a1 + 96))
  {
    goto LABEL_14;
  }

  v9 = qword_1EDEBB758;
  if (*(a1 + qword_1EDEBB758 + 8))
  {
    v9 = qword_1EDEBB760;
  }

  if (!__OFADD__(*(a1 + 88), *(a1 + v9)))
  {
    sub_1CF9E7948();

    sub_1CF064F48();
    v10 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v10);

    MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA2E960);

LABEL_14:
    result = MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    *a2 = 0x64656572476E693CLL;
    a2[1] = 0xEF3A657461745379;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1C4A10()
{
  v1 = qword_1EDEA4980;
  v2 = sub_1CF9E6498();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_1EDEA4988, v2);
  v4 = *(v0 + qword_1EDEA4970 + 8);

  v5 = *(v0 + qword_1EDEA4990);

  v6 = *(v0 + qword_1EDEBB6C0);
  swift_unknownObjectRelease();
  v7 = *(v0 + qword_1EDEBB6D0 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBB6D0));
  v8 = qword_1EDEBB6D8;
  v9 = sub_1CF9E6388();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + qword_1EDEBB700 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBB700));
  v11 = *(v0 + qword_1EDEBB6F8);
  v12 = *(v0 + qword_1EDEBB6F8 + 8);

  return sub_1CEFF7124(v11);
}

uint64_t sub_1CF1C4B70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  v2 = qword_1EDEA4980;
  v3 = sub_1CF9E6498();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + qword_1EDEA4988, v3);
  v5 = *(v0 + qword_1EDEA4970 + 8);

  v6 = *(v0 + qword_1EDEA4990);

  v7 = *(v0 + qword_1EDEBB6C0);
  swift_unknownObjectRelease();
  v8 = *(v0 + qword_1EDEBB6D0 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBB6D0));
  v9 = qword_1EDEBB6D8;
  v10 = sub_1CF9E6388();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + qword_1EDEBB700 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBB700));
  v12 = *(v0 + qword_1EDEBB6F8 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBB6F8));
  return v0;
}

uint64_t sub_1CF1C4CD8()
{
  sub_1CF1C4B70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CF1C4D5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF1C4DB0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF1C4E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964656572476E69 && a2 == 0xED00006574617453;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001CFA2EA70 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x677275507473616CLL && a2 == 0xED00006574614465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CF1C4F5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0B8, &qword_1CF9FC5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C518C();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v17) = 0;
  v11 = sub_1CF9E7D58();
  v20 = 1;
  sub_1CF1C51E0();
  sub_1CF9E7CF8();
  v16 = v17;
  v19 = v18;
  v20 = 2;
  sub_1CF9E7CF8();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11 & 1;
  *(a2 + 8) = v16;
  *(a2 + 16) = v19;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_1CF1C518C()
{
  result = qword_1EC4BE0C0;
  if (!qword_1EC4BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE0C0);
  }

  return result;
}

unint64_t sub_1CF1C51E0()
{
  result = qword_1EDEA8330;
  if (!qword_1EDEA8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8330);
  }

  return result;
}

unint64_t sub_1CF1C5234()
{
  result = qword_1EDEA8340;
  if (!qword_1EDEA8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8340);
  }

  return result;
}

uint64_t sub_1CF1C52F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF1C533C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1CF1C1BB8();
}

unint64_t sub_1CF1C535C()
{
  result = qword_1EC4BE0F8;
  if (!qword_1EC4BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE0F8);
  }

  return result;
}

unint64_t sub_1CF1C53B4()
{
  result = qword_1EC4BE100;
  if (!qword_1EC4BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE100);
  }

  return result;
}

unint64_t sub_1CF1C540C()
{
  result = qword_1EC4BE108;
  if (!qword_1EC4BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE108);
  }

  return result;
}

uint64_t sub_1CF1C54B4()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x64657070617277;
  }

  *v0;
  return result;
}

uint64_t sub_1CF1C54E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657070617277 && a2 == 0xE700000000000000;
  if (v6 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

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

uint64_t sub_1CF1C55D0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1CF1C55EC(uint64_t a1)
{
  v2 = sub_1CF1C5FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1C5628(uint64_t a1)
{
  v2 = sub_1CF1C5FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CF1C5670()
{
  result = sub_1CF4E0A94(MEMORY[0x1E69E7CC0]);
  off_1EDEAB9A0 = result;
  return result;
}

uint64_t sub_1CF1C5698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE128, &qword_1CF9FC958);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C5FEC();
  sub_1CF9E82A8();
  swift_getObjectType();
  v14 = *(a4 + 24);
  swift_unknownObjectRetain();
  v14(a3, a4);
  v20 = 1;
  v15 = v18[0];
  sub_1CF9E7EB8();
  if (v15)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    v18[1] = a2;
    v19 = 0;
    v16 = *(a4 + 16);
    sub_1CF9E7F08();
    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CF1C5870(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE110, &qword_1CF9FC740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C5FEC();
  sub_1CF9E8298();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  LOBYTE(v28) = 1;
  v12 = sub_1CF9E7D48();
  v27 = v13;
  v26 = v12;
  if (qword_1EDEAE1F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_1EDEAE1F8);
  swift_endAccess();
  if (qword_1EDEAB998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = off_1EDEAB9A0;
  if (*(off_1EDEAB9A0 + 2) && (v15 = sub_1CEFE4328(v26, v27), (v16 & 1) != 0))
  {
    v17 = *(v14[7] + 8 * v15);
    swift_endAccess();
    v18 = swift_dynamicCastMetatype();
  }

  else
  {
    swift_endAccess();
    v18 = 0;
  }

  swift_beginAccess();
  os_unfair_lock_unlock(&dword_1EDEAE1F8);
  swift_endAccess();
  if (v18)
  {

    v19 = v10;
    v10 = (*(v30 + 32))(v10, a2);
    (*(v7 + 8))(v19, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x7473696765726E75, 0xED00002064657265);
  v21 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v21);

  MEMORY[0x1D3868CC0](0x206570797420, 0xE600000000000000);
  v23 = v26;
  v22 = v27;
  MEMORY[0x1D3868CC0](v26, v27);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA2EAC0);
  v24 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v24);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2EB00);
  MEMORY[0x1D3868CC0](v23, v22);
  MEMORY[0x1D3868CC0](0x29666C65732ELL, 0xE600000000000000);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1C5C9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1CF1C5870(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CF1C5D34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE110, &qword_1CF9FC740);
  sub_1CF1C5E3C(&qword_1EDEAE408);
  result = sub_1CF9E7D88();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1CF1C5DD4(uint64_t a1)
{
  *(a1 + 8) = sub_1CF1C5E3C(&qword_1EDEAE408);
  result = sub_1CF1C5E3C(&qword_1EDEAE410);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CF1C5E3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Continuation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF1C5E80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF1C5EE8()
{
  result = qword_1EDEA55B0;
  if (!qword_1EDEA55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA55B0);
  }

  return result;
}

unint64_t sub_1CF1C5F40()
{
  result = qword_1EDEA55B8;
  if (!qword_1EDEA55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA55B8);
  }

  return result;
}

unint64_t sub_1CF1C5F98()
{
  result = qword_1EC4BE120;
  if (!qword_1EC4BE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE120);
  }

  return result;
}

unint64_t sub_1CF1C5FEC()
{
  result = qword_1EDEA55C0;
  if (!qword_1EDEA55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA55C0);
  }

  return result;
}

uint64_t sub_1CF1C6040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    v8 = v3;
    if (![v7 integerValue])
    {
      sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      v12 = sub_1CF9E7548();
LABEL_14:
      v14 = v12;

      return v14;
    }

    [v7 doubleValue];
    if (a1 < 2)
    {
LABEL_19:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree+DiagnosticCollection.swift", 144, 2, 15);
    }

    v10 = log(v9);
    v11 = v10 / log(a1);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {

      return 0;
    }

    if (v11 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v11 < 9.22337204e18)
    {
      if (!__OFSUB__(a2, 1))
      {
        if (a2 - 1 >= (v11 & ~(v11 >> 63)))
        {
          v13 = v11 & ~(v11 >> 63);
        }

        else
        {
          v13 = a2 - 1;
        }

        v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

id sub_1CF1C61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = v3;
  result = sub_1CF9E5C98();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  result = [v7 integerValue];
  v11 = __OFSUB__(v10, result);
  v12 = v10 - result;
  if (v11)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v14 = sub_1CF1C6040(a2, a3);

    return v14;
  }

  v11 = __OFSUB__(0, v12);
  v15 = -v12;
  if (v11)
  {
    goto LABEL_18;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v17 = sub_1CF1C6040(a2, a3);

  if (v17)
  {
    result = [v17 integerValue];
    if (!__OFADD__(result, 1))
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

      return v18;
    }

    goto LABEL_19;
  }

  return 0;
}

void sub_1CF1C6358(int a1, void *a2, char a3, void (*a4)(void *, uint64_t))
{
  v31 = *MEMORY[0x1E69E9840];

  v8 = objc_sync_enter(a2);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v20 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v9 = a2[20];

  v10 = objc_sync_exit(a2);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v20 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v11 = *(v9 + 16);

  v25 = 0;
  v26 = 0;
  v27 = a1;
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v21 = -1;
  v12 = fpfs_openfdbyhandle();
  if ((v12 & 0x80000000) != 0)
  {
    v14 = MEMORY[0x1D38683F0]();
    LODWORD(v23[0]) = 0;
    BYTE4(v23[0]) = 1;
    v24 = 0;
    v15 = sub_1CF19BBE4(v14, v23);
    sub_1CF1969CC(v23);
    swift_willThrow();
    v16 = v15;
    LODWORD(v23[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    v17 = v15;
    a4(v15, 1);
  }

  else
  {
    v13 = v12;
    sub_1CF1C68C4(v12, a2, a3 & 1, &v22);
    close(v13);

    a4(v22, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1CF1C6610(uint64_t a1, void *a2, char a3, void (*a4)(void *, uint64_t))
{
  v28 = *MEMORY[0x1E69E9840];

  v8 = objc_sync_enter(a2);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v20 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v9 = a2[20];

  v10 = objc_sync_exit(a2);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v20 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v11 = *(v9 + 16);

  v25 = a1;
  v26 = 0u;
  v27 = 0u;
  v21 = -1;
  v12 = fpfs_openfdbyhandle();
  if ((v12 & 0x80000000) != 0)
  {
    v14 = MEMORY[0x1D38683F0]();
    LODWORD(v23[0]) = 0;
    BYTE4(v23[0]) = 1;
    v24 = 0;
    v15 = sub_1CF19BBE4(v14, v23);
    sub_1CF1969CC(v23);
    swift_willThrow();
    v16 = v15;
    LODWORD(v23[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    v17 = v15;
    a4(v15, 1);
  }

  else
  {
    v13 = v12;
    sub_1CF1C68C4(v12, a2, a3 & 1, &v22);
    close(v13);

    a4(v22, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1CF1C68C4(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_sync_enter(a2);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v13);
    v26[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v26[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v26[0] = a4;
  v14 = a2[20];

  v15 = objc_sync_exit(a2);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    v26[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v26[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  (*(v9 + 16))(v12, v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v8);

  v16 = objc_allocWithZone(FPDiagnosticCollector);
  v17 = sub_1CF9E5928();
  (*(v9 + 8))(v12, v8);
  v18 = [v16 initWithFD:a1 trashURL:v17 isExternalQuery:a3 & 1];

  v27[0] = 0;
  if (![v18 collectDiagnosticDiskAttributesWithError_])
  {
    v24 = v27[0];
    sub_1CF9E57F8();

LABEL_8:
    swift_willThrow();

    goto LABEL_9;
  }

  v19 = v27[0];
  v20 = [v18 diagnostic];
  if (!v20)
  {
    type metadata accessor for NSFileProviderError(0);
    v26[1] = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C3E4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    goto LABEL_8;
  }

  v21 = v20;
  type metadata accessor for FPDiagnosticAttributeKey(0);
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  sub_1CF01C3E4(&qword_1EC4BD678, type metadata accessor for FPDiagnosticAttributeKey);
  v22 = sub_1CF9E6638();

  v23 = sub_1CF1C6C98(v22);

  *v26[0] = v23;
LABEL_9:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t *sub_1CF1C6C98(uint64_t a1)
{
  v2 = v1;
  v267 = sub_1CF9E6118();
  v4 = *(v267 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v267);
  v7 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v226 - v13;
  sub_1CF9E5CE8();
  (*(v9 + 16))(v11, v14, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = *(v9 + 32);
  v270 = v16;
  v17(v16 + v15, v11, v8);
  v18 = *MEMORY[0x1E6967028];
  v19 = *(a1 + 16);

  v264 = v7;
  v265 = a1;
  v269 = v2;
  v229 = v8;
  v228 = v9;
  v227 = v14;
  v268 = v4;
  if (!v19)
  {
    v20 = v18;
LABEL_6:
    v263 = 0;
    v27 = v270;
    goto LABEL_7;
  }

  v20 = v18;
  v21 = sub_1CEFE863C(v18);
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  v23 = *(*(a1 + 56) + 8 * v21);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    goto LABEL_6;
  }

  v25 = v24;
  v26 = v23;
  v27 = v270;
  v263 = v25;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE130, &qword_1CF9FC970);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CF9FC960;
  *&v260 = *MEMORY[0x1E6967088];
  *(v28 + 32) = v260;
  v266 = (v28 + 32);
  *(v28 + 40) = sub_1CF1C846C;
  *(v28 + 48) = 0;
  v253 = *MEMORY[0x1E6967098];
  *(v28 + 56) = v253;
  *(v28 + 64) = sub_1CF1C846C;
  v29 = *MEMORY[0x1E6967090];
  *(v28 + 72) = 0;
  *(v28 + 80) = v29;
  v256 = v29;
  *(v28 + 88) = sub_1CF1C846C;
  *(v28 + 96) = 0;
  v257 = *MEMORY[0x1E6967080];
  *(v28 + 104) = v257;
  *(v28 + 112) = sub_1CF1C8478;
  *(v28 + 120) = 0;
  v255 = *MEMORY[0x1E6967050];
  *(v28 + 128) = v255;
  *(v28 + 136) = sub_1CF1C846C;
  *(v28 + 144) = 0;
  v30 = *MEMORY[0x1E6966FE8];
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1CF1C8600;
  *(v31 + 24) = v27;
  v259 = v30;
  *(v28 + 152) = v30;
  *(v28 + 160) = sub_1CF1C8674;
  *(v28 + 168) = v31;
  v244 = *MEMORY[0x1E6966FF0];
  *(v28 + 176) = v244;
  *(v28 + 184) = sub_1CF1C8478;
  *(v28 + 192) = 0;
  v32 = *MEMORY[0x1E6967058];
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1CF1C8600;
  *(v33 + 24) = v27;
  v246 = v32;
  *(v28 + 200) = v32;
  *(v28 + 208) = sub_1CF1C86B0;
  *(v28 + 216) = v33;
  v34 = *MEMORY[0x1E6967020];
  *(v28 + 224) = *MEMORY[0x1E6967020];
  *(v28 + 232) = sub_1CF1C846C;
  v35 = *MEMORY[0x1E6967078];
  *(v28 + 240) = 0;
  *(v28 + 248) = v35;
  v232 = v35;
  *(v28 + 256) = sub_1CF1C8480;
  *(v28 + 264) = 0;
  v36 = *MEMORY[0x1E6966FE0];
  *(v28 + 272) = *MEMORY[0x1E6966FE0];
  *(v28 + 280) = sub_1CF1C846C;
  *(v28 + 288) = 0;
  *(v28 + 296) = v20;
  v37 = v20;
  *(v28 + 304) = sub_1CF050EC0;
  *(v28 + 312) = 0;
  v237 = *MEMORY[0x1E6967010];
  *(v28 + 320) = v237;
  *(v28 + 328) = sub_1CF1C846C;
  v38 = *MEMORY[0x1E6967040];
  *(v28 + 336) = 0;
  *(v28 + 344) = v38;
  v241 = v38;
  v39 = MEMORY[0x1E6967018];
  *(v28 + 352) = sub_1CF1C84AC;
  *(v28 + 360) = 0;
  v40 = *v39;
  *(v28 + 368) = *v39;
  *(v28 + 376) = sub_1CF1C846C;
  v41 = *MEMORY[0x1E6967000];
  *(v28 + 384) = 0;
  *(v28 + 392) = v41;
  v233 = v41;
  v42 = MEMORY[0x1E6967030];
  *(v28 + 400) = sub_1CF1C846C;
  *(v28 + 408) = 0;
  v231 = *v42;
  *(v28 + 416) = v231;
  *(v28 + 424) = sub_1CF1C8478;
  v43 = *MEMORY[0x1E6967048];
  *(v28 + 432) = 0;
  *(v28 + 440) = v43;
  v236 = v43;
  *(v28 + 448) = sub_1CF1C84D8;
  *(v28 + 456) = 0;
  v230 = *MEMORY[0x1E6967068];
  *(v28 + 464) = v230;
  *(v28 + 472) = sub_1CF1C84D8;
  v44 = *MEMORY[0x1E6967070];
  *(v28 + 480) = 0;
  *(v28 + 488) = v44;
  v235 = v44;
  *(v28 + 496) = sub_1CF1C84D8;
  *(v28 + 504) = 0;
  v239 = *MEMORY[0x1E6967008];
  *(v28 + 512) = v239;
  *(v28 + 520) = sub_1CF1C8504;
  *(v28 + 528) = 0;
  v234 = *MEMORY[0x1E6967038];
  *(v28 + 536) = v234;
  *(v28 + 544) = sub_1CF1C8478;
  *(v28 + 552) = 0;
  v45 = *MEMORY[0x1E6966FF8];
  v46 = swift_allocObject();
  v47 = v269;
  *(v46 + 16) = sub_1CF1C866C;
  *(v46 + 24) = v47;
  v240 = v45;
  *(v28 + 560) = v45;
  *(v28 + 568) = sub_1CF1C86B0;
  *(v28 + 576) = v46;
  v48 = *MEMORY[0x1E6967060];
  *(v28 + 584) = *MEMORY[0x1E6967060];
  *(v28 + 592) = sub_1CF1C84AC;
  *(v28 + 600) = 0;
  v49 = *MEMORY[0x1E6966F98];
  *(v28 + 608) = *MEMORY[0x1E6966F98];
  *(v28 + 616) = sub_1CF1C8504;
  *(v28 + 624) = 0;
  v238 = *MEMORY[0x1E6966F80];
  *(v28 + 632) = v238;
  *(v28 + 640) = sub_1CF1C8478;
  *(v28 + 648) = 0;
  v242 = *MEMORY[0x1E6966FB8];
  *(v28 + 656) = v242;
  *(v28 + 664) = sub_1CF1C846C;
  *(v28 + 672) = 0;
  v243 = *MEMORY[0x1E6966FA8];
  *(v28 + 680) = v243;
  *(v28 + 688) = sub_1CF1C8504;
  *(v28 + 696) = 0;
  v245 = *MEMORY[0x1E6966FA0];
  *(v28 + 704) = v245;
  *(v28 + 712) = sub_1CF1C8504;
  *(v28 + 720) = 0;
  v248 = *MEMORY[0x1E6966F78];
  *(v28 + 728) = v248;
  *(v28 + 736) = sub_1CF1C856C;
  *(v28 + 744) = 0;
  v247 = *MEMORY[0x1E6966FB0];
  *(v28 + 752) = v247;
  *(v28 + 760) = sub_1CF1C846C;
  *(v28 + 768) = 0;
  v249 = *MEMORY[0x1E6966F90];
  *(v28 + 776) = v249;
  *(v28 + 784) = sub_1CF1C846C;
  *(v28 + 792) = 0;
  v250 = *MEMORY[0x1E6966F88];
  *(v28 + 800) = v250;
  *(v28 + 808) = sub_1CF1C846C;
  *(v28 + 816) = 0;
  v251 = *MEMORY[0x1E6966F70];
  *(v28 + 824) = v251;
  *(v28 + 832) = sub_1CF1C846C;
  *(v28 + 840) = 0;
  v252 = *MEMORY[0x1E69670C8];
  *(v28 + 848) = v252;
  *(v28 + 856) = sub_1CF1C8478;
  *(v28 + 864) = 0;
  v254 = *MEMORY[0x1E69670B8];
  *(v28 + 872) = v254;
  *(v28 + 880) = sub_1CF1C8478;
  *(v28 + 888) = 0;
  v258 = *MEMORY[0x1E69670C0];
  *(v28 + 896) = v258;
  *(v28 + 904) = sub_1CF1C8478;
  *(v28 + 912) = 0;
  v261 = *MEMORY[0x1E69670B0];
  *(v28 + 920) = v261;
  *(v28 + 928) = sub_1CF1C8478;
  *(v28 + 936) = 0;
  v50 = *MEMORY[0x1E69670A8];
  *(v28 + 944) = *MEMORY[0x1E69670A8];
  *(v28 + 952) = sub_1CF1C8504;
  *(v28 + 960) = 0;
  v51 = *MEMORY[0x1E69670A0];
  *(v28 + 968) = *MEMORY[0x1E69670A0];
  *(v28 + 976) = sub_1CF1C846C;
  *(v28 + 984) = 0;
  v262 = *MEMORY[0x1E6966FC8];
  *(v28 + 992) = v262;
  *(v28 + 1000) = sub_1CF1C846C;
  *(v28 + 1008) = 0;
  v271 = *MEMORY[0x1E6966FD0];
  v52 = v263;
  if (v263)
  {
    swift_retain_n();
    v53 = v260;
    v54 = v253;
    v55 = v256;
    v56 = v257;
    v57 = v255;
    v58 = v259;
    v59 = v244;
    v60 = v246;
    v61 = v34;
    v62 = v232;
    v63 = v36;
    v64 = v37;
    v65 = v237;
    v66 = v241;
    v67 = v40;
    v68 = v233;
    v69 = v231;
    v70 = v236;
    v71 = v230;
    v72 = v235;
    v73 = v239;
    v74 = v234;
    v75 = v240;
    v76 = v269;

    v77 = v48;
    v78 = v49;
    v79 = v238;
    v80 = v242;
    v81 = v243;
    v82 = v245;
    v83 = v248;
    v84 = v247;
    v85 = v249;
    v86 = v250;
    v87 = v251;
    v88 = v252;
    v89 = v254;
    v90 = v258;
    v91 = v261;
    v92 = v50;
    v93 = v51;
    v94 = v262;
    v95 = v271;
    v96 = v271;
    v97 = [v52 unsignedLongLongValue];
    v52 = swift_allocObject();
    v52[2] = v97;
    v98 = sub_1CF1C86A8;
  }

  else
  {
    swift_retain_n();
    v99 = v260;
    v100 = v253;
    v101 = v256;
    v102 = v257;
    v103 = v255;
    v104 = v259;
    v105 = v244;
    v106 = v246;
    v107 = v34;
    v108 = v232;
    v109 = v36;
    v110 = v37;
    v111 = v237;
    v112 = v241;
    v113 = v40;
    v114 = v233;
    v115 = v231;
    v116 = v236;
    v117 = v230;
    v118 = v235;
    v119 = v239;
    v120 = v234;
    v121 = v240;
    v76 = v269;

    v122 = v48;
    v123 = v49;
    v124 = v238;
    v125 = v242;
    v126 = v243;
    v127 = v245;
    v128 = v248;
    v129 = v247;
    v130 = v249;
    v131 = v250;
    v132 = v251;
    v133 = v252;
    v134 = v254;
    v135 = v258;
    v136 = v261;
    v137 = v50;
    v138 = v51;
    v139 = v262;
    v95 = v271;
    v140 = v271;
    v98 = sub_1CF1C7F54;
  }

  v141 = v98;
  v142 = swift_allocObject();
  *(v142 + 16) = v141;
  *(v142 + 24) = v52;
  *(v28 + 1016) = v95;
  *(v28 + 1024) = sub_1CF1C86B0;
  *(v28 + 1032) = v142;
  v271 = *MEMORY[0x1E6966FC0];
  v143 = v271;
  v144 = swift_allocObject();
  v145 = v270;
  *(v144 + 16) = sub_1CF1C8600;
  *(v144 + 24) = v145;
  *(v28 + 1040) = v143;
  *(v28 + 1048) = sub_1CF1C86B0;
  *(v28 + 1056) = v144;
  v262 = *MEMORY[0x1E6966FD8];
  v146 = v262;
  v147 = swift_allocObject();
  *(v147 + 16) = sub_1CF1C866C;
  *(v147 + 24) = v76;
  *(v28 + 1064) = v146;
  *(v28 + 1072) = sub_1CF1C86B0;
  *(v28 + 1080) = v147;
  v261 = *MEMORY[0x1E6966E40];
  *(v28 + 1088) = v261;
  *(v28 + 1096) = sub_1CF1C8504;
  *(v28 + 1104) = 0;
  *&v260 = *MEMORY[0x1E6966E58];
  *(v28 + 1112) = v260;
  *(v28 + 1120) = sub_1CF1C846C;
  *(v28 + 1128) = 0;
  v148 = *MEMORY[0x1E6966E48];
  *(v28 + 1136) = *MEMORY[0x1E6966E48];
  *(v28 + 1144) = sub_1CF1C846C;
  *(v28 + 1152) = 0;
  v149 = *MEMORY[0x1E6966E60];
  *(v28 + 1160) = *MEMORY[0x1E6966E60];
  *(v28 + 1168) = sub_1CF1C846C;
  *(v28 + 1176) = 0;
  v150 = *MEMORY[0x1E6966E50];
  *(v28 + 1184) = *MEMORY[0x1E6966E50];
  *(v28 + 1192) = sub_1CF1C8478;
  *(v28 + 1200) = 0;
  v151 = *MEMORY[0x1E6966F58];
  *(v28 + 1208) = *MEMORY[0x1E6966F58];
  *(v28 + 1216) = sub_1CF1C846C;
  *(v28 + 1224) = 0;
  v152 = *MEMORY[0x1E6966F50];
  *(v28 + 1232) = *MEMORY[0x1E6966F50];
  *(v28 + 1240) = sub_1CF1C846C;
  *(v28 + 1248) = 0;
  v153 = *MEMORY[0x1E6966F48];
  *(v28 + 1256) = *MEMORY[0x1E6966F48];
  *(v28 + 1264) = sub_1CF1C846C;
  *(v28 + 1272) = 0;
  v154 = *MEMORY[0x1E6966F68];
  *(v28 + 1280) = *MEMORY[0x1E6966F68];
  *(v28 + 1288) = sub_1CF1C846C;
  *(v28 + 1296) = 0;
  v155 = *MEMORY[0x1E6966F60];
  *(v28 + 1304) = *MEMORY[0x1E6966F60];
  *(v28 + 1312) = sub_1CF1C846C;
  *(v28 + 1320) = 0;

  v156 = v271;
  v157 = v262;
  v158 = v261;
  v159 = v260;
  v160 = v148;
  v161 = v149;
  v162 = v150;
  v163 = v151;
  v164 = v152;
  v165 = v153;
  v166 = v154;
  v167 = v155;
  v271 = sub_1CF4E0B90(v28);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE138, &qword_1CF9FC978);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v168 = v265;
  v169 = (v265 + 64);
  v170 = 1 << *(v265 + 32);
  v171 = -1;
  if (v170 < 64)
  {
    v171 = ~(-1 << v170);
  }

  v172 = v171 & *(v265 + 64);
  v173 = (v170 + 63) >> 6;
  v266 = (v268 + 8);

  v174 = 0;
  v259 = MEMORY[0x1E69E7CC8];
  *&v175 = 136315138;
  v260 = v175;
  v176 = v264;
  v268 = v173;
  v261 = v169;
  while (1)
  {
    v177 = v174;
    if (!v172)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v174 = v177;
LABEL_18:
      v178 = __clz(__rbit64(v172));
      v172 &= v172 - 1;
      v179 = (v174 << 9) | (8 * v178);
      v180 = *(*(v168 + 56) + v179);
      v181 = *(v271 + 2);
      v182 = *(*(v168 + 48) + v179);
      v183 = v180;
      if (v181)
      {
        v184 = sub_1CEFE863C(v182);
        if (v185)
        {
          break;
        }
      }

      v186 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v187 = v182;
      v188 = sub_1CF9E6108();
      v189 = sub_1CF9E72B8();

      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v262 = v183;
        v191 = v190;
        v192 = swift_slowAlloc();
        v273 = v192;
        *v191 = v260;
        v193 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v195 = sub_1CEFD0DF0(v193, v194, &v273);
        v169 = v261;

        *(v191 + 4) = v195;
        v168 = v265;
        _os_log_impl(&dword_1CEFC7000, v188, v189, "Ignoring entry %s in telemetry: unknown entry", v191, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v192);
        v196 = v192;
        v176 = v264;
        MEMORY[0x1D386CDC0](v196, -1, -1);
        MEMORY[0x1D386CDC0](v191, -1, -1);
      }

      else
      {
      }

      (*v266)(v176, v267);
      v177 = v174;
      v173 = v268;
      if (!v172)
      {
LABEL_15:
        while (1)
        {
          v174 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
            break;
          }

          if (v174 >= v173)
          {
            (*(v228 + 8))(v227, v229);

            return v259;
          }

          v172 = *(v169 + v174);
          ++v177;
          if (v172)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    v197 = *(v271 + 7) + 16 * v184;
    v198 = *v197;
    v199 = *(v197 + 8);
    v273 = v183;

    v198(&v272, &v273);

    v200 = v272;
    if (!v272)
    {

      continue;
    }

    v262 = v183;
    v201 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v203 = v202;
    v204 = v200;
    v205 = v203;
    v258 = v204;
    v206 = v259;
    LODWORD(v257) = swift_isUniquelyReferenced_nonNull_native();
    v273 = v206;
    v207 = v201;
    v209 = sub_1CEFE4328(v201, v205);
    v210 = v206[2];
    v211 = (v208 & 1) == 0;
    v212 = v210 + v211;
    if (__OFADD__(v210, v211))
    {
      break;
    }

    if (v206[3] >= v212)
    {
      if (v257)
      {
        if (v208)
        {
          goto LABEL_34;
        }
      }

      else
      {
        LODWORD(v259) = v208;
        sub_1CF7CF818();
        if (v259)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      LODWORD(v259) = v208;
      sub_1CF7C3E7C(v212, v257);
      v213 = sub_1CEFE4328(v207, v205);
      if ((v259 & 1) != (v214 & 1))
      {
        goto LABEL_42;
      }

      v209 = v213;
      if (v259)
      {
LABEL_34:

        v259 = v273;
        v215 = v273[7];
        v216 = *(v215 + 8 * v209);
        v217 = v258;
        *(v215 + 8 * v209) = v258;

        v173 = v268;
        continue;
      }
    }

    v218 = v205;
    v219 = v273;
    v273[(v209 >> 6) + 8] |= 1 << v209;
    v220 = (v219[6] + 16 * v209);
    *v220 = v207;
    v220[1] = v218;
    v221 = v258;
    *(v219[7] + 8 * v209) = v258;

    v222 = v219[2];
    v223 = __OFADD__(v222, 1);
    v224 = v222 + 1;
    if (v223)
    {
      goto LABEL_41;
    }

    v259 = v219;
    v219[2] = v224;
    v173 = v268;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

char *sub_1CF1C7F5C(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    if (![v3 integerValue])
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      goto LABEL_7;
    }

    v5 = sub_1CF1C6040(16, 10);
    if (v5)
    {
      v6 = v5;
      result = [v5 integerValue];
      if (!__OFADD__(result, 1))
      {
        v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

        v4 = v6;
LABEL_7:

        return v7;
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1CF1C8040()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = [result integerValue];
    if (v1 == getuid())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    else if (v1)
    {
      v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      if (v1 > 999)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      return [v2 initWithInteger_];
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }
  }

  return result;
}

id sub_1CF1C80F4(uint64_t a1, void *a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [result unsignedLongLongValue];
    v5 = objc_sync_enter(a2);
    if (!v5)
    {
      v6 = a2[20];

      v7 = objc_sync_exit(a2);
      if (v7)
      {
        goto LABEL_18;
      }

      v8 = *(v6 + 24);

      if (v4 == v8)
      {
        v9 = 0;
        return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      }

      v5 = objc_sync_enter(a2);
      if (!v5)
      {
        v10 = a2[20];

        v7 = objc_sync_exit(a2);
        if (!v7)
        {
          v11 = *(v10 + 32);

          v12 = *(v11 + 16);
          v13 = 32;
          v9 = 2;
          while (v12)
          {
            v14 = *(v11 + v13);
            v13 += 8;
            --v12;
            if (v14 == v4)
            {
              v9 = 1;
              break;
            }
          }

          return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        }

LABEL_18:
        MEMORY[0x1EEE9AC00](v7);
        v16 = a2;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

    MEMORY[0x1EEE9AC00](v5);
    v16 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

id sub_1CF1C8340(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = a1;
  if ([v3 integerValue] == 128)
  {

    v5 = v4;
    return v4;
  }

  sub_1CF5174A4(2);
  v8 = v7;

  return v8;
}

id sub_1CF1C83CC(uint64_t a1, id a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [result unsignedLongLongValue];
    if (v4 == a2)
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    else
    {
      v5 = v4;
      v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      if (v5 <= a2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      return [v6 initWithInteger_];
    }
  }

  return result;
}

id sub_1CF1C846C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_1CF1C8480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CF1C8040();
  *a2 = result;
  return result;
}

id sub_1CF1C84AC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF1C8340(*a1);
  *a2 = result;
  return result;
}

char *sub_1CF1C84D8@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = sub_1CF1C7F5C(*a1);
  *a2 = result;
  return result;
}

void sub_1CF1C850C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    sub_1CF5174A4(a2);
  }

  *a3 = v6;
}

void *sub_1CF1C856C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = [result fp_obfuscatedFilename];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    v6 = sub_1CF9E6888();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1CF1C8674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1CF1C86B8()
{
  result = qword_1EDEACB58;
  if (!qword_1EDEACB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB58);
  }

  return result;
}

uint64_t sub_1CF1C8750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1CEFE9EB8(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1CF1D154C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1CEFCCC44(a1, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    sub_1CF1CE4A0(a2, a3, v10);

    return sub_1CEFCCC44(v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF1C8820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1CF1D262C(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1CF7CF818, sub_1CF7C3E7C);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1CEFE4328(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1CF7CF818();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1CF1CF7C8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_1CF1C8940(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1CEFE9EB8(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1CF1D3EE0(v7, a2, isUniquelyReferenced_nonNull_native, sub_1CEFE863C, sub_1CF7CF82C, sub_1CF7C3E90, type metadata accessor for FPDiagnosticAttributeKey);

    *v2 = v6;
  }

  else
  {
    sub_1CEFCCC44(a1, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    sub_1CF1CE5F4(a2, v7);

    sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF1C8A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1CF1D19D0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1CEFE4328(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1CF7CF854();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1CF1CED38(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1CF1C8B4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E8, &unk_1CF9FCBD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for SyncState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1CEFCCC44(a1, &qword_1EC4BE1E8, &unk_1CF9FCBD0);
    v16 = *v3;
    v17 = sub_1CF7BF4F4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7CFBE4();
        v22 = v27;
      }

      sub_1CF04DC10(*(v22 + 56) + *(v11 + 72) * v19, v9);
      sub_1CF1CF0B0(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1CEFCCC44(v9, &qword_1EC4BE1E8, &unk_1CF9FCBD0);
  }

  else
  {
    sub_1CF04DC10(a1, v15);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1CF1D1C7C(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

void sub_1CF1C8D78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1CF1D1F60(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
  }

  else
  {
    v10 = *v3;
    v11 = sub_1CF7BF2C0(a2, a3);
    if (v12)
    {
      v13 = v11;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v4;
      if (!v15)
      {
        sub_1CF7CFFA8();
        v16 = v18;
      }

      sub_1CF1CF5D4(v13, v16);
      *v4 = v16;
    }
  }
}

uint64_t sub_1CF1C8E7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_1CEFE4328(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D012C();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_1CF1CF7C8(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_1CF1D2C88(a1, a3, a4, v18, sub_1CF7D012C, sub_1CF7C55FC);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_1CF1C8FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    sub_1CEFCCC44(a1, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF1CE7C0(a2, a3, v10);

    return sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1CF1D22C8(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

void sub_1CF1C9218(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(uint64_t, void), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_1CF1D2958(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v5 = v22;
  }

  else
  {
    v13 = *v5;
    v14 = sub_1CEFE863C(a2);
    if (v15)
    {
      v16 = v14;
      v17 = *v6;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v6;
      v23 = *v6;
      if (!v18)
      {
        a5();
        v19 = v23;
      }

      v20 = *(*(v19 + 56) + 8 * v16);

      sub_1CF1D0310(v16, v19);

      *v6 = v19;
    }

    else
    {
    }
  }
}

void sub_1CF1C9370(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(uint64_t, void), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_1CF1D2E34(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v5 = v21;
  }

  else
  {
    v13 = *v5;
    v14 = sub_1CEFE863C(a2);
    if (v15)
    {
      v16 = v14;
      v17 = *v6;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v6;
      v22 = *v6;
      if (!v18)
      {
        a5();
        v19 = v22;
      }

      sub_1CF1D0310(v16, v19);
      *v6 = v19;
    }

    else
    {
    }
  }
}

uint64_t sub_1CF1C9498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1CF1D3310(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v20;
  }

  else
  {
    v7 = sub_1CEFE4328(a2, a3);
    v9 = v8;

    if (v9)
    {
      v11 = *v4;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v19 = *v4;
      if (!v12)
      {
        sub_1CF7D1C90();
        v13 = v19;
      }

      v14 = *(*(v13 + 48) + 16 * v7 + 8);

      v15 = *(*(v13 + 56) + 8 * v7);

      result = sub_1CF1CF7C8(v7, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_1CF1C959C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0510, &unk_1CFA16940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - v16;
  if ((*(v13 + 48))(a1, 1, v12, v15) == 1)
  {
    sub_1CEFCCC44(a1, &unk_1EC4C0510, &unk_1CFA16940);
    v18 = *v4;
    v19 = sub_1CF7BF2C0(a2, a3);
    if (v20)
    {
      v21 = v19;
      v22 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v4;
      v29 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D2684();
        v24 = v29;
      }

      sub_1CEFE55D0(*(v24 + 56) + *(v13 + 72) * v21, v11, &qword_1EC4BE1C8, &qword_1CFA058F0);
      sub_1CF1D0D74(v21, v24, &qword_1EC4BE1C8, &qword_1CFA058F0);
      *v4 = v24;
      (*(v13 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    return sub_1CEFCCC44(v11, &unk_1EC4C0510, &unk_1CFA16940);
  }

  else
  {
    sub_1CEFE55D0(a1, v17, &qword_1EC4BE1C8, &qword_1CFA058F0);
    v25 = *v4;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v4;
    result = sub_1CF1D46B8(v17, a2, a3, v26, sub_1CF7D2684, sub_1CF7CA828, &qword_1EC4BE1C8, &qword_1CFA058F0);
    *v4 = v29;
  }

  return result;
}

void sub_1CF1C9844(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1CF1D348C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_1CEFE863C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_1CF7D2808();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_1CF1D0310(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

unint64_t sub_1CF1C9978(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    result = sub_1CF1D3624(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);
    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    result = sub_1CF7BF2C0(a2, a3);
    if (v18)
    {
      v19 = result;
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v25 = *v7;
      if (!v21)
      {
        a6();
        v22 = v25;
      }

      v23 = *(*(v22 + 56) + 8 * v19);

      result = sub_1CF1CF5D4(v19, v22);
      *v7 = v22;
    }
  }

  return result;
}

uint64_t sub_1CF1C9A6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_1CEFCCC44(a1, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v17 = *v4;
    v18 = sub_1CF7BF2C0(a2, a3);
    if (v19)
    {
      v20 = v18;
      v21 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v28 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D2BF0();
        v23 = v28;
      }

      sub_1CEFE55D0(*(v23 + 56) + *(v13 + 72) * v20, v11, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CF1D0D74(v20, v23, &unk_1EC4BE360, &qword_1CF9FE650);
      *v4 = v23;
      (*(v13 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    return sub_1CEFCCC44(v11, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  else
  {
    sub_1CEFE55D0(a1, v16, &unk_1EC4BE360, &qword_1CF9FE650);
    v24 = *v4;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    result = sub_1CF1D46B8(v16, a2, a3, v25, sub_1CF7D2BF0, sub_1CF7CAEE8, &unk_1EC4BE360, &qword_1CF9FE650);
    *v4 = v28;
  }

  return result;
}

void sub_1CF1C9D14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1CF1D3948(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
  }

  else
  {
    v10 = *v3;
    v11 = sub_1CF7BF2C0(a2, a3);
    if (v12)
    {
      v13 = v11;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v4;
      if (!v15)
      {
        sub_1CF7D2E60();
        v16 = v18;
      }

      sub_1CF1CF5D4(v13, v16);
      *v4 = v16;
    }
  }
}

void sub_1CF1C9DE8(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2)
  {
    v6 = sub_1CEFE863C(a3);
    if (v7)
    {
      v8 = v6;
      v9 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D37B4();
        v11 = v15;
      }

      sub_1CF1D0310(v8, v11);
      *v4 = v11;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1CF1D3C18(a1, a3, v13);

    *v4 = v16;
  }
}

uint64_t sub_1CF1C9EE0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_1CEFCCC44(a1, &qword_1EC4BE198, &qword_1CF9FCAE0);
    v9 = *v2;
    v10 = sub_1CF7BF380(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D3910();
        v15 = v17;
      }

      sub_1CEFF701C(*(v15 + 56) + 16 * v12, &v18);
      sub_1CF1D0790(v12, v15);
      *v3 = v15;
    }

    else
    {
      v18 = xmmword_1CF9FC980;
    }

    return sub_1CEFCCC44(&v18, &qword_1EC4BE198, &qword_1CF9FCAE0);
  }

  else
  {
    sub_1CEFF701C(a1, &v18);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1CF1D3D6C(&v18, a2, v7);
    *v2 = v16;
  }

  return result;
}

void sub_1CF1C9FF0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1CF1D40B0(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_1CEFE863C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_1CF7D3C24();
        v13 = v16;
      }

      sub_1CF1D0310(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_1CF1CA0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1CEFCCC44(a1, &qword_1EC4BE1C0, &unk_1CFA058B0);
    v15 = *v3;
    v16 = sub_1CF7BF380(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF7D49F4();
        v21 = v26;
      }

      sub_1CEFE55D0(*(v21 + 56) + *(v11 + 72) * v18, v9, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CF1D0FB4(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1CEFCCC44(v9, &qword_1EC4BE1C0, &unk_1CFA058B0);
  }

  else
  {
    sub_1CEFE55D0(a1, v14, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1CF1D4828(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1CF1CA348(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_1CEFCCC44(a1, &unk_1EC4C4DD0, &unk_1CF9FCB30);
    v17 = *v4;
    v18 = sub_1CF7BF2C0(a2, a3);
    if (v19)
    {
      v20 = v18;
      v21 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v28 = *v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF7D4794();
        v23 = v28;
      }

      sub_1CEFE55D0(*(v23 + 56) + *(v13 + 72) * v20, v11, &unk_1EC4C04C0, &qword_1CFA07B10);
      sub_1CF1D0D74(v20, v23, &unk_1EC4C04C0, &qword_1CFA07B10);
      *v4 = v23;
      (*(v13 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    return sub_1CEFCCC44(v11, &unk_1EC4C4DD0, &unk_1CF9FCB30);
  }

  else
  {
    sub_1CEFE55D0(a1, v16, &unk_1EC4C04C0, &qword_1CFA07B10);
    v24 = *v4;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    result = sub_1CF1D46B8(v16, a2, a3, v25, sub_1CF7D4794, sub_1CF7CE3B0, &unk_1EC4C04C0, &qword_1CFA07B10);
    *v4 = v28;
  }

  return result;
}

uint64_t sub_1CF1CA5F0(unsigned __int8 a1)
{
  if (a1 <= 0x1Eu)
  {
    if (a1 == 28)
    {
      return 25705;
    }

    if (a1 != 29)
    {
      if (a1 == 30)
      {
        return 0x656D616E656C6966;
      }

      goto LABEL_14;
    }

    return 0x695F746E65726170;
  }

  else if (a1 > 0x20u)
  {
    if (a1 != 33)
    {
      if (a1 == 34)
      {
        return 0xD000000000000012;
      }

      goto LABEL_14;
    }

    return 0x5F746E65746E6F63;
  }

  else
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        return 0xD000000000000010;
      }

LABEL_14:
      v2 = sub_1CF07FC44(a1);
      MEMORY[0x1D3868CC0](v2);

      return 0x617461646174656DLL;
    }

    return 0x656C69665F736676;
  }
}

uint64_t sub_1CF1CA75C(unsigned __int8 a1)
{
  sub_1CF9E81D8();
  if (a1 <= 0x1Eu)
  {
    switch(a1)
    {
      case 0x1Cu:
        v2 = 0;
        goto LABEL_18;
      case 0x1Du:
        v2 = 1;
        goto LABEL_18;
      case 0x1Eu:
        v2 = 2;
        goto LABEL_18;
    }
  }

  else if (a1 > 0x20u)
  {
    if (a1 == 33)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (a1 == 34)
    {
      v2 = 7;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 == 31)
    {
      v2 = 4;
      goto LABEL_18;
    }

    if (a1 == 32)
    {
      v2 = 5;
LABEL_18:
      MEMORY[0x1D386A470](v2);
      return sub_1CF9E8228();
    }
  }

  MEMORY[0x1D386A470](3);
  sub_1CF07FC44(a1);
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

void *sub_1CF1CA888()
{
  v0 = sub_1CF1CB714();
  v1 = v0[2];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1CF680BDC(0, v1, 0);
    v3 = v2;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CF680BDC((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8C90(v4);
  sub_1CF1E8C90(&unk_1F4BEC7F8);
  return &unk_1F4BEC7D0;
}

char *sub_1CF1CA9A0()
{
  v0 = sub_1CF1CB714();
  v1 = v0[2];
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1CF680BDC(0, v1, 0);
    v3 = v2;
    v4 = v22;
    v5 = *(v22 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v22 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CF680BDC((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v22 + 16) = v5 + 1;
      *(v22 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8C90(v4);
  v9 = byte_1F4BEC820;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1CF1F68E4(0, *&byte_1F4BEC820[16] + 1, 1, byte_1F4BEC820);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1CF1F68E4((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v9[v11 + 32] = 33;
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  type metadata accessor for VFSItem(0);
  if (swift_dynamicCastMetatype())
  {
    v12 = v9;
  }

  else
  {
    v13 = v11 + 1;
    v12 = MEMORY[0x1E69E7CC0];
    v14 = 32;
    do
    {
      v15 = v9[v14];
      if ((v15 - 28) < 7)
      {
LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CF680BDC(0, *(v12 + 2) + 1, 1);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_1CF680BDC((v17 > 1), v18 + 1, 1);
        }

        *(v12 + 2) = v18 + 1;
        v12[v18 + 32] = v15;
      }

      else
      {
        switch(v9[v14])
        {
          case 25:

            break;
          default:
            v16 = sub_1CF9E8048();

            if ((v16 & 1) == 0)
            {
              goto LABEL_20;
            }

            break;
        }
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1CF1F68E4(0, *(v12 + 2) + 1, 1, v12);
  }

  v20 = *(v12 + 2);
  v19 = *(v12 + 3);
  if (v20 >= v19 >> 1)
  {
    v12 = sub_1CF1F68E4((v19 > 1), v20 + 1, 1, v12);
  }

  *(v12 + 2) = v20 + 1;
  v12[v20 + 32] = 34;
  return v12;
}

uint64_t sub_1CF1CAFDC()
{
  sub_1CF1CB714();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE150, &qword_1CF9FCA88);
  v1 = sub_1CEFCCCEC(&qword_1EC4BE158, &qword_1EC4BE150, &qword_1CF9FCA88);
  sub_1CF054A5C(sub_1CEFED338, 0, v0, &type metadata for SnapshotItemSQLFields, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);

  v3 = sub_1CF9E6D98();

  v5 = v3;
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CEFCCCEC(&qword_1EC4BE140, &qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CF9E6E08();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CF9E6E18();
  }

  type metadata accessor for VFSItem(0);
  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CEFCCCEC(&qword_1EC4BE160, &qword_1EC4BE148, &qword_1CF9FC990);
    v5 = sub_1CF9E7A08();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion();
  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CF9E6E18();
  }

  return v5;
}

void *sub_1CF1CB300()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0x6465727574706143, 0xEF746E65746E6F43), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE168, &unk_1CF9FCA90);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEB128;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE168, &unk_1CF9FCA90);
    *&v7 = &unk_1F4BEB128;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0x6465727574706143, 0xEF746E65746E6F43);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CB510()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EC80), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE178, &unk_1CF9FCAA0);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEB0B0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE178, &unk_1CF9FCAA0);
    *&v7 = &unk_1F4BEB0B0;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000012, 0x80000001CFA2EC80);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CB714()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0x6174654D6D657449, 0xEC00000061746164), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE150, &qword_1CF9FCA88);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEAD78;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE150, &qword_1CF9FCA88);
    *&v7 = &unk_1F4BEAD78;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0x6174654D6D657449, 0xEC00000061746164);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CB920()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0x746F726854626F4ALL, 0xEB00000000656C74), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF760, &qword_1CF9FCBB0);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEAD50;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF760, &qword_1CF9FCBB0);
    *&v7 = &unk_1F4BEAD50;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0x746F726854626F4ALL, 0xEB00000000656C74);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CBB20()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000015, 0x80000001CFA2ED60), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1CF1CA888();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    *&v7 = v3;
    swift_beginAccess();

    sub_1CF1C8750(&v7, 0xD000000000000015, 0x80000001CFA2ED60);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CBD20()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B0, &unk_1CF9FF000);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v3 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {

    goto LABEL_9;
  }

  v4 = sub_1CEFE4328(v0, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v7 = sub_1CF1CD16C();
    v8 = sub_1CF9E82E8();
    v10 = v9;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B8, &unk_1CF9FCB10);
    *&v14 = v7;
    swift_beginAccess();

    sub_1CF1C8750(&v14, v8, v10);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v3[7] + 32 * v4, &v14);
  swift_endAccess();
  sub_1CEFE9EB8(&v14, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B8, &unk_1CF9FCB10);
  swift_dynamicCast();
  v7 = v12;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v7;
}

void *sub_1CF1CBF6C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000036, 0x80000001CFA2ECE0), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D8, &qword_1CF9FCBA8);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEC870;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D8, &qword_1CF9FCBA8);
    *&v7 = &unk_1F4BEC870;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000036, 0x80000001CFA2ECE0);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CC164()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000036, 0x80000001CFA2ED20), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E0, &qword_1CF9FCBB8);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEC898;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E0, &qword_1CF9FCBB8);
    *&v7 = &unk_1F4BEC898;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000036, 0x80000001CFA2ED20);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CC35C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD00000000000001FLL, 0x80000001CFA2ECC0), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1CF1CD628();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
    *&v7 = v3;
    swift_beginAccess();

    sub_1CF1C8750(&v7, 0xD00000000000001FLL, 0x80000001CFA2ECC0);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

char *sub_1CF1CC55C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E60, &unk_1CF9FCAD0);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v3 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {

    goto LABEL_9;
  }

  v4 = sub_1CEFE4328(v0, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v7 = sub_1CF1CD278();
    v8 = sub_1CF9E82E8();
    v10 = v9;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
    *&v14 = v7;
    swift_beginAccess();

    sub_1CF1C8750(&v14, v8, v10);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v3[7] + 32 * v4, &v14);
  swift_endAccess();
  sub_1CEFE9EB8(&v14, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
  swift_dynamicCast();
  v7 = v12;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v7;
}

char *sub_1CF1CC7A8()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v3 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {

    goto LABEL_9;
  }

  v4 = sub_1CEFE4328(v0, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v7 = sub_1CF1CA9A0();
    v8 = sub_1CF9E82E8();
    v10 = v9;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    *&v14 = v7;
    swift_beginAccess();

    sub_1CF1C8750(&v14, v8, v10);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v3[7] + 32 * v4, &v14);
  swift_endAccess();
  sub_1CEFE9EB8(&v14, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
  swift_dynamicCast();
  v7 = v12;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v7;
}

uint64_t sub_1CF1CCB0C(uint64_t *a1, uint64_t *a2)
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = sub_1CF9E82E8();
  v6 = v5;
  swift_beginAccess();
  v7 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2))
  {
    v8 = sub_1CEFE4328(v4, v6);
    v10 = v9;

    if (v10)
    {
      sub_1CEFD1104(v7[7] + 32 * v8, &v18);
      swift_endAccess();
      sub_1CEFE9EB8(&v18, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A8, &qword_1CF9FCAE8);
      swift_dynamicCast();
      v11 = v16;
      goto LABEL_12;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_1EDEAE328 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDEBBD68;

  v12 = sub_1CF9E82E8();
  v14 = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A8, &qword_1CF9FCAE8);
  *&v18 = v11;
  swift_beginAccess();

  sub_1CF1C8750(&v18, v12, v14);
  swift_endAccess();
LABEL_12:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v11;
}

uint64_t sub_1CF1CCD90(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 28) <= 6)
  {
    return 1;
  }

  if (sub_1CF07FC44(v1) == 0x756F635F6B6E696CLL && v3 == 0xEA0000000000746ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1CF1CCE40(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E6530];
  }

  v7[0] = a1;
  v7[3] = v2;
  v3 = sub_1CEFF8EA0(v7);
  v5 = v4;
  sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    return v3;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1CCF08(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E6810];
  }

  v7[0] = a1;
  v7[3] = v2;
  v3 = sub_1CEFF8EA0(v7);
  v5 = v4;
  sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    return v3;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1CCFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1CF1CAFDC();
  *a2 = result;
  return result;
}

unint64_t sub_1CF1CD000(uint64_t a1)
{
  *(a1 + 8) = sub_1CF1CD030();
  result = sub_1CF1CD084();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF1CD030()
{
  result = qword_1EDEACB60;
  if (!qword_1EDEACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB60);
  }

  return result;
}

unint64_t sub_1CF1CD084()
{
  result = qword_1EDEACB70;
  if (!qword_1EDEACB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB70);
  }

  return result;
}

unint64_t sub_1CF1CD0DC()
{
  result = qword_1EDEACB68;
  if (!qword_1EDEACB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB68);
  }

  return result;
}

uint64_t sub_1CF1CD130(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_1CF1CD16C()
{
  if (qword_1EDEAE328 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDEBBD68;
  v1 = *(qword_1EDEBBD68 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1CF680C0C(0, v1, 0);
    v2 = v9;
    v3 = (v0 + 32);
    v4 = *(v9 + 16);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v10 = v2;
      v7 = *(v2 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_1CF680C0C((v7 > 1), v4 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v4 + 1;
      *(v2 + v4++ + 32) = v5;
      --v1;
    }

    while (v1);
  }

  sub_1CF1E8CA4(v2);
  return &unk_1F4BEC848;
}

char *sub_1CF1CD278()
{
  sub_1CF1E8CCC(&unk_1F4BEC988);
  v0 = byte_1F4BEC960;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_1CF1F6958(0, *&byte_1F4BEC960[16] + 1, 1, byte_1F4BEC960);
  }

  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1CF1F6958((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = -60;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_1CF1F6958((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = -59;
  v33 = v0;
  v6 = sub_1CF1CB300();
  v7 = v6[2];
  if (v7)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v8 = v6;
    sub_1CF680C6C(0, v7, 0);
    v9 = v8;
    v10 = v31;
    v11 = *(v31 + 16);
    v12 = 32;
    do
    {
      v13 = *(v9 + v12);
      v14 = *(v31 + 24);
      if (v11 >= v14 >> 1)
      {
        sub_1CF680C6C((v14 > 1), v11 + 1, 1);
        v9 = v8;
      }

      *(v31 + 16) = v11 + 1;
      *(v31 + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v10);
  v15 = sub_1CF03D7E8();
  v16 = *(v15 + 2);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = (v15 + 32);
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 && v19 != 1)
      {
      }

      else
      {
        v21 = sub_1CF9E8048();

        if ((v21 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CF680BAC(0, *(v17 + 16) + 1, 1);
          }

          v23 = *(v17 + 16);
          v22 = *(v17 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1CF680BAC((v22 > 1), v23 + 1, 1);
          }

          *(v17 + 16) = v23 + 1;
          *(v17 + v23 + 32) = v19;
        }
      }

      --v16;
    }

    while (v16);
  }

  v24 = *(v17 + 16);
  if (v24)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1CF680C6C(0, v24, 0);
    v25 = v32;
    v26 = *(v32 + 16);
    v27 = 32;
    do
    {
      v28 = *(v17 + v27);
      v29 = *(v32 + 24);
      if (v26 >= v29 >> 1)
      {
        sub_1CF680C6C((v29 > 1), v26 + 1, 1);
      }

      *(v32 + 16) = v26 + 1;
      *(v32 + v26 + 32) = v28 | 0x40;
      ++v27;
      ++v26;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v25);
  return v33;
}

void *sub_1CF1CD628()
{
  sub_1CF1E8CCC(&unk_1F4BEC8E8);
  sub_1CF1E8CCC(&unk_1F4BEC910);
  sub_1CF1E8CCC(&unk_1F4BEC938);
  v0 = sub_1CF1CB300();
  v1 = v0[2];
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1CF680C6C(0, v1, 0);
    v3 = v2;
    v4 = v25;
    v5 = *(v25 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v25 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CF680C6C((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v25 + 16) = v5 + 1;
      *(v25 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v4);
  v9 = sub_1CF03D7E8();
  v10 = *(v9 + 2);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = (v9 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 && v13 != 1)
      {
      }

      else
      {
        v15 = sub_1CF9E8048();

        if ((v15 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CF680BAC(0, *(v11 + 16) + 1, 1);
          }

          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1CF680BAC((v16 > 1), v17 + 1, 1);
          }

          *(v11 + 16) = v17 + 1;
          *(v11 + v17 + 32) = v13;
        }
      }

      --v10;
    }

    while (v10);
  }

  v18 = *(v11 + 16);
  if (v18)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1CF680C6C(0, v18, 0);
    v19 = v26;
    v20 = *(v26 + 16);
    v21 = 32;
    do
    {
      v22 = *(v11 + v21);
      v23 = *(v26 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_1CF680C6C((v23 > 1), v20 + 1, 1);
      }

      *(v26 + 16) = v20 + 1;
      *(v26 + v20 + 32) = v22 | 0x40;
      ++v21;
      ++v20;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v19);
  return &unk_1F4BEC8C0;
}

uint64_t sub_1CF1CD93C()
{
  v0 = sub_1CF1CC35C();
  v1 = v0[2];
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1CF680C3C(0, v1, 0);
    v3 = v2;
    v4 = v28;
    v5 = *(v28 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v28 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CF680C3C((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v28 + 16) = v5 + 1;
      *(v28 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1CF1CC55C();
  v10 = *(v9 + 2);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = (v9 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 <= 0xC5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1CF1F6944(0, *(v13 + 2) + 1, 1, v13);
        }

        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v17 >= v16 >> 1)
        {
          v13 = sub_1CF1F6944((v16 > 1), v17 + 1, 1, v13);
        }

        *(v13 + 2) = v17 + 1;
        v13[v17 + 32] = v14 | 0x10;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CB8(v13);
  sub_1CF1E8CB8(&unk_1F4BEC9B0);
  v18 = sub_1CF1CB510();
  v19 = v18[2];
  if (v19)
  {
    v20 = v18;
    sub_1CF680C3C(0, v19, 0);
    v21 = v20;
    v22 = v11;
    v23 = *(v11 + 16);
    v24 = 32;
    do
    {
      v25 = *(v21 + v24);
      v26 = *(v11 + 24);
      if (v23 >= v26 >> 1)
      {
        sub_1CF680C3C((v26 > 1), v23 + 1, 1);
        v21 = v20;
      }

      *(v11 + 16) = v23 + 1;
      *(v11 + v23 + 32) = v25 | 0x20;
      ++v24;
      ++v23;
      --v19;
    }

    while (v19);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CB8(v22);
  return v4;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1D386CDC0);
  }

  return result;
}

void sub_1CF1CDC08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v47 - v3;
  sub_1CEFCCBDC(v0, &v47 - v3, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v14 = *v4;
        v15 = v4[8];
        MEMORY[0x1D386A470](8);
        if (v15)
        {
          if (v15 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v14);
          }

          else
          {
            if (v14)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            MEMORY[0x1D386A470](v30);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }

        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590);
        v34 = &unk_1EC4BEC00;
        v35 = &unk_1CF9FCB60;
        v36 = &v4[*(v40 + 48)];
        goto LABEL_64;
      }

      v10 = *v4;
      v11 = v4[8];
      MEMORY[0x1D386A470](7);
      if (!v11)
      {
LABEL_10:
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
        return;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v10 = *v4;
      v11 = v4[8];
      MEMORY[0x1D386A470](5);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *v4;
      v11 = v4[8];
      MEMORY[0x1D386A470](6);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    if (v11 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v10);
    }

    else if (v10)
    {
      MEMORY[0x1D386A470](3);
    }

    else
    {
      MEMORY[0x1D386A470](2);
    }

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
      v7 = *&v4[v6[16]];

      v8 = *v4;
      v9 = v4[8];
      MEMORY[0x1D386A470](1);
      if (v9)
      {
        if (v9 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v8);
        }

        else
        {
          if (v8)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          MEMORY[0x1D386A470](v28);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v33 = v6[12];
      MEMORY[0x1D386A470](v7);
      v34 = &qword_1EC4C1B40;
      v35 = &unk_1CF9FCB70;
      v36 = &v4[v33];
      goto LABEL_64;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v17 = *&v4[v16[24]];
    v18 = *&v4[v16[28]];

    v19 = *v4;
    v20 = v4[8];
    MEMORY[0x1D386A470](2);
    if (v20)
    {
      if (v20 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v19);
      }

      else
      {
        if (v19)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        MEMORY[0x1D386A470](v31);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    v41 = v16[12];
    v42 = v16[16];
    v43 = &v4[v16[20]];
    MEMORY[0x1D386A470](v17 & 0xFFFFFDFFFFFFBFFFLL);
    MEMORY[0x1D386A470](v18);
    v44 = v43[5];
    v45 = v43[6];
    v46 = v43[7];
    sub_1CF1D56D0(*v43, v43[1], v43[2], v43[3], v43[4]);

LABEL_63:
    v34 = &qword_1EC4C1B40;
    v35 = &unk_1CF9FCB70;
    v36 = &v4[v41];
LABEL_64:
    sub_1CEFCCC44(v36, v34, v35);
    return;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
    v22 = &v4[v21[16]];
    v24 = *v22;
    v23 = *(v22 + 1);
    v25 = *&v4[v21[20]];
    v26 = *v4;
    v27 = v4[8];
    MEMORY[0x1D386A470](4);
    if (v27)
    {
      if (v27 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v26);
      }

      else
      {
        if (v26)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        MEMORY[0x1D386A470](v32);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    v41 = v21[12];
    sub_1CF9E69C8();

    MEMORY[0x1D386A470](v25);
    goto LABEL_63;
  }

  v12 = *v4;
  v13 = v4[8];
  MEMORY[0x1D386A470](3);
  if (v13)
  {
    if (v13 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v12);
    }

    else
    {
      if (v12)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      MEMORY[0x1D386A470](v29);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v37 = *(v4 + 8);
  v38 = *(v4 + 9);
  v39 = *(v4 + 10);
  sub_1CF1D56D0(*(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6), *(v4 + 7));
}

void sub_1CF1CE0C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - v3;
  sub_1CEFCCBDC(v0, &v30 - v3, &unk_1EC4BFD70, &qword_1CFA12AC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v13 = *v4;
        MEMORY[0x1D386A470](8);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E69C8();

        return;
      }

      v10 = *v4;
      v11 = 7;
    }

    else
    {
      v10 = *v4;
      if (EnumCaseMultiPayload == 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 6;
      }
    }

    MEMORY[0x1D386A470](v11);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E69C8();
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      v12 = *v4;
      MEMORY[0x1D386A470](3);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      v26 = *(v4 + 13);
      v28 = *(v4 + 14);
      sub_1CF1D5750(*(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6), *(v4 + 7), *(v4 + 8), *(v4 + 9), *(v4 + 10), *(v4 + 11));
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
      v20 = v19[12];
      v21 = &v4[v19[16]];
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *&v4[v19[20]];
      v25 = *v4;
      MEMORY[0x1D386A470](4);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      sub_1CF9E69C8();

      MEMORY[0x1D386A470](v24);

      sub_1CEFCCC44(&v4[v20], &unk_1EC4BFBB0, &qword_1CF9FCB90);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
      v7 = v14[12];
      v15 = &v4[v14[20]];
      v16 = *&v4[v14[24]];
      v17 = *&v4[v14[28]];

      v18 = *v4;
      MEMORY[0x1D386A470](2);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      MEMORY[0x1D386A470](v16 & 0xFFFFFDFFFFFFBFFFLL);
      MEMORY[0x1D386A470](v17);

      v27 = v15[10];
      v29 = v15[11];
      sub_1CF1D5750(*v15, v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8]);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v7 = v6[12];
      v8 = *&v4[v6[16]];

      v9 = *v4;
      MEMORY[0x1D386A470](1);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      MEMORY[0x1D386A470](v8);
    }

    sub_1CEFCCC44(&v4[v7], &unk_1EC4BFBB0, &qword_1CF9FCB90);
  }
}

double sub_1CF1CE4A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CEFE4328(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CF1E0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1CEFE9EB8((*(v12 + 56) + 32 * v9), a3);
    sub_1CF1CEB88(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1CF1CE544@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CEFE4328(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CF52C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_1CF1CED38(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1CF9F4E20;
  }

  return result;
}

double sub_1CF1CE5F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1CEFE863C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CF82C();
      v11 = v13;
    }

    sub_1CEFE9EB8((*(v11 + 56) + 32 * v8), a2);
    sub_1CF1CEEE8(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1CF1CE694@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CF7BF2C0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CFE1C();
      v12 = v19;
    }

    v13 = *(v12 + 56) + 32 * v9;
    v14 = *v13;
    v15 = *(v13 + 8);
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 16) = v17;
    *(a3 + 24) = v16;
    sub_1CF1CF3E0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CF1CE738(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1CF7BF2C0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7CFFA8();
    v10 = v14;
  }

  v11 = v7;
  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1CF1CF5D4(v11, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1CF1CE7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CEFE4328(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7D0464();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1CF9E5A58();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1CF1CF978(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1CF9E5A58();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1CF1CE930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1CEFE863C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D20D0();
    v9 = v15;
  }

  v10 = (*(v9 + 56) + 24 * v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  sub_1CF1CFF30(v6, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1CF1CE9E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1CF7BF520(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D4234();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCC44(v10 + *(*(v11 - 8) + 72) * v6, &unk_1EC4BF650, &unk_1CF9FCB40);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1CF1D0920(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1CF1CEABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1CEFE863C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D4DB4();
    v9 = v16;
  }

  v10 = *(v9 + 56) + 32 * v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  sub_1CF1D1178(v6, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1CF1CEB88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v14 = sub_1CF9E8228();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1CF1CED38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1CEEE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v12 = v11;
      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1CF1CF0B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1CF9E81D8();
      sub_1CF9E69C8();

      result = sub_1CF9E8228();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SyncState() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}