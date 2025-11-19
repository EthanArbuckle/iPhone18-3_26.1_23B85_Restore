uint64_t _s4KeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t (*static NDOResponseMapper.Config.checkTTLAndDecode(keyValueReader:)(uint64_t a1))@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22DDEDAAC(a1, v3);
  v1 = swift_allocObject();
  sub_22DDEDA18(v3, v1 + 16);
  return sub_22DE1B040;
}

uint64_t sub_22DE1ADCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_22DEC4824();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  LOBYTE(v20[0]) = 0;
  (*(v14 + 24))(v21, v20, v13, v14);
  if (!v21[3])
  {
    sub_22DDEF284(v21, &qword_27DA37988, &unk_22DEC6210);
LABEL_6:
    type metadata accessor for NDOErrors();
    sub_22DE1B950(&qword_28145AE60, type metadata accessor for NDOErrors);
    v18 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a4 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
    return swift_storeEnumTagMultiPayload();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = *v20;
  sub_22DEC4814();
  sub_22DEC4804();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  if (v17 >= v15)
  {
    goto LABEL_6;
  }

  sub_22DE1B048(a1, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  return swift_storeEnumTagMultiPayload();
}

void sub_22DE1B048(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22DEC48E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_22DEC48D4();
  sub_22DEC48C4();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(v9 + 16))(v13, v15, v8);
  sub_22DDEEEE8(a1, a2);
  sub_22DE1B950(&qword_28145C028, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);
  sub_22DEC4A14();
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DEC6270;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    *(inited + 48) = swift_getKeyPath();
    v17 = sub_22DE00C40(inited);
    swift_setDeallocating();
    v18 = *(inited + 16);
    swift_arrayDestroy();
    if (v17)
    {
      (*(v9 + 8))(v15, v8);
      return;
    }

    type metadata accessor for NDOErrors();
    sub_22DE1B950(&qword_28145AE60, type metadata accessor for NDOErrors);
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22DE19B9C(a3);
  }

  (*(v9 + 8))(v15, v8);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v19 = sub_22DEC4B44();
  __swift_project_value_buffer(v19, qword_281462270);
  v20 = v4;
  v21 = sub_22DEC4B24();
  v22 = sub_22DEC4E44();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v4;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_22DDEC000, v21, v22, "Config parsing failed with error: %@", v23, 0xCu);
    sub_22DDEF284(v24, &qword_27DA379D8, qword_22DEC6E70);
    MEMORY[0x2318DBF00](v24, -1, -1);
    MEMORY[0x2318DBF00](v23, -1, -1);
  }

  type metadata accessor for NDOErrors();
  sub_22DE1B950(&qword_28145AE60, type metadata accessor for NDOErrors);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t (*static NDOResponseMapper.Config.decodeAndSaveTTL(keyValueWriter:)(uint64_t a1))@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22DDEDAAC(a1, v3);
  v1 = swift_allocObject();
  sub_22DDEDA18(v3, v1 + 16);
  return sub_22DE1B628;
}

uint64_t sub_22DE1B524@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE1B048(a1, a2, v11);
  sub_22DE1B640(v11, a3);
  sub_22DE19B38(v11, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22DE1B640(uint64_t a1, void *a2)
{
  v4 = sub_22DEC4824();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44);
  v16 = *v15;
  *(v15 + 8);
  sub_22DEC47F4();
  sub_22DEC4814();
  LOBYTE(a1) = sub_22DEC47E4();
  v17 = *(v5 + 8);
  v17(v12, v4);
  if (a1)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v18 = sub_22DEC4B44();
    __swift_project_value_buffer(v18, qword_281462270);
    v19 = sub_22DEC4B24();
    v20 = sub_22DEC4E44();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = v5;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_22DDEC000, v19, v20, "Config validUntil is in the past, using default TTL", v21, 2u);
      v23 = v22;
      v5 = v28;
      MEMORY[0x2318DBF00](v23, -1, -1);
    }

    sub_22DEC4814();
    sub_22DEC47C4();
    v17(v9, v4);
    v17(v14, v4);
    (*(v5 + 32))(v14, v12, v4);
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  sub_22DEC4804();
  v30[3] = MEMORY[0x277D839F8];
  v30[0] = v26;
  v29 = 0;
  (*(v25 + 8))(v30, &v29, v24, v25);
  v17(v14, v4);
  return sub_22DDEF284(v30, &qword_27DA37988, &unk_22DEC6210);
}

uint64_t sub_22DE1B950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NDOShowAlertActionHandler.__allocating_init(createNotification:waitForNotificationResponse:applicationWorkspace:keyValueStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  sub_22DDEDA18(a5, v12 + 48);
  sub_22DE002CC(a6, (v12 + 88));
  return v12;
}

uint64_t NDOShowAlertActionHandler.init(createNotification:waitForNotificationResponse:applicationWorkspace:keyValueStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  sub_22DDEDA18(a5, v6 + 48);
  sub_22DE002CC(a6, (v6 + 88));
  return v6;
}

void sub_22DE1BA60(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3)
{
  v208 = a2;
  v209 = a3;
  v214[32] = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v189 = &v178 - v9;
  v199 = v3;
  v198 = *(*(v5 + 80) - 8);
  v10 = *(v198 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v181 = v12;
  v182 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v197 = &v178 - v13;
  v192 = v14;
  v15 = sub_22DEC4EB4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v188 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v202 = &v178 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v185 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v178 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v187 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v191 = &v178 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v184 = &v178 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v196 = &v178 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v194 = &v178 - v38;
  MEMORY[0x28223BE20](v37);
  v205 = &v178 - v39;
  v210 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v206 = *(v210 - 1);
  v40 = *(v206 + 64);
  v41 = MEMORY[0x28223BE20](v210);
  v186 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v178 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v183 = &v178 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v178 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v178 - v52;
  MEMORY[0x28223BE20](v51);
  v204 = &v178 - v54;
  v212 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v179 = *(v212 - 1);
  v55 = *(v179 + 64);
  v56 = MEMORY[0x28223BE20](v212);
  v207 = &v178 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v57;
  MEMORY[0x28223BE20](v56);
  v59 = &v178 - v58;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v60 = sub_22DEC4B44();
  v61 = __swift_project_value_buffer(v60, qword_281462270);
  v211 = a1;
  sub_22DE1EBD0(a1, v59, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v203 = v61;
  v62 = sub_22DEC4B24();
  v63 = sub_22DEC4E54();
  v64 = os_log_type_enabled(v62, v63);
  v200 = v16;
  v201 = v15;
  v190 = v45;
  v195 = v50;
  v193 = v53;
  if (v64)
  {
    v65 = v26;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v214[0] = v67;
    *v66 = 136315138;
    sub_22DE1EBD0(v59, v207, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    v68 = sub_22DEC4C74();
    v70 = v69;
    sub_22DE1E6CC(v59, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    v71 = sub_22DDEDC0C(v68, v70, v214);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_22DDEC000, v62, v63, "Handling show alert action %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x2318DBF00](v67, -1, -1);
    v72 = v66;
    v26 = v65;
    MEMORY[0x2318DBF00](v72, -1, -1);
  }

  else
  {

    sub_22DE1E6CC(v59, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC7560;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  v74 = v211;
  v75 = sub_22DE00FD0(inited);
  swift_setDeallocating();
  v76 = *(inited + 16);
  swift_arrayDestroy();
  v77 = v210;
  if ((v75 & 1) == 0)
  {
    goto LABEL_30;
  }

  v78 = v212[8];
  v79 = v205;
  sub_22DDF0028(v74 + v78, v205, &qword_27DA37C10, &unk_22DEC7590);
  v80 = *(v206 + 48);
  if (v80(v79, 1, v77) == 1)
  {
    v81 = v204;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v82 = (v81 + *(v77 + 5));
    *v82 = 0;
    v82[1] = 0;
    v83 = (v81 + *(v77 + 6));
    *v83 = 0;
    v83[1] = 0;
    if (v80(v79, 1, v77) != 1)
    {
      sub_22DDEF284(v79, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    v81 = v204;
    sub_22DE1E8D8(v79, v204, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  v84 = *(v81 + *(v77 + 6) + 8);
  sub_22DE1E6CC(v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v84)
  {
    v85 = v194;
    sub_22DDF0028(v74 + v78, v194, &qword_27DA37C10, &unk_22DEC7590);
    if (v80(v85, 1, v77) == 1)
    {
      v86 = v193;
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v87 = (v86 + *(v77 + 5));
      *v87 = 0;
      v87[1] = 0;
      v88 = (v86 + *(v77 + 6));
      *v88 = 0;
      v88[1] = 0;
      v89 = v86;
      if (v80(v85, 1, v77) != 1)
      {
        sub_22DDEF284(v85, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      v89 = v193;
      sub_22DE1E8D8(v85, v193, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    v90 = (v89 + *(v77 + 6));
    v92 = *v90;
    v91 = v90[1];

    sub_22DE1E6CC(v89, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    sub_22DEC4744();

    v93 = sub_22DEC4764();
    LODWORD(v91) = (*(*(v93 - 8) + 48))(v26, 1, v93);
    sub_22DDEF284(v26, &qword_27DA37910, &qword_22DEC5BB0);
    if (v91 == 1)
    {
      goto LABEL_27;
    }
  }

  v94 = v212[9];
  v95 = v196;
  sub_22DDF0028(v74 + v94, v196, &qword_27DA37C10, &unk_22DEC7590);
  if (v80(v95, 1, v77) == 1)
  {
    v96 = v195;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v97 = (v96 + *(v77 + 5));
    *v97 = 0;
    v97[1] = 0;
    v98 = (v96 + *(v77 + 6));
    *v98 = 0;
    v98[1] = 0;
    if (v80(v95, 1, v77) != 1)
    {
      sub_22DDEF284(v95, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    v96 = v195;
    sub_22DE1E8D8(v95, v195, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  v99 = *(v96 + *(v77 + 6) + 8);
  sub_22DE1E6CC(v96, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v99)
  {
    v100 = v184;
    sub_22DDF0028(v74 + v94, v184, &qword_27DA37C10, &unk_22DEC7590);
    if (v80(v100, 1, v77) == 1)
    {
      v101 = v183;
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v102 = (v101 + *(v77 + 5));
      *v102 = 0;
      v102[1] = 0;
      v103 = (v101 + *(v77 + 6));
      *v103 = 0;
      v103[1] = 0;
      v104 = v101;
      if (v80(v100, 1, v77) != 1)
      {
        sub_22DDEF284(v100, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      v104 = v183;
      sub_22DE1E8D8(v100, v183, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    v105 = (v104 + *(v77 + 6));
    v107 = *v105;
    v106 = v105[1];

    sub_22DE1E6CC(v104, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    v108 = v185;
    sub_22DEC4744();

    v109 = sub_22DEC4764();
    LODWORD(v106) = (*(*(v109 - 8) + 48))(v108, 1, v109);
    sub_22DDEF284(v108, &qword_27DA37910, &qword_22DEC5BB0);
    if (v106 == 1)
    {
LABEL_27:
      v110 = sub_22DEC4B24();
      v111 = sub_22DEC4E44();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_22DDEC000, v110, v111, "Not showing alert due to invalid action url", v112, 2u);
        MEMORY[0x2318DBF00](v112, -1, -1);
      }

LABEL_30:
      type metadata accessor for NDOErrors();
      sub_22DE1EA18(&qword_28145AE60, type metadata accessor for NDOErrors);
      v113 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (v208)(v113, 1);

LABEL_31:
      v114 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v213 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C18, &qword_22DEC7688);
  v115 = swift_initStackObject();
  *(v115 + 16) = xmmword_22DEC7570;
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v115 + 32) = sub_22DEC4C34();
  *(v115 + 40) = v116;
  v117 = (v74 + v212[6]);
  v118 = v117[1];
  v119 = v191;
  if (v118)
  {
    v120 = *v117;
    v121 = v118;
  }

  else
  {
    v120 = 0;
    v121 = 0xE000000000000000;
  }

  *(v115 + 48) = v120;
  *(v115 + 56) = v121;
  if (!*MEMORY[0x277CBF198])
  {
    goto LABEL_68;
  }

  *(v115 + 64) = sub_22DEC4C34();
  *(v115 + 72) = v122;
  v123 = (v74 + v212[7]);
  v124 = v123[1];
  if (v124)
  {
    v125 = *v123;
    v126 = v124;
  }

  else
  {
    v125 = 0;
    v126 = 0xE000000000000000;
  }

  *(v115 + 80) = v125;
  *(v115 + 88) = v126;
  if (!*MEMORY[0x277CBF1E8])
  {
    goto LABEL_69;
  }

  *(v115 + 96) = sub_22DEC4C34();
  *(v115 + 104) = v127;
  sub_22DDF0028(v211 + v78, v119, &qword_27DA37C10, &unk_22DEC7590);
  if (v80(v119, 1, v77) == 1)
  {

    v128 = v190;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v129 = (v128 + *(v77 + 5));
    *v129 = 0;
    v129[1] = 0;
    v130 = (v128 + *(v77 + 6));
    *v130 = 0;
    v130[1] = 0;
    v131 = v128;
    if (v80(v119, 1, v77) != 1)
    {
      sub_22DDEF284(v119, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    v131 = v190;
    sub_22DE1E8D8(v119, v190, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  v132 = (v131 + *(v77 + 5));
  v134 = *v132;
  v133 = v132[1];

  sub_22DE1E6CC(v131, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v133)
  {
    v135 = v134;
  }

  else
  {
    v135 = 0;
  }

  v136 = 0xE000000000000000;
  if (v133)
  {
    v136 = v133;
  }

  *(v115 + 112) = v135;
  *(v115 + 120) = v136;
  if (*MEMORY[0x277CBF1C0])
  {
    *(v115 + 128) = sub_22DEC4C34();
    *(v115 + 136) = v137;
    v138 = v187;
    sub_22DDF0028(v211 + v94, v187, &qword_27DA37C10, &unk_22DEC7590);
    v139 = v80(v138, 1, v77);
    v140 = v186;
    if (v139 == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v141 = (v140 + *(v77 + 5));
      *v141 = 0;
      v141[1] = 0;
      v142 = (v140 + *(v77 + 6));
      *v142 = 0;
      v142[1] = 0;
      v143 = v80(v138, 1, v77);
      v144 = v201;
      if (v143 != 1)
      {
        sub_22DDEF284(v138, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      sub_22DE1E8D8(v138, v186, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      v144 = v201;
    }

    v145 = (v140 + *(v77 + 5));
    v147 = *v145;
    v146 = v145[1];

    sub_22DE1E6CC(v140, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    if (v146)
    {
      v148 = v147;
    }

    else
    {
      v148 = 0;
    }

    v149 = 0xE000000000000000;
    if (v146)
    {
      v149 = v146;
    }

    *(v115 + 144) = v148;
    *(v115 + 152) = v149;
    sub_22DE0501C(v115);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C20, &qword_22DEC7690);
    swift_arrayDestroy();
    v151 = v199[2];
    v150 = v199[3];
    v152 = *MEMORY[0x277CBECE8];
    v153 = sub_22DEC4B84();

    v154 = v202;
    v151(v152, 0, &v213, v153, 0.0);

    v155 = v200;
    v156 = v188;
    (*(v200 + 16))(v188, v154, v144);
    v157 = v198;
    v158 = v192;
    if ((*(v198 + 48))(v156, 1, v192) == 1)
    {
      v159 = v156;
      v160 = *(v155 + 8);
      v160(v159, v144);
      v161 = sub_22DEC4B24();
      v162 = sub_22DEC4E44();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 67109120;
        swift_beginAccess();
        *(v163 + 4) = v213;
        _os_log_impl(&dword_22DDEC000, v161, v162, "Failed to create CFUserNotification: %d", v163, 8u);
        MEMORY[0x2318DBF00](v163, -1, -1);
      }

      type metadata accessor for NDOErrors();
      sub_22DE1EA18(&qword_28145AE60, type metadata accessor for NDOErrors);
      v164 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (v208)(v164, 1);

      v160(v202, v144);
    }

    else
    {
      v165 = *(v157 + 32);
      v212 = (v157 + 32);
      v210 = v165;
      (v165)(v197, v156, v158);
      v166 = sub_22DEC4B24();
      v167 = sub_22DEC4E54();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&dword_22DDEC000, v166, v167, "Alert shown successfully", v168, 2u);
        v158 = v192;
        MEMORY[0x2318DBF00](v168, -1, -1);
      }

      (v208)(0, 0);
      v209 = os_transaction_create();
      v169 = sub_22DEC4DB4();
      (*(*(v169 - 8) + 56))(v189, 1, 1, v169);
      v170 = v198;
      v171 = v182;
      (*(v198 + 16))(v182, v197, v158);
      v208 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData;
      v172 = v207;
      sub_22DE1EBD0(v211, v207, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
      v173 = (*(v170 + 80) + 48) & ~*(v170 + 80);
      v174 = (v181 + *(v179 + 80) + v173) & ~*(v179 + 80);
      v175 = (v180 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
      v176 = swift_allocObject();
      v176[2] = 0;
      v176[3] = 0;
      v177 = v199;
      v176[4] = v158;
      v176[5] = v177;
      (v210)(v176 + v173, v171, v158);
      sub_22DE1E8D8(v172, v176 + v174, v208);
      *(v176 + v175) = v209;

      swift_unknownObjectRetain();
      sub_22DE1D5F0(0, 0, v189, &unk_22DEC76A8, v176);
      swift_unknownObjectRelease();

      (*(v170 + 8))(v197, v158);
      (*(v200 + 8))(v202, v201);
    }

    goto LABEL_31;
  }

LABEL_70:
  __break(1u);
}

uint64_t sub_22DE1CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v8 + 32), v7, &qword_27DA37C10, &unk_22DEC7590);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE1E8D8(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37C10, &unk_22DEC7590);
  }

  return result;
}

uint64_t sub_22DE1D164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE1EBD0(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 32);
  sub_22DDEF284(a2 + v9, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DE1E8D8(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t sub_22DE1D28C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  *a2 = *(a1 + *(result + 20) + 8) != 0;
  return result;
}

uint64_t sub_22DE1D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v8 + 36), v7, &qword_27DA37C10, &unk_22DEC7590);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE1E8D8(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37C10, &unk_22DEC7590);
  }

  return result;
}

uint64_t sub_22DE1D440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE1EBD0(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 36);
  sub_22DDEF284(a2 + v9, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DE1E8D8(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t sub_22DE1D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22DE1D58C, 0, 0);
}

uint64_t sub_22DE1D58C()
{
  v1 = v0[2];
  sub_22DE1D8F0(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22DE1D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22DDF0028(a3, v27 - v11, &unk_27DA37C00, &unk_22DEC7580);
  v13 = sub_22DEC4DB4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22DDEF284(v12, &unk_27DA37C00, &unk_22DEC7580);
  }

  else
  {
    sub_22DEC4DA4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22DEC4D64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22DEC4C84() + 32;
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

      sub_22DDEF284(a3, &unk_27DA37C00, &unk_22DEC7580);

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

  sub_22DDEF284(a3, &unk_27DA37C00, &unk_22DEC7580);
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

void sub_22DE1D8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v103 = a2;
  v106[3] = *MEMORY[0x277D85DE8];
  v102 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v94 - v7;
  v8 = sub_22DEC4764();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v97 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v94 - v14;
  MEMORY[0x28223BE20](v13);
  v98 = &v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v94 - v21;
  v23 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v100 = *(v23 - 8);
  v101 = v23;
  v24 = *(v100 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v94 - v28;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v30 = sub_22DEC4B44();
  v104 = __swift_project_value_buffer(v30, qword_281462270);
  v31 = sub_22DEC4B24();
  v32 = sub_22DEC4E54();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v95 = v3;
    v34 = v29;
    v35 = v27;
    v36 = v22;
    v37 = v20;
    v38 = a1;
    v39 = v9;
    v40 = v8;
    v41 = v33;
    *v33 = 0;
    _os_log_impl(&dword_22DDEC000, v31, v32, "Waiting for user response", v33, 2u);
    v42 = v41;
    v8 = v40;
    v9 = v39;
    a1 = v38;
    v20 = v37;
    v22 = v36;
    v27 = v35;
    v29 = v34;
    v3 = v95;
    MEMORY[0x2318DBF00](v42, -1, -1);
  }

  v105 = 0;
  v43 = v3[5];
  v44 = (v3[4])(a1, &v105, 0.0);
  if (v44)
  {
    v45 = v44;
    v46 = sub_22DEC4B24();
    v47 = sub_22DEC4E44();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 67109120;
      v48[1] = v45;
      v49 = "Unsuccessful result: %d";
      v50 = v47;
      v51 = v46;
      v52 = v48;
      v53 = 8;
LABEL_36:
      _os_log_impl(&dword_22DDEC000, v51, v50, v49, v52, v53);
      MEMORY[0x2318DBF00](v48, -1, -1);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v54 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v55 = (v103 + v54[5]);
  if (v55[1])
  {
    v56 = *v55;
    v57 = v55[1];
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  sub_22DE25B70((v3 + 11), v56, v57);

  if (v105 == 1)
  {
    sub_22DDF0028(v103 + v54[9], v20, &qword_27DA37C10, &unk_22DEC7590);
    v62 = v101;
    v63 = *(v100 + 48);
    if (v63(v20, 1, v101) == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v64 = &v27[*(v62 + 20)];
      *v64 = 0;
      *(v64 + 1) = 0;
      v65 = &v27[*(v62 + 24)];
      *v65 = 0;
      *(v65 + 1) = 0;
      if (v63(v20, 1, v62) != 1)
      {
        sub_22DDEF284(v20, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      sub_22DE1E8D8(v20, v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    v67 = &v27[*(v62 + 24)];
    if (!*(v67 + 1))
    {
      v68 = v27;
      goto LABEL_33;
    }

    v29 = v27;
LABEL_27:
    v69 = *v67;

    sub_22DE1E6CC(v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    v70 = v99;
    sub_22DEC4744();

    if ((*(v9 + 48))(v70, 1, v8) == 1)
    {
      sub_22DDEF284(v70, &qword_27DA37910, &qword_22DEC5BB0);
      goto LABEL_34;
    }

    v71 = v98;
    (*(v9 + 32))(v98, v70, v8);
    v72 = v3[9];
    v73 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v72);
    v74 = (*(v73 + 8))(v71, v72, v73);
    v75 = *(v9 + 16);
    if (v74)
    {
      v76 = v96;
      v75(v96, v71, v8);
      v77 = sub_22DEC4B24();
      v78 = sub_22DEC4E44();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v106[0] = v80;
        *v79 = 136315138;
        sub_22DE1EA18(&qword_28145E550, MEMORY[0x277CC9260]);
        v81 = sub_22DEC50A4();
        v83 = v82;
        v84 = *(v9 + 8);
        v84(v76, v8);
        v85 = sub_22DDEDC0C(v81, v83, v106);

        *(v79 + 4) = v85;
        v86 = "Successfully opened action url: %s";
LABEL_41:
        _os_log_impl(&dword_22DDEC000, v77, v78, v86, v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x2318DBF00](v80, -1, -1);
        MEMORY[0x2318DBF00](v79, -1, -1);

        v84(v98, v8);
        goto LABEL_38;
      }
    }

    else
    {
      v76 = v97;
      v75(v97, v71, v8);
      v77 = sub_22DEC4B24();
      v78 = sub_22DEC4E44();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v106[0] = v80;
        *v79 = 136315138;
        sub_22DE1EA18(&qword_28145E550, MEMORY[0x277CC9260]);
        v89 = sub_22DEC50A4();
        v91 = v90;
        v84 = *(v9 + 8);
        v84(v76, v8);
        v92 = sub_22DDEDC0C(v89, v91, v106);

        *(v79 + 4) = v92;
        v86 = "Failed to open url: %s";
        goto LABEL_41;
      }
    }

    v93 = *(v9 + 8);
    v93(v76, v8);
    v93(v71, v8);
    goto LABEL_38;
  }

  if (!v105)
  {
    sub_22DDF0028(v103 + v54[8], v22, &qword_27DA37C10, &unk_22DEC7590);
    v58 = v101;
    v59 = *(v100 + 48);
    if (v59(v22, 1, v101) == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v60 = &v29[*(v58 + 20)];
      *v60 = 0;
      *(v60 + 1) = 0;
      v61 = &v29[*(v58 + 24)];
      *v61 = 0;
      *(v61 + 1) = 0;
      if (v59(v22, 1, v58) != 1)
      {
        sub_22DDEF284(v22, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      sub_22DE1E8D8(v22, v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    v67 = &v29[*(v58 + 24)];
    if (!*(v67 + 1))
    {
      v68 = v29;
LABEL_33:
      sub_22DE1E6CC(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
LABEL_34:
      v46 = sub_22DEC4B24();
      v87 = sub_22DEC4E54();
      if (os_log_type_enabled(v46, v87))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = "No action url, alert will just dismiss";
        v50 = v87;
        v51 = v46;
        v52 = v48;
        v53 = 2;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    goto LABEL_27;
  }

  v46 = sub_22DEC4B24();
  v66 = sub_22DEC4E44();
  if (os_log_type_enabled(v46, v66))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    swift_beginAccess();
    *(v48 + 1) = v105;
    v49 = "Unexpected response: %lu";
    v50 = v66;
    v51 = v46;
    v52 = v48;
    v53 = 12;
    goto LABEL_36;
  }

LABEL_37:

LABEL_38:
  v88 = *MEMORY[0x277D85DE8];
}

void *NDOShowAlertActionHandler.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  return v0;
}

uint64_t NDOShowAlertActionHandler.__deallocating_deinit()
{
  NDOShowAlertActionHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_22DE1E494(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DE1E58C;

  return v7(a1);
}

uint64_t sub_22DE1E58C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, BOOL *a3@<X8>)
{
  result = a2(0);
  *a3 = *(a1 + *(result + 20) + 8) != 0;
  return result;
}

uint64_t sub_22DE1E6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22DE1E72C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22DE1E74C(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = *(*(v1[4] - 8) + 64);
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v12 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22DE0858C;

  return sub_22DE1D568(a1, v9, v10, v11, v1 + v5, v1 + v8);
}

uint64_t sub_22DE1E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE1EA18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE1EA60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DE0D6CC;

  return sub_22DE1E494(a1, v5);
}

uint64_t sub_22DE1EB18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DE0858C;

  return sub_22DE1E494(a1, v5);
}

uint64_t sub_22DE1EBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NDOPostFollowUpActionHandler.__allocating_init(controller:executeWithResolver:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t NDOPostFollowUpActionHandler.init(controller:executeWithResolver:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void sub_22DE1ECCC(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v59 = a2;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v16 = sub_22DEC4B44();
  v17 = __swift_project_value_buffer(v16, qword_281462270);
  sub_22DE25B08(a1, v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  v55 = v17;
  v18 = sub_22DEC4B24();
  v19 = sub_22DEC4E54();
  v20 = os_log_type_enabled(v18, v19);
  v57 = v7;
  v58 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v53 = v4;
    v24 = v23;
    *&v60[0] = v23;
    *v22 = 136315138;
    sub_22DE25B08(v15, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    v25 = sub_22DEC4C74();
    v27 = v26;
    sub_22DE257B8(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    v28 = v25;
    v10 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = sub_22DDEDC0C(v28, v27, v60);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_22DDEC000, v18, v19, "Handling post follow up action %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v4 = v53;
    MEMORY[0x2318DBF00](v30, -1, -1);
    v31 = v22;
    a3 = v54;
    MEMORY[0x2318DBF00](v31, -1, -1);
  }

  else
  {

    sub_22DE257B8(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77A0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  v33 = sub_22DE00FFC(inited);
  swift_setDeallocating();
  v34 = *(inited + 16);
  swift_arrayDestroy();
  if (v33)
  {
    v35 = *(a1 + *(v57 + 20));
    swift_beginAccess();
    v37 = *(v4 + 56);
    v36 = *(v4 + 64);
    v38 = v58;
    sub_22DE25B08(a1, v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DDEDAAC(v4 + 16, v60);
    v39 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v59;
    *(v40 + 24) = a3;
    sub_22DE25AA0(v38, v40 + v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DDEDA18(v60, v40 + ((v8 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));

    v37(sub_22DE23C80, v40);
  }

  else
  {
    sub_22DE25B08(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    v41 = sub_22DEC4B24();
    v42 = sub_22DEC4E44();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v58;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v60[0] = v46;
      *v45 = 136315138;
      sub_22DE25B08(v10, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v47 = sub_22DEC4C74();
      v48 = v10;
      v50 = v49;
      sub_22DE257B8(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v51 = sub_22DDEDC0C(v47, v50, v60);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_22DDEC000, v41, v42, "Not handling post follow up action due to invalid data: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x2318DBF00](v46, -1, -1);
      MEMORY[0x2318DBF00](v45, -1, -1);
    }

    else
    {

      sub_22DE257B8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    }

    type metadata accessor for NDOErrors();
    sub_22DE25A0C(&qword_28145AE60, type metadata accessor for NDOErrors);
    v52 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v59(v52, 1);
  }
}

uint64_t sub_22DE1F31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  v9 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(v8 + v9, v7, &qword_27DA37D90, &unk_22DEC7970);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22DE25AA0(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = *(v10 + 20);
  if (qword_27DA37788 != -1)
  {
    swift_once();
  }

  *(a2 + v12) = qword_27DA38008;
  v13 = v11(v7, 1, v10);

  if (v13 != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D90, &unk_22DEC7970);
  }

  return result;
}

uint64_t sub_22DE1F4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE25B08(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE4E6D0(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE25AA0(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37D90, &unk_22DEC7970);
  return swift_endAccess();
}

uint64_t sub_22DE1F700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE25B08(a1, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22DE5174C(v16);
    *(a2 + v13) = v16;
  }

  sub_22DE25AA0(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0208(v7, v16 + v20, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

uint64_t sub_22DE1F8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF0028(a1 + *(v8 + 28), v7, &qword_27DA37D80, &unk_22DEC7960);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE25AA0(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v9 + 20)) = 7;
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE1FA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE25B08(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDEF284(a2 + v9, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE25AA0(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void sub_22DE1FBCC(uint64_t (*a1)(uint64_t, unint64_t), uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, char *a5, void *a6)
{
  v525 = a6;
  v566 = a5;
  v550 = a4;
  v551 = a3;
  v555 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v515 = &v500 - v9;
  v526 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v529 = *(v526 - 8);
  v10 = *(v529 + 64);
  v11 = MEMORY[0x28223BE20](v526);
  v511 = &v500 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v500 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v509 = &v500 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v507 = &v500 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v505 = &v500 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v519 = &v500 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v514 = &v500 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v500 - v27;
  MEMORY[0x28223BE20](v26);
  v518 = &v500 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v500 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v510 = &v500 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v508 = &v500 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v506 = &v500 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v504 = &v500 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v512 = &v500 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v513 = &v500 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v517 = &v500 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v516 = &v500 - v50;
  MEMORY[0x28223BE20](v49);
  v524 = &v500 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v523 = &v500 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v544 = &v500 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v539 = (&v500 - v59);
  v60 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v556 = *(v60 - 8);
  v557 = v60;
  v61 = *(v556 + 64);
  v62 = MEMORY[0x28223BE20](v60);
  v543 = (&v500 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  v538 = (&v500 - v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v549 = &v500 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v535 = &v500 - v70;
  MEMORY[0x28223BE20](v69);
  v532 = &v500 - v71;
  v563 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v561 = *(v563 - 8);
  v72 = *(v561 + 64);
  v73 = MEMORY[0x28223BE20](v563);
  v542 = &v500 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v536 = &v500 - v76;
  MEMORY[0x28223BE20](v75);
  v560 = (&v500 - v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v79 = *(*(v78 - 8) + 64);
  v80 = MEMORY[0x28223BE20](v78 - 8);
  v522 = &v500 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v546 = &v500 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v540 = &v500 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v533 = &v500 - v87;
  MEMORY[0x28223BE20](v86);
  v530 = &v500 - v88;
  v564 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v567 = *(v564 - 8);
  v89 = *(v567 + 64);
  v90 = MEMORY[0x28223BE20](v564);
  v521 = &v500 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x28223BE20](v90);
  v545 = &v500 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v541 = &v500 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v534 = &v500 - v97;
  MEMORY[0x28223BE20](v96);
  v531 = &v500 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v100 = *(*(v99 - 8) + 64);
  v101 = MEMORY[0x28223BE20](v99 - 8);
  v527 = &v500 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x28223BE20](v101);
  v105 = &v500 - v104;
  v106 = MEMORY[0x28223BE20](v103);
  v537 = &v500 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v547 = (&v500 - v109);
  MEMORY[0x28223BE20](v108);
  v111 = &v500 - v110;
  v568 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v569 = *(v568 - 1);
  v112 = v569[8];
  v113 = MEMORY[0x28223BE20](v568);
  v520 = &v500 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = MEMORY[0x28223BE20](v113);
  v554 = &v500 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v553 = &v500 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v558 = &v500 - v120;
  MEMORY[0x28223BE20](v119);
  v552 = &v500 - v121;
  v122 = sub_22DEC4824();
  v123 = *(v122 - 8);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  v126 = &v500 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v548 = a1;
  if (!a1)
  {
    v135 = v551;
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v136 = sub_22DEC4B44();
    __swift_project_value_buffer(v136, qword_281462270);
    v137 = sub_22DEC4B24();
    v138 = sub_22DEC4E44();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_22DDEC000, v137, v138, "Cannot get url resolver (config error)", v139, 2u);
      MEMORY[0x2318DBF00](v139, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DE25A0C(&qword_28145AE60, type metadata accessor for NDOErrors);
    v140 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v135(v140, 1);

    return;
  }

  v501 = v34;
  v502 = v28;
  v500 = v15;
  v127 = objc_allocWithZone(MEMORY[0x277CFE508]);

  v128 = [v127 init];
  [v128 setGroupIdentifier_];
  v129 = sub_22DEC4C04();
  [v128 setExtensionIdentifier_];

  v130 = *&v566[*(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20)];
  swift_beginAccess();
  v131 = *(v130 + 32);
  v132 = sub_22DEC4C04();

  v565 = v128;
  [v128 setTargetBundleIdentifier_];

  swift_beginAccess();
  if (*(v130 + 48))
  {
    v133 = *(v130 + 40);
    v134 = *(v130 + 48);
  }

  v141 = sub_22DEC4C04();

  [v565 setTitle_];

  swift_beginAccess();
  if (*(v130 + 24))
  {
    v142 = *(v130 + 16);
    v143 = *(v130 + 24);
  }

  v144 = sub_22DEC4C04();

  [v565 setUniqueIdentifier_];

  swift_beginAccess();
  if ((*(v130 + 144) & 1) == 0)
  {
    v145 = *(v130 + 136);
    sub_22DEC47F4();
    v146 = sub_22DEC47D4();
    (*(v123 + 8))(v126, v122);
    [v565 setExpirationDate_];
  }

  swift_beginAccess();
  v147 = *(v130 + 168);
  v528 = v105;
  if (v147 == 2 || (v147 & 1) == 0)
  {
    v148 = 18;
  }

  else
  {
    v148 = 2;
  }

  v149 = v564;
  [v565 setDisplayStyle_];
  v150 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v151 = *MEMORY[0x277CFE3F0];
  v152 = sub_22DEC4C34();
  v153 = *MEMORY[0x277CFE3E8];
  v584 = v152;
  v585 = v154;
  v155 = v153;
  [v150 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v156 = *MEMORY[0x277CFE4D0];
  v157 = sub_22DEC4D54();
  v584 = v156;
  type metadata accessor for FLUserInfoProperty(0);
  v159 = v158;
  v160 = v156;
  v503 = v159;
  [v150 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v161 = sub_22DEC4C04();
  v584 = 0xD000000000000025;
  v585 = 0x800000022DED2250;
  v162 = sub_22DEC5104();
  v562 = v150;
  [v150 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v163 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v559 = v163;
  sub_22DDF0028(v130 + v163, v111, &qword_27DA37D90, &unk_22DEC7970);
  v164 = v569[6];
  v165 = v568;
  v569 += 6;
  v566 = v164;
  if ((v164)(v111, 1, v568) == 1)
  {
    v166 = v552;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v167 = v165[5];
    v168 = v563;
    v169 = v560;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v166 + v167) = qword_27DA38008;
    v170 = (v566)(v111, 1, v165);

    if (v170 != 1)
    {
      sub_22DDEF284(v111, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v166 = v552;
    sub_22DE25AA0(v111, v552, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v168 = v563;
    v169 = v560;
  }

  v171 = *(v166 + v568[5]);
  v172 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v173 = v530;
  sub_22DDF0028(v171 + v172, v530, &qword_27DA37D88, &unk_22DEC8210);
  v174 = v567 + 48;
  v175 = *(v567 + 48);
  v176 = v175(v173, 1, v149);
  v567 = v174;
  v560 = v175;
  v177 = v531;
  if (v176 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v178 = (v177 + v149[5]);
    *v178 = 0;
    v178[1] = 0;
    v179 = (v177 + v149[6]);
    *v179 = 0;
    v179[1] = 0;
    (*(v561 + 56))(v177 + v149[7], 1, 1, v168);
    v180 = v175(v173, 1, v149) == 1;
    v181 = v173;
    v182 = v547;
    if (!v180)
    {
      sub_22DDEF284(v181, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE25AA0(v173, v531, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v182 = v547;
  }

  sub_22DE257B8(v552, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  v183 = v532;
  sub_22DDF0028(v177 + v149[7], v532, &qword_27DA37D80, &unk_22DEC7960);
  v184 = v177;
  v185 = v561 + 48;
  v186 = *(v561 + 48);
  v187 = v186(v183, 1, v168);
  v552 = v185;
  if (v187 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v184, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    *(v169 + *(v168 + 20)) = 7;
    (*(v556 + 56))(v169 + *(v168 + 24), 1, 1, v557);
    if (v186(v183, 1, v168) != 1)
    {
      sub_22DDEF284(v183, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE257B8(v184, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE25AA0(v183, v169, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  v188 = *(v169 + *(v168 + 20));
  sub_22DE257B8(v169, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v189 = 0xE700000000000000;
  v190 = 0x6E776F6E6B6E75;
  if (v188 <= 2 || v188 == 7)
  {
    v190 = sub_22DEC4C34();
  }

  v547 = v186;
  v531 = v190;
  v532 = v189;
  v191 = sub_22DEC4C34();
  v193 = v192;
  swift_beginAccess();
  if (*(v130 + 160))
  {
    v194 = *(v130 + 152);
    v195 = *(v130 + 160);
  }

  v196 = sub_22DEC4C04();

  v582 = v191;
  v583 = v193;
  [v562 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v197 = sub_22DEC4C34();
  v199 = v198;
  if (*(v130 + 160))
  {
    v200 = *(v130 + 152);
    v201 = *(v130 + 160);
  }

  v202 = sub_22DEC4C04();

  v582 = v197;
  v583 = v199;
  [v562 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v203 = sub_22DEC4C34();
  v530 = v204;
  sub_22DDF0028(v130 + v559, v182, &qword_27DA37D90, &unk_22DEC7970);
  v205 = v568;
  if ((v566)(v182, 1, v568) == 1)
  {
    v206 = v558;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v207 = v205[5];
    v208 = v564;
    v209 = v535;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v206 + v207) = qword_27DA38008;
    v210 = (v566)(v182, 1, v205);

    v180 = v210 == 1;
    v205 = v568;
    if (!v180)
    {
      sub_22DDEF284(v182, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v206 = v558;
    sub_22DE25AA0(v182, v558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v208 = v564;
    v209 = v535;
  }

  v211 = *(v206 + v205[5]);
  v212 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v213 = v533;
  sub_22DDF0028(v211 + v212, v533, &qword_27DA37D88, &unk_22DEC8210);
  v214 = v560;
  if (v560(v213, 1, v208) == 1)
  {
    v215 = v534;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v216 = (v215 + v208[5]);
    *v216 = 0;
    v216[1] = 0;
    v217 = (v215 + v208[6]);
    *v217 = 0;
    v217[1] = 0;
    v218 = v563;
    (*(v561 + 56))(v215 + v208[7], 1, 1, v563);
    v219 = v214(v213, 1, v208);
    v220 = v536;
    if (v219 != 1)
    {
      sub_22DDEF284(v213, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    v215 = v534;
    sub_22DE25AA0(v213, v534, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v218 = v563;
    v220 = v536;
  }

  sub_22DE257B8(v558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DDF0028(v215 + v208[7], v209, &qword_27DA37D80, &unk_22DEC7960);
  v221 = v547;
  v222 = v547(v209, 1, v218);
  v558 = v130;
  if (v222 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v215, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    *(v220 + *(v218 + 20)) = 7;
    v223 = v557;
    (*(v556 + 56))(v220 + *(v218 + 24), 1, 1, v557);
    v224 = v221(v209, 1, v218);
    v225 = v538;
    v226 = v539;
    if (v224 != 1)
    {
      sub_22DDEF284(v209, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE257B8(v215, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE25AA0(v209, v220, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v223 = v557;
    v225 = v538;
    v226 = v539;
  }

  sub_22DDF0028(v220 + *(v218 + 24), v226, &qword_27DA37D78, &unk_22DEC8150);
  v227 = *(v556 + 48);
  v228 = v227(v226, 1, v223);
  v539 = v227;
  if (v228 == 1)
  {
    v229 = v220;
    v230 = MEMORY[0x277D84F90];
    *v225 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v225[1] = sub_22DE0501C(v230);
    v231 = v225 + v223[6];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v229, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v232 = (v225 + v223[7]);
    *v232 = 0;
    v232[1] = 0;
    v233 = (v225 + v223[8]);
    *v233 = 0;
    v233[1] = 0;
    v234 = v227(v226, 1, v223);
    v235 = v537;
    if (v234 != 1)
    {
      sub_22DDEF284(v226, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE257B8(v220, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE25AA0(v226, v225, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v235 = v537;
  }

  v236 = v225[1];

  sub_22DE257B8(v225, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v237 = sub_22DEC4B84();

  v580 = v203;
  v581 = v530;
  [v562 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v238 = sub_22DEC4C34();
  v537 = v239;
  v538 = v238;
  sub_22DDF0028(v558 + v559, v235, &qword_27DA37D90, &unk_22DEC7970);
  v240 = v568;
  if ((v566)(v235, 1, v568) == 1)
  {
    v241 = v553;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v242 = v240[5];
    v243 = v564;
    v244 = v549;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v241 + v242) = qword_27DA38008;
    v245 = (v566)(v235, 1, v240);

    if (v245 != 1)
    {
      sub_22DDEF284(v235, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v241 = v553;
    sub_22DE25AA0(v235, v553, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v243 = v564;
    v244 = v549;
  }

  v246 = *(v241 + v240[5]);
  v247 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v248 = v540;
  sub_22DDF0028(v246 + v247, v540, &qword_27DA37D88, &unk_22DEC8210);
  v249 = v560;
  if (v560(v248, 1, v243) == 1)
  {
    v250 = v541;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v251 = (v250 + v243[5]);
    *v251 = 0;
    v251[1] = 0;
    v252 = (v250 + v243[6]);
    *v252 = 0;
    v252[1] = 0;
    v253 = v563;
    (*(v561 + 56))(v250 + v243[7], 1, 1, v563);
    v254 = v249(v248, 1, v243);
    v256 = v543;
    v255 = v544;
    if (v254 != 1)
    {
      sub_22DDEF284(v248, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    v250 = v541;
    sub_22DE25AA0(v248, v541, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v253 = v563;
    v256 = v543;
    v255 = v544;
  }

  sub_22DE257B8(v553, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DDF0028(v250 + v243[7], v244, &qword_27DA37D80, &unk_22DEC7960);
  v257 = v547;
  v258 = v250;
  if (v547(v244, 1, v253) == 1)
  {
    v259 = v556;
    v260 = v542;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v258, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    *(v260 + *(v253 + 20)) = 7;
    v261 = v557;
    (*(v259 + 56))(v260 + *(v253 + 24), 1, 1, v557);
    v262 = v549;
    if (v257(v549, 1, v253) != 1)
    {
      sub_22DDEF284(v262, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE257B8(v250, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v260 = v542;
    sub_22DE25AA0(v244, v542, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v261 = v557;
  }

  sub_22DDF0028(v260 + *(v253 + 24), v255, &qword_27DA37D78, &unk_22DEC8150);
  v263 = v539;
  if (v539(v255, 1, v261) == 1)
  {
    v264 = MEMORY[0x277D84F90];
    *v256 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v256[1] = sub_22DE0501C(v264);
    v265 = v256 + v261[6];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v266 = (v256 + v261[7]);
    *v266 = 0;
    v266[1] = 0;
    v267 = (v256 + v261[8]);
    *v267 = 0;
    v267[1] = 0;
    if (v263(v255, 1, v261) != 1)
    {
      sub_22DDEF284(v255, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE257B8(v260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE25AA0(v255, v256, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  }

  v268 = *v256;

  sub_22DE257B8(v256, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v269 = sub_22DEC4B84();

  v578 = v538;
  v579 = v537;
  v270 = sub_22DEC5104();
  v271 = v562;
  [v562 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v272 = sub_22DEC4C34();
  v274 = v273;
  v275 = sub_22DEC4C04();

  v578 = v272;
  v579 = v274;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v276 = sub_22DEC4C34();
  v278 = v277;
  v279 = v558;
  if (*(v558 + 24))
  {
    v280 = *(v558 + 16);
    v281 = *(v558 + 24);
  }

  v282 = sub_22DEC4C04();

  v578 = v276;
  v579 = v278;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v283 = v528;
  sub_22DDF0028(v279 + v559, v528, &qword_27DA37D90, &unk_22DEC7970);
  v284 = v568;
  if ((v566)(v283, 1, v568) == 1)
  {
    v285 = v554;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v286 = v284[5];
    v287 = v555;
    v288 = v560;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v285 + v286) = qword_27DA38008;
    v289 = v528;
    v290 = (v566)(v528, 1, v284);

    if (v290 != 1)
    {
      sub_22DDEF284(v289, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v285 = v554;
    sub_22DE25AA0(v283, v554, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v287 = v555;
    v288 = v560;
  }

  v291 = *(v285 + v284[5]);
  v292 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v293 = v291 + v292;
  v294 = v546;
  sub_22DDF0028(v293, v546, &qword_27DA37D88, &unk_22DEC8210);
  v295 = v564;
  if (v288(v294, 1, v564) == 1)
  {
    v296 = v545;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v297 = (v296 + v295[5]);
    *v297 = 0;
    v297[1] = 0;
    v298 = (v296 + v295[6]);
    *v298 = 0;
    v298[1] = 0;
    (*(v561 + 56))(v296 + v295[7], 1, 1, v563);
    v299 = v288(v294, 1, v295);
    v300 = v548;
    if (v299 != 1)
    {
      sub_22DDEF284(v294, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    v296 = v545;
    sub_22DE25AA0(v294, v545, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v300 = v548;
  }

  sub_22DE257B8(v554, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  v301 = sub_22DE24780(v296, v300, v287);
  v303 = v302;
  sub_22DE257B8(v296, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE256E4(v300);
  if (!v303)
  {
LABEL_95:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v316 = sub_22DEC4B44();
    __swift_project_value_buffer(v316, qword_281462270);
    v317 = sub_22DEC4B24();
    v318 = sub_22DEC4E44();
    if (os_log_type_enabled(v317, v318))
    {
      v319 = swift_slowAlloc();
      *v319 = 0;
      _os_log_impl(&dword_22DDEC000, v317, v318, "Not handling post follow up action - failed to resolve action url", v319, 2u);
      MEMORY[0x2318DBF00](v319, -1, -1);
    }

    type metadata accessor for NDOErrors();
    sub_22DE25A0C(&qword_28145AE60, type metadata accessor for NDOErrors);
    v320 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v551(v320, 1);

    v321 = v300;
    goto LABEL_151;
  }

  v304 = (v303 >> 56) & 0xF;
  if ((v303 & 0x2000000000000000) == 0)
  {
    v304 = v301 & 0xFFFFFFFFFFFFLL;
  }

  if (!v304)
  {

    goto LABEL_95;
  }

  v305 = sub_22DEC4C34();
  v307 = v306;
  v557 = v303;
  v308 = sub_22DEC4C04();
  v576 = v305;
  v577 = v307;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v309 = sub_22DEC4C34();
  v311 = v310;
  v312 = sub_22DEC4D54();
  v576 = v309;
  v577 = v311;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v313 = *MEMORY[0x277CFE4E0];
  swift_beginAccess();
  if (v279[10])
  {
    v314 = v279[9];
    v315 = v279[10];
  }

  v322 = sub_22DEC4C04();

  v575 = v313;
  v323 = v313;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v324 = *MEMORY[0x277CFE4D8];
  swift_beginAccess();
  v325 = v568;
  if (v279[12])
  {
    v326 = v279[11];
    v327 = v279[12];
  }

  v328 = sub_22DEC4C04();

  v574 = v324;
  v329 = v324;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v330 = *MEMORY[0x277CFE4B0];
  swift_beginAccess();
  if (v279[16])
  {
    v331 = v279[15];
    v332 = v279[16];
  }

  v333 = sub_22DEC4C04();

  v573 = v330;
  v334 = v330;
  [v271 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  swift_beginAccess();
  v335 = v279[8];
  if (v335)
  {
    v336 = HIBYTE(v335) & 0xF;
    if ((v335 & 0x2000000000000000) == 0)
    {
      v336 = v279[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v336)
    {
      v337 = *MEMORY[0x277CFE4B8];
      v338 = v279[8];

      v339 = sub_22DEC4C04();

      v572 = v337;
      v340 = v337;
      [v271 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
    }
  }

  v572 = 0;
  v341 = v271;
  sub_22DEC4B94();
  v562 = v341;

  if (v572)
  {
    v342 = sub_22DEC4B84();
  }

  else
  {
    v342 = 0;
  }

  v343 = v563;
  v344 = v520;
  [v565 setUserInfo_];

  v345 = v527;
  sub_22DDF0028(v279 + v559, v527, &qword_27DA37D90, &unk_22DEC7970);
  if ((v566)(v345, 1, v325) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v346 = v325[5];
    v347 = v325;
    v348 = v564;
    v349 = v521;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v344 + v346) = qword_27DA38008;
    v350 = v527;
    v351 = (v566)(v527, 1, v347);

    if (v351 != 1)
    {
      sub_22DDEF284(v350, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    sub_22DE25AA0(v345, v344, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v348 = v564;
    v349 = v521;
  }

  v352 = *(v344 + v568[5]);
  v353 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v354 = v352 + v353;
  v355 = v522;
  sub_22DDF0028(v354, v522, &qword_27DA37D88, &unk_22DEC8210);
  v356 = v560;
  if (v560(v355, 1, v348) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v357 = (v349 + v348[5]);
    *v357 = 0;
    v357[1] = 0;
    v358 = (v349 + v348[6]);
    *v358 = 0;
    v358[1] = 0;
    (*(v561 + 56))(v349 + v348[7], 1, 1, v343);
    v359 = v356(v355, 1, v348);
    v360 = v548;
    if (v359 != 1)
    {
      sub_22DDEF284(v355, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE25AA0(v355, v349, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v360 = v548;
  }

  sub_22DE257B8(v344, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  v361 = (v349 + v348[5]);
  v363 = *v361;
  v362 = v361[1];

  sub_22DE257B8(v349, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v364 = sub_22DEC4764();
  v365 = *(v364 - 8);
  v366 = v523;
  (*(v365 + 56))(v523, 1, 1, v364);
  v367 = sub_22DEC4C04();
  v368 = v366;

  v369 = (*(v365 + 48))(v366, 1, v364);
  v370 = 0;
  if (v369 != 1)
  {
    v370 = sub_22DEC4724();
    (*(v365 + 8))(v368, v364);
  }

  v371 = [objc_opt_self() actionWithLabel:v367 url:v370];

  if (v371)
  {
    v372 = sub_22DEC4C04();
    [v371 setIdentifier_];

    if (*(v558 + 128))
    {
      v373 = *(v558 + 120);
      v374 = *(v558 + 128);
    }

    v375 = sub_22DEC4C04();

    v376 = v565;
    [v565 setInformativeFooterText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
    v377 = swift_allocObject();
    *(v377 + 16) = xmmword_22DEC77B0;
    *(v377 + 32) = v371;
    sub_22DE25A54();
    v378 = v371;
    v379 = sub_22DEC4CD4();

    [v376 setActions_];
  }

  v380 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v381 = v558;
  swift_beginAccess();
  v382 = v524;
  sub_22DDF0028(v381 + v380, v524, &qword_27DA37D70, &qword_22DEC7958);
  v383 = v529 + 48;
  v384 = *(v529 + 48);
  v385 = v526;
  if (v384(v382, 1, v526) == 1)
  {

    sub_22DDEF284(v382, &qword_27DA37D70, &qword_22DEC7958);
LABEL_150:
    v411 = v525[3];
    v412 = v525[4];
    __swift_project_boxed_opaque_existential_1(v525, v411);
    v413 = *(v412 + 8);
    v414 = v565;
    v415 = v565;
    v413(v414, v411, v412);

    v416 = (*(v558 + 32) & 1) + 1;
    v417 = v515;
    sub_22DEC4D94();
    v418 = sub_22DEC4DB4();
    (*(*(v418 - 8) + 56))(v417, 0, 1, v418);
    v419 = swift_allocObject();
    *(v419 + 16) = 0;
    *(v419 + 24) = 0;
    *(v419 + 32) = v416;
    *(v419 + 40) = 2;
    sub_22DE1D5F0(0, 0, v417, &unk_22DEC7980, v419);

    v551(0, 0);

    v321 = v360;
LABEL_151:
    sub_22DE256E4(v321);
    return;
  }

  v529 = v383;
  sub_22DDEF284(v382, &qword_27DA37D70, &qword_22DEC7958);
  v386 = v381 + v380;
  v387 = v516;
  sub_22DDF0028(v386, v516, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v387, 1, v385) == 1)
  {
    v388 = v518;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v388 + v385[5]) = 2;
    v389 = (v388 + v385[6]);
    *v389 = 0;
    v389[1] = 0;
    v390 = (v388 + v385[7]);
    *v390 = 0;
    v390[1] = 0;
    v391 = (v388 + v385[8]);
    *v391 = 0;
    v391[1] = 0;
    v392 = (v388 + v385[9]);
    *v392 = 0;
    v392[1] = 0;
    v180 = v384(v387, 1, v385) == 1;
    v393 = v519;
    v394 = v387;
    v395 = v517;
    if (!v180)
    {
      sub_22DDEF284(v394, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v388 = v518;
    sub_22DE25AA0(v387, v518, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    v393 = v519;
    v395 = v517;
  }

  if (!*(v388 + v385[6] + 8))
  {
    goto LABEL_148;
  }

  sub_22DE257B8(v388, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDF0028(v558 + v380, v395, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v395, 1, v385) == 1)
  {
    v388 = v502;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v388 + v385[5]) = 2;
    v396 = (v388 + v385[6]);
    *v396 = 0;
    v396[1] = 0;
    v397 = (v388 + v385[7]);
    *v397 = 0;
    v397[1] = 0;
    v398 = (v388 + v385[8]);
    *v398 = 0;
    v398[1] = 0;
    v399 = (v388 + v385[9]);
    *v399 = 0;
    v399[1] = 0;
    if (v384(v395, 1, v385) != 1)
    {
      sub_22DDEF284(v395, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v388 = v502;
    sub_22DE25AA0(v395, v502, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  if (!*(v388 + v385[7] + 8))
  {
    goto LABEL_148;
  }

  sub_22DE257B8(v388, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v400 = v513;
  sub_22DDF0028(v558 + v380, v513, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v400, 1, v385) == 1)
  {
    v388 = v514;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v388 + v385[5]) = 2;
    v401 = (v388 + v385[6]);
    *v401 = 0;
    v401[1] = 0;
    v402 = (v388 + v385[7]);
    *v402 = 0;
    v402[1] = 0;
    v403 = (v388 + v385[8]);
    *v403 = 0;
    v403[1] = 0;
    v404 = (v388 + v385[9]);
    *v404 = 0;
    v404[1] = 0;
    if (v384(v400, 1, v385) != 1)
    {
      sub_22DDEF284(v400, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v388 = v514;
    sub_22DE25AA0(v400, v514, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  if (!*(v388 + v385[8] + 8))
  {
LABEL_148:

    v410 = v388;
LABEL_149:
    sub_22DE257B8(v410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    goto LABEL_150;
  }

  sub_22DE257B8(v388, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v405 = v512;
  sub_22DDF0028(v558 + v380, v512, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v405, 1, v385) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v393 + v385[5]) = 2;
    v406 = (v393 + v385[6]);
    *v406 = 0;
    v406[1] = 0;
    v407 = (v393 + v385[7]);
    *v407 = 0;
    v407[1] = 0;
    v408 = (v393 + v385[8]);
    *v408 = 0;
    v408[1] = 0;
    v409 = (v393 + v385[9]);
    *v409 = 0;
    v409[1] = 0;
    if (v384(v405, 1, v385) != 1)
    {
      sub_22DDEF284(v405, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    sub_22DE25AA0(v405, v393, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  if (!*(v393 + v385[9] + 8))
  {

    v410 = v393;
    goto LABEL_149;
  }

  sub_22DE257B8(v393, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v420 = [objc_allocWithZone(MEMORY[0x277CFE510]) init];
  v421 = v504;
  sub_22DDF0028(v558 + v380, v504, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v421, 1, v385) == 1)
  {
    v422 = v505;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v422 + v385[5]) = 2;
    v423 = (v422 + v385[6]);
    *v423 = 0;
    v423[1] = 0;
    v424 = (v422 + v385[7]);
    *v424 = 0;
    v424[1] = 0;
    v425 = (v422 + v385[8]);
    *v425 = 0;
    v425[1] = 0;
    v426 = (v422 + v385[9]);
    *v426 = 0;
    v426[1] = 0;
    v180 = v384(v421, 1, v385) == 1;
    v427 = v421;
    v428 = v508;
    if (!v180)
    {
      sub_22DDEF284(v427, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v422 = v505;
    sub_22DE25AA0(v421, v505, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    v428 = v508;
  }

  v429 = (v422 + v385[6]);
  v431 = *v429;
  v430 = v429[1];

  sub_22DE257B8(v422, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v432 = sub_22DEC4C04();

  [v420 setTitle_];

  v433 = v526;
  v434 = v506;
  sub_22DDF0028(v558 + v380, v506, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v434, 1, v433) == 1)
  {
    v435 = v507;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v435 + v433[5]) = 2;
    v436 = (v435 + v433[6]);
    *v436 = 0;
    v436[1] = 0;
    v437 = (v435 + v433[7]);
    *v437 = 0;
    v437[1] = 0;
    v438 = (v435 + v433[8]);
    *v438 = 0;
    v438[1] = 0;
    v439 = (v435 + v433[9]);
    *v439 = 0;
    v439[1] = 0;
    if (v384(v434, 1, v433) != 1)
    {
      sub_22DDEF284(v434, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v435 = v507;
    sub_22DE25AA0(v434, v507, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  v440 = (v435 + v433[7]);
  v442 = *v440;
  v441 = v440[1];

  sub_22DE257B8(v435, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v443 = sub_22DEC4C04();

  [v420 setInformativeText_];

  v444 = [objc_allocWithZone(MEMORY[0x277CFE4F8]) init];
  v445 = [objc_allocWithZone(MEMORY[0x277CFE4F8]) init];
  v446 = sub_22DEC4C04();
  v569 = v444;
  [v444 setIdentifier_];

  v447 = sub_22DEC4C04();
  v448 = v526;
  v568 = v445;
  [v445 setIdentifier_];

  sub_22DDF0028(v558 + v380, v428, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v428, 1, v448) == 1)
  {
    v449 = v509;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v449 + v448[5]) = 2;
    v450 = (v449 + v448[6]);
    *v450 = 0;
    v450[1] = 0;
    v451 = (v449 + v448[7]);
    *v451 = 0;
    v451[1] = 0;
    v452 = (v449 + v448[8]);
    *v452 = 0;
    v452[1] = 0;
    v453 = (v449 + v448[9]);
    *v453 = 0;
    v453[1] = 0;
    if (v384(v428, 1, v448) != 1)
    {
      sub_22DDEF284(v428, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v449 = v509;
    sub_22DE25AA0(v428, v509, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  v454 = (v449 + v448[8]);
  v455 = v448;
  v457 = *v454;
  v456 = v454[1];

  sub_22DE257B8(v449, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v458 = sub_22DEC4C04();

  [v569 setLabel_];

  v459 = v510;
  sub_22DDF0028(v558 + v380, v510, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v459, 1, v455) == 1)
  {
    v460 = v500;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v460 + v455[5]) = 2;
    v461 = (v460 + v455[6]);
    *v461 = 0;
    v461[1] = 0;
    v462 = (v460 + v455[7]);
    *v462 = 0;
    v462[1] = 0;
    v463 = (v460 + v455[8]);
    *v463 = 0;
    v463[1] = 0;
    v464 = (v460 + v455[9]);
    *v464 = 0;
    v464[1] = 0;
    if (v384(v459, 1, v455) != 1)
    {
      sub_22DDEF284(v459, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v460 = v500;
    sub_22DE25AA0(v459, v500, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  v465 = v526;
  v466 = (v460 + *(v526 + 36));
  v467 = v460;
  v469 = *v466;
  v468 = v466[1];

  sub_22DE257B8(v467, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v470 = sub_22DEC4C04();

  v471 = v568;
  [v568 setLabel_];

  [v420 setActivateAction_];
  [v420 setClearAction_];
  [v420 setFrequency_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D98, &qword_22DEC7988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77C0;
  v473 = *MEMORY[0x277CFE4A0];
  *(inited + 32) = *MEMORY[0x277CFE4A0];
  v474 = *MEMORY[0x277CFE478];
  v475 = *MEMORY[0x277CFE480];
  *(inited + 40) = *MEMORY[0x277CFE478];
  *(inited + 48) = v475;
  v476 = v473;
  v477 = v474;
  v478 = v465;
  v479 = v475;
  sub_22DE25818(inited);
  swift_setDeallocating();
  type metadata accessor for FLNotificationOptions(0);
  swift_arrayDestroy();
  sub_22DE25A0C(&qword_27DA37958, type metadata accessor for FLNotificationOptions);
  v480 = sub_22DEC4DC4();

  [v420 setOptions_];

  v481 = v501;
  sub_22DDF0028(v558 + v380, v501, &qword_27DA37D70, &qword_22DEC7958);
  if (v384(v481, 1, v478) == 1)
  {
    v482 = v511;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v482 + v478[5]) = 2;
    v483 = (v482 + v478[6]);
    *v483 = 0;
    v483[1] = 0;
    v484 = (v482 + v478[7]);
    *v484 = 0;
    v484[1] = 0;
    v485 = (v482 + v478[8]);
    *v485 = 0;
    v485[1] = 0;
    v486 = (v482 + v478[9]);
    *v486 = 0;
    v486[1] = 0;
    if (v384(v481, 1, v478) != 1)
    {
      sub_22DDEF284(v481, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v482 = v511;
    sub_22DE25AA0(v481, v511, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  v487 = *(v482 + v478[5]);
  sub_22DE257B8(v482, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  if (v487 == 2 || (v487 & 1) == 0)
  {

    v360 = v548;
LABEL_183:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v493 = sub_22DEC4B44();
    __swift_project_value_buffer(v493, qword_281462270);
    v494 = v420;
    v495 = sub_22DEC4B24();
    v496 = sub_22DEC4E54();

    if (os_log_type_enabled(v495, v496))
    {
      v497 = swift_slowAlloc();
      v498 = swift_slowAlloc();
      *v497 = 138412290;
      *(v497 + 4) = v494;
      *v498 = v494;
      v499 = v494;
      _os_log_impl(&dword_22DDEC000, v495, v496, "FollowUp notification: %@", v497, 0xCu);
      sub_22DDEF284(v498, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v498, -1, -1);
      MEMORY[0x2318DBF00](v497, -1, -1);
    }

    [v565 setNotification_];
    goto LABEL_150;
  }

  v488 = *MEMORY[0x277CFE498];
  v489 = [v420 options];
  if (v489)
  {
    v490 = v489;
    v491 = sub_22DEC4DD4();

    v570 = v491;
    sub_22DE23DCC(v571, v488);

    if (v570)
    {
      v492 = sub_22DEC4DC4();
    }

    else
    {
      v492 = 0;
    }

    v360 = v548;
    [v420 setOptions_];

    goto LABEL_183;
  }

  __break(1u);
}

uint64_t NDOPostFollowUpActionHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t NDOPostFollowUpActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void sub_22DE23C80(uint64_t (*a1)(uint64_t, unint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22DE1FBCC(a1, a2, v7, v8, (v2 + v6), v9);
}

uint64_t sub_22DE23DCC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22DEC4C34();
  sub_22DEC5184();
  sub_22DEC4C94();
  v8 = sub_22DEC51A4();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_22DEC4C34();
      v15 = v14;
      if (v13 == sub_22DEC4C34() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_22DEC50E4();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_22DE241F4(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_22DE23F78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
  result = sub_22DEC4F04();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22DEC4C34();
      sub_22DEC5184();
      sub_22DEC4C94();
      v20 = sub_22DEC51A4();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22DE241F4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22DE23F78(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22DE243DC();
      goto LABEL_16;
    }

    sub_22DE2452C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22DEC4C34();
  sub_22DEC5184();
  sub_22DEC4C94();
  v11 = sub_22DEC51A4();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for FLNotificationOptions(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_22DEC4C34();
      v17 = v16;
      if (v15 == sub_22DEC4C34() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_22DEC50E4();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22DEC5114();
  __break(1u);
  return result;
}

id sub_22DE243DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
  v2 = *v0;
  v3 = sub_22DEC4EF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22DE2452C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
  result = sub_22DEC4F04();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22DEC4C34();
      sub_22DEC5184();
      v20 = v18;
      sub_22DEC4C94();
      v21 = sub_22DEC51A4();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22DE24780(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  v114 = a3;
  v115 = a2;
  v129 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v113 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v119 = &v111 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v124 = &v111 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v111 - v11;
  v130 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v128 = *(v130 - 8);
  v13 = *(v128 + 64);
  v14 = MEMORY[0x28223BE20](v130);
  v112 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v118 = (&v111 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v123 = (&v111 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = (&v111 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v111 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v116 = &v111 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v121 = &v111 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v111 - v30;
  v32 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v120 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v117 = &v111 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v122 = &v111 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v111 - v41;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v43 = sub_22DEC4B44();
  v125 = __swift_project_value_buffer(v43, qword_281462270);
  v44 = sub_22DEC4B24();
  v45 = sub_22DEC4E34();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_22DDEC000, v44, v45, "Resolving proto url", v46, 2u);
    MEMORY[0x2318DBF00](v46, -1, -1);
  }

  v126 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDF0028(v129 + v126, v31, &qword_27DA37D80, &unk_22DEC7960);
  v47 = *(v33 + 48);
  v48 = v47(v31, 1, v32);
  v127 = v47;
  if (v48 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v42[*(v32 + 20)] = 7;
    v49 = v128;
    (*(v128 + 56))(&v42[*(v32 + 24)], 1, 1, v130);
    if (v47(v31, 1, v32) != 1)
    {
      sub_22DDEF284(v31, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE25AA0(v31, v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v49 = v128;
  }

  sub_22DDF0028(&v42[*(v32 + 24)], v12, &qword_27DA37D78, &unk_22DEC8150);
  v50 = *(v49 + 48);
  v51 = v130;
  if (v50(v12, 1, v130) == 1)
  {
    v52 = MEMORY[0x277D84F90];
    *v21 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v21[1] = sub_22DE0501C(v52);
    v53 = v21 + v51[6];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v54 = (v21 + v51[7]);
    *v54 = 0;
    v54[1] = 0;
    v55 = (v21 + v51[8]);
    *v55 = 0;
    v55[1] = 0;
    v56 = v50(v12, 1, v51);
    v57 = v50;
    if (v56 != 1)
    {
      sub_22DDEF284(v12, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE257B8(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE25AA0(v12, v21, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v57 = v50;
  }

  v58 = v130;
  v59 = *(v21 + *(v130 + 28) + 8);
  sub_22DE257B8(v21, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v60 = v127;
  if (v59)
  {
    v61 = sub_22DEC4B24();
    v62 = sub_22DEC4E34();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_22DDEC000, v61, v62, "URL specified. No resolving is needed", v63, 2u);
      v64 = v63;
      v60 = v127;
      MEMORY[0x2318DBF00](v64, -1, -1);
    }

    v65 = v121;
    sub_22DDF0028(v129 + v126, v121, &qword_27DA37D80, &unk_22DEC7960);
    v66 = v60(v65, 1, v32);
    v67 = v124;
    v68 = v122;
    if (v66 == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      *(v68 + *(v32 + 20)) = 7;
      (*(v128 + 56))(v68 + *(v32 + 24), 1, 1, v58);
      v69 = v60(v65, 1, v32);
      v70 = v123;
      if (v69 != 1)
      {
        sub_22DDEF284(v65, &qword_27DA37D80, &unk_22DEC7960);
      }
    }

    else
    {
      sub_22DE25AA0(v65, v122, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v70 = v123;
    }

    sub_22DDF0028(v68 + *(v32 + 24), v67, &qword_27DA37D78, &unk_22DEC8150);
    if (v57(v67, 1, v58) == 1)
    {
      v77 = MEMORY[0x277D84F90];
      *v70 = sub_22DE0501C(MEMORY[0x277D84F90]);
      v70[1] = sub_22DE0501C(v77);
      v78 = v70 + v58[6];
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE257B8(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v79 = (v70 + v58[7]);
      *v79 = 0;
      v79[1] = 0;
      v80 = (v70 + v58[8]);
      *v80 = 0;
      v80[1] = 0;
      if (v57(v67, 1, v58) != 1)
      {
        sub_22DDEF284(v67, &qword_27DA37D78, &unk_22DEC8150);
      }
    }

    else
    {
      sub_22DE257B8(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      sub_22DE25AA0(v67, v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    }

    v81 = (v70 + v58[7]);
    v83 = *v81;
    v82 = v81[1];

    sub_22DE257B8(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    if (v82)
    {
      return v83;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v71 = v116;
    sub_22DDF0028(v129 + v126, v116, &qword_27DA37D80, &unk_22DEC7960);
    if (v60(v71, 1, v32) == 1)
    {
      v72 = v117;
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      *(v72 + *(v32 + 20)) = 7;
      (*(v128 + 56))(v72 + *(v32 + 24), 1, 1, v58);
      v73 = v60(v71, 1, v32);
      v75 = v119;
      v74 = v120;
      v76 = v118;
      if (v73 != 1)
      {
        sub_22DDEF284(v71, &qword_27DA37D80, &unk_22DEC7960);
      }
    }

    else
    {
      v72 = v117;
      sub_22DE25AA0(v71, v117, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v75 = v119;
      v74 = v120;
      v76 = v118;
    }

    sub_22DDF0028(v72 + *(v32 + 24), v75, &qword_27DA37D78, &unk_22DEC8150);
    if (v57(v75, 1, v58) == 1)
    {
      v85 = v72;
      v86 = MEMORY[0x277D84F90];
      *v76 = sub_22DE0501C(MEMORY[0x277D84F90]);
      v76[1] = sub_22DE0501C(v86);
      v87 = v76 + v58[6];
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE257B8(v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v88 = (v76 + v58[7]);
      *v88 = 0;
      v88[1] = 0;
      v89 = (v76 + v58[8]);
      *v89 = 0;
      v89[1] = 0;
      if (v57(v75, 1, v58) != 1)
      {
        sub_22DDEF284(v75, &qword_27DA37D78, &unk_22DEC8150);
      }
    }

    else
    {
      sub_22DE257B8(v72, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      sub_22DE25AA0(v75, v76, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    }

    v90 = *(v76 + v58[8] + 8);
    sub_22DE257B8(v76, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    if (v90)
    {
      v91 = v111;
      sub_22DDF0028(v129 + v126, v111, &qword_27DA37D80, &unk_22DEC7960);
      v92 = v127;
      if (v127(v91, 1, v32) == 1)
      {
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        *(v74 + *(v32 + 20)) = 7;
        (*(v128 + 56))(v74 + *(v32 + 24), 1, 1, v58);
        if (v92(v91, 1, v32) != 1)
        {
          sub_22DDEF284(v91, &qword_27DA37D80, &unk_22DEC7960);
        }
      }

      else
      {
        sub_22DE25AA0(v91, v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      }

      v96 = v113;
      sub_22DDF0028(v74 + *(v32 + 24), v113, &qword_27DA37D78, &unk_22DEC8150);
      if (v57(v96, 1, v58) == 1)
      {
        v97 = MEMORY[0x277D84F90];
        v98 = sub_22DE0501C(MEMORY[0x277D84F90]);
        v99 = v112;
        *v112 = v98;
        v99[1] = sub_22DE0501C(v97);
        v100 = v99 + v58[6];
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        sub_22DE257B8(v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
        v101 = (v99 + v58[7]);
        *v101 = 0;
        v101[1] = 0;
        v102 = (v99 + v58[8]);
        *v102 = 0;
        v102[1] = 0;
        if (v57(v96, 1, v58) != 1)
        {
          sub_22DDEF284(v96, &qword_27DA37D78, &unk_22DEC8150);
        }
      }

      else
      {
        sub_22DE257B8(v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
        v99 = v112;
        sub_22DE25AA0(v96, v112, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
      }

      v103 = (v99 + v58[8]);
      v105 = *v103;
      v104 = v103[1];

      sub_22DE257B8(v99, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
      if (!v104)
      {
        v105 = 0;
        v104 = 0xE000000000000000;
      }

      v106 = sub_22DEC4B24();
      v107 = sub_22DEC4E34();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v131 = v109;
        *v108 = 136315138;
        *(v108 + 4) = sub_22DDEDC0C(v105, v104, &v131);
        _os_log_impl(&dword_22DDEC000, v106, v107, "URLKey specified. Resolving %s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x2318DBF00](v109, -1, -1);
        MEMORY[0x2318DBF00](v108, -1, -1);
      }

      v110 = v115(v105, v104);

      return v110;
    }

    else
    {
      v93 = sub_22DEC4B24();
      v94 = sub_22DEC4E44();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_22DDEC000, v93, v94, "Link resolving failed. No url or urlKey", v95, 2u);
        MEMORY[0x2318DBF00](v95, -1, -1);
      }

      return 0;
    }
  }
}

uint64_t sub_22DE256E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22DE256F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22DE0858C;

  return sub_22DE2A32C(a1, v4, v5, v6, v7);
}

uint64_t sub_22DE257B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE25818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
    v3 = sub_22DEC4F14();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_22DEC4C34();
      sub_22DEC5184();
      v29 = v7;
      sub_22DEC4C94();
      v9 = sub_22DEC51A4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_22DEC4C34();
        v20 = v19;
        if (v18 == sub_22DEC4C34() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_22DEC50E4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22DE25A0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DE25A54()
{
  result = qword_27DA37DA0;
  if (!qword_27DA37DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37DA0);
  }

  return result;
}

uint64_t sub_22DE25AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE25B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE25B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - v8;
  v10 = sub_22DEC4DB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_22DE014AC(a1, v16);
  v11 = qword_27DA37728;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27DA37DB0;
  v13 = sub_22DE25D88();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  sub_22DE002CC(v16, (v14 + 32));
  *(v14 + 80) = a2;
  *(v14 + 88) = a3;

  sub_22DE1D5F0(0, 0, v9, &unk_22DEC7A78, v14);
}

uint64_t sub_22DE25CF0()
{
  type metadata accessor for DisplayedAlertsAndNotifications();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27DA37DB0 = v0;
  return result;
}

uint64_t sub_22DE25D30()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22DE25D88()
{
  result = qword_27DA37DB8;
  if (!qword_27DA37DB8)
  {
    type metadata accessor for DisplayedAlertsAndNotifications();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37DB8);
  }

  return result;
}

uint64_t sub_22DE25DE0()
{
  if (qword_27DA37728 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22DE25E3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DisplayedAlertsAndNotifications();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_22DE25E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  if (qword_27DA37728 != -1)
  {
    swift_once();
  }

  v7 = qword_27DA37DB0;

  return MEMORY[0x2822009F8](sub_22DE25F14, v7, 0);
}

uint64_t sub_22DE25F14()
{
  v21 = v0;
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v19) = 1;
  v4 = (*(v3 + 8))(&v19, v2, v3);
  if (v4 && (v5 = sub_22DE083DC(v4), , v5))
  {
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = v0[8];
  v0[2] = v0[7];
  v0[3] = v6;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 2;
  v8 = sub_22DE1AA60(sub_22DE262FC, v7, v5);

  if (v8)
  {
  }

  else
  {
    v9 = v0[8];
    v10 = *(v5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v5;
    if (!isUniquelyReferenced_nonNull_native || v10 >= *(v5 + 24) >> 1)
    {
      v5 = sub_22DE0CE54(isUniquelyReferenced_nonNull_native, v10 + 1, 1, v5);
      v19 = v5;
    }

    v12 = v0[6];
    sub_22DE263C4(0, 0, 1, v0[7], v0[8]);

    v13 = v1[3];
    v14 = v12[5];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    if (*(v5 + 16) >= 0x1AuLL)
    {
      sub_22DE26224(v5, v5 + 32, 0, 0x33uLL);
      v16 = v15;

      v5 = v16;
    }

    v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BE8, &qword_22DEC7A80);
    v0[2] = v5;
    v20[0] = 1;
    (*(v14 + 8))(v0 + 2, v20, v13, v14);
    sub_22DE0E24C((v0 + 2));
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_22DE26160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22DE0858C;

  return sub_22DE25E78(a1, v4, v5, (v1 + 4), v6, v7);
}

void sub_22DE26224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A50, &qword_22DEC6580);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_22DE2631C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22DE263C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t NDOConfigLoadingCheckInHandler.__allocating_init(configLoader:client:payloadProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_22DDEDA18(a1, v6 + 16);
  sub_22DDEDA18(a2, v6 + 56);
  sub_22DDEDA18(a3, v6 + 96);
  return v6;
}

uint64_t NDOConfigLoadingCheckInHandler.init(configLoader:client:payloadProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_22DDEDA18(a1, v3 + 16);
  sub_22DDEDA18(a2, v3 + 56);
  sub_22DDEDA18(a3, v3 + 96);
  return v3;
}

uint64_t sub_22DE26564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v11;
  v21 = *(a1 + 32);
  v12 = v5[5];
  v13 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v16 = *(a1 + 16);
  *(v15 + 40) = *a1;
  *(v15 + 56) = v16;
  *(v15 + 72) = *(a1 + 32);
  *(v15 + 80) = a2;
  *(v15 + 88) = a3;
  v17 = *(v13 + 16);

  sub_22DDF0028(v20, v19, &qword_27DA37BB0, &qword_22DEC7340);

  v17(sub_22DE26B74, v15, v12, v13);
}

void sub_22DE266A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v44 = a5;
  v47 = a4;
  v48 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v44 - v10);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22DEC4764();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v44 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_22DDF0028(a1, v11, &qword_27DA37B88, &qword_22DEC6F08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&v50 = *v11;
      v29 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400);
      swift_willThrowTypedImpl();
      *&v51 = 0;
      v50 = v29;
      BYTE8(v51) = 1;
      v30 = v29;
      v48(&v50);

      sub_22DE17504(v50, *(&v50 + 1), v51, SBYTE8(v51));
    }

    else
    {
      sub_22DE19B38(v11, v15);
      LOBYTE(v50) = 2;
      Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)(&v50, v24);
      sub_22DE19B9C(v15);
      v31 = v17;
      v32 = *(v17 + 32);
      v32(v26, v24, v16);
      (*(v17 + 16))(v21, v26, v16);
      sub_22DDEDAAC(v28 + 56, &v50);
      sub_22DDEDAAC(v28 + 96, v49);
      v33 = type metadata accessor for NDORemoteCheckInHandler();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v36 = swift_allocObject();
      v32((v36 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_url), v21, v16);
      sub_22DDEDA18(&v50, v36 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client);
      sub_22DDEDA18(v49, v36 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider);
      v37 = qword_28145AE68;
      swift_retain_n();
      v38 = v47;
      swift_retain_n();
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = sub_22DEC4B44();
      __swift_project_value_buffer(v39, qword_281462270);
      v40 = sub_22DEC4B24();
      v41 = sub_22DEC4E54();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_22DDEC000, v40, v41, "RemoteCheckInHandler.checkIn", v42, 2u);
        MEMORY[0x2318DBF00](v42, -1, -1);
      }

      v43 = *(v44 + 16);
      v50 = *v44;
      v51 = v43;
      v52 = *(v44 + 32);

      sub_22DE17690(&v50, v45, v46, 0, v36, v36, v48, v38);

      (*(v31 + 8))(v26, v16);
    }
  }
}

uint64_t sub_22DE26B78(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *))
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return a3(&v6);
}

uint64_t *NDOConfigLoadingCheckInHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  return v0;
}

uint64_t NDOConfigLoadingCheckInHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_22DE26C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v12;
  v22 = *(a1 + 32);
  v13 = v11[5];
  v14 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v13);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v17 = *(a1 + 16);
  *(v16 + 40) = *a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = *(a1 + 32);
  *(v16 + 80) = a2;
  *(v16 + 88) = a3;
  v18 = *(v14 + 16);

  sub_22DDF0028(v21, v20, &qword_27DA37BB0, &qword_22DEC7340);

  v18(sub_22DE26E70, v16, v13, v14);
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5] != 1)
  {

    v3 = v0[7];

    v4 = v0[9];
  }

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void *static NDOResponseMapper.Warranty.decodeSaveAndPostDarwinNotification(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22DE27534(a1, a2);
  v10 = v9;
  if ((v11 & 1) == 0)
  {
    v12 = *(v9 + 16);
    if (v12)
    {
      v13 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v14 = *(v5 + 72);

      do
      {
        sub_22DE28AD4(v13, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DE280B4(v8);
        sub_22DE28A74(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        v13 += v14;
        --v12;
      }

      while (v12);
      sub_22DE115E8(v10, 0);
    }

    sub_22DE288B8();
  }

  return v10;
}

uint64_t static NDOResponseMapper.Warranty.deleteWarrantyForDeviceSerialAndPostDarwinNotification(_:)(void *a1, void *a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22DEC46F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22DEC4764();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28145E4C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_28145E4C8);
  v32 = a1;
  v33[0] = a1;
  v33[1] = a2;

  MEMORY[0x2318DB350](0x6E6F736A2ELL, 0xE500000000000000);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v5 + 8))(v8, v4);

  v14 = [objc_opt_self() defaultManager];
  v15 = sub_22DEC4724();
  v33[0] = 0;
  v16 = [v14 removeItemAtURL:v15 error:v33];

  if (v16)
  {
    v17 = v33[0];
    sub_22DE288B8();
  }

  else
  {
    v18 = v33[0];
    v19 = sub_22DEC46E4();

    swift_willThrow();
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v20 = sub_22DEC4B44();
    __swift_project_value_buffer(v20, qword_281462270);

    v21 = v19;
    v22 = sub_22DEC4B24();
    v23 = sub_22DEC4E44();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_22DDEDC0C(v32, a2, v33);
      *(v24 + 12) = 2112;
      v27 = v19;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22DDEC000, v22, v23, "Failed to delete coverage for device with serial: %s with error: %@", v24, 0x16u);
      sub_22DDEF284(v25, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2318DBF00](v26, -1, -1);
      MEMORY[0x2318DBF00](v24, -1, -1);
    }

    else
    {
    }
  }

  result = (*(v10 + 8))(v13, v9);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DE27438@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DE28A04(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  LOBYTE(a1) = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  result = sub_22DDEF284(v7, &qword_27DA37DC0, &qword_22DECE2A0);
  *a2 = a1;
  return result;
}

uint64_t sub_22DE27534(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v103 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v96 = &v92 - v9;
  MEMORY[0x28223BE20](v8);
  v102 = (&v92 - v10);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v12 = *(v11 - 8);
  v104 = v11;
  v105 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v100 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v95 = (&v92 - v17);
  MEMORY[0x28223BE20](v16);
  v101 = (&v92 - v18);
  v106 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  v19 = *(*(v106 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v106);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v92 - v23;
  v24 = sub_22DEC48E4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v92 - v30;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v32 = sub_22DEC4B44();
  v33 = __swift_project_value_buffer(v32, qword_281462270);
  sub_22DDEEEE8(a1, a2);
  v97 = v33;
  v34 = sub_22DEC4B24();
  v35 = sub_22DEC4E34();
  sub_22DDEEF50(a1, a2);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v98 = v25;
    v37 = v36;
    v38 = swift_slowAlloc();
    v99 = v24;
    v39 = v38;
    v108 = v38;
    *v37 = 136315138;
    v40 = sub_22DEC4784();
    v94 = v29;
    v42 = v31;
    v43 = sub_22DDEDC0C(v40, v41, &v108);
    v29 = v94;

    *(v37 + 4) = v43;
    v31 = v42;
    _os_log_impl(&dword_22DDEC000, v34, v35, "Decoding coverage data: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v24 = v99;
    MEMORY[0x2318DBF00](v39, -1, -1);
    v44 = v37;
    v25 = v98;
    MEMORY[0x2318DBF00](v44, -1, -1);
  }

  sub_22DEC48D4();
  sub_22DEC48C4();
  (*(v25 + 16))(v29, v31, v24);
  sub_22DDEEEE8(a1, a2);
  sub_22DDEF81C(&qword_28145CA68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
  v45 = v107;
  v46 = v106;
  sub_22DEC4A14();
  v94 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77B0;
  *(inited + 32) = swift_getKeyPath();
  v48 = sub_22DE01028(inited);
  swift_setDeallocating();
  v49 = *(inited + 16);
  swift_arrayDestroy();
  v50 = v105;
  if ((v48 & 1) == 0)
  {
    goto LABEL_15;
  }

  v51 = *(v46 + 24);
  v52 = v102;
  sub_22DE28A04(v45 + v51, v102);
  v55 = *(v50 + 48);
  v53 = v50 + 48;
  v54 = v55;
  v56 = v104;
  if (v55(v52, 1, v104) == 1)
  {
    v93 = v51;
    v57 = v54;
    v58 = v101;
    *v101 = MEMORY[0x277D84F90];
    v59 = v58 + *(v56 + 20);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v60 = v56;
    v61 = v58;
    v54 = v57;
    v51 = v93;
    if (v54(v52, 1, v60) != 1)
    {
      sub_22DDEF284(v52, &qword_27DA37DC0, &qword_22DECE2A0);
    }
  }

  else
  {
    v61 = v101;
    sub_22DE28B3C(v52, v101);
  }

  v62 = v61;
  v63 = *v61;

  sub_22DE28A74(v62, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  v64 = *(v63 + 16);

  if (v64)
  {
    sub_22DE28AD4(v45, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
    v65 = sub_22DEC4B24();
    v66 = sub_22DEC4E54();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v46;
      v68 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v108 = v102;
      *v68 = 136315138;
      v69 = *(v67 + 24);
      v106 = v22;
      v70 = &v22[v69];
      v71 = v96;
      sub_22DE28A04(v70, v96);
      v72 = v104;
      v73 = v54(v71, 1, v104);
      v98 = v25;
      v99 = v24;
      v105 = v53;
      if (v73 == 1)
      {
        v74 = v95;
        *v95 = MEMORY[0x277D84F90];
        v75 = v74 + *(v72 + 20);
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        if (v54(v71, 1, v72) != 1)
        {
          sub_22DDEF284(v71, &qword_27DA37DC0, &qword_22DECE2A0);
        }
      }

      else
      {
        v74 = v95;
        sub_22DE28B3C(v71, v95);
      }

      v79 = *v74;

      sub_22DE28A74(v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      v80 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
      v81 = MEMORY[0x2318DB3A0](v79, v80);
      v83 = v82;

      sub_22DE28A74(v106, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
      v84 = sub_22DDEDC0C(v81, v83, &v108);

      *(v68 + 4) = v84;
      _os_log_impl(&dword_22DDEC000, v65, v66, "Decoded warranties: %s", v68, 0xCu);
      v85 = v102;
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x2318DBF00](v85, -1, -1);
      MEMORY[0x2318DBF00](v68, -1, -1);

      v25 = v98;
      v24 = v99;
      v45 = v107;
    }

    else
    {

      sub_22DE28A74(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
    }

    v86 = v103;
    sub_22DE28A04(v45 + v51, v103);
    v87 = v86;
    v88 = v104;
    v89 = v54(v87, 1, v104);
    v90 = v100;
    if (v89 == 1)
    {
      *v100 = MEMORY[0x277D84F90];
      v91 = v90 + *(v88 + 20);
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE28A74(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
      (*(v25 + 8))(v94, v24);
      if (v54(v103, 1, v88) != 1)
      {
        sub_22DDEF284(v103, &qword_27DA37DC0, &qword_22DECE2A0);
      }
    }

    else
    {
      sub_22DE28A74(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
      (*(v25 + 8))(v94, v24);
      sub_22DE28B3C(v103, v90);
    }

    v76 = *v90;

    sub_22DE28A74(v90, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  }

  else
  {
LABEL_15:
    type metadata accessor for NDOErrors();
    sub_22DDEF81C(&qword_28145AE60, type metadata accessor for NDOErrors);
    v76 = swift_allocError();
    *v77 = 0xD000000000000019;
    v77[1] = 0x800000022DED2530;
    swift_storeEnumTagMultiPayload();
    sub_22DE28A74(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
    (*(v25 + 8))(v94, v24);
  }

  return v76;
}

void sub_22DE280B4(uint64_t a1)
{
  v62[5] = *MEMORY[0x277D85DE8];
  v2 = sub_22DEC46F4();
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22DEC4764();
  v6 = *(v61 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v61);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = sub_22DEC4904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  if (*(v17 + 24))
  {
    v58 = v11;
    sub_22DEC48F4();
    sub_22DDEF81C(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
    v55 = sub_22DEC4A04();
    v56 = v18;
    (*(v13 + 8))(v16, v12);
    if (*(v17 + 24))
    {
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = v61;
    v57 = v6;
    v22 = qword_28145E4C0;

    if (v22 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v21, qword_28145E4C8);
    v62[0] = v19;
    v62[1] = v20;

    MEMORY[0x2318DB350](0x6E6F736A2ELL, 0xE500000000000000);
    v23 = v59;
    (*(v59 + 104))(v5, *MEMORY[0x277CC91D8], v2);
    sub_22DDEDFE0();
    v24 = v58;
    sub_22DEC4754();
    (*(v23 + 8))(v5, v2);

    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v25 = sub_22DEC4B44();
    __swift_project_value_buffer(v25, qword_281462270);
    v26 = v57;
    v27 = v60;
    (*(v57 + 16))(v60, v24, v21);
    v28 = sub_22DEC4B24();
    v29 = sub_22DEC4E54();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62[0] = v61;
      *v30 = 136315138;
      sub_22DDEF81C(&qword_28145E550, MEMORY[0x277CC9260]);
      v31 = sub_22DEC50A4();
      v33 = v32;
      v34 = *(v26 + 8);
      v34(v27, v21);
      v35 = sub_22DDEDC0C(v31, v33, v62);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_22DDEC000, v28, v29, "Writing warranty response to %s", v30, 0xCu);
      v36 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x2318DBF00](v36, -1, -1);
      MEMORY[0x2318DBF00](v30, -1, -1);
    }

    else
    {

      v34 = *(v26 + 8);
      v34(v27, v21);
    }

    v37 = [objc_opt_self() defaultManager];
    v38 = sub_22DEC4724();
    v62[0] = 0;
    v39 = [v37 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v62];

    if (v39)
    {
      v40 = v62[0];
      v41 = v58;
      v43 = v55;
      v42 = v56;
      sub_22DEC47B4();
      v34(v41, v21);
      sub_22DDEEF50(v43, v42);
    }

    else
    {
      v44 = v62[0];
      v45 = sub_22DEC46E4();

      swift_willThrow();
      sub_22DDEEF50(v55, v56);
      v34(v58, v21);
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v46 = sub_22DEC4B44();
      __swift_project_value_buffer(v46, qword_281462270);
      v47 = v45;
      v48 = sub_22DEC4B24();
      v49 = sub_22DEC4E44();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v45;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_22DDEC000, v48, v49, "Error saving warranty %@", v50, 0xCu);
        sub_22DDEF284(v51, &qword_27DA379D8, qword_22DEC6E70);
        MEMORY[0x2318DBF00](v51, -1, -1);
        MEMORY[0x2318DBF00](v50, -1, -1);
      }

      else
      {
      }
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

void sub_22DE288B8()
{
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v0 = sub_22DEC4B44();
  __swift_project_value_buffer(v0, qword_281462270);
  v1 = sub_22DEC4B24();
  v2 = sub_22DEC4E54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22DDEC000, v1, v2, "Posting coverage updated notification", v3, 2u);
    MEMORY[0x2318DBF00](v3, -1, -1);
  }

  v4 = sub_22DEC4C04();
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v5, v4, 0, 0, 0);
}

uint64_t sub_22DE28A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE28A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE28AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE28B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static NDOResponseMapper.DeviceList.decodeAndSave(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE28D08(a1, a2, a3);
  sub_22DDF0028(a3, v9, &qword_27DA37BD0, &unk_22DEC73F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22DDEF284(v9, &qword_27DA37BD0, &unk_22DEC73F0);
  }

  sub_22DE296C0(v9, v13);
  _s6NDOAPI17NDOResponseMapperO10DeviceListO4saveyyAA51Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponseVFZ_0();
  return sub_22DE2A268(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
}

uint64_t sub_22DE28D08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  MEMORY[0x28223BE20](v10);
  v79 = &v73 - v13;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v75 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v78 = (&v73 - v19);
  v20 = sub_22DEC48E4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v29 = sub_22DEC4B44();
  v76 = __swift_project_value_buffer(v29, qword_281462270);
  v30 = sub_22DEC4B24();
  v31 = sub_22DEC4E34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v74 = a1;
    v33 = a2;
    v34 = v22;
    v35 = v26;
    v36 = v12;
    v37 = v28;
    v38 = a3;
    v39 = v32;
    *v32 = 0;
    _os_log_impl(&dword_22DDEC000, v30, v31, "Decoding device list data", v32, 2u);
    v40 = v39;
    a3 = v38;
    v28 = v37;
    v12 = v36;
    v26 = v35;
    v22 = v34;
    a2 = v33;
    a1 = v74;
    MEMORY[0x2318DBF00](v40, -1, -1);
  }

  sub_22DDEEEE8(a1, a2);
  sub_22DEC48D4();
  sub_22DE2A220(&qword_27DA37DD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
  sub_22DEC4A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77B0;
  *(inited + 32) = swift_getKeyPath();
  v42 = sub_22DE01054(inited);
  swift_setDeallocating();
  v43 = *(inited + 16);
  swift_arrayDestroy();
  v44 = v80;
  if ((v42 & 1) == 0)
  {
    goto LABEL_15;
  }

  v45 = v28;
  v74 = *(v22 + 24);
  v46 = v79;
  sub_22DDF0028(&v28[v74], v79, &qword_27DA37DD0, &qword_22DECBB20);
  v47 = v81 + 48;
  v48 = *(v81 + 48);
  v49 = v48(v46, 1, v44);
  v81 = v47;
  if (v49 == 1)
  {
    v50 = v78;
    *v78 = MEMORY[0x277D84F90];
    v51 = v50 + *(v44 + 20);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    if (v48(v46, 1, v44) != 1)
    {
      sub_22DDEF284(v46, &qword_27DA37DD0, &qword_22DECBB20);
    }
  }

  else
  {
    v50 = v78;
    sub_22DE296C0(v46, v78);
  }

  v52 = *v50;

  sub_22DE2A268(v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v53 = *(v52 + 16);

  v28 = v45;
  if (v53)
  {
    sub_22DE2A2C8(v45, v26);
    v54 = sub_22DEC4B24();
    v55 = sub_22DEC4E54();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v26;
      v59 = v57;
      v82 = v57;
      *v56 = 136315138;
      v60 = *(v22 + 24);
      v79 = v58;
      sub_22DDF0028(v58 + v60, v12, &qword_27DA37DD0, &qword_22DECBB20);
      v61 = v48(v12, 1, v44);
      v73 = a3;
      if (v61 == 1)
      {
        v62 = v75;
        *v75 = MEMORY[0x277D84F90];
        v63 = v62 + *(v44 + 20);
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        if (v48(v12, 1, v44) != 1)
        {
          sub_22DDEF284(v12, &qword_27DA37DD0, &qword_22DECBB20);
        }
      }

      else
      {
        sub_22DE296C0(v12, v75);
      }

      v67 = sub_22DEC4C74();
      v69 = v68;
      sub_22DE2A268(v79, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
      v70 = sub_22DDEDC0C(v67, v69, &v82);

      *(v56 + 4) = v70;
      v44 = v80;
      _os_log_impl(&dword_22DDEC000, v54, v55, "Decoded data: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x2318DBF00](v59, -1, -1);
      MEMORY[0x2318DBF00](v56, -1, -1);

      a3 = v73;
    }

    else
    {

      sub_22DE2A268(v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
    }

    v71 = v77;
    sub_22DDF0028(v45 + v74, v77, &qword_27DA37DD0, &qword_22DECBB20);
    if (v48(v71, 1, v44) == 1)
    {
      *a3 = MEMORY[0x277D84F90];
      v72 = a3 + *(v44 + 20);
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE2A268(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
      if (v48(v71, 1, v44) != 1)
      {
        sub_22DDEF284(v71, &qword_27DA37DD0, &qword_22DECBB20);
      }
    }

    else
    {
      sub_22DE2A268(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
      sub_22DE296C0(v71, a3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  }

  else
  {
LABEL_15:
    type metadata accessor for NDOErrors();
    sub_22DE2A220(&qword_28145AE60, type metadata accessor for NDOErrors);
    v64 = swift_allocError();
    *v65 = 0xD000000000000017;
    v65[1] = 0x800000022DED2580;
    swift_storeEnumTagMultiPayload();
    sub_22DE2A268(v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
    *a3 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22DE296C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static NDOResponseMapper.DeviceList.loadLocalData()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22DEC48E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27DA37720 != -1)
  {
    swift_once();
  }

  v4 = sub_22DEC4764();
  __swift_project_value_buffer(v4, qword_27DA37B60);
  v5 = sub_22DEC4774();
  v7 = v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DDEEEE8(v5, v7);
  sub_22DEC48D4();
  sub_22DE2A220(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  sub_22DEC4A14();
  sub_22DDEEF50(v5, v7);
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_22DE29B68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA37DD0, &qword_22DECBB20);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  LOBYTE(a1) = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  result = sub_22DDEF284(v7, &qword_27DA37DD0, &qword_22DECBB20);
  *a2 = a1;
  return result;
}

void _s6NDOAPI17NDOResponseMapperO10DeviceListO4saveyyAA51Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponseVFZ_0()
{
  v36[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22DEC4904();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC48F4();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DE2A220(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v5 = sub_22DEC4A04();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v8 = sub_22DEC4B44();
  __swift_project_value_buffer(v8, qword_281462270);
  v9 = sub_22DEC4B24();
  v10 = sub_22DEC4E54();
  v11 = 0x27DA37000uLL;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36[0] = v13;
    *v12 = 136315138;
    if (qword_27DA37720 != -1)
    {
      swift_once();
    }

    v14 = sub_22DEC4764();
    __swift_project_value_buffer(v14, qword_27DA37B60);
    sub_22DE2A220(&qword_28145E550, MEMORY[0x277CC9260]);
    v15 = sub_22DEC50A4();
    v17 = sub_22DDEDC0C(v15, v16, v36);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22DDEC000, v9, v10, "Writing device list data to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2318DBF00](v13, -1, -1);
    MEMORY[0x2318DBF00](v12, -1, -1);

    v11 = 0x27DA37000;
  }

  else
  {
  }

  v18 = [objc_opt_self() defaultManager];
  if (qword_28145E480 != -1)
  {
    swift_once();
  }

  v19 = sub_22DEC4764();
  __swift_project_value_buffer(v19, qword_28145E488);
  v20 = sub_22DEC4724();
  v36[0] = 0;
  v21 = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v36];

  if (v21)
  {
    v22 = *(v11 + 1824);
    v23 = v36[0];
    if (v22 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_27DA37B60);
    sub_22DEC47B4();
    sub_22DDEEF50(v5, v7);
  }

  else
  {
    v24 = v36[0];
    v25 = sub_22DEC46E4();

    swift_willThrow();
    sub_22DDEEF50(v5, v7);
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v26 = sub_22DEC4B44();
    __swift_project_value_buffer(v26, qword_281462270);
    v27 = v25;
    v28 = sub_22DEC4B24();
    v29 = sub_22DEC4E44();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_22DDEC000, v28, v29, "Error saving device list: %@", v30, 0xCu);
      sub_22DDEF284(v31, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v31, -1, -1);
      MEMORY[0x2318DBF00](v30, -1, -1);
    }

    else
    {
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22DE2A220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE2A268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE2A2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE2A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 64) = a4;
  v6 = sub_22DEC4B44();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DE2A3F0, 0, 0);
}

uint64_t sub_22DE2A3F0()
{
  v43 = v0;
  if (qword_27DA37730 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_27DA37DE0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22DEC4B24();
  v6 = sub_22DEC4E34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v8 = 136315394;
    v9 = "@NSDictionary8@?0";
    v10 = 0xD000000000000014;
    if (v7 == 1)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v9 = "No sections in response";
    }

    if (v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xD000000000000015;
    }

    if (v7)
    {
      v12 = v9;
    }

    else
    {
      v12 = "coverage.viewload";
    }

    v13 = v0[10];
    v14 = v0[8];
    v37 = v0[9];
    v38 = v0[11];
    v15 = *(v0 + 96);
    v41 = qword_27DA38BB0;
    v42 = off_27DA38BB8;

    MEMORY[0x2318DB350](v11, v12 | 0x8000000000000000);

    v16 = sub_22DDEDC0C(v41, v42, &v40);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2080;
    sub_22DE81CE0(v14, v15);
    sub_22DE2A928();
    v17 = sub_22DEC4BB4();
    v19 = v18;

    v20 = sub_22DDEDC0C(v17, v19, &v40);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_22DDEC000, v5, v6, "Sending analytic event: %s with payload %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v39, -1, -1);
    MEMORY[0x2318DBF00](v8, -1, -1);

    (*(v13 + 8))(v38, v37);
  }

  else
  {
    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 96);
  v25 = "@NSDictionary8@?0";
  v26 = 0xD000000000000014;
  if (v24 == 1)
  {
    v26 = 0xD000000000000011;
  }

  else
  {
    v25 = "No sections in response";
  }

  if (*(v0 + 96))
  {
    v27 = v26;
  }

  else
  {
    v27 = 0xD000000000000015;
  }

  if (*(v0 + 96))
  {
    v28 = v25;
  }

  else
  {
    v28 = "coverage.viewload";
  }

  v29 = v0[11];
  v30 = v0[8];
  v41 = qword_27DA38BB0;
  v42 = off_27DA38BB8;

  MEMORY[0x2318DB350](v27, v28 | 0x8000000000000000);

  v31 = sub_22DEC4C04();

  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v24;
  v0[6] = sub_22DE2A91C;
  v0[7] = v32;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22DE2A814;
  v0[5] = &block_descriptor_0;
  v33 = _Block_copy(v0 + 2);
  v34 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v33);

  v35 = v0[1];

  return v35();
}

id sub_22DE2A814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_22DE2A928();
    v5 = sub_22DEC4B84();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_22DE2A8A0()
{
  v0 = sub_22DEC4B44();
  __swift_allocate_value_buffer(v0, qword_27DA37DE0);
  __swift_project_value_buffer(v0, qword_27DA37DE0);
  return sub_22DEC4B34();
}

unint64_t sub_22DE2A928()
{
  result = qword_27DA37DF8;
  if (!qword_27DA37DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37DF8);
  }

  return result;
}

uint64_t sub_22DE2A974()
{
  v0 = sub_22DEC4B44();
  __swift_allocate_value_buffer(v0, qword_281462270);
  __swift_project_value_buffer(v0, qword_281462270);
  return sub_22DEC4B34();
}

uint64_t sub_22DE2A9E4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_22DDF0028(a1, &v11 - v6, &qword_27DA37E00, &qword_22DEC7B70);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  sub_22DE2C6F4(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_22DE2AABC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  return sub_22DDF0028(v1 + v3, a1, &qword_27DA37E00, &qword_22DEC7B70);
}

uint64_t NDOConfigLoader.__allocating_init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)(a1, a2, a3, a4);
  return v11;
}

uint64_t NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v24 = sub_22DEC4E74();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22DEC4E64();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_22DEC4B74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v23 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue;
  v15 = sub_22DE2AE6C();
  v22[1] = "com.apple.NewDeviceOutreach";
  v22[2] = v15;
  sub_22DEC4B64();
  v29 = MEMORY[0x277D84F90];
  sub_22DE2C7EC(&qword_28145AD18, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E08, &qword_22DEC7B78);
  sub_22DE2B31C(&qword_28145AD30, &qword_27DA37E08, &qword_22DEC7B78);
  sub_22DEC4ED4();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v24);
  *(v4 + v23) = sub_22DEC4EA4();
  sub_22DDEDA18(v25, v4 + 16);
  v16 = v26;
  v17 = v26[1];
  *(v4 + 56) = *v26;
  *(v4 + 72) = v17;
  v18 = *(v16 + 4);
  v20 = v27;
  v19 = v28;
  *(v4 + 88) = v18;
  *(v4 + 96) = v20;
  *(v4 + 104) = v19;
  return v4;
}

unint64_t sub_22DE2AE6C()
{
  result = qword_28145AD10;
  if (!qword_28145AD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28145AD10);
  }

  return result;
}

uint64_t sub_22DE2AEB8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_22DEC4B54();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22DEC4B74();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue);
  aBlock[4] = sub_22DE2B2D0;
  v23 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DE2B2D8;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  sub_22DEC4B64();
  v21 = MEMORY[0x277D84F90];
  sub_22DE2C7EC(qword_28145ADB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E10, &qword_22DEC7B80);
  sub_22DE2B31C(&qword_28145AD40, &qword_27DA37E10, &qword_22DEC7B80);
  sub_22DEC4ED4();
  MEMORY[0x2318DB540](0, v10, v6, v11);
  _Block_release(v11);
  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v19;
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v20;

  sub_22DE2B71C(sub_22DE2B47C, v13);
}

uint64_t sub_22DE2B1E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  sub_22DE2C6F4(v5, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_22DE2B2D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22DE2B31C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22DE2B370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue);

    MEMORY[0x28223BE20](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E18, &qword_22DEC7C38);
    sub_22DEC4E84();
  }

  return a3(a1);
}

uint64_t sub_22DE2B488@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v18 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v13 = result;
  if (result)
  {
    sub_22DDF0028(a1, v7, &qword_27DA37B88, &qword_22DEC6F08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18[0] = *v7;
      v14 = v18[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400);
      swift_willThrowTypedImpl();

      v15 = 1;
    }

    else
    {
      sub_22DE19B38(v7, v11);
      v15 = 0;
    }

    v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    (*(*(v16 - 8) + 56))(v11, v15, 1, v16);
    v17 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
    swift_beginAccess();
    sub_22DE2C6F4(v11, v13 + v17);
    swift_endAccess();
  }

  *a2 = v13 == 0;
  return result;
}

uint64_t sub_22DE2B6A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  return sub_22DEC4E84();
}

uint64_t sub_22DE2B71C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 80))
  {
    sub_22DDEDAAC(v2 + 56, &v22);
    if (*(&v23 + 1))
    {
LABEL_3:
      sub_22DDEDA18(&v22, v25);
      v6 = v26;
      v7 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = a1;
      v9[4] = a2;
      v10 = *(v7 + 16);

      v10(sub_22DE2C7E0, v9, v6, v7);

      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    v12 = *(v2 + 72);
    v22 = *(v2 + 56);
    v23 = v12;
    v24 = *(v2 + 88);
    if (*(&v12 + 1))
    {
      goto LABEL_3;
    }
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v13 = sub_22DEC4B44();
  __swift_project_value_buffer(v13, qword_281462270);
  v14 = sub_22DEC4B24();
  v15 = sub_22DEC4E54();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22DDEC000, v14, v15, "No local loader provided, using remote loader", v16, 2u);
    MEMORY[0x2318DBF00](v16, -1, -1);
  }

  v17 = v3[5];
  v18 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v21 = *(v18 + 16);

  v21(sub_22DE2C7D4, v20, v17, v18);
}

void sub_22DE2B9B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v31 - v9);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_22DDF0028(a1, v10, &qword_27DA37B88, &qword_22DEC6F08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v10;
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v14 = sub_22DEC4B44();
      __swift_project_value_buffer(v14, qword_281462270);
      v15 = v13;
      v16 = sub_22DEC4B24();
      v17 = sub_22DEC4E54();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        v20 = v13;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_22DDEC000, v16, v17, "Falling back to remote config load, local failed with error: %@", v18, 0xCu);
        sub_22DDEF284(v19, &qword_27DA379D8, qword_22DEC6E70);
        MEMORY[0x2318DBF00](v19, -1, -1);
        MEMORY[0x2318DBF00](v18, -1, -1);
      }

      v22 = v12[5];
      v23 = v12[6];
      __swift_project_boxed_opaque_existential_1(v12 + 2, v22);
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = a3;
      v25[4] = a4;
      v26 = *(v23 + 16);

      v26(sub_22DE2C878, v25, v22, v23);
    }

    else
    {
      sub_22DDEF284(v10, &qword_27DA37B88, &qword_22DEC6F08);
      a3(a1);
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v27 = sub_22DEC4B44();
    __swift_project_value_buffer(v27, qword_281462270);
    v28 = sub_22DEC4B24();
    v29 = sub_22DEC4E44();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22DDEC000, v28, v29, "Instance is deallocated. Not handling results", v30, 2u);
      MEMORY[0x2318DBF00](v30, -1, -1);
    }
  }
}

void sub_22DE2BD64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v51 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - v13;
  v15 = sub_22DEC4764();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v26 = sub_22DEC4B44();
    __swift_project_value_buffer(v26, qword_281462270);
    v27 = sub_22DEC4B24();
    v28 = sub_22DEC4E44();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22DDEC000, v27, v28, "Instance is deallocated. Not handling results", v29, 2u);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }

    return;
  }

  v22 = Strong;
  v53 = a3;
  v54 = a4;
  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_22DEC4C04();
  v25 = [v23 valueForKey_];

  if (v25)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  if (*(&v58 + 1))
  {
    if (swift_dynamicCast())
    {
      v30 = v55;
      v31 = v56;
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_19:

      *v10 = v19;
      swift_storeEnumTagMultiPayload();
      v41 = v19;
LABEL_23:
      v53(v10);

      sub_22DDEF284(v10, &qword_27DA37B88, &qword_22DEC6F08);
      return;
    }
  }

  else
  {
    sub_22DDEF284(&v59, &qword_27DA37988, &unk_22DEC6210);
  }

  v31 = 0xE400000000000000;
  v30 = 1685025392;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_13:
  v32 = NSDictionary.configMaps.getter();
  if (!*(v32 + 16))
  {

    goto LABEL_21;
  }

  v33 = sub_22DE100E4(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v36 = (*(v32 + 56) + 16 * v33);
  v37 = *v36;
  v38 = v36[1];

  sub_22DEC4744();

  v39 = v51;
  v40 = v52;
  if ((*(v51 + 48))(v14, 1, v52) == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37910, &qword_22DEC5BB0);
LABEL_22:
    type metadata accessor for NDOErrors();
    sub_22DE2C7EC(&qword_28145AE60, type metadata accessor for NDOErrors);
    v42 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v10 = v42;
    swift_storeEnumTagMultiPayload();
    goto LABEL_23;
  }

  (*(v39 + 32))(v18, v14, v40);
  v43 = v39;
  v44 = *(v22 + 96);
  v45 = *(v22 + 104);

  v44(&v59, v18);

  v46 = *(&v60 + 1);
  v47 = v61;
  __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
  sub_22DDEDAAC(&v59, &v57);
  v48 = swift_allocObject();
  sub_22DDEDA18(&v57, v48 + 16);
  v49 = v54;
  *(v48 + 56) = v53;
  *(v48 + 64) = v49;
  v50 = *(v47 + 16);

  v50(sub_22DE2C834, v48, v46, v47);

  (*(v43 + 8))(v18, v40);
  __swift_destroy_boxed_opaque_existential_1(&v59);
}

uint64_t *NDOConfigLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v1 = v0[13];

  sub_22DDEF284(v0 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig, &qword_27DA37E00, &qword_22DEC7B70);

  return v0;
}

uint64_t NDOConfigLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v1 = v0[13];

  sub_22DDEF284(v0 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig, &qword_27DA37E00, &qword_22DEC7B70);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_22DE2C460()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  return sub_22DEC4E84();
}

uint64_t type metadata accessor for NDOConfigLoader()
{
  result = qword_28145E378;
  if (!qword_28145E378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22DE2C544()
{
  sub_22DE2C69C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22DE2C69C()
{
  if (!qword_28145BFB8[0])
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(255);
    v0 = sub_22DEC4EB4();
    if (!v1)
    {
      atomic_store(v0, qword_28145BFB8);
    }
  }
}

uint64_t sub_22DE2C6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE2C764@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  return sub_22DDF0028(v1 + v3, a1, &qword_27DA37E00, &qword_22DEC7B70);
}

uint64_t sub_22DE2C7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE2C834()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_Logging_Level_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_Level.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE2C8C4()
{
  v2 = *v0;
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE33AF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE2C974()
{
  v2 = *v0;
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.logEvents.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.level.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.level.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.level.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2CDA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2CE04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.eventID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearEventID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2D00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2D070(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawMessage.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearRawMessage()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawRequest.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2D27C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2D2E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawRequest.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearRawRequest()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawResponse.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2D4E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2D54C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawResponse.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawResponse.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

void sub_22DE2D698(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearRawResponse()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  *(a1 + result[5]) = 5;
  v3 = (a1 + result[6]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[9]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_22DE2D8E0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37E20);
  __swift_project_value_buffer(v0, qword_27DA37E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "CRITICAL";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ERROR";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WARN";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "INFO";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "DEBUG";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE2DBC8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37E38);
  __swift_project_value_buffer(v0, qword_27DA37E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC5F50;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "log_events";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
        sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0), sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent), result = sub_22DEC4AC4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F078(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
  sub_22DEC48B4();
  sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE2E010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE2E058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE2E0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22DE2E140(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_22DE2E194(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE2F230(&qword_27DA37F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE2E234(uint64_t a1)
{
  v2 = sub_22DE2F230(&qword_27DA37EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE2E2A0()
{
  sub_22DE2F230(&qword_27DA37EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE2E31C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F078(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22DEC48B4();
  sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE2E3E0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37E50);
  __swift_project_value_buffer(v0, qword_27DA37E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22DEC7C40;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "level";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "event_id";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "raw_message";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "raw_request";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v8();
  v15 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v15 = "raw_response";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE2E69C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22DEC4B14();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_22DE2E83C();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32);
LABEL_3:
          v0 = 0;
          sub_22DEC49C4();
          break;
        case 5:
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_22DE2E83C()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 20);
  sub_22DE33AF8();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.traverse<A>(visitor:)()
{
  result = sub_22DE2E968(v0);
  if (!v1)
  {
    sub_22DE2E9F4(v0);
    sub_22DE2EA6C(v0);
    sub_22DE2EAE4(v0);
    sub_22DE2EB5C(v0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE2E968(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  if (*(a1 + *(result + 20)) != 5)
  {
    v3 = *(a1 + *(result + 20));
    sub_22DE33AF8();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE2E9F4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EA6C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EAE4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EB5C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EC20(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DE2F230(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2ECA8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22DE2EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE2F230(&qword_27DA37F00, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE2EEE0(uint64_t a1)
{
  v2 = sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE2EF4C()
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2EFA4()
{
  sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);

  return sub_22DEC4A44();
}

uint64_t sub_22DE2F020()
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2F078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        v17 = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22DE2F230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE2F278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v44 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        v17 = v4[6];
        v18 = (v11 + v17);
        v19 = *(v11 + v17 + 8);
        v20 = (v8 + v17);
        v21 = v20[1];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_44;
          }

          v22 = *v18 == *v20 && v19 == v21;
          if (!v22 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v21)
        {
          goto LABEL_44;
        }

        v23 = v4[7];
        v24 = *(v11 + v23);
        v25 = *(v8 + v23);
        if (v24 == 2)
        {
          if (v25 != 2)
          {
            goto LABEL_44;
          }
        }

        else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
        {
          goto LABEL_44;
        }

        v26 = v4[8];
        v27 = (v11 + v26);
        v28 = *(v11 + v26 + 4);
        v29 = (v8 + v26);
        v30 = *(v8 + v26 + 4);
        if (v28)
        {
          if (!v30)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (*v27 != *v29)
          {
            LOBYTE(v30) = 1;
          }

          if (v30)
          {
LABEL_44:
            sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
            sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
            goto LABEL_45;
          }
        }

        if ((sub_22DE3196C(*v11, *v8) & 1) == 0)
        {
          goto LABEL_44;
        }

        v31 = v4[9];
        v32 = (v11 + v31);
        v33 = *(v11 + v31 + 8);
        v34 = (v8 + v31);
        v35 = v34[1];
        if (v33)
        {
          if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v35)
        {
          goto LABEL_44;
        }

        v36 = v4[10];
        v37 = (v11 + v36);
        v38 = *(v11 + v36 + 8);
        v39 = (v8 + v36);
        v40 = v39[1];
        if (v38)
        {
          if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v40)
        {
          goto LABEL_44;
        }

        v41 = v4[5];
        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v42 = sub_22DEC4BF4();
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        if (v42)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v42 & 1;
      }
    }

    v42 = 1;
  }

  else
  {
LABEL_45:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t sub_22DE2F604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22DEC50E4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22DE2F694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_22DEC50E4() & 1) == 0))
          {
LABEL_31:
            sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
            sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
            goto LABEL_32;
          }
        }

        else if (v21)
        {
          goto LABEL_31;
        }

        v23 = v4[6];
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_31;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v27)
        {
          goto LABEL_31;
        }

        v29 = v4[7];
        v30 = v11[v29];
        v31 = v8[v29];
        if (v30 == 5)
        {
          if (v31 != 5)
          {
            goto LABEL_31;
          }
        }

        else if (v30 != v31)
        {
          goto LABEL_31;
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v32 = sub_22DEC4BF4();
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        if (v32)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v32 & 1;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_32:
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_22DE2F984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_22DEC50E4() & 1) == 0))
          {
LABEL_27:
            sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
            sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
            goto LABEL_28;
          }
        }

        else if (v21)
        {
          goto LABEL_27;
        }

        v23 = *(v4 + 24);
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v27)
        {
          goto LABEL_27;
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v29 = sub_22DEC4BF4();
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        if (v29)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_28:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_22DE2FC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        v17 = static Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.== infix(_:_:)(v11, v8);
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22DE2FE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_43:
    v38 = 0;
    return v38 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v40 = a1 + v14;
  v15 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_22DE33B4C(v40 + v16 * v13, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    if (v13 == v12)
    {
      break;
    }

    result = sub_22DE33B4C(v15 + v16 * v13, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    v18 = v4[6];
    v19 = &v11[v18];
    v20 = *&v11[v18 + 8];
    v21 = &v8[v18];
    v22 = *(v21 + 1);
    if (v20)
    {
      if (!v22 || ((result = *v19, *v19 == *v21) ? (v23 = v20 == v22) : (v23 = 0), !v23 && (result = sub_22DEC50E4(), (result & 1) == 0)))
      {
LABEL_42:
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
        goto LABEL_43;
      }
    }

    else if (v22)
    {
      goto LABEL_42;
    }

    v24 = *v11;
    v25 = *v8;
    v26 = *(*v11 + 16);
    if (v26 != *(*v8 + 16))
    {
      goto LABEL_42;
    }

    if (v26)
    {
      v27 = v24 == v25;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v34 = (v24 + 40);
      v35 = (v25 + 40);
      while (v26)
      {
        result = *(v34 - 1);
        if (result != *(v35 - 1) || *v34 != *v35)
        {
          result = sub_22DEC50E4();
          if ((result & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v34 += 2;
        v35 += 2;
        if (!--v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      break;
    }

LABEL_21:
    v28 = v4[7];
    v29 = &v11[v28];
    v30 = *&v11[v28 + 8];
    v31 = &v8[v28];
    v32 = *(v31 + 1);
    if (v30)
    {
      if (!v32)
      {
        goto LABEL_42;
      }

      v33 = *v29 == *v31 && v30 == v32;
      if (!v33 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v32)
    {
      goto LABEL_42;
    }

    v37 = v4[5];
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v38 = sub_22DEC4BF4();
    sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    if ((v38 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DE30144(uint64_t a1, uint64_t a2)
{
  v69 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v4 = *(v69 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = (&v60 - v9);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F40, &qword_22DEC8168);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v12 = &v60 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v60 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_48;
  }

  if (!v20 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v62 = v13;
  v63 = (v4 + 48);
  v24 = *(v17 + 72);
  v60 = v12;
  v61 = v24;
  while (1)
  {
    sub_22DE33B4C(v22, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    v25 = v68;
    sub_22DE33B4C(v23, v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    v26 = *(v13 + 20);
    v27 = v19 + v26;
    v28 = *(v19 + v26 + 8);
    v29 = (v25 + v26);
    v30 = v29[1];
    if (v28)
    {
      if (!v30)
      {
        goto LABEL_46;
      }

      v31 = *v27 == *v29 && v28 == v30;
      if (!v31 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v30)
    {
      goto LABEL_46;
    }

    v65 = v22;
    v32 = *(v13 + 24);
    v33 = *(v66 + 48);
    sub_22DDF0028(v19 + v32, v12, &qword_27DA37F38, &qword_22DEC8160);
    sub_22DDF0028(v68 + v32, &v12[v33], &qword_27DA37F38, &qword_22DEC8160);
    v34 = *v63;
    if ((*v63)(v12, 1, v69) == 1)
    {
      break;
    }

    sub_22DDF0028(v12, v67, &qword_27DA37F38, &qword_22DEC8160);
    if (v34(&v12[v33], 1, v69) == 1)
    {
      sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
      v58 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData;
      v59 = v67;
      goto LABEL_52;
    }

    v36 = v64;
    sub_22DE33C14(&v12[v33], v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    v37 = v69[6];
    v38 = (v67 + v37);
    v39 = *(v67 + v37 + 8);
    v40 = (v36 + v37);
    v41 = v40[1];
    if (v39)
    {
      if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_22DEC50E4() & 1) == 0)
      {
LABEL_45:
        sub_22DE33BB4(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
        sub_22DE33BB4(v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
        sub_22DDEF284(v12, &qword_27DA37F38, &qword_22DEC8160);
LABEL_46:
        sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
        goto LABEL_47;
      }
    }

    else if (v41)
    {
      goto LABEL_45;
    }

    v42 = v69[7];
    v43 = (v67 + v42);
    v44 = *(v67 + v42 + 8);
    v45 = (v36 + v42);
    v46 = v45[1];
    if (v44)
    {
      if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v46)
    {
      goto LABEL_45;
    }

    if ((sub_22DE2FE04(*v67, *v36) & 1) == 0)
    {
      goto LABEL_45;
    }

    v47 = v69[8];
    v48 = (v67 + v47);
    v49 = *(v67 + v47 + 8);
    v50 = (v36 + v47);
    v51 = v50[1];
    if (v49)
    {
      if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v51)
    {
      goto LABEL_45;
    }

    v35 = v23;
    v52 = v69[5];
    sub_22DEC48B4();
    v53 = v67;
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v54 = sub_22DEC4BF4();
    v12 = v60;
    sub_22DE33BB4(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    sub_22DE33BB4(v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    sub_22DDEF284(v12, &qword_27DA37F38, &qword_22DEC8160);
    if ((v54 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v55 = v68;
    v56 = sub_22DEC4BF4();
    sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    sub_22DE33BB4(v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    if (v56)
    {
      v13 = v62;
      v23 = v35 + v61;
      v22 = v65 + v61;
      if (--v20)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  if (v34(&v12[v33], 1, v69) == 1)
  {
    v35 = v23;
    sub_22DDEF284(v12, &qword_27DA37F38, &qword_22DEC8160);
    goto LABEL_41;
  }

  v58 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink;
  v59 = v19;
LABEL_52:
  sub_22DE33BB4(v59, v58);
  sub_22DDEF284(v12, &qword_27DA37F40, &qword_22DEC8168);
LABEL_47:
  sub_22DE33BB4(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
LABEL_48:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_22DE308A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v8[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = sub_22DEA6ABC(v18, v19);

          if ((v21 & 1) == 0)
          {
            break;
          }
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v22 = sub_22DEC4BF4();
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
      sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_22DE30B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F58, &qword_22DEC8188);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v51 - v14;
  v55 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v16 = *(*(v55 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v55);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v23 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v51 = v8;
  v52 = v12;
  v54 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v5 + 48);
  v53 = *(v20 + 72);
  v28 = &qword_22DEC7350;
  v29 = v55;
  while (1)
  {
    v56 = v25;
    sub_22DE33B4C(v25, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    sub_22DE33B4C(v26, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    v30 = v29[7];
    v31 = v22[v30];
    v32 = v19[v30];
    if (v31 == 7)
    {
      if (v32 != 7)
      {
        goto LABEL_26;
      }
    }

    else if (v31 != v32)
    {
      goto LABEL_26;
    }

    v58 = v26;
    v33 = *(v57 + 48);
    sub_22DDF0028(v22, v15, &qword_27DA37BC0, v28);
    sub_22DDF0028(v19, &v15[v33], &qword_27DA37BC0, v28);
    v34 = *v27;
    v35 = v15;
    v36 = v28;
    v37 = v15;
    v38 = v54;
    if ((*v27)(v35, 1, v54) != 1)
    {
      break;
    }

    if (v34((v37 + v33), 1, v38) != 1)
    {
      goto LABEL_25;
    }

    sub_22DDEF284(v37, &qword_27DA37BC0, v36);
    v15 = v37;
    v28 = v36;
    v39 = v58;
LABEL_14:
    v45 = v29[8];
    v46 = v22[v45];
    v47 = v19[v45];
    if (v46 == 2)
    {
      if (v47 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
    {
      goto LABEL_26;
    }

    if ((sub_22DEAFB4C(*&v22[v29[5]], *&v19[v29[5]]) & 1) == 0)
    {
      goto LABEL_26;
    }

    v48 = v29[6];
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v49 = sub_22DEC4BF4();
    sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    sub_22DE33BB4(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    if (v49)
    {
      v26 = v39 + v53;
      v25 = v56 + v53;
      if (--v23)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  v40 = v52;
  sub_22DDF0028(v37, v52, &qword_27DA37BC0, v36);
  if (v34((v37 + v33), 1, v38) != 1)
  {
    v41 = v27;
    v42 = v51;
    sub_22DE33C14(v37 + v33, v51, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v43 = static Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.== infix(_:_:)(v40, v42);
    v44 = v42;
    v27 = v41;
    sub_22DE33BB4(v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE33BB4(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DDEF284(v37, &qword_27DA37BC0, v36);
    v29 = v55;
    v15 = v37;
    v28 = v36;
    v39 = v58;
    if ((v43 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  sub_22DE33BB4(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
LABEL_25:
  sub_22DDEF284(v37, &qword_27DA37F58, &qword_22DEC8188);
LABEL_26:
  sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
  sub_22DE33BB4(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
LABEL_27:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_22DE310D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_22DE33B4C(v14, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        sub_22DE33B4C(v15, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v17 = *v11;
        v18 = *v8;
        if (v17 <= 0xF7)
        {
          if (v18 > 0xF7)
          {
            goto LABEL_37;
          }

          if ((v17 & 0x80) != 0)
          {
            if ((v18 & 0x80) == 0 || qword_22DEC8198[v17 & 0x7F] != qword_22DEC8198[v18 & 0x7F])
            {
              goto LABEL_37;
            }
          }

          else if (v17 != v18)
          {
            goto LABEL_37;
          }
        }

        else if (v18 <= 0xF7)
        {
          goto LABEL_37;
        }

        v19 = v4[7];
        v20 = &v11[v19];
        v21 = *&v11[v19 + 8];
        v22 = &v8[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23 || (*v20 == *v22 ? (v24 = v21 == v23) : (v24 = 0), !v24 && (sub_22DEC50E4() & 1) == 0))
          {
LABEL_37:
            sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
            sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
            goto LABEL_38;
          }
        }

        else if (v23)
        {
          goto LABEL_37;
        }

        v25 = v4[8];
        v26 = &v11[v25];
        v27 = *&v11[v25 + 8];
        v28 = &v8[v25];
        v29 = *(v28 + 1);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_37;
          }

          v30 = *v26 == *v28 && v27 == v29;
          if (!v30 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (v29)
        {
          goto LABEL_37;
        }

        if ((sub_22DEAFB4C(*(v11 + 1), *(v8 + 1)) & 1) == 0)
        {
          goto LABEL_37;
        }

        v31 = v4[6];
        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v32 = sub_22DEC4BF4();
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        sub_22DE33BB4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        if (v32)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v32 & 1;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_38:
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_22DE31408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F20, &qword_22DECFFA0);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v43 - v13;
  v48 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v43 - v20;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_21;
  }

  if (!v21 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v43 = v11;
  v46 = v18;
  v47 = v4;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v5 + 48);
  v45 = *(v19 + 72);
  v26 = v48;
  while (1)
  {
    v27 = v50;
    sub_22DE33B4C(v23, v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    sub_22DE33B4C(v24, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    v28 = *(v26 + 24);
    v29 = *(v27 + v28);
    v30 = v18[v28];
    if (v29 == 5)
    {
      if (v30 != 5)
      {
        goto LABEL_20;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_20;
    }

    v31 = *(v49 + 48);
    sub_22DDF0028(v27, v14, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF0028(v18, &v14[v31], &qword_27DA37F18, &unk_22DEC8140);
    v32 = *v25;
    v33 = v47;
    if ((*v25)(v14, 1, v47) != 1)
    {
      break;
    }

    if (v32(&v14[v31], 1, v33) != 1)
    {
      goto LABEL_19;
    }

    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v18 = v46;
    v27 = v50;
LABEL_14:
    v39 = v27;
    v40 = *(v26 + 20);
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v41 = sub_22DEC4BF4();
    sub_22DE33BB4(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    sub_22DE33BB4(v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    if (v41)
    {
      v24 += v45;
      v23 += v45;
      if (--v21)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  v34 = v43;
  sub_22DDF0028(v14, v43, &qword_27DA37F18, &unk_22DEC8140);
  if (v32(&v14[v31], 1, v33) != 1)
  {
    v35 = v25;
    v36 = v44;
    sub_22DE33C14(&v14[v31], v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v37 = static Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.== infix(_:_:)(v34, v36);
    v38 = v36;
    v25 = v35;
    sub_22DE33BB4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DE33BB4(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
    v26 = v48;
    v18 = v46;
    v27 = v50;
    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  sub_22DE33BB4(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
LABEL_19:
  sub_22DDEF284(v14, &qword_27DA37F20, &qword_22DECFFA0);
  v18 = v46;
  v27 = v50;
LABEL_20:
  sub_22DE33BB4(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
  sub_22DE33BB4(v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
LABEL_21:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_22DE3196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F50, &unk_22DEC8178);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v43 - v13;
  v48 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v43 - v20;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_21;
  }

  if (!v21 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v43 = v11;
  v46 = v18;
  v47 = v4;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v5 + 48);
  v45 = *(v19 + 72);
  v26 = v48;
  while (1)
  {
    v27 = v50;
    sub_22DE33B4C(v23, v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    sub_22DE33B4C(v24, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    v28 = *(v26 + 24);
    v29 = *(v27 + v28);
    v30 = v18[v28];
    if (v29 == 5)
    {
      if (v30 != 5)
      {
        goto LABEL_20;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_20;
    }

    v31 = *(v49 + 48);
    sub_22DDF0028(v27, v14, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DDF0028(v18, &v14[v31], &qword_27DA37F48, &qword_22DEC8170);
    v32 = *v25;
    v33 = v47;
    if ((*v25)(v14, 1, v47) != 1)
    {
      break;
    }

    if (v32(&v14[v31], 1, v33) != 1)
    {
      goto LABEL_19;
    }

    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v18 = v46;
    v27 = v50;
LABEL_14:
    v39 = v27;
    v40 = *(v26 + 20);
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v41 = sub_22DEC4BF4();
    sub_22DE33BB4(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    sub_22DE33BB4(v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    if (v41)
    {
      v24 += v45;
      v23 += v45;
      if (--v21)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  v34 = v43;
  sub_22DDF0028(v14, v43, &qword_27DA37F48, &qword_22DEC8170);
  if (v32(&v14[v31], 1, v33) != 1)
  {
    v35 = v25;
    v36 = v44;
    sub_22DE33C14(&v14[v31], v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v37 = static Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.== infix(_:_:)(v34, v36);
    v38 = v36;
    v25 = v35;
    sub_22DE33BB4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE33BB4(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DDEF284(v14, &qword_27DA37F48, &qword_22DEC8170);
    v26 = v48;
    v18 = v46;
    v27 = v50;
    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  sub_22DE33BB4(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
LABEL_19:
  sub_22DDEF284(v14, &qword_27DA37F50, &unk_22DEC8178);
  v18 = v46;
  v27 = v50;
LABEL_20:
  sub_22DE33BB4(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
  sub_22DE33BB4(v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
LABEL_21:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_22DE31ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v100 = *(v4 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v87 - v9);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F28, &qword_22DECE230);
  v11 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v97 = &v87 - v12;
  v102 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v13 = *(v102 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v102);
  v104 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v103 = &v87 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v19 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v21 = &v87 - v20;
  v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v23 = *(*(v22 - 1) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v29 = &v87 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    goto LABEL_66;
  }

  if (!v30 || a1 == a2)
  {
    v85 = 1;
    return v85 & 1;
  }

  v96 = v21;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v92 = &v87 - v28;
  v93 = (v13 + 48);
  v88 = (v100 + 48);
  v89 = *(v27 + 72);
  v90 = v4;
  v91 = v22;
  while (1)
  {
    v100 = v32;
    sub_22DE33B4C(v32, v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE33B4C(v33, v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v34 = v22[5];
    v35 = &v29[v34];
    v36 = *&v29[v34 + 8];
    v37 = &v26[v34];
    v38 = *(v37 + 1);
    if (v36)
    {
      if (!v38)
      {
        goto LABEL_65;
      }

      v39 = *v35 == *v37 && v36 == v38;
      if (!v39 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (v38)
    {
      goto LABEL_65;
    }

    v40 = v22[6];
    v41 = &v29[v40];
    v42 = *&v29[v40 + 8];
    v43 = &v26[v40];
    v44 = *(v43 + 1);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_65;
      }

      v45 = *v41 == *v43 && v42 == v44;
      if (!v45 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (v44)
    {
      goto LABEL_65;
    }

    v98 = v30;
    v99 = v33;
    v46 = v10;
    v47 = v22[7];
    v48 = *(v101 + 48);
    v49 = v96;
    sub_22DDF0028(&v29[v47], v96, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DDF0028(&v26[v47], v49 + v48, &qword_27DA37D80, &unk_22DEC7960);
    v50 = *v93;
    v51 = v102;
    if ((*v93)(v49, 1, v102) != 1)
    {
      break;
    }

    if (v50(v49 + v48, 1, v51) != 1)
    {
      goto LABEL_61;
    }

    sub_22DDEF284(v49, &qword_27DA37D80, &unk_22DEC7960);
    v10 = v46;
    v22 = v91;
    v29 = v92;
    v52 = v98;
    v53 = v99;
LABEL_55:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v85 = sub_22DEC4BF4();
    sub_22DE33BB4(v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE33BB4(v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    if (v85)
    {
      v33 = v53 + v89;
      v32 = v100 + v89;
      v30 = v52 - 1;
      if (v30)
      {
        continue;
      }
    }

    return v85 & 1;
  }

  v54 = v103;
  sub_22DDF0028(v49, v103, &qword_27DA37D80, &unk_22DEC7960);
  if (v50(v49 + v48, 1, v51) == 1)
  {
    sub_22DE33BB4(v54, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_61:
    sub_22DDEF284(v49, &qword_27DA37F30, &unk_22DECCF30);
    v29 = v92;
    goto LABEL_65;
  }

  v55 = v49 + v48;
  v56 = v104;
  sub_22DE33C14(v55, v104, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v57 = *(v51 + 20);
  v58 = *(v54 + v57);
  v59 = *(v56 + v57);
  v60 = v51;
  if (v58 == 7)
  {
    v29 = v92;
    if (v59 != 7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v29 = v92;
    if (v59 == 7 || qword_22DEC8198[v58] != qword_22DEC8198[v59])
    {
      goto LABEL_64;
    }
  }

  v10 = v46;
  v61 = *(v60 + 24);
  v62 = *(v95 + 48);
  v63 = v97;
  sub_22DDF0028(v54 + v61, v97, &qword_27DA37D78, &unk_22DEC8150);
  sub_22DDF0028(v104 + v61, v63 + v62, &qword_27DA37D78, &unk_22DEC8150);
  v64 = *v88;
  v65 = v90;
  if ((*v88)(v63, 1, v90) == 1)
  {
    v39 = v64(v63 + v62, 1, v65) == 1;
    v66 = v63;
    if (!v39)
    {
      goto LABEL_63;
    }

    sub_22DDEF284(v63, &qword_27DA37D78, &unk_22DEC8150);
    v52 = v98;
    v53 = v99;
LABEL_54:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v83 = v104;
    v84 = sub_22DEC4BF4();
    sub_22DE33BB4(v83, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE33BB4(v103, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DDEF284(v96, &qword_27DA37D80, &unk_22DEC7960);
    v22 = v91;
    if ((v84 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  sub_22DDF0028(v63, v46, &qword_27DA37D78, &unk_22DEC8150);
  if (v64(v63 + v62, 1, v65) != 1)
  {
    v67 = v63 + v62;
    v68 = v94;
    sub_22DE33C14(v67, v94, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v69 = *(v65 + 28);
    v70 = (v46 + v69);
    v71 = *(v46 + v69 + 8);
    v72 = (v68 + v69);
    v73 = v72[1];
    if (v71)
    {
      v74 = v103;
      v53 = v99;
      if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_22DEC50E4() & 1) == 0)
      {
LABEL_59:
        sub_22DE33BB4(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
        sub_22DDEF284(v97, &qword_27DA37D78, &unk_22DEC8150);
        v54 = v74;
        goto LABEL_64;
      }
    }

    else
    {
      v74 = v103;
      v53 = v99;
      if (v73)
      {
        goto LABEL_59;
      }
    }

    v75 = *(v90 + 32);
    v76 = (v10 + v75);
    v77 = *(v10 + v75 + 8);
    v78 = (v68 + v75);
    v79 = v78[1];
    if (v77)
    {
      if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (v79)
    {
      goto LABEL_59;
    }

    if ((sub_22DEAFB4C(*v10, *v68) & 1) == 0 || (sub_22DEAFB4C(v10[1], v68[1]) & 1) == 0)
    {
      goto LABEL_59;
    }

    v80 = *(v90 + 24);
    sub_22DEC48B4();
    v81 = v68;
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v82 = sub_22DEC4BF4();
    sub_22DE33BB4(v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    sub_22DDEF284(v97, &qword_27DA37D78, &unk_22DEC8150);
    v54 = v74;
    v52 = v98;
    if ((v82 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_54;
  }

  sub_22DE33BB4(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v66 = v63;
LABEL_63:
  sub_22DDEF284(v66, &qword_27DA37F28, &qword_22DECE230);
  v54 = v103;
LABEL_64:
  sub_22DE33BB4(v104, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE33BB4(v54, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v96, &qword_27DA37D80, &unk_22DEC7960);
LABEL_65:
  sub_22DE33BB4(v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE33BB4(v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_66:
  v85 = 0;
  return v85 & 1;
}

uint64_t sub_22DE329F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v85 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v72 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F20, &qword_22DECFFA0);
  v12 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v14 = &v72 - v13;
  v87 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v91 = *(v87 - 8);
  v15 = *(v91 + 64);
  v16 = MEMORY[0x28223BE20](v87);
  v92 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v27 = &v72 - v26;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_50:
    v69 = 0;
    return v69 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v69 = 1;
    return v69 & 1;
  }

  v29 = 0;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = a1 + v30;
  v74 = a2 + v30;
  v75 = v11;
  v79 = (v5 + 48);
  v80 = v4;
  v32 = *(v25 + 72);
  v84 = &v72 - v26;
  v77 = v20;
  v78 = v28;
  v72 = v32;
  v73 = a1 + v30;
  while (1)
  {
    v33 = v29;
    v34 = v32 * v29;
    result = sub_22DE33B4C(v31 + v32 * v29, v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    v76 = v33;
    if (v33 == v78)
    {
      break;
    }

    result = sub_22DE33B4C(v74 + v34, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    v36 = *(v20 + 24);
    v37 = &v27[v36];
    v38 = *&v27[v36 + 8];
    v39 = (v24 + v36);
    v40 = v39[1];
    if (v38)
    {
      v41 = v87;
      if (!v40 || ((result = *v37, *v37 == *v39) ? (v42 = v38 == v40) : (v42 = 0), !v42 && (result = sub_22DEC50E4(), (result & 1) == 0)))
      {
LABEL_49:
        sub_22DE33BB4(v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
        sub_22DE33BB4(v84, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
        goto LABEL_50;
      }
    }

    else
    {
      v41 = v87;
      if (v40)
      {
        goto LABEL_49;
      }
    }

    v43 = *v84;
    v88 = *v24;
    v89 = v43;
    v44 = *(v43 + 16);
    v45 = *(v88 + 16);
    v86 = v44;
    if (v44 != v45)
    {
      goto LABEL_49;
    }

    if (v86 && v89 != v88)
    {
      v46 = 0;
      v47 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v83 = v89 + v47;
      v81 = v24;
      v82 = v88 + v47;
      while (v46 < *(v89 + 16))
      {
        v48 = *(v91 + 72) * v46;
        result = sub_22DE33B4C(v83 + v48, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        if (v46 >= *(v88 + 16))
        {
          goto LABEL_53;
        }

        v49 = v82 + v48;
        v50 = v92;
        sub_22DE33B4C(v49, v92, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        v51 = *(v41 + 24);
        v52 = v19[v51];
        v53 = *(v50 + v51);
        if (v52 == 5)
        {
          if (v53 != 5)
          {
            goto LABEL_44;
          }
        }

        else if (v53 == 5 || v52 != v53)
        {
LABEL_44:
          sub_22DE33BB4(v92, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
          sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
          v24 = v81;
          goto LABEL_49;
        }

        v54 = *(v90 + 48);
        sub_22DDF0028(v19, v14, &qword_27DA37F18, &unk_22DEC8140);
        sub_22DDF0028(v92, &v14[v54], &qword_27DA37F18, &unk_22DEC8140);
        v55 = v80;
        v56 = *v79;
        if ((*v79)(v14, 1, v80) == 1)
        {
          if (v56(&v14[v54], 1, v55) != 1)
          {
            sub_22DE33BB4(v92, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            v70 = v19;
            v71 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem;
LABEL_47:
            sub_22DE33BB4(v70, v71);
            v24 = v81;
            sub_22DDEF284(v14, &qword_27DA37F20, &qword_22DECFFA0);
            goto LABEL_49;
          }

          sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
          v24 = v81;
        }

        else
        {
          v57 = v75;
          sub_22DDF0028(v14, v75, &qword_27DA37F18, &unk_22DEC8140);
          if (v56(&v14[v54], 1, v55) == 1)
          {
            sub_22DE33BB4(v92, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            v71 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data;
            v70 = v57;
            goto LABEL_47;
          }

          v58 = v85;
          sub_22DE33C14(&v14[v54], v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
          v59 = static Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.== infix(_:_:)(v57, v58);
          sub_22DE33BB4(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
          sub_22DE33BB4(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
          sub_22DDEF284(v14, &qword_27DA37F18, &unk_22DEC8140);
          v24 = v81;
          v41 = v87;
          if ((v59 & 1) == 0)
          {
            sub_22DE33BB4(v92, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            goto LABEL_49;
          }
        }

        v60 = *(v41 + 20);
        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
        v61 = v92;
        v62 = sub_22DEC4BF4();
        sub_22DE33BB4(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        result = sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        if ((v62 & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v86 == ++v46)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      break;
    }

LABEL_33:
    v63 = *(v77 + 28);
    v64 = &v84[v63];
    v65 = *&v84[v63 + 8];
    v66 = (v24 + v63);
    v67 = v66[1];
    if (v65)
    {
      if (!v67 || (*v64 != *v66 || v65 != v67) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v67)
    {
      goto LABEL_49;
    }

    v20 = v77;
    v68 = *(v77 + 20);
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v27 = v84;
    v69 = sub_22DEC4BF4();
    sub_22DE33BB4(v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    sub_22DE33BB4(v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    if (v69)
    {
      v29 = v76 + 1;
      v32 = v72;
      v31 = v73;
      if (v76 + 1 != v78)
      {
        continue;
      }
    }

    return v69 & 1;
  }

  __break(1u);
  return result;
}