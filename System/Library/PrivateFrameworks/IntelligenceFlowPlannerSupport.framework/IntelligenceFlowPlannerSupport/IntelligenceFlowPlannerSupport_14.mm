void sub_22BF31DDC()
{
  sub_22BE39064();
  sub_22BF36E48(v1);

  os_unfair_lock_unlock(v0 + 4);
}

void sub_22BF31E28()
{
  sub_22BF3950C();
  v1 = sub_22BE1C2A0();
  sub_22BF37D44(v1, v2);

  os_unfair_lock_unlock(v0 + 4);
}

void Toolbox.appIntents(schemaIdentifier:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22C272CA4();
  v4 = sub_22BE179D8(v3);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v8);
  sub_22BE26800();
  v9 = sub_22C2720A4();
  v10 = sub_22BE179D8(v9);
  v43 = v11;
  v44 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE1AB80();
  v14 = sub_22C272C54();
  v16 = v15;
  v17._countAndFlagsBits = sub_22C272C64();
  v19 = v18;
  v20._countAndFlagsBits = v14;
  v20._object = v16;
  v17._object = v19;
  v21 = Toolbox.appIntentsConformingToSchema(kind:domain:)(v20, v17);

  if (v21)
  {
    MEMORY[0x28223BE20](v22);
    *(&v41 - 2) = v2;
    sub_22BF2DFC4();
    if (!*(v23 + 16))
    {

      sub_22C271B24();
      v24 = v42;
      v25 = *(v42 + 16);
      v26 = sub_22BE3EA80();
      v25(v26);
      v27 = sub_22C272084();
      v28 = sub_22C2737A4();
      if (os_log_type_enabled(v27, v28))
      {
        sub_22BE1A260();
        v29 = swift_slowAlloc();
        sub_22BE2386C();
        v41 = swift_slowAlloc();
        v45 = v41;
        *v29 = 136315138;
        v30 = sub_22BE18240();
        v25(v30);
        sub_22BE33560();
        v31 = sub_22C273074();
        v33 = v32;
        v34 = *(v24 + 8);
        v35 = sub_22BE1AB1C();
        v36(v35);
        v37 = sub_22BE61C88(v31, v33, &v45);

        *(v29 + 4) = v37;
        _os_log_impl(&dword_22BE15000, v27, v28, "no tools implement schema ID %s", v29, 0xCu);
        sub_22BE26B64(v41);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      else
      {

        v38 = *(v24 + 8);
        v39 = sub_22BE1AB1C();
        v40(v39);
      }

      (*(v43 + 8))(v0, v44);
    }
  }

  sub_22BE1AABC();
}

Swift::OpaquePointer_optional __swiftcall Toolbox.appIntentsConformingToSchema(kind:domain:)(Swift::String kind, Swift::String domain)
{
  sub_22BE19460();
  v5 = v4;
  v40 = v6;
  v8 = v7;
  sub_22BE17BC4();
  v9 = sub_22C2720A4();
  v10 = sub_22BE179D8(v9);
  v38 = v11;
  v39 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v37 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  v16 = v3[5];
  v17 = v3[6];
  sub_22BE1BD3C(v3 + 2, v16);
  sub_22BE5CE4C(&qword_27D90B318, &qword_22C28C9E0);
  sub_22BE23C8C();
  v18 = sub_22C2720C4();
  sub_22BE179D8(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C275160;
  v25 = (v24 + v23);
  *v25 = v2;
  v25[1] = v8;
  v25[2] = v40;
  v25[3] = v5;
  v26 = *MEMORY[0x277D720E8];
  (*(v20 + 104))();
  v27 = qword_27D906378;

  if (v27 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v28 = sub_22C26E244();
  sub_22BE199F4(v28, qword_27D90B298);
  v29 = sub_22C26E1F4();
  v31 = (*(v17 + 32))(v24, v29, v30, v16, v17);

  if (!*(v31 + 16))
  {

    sub_22C271B24();

    v34 = sub_22C272084();
    v35 = sub_22C2737A4();

    if (os_log_type_enabled(v34, v35))
    {
      sub_22BE1A260();
      v36 = swift_slowAlloc();
      sub_22BE2386C();
      v41 = swift_slowAlloc();
      *(v36 + 4) = sub_22BE37BC4(4.8149e-34);
      _os_log_impl(&dword_22BE15000, v34, v35, "no tools implement schema ID %s", v36, 0xCu);
      sub_22BE26B64(v41);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v38 + 8))(v37, v39);
  }

  sub_22BE1AABC();
  result.value._rawValue = v32;
  result.is_nil = v33;
  return result;
}

BOOL sub_22BF32520(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C272164();
  v6[2] = a2;
  v4 = sub_22BF0CC88(sub_22BF39380, v6, v3);

  return v4;
}

uint64_t sub_22BF325A0(uint64_t a1)
{
  v2 = sub_22C272CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C2720D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D72148])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    sub_22BE199AC(&qword_28106DED8, MEMORY[0x277D73358]);
    v12 = sub_22C272FD4();
    (*(v3 + 8))(v6, v2);
    if (v12)
    {
      return 1;
    }
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

void Toolbox.appIntent(for:appBundleId:)()
{
  sub_22BE19130();
  v65 = v0;
  v66 = v1;
  v3 = v2;
  v4 = sub_22C2720A4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v55 = v10;
  sub_22BE183BC();
  v64 = sub_22C272AC4();
  v11 = sub_22BE179D8(v64);
  v60 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v63 = v15;
  sub_22BE183BC();
  v16 = sub_22C272224();
  v17 = sub_22BE179D8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  v58 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v68 = v24;
  Toolbox.appIntents(schemaIdentifier:)();
  if (v25)
  {
    v26 = v25;
    v53 = v7;
    v54 = v4;
    v27 = 0;
    v67 = *(v25 + 16);
    v61 = (v60 + 8);
    v57 = (v19 + 32);
    v59 = MEMORY[0x277D84F90];
    v28 = v16;
    for (i = v3; ; v3 = i)
    {
      while (1)
      {
        if (v67 == v27)
        {

          if (*(v59 + 16) <= 1uLL)
          {
            sub_22BF2DB0C(v59, MEMORY[0x277D72238], v3);
          }

          else
          {

            sub_22C271B24();
            v44 = sub_22C272084();
            v45 = sub_22C2737A4();
            v46 = sub_22BE28610();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_22BE15000, v44, v45, "ToolKit's build-time static extraction tools enforce that there may only be one AppEntity, AppIntent or AppEnum per application allowed to conform to a particular schema.", v48, 2u);
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
            }

            (*(v53 + 8))(v55, v54);
            sub_22BF38764();
            sub_22BE196B4();
            *v49 = 13;
            swift_willThrow();
          }

          goto LABEL_23;
        }

        if (v27 >= *(v26 + 16))
        {
          __break(1u);
          return;
        }

        v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v30 = *(v19 + 72);
        v31 = v27;
        v32 = v26 + v29 + v30 * v27;
        v33 = v28;
        (*(v19 + 16))(v68, v32, v28);
        sub_22C272154();
        v34 = sub_22C272A24();
        v36 = v35;
        (*v61)(v63, v64);
        if (v34 != v65 || v36 != v66)
        {
          break;
        }

LABEL_12:
        v39 = *v57;
        v28 = v33;
        (*v57)(v58, v68, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v59;
        v56 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BF394EC(*(v59 + 16));
          v28 = v33;
          v41 = v59;
        }

        v43 = *(v41 + 16);
        v42 = *(v41 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_22BE711C4(v42 > 1, v43 + 1, 1);
          v28 = v33;
          v41 = v59;
        }

        v27 = v31 + 1;
        *(v41 + 16) = v43 + 1;
        v59 = v41;
        v56(v41 + v29 + v43 * v30, v58, v28);
        v3 = i;
      }

      sub_22BE25EFC();
      v38 = sub_22C274014();

      if (v38)
      {
        goto LABEL_12;
      }

      v28 = v33;
      (*(v19 + 8))(v68, v33);
      v27 = v31 + 1;
    }
  }

  sub_22BE1A140();
  sub_22BE19DC4(v50, v51, v52, v16);
LABEL_23:
  sub_22BE18478();
}

void sub_22BF32CAC()
{
  sub_22BE19460();
  v113 = v2;
  v107 = sub_22C272224();
  v3 = sub_22BE179D8(v107);
  v106 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v7);
  v9 = &v103 - v8;
  v10 = sub_22C2720A4();
  v11 = sub_22BE179D8(v10);
  v108 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE190A8(v15);
  v16 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE336DC();
  v20 = sub_22C272AC4();
  v21 = sub_22BE179D8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  v28 = v27 - v26;
  v29 = *(v1 + 8);
  os_unfair_lock_lock((v29 + 36));
  v30 = *(v29 + 16);
  if (*(v29 + 32))
  {
    v31 = *(v29 + 16);
    v115 = *(v29 + 24);
  }

  else
  {
    v32 = *(v29 + 24);

    v33 = sub_22BE25EFC();
    v35 = sub_22BF39370(v33, v34, 0);
    (v30)(v119, v35);
    v36 = sub_22BE25EFC();
    sub_22BF39370(v36, v37, 0);
    v30 = v119[0];
    v38 = v119[1];
    *(v29 + 16) = v119[0];
    *(v29 + 24) = v38;
    *(v29 + 32) = 1;
    v31 = v30;
    v115 = v38;
  }

  sub_22BF39330(v31);
  os_unfair_lock_unlock((v29 + 36));
  if (!v30)
  {
    goto LABEL_46;
  }

  v118 = v30;
  v104 = v10;
  sub_22BE5CE4C(&qword_27D90B3E8, &qword_22C28CE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C2759F0;
  sub_22C272154();
  v40 = sub_22C272A24();
  v42 = v41;
  v43 = *(v23 + 8);
  v43(v28, v20);
  *(inited + 32) = v40;
  v109 = inited + 32;
  v110 = inited;
  *(inited + 40) = v42;
  sub_22C272194();
  sub_22BE1AB5C(v0, 1, v20);
  if (v66)
  {
    sub_22BE33928(v0, &unk_27D906F38, qword_22C274D30);
    v44 = 0;
    v46 = 0;
  }

  else
  {
    v44 = sub_22C272A24();
    v46 = v45;
    v43(v0, v20);
  }

  v47 = v110;
  *(v110 + 48) = v44;
  *(v47 + 56) = v46;
  v48 = sub_22C2721D4();
  v50 = v49;
  v51 = 0;
  v52 = 0;
  v53 = v118;
  v116 = v115 + 56;
  v117 = v118 + 7;
  v54 = v109;
  v111 = v9;
  while (1)
  {
    v55 = v51;
    v56 = (v54 + 16 * v52);
    v57 = v56[1];
    if (!v57)
    {
      goto LABEL_38;
    }

    v114 = v55;
    v58 = *v56;
    if (v53[2])
    {
      v59 = v53[5];
      sub_22C274154();

      sub_22C272F44();
      v60 = sub_22C2741A4();
      v61 = ~(-1 << *(v53 + 32));
      do
      {
        v62 = v60 & v61;
        v63 = (1 << (v60 & v61)) & *(v117 + (((v60 & v61) >> 3) & 0xFFFFFFFFFFFFFF8));
        v64 = v63 != 0;
        if (!v63)
        {
          break;
        }

        v65 = (v118[6] + 16 * v62);
        v66 = *v65 == v58 && v57 == v65[1];
        if (v66)
        {
          break;
        }

        sub_22BE30F20();
        v67 = sub_22C274014();
        v60 = v62 + 1;
      }

      while ((v67 & 1) == 0);
    }

    else
    {

      v64 = 0;
    }

    v68 = v115;
    if (!*(v115 + 16))
    {

      goto LABEL_37;
    }

    v69 = *(v115 + 40);
    sub_22C274154();

    sub_22C272F44();
    sub_22C272F44();
    v70 = sub_22C2741A4();
    v71 = -1 << *(v68 + 32);
    v9 = v70 & ~v71;
    if ((*(v116 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      break;
    }

    sub_22BE29488();
LABEL_37:
    v53 = v118;
    LOBYTE(v55) = v114;
    if (v64)
    {

      v102 = sub_22BE1A8C4();
      sub_22BF2AE88(v102);
      v80 = 0;
      v64 = 1;
      v81 = v107;
      goto LABEL_42;
    }

LABEL_38:
    v51 = 1;
    v52 = 1;
    if (v55)
    {
      v79 = sub_22BE1A8C4();
      sub_22BF2AE88(v79);

      swift_setDeallocating();
      sub_22BEDDA5C();
      goto LABEL_46;
    }
  }

  v72 = ~v71;
  v73 = *(v68 + 48);
  while (1)
  {
    v74 = (v73 + 32 * v9);
    v75 = v74[2];
    v76 = v74[3];
    v77 = *v74 == v48 && v74[1] == v50;
    if (v77 || (sub_22C274014() & 1) != 0)
    {
      if (v75 == v58 && v57 == v76)
      {
        break;
      }

      sub_22BE1A8C4();
      sub_22BE30F20();
      if (sub_22C274014())
      {
        break;
      }
    }

    v9 = (v9 + 1) & v72;
    if (((*(v116 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {

      sub_22BE29488();
      v54 = v109;
      goto LABEL_37;
    }
  }

  swift_bridgeObjectRelease_n();
  sub_22BF2AE88(v118);
  v80 = 1;
  v81 = v107;
  sub_22BE29488();
LABEL_42:
  swift_setDeallocating();
  sub_22BEDDA5C();
  sub_22C271B24();
  v82 = v106;
  v83 = *(v106 + 16);
  v84 = sub_22BE289D8();
  v83(v84);
  v85 = v81;
  v86 = sub_22C272084();
  v87 = sub_22C273794();
  v88 = sub_22BE28610();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    LODWORD(v117) = v80;
    v91 = v90;
    sub_22BE2386C();
    v118 = swift_slowAlloc();
    v119[0] = v118;
    *v91 = 136315650;
    (v83)(v105, v9, v85);
    v92 = sub_22C273074();
    v94 = v93;
    v95 = *(v82 + 8);
    v96 = sub_22BE289D8();
    v97(v96);
    v98 = sub_22BE61C88(v92, v94, v119);

    *(v91 + 4) = v98;
    *(v91 + 12) = 1024;
    *(v91 + 14) = v117;
    *(v91 + 18) = 1024;
    *(v91 + 20) = v64;
    _os_log_impl(&dword_22BE15000, v86, v87, "toolDefinition: %s is deny listed. isDeniedTool: %{BOOL}d, isDeniedBundleId: %{BOOL}d", v91, 0x18u);
    sub_22BE26B64(v118);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  else
  {

    v99 = *(v82 + 8);
    v100 = sub_22BE289D8();
    v101(v100);
  }

  (*(v108 + 8))(v112, v104);
LABEL_46:
  sub_22BE1AABC();
}

void Toolbox.bundleIds(schemaIdentifier:)()
{
  sub_22BE19460();
  v45 = sub_22C272AC4();
  v1 = sub_22BE179D8(v45);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17A44();
  v44 = v6;
  sub_22BE183BC();
  v43 = sub_22C272224();
  v7 = sub_22BE179D8(v43);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v14 = v13 - v12;
  Toolbox.appIntents(schemaIdentifier:)();
  if (v15)
  {
    MEMORY[0x28223BE20](v15);
    *(&v39 - 2) = v0;
    sub_22BF2DFC4();
    v17 = *(v16 + 16);
    if (v17)
    {
      v19 = *(v9 + 16);
      v18 = v9 + 16;
      v20 = *(v18 + 64);
      sub_22BE19E14();
      v39 = v21;
      v23 = v21 + v22;
      v40 = *(v18 + 56);
      v41 = v24;
      v25 = (v3 + 8);
      v42 = v18;
      v26 = (v18 - 8);
      v27 = MEMORY[0x277D84F90];
      do
      {
        v28 = sub_22BE3EA80();
        v29 = v43;
        v41(v28);
        v30 = v44;
        sub_22C272154();
        v31 = sub_22C272A24();
        v33 = v32;
        (*v25)(v30, v45);
        (*v26)(v14, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = *(v27 + 16);
          sub_22BE66214();
          v27 = v37;
        }

        v34 = *(v27 + 16);
        if (v34 >= *(v27 + 24) >> 1)
        {
          sub_22BE66214();
          v27 = v38;
        }

        *(v27 + 16) = v34 + 1;
        v35 = v27 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v33;
        v23 += v40;
        --v17;
      }

      while (v17);
    }
  }

  sub_22BE1AABC();
}

uint64_t sub_22BF33714()
{
  v0 = sub_22C272294();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  sub_22BF32CAC();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    sub_22C272174();
    sub_22C272284();
    sub_22BE199AC(&qword_28106DF78, MEMORY[0x277D72418]);
    v9 = sub_22C273974();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
  }

  return v9 & 1;
}

void Toolbox.isToolAvailable(toolDefinition:)()
{
  sub_22BE19460();
  v158 = v0;
  v4 = v3;
  v5 = sub_22C272224();
  v6 = sub_22BE179D8(v5);
  v139 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  v133 = v11;
  sub_22BE183BC();
  v12 = sub_22C2720A4();
  v13 = sub_22BE179D8(v12);
  v140 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v134 = v18;
  sub_22BE183BC();
  v151 = sub_22C2729A4();
  v19 = sub_22BE179D8(v151);
  v147 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  sub_22BE190A8(v23);
  v150 = sub_22BE5CE4C(&qword_27D90B328, &qword_22C28C9E8);
  sub_22BE18000(v150);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v149 = v27;
  v28 = sub_22BE5CE4C(&qword_27D90B330, &qword_22C28C9F0);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  v148 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  v152 = v35;
  sub_22BE183BC();
  v160 = sub_22C272D74();
  v36 = sub_22BE179D8(v160);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  v159 = v41;
  sub_22BE183BC();
  v42 = sub_22C2729F4();
  v43 = sub_22BE179D8(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v48);
  v50 = &v127 - v49;
  ToolDefinition.isAvailableForToolboxIndexing.getter();
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_22BF32CAC();
  if (v52)
  {
    goto LABEL_27;
  }

  v129 = v4;
  v158 = *(sub_22C272144() + 16);
  if (v158)
  {
    v136 = v2;
    v153 = v1;
    v128 = v5;
    v127 = v12;
    v53 = 0;
    v54 = *(v45 + 80);
    sub_22BE19E14();
    v157 = v55 + v56;
    v155 = v45 + 88;
    v156 = v45 + 16;
    v154 = *MEMORY[0x277D72FE0];
    v57 = (v45 + 8);
    v145 = (v45 + 96);
    v144 = *MEMORY[0x277D72FD0];
    v143 = (v38 + 32);
    v130 = (v147 + 4);
    v135 = (v147 + 1);
    v147 = (v38 + 8);
    v161 = v50;
    v58 = v148;
    v59 = v55;
    v131 = (v45 + 8);
    v146 = v55;
    v162 = v42;
    v142 = v45;
    while (1)
    {
      if (v53 >= *(v59 + 16))
      {
        __break(1u);
        return;
      }

      v60 = *(v45 + 16);
      v61 = v161;
      v60(v161, v157 + *(v45 + 72) * v53, v42);
      v62 = v153;
      v60(v153, v61, v162);
      v42 = v162;
      v63 = *(v45 + 88);
      v64 = sub_22BE180C8();
      v66 = v65(v64);
      if (v66 == v154)
      {
        break;
      }

      v77 = *v57;
      if (v66 == v144)
      {
        v78 = sub_22BE180C8();
        v77(v78);
        v79 = v161;
        if ((sub_22C2729E4() & 1) == 0)
        {

          v88 = v138;
          sub_22C271B24();
          sub_22BE29488();
          v89 = v137;
          (*(v42 + 16))(v137, v129, v128);
          v90 = sub_22C272084();
          v91 = sub_22C2737C4();
          v92 = sub_22BE28610();
          if (os_log_type_enabled(v92, v93))
          {
            sub_22BE1A260();
            v94 = v88;
            v95 = swift_slowAlloc();
            sub_22BE2386C();
            v96 = swift_slowAlloc();
            v163[0] = v96;
            *v95 = 136315138;
            v97 = sub_22C2721D4();
            v99 = v98;
            (*(v42 + 8))(v89, v128);
            v100 = sub_22BE61C88(v97, v99, v163);

            *(v95 + 4) = v100;
            _os_log_impl(&dword_22BE15000, v90, v91, "Skipping tool due to disabled feature flag: %s", v95, 0xCu);
            sub_22BE26B64(v96);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();

            sub_22BE196EC();
            v102 = v94;
          }

          else
          {

            v121 = *(v42 + 8);
            v122 = sub_22BE1B18C();
            v123(v122);
            sub_22BE196EC();
            v102 = v88;
          }

          v101(v102, v127);
          (v77)(v161, v162);
          goto LABEL_27;
        }

        v80 = v79;
      }

      else
      {
        (v77)(v161, v42);
        v80 = v62;
      }

      (v77)(v80, v42);
LABEL_25:
      if (v158 == ++v53)
      {
        goto LABEL_26;
      }
    }

    v67 = *v145;
    v68 = sub_22BE180C8();
    v69(v68);
    v70 = *v143;
    v71 = sub_22BE3E8FC();
    v72(v71);
    v59 = v152;
    sub_22C272D64();
    sub_22BE187DC();
    v42 = v151;
    sub_22BE19DC4(v73, v74, v75, v151);
    sub_22C272994();
    v45 = v149;
    v76 = *(v150 + 48);
    sub_22BE27BA4();
    sub_22BE22868();
    sub_22BE2388C();
    sub_22BE22868();
    sub_22BE1AB5C(v45, 1, v42);
    if (v81)
    {
      sub_22BF394D4(v58);
      sub_22BF394D4(v59);
      sub_22BE1AB5C(&v76[v45], 1, v42);
      if (v81)
      {
        sub_22BE33928(v45, &qword_27D90B330, &qword_22C28C9F0);
        sub_22BE37570();
        goto LABEL_23;
      }
    }

    else
    {
      v59 = v136;
      sub_22BE2388C();
      sub_22BE22868();
      sub_22BE1AB5C(&v76[v45], 1, v42);
      if (!v81)
      {
        v85 = v141;
        (*v130)(v141, &v76[v45], v42);
        sub_22BE199AC(&qword_27D90B338, MEMORY[0x277D72DA0]);
        v132 = sub_22C272FD4();
        v86 = *v135;
        (*v135)(v85, v42);
        v58 = v148;
        sub_22BF394D4(v148);
        sub_22BF394D4(v152);
        v87 = sub_22BE1AEE4();
        v86(v87);
        v57 = v131;
        v76 = v161;
        sub_22BF394D4(v45);
        v59 = v146;
        v42 = v162;
        v45 = v142;
        if (v132)
        {
LABEL_23:
          if ((sub_22C2729E4() & 1) == 0)
          {
            v103 = v76;

            v104 = v134;
            sub_22C271B24();
            v105 = v139;
            v106 = v133;
            v107 = v128;
            (*(v139 + 16))(v133, v129, v128);
            v108 = sub_22C272084();
            v109 = sub_22C2737C4();
            v110 = sub_22BE28610();
            if (os_log_type_enabled(v110, v111))
            {
              sub_22BE1A260();
              v112 = v104;
              v113 = swift_slowAlloc();
              sub_22BE2386C();
              v114 = swift_slowAlloc();
              v163[0] = v114;
              *v113 = 136315138;
              v115 = v106;
              sub_22C2721D4();
              v116 = sub_22BE194EC();
              v118 = v117;
              (*(v105 + 8))(v116, v107);
              sub_22BE61C88(v115, v118, v163);
              sub_22BE194EC();

              *(v113 + 4) = v115;
              _os_log_impl(&dword_22BE15000, v108, v109, "Skipping tool due to unmet platform requirements: %s", v113, 0xCu);
              sub_22BE26B64(v114);
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();

              sub_22BE196EC();
              v120 = v112;
            }

            else
            {

              v124 = *(v105 + 8);
              v125 = sub_22BE289D8();
              v126(v125);
              sub_22BE196EC();
              v120 = v104;
            }

            v119(v120, v127);
            (*v147)(v159, v160);
            (*v131)(v103, v162);
            goto LABEL_27;
          }
        }

LABEL_24:
        (*v147)(v159, v160);
        (*v57)(v76, v42);
        goto LABEL_25;
      }

      v58 = v148;
      sub_22BF394D4(v148);
      sub_22BF394D4(v152);
      v82 = *v135;
      v83 = sub_22BE1AEE4();
      v84(v83);
    }

    sub_22BE33928(v45, &qword_27D90B328, &qword_22C28C9E8);
    sub_22BE37570();
    goto LABEL_24;
  }

LABEL_26:

LABEL_27:
  sub_22BE1AABC();
}

void ToolDatabase.subscript.getter()
{
  sub_22BE19130();
  v83 = v0;
  v84 = v1;
  v82 = v2;
  v4 = v3;
  v70 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v85 = v10;
  v11 = sub_22BE5CE4C(&qword_27D90B340, &qword_22C28C9F8);
  v12 = sub_22BE179D8(v11);
  v79 = v13;
  v80 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  v72 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v86 = v18;
  v81 = sub_22BE5CE4C(&qword_27D90B348, &qword_22C28CA00);
  sub_22BE179D8(v81);
  v74 = v19;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v24 = (&v70 - v23);
  v25 = sub_22C2722D4();
  v26 = sub_22BE179D8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE183AC();
  sub_22BE28EF4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v70 - v33;
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  v78 = v35;
  v36 = *v4;
  v37 = v4[1];
  v38 = v4[3];
  v71 = v4[2];
  v73 = v38;

  sub_22C2722B4();
  swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  *v24 = v39;
  v40 = v74;
  v41 = *(v74 + 104);
  v75 = *MEMORY[0x277D721C8];
  v42 = v81;
  v41(v24);
  v43 = sub_22BE199AC(&qword_28106DF70, MEMORY[0x277D724B8]);
  sub_22BF387D8(&qword_28106DF80, &qword_27D90B348, &qword_22C28CA00);
  v76 = v43;
  v77 = v34;
  sub_22C2724E4();

  v44 = v40;
  v45 = v73;
  (*(v44 + 8))(v24, v42);
  v46 = *(v28 + 8);
  v81 = v28 + 8;
  v46(v0, v25);
  swift_getKeyPath();
  sub_22C272A74();
  v48 = swift_allocBox();
  if (v45)
  {
    *v47 = v71;
    v47[1] = v45;
    v49 = *MEMORY[0x277D730E0];
    sub_22BE38368();
    (*(v50 + 104))();
    v51 = v72;
    *v72 = v48;
    v53 = v79;
    v52 = v80;
    (*(v79 + 104))(v51, v75, v80);
    (*(v53 + 32))(v86, v51, v52);
  }

  else
  {
    v54 = *MEMORY[0x277D730D8];
    sub_22BE38368();
    (*(v55 + 104))();
    *v86 = v48;
    v53 = v79;
    (*(v79 + 104))();
  }

  sub_22BF387D8(&qword_28106DF88, &qword_27D90B340, &qword_22C28C9F8);

  v56 = v77;
  v57 = v78;
  sub_22C2724E4();

  v58 = *(v53 + 8);
  v59 = sub_22BE1AB74();
  v60(v59);
  v46(v56, v25);
  v61 = v84;
  v62 = v85;
  sub_22C272484();
  if (v61)
  {
    goto LABEL_8;
  }

  v63 = sub_22C272224();
  sub_22BE3675C();
  sub_22BE1AB5C(v64, v65, v66);
  if (v67)
  {
    sub_22BE33928(v62, &qword_27D90B2D8, &qword_22C2B5080);
    sub_22BF385E0();
    sub_22BE196B4();
    *v68 = 0;
    swift_willThrow();
LABEL_8:
    v46(v57, v25);
    goto LABEL_9;
  }

  v46(v57, v25);
  sub_22BE38368();
  (*(v69 + 32))(v70, v62, v63);
LABEL_9:
  sub_22BE18478();
}

{
  sub_22BE19130();
  v117 = v4;
  v107 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v116 = v10;
  v11 = sub_22BE5CE4C(&qword_27D90B350, &qword_22C28CA68);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v113 = v15;
  v16 = sub_22BE5CE4C(&qword_27D90B358, &qword_22C28CA70);
  v17 = sub_22BE179D8(v16);
  v119 = v18;
  v120 = v17;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v114 = v22;
  v23 = sub_22BE5CE4C(&qword_27D90B360, &qword_22C28CA78);
  sub_22BE179D8(v23);
  v112 = v24;
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  v111 = v28;
  sub_22BE183BC();
  v122 = sub_22C272B54();
  v29 = sub_22BE179D8(v122);
  v115 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  v109 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE19490();
  v121 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  sub_22BE183BC();
  v108 = sub_22C272914();
  v37 = sub_22BE179D8(v108);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE179EC();
  v44 = v43 - v42;
  v45 = sub_22C272984();
  v46 = sub_22BE179D8(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE179EC();
  sub_22BE22DB8();
  v51 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v52 = sub_22BE19448(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE179EC();
  sub_22BE1AB80();
  v55 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v56 = sub_22BE18000(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v59);
  sub_22BE181E4();
  sub_22BE17CD4();
  sub_22BF386AC();
  sub_22BE1AB5C(v1, 1, v55);
  if (v60)
  {
    v61 = v2;
    (*(v48 + 16))(v3, v117, v45);
    v62 = *(v48 + 88);
    v63 = sub_22BE18240();
    if (v64(v63) == *MEMORY[0x277D72D18])
    {
      v65 = *(v48 + 96);
      v66 = sub_22BE18240();
      v67(v66);
      v68 = *v3;
      v69 = swift_projectBox();
      (*(v39 + 16))(v44, v69, v108);
      sub_22C2728F4();
      (*(v39 + 8))(v44, v108);
      sub_22C272AC4();
      sub_22BE187DC();
      sub_22BE19DC4(v70, v71, v72, v73);
      v2 = v61;
    }

    else
    {
      sub_22C272AC4();
      sub_22BE1A140();
      sub_22BE19DC4(v74, v75, v76, v77);
      v78 = *(v48 + 8);
      v79 = sub_22BE18240();
      v80(v79);
    }
  }

  else
  {
    sub_22BE2590C();
    sub_22BEBFD18();
  }

  sub_22C272B34();
  swift_getKeyPath();
  v81 = swift_allocBox();
  (*(v48 + 16))(v82, v117, v45);
  *v111 = v81;
  v110 = *MEMORY[0x277D721C8];
  (*(v112 + 104))(v111);
  sub_22BE199AC(&qword_27D90B368, MEMORY[0x277D73198]);
  sub_22BF387D8(&qword_27D90B370, &qword_27D90B360, &qword_22C28CA78);
  sub_22C2724E4();

  v83 = *(v112 + 8);
  v84 = sub_22BE27BA4();
  v85(v84);
  v86 = *(v115 + 8);
  v86(v109, v122);
  swift_getKeyPath();
  v118 = v2;
  sub_22BE22868();
  sub_22C272AC4();
  v87 = 1;
  sub_22BE3675C();
  sub_22BE1AB5C(v88, v89, v90);
  if (!v60)
  {
    v91 = swift_allocBox();
    sub_22BE38368();
    (*(v92 + 32))();
    *v113 = v91;
    (*(v119 + 104))(v113, v110, v120);
    v87 = 0;
  }

  sub_22BE19DC4(v113, v87, 1, v120);
  sub_22BE1AB5C(v113, 1, v120);
  if (v60)
  {
    v93 = v119;
    v95 = v114;
    (*(v119 + 104))(v114, *MEMORY[0x277D721D0], v120);
    sub_22BE1AB5C(v113, 1, v120);
    v98 = v116;
    if (!v60)
    {
      sub_22BE33928(v113, &qword_27D90B350, &qword_22C28CA68);
    }
  }

  else
  {
    v93 = v119;
    v94 = *(v119 + 32);
    v95 = v114;
    v96 = sub_22BE3E8FC();
    v97(v96);
    v98 = v116;
  }

  sub_22BF387D8(&qword_27D90B378, &qword_27D90B358, &qword_22C28CA70);
  sub_22C2724E4();

  (*(v93 + 8))(v95, v120);
  v86(v121, v122);
  sub_22C272494();
  if (v0)
  {
    goto LABEL_16;
  }

  v99 = sub_22C2728E4();
  sub_22BE3675C();
  sub_22BE1AB5C(v100, v101, v102);
  if (v60)
  {
    sub_22BE33928(v98, &qword_27D90B310, &qword_22C28C9D8);
    sub_22BF385E0();
    sub_22BE196B4();
    *v103 = 1;
    swift_willThrow();
LABEL_16:
    v104 = sub_22BE1B18C();
    (v86)(v104);
    sub_22BE33928(v118, &unk_27D906F38, qword_22C274D30);
    goto LABEL_17;
  }

  v105 = sub_22BE1B18C();
  (v86)(v105);
  sub_22BE33928(v118, &unk_27D906F38, qword_22C274D30);
  sub_22BE38368();
  (*(v106 + 32))(v107, v98, v99);
LABEL_17:
  sub_22BE18478();
}

uint64_t ToolDatabase.subscript.getter()
{
  v0 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v1 = sub_22BE19448(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  ToolDatabase.subscript.getter();
  sub_22BF394A4();
  return sub_22BF36794();
}

uint64_t sub_22BF35374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = sub_22BE5CE4C(a5, a6);
  sub_22BE179D8(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1AB80();
  v14 = *(v13 + 16);
  v15 = sub_22BE1C2A0();
  v16(v15);
  return a7(v7);
}

uint64_t ToolDatabase.tools(query:locale:)()
{
  v1 = sub_22C2725E4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE1AB80();
  (*(v4 + 104))(v0, *MEMORY[0x277D72858], v1);
  sub_22BE18240();
  v7 = sub_22C2724A4();
  v8 = *(v4 + 8);
  v9 = sub_22BE1AB74();
  v10(v9);
  return v7;
}

uint64_t ToolDatabase.iterate(query:locale:block:)()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C2725E4();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF355F0, 0, 0);
}

uint64_t sub_22BF355F0()
{
  sub_22BE183F0();
  (*(v0[8] + 104))(v0[9], *MEMORY[0x277D72858], v0[7]);
  v1 = *(MEMORY[0x277D72768] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_22BF356B4;
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x2821DACB8](v8, v3, v6, v7, v4);
}

uint64_t sub_22BF356B4()
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v2 = *v1;
  sub_22BE18C2C();
  *v7 = v2;
  *(v2 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22BF35850, 0, 0);
  }

  else
  {
    v8 = *(v2 + 72);

    sub_22BE17A94();

    return v9();
  }
}

uint64_t sub_22BF35850()
{
  sub_22BE183F0();
  v1 = *(v0 + 72);

  sub_22BE17A94();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t ToolDatabase.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t sub_22BF35980(uint64_t a1)
{
  v2 = sub_22BF392DC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BF359BC(uint64_t a1)
{
  v2 = sub_22BF392DC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BF35B60()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BF35C20;

  return ToolDatabase.iterate(query:locale:block:)();
}

uint64_t sub_22BF35C20()
{
  sub_22BE183F0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22BE18C2C();
  *v3 = v2;

  sub_22BE17A94();

  return v4();
}

uint64_t sub_22BF35D68()
{
  v0 = sub_22C26DBA4();
  v1 = sub_22BE19448(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE336DC();
  v4 = sub_22C26DC34();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_22C26DC24();
  sub_22C26DB84();
  result = sub_22C26DBB4();
  qword_27D90B2B0 = v7;
  return result;
}

uint64_t sub_22BF35DF4()
{
  v0 = sub_22C26DB74();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22C26DB64();
  qword_27D90B2B8 = result;
  return result;
}

uint64_t AssistantSchemaIdentifier.id.getter()
{
  v2 = sub_22C273064();
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE336DC();
  if (qword_27D906380 != -1)
  {
    swift_once();
  }

  sub_22C272CA4();
  sub_22BE3D470();
  sub_22BE199AC(v6, v7);
  sub_22C26DC04();
  if (!v1)
  {
    sub_22C273054();
    sub_22BE2590C();
    v0 = sub_22C273044();
    v9 = v8;
    v10 = sub_22BE2590C();
    sub_22BE29DD4(v10, v11);
    if (!v9)
    {
      v0 = 0x800000022C2D43B0;
      sub_22BF103C8();
      sub_22BE196B4();
      *v13 = 0xD000000000000072;
      *(v13 + 8) = 0x800000022C2D43B0;
      *(v13 + 16) = xmmword_22C28C970;
      *(v13 + 32) = 0xE200000000000000;
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_22BF35FB8()
{
  sub_22BE18378();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v9 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (v6)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    return 0;
  }

  if (v3 != v7 || v4 != v6)
  {
    sub_22BE1C2A0();
    sub_22BE30F20();
    if ((sub_22C274014() & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    if (((v5 ^ v8) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v5 == v8)
  {
LABEL_16:
    v11 = *(type metadata accessor for ToolboxCache.ToolCacheKey(0) + 20);

    JUMPOUT(0x2318A6910);
  }

  return 0;
}

uint64_t sub_22BF360A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22C272F44();
  sub_22C274174();
  if (v4)
  {
    sub_22C272F44();
  }

  sub_22C274174();
  v6 = *(type metadata accessor for ToolboxCache.ToolCacheKey(0) + 20);
  sub_22C26E244();
  sub_22BE189F8();
  sub_22BE199AC(v7, v8);
  return sub_22BE2BBBC();
}

uint64_t sub_22BF36164()
{
  sub_22C274154();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22C272F44();
  sub_22C274174();
  if (v4)
  {
    sub_22C272F44();
  }

  sub_22C274174();
  v6 = *(type metadata accessor for ToolboxCache.ToolCacheKey(0) + 20);
  sub_22C26E244();
  sub_22BE189F8();
  sub_22BE199AC(v7, v8);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BF3624C()
{
  sub_22BE18378();
  if (sub_22C272954())
  {
    v0 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
    v1 = *(v0 + 20);
    static Toolbox.ContainerForTypeLookup.== infix(_:_:)();
    if (v2)
    {
      v3 = *(v0 + 24);

      JUMPOUT(0x2318A6910);
    }
  }

  return 0;
}

void sub_22BF362CC()
{
  sub_22BE19460();
  sub_22BE17BC4();
  v1 = sub_22C272AC4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17A44();
  v34 = v7;
  v8 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE26800();
  v16 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v22 = v21 - v20;
  sub_22C272984();
  sub_22BE199AC(&qword_28106DF18, MEMORY[0x277D72D58]);
  sub_22C272EE4();
  v23 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v24 = *(v23 + 20);
  sub_22BE17CD4();
  sub_22BF386AC();
  sub_22BE1AB5C(v22, 1, v8);
  if (v25)
  {
    MEMORY[0x2318AC860](1);
  }

  else
  {
    sub_22BE2388C();
    sub_22BEBFD18();
    MEMORY[0x2318AC860](0);
    sub_22BE3EA80();
    sub_22BE2388C();
    sub_22BE22868();
    sub_22BE1AB5C(v14, 1, v1);
    if (v25)
    {
      sub_22C274174();
    }

    else
    {
      v26 = *(v4 + 32);
      v27 = sub_22BE180C8();
      v28(v27);
      sub_22C274174();
      sub_22BE3E5A4();
      sub_22BE199AC(v29, v30);
      sub_22C272EE4();
      (*(v4 + 8))(v34, v1);
    }

    sub_22BE33928(v0, &unk_27D906F38, qword_22C274D30);
  }

  v31 = *(v23 + 24);
  sub_22C26E244();
  sub_22BE189F8();
  sub_22BE199AC(v32, v33);
  sub_22BE2BBBC();
  sub_22BE1AABC();
}

uint64_t sub_22BF365C0(void (*a1)(_BYTE *))
{
  sub_22C274154();
  a1(v3);
  return sub_22C2741A4();
}

uint64_t sub_22BF36610(uint64_t a1, uint64_t a2)
{
  sub_22C274154();
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 1);
  v11 = *(v2 + 32);
  GlobalToolIdentifier.hash(into:)();
  v4 = *(a2 + 20);
  sub_22C26E244();
  sub_22BE189F8();
  sub_22BE199AC(v5, v6);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BF3670C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22C274154();
  a4(v6);
  return sub_22C2741A4();
}

uint64_t sub_22BF36794()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BF367E8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_22BE5CE4C(&qword_27D907228, &unk_22C275090);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - v7;
  v9 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C26E164();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = v45 - v17;
  v18 = sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = v45 - v23;
  v49 = v1;
  v25 = *(v1 + 8);
  if (*(v25 + 16))
  {
    sub_22BE6071C();
    if (v26)
    {
      v27 = *(v25 + 56);
      v45[2] = *(v19 + 72);
      sub_22BE22868();
      sub_22BEBFD18();
      v28 = v48;
      sub_22C26E154();
      (*(v51 + 16))(v16, v28, v52);
      v29 = v49;
      v30 = *(v49 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BF386AC();
      v31 = *(v29 + 8);
      v54 = v31;
      v45[1] = sub_22BE6071C();
      if (__OFADD__(*(v31 + 16), (v32 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v33 = v32;
        sub_22BE5CE4C(&qword_27D907210, &qword_22C275088);
        if (sub_22C273C44())
        {
          sub_22BE6071C();
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_17;
          }
        }

        if (v33)
        {
          v38 = v54;
          v39 = *(v54 + 56);
          sub_22BEBFD18();
          sub_22BE19DC4(v8, 0, 1, v18);
          (*(v51 + 40))(&v8[*(v18 + 44)], v16, v52);
          sub_22BE22868();
          if (sub_22BE1AEA8(v6, 1, v18) == 1)
          {
            sub_22BE33928(v6, &qword_27D907228, &unk_22C275090);
            v40 = *(v38 + 48);
            v41 = *(v46 + 72);
            sub_22BF36794();
            sub_22BE199AC(&qword_27D907218, type metadata accessor for ToolboxCache.ToolCacheKey);
            sub_22C273C64();
          }

          else
          {
            sub_22BEBFD18();
            v42 = *(v38 + 56);
            sub_22BEBFD18();
          }

          sub_22BF36794();
          (*(v51 + 8))(v48, v52);
          sub_22BE33928(v8, &qword_27D907228, &unk_22C275090);
          *(v49 + 8) = v38;
          v43 = v53;
          sub_22BE22868();
          sub_22BE33928(v24, &qword_27D907208, &qword_22C275080);
          v44 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
          return sub_22BE19DC4(v43, 0, 1, v44);
        }
      }

      sub_22BE19DC4(v8, 1, 1, v18);
      __break(1u);
LABEL_17:
      result = sub_22C2740B4();
      __break(1u);
      return result;
    }
  }

  v35 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v36 = v53;

  return sub_22BE19DC4(v36, 1, 1, v35);
}

uint64_t sub_22BF36E48@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_22BE5CE4C(&qword_27D907200, &qword_22C275078);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - v7;
  v9 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C26E164();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = v45 - v17;
  v18 = sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = v45 - v23;
  v49 = v1;
  v25 = *(v1 + 8);
  if (*(v25 + 16))
  {
    sub_22BE608D0();
    if (v26)
    {
      v27 = *(v25 + 56);
      v45[2] = *(v19 + 72);
      sub_22BE22868();
      sub_22BEBFD18();
      v28 = v48;
      sub_22C26E154();
      (*(v51 + 16))(v16, v28, v52);
      v29 = v49;
      v30 = *(v49 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BF386AC();
      v31 = *(v29 + 8);
      v54 = v31;
      v45[1] = sub_22BE608D0();
      if (__OFADD__(*(v31 + 16), (v32 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v33 = v32;
        sub_22BE5CE4C(&qword_27D9071D8, &qword_22C275068);
        if (sub_22C273C44())
        {
          sub_22BE608D0();
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_17;
          }
        }

        if (v33)
        {
          v38 = v54;
          v39 = *(v54 + 56);
          sub_22BEBFD18();
          sub_22BE19DC4(v8, 0, 1, v18);
          (*(v51 + 40))(&v8[*(v18 + 44)], v16, v52);
          sub_22BE22868();
          if (sub_22BE1AEA8(v6, 1, v18) == 1)
          {
            sub_22BE33928(v6, &qword_27D907200, &qword_22C275078);
            v40 = *(v38 + 48);
            v41 = *(v46 + 72);
            sub_22BF36794();
            sub_22BE199AC(&qword_27D9071E0, type metadata accessor for ToolboxCache.TypeCacheKey);
            sub_22C273C64();
          }

          else
          {
            sub_22BEBFD18();
            v42 = *(v38 + 56);
            sub_22BEBFD18();
          }

          sub_22BF36794();
          (*(v51 + 8))(v48, v52);
          sub_22BE33928(v8, &qword_27D907200, &qword_22C275078);
          *(v49 + 8) = v38;
          v43 = v53;
          sub_22BE22868();
          sub_22BE33928(v24, &qword_27D9071D0, &qword_22C275060);
          v44 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
          return sub_22BE19DC4(v43, 0, 1, v44);
        }
      }

      sub_22BE19DC4(v8, 1, 1, v18);
      __break(1u);
LABEL_17:
      result = sub_22C2740B4();
      __break(1u);
      return result;
    }
  }

  v35 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
  v36 = v53;

  return sub_22BE19DC4(v36, 1, 1, v35);
}

uint64_t sub_22BF374A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v101 = a2;
  v104 = sub_22BE5CE4C(&qword_27D90B3F8, &unk_22C28CE90);
  v4 = *(*(v104 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v104);
  v99 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v82 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v82 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v92 = &v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v82 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v82 - v22;
  v23 = sub_22BE5CE4C(&qword_27D907228, &unk_22C275090);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v82 - v25;
  v27 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v90 = *(v27 - 8);
  v28 = *(v90 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_22C26E164();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v97 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v102 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v82 - v36;
  sub_22C26E154();
  sub_22BF386AC();
  sub_22BE22868();
  v38 = sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
  v39 = &v26[*(v38 + 44)];
  v95 = *(v30 + 16);
  v96 = v30 + 16;
  v95(v39, v37, v29);
  v100 = v38;
  sub_22BE19DC4(v26, 0, 1, v38);
  result = sub_22BE5FC4C();
  v41 = v3[1];
  if (*v3 >= *(v41 + 16))
  {
    return (*(v30 + 8))(v37, v29);
  }

  v93 = v29;
  v94 = v37;
  v101 = v18;
  v82 = v26;
  v83 = v21;
  v42 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 64);
  v84 = v3;
  if (v45)
  {
    v46 = 0;
    v47 = (v45 - 1) & v45;
    v48 = (v43 + 63) >> 6;
LABEL_11:
    v51 = *(v41 + 48);
    v88 = *(v90 + 72);
    sub_22BF386AC();
    v52 = *(v41 + 56);
    v87 = *(*(v100 - 8) + 72);
    v53 = *(v104 + 48);
    sub_22BE22868();
    sub_22BEBFD18();
    v92 = (v30 + 8);

    v89 = v48;
    v90 = v41 + 64;
    v91 = v41;
    v86 = v13;
    while (1)
    {
      v54 = v94;
      if (!v47)
      {
        break;
      }

      v55 = v46;
LABEL_17:
      v56 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v57 = v56 | (v55 << 6);
      v58 = *(v41 + 48);
      sub_22BF386AC();
      v59 = *(v41 + 56) + v57 * v87;
      v60 = *(v104 + 48);
      v61 = v104;
      sub_22BE22868();
      sub_22BEBFD18();
      v62 = v103;
      sub_22BE22868();
      v63 = &v62[*(v61 + 48)];
      v64 = v100;
      v65 = v93;
      v66 = v95;
      v95(v102, (v63 + *(v100 + 44)), v93);
      sub_22BE33928(v63, &qword_27D907208, &qword_22C275080);
      v67 = v99;
      sub_22BE22868();
      v68 = &v67[*(v104 + 48)];
      v69 = v97;
      v66(v97, v68 + *(v64 + 44), v65);
      sub_22BE33928(v68, &qword_27D907208, &qword_22C275080);
      v70 = v102;
      LOBYTE(v68) = sub_22C26E0F4();
      v71 = *v92;
      (*v92)(v69, v65);
      v71(v70, v65);
      sub_22BF36794();
      sub_22BF36794();
      if (v68)
      {
        sub_22BE33928(v101, &qword_27D90B3F8, &unk_22C28CE90);
        result = sub_22BEBFD18();
      }

      else
      {
        result = sub_22BE33928(v86, &qword_27D90B3F8, &unk_22C28CE90);
      }

      v46 = v55;
      v42 = v90;
      v41 = v91;
      v48 = v89;
    }

    while (1)
    {
      v55 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v55 >= v48)
      {

        sub_22BEBFD18();
        v72 = *(v104 + 48);
        v73 = v85;
        sub_22BF38654();
        sub_22BEBFD18();
        v74 = v82;
        sub_22BE622B4(v73, v75, v76, v77, v78, v79, v80, v81, v82, v83);
        sub_22BE33928(v74, &qword_27D907228, &unk_22C275090);
        sub_22BE33928(v73, &qword_27D90B3F8, &unk_22C28CE90);
        return (*v92)(v54, v93);
      }

      v47 = *(v42 + 8 * v55);
      ++v46;
      if (v47)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v49 = 0;
    v48 = (v43 + 63) >> 6;
    while (1)
    {
      v46 = v49 + 1;
      if (v49 + 1 >= v48)
      {
        break;
      }

      v50 = *(v41 + 72 + 8 * v49);
      v45 += 64;
      ++v49;
      if (v50)
      {
        v47 = (v50 - 1) & v50;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF37D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v101 = a2;
  v104 = sub_22BE5CE4C(&qword_27D90B3F0, &unk_22C28CE80);
  v4 = *(*(v104 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v104);
  v99 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v82 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v82 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v92 = &v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v82 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v82 - v22;
  v23 = sub_22BE5CE4C(&qword_27D907200, &qword_22C275078);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v82 - v25;
  v27 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v90 = *(v27 - 8);
  v28 = *(v90 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_22C26E164();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v97 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v102 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v82 - v36;
  sub_22C26E154();
  sub_22BF386AC();
  sub_22BE22868();
  v38 = sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
  v39 = &v26[*(v38 + 44)];
  v95 = *(v30 + 16);
  v96 = v30 + 16;
  v95(v39, v37, v29);
  v100 = v38;
  sub_22BE19DC4(v26, 0, 1, v38);
  result = sub_22BE5FDA0();
  v41 = v3[1];
  if (*v3 >= *(v41 + 16))
  {
    return (*(v30 + 8))(v37, v29);
  }

  v93 = v29;
  v94 = v37;
  v101 = v18;
  v82 = v26;
  v83 = v21;
  v42 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 64);
  v84 = v3;
  if (v45)
  {
    v46 = 0;
    v47 = (v45 - 1) & v45;
    v48 = (v43 + 63) >> 6;
LABEL_11:
    v51 = *(v41 + 48);
    v88 = *(v90 + 72);
    sub_22BF386AC();
    v52 = *(v41 + 56);
    v87 = *(*(v100 - 8) + 72);
    v53 = *(v104 + 48);
    sub_22BE22868();
    sub_22BEBFD18();
    v92 = (v30 + 8);

    v89 = v48;
    v90 = v41 + 64;
    v91 = v41;
    v86 = v13;
    while (1)
    {
      v54 = v94;
      if (!v47)
      {
        break;
      }

      v55 = v46;
LABEL_17:
      v56 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v57 = v56 | (v55 << 6);
      v58 = *(v41 + 48);
      sub_22BF386AC();
      v59 = *(v41 + 56) + v57 * v87;
      v60 = *(v104 + 48);
      v61 = v104;
      sub_22BE22868();
      sub_22BEBFD18();
      v62 = v103;
      sub_22BE22868();
      v63 = &v62[*(v61 + 48)];
      v64 = v100;
      v65 = v93;
      v66 = v95;
      v95(v102, (v63 + *(v100 + 44)), v93);
      sub_22BE33928(v63, &qword_27D9071D0, &qword_22C275060);
      v67 = v99;
      sub_22BE22868();
      v68 = &v67[*(v104 + 48)];
      v69 = v97;
      v66(v97, v68 + *(v64 + 44), v65);
      sub_22BE33928(v68, &qword_27D9071D0, &qword_22C275060);
      v70 = v102;
      LOBYTE(v68) = sub_22C26E0F4();
      v71 = *v92;
      (*v92)(v69, v65);
      v71(v70, v65);
      sub_22BF36794();
      sub_22BF36794();
      if (v68)
      {
        sub_22BE33928(v101, &qword_27D90B3F0, &unk_22C28CE80);
        result = sub_22BEBFD18();
      }

      else
      {
        result = sub_22BE33928(v86, &qword_27D90B3F0, &unk_22C28CE80);
      }

      v46 = v55;
      v42 = v90;
      v41 = v91;
      v48 = v89;
    }

    while (1)
    {
      v55 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v55 >= v48)
      {

        sub_22BEBFD18();
        v72 = *(v104 + 48);
        v73 = v85;
        sub_22BF38654();
        sub_22BEBFD18();
        v74 = v82;
        sub_22BE623EC(v73, v75, v76, v77, v78, v79, v80, v81, v82, v83);
        sub_22BE33928(v74, &qword_27D907200, &qword_22C275078);
        sub_22BE33928(v73, &qword_27D90B3F0, &unk_22C28CE80);
        return (*v92)(v54, v93);
      }

      v47 = *(v42 + 8 * v55);
      ++v46;
      if (v47)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v49 = 0;
    v48 = (v43 + 63) >> 6;
    while (1)
    {
      v46 = v49 + 1;
      if (v49 + 1 >= v48)
      {
        break;
      }

      v50 = *(v41 + 72 + 8 * v49);
      v45 += 64;
      ++v49;
      if (v50)
      {
        v47 = (v50 - 1) & v50;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BF385E0()
{
  result = qword_27D90B2F8;
  if (!qword_27D90B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B2F8);
  }

  return result;
}

uint64_t sub_22BF38654()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BF386AC()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

unint64_t sub_22BF38764()
{
  result = qword_27D90B320;
  if (!qword_27D90B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B320);
  }

  return result;
}

uint64_t sub_22BF387D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BF38878()
{
  result = qword_27D90B388;
  if (!qword_27D90B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B388);
  }

  return result;
}

uint64_t sub_22BF388D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF38910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BF38968()
{
  result = sub_22C272224();
  if (v1 <= 0x3F)
  {
    result = sub_22C272114();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Toolbox.BuiltInDefinition(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BF389F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C272224();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BF38A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C272224();

  return sub_22BE19DC4(a1, a2, a3, v6);
}

uint64_t sub_22BF38A90(uint64_t a1)
{
  v2 = sub_22C272224();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_22BF38B60()
{
  sub_22BF38BB8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22BF38BB8()
{
  if (!qword_27D90B3A0)
  {
    sub_22C272AC4();
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, &qword_27D90B3A0);
    }
  }
}

uint64_t dispatch thunk of ToolStoring.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

uint64_t dispatch thunk of ToolStoring.iterate(query:locale:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 80);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22BF35C20;
  v10 = sub_22BE196A8();

  return v12(v10);
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_22BF3908C(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

uint64_t sub_22BF3910C()
{
  result = sub_22C272984();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Toolbox.ContainerForTypeLookup(319);
    if (v2 <= 0x3F)
    {
      result = sub_22C26E244();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BF391D0()
{
  result = sub_22C26E244();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22BF392DC()
{
  result = qword_27D90B3E0;
  if (!qword_27D90B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B3E0);
  }

  return result;
}

uint64_t sub_22BF39330(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22BF39370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_22BF2AE88(a1);
  }

  else
  {
  }
}

unint64_t sub_22BF393A0()
{
  result = qword_28107CBD8;
  if (!qword_28107CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CBD8);
  }

  return result;
}

uint64_t sub_22BF393F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48);
    v5 = *(*(type metadata accessor for ToolboxCustomKeyResult(0) - 8) + 72);
    return sub_22BF386AC();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BF394D4(uint64_t a1)
{

  return sub_22BE33928(a1, v2, v1);
}

void sub_22BF394EC(uint64_t a1@<X8>)
{

  sub_22BE711C4(0, a1 + 1, 1);
}

void sub_22BF3950C()
{

  os_unfair_lock_lock(v0 + 4);
}

void sub_22BF3952C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_22BF3954C(uint64_t a1)
{
  result = MEMORY[0x2318ABD80](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v15 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v15;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22C1A7B60(&v14, v7, v6, v8, v9, v10, v11, v12, v13, v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF3960C(uint64_t a1)
{
  v2 = sub_22C272CA4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  v14 = sub_22BF3A9E0(&qword_28106DEE0, MEMORY[0x277D73358]);
  v15 = MEMORY[0x2318ABD80](v13, v2, v14);
  v26 = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v19 = *(v5 + 16);
    v17 = v5 + 16;
    v18 = v19;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v25 = a1;
    v21 = a1 + v20;
    v22 = *(v17 + 56);
    do
    {
      v18(v10, v21, v2);
      sub_22C1A7C40();
      (*(v17 - 8))(v12, v2);
      v21 += v22;
      --v16;
    }

    while (v16);

    return v26;
  }

  else
  {
    v23 = v15;
  }

  return v23;
}

uint64_t sub_22BF397C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22BE5CE4C(&qword_27D907728, &unk_22C2757A0);
  v4 = sub_22BEF8A28(&qword_27D90B420, &qword_27D907728, &unk_22C2757A0);
  result = MEMORY[0x2318ABD80](v2, v3, v4);
  v6 = 0;
  v14 = result;
  v7 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v7 == v6)
    {

      return v14;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    ++v6;
    v10 = *(i - 1);
    v9 = *i;
    v12 = *(i - 3);
    v11 = *(i - 2);

    sub_22C1A7EAC(&v13, v12, v11, v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF398EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C273174();
  v16 = MEMORY[0x2318ABD80](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v15[2] = a1;
  v15[3] = a2;
  v15[4] = 0;
  v15[5] = v5;
  while (1)
  {
    v6 = sub_22C273204();
    if (!v7)
    {
      break;
    }

    sub_22C1A8654(v15, v6, v7, v8, v9, v10, v11, v12, v14, v15[0]);
  }

  return v16;
}

uint64_t sub_22BF3998C(uint64_t a1)
{
  v2 = MEMORY[0x2318ABD80](*(a1 + 16), MEMORY[0x277D84A28], MEMORY[0x277D84A38]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_22C1A8734(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_22BF39A20(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
  v4 = sub_22BF3A92C();
  result = MEMORY[0x2318ABD80](v2, v3, v4);
  v6 = 0;
  v11 = result;
  v7 = *(a1 + 16);
  while (1)
  {
    if (v7 == v6)
    {

      return v11;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v8 = v6 + 1;
    v9 = *(a1 + 8 * v6 + 32);

    sub_22C1A8804(&v10, v9);

    v6 = v8;
  }

  __break(1u);
  return result;
}

void sub_22BF39AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v5 = sub_22C259378(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_22BE70138();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_22BE2FC64(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_22BE2FC64(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void static Toolbox.toolboxAllowList()(uint64_t *a1@<X8>)
{
  v3 = sub_22C26DF64();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = sub_22C2720A4();
  v9 = sub_22BE179D8(v76);
  v73 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  swift_getKeyPath();
  sub_22BE185E4();

  if (v74)
  {
    sub_22C271AD4();
    v21 = sub_22C272084();
    v22 = sub_22C2737C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22BE15000, v21, v22, "Use of allow list is disabled for Toolbox indexing", v23, 2u);
      sub_22BE183C8();
    }

    (*(v73 + 8))(v15, v76);
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v70 = v6;
  v71 = a1;
  sub_22BF3A4D4();
  v72 = sub_22BF3A464();
  swift_getKeyPath();
  sub_22BE185E4();

  if (v75)
  {
    v24 = v74;
  }

  else
  {
    v24 = 0xD000000000000010;
  }

  if (v75)
  {
    v25 = v75;
  }

  else
  {
    v25 = 0x800000022C2D44D0;
  }

  swift_getKeyPath();
  sub_22C26E624();

  v26 = *(v74 + 16);

  if (!v26)
  {
    swift_getKeyPath();
    sub_22C26E624();

    v27 = *(v74 + 16);

    if (!v27)
    {
      if (v72)
      {
        v49 = v72;
        v50 = sub_22BF3A694(v24, v25, 0x7473696C70, 0xE500000000000000, v49);
        v52 = v51;

        if (v52)
        {
          v68 = v49;
          v69 = v50;
          sub_22C271AD4();
          v53 = sub_22C272084();
          v54 = sub_22C2737C4();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_22BE15000, v53, v54, "Toolbox Allow List accessed", v55, 2u);
            sub_22BE183C8();
          }

          (*(v73 + 8))(v20, v76);
          sub_22C26DEC4();

          v56 = sub_22C26DFA4();
          if (v1)
          {
            v58 = sub_22BE1BF30();
            v59(v58);

            return;
          }

          v61 = v56;
          v62 = v57;
          v30 = v18;
          v63 = sub_22BE1BF30();
          v64(v63);
          v65 = sub_22C26DDB4();
          v66 = *(v65 + 48);
          v67 = *(v65 + 52);
          swift_allocObject();
          sub_22C26DDA4();
          sub_22BF3A73C();
          sub_22C26DD94();
          sub_22BE29DD4(v61, v62);

          v28 = v74;
          v29 = v75;
          goto LABEL_14;
        }
      }

      else
      {

        v49 = 0;
      }

      sub_22BF38764();
      swift_allocError();
      *v60 = 6;
      swift_willThrow();

      return;
    }
  }

  swift_getKeyPath();
  sub_22BE185E4();

  v28 = sub_22BF3954C(v74);
  swift_getKeyPath();
  sub_22BE185E4();

  v29 = sub_22BF3954C(v74);
  v30 = v18;
LABEL_14:
  sub_22C271AD4();

  v31 = sub_22C272084();
  v32 = sub_22C273794();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    *v33 = 136315394;

    sub_22BF39AEC(v34);
    v36 = v35;
    v70 = v30;

    v37 = MEMORY[0x2318ABBB0](v36, MEMORY[0x277D837D0]);
    v39 = v38;

    v40 = sub_22BE61C88(v37, v39, &v74);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;

    sub_22BF39AEC(v41);
    v43 = v42;

    v44 = MEMORY[0x2318ABBB0](v43, MEMORY[0x277D837D0]);
    v46 = v45;

    v47 = sub_22BE61C88(v44, v46, &v74);

    *(v33 + 14) = v47;
    _os_log_impl(&dword_22BE15000, v31, v32, "Allowed global tools: %s and local tools: %s either set through user default or ToolBoxAllowList.plist", v33, 0x16u);
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v73 + 8))(v70, v76);
  }

  else
  {

    (*(v73 + 8))(v30, v76);
  }

  v48 = v71;
  *v71 = v28;
  v48[1] = v29;
}

id sub_22BF3A464()
{
  v0 = sub_22C272FF4();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

unint64_t sub_22BF3A4D4()
{
  result = qword_28106DAF0;
  if (!qword_28106DAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28106DAF0);
  }

  return result;
}

uint64_t ToolBoxAllowLists.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22C273DC4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22BF3A598@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ToolBoxAllowLists.init(rawValue:)(a1);
}

unint64_t sub_22BF3A5A4@<X0>(void *a1@<X8>)
{
  result = ToolBoxAllowLists.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BF3A694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C272FF4();
  v7 = sub_22C272FF4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_22C273024();

  return v9;
}

unint64_t sub_22BF3A73C()
{
  result = qword_28107B630;
  if (!qword_28107B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107B630);
  }

  return result;
}

unint64_t sub_22BF3A794()
{
  result = qword_27D90B400;
  if (!qword_27D90B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B400);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxAllowLists(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BF3A8D8()
{
  result = qword_27D90B418;
  if (!qword_27D90B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B418);
  }

  return result;
}

unint64_t sub_22BF3A92C()
{
  result = qword_28106DE98;
  if (!qword_28106DE98)
  {
    sub_22BE7431C(&qword_27D907580, &qword_22C2B85E0);
    sub_22BF3A9E0(qword_28106E198, type metadata accessor for Candidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DE98);
  }

  return result;
}

uint64_t sub_22BF3A9E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BF3AA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = a4;
  v22 = a3;
  v23 = a2;
  v6 = sub_22C272CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v20 = v7 + 16;
  v16 = (v7 + 8);
  v24 = a1;

  v18 = 0;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      (*(v7 + 16))(v10, *(v24 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v6);
      sub_22BF3BD7C(v10, v23, v22, v21);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v16)(v10, v6);
      v18 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v16)(v10, v6);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BF3AC20(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (v7 != v6)
  {
    v8 = sub_22C272D24();
    sub_22BE17A18(v8);
    v9 = v6 + 1;
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v6;
    v13 = sub_22C272D14();
    sub_22BF3AD14(v13, a2);

    v14 = sub_22C272CF4();
    sub_22BF3AD14(v14, a3);

    v6 = v9;
  }

  return result;
}

uint64_t sub_22BF3AD14(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  for (i = (result + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = *a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v7 + 16);
      sub_22BE66214();
      v7 = v12;
      *a2 = v12;
    }

    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      sub_22BE66214();
      v7 = v13;
      *a2 = v13;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;

    i += 2;
  }

  return result;
}

uint64_t sub_22BF3AE08()
{
  v1[5] = v0;
  v2 = sub_22C2722D4();
  v1[6] = v2;
  sub_22BE17A18(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF3AEC0, 0, 0);
}

uint64_t sub_22BF3AEC0()
{
  v24 = v0;
  v1 = v0[5];
  sub_22BF4D750();
  v3 = v2;
  v4 = v0[5];
  v5 = v4[7];
  v6 = v4[8];
  sub_22BE1BD3C(v4 + 4, v5);
  (*(v6 + 96))(v23, v5, v6);
  v7 = v23[0];
  v22 = v23[1];
  if (qword_27D906378 != -1)
  {
    swift_once();
  }

  v8 = v0[8];
  v9 = v0[5];
  v10 = sub_22C26E244();
  v21 = sub_22BE199F4(v10, qword_27D90B298);
  v11 = swift_allocObject();
  v0[9] = v11;
  *(v11 + 16) = MEMORY[0x277D84F90];
  v12 = v4[7];
  v13 = v4[8];
  sub_22BE1BD3C(v4 + 4, v12);
  sub_22C2722B4();
  v14 = swift_allocObject();
  v0[10] = v14;
  v14[2] = v9;
  v14[3] = v7;
  v14[4] = v22;
  v14[5] = v3;
  v14[6] = v11;
  v15 = *(v13 + 80);

  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_22BF3B190;
  v18 = v0[8];

  return (v20)(v18, v21, sub_22BF3C468, v14, v12, v13);
}

uint64_t sub_22BF3B190()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_22BF3B3C0;
  }

  else
  {
    v7 = sub_22BF3B324;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BF3B324()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + 16);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22BF3B3C0()
{
  v1 = v0[9];

  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22BF3B42C()
{
  v1[2] = v0;
  v2 = sub_22C272CA4();
  v1[3] = v2;
  sub_22BE17A18(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF3B4F0, 0, 0);
}

uint64_t sub_22BF3B4F0()
{
  v57 = v0;
  v1 = v0[2];
  sub_22BF4D750();
  v3 = v2;
  v4 = v0[2];
  v5 = v4[7];
  v6 = v4[8];
  sub_22BE1BD3C(v4 + 4, v5);
  (*(v6 + 96))(v56, v5, v6);
  v7 = v56[0];
  v8 = v56[1];
  if (v56[0])
  {

    sub_22BF2A9E0(v9, v7);
    v53 = v10;
  }

  else
  {
    v53 = 0;
  }

  v54 = v8;
  v55 = v7;
  v48 = v3;
  if (qword_281072040 != -1)
  {
LABEL_25:
    swift_once();
  }

  v11 = v0[4];
  v12 = sub_22C271C14();
  sub_22BE199F4(v12, qword_28108A218);
  type metadata accessor for SharedAssistantSchemaProvider();
  sub_22BF3C338();
  v13 = *(sub_22C271BD4() + 16);
  v14 = sub_22C272BF4();

  v15 = v14 + 64;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 64);
  v19 = (63 - v17) >> 6;
  v50 = (v11 + 8);
  v51 = v11 + 16;
  v47 = (v11 + 32);
  v52 = v14;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v49 = MEMORY[0x277D84F90];
  while (v18)
  {
LABEL_13:
    v22 = v0[6];
    v23 = v0[2];
    v24 = *(v11 + 72);
    (*(v11 + 16))(v22, *(v52 + 48) + v24 * (__clz(__rbit64(v18)) | (v20 << 6)), v0[3]);
    sub_22BF4E0FC(v22, v53, v56, v25, v26, v27, v28, v29, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v55, v54);
    v18 &= v18 - 1;
    if (v31 && (v32 = v30, , (v32 & 0x100) != 0))
    {
      v33 = *v47;
      (*v47)(v0[5], v0[6], v0[3]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE66E18(0, *(v49 + 16) + 1, 1, v49);
        v49 = v38;
      }

      v35 = *(v49 + 16);
      v34 = *(v49 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22BE66E18(v34 > 1, v35 + 1, 1, v49);
        v49 = v39;
      }

      v36 = v0[5];
      v37 = v0[3];
      *(v49 + 16) = v35 + 1;
      v33(v49 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v35 * v24, v36, v37);
    }

    else
    {
      (*v50)(v0[6], v0[3]);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_13;
    }
  }

  v40 = v0[5];
  v41 = v0[6];
  sub_22BF2AE88(v55);

  v42 = sub_22BF3960C(v49);
  v56[0] = MEMORY[0x277D84F90];

  sub_22BF3AA28(v42, v52, v48, v56);

  v43 = v56[0];

  v44 = v0[1];

  return v44(v43);
}

void sub_22BF3B9B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v11 = sub_22C272AC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = a3;
  v57 = a4;
  sub_22BF4DCB4();
  if (!v6)
  {
    v54.i64[0] = a1;
    if (BYTE1(v59) << 8 != 512)
    {
      v52 = sub_22C2721D4();
      v53 = v16;
      sub_22C272154();
      v17 = sub_22C272A54();
      v19 = v18;
      (*(v12 + 8))(v15, v11);
      v20 = sub_22C2721E4();
      v22 = v21;
      v56 = v17;
      v57 = v19;

      MEMORY[0x2318AB8D0](v20, v22);

      v23 = sub_22C26AD34(0, v56, v57);
      v25 = v24;

      v26 = sub_22C2721D4();
      if (*(a5 + 16))
      {
        v28 = sub_22BE3B674(v26, v27);
        v30 = v29;

        v31 = v55;
        if (v30)
        {
          v32 = (*(a5 + 56) + 32 * v28);
          v33 = v23;
          v34 = v32[1].i64[0];
          v35 = v32[1].i64[1];
          v54 = *v32;
          v51 = vbslq_s8(vceqzq_s64(v54), vdupq_n_s64(MEMORY[0x277D84F90]), v54);
          swift_beginAccess();

          sub_22BE78AF0();
          v36 = *(*(v31 + 16) + 16);
          sub_22BE78BDC(v36);
          v37 = *(v31 + 16);
          *(v37 + 16) = v36 + 1;
          v38 = (v37 + (v36 << 6));
          v39 = v53;
          v38[2].i64[0] = v52;
          v38[2].i64[1] = v39;
          v38[3].i64[0] = v33;
          v38[3].i64[1] = v25;
          v38[4].i64[0] = v34;
          v38[4].i64[1] = v35;
          v38[5] = v51;
          *(v31 + 16) = v37;
          swift_endAccess();
          return;
        }
      }

      else
      {

        v31 = v55;
      }

      v59 = MEMORY[0x277D84F90];
      v58 = MEMORY[0x277D84F90];
      sub_22C272C34();
      sub_22C272C24();
      v40 = sub_22C2721A4();

      sub_22BF3AC20(v40, &v59, &v58);

      v55 = sub_22C272184();
      v42 = v41;
      v43 = v59;
      v44 = v58;
      swift_beginAccess();

      sub_22BE78AF0();
      v45 = v23;
      v46 = v31;
      v47 = *(*(v31 + 16) + 16);
      sub_22BE78BDC(v47);
      v48 = *(v46 + 16);
      *(v48 + 16) = v47 + 1;
      v49 = (v48 + (v47 << 6));
      v50 = v53;
      v49[4] = v52;
      v49[5] = v50;
      v49[6] = v45;
      v49[7] = v25;
      v49[8] = v55;
      v49[9] = v42;
      v49[10] = v43;
      v49[11] = v44;
      *(v46 + 16) = v48;
      swift_endAccess();
    }
  }
}

uint64_t sub_22BF3BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = a4;
  v60.i64[0] = a3;
  v59.i64[0] = sub_22C272BA4();
  v5 = *(v59.i64[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v59.i64[0]);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = sub_22C272C54();
  v61 = sub_22C26AD34(0, v18, v19);
  v62 = v20;

  v64 = v17;
  sub_22BF16EA0(a2, v17);
  v21 = sub_22C272C54();
  v23 = v22;
  sub_22C272C74();
  v24 = sub_22C272B94();
  v26 = v25;
  (*(v5 + 8))(v8, v59.i64[0]);
  v65 = v21;
  v66 = v23;

  MEMORY[0x2318AB8D0](v24, v26);

  v28 = v65;
  v27 = v66;
  v29 = v60.i64[0];
  v30 = sub_22C272C54();
  if (*(v29 + 16))
  {
    v32 = sub_22BE3B674(v30, v31);
    v34 = v33;

    if (v34)
    {
      v35 = (*(v29 + 56) + 32 * v32);
      v37 = v35[1].i64[0];
      v36 = v35[1].i64[1];
      v59 = *v35;
      v60 = vbslq_s8(vceqzq_s64(v59), vdupq_n_s64(MEMORY[0x277D84F90]), v59);

      v38 = v63;
      sub_22BE78AF0();
      v39 = *(*v38 + 16);
      sub_22BE78BDC(v39);
      result = sub_22BF3C400(v64);
      v41 = *v38;
      *(v41 + 16) = v39 + 1;
      v42 = (v41 + (v39 << 6));
      v42[2].i64[0] = v28;
      v42[2].i64[1] = v27;
      v43 = v62;
      v42[3].i64[0] = v61;
      v42[3].i64[1] = v43;
      v42[4].i64[0] = v37;
      v42[4].i64[1] = v36;
      v42[5] = v60;
      return result;
    }
  }

  else
  {
  }

  v65 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  sub_22BF3C390(v64, v15);
  v44 = sub_22C272114();
  if (sub_22BE1AEA8(v15, 1, v44) == 1)
  {
    sub_22BF3C400(v15);
  }

  else
  {
    v45 = sub_22C2720F4();
    (*(*(v44 - 8) + 8))(v15, v44);
    sub_22BF3AC20(v45, &v65, &v67);
  }

  v46 = v58;
  sub_22BF3C390(v64, v58);
  if (sub_22BE1AEA8(v46, 1, v44) == 1)
  {
    sub_22BF3C400(v46);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v47 = sub_22C272104();
    v48 = v49;
    (*(*(v44 - 8) + 8))(v46, v44);
  }

  v50 = v65;
  v51 = v67;

  v52 = v63;
  sub_22BE78AF0();
  v53 = *(*v52 + 16);
  sub_22BE78BDC(v53);
  sub_22BF3C400(v64);
  v54 = *v52;
  *(v54 + 16) = v53 + 1;
  v55 = (v54 + (v53 << 6));
  v55[4] = v28;
  v55[5] = v27;
  v56 = v62;
  v55[6] = v61;
  v55[7] = v56;
  v55[8] = v47;
  v55[9] = v48;
  v55[10] = v50;
  v55[11] = v51;
}

uint64_t ToolboxMetadata.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToolboxMetadata.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToolboxMetadata.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22BF3C298(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF3C2D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BF3C338()
{
  result = qword_281076450[0];
  if (!qword_281076450[0])
  {
    type metadata accessor for SharedAssistantSchemaProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281076450);
  }

  return result;
}

uint64_t sub_22BF3C390(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF3C400(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF3C48C()
{
  v74 = sub_22C2728A4();
  v0 = sub_22BE179D8(v74);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  v73 = (v6 - v5);
  v72 = sub_22C26E784();
  v7 = sub_22BE179D8(v72);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v71 = v13 - v12;
  v70 = sub_22C272224();
  v14 = sub_22BE179D8(v70);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  v21 = v20 - v19;
  sub_22BE5CE4C(&qword_27D90B428, &unk_22C28D170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C28D160;
  *(inited + 32) = 0x6E5F657461657263;
  *(inited + 40) = 0xEB0000000065746FLL;
  *(inited + 48) = 0xD00000000000005BLL;
  *(inited + 56) = 0x800000022C2D44F0;
  sub_22BE17D00();
  *(v24 + 64) = v23 & 0xFFFFFFFFFFFFLL | 0x725F000000000000;
  *(v24 + 72) = 0xEF7265646E696D65;
  sub_22BE18A1C();
  *(v26 + 80) = v25 + 79;
  *(v26 + 88) = v27;
  strcpy((v26 + 96), "send_message");
  *(v26 + 109) = 0;
  *(v26 + 110) = -5120;
  *(v26 + 112) = v25 + 39;
  *(v26 + 120) = 0x800000022C2D45C0;
  *(v26 + 128) = 0x64656D5F79616C70;
  *(v26 + 136) = 0xEA00000000006169;
  sub_22BE18A1C();
  v29[18] = v28 + 36;
  v29[19] = v30;
  v29[20] = 0x61635F7472617473;
  v29[21] = v31 + 2819;
  sub_22BE18A1C();
  *(v32 + 176) = v33;
  *(v32 + 184) = v34;
  sub_22BE17D00();
  *(v36 + 192) = v35 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
  *(v36 + 200) = 0xEC00000072656D69;
  sub_22BE18A1C();
  *(v38 + 208) = v37 + 20;
  *(v38 + 216) = v39;
  sub_22BE17D00();
  *(v41 + 224) = v40 & 0xFFFFFFFFFFFFLL | 0x615F000000000000;
  *(v41 + 232) = 0xEC0000006D72616CLL;
  strcpy((v41 + 240), "Creates alarms");
  *(v41 + 255) = -18;
  *(v41 + 256) = 0x657461676976616ELL;
  *(v41 + 264) = 0xEB000000006F745FLL;
  sub_22BE18A1C();
  *(v43 + 272) = v42 + 116;
  *(v43 + 280) = v44;
  v75 = v43;
  v78 = MEMORY[0x277D84F90];
  sub_22BE711C4(0, 8, 0);
  v45 = v78;
  v46 = sub_22C272984();
  v47 = 0;
  v66 = *MEMORY[0x277D72CC8];
  v65 = *MEMORY[0x277D72D50];
  v67 = v46;
  v64 = *MEMORY[0x277D72AD0];
  v62 = (v9 + 8);
  v63 = (v2 + 104);
  v68 = v21;
  v69 = v16;
  do
  {
    v48 = *(v75 + v47 + 40);
    v49 = *(v75 + v47 + 56);
    v76 = *(v75 + v47 + 48);
    v77 = *(v75 + v47 + 32);
    v50 = swift_allocBox();
    v52 = v51;
    v53 = v45;
    v54 = sub_22C272934();
    v55 = swift_allocBox();
    v56 = *(*(v54 - 8) + 104);
    v57 = v54;
    v45 = v53;
    v56(v58, v66, v57);
    *v52 = v55;
    (*(*(v67 - 8) + 104))(v52, v65, v67);
    *v73 = v50;
    (*v63)(v73, v64, v74);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_22C26E764();
    ClientAction.Definition.toolDefinition.getter(v68);

    (*v62)(v71, v72);
    v60 = *(v53 + 16);
    v59 = *(v53 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_22BE711C4(v59 > 1, v60 + 1, 1);
      v45 = v53;
    }

    *(v45 + 16) = v60 + 1;
    (*(v69 + 32))(v45 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v60, v68, v70);
    v47 += 32;
  }

  while (v47 != 256);
  swift_setDeallocating();
  sub_22BEDDAE4();
  return v45;
}

void ToolDatabase.LaunchServicesDatabaseVersion.encodedLSDBVersion()()
{
  v1 = v0;
  v2 = MEMORY[0x2318ACA20]();
  sub_22BF406B8(v1, &v4, &v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t ToolboxVersion.init(versionNumber:client:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v6 = sub_22BE3D170();
  sub_22BE18000(v6);
  v8 = *(v7 + 32);

  return v8(&a3[v3], a2);
}

Swift::String __swiftcall ToolboxDelegate.embeddingSnippetForToolInvocation(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_22BF3CB68()
{
  v0 = sub_22C272BA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C272C54();
  v7 = v6;
  sub_22C272C74();
  v8 = sub_22C272B94();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  v12[0] = v5;
  v12[1] = v7;

  MEMORY[0x2318AB8D0](v8, v10);

  return v12[0];
}

uint64_t ToolboxDelegate.embeddingSnippetForAssistantSchema(_:)()
{
  sub_22BE23C8C();
  v0 = sub_22C272BA4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C272C54();
  sub_22C272C74();
  v10 = sub_22C272B94();
  v12 = v11;
  (*(v3 + 8))(v8, v0);

  MEMORY[0x2318AB8D0](v10, v12);

  return v9;
}

uint64_t String.databaseValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = *MEMORY[0x277D78288];
  v5 = sub_22C26E4D4();
  sub_22BE18000(v5);
  (*(v6 + 104))(a3, v4);
}

uint64_t ToolboxPlanGenerationDelegate.versionIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();

  return sub_22BE297F8(v2, v3);
}

uint64_t ToolboxEmbeddingModel.hashValue.getter()
{
  v1 = *v0;
  sub_22BE25DAC();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t ToolboxVersion.client.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_22BE3D170();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v2, v5);
}

uint64_t ToolboxVersion.client.setter(uint64_t a1)
{
  v4 = sub_22BE3D170();
  sub_22BE18000(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v2, a1);
}

uint64_t ToolsOverride.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274204();
  if (!v2)
  {
    sub_22BE1BD3C(v8, v8[3]);
    sub_22BE5CE4C(&qword_27D90B430, &qword_22C28D180);
    sub_22BF40CD0(&unk_28106DE78);
    sub_22C274024();
    v6 = v8[6];
    sub_22BE26B64(v8);
    *a2 = v6;
  }

  return sub_22BE26B64(a1);
}

uint64_t sub_22BF3D1B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BF3D23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3D1B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BF3D268(uint64_t a1)
{
  v2 = sub_22BF40C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3D2A4(uint64_t a1)
{
  v2 = sub_22BF40C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolsOverride.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D90B438, &qword_22C28D188);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1BC40();
  v10 = *v0;
  v11 = v3[4];
  sub_22BE1BD3C(v3, v3[3]);
  sub_22BF40C7C();

  sub_22C274234();
  sub_22BE5CE4C(&qword_27D90B430, &qword_22C28D180);
  sub_22BF40CD0(&unk_27D90B448);
  sub_22C273FA4();

  (*(v6 + 8))(v1, v4);
  sub_22BE18478();
}

uint64_t ToolDefinitionOverrride.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22BF3D4D4()
{
  v0 = sub_22C273DC4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22BF3D520(char a1)
{
  if (!a1)
  {
    return 0x6D6178655F736F70;
  }

  if (a1 == 1)
  {
    return 0x6D6178655F67656ELL;
  }

  return 0x7470697263736564;
}

uint64_t sub_22BF3D5A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22BF3D4D4();
  *a2 = result;
  return result;
}

uint64_t sub_22BF3D5D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BF3D520(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22BF3D60C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BF3D4D4();
  *a1 = result;
  return result;
}

uint64_t sub_22BF3D634(uint64_t a1)
{
  v2 = sub_22BF40DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3D670(uint64_t a1)
{
  v2 = sub_22BF40DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolDefinitionOverrride.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D90B458, &unk_22C28D190);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AB80();
  v10 = *v0;
  v14 = v0[2];
  v15 = v0[1];
  v13 = v0[3];
  v11 = v3[4];
  sub_22BE1BD3C(v3, v3[3]);
  v12 = sub_22BF40DA4();

  sub_22C274234();
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BE48F64(&qword_28106DBE8);
  sub_22BE256F4();

  if (!v12)
  {
    sub_22BE256F4();
    sub_22C273F54();
  }

  (*(v6 + 8))(v1, v4);
  sub_22BE18478();
}

void ToolDefinitionOverrride.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D90B460, &qword_22C28D1A0);
  sub_22BE179D8(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = v12[4];
  sub_22BE1BD3C(v12, v12[3]);
  sub_22BF40DA4();
  sub_22C274214();
  if (v10)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE48F64(&qword_28106DBD8);
    sub_22BE269BC();
    sub_22BE269BC();
    v20 = sub_22C273E64();
    v22 = v21;
    v23 = sub_22BE3E5BC();
    v24(v23);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = v20;
    v14[3] = v22;

    sub_22BE26B64(v12);
  }

  sub_22BE18478();
}

uint64_t ToolBoxToolSearchResult.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ToolBoxToolSearchResult(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_22BF3DB64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BF3DC7C(char a1)
{
  if (!a1)
  {
    return 0x696665446C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x65726F6373;
  }

  return 0x65706F6373;
}

uint64_t sub_22BF3DCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3DB64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3DD08(uint64_t a1)
{
  v2 = sub_22BF40E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3DD44(uint64_t a1)
{
  v2 = sub_22BF40E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolBoxToolSearchResult.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_22BE5CE4C(&qword_27D90B468, &qword_22C28D1A8);
  sub_22BE179D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1AB80();
  v12 = a1[3];
  v13 = a1[4];
  sub_22BE2018C(a1);
  sub_22BF40E18();
  sub_22BE194D0();
  sub_22C272224();
  sub_22BE18DC4();
  sub_22BF40EC0(v14);
  sub_22BE19F48();
  if (!v2)
  {
    v15 = *(v4 + *(type metadata accessor for ToolBoxToolSearchResult(0) + 20));
    sub_22BE2315C();
    sub_22BE230B8();
    sub_22C273F84();
    sub_22BE25918();
    sub_22BE230B8();
    sub_22C273F34();
  }

  return (*(v8 + 8))(v3, v6);
}

void ToolBoxToolSearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  sub_22BE35844(v14);
  v15 = sub_22C272224();
  v16 = sub_22BE179D8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = sub_22BE5CE4C(&qword_27D90B488, &qword_22C28D1B0);
  sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BE24FD8();
  v24 = type metadata accessor for ToolBoxToolSearchResult(v23);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  sub_22BE1AB80();
  v28 = v12[3];
  v29 = v12[4];
  sub_22BE2018C(v12);
  sub_22BF40E18();
  sub_22BE35B58();
  if (v13)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE18DC4();
    sub_22BF40EC0(v30);
    sub_22BE1C310();
    v31 = sub_22BE1A2A0();
    v32(v31);
    sub_22BE2315C();
    sub_22BE3D488();
    sub_22C273E94();
    sub_22BE36768(v33);
    sub_22BE3D488();
    sub_22C273E44();
    v34 = sub_22BE19264();
    v35(v34);
    *(v15 + *(v24 + 24)) = a12;
    sub_22BF40FCC(v15, v36);
    sub_22BE26B64(v12);
    sub_22BF41028(v15, type metadata accessor for ToolBoxToolSearchResult);
  }

  sub_22BE18478();
}

uint64_t ToolBoxAssistantSchemaSearchResult.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_22BF3E254(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000022C2D4780 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BF3E36C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x65726F6373;
  }

  return 0x65706F6373;
}

uint64_t sub_22BF3E3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3E254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3E3F0(uint64_t a1)
{
  v2 = sub_22BF40F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3E42C(uint64_t a1)
{
  v2 = sub_22BF40F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolBoxAssistantSchemaSearchResult.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_22BE5CE4C(&qword_27D90B4A0, &qword_22C28D1B8);
  sub_22BE179D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1AB80();
  v12 = a1[3];
  v13 = a1[4];
  sub_22BE2018C(a1);
  sub_22BF40F78();
  sub_22BE194D0();
  sub_22C272CA4();
  sub_22BE1BF44();
  sub_22BF40EC0(v14);
  sub_22BE19F48();
  if (!v2)
  {
    v15 = *(v4 + *(type metadata accessor for ToolBoxAssistantSchemaSearchResult(0) + 20));
    sub_22BE2315C();
    sub_22BE230B8();
    sub_22C273F84();
    sub_22BE25918();
    sub_22BE230B8();
    sub_22C273F34();
  }

  return (*(v8 + 8))(v3, v6);
}

void ToolBoxAssistantSchemaSearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  sub_22BE35844(v14);
  v15 = sub_22C272CA4();
  v16 = sub_22BE179D8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = sub_22BE5CE4C(&qword_27D90B4B0, &qword_22C28D1C0);
  sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BE24FD8();
  v24 = type metadata accessor for ToolBoxAssistantSchemaSearchResult(v23);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  sub_22BE1AB80();
  v28 = v12[3];
  v29 = v12[4];
  sub_22BE2018C(v12);
  sub_22BF40F78();
  sub_22BE35B58();
  if (v13)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE1BF44();
    sub_22BF40EC0(v30);
    sub_22BE1C310();
    v31 = sub_22BE1A2A0();
    v32(v31);
    sub_22BE2315C();
    sub_22BE3D488();
    sub_22C273E94();
    sub_22BE36768(v33);
    sub_22BE3D488();
    sub_22C273E44();
    v34 = sub_22BE19264();
    v35(v34);
    *(v15 + *(v24 + 24)) = a12;
    sub_22BF40FCC(v15, v36);
    sub_22BE26B64(v12);
    sub_22BF41028(v15, type metadata accessor for ToolBoxAssistantSchemaSearchResult);
  }

  sub_22BE18478();
}

uint64_t sub_22BF3E8CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_22BF3E958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF3EA24(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x696665446C6F6F74;
  }
}

uint64_t sub_22BF3EA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3E958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3EA94(uint64_t a1)
{
  v2 = sub_22BF410A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3EAD0(uint64_t a1)
{
  v2 = sub_22BF410A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolBoxClientActionSearchResult.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_22BE5CE4C(&qword_27D90B4B8, &qword_22C28D1C8);
  sub_22BE179D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1BC40();
  v12 = a1[3];
  v13 = a1[4];
  sub_22BE2018C(a1);
  sub_22BF410A0();
  sub_22BE194D0();
  sub_22C272224();
  sub_22BE18DC4();
  sub_22BF40EC0(v14);
  sub_22C273FA4();
  if (!v2)
  {
    v15 = *(v4 + *(type metadata accessor for ToolBoxClientActionSearchResult(0) + 20));
    sub_22BE2315C();
    sub_22C273F84();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ToolBoxClientActionSearchResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C272224();
  v6 = sub_22BE179D8(v5);
  v29 = v7;
  v30 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v12 = v11 - v10;
  v31 = sub_22BE5CE4C(&qword_27D90B4C8, &unk_22C28D1D0);
  sub_22BE179D8(v31);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE24FD8();
  v17 = type metadata accessor for ToolBoxClientActionSearchResult(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  sub_22BE1BC40();
  v21 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF410A0();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  sub_22BE18DC4();
  sub_22BF40EC0(v22);
  sub_22C273EB4();
  (*(v29 + 32))(v3, v12, v30);
  sub_22C273E94();
  v24 = v23;
  v25 = sub_22BE25AC8();
  v26(v25);
  *(v3 + *(v17 + 20)) = v24;
  sub_22BF40FCC(v3, a2);
  sub_22BE26B64(a1);
  return sub_22BF41028(v3, type metadata accessor for ToolBoxClientActionSearchResult);
}

uint64_t static ToolboxCustomKeyResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v4 = sub_22C272CA4();
  v5 = sub_22BE179D8(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE1AB80();
  v9 = sub_22C272224();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE1BC40();
  v15 = type metadata accessor for ToolboxCustomKeyResult(0);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = *(*(sub_22BE5CE4C(&qword_27D90B4D0, &qword_22C2CB6C0) - 8) + 64);
  sub_22BE179FC();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v29 = *(v26 + 56);
  sub_22BF40FCC(v38, &v36 - v27);
  sub_22BF40FCC(v39, &v28[v29]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE18A28();
    sub_22BF40FCC(v28, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v36;
      v30 = v37;
      (*(v36 + 32))(v2, &v28[v29], v37);
      v32 = sub_22C272C44();
      v33 = *(v31 + 8);
      v33(v2, v30);
      v33(v21, v30);
LABEL_9:
      sub_22BF41028(v28, type metadata accessor for ToolboxCustomKeyResult);
      return v32 & 1;
    }

    (*(v36 + 8))(v21, v37);
  }

  else
  {
    sub_22BE18A28();
    sub_22BF40FCC(v28, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v12 + 32))(v3, &v28[v29], v9);
      v32 = sub_22C2721B4();
      v34 = *(v12 + 8);
      v34(v3, v9);
      v34(v23, v9);
      goto LABEL_9;
    }

    (*(v12 + 8))(v23, v9);
  }

  sub_22BE33928(v28, &qword_27D90B4D0, &qword_22C2CB6C0);
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_22BF3F310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF3F3E8(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 0x696665446C6F6F74;
  }
}

uint64_t sub_22BF3F438(uint64_t a1)
{
  v2 = sub_22BF41168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3F474(uint64_t a1)
{
  v2 = sub_22BF41168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF3F4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3F310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3F4E0(uint64_t a1)
{
  v2 = sub_22BF41114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3F51C(uint64_t a1)
{
  v2 = sub_22BF41114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF3F558(uint64_t a1)
{
  v2 = sub_22BF411BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3F594(uint64_t a1)
{
  v2 = sub_22BF411BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolboxCustomKeyResult.encode(to:)()
{
  sub_22BE19130();
  v71 = v1;
  v69 = v0;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D90B4D8, &qword_22C28D1E0);
  v6 = sub_22BE179D8(v5);
  v67 = v7;
  v68 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - v11;
  v12 = sub_22C272CA4();
  v13 = sub_22BE179D8(v12);
  v65 = v14;
  v66 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v63 = v18 - v17;
  v19 = sub_22BE5CE4C(&qword_27D90B4E0, &qword_22C28D1E8);
  v20 = sub_22BE179D8(v19);
  v61 = v21;
  v62 = v20;
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1BC40();
  v25 = sub_22C272224();
  v26 = sub_22BE179D8(v25);
  v59 = v27;
  v60 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  v32 = v31 - v30;
  v33 = type metadata accessor for ToolboxCustomKeyResult(0);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  v39 = v38 - v37;
  v40 = sub_22BE5CE4C(&qword_27D90B4E8, &qword_22C28D1F0);
  sub_22BE179D8(v40);
  v70 = v41;
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v46 = &v58 - v45;
  v47 = v4[4];
  sub_22BE1BD3C(v4, v4[3]);
  sub_22BF41114();
  sub_22C274234();
  sub_22BE18A28();
  sub_22BF40FCC(v69, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v65;
    v48 = v66;
    v50 = v63;
    (*(v65 + 32))(v63, v39, v66);
    sub_22BF41168();
    v51 = v64;
    sub_22C273EE4();
    sub_22BE1BF44();
    sub_22BF40EC0(v52);
    v53 = v68;
    sub_22C273FA4();
    (*(v67 + 8))(v51, v53);
    (*(v49 + 8))(v50, v48);
  }

  else
  {
    v55 = v59;
    v54 = v60;
    (*(v59 + 32))(v32, v39, v60);
    sub_22BF411BC();
    sub_22C273EE4();
    sub_22BE18DC4();
    sub_22BF40EC0(v56);
    v57 = v62;
    sub_22C273FA4();
    (*(v61 + 8))(v2, v57);
    (*(v55 + 8))(v32, v54);
  }

  (*(v70 + 8))(v46, v40);
  sub_22BE18478();
}

uint64_t ToolboxCustomKeyResult.hash(into:)()
{
  sub_22BE23C8C();
  v2 = sub_22C272CA4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22C272224();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  sub_22BE1BC40();
  v17 = type metadata accessor for ToolboxCustomKeyResult(0);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v23 = v22 - v21;
  sub_22BE18A28();
  sub_22BF40FCC(v0, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v10, v23, v2);
    MEMORY[0x2318AC860](1);
    sub_22BE1BF44();
    sub_22BF40EC0(v24);
    sub_22C272EE4();
    return (*(v5 + 8))(v10, v2);
  }

  else
  {
    (*(v14 + 32))(v1, v23, v11);
    MEMORY[0x2318AC860](0);
    sub_22BE18DC4();
    sub_22BF40EC0(v26);
    sub_22C272EE4();
    return (*(v14 + 8))(v1, v11);
  }
}

uint64_t ToolboxCustomKeyResult.hashValue.getter()
{
  sub_22BE25DAC();
  ToolboxCustomKeyResult.hash(into:)();
  return sub_22C2741A4();
}

void ToolboxCustomKeyResult.init(from:)()
{
  sub_22BE19130();
  v81 = v0;
  v2 = v1;
  v72 = v3;
  v80 = sub_22BE5CE4C(&qword_27D90B510, &qword_22C28D1F8);
  sub_22BE179D8(v80);
  v75 = v4;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v77 = &v68 - v8;
  v9 = sub_22BE5CE4C(&qword_27D90B518, &qword_22C28D200);
  v10 = sub_22BE179D8(v9);
  v73 = v11;
  v74 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v76 = &v68 - v15;
  v16 = sub_22BE5CE4C(&qword_27D90B520, &unk_22C28D208);
  v17 = sub_22BE179D8(v16);
  v78 = v18;
  v79 = v17;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v24 = type metadata accessor for ToolboxCustomKeyResult(0);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v68 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v68 - v34;
  v36 = v2[3];
  v37 = v2[4];
  sub_22BE2018C(v2);
  sub_22BF41114();
  v38 = v81;
  sub_22C274214();
  if (v38)
  {
    goto LABEL_8;
  }

  v68 = v30;
  v69 = v33;
  v39 = v79;
  v70 = v35;
  v71 = v24;
  v81 = v2;
  v40 = sub_22C273ED4();
  sub_22BE7C5C4(v40, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v53 = v71;
    v54 = sub_22C273B34();
    swift_allocError();
    v56 = v55;
    v57 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v56 = v53;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_22BF42C78();
    v59(v58, v39);
    v2 = v81;
LABEL_8:
    v60 = v2;
LABEL_9:
    sub_22BE26B64(v60);
    sub_22BE18478();
    return;
  }

  if (v42 < (v43 >> 1))
  {
    v82 = *(v41 + v42);
    sub_22BE7C5C0(v42 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      v48 = v39;
      if (v82)
      {
        sub_22BF41168();
        sub_22BE254B0();
        v49 = v70;
        sub_22C272CA4();
        sub_22BE1BF44();
        sub_22BF40EC0(v50);
        v51 = v68;
        sub_22BE289E4();
        v52 = v78;
        swift_unknownObjectRelease();
        v62 = sub_22BE1BA94();
        v63(v62);
        (*(v52 + 8))(v23, v48);
      }

      else
      {
        sub_22BF411BC();
        sub_22BE254B0();
        v49 = v70;
        sub_22C272224();
        sub_22BE18DC4();
        sub_22BF40EC0(v61);
        v51 = v69;
        sub_22BE289E4();
        swift_unknownObjectRelease();
        v64 = sub_22BE1BA94();
        v65(v64);
        v66 = sub_22BF42C78();
        v67(v66, v48);
      }

      swift_storeEnumTagMultiPayload();
      sub_22BF41268(v51, v49);
      sub_22BF41268(v49, v72);
      v60 = v81;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BF40334()
{
  sub_22C274154();
  ToolboxCustomKeyResult.hash(into:)();
  return sub_22C2741A4();
}

IntelligenceFlowPlannerSupport::ToolBoxToolScope_optional __swiftcall ToolBoxToolScope.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

IntelligenceFlowPlannerSupport::ToolBoxToolType_optional __swiftcall ToolBoxToolType.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v5 = a1._countAndFlagsBits == 0x6E61747369737361 && a1._object == 0xEF616D6568635374;
  if (v5 || (sub_22BE1A608() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x7261507473726966 && object == 0xED00007070417974;
    if (v8 || (sub_22BE1A608() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x7261506472696874 && object == 0xED00007070417974;
      if (v9 || (sub_22BE1A608() & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v11 = countAndFlagsBits == sub_22BF42C88() && object == v10;
        if (v11 || (sub_22BE1A608() & 1) != 0)
        {

          v7 = 3;
        }

        else if (countAndFlagsBits == sub_22BE2F160() && object == v12)
        {

          v7 = 4;
        }

        else
        {
          v14 = sub_22BE1A608();

          if (v14)
          {
            v7 = 4;
          }

          else
          {
            v7 = 5;
          }
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t ToolBoxToolType.description.getter()
{
  result = 0x6E61747369737361;
  switch(*v0)
  {
    case 1:
      v2 = 0x507473726966;
      goto LABEL_5;
    case 2:
      v2 = 0x506472696874;
LABEL_5:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      break;
    case 3:
      result = sub_22BF42C88();
      break;
    case 4:
      result = sub_22BE2F160();
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerSupport::ToolBoxToolType_optional __swiftcall ToolBoxToolType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_22BF406B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a2;
  v47 = a1;
  v39 = a3;
  v3 = sub_22C2720A4();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C26DBC4();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C26DBA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C26DBE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22C26DC34();
  (*(v16 + 104))(v19, *MEMORY[0x277CC8758], v15);
  sub_22BE5CE4C(&qword_27D908098, &qword_22C278EC8);
  v20 = *(v11 + 72);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22C275160;
  sub_22C26DB84();
  v49 = v22;
  sub_22BF40EC0(&qword_28107F370);
  sub_22BE5CE4C(&qword_27D9080A0, &qword_22C278ED0);
  sub_22BF42BE8(&qword_28106DDD0);
  sub_22C2739B4();
  (*(v45 + 104))(v9, *MEMORY[0x277CC8740], v46);
  sub_22C25F42C(v19, v14, v9);
  sub_22C272424();
  sub_22BF40EC0(&qword_28106DF58);
  v23 = v48;
  v24 = sub_22C26DC04();
  if (v23)
  {

    v26 = v40;
    sub_22C271AD4();
    v27 = v23;
    v28 = sub_22C272084();
    v29 = sub_22C2737A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v23;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_22BE15000, v28, v29, "Could not serialize ToolKit database version toolbox. Error: %@", v30, 0xCu);
      sub_22BE33928(v31, &qword_27D907870, &qword_22C27AB50);
      MEMORY[0x2318AD180](v31, -1, -1);
      MEMORY[0x2318AD180](v30, -1, -1);
    }

    (*(v41 + 8))(v26, v42);
    sub_22BF1C114();
    v34 = swift_allocError();
    *v35 = 4;
    swift_willThrow();

    *v43 = v34;
  }

  else
  {
    v36 = v24;
    v37 = v25;

    v38 = v39;
    *v39 = v36;
    v38[1] = v37;
  }
}

unint64_t sub_22BF40C28()
{
  result = qword_281079200;
  if (!qword_281079200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079200);
  }

  return result;
}

unint64_t sub_22BF40C7C()
{
  result = qword_27D90B440;
  if (!qword_27D90B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B440);
  }

  return result;
}

unint64_t sub_22BF40CD0(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BE7431C(&qword_27D90B430, &qword_22C28D180);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BF40D50()
{
  result = qword_27D90B450;
  if (!qword_27D90B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B450);
  }

  return result;
}

unint64_t sub_22BF40DA4()
{
  result = qword_281079218[0];
  if (!qword_281079218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281079218);
  }

  return result;
}

unint64_t sub_22BF40E18()
{
  result = qword_27D90B470;
  if (!qword_27D90B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B470);
  }

  return result;
}

unint64_t sub_22BF40E6C()
{
  result = qword_27D90B480;
  if (!qword_27D90B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B480);
  }

  return result;
}

unint64_t sub_22BF40EC0(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BF40F04()
{
  result = qword_27D90B498;
  if (!qword_27D90B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B498);
  }

  return result;
}

unint64_t sub_22BF40F78()
{
  result = qword_27D90B4A8;
  if (!qword_27D90B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4A8);
  }

  return result;
}

uint64_t sub_22BF40FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE23C8C();
  v6 = v5(v4);
  sub_22BE18000(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22BF41028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22BF410A0()
{
  result = qword_27D90B4C0;
  if (!qword_27D90B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4C0);
  }

  return result;
}

unint64_t sub_22BF41114()
{
  result = qword_27D90B4F0;
  if (!qword_27D90B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4F0);
  }

  return result;
}

unint64_t sub_22BF41168()
{
  result = qword_27D90B4F8;
  if (!qword_27D90B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4F8);
  }

  return result;
}

unint64_t sub_22BF411BC()
{
  result = qword_27D90B500;
  if (!qword_27D90B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B500);
  }

  return result;
}

uint64_t ToolboxCancellationStatus.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t ToolboxCancellationStatus.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_22BF41268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolboxCustomKeyResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BF412D0()
{
  result = qword_27D90B528;
  if (!qword_27D90B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B528);
  }

  return result;
}

unint64_t sub_22BF41328()
{
  result = qword_27D90B530;
  if (!qword_27D90B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B530);
  }

  return result;
}

unint64_t sub_22BF41380()
{
  result = qword_27D90B538;
  if (!qword_27D90B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B538);
  }

  return result;
}

unint64_t sub_22BF413D4(uint64_t a1)
{
  *(a1 + 8) = sub_22BF40EC0(&unk_28107D4A8);
  result = sub_22BF40EC0(&unk_28107D4B0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BF41458(uint64_t a1)
{
  *(a1 + 8) = sub_22BF40EC0(&unk_281073940);
  result = sub_22BF40EC0(&unk_281073948);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BF414DC(uint64_t a1)
{
  *(a1 + 8) = sub_22BF40EC0(&unk_2810751B0);
  result = sub_22BF40EC0(&unk_2810751B8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BF415AC()
{
  result = qword_27D90B548;
  if (!qword_27D90B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B548);
  }

  return result;
}

unint64_t sub_22BF41648()
{
  result = qword_27D90B560;
  if (!qword_27D90B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B560);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EmbeddingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BF419AC()
{
  result = sub_22C26FDF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BF41A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF41A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22BF41B1C()
{
  if (!qword_28107D400[0])
  {
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, qword_28107D400);
    }
  }
}

uint64_t sub_22BF41B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return sub_22BE1AEA8(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 <= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = *(a1 + *(a3 + 24));
    }

    v11 = v10 - 4;
    if (v9 >= 4)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22BF41C4C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = sub_22BE23C8C();
  result = v9(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v11 = sub_22BE37694();

    return sub_22BE19DC4(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

void sub_22BF41D00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_22BF41B1C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BF41DB8()
{
  result = sub_22C272224();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BF41E2C()
{
  result = sub_22C272224();
  if (v1 <= 0x3F)
  {
    result = sub_22C272CA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxToolScope(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxToolType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF420D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF421D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF422A8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BF42358()
{
  result = qword_27D90B590;
  if (!qword_27D90B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B590);
  }

  return result;
}

unint64_t sub_22BF423B0()
{
  result = qword_27D90B598;
  if (!qword_27D90B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B598);
  }

  return result;
}

unint64_t sub_22BF42408()
{
  result = qword_27D90B5A0;
  if (!qword_27D90B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5A0);
  }

  return result;
}

unint64_t sub_22BF42460()
{
  result = qword_27D90B5A8;
  if (!qword_27D90B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5A8);
  }

  return result;
}

unint64_t sub_22BF424B8()
{
  result = qword_27D90B5B0;
  if (!qword_27D90B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5B0);
  }

  return result;
}

unint64_t sub_22BF42510()
{
  result = qword_27D90B5B8;
  if (!qword_27D90B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5B8);
  }

  return result;
}

unint64_t sub_22BF42568()
{
  result = qword_27D90B5C0;
  if (!qword_27D90B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5C0);
  }

  return result;
}

unint64_t sub_22BF425C0()
{
  result = qword_27D90B5C8;
  if (!qword_27D90B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5C8);
  }

  return result;
}

unint64_t sub_22BF42618()
{
  result = qword_27D90B5D0;
  if (!qword_27D90B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5D0);
  }

  return result;
}

unint64_t sub_22BF42670()
{
  result = qword_27D90B5D8;
  if (!qword_27D90B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5D8);
  }

  return result;
}

unint64_t sub_22BF426C8()
{
  result = qword_27D90B5E0;
  if (!qword_27D90B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5E0);
  }

  return result;
}

unint64_t sub_22BF42720()
{
  result = qword_27D90B5E8;
  if (!qword_27D90B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5E8);
  }

  return result;
}

unint64_t sub_22BF42778()
{
  result = qword_27D90B5F0;
  if (!qword_27D90B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5F0);
  }

  return result;
}

unint64_t sub_22BF427D0()
{
  result = qword_27D90B5F8;
  if (!qword_27D90B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5F8);
  }

  return result;
}

unint64_t sub_22BF42828()
{
  result = qword_27D90B600;
  if (!qword_27D90B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B600);
  }

  return result;
}

unint64_t sub_22BF42880()
{
  result = qword_27D90B608;
  if (!qword_27D90B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B608);
  }

  return result;
}

unint64_t sub_22BF428D8()
{
  result = qword_27D90B610;
  if (!qword_27D90B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B610);
  }

  return result;
}

unint64_t sub_22BF42930()
{
  result = qword_27D90B618;
  if (!qword_27D90B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B618);
  }

  return result;
}

unint64_t sub_22BF42988()
{
  result = qword_27D90B620;
  if (!qword_27D90B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B620);
  }

  return result;
}

unint64_t sub_22BF429E0()
{
  result = qword_27D90B628;
  if (!qword_27D90B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B628);
  }

  return result;
}

unint64_t sub_22BF42A38()
{
  result = qword_281079208;
  if (!qword_281079208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079208);
  }

  return result;
}

unint64_t sub_22BF42A90()
{
  result = qword_281079210;
  if (!qword_281079210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079210);
  }

  return result;
}

unint64_t sub_22BF42AE8()
{
  result = qword_27D90B630;
  if (!qword_27D90B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B630);
  }

  return result;
}

unint64_t sub_22BF42B40()
{
  result = qword_27D90B638;
  if (!qword_27D90B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B638);
  }

  return result;
}

unint64_t sub_22BF42B94()
{
  result = qword_27D90B640;
  if (!qword_27D90B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B640);
  }

  return result;
}

unint64_t sub_22BF42BE8(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE7431C(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_22BF42CA8(char *a1@<X8>)
{
  v5 = _s19SentinelFileManagerVMa();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17D10();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1BF5C(v16, v17, v18, v19, v20, v21, v22, v23, v38);
  sub_22BF4375C(v2, v3);
  v24 = *(v13 + 56);
  sub_22BF437CC(v3, v11);
  sub_22BF249B8(v3 + v24);
  sub_22BF4375C(v2, v3);
  sub_22BF437CC(v3 + *(v13 + 56), v9);
  sub_22BF249B8(v3);
  v43 = v11;
  if (qword_281079B90 != -1)
  {
    sub_22BE18DDC();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BF6ACDC(&dword_281079B98, sub_22BF4386C, &v38, v11, v25, v26, v27, v28, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  if (!v1)
  {
    v30 = v29;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v30 & 1) != 0 || (v31 = sub_22BF2C188(), (v32))
    {
      sub_22BF249B8(v9);
      sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
      sub_22BF249B8(v11);
    }

    else
    {
      v34 = *&v31;
      v35 = COERCE_DOUBLE(sub_22BF2C188());
      v37 = v36;
      sub_22BF249B8(v9);
      sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
      sub_22BF249B8(v11);
      if ((v37 & 1) == 0)
      {
        v33 = v34 > v35;
        goto LABEL_8;
      }
    }

    v33 = 2;
LABEL_8:
    *a1 = v33;
    return;
  }

  os_unfair_lock_unlock(&dword_281079B98);
  __break(1u);
}

IntelligenceFlowPlannerSupport::ToolboxStatus::ReadOnly_optional __swiftcall ToolboxStatus.ReadOnly.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_22BF42F64()
{
  result = qword_27D90B648;
  if (!qword_27D90B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B648);
  }

  return result;
}

unint64_t sub_22BF42FBC()
{
  result = qword_27D90B650;
  if (!qword_27D90B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolboxStatus(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22BF430C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BF4319C(char *a1, void *a2)
{
  v2 = sub_22C26DEA4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22C26DF64();
  v12 = sub_22BE179D8(v11);
  v25 = v13;
  v26 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v18 = v17 - v16;
  v19 = *MEMORY[0x277CC91D8];
  v20 = *(v5 + 104);
  v20(v10, v19, v2);
  sub_22BE699D0();
  sub_22C26DF54();
  v21 = *(v5 + 8);
  v21(v10, v2);
  v20(v10, v19, v2);
  v22 = _s19SentinelFileManagerVMa();
  v23 = a2 + *(v22 + 20);
  sub_22C26DF54();
  v21(v10, v2);
  (*(v25 + 16))(&a1[*(v22 + 20)], v18, v26);
  *a1 = 0xD00000000000001CLL;
  *(a1 + 1) = 0x800000022C2D47A0;
  result = (*(v25 + 8))(v18, v26);
  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x800000022C2D47A0;
  return result;
}

void sub_22BF43408(char *a1@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D90B658, &unk_22C28E620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = _s19SentinelFileManagerVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17D10();
  v18 = MEMORY[0x28223BE20](v17);
  sub_22BE1BF5C(v18, v19, v20, v21, v22, v23, v24, v25, v38);
  sub_22BF4375C(v2, v3);
  sub_22BF437CC(v3 + *(v15 + 56), v13);
  sub_22BF249B8(v3);
  v43 = v13;
  if (qword_281079B90 != -1)
  {
    sub_22BE18DDC();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BF6ACDC(&dword_281079B98, sub_22BF43830, &v38, v13, v26, v27, v28, v29, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  if (v1)
  {

    os_unfair_lock_unlock(&dword_281079B98);
    __break(1u);
  }

  else
  {
    v31 = v30;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v31)
    {
      sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
      sub_22BF249B8(v13);
      v33 = 2;
    }

    else
    {
      MEMORY[0x28223BE20](v32);
      *(&v38 - 2) = v13;
      os_unfair_lock_lock(&dword_281079B98);
      sub_22BF6B0F4();
      os_unfair_lock_unlock(&dword_281079B98);
      v34 = sub_22C26E164();
      if (sub_22BE1AEA8(v8, 1, v34) == 1)
      {
        sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
        sub_22BE23388(v8, &qword_27D90B658, &unk_22C28E620);
        sub_22BF249B8(v13);
        v33 = 1;
      }

      else
      {
        v35 = sub_22BE23388(v8, &qword_27D90B658, &unk_22C28E620);
        sub_22BF2C188(v35);
        v37 = v36;
        sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
        sub_22BF249B8(v13);
        if (v37)
        {
          v33 = 2;
        }

        else
        {
          v33 = 0;
        }
      }
    }

    *a1 = v33;
  }
}

uint64_t sub_22BF4375C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF437CC(uint64_t a1, uint64_t a2)
{
  v4 = _s19SentinelFileManagerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF43894(uint64_t a1, uint64_t *a2)
{
  v101 = a2;
  v3 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v91 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - v7;
  v8 = sub_22C272224();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v89 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v86 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v86 - v16;
  MEMORY[0x28223BE20](v15);
  v94 = &v86 - v17;
  v18 = type metadata accessor for ToolboxSearchOutput(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v92 = v9 + 16;
  v96 = v9;
  v100 = v9 + 32;
  v102 = *(a1 + 16);
  v103 = MEMORY[0x277D84F90];
  v97 = a1;
  v93 = v21;
  while (v102 != v24)
  {
    v25 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v26 = *(v19 + 72);
    sub_22BF6805C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
        v29 = v23[*(v28 + 48)];
        v30 = *&v23[*(v28 + 64)];
        v31 = type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
        *(&v105 + 1) = v31;
        v106 = sub_22BE29F88(&qword_281073938, type metadata accessor for ToolBoxAssistantSchemaSearchResult);
        v32 = sub_22BE62524(&v104);
        v33 = sub_22C272CA4();
        (*(*(v33 - 8) + 32))(v32, v23, v33);
        *(v32 + *(v31 + 20)) = v30;
        *(v32 + *(v31 + 24)) = v29;
      }

      else
      {
        v56 = *(v23 + 1);
        v57 = *v101;
        if (!*(*v101 + 16))
        {
          goto LABEL_14;
        }

        v58 = *v23;
        v59 = *(v23 + 4);
        v60 = sub_22BE3B674(*v23, *(v23 + 1));
        if ((v61 & 1) == 0)
        {
          goto LABEL_14;
        }

        v62 = *(v57 + 56);
        v63 = v101;
        v64 = v8;
        v65 = v96;
        v98 = *(v96 + 72);
        v66 = v89;
        (*(v96 + 16))(v89, v62 + v98 * v60, v64);
        v99 = *(v65 + 32);
        v99(v95, v66, v64);
        v67 = *v63;
        v68 = sub_22BE3B674(v58, v56);
        if (v69)
        {
          v70 = v68;
          v71 = *v63;
          swift_isUniquelyReferenced_nonNull_native();
          *&v107[0] = *v63;
          v87 = *(*&v107[0] + 24);
          sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
          sub_22C273C44();
          v72 = *&v107[0];
          v73 = *(*(*&v107[0] + 48) + 16 * v70 + 8);

          v74 = v91;
          v99(v91, (*(v72 + 56) + v70 * v98), v64);
          sub_22C273C64();
          v75 = 0;
          *v63 = v72;
          a1 = v97;
        }

        else
        {
          v75 = 1;
          a1 = v97;
          v74 = v91;
        }

        sub_22BE19DC4(v74, v75, 1, v64);

        sub_22BE233E8(v74, &qword_27D90B2D8, &qword_22C2B5080);
        v78 = type metadata accessor for ToolBoxClientActionSearchResult(0);
        *(&v105 + 1) = v78;
        v106 = sub_22BE29F88(&qword_2810751A8, type metadata accessor for ToolBoxClientActionSearchResult);
        v79 = sub_22BE62524(&v104);
        v99(v79, v95, v64);
        *(v79 + *(v78 + 20)) = v59;
        v8 = v64;
      }
    }

    else
    {
      v34 = *(v23 + 1);
      v35 = *v101;
      if (!*(*v101 + 16) || (v36 = *v23, LODWORD(v99) = v23[16], v37 = *(v23 + 5), v38 = sub_22BE3B674(v36, v34), (v39 & 1) == 0))
      {
LABEL_14:

        v106 = 0;
        v104 = 0u;
        v105 = 0u;
LABEL_25:
        sub_22BE233E8(&v104, &qword_27D90B6E0, &qword_22C28EC10);
        goto LABEL_26;
      }

      v40 = *(v35 + 56);
      v41 = v8;
      v42 = v96;
      v43 = *(v96 + 72);
      v44 = v88;
      (*(v96 + 16))(v88, v40 + v43 * v38, v41);
      v98 = *(v42 + 32);
      v98(v94, v44, v41);
      v45 = *v101;
      v46 = sub_22BE3B674(v36, v34);
      if (v47)
      {
        v48 = v46;
        v49 = v101;
        v50 = *v101;
        LODWORD(v87) = swift_isUniquelyReferenced_nonNull_native();
        *&v107[0] = *v49;
        v51 = *(*&v107[0] + 24);
        sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
        sub_22C273C44();
        v52 = *&v107[0];
        v53 = *(*(*&v107[0] + 48) + 16 * v48 + 8);

        v54 = v90;
        v98(v90, (*(v52 + 56) + v48 * v43), v41);
        sub_22C273C64();
        v55 = 0;
        *v101 = v52;
      }

      else
      {
        v55 = 1;
        v54 = v90;
      }

      v8 = v41;
      sub_22BE19DC4(v54, v55, 1, v41);

      sub_22BE233E8(v54, &qword_27D90B2D8, &qword_22C2B5080);
      v76 = type metadata accessor for ToolBoxToolSearchResult(0);
      *(&v105 + 1) = v76;
      v106 = sub_22BE29F88(&qword_28107D4A0, type metadata accessor for ToolBoxToolSearchResult);
      v77 = sub_22BE62524(&v104);
      v98(v77, v94, v41);
      *(v77 + *(v76 + 20)) = v37;
      *(v77 + *(v76 + 24)) = v99;
      a1 = v97;
    }

    if (!*(&v105 + 1))
    {
      goto LABEL_25;
    }

    sub_22BE49224(&v104, v107);
    sub_22BE49224(v107, &v104);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = *(v103 + 16);
      sub_22BE66ED8();
      v103 = v83;
    }

    v80 = *(v103 + 16);
    if (v80 >= *(v103 + 24) >> 1)
    {
      sub_22BE66ED8();
      v103 = v84;
    }

    v81 = v103;
    *(v103 + 16) = v80 + 1;
    sub_22BE49224(&v104, v81 + 40 * v80 + 32);
LABEL_26:
    ++v24;
  }

  return v103;
}

uint64_t sub_22BF44174(uint64_t *a1)
{
  v2 = *(type metadata accessor for ToolBoxToolSearchResult(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C1160C0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BF648BC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22BF4421C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_22C272D24() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t sub_22BF442E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_22BF4437C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = a3;
  v30 = a2;
  v33 = sub_22C272224();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v33);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  v13 = 0;
  v31 = *(a1 + 16);
  v29 = v5 + 16;
  v14 = (v5 + 8);
  v27 = (v5 + 32);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v31 == v13)
    {

LABEL_14:

      return v15;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = *(v5 + 72);
    v18 = v10;
    (*(v5 + 16))(v12, v10 + v16 + v17 * v13, v33);
    v19 = sub_22BF56EFC(v12, v30, v32);
    if (v3)
    {
      (*v14)(v12, v33);

      goto LABEL_14;
    }

    if (v19)
    {
      v26 = *v27;
      v26(v28, v12, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE711C4(0, *(v15 + 16) + 1, 1);
        v15 = v34;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = *(v15 + 16);
        v25 = v22 + 1;
        sub_22BE711C4(v21 > 1, v22 + 1, 1);
        v22 = v24;
        v23 = v25;
        v15 = v34;
      }

      ++v13;
      *(v15 + 16) = v23;
      result = (v26)(v15 + v16 + v22 * v17, v28, v33);
      v10 = v18;
    }

    else
    {
      result = (*v14)(v12, v33);
      ++v13;
      v10 = v18;
    }
  }

  __break(1u);
  return result;
}

void sub_22BF44630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v5 = sub_22C259374(v2);
    v6 = 0;
    v7 = v2 + 64;
    v26 = v3;
    v27 = v1;
    v25 = v2 + 72;
    v28 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v30 = v6;
      v31 = v3;
      v29 = v4;
      v9 = (*(v2 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = v2;
      v14 = *(v32 + 16);
      v13 = *(v32 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_22BE70138();
      }

      *(v32 + 16) = v14 + 1;
      v15 = v32 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v16 = 1 << *(v12 + 32);
      if (v5 >= v16)
      {
        goto LABEL_24;
      }

      v7 = v28;
      v17 = *(v28 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v12;
      if (*(v12 + 36) != v31)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v19 = v27;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (v25 + 8 * v8);
        v19 = v27;
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_22BE2FC64(v5, v31, v29 & 1);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_22BE2FC64(v5, v31, v29 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v30 + 1;
      v5 = v16;
      v3 = v26;
      if (v30 + 1 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_22BF44878(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C273064();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C272CA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v59 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v14 = v59;
    v17 = sub_22C259378(a1);
    result = v14;
    v18 = 0;
    v57 = a1 + 56;
    v49 = v8 + 16;
    v50 = (v8 + 8);
    v44 = a1 + 64;
    v45 = v12;
    v47 = v7;
    v48 = a1;
    v46 = v8;
    if ((v17 & 0x8000000000000000) == 0)
    {
      while (v17 < 1 << *(a1 + 32))
      {
        if ((*(v57 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_32;
        }

        v53 = v17 >> 6;
        v54 = v15;
        v55 = v16;
        v52 = v18;
        v56 = result;
        (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * v17, v7);
        if (qword_27D906380 != -1)
        {
          swift_once();
        }

        sub_22BE29F88(&qword_28106DEE8, MEMORY[0x277D73358]);
        v19 = sub_22C26DC04();
        if (v2)
        {
          goto LABEL_28;
        }

        v21 = v19;
        v22 = v20;
        v23 = v7;
        v24 = v11;
        sub_22C273054();
        v25 = sub_22C273044();
        v27 = v26;
        sub_22BE29DD4(v21, v22);
        if (!v27)
        {
          sub_22BF103C8();
          swift_allocError();
          *v42 = 0xD000000000000072;
          *(v42 + 8) = 0x800000022C2D43B0;
          *(v42 + 16) = xmmword_22C28C970;
          *(v42 + 32) = 0xE200000000000000;
          swift_willThrow();
          v11 = v24;
          v7 = v23;
LABEL_28:
          (*v50)(v11, v7);
        }

        v58 = 0;
        (*v50)(v24, v23);
        result = v56;
        v59 = v56;
        v28 = *(v56 + 16);
        if (v28 >= *(v56 + 24) >> 1)
        {
          sub_22BE70138();
          result = v59;
        }

        *(result + 16) = v28 + 1;
        v29 = result + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v27;
        if (v55)
        {
          goto LABEL_36;
        }

        a1 = v48;
        v30 = 1 << *(v48 + 32);
        v2 = v58;
        if (v17 >= v30)
        {
          goto LABEL_33;
        }

        v31 = *(v57 + 8 * v53);
        if ((v31 & (1 << v17)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v48 + 36) != v54)
        {
          goto LABEL_35;
        }

        v11 = v24;
        v32 = v31 & (-2 << (v17 & 0x3F));
        if (v32)
        {
          v30 = __clz(__rbit64(v32)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v8 = v46;
          v7 = v47;
          v33 = v45;
        }

        else
        {
          v34 = v53 << 6;
          v35 = v53 + 1;
          v33 = v45;
          v36 = (v44 + 8 * v53);
          v8 = v46;
          v37 = v47;
          while (v35 < (v30 + 63) >> 6)
          {
            v39 = *v36++;
            v38 = v39;
            v34 += 64;
            ++v35;
            if (v39)
            {
              v40 = result;
              sub_22BE2FC64(v17, v54, 0);
              result = v40;
              v30 = __clz(__rbit64(v38)) + v34;
              goto LABEL_23;
            }
          }

          v41 = result;
          sub_22BE2FC64(v17, v54, 0);
          result = v41;
LABEL_23:
          v7 = v37;
          v2 = v58;
        }

        v18 = v52 + 1;
        if (v52 + 1 == v33)
        {
          return result;
        }

        v16 = 0;
        v15 = *(a1 + 36);
        v17 = v30;
        if (v30 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

unint64_t sub_22BF44D44(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_22BF682E8(a1, a2);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v45 = MEMORY[0x277D84F90];
  result = sub_22BE7129C(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v45;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 << v9;
    v12 = 15;
    v40 = v6;
    v41 = v3;
    v42 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v36 = v16;
          result = sub_22C192BB0(v12, v3, a2);
          v16 = v36;
          v11 = v42;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          result = sub_22C26CCB8(result, v3, a2);
          v16 = v18;
          v11 = v42;
          v17 = result >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_60;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_22C273A94();
        v16 = v22;
        v11 = v42;
        v21 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = &v43 + v17;
        v23 = *(&v43 + v17);
        v21 = *(&v43 + v17);
        if (v23 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
LABEL_33:
              v21 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_34:
              v24 = v19[1];
              v25 = v19[2];
              v26 = ((v21 & 0xF) << 12) | ((v24 & 0x3F) << 6);
              goto LABEL_36;
            case 0x1Cu:
LABEL_35:
              v27 = v19[1];
              v28 = v19[2];
              v25 = v19[3];
              v26 = ((v21 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v28 & 0x3F) << 6);
LABEL_36:
              v21 = v26 & 0xFFFFFFC0 | v25 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v37 = v16;
          result = sub_22C273B44();
          v16 = v37;
          v11 = v42;
        }

        v19 = (result + v17);
        v20 = *(result + v17);
        v21 = *(result + v17);
        if (v20 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_33;
            case 0x1Bu:
              goto LABEL_34;
            case 0x1Cu:
              goto LABEL_35;
            default:
              break;
          }
        }
      }

      v45 = v5;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        v38 = v16;
        result = sub_22BE7129C(v29 > 1, v30 + 1, 1);
        v16 = v38;
        v11 = v42;
        v5 = v45;
      }

      *(v5 + 16) = v30 + 1;
      *(v5 + 2 * v30 + 32) = v21;
      if (v16)
      {
        v10 = v39;
        v31 = v40;
        v3 = v41;
        if (v14 == v39)
        {
          result = sub_22C192BB0(v12, v41, a2);
          v11 = v42;
          v12 = result;
        }

        if (v11 <= v12 >> 16)
        {
          goto LABEL_61;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_22C26CCB8(v12, v41, a2);
          v11 = v42;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v31 = v40;
        v3 = v41;
        v10 = v39;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22C2730F4();
        v11 = v42;
        v12 = result;
      }

      else
      {
        v32 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v43 + v32);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_22C273B44();
            v11 = v42;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v12 = ((v32 + v35) << 16) | 5;
      }

      ++v8;
      if (v13 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF45140(uint64_t result, __n128 a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v3 = a2.n128_u16[0];
      result = sub_22C273534();
      v4 = 0;
      v5 = vdupq_n_s64(v2 - 1);
      v6 = (result + 46);
      *(result + 16) = v2;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E660)));
        if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
        {
          *(v6 - 7) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
        {
          *(v6 - 6) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E650)))), *&v5).i8[2])
        {
          *(v6 - 5) = v3;
          *(v6 - 4) = v3;
        }

        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E640)));
        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
        {
          *(v6 - 3) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
        {
          *(v6 - 2) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E630))))).i8[6])
        {
          *(v6 - 1) = v3;
          *v6 = v3;
        }

        v4 += 8;
        v6 += 8;
      }

      while (((v2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22BF452B4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_22C273534();
    v4 = 0;
    v5 = (result + 44);
    *(result + 16) = a2;
    v6 = vdupq_n_s64(a2 - 1);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_22C28E660)));
      if (vuzp1_s16(v8, *v6.i8).u8[0])
      {
        *(v5 - 3) = v3;
      }

      if (vuzp1_s16(v8, *&v6).i8[2])
      {
        *(v5 - 2) = v3;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_22C28E650)))).i32[1])
      {
        *(v5 - 1) = v3;
        *v5 = v3;
      }

      v4 += 4;
      v5 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22BF45398()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_22BF68D0C(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 6);
}

void *sub_22BF45408(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_22BF45440()
{
  sub_22BE183F0();
  v1[2] = v0;
  v2 = type metadata accessor for ToolboxVersion(0);
  v1[3] = v2;
  sub_22BE19448(v2);
  v4 = *(v3 + 64);
  v1[4] = sub_22BE25184();
  v5 = sub_22C2720A4();
  v1[5] = v5;
  sub_22BE17A18(v5);
  v1[6] = v6;
  v8 = *(v7 + 64);
  v1[7] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF4550C()
{
  v2 = v0[7];
  v3 = v0[2];
  sub_22C271AD4();

  v4 = sub_22C272084();
  v5 = sub_22C273784();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  v8 = v0[5];
  if (v6)
  {
    v9 = v0[4];
    v34 = v0[3];
    v36 = v0[7];
    v10 = v0[2];
    sub_22BE1A260();
    swift_slowAlloc();
    sub_22BF6AA04();
    v38 = swift_slowAlloc();
    *v1 = 136315138;
    v35 = v8;
    v11 = v10[19];
    sub_22BE1BD3C(v10 + 15, v10[18]);
    v12 = sub_22BE3C3AC();
    v13(v12);
    v14 = *(v34 + 20);
    sub_22C26FDE4();
    v15 = sub_22BF6AA80();
    sub_22BE18524(v15);
    (*(v16 + 8))(v9 + v14);
    v17 = sub_22BE18040();
    sub_22BE61C88(v17, v18, v19);
    sub_22BE3FDE8();

    *(v1 + 4) = v9 + v14;
    sub_22BE35E74();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_22BE26B64(v38);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v25 = sub_22BE22C7C();
    MEMORY[0x2318AD180](v25);

    (*(v7 + 8))(v36, v35);
  }

  else
  {

    v26 = *(v7 + 8);
    v27 = sub_22BE18040();
    v29(v27, v28);
  }

  v30 = v0[2];
  v0[8] = sub_22BF52030();
  v37 = sub_22BE36520(&dword_22C28ECF0);

  v31 = swift_task_alloc();
  v0[9] = v31;
  *v31 = v0;
  v31[1] = sub_22BF45744;
  v32 = v0[2];
  sub_22BE3E418();

  return (v37)();
}

uint64_t sub_22BF45744()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[10] = v0;

  if (!v0)
  {
    v9 = v3[8];
    v10 = v3[2];
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF45850()
{
  sub_22BE183F0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  sub_22BE1A26C();

  return v3();
}

uint64_t sub_22BF458B4()
{
  sub_22BE183FC();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  sub_22BE17A94();
  v6 = v0[10];

  return v5();
}

uint64_t sub_22BF45938()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for ToolboxVersion(0);
  v1[7] = v6;
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  v1[8] = sub_22BE25184();
  v9 = sub_22C26E164();
  v1[9] = v9;
  sub_22BE17A18(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = sub_22BE25184();
  v13 = sub_22C271FF4();
  v1[12] = v13;
  sub_22BE17A18(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = sub_22BE3602C();
  v1[15] = swift_task_alloc();
  v17 = sub_22C2720A4();
  v1[16] = v17;
  sub_22BE17A18(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = sub_22BE3602C();
  v1[19] = swift_task_alloc();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22BF45ABC()
{
  v1 = v0[19];
  v2 = v0[5];
  sub_22C271AD4();

  v3 = sub_22C272084();
  v4 = sub_22C2737C4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  if (v5)
  {
    v10 = v0[4];
    v9 = v0[5];
    sub_22BE1A260();
    v11 = swift_slowAlloc();
    sub_22BE2386C();
    v50 = swift_slowAlloc();
    *v11 = 136315138;
    v12 = sub_22BE18240();
    *(v11 + 4) = sub_22BE61C88(v12, v13, v14);
    _os_log_impl(&dword_22BE15000, v3, v4, "Replacing client actions for %s", v11, 0xCu);
    sub_22BE26B64(v50);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180](v15);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180](v16);
  }

  v17 = *(v8 + 8);
  v17(v6, v7);
  v0[20] = v17;
  v18 = v0[15];
  v19 = v0[6];
  sub_22C272014();
  sub_22C271FC4();
  v20 = sub_22C272014();
  v21 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v22 = v0[15];
    sub_22BE36138();
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v20, v21, v24, "ToolEmbeddingsDatabase:replaceClientActions", "", v23, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180](v25);
  }

  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[12];
  v29 = v0[13];
  v31 = v0[10];
  v30 = v0[11];
  v32 = v0[9];
  v33 = v0[5];

  v34 = *(v29 + 16);
  v35 = sub_22BE1B73C();
  v36(v35);
  v37 = sub_22C272064();
  sub_22BE29494(v37);
  swift_allocObject();
  v0[21] = sub_22BE25254();
  v38 = *(v29 + 8);
  v39 = sub_22BE1AEE4();
  v40(v39);
  sub_22C26E154();
  sub_22C26E104();
  v0[22] = v41;
  v0[23] = *(v31 + 8);
  v0[24] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = sub_22BE324FC();
  v43(v42);
  v44 = swift_task_alloc();
  v0[25] = v44;
  *v44 = v0;
  v44[1] = sub_22BF45D8C;
  v45 = v0[6];
  v46 = v0[3];
  v47 = v0[4];
  v48 = v0[2];

  return sub_22BF56B28(v48, v46, v47, v33);
}

uint64_t sub_22BF45D8C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF45E84()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  sub_22C26E154();
  sub_22C26E104();
  v7 = sub_22BE18040();
  v2(v7);
  sub_22C271AD4();

  v8 = sub_22C272084();
  LOBYTE(v1) = sub_22C273784();

  if (os_log_type_enabled(v8, v1))
  {
    v9 = v0[22];
    v37 = v0[18];
    v38 = v0[20];
    v35 = v0[17];
    v36 = v0[16];
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[6];
    sub_22BE33578();
    swift_slowAlloc();
    sub_22BF6AA04();
    v39 = swift_slowAlloc();
    *v2 = 136315394;
    v13 = v12[19];
    sub_22BE1BD3C(v12 + 15, v12[18]);
    v14 = sub_22BE3C3AC();
    v15(v14);
    v16 = v11 + *(v10 + 20);
    sub_22C26FDE4();
    v17 = sub_22BF6AA80();
    sub_22BE18524(v17);
    (*(v18 + 8))(v16);
    v19 = sub_22BE18040();
    sub_22BE61C88(v19, v20, v21);
    sub_22BE3FDE8();

    sub_22BF6AB50();
    sub_22BE35E74();
    _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    sub_22BE26B64(v39);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v27 = sub_22BE22C7C();
    MEMORY[0x2318AD180](v27);

    v38(v37, v36);
  }

  else
  {
    v28 = v0[20];
    v30 = v0[17];
    v29 = v0[18];
    v31 = v0[16];

    v32 = sub_22BE18040();
    v28(v32);
  }

  sub_22BE3A4EC();
  sub_22BF5BCAC();

  sub_22BE1A26C();

  return v33();
}

uint64_t sub_22BF460E8()
{
  sub_22BE2035C();
  sub_22BE3A4EC();
  sub_22BF5BCAC();

  sub_22BE17A94();
  v2 = *(v0 + 208);

  return v1();
}

uint64_t sub_22BF461A8()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v1 + 16);

    sub_22C271B84();
  }

  return result;
}

uint64_t sub_22BF461FC()
{
  sub_22BE183F0();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = type metadata accessor for ToolboxVersion(0);
  *(v1 + 48) = v7;
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = sub_22BE25184();
  v10 = sub_22C2720A4();
  *(v1 + 64) = v10;
  sub_22BE17A18(v10);
  *(v1 + 72) = v11;
  v13 = *(v12 + 64);
  *(v1 + 80) = sub_22BE25184();
  v14 = sub_22C26E164();
  *(v1 + 88) = v14;
  sub_22BE17A18(v14);
  *(v1 + 96) = v15;
  v17 = *(v16 + 64);
  *(v1 + 104) = sub_22BE25184();
  v18 = sub_22C271FF4();
  *(v1 + 112) = v18;
  sub_22BE17A18(v18);
  *(v1 + 120) = v19;
  v21 = *(v20 + 64);
  *(v1 + 128) = sub_22BE3602C();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = *v3;
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22BF4637C()
{
  v1 = v0[17];
  v2 = v0[5];
  sub_22C272014();
  sub_22C271FC4();
  v3 = sub_22C272014();
  v4 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v5 = v0[17];
    sub_22BE36138();
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v3, v4, v7, "ToolEmbeddingsDatabase:replaceTools", "", v6, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[5];
  v24 = v0[4];
  v25 = v0[3];
  v26 = v0[19];
  v22 = v0[11];
  v23 = v0[2];

  (*(v12 + 16))(v9, v10, v11);
  v16 = sub_22C272064();
  sub_22BE29494(v16);
  swift_allocObject();
  v0[20] = sub_22BE25254();
  (*(v12 + 8))(v10, v11);
  sub_22C26E154();
  sub_22C26E104();
  v0[21] = v17;
  v18 = *(v13 + 8);
  v0[22] = v18;
  v0[23] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v22);
  v0[24] = sub_22BF52030();
  v19 = swift_allocObject();
  v0[25] = v19;
  v19[2] = v15;
  v19[3] = v8;
  v19[4] = v26;
  v19[5] = v24;
  v19[6] = v23;
  v19[7] = v25;

  sub_22BF39330(v8);
  v27 = sub_22BE36520(&dword_22C28ECF0);

  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_22BF465FC;

  return (v27)();
}

uint64_t sub_22BF465FC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[27] = v0;

  if (!v0)
  {
    v10 = v3[24];
    v9 = v3[25];
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF46704()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[5];
  sub_22C26E154();
  sub_22C26E104();
  v7 = sub_22BE18944();
  v2(v7);
  sub_22C271AD4();

  v8 = sub_22C272084();
  LOBYTE(v1) = sub_22C273784();

  if (os_log_type_enabled(v8, v1))
  {
    v9 = v0[21];
    v43 = v0[9];
    v10 = v0[7];
    v44 = v0[8];
    v45 = v0[10];
    v11 = v0[5];
    v12 = v0[6];
    sub_22BE33578();
    swift_slowAlloc();
    sub_22BF6AA04();
    v46 = swift_slowAlloc();
    *v2 = 136315394;
    v13 = v11[19];
    sub_22BE1BD3C(v11 + 15, v11[18]);
    v14 = sub_22BE3C3AC();
    v15(v14);
    v16 = *(v12 + 20);
    sub_22C26FDE4();
    v17 = sub_22BF6AA80();
    sub_22BE18524(v17);
    (*(v18 + 8))(v10 + v16);
    v19 = sub_22BE18040();
    sub_22BE61C88(v19, v20, v21);
    sub_22BE3FDE8();

    sub_22BF6AB50();
    sub_22BE35E74();
    _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    sub_22BE26B64(v46);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v27 = sub_22BE22C7C();
    MEMORY[0x2318AD180](v27);

    (*(v43 + 8))(v45, v44);
  }

  else
  {
    v29 = v0[9];
    v28 = v0[10];
    v30 = v0[8];

    v31 = *(v29 + 8);
    v32 = sub_22BE18040();
    v33(v32);
  }

  v34 = v0[20];
  v36 = v0[16];
  v35 = v0[17];
  v37 = v0[13];
  v38 = v0[10];
  v39 = v0[7];
  v40 = v0[5];
  sub_22BF5BCAC();

  sub_22BE1A26C();

  return v41();
}

uint64_t sub_22BF46964()
{
  sub_22BE2035C();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[5];

  sub_22BF5BCAC();

  sub_22BE17A94();
  v11 = v0[27];

  return v10();
}