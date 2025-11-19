uint64_t sub_258E29670(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v5 = sub_258F0A300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_258F0A2D0();
  sub_258F0A310();
  v24 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v11);
  }

  if ((a4 & 1) == 0)
  {
    v19 = v25;
    if (v25)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v5);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v17, v24, v22, v19, v20, v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v19 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_258E2990C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v70 = a3;
  v8 = sub_258F09A20();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v73 = &v68 - v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  if (qword_27F988680 != -1)
  {
    swift_once();
  }

  v17 = qword_280CC6068;
  v74 = 0x61645F746E657665;
  v75 = 0xEA00000000006574;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v18 = sub_258E2EA2C(v76), (v19 & 1) == 0))
  {
    sub_258E0F590(v76);
    goto LABEL_18;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v18, v77);
  sub_258E0F590(v76);
  if (!swift_dynamicCast())
  {
LABEL_18:
    v74 = 0x61645F746E657665;
    v75 = 0xEA00000000006574;
    sub_258F0AA80();
    if (*(a1 + 16) && (v36 = sub_258E2EA2C(v76), (v37 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v36, v77);
      sub_258E0F590(v76);
      if (swift_dynamicCast())
      {
        v39 = v74;
        v38 = v75;

        v40 = sub_258F0A350();
        v41 = sub_258F0A820();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v76[0] = v43;
          *v42 = 136315138;
          v44 = sub_258DE3018(v39, v38, v76);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_258DD8000, v40, v41, "event_date is %s which dateformatter cannot parse", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x259C9EF40](v43, -1, -1);
          MEMORY[0x259C9EF40](v42, -1, -1);
        }

        else
        {
        }

        return v16;
      }
    }

    else
    {
      sub_258E0F590(v76);
    }

    v45 = sub_258F0A350();
    v46 = sub_258F0A820();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_258DD8000, v45, v46, "event_date is not a string", v47, 2u);
      MEMORY[0x259C9EF40](v47, -1, -1);
    }

    return v16;
  }

  v69 = a4;
  v20 = v75;
  v68 = v74;
  v21 = sub_258F0A4E0();
  v22 = [v17 dateFromString_];

  if (!v22)
  {

    goto LABEL_18;
  }

  v23 = v20;
  v24 = v73;
  sub_258F09A00();

  sub_258F09930();
  v25 = sub_258F099F0();
  v26 = v69;
  if (v25)
  {
    v27 = *(v5 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults);
    v28 = sub_258F0A4E0();
    LOBYTE(v27) = [v27 BOOLForKey_];

    if ((v27 & 1) == 0)
    {

      v57 = sub_258F0A350();
      v58 = sub_258F0A810();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76[0] = v60;
        *v59 = 136315394;
        v61 = sub_258DE3018(v68, v23, v76);

        *(v59 + 4) = v61;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_258DE3018(v70, v26, v76);
        _os_log_impl(&dword_258DD8000, v57, v58, "setting should skip to true for eventDate: %s and key %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v60, -1, -1);
        MEMORY[0x259C9EF40](v59, -1, -1);
      }

      else
      {
      }

      v66 = v72;
      v67 = *(v71 + 8);
      v67(v13, v72);
      v67(v24, v66);
      return v16;
    }
  }

  sub_258F099E0();
  v30 = v29;
  v70 = v16;
  if (v29 > -1.0 && v29 < 1.84467441e19 && v29 == trunc(v29))
  {

    v31 = v70;
    [v70 setStartTimestampInSecondsSince1970_];
    if (v31)
    {
      v77[0] = 0xD000000000000018;
      v77[1] = 0x8000000258F1A780;
      v32 = v70;
      sub_258F0AA80();
      if (*(a1 + 16) && (v33 = sub_258E2EA2C(v76), (v34 & 1) != 0))
      {
        sub_258DE4090(*(a1 + 56) + 32 * v33, v77);
        sub_258E0F590(v76);
        if (swift_dynamicCast())
        {
          v35 = v74;
        }

        else
        {
          v35 = 86400;
        }
      }

      else
      {
        v35 = 86400;
        sub_258E0F590(v76);
      }

      [v32 setNumberOfSeconds_];
    }

    v64 = v72;
    v65 = *(v71 + 8);
    v65(v13, v72);
    v65(v24, v64);
    return v70;
  }

  else
  {

    v49 = sub_258F0A350();
    v50 = sub_258F0A820();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76[0] = v52;
      *v51 = 136315650;
      v77[0] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
      v53 = sub_258F0A550();
      v55 = sub_258DE3018(v53, v54, v76);

      *(v51 + 4) = v55;
      v24 = v73;
      *(v51 + 12) = 2048;
      *(v51 + 14) = v30;
      *(v51 + 22) = 2080;
      v56 = sub_258DE3018(v68, v23, v76);

      *(v51 + 24) = v56;
      _os_log_impl(&dword_258DD8000, v49, v50, "#%s: startTimestamp %f of eventDate %s cannot be cast to UInt64.", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v52, -1, -1);
      MEMORY[0x259C9EF40](v51, -1, -1);
    }

    else
    {
    }

    sub_258E2C77C(1, 0xD00000000000001CLL, 0x8000000258F1A760);
    v62 = v72;
    v63 = *(v71 + 8);
    v63(v13, v72);
    v63(v24, v62);
    return v70;
  }
}

id sub_258E2A2A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, void *a6, void (*a7)(uint64_t, unint64_t, unint64_t))
{
  v84 = a7;
  v93 = a5;
  v9 = v7;
  v89 = a4;
  v85 = a3;
  v87 = a2;
  v11 = sub_258F09B00();
  v86 = *(v11 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F09A20();
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = *(v90 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v92 = &v80 - v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  if (qword_27F988680 != -1)
  {
    swift_once();
  }

  v24 = qword_280CC6068;
  v94 = 0x61645F746E657665;
  v95 = 0xEA00000000006574;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v25 = sub_258E2EA2C(v96), (v26 & 1) == 0))
  {
    sub_258E0F590(v96);
    goto LABEL_18;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v25, v97);
  sub_258E0F590(v96);
  if (!swift_dynamicCast())
  {
LABEL_18:
    v94 = 0x61645F746E657665;
    v95 = 0xEA00000000006574;
    sub_258F0AA80();
    if (*(a1 + 16) && (v43 = sub_258E2EA2C(v96), (v44 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v43, v97);
      sub_258E0F590(v96);
      if (swift_dynamicCast())
      {
        v46 = v94;
        v45 = v95;
        v47 = *v93;

        v48 = sub_258F0A350();
        v49 = sub_258F0A820();

        if (!os_log_type_enabled(v48, v49))
        {

          return v23;
        }

        v50 = v23;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v96[0] = v52;
        *v51 = 136315138;
        v53 = sub_258DE3018(v46, v45, v96);

        *(v51 + 4) = v53;
        _os_log_impl(&dword_258DD8000, v48, v49, "event_date is %s which dateformatter cannot parse", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x259C9EF40](v52, -1, -1);
        v54 = v51;
        v23 = v50;
        goto LABEL_26;
      }
    }

    else
    {
      sub_258E0F590(v96);
    }

    v55 = v9 + *v93;
    v48 = sub_258F0A350();
    v56 = sub_258F0A820();
    if (!os_log_type_enabled(v48, v56))
    {
LABEL_27:

      return v23;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_258DD8000, v48, v56, "event_date is not a string", v57, 2u);
    v54 = v57;
LABEL_26:
    MEMORY[0x259C9EF40](v54, -1, -1);
    goto LABEL_27;
  }

  v82 = a6;
  v83 = v23;
  v27 = v95;
  v81 = v94;
  v28 = sub_258F0A4E0();
  v29 = [v24 dateFromString_];

  if (!v29)
  {

    v23 = v83;
    goto LABEL_18;
  }

  v30 = v27;
  v31 = v92;
  sub_258F09A00();

  sub_258F09AC0();
  v32 = v88;
  sub_258F09930();
  (*(v86 + 8))(v15, v11);
  v33 = sub_258F099F0();
  v23 = v83;
  v34 = v89;
  if (v33)
  {
    v35 = *(v9 + *v82);
    v36 = sub_258F0A4E0();
    LOBYTE(v35) = [v35 BOOLForKey_];

    if ((v35 & 1) == 0)
    {
      v69 = *v93;
      v70 = v30;

      v71 = sub_258F0A350();
      v72 = sub_258F0A810();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v96[0] = v74;
        *v73 = 136315394;
        v75 = sub_258DE3018(v81, v70, v96);

        *(v73 + 4) = v75;
        v23 = v83;
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_258DE3018(v85, v34, v96);
        _os_log_impl(&dword_258DD8000, v71, v72, "setting should skip to true for eventDate: %s and key %s", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v74, -1, -1);
        MEMORY[0x259C9EF40](v73, -1, -1);
      }

      else
      {
      }

      goto LABEL_42;
    }
  }

  sub_258F099E0();
  v38 = v37;
  if (v37 <= -1.0 || v37 >= 1.84467441e19 || v37 != trunc(v37))
  {
    v59 = *v93;

    v60 = sub_258F0A350();
    v61 = sub_258F0A820();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v96[0] = v63;
      *v62 = 136315650;
      v97[0] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
      v64 = sub_258F0A550();
      v66 = sub_258DE3018(v64, v65, v96);

      *(v62 + 4) = v66;
      v23 = v83;
      *(v62 + 12) = 2048;
      *(v62 + 14) = v38;
      *(v62 + 22) = 2080;
      v67 = sub_258DE3018(v81, v30, v96);

      *(v62 + 24) = v67;
      _os_log_impl(&dword_258DD8000, v60, v61, "#%s: startTimestamp %f of eventDate %s cannot be cast to UInt64.", v62, 0x20u);
      swift_arrayDestroy();
      v68 = v63;
      v31 = v92;
      MEMORY[0x259C9EF40](v68, -1, -1);
      MEMORY[0x259C9EF40](v62, -1, -1);
    }

    else
    {
    }

    v84(1, 0xD00000000000001CLL, 0x8000000258F1A760);
LABEL_42:
    v78 = v91;
    v79 = *(v90 + 8);
    v79(v32, v91);
    v79(v31, v78);
    return v23;
  }

  [v23 setStartTimestampInSecondsSince1970_];
  if (v23)
  {
    v97[0] = 0xD000000000000018;
    v97[1] = 0x8000000258F1A780;
    v39 = v23;
    sub_258F0AA80();
    if (*(a1 + 16) && (v40 = sub_258E2EA2C(v96), (v41 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v40, v97);
      sub_258E0F590(v96);
      if (swift_dynamicCast())
      {
        v42 = v94;
      }

      else
      {
        v42 = 86400;
      }
    }

    else
    {
      v42 = 86400;
      sub_258E0F590(v96);
    }

    [v39 setNumberOfSeconds_];
  }

  v76 = v91;
  v77 = *(v90 + 8);
  v77(v32, v91);
  v77(v31, v76);
  return v23;
}

uint64_t sub_258E2AD44@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v90 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v87 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v87 - v17;
  strcpy(v99, "is_carplay");
  BYTE3(v99[1]) = 0;
  HIDWORD(v99[1]) = -369098752;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v19 = sub_258E2EA2C(v100), (v20 & 1) == 0))
  {
    sub_258E0F590(v100);
    goto LABEL_9;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v19, v101);
  sub_258E0F590(v100);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v96 = 0;
    LODWORD(v21) = 1;
    goto LABEL_10;
  }

  LODWORD(v21) = LODWORD(v99[0]) != 1;
  if (LODWORD(v99[0]) == 1)
  {
    v22 = 5;
  }

  else
  {
    v22 = 0;
  }

  v96 = v22;
LABEL_10:
  v99[0] = 0xD000000000000019;
  v99[1] = 0x8000000258F18AA0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v23 = sub_258E2EA2C(v100), (v24 & 1) == 0))
  {
    sub_258E0F590(v100);
    goto LABEL_16;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v23, v101);
  sub_258E0F590(v100);
  if (!swift_dynamicCast())
  {
LABEL_16:
    v95 = 1;
    goto LABEL_17;
  }

  v25 = sub_258F0A4E0();

  v26 = v25;
  if ([v26 isEqualToString:@"UNKNOWN"])
  {
    HIDWORD(v95) = 0;
  }

  else
  {
    if ([v26 isEqualToString:@"OPTED_IN"])
    {
      v78 = 1;
    }

    else if ([v26 isEqualToString:@"OPTED_OUT"])
    {
      v78 = 2;
    }

    else if ([v26 isEqualToString:@"DISMISSED"])
    {
      v78 = 3;
    }

    else
    {
      v78 = 0;
    }

    HIDWORD(v95) = v78;
  }

  LODWORD(v95) = 0;
LABEL_17:
  strcpy(v99, "asr_location");
  BYTE5(v99[1]) = 0;
  HIWORD(v99[1]) = -5120;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v27 = sub_258E2EA2C(v100), (v28 & 1) == 0))
  {
    sub_258E0F590(v100);
    goto LABEL_23;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v27, v101);
  sub_258E0F590(v100);
  if (!swift_dynamicCast())
  {
LABEL_23:
    v94 = 1;
    goto LABEL_24;
  }

  v29 = sub_258F0A4E0();

  v30 = v29;
  if ([v30 isEqualToString:@"ORCHSIRIASRMODE_UNKNOWN"])
  {
    HIDWORD(v94) = 0;
  }

  else
  {
    if ([v30 isEqualToString:@"ORCHSIRIASRMODE_SERVER"])
    {
      v79 = 1;
    }

    else if ([v30 isEqualToString:@"ORCHSIRIASRMODE_DEVICE"])
    {
      v79 = 2;
    }

    else
    {
      v79 = 0;
    }

    HIDWORD(v94) = v79;
  }

  LODWORD(v94) = 0;
LABEL_24:
  strcpy(v99, "nl_location");
  HIDWORD(v99[1]) = -352321536;
  sub_258F0AA80();
  if (*(a1 + 16) && (v31 = sub_258E2EA2C(v100), (v32 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v31, v101);
    sub_258E0F590(v100);
    if (swift_dynamicCast())
    {
      v33 = sub_258F0A4E0();

      v34 = v33;
      if ([v34 isEqualToString:@"ORCHSIRINLMODE_UNKNOWN"])
      {
        HIDWORD(v93) = 0;
      }

      else
      {
        if ([v34 isEqualToString:@"ORCHSIRINLMODE_NLV3_SERVER"])
        {
          v80 = 1;
        }

        else if ([v34 isEqualToString:@"ORCHSIRINLMODE_NLX_DEVICE"])
        {
          v80 = 2;
        }

        else
        {
          v80 = 0;
        }

        HIDWORD(v93) = v80;
      }

      LODWORD(v93) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    sub_258E0F590(v100);
  }

  v93 = 1;
LABEL_31:
  v92 = a2(a1);
  strcpy(v99, "program_code");
  BYTE5(v99[1]) = 0;
  HIWORD(v99[1]) = -5120;
  sub_258F0AA80();
  if (*(a1 + 16) && (v35 = sub_258E2EA2C(v100), (v36 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v35, v101);
    sub_258E0F590(v100);
    v37 = swift_dynamicCast();
    v38 = v97;
    if (v37)
    {
      v39 = sub_258F0A4E0();

      v40 = v39;
      if ([v40 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
      {
        v91 = 0;
      }

      else
      {
        if ([v40 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v81 = 1;
        }

        else if ([v40 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v81 = 2;
        }

        else if ([v40 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v81 = 3;
        }

        else if ([v40 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v81 = 4;
        }

        else if ([v40 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v81 = 5;
        }

        else
        {
          v81 = 0;
        }

        v91 = v81;
      }

      v41 = 0;
    }

    else
    {
      v91 = 0;
      v41 = 1;
    }
  }

  else
  {
    sub_258E0F590(v100);
    v91 = 0;
    v41 = 1;
    v38 = v97;
  }

  v42 = sub_258F09A70();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v18, 1, 1, v42);
  strcpy(v99, "codepath_id");
  HIDWORD(v99[1]) = -352321536;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v44 = sub_258E2EA2C(v100), (v45 & 1) == 0))
  {
    sub_258E0F590(v100);
    goto LABEL_45;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v44, v101);
  sub_258E0F590(v100);
  if (!swift_dynamicCast())
  {
LABEL_45:
    v57 = v38 + *v98;
    v58 = sub_258F0A350();
    v59 = sub_258F0A820();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_258DD8000, v58, v59, "nil codePathId", v60, 2u);
      MEMORY[0x259C9EF40](v60, -1, -1);
    }

    goto LABEL_48;
  }

  v89 = v21;
  v46 = v99[1];
  v88 = v99[0];
  sub_258F09A30();
  sub_258DE2184(v18, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v15, v18, &qword_27F988730, &unk_258F0F8E0);
  v47 = v90;
  sub_258DE20C0(v18, v90, &qword_27F988730, &unk_258F0F8E0);
  if ((*(v43 + 48))(v47, 1, v42) == 1)
  {
    sub_258DE2184(v47, &qword_27F988730, &unk_258F0F8E0);
    v48 = *v98;

    v38 = v97;
    v49 = sub_258F0A350();
    v50 = sub_258F0A820();

    v90 = v49;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v100[0] = v52;
      *v51 = 136315138;
      v53 = sub_258DE3018(v88, v46, v100);

      *(v51 + 4) = v53;
      v54 = v50;
      v55 = v90;
      _os_log_impl(&dword_258DD8000, v90, v54, "Invalid codepath_id %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      v56 = v52;
      v38 = v97;
      MEMORY[0x259C9EF40](v56, -1, -1);
      MEMORY[0x259C9EF40](v51, -1, -1);
    }

    else
    {
    }

    LODWORD(v21) = v89;
  }

  else
  {

    sub_258DE2184(v47, &qword_27F988730, &unk_258F0F8E0);
    LODWORD(v21) = v89;
    v38 = v97;
  }

LABEL_48:
  v61 = [objc_opt_self() sharedPreferences];
  v62 = [v61 longLivedIdentifierUploadingEnabled];

  if (!v62)
  {
    goto LABEL_55;
  }

  strcpy(v99, "turn_ids");
  BYTE1(v99[1]) = 0;
  WORD1(v99[1]) = 0;
  HIDWORD(v99[1]) = -402653184;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v63 = sub_258E2EA2C(v100), (v64 & 1) == 0))
  {
    sub_258E0F590(v100);
    goto LABEL_55;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v63, v101);
  sub_258E0F590(v100);
  if (!swift_dynamicCast())
  {
LABEL_55:
    v68 = v38 + *v98;
    v69 = sub_258F0A350();
    v70 = sub_258F0A800();
    if (!os_log_type_enabled(v69, v70))
    {
LABEL_58:

LABEL_59:
      v67 = 0;
      goto LABEL_60;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_258DD8000, v69, v70, "No turnIds found.", v71, 2u);
    v72 = v71;
LABEL_57:
    MEMORY[0x259C9EF40](v72, -1, -1);
    goto LABEL_58;
  }

  v66 = v99[0];
  v65 = v99[1];

  v67 = _s16MetricsFramework15ExtensionsUtilsC13decodeTurnIdsySay10Foundation4UUIDVGSgSSSgFZ_0(v66, v65);

  if (!v67)
  {
    v82 = *v98;

    v69 = sub_258F0A350();
    v83 = sub_258F0A820();

    if (!os_log_type_enabled(v69, v83))
    {

      goto LABEL_59;
    }

    v84 = swift_slowAlloc();
    v89 = v21;
    v21 = v84;
    v85 = swift_slowAlloc();
    v100[0] = v85;
    *v21 = 136315138;
    v86 = sub_258DE3018(v66, v65, v100);

    *(v21 + 4) = v86;
    _os_log_impl(&dword_258DD8000, v69, v83, "Invalid turn_ids %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x259C9EF40](v85, -1, -1);
    v72 = v21;
    LOBYTE(v21) = v89;
    goto LABEL_57;
  }

LABEL_60:
  v73 = HIDWORD(v95);
  *a4 = v96;
  *(a4 + 4) = v21;
  *(a4 + 8) = v73;
  v74 = HIDWORD(v94);
  *(a4 + 12) = v95;
  *(a4 + 16) = v74;
  v75 = HIDWORD(v93);
  *(a4 + 20) = v94;
  *(a4 + 24) = v75;
  *(a4 + 28) = v93;
  *(a4 + 32) = v92;
  *(a4 + 40) = v91;
  *(a4 + 44) = v41;
  v76 = type metadata accessor for CommonDigestElements();
  result = sub_258E2EAD8(v18, a4 + *(v76 + 40), &qword_27F988730, &unk_258F0F8E0);
  *(a4 + *(v76 + 44)) = v67;
  return result;
}

void sub_258E2BACC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31[-1] - v15;
  v17 = sub_258F09A70();
  v18 = *(v17 - 8);
  (*(v18 + 56))(a3, 1, 1, v17);
  strcpy(v31, "treatment_id");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  sub_258F0AA80();
  if (*(a1 + 16) && (v19 = sub_258E2EA2C(v32), (v20 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v19, v33);
    sub_258E0F590(v32);
    if (swift_dynamicCast())
    {
      v21 = v31[1];
      v30 = v31[0];
      sub_258F09A30();
      sub_258DE2184(a3, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v16, a3, &qword_27F988730, &unk_258F0F8E0);
      sub_258DE20C0(a3, v13, &qword_27F988730, &unk_258F0F8E0);
      if ((*(v18 + 48))(v13, 1, v17) != 1)
      {

        sub_258DE2184(v13, &qword_27F988730, &unk_258F0F8E0);
        return;
      }

      sub_258DE2184(v13, &qword_27F988730, &unk_258F0F8E0);
      v22 = *a2;

      v23 = sub_258F0A350();
      v24 = sub_258F0A820();

      if (!os_log_type_enabled(v23, v24))
      {

        return;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v27 = sub_258DE3018(v30, v21, v32);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_258DD8000, v23, v24, "Invalid treatment_id %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C9EF40](v26, -1, -1);
      goto LABEL_10;
    }
  }

  else
  {
    sub_258E0F590(v32);
  }

  v28 = v5 + *a2;
  v23 = sub_258F0A350();
  v29 = sub_258F0A820();
  if (os_log_type_enabled(v23, v29))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_258DD8000, v23, v29, "nil treatmentId", v25, 2u);
LABEL_10:
    MEMORY[0x259C9EF40](v25, -1, -1);
  }
}

uint64_t AssistantDeviceExperimentMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter);

  v4 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService));
  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_biomeResultsFactory);

  return v0;
}

uint64_t AssistantDeviceExperimentMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter);

  v4 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService));
  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_biomeResultsFactory);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E2C1AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E267D0(a1);
}

id sub_258E2C248(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_258E2F4A4();
    v5 = sub_258F0A400();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_258E2C2D4(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x7465737341524941, 0xEE00737574617453, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F90C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_100;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2C52C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000010, 0x8000000258F19A50, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F8E8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_94;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2C77C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A640, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F8C4;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_88;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2C9C8(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x73416F54746F6F42, 0xEB00000000746573, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F8A0;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_82;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2CC1C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000010, 0x8000000258F1A6E0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F468;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_0;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2CE6C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A850, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F87C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_76;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D0BC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A830, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F858;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_70;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D30C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A810, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F834;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_64;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D55C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x72696F504944444FLL, 0xEA0000000000746FLL, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F810;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_58;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D7AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(*v3 + 112);

  v8 = sub_258F0A350();
  v9 = sub_258F0A820();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A7F0, v15);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a1;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_258DE3018(a2, a3, v15);
    _os_log_impl(&dword_258DD8000, v8, v9, "Logging Core Analytics Event from %s with count: %ld, error: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;

  v13 = sub_258F0A4E0();

  v15[4] = sub_258E2F7EC;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_258E2C248;
  v15[3] = &block_descriptor_52;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

void sub_258E2DA04(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A7D0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F7C8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_46;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2DC54(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000022, 0x8000000258F1A7A0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F7A4;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_40;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2DEA4(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x747365676944474FLL, 0xEF7363697274654DLL, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F780;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_34;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2E0FC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A740, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F75C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_28;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2E34C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A720, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F738;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_22;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2E59C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x6C6C6F726E455456, 0xEC000000746E656DLL, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F714;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_16;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t sub_258E2E7F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989530, &unk_258F0FA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0F8B0;
  strcpy((inited + 32), "CalculatorName");
  *(inited + 47) = -18;
  *(inited + 48) = sub_258F0A7D0();
  *(inited + 56) = 0x726F727245;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = sub_258F0A4E0();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000258F1A700;
  *(inited + 96) = sub_258F0A7D0();
  v1 = sub_258DFBE10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989538, &unk_258F149F0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_258E2E920@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_258E2E9B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258F0AE40();
  sub_258F0A5B0();
  v6 = sub_258F0AE90();

  return sub_258E2F0E0(a1, a2, v6);
}

unint64_t sub_258E2EA2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_258F0AA60();

  return sub_258E2F198(a1, v5);
}

uint64_t sub_258E2EA70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_258E2EAD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_258E2EB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExperimentMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E2EBA4(uint64_t a1)
{
  result = sub_258E2F420(&qword_27F9894F8, type metadata accessor for AssistantDeviceExperimentMetricsCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E2EBFC(uint64_t a1)
{
  result = sub_258E2F420(&qword_27F989500, type metadata accessor for AssistantDeviceExperimentMetricsCalculator);
  *(a1 + 8) = result;
  return result;
}

void sub_258E2EC5C()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_258F09B00();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_258DE3B74();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

unint64_t sub_258E2EED8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_258F09A20();
  sub_258E2F420(&qword_27F989518, MEMORY[0x277CC9578]);
  v5 = sub_258F0A440();

  return sub_258E2F260(a1, v5);
}

unint64_t sub_258E2EF70(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_258F0AE40();
  EventMetadata.hash(into:)();
  v4 = sub_258F0AE90();
  return sub_258E2F4F0(a1, v4, type metadata accessor for EventMetadata, type metadata accessor for EventMetadata, _s16MetricsFramework13EventMetadataV2eeoiySbAC_ACtFZ_0, type metadata accessor for EventMetadata);
}

unint64_t sub_258E2F028(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)();
  v4 = sub_258F0AE90();
  return sub_258E2F4F0(a1, v4, type metadata accessor for FunnelEventMetadata, type metadata accessor for FunnelEventMetadata, _s16MetricsFramework19FunnelEventMetadataV2eeoiySbAC_ACtFZ_0, type metadata accessor for FunnelEventMetadata);
}

unint64_t sub_258E2F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_258F0AD80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_258E2F198(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_258DEB85C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C9E330](v9, a1);
      sub_258E0F590(v9);
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

unint64_t sub_258E2F260(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_258E2F420(&qword_27F989520, MEMORY[0x277CC9578]);
      v17 = sub_258F0A4B0();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_258E2F420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258E2F468()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258E2F4A4()
{
  result = qword_27F989528;
  if (!qword_27F989528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F989528);
  }

  return result;
}

unint64_t sub_258E2F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v24 = a6;
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v23 - v15;
  v17 = -1 << *(v6 + 32);
  v18 = a2 & ~v17;
  if ((*(v6 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v14 + 72);
    do
    {
      sub_258E2F64C(*(v6 + 48) + v20 * v18, v16, a4);
      v21 = a5(v16, a1);
      sub_258E2F6B4(v16, v24);
      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
    }

    while (((*(v6 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  return v18;
}

uint64_t sub_258E2F64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E2F6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258E2F714()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F738()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F75C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F780()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F7A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F7C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F7EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F810()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F834()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F858()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F87C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F8A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F8C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F8E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

unint64_t sub_258E2F90C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258E2E7F0();
}

uint64_t sub_258E2F9A8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static BiomeSQLDatabaseUtils.identifySqlError(errorString:)@<X0>(char *a1@<X8>)
{
  sub_258DEF388();
  result = sub_258F0A9A0();
  if (result)
  {
    v3 = 13;
  }

  else
  {
    result = sub_258F0A9A0();
    if (result)
    {
      v3 = 12;
    }

    else
    {
      result = sub_258F0A9A0();
      if (result)
      {
        v3 = 14;
      }

      else
      {
        v3 = 11;
      }
    }
  }

  *a1 = v3;
  return result;
}

uint64_t BootToAssetResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t BootToAssetResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t BootToAssetResults.combinedBootToAssetData.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CombinedBootToAssetData.assetAvailabilityData.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CombinedBootToAssetData.eventMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedBootToAssetData(0) + 20);

  return sub_258DDE438(v3, a1);
}

uint64_t CombinedBootToAssetData.eventMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedBootToAssetData(0) + 20);

  return sub_258DDE4E0(a1, v3);
}

void *BootToAssetCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:oddId:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v51 = a3;
  v47 = a2;
  v49 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v8 = v7;
  v45 = v6;
  v46 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v43 - v16;
  v18 = sub_258F0A370();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18, v21);
  v43 = v19[2];
  v44 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43();
  v23 = v17;
  sub_258DE20C0(a2, v17, &qword_27F988720, &qword_258F0B830);
  (*(v8 + 16))(v12, v53, v6);
  type metadata accessor for BiomeResultsWrapperFactory();
  v48 = swift_allocObject();
  v24 = type metadata accessor for CAAnalyticsEventSubmitter();
  v25 = swift_allocObject();
  v54[3] = v24;
  v54[4] = &off_286A2C648;
  v54[0] = v25;
  v26 = type metadata accessor for BootToAssetCalculator(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v54, v24);
  v31 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v30, v30);
  v33 = (&v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;
  v29[5] = v24;
  v29[6] = &off_286A2C648;
  v29[2] = v35;
  sub_258F09AC0();
  v36 = v44;
  (v43)(v29 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger, v44, v18);
  v37 = v23;
  sub_258DE20C0(v23, v29 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v38 = (v29 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService);
  v38[3] = sub_258F09C20();
  v38[4] = &off_286A2FA30;
  *v38 = v51;
  v39 = v45;
  v40 = v46;
  (*(v46 + 8))(v53, v45);
  sub_258DE2184(v47, &qword_27F988720, &qword_258F0B830);
  v41 = v19[1];
  v41(v49, v18);
  sub_258DE2184(v37, &qword_27F988720, &qword_258F0B830);
  v41(v36, v18);
  (*(v40 + 32))(v29 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId, v50, v39);
  v29[7] = v48;
  *(v29 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_defaults) = v52;
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return v29;
}

uint64_t sub_258E30218(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_258F09A20();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E30310, 0, 0);
}

uint64_t sub_258E30310()
{
  v54 = v0;
  v1 = v0[7];

  v2 = sub_258F0A350();
  v3 = sub_258F0A810();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53[0] = v6;
    *v5 = 136315138;
    sub_258F09A70();
    sub_258E32114(&qword_27F988758, MEMORY[0x277CC95F0]);
    v7 = sub_258F0AD60();
    v9 = sub_258DE3018(v7, v8, v53);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_258DD8000, v2, v3, "SQL calculator invoked: BootToAssetCalculator %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C9EF40](v6, -1, -1);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v10 = v0[11];
  sub_258DE20C0(v0[7] + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, v10, &qword_27F988720, &qword_258F0B830);
  v11 = sub_258F098D0();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_258DE2184(v10, &qword_27F988720, &qword_258F0B830);
  if (v12 == 1)
  {
    sub_258DE1858();
    swift_allocError();
    *v13 = 9;
    swift_willThrow();
    v36 = v0[10];
    v35 = v0[11];

    v37 = v0[1];
  }

  else
  {
    v14 = v0[7];
    sub_258DE0298();
    v15 = v0[7];
    v16 = sub_258DE0450();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
    v17 = *(sub_258F0A190() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_258F0B820;
    v20 = sub_258F0A1B0();
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v22;
    sub_258F0A160();
    v24 = v16;
    v25 = sub_258F0A350();
    v26 = sub_258F0A810();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_258DE3018(0x73416F54746F6F42, 0xEB00000000746573, v53);
      _os_log_impl(&dword_258DD8000, v25, v26, "%s: current date data NOT included for aggregation.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C9EF40](v28, -1, -1);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    v29 = v0[7];
    sub_258F0A050();
    v30 = v24;

    v31 = sub_258F0A010();
    v32 = sub_258F0A040();

    type metadata accessor for BiomeResultsWrapper();
    inited = swift_initStackObject();
    *(inited + 16) = v32;
    v34 = MEMORY[0x259C9E880]();
    sub_258E3093C(inited, v29, v0 + 5, v53);
    v39 = v0[10];
    v40 = v0[8];
    v41 = v0[9];
    v42 = v0[7];
    v51 = v0[6];
    v52 = v0[11];
    objc_autoreleasePoolPop(v34);
    v43 = v53[0];
    sub_258F09BB0();
    v50 = sub_258F09B70();
    v44 = *(v41 + 8);
    v44(v39, v40);
    v45 = sub_258F09B50();
    v46 = MEMORY[0x259C9E880](v45);
    v47 = sub_258E30A70(v43);

    objc_autoreleasePoolPop(v46);
    swift_setDeallocating();
    v48 = *(inited + 16);

    v44(v39, v40);
    v49 = MEMORY[0x277D84F90];
    *v51 = v50;
    v51[1] = v49;
    v51[2] = v47;

    v37 = v0[1];
  }

  return v37();
}

void sub_258E3093C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = sub_258E326F8(*(a1 + 16), a2 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger);
  sub_258DFCF5C(a1, 0);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 2);

      _os_log_impl(&dword_258DD8000, v9, v10, "BootToAssetCalculator query yielded %ld results", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    *a4 = v8;
  }
}

void *sub_258E30A70(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for CombinedBootToAssetData(0);
  v164 = *(v4 - 8);
  v165 = v4;
  v5 = *(v164 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v167 = (&v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = type metadata accessor for EventMetadata(0);
  v8 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163, v9);
  v166 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v168 = &v160 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989588, &qword_258F0FCF0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = (&v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v160 - v22;
  v189 = sub_258F09A20();
  v180 = *(v189 - 8);
  v24 = *(v180 + 64);
  v26 = MEMORY[0x28223BE20](v189, v25);
  v28 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v160 - v31;
  v34 = MEMORY[0x28223BE20](v30, v33);
  v190 = &v160 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v177 = &v160 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v185 = &v160 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v160 - v43;
  if (qword_27F988680 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v188 = qword_280CC6068;
    v182 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_calendar;
    sub_258F09930();
    result = sub_258F099E0();
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v46 <= -1.0)
    {
      goto LABEL_90;
    }

    if (v46 >= 1.84467441e19)
    {
      goto LABEL_91;
    }

    if (!is_mul_ok(v46, 0x3E8uLL))
    {
      goto LABEL_92;
    }

    v181 = v46;
    v174 = v44;
    v186 = v32;
    v187 = v2;
    v172 = v28;
    v184 = v23;
    v207 = MEMORY[0x277D84FA0];
    v206 = sub_258DFBF20(MEMORY[0x277D84F90]);
    v23 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989590, &qword_258F0FCF8);
    sub_258F0A430();
    v44 = v20;
    v179 = v20;
    v2 = v189;
    v32 = v185;
    if (!v23)
    {
LABEL_38:
      v23 = 0;
      v162 = 1000 * v181;
      v84 = v206 + 64;
      v83 = *(v206 + 64);
      v178 = v206;
      v85 = 1 << *(v206 + 32);
      v86 = -1;
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      v28 = v86 & v83;
      v173 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_defaults;
      v161 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId;
      v191 = (v85 + 63) >> 6;
      v185 = (v180 + 16);
      v188 = (v180 + 32);
      v183 = (v180 + 8);
      v175 = "bmitter";
      v176 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger;
      v169 = MEMORY[0x277D84F90];
      v20 = &unk_258F0FD00;
      *&v47 = 67109120;
      v171 = v47;
      *&v47 = 134217984;
      v170 = v47;
      v87 = v186;
      v32 = v187;
      v181 = v206 + 64;
      while (v28)
      {
        v89 = v44;
        v90 = v23;
LABEL_52:
        v93 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v94 = v93 | (v90 << 6);
        v96 = v177;
        v95 = v178;
        v97 = v180;
        (*(v180 + 16))(v177, *(v178 + 48) + *(v180 + 72) * v94, v2);
        v98 = *(*(v95 + 56) + 8 * v94);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989598, &unk_258F0FD00);
        v100 = v2;
        v101 = v99;
        v102 = *(v99 + 48);
        v103 = *(v97 + 32);
        v44 = v89;
        v103(v89, v96, v100);
        *&v89[v102] = v98;
        v104 = v89;
        v20 = &unk_258F0FD00;
        (*(*(v101 - 8) + 56))(v104, 0, 1, v101);

        v87 = v186;
        v32 = v187;
LABEL_53:
        v105 = v184;
        sub_258E325C4(v44, v184);
        v106 = v105;
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989598, v20);
        if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
        {

          (*v183)(v174, v189);

          return v169;
        }

        v108 = *(v106 + *(v107 + 48));
        v109 = v106;
        v2 = v189;
        (*v188)(v190, v109, v189);
        sub_258F09930();
        sub_258F099E0();
        if (v110 > -1.0 && v110 < 1.84467441e19 && v110 == trunc(v110))
        {
          v111 = v110;
          sub_258E32114(&qword_27F989520, MEMORY[0x277CC9578]);
          if ((sub_258F0A4B0() & 1) == 0 || (v112 = *&v32[v173], v113 = sub_258F0A4E0(), v114 = [v112 BOOLForKey_], v113, v114))
          {
            v133 = v108 - 96;
            v134 = *(v108 + 16) + 1;
            do
            {
              if (!--v134)
              {
                v140 = sub_258F09A70();
                (*(*(v140 - 8) + 56))(v168, 1, 1, v140);
                goto LABEL_74;
              }

              v135 = (v133 + 192);
              v136 = *(v133 + 200);
              v133 += 192;
            }

            while (!v136);
            v137 = *v135;
            swift_bridgeObjectRetain_n();
            v138 = v168;
            sub_258F09A30();
            swift_bridgeObjectRelease_n();
            v139 = sub_258F09A70();
            if ((*(*(v139 - 8) + 48))(v138, 1, v139) != 1)
            {
              goto LABEL_77;
            }

LABEL_74:
            v141 = sub_258F0A350();
            v142 = sub_258F0A810();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              *v143 = 0;
              _os_log_impl(&dword_258DD8000, v141, v142, "Calculator: Found no device aggregation Id", v143, 2u);
              MEMORY[0x259C9EF40](v143, -1, -1);
            }

LABEL_77:
            v144 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
            [v144 setStartTimestampInSecondsSince1970_];
            if (v144)
            {
              [v144 setNumberOfSeconds_];
            }

            v145 = sub_258F09A70();
            v146 = *(v145 - 8);
            v147 = v166;
            (*(v146 + 16))(v166, &v32[v161], v145);
            v148 = *(v146 + 56);
            v148(v147, 0, 1, v145);
            v160 = v144;
            v149 = v163;
            sub_258DE20C0(v168, v147 + *(v163 + 20), &qword_27F988730, &unk_258F0F8E0);
            v148(v147 + v149[6], 1, 1, v145);
            v150 = v147 + v149[7];
            *v150 = v162;
            *(v150 + 8) = 0;
            *(v147 + v149[8]) = v160;
            v151 = v147 + v149[9];
            *v151 = 0;
            *(v151 + 8) = 1;
            v152 = v147 + v149[10];
            *v152 = 0;
            *(v152 + 8) = 1;
            v153 = v147 + v149[11];
            *v153 = 0;
            *(v153 + 4) = 1;
            *(v147 + v149[12]) = 2;
            v154 = v167;
            sub_258DDE438(v147, v167 + *(v165 + 20));
            *v154 = v108;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v169 = sub_258DE2814(0, v169[2] + 1, 1, v169);
            }

            v156 = v169[2];
            v155 = v169[3];
            if (v156 >= v155 >> 1)
            {
              v169 = sub_258DE2814(v155 > 1, v156 + 1, 1, v169);
            }

            sub_258DE2128(v166);
            a1 = *v183;
            v157 = v189;
            (*v183)(v87, v189);
            a1(v190, v157);
            v158 = v169;
            v169[2] = v156 + 1;
            v159 = v158 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v156;
            v2 = v157;
            sub_258E32634(v167, v159);
            sub_258DE2184(v168, &qword_27F988730, &unk_258F0F8E0);
            v84 = v181;
            v32 = v187;
            v44 = v179;
            v20 = &unk_258F0FD00;
          }

          else
          {

            v115 = sub_258F0A350();
            v116 = sub_258F0A800();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              *v117 = v171;
              v118 = v20;
              v119 = sub_258F0A4E0();
              v120 = [v112 BOOLForKey_];

              v20 = v118;
              v32 = v187;
              *(v117 + 4) = v120;

              _os_log_impl(&dword_258DD8000, v115, v116, "Skipping b2a execution for current date; AssetMetricsWorker.includeCurrentDateForAggregation: %{BOOL}d", v117, 8u);
              MEMORY[0x259C9EF40](v117, -1, -1);
            }

            else
            {
            }

            a1 = v183;
            v130 = *v183;
            v2 = v189;
            (*v183)(v87, v189);
            v130(v190, v2);
            v44 = v179;
            v84 = v181;
          }
        }

        else
        {

          sub_258F099E0();
          if (v121 > 0.0)
          {
            a1 = v183;
            v88 = *v183;
            (*v183)(v87, v2);
            v88(v190, v2);
            v84 = v181;
          }

          else
          {
            v122 = v87;
            v123 = v172;
            (*v185)(v172, v122, v2);
            v124 = sub_258F0A350();
            a1 = sub_258F0A820();
            if (os_log_type_enabled(v124, a1))
            {
              v125 = swift_slowAlloc();
              *v125 = v170;
              sub_258F099E0();
              v127 = v126;
              v128 = *v183;
              (*v183)(v123, v2);
              *(v125 + 4) = v127;
              _os_log_impl(&dword_258DD8000, v124, a1, "Boot to asset event contains date before 1970 %f", v125, 0xCu);
              v129 = v125;
              v44 = v179;
              MEMORY[0x259C9EF40](v129, -1, -1);

              v87 = v186;
              v128(v186, v2);
              v128(v190, v2);
              v20 = &unk_258F0FD00;
              v84 = v181;
              v32 = v187;
            }

            else
            {

              a1 = v183;
              v132 = *v183;
              (*v183)(v123, v2);
              v87 = v186;
              v132(v186, v2);
              v132(v190, v2);
              v84 = v181;
              v32 = v187;
              v20 = &unk_258F0FD00;
            }
          }
        }
      }

      if (v191 <= (v23 + 1))
      {
        v91 = v23 + 1;
      }

      else
      {
        v91 = v191;
      }

      v92 = v91 - 1;
      while (1)
      {
        v90 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v90 >= v191)
        {
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989598, v20);
          (*(*(v131 - 8) + 56))(v44, 1, 1, v131);
          v28 = 0;
          v23 = v92;
          goto LABEL_53;
        }

        v28 = *(v84 + 8 * v90);
        ++v23;
        if (v28)
        {
          v89 = v44;
          v23 = v90;
          goto LABEL_52;
        }
      }

      __break(1u);
      goto LABEL_86;
    }

    v48 = 0;
    v191 = a1 + 32;
    v183 = (v180 + 8);
    while (1)
    {
      v49 = v191 + 192 * v48;
      v20 = *(v49 + 88);
      if (!v20)
      {
        goto LABEL_9;
      }

      a1 = *(v49 + 80);
      v50 = *(v49 + 88);

      v51 = sub_258F0A4E0();
      v52 = [v188 dateFromString_];

      if (v52)
      {
        break;
      }

      v2 = v189;
LABEL_9:
      if (++v48 == v23)
      {
        goto LABEL_38;
      }
    }

    sub_258F09A00();

    v53 = v207;
    if (*(v207 + 16))
    {
      v54 = *(v207 + 40);
      sub_258F0AE40();
      sub_258F0A5B0();
      v55 = sub_258F0AE90();
      v56 = -1 << *(v53 + 32);
      v57 = v55 & ~v56;
      if ((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = (*(v53 + 48) + 16 * v57);
          v60 = *v59 == a1 && v20 == v59[1];
          if (v60 || (sub_258F0AD80() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v2 = v189;
        (*v183)(v32, v189);

LABEL_37:
        v44 = v179;
        goto LABEL_9;
      }
    }

LABEL_21:
    v28 = 0;
    v2 = MEMORY[0x277D84F90];
LABEL_22:
    v61 = (v191 + 192 * v28);
    v44 = v28;
    while (v44 < v23)
    {
      v62 = v61[9];
      v201 = v61[8];
      v202 = v62;
      v63 = v61[11];
      v203 = v61[10];
      v204 = v63;
      v64 = v61[5];
      v197 = v61[4];
      v198 = v64;
      v65 = v61[7];
      v199 = v61[6];
      v200 = v65;
      v66 = v61[1];
      v193 = *v61;
      v194 = v66;
      v67 = v61[3];
      v195 = v61[2];
      v196 = v67;
      v28 = (v44 + 1);
      if (__OFADD__(v44, 1))
      {
        goto LABEL_87;
      }

      if (*(&v198 + 1) && (v198 == a1 && *(&v198 + 1) == v20 || (sub_258F0AD80() & 1) != 0))
      {
        sub_258E32698(&v193, &v192);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v205 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_258E14D78(0, *(v2 + 16) + 1, 1);
          v2 = v205;
        }

        v70 = *(v2 + 16);
        v69 = *(v2 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_258E14D78((v69 > 1), v70 + 1, 1);
          v2 = v205;
        }

        *(v2 + 16) = v70 + 1;
        v71 = (v2 + 192 * v70);
        v72 = v193;
        v73 = v194;
        v74 = v196;
        v71[4] = v195;
        v71[5] = v74;
        v71[2] = v72;
        v71[3] = v73;
        v75 = v197;
        v76 = v198;
        v77 = v200;
        v71[8] = v199;
        v71[9] = v77;
        v71[6] = v75;
        v71[7] = v76;
        v78 = v201;
        v79 = v202;
        v80 = v204;
        v71[12] = v203;
        v71[13] = v80;
        v71[10] = v78;
        v71[11] = v79;
        v32 = v185;
        if (v28 == v23)
        {
LABEL_35:
          v81 = v206;
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *&v193 = v81;
          sub_258ED751C(v2, v32, v82);
          v206 = v193;
          sub_258E05B1C(&v193, a1, v20);

          v2 = v189;
          (*v183)(v32, v189);
          goto LABEL_37;
        }

        goto LABEL_22;
      }

      ++v44;
      v61 += 12;
      if (v28 == v23)
      {
        goto LABEL_35;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t BootToAssetCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService));
  v4 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t BootToAssetCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService));
  v4 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E31FCC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E30218(a1);
}

unint64_t sub_258E32068()
{
  result = qword_27F989540;
  if (!qword_27F989540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989540);
  }

  return result;
}

uint64_t sub_258E320BC(uint64_t a1)
{
  result = sub_258E32114(&qword_27F989548, type metadata accessor for BootToAssetCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E32114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258E3215C(uint64_t a1)
{
  result = sub_258E32114(&qword_27F989550, type metadata accessor for BootToAssetCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E321B4()
{
  result = qword_27F989558;
  if (!qword_27F989558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989558);
  }

  return result;
}

void sub_258E32240()
{
  sub_258E322C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EventMetadata(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258E322C4()
{
  if (!qword_27F989570)
  {
    v0 = sub_258F0A710();
    if (!v1)
    {
      atomic_store(v0, &qword_27F989570);
    }
  }
}

void sub_258E3231C()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_258F09B00();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_258F09A70();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of BootToAssetCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258E325C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989588, &qword_258F0FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E32634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedBootToAssetData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_258E326F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_258F0A070() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(v4 + 16);
  v10 = MEMORY[0x277D84F90];
  v9(v8, a2, v3);
  while (1)
  {

    sub_258E32D88(v8, v24);
    v33 = v24[8];
    v34 = v24[9];
    v35 = v24[10];
    v36 = v24[11];
    v29 = v24[4];
    v30 = v24[5];
    v31 = v24[6];
    v32 = v24[7];
    v25 = v24[0];
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    if (sub_258E34E74(&v25) != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_258DE26F4(0, *(v10 + 2) + 1, 1, v10);
      }

      v22 = *(v10 + 2);
      v21 = *(v10 + 3);
      if (v22 >= v21 >> 1)
      {
        v10 = sub_258DE26F4((v21 > 1), v22 + 1, 1, v10);
      }

      *(v10 + 2) = v22 + 1;
      v11 = &v10[192 * v22];
      v12 = v25;
      v13 = v26;
      v14 = v28;
      *(v11 + 4) = v27;
      *(v11 + 5) = v14;
      *(v11 + 2) = v12;
      *(v11 + 3) = v13;
      v15 = v29;
      v16 = v30;
      v17 = v32;
      *(v11 + 8) = v31;
      *(v11 + 9) = v17;
      *(v11 + 6) = v15;
      *(v11 + 7) = v16;
      v18 = v33;
      v19 = v34;
      v20 = v36;
      *(v11 + 12) = v35;
      *(v11 + 13) = v20;
      *(v11 + 10) = v18;
      *(v11 + 11) = v19;
    }

    if ((sub_258F0A070() & 1) == 0)
    {
      break;
    }

    v9(v8, a2, v3);
  }

  return v10;
}

uint64_t sub_258E328F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x7954656369766564;
    if (a1 != 10)
    {
      v6 = 0x7465537465737361;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x75706E4969726973;
    v8 = 0x436D6172676F7270;
    if (a1 != 7)
    {
      v8 = 0x75426D6574737973;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    if (a1 != 4)
    {
      v1 = 0x7465537465737361;
    }

    if (a1 == 3)
    {
      v1 = 0xD00000000000002CLL;
    }

    v2 = 0xD000000000000013;
    v3 = 0xD000000000000015;
    if (a1 != 1)
    {
      v3 = 0xD000000000000017;
    }

    if (a1)
    {
      v2 = v3;
    }

    if (a1 <= 2u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258E32AB4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_258E328F4(*a1);
  v5 = v4;
  if (v3 == sub_258E328F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E32B3C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E328F4(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E32BA0()
{
  sub_258E328F4(*v0);
  sub_258F0A5B0();
}

uint64_t sub_258E32BF4()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E328F4(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E32C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258E34E28();
  *a2 = result;
  return result;
}

uint64_t sub_258E32C84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258E328F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_258E32CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258E34E28();
  *a1 = result;
  return result;
}

uint64_t sub_258E32D10(uint64_t a1)
{
  v2 = sub_258E34230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E32D4C(uint64_t a1)
{
  v2 = sub_258E34230();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258E32D88(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v168 = 1;
  v166 = 1;
  v4 = sub_258F0A060();
  if (v4)
  {
    v5 = v4;
    v118 = a2;
    v120 = a1;
    v6 = *(v4 + 16);
    v136 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_258E14BA8(0, v6, 0);
    v7 = v136;
    sub_258EA3354(v5, v5, v134);
    v119 = v5;
    if (v6)
    {

      while (1)
      {
        sub_258EA33C0(&v149);
        if (!*(&v150 + 1))
        {
          break;
        }

        sub_258DE4090(&v152, &v137);
        if (swift_dynamicCast())
        {

          *&v137 = 0;
          *(&v137 + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v137 = 0;
          *(&v137 + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v8 = v137;
        *&v137 = 34;
        *(&v137 + 1) = 0xE100000000000000;
        v9 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v9);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v8, *(&v8 + 1));

        v10 = v137;
        sub_258DE2184(&v149, &qword_27F988DA0, &unk_258F0FFA0);
        v136 = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_258E14BA8((v11 > 1), v12 + 1, 1);
          v7 = v136;
        }

        *(v7 + 16) = v12 + 1;
        *(v7 + 16 * v12 + 32) = v10;
        if (!--v6)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_16:
      sub_258EA33C0(&v126);
      while (*(&v127 + 1))
      {
        v132[0] = v128;
        v132[1] = v129;
        v133 = v130;
        v131[0] = v126;
        v131[1] = v127;
        sub_258DE4090(v132 + 8, &v149);
        if (swift_dynamicCast())
        {

          *&v149 = 0;
          *(&v149 + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v149 = 0;
          *(&v149 + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v23 = v149;
        *&v149 = 34;
        *(&v149 + 1) = 0xE100000000000000;
        v24 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v24);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v23, *(&v23 + 1));

        v25 = v149;
        sub_258DE2184(v131, &qword_27F988DA0, &unk_258F0FFA0);
        v136 = v7;
        v27 = *(v7 + 16);
        v26 = *(v7 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_258E14BA8((v26 > 1), v27 + 1, 1);
          v7 = v136;
        }

        *(v7 + 16) = v27 + 1;
        *(v7 + 16 * v27 + 32) = v25;
        sub_258EA33C0(&v126);
      }

      v124[2] = v134[2];
      v124[3] = v134[3];
      v124[4] = v134[4];
      v125 = v135;
      v124[0] = v134[0];
      v124[1] = v134[1];
      sub_258DE2184(v124, &qword_27F988D98, &qword_258F14070);
      v149 = 0u;
      v150 = 0u;
      v151 = 0;
      v152 = v168;
      *v153 = *v167;
      *&v153[3] = *&v167[3];
      v154 = 0;
      v155 = v166;
      *v156 = *v165;
      *&v156[3] = *&v165[3];
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      sub_258E34A08(&v149);
      sub_258DE2184(&v126, &qword_27F988DA8, &unk_258F0D740);
      *&v137 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
      sub_258E0F5E4(&qword_27F988DB8, &qword_27F988DB0, &unk_258F13940);
      v28 = sub_258F0A490();
      v30 = v29;

      v31 = sub_258F0A350();
      v32 = sub_258F0A810();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v137 = v34;
        *v33 = 136315138;
        v35 = sub_258DE3018(v28, v30, &v137);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_258DD8000, v31, v32, "Boot To Asset query result yielded: \n{%s}", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x259C9EF40](v34, -1, -1);
        MEMORY[0x259C9EF40](v33, -1, -1);
      }

      else
      {
      }

      strcpy(v121, "assetSetId");
      BYTE3(v121[1]) = 0;
      HIDWORD(v121[1]) = -369098752;
      sub_258F0AA80();
      if (*(v119 + 16) && (v36 = sub_258E2EA2C(&v137), (v37 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v36, v121);
        sub_258E0F590(&v137);
        v38 = swift_dynamicCast();
        if (v38)
        {
          v39 = v122;
        }

        else
        {
          v39 = 0;
        }

        if (v38)
        {
          v40 = v123;
        }

        else
        {
          v40 = 0;
        }

        v116 = v40;
        v117 = v39;
      }

      else
      {
        sub_258E0F590(&v137);
        v116 = 0;
        v117 = 0;
      }

      strcpy(v121, "assetSetName");
      BYTE5(v121[1]) = 0;
      HIWORD(v121[1]) = -5120;
      sub_258F0AA80();
      if (*(v119 + 16) && (v41 = sub_258E2EA2C(&v137), (v42 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v41, v121);
        sub_258E0F590(&v137);
        v43 = swift_dynamicCast();
        if (v43)
        {
          v44 = v122;
        }

        else
        {
          v44 = 0;
        }

        if (v43)
        {
          v45 = v123;
        }

        else
        {
          v45 = 0;
        }

        v114 = v45;
        v115 = v44;
      }

      else
      {
        sub_258E0F590(&v137);
        v114 = 0;
        v115 = 0;
      }

      v121[0] = 0xD000000000000017;
      v121[1] = 0x8000000258F18B20;
      sub_258F0AA80();
      if (*(v119 + 16) && (v46 = sub_258E2EA2C(&v137), (v47 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v46, v121);
        sub_258E0F590(&v137);
        v48 = swift_dynamicCast();
        v49 = v122;
        if (!v48)
        {
          v49 = 0;
        }

        v113 = v49;
        v50 = v48 ^ 1;
      }

      else
      {
        sub_258E0F590(&v137);
        v113 = 0;
        v50 = 1;
      }

      v112 = v50;
      v121[0] = 0xD000000000000013;
      v121[1] = 0x8000000258F18690;
      sub_258F0AA80();
      if (*(v119 + 16) && (v51 = sub_258E2EA2C(&v137), (v52 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v51, v121);
        sub_258E0F590(&v137);
        v53 = swift_dynamicCast();
        if (v53)
        {
          v54 = v122;
        }

        else
        {
          v54 = 0;
        }

        if (v53)
        {
          v55 = v123;
        }

        else
        {
          v55 = 0;
        }

        v110 = v55;
        v111 = v54;
      }

      else
      {
        sub_258E0F590(&v137);
        v110 = 0;
        v111 = 0;
      }

      strcpy(v121, "eventDate");
      WORD1(v121[1]) = 0;
      HIDWORD(v121[1]) = -385875968;
      sub_258F0AA80();
      if (*(v119 + 16) && (v56 = sub_258E2EA2C(&v137), (v57 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v56, v121);
        sub_258E0F590(&v137);
        v58 = swift_dynamicCast();
        if (v58)
        {
          v59 = v122;
        }

        else
        {
          v59 = 0;
        }

        if (v58)
        {
          v60 = v123;
        }

        else
        {
          v60 = 0;
        }

        v108 = v60;
        v109 = v59;
      }

      else
      {
        sub_258E0F590(&v137);
        v108 = 0;
        v109 = 0;
      }

      v121[0] = 0xD000000000000015;
      v121[1] = 0x8000000258F186C0;
      sub_258F0AA80();
      if (*(v119 + 16) && (v61 = sub_258E2EA2C(&v137), (v62 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v61, v121);
        sub_258E0F590(&v137);
        v63 = swift_dynamicCast();
        if (v63)
        {
          v64 = v122;
        }

        else
        {
          v64 = 0;
        }

        if (v63)
        {
          v65 = v123;
        }

        else
        {
          v65 = 0;
        }

        v106 = v65;
        v107 = v64;
      }

      else
      {
        sub_258E0F590(&v137);
        v106 = 0;
        v107 = 0;
      }

      v121[0] = 0x75706E4969726973;
      v121[1] = 0xEF656C61636F4C74;
      sub_258F0AA80();
      if (*(v119 + 16) && (v66 = sub_258E2EA2C(&v137), (v67 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v66, v121);
        sub_258E0F590(&v137);
        v68 = swift_dynamicCast();
        if (v68)
        {
          v69 = v122;
        }

        else
        {
          v69 = 0;
        }

        if (v68)
        {
          v70 = v123;
        }

        else
        {
          v70 = 0;
        }

        v104 = v70;
        v105 = v69;
      }

      else
      {
        sub_258E0F590(&v137);
        v104 = 0;
        v105 = 0;
      }

      strcpy(v121, "programCode");
      HIDWORD(v121[1]) = -352321536;
      sub_258F0AA80();
      if (*(v119 + 16) && (v71 = sub_258E2EA2C(&v137), (v72 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v71, v121);
        sub_258E0F590(&v137);
        v73 = swift_dynamicCast();
        if (v73)
        {
          v74 = v122;
        }

        else
        {
          v74 = 0;
        }

        if (v73)
        {
          v75 = v123;
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v137);
        v74 = 0;
        v75 = 0;
      }

      strcpy(v121, "systemBuild");
      HIDWORD(v121[1]) = -352321536;
      sub_258F0AA80();
      if (*(v119 + 16) && (v76 = sub_258E2EA2C(&v137), (v77 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v76, v121);
        sub_258E0F590(&v137);
        v78 = swift_dynamicCast();
        if (v78)
        {
          v79 = v122;
        }

        else
        {
          v79 = 0;
        }

        if (v78)
        {
          v80 = v123;
        }

        else
        {
          v80 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v137);
        v79 = 0;
        v80 = 0;
      }

      strcpy(v121, "deviceType");
      BYTE3(v121[1]) = 0;
      HIDWORD(v121[1]) = -369098752;
      sub_258F0AA80();
      if (*(v119 + 16) && (v81 = sub_258E2EA2C(&v137), (v82 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v81, v121);
        sub_258E0F590(&v137);
        v83 = swift_dynamicCast();
        if (v83)
        {
          v84 = v122;
        }

        else
        {
          v84 = 0;
        }

        if (v83)
        {
          v85 = v123;
        }

        else
        {
          v85 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v137);
        v84 = 0;
        v85 = 0;
      }

      v121[0] = 0xD000000000000013;
      v121[1] = 0x8000000258F18A80;
      sub_258F0AA80();
      if (*(v119 + 16) && (v86 = sub_258E2EA2C(&v137), (v87 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v86, v121);
        sub_258E0F590(&v137);
        v88 = swift_dynamicCast();
        if (v88)
        {
          v89 = v122;
        }

        else
        {
          v89 = 0;
        }

        if (v88)
        {
          v90 = v123;
        }

        else
        {
          v90 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v137);
        v89 = 0;
        v90 = 0;
      }

      *&v137 = 0xD00000000000002CLL;
      *(&v137 + 1) = 0x8000000258F18A50;
      sub_258F0AA80();
      if (*(v119 + 16) && (v91 = sub_258E2EA2C(v121), (v92 & 1) != 0))
      {
        sub_258DE4090(*(v119 + 56) + 32 * v91, &v122);

        v93 = sub_258F0A370();
        (*(*(v93 - 8) + 8))(v120, v93);
        sub_258E0F590(v121);

        v94 = swift_dynamicCast();
        v95 = v137;
        if (!v94)
        {
          v95 = 0;
        }

        v96 = v94 ^ 1;
      }

      else
      {

        v97 = sub_258F0A370();
        (*(*(v97 - 8) + 8))(v120, v97);
        sub_258E0F590(v121);
        v95 = 0;
        v96 = 1;
      }

      *&v137 = v117;
      *(&v137 + 1) = v116;
      *&v138 = v115;
      *(&v138 + 1) = v114;
      *&v139 = v113;
      BYTE8(v139) = v112;
      *(&v139 + 9) = *v167;
      HIDWORD(v139) = *&v167[3];
      *&v140 = v95;
      BYTE8(v140) = v96;
      HIDWORD(v140) = *&v165[3];
      *(&v140 + 9) = *v165;
      *&v141 = v111;
      *(&v141 + 1) = v110;
      *&v142 = v109;
      *(&v142 + 1) = v108;
      *&v143 = v89;
      *(&v143 + 1) = v90;
      *&v144 = v107;
      *(&v144 + 1) = v106;
      *&v145 = v105;
      *(&v145 + 1) = v104;
      *&v146 = v74;
      *(&v146 + 1) = v75;
      *&v147 = v79;
      *(&v147 + 1) = v80;
      *&v148 = v84;
      *(&v148 + 1) = v85;
      nullsub_1(&v137);
      v98 = v146;
      v118[8] = v145;
      v118[9] = v98;
      v99 = v148;
      v118[10] = v147;
      v118[11] = v99;
      v100 = v142;
      v118[4] = v141;
      v118[5] = v100;
      v101 = v144;
      v118[6] = v143;
      v118[7] = v101;
      v102 = v138;
      *v118 = v137;
      v118[1] = v102;
      v103 = v140;
      v118[2] = v139;
      v118[3] = v103;
    }
  }

  else
  {
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v152 = v168;
    v154 = 0;
    v155 = v166;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    sub_258E34A08(&v149);
    v13 = sub_258F0A350();
    v14 = sub_258F0A840();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "failed to get row", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    v16 = sub_258F0A370();
    (*(*(v16 - 8) + 8))(a1, v16);
    sub_258E34E98(&v137);
    v17 = v146;
    a2[8] = v145;
    a2[9] = v17;
    v18 = v148;
    a2[10] = v147;
    a2[11] = v18;
    v19 = v142;
    a2[4] = v141;
    a2[5] = v19;
    v20 = v144;
    a2[6] = v143;
    a2[7] = v20;
    v21 = v138;
    *a2 = v137;
    a2[1] = v21;
    v22 = v140;
    a2[2] = v139;
    a2[3] = v22;
  }
}

uint64_t BootToAssetData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9895A0, &qword_258F0FD20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v24 - v7;
  v9 = *(v1 + 8);
  v24[1] = *v1;
  v24[2] = v9;
  v10 = *(v1 + 24);
  v24[13] = *(v1 + 16);
  v24[14] = v10;
  v11 = *(v1 + 32);
  v27 = *(v1 + 40);
  v26 = *(v1 + 48);
  v25 = *(v1 + 56);
  v12 = *(v1 + 72);
  v24[5] = *(v1 + 64);
  v24[6] = v12;
  v13 = *(v1 + 80);
  v24[15] = *(v1 + 88);
  v24[16] = v13;
  v14 = *(v1 + 96);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  v30 = *(v1 + 112);
  v28 = v11;
  v29 = v16;
  v17 = *(v1 + 136);
  v24[11] = *(v1 + 128);
  v24[12] = v17;
  v18 = *(v1 + 152);
  v24[9] = *(v1 + 144);
  v24[10] = v18;
  v19 = *(v1 + 168);
  v24[7] = *(v1 + 160);
  v24[8] = v19;
  v20 = *(v1 + 184);
  v24[3] = *(v1 + 176);
  v24[4] = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E34230();
  sub_258F0AEE0();
  v43 = 0;
  v22 = v31;
  sub_258F0ACA0();
  if (!v22)
  {
    v42 = 1;
    sub_258F0ACA0();
    v41 = 2;
    sub_258F0ACC0();
    v31 = v4;
    v40 = 3;
    sub_258F0ACF0();
    v39 = 4;
    sub_258F0ACA0();
    v38 = 5;
    sub_258F0ACA0();
    v37 = 6;
    sub_258F0ACA0();
    v36 = 7;
    sub_258F0ACA0();
    v35 = 8;
    sub_258F0ACA0();
    v34 = 9;
    sub_258F0ACA0();
    v33 = 10;
    sub_258F0ACA0();
    v32 = 11;
    sub_258F0ACA0();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_258E34230()
{
  result = qword_27F9895A8;
  if (!qword_27F9895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895A8);
  }

  return result;
}

uint64_t BootToAssetData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9895B0, &qword_258F0FD28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v93 = 1;
  v91 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_258E34230();
  sub_258F0AED0();
  if (v2)
  {
    v94 = v2;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0;
    v51 = 0uLL;
    v58 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v72 = 0;
    v73 = 0;
    v74 = 0uLL;
    v75 = 0;
    v76 = v93;
    *v77 = *v92;
    *&v77[3] = *&v92[3];
    v78 = 0;
    v79 = v91;
    *v80 = *v90;
    *&v80[3] = *&v90[3];
    v81 = v58;
    v82 = v51;
    v83 = 0uLL;
    v84 = 0;
    v85 = v53;
  }

  else
  {
    LOBYTE(v72) = 0;
    *&v50 = sub_258F0ABF0();
    *(&v50 + 1) = v14;
    LOBYTE(v72) = 1;
    v49 = sub_258F0ABF0();
    v53 = v15;
    LOBYTE(v72) = 2;
    v48 = sub_258F0AC10();
    v93 = v16 & 1;
    LOBYTE(v72) = 3;
    v47 = sub_258F0AC40();
    v91 = v17 & 1;
    LOBYTE(v72) = 4;
    *&v51 = sub_258F0ABF0();
    *(&v51 + 1) = v18;
    LOBYTE(v72) = 5;
    *&v46 = sub_258F0ABF0();
    *(&v46 + 1) = v19;
    LOBYTE(v72) = 6;
    *&v56 = sub_258F0ABF0();
    *(&v56 + 1) = v20;
    LOBYTE(v72) = 7;
    *&v55 = sub_258F0ABF0();
    *(&v55 + 1) = v21;
    LOBYTE(v72) = 8;
    v22 = sub_258F0ABF0();
    v94 = 0;
    *&v54 = v22;
    *(&v54 + 1) = v23;
    LOBYTE(v72) = 9;
    *&v58 = sub_258F0ABF0();
    *(&v58 + 1) = v24;
    v94 = 0;
    LOBYTE(v72) = 10;
    *&v57 = sub_258F0ABF0();
    *(&v57 + 1) = v25;
    v94 = 0;
    v71 = 11;
    v26 = sub_258F0ABF0();
    v94 = 0;
    v27 = v26;
    v29 = v28;
    (*(v6 + 8))(v10, v5);
    *&v59 = v27;
    *(&v59 + 1) = v29;
    v45 = v29;
    v60 = v46;
    *&v61 = v48;
    v44 = v93;
    BYTE8(v61) = v93;
    *&v62 = v47;
    v43 = v91;
    BYTE8(v62) = v91;
    v63 = v58;
    v30 = v51;
    v64 = v51;
    v31 = v50;
    v65 = v50;
    v32 = v49;
    v33 = v53;
    *&v66 = v49;
    *(&v66 + 1) = v53;
    v67 = v56;
    v68 = v55;
    v69 = v54;
    v70 = v57;
    v34 = v58;
    v35 = v51;
    v36 = v66;
    a2[6] = v50;
    a2[7] = v36;
    a2[4] = v34;
    a2[5] = v35;
    v37 = v59;
    v38 = v60;
    v39 = v62;
    a2[2] = v61;
    a2[3] = v39;
    *a2 = v37;
    a2[1] = v38;
    v40 = v67;
    v41 = v68;
    v42 = v70;
    a2[10] = v69;
    a2[11] = v42;
    a2[8] = v40;
    a2[9] = v41;
    sub_258E32698(&v59, &v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v72 = v27;
    v73 = v45;
    v74 = v46;
    v75 = v48;
    v76 = v44;
    v78 = v47;
    v79 = v43;
    v81 = v58;
    v82 = v30;
    v83 = v31;
    v84 = v32;
    v85 = v33;
  }

  v86 = v56;
  v87 = v55;
  v88 = v54;
  v89 = v57;
  return sub_258E34A08(&v72);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_258E34A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258E34AF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BootToAssetData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BootToAssetData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E34D24()
{
  result = qword_27F9895C8;
  if (!qword_27F9895C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895C8);
  }

  return result;
}

unint64_t sub_258E34D7C()
{
  result = qword_27F9895D0;
  if (!qword_27F9895D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895D0);
  }

  return result;
}

unint64_t sub_258E34DD4()
{
  result = qword_27F9895D8;
  if (!qword_27F9895D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895D8);
  }

  return result;
}

uint64_t sub_258E34E28()
{
  v0 = sub_258F0ABE0();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_258E34E74(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_258E34E98(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_258F0FD10;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

uint64_t sub_258E34EF4()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework23BootToAssetDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDAssetAvailabilityFromBoodDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258E34FD4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BootToAssetDataProvider()
{
  result = qword_27F9895E8;
  if (!qword_27F9895E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E350C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E34ED4();
}

uint64_t BootToAssetMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  BootToAssetMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_258E351C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BootToAssetCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *BootToAssetMetrics.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v135 = a4;
  v136 = a3;
  v140 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v125 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v132 = &v113 - v11;
  v119 = sub_258F09B00();
  v118 = *(v119 - 1);
  v12 = *(v118 + 64);
  MEMORY[0x28223BE20](v119, v13);
  v116 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_258F09A20();
  v115 = *(v117 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x28223BE20](v117, v16);
  v114 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258F09A70();
  v141 = *(v18 - 8);
  v19 = *(v141 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v130 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v113 - v24;
  v26 = sub_258F0A370();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v30 = MEMORY[0x28223BE20](v26, v29);
  v128 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v133 = &v113 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v113 - v36;
  v38 = v27[2];
  v38(&v113 - v36, a2, v26);
  v39 = type metadata accessor for BootToAssetDataProvider();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v139 = v27;
  v43 = v27[4];
  v131 = v37;
  v44 = v37;
  v45 = v26;
  v124 = v27 + 4;
  v123 = v43;
  v43(v42 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetDataProvider_logger, v44, v26);
  v46 = v148;
  v148[3] = v42;
  v126 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger;
  v47 = v46;
  v38(v46 + OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger, a2, v45);
  sub_258F09A60();
  v48 = *(v141 + 32);
  v134 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId;
  v129 = v25;
  v137 = v18;
  v121 = v141 + 32;
  v120 = v48;
  v48(v47 + OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId, v25, v18);
  v49 = (v47 + OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_fbfBundleId);
  v50 = v135;
  *v49 = v136;
  v49[1] = v50;
  v136 = v49;
  v51 = sub_258F0A1F0();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = v140;
  v55 = sub_258F0A1E0();
  v146 = v51;
  v147 = MEMORY[0x277D04548];
  v145 = v55;
  v140 = a2;
  v122 = v27 + 2;
  v127 = v38;
  v38(v133, a2, v45);
  v56 = sub_258F09C20();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = v138;
  v60 = sub_258F09BE0();
  v138 = v59;
  if (v59)
  {
    v61 = *(v139 + 1);
    v61(v140, v45);

    v62 = v148;
    v63 = v148[3];

    v61(v126 + v62, v45);
    (*(v141 + 8))(&v134[v62], v137);
    v64 = v136[1];

    type metadata accessor for BootToAssetMetrics();
    v65 = *(*v62 + 48);
    v66 = *(*v62 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v67 = v60;
    v68 = v114;
    sub_258F0A090();
    v69 = v116;
    sub_258F09AC0();
    v135 = v67;
    sub_258F09C10();
    (*(v118 + 8))(v69, v119);
    (*(v115 + 8))(v68, v117);
    v70 = v131;
    v71 = v127;
    v127(v131, v140, v45);
    v72 = v71;
    v126 = *(v141 + 16);
    v133 = v56;
    v73 = v129;
    v74 = v137;
    v126();
    v134 = v54;

    v75 = v132;
    sub_258E351C4(v132);
    v72(v128, v70, v45);
    v76 = v125;
    sub_258DECF90(v75, v125);
    (v126)(v130, v73, v74);
    type metadata accessor for BiomeResultsWrapperFactory();
    v126 = swift_allocObject();
    v77 = type metadata accessor for CAAnalyticsEventSubmitter();
    v78 = swift_allocObject();
    v146 = v77;
    v147 = &off_286A2C648;
    v145 = v78;
    v79 = type metadata accessor for BootToAssetCalculator(0);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    v82 = swift_allocObject();
    v83 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v77);
    v119 = &v113;
    v84 = *(*(v77 - 8) + 64);
    MEMORY[0x28223BE20](v83, v83);
    v86 = (&v113 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))(v86);
    v88 = *v86;
    v143 = v77;
    v144 = &off_286A2C648;
    *&v142 = v88;
    sub_258F09AC0();
    v89 = v128;
    v90 = v127;
    v127((v82 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger), v128, v45);
    sub_258DECF90(v76, v82 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL);
    v91 = (v82 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService);
    v91[3] = v133;
    v91[4] = &off_286A2FA30;
    *v91 = v135;
    sub_258DED000(v76);
    v92 = *(v139 + 1);
    v92(v89, v45);
    v139 = v92;
    sub_258DED000(v132);
    (*(v141 + 8))(v129, v74);
    v93 = v131;
    v92(v131, v45);
    v120(v82 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId, v130, v74);
    *(v82 + 56) = v126;
    sub_258DEE384(&v142, v82 + 16);
    *(v82 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_defaults) = v134;
    __swift_destroy_boxed_opaque_existential_1Tm(&v145);
    v148[4] = v82;
    v94 = v140;
    v90(v93, v140, v45);
    v96 = *v136;
    v95 = v136[1];

    v97 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v96, v95);
    v98 = type metadata accessor for BootToAssetSELFReporter();
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    v101 = swift_allocObject();
    v102 = (v101 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService);
    v102[3] = type metadata accessor for SELFReportingService();
    v102[4] = &protocol witness table for SELFReportingService;
    *v102 = v97;
    v123(v101 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger, v93, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_258F0CA20;
    *(v103 + 32) = v101;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989610, &qword_258F10070);
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();

    v145 = sub_258F09BA0();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989618, qword_258F10078);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    v110 = sub_258F09BC0();

    v139(v94, v45);
    v111 = v148;
    v148[2] = v110;
    return v111;
  }

  return v62;
}

uint64_t type metadata accessor for BootToAssetMetrics()
{
  result = qword_27F989638;
  if (!qword_27F989638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E35E8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E35EAC, 0, 0);
}

uint64_t sub_258E35EAC()
{
  v1 = *(v0[3] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E34ED4();
}

uint64_t sub_258E35F48(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_258E35F68, 0, 0);
}

uint64_t sub_258E35F68()
{
  v1 = *(*(v0 + 48) + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_258E36004;

  return sub_258E30218(v0 + 16);
}

uint64_t sub_258E36004()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_258E36B44;
  }

  else
  {
    v3 = sub_258E36B40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *BootToAssetMetrics.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_fbfBundleId + 8];

  return v0;
}

uint64_t BootToAssetMetrics.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_fbfBundleId + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E362EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E36310, 0, 0);
}

uint64_t sub_258E36310()
{
  v1 = *(v0[3] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258E34ED4();
}

uint64_t sub_258E363AC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_258E363D0, 0, 0);
}

uint64_t sub_258E363D0()
{
  v1 = *(*(v0 + 48) + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_258E3646C;

  return sub_258E30218(v0 + 16);
}

uint64_t sub_258E3646C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_258E365A8;
  }

  else
  {
    v3 = sub_258E36580;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E36580()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_258E3665C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BootToAssetMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258E366A8()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of BootToAssetMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of BootToAssetMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of BootToAssetMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258E36C04(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of BootToAssetReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t BootToAssetSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E3886C(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t BootToAssetSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258E385E0(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258E36FE8(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = sub_258F0A370();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = type metadata accessor for CombinedBootToAssetData(0);
  *(v2 + 48) = v7;
  v8 = *(v7 - 8);
  *(v2 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = *a1;
  *(v2 + 96) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258E37124, 0, 0);
}

void sub_258E37124()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  v0[13] = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;

  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v8 + 16);

    _os_log_impl(&dword_258DD8000, v5, v6, "BootToAssetSelfReporter reporting results for %ld days", v11, 0xCu);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
    v12 = v0[10];
  }

  v13 = v0[12];
  v14 = v0[2];
  v15 = *(v13 + 16);
  v16 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService;
  v0[14] = v15;
  v0[15] = v16;
  if (v15)
  {
    v17 = v0[7];
    v18 = v0[4];
    v0[16] = 0;
    if (!*(v13 + 16))
    {
      __break(1u);
      return;
    }

    v19 = v0[13];
    v20 = v0[8];
    v21 = v0[9];
    v22 = v0[5];
    v23 = v0[3];
    sub_258E3896C(v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v21);
    sub_258DEB8C8(0, &qword_27F989658, 0x277D591D0);
    sub_258E3896C(v21, v20);
    (*(v18 + 16))(v22, v14 + v19, v23);
    v24 = sub_258E37B5C(v20, v22);
    v0[17] = v24;
    v25 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[18] = v25;
    if (v25)
    {
      v26 = v0[13];
      v27 = v0[9];
      v28 = v0[6];
      v29 = v0[2];
      v30 = (v29 + v0[15]);
      v31 = v25;
      [v25 setAssetAvailabilityFromBootDigestReported_];
      v32 = v27 + *(v28 + 20);
      v33 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v31 setEventMetadata_];

      v34 = v30[3];
      v35 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v34);
      v36 = *(v35 + 8);
      v49 = (v36 + *v36);
      v37 = v36[1];
      v38 = swift_task_alloc();
      v0[19] = v38;
      *v38 = v0;
      v38[1] = sub_258E37584;

      v49(v31, v29 + v26, v34, v35);
      return;
    }

    v39 = v0[2] + v0[13];
    v40 = sub_258F0A350();
    v41 = sub_258F0A820();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_258DD8000, v40, v41, "Failed to generate event for reporting asset availability from boot", v42, 2u);
      MEMORY[0x259C9EF40](v42, -1, -1);
      v43 = v24;
    }

    else
    {
      v43 = v40;
      v40 = v24;
    }

    v44 = v0[9];

    sub_258E389D0(v44);
  }

  v46 = v0[8];
  v45 = v0[9];
  v47 = v0[5];

  v48 = v0[1];

  v48();
}

uint64_t sub_258E37584()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_258E37A34;
  }

  else
  {
    v3 = sub_258E37698;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E37698()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);

  result = sub_258E389D0(v4);
  if (v2 + 1 != v3)
  {
    v6 = *(v0 + 128) + 1;
    *(v0 + 128) = v6;
    v7 = *(v0 + 96);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v0 + 104);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_258E3896C(v7 + ((*(*(v0 + 56) + 80) + 32) & ~*(*(v0 + 56) + 80)) + *(*(v0 + 56) + 72) * v6, v10);
    sub_258DEB8C8(0, &qword_27F989658, 0x277D591D0);
    sub_258E3896C(v10, v9);
    (*(v12 + 16))(v11, v14 + v8, v13);
    v15 = sub_258E37B5C(v9, v11);
    *(v0 + 136) = v15;
    v16 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    *(v0 + 144) = v16;
    if (v16)
    {
      v17 = *(v0 + 104);
      v18 = *(v0 + 72);
      v19 = *(v0 + 48);
      v20 = *(v0 + 16);
      v21 = (v20 + *(v0 + 120));
      v22 = v16;
      [v16 setAssetAvailabilityFromBootDigestReported_];
      v23 = v18 + *(v19 + 20);
      v24 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v22 setEventMetadata_];

      v25 = v21[3];
      v26 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v25);
      v27 = *(v26 + 8);
      v40 = (v27 + *v27);
      v28 = v27[1];
      v29 = swift_task_alloc();
      *(v0 + 152) = v29;
      *v29 = v0;
      v29[1] = sub_258E37584;

      return v40(v22, v20 + v17, v25, v26);
    }

    v30 = *(v0 + 16) + *(v0 + 104);
    v31 = sub_258F0A350();
    v32 = sub_258F0A820();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_258DD8000, v31, v32, "Failed to generate event for reporting asset availability from boot", v33, 2u);
      MEMORY[0x259C9EF40](v33, -1, -1);
      v34 = v15;
    }

    else
    {
      v34 = v31;
      v31 = v15;
    }

    v35 = *(v0 + 72);

    sub_258E389D0(v35);
  }

  v37 = *(v0 + 64);
  v36 = *(v0 + 72);
  v38 = *(v0 + 40);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_258E37A34()
{
  v1 = v0[2] + v0[13];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Failed to report A2B event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[5];

  swift_willThrow();
  sub_258E389D0(v8);

  v11 = v0[1];
  v12 = v0[20];

  return v11();
}

id *sub_258E37B5C(uint64_t a1, uint64_t a2)
{
  v3 = &selRef_setSampledErrorAsset_;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_55;
  }

  v5 = result;
  v62 = a1;
  v67 = *a1;
  v6 = *(*a1 + 16);
  v7 = MEMORY[0x277D84F90];
  v64 = result;
  if (v6)
  {
    v82 = MEMORY[0x277D84F90];
    v8 = result;
    sub_258F0AB40();
    if (*(v67 + 16))
    {
      v9 = 0;
      v10 = (v67 + 32);
      v11 = v6 - 1;
      v12 = &unk_27F989670;
      v13 = 0x277D59000uLL;
      v65 = v6 - 1;
      do
      {
        v14 = *v10;
        v15 = v10[1];
        v16 = v10[3];
        v72 = v10[2];
        v73 = v16;
        v70 = v14;
        v71 = v15;
        v17 = v10[4];
        v18 = v10[5];
        v19 = v10[7];
        v76 = v10[6];
        v77 = v19;
        v74 = v17;
        v75 = v18;
        v20 = v10[8];
        v21 = v10[9];
        v22 = v10[11];
        v80 = v10[10];
        v81 = v22;
        v78 = v20;
        v79 = v21;
        v23 = objc_allocWithZone(*(v13 + 456));
        sub_258E32698(&v70, v69);
        sub_258E32698(&v70, v69);
        result = [v23 v3[10]];
        if (!result)
        {
          goto LABEL_54;
        }

        v24 = result;
        sub_258DEB8C8(0, v12, 0x277D591D8);
        v69[8] = v78;
        v69[9] = v79;
        v69[10] = v80;
        v69[11] = v81;
        v69[4] = v74;
        v69[5] = v75;
        v69[6] = v76;
        v69[7] = v77;
        v69[0] = v70;
        v69[1] = v71;
        v69[2] = v72;
        v69[3] = v73;
        sub_258E32698(&v70, &v68);
        v25 = v24;
        v26 = sub_258E3841C(v69);
        [v25 setDimensions_];

        result = [objc_allocWithZone(MEMORY[0x277D591E0]) v3[10]];
        if (!result)
        {
          goto LABEL_53;
        }

        v27 = result;
        sub_258E34A08(&v70);
        if ((BYTE8(v72) & 1) == 0)
        {
          v28 = *&v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_258F0CA20;
          *(v29 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
          v30 = v13;
          v31 = v3;
          v32 = v12;
          v33 = sub_258F0A6A0();

          [v27 setBootToAssetDeliveryInMs_];

          v12 = v32;
          v3 = v31;
          v13 = v30;
          v11 = v65;
        }

        [v25 setTuples_];

        sub_258E34A08(&v70);
        sub_258F0AB20();
        v34 = *(v82 + 16);
        sub_258F0AB50();
        sub_258F0AB60();
        sub_258F0AB30();
        if (v11 == v9)
        {
          goto LABEL_12;
        }

        v10 += 12;
      }

      while (++v9 < *(v67 + 16));
    }

    __break(1u);
LABEL_12:
    v5 = v64;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v35 = result;
  }

  sub_258DEB8C8(0, &qword_27F989678, 0x277D591C8);
  v36 = sub_258F0A6A0();

  [v5 setDigests_];

  v68 = v7;
  v37 = *(v67 + 16);
  if (!v37)
  {
    v66 = v7;
    goto LABEL_41;
  }

  v38 = 0;
  v39 = v67 + 32;
  v66 = MEMORY[0x277D84F90];
  do
  {
    v40 = (v39 + 192 * v38);
    v41 = v38;
    while (1)
    {
      if (v41 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v42 = *v40;
      v43 = v40[1];
      v44 = v40[3];
      v72 = v40[2];
      v73 = v44;
      v70 = v42;
      v71 = v43;
      v45 = v40[4];
      v46 = v40[5];
      v47 = v40[7];
      v76 = v40[6];
      v77 = v47;
      v74 = v45;
      v75 = v46;
      v48 = v40[8];
      v49 = v40[9];
      v50 = v40[11];
      v80 = v40[10];
      v81 = v50;
      v78 = v48;
      v79 = v49;
      if (*(&v50 + 1))
      {
        if (*(&v79 + 1))
        {
          break;
        }
      }

LABEL_18:
      ++v41;
      v40 += 12;
      if (v37 == v41)
      {
        goto LABEL_41;
      }
    }

    v5 = objc_allocWithZone(MEMORY[0x277D59350]);
    sub_258E32698(&v70, v69);

    v51 = [v5 v3[10]];
    if (!v51)
    {
      sub_258E34A08(&v70);

      goto LABEL_18;
    }

    v5 = v51;
    v52 = sub_258F0A4E0();

    [v5 setDeviceType_];

    v53 = sub_258F0A4E0();

    v54 = v53;
    if ([v54 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v55 = 0;
      v39 = v67 + 32;
    }

    else
    {
      v39 = v67 + 32;
      if ([v54 isEqualToString:@"PROGRAMCODE_IOS"])
      {
        v55 = 1;
      }

      else if ([v54 isEqualToString:@"PROGRAMCODE_MACOS"])
      {
        v55 = 2;
      }

      else if ([v54 isEqualToString:@"PROGRAMCODE_TVOS"])
      {
        v55 = 3;
      }

      else if ([v54 isEqualToString:@"PROGRAMCODE_WATCHOS"])
      {
        v55 = 4;
      }

      else if ([v54 isEqualToString:@"PROGRAMCODE_VISIONOS"])
      {
        v55 = 5;
      }

      else
      {
        v55 = 0;
      }
    }

    [v5 setProgramCode_];
    v56 = sub_258E34A08(&v70);
    MEMORY[0x259C9DF50](v56);
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v57 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    v38 = v41 + 1;
    sub_258F0A700();
    v66 = v68;
  }

  while (v37 - 1 != v41);
LABEL_41:
  v5 = v66;
  if (v66 >> 62)
  {
LABEL_48:
    result = sub_258F0AA20();
    v58 = v64;
    if (!result)
    {
      goto LABEL_49;
    }

LABEL_43:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x259C9E3B0](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      v59 = *(v5 + 32);
    }

    v60 = v59;
    goto LABEL_50;
  }

  result = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v58 = v64;
  if (result)
  {
    goto LABEL_43;
  }

LABEL_49:
  v60 = 0;
LABEL_50:

  [v58 setFixedDimensions_];

  v61 = sub_258F0A370();
  (*(*(v61 - 8) + 8))(a2, v61);
  sub_258E389D0(v62);
  return v58;
}

uint64_t sub_258E38264()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService);

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t BootToAssetSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService));
  return v0;
}

uint64_t BootToAssetSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_258E3841C(__int128 *a1)
{
  v2 = a1[9];
  v24 = a1[8];
  v25 = v2;
  v3 = a1[11];
  v26 = a1[10];
  v27 = v3;
  v4 = a1[5];
  v20 = a1[4];
  v21 = v4;
  v5 = a1[7];
  v22 = a1[6];
  v23 = v5;
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v7 = a1[3];
  v18 = a1[2];
  v19 = v7;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    v28 = *a1;
    v10 = *(&v28 + 1);
    v11 = result;
    if (*(&v28 + 1))
    {
      sub_258E38B44(&v28, &v15);
      v10 = sub_258F0A4E0();
      sub_258E38BB4(&v28);
    }

    [v9 setAssetSetId_];

    if (*(&v17 + 1))
    {

      v12 = sub_258F0A4E0();
    }

    else
    {
      v12 = 0;
    }

    [v9 setAssetSetName_];

    if (*(&v22 + 1))
    {

      v13 = sub_258F0A4E0();
    }

    else
    {
      v13 = 0;
    }

    [v9 setPreviousSystemBuild_];

    if ((BYTE8(v19) & 1) == 0)
    {
      [v9 setBuildInstallationTimestampInSecondsSince1970_];
    }

    v14 = sub_258E386A0(&v16);
    [v9 setAssistantDimensions_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258E385E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

id sub_258E386A0(uint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (result)
  {
    v3 = result;
    v14 = *(a1 + 160);
    v4 = *(&v14 + 1);
    v5 = result;
    if (*(&v14 + 1))
    {
      sub_258E38B44(&v14, &v13);
      v4 = sub_258F0A4E0();
      sub_258E38BB4(&v14);
    }

    [v3 setSystemBuild_];

    if (*(a1 + 120))
    {
      v6 = *(a1 + 112);
      v7 = *(a1 + 120);

      v8 = sub_258F0A4E0();

      v9 = v8;
      if ([v9 isEqualToString:@"UNKNOWN"])
      {
        v10 = 0;
      }

      else if ([v9 isEqualToString:@"OPTED_IN"])
      {
        v10 = 1;
      }

      else if ([v9 isEqualToString:@"OPTED_OUT"])
      {
        v10 = 2;
      }

      else if ([v9 isEqualToString:@"DISMISSED"])
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      [v3 setDataSharingOptInStatus_];
    }

    v13 = *(a1 + 128);
    sub_258E38B44(&v13, &v12);
    sub_258E34A08(a1);
    if (*(&v13 + 1))
    {
      v11 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v13, *(&v13 + 1));

      [v3 setSiriInputLocale_];
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258E3886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BootToAssetSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258E385E0(a1, v12, v16, a4, a5);
}

uint64_t sub_258E3896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedBootToAssetData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E389D0(uint64_t a1)
{
  v2 = type metadata accessor for CombinedBootToAssetData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BootToAssetSELFReporter()
{
  result = qword_27F989660;
  if (!qword_27F989660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E38A80()
{
  result = sub_258F0A370();
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

uint64_t sub_258E38B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E38BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E38C54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 1)
  {
    return sub_258E38C64(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_258E38C64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_258F0A370();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 40))(a4, a5);

  v17 = sub_258F0A350();
  v18 = sub_258F0A820();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v6;
    v20 = v19;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v20 = 136315650;
    v21 = *(a5 + 16);
    HIDWORD(v35) = v18;
    v21(v41, a4, a5);
    v22 = SiriMetricsCalculatorType.description.getter();
    v24 = sub_258DE3018(v22, v23, aBlock);
    v36 = v12;
    v25 = a3;
    v26 = a4;
    v27 = a2;
    v28 = a1;
    v29 = v24;

    *(v20 + 4) = v29;
    a1 = v28;
    a2 = v27;
    a4 = v26;
    a3 = v25;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a1;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_258DE3018(a2, v25, aBlock);
    _os_log_impl(&dword_258DD8000, v17, BYTE4(v35), "Logging Core Analytics Event from %s with count: %ld, error: %s", v20, 0x20u);
    v30 = v37;
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v30, -1, -1);
    MEMORY[0x259C9EF40](v20, -1, -1);

    (*(v39 + 8))(v16, v36);
  }

  else
  {

    (*(v39 + 8))(v16, v12);
  }

  (*(a5 + 24))(v41, a4, a5);
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a2;
  v31[5] = a3;
  v31[6] = a1;

  v32 = sub_258F0A4E0();

  aBlock[4] = sub_258E39170;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258E2C248;
  aBlock[3] = &block_descriptor_1;
  v33 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v33);

  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

unint64_t sub_258E39014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989530, &unk_258F0FA20);
  inited = swift_initStackObject();
  strcpy((inited + 32), "CalculatorName");
  *(inited + 16) = xmmword_258F0F8B0;
  *(inited + 47) = -18;
  (*(a5 + 16))(&v10, a4, a5);
  *(inited + 48) = sub_258F0A7D0();
  *(inited + 56) = 0x726F727245;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = sub_258F0A4E0();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000258F1A700;
  *(inited + 96) = sub_258F0A7D0();
  v8 = sub_258DFBE10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989538, &unk_258F149F0);
  swift_arrayDestroy();
  return v8;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CommonDigestElements()
{
  result = qword_27F989680;
  if (!qword_27F989680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258E3920C()
{
  sub_258E39430(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
  if (v0 <= 0x3F)
  {
    sub_258E39430(319, &qword_27F989698, type metadata accessor for SISchemaDataSharingOptInState);
    if (v1 <= 0x3F)
    {
      sub_258E39430(319, &qword_27F9896A0, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
      if (v2 <= 0x3F)
      {
        sub_258E39430(319, &qword_27F9896A8, type metadata accessor for ORCHSchemaORCHSiriNlMode);
        if (v3 <= 0x3F)
        {
          sub_258E39430(319, &qword_27F9896B0, sub_258E393E4);
          if (v4 <= 0x3F)
          {
            sub_258E39430(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
            if (v5 <= 0x3F)
            {
              sub_258E39430(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
              if (v6 <= 0x3F)
              {
                sub_258E39484();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_258E393E4()
{
  result = qword_27F9896B8;
  if (!qword_27F9896B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9896B8);
  }

  return result;
}

void sub_258E39430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258E39484()
{
  if (!qword_27F9896D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9896D8, &unk_258F10780);
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9896D0);
    }
  }
}

uint64_t sub_258E394E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a2;
  v7 = sub_258F0A370();
  v112 = *(v7 - 8);
  v8 = *(v112 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v102 = &v99 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v99 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v103 = &v99 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v99 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v113 = &v99 - v32;
  strcpy(v115, "is_carplay");
  BYTE3(v115[1]) = 0;
  HIDWORD(v115[1]) = -369098752;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v33 = sub_258E2EA2C(v116), (v34 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_9;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v33, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v110 = 0;
    v111 = 1;
    goto LABEL_10;
  }

  if (LODWORD(v115[0]) == 1)
  {
    v35 = 5;
  }

  else
  {
    v35 = 0;
  }

  v110 = v35;
  v111 = LODWORD(v115[0]) != 1;
LABEL_10:
  v115[0] = 0xD000000000000019;
  v115[1] = 0x8000000258F18AA0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v36 = sub_258E2EA2C(v116), (v37 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_16;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v36, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v109 = 1;
    goto LABEL_17;
  }

  v38 = sub_258F0A4E0();

  v39 = v38;
  if ([v39 isEqualToString:@"UNKNOWN"])
  {
    HIDWORD(v109) = 0;
  }

  else
  {
    if ([v39 isEqualToString:@"OPTED_IN"])
    {
      v89 = 1;
    }

    else if ([v39 isEqualToString:@"OPTED_OUT"])
    {
      v89 = 2;
    }

    else if ([v39 isEqualToString:@"DISMISSED"])
    {
      v89 = 3;
    }

    else
    {
      v89 = 0;
    }

    HIDWORD(v109) = v89;
  }

  LODWORD(v109) = 0;
LABEL_17:
  strcpy(v115, "asr_location");
  BYTE5(v115[1]) = 0;
  HIWORD(v115[1]) = -5120;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v40 = sub_258E2EA2C(v116), (v41 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_23;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v40, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v108 = 1;
    goto LABEL_24;
  }

  v42 = sub_258F0A4E0();

  v43 = v42;
  if ([v43 isEqualToString:@"ORCHSIRIASRMODE_UNKNOWN"])
  {
    HIDWORD(v108) = 0;
  }

  else
  {
    if ([v43 isEqualToString:@"ORCHSIRIASRMODE_SERVER"])
    {
      v90 = 1;
    }

    else if ([v43 isEqualToString:@"ORCHSIRIASRMODE_DEVICE"])
    {
      v90 = 2;
    }

    else
    {
      v90 = 0;
    }

    HIDWORD(v108) = v90;
  }

  LODWORD(v108) = 0;
LABEL_24:
  strcpy(v115, "nl_location");
  HIDWORD(v115[1]) = -352321536;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v44 = sub_258E2EA2C(v116), (v45 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_30;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v44, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v107 = 1;
    goto LABEL_31;
  }

  v46 = sub_258F0A4E0();

  v47 = v46;
  if ([v47 isEqualToString:@"ORCHSIRINLMODE_UNKNOWN"])
  {
    HIDWORD(v107) = 0;
  }

  else
  {
    if ([v47 isEqualToString:@"ORCHSIRINLMODE_NLV3_SERVER"])
    {
      v91 = 1;
    }

    else if ([v47 isEqualToString:@"ORCHSIRINLMODE_NLX_DEVICE"])
    {
      v91 = 2;
    }

    else
    {
      v91 = 0;
    }

    HIDWORD(v107) = v91;
  }

  LODWORD(v107) = 0;
LABEL_31:
  v106 = sub_258E3A388(a1);
  strcpy(v115, "program_code");
  BYTE5(v115[1]) = 0;
  HIWORD(v115[1]) = -5120;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v48 = sub_258E2EA2C(v116), (v49 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_37;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v48, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v105 = 1;
    goto LABEL_38;
  }

  v50 = sub_258F0A4E0();

  v51 = v50;
  if ([v51 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
  {
    HIDWORD(v105) = 0;
  }

  else
  {
    if ([v51 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v92 = 1;
    }

    else if ([v51 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v92 = 2;
    }

    else if ([v51 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v92 = 3;
    }

    else if ([v51 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v92 = 4;
    }

    else if ([v51 isEqualToString:@"PROGRAMCODE_VISIONOS"])
    {
      v92 = 5;
    }

    else
    {
      v92 = 0;
    }

    HIDWORD(v105) = v92;
  }

  LODWORD(v105) = 0;
LABEL_38:
  v52 = sub_258F09A70();
  v53 = *(v52 - 8);
  (*(v53 + 56))(v113, 1, 1, v52);
  strcpy(v115, "codepath_id");
  HIDWORD(v115[1]) = -352321536;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v54 = sub_258E2EA2C(v116), (v55 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_45;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v54, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    (*(a3 + 40))(v114, a3);
    v67 = sub_258F0A350();
    v68 = sub_258F0A820();
    v69 = os_log_type_enabled(v67, v68);
    v62 = v112;
    if (v69)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_258DD8000, v67, v68, "nil codePathId", v70, 2u);
      MEMORY[0x259C9EF40](v70, -1, -1);
    }

    (*(v62 + 8))(v18, v7);
    goto LABEL_48;
  }

  v56 = v115[1];
  v101 = v115[0];
  sub_258F09A30();
  v57 = v113;
  sub_258E3A4D8(v113);
  sub_258E3A468(v30, v57);
  sub_258E3A540(v57, v26);
  if ((*(v53 + 48))(v26, 1, v52) == 1)
  {
    sub_258E3A4D8(v26);
    v58 = v103;
    (*(a3 + 40))(v114, a3);

    v59 = sub_258F0A350();
    v60 = sub_258F0A820();

    v100 = v59;
    v61 = os_log_type_enabled(v59, v60);
    v62 = v112;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v116[0] = v64;
      *v63 = 136315138;
      v65 = sub_258DE3018(v101, v56, v116);

      *(v63 + 4) = v65;
      v66 = v100;
      _os_log_impl(&dword_258DD8000, v100, v60, "Invalid codepath_id %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x259C9EF40](v64, -1, -1);
      MEMORY[0x259C9EF40](v63, -1, -1);

      (*(v62 + 8))(v103, v7);
    }

    else
    {

      (*(v62 + 8))(v58, v7);
    }
  }

  else
  {

    sub_258E3A4D8(v26);
    v62 = v112;
  }

LABEL_48:
  v71 = [objc_opt_self() sharedPreferences];
  v72 = [v71 longLivedIdentifierUploadingEnabled];

  if (!v72)
  {
    goto LABEL_55;
  }

  strcpy(v115, "turn_ids");
  BYTE1(v115[1]) = 0;
  WORD1(v115[1]) = 0;
  HIDWORD(v115[1]) = -402653184;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v73 = sub_258E2EA2C(v116), (v74 & 1) == 0))
  {
    sub_258E0F590(v116);
    goto LABEL_55;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v73, v117);
  sub_258E0F590(v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    v78 = v104;
    (*(a3 + 40))(v114, a3);
    v79 = sub_258F0A350();
    v80 = sub_258F0A800();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_258DD8000, v79, v80, "No turnIds found.", v81, 2u);
      MEMORY[0x259C9EF40](v81, -1, -1);
    }

    (*(v62 + 8))(v78, v7);
    goto LABEL_58;
  }

  v76 = v115[0];
  v75 = v115[1];

  v77 = _s16MetricsFramework15ExtensionsUtilsC13decodeTurnIdsySay10Foundation4UUIDVGSgSSSgFZ_0(v76, v75);

  if (!v77)
  {
    v93 = v102;
    (*(a3 + 40))(v114, a3);

    v94 = sub_258F0A350();
    v95 = sub_258F0A820();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v116[0] = v97;
      *v96 = 136315138;
      v98 = sub_258DE3018(v76, v75, v116);

      *(v96 + 4) = v98;
      _os_log_impl(&dword_258DD8000, v94, v95, "Invalid turn_ids %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      MEMORY[0x259C9EF40](v97, -1, -1);
      MEMORY[0x259C9EF40](v96, -1, -1);
    }

    else
    {
    }

    (*(v112 + 8))(v93, v7);
LABEL_58:
    v77 = 0;
    goto LABEL_59;
  }

LABEL_59:
  v82 = v111;
  *a4 = v110;
  *(a4 + 4) = v82;
  v83 = v109;
  *(a4 + 8) = HIDWORD(v109);
  *(a4 + 12) = v83;
  v84 = v108;
  *(a4 + 16) = HIDWORD(v108);
  *(a4 + 20) = v84;
  v85 = v107;
  *(a4 + 24) = HIDWORD(v107);
  *(a4 + 28) = v85;
  *(a4 + 32) = v106;
  v86 = v105;
  *(a4 + 40) = HIDWORD(v105);
  *(a4 + 44) = v86;
  v87 = type metadata accessor for CommonDigestElements();
  result = sub_258E3A468(v113, a4 + *(v87 + 40));
  *(a4 + *(v87 + 44)) = v77;
  return result;
}

id sub_258E3A388(uint64_t a1)
{
  sub_258F0AA80();
  if (*(a1 + 16) && (v2 = sub_258E2EA2C(v6), (v3 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v2, v7);
    sub_258E0F590(v6);
    if (swift_dynamicCast())
    {
      v4 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(0xD000000000000011, 0x8000000258F18A30);

      return v4;
    }
  }

  else
  {
    sub_258E0F590(v6);
  }

  return 0;
}

uint64_t sub_258E3A468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3A4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E3A540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3A5B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(v19, a1, a2);
  v11 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = sub_258F09BD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    (*(*(a2 + 8) + 40))(a1);
    v13 = sub_258F0A350();
    v14 = sub_258F0A800();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "No bookmark found for the extension", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    sub_258DE403C();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v12;
}

id sub_258E3A7C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v111 = a6;
  v110 = a5;
  v101 = a4;
  v100 = a3;
  v8 = sub_258F0A370();
  v9 = *(v8 - 8);
  v108 = v8;
  v109 = v9;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v106 = v96 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v99 = v96 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v98 = v96 - v22;
  v23 = sub_258F09B00();
  v102 = *(v23 - 8);
  v24 = *(v102 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_258F09A20();
  v103 = *(v104 - 8);
  v28 = *(v103 + 64);
  v30 = MEMORY[0x28223BE20](v104, v29);
  v105 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v107 = v96 - v33;
  v34 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  if (qword_27F988680 != -1)
  {
    swift_once();
  }

  v35 = qword_280CC6068;
  v112 = 0x61645F746E657665;
  v113 = 0xEA00000000006574;
  sub_258F0AA80();
  if (*(a1 + 16) && (v36 = sub_258E2EA2C(v114), (v37 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v36, v115);
    sub_258E0F590(v114);
    if (swift_dynamicCast())
    {
      v96[1] = a2;
      v97 = v34;
      v38 = v113;
      v96[0] = v112;
      v39 = sub_258F0A4E0();
      v40 = [v35 dateFromString_];

      if (v40)
      {
        v41 = v38;
        sub_258F09A00();

        v42 = v111;
        v43 = v110;
        (*(v111 + 32))(v110, v111);
        v44 = v105;
        sub_258F09930();
        v45 = v27;
        v46 = v43;
        (*(v102 + 8))(v45, v23);
        v47 = sub_258F099F0();
        v34 = v97;
        if ((v47 & 1) != 0 && (v48 = (*(v42 + 48))(v43, v42), v49 = sub_258F0A4E0(), v50 = [v48 BOOLForKey_], v48, v49, (v50 & 1) == 0))
        {
          v83 = v98;
          (*(v42 + 40))(v46, v42);

          v84 = v101;

          v85 = sub_258F0A350();
          v86 = sub_258F0A810();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v114[0] = v88;
            *v87 = 136315394;
            v89 = v44;
            v90 = sub_258DE3018(v96[0], v41, v114);

            *(v87 + 4) = v90;
            *(v87 + 12) = 2080;
            *(v87 + 14) = sub_258DE3018(v100, v84, v114);
            _os_log_impl(&dword_258DD8000, v85, v86, "setting should skip to true for eventDate: %s and key %s", v87, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C9EF40](v88, -1, -1);
            MEMORY[0x259C9EF40](v87, -1, -1);

            (*(v109 + 8))(v83, v108);
            v91 = *(v103 + 8);
            v92 = v89;
LABEL_42:
            v95 = v104;
            v91(v92, v104);
            v91(v107, v95);
            return v34;
          }

          (*(v109 + 8))(v83, v108);
        }

        else
        {
          sub_258F099E0();
          v52 = v51;
          if (v51 > -1.0 && v51 < 1.84467441e19 && v51 == trunc(v51))
          {

            [v34 setStartTimestampInSecondsSince1970_];
            if (v34)
            {
              v115[0] = 0xD000000000000018;
              v115[1] = 0x8000000258F1A780;
              v53 = v34;
              sub_258F0AA80();
              if (*(a1 + 16) && (v54 = sub_258E2EA2C(v114), (v55 & 1) != 0))
              {
                sub_258DE4090(*(a1 + 56) + 32 * v54, v115);
                sub_258E0F590(v114);
                if (swift_dynamicCast())
                {
                  v56 = v112;
                }

                else
                {
                  v56 = 86400;
                }
              }

              else
              {
                v56 = 86400;
                sub_258E0F590(v114);
              }

              [v53 setNumberOfSeconds_];
            }

            v93 = *(v103 + 8);
            v94 = v104;
            v93(v44, v104);
            v93(v107, v94);
            return v34;
          }

          v73 = v99;
          (*(v42 + 40))(v46, v42);

          swift_unknownObjectRetain();
          v74 = sub_258F0A350();
          v75 = sub_258F0A820();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v114[0] = v77;
            *v76 = 136315650;
            v115[0] = swift_getObjectType();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
            v78 = sub_258F0A550();
            v80 = sub_258DE3018(v78, v79, v114);

            *(v76 + 4) = v80;
            v44 = v105;
            *(v76 + 12) = 2048;
            *(v76 + 14) = v52;
            *(v76 + 22) = 2080;
            v81 = sub_258DE3018(v96[0], v41, v114);

            *(v76 + 24) = v81;
            _os_log_impl(&dword_258DD8000, v74, v75, "#%s: startTimestamp %f of eventDate %s cannot be cast to UInt64.", v76, 0x20u);
            swift_arrayDestroy();
            v82 = v77;
            v42 = v111;
            MEMORY[0x259C9EF40](v82, -1, -1);
            MEMORY[0x259C9EF40](v76, -1, -1);
          }

          else
          {
          }

          (*(v109 + 8))(v73, v108);
          sub_258E38C64(1, 0xD00000000000001CLL, 0x8000000258F1A760, v46, v42);
        }

        v91 = *(v103 + 8);
        v92 = v44;
        goto LABEL_42;
      }

      v34 = v97;
    }
  }

  else
  {
    sub_258E0F590(v114);
  }

  v112 = 0x61645F746E657665;
  v113 = 0xEA00000000006574;
  sub_258F0AA80();
  v57 = v110;
  if (*(a1 + 16) && (v58 = sub_258E2EA2C(v114), (v59 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v58, v115);
    sub_258E0F590(v114);
    if (swift_dynamicCast())
    {
      v61 = v112;
      v60 = v113;
      v62 = v57;
      v63 = v106;
      (*(v111 + 40))(v62);

      v64 = sub_258F0A350();
      v65 = sub_258F0A820();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v114[0] = v67;
        *v66 = 136315138;
        v68 = sub_258DE3018(v61, v60, v114);

        *(v66 + 4) = v68;
        _os_log_impl(&dword_258DD8000, v64, v65, "event_date is %s which dateformatter cannot parse", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x259C9EF40](v67, -1, -1);
        MEMORY[0x259C9EF40](v66, -1, -1);
      }

      else
      {
      }

      (*(v109 + 8))(v63, v108);
      return v34;
    }
  }

  else
  {
    sub_258E0F590(v114);
  }

  (*(v111 + 40))(v57);
  v69 = sub_258F0A350();
  v70 = sub_258F0A820();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_258DD8000, v69, v70, "event_date is not a string", v71, 2u);
    MEMORY[0x259C9EF40](v71, -1, -1);
  }

  (*(v109 + 8))(v14, v108);
  return v34;
}

uint64_t sub_258E3B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_258F09F40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9, v12);
  v15 = &v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 1)
  {
    (*(a6 + 8))(a5, a6);
    (*(v10 + 104))(v15, *MEMORY[0x277D5D9B8], v9);
    sub_258F09F10();

    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

unint64_t SiriMetricsCalculatorType.description.getter()
{
  result = 0x72696F504944444FLL;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0x747365676944474FLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xE:
    case 0xF:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x73416F54746F6F42;
      break;
    case 0xB:
      result = 0x6C6C6F726E455456;
      break;
    case 0xC:
      result = 0xD000000000000022;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x7465737341524941;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

MetricsFramework::SiriMetricsCalculatorType_optional __swiftcall SiriMetricsCalculatorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 18;
  if (rawValue < 0x12)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_258E3B780()
{
  result = qword_27F9896F0;
  if (!qword_27F9896F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9896F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriMetricsCalculatorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriMetricsCalculatorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DeviceBatchDataBuilderImpl.deinit()
{
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId);
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId);
  return v0;
}

uint64_t DeviceBatchDataBuilderImpl.__deallocating_deinit()
{
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId);
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_258E3BB8C()
{
  sub_258E3BC10();
  if (v0 <= 0x3F)
  {
    sub_258E3BC68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258E3BC10()
{
  if (!qword_27F9896C8)
  {
    sub_258F09A70();
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9896C8);
    }
  }
}

void sub_258E3BC68()
{
  if (!qword_27F989718)
  {
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F989718);
    }
  }
}

void sub_258E3BCF0()
{
  sub_258E3BC10();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_258E3BDA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
  swift_beginAccess();
  sub_258DE20C0(v1 + v3, a1, &qword_27F9894E0, &unk_258F106A0);
  v4 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType);
  v5 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType + 4);
  v7 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
  v6 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);
  v8 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
  swift_beginAccess();
  v9 = type metadata accessor for DeviceExperimentMetrics(0);
  sub_258DE20C0(v1 + v8, a1 + v9[7], &qword_27F988730, &unk_258F0F8E0);
  v10 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId);
  v11 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId + 8);
  v12 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
  v13 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);
  v14 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode);
  v15 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);
  v16 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode + 4);
  v17 = a1 + v9[5];
  *v17 = v4;
  *(v17 + 4) = v5;
  v18 = (a1 + v9[6]);
  *v18 = v7;
  v18[1] = v6;
  v19 = a1 + v9[8];
  *v19 = v10;
  *(v19 + 8) = v11;
  v20 = (a1 + v9[9]);
  *v20 = v12;
  v20[1] = v13;
  v21 = a1 + v9[10];
  *v21 = v14;
  *(v21 + 4) = v16;
  *(a1 + v9[11]) = v15;
}

uint64_t DeviceExperimentMetricsBuilderImpl.deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID, &qword_27F988730, &unk_258F0F8E0);
  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);

  return v0;
}

uint64_t DeviceExperimentMetricsBuilderImpl.__deallocating_deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID, &qword_27F988730, &unk_258F0F8E0);
  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E3C08C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
  v2 = type metadata accessor for EventMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = 0;
  return v0;
}

uint64_t sub_258E3C1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_258F0A7B0();
      sub_258F0AB20();
      v6 = *(v7 + 16);
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_258E3C260(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (!v2)
  {
    return v2;
  }

  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = sub_258F0A4E0();
    [v2 setSystemBuild_];
  }

  if (*(a1 + 36))
  {
    if (*(a1 + 44))
    {
      goto LABEL_6;
    }
  }

  else
  {
    [v2 setDataSharingOptInStatus_];
    if (*(a1 + 44))
    {
LABEL_6:
      if (!*(a1 + 56))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  [v2 setViewInterface_];
  if (*(a1 + 56))
  {
LABEL_7:
    v5 = *(a1 + 48);
    v6 = sub_258F0A4E0();
    [v2 setAudioInterfaceVendorId_];
  }

LABEL_8:
  if (*(a1 + 72))
  {
    v7 = *(a1 + 64);
    v8 = sub_258F0A4E0();
    [v2 setAudioInterfaceProductId_];
  }

  if (*(a1 + 84))
  {
    if (*(a1 + 92))
    {
      goto LABEL_12;
    }

LABEL_31:
    [v2 setNlLocation_];
    if (!*(a1 + 96))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [v2 setAsrLocation_];
  if ((*(a1 + 92) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if (*(a1 + 96))
  {
LABEL_13:
    [v2 setSiriInputLocale_];
  }

LABEL_14:
  if (*(a1 + 120))
  {
    v9 = *(a1 + 112);
    v10 = sub_258F0A4E0();
    [v2 setSubDomain_];
  }

  if ((*(a1 + 132) & 1) == 0)
  {
    [v2 setResponseCategory_];
  }

  v11 = type metadata accessor for ExperimentDigest(0);
  v12 = *(a1 + v11[20]);
  if (v12 != 2)
  {
    [v2 setIsIntelligenceEngineRequest_];
  }

  v13 = *(a1 + v11[21]);
  if (v13)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 32);
      do
      {
        v16 = *v15++;
        [v2 addRouting_];
        --v14;
      }

      while (v14);
    }
  }

  v17 = (a1 + v11[22]);
  if ((v17[1] & 1) == 0)
  {
    [v2 setInvocationSource_];
  }

  return v2;
}

id sub_258E3C4E0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
  if (v2)
  {
    v3 = type metadata accessor for ExperimentDigest(0);
    v4 = (a1 + v3[25]);
    if ((v4[1] & 1) == 0)
    {
      [v2 setSiriTasksStarted_];
    }

    v5 = (a1 + v3[26]);
    if ((v5[1] & 1) == 0)
    {
      [v2 setSiriTasksCompleted_];
    }

    v6 = (a1 + v3[27]);
    if ((v6[1] & 1) == 0)
    {
      [v2 setFlowTasksStarted_];
    }

    v7 = (a1 + v3[28]);
    if ((v7[1] & 1) == 0)
    {
      [v2 setFlowTasksCompleted_];
    }
  }

  return v2;
}

id sub_258E3C5C8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
  if (v2)
  {
    v3 = type metadata accessor for ExperimentDigest(0);
    v4 = (a1 + v3[29]);
    if ((v4[1] & 1) == 0)
    {
      [v2 setReliabilityRequestCount_];
    }

    v5 = (a1 + v3[30]);
    if ((v5[1] & 1) == 0)
    {
      [v2 setReliabilityTurnCount_];
    }

    v6 = (a1 + v3[31]);
    if ((v6[1] & 1) == 0)
    {
      [v2 setClientErrorCount_];
    }

    v7 = (a1 + v3[32]);
    if ((v7[1] & 1) == 0)
    {
      [v2 setUndesiredResponseCount_];
    }

    v8 = (a1 + v3[33]);
    if ((v8[1] & 1) == 0)
    {
      [v2 setFatalResponseCount_];
    }

    v9 = (a1 + v3[34]);
    if ((v9[1] & 1) == 0)
    {
      [v2 setFailureResponseCount_];
    }

    v10 = (a1 + v3[35]);
    if ((v10[1] & 1) == 0)
    {
      [v2 setSiriUnavailableResponseCount_];
    }
  }

  return v2;
}

id sub_258E3C71C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59250]) init];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
    if (v3)
    {
      v4 = type metadata accessor for ExperimentDigest(0);
      v5 = (a1 + *(v4 + 92));
      if ((v5[1] & 1) == 0)
      {
        [v3 setTotalTurnCount_];
      }

      v6 = (a1 + *(v4 + 96));
      if ((v6[1] & 1) == 0)
      {
        [v3 setValidTurnCount_];
      }
    }

    [v2 setTurnCounts_];

    v7 = sub_258E3C4E0(a1);
    [v2 setTaskCounts_];

    v8 = sub_258E3C5C8(a1);
    [v2 setReliabilityCounts_];

    v9 = [objc_allocWithZone(MEMORY[0x277D593D0]) init];
    if (v9)
    {
      v10 = (a1 + *(type metadata accessor for ExperimentDigest(0) + 144));
      if ((v10[1] & 1) == 0)
      {
        [v9 setUsdxSessionCount_];
      }
    }

    [v2 setSessionCounts_];
  }

  return v2;
}

id _s16MetricsFramework16ExperimentTuplesV12toBiomeEvent15experimentTupleSo020BMSiriOnDeviceDigestcacmcD0CACSg_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
    swift_dynamicCast();
    if (!v4)
    {
LABEL_4:
      if (!v3)
      {
        goto LABEL_5;
      }

LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
      swift_dynamicCast();
      if (!v6)
      {
LABEL_6:
        if (!v5)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
  swift_dynamicCast();
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_11:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
  swift_dynamicCast();
  if (v5)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
    swift_dynamicCast();
  }

LABEL_13:
  v7 = objc_allocWithZone(MEMORY[0x277CF14E8]);
  sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
  v8 = sub_258F0A6A0();

  v9 = sub_258F0A6A0();

  v10 = sub_258F0A6A0();

  v11 = sub_258F0A6A0();

  v12 = sub_258F0A6A0();

  v13 = [v7 initWithLaunchTimeInMs:v8 endpointDelayInMs:v9 siriResponseTimeInMs:v10 timeToUufrInMs:v11 timeToFirstWordInMs:v12];

  return v13;
}

id _s16MetricsFramework16ExperimentDigestV12toBiomeEvent010experimentD0So014BMSiriOnDevicedcacD0CAC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v92 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989810, qword_258F114C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v92 - v10;
  v96 = *(a1 + 16);
  LOBYTE(v10) = *(a1 + 36);
  v103 = *(a1 + 24);
  if (v10)
  {
    v112 = 0;
    if ((*(a1 + 44) & 1) == 0)
    {
LABEL_3:
      v12 = *(a1 + 40);
      v111 = sub_258F0AE20();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v112 = sub_258F0AE20();
    if ((*(a1 + 44) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v111 = 0;
LABEL_6:
  v95 = *(a1 + 48);
  v14 = *(a1 + 56);
  v97 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 84);
  v107 = v14;
  v106 = v15;
  if (v16)
  {
    v110 = 0;
    if ((*(a1 + 92) & 1) == 0)
    {
LABEL_8:
      v17 = *(a1 + 88);
      v105 = sub_258F0AE20();
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *(a1 + 80);
    v110 = sub_258F0AE20();
    if ((*(a1 + 92) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v105 = 0;
LABEL_11:
  sub_258E3E4F4(a1, v11);
  v19 = type metadata accessor for ExperimentDigest(0);
  (*(*(v19 - 1) + 56))(v11, 0, 1, v19);
  v122 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE22toExperimentBiomeEvent16experimentDigestSo014BMSiriOnDevicejfcB0CAC0fJ0VSg_tFZ_0(v11);
  sub_258DE2184(v11, &qword_27F989810, qword_258F114C0);
  v20 = 0;
  v21 = *(a1 + 120);
  v94 = *(a1 + 112);
  v104 = v21;
  if ((*(a1 + 132) & 1) == 0)
  {
    v22 = *(a1 + 128);
    v20 = sub_258F0AE20();
  }

  v23 = *(a1 + 140);
  v109 = v20;
  if (v23)
  {
    v108 = 0;
  }

  else
  {
    v24 = *(a1 + 136);
    v108 = sub_258F0AE20();
  }

  if (*(a1 + 141) == 2)
  {
    v123 = 0;
  }

  else
  {
    v123 = sub_258F0A730();
  }

  if (*(a1 + 142) == 2)
  {
    v119 = 0;
  }

  else
  {
    v119 = sub_258F0A730();
  }

  sub_258DE20C0(a1 + v19[19], v6, &qword_27F988730, &unk_258F0F8E0);
  v25 = sub_258F09A70();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v6, 1, v25) == 1)
  {
    sub_258DE2184(v6, &qword_27F988730, &unk_258F0F8E0);
    v93 = 0;
    v27 = 0;
  }

  else
  {
    v93 = sub_258F09A40();
    v27 = v28;
    (*(v26 + 8))(v6, v25);
  }

  v29 = (a1 + v19[23]);
  if (v29[1])
  {
    v116 = 0;
  }

  else
  {
    v30 = *v29;
    v116 = sub_258F0AEB0();
  }

  v31 = (a1 + v19[24]);
  if (v31[1])
  {
    v114 = 0;
  }

  else
  {
    v32 = *v31;
    v114 = sub_258F0AEB0();
  }

  v33 = (a1 + v19[25]);
  if (v33[1])
  {
    v34 = 0;
  }

  else
  {
    v35 = *v33;
    v34 = sub_258F0AEB0();
  }

  v36 = (a1 + v19[26]);
  if (v36[1])
  {
    v121 = 0;
  }

  else
  {
    v37 = *v36;
    v121 = sub_258F0AEB0();
  }

  v38 = (a1 + v19[27]);
  if (v38[1])
  {
    v120 = 0;
  }

  else
  {
    v39 = *v38;
    v120 = sub_258F0AEB0();
  }

  v40 = (a1 + v19[28]);
  if (v40[1])
  {
    v118 = 0;
  }

  else
  {
    v41 = *v40;
    v118 = sub_258F0AEB0();
  }

  v42 = (a1 + v19[29]);
  if (v42[1])
  {
    v117 = 0;
  }

  else
  {
    v43 = *v42;
    v117 = sub_258F0AEB0();
  }

  v44 = (a1 + v19[30]);
  if (v44[1])
  {
    v115 = 0;
  }

  else
  {
    v45 = *v44;
    v115 = sub_258F0AEB0();
  }

  v46 = (a1 + v19[31]);
  if (v46[1])
  {
    v113 = 0;
  }

  else
  {
    v47 = *v46;
    v113 = sub_258F0AEB0();
  }

  v48 = (a1 + v19[32]);
  if (v48[1])
  {
    v49 = 0;
  }

  else
  {
    v50 = *v48;
    v49 = sub_258F0AEB0();
  }

  v51 = (a1 + v19[33]);
  if (v51[1])
  {
    v52 = 0;
  }

  else
  {
    v53 = *v51;
    v52 = sub_258F0AEB0();
  }

  v54 = (a1 + v19[34]);
  if (v54[1])
  {
    v55 = 0;
  }

  else
  {
    v56 = *v54;
    v55 = sub_258F0AEB0();
  }

  v57 = (a1 + v19[35]);
  if (v57[1])
  {
    v58 = 0;
  }

  else
  {
    v59 = *v57;
    v58 = sub_258F0AEB0();
  }

  v60 = (a1 + v19[36]);
  if (v60[1])
  {
    v61 = 0;
  }

  else
  {
    v62 = *v60;
    v61 = sub_258F0AEB0();
  }

  v63 = (a1 + v19[37]);
  v64 = v63[1];
  v65 = v63[2];
  v66 = v63[3];
  v67 = v63[4];
  v124[0] = *v63;
  v124[1] = v64;
  v124[2] = v65;
  v124[3] = v66;
  v124[4] = v67;
  sub_258E3E558(v124[0]);
  v68 = _s16MetricsFramework16ExperimentTuplesV12toBiomeEvent15experimentTupleSo020BMSiriOnDeviceDigestcacmcD0CACSg_tFZ_0(v124);
  sub_258E3E5CC(v124[0]);
  if (v103)
  {
    v96 = sub_258F0A4E0();
  }

  else
  {
    v96 = 0;
  }

  if (v107)
  {
    v103 = sub_258F0A4E0();
  }

  else
  {
    v103 = 0;
  }

  if (v106)
  {
    v97 = sub_258F0A4E0();
  }

  else
  {
    v97 = 0;
  }

  if (!v104)
  {
    v69 = 0;
    if (v27)
    {
      goto LABEL_78;
    }

LABEL_80:
    v70 = 0;
    goto LABEL_81;
  }

  v69 = sub_258F0A4E0();
  if (!v27)
  {
    goto LABEL_80;
  }

LABEL_78:
  v70 = sub_258F0A4E0();

LABEL_81:
  v95 = v70;
  v71 = objc_allocWithZone(MEMORY[0x277CF14E0]);
  v91 = v68;
  v102 = v61;
  v90 = v61;
  v101 = v58;
  v89 = v58;
  v100 = v55;
  v88 = v55;
  v99 = v52;
  v87 = v52;
  v98 = v49;
  v86 = v49;
  v85 = v34;
  v84 = v70;
  v104 = v34;
  v72 = v108;
  v73 = v109;
  v83 = v69;
  v74 = v69;
  v107 = v68;
  v75 = v105;
  v76 = v96;
  v77 = v111;
  v78 = v112;
  v79 = v103;
  v80 = v97;
  v81 = v110;
  v106 = [v71 initWithSystemBuild:v96 dataSharingOptInStatus:v112 viewInterface:v111 audioInterfaceVendorId:v103 audioInterfaceProductId:v97 asrLocation:v110 nlLocation:v105 siriInputLocale:v122 subDomain:v83 responseCategory:v109 experimentAllocationStatus:v108 isTriggered:v123 isFirstTriggerOrAfterFirstTrigger:v119 codePathIdUUID:v84 totalTurnCount:v116 validTurnCount:v114 siriTasksStarted:v85 siriTasksCompleted:v121 flowTasksStarted:v120 flowTasksCompleted:v118 reliabilityRequestCount:v117 reliabilityTurnCount:v115 clientErrorCount:v113 undesiredResponseCount:v86 fatalResponseCount:v87 failureResponseCount:v88 siriUnavailableResponseCount:v89 usdxSessionCount:v90 tuples:v91];

  return v106;
}

uint64_t sub_258E3D554(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258E3D5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_258E3D664()
{
  sub_258E0F074(319, &qword_27F988D40);
  if (v0 <= 0x3F)
  {
    sub_258E3D9B8(319, &qword_27F989698, type metadata accessor for SISchemaDataSharingOptInState);
    if (v1 <= 0x3F)
    {
      sub_258E3D9B8(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
      if (v2 <= 0x3F)
      {
        sub_258E3D9B8(319, &qword_27F9896A0, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
        if (v3 <= 0x3F)
        {
          sub_258E3D9B8(319, &qword_27F9896A8, type metadata accessor for ORCHSchemaORCHSiriNlMode);
          if (v4 <= 0x3F)
          {
            sub_258E3DA0C();
            if (v5 <= 0x3F)
            {
              sub_258E3D9B8(319, &qword_27F989778, type metadata accessor for SISchemaResponseCategory);
              if (v6 <= 0x3F)
              {
                sub_258E3D9B8(319, &qword_27F989780, type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus);
                if (v7 <= 0x3F)
                {
                  sub_258E0F074(319, &qword_27F989788);
                  if (v8 <= 0x3F)
                  {
                    sub_258E3D9B8(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
                    if (v9 <= 0x3F)
                    {
                      sub_258E3DC64(319, &qword_27F989790, &qword_27F989798, &unk_258F113F0);
                      if (v10 <= 0x3F)
                      {
                        sub_258E3D9B8(319, &qword_27F9897A0, type metadata accessor for SISchemaInvocationSource);
                        if (v11 <= 0x3F)
                        {
                          sub_258E0F074(319, &qword_27F989718);
                          if (v12 <= 0x3F)
                          {
                            sub_258E0F074(319, &qword_27F9897A8);
                            if (v13 <= 0x3F)
                            {
                              sub_258E3DC64(319, &qword_27F9896D0, &qword_27F9896D8, &unk_258F10780);
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
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

void sub_258E3D9B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258E3DA0C()
{
  if (!qword_27F9896B0)
  {
    sub_258DEB8C8(255, &qword_27F9896B8, 0x277D5A900);
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9896B0);
    }
  }
}

void sub_258E3DABC()
{
  sub_258E3D9B8(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v0 <= 0x3F)
  {
    sub_258E3D9B8(319, &qword_27F9897C8, type metadata accessor for ODDSiriSchemaODDExperimentDigestType);
    if (v1 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D40);
      if (v2 <= 0x3F)
      {
        sub_258E3D9B8(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          sub_258E0F074(319, &qword_27F9897D0);
          if (v4 <= 0x3F)
          {
            sub_258E3D9B8(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
            if (v5 <= 0x3F)
            {
              sub_258E3DC64(319, &qword_27F9897D8, &qword_27F9897E0, &qword_258F107A8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_258E3DC64(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_258F0A920();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258E3DCE0()
{
  sub_258E3D9B8(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258E3D9B8(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_258E3DE2C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59308]) init];
  if (!v2)
  {
    return v2;
  }

  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = sub_258F0A4E0();
    [v2 setSystemBuild_];
  }

  if (*(a1 + 36))
  {
    if (*(a1 + 44))
    {
      goto LABEL_6;
    }

LABEL_18:
    [v2 setViewInterface_];
    if (!*(a1 + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v2 setDataSharingOptInStatus_];
  if ((*(a1 + 44) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (*(a1 + 56))
  {
LABEL_7:
    v5 = *(a1 + 48);
    v6 = sub_258F0A4E0();
    [v2 setAudioInterfaceVendorId_];
  }

LABEL_8:
  if (*(a1 + 72))
  {
    v7 = *(a1 + 64);
    v8 = sub_258F0A4E0();
    [v2 setAudioInterfaceProductId_];
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    [v2 setAsrLocation_];
  }

  if (*(a1 + 104))
  {
    [v2 setDictationLocale_];
  }

  v9 = (a1 + *(type metadata accessor for ExperimentDigest(0) + 88));
  if ((v9[1] & 1) == 0)
  {
    [v2 setInvocationSource_];
  }

  return v2;
}

id sub_258E3DFD0(uint64_t a1, Class *a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v28 - v11;
  v13 = sub_258F09A70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(*a2) init];
  if (v19)
  {
    v20 = a3(a1);
    [v19 *a4];
    if (*(a1 + 140))
    {
      v21 = 0;
    }

    else
    {
      v21 = *(a1 + 136);
    }

    [v19 setExperimentAllocationStatus_];
    v22 = *(a1 + 142);
    if (v22 != 2)
    {
      [v19 setIsFirstTriggerOrAfterFirstTrigger_];
    }

    v23 = type metadata accessor for ExperimentDigest(0);
    sub_258DE20C0(a1 + *(v23 + 76), v12, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_258DE2184(v12, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v14 + 32))(v18, v12, v13);
      v24 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v25 = sub_258F09A50();
      v26 = [v24 initWithNSUUID_];

      [v19 setCodePathId_];
      (*(v14 + 8))(v18, v13);
    }
  }

  return v19;
}

id sub_258E3E260(uint64_t a1, Class *a2)
{
  v3 = [objc_allocWithZone(*a2) init];
  if (v3)
  {
    v4 = (a1 + *(type metadata accessor for ExperimentDigest(0) + 148));
    v5 = *v4;
    if (*v4 >= 2)
    {

      sub_258E3C1B8(v6);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v7 = sub_258F0A6A0();

      [v3 setLaunchTimeInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[1] != 0)
    {
      v9 = v4[1];

      sub_258E3C1B8(v10);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v11 = sub_258F0A6A0();

      [v3 setEndpointDelayInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[2] != 0)
    {
      v13 = v4[2];

      sub_258E3C1B8(v14);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v15 = sub_258F0A6A0();

      [v3 setSiriResponseTimeInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[3] != 0)
    {
      v17 = v4[3];

      sub_258E3C1B8(v18);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v19 = sub_258F0A6A0();

      [v3 setTimeToUufrInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[4] != 0)
    {
      v21 = v4[4];

      sub_258E3C1B8(v22);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v23 = sub_258F0A6A0();

      [v3 setTimeToFirstWordInMs_];
    }
  }

  return v3;
}

uint64_t sub_258E3E4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExperimentDigest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3E558(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_258E3E5CC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_258E3E63C(uint64_t a1)
{
  v2 = sub_258F09A70();
  v84 = *(v2 - 8);
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExperimentDigest(0);
  v90 = *(v7 - 1);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v91 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v78 - v14;
  v16 = type metadata accessor for EventMetadata(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258DE20C0(a1, v15, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_258DE2184(v15, &qword_27F9894E0, &unk_258F106A0);
    return MEMORY[0x277D84F90];
  }

  sub_258E3F8CC(v15, v21);
  v22 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v22)
  {
    sub_258E3F930(v21, type metadata accessor for EventMetadata);
    return MEMORY[0x277D84F90];
  }

  v23 = v22;
  v85 = v6;
  v86 = v2;
  v97 = 1;
  v80 = v21;
  v24 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
  v79 = v23;
  [v23 setEventMetadata_];

  v87 = [objc_allocWithZone(MEMORY[0x277D59320]) init];
  v96 = v87;
  sub_258E3F990(&v96, a1);
  result = type metadata accessor for DeviceExperimentMetrics(0);
  v26 = *(a1 + *(result + 44));
  v27 = v90;
  v28 = v91;
  if (v26 && (v93 = *(v26 + 16)) != 0)
  {
    v29 = 0;
    v82 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
    v83 = v26;
    v92 = v26 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v30 = (v84 + 8);
    v88 = v7;
    v81 = v84 + 16;
    while (v29 < *(v26 + 16))
    {
      sub_258E3E4F4(v92 + *(v27 + 72) * v29, v28);
      v31 = v28[1];
      if (v31)
      {
        v32 = *v28 == 0x4F49544154434944 && v31 == 0xE90000000000004ELL;
        if (v32 || (sub_258F0AD80() & 1) != 0)
        {
          v33 = [objc_allocWithZone(MEMORY[0x277D59318]) init];
          if (v33)
          {
            v34 = v33;
            v35 = sub_258E3DFA8(v28);
            [v34 setDimensions_];

            v36 = [objc_allocWithZone(MEMORY[0x277D59310]) init];
            v37 = v34;
            if (v36)
            {
              v38 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
              v39 = v38;
              if (v38)
              {
                v40 = (v28 + v7[23]);
                if ((v40[1] & 1) == 0)
                {
                  [v38 setTotalTurnCount_];
                }

                v41 = (v28 + v7[24]);
                if ((v41[1] & 1) == 0)
                {
                  [v39 setValidTurnCount_];
                }
              }

              [v36 setTurnCounts_];

              v42 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
              v43 = v42;
              if (v42)
              {
                v44 = (v28 + v7[25]);
                if ((v44[1] & 1) == 0)
                {
                  [v42 setSiriTasksStarted_];
                }

                v45 = (v28 + v7[26]);
                if ((v45[1] & 1) == 0)
                {
                  [v43 setSiriTasksCompleted_];
                }

                v46 = (v28 + v7[27]);
                if ((v46[1] & 1) == 0)
                {
                  [v43 setFlowTasksStarted_];
                }

                v47 = (v28 + v7[28]);
                if ((v47[1] & 1) == 0)
                {
                  [v43 setFlowTasksCompleted_];
                }
              }

              [v36 setTaskCounts_];

              v48 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
              v49 = v48;
              if (v48)
              {
                v50 = (v28 + v7[29]);
                if ((v50[1] & 1) == 0)
                {
                  [v48 setReliabilityRequestCount_];
                }

                v51 = (v28 + v7[30]);
                if ((v51[1] & 1) == 0)
                {
                  [v49 setReliabilityTurnCount_];
                }

                v52 = (v28 + v7[31]);
                if ((v52[1] & 1) == 0)
                {
                  [v49 setClientErrorCount_];
                }

                v53 = (v28 + v7[32]);
                if ((v53[1] & 1) == 0)
                {
                  [v49 setUndesiredResponseCount_];
                }

                v54 = (v28 + v7[33]);
                if ((v54[1] & 1) == 0)
                {
                  [v49 setFatalResponseCount_];
                }

                v55 = (v28 + v7[34]);
                if ((v55[1] & 1) == 0)
                {
                  [v49 setFailureResponseCount_];
                }

                v56 = (v28 + v7[35]);
                if ((v56[1] & 1) == 0)
                {
                  [v49 setSiriUnavailableResponseCount_];
                }
              }

              [v36 setReliabilityCounts_];
            }

            v89 = v29;
            [v34 setCounts_];

            v57 = sub_258E3E254(v28);
            [v34 setTuples_];

            v58 = [objc_opt_self() sharedPreferences];
            v59 = [v58 longLivedIdentifierUploadingEnabled];

            v61 = v85;
            v60 = v86;
            v62 = v81;
            if (v59)
            {
              v63 = *&v91[v88[38]];
              if (v63)
              {
                v64 = *(v63 + 16);
                if (v64)
                {
                  v65 = v63 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
                  v66 = *(v84 + 72);
                  v94 = *(v84 + 16);
                  v95 = v66;
                  do
                  {
                    v67 = v62;
                    v94(v61, v65, v60);
                    v68 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                    v69 = sub_258F09A50();
                    (*v30)(v61, v60);
                    v70 = [v68 initWithNSUUID_];

                    [v37 addTurnIds_];
                    v62 = v67;
                    v65 += v95;
                    --v64;
                  }

                  while (v64);
                }
              }
            }

            [v87 addDigests_];
            v71 = sub_258F0A350();
            v72 = sub_258F0A810();
            v73 = os_log_type_enabled(v71, v72);
            v29 = v89;
            if (v73)
            {
              v74 = swift_slowAlloc();
              *v74 = 0;
              _os_log_impl(&dword_258DD8000, v71, v72, "Adding Dictation Experiment Digest to ODDSiriSchemaODDSiriClientEvent", v74, 2u);
              MEMORY[0x259C9EF40](v74, -1, -1);
            }

            v7 = v88;
            v27 = v90;
            v28 = v91;
            v26 = v83;
          }
        }
      }

      ++v29;
      result = sub_258E3F930(v28, type metadata accessor for ExperimentDigest);
      if (v29 == v93)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_55:
    v75 = v79;
    v76 = v87;
    [v79 setDictationExperimentDigestsReported_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_258F0CA20;
    *(v77 + 32) = v75;
    sub_258E3F930(v80, type metadata accessor for EventMetadata);

    return v77;
  }

  return result;
}

uint64_t sub_258E3EFB0(uint64_t a1)
{
  v2 = sub_258F09A70();
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExperimentDigest(0);
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v69 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for EventMetadata(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258DE20C0(a1, v15, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_258DE2184(v15, &qword_27F9894E0, &unk_258F106A0);
    return MEMORY[0x277D84F90];
  }

  sub_258E3F8CC(v15, v21);
  v22 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v22)
  {
    sub_258E3F930(v21, type metadata accessor for EventMetadata);
    return MEMORY[0x277D84F90];
  }

  v59 = v21;
  v60 = v7;
  v66 = v2;
  v23 = v22;
  v76 = 1;
  v24 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
  v58 = v23;
  [v23 setEventMetadata_];

  v67 = [objc_allocWithZone(MEMORY[0x277D59260]) init];
  v75 = v67;
  sub_258E3F990(&v75, a1);
  result = type metadata accessor for DeviceExperimentMetrics(0);
  v26 = *(a1 + *(result + 44));
  v27 = v69;
  if (v26 && (v28 = *(v26 + 16)) != 0)
  {
    v29 = 0;
    v62 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
    v63 = v28;
    v70 = v26 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v30 = (v65 + 8);
    v31 = 0x277D5A000;
    v64 = v26;
    v61 = v65 + 16;
    while (v29 < *(v26 + 16))
    {
      sub_258E3E4F4(v70 + *(v71 + 72) * v29, v27);
      v32 = v27[1];
      if (v32)
      {
        v33 = *v27 == 0x4E41545349535341 && v32 == 0xE900000000000054;
        if (v33 || (sub_258F0AD80() & 1) != 0)
        {
          v34 = [objc_allocWithZone(MEMORY[0x277D59258]) init];
          if (v34)
          {
            v68 = v29;
            v35 = v34;
            v36 = sub_258E3C4B8(v27);
            [v35 setDimensions_];

            v37 = sub_258E3C71C(v27);
            [v35 setCounts_];

            v38 = sub_258E3C8A0(v27);
            v74 = v35;
            [v35 setTuples_];

            v39 = [objc_opt_self() sharedPreferences];
            v40 = [v39 longLivedIdentifierUploadingEnabled];

            v41 = v66;
            if (v40)
            {
              v42 = *&v69[*(v60 + 152)];
              if (v42)
              {
                v43 = v31;
                v44 = *(v42 + 16);
                if (v44)
                {
                  v45 = v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
                  v46 = *(v65 + 72);
                  v72 = *(v65 + 16);
                  v73 = v46;
                  do
                  {
                    v72(v6, v45, v41);
                    v47 = objc_allocWithZone(*(v43 + 3192));
                    v48 = sub_258F09A50();
                    (*v30)(v6, v41);
                    v49 = [v47 initWithNSUUID_];

                    [v74 addTurnIds_];
                    v45 += v73;
                    --v44;
                  }

                  while (v44);
                }
              }
            }

            v50 = v74;
            [v67 addDigests_];
            v51 = sub_258F0A350();
            v52 = sub_258F0A810();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_258DD8000, v51, v52, "Adding Assistant Experiment Digest to ODDSiriSchemaODDSiriClientEvent", v53, 2u);
              MEMORY[0x259C9EF40](v53, -1, -1);
            }

            v29 = v68;
            v27 = v69;
            v28 = v63;
            v26 = v64;
            v31 = 0x277D5A000uLL;
          }
        }
      }

      ++v29;
      result = sub_258E3F930(v27, type metadata accessor for ExperimentDigest);
      if (v29 == v28)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v54 = v58;
    v55 = v67;
    [v58 setAssistantExperimentDigestReported_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_258F0CA20;
    *(v56 + 32) = v54;
    sub_258E3F930(v59, type metadata accessor for EventMetadata);

    return v56;
  }

  return result;
}

uint64_t DeviceExperimentSELFEventConverter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DeviceExperimentSELFEventConverter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceExperimentSELFEventConverter()
{
  result = qword_27F989830;
  if (!qword_27F989830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E3F8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3F930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258E3F990(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v43 - v7;
  v9 = sub_258F09A70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (*a1)
  {
    v16 = type metadata accessor for DeviceExperimentMetrics(0);
    v17 = (a2 + v16[5]);
    if (*(v17 + 4))
    {
      v18 = 0;
    }

    else
    {
      v18 = *v17;
    }

    [v15 setDigestType_];
    v19 = [objc_allocWithZone(MEMORY[0x277D59348]) init];
    v20 = v19;
    v21 = (a2 + v16[6]);
    if (v21[1])
    {
      v22 = v19 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v46 = v9;
      v23 = v14;
      v24 = *v21;
      v25 = v19;
      v45 = a2;
      v26 = v10;
      v27 = v20;
      v28 = v15;
      v29 = v25;
      v14 = v23;
      v30 = sub_258F0A4E0();
      [v29 setExperimentId_];

      v15 = v28;
      v20 = v27;
      v10 = v26;
      a2 = v45;
      v9 = v46;
    }

    sub_258DE20C0(a2 + v16[7], v8, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_258DE2184(v8, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
      if (v20)
      {
        v31 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v32 = v20;
        v46 = v9;
        v44 = v14;
        v33 = sub_258F09A50();
        v34 = [v31 initWithNSUUID_];

        [v32 setTreatmentId_];
        (*(v10 + 8))(v44, v46);
      }

      else
      {
        (*(v10 + 8))(v14, v9);
      }
    }

    v35 = a2 + v16[8];
    if ((*(v35 + 8) & 1) == 0)
    {
      [v20 setDeploymentId_];
    }

    [v15 setExperimentFixedDimensions_];
    v36 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    v37 = v36;
    v38 = (a2 + v16[9]);
    if (v38[1] && v36)
    {
      v39 = *v38;
      v40 = v36;
      v41 = sub_258F0A4E0();
      [v40 setDeviceType_];
    }

    v42 = (a2 + v16[10]);
    if ((v42[1] & 1) == 0)
    {
      [v37 setProgramCode_];
    }

    [v15 setFixedDimensions_];
  }
}

uint64_t sub_258E3FD7C()
{
  v2[3] = &type metadata for Features;
  v2[4] = sub_258E3FDD4();
  LOBYTE(v2[0]) = 1;
  v0 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_258E3FDD4()
{
  result = qword_280CC5FB0;
  if (!qword_280CC5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC5FB0);
  }

  return result;
}

uint64_t sub_258E3FE28()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 sharedPreferences];
  v5 = [v4 dictationIsEnabled];

  return v5;
}

uint64_t DevicePropertiesResult.devicePropertiesEvents.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DevicePropertiesResult.siriAccountInformationEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}