uint64_t sub_251308980()
{
  v1 = *v0;
  sub_25130F304();
  MEMORY[0x253071080](v1);
  return sub_25130F324();
}

void *sub_2513089C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t HAUserActivity.VersioningKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25130F284();

  *a1 = v2 != 0;
  return result;
}

uint64_t HAUserActivity.ViewNavigationKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25130F284();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_251308B58()
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

uint64_t sub_251308BE0()
{
  sub_25130F304();
  sub_25130EFF4();
  return sub_25130F324();
}

uint64_t sub_251308C38@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25130F284();

  *a2 = v5 != 0;
  return result;
}

id static HAUserActivity.addProfileIdentifier(to:profileIdentifier:)(void *a1, uint64_t a2)
{
  v2 = sub_251308E90(a1, a2);

  return v2;
}

id static HAUserActivity.createActivity(bundleName:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
  v5 = sub_25130EF94();
  v6 = [v4 initWithActivityType_];

  sub_2512F2BD0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251310430;
  v8 = MEMORY[0x277D837D0];
  sub_25130F1E4();
  *(inited + 96) = v8;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_25130F1E4();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 1;
  sub_2512F2C8C(inited);
  swift_setDeallocating();
  sub_2512F2C28();
  swift_arrayDestroy();
  v9 = sub_25130EF64();

  [v6 addUserInfoEntriesFromDictionary_];

  return v6;
}

void *sub_251308E90(void *a1, uint64_t a2)
{
  v28[15] = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v28];
  v4 = v28[0];
  if (v3)
  {
    v5 = sub_25130EED4();
    v7 = v6;

    sub_2512F2BD0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251310350;
    v28[0] = 0xD000000000000011;
    v28[1] = 0x8000000251311620;
    sub_25130F1E4();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    sub_251304668(v5, v7);
    sub_2512F2C8C(inited);
    swift_setDeallocating();
    sub_2512F2F80(inited + 32);
    v9 = sub_25130EF64();

    [a1 addUserInfoEntriesFromDictionary_];

    sub_2513046BC(v5, v7);
  }

  else
  {
    v10 = v4;
    v11 = sub_25130EE04();

    swift_willThrow();
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v12 = sub_25130EF54();
    __swift_project_value_buffer(v12, qword_280C61668);
    v13 = v11;
    v14 = sub_25130EF34();
    v15 = sub_25130F114();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_251302D38(0x6341726573554148, 0xEE00797469766974, v28);
      *(v16 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v19 = *(*(v27[2] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v27[1]);
      (*(v21 + 16))(v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = sub_25130EFD4();
      v24 = sub_251302D38(v22, v23, v28);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2512F1000, v14, v15, "%s Failed to encode profile identifier. Error: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v17, -1, -1);
      MEMORY[0x253071680](v16, -1, -1);
    }

    else
    {
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return a1;
}

unint64_t sub_251309280()
{
  result = qword_27F429CC0;
  if (!qword_27F429CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CC0);
  }

  return result;
}

unint64_t sub_2513092D8()
{
  result = qword_27F429CC8;
  if (!qword_27F429CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CC8);
  }

  return result;
}

unint64_t sub_251309330()
{
  result = qword_280C614F8[0];
  if (!qword_280C614F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C614F8);
  }

  return result;
}

unint64_t sub_251309388()
{
  result = qword_27F429CD0;
  if (!qword_27F429CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CD0);
  }

  return result;
}

unint64_t sub_2513093E0()
{
  result = qword_27F429CD8;
  if (!qword_27F429CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CD8);
  }

  return result;
}

unint64_t sub_251309438()
{
  result = qword_27F429CE0;
  if (!qword_27F429CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CE0);
  }

  return result;
}

unint64_t sub_251309490()
{
  result = qword_27F429CE8;
  if (!qword_27F429CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HAUserActivity.RestorationInfoKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HAUserActivity.RestorationInfoKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HAUserActivity.UserActivityVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HAUserActivity.UserActivityVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppURLRouting(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppURLRouting(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t static URLType.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLType.DataTypeNavigation(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for URLType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static URLType.DataTypeNavigation.allData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25130EF24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PluginURLType.bundleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_251309A48(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25130F2D4();
  }
}

BOOL static AppURLRouting.useCurrentContext(url:)()
{
  sub_25130EE44();
  sub_2512F8818();
  v0 = sub_25130F174();

  return v0 == 0;
}

id static AppURLRouting.determineURLType(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25130EEC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v141 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130BFD4(0, &qword_27F429C18, MEMORY[0x277CC95F0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v143 = &v137 - v12;
  v152 = sub_25130ED24();
  v150 = *(v152 - 8);
  v13 = *(v150 + 64);
  v15 = MEMORY[0x28223BE20](v152, v14);
  v151 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v146 = &v137 - v18;
  sub_25130BFD4(0, &qword_27F429C70, MEMORY[0x277CC8958]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v137 - v22;
  v24 = sub_25130ED84();
  v148 = *(v24 - 8);
  v149 = v24;
  v25 = *(v148 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v147 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for HAURLValidator();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for HAURL();
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33 - 8, v35);
  v145 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v137 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v137 - v44;
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v137 - v47;
  v142 = v5;
  v49 = *(v5 + 16);
  v49(&v137 - v47, a1, v4);
  v49(v32, a1, v4);
  if (HAURLValidator.isCHRURL()())
  {
    sub_25130C028(v32, type metadata accessor for HAURLValidator);
    sub_25130C028(v48, type metadata accessor for HAURL);
    strcpy(a2, "HealthRecords");
    *(a2 + 7) = -4864;
    v50 = type metadata accessor for URLType(0);
    v51 = a2;
LABEL_11:
    v60 = v50;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v61 = *(*(v60 - 8) + 56);
    v62 = v51;
    return v61(v62, 0, 1, v60);
  }

  v144 = v32;
  v139 = a2;
  v140 = v48;
  v52 = sub_25130EE54();
  v53 = [v52 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL];

  if (v53)
  {
    v54 = v144;
LABEL_8:
    sub_25130C028(v54, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v58 = 0x655268746C616548;
    v59 = 0xED00007364726F63;
LABEL_9:
    v51 = v139;
    *v139 = v58;
    v51[1] = v59;
LABEL_10:
    v50 = type metadata accessor for URLType(0);
    goto LABEL_11;
  }

  v138 = a1;
  v55 = v144;
  if (HAURLValidator.isSmartHealthCardFile()() || (v56 = sub_25130EE54(), v57 = [v56 hk_isRewrittenHealthCardQRCodeURL], v56, v57))
  {
    v54 = v55;
    goto LABEL_8;
  }

  v64 = objc_opt_self();
  v137 = [v64 electrocardiogramType];
  v49(v45, v55, v4);
  v65 = HAURL.objectType.getter();
  if (v65)
  {
    v66 = v65;
    sub_25130C0D0();
    v67 = v137;
    v137 = v64;
    v68 = v55;
    v69 = v67;
    v70 = sub_25130F134();
    sub_25130C028(v45, type metadata accessor for HAURL);

    v55 = v68;
    v64 = v137;
    if (v70)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_25130C028(v45, type metadata accessor for HAURL);
  }

  v71 = [v64 atrialFibrillationEventType];
  v49(v41, v55, v4);
  v72 = HAURL.objectType.getter();
  if (!v72)
  {
    sub_25130C028(v41, type metadata accessor for HAURL);
LABEL_24:

    goto LABEL_25;
  }

  v73 = v72;
  if (!v71)
  {
    sub_25130C028(v41, type metadata accessor for HAURL);
    v71 = v73;
    goto LABEL_24;
  }

  sub_25130C0D0();
  v74 = v71;
  v75 = sub_25130F134();
  sub_25130C028(v41, type metadata accessor for HAURL);

  if (v75)
  {
LABEL_21:
    sub_25130C028(v55, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v58 = 0x7472616548;
    v59 = 0xE500000000000000;
    goto LABEL_9;
  }

LABEL_25:
  v76 = objc_opt_self();
  v77 = [v76 healthAppSummaryHostName];
  sub_25130EFB4();

  LOBYTE(v77) = sub_25130EAE0();

  if (v77)
  {
    goto LABEL_58;
  }

  v78 = [v76 healthAppBrowseHostName];
  sub_25130EFB4();

  LOBYTE(v78) = sub_25130EAE0();

  if (v78)
  {
    sub_25130ED44();
    v80 = v148;
    v79 = v149;
    if ((*(v148 + 48))(v23, 1, v149) == 1)
    {
      sub_25130C028(v55, type metadata accessor for HAURLValidator);
      sub_25130C028(v140, type metadata accessor for HAURL);
      sub_25130C804(v23, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_46:
      v60 = type metadata accessor for URLType(0);
      v51 = v139;
      goto LABEL_12;
    }

    v82 = v147;
    (*(v80 + 32))(v147, v23, v79);
    v83 = sub_25130ED34();
    if (v83)
    {
      v4 = v83;
      v49 = *(v83 + 16);
      if (v49)
      {
        v76 = 0;
        v84 = (v150 + 8);
        while (1)
        {
          if (v76 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_67;
          }

          (*(v150 + 16))(v151, v4 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v76, v152);
          if (sub_25130ED04() == 0x7972657571 && v85 == 0xE500000000000000)
          {
            break;
          }

          v86 = sub_25130F2D4();

          if (v86)
          {
            goto LABEL_50;
          }

          ++v76;
          (*v84)(v151, v152);
          if (v49 == v76)
          {
            goto LABEL_40;
          }
        }

LABEL_50:

        v89 = v150 + 32;
        v90 = v146;
        v91 = v152;
        (*(v150 + 32))(v146, v151, v152);
        v92 = sub_25130ED14();
        v94 = v93;
        (*(v89 - 24))(v90, v91);
        (*(v148 + 8))(v147, v149);
        sub_25130C028(v55, type metadata accessor for HAURLValidator);
        sub_25130C028(v140, type metadata accessor for HAURL);
        if (!v94)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }

LABEL_40:

      (*(v148 + 8))(v147, v149);
    }

    else
    {
      (*(v80 + 8))(v82, v79);
    }

    sub_25130C028(v55, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    goto LABEL_46;
  }

  v81 = [v76 healthAppSharingInviteFlowPath];
  sub_25130EFB4();

  if (sub_25130CA14())
  {

LABEL_58:
    sub_25130C028(v55, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v60 = type metadata accessor for URLType(0);
    v51 = v139;
    goto LABEL_12;
  }

  v87 = sub_25130EAE0();

  if (v87)
  {
    goto LABEL_58;
  }

  if (HAURLValidator.isSharingProfileURL()())
  {
    goto LABEL_58;
  }

  v88 = [v76 healthTrendsHostName];
  sub_25130EFB4();

  LOBYTE(v88) = sub_25130EAE0();

  if ((v88 & 1) != 0 || sub_25130D7E4())
  {
    goto LABEL_58;
  }

  v96 = v145;
  v49(v145, v55, v4);
  v97 = HAURL.objectType.getter();
  sub_25130C028(v96, type metadata accessor for HAURL);
  if (v97)
  {

    v98 = sub_25130CBC0();
    v99 = v140;
    if (v98)
    {
      v100 = v143;
      HAURL.objectTypeAllDataNavigationSampleUUID.getter(v143);
      sub_25130C028(v55, type metadata accessor for HAURLValidator);
      sub_25130C028(v99, type metadata accessor for HAURL);
      v51 = v139;
      sub_25130C860(v100, v139, &qword_27F429C18, MEMORY[0x277CC95F0]);
      v101 = type metadata accessor for URLType.DataTypeNavigation(0);
      (*(*(v101 - 8) + 56))(v51, 0, 1, v101);
    }

    else
    {
      sub_25130C028(v55, type metadata accessor for HAURLValidator);
      sub_25130C028(v99, type metadata accessor for HAURL);
      v103 = type metadata accessor for URLType.DataTypeNavigation(0);
      v51 = v139;
      (*(*(v103 - 8) + 56))(v139, 1, 1, v103);
    }

    v60 = type metadata accessor for URLType(0);
    goto LABEL_12;
  }

  v102 = [v76 categoryTypeHostName];
  sub_25130EFB4();

  LOBYTE(v102) = sub_25130EAE0();

  if (v102)
  {
    goto LABEL_58;
  }

  if (HAURLValidator.isEmergencyOnboardingURL()())
  {
LABEL_62:
    sub_25130C028(v144, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v58 = 0x797465666153;
    v59 = 0xE600000000000000;
    goto LABEL_9;
  }

  if (HAURLValidator.isMedicalIDURL()() || (v104 = [v76 healthProfileResourceSpecifier], sub_25130EFB4(), v104, LOBYTE(v104) = sub_25130EAE0(), , (v104 & 1) != 0))
  {
LABEL_94:
    sub_25130C028(v144, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v60 = type metadata accessor for URLType(0);
    v51 = v139;
    goto LABEL_12;
  }

LABEL_67:
  if (HAURLValidator.isHealthChecklistURL()())
  {
    goto LABEL_62;
  }

  if (sub_25130E21C())
  {
    sub_25130C028(v144, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v58 = 0x73656C69666F7250;
    v59 = 0xE800000000000000;
    goto LABEL_9;
  }

  if (HAURLValidator.isResearchStudiesURL()())
  {
    v105 = (sub_25130EE34() + 16);
    if (*v105)
    {
      v106 = &v105[2 * *v105];
      v108 = *v106;
      v107 = v106[1];
    }

    else
    {
      v108 = 0;
      v107 = 0;
    }

    sub_25130C028(v144, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v51 = v139;
    *v139 = v108;
    v51[1] = v107;
    v60 = type metadata accessor for URLType(0);
    goto LABEL_12;
  }

  if (sub_25130E490())
  {
    v109 = (sub_25130EE34() + 16);
    if (*v109)
    {
      v110 = &v109[2 * *v109];
      v92 = *v110;
      v94 = v110[1];
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    v116 = [v76 authorizationManagementHostName];
    v117 = sub_25130EFB4();
    v119 = v118;

    if (v94)
    {
      if (v92 == v117 && v94 == v119)
      {

        sub_25130C028(v144, type metadata accessor for HAURLValidator);
        sub_25130C028(v140, type metadata accessor for HAURL);
LABEL_89:

        v92 = 0;
        v94 = 0;
        goto LABEL_51;
      }

      v120 = sub_25130F2D4();

      sub_25130C028(v144, type metadata accessor for HAURLValidator);
      sub_25130C028(v140, type metadata accessor for HAURL);
      if (v120)
      {
        goto LABEL_89;
      }
    }

    else
    {
      sub_25130C028(v144, type metadata accessor for HAURLValidator);
      sub_25130C028(v140, type metadata accessor for HAURL);
    }

LABEL_51:
    v95 = v139;
    *v139 = v92;
    v95[1] = v94;
    v60 = type metadata accessor for URLType(0);
LABEL_52:
    swift_storeEnumTagMultiPayload();
    v61 = *(*(v60 - 8) + 56);
    v62 = v95;
    return v61(v62, 0, 1, v60);
  }

  v111 = [v76 sharingOverviewHostName];
  sub_25130EFB4();

  LOBYTE(v111) = sub_25130EAE0();

  if (v111)
  {
    goto LABEL_94;
  }

  v112 = HAURL.pluginBundleName.getter();
  if (v113)
  {
    v114 = v112;
    v115 = v113;
    sub_25130C028(v144, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v95 = v139;
    *v139 = v114;
    v95[1] = v115;
    v60 = type metadata accessor for URLType(0);
    goto LABEL_52;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v121 = result;
    v122 = [result isAppleInternalInstall];

    if (v122 && sub_25130EAE0())
    {
      goto LABEL_94;
    }

    if (sub_25130E8AC())
    {
      sub_25130C028(v144, type metadata accessor for HAURLValidator);
      sub_25130C028(v140, type metadata accessor for HAURL);
      v51 = v139;
      *v139 = 0xD000000000000015;
      v51[1] = 0x8000000251311F20;
      goto LABEL_10;
    }

    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v123 = sub_25130EF54();
    __swift_project_value_buffer(v123, qword_280C61668);
    v49(v141, v138, v4);
    v124 = sub_25130EF34();
    v125 = sub_25130F114();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 136446466;
      v153 = &type metadata for AppURLRouting;
      v154 = v127;
      sub_25130C088();
      v128 = sub_25130EFD4();
      v130 = sub_251302D38(v128, v129, &v154);

      *(v126 + 4) = v130;
      *(v126 + 12) = 2082;
      v131 = v141;
      v132 = sub_25130EE24();
      v134 = v133;
      (*(v142 + 8))(v131, v4);
      v135 = sub_251302D38(v132, v134, &v154);

      *(v126 + 14) = v135;
      _os_log_impl(&dword_2512F1000, v124, v125, "[%{public}s]: could not determine URL type for: %{public}s\n", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v127, -1, -1);
      MEMORY[0x253071680](v126, -1, -1);
    }

    else
    {

      (*(v142 + 8))(v141, v4);
    }

    sub_25130C028(v144, type metadata accessor for HAURLValidator);
    sub_25130C028(v140, type metadata accessor for HAURL);
    v136 = type metadata accessor for URLType(0);
    return (*(*(v136 - 8) + 56))(v139, 1, 1, v136);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s17HealthAppServices7URLTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v71 = type metadata accessor for URLType.DataTypeNavigation(0);
  v69 = *(v71 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x28223BE20](v71, v3);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130BFD4(0, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v68 = &v66 - v8;
  sub_25130C660(0, &qword_27F429D60, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v12);
  v70 = &v66 - v13;
  v14 = type metadata accessor for URLType(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = (&v66 - v22);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = (&v66 - v26);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = (&v66 - v30);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v66 - v33;
  sub_25130C6C4(0, &qword_27F429D68, type metadata accessor for URLType);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v40 = &v66 - v39;
  v41 = (&v66 + *(v38 + 56) - v39);
  sub_25130C724(v72, &v66 - v39, type metadata accessor for URLType);
  sub_25130C724(v73, v41, type metadata accessor for URLType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25130C724(v40, v31, type metadata accessor for URLType);
      v52 = *v31;
      v51 = v31[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_43;
      }

      if (v52 == *v41 && v51 == v41[1])
      {
        v61 = v41[1];
      }

      else
      {
        v54 = v41[1];
        v55 = sub_25130F2D4();

        if ((v55 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_63;
    case 2u:
      sub_25130C724(v40, v27, type metadata accessor for URLType);
      v47 = *v27;
      v46 = v27[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_43;
      }

      v48 = *v41;
      v44 = v41[1];
      goto LABEL_28;
    case 3u:
      sub_25130C724(v40, v23, type metadata accessor for URLType);
      v47 = *v23;
      v46 = v23[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_43;
      }

      v44 = v41[1];
      if (!v46)
      {
        goto LABEL_57;
      }

      if (!v44)
      {
        goto LABEL_58;
      }

      v48 = *v41;
LABEL_28:
      if (v47 != v48 || v46 != v44)
      {
        goto LABEL_32;
      }

      goto LABEL_56;
    case 4u:
      sub_25130C724(v40, v19, type metadata accessor for URLType);
      v43 = *v19;
      v42 = v19[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_43:

        goto LABEL_44;
      }

      v44 = v41[1];
      if (v42)
      {
        if (v44)
        {
          if (v43 == *v41 && v42 == v44)
          {
LABEL_56:
          }

          else
          {
LABEL_32:
            v50 = sub_25130F2D4();

            if ((v50 & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
LABEL_57:
        if (!v44)
        {
          goto LABEL_63;
        }
      }

LABEL_58:

      goto LABEL_67;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    default:
      sub_25130C724(v40, v34, type metadata accessor for URLType);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_25130C804(v34, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
LABEL_44:
        sub_25130C78C(v40);
        return 0;
      }

      v57 = *(v10 + 48);
      v58 = v70;
      sub_25130C860(v34, v70, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
      sub_25130C860(v41, v58 + v57, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
      v59 = *(v69 + 48);
      v60 = v71;
      if (v59(v58, 1, v71) != 1)
      {
        v62 = v68;
        sub_25130C8CC(v58, v68, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
        if (v59(v58 + v57, 1, v60) != 1)
        {
          v63 = v58 + v57;
          v64 = v67;
          sub_25130C938(v63, v67);
          v65 = _s17HealthAppServices7URLTypeO18DataTypeNavigationO2eeoiySbAE_AEtFZ_0(v62, v64);
          sub_25130C028(v64, type metadata accessor for URLType.DataTypeNavigation);
          sub_25130C028(v62, type metadata accessor for URLType.DataTypeNavigation);
          sub_25130C804(v58, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
          if (v65)
          {
            goto LABEL_63;
          }

LABEL_67:
          sub_25130C028(v40, type metadata accessor for URLType);
          return 0;
        }

        sub_25130C028(v62, type metadata accessor for URLType.DataTypeNavigation);
LABEL_66:
        sub_25130C5AC(v58, &qword_27F429D60, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
        goto LABEL_67;
      }

      if (v59(v58 + v57, 1, v60) != 1)
      {
        goto LABEL_66;
      }

      sub_25130C804(v58, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
LABEL_63:
      sub_25130C028(v40, type metadata accessor for URLType);
      return 1;
  }
}

BOOL _s17HealthAppServices7URLTypeO18DataTypeNavigationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_25130EF24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC95F0];
  sub_25130BFD4(0, &qword_27F429C18, MEMORY[0x277CC95F0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v36 = &v34 - v12;
  sub_25130C660(0, &qword_27F429D48, &qword_27F429C18, v8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v34 - v17;
  sub_25130C6C4(0, &qword_27F429D50, type metadata accessor for URLType.DataTypeNavigation);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v34 - v23;
  v25 = *(v22 + 56);
  sub_25130C724(a1, &v34 - v23, type metadata accessor for URLType.DataTypeNavigation);
  sub_25130C724(v37, &v24[v25], type metadata accessor for URLType.DataTypeNavigation);
  v26 = *(v14 + 56);
  sub_25130C860(v24, v18, &qword_27F429C18, v8);
  sub_25130C860(&v24[v25], &v18[v26], &qword_27F429C18, v8);
  v27 = *(v4 + 48);
  if (v27(v18, 1, v3) != 1)
  {
    v28 = v36;
    sub_25130C8CC(v18, v36, &qword_27F429C18, MEMORY[0x277CC95F0]);
    if (v27(&v18[v26], 1, v3) != 1)
    {
      v30 = &v18[v26];
      v31 = v35;
      (*(v4 + 32))(v35, v30, v3);
      sub_25130C608();
      v32 = sub_25130EF84();
      v33 = *(v4 + 8);
      v33(v31, v3);
      v33(v28, v3);
      sub_25130C804(v18, &qword_27F429C18, MEMORY[0x277CC95F0]);
      return (v32 & 1) != 0;
    }

    (*(v4 + 8))(v28, v3);
LABEL_6:
    sub_25130C5AC(v18, &qword_27F429D48, &qword_27F429C18, MEMORY[0x277CC95F0]);
    return 0;
  }

  if (v27(&v18[v26], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_25130C804(v18, &qword_27F429C18, MEMORY[0x277CC95F0]);
  return 1;
}

void sub_25130BFD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25130F144();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25130C028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25130C088()
{
  result = qword_27F429CF0;
  if (!qword_27F429CF0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F429CF0);
  }

  return result;
}

unint64_t sub_25130C0D0()
{
  result = qword_27F429CF8;
  if (!qword_27F429CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F429CF8);
  }

  return result;
}

unint64_t sub_25130C120()
{
  result = qword_27F429D00;
  if (!qword_27F429D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429D00);
  }

  return result;
}

unint64_t sub_25130C184()
{
  result = qword_27F429D08;
  if (!qword_27F429D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429D08);
  }

  return result;
}

void sub_25130C240()
{
  sub_25130BFD4(319, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
  if (v0 <= 0x3F)
  {
    sub_25130C2EC();
    if (v1 <= 0x3F)
    {
      sub_25130C31C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_25130C2EC()
{
  result = qword_27F429D28;
  if (!qword_27F429D28)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F429D28);
  }

  return result;
}

void sub_25130C31C()
{
  if (!qword_27F429C10)
  {
    v0 = sub_25130F144();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429C10);
    }
  }
}

uint64_t sub_25130C36C(uint64_t a1, uint64_t a2)
{
  sub_25130C3D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_25130C3D8()
{
  if (!qword_27F429D30)
  {
    sub_25130BFD4(0, &qword_27F429C18, MEMORY[0x277CC95F0]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F429D30);
    }
  }
}

uint64_t sub_25130C43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25130C3D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_25130C4B8(uint64_t a1)
{
  sub_25130C3D8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_25130BFD4(319, &qword_27F429C18, MEMORY[0x277CC95F0]);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_25130C5AC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25130C660(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_25130C608()
{
  result = qword_27F429D58;
  if (!qword_27F429D58)
  {
    sub_25130EF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429D58);
  }

  return result;
}

void sub_25130C660(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_25130BFD4(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25130C6C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25130C724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25130C78C(uint64_t a1)
{
  sub_25130C6C4(0, &qword_27F429D68, type metadata accessor for URLType);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25130C804(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25130BFD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25130C860(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25130BFD4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25130C8CC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25130BFD4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25130C938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLType.DataTypeNavigation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HAURLValidator.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25130CA14()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v13 = v0;
    v14 = v1;
    v2 = objc_opt_self();
    v3 = [v2 externalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v10 = [v2 externalHealthAppURLHost];
      sub_25130EFB4();

      sub_25130EE84();
      if (v11)
      {
        v12 = sub_25130F174();

        if (!v12)
        {
          sub_25130EE94();
          v8 = sub_25130F194();

          return v8 & 1;
        }
      }

      else
      {
      }
    }
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_25130CBC0()
{
  v1 = v0;
  v2 = type metadata accessor for HAURL();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25130EEA4();
  if (!v8)
  {
    goto LABEL_23;
  }

  v35[2] = v7;
  v35[3] = v8;
  v9 = objc_opt_self();
  v10 = [v9 internalHealthAppURLScheme];
  v11 = sub_25130EFB4();
  v13 = v12;

  v35[0] = v11;
  v35[1] = v13;
  sub_2512F8818();
  v14 = sub_25130F174();

  if (v14)
  {
    goto LABEL_23;
  }

  v15 = sub_25130EE84();
  v17 = v16;
  v18 = [v9 sampleTypeHostName];
  v19 = sub_25130EFB4();
  v21 = v20;

  if (!v17)
  {
    goto LABEL_12;
  }

  if (v15 == v19 && v17 == v21)
  {
  }

  else
  {
    v22 = sub_25130F2D4();

    if ((v22 & 1) == 0)
    {
LABEL_23:
      v33 = 0;
      return v33 & 1;
    }
  }

  v23 = sub_25130EEC4();
  (*(*(v23 - 8) + 16))(v6, v1, v23);
  v24 = HAURL.objectType.getter();
  if (!v24)
  {
LABEL_22:
    sub_25130EC04(v6);
    goto LABEL_23;
  }

  v25 = sub_25130EE34();
  v26 = v25;
  if (v25[2] < 3uLL)
  {
    sub_25130EC04(v6);
LABEL_12:

    goto LABEL_23;
  }

  if ((v25[4] != 47 || v25[5] != 0xE100000000000000) && (sub_25130F2D4() & 1) == 0)
  {

    goto LABEL_22;
  }

  v28 = v26[8];
  v27 = v26[9];

  v29 = [v9 sampleTypeAllDataPath];
  v30 = sub_25130EFB4();
  v32 = v31;

  if (v28 == v30 && v27 == v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_25130F2D4();
  }

  sub_25130EC04(v6);
  return v33 & 1;
}

Swift::Bool __swiftcall HAURLValidator.isCHRURL()()
{
  sub_25130EEA4();
  if (v0)
  {
    sub_2512F8818();
    v1 = sub_25130F174();

    if (!v1)
    {
      sub_25130EE84();
      if (v7)
      {
        v8 = sub_25130F174();

        if (!v8)
        {
          return 1;
        }
      }
    }
  }

  sub_25130EEA4();
  if (v2)
  {
    sub_2512F8818();
    v3 = sub_25130F174();

    if (!v3)
    {
      sub_25130EE84();
      if (v9)
      {
        v10 = sub_25130F174();

        if (!v10)
        {
          sub_25130EE94();
          v11 = sub_25130F194();

          if (v11)
          {
            return 1;
          }
        }
      }
    }
  }

  if (sub_25130EAE0() || sub_25130EAE0() || sub_25130EAE0())
  {
    return 1;
  }

  sub_25130EEA4();
  if (!v4)
  {
    return 0;
  }

  sub_2512F8818();
  v5 = sub_25130F174();

  if (v5)
  {
    return 0;
  }

  sub_25130EE84();
  if (!v12)
  {
    return 0;
  }

  v13 = sub_25130F174();

  return v13 == 0;
}

Swift::Bool __swiftcall HAURLValidator.isSmartHealthCardFile()()
{
  if (sub_25130EE14() & 1) != 0 && (sub_25130EE44(), v0 = sub_25130F084(), , (v0))
  {
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v1 = sub_25130EF54();
    __swift_project_value_buffer(v1, qword_280C61668);
    v2 = sub_25130EF34();
    v3 = sub_25130F124();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2512F1000, v2, v3, "[URL+ValidateURLs]: looks like this is a SMART Health Card", v4, 2u);
      MEMORY[0x253071680](v4, -1, -1);
    }

    return 1;
  }

  else
  {
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v6 = sub_25130EF54();
    __swift_project_value_buffer(v6, qword_280C61668);
    v7 = sub_25130EF34();
    v8 = sub_25130F104();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_251302D38(0xD000000000000012, 0x8000000251312030, &v11);
      _os_log_impl(&dword_2512F1000, v7, v8, "[URL+ValidateURLs]: not a file URL and/or doesn't end with %s: not a SMART Health Card", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253071680](v10, -1, -1);
      MEMORY[0x253071680](v9, -1, -1);
    }

    return 0;
  }
}

Swift::Bool __swiftcall HAURLValidator.hasObjectType(_:)(HKObjectType_optional a1)
{
  isa = a1.value.super.isa;
  v3 = type metadata accessor for HAURL();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25130EEC4();
  (*(*(v8 - 8) + 16))(v7, v1, v8);
  v9 = HAURL.objectType.getter();
  if (v9)
  {
    v10 = v9;
    if (isa)
    {
      sub_25130C0D0();
      v11 = isa;
      LOBYTE(isa) = sub_25130F134();
      sub_25130EC04(v7);
    }

    else
    {
      sub_25130EC04(v7);
    }
  }

  else
  {
    sub_25130EC04(v7);
    LOBYTE(isa) = 0;
  }

  return isa & 1;
}

Swift::Bool __swiftcall HAURLValidator.isSharingInviteFlowURL()()
{
  v0 = [objc_opt_self() healthAppSharingInviteFlowPath];
  sub_25130EFB4();

  v1 = (sub_25130CA14() & 1) != 0 || sub_25130EAE0();

  return v1;
}

Swift::Bool __swiftcall HAURLValidator.isSharingProfileURL()()
{
  v0 = objc_opt_self();
  v1 = [v0 healthAppSharingProfilePath];
  v2 = sub_25130EFB4();
  v4 = v3;

  if (sub_25130CA14())
  {

    return 1;
  }

  v6 = sub_25130EE54();
  v7 = [v6 resourceSpecifier];

  if (v7)
  {
    sub_25130EFB4();
    v9 = v8;

    sub_25130EEA4();
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    sub_25130EEA4();
    if (!v11)
    {
LABEL_8:

LABEL_9:

      return 0;
    }
  }

  v12 = [v0 internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v13 = sub_25130F174();

  if (v13)
  {
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  MEMORY[0x253070D80](v2, v4);

  v14 = sub_25130F074();

  return (v14 & 1) != 0;
}

BOOL sub_25130D7E4()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v21 = v0;
    v22 = v1;
    v2 = objc_opt_self();
    v3 = [v2 internalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    v20 = v4;
    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v8 = sub_25130EE34();
      if (v8[2] == 2)
      {
        if (v8[4] == 47 && v8[5] == 0xE100000000000000 || (v9 = v8, v10 = v8[4], v11 = sub_25130F2D4(), v8 = v9, (v11 & 1) != 0))
        {
          v13 = v8[6];
          v12 = v8[7];

          v14 = [v2 healthAppNotificationSettingsPath];
          sub_25130EFB4();

          v15 = [v2 healthProfileResourceSpecifier];
          sub_25130EFB4();

          sub_25130EE84();
          if (v16)
          {
            v17 = sub_25130F174();

            if (!v17)
            {
              v18 = sub_25130F174();

              return v18 == 0;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall HAURLValidator.hasObjectType()()
{
  v1 = type metadata accessor for HAURL();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EEC4();
  (*(*(v6 - 8) + 16))(v5, v0, v6);
  v7 = HAURL.objectType.getter();
  sub_25130EC04(v5);
  if (v7)
  {
  }

  return v7 != 0;
}

Swift::Bool __swiftcall HAURLValidator.isEmergencyOnboardingURL()()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v20 = v0;
    v21 = v1;
    v2 = objc_opt_self();
    v3 = [v2 internalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    v19 = v4;
    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v8 = sub_25130EE34();
      if (v8[2] == 2)
      {
        if (v8[4] == 47 && v8[5] == 0xE100000000000000 || (v9 = v8, v10 = v8[4], v11 = sub_25130F2D4(), v8 = v9, (v11 & 1) != 0))
        {
          v13 = v8[6];
          v12 = v8[7];

          v14 = [v2 healthAppMedicalIDPath];
          sub_25130EFB4();

          sub_25130EE84();
          if (v15)
          {
            v16 = sub_25130F174();

            if (!v16)
            {
              v17 = sub_25130F174();

              return v17 == 0;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall HAURLValidator.isMedicalIDURL()()
{
  v0 = sub_25130EE54();
  v1 = [v0 resourceSpecifier];

  if (v1)
  {
    sub_25130EFB4();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 healthAppMedicalIDPath];
  sub_25130EFB4();

  sub_25130EEA4();
  if (!v6 || (v7 = [v4 internalHealthAppURLScheme], sub_25130EFB4(), v7, sub_2512F8818(), v8 = sub_25130F174(), , , v8))
  {

LABEL_7:

    return 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v10 = sub_25130F174();

  return !v10;
}

Swift::Bool __swiftcall HAURLValidator.isHealthChecklistURL()()
{
  v0 = sub_25130EEA4();
  if (!v1)
  {
    goto LABEL_3;
  }

  v37 = v0;
  v38 = v1;
  v2 = objc_opt_self();
  v3 = [v2 internalHealthAppURLScheme];
  v4 = sub_25130EFB4();
  v6 = v5;

  v35 = v4;
  v36 = v6;
  sub_2512F8818();
  v7 = sub_25130F174();

  if (v7)
  {
    goto LABEL_3;
  }

  v9 = sub_25130EE84();
  v11 = v10;
  v12 = [v2 healthAppHealthChecklistHostName];
  v13 = sub_25130EFB4();
  v15 = v14;

  if (v11)
  {
    if (v9 == v13 && v11 == v15)
    {

      LOBYTE(v8) = 1;
      return v8;
    }

    v16 = sub_25130F2D4();

    if (v16)
    {
      LOBYTE(v8) = 1;
      return v8;
    }
  }

  else
  {
  }

  v17 = sub_25130EE84();
  v19 = v18;
  v20 = [v2 healthProfileResourceSpecifier];
  v21 = sub_25130EFB4();
  v23 = v22;

  if (!v19)
  {
    goto LABEL_15;
  }

  if (v17 == v21 && v19 == v23)
  {
  }

  else
  {
    v24 = sub_25130F2D4();

    if ((v24 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v25 = *(sub_25130EE34() + 16);

  if (v25 < 2)
  {
    goto LABEL_3;
  }

  v26 = sub_25130EE34();
  if (!v26[2])
  {
LABEL_15:

    goto LABEL_3;
  }

  v28 = v26[4];
  v27 = v26[5];

  if (v28 == 47 && v27 == 0xE100000000000000)
  {

    goto LABEL_23;
  }

  v29 = sub_25130F2D4();

  if ((v29 & 1) == 0)
  {
LABEL_3:
    LOBYTE(v8) = 0;
    return v8;
  }

LABEL_23:
  v8 = sub_25130EE34();
  if (v8[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v31 = v8[6];
    v30 = v8[7];

    v32 = [v2 healthAppHealthChecklistHostName];
    sub_25130EFB4();

    v33 = sub_25130F174();

    LOBYTE(v8) = v33 == 0;
  }

  return v8;
}

uint64_t sub_25130E21C()
{
  sub_25130EEA4();
  if (!v0)
  {
    goto LABEL_3;
  }

  v1 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v2 = sub_25130F174();

  if (v2)
  {
    goto LABEL_3;
  }

  v5 = sub_25130EE84();
  if (v6)
  {
    if (v5 == 0x656C69666F7270 && v6 == 0xE700000000000000)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_25130F2D4();
    }
  }

  else
  {
LABEL_3:
    v3 = 0;
  }

  return v3 & 1;
}

Swift::Bool __swiftcall HAURLValidator.isResearchStudiesURL()()
{
  v0 = sub_25130EE54();
  v1 = [v0 resourceSpecifier];

  if (v1)
  {
    sub_25130EFB4();
    v3 = v2;

    sub_25130EEA4();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    sub_25130EEA4();
    if (!v5)
    {
LABEL_6:

      return 0;
    }
  }

  v6 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v7 = sub_25130F174();

  if (v7)
  {
    goto LABEL_6;
  }

  if (!v3)
  {
    return 0;
  }

  v9 = sub_25130F074();

  return (v9 & 1) != 0;
}

void *sub_25130E490()
{
  v0 = objc_opt_self();
  v1 = [v0 authorizationManagementHostName];
  v2 = sub_25130EFB4();
  v4 = v3;

  sub_25130EEA4();
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v0 internalHealthAppURLScheme];
  v7 = sub_25130EFB4();
  v9 = v8;

  sub_2512F8818();
  v10 = sub_25130F174();

  if (v10)
  {
    goto LABEL_3;
  }

  v13 = sub_25130EE74();
  if (!v14)
  {
    goto LABEL_3;
  }

  v15 = v14;
  if (v13 == v2 && v14 == v4 || (v16 = v13, (sub_25130F2D4() & 1) != 0))
  {
LABEL_9:

    v11 = 1;
    return (v11 & 1);
  }

  v17 = [v0 sharingOverviewHostName];
  sub_25130EFB4();

  LOBYTE(v17) = sub_25130F194();

  if ((v17 & 1) == 0)
  {
    goto LABEL_3;
  }

  v18 = *(sub_25130EE34() + 16);

  if (v18 < 2)
  {
    goto LABEL_3;
  }

  v19 = sub_25130EE34();
  if (!v19[2])
  {

    goto LABEL_3;
  }

  v21 = v19[4];
  v20 = v19[5];

  if (v21 == 47 && v20 == 0xE100000000000000)
  {

    goto LABEL_18;
  }

  v22 = sub_25130F2D4();

  if ((v22 & 1) == 0)
  {
LABEL_3:

    v11 = 0;
    return (v11 & 1);
  }

LABEL_18:
  result = sub_25130EE34();
  if (result[2] >= 2uLL)
  {
    v24 = result[6];
    v23 = result[7];

    if (v24 != v2 || v23 != v4)
    {
      v11 = sub_25130F2D4();

      return (v11 & 1);
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_25130E78C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  sub_25130EFB4();

  LOBYTE(v1) = sub_25130EAE0();

  return v1 & 1;
}

Swift::Bool __swiftcall HAURLValidator.isInternalSettingsURL()()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isAppleInternalInstall];

    if (v2)
    {

      LOBYTE(v0) = sub_25130EAE0();
    }

    else
    {
      LOBYTE(v0) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return v0;
}

uint64_t sub_25130E8AC()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v19 = v0;
    v20 = v1;
    v2 = objc_opt_self();
    v3 = [v2 externalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v10 = [v2 externalHealthAppURLHost];
      v11 = sub_25130EFB4();
      v13 = v12;

      sub_25130EE84();
      if (v14)
      {
        v15 = sub_25130F174();

        if (!v15)
        {
          v16 = sub_25130EE94();
          v18 = [v2 healthAppVisionRXIngestionURLPath];
          sub_25130EFB4();

          v8 = sub_25130F194();

          return v8 & 1;
        }
      }

      else
      {
      }
    }
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t HAURLValidator.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EEC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL sub_25130EAE0()
{
  sub_25130EEA4();
  if (!v0)
  {
    return 0;
  }

  v1 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v2 = sub_25130F174();

  if (v2)
  {
    return 0;
  }

  sub_25130EE84();
  if (!v4)
  {
    return 0;
  }

  v5 = sub_25130F174();

  return v5 == 0;
}

uint64_t sub_25130EC04(uint64_t a1)
{
  v2 = type metadata accessor for HAURL();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HAURLValidator()
{
  result = qword_280C61580;
  if (!qword_280C61580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}