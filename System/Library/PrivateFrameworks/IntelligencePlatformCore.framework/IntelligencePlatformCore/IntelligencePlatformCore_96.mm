uint64_t sub_1C4C8E0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v41 = a1;
  v42 = a2;
  v51 = sub_1C4EFF0C8();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C4EFB258();
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C4EFB768();
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a4 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v35 = a3;
    v36 = v5;
    v37 = a5;
    *&v49[0] = MEMORY[0x1E69E7CC0];
    sub_1C459F110();
    v21 = *&v49[0];
    v22 = v10 + 16;
    v23 = *(v10 + 16);
    v24 = a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v45 = *(v10 + 72);
    v46 = v23;
    v43 = v13 + 32;
    v44 = (v10 + 8);
    v25 = v13;
    do
    {
      v26 = v48;
      v27 = v51;
      v28 = v22;
      v46(v48, v24, v51);
      sub_1C4EFF058();
      (*v44)(v26, v27);
      *&v49[0] = v21;
      v29 = *(v21 + 16);
      if (v29 >= *(v21 + 24) >> 1)
      {
        sub_1C459F110();
        v21 = *&v49[0];
      }

      *(v21 + 16) = v29 + 1;
      (*(v25 + 32))(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v29, v16, v47);
      v24 += v45;
      --v20;
      v22 = v28;
    }

    while (v20);
    v6 = v36;
    v30 = v37;
  }

  else
  {
    v30 = a5;
  }

  sub_1C4EFBC58();
  *&v49[0] = v21;
  sub_1C456902C(&qword_1EC0C54B8, &qword_1C4F61618);
  sub_1C4A54BDC(&qword_1EDDDBD60, &qword_1EC0C54B8, &qword_1C4F61618);
  v31 = v38;
  sub_1C4EFB798();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v32 = sub_1C4EFBC18();
  if (v6)
  {
    sub_1C4423A0C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v39 + 8))(v31, v40);
  }

  else
  {
    v34 = v32;
    sub_1C4423A0C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = (*(v39 + 8))(v31, v40);
    *v30 = v34;
  }

  return result;
}

uint64_t sub_1C4C8E534(unint64_t *a1, void (*a2)(uint64_t))
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

void static ViewOrchestrationSystem.start(viewUpdateRunnerProvider:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FCED0();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "ViewOrchestrationSystem: starting...", v7, 2u);
    sub_1C43FBE2C();
  }

  static Configuration.biomed.getter();
  v30[0] = 0;
  if ([objc_opt_self() setFileLimitWithError_])
  {
    v8 = v30[0];
  }

  else
  {
    v9 = v30[0];
    v10 = sub_1C4EF97A8();

    swift_willThrow();
    v11 = v10;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CF8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1C43F8000, v12, v13, "ViewOrchestrationSystem: Error setting file limit: %@", v14, 0xCu);
      sub_1C45B4B90(v15);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  static ViewUpdate.GenerationRunnerSingleton.setProvider(for:viewUpdateRunnerProvider:)(a2, a1);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4408064(&dword_1C43F8000, v20, v21, "ViewOrchestrationSystem: running storage cleanup");
    sub_1C43FBE2C();
  }

  sub_1C4D61780(a2);
  sub_1C4D62120(a2);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4408064(&dword_1C43F8000, v24, v25, "ViewOrchestrationSystem: registering scheduled tasks");
    sub_1C43FBE2C();
  }

  sub_1C4AEA7A0();
  sub_1C4A4CCC0(a2);
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CF8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_1C43FCED0();
    *v28 = 0;
    _os_log_impl(&dword_1C43F8000, v26, v27, "ViewOrchestrationSystem: starting XPC", v28, 2u);
    sub_1C43FBE2C();
  }

  type metadata accessor for ViewXPC();
  sub_1C4D20970(a2);
  type metadata accessor for CoordinationXPC();
  sub_1C469C4E8(a2);
  type metadata accessor for InternalBiomeXPC();
  sub_1C4959ACC(a2);
  v29 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1C4C8E964()
{
  result = qword_1EC0C54C0;
  if (!qword_1EC0C54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewOrchestrationSystem(_BYTE *result, int a2, int a3)
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

void sub_1C4C8EA64()
{
  sub_1C43FBD3C();
  v85 = sub_1C4EF98F8();
  v0 = sub_1C43FCDF8(v85);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v84 = v6 - v5;
  v7 = sub_1C456902C(&dword_1EC0C4518, &unk_1C4F628C0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80[-v11];
  v95 = _s10ViewConfigVMa(0);
  v13 = sub_1C43FCDF8(v95);
  v81 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v90 = (v17 - v18);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  sub_1C43FCE30(v21);
  v89 = _s15ConfigReferenceOMa(0);
  v22 = sub_1C43FCDF8(v89);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v88 = v27 - v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v91 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80[-v32];
  sub_1C4C91D3C();
  v35 = 0;
  v94 = v34[2];
  v83 = v2 + 32;
  v82 = v2 + 8;
  v86 = MEMORY[0x1E69E7CC0];
  *&v36 = 136315394;
  v87 = v36;
  v92 = v24;
  v93 = v34;
  while (v94 != v35)
  {
    if (v35 >= v34[2])
    {
      __break(1u);
      goto LABEL_26;
    }

    v37 = *(v24 + 80);
    sub_1C43FC354();
    v38 = *(v24 + 72);
    sub_1C44113EC();
    sub_1C45097F0();
    sub_1C4C907BC();
    if (v39 >> 60 == 15)
    {
      v40 = 1;
    }

    else
    {
      sub_1C442A778();
      v41 = objc_autoreleasePoolPush();
      v42 = sub_1C4EF9348();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      sub_1C4EF9338();
      sub_1C44902F4(&qword_1EDDFF5F0);
      sub_1C44099B8();
      sub_1C4EF9328();

      objc_autoreleasePoolPop(v41);
      v45 = sub_1C43FD024();
      sub_1C441DFEC(v45, v46);
      v40 = 0;
      v24 = v92;
    }

    v47 = v95;
    sub_1C440BAA8(v12, v40, 1, v95);
    sub_1C445009C();
    sub_1C443C22C(v33, v48);
    if (sub_1C44157D4(v12, 1, v47) == 1)
    {
      sub_1C4420C3C(v12, &dword_1EC0C4518, &unk_1C4F628C0);
      ++v35;
      v34 = v93;
    }

    else
    {
      sub_1C4CA9CF8();
      sub_1C4CA9CF8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E0C8(0, *(v86 + 16) + 1, 1, v86);
        v86 = v54;
      }

      v50 = *(v86 + 16);
      v49 = *(v86 + 24);
      if (v50 >= v49 >> 1)
      {
        v55 = sub_1C43FCFE8(v49);
        sub_1C458E0C8(v55, v50 + 1, 1, v86);
        v86 = v56;
      }

      ++v35;
      *(v86 + 16) = v50 + 1;
      v51 = *(v81 + 80);
      sub_1C43FC354();
      v53 = *(v52 + 72);
      sub_1C440B6DC();
      sub_1C4CA9CF8();
      v34 = v93;
    }
  }

  if (qword_1EDDFECD0 == -1)
  {
    goto LABEL_15;
  }

LABEL_26:
  sub_1C4400FC0();
  swift_once();
LABEL_15:
  v57 = sub_1C4F00978();
  sub_1C43FCEE8(v57, qword_1EDE2DF70);
  v58 = v86;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v59 = sub_1C4F00968();
  v60 = sub_1C4F01CB8();
  if (os_log_type_enabled(v59, v60))
  {
    sub_1C440F274();
    v61 = sub_1C440E550();
    v97 = v61;
    dword_1EC0C4518 = 134218242;
    *algn_1EC0C451C = *(v58 + 16);

    word_1EC0C4524 = 2080;
    v62 = *(v58 + 16);
    v63 = MEMORY[0x1E69E7CC0];
    if (v62)
    {
      v93 = v61;
      LODWORD(v94) = v60;
      v95 = v59;
      v96 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v63 = v96;
      v64 = *(v81 + 80);
      sub_1C43FC354();
      v66 = v58 + v65;
      v68 = *(v67 + 72);
      do
      {
        sub_1C440B6DC();
        v69 = v90;
        sub_1C45097F0();
        v71 = *v69;
        v70 = v69[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4408084();
        sub_1C443C22C(v69, v72);
        v96 = v63;
        v74 = *(v63 + 16);
        v73 = *(v63 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1C43FCFE8(v73);
          sub_1C44CD9C0();
          v63 = v96;
        }

        *(v63 + 16) = v74 + 1;
        v75 = v63 + 16 * v74;
        *(v75 + 32) = v71;
        *(v75 + 40) = v70;
        v66 += v68;
        --v62;
      }

      while (v62);
      v59 = v95;
      LOBYTE(v60) = v94;
      v61 = v93;
    }

    v96 = v63;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44ECB2C(&v96);

    v76 = MEMORY[0x1C6940380](v96, MEMORY[0x1E69E6158]);
    v78 = v77;

    v79 = sub_1C441D828(v76, v78, &v97);

    *algn_1EC0C4526 = v79;
    _os_log_impl(&dword_1C43F8000, v59, v60, "Found %ld view configs: %s", &dword_1EC0C4518, 0x16u);
    sub_1C440962C(v61);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FE9F0();
}

void sub_1C4C8F3A8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v205 = v3;
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  sub_1C43FCE30(v8);
  v203 = _s6ConfigVMa();
  v9 = sub_1C43FBCE0(v203);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FCE30(v13 - v12);
  v14 = _s10ViewConfigVMa(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v174 - v23);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  v32 = *(v2 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v178 = v32;
  v204 = v0;
  if (v32)
  {
    v209[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v33 = v209[0];
    v34 = *(v15 + 80);
    sub_1C43FC354();
    v201 = v2;
    v36 = v2 + v35;
    v37 = *(v15 + 72);
    v38 = v32;
    do
    {
      sub_1C440B6DC();
      sub_1C45097F0();
      v39 = *v24;
      v40 = v24[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4408084();
      sub_1C443C22C(v24, v41);
      v209[0] = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C43FCFE8(v42);
        sub_1C44CD9C0();
        v33 = v209[0];
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      v36 += v37;
      --v38;
    }

    while (v38);
    v32 = v178;
    v0 = v204;
    v2 = v201;
  }

  sub_1C4499940(v33, v25, v26, v27, v28, v29, v30, v31, v174, v175, v176, v177, v178, v179, v180, v181, v182, *(&v182 + 1), v183, v184, v185, *(&v185 + 1));
  v46 = v45;
  if (!v32)
  {
LABEL_147:

    goto LABEL_148;
  }

  v47 = *(v15 + 80);
  sub_1C43FC354();
  v49 = v2 + v48;
  v186 = *(v15 + 72);
  v50 = MEMORY[0x1E69E7CC8];
  v175 = v2 + v48;
  v51 = v32;
  v196 = v46;
  do
  {
    sub_1C440B6DC();
    sub_1C45097F0();
    v52 = v202;
    sub_1C4438D00(v202);
    sub_1C4459C44();
    v54 = *(v52 + *(v53 + 48));
    sub_1C443C22C(v52, _s6ConfigVMa);
    v55 = *v0;
    v56 = v0[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v209[0] = v50;
    sub_1C457B5F8();
    v57 = *(v50 + 16);
    sub_1C440E4D8();
    if (v60)
    {
      goto LABEL_153;
    }

    v61 = v58;
    v62 = v59;
    sub_1C456902C(&qword_1EC0C5760, &qword_1C4F628B0);
    v63 = sub_1C4F02458();
    v50 = v209[0];
    v190 = v209[0];
    if ((v63 & 1) == 0)
    {
      v66 = v196;
      if (v62)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_1C457E51C(v61, v54 & 1, MEMORY[0x1E69E7CD0], v50);
      goto LABEL_16;
    }

    v64 = sub_1C457B5F8();
    v66 = v196;
    if ((v62 & 1) != (v65 & 1))
    {
      goto LABEL_154;
    }

    v61 = v64;
    v50 = v190;
    if ((v62 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_16:
    v67 = *(v50 + 56) + 8 * v61;
    sub_1C44869B4(v209, v55, v56);

    sub_1C4408084();
    v0 = v204;
    sub_1C443C22C(v204, v68);
    v49 += v186;
    --v51;
  }

  while (v51);
  v198 = v66 + 56;
  v180 = 0x80000001C4F862C0;
  v179 = 0x80000001C4F86260;
  v194 = 1;
  p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
  *&v69 = 136315138;
  v195 = v69;
  v71 = 56;
  *&v69 = 136315394;
  v185 = v69;
  *&v69 = 136315650;
  v182 = v69;
  sub_1C4495D88();
  sub_1C4CB0368();
  while (1)
  {
    v181 = v72;
    sub_1C440B6DC();
    sub_1C45097F0();
    if (p_info[410] != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v73 = sub_1C4F00978();
    sub_1C43FCEE8(v73, qword_1EDE2DF70);
    sub_1C440B6DC();
    sub_1C4CB04B8(&v201);
    v197 = p_info;
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v75))
    {
      v76 = sub_1C43FD084();
      v77 = sub_1C43FFD34();
      *v76 = sub_1C44569CC(v77).n128_u32[0];
      v78 = *v51;
      v79 = *(v51 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4408084();
      sub_1C443C22C(v51, v80);
      v81 = sub_1C441D828(v78, v79, v209);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_1C43F8000, v74, v75, "Validating view configuration for %s", v76, 0xCu);
      sub_1C440962C(v77);
      v71 = 56;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4408084();
      sub_1C443C22C(v51, v82);
    }

    ++v181;
    sub_1C4CB0368();
    while (2)
    {
      v84 = &unk_1F43D2FB8 + v83++;
      switch(v84[32])
      {
        case 1:
          v183 = v83;
          if (*(v51 + 232))
          {
            v51 = *(v51 + 232);
          }

          else
          {
            v51 = MEMORY[0x1E69E7CC0];
          }

          v189 = *(v51 + 16);
          if (!v189)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            goto LABEL_134;
          }

          v188 = (v51 + 32);
          v187 = v51;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v85 = v187;
          v86 = 0;
          while (1)
          {
            if (v86 >= *(v85 + 16))
            {
              __break(1u);
              goto LABEL_152;
            }

            v87 = &v188[6 * v86];
            v88 = v87[2];
            v89 = *(v88 + 16);
            if (!v89)
            {
              goto LABEL_64;
            }

            v193 = v86;
            v200 = v89;
            v90 = v87[1];
            v91 = v87[4];
            v203 = v88 + 32;
            v191 = v91;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v192 = v90;
            v51 = v200;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v92 = 0;
            LODWORD(v202) = 1;
            v93 = v51;
            v199 = v88;
            while (1)
            {
              if (v92 >= v93)
              {
                __break(1u);
                goto LABEL_147;
              }

              sub_1C4459C44();
              v96 = (v94 + v95 * v71);
              v97 = *v96;
              v98 = v96[1];
              v100 = v96[3];
              v99 = v96[4];
              v74 = v96[6];
              v204 = (v95 + 1);
              if (v98)
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                swift_bridgeObjectRetain_n();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4EFD2E8();
                v101 = sub_1C4EFD548();
                if (sub_1C44157D4(v54, 1, v101) == 1)
                {

                  sub_1C4420C3C(v54, &qword_1EC0B8568, &unk_1C4F319B0);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v74 = sub_1C4CB04A0();
                  v102 = sub_1C4F01CE8();

                  if (os_log_type_enabled(v74, v102))
                  {
                    v103 = sub_1C43FD084();
                    v104 = sub_1C43FFD34();
                    *v103 = sub_1C44569CC(v104).n128_u32[0];
                    v105 = sub_1C441D828(v97, v98, v209);

                    *(v103 + 4) = v105;
                    _os_log_impl(&dword_1C43F8000, v74, v102, "Entity type %s is not a valid entity class", v103, 0xCu);
                    sub_1C440962C(v104);
                    sub_1C43FBE2C();
                    v88 = v199;
                    sub_1C43FBE2C();
                  }

                  else
                  {
                  }

                  sub_1C44562F0();
                  if (v126)
                  {

                    goto LABEL_62;
                  }

                  LODWORD(v202) = 0;
                  goto LABEL_58;
                }

                sub_1C4420C3C(v54, &qword_1EC0B8568, &unk_1C4F319B0);
                if (!v100)
                {
LABEL_49:

                  goto LABEL_52;
                }
              }

              else
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                if (!v100)
                {
                  goto LABEL_49;
                }
              }

              v106 = *(v100 + 16);
              if (v106)
              {
                break;
              }

LABEL_51:
              v51 = v200;
LABEL_52:

              sub_1C44562F0();
              if (v126)
              {

                v85 = sub_1C445BB3C();
                if ((v202 & 1) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_64;
              }

LABEL_58:
              v93 = *(v88 + 16);
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v54 = 0;
            v107 = -v106;
            v108 = v100 + 40;
            v201 = v100 + 40;
            do
            {
              v71 = v108 + 16 * v54++;
              while (1)
              {
                v110 = *(v71 - 8);
                v109 = *v71;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v66 = sub_1C4CC9E44(v110, v109, v97, v98, v205);

                if ((v66 & 1) == 0)
                {
                  break;
                }

                ++v54;
                v71 += 16;
                if (v107 + v54 == 1)
                {
                  swift_bridgeObjectRelease_n();
                  sub_1C4401F30();
                  v88 = v199;
                  goto LABEL_51;
                }
              }

              LODWORD(v202) = 0;
              sub_1C4428EF4();
            }

            while (v111);
            swift_bridgeObjectRelease_n();

            v51 = v200;
            sub_1C44562F0();
            if (!v126)
            {
              LODWORD(v202) = 0;
              sub_1C4401F30();
              v88 = v199;
              goto LABEL_58;
            }

            sub_1C4401F30();
LABEL_62:

            sub_1C445BB3C();
LABEL_63:
            sub_1C4CB0420();
LABEL_64:
            if (++v86 == v189)
            {
              goto LABEL_134;
            }
          }

        case 2:
          v156 = v83;
          if (*(v51 + 256))
          {
            v74 = *(v51 + 256);
          }

          else
          {
            v74 = MEMORY[0x1E69E7CC0];
          }

          v54 = *(v74 + 16);
          if (!v54)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            sub_1C4495D88();
            sub_1C4CB0368();
            goto LABEL_142;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v157 = 0;
          v158 = 32;
          v51 = 0xEB00000000737275;
          while (2)
          {
            if (v157 < *(v74 + 16))
            {
              v157 = (v157 + 1);
              switch(*(v74 + v158))
              {
                case 1:

                  goto LABEL_137;
                case 3:
                  v159 = &v203;
                  goto LABEL_124;
                case 5:
                  sub_1C43FE694();
                  break;
                case 6:
                case 8:
                  sub_1C4428E78();
                  break;
                case 9:
                  sub_1C43FE694();
                  break;
                case 0xA:
                  v159 = &v204;
LABEL_124:
                  v160 = *(v159 - 32);
                  break;
                default:
                  break;
              }

              v161 = sub_1C44257B8();

              if ((v161 & 1) == 0)
              {
                v158 += 5;
                if (v54 == v157)
                {

                  sub_1C4495D88();
                  goto LABEL_141;
                }

                continue;
              }

LABEL_137:

              sub_1C440B6DC();
              sub_1C4CB04B8(&v200);
              v74 = sub_1C4CB04A0();
              v162 = sub_1C4F01CE8();
              sub_1C43FEB2C(v162);
              sub_1C4495D88();
              if (v163)
              {
                v164 = sub_1C43FD084();
                v165 = sub_1C43FFD34();
                *v164 = sub_1C44569CC(v165).n128_u32[0];
                v166 = MEMORY[0xEB00000000737275];
                v167 = MEMORY[0xEB0000000073727D];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4408084();
                sub_1C443C22C(0xEB00000000737275, v168);
                v169 = sub_1C441D828(v166, v167, v209);

                *(v164 + 4) = v169;
                _os_log_impl(&dword_1C43F8000, v74, v162, "%s: Cannot contain always update listeners with schedule 'none'", v164, 0xCu);
                sub_1C440962C(v165);
                sub_1C43FBE2C();
                sub_1C43FBE2C();
              }

              else
              {

                sub_1C4408084();
                sub_1C443C22C(0xEB00000000737275, v170);
              }

              sub_1C4CB0420();
LABEL_141:
              sub_1C4CB0368();
              v71 = 56;
LABEL_142:
              v83 = v156;
              goto LABEL_143;
            }

            break;
          }

LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          sub_1C4F029F8();
          __break(1u);
          return;
        case 4:
          v183 = v83;
          if (*(v51 + 264))
          {
            v112 = *(v51 + 264);
          }

          else
          {
            v112 = MEMORY[0x1E69E7CC0];
          }

          v113 = *(v112 + 16);
          if (v113)
          {
            v204 = (v112 + 32);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v114 = 0;
            v115 = v113;
            v201 = v112;
            v203 = v113;
            while (v114 < v115)
            {
              v116 = v204 + v114 * v71;
              v118 = *(v116 + 1);
              v117 = *(v116 + 2);
              v119 = *(v116 + 12);
              v211 = *v116;
              v212 = v118;
              v214 = v119;
              v213 = v117;
              v121 = *(&v211 + 1);
              v120 = v118;
              if (*(v66 + 16))
              {
                v122 = *(v66 + 40);
                sub_1C4F02AF8();
                sub_1C47F5DBC(&v211, v206);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4F01298();
                v123 = sub_1C4F02B68();
                v51 = ~(-1 << *(v66 + 32));
                do
                {
                  v124 = v123 & v51;
                  if (((*(v198 + (((v123 & v51) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v123 & v51)) & 1) == 0)
                  {

                    goto LABEL_96;
                  }

                  v125 = (*(v66 + 48) + 16 * v124);
                  v126 = *v125 == v121 && v125[1] == v120;
                  if (v126)
                  {
                    break;
                  }

                  v127 = sub_1C4F02938();
                  v123 = v124 + 1;
                }

                while ((v127 & 1) == 0);

                v54 = BYTE8(v212);
                v128 = v190;
                if (*(v190 + 16) && (v129 = sub_1C457B5F8(), (v130 & 1) != 0))
                {
                  v113 = *(*(v128 + 56) + 8 * v129);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                }

                else
                {
                  v113 = MEMORY[0x1E69E7CD0];
                }

                if (*(v113 + 16))
                {
                  v131 = *(v113 + 40);
                  sub_1C4F02AF8();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F01298();
                  v132 = sub_1C4F02B68();
                  v51 = v113 + 56;
                  v74 = ~(-1 << *(v113 + 32));
                  while (1)
                  {
                    v133 = v132 & v74;
                    if (((*(v51 + (((v132 & v74) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v132 & v74)) & 1) == 0)
                    {
                      break;
                    }

                    v134 = (*(v113 + 48) + 16 * v133);
                    if (*v134 != v121 || v134[1] != v120)
                    {
                      v136 = sub_1C4F02938();
                      v132 = v133 + 1;
                      if ((v136 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    sub_1C47F5E18(&v211);

                    goto LABEL_112;
                  }
                }

                sub_1C440B6DC();
                sub_1C4CB04B8(&v207);
                sub_1C47F5DBC(&v211, v209);
                v74 = sub_1C4CB04A0();
                v145 = sub_1C4F01CE8();
                sub_1C47F5E18(&v211);
                if (os_log_type_enabled(v74, v145))
                {
                  v113 = sub_1C43FFD34();
                  v202 = swift_slowAlloc();
                  v209[0] = v202;
                  sub_1C4488A8C(v206);
                  sub_1C4408084();
                  sub_1C443C22C(v51, v146);
                  v147 = sub_1C441D828(v112, v66, v209);

                  *(v113 + 4) = v147;
                  v51 = 2080;
                  *(v113 + 12) = 2080;
                  if (v54)
                  {
                    v148 = 0x4F64657461647075;
                  }

                  else
                  {
                    v148 = 0x6E61684377656976;
                  }

                  if (v54)
                  {
                    v149 = 0xED00007463656A62;
                  }

                  else
                  {
                    v149 = 0xEB00000000646567;
                  }

                  v150 = sub_1C441D828(v148, v149, v209);
                  v112 = v201;

                  *(v113 + 14) = v150;
                  v66 = v196;
                  *(v113 + 22) = 2080;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C47F5E18(&v211);
                  v151 = sub_1C43FE5F8();
                  v154 = sub_1C441D828(v151, v152, v153);

                  *(v113 + 24) = v154;
                  _os_log_impl(&dword_1C43F8000, v74, v145, "%s: the diff type %s does not match for view %s", v113, 0x20u);
                  sub_1C440EE84();
                  swift_arrayDestroy();
                  sub_1C43FBE2C();
                  sub_1C43FBE2C();
                }

                else
                {
                  sub_1C47F5E18(&v211);

                  sub_1C4408084();
                  sub_1C443C22C(v51, v155);
                }

                sub_1C4CB0420();
LABEL_112:
                sub_1C4495D88();
                sub_1C441EE54();
              }

              else
              {
                sub_1C47F5DBC(&v211, v209);
LABEL_96:
                sub_1C440B6DC();
                sub_1C4CB04B8(&v210);
                sub_1C47F5DBC(&v211, v209);
                v74 = sub_1C4CB04A0();
                v137 = sub_1C4F01CE8();
                sub_1C47F5E18(&v211);
                if (os_log_type_enabled(v74, v137))
                {
                  v113 = sub_1C440F274();
                  v202 = swift_slowAlloc();
                  v209[0] = v202;
                  sub_1C4488A8C(&v208);
                  sub_1C4408084();
                  sub_1C443C22C(v51, v138);
                  v139 = sub_1C441D828(v112, v66, v209);
                  v66 = v196;

                  *(v113 + 4) = v139;
                  v112 = v201;
                  *(v113 + 12) = 2080;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C47F5E18(&v211);
                  v140 = sub_1C43FE5F8();
                  v143 = sub_1C441D828(v140, v141, v142);

                  *(v113 + 14) = v143;
                  _os_log_impl(&dword_1C43F8000, v74, v137, "%s: Refers to a view %s that does not exist", v113, 0x16u);
                  sub_1C440EE84();
                  swift_arrayDestroy();
                  sub_1C43FBE2C();
                  sub_1C441EE54();
                  sub_1C43FBE2C();
                }

                else
                {
                  sub_1C47F5E18(&v211);

                  sub_1C4408084();
                  sub_1C443C22C(v51, v144);
                }

                sub_1C4CB0420();
              }

              ++v114;
              v71 = 56;
              if (v114 == v113)
              {
                goto LABEL_134;
              }

              v115 = *(v112 + 16);
            }

            __break(1u);
LABEL_150:

LABEL_148:
            sub_1C43FE9F0();
            return;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_134:

          sub_1C4CB0368();
          v83 = v183;
LABEL_143:
          if (v83 != 8)
          {
            continue;
          }

          sub_1C4CA6478();
          v171 = sub_1C4406834();
          v172 = sub_1C4CA6828(v171);
          sub_1C4408084();
          sub_1C443C22C(v51, v173);
          v194 &= v172 & v74;
          v72 = v181;
          p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
          if (v181 == v178)
          {
            goto LABEL_150;
          }

          break;
        default:
          goto LABEL_143;
      }

      break;
    }
  }
}

uint64_t sub_1C4C9076C(char a1)
{
  if (!a1)
  {
    return 0x796C6B656577;
  }

  if (a1 == 1)
  {
    return 0x796C68746E6F6DLL;
  }

  return 0x6C61756E6E61;
}

void sub_1C4C907BC()
{
  sub_1C43FBD3C();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBD08();
  v100 = (v6 - v7);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v96 - v9;
  v11 = sub_1C4F01188();
  v12 = sub_1C43FCDF8(v11);
  v98 = v13;
  v99 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v97 = v17;
  sub_1C43FBE44();
  v101 = sub_1C4EFA728();
  v18 = sub_1C43FCDF8(v101);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v96 = v27;
  v28 = sub_1C43FBE44();
  v29 = _s15ConfigReferenceOMa(v28);
  v30 = sub_1C43FBCE0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v35 = (v34 - v33);
  sub_1C44113EC();
  sub_1C45097F0();
  sub_1C43FE5F8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    v29 = v35[1];
    sub_1C4EFA598();
    v3 = sub_1C4EFA508();
    v37 = 0;
    v10 = *(v3 + 16);
    v0 = v20 + 16;
    v100 = (v20 + 8);
    v38 = v101;
    while (v10 != v37)
    {
      if (v37 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v39 = *(v20 + 80);
      sub_1C43FC354();
      (*(v20 + 16))(v25, v3 + v40 + *(v20 + 72) * v37, v38);
      if (sub_1C4EFA708() == v36 && v41 == v29)
      {
        v43 = v36;
        v44 = v29;

LABEL_21:

        v75 = v96;
        (*(v20 + 32))(v96, v25, v101);
        sub_1C4EFA718();
        sub_1C44106D4();
        v76 = v97;
        sub_1C4F01178();
        sub_1C4F01148();
        v78 = v77;

        (*(v98 + 8))(v76, v99);
        if (v78 >> 60 == 15)
        {
          if (qword_1EDDFECD0 != -1)
          {
            sub_1C4400FC0();
            swift_once();
          }

          v79 = sub_1C4F00978();
          sub_1C43FCEE8(v79, qword_1EDE2DF70);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v80 = sub_1C4F00968();
          v81 = sub_1C4F01CD8();

          if (os_log_type_enabled(v80, v81))
          {
            sub_1C43FD084();
            v82 = sub_1C440E550();
            v102 = v82;
            *v29 = 136315138;
            v83 = v75;
            v84 = sub_1C441D828(v43, v44, &v102);

            *(v29 + 4) = v84;
            sub_1C4404B90();
            _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
            sub_1C440962C(v82);
            sub_1C43FBE2C();
            sub_1C43FEA20();

            (*v100)(v83, v101);
          }

          else
          {

            (*v100)(v75, v101);
          }
        }

        else
        {
          v90 = *v100;
          v91 = sub_1C43FD024();
          v92(v91);
        }

        goto LABEL_31;
      }

      v43 = v36;
      v44 = v29;
      v29 = sub_1C4F02938();

      if (v29)
      {
        goto LABEL_21;
      }

      v38 = v101;
      (*v100)(v25, v101);
      ++v37;
      v29 = v44;
      v36 = v43;
    }

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v62 = sub_1C4F00978();
    sub_1C43FCEE8(v62, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CD8();

    if (os_log_type_enabled(v63, v64))
    {
      sub_1C43FD084();
      v65 = sub_1C440E550();
      v102 = v65;
      *v29 = 136315138;
      v66 = sub_1C43FD024();
      v69 = sub_1C441D828(v66, v67, v68);

      *(v29 + 4) = v69;
      sub_1C4404B90();
      _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
      sub_1C440962C(v65);
      sub_1C43FBE2C();
      sub_1C43FEA20();
    }

    else
    {
    }
  }

  else
  {
    (*(v3 + 32))(v10, v35, v0);
    sub_1C4F01178();
    sub_1C4F010D8();
    sub_1C44106D4();
    v45 = v97;
    sub_1C4F01178();
    sub_1C4F01148();
    v47 = v46;

    (*(v98 + 8))(v45, v99);
    if (v47 >> 60 == 15)
    {
      if (qword_1EDDFECD0 != -1)
      {
LABEL_33:
        sub_1C4400FC0();
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C43FCEE8(v48, qword_1EDE2DF70);
      v49 = v100;
      (*(v3 + 16))(v100, v10, v0);
      v50 = sub_1C4F00968();
      v51 = sub_1C4F01CD8();
      if (os_log_type_enabled(v50, v51))
      {
        sub_1C43FD084();
        v52 = sub_1C440E550();
        v102 = v52;
        *v29 = 136315138;
        sub_1C4415D74();
        sub_1C44902F4(v53);
        sub_1C4F02858();
        v54 = *(v3 + 8);
        (v54)(v49, v0);
        v55 = sub_1C442A90C();
        v58 = sub_1C441D828(v55, v56, v57);

        *(v29 + 4) = v58;
        _os_log_impl(&dword_1C43F8000, v50, v51, "ViewMigration: Failed to retrieve contents of config for %s", v29, 0xCu);
        sub_1C440962C(v52);
        sub_1C43FBE2C();
        sub_1C43FEA20();

        v59 = sub_1C43FD024();
        v54(v59);
      }

      else
      {

        v60 = *(v3 + 8);
        (v60)(v49, v0);
        v61 = sub_1C43FD024();
        v60(v61);
      }
    }

    else
    {
      v93 = *(v3 + 8);
      v94 = sub_1C43FD024();
      v95(v94);
    }
  }

LABEL_31:
  sub_1C442A90C();
  sub_1C43FE9F0();
}

void sub_1C4C90FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v25;
  a20 = v26;
  v27 = v22;
  v29 = v28;
  v30 = sub_1C4EF9CD8();
  v31 = sub_1C43FFAE0(v30, &a10);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  sub_1C43FCE30(v35 - v34);
  v36 = 0;
  v147 = v29;
  while (2)
  {
    v144 = v36 + 1;
    switch(*(&unk_1F43D2FB8 + v36 + 32))
    {
      case 1:
        sub_1C4459C44();
        v38 = *(v37 + 232);
        if (!v38)
        {
          goto LABEL_48;
        }

        v20 = 0;
        v137 = *(v38 + 16);
        v39 = (v38 + 32);
        for (i = *(v37 + 232); ; v38 = i)
        {
          if (v137 == v20)
          {
            goto LABEL_48;
          }

          if (v20 >= *(v38 + 16))
          {
            goto LABEL_64;
          }

          v41 = *v39;
          v40 = v39[1];
          *&v149[12] = *(v39 + 28);
          v148 = v41;
          *v149 = v40;
          sub_1C44885D0();
          v42 = *&v149[24];
          v43 = sub_1C4CB03BC();
          sub_1C47F5D0C(v43, v44);
          if (!sub_1C442F9B0().n128_u64[0])
          {
            goto LABEL_47;
          }

          sub_1C4459C44();
          v46 = *v45;
          v23 = v45[1];
          *&v149[8] = &unk_1F43D0FA8;
          *&v149[16] = sub_1C4CA7E60();
          sub_1C44180FC();
          v47 = swift_allocObject();
          v48 = sub_1C4488264(v47);
          v49 = sub_1C443E438(v48);
          *(v49 + 17) = v21 >> 8;
          *(v49 + 40) = v143;
          v50 = sub_1C442F9B0();
          *(v51 + 24) = v50;
          *(v51 + 56) = v42;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44106BC();
          sub_1C445FEFC();
          sub_1C43FBF44();
          sub_1C4BB6560();
          if (v22)
          {
            break;
          }

          v24 = v52;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BBF0C();
          sub_1C4EF9C88();
          sub_1C4EF9AD8();
          v53 = sub_1C441CF00();
          v54(v53);
          sub_1C44F19F4();
          sub_1C43FBF44();
          sub_1C4BB8B20();
          sub_1C43FBF44();
          sub_1C4BB6B24();
          sub_1C43FBF44();
          sub_1C4BB6B24();
          v27 = 0;

          sub_1C440962C(&v148);
          v39 += 3;
          ++v20;
        }

        goto LABEL_55;
      case 2:
        sub_1C4459C44();
        v73 = *(v72 + 256);
        if (!v73)
        {
          goto LABEL_48;
        }

        v23 = 0;
        *&v143 = *(v73 + 16);
        v24 = (v73 + 36);
        while (2)
        {
          if (v143 == v23)
          {
            goto LABEL_48;
          }

          if (v23 >= *(v73 + 16))
          {
            goto LABEL_59;
          }

          v74 = *v24;
          sub_1C4459C44();
          v21 = *v75;
          v76 = v75[1];
          v77 = sub_1C4CA7F2C();
          v78 = *(v24 - 1);
          *&v149[8] = &unk_1F4409820;
          *&v149[16] = v77;
          LODWORD(v148) = v78;
          BYTE4(v148) = v74;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C442F9B0();
          sub_1C440EE84();
          sub_1C445C248();
          sub_1C4BB6560();
          if (!v22)
          {
            sub_1C44BBF0C();
            sub_1C4EF9C88();
            sub_1C4EF9AD8();
            v79 = sub_1C441CF00();
            v80(v79);
            sub_1C44F19F4();
            sub_1C445C248();
            sub_1C4BB8B20();
            sub_1C4414C9C();
            sub_1C445C248();
            sub_1C4BB6B24();
            sub_1C4414C9C();
            v20 = v147;
            sub_1C445C248();
            sub_1C4BB6B24();
            v27 = 0;

            sub_1C440962C(&v148);
            v24 += 5;
            ++v23;
            continue;
          }

          goto LABEL_53;
        }

      case 3:
        sub_1C4459C44();
        v23 = *(v81 + 248);
        if (!v23)
        {
          goto LABEL_48;
        }

        v82 = 0;
        v139 = *(v23 + 16);
        v83 = (v23 + 32);
        v136 = *(v81 + 248);
LABEL_25:
        if (v139 == v82)
        {
          goto LABEL_48;
        }

        if (v82 >= *(v23 + 16))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          return;
        }

        v85 = v83[2];
        v84 = v83[3];
        v86 = v83[1];
        v148 = *v83;
        *v149 = v86;
        *&v149[16] = v85;
        v150 = v84;
        sub_1C44885D0();
        v87 = *&v149[24];
        v20 = *(&v150 + 1);
        v24 = v150;
        v88 = sub_1C4CB03BC();
        sub_1C445CD7C(v88, v89);
        if (!sub_1C442F9B0().n128_u64[1])
        {
LABEL_47:
          sub_1C445FEFC();
LABEL_48:
          v36 = v144;
          if (v144 == 8)
          {
LABEL_52:
            sub_1C4CB0374();

LABEL_56:

            goto LABEL_57;
          }

          continue;
        }

        v141 = v83;
        sub_1C4459C44();
        v91 = *v90;
        v92 = v90[1];
        *&v149[8] = &unk_1F4409938;
        *&v149[16] = sub_1C4CA7EB4();
        *&v148 = swift_allocObject();
        v93 = sub_1C443E438(v148);
        *(v93 + 17) = v21 >> 8;
        *(v93 + 40) = v143;
        v94 = sub_1C442F9B0();
        *(v95 + 24) = v94;
        *(v95 + 56) = v87;
        *(v95 + 64) = v24;
        *(v95 + 72) = v20;
        *(v95 + 16) = v21;
        v24 = (v95 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v22 = v27;
        sub_1C4BB6560();
        if (!v27)
        {
          MEMORY[0x1EEE9AC00](v96);
          v97 = *(v24 + 1);
          v151[0] = *v24;
          v151[1] = v97;
          v98 = *(v24 + 3);
          v151[2] = *(v24 + 2);
          v151[3] = v98;
          v21 = v151;
          v99 = sub_1C4CB0374();
          sub_1C4CC6544(v99, v100);

          sub_1C440962C(&v148);
          v83 = v141 + 4;
          ++v82;
          sub_1C445FEFC();
          v23 = v136;
          goto LABEL_25;
        }

LABEL_53:

        sub_1C440962C(&v148);
        sub_1C4CB0374();

LABEL_57:

        sub_1C44109F8();
        return;
      case 4:
        sub_1C4459C44();
        v56 = *(v55 + 264);
        if (!v56)
        {
          goto LABEL_48;
        }

        v20 = 0;
        v135 = *(v56 + 16);
        v57 = (v56 + 32);
        v133 = *(v55 + 264);
        while (2)
        {
          if (v135 == v20)
          {
            goto LABEL_48;
          }

          if (v20 >= *(v56 + 16))
          {
            goto LABEL_60;
          }

          v145 = v20;
          v58 = *(v57 + 12);
          v60 = v57[1];
          v59 = v57[2];
          v138 = v57;
          v148 = *v57;
          *v149 = v60;
          *&v149[16] = v59;
          LODWORD(v150) = v58;
          v23 = *(&v148 + 1);
          v21 = v148;
          v61 = *(&v60 + 1);
          v24 = v60;
          v62 = *(&v59 + 1);
          v20 = v59;
          v63 = sub_1C4CB03BC();
          sub_1C47F5DBC(v63, v64);
          if (!v24)
          {
            goto LABEL_47;
          }

          sub_1C4459C44();
          v66 = v65[1];
          *&v143 = *v65;
          *&v149[8] = &unk_1F4409540;
          *&v149[16] = sub_1C4CA7E0C();
          v67 = swift_allocObject();
          v68 = sub_1C4488264(v67);
          v69 = sub_1C443E438(v68);
          *(v69 + 17) = v21 >> 8;
          *(v69 + 24) = v23;
          *(v69 + 32) = v24;
          *(v69 + 40) = v61;
          *(v69 + 48) = v20;
          *(v69 + 56) = v62;
          *(v69 + 64) = v58;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44106BC();
          sub_1C445FEFC();
          sub_1C43FBF44();
          sub_1C4BB6560();
          if (!v22)
          {
            sub_1C44BBF0C();
            sub_1C4EF9C88();
            sub_1C4EF9AD8();
            v70 = sub_1C441CF00();
            v71(v70);
            sub_1C44F19F4();
            sub_1C43FBF44();
            sub_1C4BB8B20();
            sub_1C4436718();
            sub_1C442253C();
            sub_1C43FBF44();
            sub_1C4BB6B24();
            v27 = 0;

            sub_1C440962C(&v148);
            v57 = (v138 + 56);
            v20 = v145 + 1;
            v56 = v133;
            continue;
          }

          goto LABEL_51;
        }

      case 5:
        sub_1C4459C44();
        v111 = *(v110 + 272);
        if (!v111)
        {
          goto LABEL_48;
        }

        v20 = 0;
        v142 = *(v111 + 16);
        v140 = *(v110 + 272);
        while (2)
        {
          sub_1C44AB1C0();
          if (v102)
          {
            goto LABEL_48;
          }

          if (v20 >= *(v111 + 16))
          {
            goto LABEL_61;
          }

          v113 = v20;
          v114 = *(v112 + 28);
          v115 = v112[1];
          *&v143 = v112;
          v148 = *v112;
          *v149 = v115;
          *&v149[12] = v114;
          v23 = *(&v148 + 1);
          v21 = v148;
          v116 = *&v149[8];
          v24 = v115;
          v117 = v114 >> 32;
          v20 = HIDWORD(v114);
          v118 = sub_1C4CB03BC();
          sub_1C47F5E6C(v118, v119);
          if (!v24)
          {
            goto LABEL_47;
          }

          sub_1C4459C44();
          v121 = v120[1];
          v146 = *v120;
          *&v149[8] = &unk_1F44096F8;
          *&v149[16] = sub_1C4CA7DB8();
          sub_1C44180FC();
          v122 = swift_allocObject();
          *&v148 = v122;
          *(v122 + 16) = v21;
          *(v122 + 23) = HIBYTE(v21);
          *(v122 + 21) = HIDWORD(v21) >> 8;
          *(v122 + 17) = v21 >> 8;
          *(v122 + 24) = v23;
          *(v122 + 32) = v24;
          *(v122 + 40) = v116;
          *(v122 + 48) = v117;
          *(v122 + 56) = v20;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44106BC();
          sub_1C445FEFC();
          sub_1C43FBF44();
          sub_1C4BB6560();
          if (!v22)
          {
            sub_1C44BBF0C();
            sub_1C4EF9C88();
            sub_1C4EF9AD8();
            v123 = sub_1C441CF00();
            v124(v123);
            sub_1C44F19F4();
            sub_1C43FBF44();
            sub_1C4BB8B20();
            sub_1C4436718();
            sub_1C442253C();
            sub_1C43FBF44();
            sub_1C4BB6B24();
            v27 = 0;

            sub_1C440962C(&v148);
            v20 = v113 + 1;
            v111 = v140;
            continue;
          }

          break;
        }

LABEL_51:

        sub_1C440962C(&v148);
        goto LABEL_52;
      case 6:
        sub_1C4459C44();
        v22 = *(v125 + 240);
        if (!v22)
        {
          goto LABEL_48;
        }

        sub_1C44754E4();
        sub_1C44AB1C0();
        if (v102)
        {
          goto LABEL_48;
        }

        if (v20 >= *(v22 + 16))
        {
          goto LABEL_63;
        }

        sub_1C4CB0480();
        if (!v23)
        {
          goto LABEL_48;
        }

        sub_1C4459C44();
        v128 = *v126;
        v127 = v126[1];
        *&v149[8] = &unk_1F4409790;
        *&v149[16] = sub_1C4CA7D64();
        v129 = swift_allocObject();
        v130 = sub_1C4488264(v129);
        *(v130 + 24) = v24;
        *(v130 + 32) = v23;
        v131 = sub_1C442F9B0().n128_u64[0];
        *(v132 + 40) = vuzp1_s8(v131, v131).u32[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44106BC();
        sub_1C43FBF44();
        sub_1C4BB6560();
        goto LABEL_55;
      case 7:
        sub_1C4459C44();
        v22 = *(v101 + 280);
        if (!v22)
        {
          goto LABEL_48;
        }

        sub_1C44754E4();
        sub_1C44AB1C0();
        if (v102)
        {
          goto LABEL_48;
        }

        if (v20 >= *(v22 + 16))
        {
          goto LABEL_62;
        }

        sub_1C4CB0480();
        if (!v23)
        {
          goto LABEL_48;
        }

        sub_1C4459C44();
        v105 = *v103;
        v104 = v103[1];
        *&v149[8] = &unk_1F4409668;
        *&v149[16] = sub_1C4CA7D10();
        v106 = swift_allocObject();
        v107 = sub_1C4488264(v106);
        *(v107 + 24) = v24;
        *(v107 + 32) = v23;
        v108 = sub_1C442F9B0().n128_u64[0];
        *(v109 + 40) = vuzp1_s8(v108, v108).u32[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44106BC();
        sub_1C43FBF44();
        sub_1C4BB6560();
LABEL_55:

        sub_1C440962C(&v148);
        sub_1C4CB0374();

        goto LABEL_56;
      default:
        goto LABEL_48;
    }
  }
}

void sub_1C4C91D3C()
{
  sub_1C43FBD3C();
  v0 = 0;
  v1 = sub_1C456902C(&qword_1EC0C5558, &qword_1C4F62750);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBC74();
  v103 = v5;
  v6 = sub_1C43FBE44();
  v107 = _s15ConfigReferenceOMa(v6);
  v7 = sub_1C43FCDF8(v107);
  v101 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v106 = v11 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v100 = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EFA728();
  v117 = sub_1C43FCDF8(v15);
  v118 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v117);
  sub_1C43FBCC4();
  v116 = v20 - v19;
  sub_1C43FBE44();
  v115 = sub_1C4F001E8();
  v21 = sub_1C43FCDF8(v115);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  sub_1C44867F4();
  v111 = sub_1C4F01E88();
  v109 = sub_1C4F01EA8();
  v119[0] = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v119[0];
  LODWORD(v114) = *MEMORY[0x1E69A9D28];
  v30 = (v23 + 104);
  v31 = (v23 + 8);
  v113 = "entityAliasEuclidVDB";
  do
  {
    v32 = *(&unk_1F43D9F30 + v0 + 32);
    if (v32 == 71)
    {
      (*v30)(v28, v114, v115);
      v33 = sub_1C4F001D8();
      v34 = *v31;
      v35 = sub_1C43FE5F8();
      v36(v35);
      if (v33)
      {
        v37 = 0xD000000000000025;
      }

      else
      {
        v37 = 0xD000000000000014;
      }

      v38 = "entityAliasEuclidVDB";
      if ((v33 & 1) == 0)
      {
        v38 = "/TestViews/config/";
      }

      v39 = v38 | 0x8000000000000000;
    }

    else
    {
      v37 = sub_1C4CB06C4(v32);
      v39 = v40;
    }

    v119[0] = v29;
    v42 = *(v29 + 16);
    v41 = *(v29 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1C43FCFE8(v41);
      sub_1C44CD9C0();
      v29 = v119[0];
    }

    ++v0;
    *(v29 + 16) = v42 + 1;
    v43 = v29 + 16 * v42;
    *(v43 + 32) = v37;
    *(v43 + 40) = v39;
  }

  while (v0 != 249);
  sub_1C4EFA598();
  v44 = sub_1C4EFA508();
  v45 = *(v44 + 16);
  if (v45)
  {
    v119[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v46 = v119[0];
    v47 = *(v118 + 16);
    v48 = *(v118 + 80);
    sub_1C43FC354();
    v113 = v44;
    v50 = v44 + v49;
    v114 = *(v51 + 56);
    v115 = v52;
    v53 = (v51 - 8);
    do
    {
      v54 = sub_1C4414A08();
      v115(v54);
      v55 = sub_1C4EFA708();
      v57 = v56;
      (*v53)(v116, v117);
      v119[0] = v46;
      v59 = *(v46 + 16);
      v58 = *(v46 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C43FCFE8(v58);
        sub_1C44CD9C0();
        v46 = v119[0];
      }

      *(v46 + 16) = v59 + 1;
      v60 = v46 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v50 += v114;
      --v45;
    }

    while (v45);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v119[0] = v29;
  sub_1C449ADBC(v46);
  sub_1C4499940(v29, v61, v62, v63, v64, v65, v66, v67, 0, v100, v101, v103, "", v106, v107, v109, v111, "/TestViews/config/", v113, v114, v115, v116);
  v69 = v68;
  v70 = v68 + 56;
  v71 = 1 << *(v68 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v68 + 56);
  v74 = (v71 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v75 = 0;
  v76 = MEMORY[0x1E69E7CC0];
  v77 = v99;
  v78 = v104;
  if (v73)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v79 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v79 >= v74)
    {

      sub_1C43FE9F0();
      return;
    }

    v73 = *(v70 + 8 * v79);
    ++v75;
    if (v73)
    {
      v75 = v79;
      do
      {
LABEL_27:
        v80 = (*(v69 + 48) + ((v75 << 10) | (16 * __clz(__rbit64(v73)))));
        v81 = v80[1];
        v119[0] = *v80;
        v119[1] = v81;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4CA5F64(v119, v112, 0x6F632F7377656956, 0xED00002F6769666ELL, v110, 0xD000000000000012, v105 | 0x8000000000000000, v78);

        if (sub_1C44157D4(v78, 1, v108) == 1)
        {
          sub_1C4420C3C(v78, &qword_1EC0C5558, &qword_1C4F62750);
        }

        else
        {
          sub_1C4CA9CF8();
          sub_1C4CA9CF8();
          v82 = v77;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = *(v76 + 16);
            sub_1C44B9234();
            sub_1C458E088(v89, v90, v91, v92);
            v76 = v93;
          }

          v84 = *(v76 + 16);
          v83 = *(v76 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_1C43FCFE8(v83);
            sub_1C44B9234();
            sub_1C458E088(v94, v95, v96, v97);
            v76 = v98;
          }

          *(v76 + 16) = v84 + 1;
          v85 = *(v102 + 80);
          sub_1C43FC354();
          v87 = *(v86 + 72);
          sub_1C44113EC();
          sub_1C4CA9CF8();
          v77 = v82;
          v78 = v104;
        }

        v73 &= v73 - 1;
      }

      while (v73);
    }
  }

  __break(1u);
}

void sub_1C4C923A0()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  v6 = sub_1C4EF98F8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4410A24();
  sub_1C44867F4();
  v16 = sub_1C4F01EA8();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 resourceURL];
    if (v18)
    {
      v19 = v18;
      sub_1C4EF98C8();

      v20 = *(v9 + 32);
      v20(v0, v14, v6);
      sub_1C4412380();
      sub_1C440BAA8(v21, v22, v23, v24);
      v25 = sub_1C43FE99C();
      (v20)(v25);
    }

    else
    {
      sub_1C4412380();
      sub_1C440BAA8(v39, v40, v41, v42);
      v43 = [v17 bundleURL];
      sub_1C4EF98C8();

      if (sub_1C44157D4(v0, 1, v6) != 1)
      {
        sub_1C4420C3C(v0, &unk_1EC0BABB0, &qword_1C4F16ED0);
      }
    }

    sub_1C4EF9888();

    (*(v9 + 8))(v1, v6);
    sub_1C4412380();
    sub_1C440BAA8(v44, v45, v46, v47);
    sub_1C43FE9F0();
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C43FCEE8(v26, qword_1EDE2DF70);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CE8();
    if (sub_1C43FEB2C(v28))
    {
      *swift_slowAlloc() = 0;
      sub_1C4404B90();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_1C43FEA20();
    }

    sub_1C4412380();
    sub_1C43FE9F0();

    sub_1C440BAA8(v34, v35, v36, v37);
  }
}

uint64_t sub_1C4C9268C()
{
  sub_1C44103E8();
  sub_1C4F029A8();
  sub_1C4406834();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

void sub_1C4C926DC()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C5648, &qword_1C4F627E0);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A474();
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = sub_1C4414A08();
  sub_1C4417F50(v11, v12);
  sub_1C4507AF4();
  sub_1C4433620();
  sub_1C445AB20();
  sub_1C4F02BF8();
  v13 = *v2;
  v14 = v2[1];
  LOBYTE(v54[0]) = 0;
  sub_1C441C410();
  sub_1C4F02798();
  if (!v1)
  {
    v15 = v2[2];
    v16 = v2[3];
    LOBYTE(v54[0]) = 1;
    sub_1C441C410();
    sub_1C4F02738();
    LOBYTE(v54[0]) = *(v2 + 32);
    v53[0] = 2;
    sub_1C4BB2C84();
    sub_1C43FCB14();
    sub_1C4F027E8();
    v17 = *(v2 + 33);
    LOBYTE(v54[0]) = 3;
    sub_1C440A244();
    sub_1C4F02748();
    v18 = *(v2 + 7);
    v54[0] = *(v2 + 5);
    v54[1] = v18;
    v53[0] = 4;
    sub_1C4CA8D98();
    sub_1C43FCB14();
    sub_1C4F02778();
    *&v54[0] = v2[9];
    v53[0] = 5;
    sub_1C4CA8DEC();
    sub_1C43FCB14();
    sub_1C4F02778();
    v19 = *(v2 + 112);
    v20 = *(v2 + 6);
    v54[0] = *(v2 + 5);
    v54[1] = v20;
    LOBYTE(v54[2]) = v19;
    v53[0] = 6;
    sub_1C4CA8E40();
    sub_1C43FCB14();
    sub_1C4F02778();
    v54[0] = *(v2 + 15);
    v53[0] = 7;
    sub_1C4CA8E94();
    sub_1C43FCB14();
    sub_1C4F02778();
    LOBYTE(v54[0]) = *(v2 + 136);
    v53[0] = 8;
    sub_1C4BB2CD8();
    sub_1C43FCB14();
    sub_1C4F02778();
    *&v54[0] = v2[18];
    v53[0] = 9;
    sub_1C4CA8EE8();
    sub_1C43FCB14();
    sub_1C4F02778();
    v54[0] = *(v2 + 19);
    v53[0] = 10;
    sub_1C4CA8F3C();
    sub_1C43FCB14();
    sub_1C4F02778();
    v21 = *(v2 + 23);
    v54[0] = *(v2 + 21);
    v54[1] = v21;
    v53[0] = 11;
    sub_1C4CA8F90();
    sub_1C43FCB14();
    sub_1C4F02778();
    v22 = *(v2 + 27);
    v54[5] = *(v2 + 25);
    v54[6] = v22;
    sub_1C4CA8FE4();
    sub_1C440A244();
    sub_1C4F02778();
    memcpy(v54, v2 + 29, 0x48uLL);
    memcpy(v53, v2 + 29, sizeof(v53));
    sub_1C4508D08(v54, v52);
    sub_1C4CA9038();
    sub_1C440A244();
    sub_1C4F027E8();
    memcpy(v52, v53, sizeof(v52));
    sub_1C4508D64(v52);
    v23 = _s10ViewConfigVMa(0);
    v24 = v23[18];
    _s6ConfigVMa();
    sub_1C4440E2C();
    sub_1C44902F4(v25);
    sub_1C4433EBC();
    sub_1C4F02778();
    v26 = (v2 + v23[19]);
    v27 = v26[1];
    v51[0] = *v26;
    v51[1] = v27;
    v28 = v26[3];
    v30 = *v26;
    v29 = v26[1];
    v51[2] = v26[2];
    v51[3] = v28;
    v50[4] = v30;
    v50[5] = v29;
    v31 = v26[3];
    v50[6] = v26[2];
    v50[7] = v31;
    sub_1C4CA908C(v51, v50);
    sub_1C4CA90FC();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4CB042C();
    sub_1C4420C3C(v50, &qword_1EC0C5640, &qword_1C4F627D8);
    v32 = v23[20];
    sub_1C4F001E8();
    sub_1C447CC7C();
    sub_1C44902F4(v33);
    sub_1C4433EBC();
    sub_1C4F02778();
    sub_1C4507B90(v23[21]);
    sub_1C4CA9150();
    sub_1C440A244();
    sub_1C4F02778();
    v34 = *(v2 + v23[22]);
    sub_1C440A244();
    sub_1C4F02748();
    v35 = *(v2 + v23[23]);
    sub_1C440A244();
    sub_1C4F02748();
    v36 = *(v2 + v23[24]);
    sub_1C440A244();
    sub_1C4F02748();
    v37 = (v2 + v23[25]);
    v41 = *v37;
    v44 = *(v37 + 2);
    sub_1C4CA91A4();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4507B90(v23[26]);
    sub_1C4CA91F8();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4507B90(v23[27]);
    sub_1C4CA924C();
    sub_1C440A244();
    sub_1C4F02778();
    v42 = *(v2 + v23[28]);
    sub_1C4CA92A0();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4507B90(v23[29]);
    sub_1C4CA92F4();
    sub_1C440A244();
    sub_1C4F02778();
    LOBYTE(v42) = *(v2 + v23[30]);
    sub_1C4BBB9FC();
    sub_1C440A244();
    sub_1C4F02778();
    v38 = (v2 + v23[31]);
    v43 = *v38;
    v45 = v38[2];
    v46 = v38[3];
    v47 = v38[4];
    v48 = v38[5];
    v49 = v38[6];
    sub_1C4BC3C1C(*v38, v38[1]);
    sub_1C4B8C734();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4BA83CC(v43, *(&v43 + 1));
  }

  v39 = sub_1C4402F74();
  v40(v39);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4C92E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4C9268C();
  *a2 = result;
  return result;
}

unint64_t sub_1C4C92ECC()
{
  v1 = sub_1C4405D78();
  result = sub_1C4507BE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4C92EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C926D8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4C92F28(uint64_t a1)
{
  v2 = sub_1C4507AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C92F64(uint64_t a1)
{
  v2 = sub_1C4507AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C92FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        return 0;
      }

      goto LABEL_32;
    case 2:
      if (a8 != 2)
      {
        return 0;
      }

      goto LABEL_32;
    case 3:
      if (a8 != 3)
      {
        return 0;
      }

      goto LABEL_32;
    case 4:
      if (a8 != 4)
      {
        return 0;
      }

      v12 = a1 == a5 && a2 == a6;
      if (!v12)
      {
        sub_1C444C3E0();
        if ((sub_1C4F02938() & 1) == 0)
        {
          return 0;
        }
      }

      return *&a3 == *&a7;
    case 5:
      if (a8 != 5)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        sub_1C444C3E0();
        if ((sub_1C4F02938() & 1) == 0)
        {
          return 0;
        }
      }

      return *&a3 == *&a7;
    case 6:
      if (a8 != 6)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        sub_1C444C3E0();
        if ((sub_1C4F02938() & 1) == 0)
        {
          return 0;
        }
      }

      return a3 == a7;
    case 7:
      if (a8 != 7 || (sub_1C47E6D78(a1, a5) & 1) == 0)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      sub_1C441D304();
      goto LABEL_36;
    case 8:
      if (a8 != 8)
      {
        return 0;
      }

      return sub_1C47E7154(a1, a5);
    case 9:
      v14 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v14)
        {
          if (a1 != 2 || v14)
          {
            if (a1 != 3 || v14)
            {
              if (a1 != 4 || v14)
              {
                if (a1 != 5 || v14)
                {
                  sub_1C445A9F0();
                  if (!v12 || v31 != 6)
                  {
                    return 0;
                  }
                }

                else
                {
                  sub_1C445A9F0();
                  if (!v12 || v29 != 5)
                  {
                    return 0;
                  }
                }
              }

              else
              {
                sub_1C445A9F0();
                if (!v12 || v27 != 4)
                {
                  return 0;
                }
              }
            }

            else
            {
              sub_1C445A9F0();
              if (!v12 || v25 != 3)
              {
                return 0;
              }
            }
          }

          else
          {
            sub_1C445A9F0();
            if (!v12 || v23 != 2)
            {
              return 0;
            }
          }
        }

        else
        {
          sub_1C445A9F0();
          if (!v12 || v15 != 1)
          {
            return 0;
          }
        }

        if (!(a7 | a6))
        {
          return 1;
        }
      }

      else
      {
        sub_1C445A9F0();
        if (v12 && !(a7 | a6 | v22))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a8)
      {
        return 0;
      }

LABEL_32:
      if (a1 == a5 && a2 == a6)
      {
        return 1;
      }

LABEL_36:

      return sub_1C4F02938();
  }
}

uint64_t sub_1C4C93268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C437265746C6966 && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B6F5470616DLL && a2 == 0xEC00000068746170;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7235949 && a2 == 0xE300000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7889261 && a2 == 0xE300000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1953718636 && a2 == 0xE400000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7463656C6C6F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x71457265746C6966 && a2 == 0xEB000000006C6175;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F4E7265746C6966 && a2 == 0xEE006C6175714574;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x616F6C466874616DLL && a2 == 0xE900000000000074;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x62756F446874616DLL && a2 == 0xEA0000000000656CLL;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x746E496874616DLL && a2 == 0xE700000000000000;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6169746C754D6F74 && a2 == 0xEC00000079617272;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7069726373627573 && a2 == 0xED00007463694474;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7473656D69547361 && a2 == 0xEB00000000706D61)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C4F02938();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4C93754(char a1)
{
  result = 0x6C437265746C6966;
  switch(a1)
  {
    case 1:
      return 0x79654B6F5470616DLL;
    case 2:
      return 7235949;
    case 3:
      return 7889261;
    case 4:
      return 1953718636;
    case 5:
      v4 = 1936877926;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 6:
      v3 = 0x63656C6C6F63;
      goto LABEL_16;
    case 7:
      v4 = 1853189987;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 8:
      return 0x71457265746C6966;
    case 9:
      return 0x6F4E7265746C6966;
    case 10:
      return 0x616F6C466874616DLL;
    case 11:
      return 0x62756F446874616DLL;
    case 12:
      v3 = 0x6E496874616DLL;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 13:
      result = 0x6169746C754D6F74;
      break;
    case 14:
      result = 0x7069726373627573;
      break;
    case 15:
      result = 0x7473656D69547361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C93918(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C939C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1C444C3E0();
    sub_1C4F02938();
    sub_1C4406834();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C93A34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C93AC4()
{
  sub_1C4404078();
  v3 = v1 == 0x6F6974617265706FLL && v2 == 0xE90000000000006ELL;
  if (v3 || (sub_1C4461D50(), (sub_1C4F02938() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x65756C6176 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C4461D50();
    sub_1C4F02938();
    sub_1C4406834();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C93B78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x796172724179656BLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C93C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C93CCC(char a1)
{
  if (a1)
  {
    return 0x6570795461746164;
  }

  else
  {
    return 0x6570616873;
  }
}

void sub_1C4C93D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v173 = v20;
  *(&v167 + 1) = v24;
  v168 = v25;
  *&v167 = v26;
  v169 = v27;
  v29 = v28;
  v30 = sub_1C456902C(&qword_1EC0C5930, &qword_1C4F64070);
  sub_1C43FFAE0(v30, &v161);
  v155[5] = v31;
  v33 = *(v32 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBC74();
  sub_1C43FCE30(v35);
  v165 = sub_1C456902C(&qword_1EC0C5938, &qword_1C4F64078);
  sub_1C43FCDF8(v165);
  v163 = v36;
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  sub_1C44D3E34(v40);
  v166 = sub_1C456902C(&qword_1EC0C5940, &qword_1C4F64080);
  sub_1C43FCDF8(v166);
  v164 = v41;
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v162 = v45;
  v46 = sub_1C456902C(&qword_1EC0C5948, &qword_1C4F64088);
  v47 = sub_1C43FCDF8(v46);
  v159 = v48;
  v160 = v47;
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  v158 = v52;
  v53 = sub_1C456902C(&qword_1EC0C5950, &qword_1C4F64090);
  v54 = sub_1C43FCDF8(v53);
  v156 = v55;
  v157 = v54;
  v57 = *(v56 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBC74();
  v155[32] = v59;
  v60 = sub_1C456902C(&qword_1EC0C5958, &qword_1C4F64098);
  sub_1C43FFAE0(v60, &a18);
  v155[30] = v61;
  v63 = *(v62 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBC74();
  sub_1C43FCE30(v65);
  v66 = sub_1C456902C(&qword_1EC0C5960, &qword_1C4F640A0);
  sub_1C43FFAE0(v66, &a15);
  v155[27] = v67;
  v69 = *(v68 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBC74();
  sub_1C43FCE30(v71);
  v72 = sub_1C456902C(&qword_1EC0C5968, &qword_1C4F640A8);
  sub_1C43FFAE0(v72, &a12);
  v155[24] = v73;
  v75 = *(v74 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBC74();
  sub_1C43FCE30(v77);
  v78 = sub_1C456902C(&qword_1EC0C5970, &qword_1C4F640B0);
  sub_1C43FFAE0(v78, &v158);
  v155[2] = v79;
  v81 = *(v80 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBC74();
  sub_1C43FCE30(v83);
  v84 = sub_1C456902C(&qword_1EC0C5978, &qword_1C4F640B8);
  sub_1C43FFAE0(v84, &v164);
  v155[8] = v85;
  v87 = *(v86 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBC74();
  sub_1C43FCE30(v89);
  v90 = sub_1C456902C(&qword_1EC0C5980, &qword_1C4F640C0);
  sub_1C43FFAE0(v90, &v167);
  v155[11] = v91;
  v93 = *(v92 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v94);
  sub_1C43FBC74();
  sub_1C43FCE30(v95);
  v96 = sub_1C456902C(&qword_1EC0C5988, &qword_1C4F640C8);
  sub_1C43FFAE0(v96, &v169);
  v155[14] = v97;
  v99 = *(v98 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v100);
  sub_1C43FBC74();
  sub_1C43FCE30(v101);
  v102 = sub_1C456902C(&qword_1EC0C5990, &qword_1C4F640D0);
  sub_1C43FFAE0(v102, &v172);
  v155[17] = v103;
  v105 = *(v104 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FBC74();
  sub_1C43FCE30(v107);
  v108 = sub_1C456902C(&qword_1EC0C5998, &qword_1C4F640D8);
  sub_1C43FFAE0(v108, v174);
  v155[19] = v109;
  v111 = *(v110 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v112);
  v114 = v155 - v113;
  v115 = sub_1C456902C(&qword_1EC0C59A0, &qword_1C4F640E0);
  sub_1C43FCDF8(v115);
  v155[22] = v116;
  v118 = *(v117 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v119);
  sub_1C440A474();
  v120 = sub_1C456902C(&qword_1EC0C59A8, &qword_1C4F640E8);
  sub_1C43FCDF8(v120);
  v155[21] = v121;
  v123 = *(v122 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v124);
  sub_1C4440AD4();
  v125 = sub_1C456902C(&qword_1EC0C59B0, &qword_1C4F640F0);
  v171 = sub_1C43FCDF8(v125);
  v172 = v126;
  v128 = *(v127 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v129);
  sub_1C4418964();
  v130 = v29[4];
  sub_1C4417F50(v29, v29[3]);
  sub_1C4CAB278();
  sub_1C44A3AE8();
  sub_1C4F02BF8();
  switch(v168)
  {
    case 1:
      LOBYTE(a10) = 1;
      sub_1C4CAB764();
      v120 = v171;
      sub_1C44415FC();
      sub_1C4F02718();
      sub_1C441D76C();
      sub_1C4F02798();
      v143 = sub_1C440C7DC(&a9);
      v145 = v115;
      goto LABEL_25;
    case 2:
      LOBYTE(a10) = 8;
      sub_1C4CAB518();
      sub_1C4418CB4();
      sub_1C441D76C();
      sub_1C444ADBC();
      sub_1C4F02798();
      v137 = &a11;
      goto LABEL_12;
    case 3:
      LOBYTE(a10) = 9;
      sub_1C4CAB4C4();
      sub_1C4418CB4();
      sub_1C441D76C();
      sub_1C444ADBC();
      sub_1C4F02798();
      v137 = &a14;
      goto LABEL_12;
    case 4:
      LOBYTE(a10) = 10;
      sub_1C4CAB470();
      sub_1C4418CB4();
      sub_1C44952C0();
      sub_1C444ADBC();
      v136 = v173;
      sub_1C4F02798();
      if (!v136)
      {
        sub_1C4426494();
        sub_1C4F027C8();
      }

      v137 = &a17;
LABEL_12:
      v141 = *(v137 - 32);
      goto LABEL_24;
    case 5:
      LOBYTE(a10) = 11;
      sub_1C4CAB41C();
      sub_1C4418CB4();
      sub_1C44952C0();
      sub_1C444ADBC();
      v146 = v173;
      sub_1C4F02798();
      if (!v146)
      {
        sub_1C4426494();
        sub_1C4F027B8();
      }

      v141 = v156;
      goto LABEL_24;
    case 6:
      LOBYTE(a10) = 12;
      sub_1C4CAB3C8();
      sub_1C4418CB4();
      sub_1C44952C0();
      sub_1C444ADBC();
      v147 = v173;
      sub_1C4F02798();
      if (!v147)
      {
        LOBYTE(a10) = 1;
        sub_1C4F027D8();
      }

      v141 = v159;
      goto LABEL_24;
    case 7:
      LOBYTE(a10) = 13;
      sub_1C4CAB374();
      sub_1C4418CB4();
      a10 = v169;
      v174[7] = 0;
      sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
      sub_1C4402E98();
      sub_1C448E8F4(v142);
      sub_1C4414374();
      sub_1C4CB0460();
      if (!v20)
      {
        LOBYTE(a10) = 1;
        sub_1C444ADBC();
        sub_1C4F02798();
      }

      v141 = v164;
      goto LABEL_24;
    case 8:
      LOBYTE(a10) = 14;
      sub_1C4CAB320();
      sub_1C4418CB4();
      a10 = v169;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4402E98();
      sub_1C443D11C(v148);
      sub_1C4414374();
      sub_1C4CB0460();
      v141 = v163;
LABEL_24:
      v149 = *(v141 + 8);
      v143 = sub_1C43FE990();
LABEL_25:
      v144(v143, v145);
      v133 = sub_1C4425544();
      goto LABEL_26;
    case 9:
      if (!(v167 | *(&v167 + 1) | v169))
      {
        LOBYTE(a10) = 2;
        sub_1C4CAB710();
        v120 = v171;
        sub_1C44415FC();
        sub_1C4F02718();
        sub_1C43FFB20(&v173);
        v138 = v114;
        v140 = v174;
        goto LABEL_30;
      }

      v120 = v171;
      if (v169 == 1 && v167 == 0)
      {
        LOBYTE(a10) = 3;
        sub_1C4CAB6BC();
        sub_1C4405498(&v170);
        sub_1C4F02718();
        v138 = sub_1C4412B8C(&v171);
        v140 = &v172;
LABEL_30:
        v139(v138, *(v140 - 32));
        v150 = sub_1C44018C0();
        v151(v150, v120);
        goto LABEL_28;
      }

      if (v169 == 2 && v167 == 0)
      {
        LOBYTE(a10) = 4;
        sub_1C4CAB668();
        sub_1C445087C(&v167 + 8);
        sub_1C44415FC();
        sub_1C4F02718();
        v152 = sub_1C440570C(&v168);
        v154 = &v169;
      }

      else if (v169 == 3 && v167 == 0)
      {
        LOBYTE(a10) = 5;
        sub_1C4CAB614();
        sub_1C445087C(&v165);
        sub_1C44415FC();
        sub_1C4F02718();
        v152 = sub_1C440570C(&v166);
        v154 = &v167;
      }

      else if (v169 == 4 && v167 == 0)
      {
        LOBYTE(a10) = 6;
        sub_1C4CAB5C0();
        sub_1C445087C(&v162);
        sub_1C44415FC();
        sub_1C4F02718();
        v152 = sub_1C440570C(&v163);
        v154 = &v164;
      }

      else if (v169 == 5 && v167 == 0)
      {
        LOBYTE(a10) = 7;
        sub_1C4CAB56C();
        sub_1C445087C(&v156);
        sub_1C44415FC();
        sub_1C4F02718();
        v152 = sub_1C440570C(&v157);
        v154 = &v158;
      }

      else
      {
        LOBYTE(a10) = 15;
        sub_1C4CAB2CC();
        sub_1C445087C(&v159);
        sub_1C44415FC();
        sub_1C4F02718();
        v152 = sub_1C440570C(&v160);
        v154 = &v161;
      }

      v153(v152, *(v154 - 32));
      v133 = sub_1C44018C0();
LABEL_26:
      v134 = v120;
LABEL_27:
      v135(v133, v134);
LABEL_28:
      sub_1C43FBC80();
      return;
    default:
      LOBYTE(a10) = 0;
      sub_1C4CAB7B8();
      sub_1C4F02718();
      sub_1C441D76C();
      sub_1C4F02798();
      sub_1C43FFB20(&v175);
      v131(v21, v120);
      v132 = *(v172 + 8);
      v133 = sub_1C43FE5F8();
      goto LABEL_27;
  }
}

void sub_1C4C94B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4404078();
  switch(v7)
  {
    case 1:
      v8 = 1;
      goto LABEL_12;
    case 2:
      v8 = 8;
      goto LABEL_12;
    case 3:
      v8 = 9;
      goto LABEL_12;
    case 4:
      MEMORY[0x1C69417F0](10);
      sub_1C4402120();
      sub_1C4F01298();
      sub_1C4F02B38();
      return;
    case 5:
      MEMORY[0x1C69417F0](11);
      sub_1C4402120();
      sub_1C4F01298();
      if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x1C6941830](v13);
      return;
    case 6:
      MEMORY[0x1C69417F0](12);
      sub_1C4402120();
      sub_1C4F01298();
      v10 = a4;
      goto LABEL_38;
    case 7:
      MEMORY[0x1C69417F0](13);
      v11 = sub_1C4402120();
      sub_1C49EFF50(v11, v12);
      sub_1C4426A5C();
      goto LABEL_13;
    case 8:
      MEMORY[0x1C69417F0](14);
      v14 = sub_1C4402120();

      sub_1C49EFD8C(v14, v15);
      return;
    case 9:
      v9 = a4 | a3;
      if (a4 | a3 | v4)
      {
        if (v4 != 1 || v9)
        {
          if (v4 != 2 || v9)
          {
            if (v4 != 3 || v9)
            {
              if (v4 != 4 || v9)
              {
                if (v4 != 5 || v9)
                {
                  v10 = 15;
                }

                else
                {
                  v10 = 7;
                }
              }

              else
              {
                v10 = 6;
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }

LABEL_38:
      MEMORY[0x1C69417F0](v10);
      break;
    default:
      v8 = 0;
LABEL_12:
      MEMORY[0x1C69417F0](v8);
      sub_1C4402120();
LABEL_13:

      sub_1C4F01298();
      break;
  }
}

uint64_t sub_1C4C94CF0()
{
  v1 = sub_1C44C12D4();
  v9 = sub_1C44D4018(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  sub_1C4C94B20(v9, v10, v11, v0);
  return sub_1C4F02B68();
}

void sub_1C4C94D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v23;
  a20 = v24;
  v237 = v21;
  v26 = v25;
  v232 = sub_1C456902C(&qword_1EC0C5840, &qword_1C4F63FE8);
  sub_1C43FCDF8(v232);
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v229 = v30;
  v221 = sub_1C456902C(&qword_1EC0C5848, &qword_1C4F63FF0);
  sub_1C43FCDF8(v221);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBC74();
  v230 = v34;
  v222[0] = sub_1C456902C(&qword_1EC0C5850, &qword_1C4F63FF8);
  sub_1C43FCDF8(v222[0]);
  v220 = v35;
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  v231 = v39;
  v40 = sub_1C456902C(&qword_1EC0C5858, &qword_1C4F64000);
  sub_1C43FFAE0(v40, &a15);
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  v228 = v44;
  v45 = sub_1C456902C(&qword_1EC0C5860, &qword_1C4F64008);
  sub_1C43FFAE0(v45, &a13);
  v47 = *(v46 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBC74();
  v227 = v49;
  v50 = sub_1C456902C(&qword_1EC0C5868, &qword_1C4F64010);
  sub_1C43FFAE0(v50, &a11);
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBC74();
  v226 = v54;
  v55 = sub_1C456902C(&qword_1EC0C5870, &qword_1C4F64018);
  sub_1C43FFAE0(v55, &a9);
  v57 = *(v56 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBC74();
  v235 = v59;
  v60 = sub_1C456902C(&qword_1EC0C5878, &qword_1C4F64020);
  sub_1C43FFAE0(v60, v238);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBC74();
  v234 = v64;
  v65 = sub_1C456902C(&qword_1EC0C5880, &qword_1C4F64028);
  sub_1C43FFAE0(v65, &v237);
  v67 = *(v66 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBC74();
  v233 = v69;
  v70 = sub_1C456902C(&qword_1EC0C5888, &qword_1C4F64030);
  sub_1C43FFAE0(v70, &v235);
  v72 = *(v71 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBC74();
  sub_1C44D3E34(v74);
  v75 = sub_1C456902C(&qword_1EC0C5890, &qword_1C4F64038);
  sub_1C43FFAE0(v75, &v233);
  v77 = *(v76 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBC74();
  v224 = v79;
  v80 = sub_1C456902C(&qword_1EC0C5898, &qword_1C4F64040);
  sub_1C43FFAE0(v80, &v231);
  v82 = *(v81 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBC74();
  v223 = v84;
  v85 = sub_1C456902C(&qword_1EC0C58A0, &qword_1C4F64048);
  sub_1C43FFAE0(v85, &v229);
  v87 = *(v86 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBC74();
  v222[2] = v89;
  v90 = sub_1C456902C(&qword_1EC0C58A8, &qword_1C4F64050);
  sub_1C43FFAE0(v90, &v226);
  v92 = *(v91 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBC74();
  v222[1] = v94;
  v95 = sub_1C456902C(&qword_1EC0C58B0, &qword_1C4F64058);
  sub_1C43FFAE0(v95, &v227);
  v97 = *(v96 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v98);
  sub_1C440A474();
  v99 = sub_1C456902C(&qword_1EC0C58B8, &qword_1C4F64060);
  sub_1C43FCDF8(v99);
  v101 = *(v100 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v102);
  sub_1C4418964();
  v103 = sub_1C456902C(&qword_1EC0C58C0, &qword_1C4F64068);
  sub_1C43FCDF8(v103);
  v105 = v104;
  v107 = *(v106 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C4401780();
  v109 = v26[3];
  v110 = v26[4];
  v236 = v26;
  v111 = sub_1C442A90C();
  sub_1C4417F50(v111, v112);
  sub_1C4CAB278();
  sub_1C4475644();
  v113 = v237;
  sub_1C44D0B90();
  sub_1C4F02BC8();
  if (v113)
  {
    goto LABEL_8;
  }

  v219 = v20;
  v115 = v233;
  v114 = v234;
  v116 = v235;
  v237 = v105;
  v117 = sub_1C4F026E8();
  sub_1C4570934(v117, 0);
  if (v119 == v120 >> 1)
  {
LABEL_7:
    v128 = sub_1C4F022E8();
    sub_1C43FFB2C();
    v130 = v129;
    v131 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v130 = &_s8StreamOpON;
    sub_1C4F025F8();
    sub_1C4475C70();
    (*(*(v128 - 8) + 104))(v130, *MEMORY[0x1E69E6AF8], v128);
    swift_willThrow();
    swift_unknownObjectRelease();
    v132 = sub_1C44018C0();
    v133(v132, v103);
LABEL_8:
    v126 = v236;
LABEL_9:
    sub_1C440962C(v126);
    sub_1C44109F8();
    return;
  }

  if (v119 < (v120 >> 1))
  {
    v218 = *(v118 + v119);
    v121 = sub_1C4570928(v119 + 1);
    v123 = v122;
    v125 = v124;
    swift_unknownObjectRelease();
    if (v123 == v125 >> 1)
    {
      v126 = v103;
      v127 = v232;
      switch(v218)
      {
        case 1:
          v240 = 1;
          sub_1C4CAB764();
          sub_1C440C05C();
          sub_1C440CDDC();
          sub_1C44EC86C(&v227);
          sub_1C4F02678();
          swift_unknownObjectRelease();
          v186 = sub_1C4416528(&v225);
          v187(v186, v114);
          v188 = sub_1C4415078();
          v189(v188);
          break;
        case 2:
          v240 = 2;
          sub_1C4CAB710();
          sub_1C440C05C();
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v143 = sub_1C440C7DC(&v224);
          v144(v143);
          v145 = sub_1C4415078();
          v146(v145);
          sub_1C4435D10();
          break;
        case 3:
          v240 = 3;
          sub_1C4CAB6BC();
          sub_1C440C05C();
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v148 = sub_1C440C7DC(&v228);
          v149(v148);
          v150 = sub_1C4415078();
          v151(v150);
          sub_1C4435D10();
          break;
        case 4:
          v240 = 4;
          sub_1C4CAB668();
          sub_1C440C05C();
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v138 = sub_1C440C7DC(&v230);
          v139(v138);
          v140 = sub_1C4415078();
          v141(v140);
          sub_1C4435D10();
          break;
        case 5:
          v240 = 5;
          sub_1C4CAB614();
          sub_1C440C05C();
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v156 = sub_1C440C7DC(&v232);
          v157(v156);
          v158 = sub_1C4415078();
          v159(v158);
          sub_1C4435D10();
          break;
        case 6:
          v240 = 6;
          sub_1C4CAB5C0();
          sub_1C440C05C();
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v168 = sub_1C440C7DC(&v234);
          v169(v168);
          v170 = sub_1C4415078();
          v171(v170);
          sub_1C4435D10();
          break;
        case 7:
          v240 = 7;
          sub_1C4CAB56C();
          sub_1C440C05C();
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v152 = sub_1C440C7DC(&v236);
          v153(v152);
          v154 = sub_1C4415078();
          v155(v154);
          sub_1C4435D10();
          break;
        case 8:
          v240 = 8;
          sub_1C4CAB518();
          sub_1C440C05C();
          sub_1C440CDDC();
          v235 = v172;
          v233 = v121;
          sub_1C4CB03B0(v238);
          sub_1C4F02678();
          sub_1C4428A24();
          swift_unknownObjectRelease();
          v197 = sub_1C440C7DC(&v240);
          v198(v197, v127);
          v199 = sub_1C4424D70();
          v200(v199, v235);
          break;
        case 9:
          v240 = 9;
          sub_1C4CAB4C4();
          sub_1C440C05C();
          sub_1C440CDDC();
          v233 = v121;
          sub_1C4CB03B0(&a9);
          sub_1C4F02678();
          sub_1C4428A24();
          swift_unknownObjectRelease();
          v181 = sub_1C4416528(&v241);
          v182(v181, v127);
          v183 = *(v116 + 8);
          v184 = sub_1C43FD2BC();
          v185(v184);
          break;
        case 10:
          v240 = 10;
          sub_1C4CAB470();
          v163 = v226;
          sub_1C440C05C();
          sub_1C440CDDC();
          sub_1C4CB040C();
          sub_1C447E7C4(&a11);
          sub_1C4428A24();
          sub_1C443077C(v195, v196);
          sub_1C4F026A8();
          swift_unknownObjectRelease();
          v213 = sub_1C4416528(&a10);
          v214(v213, v115);
          v215 = *(v163 + 8);
          v216 = sub_1C43FD2BC();
          v217(v216);
          break;
        case 11:
          v240 = 11;
          sub_1C4CAB41C();
          v137 = v227;
          sub_1C440C05C();
          sub_1C440CDDC();
          sub_1C4CB040C();
          sub_1C447E7C4(&a13);
          sub_1C4428A24();
          sub_1C443077C(v177, v178);
          sub_1C4F02698();
          swift_unknownObjectRelease();
          v201 = sub_1C4416528(&a12);
          v202(v201, v115);
          v203 = *(v137 + 8);
          v204 = sub_1C43FD2BC();
          v205(v204);
          break;
        case 12:
          v240 = 12;
          sub_1C4CAB3C8();
          v142 = v228;
          sub_1C440C05C();
          sub_1C440CDDC();
          v233 = v121;
          v240 = 0;
          sub_1C4F02678();
          sub_1C4428A24();
          sub_1C443077C(v179, v180);
          sub_1C4F026B8();
          swift_unknownObjectRelease();
          sub_1C43FFB20(&a14);
          v206(v142);
          v207 = *(v116 + 8);
          v208 = sub_1C43FD2BC();
          v209(v208);
          break;
        case 13:
          v240 = 13;
          sub_1C4CAB374();
          sub_1C440C05C();
          sub_1C440CDDC();
          v161 = v160;
          sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
          v239 = 0;
          sub_1C4416F78();
          sub_1C448E8F4(v162);
          sub_1C4CB0380();
          sub_1C44247E8();
          sub_1C4F026C8();
          v233 = v121;
          v234 = v22;
          v239 = 1;
          v193 = sub_1C4F02678();
          v194 = (v237 + 8);
          v235 = v193;
          swift_unknownObjectRelease();
          v210 = *(v220 + 8);
          v211 = sub_1C43FD018();
          v212(v211);
          (*v194)(v234, v161);
          break;
        case 14:
          v240 = 14;
          sub_1C4CAB320();
          sub_1C440C05C();
          sub_1C440CDDC();
          v135 = v134;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4416F78();
          sub_1C443D11C(v136);
          sub_1C4CB0380();
          sub_1C44247E8();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          sub_1C43FFB20(&a18);
          v173 = sub_1C43FD018();
          v174(v173);
          v175 = sub_1C4425544();
          v176(v175, v135);
          break;
        case 15:
          v240 = 15;
          sub_1C4CAB2CC();
          sub_1C440C05C();
          v147 = v126;
          v126 = v236;
          swift_unknownObjectRelease();
          v164 = sub_1C4412B8C(&a16);
          v165(v164, v127);
          v166 = sub_1C4425544();
          v167(v166, v147);
          sub_1C4435D10();
          break;
        default:
          v240 = 0;
          sub_1C4CAB7B8();
          sub_1C440C05C();
          sub_1C44EC86C(v222);
          sub_1C4F02678();
          sub_1C4428A24();
          swift_unknownObjectRelease();
          sub_1C43FFB20(&v223);
          v190(v219, v114);
          v191 = sub_1C4424D70();
          v192(v191, v126);
          v126 = v236;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C4C96270(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      sub_1C47C80C0();
      return;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    sub_1C4456958();
    return;
  }

  sub_1C47C7F00(a1, a3);
}

uint64_t sub_1C4C96290()
{
  sub_1C4404078();
  if (v0)
  {
    MEMORY[0x1C69417F0](1);
    v1 = sub_1C4402120();

    return sub_1C47C9714(v1, v2);
  }

  else
  {
    MEMORY[0x1C69417F0](0);
    v4 = sub_1C4402120();

    return sub_1C47C99E8(v4, v5);
  }
}

uint64_t sub_1C4C962F8(uint64_t a1, char a2)
{
  sub_1C441EC18();
  if (a2)
  {
    v3 = MEMORY[0x1C69417F0](1);
    v11 = sub_1C44AE0D8(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25);
    sub_1C47C9714(v11, v12);
  }

  else
  {
    v13 = MEMORY[0x1C69417F0](0);
    v21 = sub_1C44AE0D8(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25);
    sub_1C47C99E8(v21, v22);
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C4C96360(uint64_t a1)
{
  v2 = sub_1C4CAB2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C9639C(uint64_t a1)
{
  v2 = sub_1C4CAB2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C963F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C96420(uint64_t a1)
{
  v2 = sub_1C4CAB278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C9645C(uint64_t a1)
{
  v2 = sub_1C4CAB278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96498(uint64_t a1)
{
  v2 = sub_1C4CAB5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C964D4(uint64_t a1)
{
  v2 = sub_1C4CAB5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96510(uint64_t a1)
{
  v2 = sub_1C4CAB56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C9654C(uint64_t a1)
{
  v2 = sub_1C4CAB56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C9658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93918(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4C965B8(uint64_t a1)
{
  v2 = sub_1C4CAB7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C965F4(uint64_t a1)
{
  v2 = sub_1C4CAB7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96634(uint64_t a1)
{
  v2 = sub_1C4CAB518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96670(uint64_t a1)
{
  v2 = sub_1C4CAB518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C966AC(uint64_t a1)
{
  v2 = sub_1C4CAB4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C966E8(uint64_t a1)
{
  v2 = sub_1C4CAB4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96724(uint64_t a1)
{
  v2 = sub_1C4CAB614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96760(uint64_t a1)
{
  v2 = sub_1C4CAB614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C9679C(uint64_t a1)
{
  v2 = sub_1C4CAB668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C967D8(uint64_t a1)
{
  v2 = sub_1C4CAB668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93A34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4C96844(uint64_t a1)
{
  v2 = sub_1C4CAB764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96880(uint64_t a1)
{
  v2 = sub_1C4CAB764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C968D4(uint64_t a1)
{
  v2 = sub_1C4CAB41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96910(uint64_t a1)
{
  v2 = sub_1C4CAB41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C9694C(uint64_t a1)
{
  v2 = sub_1C4CAB470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96988(uint64_t a1)
{
  v2 = sub_1C4CAB470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C969C4(uint64_t a1)
{
  v2 = sub_1C4CAB3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96A00(uint64_t a1)
{
  v2 = sub_1C4CAB3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96A3C(uint64_t a1)
{
  v2 = sub_1C4CAB6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96A78(uint64_t a1)
{
  v2 = sub_1C4CAB6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96AB4(uint64_t a1)
{
  v2 = sub_1C4CAB710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96AF0(uint64_t a1)
{
  v2 = sub_1C4CAB710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93B78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4C96B5C(uint64_t a1)
{
  v2 = sub_1C4CAB320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96B98(uint64_t a1)
{
  v2 = sub_1C4CAB320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C96C04(uint64_t a1)
{
  v2 = sub_1C4CAB374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96C40(uint64_t a1)
{
  v2 = sub_1C4CAB374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96CD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return sub_1C4C94CF0();
}

uint64_t sub_1C4C96CF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1C4F02AF8();
  sub_1C4C94B20(v6, v1, v2, v3);
  return sub_1C4F02B68();
}

void sub_1C4C96D78(uint64_t a1@<X8>)
{
  sub_1C4C96DAC();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

void sub_1C4C96DAC()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C55A0, &qword_1C4F62780);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = v2[4];
  sub_1C4417F50(v2, v2[3]);
  sub_1C4CA83B4();
  sub_1C4475644();
  sub_1C445AB20();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8408();
    sub_1C4CB0380();
    sub_1C442AA0C();
    sub_1C4F026C8();
    v11 = *(v6 + 8);
    v12 = sub_1C43FE99C();
    v13(v12);
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

void sub_1C4C97054()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C4C97074();
}

void sub_1C4C97074()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C55C8, &qword_1C4F627A8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4401780();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = sub_1C442A90C();
  sub_1C4417F50(v12, v13);
  sub_1C4CA83B4();
  sub_1C4475644();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  v14 = (v6 + 8);
  if (v1)
  {
    sub_1C456902C(&qword_1EC0C55B8, &qword_1C4F62798);
    sub_1C4CA8724();
  }

  else
  {
    sub_1C456902C(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8888();
  }

  sub_1C4414374();
  sub_1C441D304();
  sub_1C4F027E8();
  v15 = *v14;
  v16 = sub_1C43FFE3C();
  v17(v16);
  sub_1C43FBC80();
}

uint64_t sub_1C4C971D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a1 == a5 && a2 == a6;
      if (v12 || (sub_1C4F02938() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_8:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  sub_1C4405814();
  sub_1C4461D50();

  return sub_1C4F02938();
}

uint64_t sub_1C4C97274(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C97338(char a1)
{
  if (a1)
  {
    return 0x746567726174;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1C4C97364()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C5838, &qword_1C4F63FE0);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A474();
  v10 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4CAB224();
  sub_1C4433620();
  sub_1C4F02BF8();
  sub_1C4F02738();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C4F02798();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

uint64_t sub_1C4C974A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F01298();
}

uint64_t sub_1C4C9752C(uint64_t a1, uint64_t a2)
{
  sub_1C441EC18();
  sub_1C4F02B18();
  if (a2)
  {
    sub_1C4F01298();
  }

  sub_1C4F01298();
  return sub_1C4F02B68();
}

void sub_1C4C975B8()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v2 = sub_1C456902C(&qword_1EC0C5830, &qword_1C4F63FD8);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CAB224();
  sub_1C44342BC();
  if (!v1)
  {
    sub_1C443FEB8();
    sub_1C441C410();
    sub_1C4F02618();
    sub_1C4405BEC();
    sub_1C441C410();
    sub_1C4F02678();
    v6 = sub_1C4402F74();
    v7(v6);
  }

  sub_1C440962C(v0);
  sub_1C43FD018();
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4C97710()
{
  sub_1C43FE96C();
  sub_1C445BC30(v2, v3, v4, v5);
  v6 = sub_1C456902C(&qword_1EC0C5618, &qword_1C4F627C8);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = sub_1C442A90C();
  sub_1C4417F50(v14, v15);
  sub_1C4CA89EC();
  sub_1C444FECC();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  sub_1C43FD018();
  sub_1C4402150();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C4405BEC();
    sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4CA8BA4();
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v16 = *(v8 + 8);
  v17 = sub_1C43FD024();
  v18(v17);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4C97848()
{
  sub_1C4F01298();
  v0 = sub_1C4402120();

  return sub_1C47C95E4(v0, v1);
}

uint64_t sub_1C4C97884()
{
  sub_1C44238C4();
  v2 = sub_1C456902C(&qword_1EC0C5600, &qword_1C4F627B0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA89EC();
  sub_1C44342BC();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C443FEB8();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4480838();
    sub_1C4CA8A40();
    sub_1C442ACE4();
    sub_1C4433EBC();
    sub_1C4F026C8();
    v7 = sub_1C44069E0();
    v8(v7);
    sub_1C4CB04D0();
  }

  return sub_1C43FD018();
}

uint64_t sub_1C4C979F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69726575516C7173 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C97A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 == a5 && a2 == a6;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {
    v11 = sub_1C4405814();
    sub_1C47C7AE0(v11, v12);
    if (v13)
    {
      if (a4)
      {
        if (a8)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v14 = sub_1C4402120();
          sub_1C47E71E0(v14, v15);
          sub_1C4406834();

          if (a4)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C4C97B24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F6962 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636F725074736F70 && a2 == 0xEE0073704F737365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C97BF0(char a1)
{
  if (a1)
  {
    return 0x636F725074736F70;
  }

  else
  {
    return 0x656D6F6962;
  }
}

void sub_1C4C97C30()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C5740, &unk_1C4F628A0);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402A68();
  v9 = v2[4];
  sub_1C4417F50(v2, v2[3]);
  sub_1C4CA99F8();
  sub_1C444FECC();
  sub_1C4F02BF8();
  sub_1C4CA9B78();
  sub_1C44290E4();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C4459AE4();
    sub_1C456902C(&qword_1EC0C5738, &qword_1C4F62898);
    sub_1C4CA9BCC();
    sub_1C44290E4();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v10 = *(v5 + 8);
  v11 = sub_1C43FD024();
  v12(v11);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C97D98(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4F01298();
  sub_1C47C95E4(a1, a4);
  if (a5)
  {
    sub_1C4F02B18();
    v8 = sub_1C4402120();

    sub_1C49F0938(v8, v9);
  }

  else
  {
    sub_1C4F02B18();
  }
}

uint64_t sub_1C4C97E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C44C12D4();
  sub_1C44D4018(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37);
  v13 = sub_1C4F01298();
  v21 = sub_1C4475868(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38);
  sub_1C47C95E4(v21, v22);
  if (a4)
  {
    v23 = sub_1C4F02B18();
    v31 = sub_1C44AE0D8(v23, v24, v25, v26, v27, v28, v29, v30, v36, v39);
    sub_1C49F0938(v31, v32);
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B68();
}

void sub_1C4C97E80()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v1 = sub_1C456902C(&qword_1EC0C5730, &qword_1C4F62890);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA99F8();
  sub_1C44342BC();
  sub_1C4CA9A4C();
  sub_1C441C410();
  sub_1C4F026C8();
  sub_1C456902C(&qword_1EC0C5738, &qword_1C4F62898);
  sub_1C4459AE4();
  sub_1C4CA9AA0();
  sub_1C4433EBC();
  sub_1C4F02658();
  v5 = sub_1C4402F74();
  v6(v5);
  sub_1C440962C(v0);
  sub_1C4415864();
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4C9801C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a1 == 3)
  {
    if (a3 == 3)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (a3 == 3)
  {
    return 0;
  }

  v5 = 0x796C6B656577;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x796C68746E6F6DLL;
    }

    else
    {
      v7 = 0x6C61756E6E61;
    }

    if (v6 == 1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x796C6B656577;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 0x796C68746E6F6DLL;
    }

    else
    {
      v5 = 0x6C61756E6E61;
    }

    if (a3 == 1)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v7 != v5 || v8 != v9)
  {
    v11 = sub_1C4F02938();

    if (v11)
    {
      goto LABEL_29;
    }

    return 0;
  }

LABEL_29:
  v12 = sub_1C4402120();

  return sub_1C47E7154(v12, v13);
}

uint64_t sub_1C4C98180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E65646163 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9824C(char a1)
{
  if (a1)
  {
    return 0x6E65646E65706564;
  }

  else
  {
    return 0x65636E65646163;
  }
}

void sub_1C4C9828C()
{
  sub_1C43FE96C();
  sub_1C4488B44();
  v2 = sub_1C456902C(&qword_1EC0C56C8, &qword_1C4F62840);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_1C4414A08();
  sub_1C4417F50(v10, v11);
  sub_1C4CA94EC();
  sub_1C444FECC();
  sub_1C445AB20();
  sub_1C4F02BF8();
  sub_1C4CA9594();
  sub_1C4402150();
  sub_1C4F02778();
  if (!v1)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4402E98();
    sub_1C443D11C(v12);
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v13 = *(v4 + 8);
  v14 = sub_1C43FD024();
  v15(v14);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C983EC(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    sub_1C4F02B18();
  }

  else
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  v2 = sub_1C4402120();

  sub_1C49EFD8C(v2, v3);
}

uint64_t sub_1C4C984B0(unsigned __int8 a1)
{
  v1 = a1;
  sub_1C441EC18();
  if (v1 == 3)
  {
    v2 = sub_1C4F02B18();
  }

  else
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  v10 = sub_1C44AE0D8(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_1C49EFD8C(v10, v11);
  return sub_1C4F02B68();
}

uint64_t sub_1C4C98580(uint64_t *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C56C0, &qword_1C4F62838);
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA94EC();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C4CA9540();
    sub_1C44415FC();
    sub_1C445C248();
    sub_1C4F02658();
    v2 = v12;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4480838();
    sub_1C4416F78();
    sub_1C443D11C(v8);
    sub_1C442ACE4();
    sub_1C445C248();
    sub_1C4F026C8();
    v9 = sub_1C440AFC4();
    v10(v9);
    sub_1C4CB04D0();
  }

  return v2;
}

uint64_t sub_1C4C98718()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4C9875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_1C4402120();

  return v7(v6);
}

uint64_t sub_1C4C987DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C988A4(char a1)
{
  if (a1)
  {
    return 0x6E65646E65706564;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

void sub_1C4C988E0()
{
  sub_1C43FE96C();
  sub_1C445BC30(v2, v3, v4, v5);
  v6 = sub_1C456902C(&qword_1EC0C56B8, &qword_1C4F62830);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = sub_1C442A90C();
  sub_1C4417F50(v14, v15);
  sub_1C4CA9498();
  sub_1C444FECC();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  sub_1C43FD018();
  sub_1C4402150();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C4405BEC();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4402E98();
    sub_1C443D11C(v16);
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v17 = *(v8 + 8);
  v18 = sub_1C43FD024();
  v19(v18);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C98A2C()
{
  sub_1C4F01298();
  v0 = sub_1C4402120();

  sub_1C49EFD8C(v0, v1);
}

uint64_t sub_1C4C98A68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1C44C12D4();
  sub_1C44D4018(v5, v6, v7, v8, v9, v10, v11, v12, v23, v25);
  v13 = sub_1C4F01298();
  v21 = sub_1C4475868(v13, v14, v15, v16, v17, v18, v19, v20, v24, v26);
  a4(v21);
  return sub_1C4F02B68();
}

uint64_t sub_1C4C98AB8()
{
  sub_1C44238C4();
  v2 = sub_1C456902C(&qword_1EC0C56A8, &qword_1C4F62828);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA9498();
  sub_1C44342BC();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C443FEB8();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4480838();
    sub_1C4416F78();
    sub_1C443D11C(v7);
    sub_1C442ACE4();
    sub_1C4433EBC();
    sub_1C4F026C8();
    v8 = sub_1C44069E0();
    v9(v8);
    sub_1C4CB04D0();
  }

  return sub_1C43FD018();
}

void sub_1C4C98C58()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v6 = sub_1C456902C(v4, v5);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4401780();
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = sub_1C43FD258();
  sub_1C4409678(v14, v15);
  v1();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4402E98();
  sub_1C443D11C(v16);
  sub_1C4414374();
  sub_1C441D304();
  sub_1C4F027E8();
  v17 = *(v8 + 8);
  v18 = sub_1C43FFE3C();
  v19(v18);
  sub_1C43FBC80();
}

void sub_1C4C98D98()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v8 = sub_1C456902C(v6, v7);
  sub_1C43FCDF8(v8);
  v15 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A474();
  v13 = v5[4];
  sub_1C4409678(v5, v5[3]);
  v3();
  sub_1C445AB20();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4416F78();
    sub_1C443D11C(v14);
    sub_1C442AA0C();
    sub_1C445C248();
    sub_1C4F026C8();
    (*(v15 + 8))(v1, v8);
  }

  sub_1C440962C(v5);
  sub_1C43FBC80();
}

uint64_t sub_1C4C98F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1C47E7154(a1, a3))
  {
    if (a2)
    {
      if (a4)
      {
        v6 = sub_1C4402120();
        if (sub_1C47E7154(v6, v7))
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C4C98F5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F95320 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C4FB96D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C4C99030(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1C4C99068()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C5670, &qword_1C4F62800);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = sub_1C4414A08();
  sub_1C4417F50(v11, v12);
  sub_1C4CA939C();
  sub_1C4475644();
  sub_1C445AB20();
  sub_1C4F02BF8();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4402E98();
  sub_1C443D11C(v13);
  sub_1C440F9B8();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C440F9B8();
    sub_1C4F02778();
  }

  v14 = *(v5 + 8);
  v15 = sub_1C43FFE3C();
  v16(v15);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C991DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C49EFD8C(a1, a2);
  if (a3)
  {
    sub_1C4F02B18();
    v4 = sub_1C4402120();

    sub_1C49EFD8C(v4, v5);
  }

  else
  {
    sub_1C4F02B18();
  }
}

uint64_t sub_1C4C99238()
{
  sub_1C4404078();
  v1 = sub_1C441EC18();
  v9 = sub_1C4475868(v1, v2, v3, v4, v5, v6, v7, v8, v22, v24);
  sub_1C49EFD8C(v9, v10);
  if (v0)
  {
    v11 = sub_1C4F02B18();
    v19 = sub_1C44AE0D8(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25);
    sub_1C49EFD8C(v19, v20);
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B68();
}

void sub_1C4C99298()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v1 = sub_1C456902C(&qword_1EC0C5668, &qword_1C4F627F8);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA939C();
  sub_1C44342BC();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4416F78();
  sub_1C443D11C(v5);
  sub_1C445AB20();
  sub_1C441C410();
  sub_1C4F026C8();
  sub_1C445AB20();
  sub_1C441C410();
  sub_1C4F02658();
  v6 = sub_1C4402F74();
  v7(v6);
  sub_1C440962C(v0);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4C9942C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    v4 = 0;
  }

  else
  {
    sub_1C444C3E0();
    sub_1C4F02938();
    sub_1C4406834();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C994A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C69417F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4426A5C();
      sub_1C4F01298();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1C4C99514(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *&v7 = v4 | (*(a1 + 9) << 8) | (*(a1 + 10) << 16) | (*(a1 + 14) << 48);
  switch(*(a1 + 32))
  {
    case 1:
      if (*(a2 + 32) == 1)
      {
        v18 = *(a2 + 16);
        v19 = v3 == *a2 && *&v7 == *(a2 + 8);
        if (v19 || (sub_1C4F02938() & 1) != 0)
        {

          sub_1C47C7AE0(v5, v18);
        }
      }

      return;
    case 2:
      if (*(a2 + 32) == 2)
      {
        v16 = *(a2 + 8);
        if (sub_1C47E7154(v3, *a2))
        {
          v11 = sub_1C4402120();
          goto LABEL_25;
        }
      }

      return;
    case 3:
      if (*(a2 + 32) != 3)
      {
        return;
      }

      v17 = *(a2 + 8);
      if (v4)
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          return;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || v3 != *a2)
      {
        return;
      }

      v27 = 0xE900000000000079;
      v28 = 0x6144664F656D6974;
      v29 = 0xE900000000000079;
      v30 = 0x6144664F656D6974;
      switch(*(a1 + 9))
      {
        case 1:
          v30 = 0x6144664F74726170;
          break;
        case 2:
          v30 = 0x6954657372616F63;
          v29 = 0xEF796144664F656DLL;
          break;
        case 3:
          v30 = 0x656557664F796164;
          v29 = 0xE90000000000006BLL;
          break;
        case 4:
          v30 = 0x6557664F74726170;
          v29 = 0xEA00000000006B65;
          break;
        case 5:
          v29 = 0xE300000000000000;
          v30 = 6909804;
          break;
        case 6:
          v30 = 0x636F4C6F7263696DLL;
          v31 = 0x6E6F697461;
          goto LABEL_111;
        case 7:
          v30 = 0x6369666963657073;
          v29 = 0xEF687361486F6547;
          break;
        case 8:
          v30 = 0x6547657372616F63;
          v31 = 0x687361486FLL;
LABEL_111:
          v29 = v31 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v30 = 0x6F6547656772616CLL;
          v29 = 0xEC00000068736148;
          break;
        case 0xA:
          v29 = 0xE400000000000000;
          v30 = 1768319351;
          break;
        case 0xB:
          v30 = 0x646F4D7375636F66;
          v29 = 0xE900000000000065;
          break;
        case 0xC:
          v30 = 0x74536E6F69746F6DLL;
          v29 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      switch(*(a2 + 9))
      {
        case 1:
          v28 = 0x6144664F74726170;
          break;
        case 2:
          v28 = 0x6954657372616F63;
          v27 = 0xEF796144664F656DLL;
          break;
        case 3:
          v28 = 0x656557664F796164;
          v27 = 0xE90000000000006BLL;
          break;
        case 4:
          v28 = 0x6557664F74726170;
          v27 = 0xEA00000000006B65;
          break;
        case 5:
          v27 = 0xE300000000000000;
          v28 = 6909804;
          break;
        case 6:
          v28 = 0x636F4C6F7263696DLL;
          v32 = 0x6E6F697461;
          goto LABEL_125;
        case 7:
          v28 = 0x6369666963657073;
          v27 = 0xEF687361486F6547;
          break;
        case 8:
          v28 = 0x6547657372616F63;
          v32 = 0x687361486FLL;
LABEL_125:
          v27 = v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v28 = 0x6F6547656772616CLL;
          v27 = 0xEC00000068736148;
          break;
        case 0xA:
          v27 = 0xE400000000000000;
          v28 = 1768319351;
          break;
        case 0xB:
          v28 = 0x646F4D7375636F66;
          v27 = 0xE900000000000065;
          break;
        case 0xC:
          v28 = 0x74536E6F69746F6DLL;
          v27 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      if (v30 == v28 && v29 == v27)
      {
      }

      else
      {
        sub_1C444C3E0();
        sub_1C4F02938();
      }

      return;
    case 4:
      if (*(a2 + 32) == 4)
      {
        v9 = *(a2 + 16);
        v10 = v3 == *a2 && *&v7 == *(a2 + 8);
        if (v10 || (sub_1C4F02938() & 1) != 0)
        {
          v11 = v5;
          v12 = v9;
LABEL_25:

          sub_1C47E7154(v11, v12);
        }
      }

      return;
    case 5:
      if (*(a2 + 32) == 5)
      {
        goto LABEL_44;
      }

      return;
    case 6:
      if (*(a2 + 32) == 6)
      {
        goto LABEL_52;
      }

      return;
    case 7:
      if (*(a2 + 32) == 7)
      {
LABEL_44:
        if (v3 != *a2 || *&v7 != *(a2 + 8))
        {
          goto LABEL_62;
        }
      }

      return;
    case 8:
      if (*(a2 + 32) == 8)
      {
LABEL_52:
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        v23 = v3 == *a2 && *&v7 == *(a2 + 8);
        if (v23 || (sub_1C4F02938()) && (v5 != v21 || v6 != v22))
        {
          sub_1C4426A5C();
LABEL_62:

          sub_1C4F02938();
        }
      }

      return;
    case 9:
      if (v6 | v5 | v3 | *&v7)
      {
        v13 = v6 | v5 | *&v7;
        if (v3 == 1 && v13 == 0)
        {
          sub_1C44238B8(v3, a2);
          if (v10 && *v15 == 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v3 == 2 && !v13)
          {
            sub_1C44238B8(2, a2);
            if (!v10 || *v15 != 2)
            {
              return;
            }

LABEL_71:
            v15[2];
            v15[3];
            v15[1];
            return;
          }

          if (v3 != 3 || v13)
          {
            if (v3 != 4 || v13)
            {
              if (v3 != 5 || v13)
              {
                if (v3 != 6 || v13)
                {
                  if (v3 != 7 || v13)
                  {
                    if (v3 != 8 || v13)
                    {
                      if (v3 != 9 || v13)
                      {
                        if (v3 != 10 || v13)
                        {
                          if (v3 != 11 || v13)
                          {
                            if (v3 != 12 || v13)
                            {
                              if (v3 != 13 || v13)
                              {
                                if (v3 != 14 || v13)
                                {
                                  if (v3 != 15 || v13)
                                  {
                                    if (v3 != 16 || v13)
                                    {
                                      if (v3 != 17 || v13)
                                      {
                                        if (v3 != 18 || v13)
                                        {
                                          if (v3 != 19 || v13)
                                          {
                                            if (v3 != 20 || v13)
                                            {
                                              if (v3 != 21 || v13)
                                              {
                                                if (v3 != 22 || v13)
                                                {
                                                  if (v3 != 23 || v13)
                                                  {
                                                    if (v3 != 24 || v13)
                                                    {
                                                      if (v3 != 25 || v13)
                                                      {
                                                        if (v3 != 26 || v13)
                                                        {
                                                          if (v3 != 27 || v13)
                                                          {
                                                            if (v3 != 28 || v13)
                                                            {
                                                              if (v3 != 29 || v13)
                                                              {
                                                                if (v3 != 30 || v13)
                                                                {
                                                                  if (v3 != 31 || v13)
                                                                  {
                                                                    if (v3 != 32 || v13)
                                                                    {
                                                                      if (v3 != 33 || v13)
                                                                      {
                                                                        sub_1C44238B8(v3, a2);
                                                                        if (v10 && *v15 == 34)
                                                                        {
                                                                          goto LABEL_71;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1C44238B8(33, a2);
                                                                        if (v10 && *v15 == 33)
                                                                        {
                                                                          goto LABEL_71;
                                                                        }
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_1C44238B8(32, a2);
                                                                      if (v10 && *v15 == 32)
                                                                      {
                                                                        goto LABEL_71;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_1C44238B8(31, a2);
                                                                    if (v10 && *v15 == 31)
                                                                    {
                                                                      goto LABEL_71;
                                                                    }
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  sub_1C44238B8(30, a2);
                                                                  if (v10 && *v15 == 30)
                                                                  {
                                                                    goto LABEL_71;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                sub_1C44238B8(29, a2);
                                                                if (v10 && *v15 == 29)
                                                                {
                                                                  goto LABEL_71;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              sub_1C44238B8(28, a2);
                                                              if (v10 && *v15 == 28)
                                                              {
                                                                goto LABEL_71;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            sub_1C44238B8(27, a2);
                                                            if (v10 && *v15 == 27)
                                                            {
                                                              goto LABEL_71;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          sub_1C44238B8(26, a2);
                                                          if (v10 && *v15 == 26)
                                                          {
                                                            goto LABEL_71;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        sub_1C44238B8(25, a2);
                                                        if (v10 && *v15 == 25)
                                                        {
                                                          goto LABEL_71;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      sub_1C44238B8(24, a2);
                                                      if (v10 && *v15 == 24)
                                                      {
                                                        goto LABEL_71;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    sub_1C44238B8(23, a2);
                                                    if (v10 && *v15 == 23)
                                                    {
                                                      goto LABEL_71;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  sub_1C44238B8(22, a2);
                                                  if (v10 && *v15 == 22)
                                                  {
                                                    goto LABEL_71;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                sub_1C44238B8(21, a2);
                                                if (v10 && *v15 == 21)
                                                {
                                                  goto LABEL_71;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              sub_1C44238B8(20, a2);
                                              if (v10 && *v15 == 20)
                                              {
                                                goto LABEL_71;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            sub_1C44238B8(19, a2);
                                            if (v10 && *v15 == 19)
                                            {
                                              goto LABEL_71;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          sub_1C44238B8(18, a2);
                                          if (v10 && *v15 == 18)
                                          {
                                            goto LABEL_71;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        sub_1C44238B8(17, a2);
                                        if (v10 && *v15 == 17)
                                        {
                                          goto LABEL_71;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      sub_1C44238B8(16, a2);
                                      if (v10 && *v15 == 16)
                                      {
                                        goto LABEL_71;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    sub_1C44238B8(15, a2);
                                    if (v10 && *v15 == 15)
                                    {
                                      goto LABEL_71;
                                    }
                                  }
                                }

                                else
                                {
                                  sub_1C44238B8(14, a2);
                                  if (v10 && *v15 == 14)
                                  {
                                    goto LABEL_71;
                                  }
                                }
                              }

                              else
                              {
                                sub_1C44238B8(13, a2);
                                if (v10 && *v15 == 13)
                                {
                                  goto LABEL_71;
                                }
                              }
                            }

                            else
                            {
                              sub_1C44238B8(12, a2);
                              if (v10 && *v15 == 12)
                              {
                                goto LABEL_71;
                              }
                            }
                          }

                          else
                          {
                            sub_1C44238B8(11, a2);
                            if (v10 && *v15 == 11)
                            {
                              goto LABEL_71;
                            }
                          }
                        }

                        else
                        {
                          sub_1C44238B8(10, a2);
                          if (v10 && *v15 == 10)
                          {
                            goto LABEL_71;
                          }
                        }
                      }

                      else
                      {
                        sub_1C44238B8(9, a2);
                        if (v10 && *v15 == 9)
                        {
                          goto LABEL_71;
                        }
                      }
                    }

                    else
                    {
                      sub_1C44238B8(8, a2);
                      if (v10 && *v15 == 8)
                      {
                        goto LABEL_71;
                      }
                    }
                  }

                  else
                  {
                    sub_1C44238B8(7, a2);
                    if (v10 && *v15 == 7)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                else
                {
                  sub_1C44238B8(6, a2);
                  if (v10 && *v15 == 6)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                sub_1C44238B8(5, a2);
                if (v10 && *v15 == 5)
                {
                  goto LABEL_71;
                }
              }
            }

            else
            {
              sub_1C44238B8(4, a2);
              if (v10 && *v15 == 4)
              {
                goto LABEL_71;
              }
            }
          }

          else
          {
            sub_1C44238B8(3, a2);
            if (v10 && *v15 == 3)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        sub_1C44238B8(v3, a2);
        if (v10)
        {
          v26 = vorrq_s8(*v25, v25[1]);
        }
      }

      return;
    default:
      if (!*(a2 + 32))
      {
        v8 = *(a2 + 8) == v7;
        *(a2 + 16);
        *a2;
      }

      return;
  }
}

uint64_t sub_1C4C99FD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEE006874676E654CLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C4FBEA50 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001C4FBEA70 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4C9A0FC(char a1)
{
  if (!a1)
  {
    return 0x65636E6575716573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000019;
}

uint64_t sub_1C4C9A164()
{
  sub_1C4404078();
  v2 = v1 == 0x727453656D6F6962 && v0 == 0xEB000000006D6165;
  if (v2 || (sub_1C4461D50(), (sub_1C4F02938() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 7565423 && v0 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C4461D50();
    sub_1C4F02938();
    sub_1C4406834();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9A218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69726575516C7173 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65727574616566 && a2 == 0xEC00000073656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9A2EC(char a1)
{
  if (a1)
  {
    return 0x4E65727574616566;
  }

  else
  {
    return 0x69726575516C7173;
  }
}

uint64_t sub_1C4C9A330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E496C6C6163 && a2 == 0xEF6E6F6974636172;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C6C6174736E69 && a2 == 0xEC00000070704164;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C4FBE850 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C4FBE870 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65746E4965646F6DLL && a2 == 0xEF6E6F6974636172;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4FA90B0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001C4FA9150 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4C746E6569626D61 && a2 == 0xEC00000074686769;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x80000001C4FA90D0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C4FBE890 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656D6F6962 && a2 == 0xE500000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C7153656D6F6962 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x79616C50726163 && a2 == 0xE700000000000000;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001C4FBE8B0 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6944656369766564 && a2 == 0xED000079616C7073;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F50656369766564 && a2 == 0xEB00000000726577;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6957656369766564 && a2 == 0xEE007373656C6572;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000015 && 0x80000001C4FBE8D0 == a2;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6465727265666E69 && a2 == 0xEC00000065646F4DLL;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001C4FBE8F0 == a2;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x636F4C6F7263696DLL && a2 == 0xED00006E6F697461;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x80000001C4FA90F0 == a2;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x74536E6F69746F6DLL && a2 == 0xEB00000000657461;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6D45656C706F6570 && a2 == 0xEB000000006C6961;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x614E656C706F6570 && a2 == 0xEA0000000000656DLL;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6C61636973796870 && a2 == 0xEE006C6169636F53;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6765746143696F70 && a2 == 0xEB0000000079726FLL;
                                                          if (v33 || (sub_1C4F02938() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6C706D45656D6173 && a2 == 0xEC0000007265796FLL;
                                                            if (v34 || (sub_1C4F02938() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000010 && 0x80000001C4F9AF40 == a2;
                                                              if (v35 || (sub_1C4F02938() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x616E41646E756F73 && a2 == 0xED0000736973796CLL;
                                                                if (v36 || (sub_1C4F02938() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x44646E41656D6974 && a2 == 0xEB00000000657461;
                                                                  if (v37 || (sub_1C4F02938() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000015 && 0x80000001C4FA9040 == a2;
                                                                    if (v38 || (sub_1C4F02938() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000;
                                                                      if (v39 || (sub_1C4F02938() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001FLL && 0x80000001C4FBE910 == a2;
                                                                        if (v40 || (sub_1C4F02938() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69;
                                                                          if (v41 || (sub_1C4F02938() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000021 && 0x80000001C4FBE930 == a2;
                                                                            if (v42 || (sub_1C4F02938() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000017 && 0x80000001C4F93080 == a2;
                                                                              if (v43 || (sub_1C4F02938() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000018 && 0x80000001C4FBE960 == a2;
                                                                                if (v44 || (sub_1C4F02938() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000013 && 0x80000001C4F85FF0 == a2;
                                                                                  if (v45 || (sub_1C4F02938() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000018 && 0x80000001C4F86030 == a2;
                                                                                    if (v46 || (sub_1C4F02938() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000019 && 0x80000001C4F86010 == a2;
                                                                                      if (v47 || (sub_1C4F02938() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else if (a1 == 0xD00000000000001DLL && 0x80000001C4FBE980 == a2)
                                                                                      {

                                                                                        return 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v49 = sub_1C4F02938();

                                                                                        if (v49)
                                                                                        {
                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4C9B024(char a1)
{
  result = 0x65746E496C6C6163;
  switch(a1)
  {
    case 1:
      return 0x656C6C6174736E69;
    case 2:
    case 6:
    case 39:
    case 41:
      return 0xD000000000000018;
    case 3:
      return 0xD000000000000014;
    case 4:
      return 0x65746E4965646F6DLL;
    case 5:
      return 0xD000000000000010;
    case 7:
      return 0x4C746E6569626D61;
    case 8:
    case 22:
    case 38:
      return 0xD000000000000017;
    case 9:
      return 0x636E75614C707061;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x656D6F6962;
    case 12:
      return 0x6C7153656D6F6962;
    case 13:
      return 0x79616C50726163;
    case 14:
    case 40:
      return 0xD000000000000013;
    case 15:
      return 0x6944656369766564;
    case 16:
      return 0x6F50656369766564;
    case 17:
      return 0x6957656369766564;
    case 18:
    case 33:
      v3 = 5;
      goto LABEL_34;
    case 19:
      return 0x6465727265666E69;
    case 20:
      return 0xD000000000000010;
    case 21:
      return 0x636F4C6F7263696DLL;
    case 23:
      return 0x74536E6F69746F6DLL;
    case 24:
      return 0x6979616C50776F6ELL;
    case 25:
      return 0x6D45656C706F6570;
    case 26:
      return 0x614E656C706F6570;
    case 27:
      return 0x6C61636973796870;
    case 28:
      return 0x6765746143696F70;
    case 29:
      return 0x6C706D45656D6173;
    case 30:
      return 0xD000000000000010;
    case 31:
      return 0x616E41646E756F73;
    case 32:
      return 0x44646E41656D6974;
    case 34:
      return 0x74756F6B726F77;
    case 35:
      return 0xD00000000000001FLL;
    case 36:
      return 0x54746E6572727563;
    case 37:
      return 0xD000000000000021;
    case 42:
      v3 = 9;
      goto LABEL_34;
    case 43:
      v3 = 13;
LABEL_34:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C9B4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746365707361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C4FBEA30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9B5AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x746365707361;
  }
}

uint64_t sub_1C4C9B5E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x80000001C4FBE9F0 == a2;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C4FBEA10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C4C9B6B8(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1C4C9B6F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001C4FBE9F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C9B78C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001C4FBE9D0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6F43696F6CLL && a2 == 0xEE00776569567478)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9B864(char a1)
{
  if (a1)
  {
    return 0x65746E6F43696F6CLL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C4C9B8AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000020 && 0x80000001C4FBE9A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C9B948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000020 && 0x80000001C4FBE9A0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6F43696F6CLL && a2 == 0xEE00776569567478)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9BA20(char a1)
{
  if (a1)
  {
    return 0x65746E6F43696F6CLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

void sub_1C4C9BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v450 = v21;
  v446 = v20;
  v27 = v26;
  v28 = sub_1C456902C(&qword_1EC0C5B30, &qword_1C4F64260);
  sub_1C43FFAE0(v28, &v395);
  v362 = v29;
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  sub_1C43FCE30(v33);
  v34 = sub_1C456902C(&qword_1EC0C5B38, &qword_1C4F64268);
  v35 = sub_1C43FCDF8(v34);
  v444 = v36;
  v445 = v35;
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v443 = v40;
  v441 = sub_1C456902C(&qword_1EC0C5B40, &qword_1C4F64270);
  sub_1C43FCDF8(v441);
  v439 = v41;
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v437 = v45;
  v442 = sub_1C456902C(&qword_1EC0C5B48, &qword_1C4F64278);
  sub_1C43FCDF8(v442);
  v440 = v46;
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBC74();
  sub_1C44D3E34(v50);
  v51 = sub_1C456902C(&qword_1EC0C5B50, &qword_1C4F64280);
  sub_1C43FFAE0(v51, &v392);
  v359 = v52;
  v54 = *(v53 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBC74();
  sub_1C43FCE30(v56);
  v57 = sub_1C456902C(&qword_1EC0C5B58, &qword_1C4F64288);
  v58 = sub_1C43FCDF8(v57);
  v432 = v59;
  v433 = v58;
  v61 = *(v60 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBC74();
  sub_1C43FCE30(v63);
  v64 = sub_1C456902C(&qword_1EC0C5B60, &qword_1C4F64290);
  v65 = sub_1C43FCDF8(v64);
  v435 = v66;
  v436 = v65;
  v68 = *(v67 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBC74();
  v434 = v70;
  v71 = sub_1C456902C(&qword_1EC0C5B68, &qword_1C4F64298);
  sub_1C43FFAE0(v71, &a18);
  v430 = v72;
  v74 = *(v73 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBC74();
  sub_1C43FCE30(v76);
  v77 = sub_1C456902C(&qword_1EC0C5B70, &qword_1C4F642A0);
  sub_1C43FFAE0(v77, &v389);
  v356 = v78;
  v80 = *(v79 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBC74();
  sub_1C43FCE30(v82);
  v83 = sub_1C456902C(&qword_1EC0C5B78, &qword_1C4F642A8);
  sub_1C43FFAE0(v83, &v386);
  v353 = v84;
  v86 = *(v85 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C43FBC74();
  sub_1C43FCE30(v88);
  v89 = sub_1C456902C(&qword_1EC0C5B80, &qword_1C4F642B0);
  sub_1C43FFAE0(v89, &v383);
  v350[32] = v90;
  v92 = *(v91 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBC74();
  sub_1C43FCE30(v94);
  v95 = sub_1C456902C(&qword_1EC0C5B88, &qword_1C4F642B8);
  sub_1C43FFAE0(v95, &v380);
  v350[29] = v96;
  v98 = *(v97 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v99);
  sub_1C43FBC74();
  sub_1C43FCE30(v100);
  v101 = sub_1C456902C(&qword_1EC0C5B90, &qword_1C4F642C0);
  sub_1C43FFAE0(v101, &v377);
  v350[26] = v102;
  v104 = *(v103 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v105);
  sub_1C43FBC74();
  sub_1C43FCE30(v106);
  v107 = sub_1C456902C(&qword_1EC0C5B98, &qword_1C4F642C8);
  sub_1C43FFAE0(v107, &v374);
  v350[23] = v108;
  v110 = *(v109 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v111);
  sub_1C43FBC74();
  sub_1C43FCE30(v112);
  v113 = sub_1C456902C(&qword_1EC0C5BA0, &qword_1C4F642D0);
  sub_1C43FFAE0(v113, &v371);
  v350[20] = v114;
  v116 = *(v115 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v117);
  sub_1C43FBC74();
  sub_1C43FCE30(v118);
  v119 = sub_1C456902C(&qword_1EC0C5BA8, &qword_1C4F642D8);
  sub_1C43FFAE0(v119, &v368);
  v350[17] = v120;
  v122 = *(v121 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v123);
  sub_1C43FBC74();
  sub_1C43FCE30(v124);
  v125 = sub_1C456902C(&qword_1EC0C5BB0, &qword_1C4F642E0);
  sub_1C43FFAE0(v125, &v365);
  v350[14] = v126;
  v128 = *(v127 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v129);
  sub_1C43FBC74();
  sub_1C43FCE30(v130);
  v131 = sub_1C456902C(&qword_1EC0C5BB8, &qword_1C4F642E8);
  sub_1C43FFAE0(v131, &v362);
  v350[11] = v132;
  v134 = *(v133 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FBC74();
  sub_1C43FCE30(v136);
  v137 = sub_1C456902C(&qword_1EC0C5BC0, &qword_1C4F642F0);
  sub_1C43FFAE0(v137, &v359);
  v350[8] = v138;
  v140 = *(v139 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v141);
  sub_1C43FBC74();
  sub_1C43FCE30(v142);
  v143 = sub_1C456902C(&qword_1EC0C5BC8, &qword_1C4F642F8);
  sub_1C43FFAE0(v143, &v356);
  v350[5] = v144;
  v146 = *(v145 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v147);
  sub_1C43FBC74();
  sub_1C43FCE30(v148);
  v149 = sub_1C456902C(&qword_1EC0C5BD0, &qword_1C4F64300);
  sub_1C43FFAE0(v149, &v353);
  v350[2] = v150;
  v152 = *(v151 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v153);
  sub_1C43FBC74();
  sub_1C43FCE30(v154);
  v155 = sub_1C456902C(&qword_1EC0C5BD8, &qword_1C4F64308);
  sub_1C43FFAE0(v155, &v398);
  v365 = v156;
  v158 = *(v157 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v159);
  sub_1C43FBC74();
  sub_1C43FCE30(v160);
  v161 = sub_1C456902C(&qword_1EC0C5BE0, &qword_1C4F64310);
  sub_1C43FFAE0(v161, &v401);
  v368 = v162;
  v164 = *(v163 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v165);
  sub_1C43FBC74();
  sub_1C43FCE30(v166);
  v167 = sub_1C456902C(&qword_1EC0C5BE8, &qword_1C4F64318);
  sub_1C43FFAE0(v167, &v404);
  v371 = v168;
  v170 = *(v169 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v171);
  sub_1C43FBC74();
  sub_1C43FCE30(v172);
  v173 = sub_1C456902C(&qword_1EC0C5BF0, &qword_1C4F64320);
  sub_1C43FFAE0(v173, &v407);
  v374 = v174;
  v176 = *(v175 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v177);
  sub_1C43FBC74();
  sub_1C43FCE30(v178);
  v179 = sub_1C456902C(&qword_1EC0C5BF8, &qword_1C4F64328);
  sub_1C43FFAE0(v179, &v410);
  v377 = v180;
  v182 = *(v181 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v183);
  sub_1C43FBC74();
  sub_1C43FCE30(v184);
  v185 = sub_1C456902C(&qword_1EC0C5C00, &qword_1C4F64330);
  sub_1C43FFAE0(v185, &v413);
  v380 = v186;
  v188 = *(v187 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v189);
  sub_1C43FBC74();
  sub_1C43FCE30(v190);
  v191 = sub_1C456902C(&qword_1EC0C5C08, &qword_1C4F64338);
  sub_1C43FFAE0(v191, &v416);
  v383 = v192;
  v194 = *(v193 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v195);
  sub_1C43FBC74();
  sub_1C43FCE30(v196);
  v197 = sub_1C456902C(&qword_1EC0C5C10, &qword_1C4F64340);
  sub_1C43FFAE0(v197, &v419);
  v386 = v198;
  v200 = *(v199 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v201);
  sub_1C43FBC74();
  sub_1C43FCE30(v202);
  v203 = sub_1C456902C(&qword_1EC0C5C18, &qword_1C4F64348);
  sub_1C43FFAE0(v203, &v422);
  v389 = v204;
  v206 = *(v205 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v207);
  sub_1C43FBC74();
  sub_1C43FCE30(v208);
  v209 = sub_1C456902C(&qword_1EC0C5C20, &qword_1C4F64350);
  sub_1C43FFAE0(v209, &v425);
  v392 = v210;
  v212 = *(v211 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v213);
  sub_1C43FBC74();
  sub_1C43FCE30(v214);
  v215 = sub_1C456902C(&qword_1EC0C5C28, &qword_1C4F64358);
  sub_1C43FFAE0(v215, &a14);
  v426 = v216;
  v218 = *(v217 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v219);
  sub_1C43FBC74();
  sub_1C43FCE30(v220);
  v221 = sub_1C456902C(&qword_1EC0C5C30, &qword_1C4F64360);
  sub_1C43FFAE0(v221, &a11);
  v423 = v222;
  v224 = *(v223 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v225);
  sub_1C43FBC74();
  sub_1C43FCE30(v226);
  v227 = sub_1C456902C(&qword_1EC0C5C38, &qword_1C4F64368);
  sub_1C43FFAE0(v227, &v453);
  v420 = v228;
  v230 = *(v229 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v231);
  sub_1C43FBC74();
  sub_1C43FCE30(v232);
  v233 = sub_1C456902C(&qword_1EC0C5C40, &qword_1C4F64370);
  sub_1C43FFAE0(v233, &v428);
  v395 = v234;
  v236 = *(v235 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v237);
  sub_1C43FBC74();
  sub_1C43FCE30(v238);
  v239 = sub_1C456902C(&qword_1EC0C5C48, &qword_1C4F64378);
  sub_1C43FFAE0(v239, &v431);
  v398 = v240;
  v242 = *(v241 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v243);
  sub_1C43FBC74();
  sub_1C43FCE30(v244);
  v245 = sub_1C456902C(&qword_1EC0C5C50, &qword_1C4F64380);
  sub_1C43FFAE0(v245, &v434);
  v401 = v246;
  v248 = *(v247 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v249);
  sub_1C43FBC74();
  sub_1C43FCE30(v250);
  v251 = sub_1C456902C(&qword_1EC0C5C58, &qword_1C4F64388);
  sub_1C43FFAE0(v251, &v437);
  v404 = v252;
  v254 = *(v253 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v255);
  sub_1C43FBC74();
  sub_1C43FCE30(v256);
  v257 = sub_1C456902C(&qword_1EC0C5C60, &qword_1C4F64390);
  sub_1C43FFAE0(v257, &v440);
  v407 = v258;
  v260 = *(v259 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v261);
  sub_1C43FBC74();
  sub_1C43FCE30(v262);
  v263 = sub_1C456902C(&qword_1EC0C5C68, &qword_1C4F64398);
  sub_1C43FFAE0(v263, &v443);
  v410 = v264;
  v266 = *(v265 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v267);
  sub_1C43FBC74();
  sub_1C43FCE30(v268);
  v269 = sub_1C456902C(&qword_1EC0C5C70, &qword_1C4F643A0);
  sub_1C43FFAE0(v269, &v446);
  v413 = v270;
  v272 = *(v271 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v273);
  sub_1C43FBC74();
  sub_1C43FCE30(v274);
  v275 = sub_1C456902C(&qword_1EC0C5C78, &qword_1C4F643A8);
  sub_1C43FFAE0(v275, &v448);
  v415 = v276;
  v278 = *(v277 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v279);
  sub_1C43FBD64();
  v280 = sub_1C456902C(&qword_1EC0C5C80, &qword_1C4F643B0);
  sub_1C43FCDF8(v280);
  v417 = v281;
  v283 = *(v282 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v284);
  sub_1C4440AD4();
  v285 = sub_1C456902C(&qword_1EC0C5C88, &qword_1C4F643B8);
  sub_1C43FCDF8(v285);
  v418 = v286;
  v288 = *(v287 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v289);
  v291 = v350 - v290;
  v449 = sub_1C456902C(&qword_1EC0C5C90, &unk_1C4F643C0);
  sub_1C43FCDF8(v449);
  v447 = v292;
  v294 = *(v293 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v295);
  sub_1C4418964();
  v296 = v27[4];
  sub_1C4417F50(v27, v27[3]);
  sub_1C4CAB80C();
  sub_1C44A3AE8();
  sub_1C4F02BF8();
  v297 = *v446;
  v298 = *(v446 + 8);
  v299 = *(v446 + 9);
  v300 = *(v446 + 16);
  v301 = *(v446 + 24);
  v302 = (*(v446 + 10) << 16) | (*(v446 + 14) << 48);
  v303 = v298 | (v299 << 8);
  v304 = v303 | v302;
  switch(*(v446 + 32))
  {
    case 1:
      v327 = *(v446 + 16);
      LOBYTE(v451) = 11;
      sub_1C4CAC388();
      v309 = v448;
      v308 = v449;
      sub_1C44415FC();
      sub_1C4F02718();
      sub_1C4CB03C8();
      v328 = v450;
      sub_1C4F02798();
      if (!v328)
      {
        v451 = v327;
        sub_1C4459AE4();
        sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
        sub_1C4CA8BA4();
        sub_1C44290E4();
        sub_1C44247E8();
        sub_1C4F027E8();
      }

      v312 = v423;
      goto LABEL_24;
    case 2:
      v317 = v303 | v302;
      LOBYTE(v451) = 12;
      sub_1C4CAC334();
      v318 = v425;
      sub_1C4F02718();
      v451 = v297;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4402E98();
      sub_1C443D11C(v319);
      sub_1C44290E4();
      v320 = v427;
      sub_1C4485BDC();
      v321 = v450;
      sub_1C4F027E8();
      if (!v321)
      {
        v451 = v317;
        sub_1C4459AE4();
        sub_1C44290E4();
        sub_1C4485BDC();
        sub_1C4F027E8();
      }

      sub_1C43FFB20(&a13);
      v322(v318, v320);
      v323 = *(v447 + 8);
      v315 = sub_1C43FE990();
      goto LABEL_35;
    case 3:
      LOBYTE(v451) = 36;
      sub_1C4CABAAC();
      v325 = v297;
      v280 = v448;
      v297 = v449;
      sub_1C44099B8();
      sub_1C4F02718();
      v451 = v325;
      v452 = v298 & 1;
      sub_1C4CAC778();
      sub_1C44290E4();
      sub_1C4455994(&a18);
      sub_1C4F027E8();
      if (!v21)
      {
        LOBYTE(v451) = v299;
        sub_1C4459AE4();
        sub_1C4CAC7CC();
        sub_1C44290E4();
        sub_1C4F027E8();
      }

      v306 = &a17;
      goto LABEL_19;
    case 4:
      v307 = *(v446 + 16);
      LOBYTE(v451) = 37;
      sub_1C4CABA58();
      v309 = v448;
      v308 = v449;
      sub_1C44415FC();
      sub_1C4F02718();
      sub_1C4CB03C8();
      v310 = v450;
      sub_1C4F02798();
      if (!v310)
      {
        v451 = v307;
        sub_1C4459AE4();
        sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        sub_1C4402E98();
        sub_1C443D11C(v311);
        sub_1C44290E4();
        sub_1C44247E8();
        sub_1C4F027E8();
      }

      v312 = v435;
LABEL_24:
      v329 = *(v312 + 8);
      v330 = sub_1C43FD018();
      v331(v330);
      v316 = *(v447 + 8);
      v315 = v309;
      goto LABEL_25;
    case 5:
      sub_1C4CB03D4(38);
      sub_1C4CABA04();
      sub_1C44025F4();
      sub_1C43FD2BC();
      sub_1C444ADBC();
      sub_1C4F02798();
      v326 = v432;
      goto LABEL_33;
    case 6:
      v332 = *(v446 + 24);
      v333 = *(v446 + 16);
      sub_1C4CB03D4(40);
      sub_1C4CAB95C();
      sub_1C44025F4();
      sub_1C4CB03C8();
      sub_1C43FD2BC();
      sub_1C444ADBC();
      v334 = v450;
      sub_1C4F02798();
      if (!v334)
      {
        sub_1C4480434();
        sub_1C43FD258();
        sub_1C444ADBC();
        sub_1C4F02798();
      }

      v326 = v440;
      goto LABEL_33;
    case 7:
      sub_1C4CB03D4(41);
      sub_1C4CAB908();
      sub_1C44025F4();
      sub_1C43FD2BC();
      sub_1C444ADBC();
      sub_1C4F02798();
      v326 = v439;
      goto LABEL_33;
    case 8:
      v335 = *(v446 + 24);
      v336 = *(v446 + 16);
      sub_1C4CB03D4(42);
      sub_1C4CAB8B4();
      sub_1C44025F4();
      sub_1C4CB03C8();
      sub_1C43FD2BC();
      sub_1C444ADBC();
      v337 = v450;
      sub_1C4F02798();
      if (!v337)
      {
        sub_1C4480434();
        sub_1C43FD258();
        sub_1C444ADBC();
        sub_1C4F02798();
      }

      v326 = v444;
      goto LABEL_33;
    case 9:
      if (v301 | v300 | v297 | v304)
      {
        v313 = v301 | v300 | v304;
        if (v297 == 1 && !v313)
        {
          sub_1C4480434();
          sub_1C4CAC6D0();
          v297 = v449;
          sub_1C44099B8();
          sub_1C4F02718();
          sub_1C43FFB20(&v449);
          v314(v23, v280);
          v315 = sub_1C44018C0();
LABEL_34:
          v324 = v297;
          goto LABEL_35;
        }

        v308 = v449;
        if (v297 == 2 && !v313)
        {
          sub_1C44A3CF8();
          sub_1C4CAC67C();
          sub_1C44415FC();
          sub_1C4F02718();
          sub_1C43FFB20(&v447);
          v347 = v22;
          v348 = &v448;
          goto LABEL_66;
        }

        if (v297 == 3 && !v313)
        {
          LOBYTE(v451) = 3;
          sub_1C4CAC628();
          sub_1C4405498(&v444);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v445);
          v348 = &v446;
          goto LABEL_66;
        }

        if (v297 == 4 && !v313)
        {
          LOBYTE(v451) = 4;
          sub_1C4CAC5D4();
          sub_1C4405498(&v441);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v442);
          v348 = &v443;
          goto LABEL_66;
        }

        if (v297 == 5 && !v313)
        {
          LOBYTE(v451) = 5;
          sub_1C4CAC580();
          sub_1C4405498(&v438);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v439);
          v348 = &v440;
          goto LABEL_66;
        }

        if (v297 == 6 && !v313)
        {
          LOBYTE(v451) = 6;
          sub_1C4CAC52C();
          sub_1C4405498(&v435);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v436);
          v348 = &v437;
          goto LABEL_66;
        }

        if (v297 == 7 && !v313)
        {
          LOBYTE(v451) = 7;
          sub_1C4CAC4D8();
          sub_1C4405498(&v432);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v433);
          v348 = &v434;
          goto LABEL_66;
        }

        if (v297 == 8 && !v313)
        {
          LOBYTE(v451) = 8;
          sub_1C4CAC484();
          sub_1C4405498(&v429);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v430);
          v348 = &v431;
          goto LABEL_66;
        }

        if (v297 == 9 && !v313)
        {
          LOBYTE(v451) = 9;
          sub_1C4CAC430();
          sub_1C4405498(&v426);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v427);
          v348 = &v428;
          goto LABEL_66;
        }

        if (v297 == 10 && !v313)
        {
          LOBYTE(v451) = 13;
          sub_1C4CAC2E0();
          sub_1C4405498(&v423);
          sub_1C4F02718();
          v347 = sub_1C4412B8C(&v424);
          v348 = &v425;
LABEL_66:
          v346(v347, *(v348 - 32));
          v315 = sub_1C44018C0();
LABEL_25:
          v324 = v308;
LABEL_35:
          v316(v315, v324);
          goto LABEL_36;
        }

        if (v297 != 11 || v313)
        {
          if (v297 != 12 || v313)
          {
            if (v297 != 13 || v313)
            {
              if (v297 != 14 || v313)
              {
                if (v297 != 15 || v313)
                {
                  if (v297 != 16 || v313)
                  {
                    if (v297 != 17 || v313)
                    {
                      if (v297 != 18 || v313)
                      {
                        if (v297 != 19 || v313)
                        {
                          if (v297 != 20 || v313)
                          {
                            if (v297 != 21 || v313)
                            {
                              if (v297 != 22 || v313)
                              {
                                if (v297 != 23 || v313)
                                {
                                  if (v297 != 24 || v313)
                                  {
                                    if (v297 != 25 || v313)
                                    {
                                      if (v297 != 26 || v313)
                                      {
                                        if (v297 != 27 || v313)
                                        {
                                          if (v297 != 28 || v313)
                                          {
                                            if (v297 != 29 || v313)
                                            {
                                              if (v297 != 30 || v313)
                                              {
                                                if (v297 != 31 || v313)
                                                {
                                                  if (v297 != 32 || v313)
                                                  {
                                                    if (v297 != 33 || v313)
                                                    {
                                                      LOBYTE(v451) = 43;
                                                      sub_1C4CAB860();
                                                      sub_1C441F074(&v393);
                                                      v342 = sub_1C441E18C(&v394);
                                                      v349 = &v395;
                                                    }

                                                    else
                                                    {
                                                      LOBYTE(v451) = 39;
                                                      sub_1C4CAB9B0();
                                                      sub_1C441F074(&v390);
                                                      v342 = sub_1C441E18C(&v391);
                                                      v349 = &v392;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(v451) = 35;
                                                    sub_1C4CABBA8();
                                                    sub_1C441F074(&v387);
                                                    v342 = sub_1C441E18C(&v388);
                                                    v349 = &v389;
                                                  }
                                                }

                                                else
                                                {
                                                  LOBYTE(v451) = 34;
                                                  sub_1C4CABBFC();
                                                  sub_1C441F074(&v384);
                                                  v342 = sub_1C441E18C(&v385);
                                                  v349 = &v386;
                                                }
                                              }

                                              else
                                              {
                                                LOBYTE(v451) = 33;
                                                sub_1C4CABC50();
                                                sub_1C441F074(&v381);
                                                v342 = sub_1C441E18C(&v382);
                                                v349 = &v383;
                                              }
                                            }

                                            else
                                            {
                                              LOBYTE(v451) = 32;
                                              sub_1C4CABCA4();
                                              sub_1C441F074(&v378);
                                              v342 = sub_1C441E18C(&v379);
                                              v349 = &v380;
                                            }
                                          }

                                          else
                                          {
                                            LOBYTE(v451) = 31;
                                            sub_1C4CABCF8();
                                            sub_1C441F074(&v375);
                                            v342 = sub_1C441E18C(&v376);
                                            v349 = &v377;
                                          }
                                        }

                                        else
                                        {
                                          LOBYTE(v451) = 30;
                                          sub_1C4CABD4C();
                                          sub_1C441F074(&v372);
                                          v342 = sub_1C441E18C(&v373);
                                          v349 = &v374;
                                        }
                                      }

                                      else
                                      {
                                        LOBYTE(v451) = 29;
                                        sub_1C4CABDA0();
                                        sub_1C441F074(&v369);
                                        v342 = sub_1C441E18C(&v370);
                                        v349 = &v371;
                                      }
                                    }

                                    else
                                    {
                                      LOBYTE(v451) = 28;
                                      sub_1C4CABDF4();
                                      sub_1C441F074(&v366);
                                      v342 = sub_1C441E18C(&v367);
                                      v349 = &v368;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v451) = 27;
                                    sub_1C4CABE48();
                                    sub_1C441F074(&v363);
                                    v342 = sub_1C441E18C(&v364);
                                    v349 = &v365;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v451) = 26;
                                  sub_1C4CABE9C();
                                  sub_1C441F074(&v360);
                                  v342 = sub_1C441E18C(&v361);
                                  v349 = &v362;
                                }
                              }

                              else
                              {
                                LOBYTE(v451) = 25;
                                sub_1C4CABEF0();
                                sub_1C441F074(&v357);
                                v342 = sub_1C441E18C(&v358);
                                v349 = &v359;
                              }
                            }

                            else
                            {
                              LOBYTE(v451) = 24;
                              sub_1C4CABF44();
                              sub_1C441F074(&v354);
                              v342 = sub_1C441E18C(&v355);
                              v349 = &v356;
                            }
                          }

                          else
                          {
                            LOBYTE(v451) = 23;
                            sub_1C4CABF98();
                            sub_1C441F074(&v351);
                            v342 = sub_1C441E18C(&v352);
                            v349 = &v353;
                          }
                        }

                        else
                        {
                          LOBYTE(v451) = 22;
                          sub_1C4CABFEC();
                          sub_1C441F074(&v396);
                          v342 = sub_1C441E18C(&v397);
                          v349 = &v398;
                        }
                      }

                      else
                      {
                        LOBYTE(v451) = 21;
                        sub_1C4CAC040();
                        sub_1C441F074(&v399);
                        v342 = sub_1C441E18C(&v400);
                        v349 = &v401;
                      }
                    }

                    else
                    {
                      LOBYTE(v451) = 20;
                      sub_1C4CAC094();
                      sub_1C441F074(&v402);
                      v342 = sub_1C441E18C(&v403);
                      v349 = &v404;
                    }
                  }

                  else
                  {
                    LOBYTE(v451) = 19;
                    sub_1C4CAC0E8();
                    sub_1C441F074(&v405);
                    v342 = sub_1C441E18C(&v406);
                    v349 = &v407;
                  }
                }

                else
                {
                  LOBYTE(v451) = 18;
                  sub_1C4CAC13C();
                  sub_1C441F074(&v408);
                  v342 = sub_1C441E18C(&v409);
                  v349 = &v410;
                }
              }

              else
              {
                LOBYTE(v451) = 17;
                sub_1C4CAC190();
                sub_1C441F074(&v411);
                v342 = sub_1C441E18C(&v412);
                v349 = &v413;
              }
            }

            else
            {
              LOBYTE(v451) = 16;
              sub_1C4CAC1E4();
              sub_1C441F074(&v414);
              v342 = sub_1C441E18C(&v415);
              v349 = &v416;
            }
          }

          else
          {
            LOBYTE(v451) = 15;
            sub_1C4CAC238();
            sub_1C441F074(&v417);
            v342 = sub_1C441E18C(&v418);
            v349 = &v419;
          }
        }

        else
        {
          LOBYTE(v451) = 14;
          sub_1C4CAC28C();
          sub_1C441F074(&v420);
          v342 = sub_1C441E18C(&v421);
          v349 = &v422;
        }

        v343 = *(v349 - 32);
      }

      else
      {
        LOBYTE(v451) = 0;
        sub_1C4CAC724();
        sub_1C44099B8();
        sub_1C4F02718();
        sub_1C43FFB20(&v450);
        v342 = v291;
        v343 = v285;
      }

      v341(v342, v343);
      v344 = sub_1C4404888();
      v345(v344);
LABEL_36:
      sub_1C43FBC80();
      return;
    default:
      v305 = *(v446 + 16);
      LOBYTE(v451) = 10;
      sub_1C4CAC3DC();
      sub_1C44025F4();
      LOBYTE(v451) = 0;
      sub_1C4455994(&v453);
      sub_1C4F027D8();
      if (!v21)
      {
        sub_1C447F604();
        sub_1C4F027B8();
        sub_1C44A3CF8();
        sub_1C4F027B8();
      }

      v306 = &v452;
LABEL_19:
      v326 = *(v306 - 32);
LABEL_33:
      v338 = *(v326 + 8);
      v339 = sub_1C43FE990();
      v340(v339);
      v316 = *(v447 + 8);
      v315 = v280;
      goto LABEL_34;
  }
}

void sub_1C4C9DE00()
{
  sub_1C43FBD3C();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10) | (*(v0 + 14) << 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v2 | (v3 << 8) | (v4 << 16);
  v9 = v8;
  switch(*(v0 + 32))
  {
    case 1:
      MEMORY[0x1C69417F0](11);
      sub_1C44A18A8();
      sub_1C4F01298();
      sub_1C43FE9F0();

      sub_1C47C95E4(v19, v20);
      return;
    case 2:
      MEMORY[0x1C69417F0](12);
      sub_1C49EFD8C(v9, v1);
      goto LABEL_19;
    case 3:
      MEMORY[0x1C69417F0](36);
      if (v2)
      {
        v1 = 1;
      }

      else
      {
        MEMORY[0x1C69417F0](0);
      }

      MEMORY[0x1C69417F0](v1);
      sub_1C4601534(v3);
      sub_1C4F01298();
      sub_1C43FE9F0();

      return;
    case 4:
      MEMORY[0x1C69417F0](37);
      sub_1C44A18A8();
      sub_1C4F01298();
LABEL_19:
      sub_1C43FE9F0();

      sub_1C49EFD8C(v15, v16);
      return;
    case 5:
      v18 = 38;
      goto LABEL_29;
    case 6:
      v22 = 40;
      goto LABEL_32;
    case 7:
      v18 = 41;
LABEL_29:
      MEMORY[0x1C69417F0](v18);
      sub_1C44A18A8();
      goto LABEL_33;
    case 8:
      v22 = 42;
LABEL_32:
      MEMORY[0x1C69417F0](v22);
      sub_1C44A18A8();
      sub_1C4F01298();
LABEL_33:
      sub_1C43FE9F0();

      sub_1C4F01298();
      return;
    case 9:
      if (v7 | v5 | v1 | v6)
      {
        v12 = v7 | v5 | v6;
        if (v1 == 1 && v12 == 0)
        {
          v14 = 1;
        }

        else if (v1 != 2 || v12)
        {
          if (v1 != 3 || v12)
          {
            if (v1 != 4 || v12)
            {
              if (v1 != 5 || v12)
              {
                if (v1 != 6 || v12)
                {
                  if (v1 != 7 || v12)
                  {
                    if (v1 != 8 || v12)
                    {
                      if (v1 != 9 || v12)
                      {
                        if (v1 != 10 || v12)
                        {
                          if (v1 != 11 || v12)
                          {
                            if (v1 != 12 || v12)
                            {
                              if (v1 != 13 || v12)
                              {
                                if (v1 != 14 || v12)
                                {
                                  if (v1 != 15 || v12)
                                  {
                                    if (v1 != 16 || v12)
                                    {
                                      if (v1 != 17 || v12)
                                      {
                                        if (v1 != 18 || v12)
                                        {
                                          if (v1 != 19 || v12)
                                          {
                                            if (v1 != 20 || v12)
                                            {
                                              if (v1 != 21 || v12)
                                              {
                                                if (v1 != 22 || v12)
                                                {
                                                  if (v1 != 23 || v12)
                                                  {
                                                    if (v1 != 24 || v12)
                                                    {
                                                      if (v1 != 25 || v12)
                                                      {
                                                        if (v1 != 26 || v12)
                                                        {
                                                          if (v1 != 27 || v12)
                                                          {
                                                            if (v1 != 28 || v12)
                                                            {
                                                              if (v1 != 29 || v12)
                                                              {
                                                                if (v1 != 30 || v12)
                                                                {
                                                                  if (v1 != 31 || v12)
                                                                  {
                                                                    if (v1 != 32 || v12)
                                                                    {
                                                                      if (v1 != 33 || v12)
                                                                      {
                                                                        v14 = 43;
                                                                      }

                                                                      else
                                                                      {
                                                                        v14 = 39;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v14 = 35;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v14 = 34;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v14 = 33;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v14 = 32;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v14 = 31;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v14 = 30;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v14 = 29;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v14 = 28;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v14 = 27;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v14 = 26;
                                                  }
                                                }

                                                else
                                                {
                                                  v14 = 25;
                                                }
                                              }

                                              else
                                              {
                                                v14 = 24;
                                              }
                                            }

                                            else
                                            {
                                              v14 = 23;
                                            }
                                          }

                                          else
                                          {
                                            v14 = 22;
                                          }
                                        }

                                        else
                                        {
                                          v14 = 21;
                                        }
                                      }

                                      else
                                      {
                                        v14 = 20;
                                      }
                                    }

                                    else
                                    {
                                      v14 = 19;
                                    }
                                  }

                                  else
                                  {
                                    v14 = 18;
                                  }
                                }

                                else
                                {
                                  v14 = 17;
                                }
                              }

                              else
                              {
                                v14 = 16;
                              }
                            }

                            else
                            {
                              v14 = 15;
                            }
                          }

                          else
                          {
                            v14 = 14;
                          }
                        }

                        else
                        {
                          v14 = 13;
                        }
                      }

                      else
                      {
                        v14 = 9;
                      }
                    }

                    else
                    {
                      v14 = 8;
                    }
                  }

                  else
                  {
                    v14 = 7;
                  }
                }

                else
                {
                  v14 = 6;
                }
              }

              else
              {
                v14 = 5;
              }
            }

            else
            {
              v14 = 4;
            }
          }

          else
          {
            v14 = 3;
          }
        }

        else
        {
          v14 = 2;
        }
      }

      else
      {
        v14 = 0;
      }

      MEMORY[0x1C69417F0](v14);
      goto LABEL_43;
    default:
      MEMORY[0x1C69417F0](10);
      MEMORY[0x1C69417F0](v1);
      if (v4 & 0x7FF000000000 | v7 & 0xFFFFFFFFFFFFFLL)
      {
        v10 = v2 | (v3 << 8) | (v4 << 16);
      }

      else
      {
        v10 = 0;
      }

      MEMORY[0x1C6941830](v10);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x1C6941830](v11);
LABEL_43:
      sub_1C43FE9F0();
      return;
  }
}

uint64_t sub_1C4C9E2F4()
{
  sub_1C441EC18();
  sub_1C4C9DE00();
  return sub_1C4F02B68();
}

void sub_1C4C9E32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  v585 = v20;
  v25 = v24;
  v579 = v26;
  v27 = sub_1C456902C(&qword_1EC0C59B8, &qword_1C4F640F8);
  sub_1C43FFAE0(v27, &v569);
  v538 = v28;
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v576 = v32;
  v33 = sub_1C456902C(&qword_1EC0C59C0, &qword_1C4F64100);
  sub_1C43FFAE0(v33, &v571);
  v580 = v34;
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v577 = v38;
  v39 = sub_1C456902C(&qword_1EC0C59C8, &qword_1C4F64108);
  sub_1C43FFAE0(v39, &v567);
  v536 = v40;
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  sub_1C44D3E34(v44);
  v45 = sub_1C456902C(&qword_1EC0C59D0, &qword_1C4F64110);
  sub_1C43FFAE0(v45, &v570);
  v535 = v46;
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBC74();
  v578 = v50;
  v51 = sub_1C456902C(&qword_1EC0C59D8, &qword_1C4F64118);
  sub_1C43FFAE0(v51, &v561);
  v527 = v52;
  v54 = *(v53 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBC74();
  v572 = v56;
  v57 = sub_1C456902C(&qword_1EC0C59E0, &qword_1C4F64120);
  sub_1C43FFAE0(v57, &v563);
  v528 = v58;
  v60 = *(v59 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBC74();
  v573 = v62;
  v63 = sub_1C456902C(&qword_1EC0C59E8, &qword_1C4F64128);
  sub_1C43FFAE0(v63, v565);
  v533 = v64;
  v66 = *(v65 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBC74();
  v574 = v68;
  v69 = sub_1C456902C(&qword_1EC0C59F0, &qword_1C4F64130);
  sub_1C43FFAE0(v69, &v562);
  v529 = v70;
  v72 = *(v71 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBC74();
  v571 = v74;
  v75 = sub_1C456902C(&qword_1EC0C59F8, &qword_1C4F64138);
  sub_1C43FFAE0(v75, &v558);
  v525 = v76;
  v78 = *(v77 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBC74();
  v570 = v80;
  v81 = sub_1C456902C(&qword_1EC0C5A00, &qword_1C4F64140);
  sub_1C43FFAE0(v81, &v556);
  v523 = v82;
  v84 = *(v83 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBC74();
  v569 = v86;
  v87 = sub_1C456902C(&qword_1EC0C5A08, &qword_1C4F64148);
  sub_1C43FFAE0(v87, &v554);
  v521 = v88;
  v90 = *(v89 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBC74();
  sub_1C43FCE30(v92);
  v93 = sub_1C456902C(&qword_1EC0C5A10, &qword_1C4F64150);
  sub_1C43FFAE0(v93, &v552);
  v519 = v94;
  v96 = *(v95 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v97);
  sub_1C43FBC74();
  sub_1C43FCE30(v98);
  v99 = sub_1C456902C(&qword_1EC0C5A18, &qword_1C4F64158);
  sub_1C43FFAE0(v99, &v550);
  v517 = v100;
  v102 = *(v101 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v103);
  sub_1C43FBC74();
  sub_1C43FCE30(v104);
  v105 = sub_1C456902C(&qword_1EC0C5A20, &qword_1C4F64160);
  sub_1C43FFAE0(v105, &v548);
  v515 = v106;
  v108 = *(v107 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v109);
  sub_1C43FBC74();
  sub_1C43FCE30(v110);
  v111 = sub_1C456902C(&qword_1EC0C5A28, &qword_1C4F64168);
  sub_1C43FFAE0(v111, &v546);
  v513[1] = v112;
  v114 = *(v113 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v115);
  sub_1C43FBC74();
  sub_1C43FCE30(v116);
  v117 = sub_1C456902C(&qword_1EC0C5A30, &qword_1C4F64170);
  sub_1C43FFAE0(v117, &v544);
  v512 = v118;
  v120 = *(v119 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v121);
  sub_1C43FBC74();
  sub_1C43FCE30(v122);
  v123 = sub_1C456902C(&qword_1EC0C5A38, &qword_1C4F64178);
  sub_1C43FFAE0(v123, &v542);
  v510 = v124;
  v126 = *(v125 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v127);
  sub_1C43FBC74();
  sub_1C43FCE30(v128);
  v129 = sub_1C456902C(&qword_1EC0C5A40, &qword_1C4F64180);
  sub_1C43FFAE0(v129, &v540);
  v508 = v130;
  v132 = *(v131 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v133);
  sub_1C43FBC74();
  sub_1C43FCE30(v134);
  v135 = sub_1C456902C(&qword_1EC0C5A48, &qword_1C4F64188);
  sub_1C43FFAE0(v135, &v538);
  v506 = v136;
  v138 = *(v137 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v139);
  sub_1C43FBC74();
  sub_1C43FCE30(v140);
  v141 = sub_1C456902C(&qword_1EC0C5A50, &qword_1C4F64190);
  sub_1C43FFAE0(v141, &v536);
  v504 = v142;
  v144 = *(v143 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v145);
  sub_1C43FBC74();
  sub_1C43FCE30(v146);
  v147 = sub_1C456902C(&qword_1EC0C5A58, &qword_1C4F64198);
  sub_1C43FFAE0(v147, &v534);
  v502 = v148;
  v150 = *(v149 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v151);
  sub_1C43FBC74();
  sub_1C43FCE30(v152);
  v153 = sub_1C456902C(&qword_1EC0C5A60, &qword_1C4F641A0);
  sub_1C43FFAE0(v153, &v532);
  v500 = v154;
  v156 = *(v155 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v157);
  sub_1C43FBC74();
  sub_1C43FCE30(v158);
  v159 = sub_1C456902C(&qword_1EC0C5A68, &qword_1C4F641A8);
  sub_1C43FFAE0(v159, &v530);
  v498 = v160;
  v162 = *(v161 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v163);
  sub_1C43FBC74();
  sub_1C43FCE30(v164);
  v165 = sub_1C456902C(&qword_1EC0C5A70, &qword_1C4F641B0);
  sub_1C43FFAE0(v165, &v528);
  v496 = v166;
  v168 = *(v167 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v169);
  sub_1C43FBC74();
  sub_1C43FCE30(v170);
  v171 = sub_1C456902C(&qword_1EC0C5A78, &qword_1C4F641B8);
  sub_1C43FFAE0(v171, &v526);
  v494 = v172;
  v174 = *(v173 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v175);
  sub_1C43FBC74();
  sub_1C43FCE30(v176);
  v177 = sub_1C456902C(&qword_1EC0C5A80, &qword_1C4F641C0);
  sub_1C43FFAE0(v177, &v524);
  v492 = v178;
  v180 = *(v179 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v181);
  sub_1C43FBC74();
  sub_1C43FCE30(v182);
  v183 = sub_1C456902C(&qword_1EC0C5A88, &qword_1C4F641C8);
  sub_1C43FFAE0(v183, &v522);
  v490 = v184;
  v186 = *(v185 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v187);
  sub_1C43FBC74();
  sub_1C43FCE30(v188);
  v189 = sub_1C456902C(&qword_1EC0C5A90, &qword_1C4F641D0);
  sub_1C43FFAE0(v189, &v520);
  v488 = v190;
  v192 = *(v191 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v193);
  sub_1C43FBC74();
  sub_1C43FCE30(v194);
  v195 = sub_1C456902C(&qword_1EC0C5A98, &qword_1C4F641D8);
  sub_1C43FFAE0(v195, &v516);
  v197 = *(v196 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v198);
  sub_1C43FBC74();
  sub_1C43FCE30(v199);
  v200 = sub_1C456902C(&qword_1EC0C5AA0, &qword_1C4F641E0);
  sub_1C43FFAE0(v200, &v514);
  v202 = *(v201 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v203);
  sub_1C43FBC74();
  sub_1C43FCE30(v204);
  v205 = sub_1C456902C(&qword_1EC0C5AA8, &qword_1C4F641E8);
  sub_1C43FFAE0(v205, &v510);
  v207 = *(v206 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v208);
  sub_1C43FBC74();
  sub_1C43FCE30(v209);
  v210 = sub_1C456902C(&qword_1EC0C5AB0, &qword_1C4F641F0);
  sub_1C43FFAE0(v210, &v518);
  v212 = *(v211 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v213);
  sub_1C43FBC74();
  sub_1C43FCE30(v214);
  v215 = sub_1C456902C(&qword_1EC0C5AB8, &qword_1C4F641F8);
  sub_1C43FFAE0(v215, &v508);
  v486 = v216;
  v218 = *(v217 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v219);
  sub_1C43FBC74();
  v583 = v220;
  v221 = sub_1C456902C(&qword_1EC0C5AC0, &qword_1C4F64200);
  sub_1C43FFAE0(v221, &v512);
  v223 = *(v222 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v224);
  sub_1C43FBC74();
  v582 = v225;
  v226 = sub_1C456902C(&qword_1EC0C5AC8, &qword_1C4F64208);
  sub_1C43FFAE0(v226, &v506);
  v228 = *(v227 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v229);
  sub_1C43FBC74();
  v581 = v230;
  v231 = sub_1C456902C(&qword_1EC0C5AD0, &qword_1C4F64210);
  sub_1C43FFAE0(v231, &v505);
  v233 = *(v232 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v234);
  sub_1C43FBC74();
  sub_1C43FCE30(v235);
  v236 = sub_1C456902C(&qword_1EC0C5AD8, &qword_1C4F64218);
  sub_1C43FFAE0(v236, &v503);
  v238 = *(v237 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v239);
  sub_1C43FBC74();
  sub_1C43FCE30(v240);
  v241 = sub_1C456902C(&qword_1EC0C5AE0, &qword_1C4F64220);
  sub_1C43FFAE0(v241, &v501);
  v243 = *(v242 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v244);
  sub_1C43FBC74();
  sub_1C43FCE30(v245);
  v246 = sub_1C456902C(&qword_1EC0C5AE8, &qword_1C4F64228);
  sub_1C43FFAE0(v246, &v499);
  v248 = *(v247 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v249);
  sub_1C43FBC74();
  sub_1C43FCE30(v250);
  v251 = sub_1C456902C(&qword_1EC0C5AF0, &qword_1C4F64230);
  sub_1C43FFAE0(v251, &v497);
  v253 = *(v252 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v254);
  sub_1C43FBC74();
  sub_1C43FCE30(v255);
  v256 = sub_1C456902C(&qword_1EC0C5AF8, &qword_1C4F64238);
  sub_1C43FFAE0(v256, &v495);
  v258 = *(v257 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v259);
  sub_1C43FBC74();
  sub_1C43FCE30(v260);
  v261 = sub_1C456902C(&qword_1EC0C5B00, &qword_1C4F64240);
  sub_1C43FFAE0(v261, &v493);
  v263 = *(v262 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v264);
  sub_1C43FBC74();
  sub_1C43FCE30(v265);
  v266 = sub_1C456902C(&qword_1EC0C5B08, &qword_1C4F64248);
  sub_1C43FFAE0(v266, &v491);
  v268 = *(v267 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v269);
  sub_1C43FBD64();
  v270 = sub_1C456902C(&qword_1EC0C5B10, &qword_1C4F64250);
  sub_1C43FCDF8(v270);
  v272 = *(v271 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v273);
  sub_1C440A474();
  v274 = sub_1C456902C(&qword_1EC0C5B18, &qword_1C4F64258);
  sub_1C43FCDF8(v274);
  v276 = v275;
  v278 = *(v277 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v279);
  sub_1C4401780();
  v281 = v25[3];
  v280 = v25[4];
  v584 = v25;
  sub_1C4417F50(v25, v281);
  sub_1C4CAB80C();
  sub_1C4475644();
  v282 = v585;
  sub_1C4F02BC8();
  if (!v282)
  {
    v484 = v270;
    v283 = v581;
    v284 = v582;
    v285 = v583;
    v585 = v276;
    v286 = v21;
    v287 = sub_1C4F026E8();
    v291 = sub_1C4570934(v287, 0);
    if (v289 != v290 >> 1)
    {
      if (v289 >= (v290 >> 1))
      {
        __break(1u);
LABEL_57:
        v477 = v292;
        swift_unknownObjectRelease();
        v478 = sub_1C4416528(&v511);
        v479(v478, v284);
        v480 = *(v274 + 8);
        v481 = sub_1C43FE5F8();
        v482(v481);
        v299 = 0;
        LOBYTE(v285) = 0;
        v274 = v583;
        v286 = v477;
LABEL_55:
        v454 = v579;
        sub_1C440962C(v291);
        *v454 = v280;
        *(v454 + 8) = v274;
        *(v454 + 16) = v286;
        *(v454 + 24) = v299;
        *(v454 + 32) = v285;
        goto LABEL_9;
      }

      v483 = *(v288 + v289);
      v293 = sub_1C4570928(v289 + 1);
      v295 = v294;
      v297 = v296;
      swift_unknownObjectRelease();
      v298 = v293;
      if (v295 == v297 >> 1)
      {
        v280 = v282;
        v299 = v580;
        switch(v483)
        {
          case 1:
            sub_1C4480434();
            sub_1C4CAC6D0();
            sub_1C442E69C(&v488);
            swift_unknownObjectRelease();
            v375 = sub_1C440570C(&v490);
            v376(v375);
            v377 = sub_1C4433968();
            v378(v377);
            sub_1C44261A8();
            v280 = 1;
            goto LABEL_54;
          case 2:
            sub_1C44A3CF8();
            sub_1C4CAC67C();
            sub_1C442E69C(&v572);
            swift_unknownObjectRelease();
            v359 = sub_1C440570C(&v492);
            v360(v359);
            v361 = sub_1C4433968();
            v362(v361);
            sub_1C44261A8();
            v280 = 2;
            goto LABEL_54;
          case 3:
            LOBYTE(v588) = 3;
            sub_1C4CAC628();
            sub_1C442E69C(&v573);
            swift_unknownObjectRelease();
            v367 = sub_1C440570C(&v494);
            v368(v367);
            v369 = sub_1C4433968();
            v370(v369);
            sub_1C44261A8();
            v280 = 3;
            goto LABEL_54;
          case 4:
            LOBYTE(v588) = 4;
            sub_1C4CAC5D4();
            sub_1C442E69C(&v574);
            swift_unknownObjectRelease();
            v342 = sub_1C440570C(&v496);
            v343(v342);
            v344 = sub_1C4433968();
            v345(v344);
            sub_1C44261A8();
            v280 = 4;
            goto LABEL_54;
          case 5:
            LOBYTE(v588) = 5;
            sub_1C4CAC580();
            sub_1C442E69C(&v575);
            swift_unknownObjectRelease();
            v391 = sub_1C440570C(&v498);
            v392(v391);
            v393 = sub_1C4433968();
            v394(v393);
            sub_1C44261A8();
            v280 = 5;
            goto LABEL_54;
          case 6:
            LOBYTE(v588) = 6;
            sub_1C4CAC52C();
            sub_1C442E69C(&v576);
            swift_unknownObjectRelease();
            v403 = sub_1C440570C(&v500);
            v404(v403);
            v405 = sub_1C4433968();
            v406(v405);
            sub_1C44261A8();
            v280 = 6;
            goto LABEL_54;
          case 7:
            LOBYTE(v588) = 7;
            sub_1C4CAC4D8();
            sub_1C442E69C(&v577);
            swift_unknownObjectRelease();
            v371 = sub_1C440570C(&v502);
            v372(v371);
            v373 = sub_1C4433968();
            v374(v373);
            sub_1C44261A8();
            v280 = 7;
            goto LABEL_54;
          case 8:
            LOBYTE(v588) = 8;
            sub_1C4CAC484();
            sub_1C442E69C(&v578);
            swift_unknownObjectRelease();
            v413 = sub_1C440570C(&v504);
            v414(v413);
            v415 = sub_1C4433968();
            v416(v415);
            sub_1C44261A8();
            v280 = 8;
            goto LABEL_54;
          case 9:
            LOBYTE(v588) = 9;
            sub_1C4CAC430();
            sub_1C44099B8();
            sub_1C4F025E8();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v507);
            v348(v283);
            v349 = sub_1C4433968();
            v350(v349);
            v274 = 0;
            sub_1C445FEF0();
            v280 = 9;
            goto LABEL_24;
          case 10:
            LOBYTE(v588) = 10;
            sub_1C4CAC3DC();
            sub_1C44099B8();
            sub_1C4F025E8();
            LOBYTE(v588) = 0;
            v284 = v485;
            v411 = sub_1C4F026B8();
            v291 = v584;
            v274 = v585;
            v280 = v411;
            sub_1C447F604();
            sub_1C4F02698();
            v583 = v412;
            sub_1C44A3CF8();
            sub_1C4F02698();
            goto LABEL_57;
          case 11:
            LOBYTE(v588) = 11;
            sub_1C4CAC388();
            sub_1C44099B8();
            sub_1C4F025E8();
            sub_1C44884BC();
            sub_1C44EC86C(&v508);
            sub_1C44A3C18();
            sub_1C4F02678();
            v291 = v584;
            v341 = v585;
            sub_1C442A778();
            sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
            LOBYTE(v586) = 1;
            sub_1C4CA8A40();
            sub_1C445AB2C();
            sub_1C44A3C18();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v472 = *(v486 + 8);
            v473 = sub_1C43FE990();
            v474(v473);
            (*(v341 + 8))(v581, v582);
            v299 = 0;
            v286 = v588;
            LOBYTE(v285) = 1;
            goto LABEL_55;
          case 12:
            LOBYTE(v588) = 12;
            sub_1C4CAC334();
            v346 = v551;
            sub_1C44099B8();
            sub_1C4F025E8();
            v581 = v286;
            v582 = v274;
            sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
            LOBYTE(v586) = 0;
            sub_1C4416F78();
            v299 = sub_1C443D11C(v347);
            sub_1C445AB2C();
            v286 = v346;
            sub_1C4F026C8();
            v291 = v584;
            v285 = v585;
            v280 = v588;
            HIBYTE(v587) = 1;
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v475 = sub_1C4416528(&v517);
            v476(v475, v487);
            (*(v285 + 8))(v581, v582);
            sub_1C445FEF0();
            v274 = v586;
            LOBYTE(v285) = 2;
            goto LABEL_55;
          case 13:
            LOBYTE(v588) = 13;
            sub_1C4CAC2E0();
            sub_1C442E69C(&v579);
            swift_unknownObjectRelease();
            v399 = sub_1C440570C(&v509);
            v400(v399);
            v401 = sub_1C4433968();
            v402(v401);
            sub_1C44261A8();
            v280 = 10;
            goto LABEL_54;
          case 14:
            LOBYTE(v588) = 14;
            sub_1C4CAC28C();
            sub_1C442E69C(&v580);
            swift_unknownObjectRelease();
            v333 = sub_1C440570C(v513);
            v334(v333);
            v335 = sub_1C4433968();
            v336(v335);
            sub_1C44261A8();
            v280 = 11;
            goto LABEL_54;
          case 15:
            LOBYTE(v588) = 15;
            sub_1C4CAC238();
            sub_1C442E69C(&v582);
            swift_unknownObjectRelease();
            v363 = sub_1C440570C(&v515);
            v364(v363);
            v365 = sub_1C4433968();
            v366(v365);
            sub_1C44261A8();
            v280 = 12;
            goto LABEL_54;
          case 16:
            LOBYTE(v588) = 16;
            sub_1C4CAC1E4();
            sub_1C442E69C(&v583);
            swift_unknownObjectRelease();
            v329 = sub_1C440570C(&v519);
            v330(v329, v489);
            v331 = sub_1C4433968();
            v332(v331);
            sub_1C44261A8();
            v280 = 13;
            goto LABEL_54;
          case 17:
            LOBYTE(v588) = 17;
            sub_1C4CAC190();
            sub_1C442E69C(&v584);
            swift_unknownObjectRelease();
            v383 = sub_1C440570C(&v521);
            v384(v383, v491);
            v385 = sub_1C4433968();
            v386(v385);
            sub_1C44261A8();
            v280 = 14;
            goto LABEL_54;
          case 18:
            LOBYTE(v588) = 18;
            sub_1C4CAC13C();
            sub_1C442E69C(&v585);
            swift_unknownObjectRelease();
            v407 = sub_1C440570C(&v523);
            v408(v407, v493);
            v409 = sub_1C4433968();
            v410(v409);
            sub_1C44261A8();
            v280 = 15;
            goto LABEL_54;
          case 19:
            LOBYTE(v588) = 19;
            sub_1C4CAC0E8();
            sub_1C442E69C(&v586);
            swift_unknownObjectRelease();
            v433 = sub_1C440570C(&v525);
            v434(v433, v495);
            v435 = sub_1C4433968();
            v436(v435);
            sub_1C44261A8();
            v280 = 16;
            goto LABEL_54;
          case 20:
            LOBYTE(v588) = 20;
            sub_1C4CAC094();
            sub_1C442E69C(&v587);
            swift_unknownObjectRelease();
            v387 = sub_1C440570C(&v527);
            v388(v387, v497);
            v389 = sub_1C4433968();
            v390(v389);
            sub_1C44261A8();
            v280 = 17;
            goto LABEL_54;
          case 21:
            LOBYTE(v588) = 21;
            sub_1C4CAC040();
            sub_1C442E69C(&v588);
            swift_unknownObjectRelease();
            v395 = sub_1C440570C(&v529);
            v396(v395, v499);
            v397 = sub_1C4433968();
            v398(v397);
            sub_1C44261A8();
            v280 = 18;
            goto LABEL_54;
          case 22:
            LOBYTE(v588) = 22;
            sub_1C4CABFEC();
            sub_1C442E69C(&v589);
            swift_unknownObjectRelease();
            v425 = sub_1C440570C(&v531);
            v426(v425, v501);
            v427 = sub_1C4433968();
            v428(v427);
            sub_1C44261A8();
            v280 = 19;
            goto LABEL_54;
          case 23:
            LOBYTE(v588) = 23;
            sub_1C4CABF98();
            sub_1C442E69C(&v590);
            swift_unknownObjectRelease();
            v438 = sub_1C440570C(&v533);
            v439(v438, v503);
            v440 = sub_1C4433968();
            v441(v440);
            sub_1C44261A8();
            v280 = 20;
            goto LABEL_54;
          case 24:
            LOBYTE(v588) = 24;
            sub_1C4CABF44();
            sub_1C442E69C(&a9);
            swift_unknownObjectRelease();
            v355 = sub_1C440570C(&v535);
            v356(v355, v505);
            v357 = sub_1C4433968();
            v358(v357);
            sub_1C44261A8();
            v280 = 21;
            goto LABEL_54;
          case 25:
            LOBYTE(v588) = 25;
            sub_1C4CABEF0();
            sub_1C442E69C(&a10);
            swift_unknownObjectRelease();
            v351 = sub_1C440570C(&v537);
            v352(v351, v507);
            v353 = sub_1C4433968();
            v354(v353);
            sub_1C44261A8();
            v280 = 22;
            goto LABEL_54;
          case 26:
            LOBYTE(v588) = 26;
            sub_1C4CABE9C();
            sub_1C442E69C(&a11);
            swift_unknownObjectRelease();
            v450 = sub_1C440570C(&v539);
            v451(v450, v509);
            v452 = sub_1C4433968();
            v453(v452);
            sub_1C44261A8();
            v280 = 23;
            goto LABEL_54;
          case 27:
            LOBYTE(v588) = 27;
            sub_1C4CABE48();
            sub_1C442E69C(&a12);
            swift_unknownObjectRelease();
            v321 = sub_1C440570C(&v541);
            v322(v321, v511);
            v323 = sub_1C4433968();
            v324(v323);
            sub_1C44261A8();
            v280 = 24;
            goto LABEL_54;
          case 28:
            LOBYTE(v588) = 28;
            sub_1C4CABDF4();
            sub_1C442E69C(&a13);
            swift_unknownObjectRelease();
            v442 = sub_1C440570C(&v543);
            v443(v442, v513[0]);
            v444 = sub_1C4433968();
            v445(v444);
            sub_1C44261A8();
            v280 = 25;
            goto LABEL_54;
          case 29:
            LOBYTE(v588) = 29;
            sub_1C4CABDA0();
            sub_1C442E69C(&a14);
            swift_unknownObjectRelease();
            v446 = sub_1C440570C(&v545);
            v447(v446, v514);
            v448 = sub_1C4433968();
            v449(v448);
            sub_1C44261A8();
            v280 = 26;
            goto LABEL_54;
          case 30:
            LOBYTE(v588) = 30;
            sub_1C4CABD4C();
            sub_1C442E69C(&a15);
            swift_unknownObjectRelease();
            v417 = sub_1C440570C(&v547);
            v418(v417, v516);
            v419 = sub_1C4433968();
            v420(v419);
            sub_1C44261A8();
            v280 = 27;
            goto LABEL_54;
          case 31:
            LOBYTE(v588) = 31;
            sub_1C4CABCF8();
            sub_1C442E69C(&a16);
            swift_unknownObjectRelease();
            v379 = sub_1C440570C(&v549);
            v380(v379, v518);
            v381 = sub_1C4433968();
            v382(v381);
            sub_1C44261A8();
            v280 = 28;
            goto LABEL_54;
          case 32:
            LOBYTE(v588) = 32;
            sub_1C4CABCA4();
            sub_1C442E69C(&a17);
            swift_unknownObjectRelease();
            v421 = sub_1C440570C(&v551);
            v422(v421, v520);
            v423 = sub_1C4433968();
            v424(v423);
            sub_1C44261A8();
            v280 = 29;
            goto LABEL_54;
          case 33:
            LOBYTE(v588) = 33;
            sub_1C4CABC50();
            sub_1C442E69C(&a18);
            swift_unknownObjectRelease();
            v337 = sub_1C440570C(&v553);
            v338(v337, v522);
            v339 = sub_1C4433968();
            v340(v339);
            sub_1C44261A8();
            v280 = 30;
            goto LABEL_54;
          case 34:
            LOBYTE(v588) = 34;
            sub_1C4CABBFC();
            v299 = v569;
            sub_1C4426F2C();
            swift_unknownObjectRelease();
            v325 = sub_1C440570C(&v555);
            v326(v325, v524);
            v327 = sub_1C4433968();
            v328(v327);
            sub_1C44261A8();
            v280 = 31;
            goto LABEL_54;
          case 35:
            LOBYTE(v588) = 35;
            sub_1C4CABBA8();
            v299 = v570;
            sub_1C4426F2C();
            swift_unknownObjectRelease();
            v316 = sub_1C440570C(&v557);
            v317(v316, v526);
            v318 = sub_1C4433968();
            v319(v318);
            sub_1C44261A8();
            v280 = 32;
            goto LABEL_54;
          case 36:
            LOBYTE(v588) = 36;
            sub_1C4CABAAC();
            v285 = v571;
            sub_1C44099B8();
            sub_1C4F025E8();
            LOBYTE(v586) = 0;
            sub_1C4CABB00();
            sub_1C445AB2C();
            sub_1C44415FC();
            sub_1C4F026C8();
            v291 = v584;
            v320 = v585;
            v286 = v285;
            v280 = v588;
            v583 = v589;
            HIBYTE(v587) = 1;
            sub_1C4CABB54();
            sub_1C44099B8();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v467 = sub_1C4404888();
            v468(v467);
            v469 = *(v320 + 8);
            v299 = v320 + 8;
            v470 = sub_1C43FE990();
            v471(v470);
            sub_1C445FEF0();
            v274 = v583 | (v586 << 8);
            LOBYTE(v285) = 3;
            goto LABEL_55;
          case 37:
            LOBYTE(v588) = 37;
            sub_1C4CABA58();
            sub_1C4426F2C();
            sub_1C44884BC();
            sub_1C44EC86C(v565);
            sub_1C4F02678();
            v291 = v584;
            v315 = v585;
            sub_1C442A778();
            sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
            LOBYTE(v586) = 1;
            sub_1C4416F78();
            sub_1C443D11C(v455);
            sub_1C445AB2C();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v465 = sub_1C4416528(&v564);
            v466(v465, v285);
            (*(v315 + 8))(v581, v582);
            v299 = 0;
            v286 = v588;
            LOBYTE(v285) = 4;
            goto LABEL_55;
          case 38:
            LOBYTE(v588) = 38;
            sub_1C4CABA04();
            v299 = v573;
            sub_1C4426F2C();
            v582 = v274;
            sub_1C4CB0440(&v563);
            v291 = v584;
            v286 = v585;
            sub_1C442A778();
            swift_unknownObjectRelease();
            v461 = sub_1C440570C(&v560);
            v462(v461, v284);
            v463 = sub_1C447F880();
            v464(v463);
            sub_1C445FEF0();
            LOBYTE(v285) = 5;
            goto LABEL_55;
          case 39:
            LOBYTE(v588) = 39;
            sub_1C4CAB9B0();
            v299 = v572;
            sub_1C4426F2C();
            swift_unknownObjectRelease();
            v429 = sub_1C440570C(&v559);
            v430(v429, v530);
            v431 = sub_1C4433968();
            v432(v431);
            sub_1C44261A8();
            v280 = 33;
            goto LABEL_54;
          case 40:
            LOBYTE(v588) = 40;
            sub_1C4CAB95C();
            sub_1C44099B8();
            sub_1C4F025E8();
            sub_1C44884BC();
            v299 = v540;
            sub_1C44A3C18();
            sub_1C4F02678();
            v291 = v584;
            v285 = v585;
            sub_1C442A778();
            sub_1C447F604();
            sub_1C44A3C18();
            sub_1C4F02678();
            v456 = (v535 + 8);
            sub_1C44106D4();
            swift_unknownObjectRelease();
            (*v456)(v578, v540);
            (*(v285 + 8))(v581, v582);
            LOBYTE(v285) = 6;
            goto LABEL_55;
          case 41:
            LOBYTE(v588) = 41;
            sub_1C4CAB908();
            v299 = v575;
            sub_1C4426F2C();
            v582 = v274;
            sub_1C4CB0440(&v567);
            v291 = v584;
            v286 = v585;
            sub_1C442A778();
            swift_unknownObjectRelease();
            v457 = sub_1C440570C(&v566);
            v458(v457, v284);
            v459 = sub_1C447F880();
            v460(v459);
            sub_1C445FEF0();
            LOBYTE(v285) = 7;
            goto LABEL_55;
          case 42:
            LOBYTE(v588) = 42;
            sub_1C4CAB8B4();
            v437 = v577;
            sub_1C44099B8();
            sub_1C4F025E8();
            v582 = v274;
            v583 = v298;
            v581 = v286;
            LOBYTE(v588) = 0;
            sub_1C4CB03B0(&v571);
            sub_1C4F02678();
            v291 = v584;
            v285 = v585;
            sub_1C442A778();
            sub_1C447F604();
            v286 = v437;
            sub_1C4F02678();
            sub_1C44106D4();
            swift_unknownObjectRelease();
            (*(v299 + 8))(v437, v541);
            (*(v285 + 8))(v581, v582);
            LOBYTE(v285) = 8;
            goto LABEL_55;
          case 43:
            LOBYTE(v588) = 43;
            sub_1C4CAB860();
            v299 = v576;
            sub_1C4426F2C();
            swift_unknownObjectRelease();
            v311 = sub_1C440570C(&v568);
            v312(v311, v539);
            v313 = sub_1C4433968();
            v314(v313);
            sub_1C44261A8();
            v280 = 34;
            goto LABEL_54;
          default:
            LOBYTE(v588) = 0;
            sub_1C4CAC724();
            sub_1C442E69C(&v487);
            swift_unknownObjectRelease();
            v300 = sub_1C440570C(&v489);
            v301(v300, v484);
            v302 = sub_1C4433968();
            v303(v302);
            v280 = 0;
            v274 = 0;
            sub_1C445FEF0();
LABEL_24:
            LOBYTE(v285) = 9;
LABEL_54:
            v291 = v584;
            break;
        }

        goto LABEL_55;
      }
    }

    v304 = v274;
    v305 = sub_1C4F022E8();
    sub_1C43FFB2C();
    v307 = v306;
    v308 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v307 = &_s10SignalTypeON;
    sub_1C4F025F8();
    sub_1C4475C70();
    (*(*(v305 - 8) + 104))(v307, *MEMORY[0x1E69E6AF8], v305);
    swift_willThrow();
    swift_unknownObjectRelease();
    v309 = sub_1C44018C0();
    v310(v309, v304);
  }

  sub_1C440962C(v584);
LABEL_9:
  sub_1C44109F8();
}