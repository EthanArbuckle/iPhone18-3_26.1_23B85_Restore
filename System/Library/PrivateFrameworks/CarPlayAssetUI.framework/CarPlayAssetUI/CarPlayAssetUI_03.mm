uint64_t sub_242C8A774()
{
  sub_242F06390();
  Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

unint64_t sub_242C8A7B0()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = sub_242EFCF00(v0, v1);

  return v2;
}

uint64_t sub_242C8A810(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v7 = a1;
  v8 = a4 + 64;
  v9 = 1 << *(a4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a4 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(*(a4 + 48) + 8 * v16);
      v18 = *(a4 + 56) + 48 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 40);
      v24 = *(v18 + 32);
      v26 = v17;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v31 = v24;
      v32 = v23;
      sub_242C7F6C4(v19, v20, v21, v22, v24);
      a2(&v25, &v33, &v26);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;
      sub_242C7F724(v27, v28, v29, v30, v31);

      v7 = v25;
      v33 = v25;
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    sub_242C7F724(v27, v28, v29, v30, v31);

LABEL_12:

    return v7;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_12;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI25ChargeFuelDataIdentifiersV2eeoiySbAC_ACtFZ_0()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == InstrumentDataIdentifier.rawValue.getter() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_242F06110();

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = InstrumentDataIdentifier.rawValue.getter();
  v7 = v6;
  if (v5 == InstrumentDataIdentifier.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_242F06110();

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v10 = InstrumentDataIdentifier.rawValue.getter();
  v12 = v11;
  if (v10 == InstrumentDataIdentifier.rawValue.getter() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_242F06110();

  if ((v14 & 1) == 0)
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

LABEL_13:
  v15 = InstrumentDataIdentifier.rawValue.getter();
  v17 = v16;
  if (v15 == InstrumentDataIdentifier.rawValue.getter() && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_242F06110();
  }

  return v19 & 1;
}

unint64_t sub_242C8ABD4()
{
  result = qword_27ECF0408;
  if (!qword_27ECF0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0408);
  }

  return result;
}

unint64_t sub_242C8AC28()
{
  result = qword_27ECF0410;
  if (!qword_27ECF0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0410);
  }

  return result;
}

unint64_t sub_242C8AC7C()
{
  result = qword_27ECF0420;
  if (!qword_27ECF0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0420);
  }

  return result;
}

uint64_t sub_242C8ACD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_242C8AD40(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO015ChargeFuelLevelF13ConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  memcpy(__dst, v1 + 8, sizeof(__dst));
  v124 = *(v4 + 45);
  v125 = *(v4 + 44);
  v123 = v4[368];
  v119 = *(v4 + 48);
  v120 = *(v4 + 47);
  v118 = v4[392];
  v113 = *(v4 + 51);
  v114 = *(v4 + 50);
  v112 = v4[416];
  v107 = *(v4 + 54);
  v108 = *(v4 + 53);
  v106 = v4[440];
  v101 = *(v4 + 57);
  v102 = *(v4 + 56);
  v100 = v4[464];
  v95 = *(v4 + 60);
  v96 = *(v4 + 59);
  v94 = v4[488];
  v89 = *(v4 + 63);
  v90 = *(v4 + 62);
  v88 = v4[512];
  v83 = *(v4 + 66);
  v84 = *(v4 + 65);
  v82 = v4[536];
  v78 = *(v4 + 68);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  memcpy(v135, v3 + 8, 0x158uLL);
  v13 = *(v3 + 44);
  v122 = *(v3 + 45);
  v121 = v3[368];
  v116 = *(v3 + 48);
  v117 = *(v3 + 47);
  v115 = v3[392];
  v110 = *(v3 + 51);
  v111 = *(v3 + 50);
  v109 = v3[416];
  v104 = *(v3 + 54);
  v105 = *(v3 + 53);
  v103 = v3[440];
  v98 = *(v3 + 57);
  v99 = *(v3 + 56);
  v97 = v3[464];
  v92 = *(v3 + 60);
  v93 = *(v3 + 59);
  v91 = v3[488];
  v86 = *(v3 + 63);
  v87 = *(v3 + 62);
  v85 = v3[512];
  v80 = *(v3 + 66);
  v81 = *(v3 + 65);
  v79 = v3[536];
  v77 = *(v3 + 68);
  LOBYTE(__src[0]) = v5;
  LOBYTE(v130[0]) = v9;
  v14 = InstrumentDataIdentifier.rawValue.getter();
  v16 = v15;
  if (v14 == InstrumentDataIdentifier.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_242F06110();

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  LOBYTE(__src[0]) = v6;
  LOBYTE(v130[0]) = v10;
  v19 = InstrumentDataIdentifier.rawValue.getter();
  v21 = v20;
  if (v19 == InstrumentDataIdentifier.rawValue.getter() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_242F06110();

    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  LOBYTE(__src[0]) = v7;
  LOBYTE(v130[0]) = v11;
  v24 = InstrumentDataIdentifier.rawValue.getter();
  v26 = v25;
  if (v24 == InstrumentDataIdentifier.rawValue.getter() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_242F06110();

    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  LOBYTE(__src[0]) = v8;
  LOBYTE(v130[0]) = v12;
  v29 = InstrumentDataIdentifier.rawValue.getter();
  v31 = v30;
  if (v29 == InstrumentDataIdentifier.rawValue.getter() && v31 == v32)
  {
  }

  else
  {
    v33 = sub_242F06110();

    if ((v33 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  memcpy(__src, __dst, 0x158uLL);
  memcpy(&__src[43], v135, 0x158uLL);
  memcpy(v133, __dst, sizeof(v133));
  if (sub_242C8B80C(v133) != 1)
  {
    memcpy(v131, __src, sizeof(v131));
    memcpy(v129, __src, sizeof(v129));
    memcpy(v130, &__src[43], 0x158uLL);
    if (sub_242C8B80C(v130) != 1)
    {
      memcpy(v128, &__src[43], sizeof(v128));
      sub_242C8ACD0(__dst, v127);
      sub_242C8ACD0(v135, v127);
      sub_242C8ACD0(v131, v127);
      v36 = _s14CarPlayAssetUI10InstrumentV31RemainingRangeTextConfigurationV2eeoiySbAE_AEtFZ_0(v129, v128);
      memcpy(v126, v128, sizeof(v126));
      sub_242C8C790(v126);
      memcpy(v127, v129, sizeof(v127));
      sub_242C8C790(v127);
      memcpy(v128, __src, sizeof(v128));
      sub_242C6D138(v128, &qword_27ECF0428);
      if (!v36)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    memcpy(v128, __src, sizeof(v128));
    sub_242C8ACD0(__dst, v127);
    sub_242C8ACD0(v135, v127);
    sub_242C8ACD0(v131, v127);
    sub_242C8C790(v128);
LABEL_23:
    memcpy(v130, __src, sizeof(v130));
    sub_242C6D138(v130, &qword_27ECF04C8);
    goto LABEL_24;
  }

  memcpy(v130, &__src[43], 0x158uLL);
  if (sub_242C8B80C(v130) != 1)
  {
    sub_242C8ACD0(__dst, v131);
    sub_242C8ACD0(v135, v131);
    goto LABEL_23;
  }

  memcpy(v131, __src, sizeof(v131));
  sub_242C8ACD0(__dst, v129);
  sub_242C8ACD0(v135, v129);
  sub_242C6D138(v131, &qword_27ECF0428);
LABEL_27:
  __src[0] = v125;
  __src[1] = v124;
  LOBYTE(__src[2]) = v123;
  v130[0] = v13;
  v130[1] = v122;
  LOBYTE(v130[2]) = v121;
  v37 = Theme.ColorID.rawValue.getter();
  v39 = v38;
  if (v37 == Theme.ColorID.rawValue.getter() && v39 == v40)
  {
  }

  else
  {
    v41 = sub_242F06110();

    if ((v41 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v120;
  __src[1] = v119;
  LOBYTE(__src[2]) = v118;
  v130[0] = v117;
  v130[1] = v116;
  LOBYTE(v130[2]) = v115;
  v42 = Theme.ColorID.rawValue.getter();
  v44 = v43;
  if (v42 == Theme.ColorID.rawValue.getter() && v44 == v45)
  {
  }

  else
  {
    v46 = sub_242F06110();

    if ((v46 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v114;
  __src[1] = v113;
  LOBYTE(__src[2]) = v112;
  v130[0] = v111;
  v130[1] = v110;
  LOBYTE(v130[2]) = v109;
  v47 = Theme.ColorID.rawValue.getter();
  v49 = v48;
  if (v47 == Theme.ColorID.rawValue.getter() && v49 == v50)
  {
  }

  else
  {
    v51 = sub_242F06110();

    if ((v51 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v108;
  __src[1] = v107;
  LOBYTE(__src[2]) = v106;
  v130[0] = v105;
  v130[1] = v104;
  LOBYTE(v130[2]) = v103;
  v52 = Theme.ColorID.rawValue.getter();
  v54 = v53;
  if (v52 == Theme.ColorID.rawValue.getter() && v54 == v55)
  {
  }

  else
  {
    v56 = sub_242F06110();

    if ((v56 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v102;
  __src[1] = v101;
  LOBYTE(__src[2]) = v100;
  v130[0] = v99;
  v130[1] = v98;
  LOBYTE(v130[2]) = v97;
  v57 = Theme.ColorID.rawValue.getter();
  v59 = v58;
  if (v57 == Theme.ColorID.rawValue.getter() && v59 == v60)
  {
  }

  else
  {
    v61 = sub_242F06110();

    if ((v61 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v96;
  __src[1] = v95;
  LOBYTE(__src[2]) = v94;
  v130[0] = v93;
  v130[1] = v92;
  LOBYTE(v130[2]) = v91;
  v62 = Theme.ColorID.rawValue.getter();
  v64 = v63;
  if (v62 == Theme.ColorID.rawValue.getter() && v64 == v65)
  {
  }

  else
  {
    v66 = sub_242F06110();

    if ((v66 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v90;
  __src[1] = v89;
  LOBYTE(__src[2]) = v88;
  v130[0] = v87;
  v130[1] = v86;
  LOBYTE(v130[2]) = v85;
  v67 = Theme.ColorID.rawValue.getter();
  v69 = v68;
  if (v67 == Theme.ColorID.rawValue.getter() && v69 == v70)
  {
  }

  else
  {
    v71 = sub_242F06110();

    if ((v71 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v84;
  __src[1] = v83;
  LOBYTE(__src[2]) = v82;
  v130[0] = v81;
  v130[1] = v80;
  LOBYTE(v130[2]) = v79;
  v72 = Theme.ColorID.rawValue.getter();
  v74 = v73;
  if (v72 == Theme.ColorID.rawValue.getter() && v74 == v75)
  {

LABEL_59:
    sub_242C778E4(v78, v77);
    return v34 & 1;
  }

  v76 = sub_242F06110();

  if (v76)
  {
    goto LABEL_59;
  }

LABEL_24:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_242C8B80C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_242C8B840()
{
  result = qword_27ECF0438;
  if (!qword_27ECF0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0438);
  }

  return result;
}

unint64_t sub_242C8B894()
{
  result = qword_27ECF0440;
  if (!qword_27ECF0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0440);
  }

  return result;
}

unint64_t sub_242C8B8E8()
{
  result = qword_27ECF0458;
  if (!qword_27ECF0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0458);
  }

  return result;
}

unint64_t sub_242C8B998()
{
  result = qword_27ECF0468;
  if (!qword_27ECF0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0468);
  }

  return result;
}

uint64_t sub_242C8B9EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C8BA70()
{
  result = qword_27ECF0478;
  if (!qword_27ECF0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0478);
  }

  return result;
}

unint64_t sub_242C8BB38()
{
  result = qword_27ECF0480;
  if (!qword_27ECF0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0480);
  }

  return result;
}

unint64_t sub_242C8BB90()
{
  result = qword_27ECF0488;
  if (!qword_27ECF0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0488);
  }

  return result;
}

unint64_t sub_242C8BBE8()
{
  result = qword_27ECF0490;
  if (!qword_27ECF0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChargeFuelDataIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && a1[4])
  {
    return (*a1 + 171);
  }

  v3 = *a1;
  v4 = v3 >= 0x56;
  v5 = v3 - 86;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ChargeFuelDataIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *result = a2 - 171;
    if (a3 >= 0xAB)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 85;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10RasterFontVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV31RemainingRangeTextConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242C8BD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 552))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 544);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C8BD78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 520) = 0u;
    *(result + 536) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 552) = 1;
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
      *(result + 544) = (a2 - 1);
      return result;
    }

    *(result + 552) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s33ChargeFuelLevelGaugeConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s33ChargeFuelLevelGaugeConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C8BFBC()
{
  result = qword_27ECF0498;
  if (!qword_27ECF0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0498);
  }

  return result;
}

unint64_t sub_242C8C014()
{
  result = qword_27ECF04A0;
  if (!qword_27ECF04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04A0);
  }

  return result;
}

unint64_t sub_242C8C06C()
{
  result = qword_27ECF04A8;
  if (!qword_27ECF04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04A8);
  }

  return result;
}

unint64_t sub_242C8C0C4()
{
  result = qword_27ECF04B0;
  if (!qword_27ECF04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04B0);
  }

  return result;
}

unint64_t sub_242C8C11C()
{
  result = qword_27ECF04B8;
  if (!qword_27ECF04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04B8);
  }

  return result;
}

unint64_t sub_242C8C174()
{
  result = qword_27ECF04C0;
  if (!qword_27ECF04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04C0);
  }

  return result;
}

uint64_t sub_242C8C1C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000242F58E30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58E50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000242F58E70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F58E90 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242C8C334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x8000000242F58E30 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58E50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000242F58E70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F58E90 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000242F58EB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEF4449726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F436B63617274 && a2 == 0xEC0000004449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6576654C776F6CLL && a2 == 0xEF4449726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F58ED0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F58EF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58F10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000242F58F30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58F60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F58F80 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_242C8C7FC()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v15 = sub_242F047A0();
  v5(v3, v4, v0);
  v14 = sub_242F047A0();
  v5(v3, v4, v0);
  v13 = sub_242F047A0();
  v5(v3, v4, v0);
  v6 = sub_242F047A0();
  v5(v3, v4, v0);
  v7 = sub_242F047A0();
  v5(v3, v4, v0);
  v8 = sub_242F047A0();
  v5(v3, v4, v0);
  v9 = sub_242F047A0();
  v5(v3, v4, v0);
  v10 = sub_242F047A0();
  v5(v3, v4, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF04D0 = v15;
  *(&xmmword_27ECF04D0 + 1) = v14;
  qword_27ECF04E0 = v13;
  unk_27ECF04E8 = v6;
  *&xmmword_27ECF04F0 = v7;
  *(&xmmword_27ECF04F0 + 1) = v8;
  qword_27ECF0500 = v9;
  unk_27ECF0508 = v10;
  qword_27ECF0510 = result;
  return result;
}

uint64_t static Color.Ticks.rose.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF0500;
  v8[2] = xmmword_27ECF04F0;
  v8[3] = *&qword_27ECF0500;
  v9 = qword_27ECF0510;
  v3 = qword_27ECF0510;
  v4 = *&qword_27ECF04E0;
  v8[0] = xmmword_27ECF04D0;
  v5 = xmmword_27ECF04D0;
  v8[1] = *&qword_27ECF04E0;
  *(a1 + 32) = xmmword_27ECF04F0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.rose.setter(uint64_t a1)
{
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF04F0;
  v5[3] = *&qword_27ECF0500;
  v6 = qword_27ECF0510;
  v5[0] = xmmword_27ECF04D0;
  v5[1] = *&qword_27ECF04E0;
  v2 = *(a1 + 48);
  xmmword_27ECF04F0 = *(a1 + 32);
  *&qword_27ECF0500 = v2;
  qword_27ECF0510 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF04D0 = *a1;
  *&qword_27ECF04E0 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.rose.modify())()
{
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8CD8C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v15 = sub_242F047A0();
  v5(v3, v4, v0);
  v14 = sub_242F047A0();
  v5(v3, v4, v0);
  v13 = sub_242F047A0();
  v5(v3, v4, v0);
  v6 = sub_242F047A0();
  v5(v3, v4, v0);
  v7 = sub_242F047A0();
  v5(v3, v4, v0);
  v8 = sub_242F047A0();
  v5(v3, v4, v0);
  v9 = sub_242F047A0();
  v5(v3, v4, v0);
  v10 = sub_242F047A0();
  v5(v3, v4, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF0518 = v15;
  *(&xmmword_27ECF0518 + 1) = v14;
  qword_27ECF0528 = v13;
  unk_27ECF0530 = v6;
  *&xmmword_27ECF0538 = v7;
  *(&xmmword_27ECF0538 + 1) = v8;
  qword_27ECF0548 = v9;
  unk_27ECF0550 = v10;
  qword_27ECF0558 = result;
  return result;
}

uint64_t static Color.ProgressBars.rose.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF0548;
  v8[2] = xmmword_27ECF0538;
  v8[3] = *&qword_27ECF0548;
  v9 = qword_27ECF0558;
  v3 = qword_27ECF0558;
  v4 = *&qword_27ECF0528;
  v8[0] = xmmword_27ECF0518;
  v5 = xmmword_27ECF0518;
  v8[1] = *&qword_27ECF0528;
  *(a1 + 32) = xmmword_27ECF0538;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.rose.setter(uint64_t a1)
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF0538;
  v5[3] = *&qword_27ECF0548;
  v6 = qword_27ECF0558;
  v5[0] = xmmword_27ECF0518;
  v5[1] = *&qword_27ECF0528;
  v2 = *(a1 + 48);
  xmmword_27ECF0538 = *(a1 + 32);
  *&qword_27ECF0548 = v2;
  qword_27ECF0558 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF0518 = *a1;
  *&qword_27ECF0528 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.rose.modify())()
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8D328()
{
  v0 = sub_242F04700();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_242F047A0();
  qword_27ECF0560 = result;
  return result;
}

uint64_t static Color.Modular.rose.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF0560;
}

uint64_t static Color.Modular.rose.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF0560 = v1;
}

uint64_t (*static Color.Modular.rose.modify())()
{
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8D598()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v13 = sub_242F047A0();
  v5(v3, v4, v0);
  v6 = sub_242F047A0();
  v5(v3, v4, v0);
  v7 = sub_242F047A0();
  v5(v3, v4, v0);
  v8 = sub_242F047A0();
  v5(v3, v4, v0);
  v9 = sub_242F047A0();
  v5(v3, v4, v0);
  v10 = sub_242F047A0();
  v5(v3, v4, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF0568 = v13;
  *(&xmmword_27ECF0568 + 1) = v6;
  qword_27ECF0578 = v7;
  unk_27ECF0580 = v8;
  *&xmmword_27ECF0588 = v9;
  *(&xmmword_27ECF0588 + 1) = v10;
  qword_27ECF0598 = result;
  return result;
}

uint64_t static Color.ACC.rose.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEE38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF0568 + 1);
  v3 = qword_27ECF0578;
  v4 = unk_27ECF0580;
  v5 = xmmword_27ECF0588;
  v6 = qword_27ECF0598;
  *a1 = xmmword_27ECF0568;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.rose.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEEE38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF0568 = v5;
  *&qword_27ECF0578 = v4;
  xmmword_27ECF0588 = v3;
  qword_27ECF0598 = v1;
}

uint64_t (*static Color.ACC.rose.modify())()
{
  if (qword_27ECEEE38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8DA7C()
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF0538;
  v37 = *&qword_27ECF0548;
  v38 = qword_27ECF0558;
  v34 = xmmword_27ECF0518;
  v35 = *&qword_27ECF0528;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF04F0;
  v42 = *&qword_27ECF0500;
  v43 = qword_27ECF0510;
  v39 = xmmword_27ECF04D0;
  v40 = *&qword_27ECF04E0;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEEE38;
  v28 = qword_27ECF0560;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF0568 + 1);
  v2 = qword_27ECF0578;
  v3 = unk_27ECF0580;
  v4 = xmmword_27ECF0588;
  v5 = qword_27ECF0598;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF0568;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF05C0 = v36;
  unk_27ECF05D0 = v37;
  xmmword_27ECF05A0 = v34;
  *algn_27ECF05B0 = v35;
  unk_27ECF05E8 = v39;
  unk_27ECF0618 = v42;
  qword_27ECF05E0 = v38;
  unk_27ECF0608 = v41;
  unk_27ECF05F8 = v40;
  qword_27ECF0628 = v43;
  unk_27ECF0630 = v28;
  qword_27ECF0638 = v23;
  unk_27ECF0640 = v22;
  qword_27ECF0648 = v21;
  unk_27ECF0650 = v27;
  qword_27ECF0658 = v26;
  qword_27ECF0660 = v25;
  unk_27ECF0668 = v3;
  xmmword_27ECF0670 = v4;
  qword_27ECF0680 = v24;
  unk_27ECF0688 = v20;
  qword_27ECF0690 = v19;
  qword_27ECF0698 = v11;
  unk_27ECF06A0 = v12;
  qword_27ECF06A8 = v13;
  unk_27ECF06B0 = v14;
  qword_27ECF06B8 = v15;
  unk_27ECF06C0 = v16;
  xmmword_27ECF06E8 = v32;
  unk_27ECF06F8 = v33;
  xmmword_27ECF06C8 = v30;
  unk_27ECF06D8 = v31;
  xmmword_27ECF0708 = xmmword_27ECF3708;
  qword_27ECF0718 = qword_27ECF3718;
  unk_27ECF0720 = unk_27ECF3720;
  xmmword_27ECF0728 = xmmword_27ECF3728;
  qword_27ECF0738 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.rose.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEEE40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF05A0, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF05A0, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242C8E050()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760);
  result = swift_arrayDestroy();
  qword_27ECF0740 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightRose.modify())()
{
  if (qword_27ECEEE48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242C8E4F8()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF0748 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightRose.modify())()
{
  if (qword_27ECEEE50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242C8E5F0()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF0750 = result;
  return result;
}

uint64_t sub_242C8E63C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_242C8E6BC(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightRose.modify())()
{
  if (qword_27ECEEE58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void WidgetMultiStackScreenLayout.Metrics.init(minVerticalGoldenSplitAspectRatio:margin:minHorizontalInset:maxHorizontalInset:minWidgetDimension:maxWidgetDimension:maxWidetRowSpacing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
}

uint64_t WidgetMultiStackScreenLayout.Metrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x245D279D0](*&v8);
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x245D279D0](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x245D279D0](*&v10);
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x245D279D0](*&v11);
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x245D279D0](*&v12);
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  return MEMORY[0x245D279D0](*&v13);
}

uint64_t WidgetMultiStackScreenLayout.Metrics.hashValue.getter()
{
  sub_242F06390();
  WidgetMultiStackScreenLayout.Metrics.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242C8E984()
{
  sub_242F06390();
  WidgetMultiStackScreenLayout.Metrics.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242C8E9E4()
{
  sub_242F06390();
  WidgetMultiStackScreenLayout.Metrics.hash(into:)();
  return sub_242F063E0();
}

double WidgetMultiStackScreenLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = result;
  return result;
}

uint64_t WidgetMultiStackScreenLayout.maxColumns.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    result = 0;
LABEL_15:
    v12 = v2 - v3;
    v13 = (v1 + 40 * v3 + 40);
    do
    {
      v15 = *v13;
      v13 += 5;
      v14 = v15;
      if (v15 > result)
      {
        result = v14;
      }

      --v12;
    }

    while (v12);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (v1 + 80);
  v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 5);
    v11 = *v7;
    v7 += 10;
    v10 = v11;
    if (v9 > v5)
    {
      v5 = v9;
    }

    if (v10 > v6)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v5 <= v6)
  {
    result = v6;
  }

  else
  {
    result = v5;
  }

  if (v2 != v3)
  {
    goto LABEL_15;
  }

  return result;
}

double WidgetMultiStackScreenLayout.widgetRowSpacing.getter()
{
  result = *(v0 + 72);
  if (*(*(v0 + 16) + 16) <= 1uLL)
  {
    return 0.0;
  }

  return result;
}

uint64_t WidgetMultiStackScreenLayout.init(safeArea:screenScale:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 32);
  v85 = *(a1 + 24);
  v87 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D2F8);
  v15 = sub_242F039B0();
  v16 = sub_242F05720();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *&v18 = COERCE_DOUBLE(swift_slowAlloc());
    v96 = *&v18;
    *v17 = 136446466;
    v19 = sub_242F057C0();
    v21 = sub_242C8FD38(v19, v20, &v96);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2050;
    *(v17 + 14) = a5;
    _os_log_impl(&dword_242C53000, v15, v16, "Calculating left of dashboard widget metrics for safe area %{public}s, screen scale %{public}f", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_2Tm(v18);
    MEMORY[0x245D287D0](v18, -1, -1);
    MEMORY[0x245D287D0](v17, -1, -1);
  }

  type metadata accessor for WidgetMultiStackRowLayoutBuilder();
  v22 = swift_allocObject();
  v81 = v12;
  v83 = a5;
  *(v22 + 16) = a5;
  *(v22 + 24) = v9;
  v79 = v13;
  v80 = v10;
  *(v22 + 32) = v10;
  *(v22 + 40) = v11;
  v23 = v11;
  *(v22 + 48) = v85;
  *(v22 + 56) = v12;
  *(v22 + 64) = v87;
  *(v22 + 72) = v13;
  v24 = a3 / a4;
  if (a3 / a4 >= v9)
  {
    v28 = 0;
    v27 = 0;
    v29 = 0.0;
    v30 = 0.0;
    v26 = 0.0;
    v31 = 1;
  }

  else
  {
    v25 = 1;
    sub_242C8F9E8(2, 1, &v96, a3, a4, 0.382);
    v26 = v96;
    v28 = v97;
    v27 = v98;
    v29 = v99;
    v30 = v100;
    v31 = v101;
    if ((v101 & 1) == 0 && v97 > 1)
    {
      v32 = 1.2;
      v33 = 0.618;
      goto LABEL_14;
    }
  }

  v32 = 1.0;
  if (v24 >= 1.1)
  {
    v25 = 0;
    v33 = 0.5;
    if (v31)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = 0.5;
    sub_242C8F9E8(2, 1, &v96, a3, a4, 0.5);
    v25 = 0;
    v26 = v96;
    v28 = v97;
    v27 = v98;
    v29 = v99;
    v30 = v100;
    if (v101)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  if (v28 >= 2)
  {
    v34 = sub_242F039B0();
    v35 = sub_242F05720();
    if (os_log_type_enabled(v34, v35))
    {
      v88 = v27;
      v36 = swift_slowAlloc();
      v86 = v29;
      *&v82 = COERCE_DOUBLE(swift_slowAlloc());
      v90 = *&v82;
      *v36 = 136446978;
      v37 = sub_242F057C0();
      v39 = v30;
      v40 = sub_242C8FD38(v37, v38, &v90);

      *(v36 + 4) = v40;
      *(v36 + 12) = 1026;
      *(v36 + 14) = v25;
      *(v36 + 18) = 2082;
      v96 = v32 * v26;
      v97 = 1;
      v98 = 0;
      v41 = v83;
      v99 = v33;
      v100 = v83;
      v42 = WidgetMultiStackRowLayout.description.getter();
      v44 = sub_242C8FD38(v42, v43, &v90);

      *(v36 + 20) = v44;
      *(v36 + 28) = 2082;
      v96 = v26;
      v97 = v28;
      v98 = v88;
      v99 = v86;
      v100 = v39;
      v45 = WidgetMultiStackRowLayout.description.getter();
      v47 = sub_242C8FD38(v45, v46, &v90);

      *(v36 + 30) = v47;
      v30 = v39;
      _os_log_impl(&dword_242C53000, v34, v35, "Calculated 2 rows of widgets for safe area %{public}s:\n    supportsGoldenRatio: %{BOOL,public}d\n    top: %{public}s\n    bottom: %{public}s", v36, 0x26u);
      swift_arrayDestroy();
      v29 = v86;
      MEMORY[0x245D287D0](v82, -1, -1);
      v48 = v36;
      v27 = v88;
      MEMORY[0x245D287D0](v48, -1, -1);
    }

    else
    {

      v41 = v83;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0768);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_242F0A4E0;
    *(v58 + 32) = v32 * v26;
    *(v58 + 40) = 1;
    *(v58 + 48) = 0;
    *(v58 + 56) = v33;
    *(v58 + 64) = v41;
    *(v58 + 72) = v26;
    *(v58 + 80) = v28;
    *(v58 + 88) = v27;
    *(v58 + 96) = v29;
    *(v58 + 104) = v30;
LABEL_27:

    v64 = 24.0;
    v54 = 20.0;
    v65 = 0x4040000000000000;
    v66 = 0x406B800000000000;
    v67 = 0x4062000000000000;
    v9 = 0.83;
    v68 = 0x4050000000000000;
    goto LABEL_32;
  }

LABEL_17:
  sub_242C8F9E8(3, v24 >= 2.68, &v96, a3, a4, 1.0);
  if (v101)
  {
    v49 = sub_242F039B0();
    v50 = sub_242F05700();
    v51 = v23;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_242C53000, v49, v50, "Screen is too small to satisfy a widget at its minimum size. Recalculate favoring size instead of count.", v52, 2u);
      MEMORY[0x245D287D0](v52, -1, -1);
    }

    sub_242C8F9E8(3, 0, &v90, a3, a4, 1.0);
    v53 = v91;
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v54 = v80;
    if (v95)
    {
      v55 = sub_242F039B0();
      v56 = sub_242F05700();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_242C53000, v55, v56, "Unable to satisfy view area with any number of rows of widgets. Using a single row with minimum widget size.", v57, 2u);
        MEMORY[0x245D287D0](v57, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0768);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_242F09510;
      *(v58 + 32) = v81;
      *(v58 + 40) = 1;
      *(v58 + 48) = xmmword_242F0B500;
      *(v58 + 64) = v83;
      goto LABEL_27;
    }

    v84 = v51;
    v59 = v94;
    v60 = v93;
    v61 = v92;
    v62 = v90;
  }

  else
  {
    v53 = v97;
    v60 = v99;
    v59 = v100;
    v61 = v98;
    v62 = v96;
    v84 = v23;
    v54 = v80;
  }

  v69 = sub_242F039B0();
  v70 = sub_242F05720();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89 = v72;
    *v71 = 136446466;
    v73 = sub_242F057C0();
    v75 = sub_242C8FD38(v73, v74, &v89);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    v90 = v62;
    v91 = v53;
    v92 = v61;
    v93 = v60;
    v94 = v59;
    v76 = WidgetMultiStackRowLayout.description.getter();
    v78 = sub_242C8FD38(v76, v77, &v89);

    *(v71 + 14) = v78;
    _os_log_impl(&dword_242C53000, v69, v70, "Vehicle doesn't support multiple rows of widgets with safe area: %{public}s,\nproviding single row: %{public}s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v72, -1, -1);
    MEMORY[0x245D287D0](v71, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0768);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_242F09510;
  *(v58 + 32) = v62;
  *(v58 + 40) = v53;
  *(v58 + 48) = v61;
  *(v58 + 56) = v60;
  *(v58 + 64) = v59;

  v67 = v81;
  v64 = v84;
  v68 = v85;
  v66 = v87;
  v65 = v79;
LABEL_32:
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = v58;
  *(a2 + 24) = v9;
  *(a2 + 32) = v54;
  *(a2 + 40) = v64;
  *(a2 + 48) = v68;
  *(a2 + 56) = v67;
  *(a2 + 64) = v66;
  *(a2 + 72) = v65;
  return result;
}

Swift::Int __swiftcall WidgetMultiStackScreenLayout.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall WidgetMultiStackScreenLayout.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t WidgetMultiStackScreenLayout.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 40 * result;
      v5 = *(v4 + 40);
      v6 = *(v4 + 64);
      *a2 = *(v4 + 32);
      *(a2 + 8) = v5;
      *(a2 + 16) = *(v4 + 48);
      *(a2 + 32) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242C8F3F4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = *(*(v3 + 16) + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_242C8F464@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_242C8F47C(void *result)
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

void (*sub_242C8F4A4(void (**a1)(void **a1), unint64_t *a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    if (v6 < *(v7 + 16))
    {
      v8 = v7 + 40 * v6;
      v9 = *(v8 + 40);
      v10 = *(v8 + 64);
      v11 = *(v8 + 48);
      *result = *(v8 + 32);
      *(result + 1) = v9;
      *(result + 1) = v11;
      *(result + 4) = v10;
      return sub_242C8F558;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_242C8F560@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = v2[4];
  v13 = v2[3];
  v14 = v5;
  v6 = v2[2];
  v11 = v2[1];
  v12 = v6;
  v10 = *v2;
  if (v3 < 0 || *(v11 + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v2[3];
    *(a2 + 48) = v2[2];
    *(a2 + 64) = v7;
    *(a2 + 80) = v2[4];
    v8 = v2[1];
    *(a2 + 16) = *v2;
    *(a2 + 32) = v8;
    *a2 = v3;
    *(a2 + 8) = v4;
    return sub_242C90A34(&v10, &v9);
  }

  return result;
}

void sub_242C8F5D8(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_242C8F5FC@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_242C8F628@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_242C8F3F4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t *sub_242C8F684(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_242C8F6AC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_242C8F6C8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_242C8F6E4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_242C8F700@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_242C8F718(void *result)
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

__n128 sub_242C8F730@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 80) = 0;
  return result;
}

void *sub_242C8F758()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = sub_242CD4F38(v5);
  sub_242C90A04(v5);
  return v3;
}

uint64_t WidgetMultiStackScreenLayout.description.getter()
{
  v1 = *(v0 + 16);
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000025, 0x8000000242F58FA0);
  v2 = MEMORY[0x245D26920](v1, &type metadata for WidgetMultiStackRowLayout);
  MEMORY[0x245D26660](v2);

  MEMORY[0x245D26660](0x6C6F4378616D202CLL, 0xEE00203A736E6D75);
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
LABEL_14:
    v12 = v3 - v4;
    v13 = (v1 + 40 * v4 + 40);
    do
    {
      v15 = *v13;
      v13 += 5;
      v14 = v15;
      if (v15 > v5)
      {
        v5 = v14;
      }

      --v12;
    }

    while (v12);
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v4 = v3 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (v1 + 80);
  v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 5);
    v11 = *v7;
    v7 += 10;
    v10 = v11;
    if (v9 > v5)
    {
      v5 = v9;
    }

    if (v10 > v6)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v3 != v4)
  {
    goto LABEL_14;
  }

LABEL_18:
  v16 = sub_242F05F60();
  MEMORY[0x245D26660](v16);

  MEMORY[0x245D26660](0xD000000000000014, 0x8000000242F58FD0);
  v17 = sub_242F05470();
  MEMORY[0x245D26660](v17);

  return 0;
}

void sub_242C8F9E8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v9 = a5 * a6;
  v10 = *(v6 + 32);
  v11 = a4 - (v10 + v10);
  v12 = v9 - (v10 + v10);
  if (v12 >= v11)
  {
    v12 = v11;
  }

  v13 = *(v6 + 56);
  if (*(v6 + 64) < v12)
  {
    v12 = *(v6 + 64);
  }

  if (v13 > v12)
  {
    if (qword_27ECEF4C8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

  if (a2)
  {
    if (a1 >= 1)
    {
      if (v10 <= *(v6 + 40))
      {
        v10 = *(v6 + 40);
      }

      while (1)
      {
        v18 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        v19 = (a4 - v10 * v18) / a1;
        if (v12 < v19)
        {
          v19 = v12;
        }

        if (v13 <= v19)
        {
          break;
        }

        if (a1-- <= 1)
        {
          goto LABEL_10;
        }
      }

      v25 = (a4 - v19 * a1) / v18;
      v26 = *(v6 + 48);
      v27 = *(v6 + 16);
      *a3 = v19;
      *(a3 + 8) = a1;
      if (v25 >= v26)
      {
        v25 = v26;
      }

      *(a3 + 16) = v25;
      *(a3 + 24) = a6;
      *(a3 + 32) = v27;
      *(a3 + 40) = 0;
      return;
    }

LABEL_48:
    sub_242F05A80();

    v29 = sub_242F05F60();
    MEMORY[0x245D26660](v29);

    sub_242F05C60();
    __break(1u);
    return;
  }

  if (a1 < 1)
  {
    goto LABEL_48;
  }

  v21 = floor(a4 / v12);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v22 = v21;
  if (v21 >= a1)
  {
    v22 = a1;
  }

  if (v10 <= *(v6 + 40))
  {
    v10 = *(v6 + 40);
  }

  while (!__OFADD__(v22, 1))
  {
    v23 = (a4 - v12 * v22) / (v22 + 1);
    if (v23 >= *(v6 + 48))
    {
      v23 = *(v6 + 48);
    }

    if (v10 <= v23)
    {
      v28 = *(v6 + 16);
      *a3 = v12;
      *(a3 + 8) = v22;
      *(a3 + 16) = v23;
      *(a3 + 24) = a6;
      *(a3 + 32) = v28;
      *(a3 + 40) = 0;
      return;
    }

    if (__OFSUB__(v22--, 1))
    {
      goto LABEL_43;
    }

    if (v22 <= 0)
    {
      goto LABEL_10;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_7:
  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D2F8);
  v15 = sub_242F039B0();
  v16 = sub_242F05720();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349312;
    *(v17 + 4) = a4;
    *(v17 + 12) = 2050;
    *(v17 + 14) = v9;
    _os_log_impl(&dword_242C53000, v15, v16, "View area too small to create a single widget: %{public}fx%{public}f", v17, 0x16u);
    MEMORY[0x245D287D0](v17, -1, -1);
  }

LABEL_10:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = 1;
}

unint64_t sub_242C8FD38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242C8FE04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242C90A6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v7;
}

unint64_t sub_242C8FE04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242C8FF10(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_242F05B50();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_242C8FF10(uint64_t a1, unint64_t a2)
{
  v3 = sub_242C8FF5C(a1, a2);
  sub_242C9008C(&unk_28557A3D8);
  return v3;
}

uint64_t sub_242C8FF5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242D00DB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242F05B50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242F050A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242D00DB4(v10, 0);
        result = sub_242F05A30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242C9008C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242C90178(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_242C90178(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF07F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL _s14CarPlayAssetUI28WidgetMultiStackScreenLayoutV7MetricsV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[3].f64[0] == a2[3].f64[0];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t _s14CarPlayAssetUI28WidgetMultiStackScreenLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  v9 = *(a2 + 72);
  if ((sub_242C72B08(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v10 = v5 == v8;
  if (v4 != v7)
  {
    v10 = 0;
  }

  v11 = vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v13), vceqq_f64(v16, v14)));
  v11.i16[0] = vminv_u16(v11);
  v12 = v10 & v11.i32[0];
  if (v6 == v9)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_242C90404()
{
  result = qword_27ECF0770;
  if (!qword_27ECF0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0770);
  }

  return result;
}

unint64_t sub_242C9045C()
{
  result = qword_27ECF0778;
  if (!qword_27ECF0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0778);
  }

  return result;
}

unint64_t sub_242C904E4()
{
  result = qword_27ECF0790;
  if (!qword_27ECF0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0790);
  }

  return result;
}

unint64_t sub_242C90580()
{
  result = qword_27ECF07A8;
  if (!qword_27ECF07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07A8);
  }

  return result;
}

unint64_t sub_242C905D8()
{
  result = qword_27ECF07B0;
  if (!qword_27ECF07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07B0);
  }

  return result;
}

uint64_t sub_242C906A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF07A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C90724()
{
  result = qword_27ECF07C8;
  if (!qword_27ECF07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07C8);
  }

  return result;
}

uint64_t sub_242C907B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0788);
    sub_242C904E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_242C908D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C9091C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242C9099C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242C909BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_242C90A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t WidgetSuggestionSource.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t Widget.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *Widget.init(id:chsWidget:suggestionSource:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = v5;
  return result;
}

uint64_t Widget.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_242F04DD0();
  sub_242F05820();
  return MEMORY[0x245D279A0](v1);
}

uint64_t Widget.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F05820();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242C90C6C()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F05820();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242C90CE8()
{
  v1 = *(v0 + 24);
  sub_242F04DD0();
  sub_242F05820();
  return MEMORY[0x245D279A0](v1);
}

uint64_t sub_242C90D38()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F05820();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t Widget.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);

  sub_242F05A80();
  MEMORY[0x245D26660](0x6928746567646957, 0xEB00000000203A64);
  v5 = sub_242F04F90();
  MEMORY[0x245D26660](v5);

  MEMORY[0x245D26660](0x646957736863202CLL, 0xED0000203A746567);
  v6 = [v3 description];
  v7 = sub_242F04F30();
  v9 = v8;

  MEMORY[0x245D26660](v7, v9);

  MEMORY[0x245D26660](0xD000000000000014, 0x8000000242F59060);
  v10 = 0xE600000000000000;
  v11 = 0x3173756C506ELL;
  if (v4 != 1)
  {
    v11 = 0x696472616F626E6FLL;
    v10 = 0xEA0000000000676ELL;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1701736302;
  }

  if (v4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x245D26660](v12, v13);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

uint64_t WidgetSuggestionSource.description.getter()
{
  v1 = 0x3173756C506ELL;
  if (*v0 != 1)
  {
    v1 = 0x696472616F626E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_242C90FBC()
{
  v1 = 0x3173756C506ELL;
  if (*v0 != 1)
  {
    v1 = 0x696472616F626E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t _s14CarPlayAssetUI6WidgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_242F06110(), result = 0, (v5 & 1) != 0))
  {
    sub_242C912A0();
    return sub_242F05810() & (v2 == v3);
  }

  return result;
}

unint64_t sub_242C910A4()
{
  result = qword_27ECF07F8;
  if (!qword_27ECF07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07F8);
  }

  return result;
}

unint64_t sub_242C910FC()
{
  result = qword_27ECF0800;
  if (!qword_27ECF0800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0800);
  }

  return result;
}

unint64_t sub_242C9117C()
{
  result = qword_27ECF0810;
  if (!qword_27ECF0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0810);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_242C91204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_242C9124C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242C912A0()
{
  result = qword_27ECF0818;
  if (!qword_27ECF0818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF0818);
  }

  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.activeColors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.activeSecondaryColors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.activeTertiaryColors.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.inactiveColors.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.inactiveSecondaryColors.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.inactiveTertiaryColors.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.init(activeColors:activeSecondaryColors:activeTertiaryColors:inactiveColors:inactiveSecondaryColors:inactiveTertiaryColors:stops:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v8 = *(result + 16);
  if (v8 && *(a2 + 16) && (v9 = *(a4 + 16)) != 0 && v8 == v9 && *(a7 + 16) + 1 == v8)
  {
    *a8 = result;
    a8[1] = a2;
    a8[2] = a3;
    a8[3] = a4;
    a8[4] = a5;
    a8[5] = a6;
    a8[6] = a7;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C91674()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000015;
    if (v1 != 1)
    {
      v5 = 0xD000000000000014;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F43657669746361;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 != 5)
    {
      v2 = 0x73706F7473;
    }

    v3 = 0xD000000000000017;
    if (v1 == 3)
    {
      v3 = 0x6576697463616E69;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242C91774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C95D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C9179C(uint64_t a1)
{
  v2 = sub_242C946CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C917D8(uint64_t a1)
{
  v2 = sub_242C946CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0820);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v11 = v1[5];
  v18 = v1[4];
  v19 = v10;
  v16 = v1[6];
  v17 = v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C946CC();

  sub_242F064C0();
  v23 = v9;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830);
  sub_242C94720(&qword_27ECF0838, sub_242C7C594);
  v12 = v4;
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {
    v13 = v20;

    v23 = v21;
    v22 = 1;
    sub_242F05F20();
    v23 = v13;
    v22 = 2;
    sub_242F05F20();
    v23 = v19;
    v22 = 3;
    sub_242F05F20();
    v23 = v18;
    v22 = 4;
    sub_242F05F20();
    v23 = v17;
    v22 = 5;
    sub_242F05F20();
    v23 = v16;
    v22 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0840);
    sub_242C94798(&qword_27ECF0848);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  MEMORY[0x245D279A0](*(*v1 + 16));
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = v4 + 32;
    do
    {
      v11 += 8;

      sub_242F04720();

      --v10;
    }

    while (v10);
  }

  MEMORY[0x245D279A0](*(v3 + 16));
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = v3 + 32;
    do
    {
      v13 += 8;

      sub_242F04720();

      --v12;
    }

    while (v12);
  }

  MEMORY[0x245D279A0](*(v6 + 16));
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = v6 + 32;
    do
    {
      v15 += 8;

      sub_242F04720();

      --v14;
    }

    while (v14);
  }

  MEMORY[0x245D279A0](*(v5 + 16));
  v16 = *(v5 + 16);
  if (v16)
  {
    v17 = v5 + 32;
    do
    {
      v17 += 8;

      sub_242F04720();

      --v16;
    }

    while (v16);
  }

  MEMORY[0x245D279A0](*(v8 + 16));
  v18 = *(v8 + 16);
  if (v18)
  {
    v19 = v8 + 32;
    do
    {
      v19 += 8;

      sub_242F04720();

      --v18;
    }

    while (v18);
  }

  MEMORY[0x245D279A0](*(v7 + 16));
  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = v7 + 32;
    do
    {
      v21 += 8;

      sub_242F04720();

      --v20;
    }

    while (v20);
  }

  return sub_242C7BD24(a1, v9);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C946CC();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830);
  v22 = 0;
  sub_242C94720(&qword_27ECF0858, sub_242C7C540);
  sub_242F05E00();
  v20 = v23;
  v22 = 1;
  sub_242F05E00();
  v19 = v23;
  v22 = 2;
  sub_242F05E00();
  v18 = v23;
  v22 = 3;
  sub_242F05E00();
  v16[1] = 0;
  v17 = v23;
  v22 = 4;
  sub_242F05E00();
  v16[0] = v23;
  v22 = 5;
  sub_242F05E00();
  v10 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0840);
  v22 = 6;
  sub_242C94798(&qword_27ECF0860);
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v11 = v23;
  v12 = v21;
  v14 = v18;
  v13 = v19;
  *v21 = v20;
  v12[1] = v13;
  v15 = v17;
  v12[2] = v14;
  v12[3] = v15;
  v12[4] = v16[0];
  v12[5] = v10;
  v12[6] = v11;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C92350()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242C923B0()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.tickColors.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.iconImageName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.currentValueLabelFont.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  v8 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_242C94804(v2, v3, v4);
}

__n128 Instrument.GaugeStyle.DialConfiguration.currentValueLabelFont.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_242C94844(*(v1 + 144), *(v1 + 152), *(v1 + 160));
  v4 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v4;
  result = v6;
  *(v1 + 176) = v6;
  *(v1 + 192) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.primaryTickMarkLabelFont.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[29];
  v7 = v1[30];
  v8 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_242C94804(v2, v3, v4);
}

__n128 Instrument.GaugeStyle.DialConfiguration.primaryTickMarkLabelFont.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_242C94844(*(v1 + 200), *(v1 + 208), *(v1 + 216));
  v4 = *a1;
  *(v1 + 216) = a1[1];
  *(v1 + 200) = v4;
  result = v6;
  *(v1 + 232) = v6;
  *(v1 + 248) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.minimumValueLabel.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.maximumValueLabel.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

__n128 Instrument.GaugeStyle.DialConfiguration.init(dataIdentifier:bounds:minimumAngle:maximumAngle:primaryTickMarks:secondaryTickMarks:tertiaryTickMarks:tickColors:hasNeedle:iconImageName:currentValueLabelFont:primaryTickMarkLabelFont:currentValueMaximumFractionDigits:minimumValueLabel:maximumValueLabel:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, __int128 *a15, uint64_t a16, char a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a5 + 48);
  v22 = *(a14 + 48);
  v29 = a15[1];
  v30 = *a15;
  v27 = *(a14 + 32);
  v28 = a15[2];
  v23 = *(a15 + 6);
  *a9 = *a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a13;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  v24 = *(a5 + 16);
  *(a9 + 64) = *a5;
  *(a9 + 80) = v24;
  *(a9 + 96) = *(a5 + 32);
  *(a9 + 112) = v21;
  *(a9 + 120) = a6;
  *(a9 + 128) = a7;
  *(a9 + 136) = a8;
  sub_242C94844(0, 0, 0);
  v25 = *(a14 + 16);
  *(a9 + 144) = *a14;
  *(a9 + 160) = v25;
  *(a9 + 176) = v27;
  *(a9 + 192) = v22;
  sub_242C94844(0, 0, 0);
  *(a9 + 200) = v30;
  *(a9 + 216) = v29;
  *(a9 + 232) = v28;
  *(a9 + 248) = v23;
  *(a9 + 256) = a16;
  *(a9 + 264) = a17 & 1;
  result = a18;
  *(a9 + 272) = a18;
  *(a9 + 288) = a19;
  *(a9 + 296) = a20;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.activeTickColor(for:)(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v4 = *(v1 + 64);
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    *(inited + 32) = v6;

    sub_242C81D3C(inited);
    v9 = 0;
    while (1)
    {
      if (*(v7 + 16) == v9 || (v10 = *(v4 + 16), v9 == v10))
      {

        return sub_242F04730();
      }

      if (v9 >= v10)
      {
        break;
      }

      v11 = (*(v7 + 8 * v9++ + 32) - v5) / (v6 - v5);
      if (v11 >= a1)
      {
        v12 = *(v4 + 8 * v9 + 24);

        return v12;
      }
    }

    __break(1u);
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.inactiveTickColor(for:)(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    *(inited + 32) = v6;

    sub_242C81D3C(inited);
    v9 = 0;
    while (1)
    {
      if (*(v7 + 16) == v9 || (v10 = *(v4 + 16), v9 == v10))
      {

        return sub_242F04730();
      }

      if (v9 >= v10)
      {
        break;
      }

      v11 = (*(v7 + 8 * v9++ + 32) - v5) / (v6 - v5);
      if (v11 >= a1)
      {
        v12 = *(v4 + 8 * v9 + 24);

        return v12;
      }
    }

    __break(1u);
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

void *Instrument.GaugeStyle.DialConfiguration.assets.getter()
{
  v1 = v0[20];
  v2 = v0[26];
  v3 = v0[27];
  v27 = v0[25];
  v28 = v0[28];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[31];
  if (!v1)
  {
    v13 = MEMORY[0x277D84F90];
    if (!v3)
    {
      return v13;
    }

    goto LABEL_7;
  }

  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[31];
  v26 = v0[30];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[18];
  v11 = v0[19];
  v21 = (v9 >> 8) & 1;
  v22 = v0[22] & 1;
  v35 = v12;
  v36 = v11;
  v37 = v1;
  v38 = v10;
  v39 = v9;
  v40 = v8;
  v41 = v7;
  sub_242C94884(&v35, &v29);
  v13 = sub_242C82D10(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_242C82D10((v14 > 1), v15 + 1, 1, v13);
  }

  v30 = &type metadata for RasterFont;
  v31 = &protocol witness table for RasterFont;
  v16 = swift_allocObject();
  *&v29 = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v1;
  *(v16 + 40) = v10;
  *(v16 + 48) = v22;
  *(v16 + 49) = v21;
  *(v16 + 56) = v8;
  *(v16 + 64) = v7;
  v13[2] = v15 + 1;
  sub_242C65564(&v29, &v13[5 * v15 + 4]);
  v6 = v25;
  v4 = v26;
  v3 = v23;
  v2 = v24;
  if (v23)
  {
LABEL_7:
    v35 = v27;
    v36 = v2;
    v37 = v3;
    v38 = v28;
    v39 = v5;
    v40 = v4;
    v41 = v6;
    sub_242C94884(&v35, &v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_242C82D10(0, v13[2] + 1, 1, v13);
    }

    v18 = v13[2];
    v17 = v13[3];
    if (v18 >= v17 >> 1)
    {
      v13 = sub_242C82D10((v17 > 1), v18 + 1, 1, v13);
    }

    v30 = &type metadata for RasterFont;
    v31 = &protocol witness table for RasterFont;
    v19 = swift_allocObject();
    *&v29 = v19;
    *(v19 + 16) = v27;
    *(v19 + 17) = *v34;
    *(v19 + 20) = *&v34[3];
    *(v19 + 24) = v2;
    *(v19 + 32) = v3;
    *(v19 + 40) = v28;
    *(v19 + 48) = v5 & 1;
    *(v19 + 49) = BYTE1(v5) & 1;
    *(v19 + 50) = v32;
    *(v19 + 54) = v33;
    *(v19 + 56) = v4;
    *(v19 + 64) = v6;
    v13[2] = v18 + 1;
    sub_242C65564(&v29, &v13[5 * v18 + 4]);
  }

  return v13;
}

uint64_t sub_242C92D38(char a1)
{
  result = 0x6E65644961746164;
  switch(a1)
  {
    case 1:
      result = 0x73646E756F62;
      break;
    case 2:
      v3 = 1768843629;
      goto LABEL_10;
    case 3:
      v3 = 1769496941;
LABEL_10:
      result = v3 | 0x416D756D00000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6F6C6F436B636974;
      break;
    case 8:
      result = 0x6C6465654E736168;
      break;
    case 9:
      result = 0x67616D496E6F6369;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242C92F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C95F8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C92F3C(uint64_t a1)
{
  v2 = sub_242C95374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C92F78(uint64_t a1)
{
  v2 = sub_242C95374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0868);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v11 = *(v1 + 3);
  v10 = *(v1 + 4);
  v12 = *(v1 + 5);
  v55 = *(v1 + 6);
  v56 = v12;
  v13 = *(v1 + 8);
  v54 = *(v1 + 7);
  v47 = v13;
  v14 = *(v1 + 10);
  v48 = *(v1 + 9);
  v49 = v14;
  v15 = *(v1 + 12);
  v50 = *(v1 + 11);
  v51 = v15;
  v16 = *(v1 + 14);
  v52 = *(v1 + 13);
  v53 = v16;
  v65 = v1[120];
  v17 = *(v1 + 17);
  v45 = *(v1 + 16);
  v46 = v17;
  v18 = *(v1 + 19);
  v38 = *(v1 + 18);
  v39 = v18;
  v19 = *(v1 + 21);
  v44 = *(v1 + 20);
  v43 = v19;
  v20 = *(v1 + 23);
  v42 = *(v1 + 22);
  v41 = v20;
  v21 = *(v1 + 25);
  v40 = *(v1 + 24);
  v31 = v21;
  v22 = *(v1 + 27);
  v32 = *(v1 + 26);
  v37 = v22;
  v23 = *(v1 + 29);
  v36 = *(v1 + 28);
  v35 = v23;
  v24 = *(v1 + 31);
  v34 = *(v1 + 30);
  v33 = v24;
  v29[3] = *(v1 + 32);
  v30 = v1[264];
  v25 = *(v1 + 35);
  v29[1] = *(v1 + 34);
  v29[2] = v25;
  v26 = *(v1 + 37);
  v29[0] = *(v1 + 36);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C95374();
  sub_242F064C0();
  LOBYTE(v58) = v7;
  v66 = 0;
  sub_242C8AC28();
  v27 = v57;
  sub_242F05F20();
  if (!v27)
  {
    v57 = v26;
    v58 = v8;
    v59 = v9;
    v66 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878);
    sub_242C953C8(&qword_27ECF0880);
    sub_242F05F20();
    v58 = v11;
    v66 = 2;
    sub_242C7DB7C();
    sub_242F05F20();
    v58 = v10;
    v66 = 3;
    sub_242F05F20();
    LOBYTE(v58) = 4;
    sub_242F05F00();
    LOBYTE(v58) = 5;
    sub_242F05F00();
    LOBYTE(v58) = 6;
    sub_242F05F00();
    v58 = v47;
    v59 = v48;
    v60 = v49;
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v64 = v53;
    v66 = 7;
    sub_242C95434();

    sub_242F05F20();
    v55 = v62;
    v56 = v61;

    LOBYTE(v58) = 8;
    sub_242F05ED0();
    LOBYTE(v58) = 9;
    sub_242F05E50();
    v58 = v38;
    v59 = v39;
    v60 = v44;
    v61 = v43;
    v62 = v42;
    v63 = v41;
    v64 = v40;
    v66 = 10;
    sub_242C94804(v38, v39, v44);
    sub_242C95488();
    sub_242F05EB0();
    sub_242C94844(v58, v59, v60);
    v58 = v31;
    v59 = v32;
    v60 = v37;
    v61 = v36;
    v62 = v35;
    v63 = v34;
    v64 = v33;
    v66 = 11;
    sub_242C94804(v31, v32, v37);
    sub_242F05EB0();
    sub_242C94844(v58, v59, v60);
    LOBYTE(v58) = 12;
    sub_242F05E90();
    LOBYTE(v58) = 13;
    sub_242F05E50();
    LOBYTE(v58) = 14;
    sub_242F05E50();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v37 = *(v1 + 48);
  v38 = *(v1 + 56);
  v39 = *(v1 + 112);
  v8 = *(v1 + 136);
  v26 = *(v1 + 152);
  v27 = *(v1 + 144);
  v9 = *(v1 + 160);
  v24 = *(v1 + 176);
  v25 = *(v1 + 168);
  v23 = *(v1 + 184);
  v22 = *(v1 + 192);
  v32 = *(v1 + 208);
  v33 = *(v1 + 200);
  v40 = *(v1 + 216);
  v30 = *(v1 + 232);
  v31 = *(v1 + 224);
  v29 = *(v1 + 240);
  v28 = *(v1 + 248);
  v21 = *(v1 + 256);
  v41 = *(v1 + 264);
  v42 = *(v1 + 296);
  v43 = *(v1 + 280);
  LOBYTE(v57) = *v1;
  InstrumentDataIdentifier.rawValue.getter();
  v10 = 0.0;
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  v12 = v11;
  if (v4 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v4;
  }

  v14 = v13;
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  v16 = v15;
  if (v6 != 0.0)
  {
    v10 = v6;
  }

  v17 = v10;
  v35 = *(v1 + 80);
  v36 = *(v1 + 64);
  v34 = *(v1 + 96);
  sub_242F04DD0();

  MEMORY[0x245D279D0](*&v12);
  MEMORY[0x245D279D0](*&v14);
  MEMORY[0x245D279D0](*&v16);
  MEMORY[0x245D279D0](*&v17);
  MEMORY[0x245D279A0](v7);
  MEMORY[0x245D279A0](v37);
  MEMORY[0x245D279A0](v38);
  v57 = v36;
  v58 = v35;
  v59 = v34;
  v60 = v39;
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(a1);
  sub_242F063B0();
  if (v8)
  {
    sub_242F063B0();
    sub_242F04DD0();
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_242F063B0();
    if (v9)
    {
LABEL_14:
      *&v44 = v27;
      *(&v44 + 1) = v26;
      *&v46 = v9;
      *(&v46 + 1) = v25;
      *&v48 = v24;
      *(&v48 + 1) = v23;
      sub_242F063B0();
      v50 = v27;
      v51 = v26;
      v52 = v9;
      v53 = v25;
      v54 = v24;
      v55 = v23;
      v56 = v22;
      sub_242C94884(&v50, &v57);
      RasterFont.hash(into:)();
      v57 = v44;
      v58 = v46;
      v59 = v48;
      v60 = v22;
      sub_242C954DC(&v57);
      v18 = v40;
      if (v40)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  sub_242F063B0();
  v18 = v40;
  if (v40)
  {
LABEL_15:
    *&v45 = v33;
    *(&v45 + 1) = v32;
    *&v47 = v18;
    *(&v47 + 1) = v31;
    *&v49 = v30;
    *(&v49 + 1) = v29;
    sub_242F063B0();
    v50 = v33;
    v51 = v32;
    v52 = v18;
    v53 = v31;
    v54 = v30;
    v55 = v29;
    v56 = v28;
    sub_242C94884(&v50, &v57);
    RasterFont.hash(into:)();
    v57 = v45;
    v58 = v47;
    v59 = v49;
    v60 = v28;
    sub_242C954DC(&v57);
    if (v41)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_242F063B0();
  if (v41)
  {
LABEL_16:
    sub_242F063B0();
    v19 = v42;
    if (v43)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_242F063B0();
    if (v19)
    {
      goto LABEL_18;
    }

    return sub_242F063B0();
  }

LABEL_22:
  sub_242F063B0();
  MEMORY[0x245D279A0](v21);
  v19 = v42;
  if (!v43)
  {
    goto LABEL_23;
  }

LABEL_17:
  sub_242F063B0();
  sub_242F04DD0();
  if (v19)
  {
LABEL_18:
    sub_242F063B0();
    return sub_242F04DD0();
  }

  return sub_242F063B0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0898);
  v5 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v7 = &v39 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C95374();
  sub_242F06480();
  if (v2)
  {
    v117 = v2;
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
LABEL_4:
    sub_242C94844(v18, v19, v20);
    return sub_242C94844(v17, v16, v15);
  }

  v69 = v5;
  LOBYTE(v71[0]) = 0;
  sub_242C8AC7C();
  sub_242F05E00();
  v8 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878);
  LOBYTE(v71[0]) = 1;
  sub_242C953C8(&qword_27ECF08A0);
  sub_242F05E00();
  v67 = v8;
  v9 = v72;
  v10 = v73;
  LOBYTE(v71[0]) = 2;
  sub_242C7DBD0();
  sub_242F05E00();
  v11 = v72;
  LOBYTE(v71[0]) = 3;
  sub_242F05E00();
  v12 = v72;
  LOBYTE(v72) = 4;
  v13 = sub_242F05DE0();
  LOBYTE(v72) = 5;
  v14 = sub_242F05DE0();
  LOBYTE(v72) = 6;
  v65 = sub_242F05DE0();
  v66 = v14;
  LOBYTE(v71[0]) = 7;
  sub_242C95530();
  sub_242F05E00();
  v50 = v73;
  v51 = v72;
  v49 = v74;
  v54 = v76;
  v55 = v75;
  v52 = v78;
  v53 = v77;
  LOBYTE(v72) = 8;
  v22 = sub_242F05DB0();
  v117 = 0;
  v23 = v22;
  v47 = v13;
  LOBYTE(v72) = 9;
  v24 = sub_242F05D30();
  v48 = v25;
  v117 = 0;
  v26 = v24;
  LOBYTE(v71[0]) = 10;
  sub_242C95584();
  v27 = v117;
  sub_242F05D90();
  v117 = v27;
  if (v27)
  {
    (*(v69 + 8))(v7, v70);
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
LABEL_10:
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v63 = 0;
    v64 = 0;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_2Tm(a1);

    v19 = v59;
    v20 = v60;
    v18 = v58;
    goto LABEL_4;
  }

  v58 = v72;
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v62 = v76;
  v56 = v78;
  v57 = v77;
  sub_242C94844(0, 0, 0);
  LOBYTE(v71[0]) = 11;
  v28 = v117;
  sub_242F05D90();
  v117 = v28;
  if (v28)
  {
    (*(v69 + 8))(v7, v70);
    goto LABEL_10;
  }

  v45 = v73;
  v46 = v72;
  v44 = v74;
  v63 = v76;
  v64 = v75;
  v29 = v77;
  v30 = v78;
  sub_242C94844(0, 0, 0);
  LOBYTE(v72) = 12;
  v31 = v117;
  v43 = sub_242F05D70();
  v117 = v31;
  if (v31)
  {
    (*(v69 + 8))(v7, v70);
    v16 = v45;
    v17 = v46;
    v15 = v44;
    goto LABEL_5;
  }

  v114 = v32 & 1;
  LOBYTE(v72) = 13;
  v42 = sub_242F05D30();
  v68 = v33;
  v117 = 0;
  v112 = 14;
  v34 = sub_242F05D30();
  v40 = v35;
  v41 = v34;
  v117 = 0;
  HIDWORD(v39) = v23 & 1;
  (*(v69 + 8))(v7, v70);
  *(&v71[33] + 1) = *v113;
  LOBYTE(v71[0]) = v67;
  v71[1] = v9;
  v71[2] = v10;
  v71[3] = v11;
  v71[4] = v12;
  v71[5] = v47;
  v71[6] = v66;
  v36 = v50;
  v37 = v51;
  v71[7] = v65;
  v71[8] = v51;
  v38 = v49;
  v71[9] = v50;
  v71[10] = v49;
  v71[11] = v55;
  v71[12] = v54;
  v71[13] = v53;
  v71[14] = v52;
  LOBYTE(v71[15]) = BYTE4(v39);
  v71[16] = v26;
  v71[17] = v48;
  v71[18] = v58;
  v71[19] = v59;
  v71[20] = v60;
  v71[21] = v61;
  v71[22] = v62;
  v71[23] = v57;
  v71[24] = v56;
  v71[25] = v46;
  v71[26] = v45;
  v71[27] = v44;
  v71[28] = v64;
  v71[29] = v63;
  v71[30] = v29;
  v71[31] = v30;
  v71[32] = v43;
  HIDWORD(v71[33]) = *&v113[3];
  LODWORD(v70) = v114;
  LOBYTE(v71[33]) = v114;
  v71[34] = v42;
  v71[35] = v68;
  v71[36] = v41;
  v71[37] = v40;
  memcpy(a2, v71, 0x130uLL);
  sub_242C955D8(v71, &v72);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  LOBYTE(v72) = v67;
  v77 = v47;
  v78 = v66;
  v79 = v65;
  v80 = v37;
  v81 = v36;
  v82 = v38;
  *(&v72 + 1) = v116[0];
  HIDWORD(v72) = *(v116 + 3);
  v73 = v9;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v83 = v55;
  v84 = v54;
  v85 = v53;
  v86 = v52;
  v87 = BYTE4(v39);
  *v88 = *v115;
  *&v88[3] = *&v115[3];
  v89 = v26;
  v90 = v48;
  v91 = v58;
  v92 = v59;
  v93 = v60;
  v94 = v61;
  v95 = v62;
  v96 = v57;
  v97 = v56;
  v98 = v46;
  v99 = v45;
  v100 = v44;
  v101 = v64;
  v102 = v63;
  v103 = v29;
  v104 = v30;
  v105 = v43;
  v106 = v70;
  *v107 = *v113;
  *&v107[3] = *&v113[3];
  v108 = v42;
  v109 = v68;
  v110 = v41;
  v111 = v40;
  return sub_242C95610(&v72);
}

uint64_t sub_242C944F8()
{
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242C9453C()
{
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242C9457C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x245D279D0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x245D279D0](*&v3);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO17DialConfigurationV10TickColorsV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v14 = a1[6];
  if ((sub_242C73158(*a1, *a2) & 1) == 0 || (sub_242C73158(v2, v7) & 1) == 0 || (sub_242C73158(v4, v9) & 1) == 0 || (sub_242C73158(v3, v8) & 1) == 0 || (sub_242C73158(v6, v11) & 1) == 0 || (sub_242C73158(v5, v10) & 1) == 0)
  {
    return 0;
  }

  return sub_242C732A0(v14, v13);
}

unint64_t sub_242C946CC()
{
  result = qword_27ECF0828;
  if (!qword_27ECF0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0828);
  }

  return result;
}

uint64_t sub_242C94720(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0830);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C94798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0840);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C94804(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
  }

  return result;
}

uint64_t sub_242C94844(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
  }

  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO17DialConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v105 = *(a1 + 48);
  v106 = *(a1 + 40);
  v100 = *(a1 + 64);
  v101 = *(a1 + 80);
  v102 = *(a1 + 96);
  v103 = *(a1 + 112);
  v104 = *(a1 + 56);
  v99 = *(a1 + 120);
  v83 = *(a1 + 128);
  v90 = *(a1 + 152);
  v88 = *(a1 + 136);
  v89 = *(a1 + 160);
  v91 = *(a1 + 168);
  v92 = *(a1 + 176);
  v93 = *(a1 + 184);
  v94 = *(a1 + 192);
  v95 = *(a1 + 144);
  v77 = *(a1 + 208);
  v80 = *(a1 + 216);
  v72 = *(a1 + 200);
  v73 = *(a1 + 224);
  v74 = *(a1 + 232);
  v6 = *(a1 + 256);
  v75 = *(a1 + 248);
  LOBYTE(v117) = *a1;
  LOBYTE(v127) = *a2;
  v69 = *(a1 + 264);
  v61 = *(a1 + 272);
  v66 = *(a1 + 280);
  v67 = v6;
  v58 = *(a1 + 288);
  v63 = *(a1 + 296);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v14 = *(a2 + 56);
  v13 = *(a2 + 64);
  v15 = *(a2 + 72);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  v107 = *(a2 + 96);
  v108 = *(a2 + 112);
  v98 = *(a2 + 120);
  v82 = *(a2 + 128);
  v96 = *(a2 + 144);
  v86 = *(a2 + 160);
  v87 = *(a2 + 136);
  v97 = *(a2 + 168);
  v84 = *(a2 + 176);
  v85 = *(a2 + 192);
  v79 = *(a2 + 200);
  v78 = *(a2 + 216);
  v76 = *(a2 + 224);
  v81 = *(a2 + 232);
  v70 = *(a2 + 240);
  v71 = *(a2 + 248);
  v68 = *(a2 + 264);
  v64 = *(a2 + 256);
  v65 = *(a2 + 280);
  v59 = *(a2 + 288);
  v60 = *(a2 + 272);
  v62 = *(a2 + 296);
  v18 = InstrumentDataIdentifier.rawValue.getter();
  v20 = v19;
  if (v18 == InstrumentDataIdentifier.rawValue.getter() && v20 == v21)
  {

    result = 0;
  }

  else
  {
    v23 = sub_242F06110();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v8 && v2 == v7 && v5 == v10 && v4 == v9 && v106 == v11 && v105 == v12 && v104 == v14)
  {
    v117 = v100;
    v118 = v101;
    v119 = v102;
    v120 = v103;
    *&v127 = v13;
    *(&v127 + 1) = v15;
    *&v128 = v16;
    *(&v128 + 1) = v17;
    v129 = v107;
    v130 = v108;

    v24 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO17DialConfigurationV10TickColorsV2eeoiySbAI_AItFZ_0(&v117, &v127);

    result = 0;
    if ((v24 & 1) != 0 && ((v99 ^ v98) & 1) == 0)
    {
      if (v88)
      {
        v26 = v93;
        v25 = v94;
        v28 = v91;
        v27 = v92;
        v29 = v89;
        v30 = v90;
        v31 = v95;
        v33 = *(&v96 + 1);
        v34 = v96;
        v32 = v97;
        if (!v87)
        {
          return 0;
        }

        if (v83 != v82 || v88 != v87)
        {
          v35 = sub_242F06110();
          v25 = v94;
          v26 = v93;
          v27 = v92;
          v28 = v91;
          v30 = v90;
          v31 = v95;
          if ((v35 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v26 = v93;
        v25 = v94;
        v28 = v91;
        v27 = v92;
        v29 = v89;
        v30 = v90;
        v31 = v95;
        v33 = *(&v96 + 1);
        v34 = v96;
        v32 = v97;
        if (v87)
        {
          return 0;
        }
      }

      if (v29)
      {
        *&v117 = v31;
        *(&v117 + 1) = v30;
        *&v118 = v29;
        *(&v118 + 1) = v28;
        *&v119 = v27;
        *(&v119 + 1) = v26;
        v120 = v25;
        if (v86)
        {
          *&v109 = v34;
          *(&v109 + 1) = v33;
          *&v110 = v86;
          *(&v110 + 1) = v32;
          v111 = v84;
          v112 = v85;
          sub_242C94804(v31, v30, v29);
          sub_242C94804(v96, *(&v96 + 1), v86);
          sub_242C94804(v31, v30, v29);
          v36 = v29;
          v37 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v117, &v109);
          v113 = v109;
          v114 = v110;
          v115 = v111;
          v116 = v112;
          sub_242C954DC(&v113);
          v127 = v117;
          v128 = v118;
          v129 = v119;
          v130 = v120;
          sub_242C954DC(&v127);
          sub_242C94844(v31, v30, v36);
          if ((v37 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_30;
        }

        v127 = v117;
        v128 = v118;
        v129 = v119;
        v130 = v120;
        v38 = v25;
        sub_242C94804(v31, v30, v29);
        v44 = v34;
        v45 = v33;
        v41 = *(&v84 + 1);
        v42 = v84;
        v43 = v85;
        sub_242C94804(v44, v45, 0);
        sub_242C94804(v31, v30, v29);
        sub_242C954DC(&v127);
      }

      else
      {
        v38 = v25;
        sub_242C94804(v31, v30, 0);
        if (!v86)
        {
          sub_242C94804(v34, v33, 0);
          sub_242C94844(v31, v30, 0);
LABEL_30:
          if (v80)
          {
            v46 = v73;
            *&v117 = v72;
            *(&v117 + 1) = v77;
            *&v118 = v80;
            *(&v118 + 1) = v73;
            v47 = *(&v74 + 1);
            v48 = v74;
            v119 = v74;
            v49 = v75;
            v120 = v75;
            if (v78)
            {
              v109 = v79;
              *&v110 = v78;
              *(&v110 + 1) = v76;
              *&v111 = v81;
              *(&v111 + 1) = v70;
              v112 = v71;
              sub_242C94804(v72, v77, v80);
              sub_242C94804(v79, *(&v79 + 1), v78);
              sub_242C94804(v72, v77, v80);
              v50 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v117, &v109);
              v113 = v109;
              v114 = v110;
              v115 = v111;
              v116 = v112;
              sub_242C954DC(&v113);
              v127 = v117;
              v128 = v118;
              v129 = v119;
              v130 = v120;
              sub_242C954DC(&v127);
              sub_242C94844(v72, v77, v80);
              if ((v50 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_42;
            }

            v127 = v117;
            v128 = v118;
            v129 = v119;
            v130 = v120;
            v52 = v77;
            v51 = v72;
            v56 = v80;
            sub_242C94804(v72, v77, v80);
            v53 = v76;
            v55 = v70;
            v54 = v71;
            sub_242C94804(v79, *(&v79 + 1), 0);
            sub_242C94804(v72, v77, v80);
            sub_242C954DC(&v127);
          }

          else
          {
            v51 = v72;
            v46 = v73;
            v52 = v77;
            v47 = *(&v74 + 1);
            v48 = v74;
            v49 = v75;
            sub_242C94804(v72, v77, 0);
            if (!v78)
            {
              sub_242C94804(v79, *(&v79 + 1), 0);
              sub_242C94844(v72, v77, 0);
LABEL_42:
              if (v69)
              {
                if (!v68)
                {
                  return 0;
                }
              }

              else
              {
                v57 = v68;
                if (v67 != v64)
                {
                  v57 = 1;
                }

                if (v57)
                {
                  return 0;
                }
              }

              if (v66)
              {
                if (!v65 || (v61 != v60 || v66 != v65) && (sub_242F06110() & 1) == 0)
                {
                  return 0;
                }
              }

              else if (v65)
              {
                return 0;
              }

              if (v63)
              {
                return v62 && (v58 == v59 && v63 == v62 || (sub_242F06110() & 1) != 0);
              }

              return !v62;
            }

            v53 = v76;
            v55 = v70;
            v54 = v71;
            sub_242C94804(v79, *(&v79 + 1), v78);
            v56 = 0;
          }

          *&v117 = v51;
          *(&v117 + 1) = v52;
          *&v118 = v56;
          *(&v118 + 1) = v46;
          *&v119 = v48;
          *(&v119 + 1) = v47;
          v120 = v49;
          v121 = v79;
          v122 = v78;
          v123 = v53;
          v124 = v81;
          v125 = v55;
          v126 = v54;
LABEL_38:
          sub_242C96450(&v117);
          return 0;
        }

        v39 = v34;
        v40 = v33;
        v41 = *(&v84 + 1);
        v42 = v84;
        v43 = v85;
        sub_242C94804(v39, v40, v86);
      }

      *&v117 = v31;
      *(&v117 + 1) = v30;
      *&v118 = v29;
      *(&v118 + 1) = v28;
      *&v119 = v27;
      *(&v119 + 1) = v26;
      v120 = v38;
      v121 = v96;
      v122 = v86;
      v123 = v97;
      v124 = v42;
      v125 = v41;
      v126 = v43;
      goto LABEL_38;
    }
  }

  return result;
}

unint64_t sub_242C95374()
{
  result = qword_27ECF0870;
  if (!qword_27ECF0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0870);
  }

  return result;
}

uint64_t sub_242C953C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0878);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C95434()
{
  result = qword_27ECF0888;
  if (!qword_27ECF0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0888);
  }

  return result;
}

unint64_t sub_242C95488()
{
  result = qword_27ECF0890;
  if (!qword_27ECF0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0890);
  }

  return result;
}

unint64_t sub_242C95530()
{
  result = qword_27ECF08A8;
  if (!qword_27ECF08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08A8);
  }

  return result;
}

unint64_t sub_242C95584()
{
  result = qword_27ECF08B0;
  if (!qword_27ECF08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08B0);
  }

  return result;
}

unint64_t sub_242C95644()
{
  result = qword_27ECF08B8;
  if (!qword_27ECF08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08B8);
  }

  return result;
}

unint64_t sub_242C9569C()
{
  result = qword_27ECF08C0;
  if (!qword_27ECF08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08C0);
  }

  return result;
}

uint64_t sub_242C956F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C95740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242C957E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C95828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17DialConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17DialConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s17DialConfigurationV10TickColorsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17DialConfigurationV10TickColorsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C95B28()
{
  result = qword_27ECF08C8;
  if (!qword_27ECF08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08C8);
  }

  return result;
}

unint64_t sub_242C95B80()
{
  result = qword_27ECF08D0;
  if (!qword_27ECF08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08D0);
  }

  return result;
}

unint64_t sub_242C95BD8()
{
  result = qword_27ECF08D8;
  if (!qword_27ECF08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08D8);
  }

  return result;
}

unint64_t sub_242C95C30()
{
  result = qword_27ECF08E0;
  if (!qword_27ECF08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08E0);
  }

  return result;
}

unint64_t sub_242C95C88()
{
  result = qword_27ECF08E8;
  if (!qword_27ECF08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08E8);
  }

  return result;
}

unint64_t sub_242C95CE0()
{
  result = qword_27ECF08F0;
  if (!qword_27ECF08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08F0);
  }

  return result;
}

uint64_t sub_242C95D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43657669746361 && a2 == 0xEC00000073726F6CLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F591D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F591F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEE0073726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F59210 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F59230 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242C95F8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416D756D696E696DLL && a2 == 0xEC000000656C676ELL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416D756D6978616DLL && a2 == 0xEC000000656C676ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59250 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59270 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59290 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C6F436B636974 && a2 == 0xEA00000000007372 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6465654E736168 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x67616D496E6F6369 && a2 == 0xED0000656D614E65 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F592B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F592D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000242F592F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59320 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59340 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_242C96450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF08F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LayerHostView.body.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for WrapLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_242C96A28, v3, v2);
}

uint64_t sub_242C96568()
{
  v1 = *v0;
  v2 = type metadata accessor for WrapLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_242C96B0C, v3, v2);
}

id sub_242C966C4()
{
  result = [v0 sublayers];
  if (result)
  {
    v2 = result;
    sub_242C96AC0();
    v3 = sub_242F05310();

    if (v3 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_242F059B0())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D270D0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v0 bounds];
        [v7 setFrame_];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }

  return result;
}

id sub_242C96974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrapLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_242C969AC(void *a1, id a2)
{
  v4 = [a2 superlayer];
  if (v4)
  {
  }

  else
  {

    [a1 addSublayer_];
  }
}

unint64_t sub_242C96A5C()
{
  result = qword_27ECF0900;
  if (!qword_27ECF0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0900);
  }

  return result;
}

unint64_t sub_242C96AC0()
{
  result = qword_27ECF0910;
  if (!qword_27ECF0910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF0910);
  }

  return result;
}

CarPlayAssetUI::VehicleType_optional __swiftcall VehicleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VehicleType.rawValue.getter()
{
  v1 = 4539209;
  if (*v0 != 1)
  {
    v1 = 0x646972627948;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 22085;
  }
}

uint64_t sub_242C96BBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 4539209;
  if (v2 != 1)
  {
    v4 = 0x646972627948;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 22085;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 4539209;
  if (*a2 != 1)
  {
    v8 = 0x646972627948;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 22085;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242C96CA0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242C96D2C()
{
  sub_242F04DD0();
}

uint64_t sub_242C96DA4()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242C96E38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE300000000000000;
  v5 = 4539209;
  if (v2 != 1)
  {
    v5 = 0x646972627948;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 22085;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_242C96F4C()
{
  result = qword_27ECF0918;
  if (!qword_27ECF0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0918);
  }

  return result;
}

unint64_t sub_242C96FA4()
{
  result = qword_27ECF0920;
  if (!qword_27ECF0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0920);
  }

  return result;
}

unint64_t sub_242C9700C()
{
  result = qword_27ECF0930;
  if (!qword_27ECF0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0930);
  }

  return result;
}

unint64_t sub_242C97064()
{
  result = qword_27ECF0938;
  if (!qword_27ECF0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0938);
  }

  return result;
}

unint64_t sub_242C970C8()
{
  result = qword_27ECF0940;
  if (!qword_27ECF0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0940);
  }

  return result;
}

void TrackingView.init(identifier:cornerRadius:)(void *a1@<X8>, double a2@<D0>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD9E18]) init];
  *a1 = v4;
  v6 = v4;
  v5 = sub_242F04F00();

  [v6 setIdentifier_];

  [v6 setCornerRadius_];
}

id TrackingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  return v2;
}

id sub_242C9720C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  return v2;
}

unint64_t sub_242C9722C()
{
  result = qword_27ECF0948;
  if (!qword_27ECF0948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0950);
    sub_242C972B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0948);
  }

  return result;
}

unint64_t sub_242C972B8()
{
  result = qword_27ECF0958;
  if (!qword_27ECF0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0958);
  }

  return result;
}

uint64_t TypedIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_242F03810();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_242F03830();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

void sub_242C973A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D0E8 = v8;
  unk_27ED5D0F0 = v10;
  qword_27ED5D0F8 = v15;
  byte_27ED5D100 = 0;
}

void sub_242C97654()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D108 = v8;
  unk_27ED5D110 = v10;
  qword_27ED5D118 = v15;
  byte_27ED5D120 = 0;
}

void sub_242C97904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D128 = v8;
  unk_27ED5D130 = v10;
  qword_27ED5D138 = v15;
  byte_27ED5D140 = 0;
}

void sub_242C97BB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D148 = v8;
  unk_27ED5D150 = v10;
  qword_27ED5D158 = v15;
  byte_27ED5D160 = 0;
}

void sub_242C97E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D168 = v8;
  unk_27ED5D170 = v10;
  qword_27ED5D178 = v15;
  byte_27ED5D180 = 0;
}

void sub_242C98118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D188 = v8;
  unk_27ED5D190 = v10;
  qword_27ED5D198 = v15;
  byte_27ED5D1A0 = 0;
}

void sub_242C983C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D1A8 = v8;
  unk_27ED5D1B0 = v10;
  qword_27ED5D1B8 = v15;
  byte_27ED5D1C0 = 0;
}

void sub_242C98678()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D1C8 = v8;
  unk_27ED5D1D0 = v10;
  qword_27ED5D1D8 = v15;
  byte_27ED5D1E0 = 0;
}

uint64_t static Widget.defaultWidgets.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0248);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F0C2E0;
  if (qword_27ECEEE60 != -1)
  {
    swift_once();
  }

  v1 = unk_27ED5D0F0;
  v2 = qword_27ED5D0F8;
  v3 = byte_27ED5D100;
  *(v0 + 32) = qword_27ED5D0E8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = qword_27ECEEE70;

  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = unk_27ED5D130;
  v7 = qword_27ED5D138;
  v8 = byte_27ED5D140;
  *(v0 + 64) = qword_27ED5D128;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = qword_27ECEEE88;

  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = unk_27ED5D190;
  v12 = qword_27ED5D198;
  v13 = byte_27ED5D1A0;
  *(v0 + 96) = qword_27ED5D188;
  *(v0 + 104) = v11;
  *(v0 + 112) = v12;
  *(v0 + 120) = v13;
  v14 = qword_27ECEEE68;

  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = unk_27ED5D110;
  v17 = qword_27ED5D118;
  v18 = byte_27ED5D120;
  *(v0 + 128) = qword_27ED5D108;
  *(v0 + 136) = v16;
  *(v0 + 144) = v17;
  *(v0 + 152) = v18;
  v19 = qword_27ECEEE78;

  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = unk_27ED5D150;
  v22 = qword_27ED5D158;
  v23 = byte_27ED5D160;
  *(v0 + 160) = qword_27ED5D148;
  *(v0 + 168) = v21;
  *(v0 + 176) = v22;
  *(v0 + 184) = v23;
  v24 = qword_27ECEEE98;

  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = unk_27ED5D1D0;
  v27 = qword_27ED5D1D8;
  v28 = byte_27ED5D1E0;
  *(v0 + 192) = qword_27ED5D1C8;
  *(v0 + 200) = v26;
  *(v0 + 208) = v27;
  *(v0 + 216) = v28;
  v29 = qword_27ECEEE80;

  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = unk_27ED5D170;
  v32 = qword_27ED5D178;
  v33 = byte_27ED5D180;
  *(v0 + 224) = qword_27ED5D168;
  *(v0 + 232) = v31;
  *(v0 + 240) = v32;
  *(v0 + 248) = v33;
  v34 = qword_27ECEEE90;

  v35 = v32;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = unk_27ED5D1B0;
  v37 = qword_27ED5D1B8;
  v38 = byte_27ED5D1C0;
  *(v0 + 256) = qword_27ED5D1A8;
  *(v0 + 264) = v36;
  *(v0 + 272) = v37;
  *(v0 + 280) = v38;

  v39 = v37;
  return v0;
}

uint64_t sub_242C98C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_242E3BE10(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_242F05940();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 944 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_242E3BE10((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_242C9E060(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_242C9E060(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_242C98E68()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6564616873;
  }
}

uint64_t sub_242C98E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564616873 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242C98F68(uint64_t a1)
{
  v2 = sub_242C9B53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C98FA4(uint64_t a1)
{
  v2 = sub_242C9B53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C98FE0(uint64_t a1)
{
  v2 = sub_242C9B590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C9901C(uint64_t a1)
{
  v2 = sub_242C9B590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C9906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564616873 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C990F0(uint64_t a1)
{
  v2 = sub_242C9B638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C9912C(uint64_t a1)
{
  v2 = sub_242C9B638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.ColorOverride.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0968);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0970);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0978);
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v18 - v10;
  v12 = v1[1];
  v23 = *v1;
  v20 = v1[2];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9B53C();
  sub_242F064C0();
  if (v12 < 0)
  {
    LOBYTE(v25) = 1;
    sub_242C9B590();
    v16 = v24;
    sub_242F05E40();
    v25 = v23;
    sub_242C9B5E4();
    v17 = v19;
    sub_242F05F20();
    (*(v18 + 8))(v5, v17);
    return (*(v9 + 8))(v11, v16);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_242C9B638();
    v13 = v24;
    sub_242F05E40();
    v25 = v23;
    v26 = v12 & 1;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09A0);
    sub_242C9B734(&qword_27ECF09A8);
    v14 = v22;
    sub_242F05F20();
    (*(v21 + 8))(v8, v14);
    return (*(v9 + 8))(v11, v13);
  }
}

uint64_t Theme.ColorOverride.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[1] < 0)
  {
    MEMORY[0x245D279A0](1);

    return sub_242C793AC(a1, v3);
  }

  else
  {
    v4 = v1[2];
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    return MEMORY[0x245D279A0](v4);
  }
}

uint64_t Theme.ColorOverride.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F06390();
  if (v2 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242C793AC(v5, v1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    MEMORY[0x245D279A0](v3);
  }

  return sub_242F063E0();
}

uint64_t Theme.ColorOverride.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09C0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09C8);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242C9B53C();
  v14 = v34;
  sub_242F06480();
  if (!v14)
  {
    v34 = v10;
    v15 = v32;
    v16 = v33;
    v17 = sub_242F05E10();
    v18 = (2 * *(v17 + 16)) | 1;
    v38 = v17;
    v39 = v17 + 32;
    v40 = 0;
    v41 = v18;
    v19 = sub_242C7FBE4();
    if (v19 == 2 || v40 != v41 >> 1)
    {
      v22 = sub_242F05B10();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v24 = &type metadata for Theme.ColorOverride;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v34 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        LOBYTE(v35) = 1;
        sub_242C9B590();
        v20 = v5;
        sub_242F05D10();
        v21 = v34;
        sub_242C7E0D4();
        sub_242F05E00();
        (*(v31 + 8))(v20, v15);
        (*(v21 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v27 = 0;
        v28 = v35;
        v29 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v35) = 0;
        sub_242C9B638();
        sub_242F05D10();
        v26 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09A0);
        sub_242C9B734(&qword_27ECF09D8);
        sub_242F05E00();
        (*(v30 + 8))(v8, v6);
        (*(v26 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v28 = v35;
        v29 = v36;
        v27 = v37;
      }

      *v16 = v28;
      v16[1] = v29;
      v16[2] = v27;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v42);
}

uint64_t sub_242C99BF8(uint64_t a1)
{
  v3 = *v1;
  if (v1[1] < 0)
  {
    MEMORY[0x245D279A0](1);

    return sub_242C793AC(a1, v3);
  }

  else
  {
    v4 = v1[2];
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    return MEMORY[0x245D279A0](v4);
  }
}

uint64_t sub_242C99CC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F06390();
  if (v2 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242C793AC(v5, v1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    MEMORY[0x245D279A0](v3);
  }

  return sub_242F063E0();
}

uint64_t Theme.LayoutStyle.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Theme.LayoutStyle.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Theme.LayoutStyle.defaultPaletteID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t Theme.LayoutStyle.defaultPaletteID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t Theme.LayoutStyle.defaultWallpaperID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t Theme.LayoutStyle.defaultWallpaperID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t Theme.LayoutStyle.paletteIDs.getter()
{

  v1 = sub_242C98C38(v0);

  return v1;
}

uint64_t Theme.LayoutStyle.init(id:defaultPaletteID:defaultWallpaperID:colorSetOverrides:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  v11 = *a3;
  v12 = a3[1];

  v14 = sub_242C98C38(v13);

  v22 = v10;
  v23 = v9;
  v19 = &v22;
  v15 = sub_242E384A4(sub_242C9B7C0, v18, v14);

  if (v15)
  {

    *a5 = v7;
    a5[1] = v8;
    a5[2] = a4;
    a5[3] = v10;
    a5[4] = v9;
    a5[5] = v11;
    a5[6] = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_242F05A80();

    v22 = 0xD00000000000001CLL;
    v23 = 0x8000000242F596B0;
    v20 = v10;
    v21 = v9;

    v17 = sub_242F04F90();
    MEMORY[0x245D26660](v17);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Theme.LayoutStyle.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_242F04DD0();
  sub_242C7A3DC(a1, v3);
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t Theme.LayoutStyle.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242C7A3DC(v3, v1);
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242C9A174()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242C7A3DC(v3, v1);
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242C9A210(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_242F04DD0();
  sub_242C7A3DC(a1, v3);
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t sub_242C9A28C()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242C7A3DC(v3, v1);
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

unint64_t sub_242C9A328()
{
  v1 = 25705;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_242C9A39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C9DEF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C9A3C4(uint64_t a1)
{
  v2 = sub_242C9B930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C9A400(uint64_t a1)
{
  v2 = sub_242C9B930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.LayoutStyle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9B930();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v47 = a1;
  v48 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0);
  LOBYTE(v51[0]) = 0;
  sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0);
  sub_242F05E00();
  v10 = v50[0];
  v9 = v50[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
  LOBYTE(v51[0]) = 2;
  sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38);
  sub_242F05E00();
  v46 = v10;
  v11 = v50[0];
  v12 = v50[1];
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A00);
  LOBYTE(v51[0]) = 3;
  v13 = v45;
  sub_242C9BB60(&qword_27ECF0A08, &qword_27ECF0A00);
  sub_242F05E00();
  if (v13)
  {
    (*(v48 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_2Tm(v47);
  }

  else
  {
    v41 = v11;
    v14 = v50[0];
    v42 = v50[1];
    LOBYTE(v50[0]) = 1;
    sub_242F05D00();
    v39 = v4;
    v40 = v9;
    v37 = v14;
    v38 = v12;
    __swift_project_boxed_opaque_existential_2Tm(v51, v52);
    if (sub_242F05F90())
    {
      v44 = MEMORY[0x277D84F98];
      v15 = v49;
      v16 = v46;
LABEL_8:
      (*(v48 + 8))(v7, v39);
      __swift_destroy_boxed_opaque_existential_2Tm(v51);
      v18 = v40;
      v17 = v41;
      *v15 = v16;
      v15[1] = v18;
      v15[2] = v44;
      v15[3] = v17;
      v19 = v37;
      v15[4] = v38;
      v15[5] = v19;
      v15[6] = v42;

      __swift_destroy_boxed_opaque_existential_2Tm(v47);
    }

    else
    {
      v44 = MEMORY[0x277D84F98];
      v43 = v7;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
        sub_242C9B984();
        sub_242F05F80();
        memcpy(v53, v50, 0x3B0uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A18);
        __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
        sub_242C9B9D8();
        sub_242F05F80();
        v20 = v50[0];
        v21 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v21;
        v23 = sub_242CE5238(v53);
        v25 = v21[2];
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          break;
        }

        v29 = v24;
        v16 = v46;
        if (v21[3] >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = v23;
            sub_242D01BD0();
            v23 = v35;
          }
        }

        else
        {
          sub_242D05338(v28, isUniquelyReferenced_nonNull_native);
          v23 = sub_242CE5238(v53);
          if ((v29 & 1) != (v30 & 1))
          {
            goto LABEL_23;
          }
        }

        v31 = v54;
        v44 = v54;
        if (v29)
        {
          *(v54[7] + 8 * v23) = v20;

          sub_242C7C7BC(v53);
        }

        else
        {
          v54[(v23 >> 6) + 8] |= 1 << v23;
          v32 = v23;
          memcpy((v31[6] + 944 * v23), v53, 0x3B0uLL);
          *(v31[7] + 8 * v32) = v20;
          v33 = v31[2];
          v27 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v27)
          {
            goto LABEL_22;
          }

          v31[2] = v34;
        }

        v15 = v49;
        __swift_project_boxed_opaque_existential_2Tm(v51, v52);
        if (sub_242F05F90())
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_242F06320();
      __break(1u);
    }
  }

  return result;
}

uint64_t Theme.LayoutStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A58);
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v30 = *(v1 + 24);
  v31 = v10;
  v29 = v9;
  v11 = *(v1 + 48);
  v27 = v8;
  v28 = v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9B930();

  sub_242F064C0();
  v35[0] = v6;
  v12 = v5;
  v35[1] = v7;
  LOBYTE(v33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0);
  sub_242C9BB60(&qword_27ECF0A60, &qword_27ECF09F0);
  v13 = v32;
  sub_242F05F20();
  if (v13)
  {

    return (*(v38 + 8))(v5, v3);
  }

  v15 = v28;
  v14 = v29;

  v35[0] = v30;
  v35[1] = v31;
  LOBYTE(v33) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
  sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38);
  sub_242F05F20();

  v35[0] = v14;
  v35[1] = v15;
  LOBYTE(v33) = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A00);
  sub_242C9BB60(&qword_27ECF0A68, &qword_27ECF0A00);
  sub_242F05F20();

  LOBYTE(v35[0]) = 1;
  v31 = v3;
  sub_242F05E30();
  swift_getKeyPath();
  v17 = v27;
  v18 = *(v27 + 16);
  if (v18)
  {
    v19 = sub_242CDD8C0(*(v27 + 16), 0);
    v32 = sub_242CDFCB8(v35, v19 + 4, v18, v17);
    v29 = v35[4];
    v30 = v35[3];

    sub_242C6548C();
    if (v32 == v18)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_7:
  v35[0] = v19;
  sub_242C9D524(v35);

  v20 = v35[0];
  v32 = v35[0][2];
  if (v32)
  {
    v21 = 0;
    v22 = 4;
    v26 = v12;
    while (v21 < v20[2])
    {
      memcpy(v35, &v20[v22], sizeof(v35));
      v23 = v35[118];
      memcpy(v34, v35, sizeof(v34));
      __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      sub_242C9D5C8(v35, &v33);
      sub_242C9D638();
      sub_242F05FA0();
      v33 = v23;
      __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A18);
      sub_242C9D6F4();
      sub_242F05FA0();
      v21 = (v21 + 1);
      sub_242C9D68C(v35);
      v22 += 119;
      v24 = v38;
      v12 = v26;
      if (v32 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v24 = v38;
LABEL_13:

    (*(v24 + 8))(v12, v31);
    return __swift_destroy_boxed_opaque_existential_2Tm(v36);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI5ThemeO13ColorOverrideO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = ColorSet.ColorID.rawValue.getter();
      v10 = v9;
      if (v8 == ColorSet.ColorID.rawValue.getter() && v10 == v11)
      {
        sub_242C7F7D4(v3, v2);
        sub_242C7F7D4(v6, v5);

        if (v4 == v7)
        {
          return 1;
        }
      }

      else
      {
        v13 = sub_242F06110();
        sub_242C7F7D4(v3, v2);
        sub_242C7F7D4(v6, v5);

        if ((v13 & 1) != 0 && v4 == v7)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_9:
    sub_242C7F7A0(v6, v5);
    sub_242C7F7D4(v3, v2);
    sub_242C7F7D4(v6, v5);
    return 0;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {

    goto LABEL_9;
  }

  sub_242C7F7A0(*a2, a2[1]);
  sub_242C7F7A0(v3, v2);
  sub_242C7F7A0(v6, v5);
  sub_242C7F7A0(v3, v2);
  v14 = sub_242C74594(v3, v6);
  sub_242C7F7D4(v3, v2);
  sub_242C7F7D4(v6, v5);
  sub_242C7F7D4(v6, v5);
  sub_242C7F7D4(v3, v2);
  return v14 & 1;
}

unint64_t sub_242C9B53C()
{
  result = qword_27ECF0980;
  if (!qword_27ECF0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0980);
  }

  return result;
}

unint64_t sub_242C9B590()
{
  result = qword_27ECF0988;
  if (!qword_27ECF0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0988);
  }

  return result;
}

unint64_t sub_242C9B5E4()
{
  result = qword_27ECF0990;
  if (!qword_27ECF0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0990);
  }

  return result;
}

unint64_t sub_242C9B638()
{
  result = qword_27ECF0998;
  if (!qword_27ECF0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0998);
  }

  return result;
}

unint64_t sub_242C9B68C()
{
  result = qword_27ECF09B0;
  if (!qword_27ECF09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF09B0);
  }

  return result;
}

unint64_t sub_242C9B6E0()
{
  result = qword_27ECF09B8;
  if (!qword_27ECF09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF09B8);
  }

  return result;
}

uint64_t sub_242C9B734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF09A0);
    sub_242C9B68C();
    sub_242C9B6E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C9B7C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110() & 1;
  }
}

uint64_t _s14CarPlayAssetUI5ThemeO11LayoutStyleV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_242F06110() & 1) == 0 || (sub_242C746FC(v2) & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v8 && v6 == v10)
  {
    return 1;
  }

  return sub_242F06110();
}

unint64_t sub_242C9B930()
{
  result = qword_27ECF09E8;
  if (!qword_27ECF09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF09E8);
  }

  return result;
}

unint64_t sub_242C9B984()
{
  result = qword_27ECF0A10;
  if (!qword_27ECF0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A10);
  }

  return result;
}

unint64_t sub_242C9B9D8()
{
  result = qword_27ECF0A20;
  if (!qword_27ECF0A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A18);
    sub_242C7DFAC();
    sub_242C9D79C(&qword_27ECF0A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A20);
  }

  return result;
}

unint64_t sub_242C9BA80()
{
  result = qword_27ECF0A40;
  if (!qword_27ECF0A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A38);
    sub_242C7DFAC();
    sub_242C9BB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A40);
  }

  return result;
}

unint64_t sub_242C9BB0C()
{
  result = qword_27ECF0A48;
  if (!qword_27ECF0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A48);
  }

  return result;
}

uint64_t sub_242C9BB60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C9BBC8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = v1;
  v9 = v2 - v1;
  v10 = (v2 - v1) / 952;
  v11 = v5 - v2;
  v12 = (v5 - v2) / 952;
  if (v10 < v12)
  {
    if (v3 != v1 || &v1[952 * v10] <= v3)
    {
      memmove(v3, v1, 952 * v10);
    }

    v13 = &v4[952 * v10];
    if (v9 < 952)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_43;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      memcpy(v29, v7, sizeof(v29));
      memcpy(v30, v4, 0x3B8uLL);
      memcpy(v28, v29, sizeof(v28));
      memcpy(__dst, v30, sizeof(__dst));
      sub_242C9D5C8(v29, v25);
      sub_242C9D5C8(v30, v25);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v25[0] == __src[0] && v25[1] == __src[1])
      {
        break;
      }

      v16 = sub_242F06110();
      memcpy(v23, __src, sizeof(v23));
      sub_242C7C7BC(v23);
      memcpy(v24, v25, sizeof(v24));
      sub_242C7C7BC(v24);
      sub_242C9D68C(v30);
      sub_242C9D68C(v29);
      if ((v16 & 1) == 0)
      {
        goto LABEL_15;
      }

      v14 = v7;
      v15 = v8 == v7;
      v7 += 952;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 952;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    memcpy(v23, __src, sizeof(v23));
    sub_242C7C7BC(v23);
    memcpy(v24, v25, sizeof(v24));
    sub_242C7C7BC(v24);
    sub_242C9D68C(v30);
    sub_242C9D68C(v29);
LABEL_15:
    v14 = v4;
    v15 = v8 == v4;
    v4 += 952;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v8, v14, 0x3B8uLL);
    goto LABEL_9;
  }

  if (v3 != v2 || &v2[952 * v12] <= v3)
  {
    memmove(v3, v2, 952 * v12);
  }

  v13 = &v4[952 * v12];
  if (v11 >= 952 && v7 > v8)
  {
LABEL_23:
    v17 = v7 - 952;
    v6 -= 952;
    v18 = v13;
    do
    {
      v13 = v18;
      v18 -= 952;
      memcpy(v29, v18, sizeof(v29));
      memcpy(v30, v7 - 952, 0x3B8uLL);
      memcpy(v28, v29, sizeof(v28));
      memcpy(__dst, v7 - 952, sizeof(__dst));
      sub_242C9D5C8(v29, v25);
      sub_242C9D5C8(v30, v25);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (__src[0] == v25[0] && __src[1] == v25[1])
      {
        v19 = 0;
      }

      else
      {
        v19 = sub_242F06110();
      }

      memcpy(v23, v25, sizeof(v23));
      sub_242C7C7BC(v23);
      memcpy(v24, __src, sizeof(v24));
      sub_242C7C7BC(v24);
      sub_242C9D68C(v30);
      sub_242C9D68C(v29);
      v20 = v6 + 952;
      if (v19)
      {
        if (v20 < v7 || v6 >= v7 || v20 != v7)
        {
          memmove(v6, v7 - 952, 0x3B8uLL);
        }

        if (v13 <= v4 || (v7 -= 952, v17 <= v8))
        {
          v7 = v17;
          goto LABEL_43;
        }

        goto LABEL_23;
      }

      if (v20 < v13 || v6 >= v13 || v20 != v13)
      {
        memmove(v6, v18, 0x3B8uLL);
      }

      v6 -= 952;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_43:
  v21 = (v13 - v4) / 952;
  if (v7 != v4 || v7 >= &v4[952 * v21])
  {
    memmove(v7, v4, 952 * v21);
  }

  return 1;
}

uint64_t sub_242C9C0B8(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v17 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v17 = sub_242D9D130(v17);
  }

  v15 = v5;
  *v5 = v17;
  v7 = (v17 + 16);
  v8 = *(v17 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v15 = v17;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v5 = &v17[16 * v8];
      v9 = *v5;
      v10 = &v7[2 * v8];
      v11 = v10[1];
      v18 = *a3 + 952 * *v5;

      sub_242C9BBC8(v18);

      if (v4)
      {
        *v15 = v17;

        return 1;
      }

      if (v11 < v9)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v12 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v5 = v9;
      *(v5 + 1) = v11;
      v13 = v12 - v8;
      if (v12 < v8)
      {
        goto LABEL_14;
      }

      v8 = v12 - 1;
      memmove(v10, v10 + 2, 16 * v13);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v15 = v17;
    __break(1u);
  }

  return result;
}

uint64_t sub_242C9C264(uint64_t a1)
{
  v93 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v92 = v4;
  v5 = v4[1];
  v229 = MEMORY[0x277D84F90];
  if (v5 >= 1)
  {
    v6 = v2;
    swift_retain_n();
    v7 = 0;
    v230 = MEMORY[0x277D84F90];
    v88 = v3;
    v89 = v6;
    while (1)
    {
      v8 = v7;
      v9 = v7 + 1;
      if (v7 + 1 >= v5)
      {
        ++v7;
      }

      else
      {
        v10 = *v92;
        memcpy(v227, (*v92 + 952 * v9), sizeof(v227));
        memcpy(v228, (v10 + 952 * v8), sizeof(v228));
        sub_242C9D5C8(v227, v226);
        sub_242C9D5C8(v228, v226);
        v160 = *&v227[8];
        v161 = *&v227[24];
        v162 = *&v227[40];
        v163 = *&v227[56];
        v164 = *&v227[72];
        v165 = *&v227[88];
        v166 = *&v227[104];
        v167 = *&v227[120];
        v168 = *&v227[136];
        v169 = *&v227[152];
        v170 = *&v227[168];
        v171 = *&v227[184];
        v172 = *&v227[200];
        v173 = *&v227[216];
        v174 = *&v227[232];
        v175 = *&v227[248];
        v177 = *&v227[272];
        v178 = *&v227[288];
        v179 = *&v227[304];
        v180 = *&v227[320];
        v181 = *&v227[336];
        v182 = *&v227[352];
        v183 = *&v227[368];
        v184 = *&v227[384];
        v185 = *&v227[400];
        v186 = *&v227[416];
        v187 = *&v227[432];
        v188 = *&v227[448];
        v189 = *&v227[464];
        v190 = *&v227[480];
        v191 = *&v227[496];
        v192 = *&v227[512];
        v193 = *&v227[528];
        v194 = *&v227[544];
        v195 = *&v227[560];
        v196 = *&v227[576];
        v197 = *&v227[592];
        v198 = *&v227[608];
        v199 = *&v227[624];
        v200 = *&v227[640];
        v201 = *&v227[656];
        v202 = *&v227[672];
        v203 = *&v227[688];
        v204 = *&v227[704];
        v205 = *&v227[720];
        v206 = *&v227[736];
        v207 = *&v227[752];
        v208 = *&v227[768];
        v209 = *&v227[784];
        v210 = *&v227[800];
        v211 = *&v227[816];
        v212 = *&v227[832];
        v213 = *&v227[848];
        v214 = *&v227[864];
        v215 = *&v227[880];
        v218 = *&v227[912];
        v97 = *&v228[8];
        v98 = *&v228[24];
        v99 = *&v228[40];
        v100 = *&v228[56];
        v101 = *&v228[72];
        v102 = *&v228[88];
        v103 = *&v228[104];
        v104 = *&v228[120];
        v105 = *&v228[136];
        v106 = *&v228[152];
        v107 = *&v228[168];
        v108 = *&v228[184];
        v109 = *&v228[200];
        v110 = *&v228[216];
        v111 = *&v228[232];
        v112 = *&v228[248];
        v114 = *&v228[272];
        v115 = *&v228[288];
        v116 = *&v228[304];
        v117 = *&v228[320];
        v118 = *&v228[336];
        v119 = *&v228[352];
        v120 = *&v228[368];
        v121 = *&v228[384];
        v122 = *&v228[400];
        v123 = *&v228[416];
        v124 = *&v228[432];
        v125 = *&v228[448];
        v126 = *&v228[464];
        v127 = *&v228[480];
        v128 = *&v228[496];
        v129 = *&v228[512];
        v130 = *&v228[528];
        v131 = *&v228[544];
        v132 = *&v228[560];
        v133 = *&v228[576];
        v134 = *&v228[592];
        v135 = *&v228[608];
        v136 = *&v228[624];
        v137 = *&v228[640];
        v138 = *&v228[656];
        v139 = *&v228[672];
        v140 = *&v228[688];
        v141 = *&v228[704];
        v142 = *&v228[720];
        v143 = *&v228[736];
        v144 = *&v228[752];
        v145 = *&v228[768];
        v146 = *&v228[784];
        v147 = *&v228[800];
        v148 = *&v228[816];
        v149 = *&v228[832];
        v150 = *&v228[848];
        v151 = *&v228[864];
        v152 = *&v228[880];
        v155 = *&v228[912];
        v159 = *v227;
        v176 = *&v227[264];
        v216 = v227[896];
        v217 = *&v227[904];
        v219 = v227[928];
        v220 = *&v227[936];
        v221 = *&v227[944];
        __dst[119] = *v228;
        v113 = *&v228[264];
        v153 = v228[896];
        v154 = *&v228[904];
        v156 = v228[928];
        v157 = *&v228[936];
        v158 = *&v228[944];
        v11 = v8;
        v12 = sub_242DB6748(&v159);
        sub_242C9D68C(v228);
        sub_242C9D68C(v227);
        if (v93)
        {
          goto LABEL_102;
        }

        v13 = v11 + 2;
        if (v11 + 2 >= v5)
        {
          v14 = v11;
          v7 = v11 + 2;
          if ((v12 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v14 = v11;
          v15 = v10 + 952 * v11 + 952;
          do
          {
            v7 = v13;
            memcpy(v225, (v15 + 952), sizeof(v225));
            memcpy(v226, v15, sizeof(v226));
            memcpy(v224, v225, sizeof(v224));
            memcpy(__dst, v226, 0x3B8uLL);
            sub_242C9D5C8(v225, __src);
            sub_242C9D5C8(v226, __src);
            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (__src[0] == v223[0] && __src[1] == v223[1])
            {
              v16 = 0;
            }

            else
            {
              v16 = sub_242F06110();
            }

            memcpy(v94, v223, sizeof(v94));
            sub_242C7C7BC(v94);
            memcpy(v222, __src, sizeof(v222));
            sub_242C7C7BC(v222);
            sub_242C9D68C(v226);
            sub_242C9D68C(v225);
            if ((v12 ^ v16))
            {
              v9 = v7 - 1;
              if ((v12 & 1) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_19;
            }

            v13 = v7 + 1;
            v15 += 952;
          }

          while (v5 != v7 + 1);
          v9 = v7;
          v7 = v5;
          if ((v12 & 1) == 0)
          {
LABEL_27:
            v8 = v14;
            goto LABEL_29;
          }
        }

LABEL_19:
        if (v7 < v14)
        {
          goto LABEL_123;
        }

        v8 = v14;
        if (v14 <= v9)
        {
          v17 = v7;
          v18 = v3;
          v19 = 952 * v17 - 952;
          v20 = 952 * v14;
          v21 = v17;
          v22 = v17;
          v23 = v14;
          do
          {
            if (v8 != --v22)
            {
              v24 = *v92;
              if (!*v92)
              {
                goto LABEL_126;
              }

              memcpy(v226, (v24 + v20), sizeof(v226));
              memmove((v24 + v20), (v24 + v19), 0x3B8uLL);
              memcpy((v24 + v19), v226, 0x3B8uLL);
            }

            ++v8;
            v19 -= 952;
            v20 += 952;
          }

          while (v8 < v22);
          v3 = v18;
          v6 = v89;
          v8 = v23;
          v7 = v21;
        }
      }

LABEL_29:
      v25 = v92[1];
      if (v7 < v25)
      {
        if (__OFSUB__(v7, v8))
        {
          goto LABEL_120;
        }

        if (v7 - v8 < v6)
        {
          v26 = v8 + v6;
          if (__OFADD__(v8, v6))
          {
            goto LABEL_121;
          }

          if (v26 >= v25)
          {
            v26 = v92[1];
          }

          if (v26 < v8)
          {
LABEL_122:
            __break(1u);
LABEL_123:
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
            return result;
          }

          if (v7 != v26)
          {
            v27 = *v92;
            v28 = *v92 + 952 * v7 - 952;
            v91 = v8;
            v29 = v7;
            v30 = v8 - v7 + 1;
            do
            {
              v7 = v26;
              v31 = v30;
              for (i = v28; ; i -= 952)
              {
                memcpy(v227, (i + 952), sizeof(v227));
                memcpy(v228, i, sizeof(v228));
                memcpy(v226, v227, sizeof(v226));
                memcpy(v225, v228, sizeof(v225));
                sub_242C9D5C8(v227, v224);
                sub_242C9D5C8(v228, v224);
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (__dst[0] == __src[0] && __dst[1] == __src[1])
                {
                  break;
                }

                v33 = sub_242F06110();
                memcpy(v222, __src, sizeof(v222));
                sub_242C7C7BC(v222);
                memcpy(v223, __dst, sizeof(v223));
                sub_242C7C7BC(v223);
                sub_242C9D68C(v228);
                sub_242C9D68C(v227);
                if ((v33 & 1) == 0)
                {
                  goto LABEL_39;
                }

                if (!v27)
                {
                  goto LABEL_124;
                }

                memcpy(v224, (i + 952), sizeof(v224));
                memcpy((i + 952), i, 0x3B8uLL);
                memcpy(i, v224, 0x3B8uLL);
                if (!v31)
                {
                  goto LABEL_39;
                }

                ++v31;
              }

              memcpy(v222, __src, sizeof(v222));
              sub_242C7C7BC(v222);
              memcpy(v223, __dst, sizeof(v223));
              sub_242C7C7BC(v223);
              sub_242C9D68C(v228);
              sub_242C9D68C(v227);
LABEL_39:
              v28 += 952;
              --v30;
              ++v29;
              v26 = v7;
            }

            while (v29 != v7);
            v3 = v88;
            v8 = v91;
          }
        }
      }

      if (v7 < v8)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_242C829CC(0, *(v230 + 2) + 1, 1, v230);
      }

      v35 = *(v230 + 2);
      v34 = *(v230 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v230 = sub_242C829CC((v34 > 1), v35 + 1, 1, v230);
      }

      v37 = v230;
      *(v230 + 2) = v36;
      v38 = v37 + 32;
      v39 = &v37[16 * v35 + 32];
      *v39 = v8;
      *(v39 + 1) = v7;
      v229 = v37;
      if (!*v3)
      {
        goto LABEL_127;
      }

      if (v35)
      {
        v90 = v7;
        while (1)
        {
          v40 = v36 - 1;
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v41 = *(v230 + 4);
            v42 = *(v230 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_69:
            if (v44)
            {
              goto LABEL_110;
            }

            v57 = &v230[16 * v36];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_113;
            }

            v63 = &v38[16 * v40];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_117;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v36 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          v67 = &v230[16 * v36];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_83:
          if (v62)
          {
            goto LABEL_112;
          }

          v70 = &v38[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_115;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_90:
          if (v40 - 1 >= v36)
          {
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
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v92)
          {
            goto LABEL_125;
          }

          v78 = &v38[16 * v40 - 16];
          v79 = *v78;
          v80 = v38;
          v81 = v40;
          v82 = &v38[16 * v40];
          v83 = *(v82 + 1);
          v84 = *v92 + 952 * *v78;

          sub_242C9BBC8(v84);

          if (v93)
          {
            v229 = v230;
            goto LABEL_102;
          }

          if (v83 < v79)
          {
            goto LABEL_105;
          }

          v85 = *(v230 + 2);
          if (v81 > v85)
          {
            goto LABEL_106;
          }

          *v78 = v79;
          *(v78 + 1) = v83;
          if (v81 >= v85)
          {
            goto LABEL_107;
          }

          v93 = 0;
          v36 = v85 - 1;
          memmove(v82, v82 + 16, 16 * (v85 - 1 - v81));
          *(v230 + 2) = v85 - 1;
          v7 = v90;
          v38 = v80;
          if (v85 <= 2)
          {
LABEL_3:
            v229 = v230;
            v3 = v88;
            goto LABEL_4;
          }
        }

        v45 = &v38[16 * v36];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_108;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_109;
        }

        v52 = &v230[16 * v36];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_111;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v56 >= v48)
        {
          v74 = &v38[16 * v40];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_118;
          }

          if (v43 < v77)
          {
            v40 = v36 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_69;
      }

LABEL_4:
      v5 = v92[1];
      v6 = v89;
      if (v7 >= v5)
      {
        goto LABEL_100;
      }
    }
  }

  swift_retain_n();
LABEL_100:
  v86 = *v3;
  if (!*v3)
  {
    goto LABEL_128;
  }

  sub_242C9C0B8(&v229, v86, v92);

LABEL_102:
}

uint64_t sub_242C9D170(uint64_t a1)
{
  result = MEMORY[0x28223BE20](a1);
  if (v3 != v2)
  {
    v5 = v3;
    v6 = v2;
    v7 = *v4;
    v8 = *v4 + 952 * v3 - 952;
    v9 = result - v3 + 1;
LABEL_6:
    v10 = v9;
    for (i = v8; ; i -= 952)
    {
      memcpy(v20, (i + 952), sizeof(v20));
      memcpy(v21, i, 0x3B8uLL);
      memcpy(v19, v20, sizeof(v19));
      memcpy(v18, v21, sizeof(v18));
      sub_242C9D5C8(v20, v16);
      sub_242C9D5C8(v21, v16);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v17[0] == __src[0] && v17[1] == __src[1])
      {
        memcpy(v13, __src, sizeof(v13));
        sub_242C7C7BC(v13);
        memcpy(__dst, v17, sizeof(__dst));
        sub_242C7C7BC(__dst);
        sub_242C9D68C(v21);
        result = sub_242C9D68C(v20);
LABEL_5:
        ++v5;
        v8 += 952;
        --v9;
        if (v5 == v6)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_242F06110();
      memcpy(v13, __src, sizeof(v13));
      sub_242C7C7BC(v13);
      memcpy(__dst, v17, sizeof(__dst));
      sub_242C7C7BC(__dst);
      sub_242C9D68C(v21);
      result = sub_242C9D68C(v20);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      memcpy(v16, (i + 952), sizeof(v16));
      memcpy((i + 952), i, 0x3B8uLL);
      result = memcpy(i, v16, 0x3B8uLL);
      if (!v10)
      {
        goto LABEL_5;
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C9D3CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_retain_n();
  result = sub_242F05F50();
  if (result < v1)
  {
    if (v1 >= -1)
    {
      v3 = v1 / 2;
      if (v1 <= 1)
      {
        v4 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70);
        v4 = sub_242F05360();
        *(v4 + 16) = v3;
      }

      v5[0] = v4 + 32;
      v5[1] = v3;

      sub_242C9C264(v5);

      *(v4 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {

    sub_242C9D170(0);
  }
}

uint64_t sub_242C9D524(void **a1)
{
  v2 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_242D9D16C(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;

  sub_242C9D3CC(v5);

  *a1 = v2;
}