uint64_t IntentCacheUsePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t DispatchConfiguration.withCacheKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB36FE48(v2, a2);

  return sub_1DB36FE80(a1, a2);
}

uint64_t sub_1DB36FE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43588, &qword_1DB511CF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s7JetCore21DispatchConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    sub_1DB30C4B8(a1, v8, &qword_1ECC43588, &qword_1DB511CF0);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43C88, &unk_1DB513168);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
      }
    }

    else
    {
      sub_1DB30623C(v8, &qword_1ECC43588, &qword_1DB511CF0);
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
    }

    sub_1DB30C4B8(a2, v8, &qword_1ECC43588, &qword_1DB511CF0);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43C88, &unk_1DB513168);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }
    }

    else
    {
      sub_1DB30623C(v8, &qword_1ECC43588, &qword_1DB511CF0);
      v13 = 0u;
      v14 = 0u;
      v15 = 0;
    }

    sub_1DB30C4B8(&v16, v8, &qword_1ECC43C78, &qword_1DB513158);
    sub_1DB30C4B8(&v13, &v10, &qword_1ECC43C78, &qword_1DB513158);
    if (v9)
    {
      sub_1DB30C4B8(v8, v7, &qword_1ECC43C78, &qword_1DB513158);
      if (*(&v11 + 1))
      {
        v5[0] = v10;
        v5[1] = v11;
        v6 = v12;
        v2 = MEMORY[0x1E1286770](v7, v5);
        sub_1DB314BE8(v5);
        sub_1DB314BE8(v7);
        sub_1DB30623C(v8, &qword_1ECC43C78, &qword_1DB513158);
LABEL_18:
        sub_1DB30623C(&v13, &qword_1ECC43C78, &qword_1DB513158);
        sub_1DB30623C(&v16, &qword_1ECC43C78, &qword_1DB513158);
        return v2 & 1;
      }

      sub_1DB314BE8(v7);
    }

    else if (!*(&v11 + 1))
    {
      sub_1DB30623C(v8, &qword_1ECC43C78, &qword_1DB513158);
      v2 = 1;
      goto LABEL_18;
    }

    sub_1DB30623C(v8, &qword_1ECC43C80, &qword_1DB513160);
    v2 = 0;
    goto LABEL_18;
  }

  v2 = 0;
  return v2 & 1;
}

unint64_t sub_1DB370188()
{
  result = qword_1ECC43BF0[0];
  if (!qword_1ECC43BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC43BF0);
  }

  return result;
}

uint64_t dispatch thunk of IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1DB306AF4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1DB30C7A0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 24);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1DB30C7A0;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v17 = *(a8 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1DB30C7A0;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DB370774()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_SH_s8SendablepSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3707E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB37083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB3708CC(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1DB34138C(0, v4, 0);
  v5 = v14;
  a1(__src, a3 + 32);
  if (!v3)
  {
    for (i = a3 + 72; ; i += 40)
    {
      memcpy(__dst, __src, sizeof(__dst));
      v14 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1DB34138C((v9 > 1), v10 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v10 + 1;
      memcpy((v5 + 344 * v10 + 32), __dst, 0x158uLL);
      if (!--v4)
      {
        break;
      }

      a1(__src, i);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1DB370A18(uint64_t a1)
{
  v3 = sub_1DB509DD0();
  v210 = *(v3 - 8);
  v211 = v3;
  v4 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  LODWORD(v189) = *(v1 + 40);
  v11 = *(v1 + 48);
  v190 = *(v1 + 56);
  v12 = *(v1 + 64);
  v191 = *(v1 + 72);
  v192 = *(v1 + 73);
  v13 = *(v1 + 80);
  v193 = *(v1 + 88);
  v14 = *(v1 + 96);
  v194 = *(v1 + 104);
  v182[1] = *(v1 + 112);
  v195 = *(v1 + 120);
  v182[2] = *(v1 + 128);
  v196 = *(v1 + 136);
  v182[3] = *(v1 + 144);
  v197 = *(v1 + 152);
  v182[4] = *(v1 + 160);
  v198 = *(v1 + 168);
  v182[5] = *(v1 + 176);
  v199 = *(v1 + 184);
  v182[6] = *(v1 + 192);
  v200 = *(v1 + 200);
  v15 = *(v1 + 208);
  v201 = *(v1 + 216);
  v16 = *(v1 + 224);
  v202 = *(v1 + 232);
  v203 = *(v1 + 233);
  v183 = *(v1 + 240);
  v204 = *(v1 + 248);
  v184 = *(v1 + 256);
  v205 = *(v1 + 264);
  v17 = *(v1 + 280);
  v185 = *(v1 + 272);
  v208 = v17;
  v18 = *(v1 + 296);
  v186 = *(v1 + 288);
  v209 = v18;
  v19 = *(v1 + 312);
  v187 = *(v1 + 304);
  v188 = v19;
  v206 = *(v1 + 320);
  v20 = *(v1 + 328);
  v207 = *(v1 + 336);
  if (v7)
  {
    v21 = a1;
    v22 = v8;
    v23 = v20;
    v24 = *v1;
    if (qword_1ECC421C8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67B60;
    v215 = byte_1ECC67B70;
    v216 = qword_1ECC67B78;
    v217 = byte_1ECC67B80;
    v25 = (v21 + *(type metadata accessor for PageRenderEvent() + 24));
    v26 = *v25;
    v27 = v25[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v24, v7, v26, v27, &v212);
    v20 = v23;
    v8 = v22;
    a1 = v21;
  }

  if (v9)
  {
    if (qword_1ECC421D0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67B88;
    v215 = byte_1ECC67B98;
    v216 = qword_1ECC67BA0;
    v217 = byte_1ECC67BA8;
    v28 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v29 = *v28;
    v30 = v28[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v8, v9, v29, v30, &v212);
  }

  v31 = v188;
  if ((v189 & 1) == 0)
  {
    v189 = v11;
    sub_1DB509D80();
    sub_1DB509D20();
    v33 = v32;
    v34 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v35 = *v34;
    v36 = v34[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v33 + v36 / *&qword_1EE30ED50 + v35);
    (*(v210 + 8))(v6, v211);
    v37 = v214;
    if (qword_1ECC42168 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67980;
    v215 = byte_1ECC67990;
    v216 = qword_1ECC67998;
    v217 = byte_1ECC679A0;
    v38 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v39 = *v38;
    v40 = v38[1];
    v213 = v37;
    PageRenderField<>.callAsFunction(for:at:)(v39, v40, &v213);
  }

  if ((v190 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v42 = v41;
    v43 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v44 = *v43;
    v45 = v43[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v42 + v45 / *&qword_1EE30ED50 + v44);
    (*(v210 + 8))(v6, v211);
    v46 = v214;
    if (qword_1ECC42188 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A20;
    v215 = byte_1ECC67A30;
    v216 = qword_1ECC67A38;
    v217 = byte_1ECC67A40;
    v47 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v48 = *v47;
    v49 = v47[1];
    v213 = v46;
    PageRenderField<>.startTime(for:at:)(v48, v49, &v213);
  }

  if ((v191 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v51 = v50;
    v52 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v53 = *v52;
    v54 = v52[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v51 + v54 / *&qword_1EE30ED50 + v53);
    (*(v210 + 8))(v6, v211);
    v55 = v214;
    if (qword_1ECC42188 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A20;
    v215 = byte_1ECC67A30;
    v216 = qword_1ECC67A38;
    v217 = byte_1ECC67A40;
    v56 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v57 = *v56;
    v58 = v56[1];
    v213 = v55;
    PageRenderField<>.endTime(for:at:)(v57, v58, &v213);
  }

  v59 = v192;
  if (v192 != 2)
  {
    if (qword_1ECC421B0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67AE8;
    v215 = byte_1ECC67AF8;
    v216 = qword_1ECC67B00;
    v217 = byte_1ECC67B08;
    v60 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v61 = *v60;
    v62 = v60[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v59 & 1, v61, v62, &v212);
  }

  if ((v193 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v64 = v63;
    v65 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v66 = *v65;
    v67 = v65[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v64 + v67 / *&qword_1EE30ED50 + v66);
    (*(v210 + 8))(v6, v211);
    v68 = v214;
    if (qword_1ECC42190 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A48;
    v215 = byte_1ECC67A58;
    v216 = qword_1ECC67A60;
    v217 = byte_1ECC67A68;
    v69 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v70 = *v69;
    v71 = v69[1];
    v213 = v68;
    PageRenderField<>.startTime(for:at:)(v70, v71, &v213);
  }

  if ((v194 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v73 = v72;
    v74 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v75 = *v74;
    v76 = v74[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v73 + v76 / *&qword_1EE30ED50 + v75);
    (*(v210 + 8))(v6, v211);
    v77 = v214;
    if (qword_1ECC42190 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A48;
    v215 = byte_1ECC67A58;
    v216 = qword_1ECC67A60;
    v217 = byte_1ECC67A68;
    v78 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v79 = *v78;
    v80 = v78[1];
    v213 = v77;
    PageRenderField<>.endTime(for:at:)(v79, v80, &v213);
  }

  if ((v195 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v82 = v81;
    v83 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v84 = *v83;
    v85 = v83[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v82 + v85 / *&qword_1EE30ED50 + v84);
    (*(v210 + 8))(v6, v211);
    v86 = v214;
    if (qword_1ECC42198 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A70;
    v215 = byte_1ECC67A80;
    v216 = qword_1ECC67A88;
    v217 = byte_1ECC67A90;
    v87 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v88 = *v87;
    v89 = v87[1];
    v213 = v86;
    PageRenderField<>.startTime(for:at:)(v88, v89, &v213);
  }

  if ((v196 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v91 = v90;
    v92 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v93 = *v92;
    v94 = v92[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v91 + v94 / *&qword_1EE30ED50 + v93);
    (*(v210 + 8))(v6, v211);
    v95 = v214;
    if (qword_1ECC42198 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A70;
    v215 = byte_1ECC67A80;
    v216 = qword_1ECC67A88;
    v217 = byte_1ECC67A90;
    v96 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v97 = *v96;
    v98 = v96[1];
    v213 = v95;
    PageRenderField<>.endTime(for:at:)(v97, v98, &v213);
  }

  if ((v197 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v100 = v99;
    v101 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v102 = *v101;
    v103 = v101[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v100 + v103 / *&qword_1EE30ED50 + v102);
    (*(v210 + 8))(v6, v211);
    v104 = v214;
    if (qword_1ECC421A0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A98;
    v215 = byte_1ECC67AA8;
    v216 = qword_1ECC67AB0;
    v217 = byte_1ECC67AB8;
    v105 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v106 = *v105;
    v107 = v105[1];
    v213 = v104;
    PageRenderField<>.startTime(for:at:)(v106, v107, &v213);
  }

  if ((v198 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v109 = v108;
    v110 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v111 = *v110;
    v112 = v110[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v109 + v112 / *&qword_1EE30ED50 + v111);
    (*(v210 + 8))(v6, v211);
    v113 = v214;
    if (qword_1ECC421A0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67A98;
    v215 = byte_1ECC67AA8;
    v216 = qword_1ECC67AB0;
    v217 = byte_1ECC67AB8;
    v114 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v115 = *v114;
    v116 = v114[1];
    v213 = v113;
    PageRenderField<>.endTime(for:at:)(v115, v116, &v213);
  }

  if ((v199 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v118 = v117;
    v119 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v120 = *v119;
    v121 = v119[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v118 + v121 / *&qword_1EE30ED50 + v120);
    (*(v210 + 8))(v6, v211);
    v122 = v214;
    if (qword_1ECC421A8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67AC0;
    v215 = byte_1ECC67AD0;
    v216 = qword_1ECC67AD8;
    v217 = byte_1ECC67AE0;
    v123 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v124 = *v123;
    v125 = v123[1];
    v213 = v122;
    PageRenderField<>.startTime(for:at:)(v124, v125, &v213);
  }

  if ((v200 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v127 = v126;
    v128 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v129 = *v128;
    v130 = v128[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v127 + v130 / *&qword_1EE30ED50 + v129);
    (*(v210 + 8))(v6, v211);
    v131 = v214;
    if (qword_1ECC421A8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67AC0;
    v215 = byte_1ECC67AD0;
    v216 = qword_1ECC67AD8;
    v217 = byte_1ECC67AE0;
    v132 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v133 = *v132;
    v134 = v132[1];
    v213 = v131;
    PageRenderField<>.endTime(for:at:)(v133, v134, &v213);
  }

  if ((v201 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v136 = v135;
    v137 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v138 = *v137;
    v139 = v137[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v136 + v139 / *&qword_1EE30ED50 + v138);
    (*(v210 + 8))(v6, v211);
    v140 = v214;
    if (qword_1ECC42170 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC679A8;
    v215 = byte_1ECC679B8;
    v216 = qword_1ECC679C0;
    v217 = byte_1ECC679C8;
    v141 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v142 = *v141;
    v143 = v141[1];
    v213 = v140;
    PageRenderField<>.callAsFunction(for:at:)(v142, v143, &v213);
  }

  if ((v202 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v145 = v144;
    v146 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v147 = *v146;
    v148 = v146[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v145 + v148 / *&qword_1EE30ED50 + v147);
    (*(v210 + 8))(v6, v211);
    v149 = v214;
    if (qword_1ECC42178 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC679D0;
    v215 = byte_1ECC679E0;
    v216 = qword_1ECC679E8;
    v217 = byte_1ECC679F0;
    v150 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v151 = *v150;
    v152 = v150[1];
    v213 = v149;
    PageRenderField<>.callAsFunction(for:at:)(v151, v152, &v213);
  }

  v153 = v203;
  v154 = v207;
  if (v203 != 2)
  {
    if (qword_1ECC421B8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67B10;
    v215 = byte_1ECC67B20;
    v216 = qword_1ECC67B28;
    v217 = byte_1ECC67B30;
    v155 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v156 = *v155;
    v157 = v155[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v153 & 1, v156, v157, &v212);
  }

  if ((v204 & 1) == 0)
  {
    if (qword_1ECC421F8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67C50;
    v215 = byte_1ECC67C60;
    v216 = qword_1ECC67C68;
    v217 = byte_1ECC67C70;
    v158 = v183;
    v159 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v160 = *v159;
    v161 = v159[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v160, v161, &v212, v158);
  }

  if ((v205 & 1) == 0)
  {
    if (qword_1ECC42200 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67C78;
    v215 = byte_1ECC67C88;
    v216 = qword_1ECC67C90;
    v217 = byte_1ECC67C98;
    v162 = v184;
    v163 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v164 = *v163;
    v165 = v163[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v164, v165, &v212, v162);
  }

  if (v208)
  {
    if (qword_1ECC421D8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67BB0;
    v215 = byte_1ECC67BC0;
    v216 = qword_1ECC67BC8;
    v217 = byte_1ECC67BD0;
    v166 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v167 = *v166;
    v168 = v166[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v185, v208, v167, v168, &v212);
  }

  if (v209)
  {
    if (qword_1ECC421E0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67BD8;
    v215 = byte_1ECC67BE8;
    v216 = qword_1ECC67BF0;
    v217 = byte_1ECC67BF8;
    v169 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v170 = *v169;
    v171 = v169[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v186, v209, v170, v171, &v212);
  }

  if (v31)
  {
    if (qword_1ECC421E8 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67C00;
    v215 = byte_1ECC67C10;
    v216 = qword_1ECC67C18;
    v217 = byte_1ECC67C20;
    v172 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v173 = *v172;
    v174 = v172[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v187, v31, v173, v174, &v212);
  }

  v175 = v206;
  if (v206 != 2)
  {
    if (qword_1ECC421C0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67B38;
    v215 = byte_1ECC67B48;
    v216 = qword_1ECC67B50;
    v217 = byte_1ECC67B58;
    v176 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v177 = *v176;
    v178 = v176[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v175 & 1, v177, v178, &v212);
  }

  if (v154)
  {
    if (qword_1ECC421F0 != -1)
    {
      swift_once();
    }

    v214 = xmmword_1ECC67C28;
    v215 = byte_1ECC67C38;
    v216 = qword_1ECC67C40;
    v217 = byte_1ECC67C48;
    v179 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v180 = *v179;
    v181 = v179[1];
    static MonotonicTime.now.getter(&v213);
    v212 = v213;
    PageRenderField<>.callAsFunction(_:for:at:)(v20, v154, v180, v181, &v212);
  }
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:connectionStartTime:connectionEndTime:domainLookupStartTime:domainLookupEndTime:fetchStartTime:secureConnectionStartTime:connectionReused:requestMessageSize:responseMessageSize:statusCode:edgeNodeCacheStatus:environmentDataCenter:isLowDataMode:appleTimingApp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  *(a9 + 328) = a43;
  *(a9 + 336) = a44;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  return result;
}

uint64_t static JSNetworkPerformanceMetrics.metrics(fromJson:)()
{
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB52B700, v2);
  v0 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  return sub_1DB320C88(v2, v0);
}

uint64_t sub_1DB372B74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _BYTE *a10, _BYTE *a11)
{
  v156 = a8;
  v152 = a5;
  v153 = a7;
  v154 = a3;
  v155 = a6;
  v151 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = &v133[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v146 = &v133[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v133[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v142 = &v133[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v140 = &v133[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v133[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v133[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v141 = &v133[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v133[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v133[-v36];
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 8))(v38, v39);
  v150 = a4;
  v137 = v29;
  if (!v41)
  {
    v42 = a4[3];
    v43 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v42);
    v40 = (*(v43 + 8))(v42, v43);
  }

  v148 = v41;
  v149 = v40;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  (*(v45 + 16))(v44, v45);
  v46 = sub_1DB509DD0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  v49 = v48(v37, 1, v46);
  v157 = v47;
  v158 = v48;
  if (v49 == 1)
  {
    sub_1DB30623C(v37, &qword_1ECC43838, &unk_1DB513310);
    v50 = a1[3];
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v50);
    (*(v51 + 24))(v50, v51);
    if (v48(v34, 1, v46) == 1)
    {
      sub_1DB30623C(v34, &qword_1ECC43838, &unk_1DB513310);
      v144 = 1;
      v145 = 0;
      goto LABEL_9;
    }

    sub_1DB509D90();
    v145 = v53;
    (*(v157 + 8))(v34, v46);
  }

  else
  {
    sub_1DB509D90();
    v145 = v52;
    (*(v47 + 8))(v37, v46);
  }

  v144 = 0;
LABEL_9:
  v54 = v141;
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  (*(v56 + 32))(v55, v56);
  v57 = v158;
  LODWORD(v141) = v158(v54, 1, v46);
  if (v141 == 1)
  {
    sub_1DB30623C(v54, &qword_1ECC43838, &unk_1DB513310);
    v58 = 0;
  }

  else
  {
    sub_1DB509D90();
    v58 = v59;
    (*(v157 + 8))(v54, v46);
  }

  v60 = v146;
  v61 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v61);
  v63 = v61;
  v64 = v137;
  (*(v62 + 40))(v63, v62);
  v139 = v57(v64, 1, v46);
  if (v139 == 1)
  {
    sub_1DB30623C(v64, &qword_1ECC43838, &unk_1DB513310);
    v65 = 0;
    v66 = v157;
  }

  else
  {
    sub_1DB509D90();
    v65 = v67;
    v66 = v157;
    (*(v157 + 8))(v64, v46);
  }

  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  LODWORD(v146) = (*(v69 + 88))(v68, v69);
  v70 = a1[3];
  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v70);
  v72 = v70;
  v73 = v138;
  (*(v71 + 48))(v72, v71);
  LODWORD(v137) = v158(v73, 1, v46);
  if (v137 == 1)
  {
    sub_1DB30623C(v73, &qword_1ECC43838, &unk_1DB513310);
    v74 = 0;
  }

  else
  {
    sub_1DB509D90();
    v74 = v75;
    (*(v66 + 8))(v73, v46);
  }

  v76 = a1[3];
  v77 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v76);
  v78 = v76;
  v79 = v140;
  (*(v77 + 56))(v78, v77);
  LODWORD(v138) = v158(v79, 1, v46);
  if (v138 == 1)
  {
    sub_1DB30623C(v79, &qword_1ECC43838, &unk_1DB513310);
    v80 = 0;
  }

  else
  {
    sub_1DB509D90();
    v80 = v81;
    (*(v66 + 8))(v79, v46);
  }

  v82 = a1[3];
  v83 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v82);
  v84 = v82;
  v85 = v142;
  (*(v83 + 64))(v84, v83);
  LODWORD(v140) = v158(v85, 1, v46);
  if (v140 == 1)
  {
    sub_1DB30623C(v85, &qword_1ECC43838, &unk_1DB513310);
    v86 = 0;
  }

  else
  {
    sub_1DB509D90();
    v86 = v87;
    (*(v66 + 8))(v85, v46);
  }

  v88 = a1[3];
  v89 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v88);
  v90 = v88;
  v91 = v143;
  (*(v89 + 72))(v90, v89);
  v92 = v158(v91, 1, v46);
  if (v92 == 1)
  {
    sub_1DB30623C(v91, &qword_1ECC43838, &unk_1DB513310);
    v93 = 0;
  }

  else
  {
    sub_1DB509D90();
    v93 = v94;
    (*(v157 + 8))(v91, v46);
  }

  v95 = a1[3];
  v96 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v95);
  (*(v96 + 24))(v95, v96);
  v97 = v158(v60, 1, v46);
  if (v97 == 1)
  {
    sub_1DB30623C(v60, &qword_1ECC43838, &unk_1DB513310);
    v98 = 0;
  }

  else
  {
    sub_1DB509D90();
    v98 = v99;
    (*(v157 + 8))(v60, v46);
  }

  v143 = a11;
  v142 = a10;
  v100 = a1[3];
  v101 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v100);
  v102 = *(v101 + 80);
  v103 = v101;
  v104 = v147;
  v102(v100, v103);
  v105 = v158(v104, 1, v46);
  if (v105 == 1)
  {
    sub_1DB30623C(v104, &qword_1ECC43838, &unk_1DB513310);
    v106 = 0;
  }

  else
  {
    sub_1DB509D90();
    v106 = v107;
    (*(v157 + 8))(v104, v46);
  }

  LODWORD(v158) = v105 == 1;
  LODWORD(v157) = v97 == 1;
  LODWORD(v147) = v92 == 1;
  LODWORD(v140) = v140 == 1;
  LODWORD(v138) = v138 == 1;
  LODWORD(v137) = v137 == 1;
  v139 = v139 == 1;
  v136 = v141 == 1;
  v108 = a1[3];
  v109 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v108);
  LODWORD(v141) = (*(v109 + 96))(v108, v109);
  v110 = a1[3];
  v111 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v110);
  v135 = (*(v111 + 112))(v110, v111);
  v134 = v112;
  v113 = a1[3];
  v114 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v113);
  v115 = (*(v114 + 120))(v113, v114);
  v117 = v116;
  v118 = v150[3];
  v119 = v150[4];
  __swift_project_boxed_opaque_existential_1(v150, v118);
  v159 = (*(v119 + 32))(v118, v119);
  v120 = sub_1DB50B8F0();
  v122 = v121;
  v123 = a1[3];
  v124 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v123);
  v125 = (*(v124 + 104))(v123, v124);
  v126 = v154;
  *a9 = v151;
  *(a9 + 8) = v126;
  v127 = v148;
  *(a9 + 16) = v149;
  *(a9 + 24) = v127;
  *(a9 + 32) = v145;
  *(a9 + 40) = v144;
  *(a9 + 48) = v58;
  *(a9 + 56) = v136;
  *(a9 + 64) = v65;
  *(a9 + 72) = v139;
  *(a9 + 73) = v146;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *(a9 + 96) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = v74;
  *(a9 + 152) = v137;
  *(a9 + 160) = v80;
  *(a9 + 168) = v138;
  *(a9 + 176) = v86;
  *(a9 + 184) = v140;
  *(a9 + 192) = v93;
  *(a9 + 200) = v147;
  *(a9 + 208) = v98;
  *(a9 + 216) = v157;
  *(a9 + 224) = v106;
  *(a9 + 232) = v158;
  *(a9 + 233) = v141;
  *(a9 + 240) = v135;
  *(a9 + 248) = v134 & 1;
  *(a9 + 256) = v115;
  *(a9 + 264) = v117 & 1;
  *(a9 + 272) = v120;
  *(a9 + 280) = v122;
  v128 = v153;
  v129 = v155;
  v130 = v156;
  *(a9 + 288) = v152;
  *(a9 + 296) = v129;
  *(a9 + 304) = v128;
  *(a9 + 312) = v130;
  *(a9 + 320) = v125;
  v131 = v143;
  *(a9 + 328) = v142;
  *(a9 + 336) = v131;
}

uint64_t JSNetworkPerformanceMetrics.clientCorrelationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.clientCorrelationKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.pageURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.pageURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestStartTime.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseStartTime.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseEndTime.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseStartTime.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseEndTime.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionStartTime.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionEndTime.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionStartTime.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionEndTime.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupStartTime.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupEndTime.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.fetchStartTime.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.fetchStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.secureConnectionStartTime.getter()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.secureConnectionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestMessageSize.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestMessageSize.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseMessageSize.getter()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseMessageSize.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.statusCode.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.statusCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 280);

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.edgeNodeCacheStatus.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.edgeNodeCacheStatus.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 296);

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.environmentDataCenter.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.environmentDataCenter.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 312);

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.appleTimingApp.getter()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.appleTimingApp.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 336);

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.instrumentModelParsing<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  sub_1DB509D90();
  v9 = v8;
  v10 = *(v4 + 8);
  v11 = v10(v7, v3);
  *(v1 + 80) = v9;
  *(v1 + 88) = 0;
  v12 = v16[1];
  result = a1(v11);
  if (!v12)
  {
    _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
    sub_1DB509D90();
    v15 = v14;
    result = v10(v7, v3);
    *(v1 + 96) = v15;
    *(v1 + 104) = 0;
  }

  return result;
}

void *JSNetworkPerformanceMetrics.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DB3171C0(a1, v6);
  v5 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  JSNetworkPerformanceMetrics.init(deserializing:using:)(__src, v6, &v5);
  sub_1DB3151CC(a1);
  return memcpy(a2, __src, 0x158uLL);
}

double JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v30[0] = a6 & 1;
  v29[0] = a8 & 1;
  v28[0] = a11 & 1;
  v27[0] = a14 & 1;
  v26[0] = a16 & 1;
  v25[0] = 1;
  v24[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v19[0] = 1;
  v18[0] = 1;
  v17[0] = 1;
  LOBYTE(v31) = 1;
  LOBYTE(v20) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v31;
  *(a9 + 78) = v32;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v30[3];
  *(a9 + 89) = *v30;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v29[3];
  *(a9 + 105) = *v29;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = *&v28[3];
  *(a9 + 121) = *v28;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 140) = *&v27[3];
  *(a9 + 137) = *v27;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 156) = *&v26[3];
  *(a9 + 153) = *v26;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 172) = *&v25[3];
  *(a9 + 169) = *v25;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 188) = *&v24[3];
  *(a9 + 185) = *v24;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 204) = *&v23[3];
  *(a9 + 201) = *v23;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 220) = *&v22[3];
  *(a9 + 217) = *v22;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 233) = 2;
  *(a9 + 238) = v21;
  *(a9 + 234) = v20;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 252) = *&v19[3];
  *(a9 + 249) = *v19;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 268) = *&v18[3];
  *(a9 + 265) = *v18;
  result = 0.0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 320) = 2;
  *(a9 + 324) = *&v17[3];
  *(a9 + 321) = *v17;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

double JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v34[0] = a6 & 1;
  v33[0] = a8 & 1;
  v32[0] = a11 & 1;
  v31[0] = a14 & 1;
  v30[0] = a16 & 1;
  v29[0] = a18 & 1;
  v28[0] = a20 & 1;
  v27[0] = 1;
  v26[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v21[0] = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v24) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v35;
  *(a9 + 78) = v36;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v34[3];
  *(a9 + 89) = *v34;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v33[3];
  *(a9 + 105) = *v33;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v32[3];
  *(a9 + 121) = *v32;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v31[3];
  *(a9 + 137) = *v31;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 156) = *&v30[3];
  *(a9 + 153) = *v30;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 172) = *&v29[3];
  *(a9 + 169) = *v29;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 188) = *&v28[3];
  *(a9 + 185) = *v28;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 204) = *&v27[3];
  *(a9 + 201) = *v27;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 220) = *&v26[3];
  *(a9 + 217) = *v26;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 233) = 2;
  *(a9 + 238) = v25;
  *(a9 + 234) = v24;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 252) = *&v23[3];
  *(a9 + 249) = *v23;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 268) = *&v22[3];
  *(a9 + 265) = *v22;
  result = 0.0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 320) = 2;
  *(a9 + 324) = *&v21[3];
  *(a9 + 321) = *v21;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:primaryDataConnectionStartTime:primaryDataConnectionEndTime:primaryDataDomainLookupStartTime:primaryDataDomainLookupEndTime:primaryDataFetchStartTime:primaryDataSecureConnectionStartTime:primaryDataConnectionReused:primaryDataRequestMessageSize:primaryDataResponseMessageSize:primaryDataStatusCode:primaryDataEdgeNodeCacheStatus:primaryDataEnvironmentDataCenter:isLowDataMode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42)
{
  v55[0] = a8 & 1;
  v54[0] = a11 & 1;
  v53[0] = a14 & 1;
  v52[0] = a16 & 1;
  v51[0] = a18 & 1;
  v50[0] = a20 & 1;
  v49[0] = a22 & 1;
  v48[0] = a24 & 1;
  v45[0] = a26 & 1;
  v44[0] = a28 & 1;
  v43[0] = a30 & 1;
  LOBYTE(v57) = a32 & 1;
  LOBYTE(v46) = a35 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v56[0] = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v57;
  *(a9 + 78) = v58;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v56[3];
  *(a9 + 89) = *v56;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v55[3];
  *(a9 + 105) = *v55;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v54[3];
  *(a9 + 121) = *v54;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v53[3];
  *(a9 + 137) = *v53;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 156) = *&v52[3];
  *(a9 + 153) = *v52;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 172) = *&v51[3];
  *(a9 + 169) = *v51;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 188) = *&v50[3];
  *(a9 + 185) = *v50;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 204) = *&v49[3];
  *(a9 + 201) = *v49;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 220) = *&v48[3];
  *(a9 + 217) = *v48;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 238) = v47;
  *(a9 + 234) = v46;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 252) = *&v45[3];
  *(a9 + 249) = *v45;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 268) = *&v44[3];
  *(a9 + 265) = *v44;
  *(a9 + 324) = *&v43[3];
  *(a9 + 321) = *v43;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:primaryDataConnectionStartTime:primaryDataConnectionEndTime:primaryDataDomainLookupStartTime:primaryDataDomainLookupEndTime:primaryDataFetchStartTime:primaryDataSecureConnectionStartTime:primaryDataConnectionReused:primaryDataRequestMessageSize:primaryDataResponseMessageSize:primaryDataStatusCode:primaryDataEdgeNodeCacheStatus:primaryDataEnvironmentDataCenter:isLowDataMode:primaryDataAppleTimingApp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  v57[0] = a8 & 1;
  v56[0] = a11 & 1;
  v55[0] = a14 & 1;
  v54[0] = a16 & 1;
  v53[0] = a18 & 1;
  v52[0] = a20 & 1;
  v51[0] = a22 & 1;
  v50[0] = a24 & 1;
  v47[0] = a26 & 1;
  v46[0] = a28 & 1;
  v45[0] = a30 & 1;
  LOBYTE(v59) = a32 & 1;
  LOBYTE(v48) = a35 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v58[0] = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v59;
  *(a9 + 78) = v60;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v58[3];
  *(a9 + 89) = *v58;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v57[3];
  *(a9 + 105) = *v57;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v56[3];
  *(a9 + 121) = *v56;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v55[3];
  *(a9 + 137) = *v55;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 156) = *&v54[3];
  *(a9 + 153) = *v54;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 172) = *&v53[3];
  *(a9 + 169) = *v53;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 188) = *&v52[3];
  *(a9 + 185) = *v52;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 204) = *&v51[3];
  *(a9 + 201) = *v51;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 220) = *&v50[3];
  *(a9 + 217) = *v50;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 238) = v49;
  *(a9 + 234) = v48;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 252) = *&v47[3];
  *(a9 + 249) = *v47;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 268) = *&v46[3];
  *(a9 + 265) = *v46;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  *(a9 + 324) = *&v45[3];
  *(a9 + 321) = *v45;
  *(a9 + 328) = a43;
  *(a9 + 336) = a44;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  return result;
}

uint64_t NSURLSessionTaskTransactionMetrics.urlString.getter()
{
  v1 = sub_1DB509860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v7 = *(*(v6 - 8) + 64);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v10 = &v16 - v9;
  v11 = [v0 request];
  sub_1DB509810();

  sub_1DB509830();
  (*(v2 + 8))(v5, v1);
  v12 = sub_1DB509CA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1DB30623C(v10, &unk_1ECC42B20, &unk_1DB50F6A0);
    return 0;
  }

  else
  {
    v15 = sub_1DB509B80();
    (*(v13 + 8))(v10, v12);
    return v15;
  }
}

char *sub_1DB374EEC(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v2 *a2];
  v6 = __OFADD__(v4, v5);
  result = &v5[v4];
  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB374FD0@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1DB509DB0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1DB509DD0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

char *sub_1DB37510C(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *v4;
  v7 = [v6 *a3];
  v8 = [v6 *a4];
  v9 = __OFADD__(v7, v8);
  result = &v8[v7];
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t AMSURLResult.clientCorrelationKey.getter()
{
  v1 = [v0 responseCorrelationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB50A650();

  return v3;
}

void *AMSURLResult.transactionMetrics.getter()
{
  v1 = [v0 taskMetrics];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transactionMetrics];

    sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
    v4 = sub_1DB50A9A0();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1DB375274(v4);

  return v5;
}

void *sub_1DB375274(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DB50B5E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1DB34134C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E1286880](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DB34134C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
        v16 = &protocol witness table for NSURLSessionTaskTransactionMetrics;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1DB2FEA0C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1DB34134C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
        v16 = &protocol witness table for NSURLSessionTaskTransactionMetrics;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1DB2FEA0C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB375454(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DB3413AC(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1DB3413AC((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for MetricsEventLinterDeResolutionRule;
      v15 = &off_1F56FE3C0;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v7;
      v11[5] = v8;
      *(v2 + 16) = v9 + 1;
      sub_1DB2FEA0C(&v13, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DB375580()
{
  v1 = [*v0 responseCorrelationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB50A650();

  return v3;
}

uint64_t sub_1DB3755E8()
{
  v1 = [*v0 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB50A4B0();

  return v3;
}

void *sub_1DB375668()
{
  v1 = [*v0 taskMetrics];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transactionMetrics];

    sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
    v4 = sub_1DB50A9A0();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1DB375274(v4);

  return v5;
}

uint64_t _s7JetCore27JSNetworkPerformanceMetricsV7metrics10fromResultSayACGSo12AMSURLResultC_tFZ_0(void *a1)
{
  v2 = sub_1DB509E00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DB336FD4(0, &qword_1ECC43C98, 0x1E698CB98);
  v62 = &protocol witness table for AMSURLResult;
  v60[0] = a1;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v7 = a1;
  v8 = sub_1DB375580();
  if (v9)
  {
    v10 = v9;
    v54 = v8;
    goto LABEL_14;
  }

  v11 = v61;
  v12 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v13 = (v12[3])(v11, v12);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v55 = 0xD00000000000001ELL;
  v56 = 0x80000001DB52B760;
  sub_1DB50B2B0();
  if (!*(v14 + 16) || (v15 = sub_1DB30EDA8(v57), (v16 & 1) == 0))
  {

    sub_1DB314BE8(v57);
LABEL_10:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_11;
  }

  sub_1DB300B14(*(v14 + 56) + 32 * v15, &v58);
  sub_1DB314BE8(v57);

  if (*(&v59 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_1DB30623C(&v58, &qword_1ECC426B0, &qword_1DB50EEB0);
LABEL_12:
  strcpy(v57, "no-load-url::");
  HIWORD(v57[1]) = -4864;
  sub_1DB509DF0();
  v17 = sub_1DB509DE0();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x1E1285C70](v17, v19);

LABEL_13:
  v10 = v57[1];
  v54 = v57[0];
LABEL_14:
  v20 = v61;
  v21 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v22 = (v21[3])(v20, v21);
  if (!v22)
  {
LABEL_24:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_25;
  }

  v23 = v22;
  *&v58 = 0x65686361632D78;
  *(&v58 + 1) = 0xE700000000000000;
  sub_1DB50B2B0();
  if (!*(v23 + 16) || (v24 = sub_1DB30EDA8(v57), (v25 & 1) == 0))
  {

    sub_1DB314BE8(v57);
    goto LABEL_24;
  }

  sub_1DB300B14(*(v23 + 56) + 32 * v24, &v58);
  sub_1DB314BE8(v57);

  if (!*(&v59 + 1))
  {
LABEL_25:
    sub_1DB30623C(&v58, &qword_1ECC426B0, &qword_1DB50EEB0);
    v53 = 0;
    v28 = 0;
    goto LABEL_26;
  }

  v26 = swift_dynamicCast();
  v27 = v57[0];
  if (!v26)
  {
    v27 = 0;
  }

  v53 = v27;
  if (v26)
  {
    v28 = v57[1];
  }

  else
  {
    v28 = 0;
  }

LABEL_26:
  v29 = v61;
  v30 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v31 = (v30[3])(v29, v30);
  if (!v31)
  {
LABEL_37:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_38;
  }

  v32 = v31;
  *&v58 = 0xD000000000000018;
  *(&v58 + 1) = 0x80000001DB52B740;
  sub_1DB50B2B0();
  if (!*(v32 + 16) || (v33 = sub_1DB30EDA8(v57), (v34 & 1) == 0))
  {

    sub_1DB314BE8(v57);
    goto LABEL_37;
  }

  sub_1DB300B14(*(v32 + 56) + 32 * v33, &v58);
  sub_1DB314BE8(v57);

  if (!*(&v59 + 1))
  {
LABEL_38:
    sub_1DB30623C(&v58, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36 = 0;
    v37 = 0;
    goto LABEL_39;
  }

  v35 = swift_dynamicCast();
  if (v35)
  {
    v36 = v57[0];
  }

  else
  {
    v36 = 0;
  }

  if (v35)
  {
    v37 = v57[1];
  }

  else
  {
    v37 = 0;
  }

LABEL_39:
  v38 = v61;
  v39 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v40 = (v39[3])(v38, v39);
  if (!v40)
  {
LABEL_50:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_51;
  }

  v41 = v40;
  *&v58 = 0xD000000000000010;
  *(&v58 + 1) = 0x80000001DB52B720;
  sub_1DB50B2B0();
  if (!*(v41 + 16) || (v42 = sub_1DB30EDA8(v57), (v43 & 1) == 0))
  {

    sub_1DB314BE8(v57);
    goto LABEL_50;
  }

  sub_1DB300B14(*(v41 + 56) + 32 * v42, &v58);
  sub_1DB314BE8(v57);

  if (!*(&v59 + 1))
  {
LABEL_51:
    sub_1DB30623C(&v58, &qword_1ECC426B0, &qword_1DB50EEB0);
    v45 = 0;
    v46 = 0;
    goto LABEL_52;
  }

  v44 = swift_dynamicCast();
  if (v44)
  {
    v45 = v57[0];
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = v57[1];
  }

  else
  {
    v46 = 0;
  }

LABEL_52:
  v47 = v61;
  v48 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v49 = (v48[5])(v47, v48);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v53;
  *(&v53 - 10) = v54;
  *(&v53 - 9) = v10;
  *(&v53 - 8) = v60;
  *(&v53 - 7) = v50;
  *(&v53 - 6) = v28;
  *(&v53 - 5) = v36;
  *(&v53 - 4) = v37;
  *(&v53 - 3) = v45;
  *(&v53 - 2) = v46;
  v51 = sub_1DB3708CC(sub_1DB3760B4, (&v53 - 12), v49);

  __swift_destroy_boxed_opaque_existential_0(v60);
  return v51;
}

uint64_t sub_1DB375DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 344))
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

uint64_t sub_1DB375E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 344) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 344) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DB376108()
{
  result = qword_1ECC43CA0;
  if (!qword_1ECC43CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43CA0);
  }

  return result;
}

uint64_t sub_1DB37617C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3761C4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB37620C()
{
  result = qword_1ECC43CA8;
  if (!qword_1ECC43CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43CA8);
  }

  return result;
}

uint64_t sub_1DB376278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CC0, &qword_1DB513518);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1DB30C200(&v46, v51);
    __swift_destroy_boxed_opaque_existential_0(&v48);
    sub_1DB300B14(v51, &v48);
    v8 = MEMORY[0x1E69E6370];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v51);
      return v46;
    }

    if (qword_1ECC42278 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC46730;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50F8D0;
    v45 = sub_1DB301BC0(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1DB301DBC(&v46);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1DB301DBC(&v46);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001DB52B780;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CC8, &unk_1DB513520);
    *&v46 = v8;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;
    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1DB301DBC(&v46);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v37 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1DB314CB0;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v40 = sub_1DB50A5E0();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1DB50EE90;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1DB31494C();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1DB50A1E0();
    }

    v10 = v51;
  }

  else
  {
    sub_1DB301DBC(&v46);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return 2;
}

uint64_t sub_1DB3768AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CB0, &qword_1DB513500);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1DB30C200(&v46, v51);
    __swift_destroy_boxed_opaque_existential_0(&v48);
    sub_1DB300B14(v51, &v48);
    v8 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v51);
      return v46;
    }

    if (qword_1ECC42278 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC46730;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50F8D0;
    v45 = sub_1DB301BC0(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1DB301DBC(&v46);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1DB301DBC(&v46);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001DB52B780;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CB8, &unk_1DB513508);
    *&v46 = v8;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;
    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1DB301DBC(&v46);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v37 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1DB31485C;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v40 = sub_1DB50A5E0();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1DB50EE90;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1DB31494C();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1DB50A1E0();
    }

    v10 = v51;
  }

  else
  {
    sub_1DB301DBC(&v46);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return 0;
}

uint64_t sub_1DB376EE8()
{
  if (qword_1EE30D148 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30D150;
  v0 = unk_1EE30D158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0xD00000000000001ALL;
  *(v2 + 56) = 0x80000001DB52B7A0;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1EE30CA90 = v3;
  *algn_1EE30CA98 = v5;
}

uint64_t sub_1DB37701C()
{
  if (qword_1EE30CA88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30CA90;
  v0 = *algn_1EE30CA98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  strcpy((v2 + 48), "isAllowedStub");
  *(v2 + 62) = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1EE30CA78 = v3;
  unk_1EE30CA80 = v5;
  return result;
}

uint64_t static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_12:
    v2 = [objc_opt_self() diagnosticsSubmissionAllowed];
    return v2 & 1;
  }

  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  if (qword_1EE30CA70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DB376278(qword_1EE30CA78, unk_1EE30CA80);
  if (v2 == 2)
  {
    goto LABEL_12;
  }

  return v2 & 1;
}

uint64_t getEnumTagSinglePayload for MetricsDiagnosticsAndUsage(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t JetPackDataStreamSource.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for JetPackDataStreamSource() + 24);
  v7 = sub_1DB509CA0();
  result = (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  return result;
}

uint64_t type metadata accessor for JetPackDataStreamSource()
{
  result = qword_1EE30DF10;
  if (!qword_1EE30DF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JetPackDataStreamSource.init(data:dataSourceURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for JetPackDataStreamSource();
  a4[2] = 0;
  a4[3] = 0;
  v7 = a4 + *(v6 + 24);

  return sub_1DB34BBCC(a3, v7);
}

uint64_t JetPackDataStreamSource.makeStream()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v4 = sub_1DB509CD0();
  v5 = [v3 initWithData_];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = v5;
  *(v6 + 32) = 1;
  return v6;
}

uint64_t sub_1DB377500()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v4 = sub_1DB509CD0();
  v5 = [v3 initWithData_];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = v5;
  *(v6 + 32) = 1;
  return v6;
}

uint64_t sub_1DB3775BC(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v6 = v3;
    v7 = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB37795C(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t sub_1DB37768C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v5[2] = v3;
    v5[3] = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB377940(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

void sub_1DB377794()
{
  sub_1DB377828();
  if (v0 <= 0x3F)
  {
    sub_1DB377878();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB377828()
{
  if (!qword_1EE30C860)
  {
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30C860);
    }
  }
}

void sub_1DB377878()
{
  if (!qword_1EE30E280)
  {
    sub_1DB509CA0();
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30E280);
    }
  }
}

uint64_t sub_1DB3778D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenIntentModel.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC8];
  v6 = type metadata accessor for OpenIntentModel();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t OpenIntentModel.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v2 + *(v9 + 36), v3, v6);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v8, v3);
}

uint64_t OpenIntentModel<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v17[0] = *(a2 - 8);
  v17[1] = a4;
  v10 = *(v17[0] + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v14;
  v13 = v20;

  sub_1DB30F708(0xD000000000000027, 0x80000001DB529830, v18);
  sub_1DB301DBC(v18);
  sub_1DB3171C0(a1, v18);
  ScalarDictionary.init(tryDeserializing:using:)(v18, &v20, &v19);
  *a5 = v19;
  sub_1DB3171C0(a1, v18);
  v19 = v13;
  (*(a3 + 8))(v18, &v19, a2, a3);
  sub_1DB3151CC(a1);
  if (v5)
  {
  }

  v16 = type metadata accessor for OpenIntentModel();
  return (*(v17[0] + 32))(&a5[*(v16 + 36)], v12, a2);
}

uint64_t OpenIntentModel<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a3;
  v25 = a4;
  v24 = *(a2 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpenIntentModel();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v22 - v11);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v14);
  sub_1DB30F708(0xD000000000000027, 0x80000001DB529830, v30);
  sub_1DB301DBC(v30);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v31);
  Decoder.withUserInfo(_:)(v17, v15, v16, v30);

  sub_1DB30BE90(v30, v29);
  sub_1DB30BE90(v29, v28);
  v18 = sub_1DB3407C4(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *v12 = v18;
  sub_1DB30BE90(v30, v29);
  v19 = v26;
  sub_1DB50ADB0();
  __swift_destroy_boxed_opaque_existential_0(v30);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    (*(v24 + 32))(v12 + *(v9 + 36), v8, a2);
    v21 = v23;
    (*(v23 + 16))(v25, v12, v9);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v21 + 8))(v12, v9);
  }
}

uint64_t OpenIntentModel<>.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 36);
  v6 = *(a2 + 16);
  result = sub_1DB50A5B0();
  if (!v3)
  {
    v8 = *v2;

    sub_1DB340EF4(a1, v8);
  }

  return result;
}

uint64_t sub_1DB378088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 24);
  return OpenIntentModel<>.init(from:)(a1, *(a2 + 16), v4, a4);
}

uint64_t _OpaqueIntentModelBody.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  sub_1DB3171C0(a1, v17);
  v16 = v6;
  ScalarDictionary.init(deserializing:using:)(v17, &v16, &v18);
  if (!v3)
  {
    v7 = v18;
    if (*(v18 + 16))
    {
      v8 = sub_1DB306160(0x646E696B24, 0xE500000000000000);
      if (v9)
      {
        v10 = *(v7 + 56) + 24 * v8;
        if (*(v10 + 16) == 3)
        {
          v12 = *v10;
          v11 = *(v10 + 8);

          sub_1DB3151CC(a1);

          *a3 = v12;
          a3[1] = v11;
          return result;
        }
      }
    }

    v14 = type metadata accessor for _OpaqueIntentModelBody() | 0x2000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v15 = xmmword_1DB50F500;
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  return sub_1DB3151CC(a1);
}

uint64_t _OpaqueIntentModelBody.kind.getter()
{
  v0 = sub_1DB35F5B4();

  return v0;
}

uint64_t sub_1DB378234(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB50BA30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DB3782AC()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3782F0()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB378340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DB378234(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DB378374@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DB34AABC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB3783A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3783F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB37844C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  return _OpaqueIntentModelBody.init(deserializing:using:)(a1, a2, a4);
}

uint64_t _OpaqueIntentModelBody<>.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v5);
  sub_1DB30F708(0xD000000000000027, 0x80000001DB529830, &v22);
  sub_1DB301DBC(&v22);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v24);
  Decoder.withUserInfo(_:)(v8, v6, v7, &v22);

  sub_1DB30BE90(&v22, v21);
  sub_1DB30BE90(v21, v20);
  v9 = sub_1DB3407C4(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (*(v9 + 16) && (v10 = sub_1DB306160(0x646E696B24, 0xE500000000000000), (v11 & 1) != 0) && (v12 = *(v9 + 56) + 24 * v10, *(v12 + 16) == 3))
  {
    v14 = *v12;
    v13 = *(v12 + 8);

    __swift_destroy_boxed_opaque_existential_0(&v22);
    *a2 = v14;
    a2[1] = v13;
  }

  else
  {

    v15 = sub_1DB50B3E0();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F0, &qword_1DB515DD0) + 48);
    *(v17 + 24) = &type metadata for OpenCodingKey;
    *(v17 + 32) = sub_1DB3053A8();
    *v17 = xmmword_1DB50F500;
    *(v17 + 16) = 1;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF0], v15);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t _OpaqueIntentModelBody<>.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for _OpaqueIntentModelBody.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1DB50B8C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  v11 = v2[1];
  v14[1] = *v2;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE40();
  sub_1DB50B860();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DB378898(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB378918(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DB378A9C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1DB378CEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB378D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB378DAC, 0, 0);
}

uint64_t sub_1DB378DAC()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1DB378FD0();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v2, &type metadata for MetricsEventType, v3, (v0 + 2));
  if (v0[3])
  {
    if (*(v0[7] + 16))
    {
      v4 = sub_1DB314CBC(v0[2], v0[3]);
      v6 = v5;

      if (v6)
      {
        v7 = v0[6];
        v8 = *(*(v0[7] + 56) + 8 * v4);
        v0[5] = MEMORY[0x1E69E6530];
        v0[2] = v8;
        v10 = v1[3];
        v9 = v1[4];
        __swift_mutable_project_boxed_opaque_existential_1(v7, v10);
        (*(v9 + 16))(v0 + 2, 0x726556746E657665, 0xEC0000006E6F6973, v10, v9);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }
    }

    else
    {
      v11 = v0[3];
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DB378F34(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB378D8C(a1, v6, v4);
}

unint64_t sub_1DB378FD0()
{
  result = qword_1ECC43E58[0];
  if (!qword_1ECC43E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC43E58);
  }

  return result;
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter(uint64_t a1)
{
  (*(*(a1 - 8) + 16))(&v5, v1, a1);
  if (!v6)
  {
    return 0xD00000000000003ALL;
  }

  sub_1DB2FEA0C(&v5, v4);
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B7C0);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52B7E0);
  v2 = 0;
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

void sub_1DB379150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  os_unfair_lock_lock((a1 + 32));
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(v16 + 16);
  if (v17 == v18)
  {
    v24[0] = 0;
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    if (v17 >= v18)
    {
      __break(1u);
      return;
    }

    sub_1DB30BE90(v16 + 40 * v17 + 32, &v22);
    *(a1 + 24) = v17 + 1;
  }

  os_unfair_lock_unlock((a1 + 32));
  if (*(&v23 + 1))
  {
    sub_1DB2FEA0C(&v22, v27);
    *&v22 = a3;
    *(&v22 + 1) = a4;
    *&v23 = a5;
    *&v26[0] = 0;
    v19 = type metadata accessor for ActionDispatcher();
    ActionDispatcher.perform(_:withMetrics:asPartOf:)(v27, v26, a6, v19);
    sub_1DB30BE90(a7, &v22);
    sub_1DB30BE90(v27, v26);
    v20 = swift_allocObject();
    v20[2] = a8;
    v20[3] = a1;
    v20[4] = a2;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;
    v20[8] = a6;
    sub_1DB2FEA0C(&v22, (v20 + 9));
    sub_1DB2FEA0C(v26, (v20 + 14));
    *&v22 = sub_1DB37993C;
    *(&v22 + 1) = v20;
    *&v23 = sub_1DB379978;
    *(&v23 + 1) = a2;
    sub_1DB30BE90(a7, v24);
    v25 = 0;
    v21 = a5;

    swift_retain_n();

    sub_1DB308EE8(&v22);

    sub_1DB30623C(&v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    sub_1DB30623C(&v22, &qword_1ECC42F50, &unk_1DB513AE0);
    sub_1DB3F8B6C(0);
  }
}

void sub_1DB379384(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*a1)
  {
    type metadata accessor for CompoundActionImplementation.PerformError();
    swift_getWitnessTable();
    v10 = swift_allocError();
    sub_1DB30BE90(a9, v11);
    sub_1DB3DD13C(v10);
  }

  else
  {

    sub_1DB379150(a2, a3, a4, a5, a6, a7, a8, a10);
  }
}

uint64_t sub_1DB37946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  type metadata accessor for ActionDispatcher();
  BaseObjectGraph._injectIfAvailable<A>(_:)();
  v6 = v27[0];
  if (v27[0])
  {
    v8 = v27[1];
    v7 = v28;
    if (v28)
    {
      v25 = sub_1DB357BD4();
      v26 = &protocol witness table for OS_dispatch_queue;
      *&v24 = v28;
      sub_1DB2FEA0C(&v24, v27);
      v9 = v29;
      v10 = v30;
      v23 = v7;
    }

    else
    {
      v23 = 0;
      v9 = &type metadata for SyncTaskScheduler;
      v10 = &protocol witness table for SyncTaskScheduler;
      v29 = &type metadata for SyncTaskScheduler;
      v30 = &protocol witness table for SyncTaskScheduler;
    }

    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v13 + 16) = v15;
    *(v13 + 24) = v16;
    *(v13 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43F68, &qword_1DB513AD8);
    v17 = swift_allocObject();
    *(v17 + 32) = 0;
    *(v17 + 16) = v5;
    *(v17 + 24) = 0;
    __swift_project_boxed_opaque_existential_1(v27, v9);
    sub_1DB30BE90(v27, &v24);
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = v17;
    v18[4] = v13;
    v18[5] = v6;
    v18[6] = v8;
    v18[7] = v7;
    v18[8] = a2;
    sub_1DB2FEA0C(&v24, (v18 + 9));
    v21 = v10[1];
    v19 = v23;

    sub_1DB30C9C0(v6, v8, v7);

    v21(sub_1DB3798D0, v18, v22, v10);

    sub_1DB3798E8(v6, v8, v7);

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    type metadata accessor for CompoundActionImplementation.PerformError();
    swift_getWitnessTable();
    v11 = swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v13 + 16) = v14;
    *(v13 + 24) = v11;
    *(v13 + 32) = 2;
  }

  return v13;
}

uint64_t sub_1DB37978C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7JetCore28CompoundActionImplementationV12PerformErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3797E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB379830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DB37988C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1DB3798E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1DB37997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1E1285C70](a5, a6);
  MEMORY[0x1E1285C70](a3, a4);
}

uint64_t LowMemoryMetricsEventLinter.Error.hashValue.getter()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB379A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1DB379B0C(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_1DB379B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[5] = v8;
  sub_1DB30C4B8(a5, v14, &qword_1ECC44088, &qword_1DB513CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44090, &qword_1DB513CB0);
  v9 = swift_allocObject();
  *(v9 + 56) = 0;
  sub_1DB30C4B8(v14, v12, &qword_1ECC44088, &qword_1DB513CA8);
  sub_1DB30623C(a5, &qword_1ECC44088, &qword_1DB513CA8);
  sub_1DB30623C(v14, &qword_1ECC44088, &qword_1DB513CA8);
  v10 = v12[1];
  *(v9 + 16) = v12[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v13;
  v5[4] = v9;
  v5[6] = a3;
  return v5;
}

uint64_t LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = 0;
  sub_1DB30BE90(a3, v10);
  v8 = swift_allocObject();
  sub_1DB379B0C(a1, a2, a4, &v11, v10);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v8;
}

uint64_t LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v11 = 0;
  v12 = v7;
  memset(v10, 0, sizeof(v10));
  v8 = swift_allocObject();
  sub_1DB379B0C(a1, a2, a4, &v12, v10);
  return v8;
}

char *sub_1DB379CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44070, qword_1DB51D040);
  inited = swift_initStackObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(inited + 16) = v3;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  if (qword_1ECC42078 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC67930;
  v11[3] = sub_1DB357BD4();
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v4;
  v5 = v4;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44078, &qword_1DB513CA0);
  v7 = sub_1DB3370CC(&qword_1ECC44080, &qword_1ECC44078, &qword_1DB513CA0);
  v8 = Promise.flatMap<A>(on:_:)(v11, sub_1DB37B3B4, v1, v6, v7);
  swift_setDeallocating();
  v9 = *(inited + 16);

  sub_1DB30C3C4(*(inited + 24), *(inited + 32));

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

char *sub_1DB379E7C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[4];

  os_unfair_lock_lock(v3 + 14);
  sub_1DB30C4B8(&v3[4], &v11, &qword_1ECC44088, &qword_1DB513CA8);
  os_unfair_lock_unlock(v3 + 14);

  if (*&v12[8])
  {
    sub_1DB30C7A8(&v11, v14);
    sub_1DB30BE90(v14, v13);
    sub_1DB30BE90(v13, &v11);
    v12[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44078, &qword_1DB513CA0);
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v4 + 16) = v5;
    v6 = *v12;
    *(v4 + 24) = v11;
    *(v4 + 40) = v6;
    *(v4 + 49) = *&v12[9];
    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(v14);
    return v4;
  }

  else
  {
    sub_1DB30623C(&v11, &qword_1ECC44088, &qword_1DB513CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44078, &qword_1DB513CA0);
    v8 = *(v2 + 80);
    v9 = *(v2 + 88);
    type metadata accessor for LowMemoryMetricsEventLinter.Error();
    swift_getWitnessTable();
    v10 = swift_allocError();
    return Promise.__allocating_init(error:)(v10);
  }
}

uint64_t LowMemoryMetricsEventLinter.processEvent(_:)(uint64_t a1)
{
  sub_1DB379CF4();
  if (qword_1ECC42078 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC67930;
  v16[3] = sub_1DB357BD4();
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v1;
  v7[6] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43120, &qword_1DB513AF0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v11 = swift_allocObject();
  v11[2] = sub_1DB37AAB0;
  v11[3] = v7;
  v11[4] = v8;
  v14[0] = sub_1DB37AB80;
  v14[1] = v11;
  v14[2] = sub_1DB3371F8;
  v14[3] = v8;
  sub_1DB30BE90(v16, v15);
  v15[40] = 0;
  swift_retain_n();
  v12 = v3;

  sub_1DB308644(v14);

  sub_1DB30623C(v14, &qword_1ECC42950, &unk_1DB50F730);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v8;
}

uint64_t sub_1DB37A24C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = *(*a4 + 88);
  v10 = *(v9 + 8);
  v60 = *(*a4 + 80);
  v8 = v60;
  v61 = v9;
  __swift_allocate_boxed_opaque_existential_0(v59);

  v10(v11, v8, v9);
  v12 = v60;
  v13 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v14 = MetricsFieldsBuilder.subscript.getter(0x6369706F74, 0xE500000000000000, v12, v13);
  if (v15)
  {
    a2 = v14;
    v53 = v15;
  }

  else
  {
    v53 = a3;
  }

  v52 = a2;
  v16 = v60;
  v17 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_1DB378FD0();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v16, &type metadata for MetricsEventType, v17, &v54);
  v19 = *(&v54 + 1);
  v18 = v54;
  if (qword_1ECC42228 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v20 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DB50EE90;
    v62 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
    v22._object = 0x80000001DB52B8B0;
    v22._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    if (v19)
    {
      v23 = &type metadata for MetricsEventType;
      v24 = v19;
      v25 = v18;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      v58[2] = 0;
    }

    v58[0] = v25;
    v58[1] = v24;
    v58[3] = v23;
    sub_1DB30C4B8(v58, v57, &qword_1ECC426B0, &qword_1DB50EEB0);
    v54 = 0u;
    v55 = 0u;

    sub_1DB301D4C(v57, &v54);
    LOBYTE(v56) = 0;
    v26 = v62;
    v49 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[40 * v28];
    v30 = v54;
    v31 = v55;
    v29[64] = v56;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v62 = v26;
    sub_1DB30623C(v58, &qword_1ECC426B0, &qword_1DB50EEB0);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    *(v21 + 32) = v62;
    *&v54 = v20;
    LOBYTE(v58[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v21, v58);

    sub_1DB37AC74(v59, v52, v53, a1);
    v18 = v50;
    if (v50)
    {

      return __swift_destroy_boxed_opaque_existential_0(v59);
    }

    if (v19)
    {
      if (v49 == 0x616964656DLL && v19 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
      {
        sub_1DB37B27C(v59);
      }
    }

    v34 = *(a5 + 16);
    if (v34)
    {
      v35 = a5 + 32;
      do
      {
        sub_1DB30BE90(v35, &v54);
        v36 = *(&v55 + 1);
        v37 = v56;
        __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
        (*(v37 + 8))(v59, v36, v37);
        __swift_destroy_boxed_opaque_existential_0(&v54);
        v35 += 40;
        --v34;
      }

      while (v34);
    }

    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    v19 = (*(v39 + 32))(v52, v53, v38, v39);

    v40 = *(v19 + 16);
    if (!v40)
    {
      break;
    }

    v41 = 0;
    v42 = v19 + 32;
    while (v41 < *(v19 + 16))
    {
      sub_1DB30BE90(v42, &v54);
      v43 = *(&v55 + 1);
      v44 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
      (*(v44 + 8))(v59, v43, v44);
      ++v41;
      __swift_destroy_boxed_opaque_existential_0(&v54);
      v42 += 40;
      if (v40 == v41)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_28:

  v45 = v60;
  v46 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  *a6 = (*(v46 + 24))(v45, v46);
  a6[1] = MEMORY[0x1E69E7CC0];
  return __swift_destroy_boxed_opaque_existential_0(v59);
}

void *LowMemoryMetricsEventLinter.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];

  return v0;
}

uint64_t LowMemoryMetricsEventLinter.__deallocating_deinit()
{
  LowMemoryMetricsEventLinter.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DB37A87C()
{
  v0 = sub_1DB50AF80();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1DB50A440();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1DB50AFA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB357BD4();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1DB37B35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  result = sub_1DB50AFD0();
  qword_1ECC67930 = result;
  return result;
}

uint64_t sub_1DB37AAD4(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v3);
  sub_1DB3F85C8(v3[0], v3[1]);
}

uint64_t sub_1DB37AB80(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DB37AAD4(a1, *(v1 + 16));
}

uint64_t sub_1DB37AC74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v9);
  v11 = (*(v10 + 8))(a2, a3, v9, v10);
  v88 = a1;
  v77 = a2;
  if (v11)
  {
    v74 = a3;
    v78 = v11;
    v12 = 0;
    a3 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    if (!v15)
    {
      goto LABEL_7;
    }

    do
    {
      while (1)
      {
        v20 = v12;
LABEL_17:
        v21 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v22 = v21 | (v20 << 6);
        v23 = (*(v78 + 48) + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        sub_1DB300B14(*(v78 + 56) + 32 * v22, v81);
        *&v82 = v25;
        *(&v82 + 1) = v24;
        sub_1DB30C200(v81, &v83);

        v19 = v20;
LABEL_18:
        v85 = v82;
        v86 = v83;
        v87 = v84;
        v26 = *(&v82 + 1);
        if (!*(&v82 + 1))
        {

          v5 = v4;
          a1 = v88;
          a3 = v74;
          goto LABEL_25;
        }

        v27 = v85;
        sub_1DB30C200(&v86, &v82);
        v28 = v88[3];
        v29 = v88[4];
        __swift_project_boxed_opaque_existential_1(v88, v28);
        v30 = (*(v29 + 24))(v28, v29);
        if (!*(v30 + 16))
        {
          break;
        }

        v31 = sub_1DB306160(v27, v26);
        if ((v32 & 1) == 0)
        {
          break;
        }

        v17 = v31;

        sub_1DB300B14(*(v30 + 56) + 32 * v17, v81);

        __swift_destroy_boxed_opaque_existential_0(&v82);
        sub_1DB30623C(v81, &qword_1ECC426B0, &qword_1DB50EEB0);
        v12 = v19;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      memset(v81, 0, sizeof(v81));
      sub_1DB30623C(v81, &qword_1ECC426B0, &qword_1DB50EEB0);
      v33 = v88[3];
      v34 = v88[4];
      __swift_mutable_project_boxed_opaque_existential_1(v88, v33);
      (*(v34 + 16))(&v82, v27, v26, v33, v34);
      __swift_destroy_boxed_opaque_existential_0(&v82);

      if (v4)
      {
      }

      v12 = v19;
    }

    while (v15);
LABEL_7:
    if (v16 <= v12 + 1)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v15 = 0;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        goto LABEL_18;
      }

      v15 = *(a3 + 8 * v20);
      ++v12;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_25:
  v35 = MEMORY[0x1E69E6158];
  *(&v86 + 1) = MEMORY[0x1E69E6158];
  *&v85 = 7628138;
  *(&v85 + 1) = 0xE300000000000000;
  v36 = a1[3];
  v37 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v36);
  v38 = v5;
  (*(v37 + 16))(&v85, 0x654D646E65537078, 0xEC000000646F6874, v36, v37);
  v39 = a1;
  v16 = v38;
  result = __swift_destroy_boxed_opaque_existential_0(&v85);
  if (v38)
  {
    return result;
  }

  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  MetricsFieldsBuilder.subscript.getter(1701273968, 0xE400000000000000, v41, v42);
  if (v43)
  {
    goto LABEL_27;
  }

  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v48 = MetricsFieldsBuilder.subscript.getter(0x6570795465676170, 0xE800000000000000, v46, v47);
  if (v49)
  {
    v80 = v48;
    v50 = v49;
    v51 = a1[3];
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v51);
    v53 = MetricsFieldsBuilder.subscript.getter(0x644965676170, 0xE600000000000000, v51, v52);
    if (!v54)
    {
LABEL_27:
      v45 = a4;
      v44 = v77;

      goto LABEL_39;
    }

    v55 = v54;
    v79 = v53;
    v56 = a4[3];
    v57 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v56);
    v75 = a3;
    v58 = (*(v57 + 16))(v77, a3, v56, v57);
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 95;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE100000000000000;
    }

    sub_1DB37997C(v80, v50, v79, v55, v60, v61);
    v63 = v62;

    *(&v86 + 1) = v35;
    *&v85 = v80;
    *(&v85 + 1) = v63;
    v64 = *(v39 + 24);
    v65 = *(v39 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v39, v64);
    (*(v65 + 16))(&v85, 1701273968, 0xE400000000000000, v64, v65);
    __swift_destroy_boxed_opaque_existential_0(&v85);
    a3 = v75;
  }

  v45 = a4;
  v44 = v77;
LABEL_39:
  v66 = v45[3];
  v67 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v66);
  result = (*(v67 + 24))(v44, a3, v66, v67);
  v68 = result;
  v69 = *(result + 16);
  if (!v69)
  {
  }

  v70 = 0;
  v71 = result + 32;
  while (v70 < *(v68 + 16))
  {
    sub_1DB30BE90(v71, &v85);
    v72 = *(&v86 + 1);
    v73 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
    (*(v73 + 8))(v88, v72, v73);
    if (v16)
    {
      __swift_destroy_boxed_opaque_existential_0(&v85);
    }

    ++v70;
    result = __swift_destroy_boxed_opaque_existential_0(&v85);
    v71 += 40;
    if (v69 == v70)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB37B27C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  result = MetricsFieldsBuilder.subscript.getter(0x6E6F697469736F70, 0xE800000000000000, v2, v3);
  if ((v5 & 1) == 0)
  {
    v8[3] = MEMORY[0x1E69E63B0];
    v8[0] = round(*&result);
    v6 = a1[3];
    v7 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 16))(v8, 0x6E6F697469736F70, 0xE800000000000000, v6, v7);
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return result;
}

unint64_t sub_1DB37B35C()
{
  result = qword_1EE30C810;
  if (!qword_1EE30C810)
  {
    sub_1DB50AF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C810);
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(actionMetrics:url:isSensitive:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for Models.ExternalURLAction();
  v8 = *(v7 + 20);
  v9 = sub_1DB509CA0();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for Models.ExternalURLAction()
{
  result = qword_1ECC440C8;
  if (!qword_1ECC440C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v27 - v8;
  v10 = sub_1DB509CA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = *a2;
  JSONObject.subscript.getter(7107189, 0xE300000000000000, v31);
  JSONObject.url.getter(v9);
  sub_1DB3151CC(v31);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1DB37B80C(v9);
    v19 = type metadata accessor for Models.ExternalURLAction() | 0x2000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v20 = xmmword_1DB511610;
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  else
  {
    v27[1] = v3;
    v27[0] = *(v11 + 32);
    (v27[0])(v17, v9, v10);
    JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v31);
    JSONObject.subscript.getter(1635017060, 0xE400000000000000, v30);

    v22 = sub_1DB320870(v30, v18);
    JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v30);
    v29 = v18;
    ScalarDictionary.init(tryDeserializing:using:)(v30, &v29, &v32);
    sub_1DB3151CC(v31);
    v23 = v32;
    (*(v11 + 16))(v14, v17, v10);
    JSONObject.subscript.getter(0x7469736E65537369, 0xEB00000000657669, v31);
    v24 = JSONObject.BOOL.getter();
    sub_1DB3151CC(a1);
    sub_1DB3151CC(v31);
    (*(v11 + 8))(v17, v10);
    v25 = v28;
    *v28 = v22;
    v25[1] = v23;
    v26 = type metadata accessor for Models.ExternalURLAction();
    result = (v27[0])(v25 + *(v26 + 20), v14, v10);
    *(v25 + *(v26 + 24)) = v24 & 1;
  }

  return result;
}

uint64_t sub_1DB37B80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Models.ExternalURLAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.ExternalURLAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Models.ExternalURLAction() + 20);
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DB37B950()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x7469736E65537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1DB37B9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB37C46C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB37B9EC(uint64_t a1)
{
  v2 = sub_1DB37BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB37BA28(uint64_t a1)
{
  v2 = sub_1DB37BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ExternalURLAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44098, &qword_1DB513CB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB37BC74();
  sub_1DB50BE40();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16[15] = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();

  if (!v2)
  {
    v12 = type metadata accessor for Models.ExternalURLAction();
    v13 = *(v12 + 20);
    LOBYTE(v17) = 1;
    sub_1DB509CA0();
    sub_1DB37C120(&qword_1ECC440B0);
    sub_1DB50B8A0();
    v14 = *(v3 + *(v12 + 24));
    LOBYTE(v17) = 2;
    sub_1DB50B870();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DB37BC74()
{
  result = qword_1ECC440A0;
  if (!qword_1ECC440A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440A0);
  }

  return result;
}

unint64_t sub_1DB37BCC8()
{
  result = qword_1ECC440A8;
  if (!qword_1ECC440A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440A8);
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1DB509CA0();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC440B8, &qword_1DB513CC0);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Models.ExternalURLAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB37BC74();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v27 = 0;
  sub_1DB37C0CC();
  sub_1DB50B780();
  *v15 = v26;
  LOBYTE(v26) = 1;
  sub_1DB37C120(&qword_1EE30E290);
  sub_1DB50B780();
  (*(v22 + 32))(&v15[*(v12 + 20)], v7, v4);
  LOBYTE(v26) = 2;
  v18 = sub_1DB50B750();
  (*(v23 + 8))(v11, v24);
  v15[*(v12 + 24)] = v18 & 1;
  sub_1DB37C164(v15, v21);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_1DB37C1C8(v15);
}

unint64_t sub_1DB37C0CC()
{
  result = qword_1ECC440C0;
  if (!qword_1ECC440C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440C0);
  }

  return result;
}

uint64_t sub_1DB37C120(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DB509CA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB37C164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.ExternalURLAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB37C1C8(uint64_t a1)
{
  v2 = type metadata accessor for Models.ExternalURLAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB37C224@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DB37C2D0()
{
  result = sub_1DB509CA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DB37C368()
{
  result = qword_1ECC440D8;
  if (!qword_1ECC440D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440D8);
  }

  return result;
}

unint64_t sub_1DB37C3C0()
{
  result = qword_1ECC440E0;
  if (!qword_1ECC440E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440E0);
  }

  return result;
}

unint64_t sub_1DB37C418()
{
  result = qword_1ECC440E8;
  if (!qword_1ECC440E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440E8);
  }

  return result;
}

uint64_t sub_1DB37C46C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

unint64_t JetPackError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000020;
  }

  *v0;
  return result;
}

unint64_t JetPackError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v4;
  v5 = "oryMetricsEventLinter";
  v6 = 0xD00000000000001DLL;
  if (v1 == 1)
  {
    v6 = 0xD000000000000020;
    v5 = "JetPackError.daemonKillSwitch";
  }

  if (v1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (!v1)
  {
    v5 = "hedAssetNotFound";
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v5 | 0x8000000000000000;
  v8 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB351638(inited + 32);
  return v8;
}

uint64_t JetPackError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB37C788()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000020;
  }

  *v0;
  return result;
}

uint64_t sub_1DB37C7FC(uint64_t a1)
{
  v2 = sub_1DB37C930();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB37C838(uint64_t a1)
{
  v2 = sub_1DB37C930();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DB37C878()
{
  result = qword_1ECC440F0;
  if (!qword_1ECC440F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440F0);
  }

  return result;
}

unint64_t sub_1DB37C8CC()
{
  result = qword_1ECC440F8;
  if (!qword_1ECC440F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440F8);
  }

  return result;
}

unint64_t sub_1DB37C930()
{
  result = qword_1ECC44100;
  if (!qword_1ECC44100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44100);
  }

  return result;
}

uint64_t sub_1DB37C990()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v3;
}

uint64_t dispatch thunk of IntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DB306AF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t DependencyDictionary.MergeStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

JetCore::DependencyDictionary __swiftcall DependencyDictionary.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  v5 = sub_1DB30BC94();
  *v3 = MEMORY[0x1E12859D0](v4, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1DB307C9C(a1._rawValue);
}

uint64_t DependencyDictionary.add<A>(distinctDependenciesFrom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v34 - v13;
  (*(v6 + 16))(v9, a1, a2, v12);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  if (!v41)
  {
    return (*(v34 + 8))(v14, AssociatedTypeWitness);
  }

  while (1)
  {
    v39[0] = v41;
    v39[1] = v42;
    v40 = v43;
    v15 = v41;
    sub_1DB300B14(v39 + 8, v36);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v3;
    v18 = v35;
    *v3 = 0x8000000000000000;
    v19 = sub_1DB30EE50(v15);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v18[3] < v24)
    {
      sub_1DB31A6AC(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1DB30EE50(v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v27 = v35;
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v30 = v19;
    sub_1DB311D10();
    v19 = v30;
    v27 = v35;
    if ((v25 & 1) == 0)
    {
LABEL_14:
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + 8 * v19) = v15;
      sub_1DB30C200(v36, (v27[7] + 32 * v19));
      v31 = v27[2];
      v23 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v27[2] = v32;
      v37 = 0u;
      v38 = 0u;
      *v3 = v27;
      goto LABEL_3;
    }

LABEL_11:
    v28 = 32 * v19;
    sub_1DB30C200((v27[7] + 32 * v19), &v37);
    sub_1DB30C200(v36, (v27[7] + v28));
    v29 = *(&v38 + 1);
    *v3 = v27;
    if (v29)
    {
      sub_1DB301DBC(&v37);
      sub_1DB3CBD24("JetCore/DependencyDictionary.swift", 34, 2, 340);
      sub_1DB30BF1C(v39);
      goto LABEL_4;
    }

LABEL_3:
    sub_1DB30BF1C(v39);
    sub_1DB301DBC(&v37);
LABEL_4:
    sub_1DB50B170();
    if (!v41)
    {
      return (*(v34 + 8))(v14, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void *DependencyDictionary.types.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DB324338(v2, 0);
  v4 = sub_1DB324740(&v6, v3 + 4, v2, v1);

  sub_1DB2FEA60();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DB37D0E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*(v5 + 16) && (v6 = sub_1DB30EE50(a1), (v7 & 1) != 0))
  {
    sub_1DB300B14(*(v5 + 56) + 32 * v6, v10);
    sub_1DB301DBC(v10);
    LOBYTE(v8) = 1;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_1DB301DBC(v10);
    v8 = sub_1DB35EB4C(a1, a2);
    if (v8)
    {
      LOBYTE(v8) = sub_1DB37D184(v8, v5);
    }
  }

  return v8 & 1;
}

uint64_t sub_1DB37D184(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (AssociatedTypeWitness = swift_getAssociatedTypeWitness(), v4 = sub_1DB30EE50(AssociatedTypeWitness), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a2 + 56) + 32 * v4, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    memset(v8, 0, sizeof(v8));
  }

  sub_1DB301DBC(v8);
  return v6;
}

uint64_t sub_1DB37D214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (!*(v11 + 16) || (v12 = sub_1DB30EE50(v8), (v13 & 1) == 0))
  {
    memset(v18, 0, sizeof(v18));
    goto LABEL_9;
  }

  sub_1DB300B14(*(v11 + 56) + 32 * v12, v18);
  sub_1DB301CDC(v18, v17);
  type metadata accessor for DependencyCell();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for ThrowingDependencyCell();
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        v14 = 2;
        goto LABEL_6;
      }

      if (swift_dynamicCast())
      {
        *a3 = 0;
        (*(v6 + 8))(v10, a2);
        goto LABEL_7;
      }

      __swift_destroy_boxed_opaque_existential_0(v17);
LABEL_9:
      *a3 = 3;
      return sub_1DB301DBC(v18);
    }
  }

  v14 = 1;
LABEL_6:
  *a3 = v14;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v17);
  return sub_1DB301DBC(v18);
}

char *DependencyDictionary.types<A>(compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v11 = *(*v2 + 64);
  v10 = *v2 + 64;
  v9 = v11;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v37 = (v5 + 8);

  v17 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17;
    if (!v14)
    {
      break;
    }

    v20 = v17;
LABEL_15:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(*(v8 + 48) + 8 * v23);
    sub_1DB300B14(*(v8 + 56) + 32 * v23, v39);
    *&v40 = v24;
    sub_1DB30C200(v39, (&v40 + 8));
    v17 = v20;
LABEL_16:
    v43[0] = v40;
    v43[1] = v41;
    v44 = v42;
    v25 = v40;
    if (!v40)
    {

      return v38;
    }

    sub_1DB30C200((v43 + 8), &v40);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB303148(0, *(v38 + 2) + 1, 1, v38);
      }

      v31 = *(v38 + 2);
      v30 = *(v38 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v36 = v31 + 1;
        v34 = sub_1DB303148((v30 > 1), v31 + 1, 1, v38);
        v32 = v36;
        v38 = v34;
      }

      v33 = v38;
      *(v38 + 2) = v32;
      *&v33[8 * v31 + 32] = v25;
      (*v37)(v7, a2);
    }

    else
    {
      type metadata accessor for DependencyCell();
      if (swift_dynamicCast() || (type metadata accessor for ThrowingDependencyCell(), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1DB303148(0, *(v38 + 2) + 1, 1, v38);
        }

        v27 = *(v38 + 2);
        v26 = *(v38 + 3);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v36 = v27 + 1;
          v29 = sub_1DB303148((v26 > 1), v27 + 1, 1, v38);
          v28 = v36;
          v38 = v29;
        }

        v18 = v38;
        *(v38 + 2) = v28;
        *&v18[8 * v27 + 32] = v25;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  if (v15 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = v15;
  }

  v17 = v21 - 1;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v15)
    {
      v14 = 0;
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      goto LABEL_16;
    }

    v14 = *(v10 + 8 * v20);
    ++v19;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v11 = *(*v2 + 64);
  v10 = *v2 + 64;
  v9 = v11;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v37 = (v5 + 8);

  v17 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17;
    if (!v14)
    {
      break;
    }

    v20 = v17;
LABEL_15:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(*(v8 + 48) + 8 * v23);
    sub_1DB300B14(*(v8 + 56) + 32 * v23, v39);
    *&v40 = v24;
    sub_1DB30C200(v39, (&v40 + 8));
    v17 = v20;
LABEL_16:
    v43[0] = v40;
    v43[1] = v41;
    v44 = v42;
    v25 = v40;
    if (!v40)
    {

      return v38;
    }

    sub_1DB30C200((v43 + 8), &v40);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB303148(0, *(v38 + 2) + 1, 1, v38);
      }

      v31 = *(v38 + 2);
      v30 = *(v38 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v36 = v31 + 1;
        v34 = sub_1DB303148((v30 > 1), v31 + 1, 1, v38);
        v32 = v36;
        v38 = v34;
      }

      v33 = v38;
      *(v38 + 2) = v32;
      *&v33[8 * v31 + 32] = v25;
      (*v37)(v7, a2);
    }

    else
    {
      type metadata accessor for DependencyCell();
      if (swift_dynamicCast() || (type metadata accessor for ThrowingDependencyCell(), swift_dynamicCast()) || (type metadata accessor for DependencyPromise(), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1DB303148(0, *(v38 + 2) + 1, 1, v38);
        }

        v27 = *(v38 + 2);
        v26 = *(v38 + 3);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v36 = v27 + 1;
          v29 = sub_1DB303148((v26 > 1), v27 + 1, 1, v38);
          v28 = v36;
          v38 = v29;
        }

        v18 = v38;
        *(v38 + 2) = v28;
        *&v18[8 * v27 + 32] = v25;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  if (v15 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = v15;
  }

  v17 = v21 - 1;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v15)
    {
      v14 = 0;
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      goto LABEL_16;
    }

    v14 = *(v10 + 8 * v20);
    ++v19;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB37DAF8()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44128, &unk_1DB514160);
  sub_1DB382984();
  v1 = sub_1DB50A890();

  return v1;
}

uint64_t sub_1DB37DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB300B14(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t DependencyDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(v10 + 16) && (v11 = sub_1DB30EE50(a1), (v12 & 1) != 0))
  {
    sub_1DB300B14(*(v10 + 56) + 32 * v11, v26);
    sub_1DB30C200(v26, v27);
    sub_1DB300B14(v27, v26);
    if (swift_dynamicCast())
    {
      (*(v24 + 32))(a3, v9, a2);
LABEL_14:
      (*(v24 + 56))(a3, 0, 1, a2);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v26);
      return __swift_destroy_boxed_opaque_existential_0(v27);
    }

    type metadata accessor for DependencyCell();
    if (swift_dynamicCast())
    {
      sub_1DB35CB48();

      goto LABEL_14;
    }

    type metadata accessor for ThrowingDependencyCell();
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v25;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v18;
      v22 = a1;
      requirementFailure(_:file:line:)(sub_1DB3821B0, (&v23 - 2), "JetCore/DependencyDictionary.swift", 34, 2, 231);
      sub_1DB3C20C0();
      (*(v24 + 56))(a3, 0, 1, a2);

      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v23 = v25;
      MEMORY[0x1EEE9AC00](v19);
      *(&v23 - 4) = a2;
      *(&v23 - 24) = v23;
      v22 = a1;
      requirementFailure(_:file:line:)(sub_1DB382A98, (&v23 - 3), "JetCore/DependencyDictionary.swift", 34, 2, 239);
      swift_unknownObjectRelease();
      (*(v24 + 56))(a3, 1, 1, a2);
      goto LABEL_19;
    }

    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    v20 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v20);

    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v13 = sub_1DB35EB4C(a1, a2);
    if (v13)
    {

      return sub_1DB37E0DC(v10, v13, v14, a3);
    }

    else
    {
      v16 = *(v24 + 56);

      return v16(a3, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_1DB37E0DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v24 = a1;
  if (sub_1DB37D0E0(AssociatedTypeWitness, AssociatedTypeWitness))
  {
    v24 = a1;
    DependencyDictionary.subscript.getter(AssociatedTypeWitness, AssociatedTypeWitness);
    if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v23 + 8))(v12, v9);
      v18 = swift_getAssociatedTypeWitness();
      return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
    }

    else
    {
      (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
      (*(a3 + 24))(v17, a2, a3);
      (*(v13 + 8))(v17, AssociatedTypeWitness);
      v22 = swift_getAssociatedTypeWitness();
      return (*(*(v22 - 8) + 56))(a4, 0, 1, v22);
    }
  }

  else
  {
    v20 = swift_getAssociatedTypeWitness();
    v21 = *(*(v20 - 8) + 56);

    return v21(a4, 1, 1, v20);
  }
}

uint64_t sub_1DB37E42C(uint64_t *a1)
{
  v1 = *a1;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  v2 = *(v1 + 80);
  type metadata accessor for ThrowingDependencyCell();
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
  v3 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v3);

  MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
  return 0;
}

uint64_t sub_1DB37E528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(v12 + 16) && (v13 = sub_1DB30EE50(a1), (v14 & 1) != 0))
  {
    sub_1DB300B14(*(v12 + 56) + 32 * v13, v23);
    sub_1DB30C200(v23, v24);
    sub_1DB300B14(v24, v23);
    if (swift_dynamicCast())
    {
      (*(v8 + 32))(a3, v11, a2);
LABEL_10:
      (*(v8 + 56))(a3, 0, 1, a2);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0(v23);
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }

    type metadata accessor for DependencyCell();
    if (swift_dynamicCast())
    {
      sub_1DB35CB48();

      goto LABEL_10;
    }

    type metadata accessor for ThrowingDependencyCell();
    if (swift_dynamicCast())
    {
      sub_1DB3C20C0();
      if (!v4)
      {
        (*(v8 + 56))(a3, 0, 1, a2);
      }

      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    v18 = swift_dynamicCast();
    if (v18)
    {
      v21 = v22;
      MEMORY[0x1EEE9AC00](v18);
      *(&v21 - 4) = a2;
      *(&v21 - 24) = v21;
      v20 = a1;
      requirementFailure(_:file:line:)(sub_1DB382804, (&v21 - 3), "JetCore/DependencyDictionary.swift", 34, 2, 280);
      swift_unknownObjectRelease();
      (*(v8 + 56))(a3, 1, 1, a2);
      goto LABEL_11;
    }

    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    v19 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v19);

    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v15 = sub_1DB35EB4C(a1, a2);
    if (v15)
    {
      return sub_1DB37E92C(v12, v15, v16, a3);
    }

    else
    {
      return (*(v8 + 56))(a3, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_1DB37E92C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DB50B120();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v24 = a1;
  if ((sub_1DB37D0E0(AssociatedTypeWitness, AssociatedTypeWitness) & 1) == 0)
  {
    goto LABEL_4;
  }

  v24 = a1;
  DependencyDictionary.subscript.getter(AssociatedTypeWitness, AssociatedTypeWitness, v11);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v22 + 8))(v11, v8);
LABEL_4:
    v17 = swift_getAssociatedTypeWitness();
    return (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
  }

  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v19 = v23;
  (*(a3 + 24))(v16, a2, a3);
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  v20 = swift_getAssociatedTypeWitness();
  return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
}

uint64_t sub_1DB37EC00()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  swift_getObjectType();
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
  return 0;
}

uint64_t sub_1DB37ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a2;
  v4[19] = a3;
  v4[17] = a1;
  v5 = *(a3 - 8);
  v4[20] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[21] = v7;
  v4[22] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DB37EDA4, 0, 0);
}

uint64_t sub_1DB37EDA4()
{
  if (*(*(v0 + 176) + 16) && (v1 = sub_1DB30EE50(*(v0 + 144)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    sub_1DB300B14(*(*(v0 + 176) + 56) + 32 * v1, v0 + 48);
    sub_1DB30C200((v0 + 48), (v0 + 16));
    sub_1DB300B14(v0 + 16, v0 + 80);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 152);
      v7 = *(v0 + 136);
      (*(v5 + 32))(v7, *(v0 + 168), v6);
      (*(v5 + 56))(v7, 0, 1, v6);
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0((v0 + 80));
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      goto LABEL_13;
    }

    v17 = *(v0 + 152);
    type metadata accessor for DependencyCell();
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = *(v0 + 136);
      v21 = *(v0 + 112);
      sub_1DB35CB48();

      (*(v19 + 56))(v20, 0, 1, v18);
      goto LABEL_12;
    }

    v24 = *(v0 + 152);
    type metadata accessor for ThrowingDependencyCell();
    if (swift_dynamicCast())
    {
      v25 = *(v0 + 136);
      v26 = *(v0 + 120);
      sub_1DB3C20C0();
      (*(*(v0 + 160) + 56))(*(v0 + 136), 0, 1, *(v0 + 152));

      goto LABEL_12;
    }

    v27 = *(v0 + 152);
    v28 = type metadata accessor for DependencyPromise();
    if (swift_dynamicCast())
    {
      *(v0 + 184) = *(v0 + 128);
      v29 = swift_task_alloc();
      *(v0 + 192) = v29;
      WitnessTable = swift_getWitnessTable();
      *v29 = v0;
      v29[1] = sub_1DB37F26C;
      v31 = *(v0 + 136);

      return Future.result.getter(v31, v28, WitnessTable);
    }

    else
    {
      v32 = *(v0 + 144);
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      v33 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v33);

      MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
      return sub_1DB50B580();
    }
  }

  else
  {
    v8 = sub_1DB35EB4C(*(v0 + 144), *(v0 + 152));
    if (!v8)
    {
      (*(*(v0 + 160) + 56))(*(v0 + 136), 1, 1, *(v0 + 152));
LABEL_13:
      v22 = *(v0 + 168);

      v23 = *(v0 + 8);

      return v23();
    }

    v10 = v8;
    v11 = v9;
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_1DB37F42C;
    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);

    return sub_1DB37F5C0(v15, v10, v13, v14, v10, v11);
  }
}

uint64_t sub_1DB37F26C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DB37F544;
  }

  else
  {
    v3 = sub_1DB37F380;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB37F380()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];

  (*(v3 + 56))(v4, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB37F42C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *(v1 + 168);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DB37F544()
{
  v1 = v0[23];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[25];
  v3 = v0[21];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB37F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[7] = AssociatedTypeWitness;
  v8 = sub_1DB50B120();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(AssociatedTypeWitness - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB37F704, 0, 0);
}

uint64_t sub_1DB37F704()
{
  v12 = v0[4];
  if (sub_1DB37D0E0(v0[7], v0[7]))
  {
    v0[2] = v0[4];
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1DB37F868;
    v2 = v0[10];
    v3 = v0[7];

    return sub_1DB37ECE8(v2);
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[3];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
    v9 = v0[12];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1DB37F868()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1DB37FB64;
  }

  else
  {
    v3 = sub_1DB37F97C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB37F97C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[3];
    (*(v0[9] + 8))(v1, v0[8]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v6, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v8 = v0[12];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[3];
    (*(v2 + 32))(v8, v1, v3);
    (*(v9 + 24))(v8, v10, v9);
    (*(v2 + 8))(v8, v3);
    v12 = swift_getAssociatedTypeWitness();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  v13 = v0[12];
  v14 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DB37FB64()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

void DependencyDictionary.add(distinctDependency:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1DB300B14((a1 + 1), v3);
  sub_1DB381A90(v3, v1, &v4);
  v2 = v5;
  sub_1DB301DBC(&v4);
  if (v2)
  {
    sub_1DB3CBD24("JetCore/DependencyDictionary.swift", 34, 2, 340);
  }
}

BOOL DependencyDictionary.replace(dependency:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1DB300B14((a1 + 1), v4);
  sub_1DB381A90(v4, v1, &v5);
  v2 = v6 != 0;
  sub_1DB301DBC(&v5);
  return v2;
}

uint64_t DependencyDictionary.replace<A>(dependencies:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v11 = *(v33 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v33 - v13;
  (*(v6 + 16))(v9, a1, a2, v12);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  if (!v39)
  {
    return (*(v33 + 8))(v14, AssociatedTypeWitness);
  }

  while (1)
  {
    v37[0] = v39;
    v37[1] = v40;
    v38 = v41;
    v16 = v39;
    sub_1DB300B14(v37 + 8, v35);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    v19 = v34;
    *v3 = 0x8000000000000000;
    v20 = sub_1DB30EE50(v16);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v19[3] < v25)
    {
      sub_1DB31A6AC(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1DB30EE50(v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v28 = v34;
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v31 = v20;
    sub_1DB311D10();
    v20 = v31;
    v28 = v34;
    if (v26)
    {
LABEL_3:
      v15 = 32 * v20;
      sub_1DB30C200((v28[7] + 32 * v20), v36);
      sub_1DB30C200(v35, (v28[7] + v15));
      goto LABEL_4;
    }

LABEL_11:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    *(v28[6] + 8 * v20) = v16;
    sub_1DB30C200(v35, (v28[7] + 32 * v20));
    v29 = v28[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v28[2] = v30;
    memset(v36, 0, sizeof(v36));
LABEL_4:
    *v3 = v28;
    sub_1DB30BF1C(v37);
    sub_1DB301DBC(v36);
    sub_1DB50B170();
    if (!v39)
    {
      return (*(v33 + 8))(v14, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t DependencyDictionary.remove(dependencyFor:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DB30EE50(a1);
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v2;
    *v2 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB311D10();
      v9 = v12;
    }

    sub_1DB30C200((*(v9 + 56) + 32 * v6), v13);
    sub_1DB310538(v6, v9);
    v10 = *v2;

    *v2 = v9;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  return sub_1DB301DBC(v13);
}

uint64_t DependencyDictionary.remove<A>(dependenciesFor:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v26 - v14;
  (*(v6 + 16))(v9, a1, a2, v13);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  for (i = *&v28[0]; *&v28[0]; i = *&v28[0])
  {
    v17 = *v3;
    v18 = sub_1DB30EE50(i);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v27 = *v3;
      *v3 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DB311D10();
        v23 = v27;
      }

      sub_1DB30C200((*(v23 + 56) + 32 * v20), v28);
      sub_1DB310538(v20, v23);
      v24 = *v3;

      *v3 = v23;
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    sub_1DB301DBC(v28);
    sub_1DB50B170();
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

uint64_t DependencyDictionary.remove<A>(allDependenciesExcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1DB50B510();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v45 = v3;
  MEMORY[0x1E1285DC0](a2, a3);
  swift_getWitnessTable();
  sub_1DB50B650();
  (*(v7 + 8))(v10, v6);
  sub_1DB30BC94();
  swift_getWitnessTable();
  v13 = sub_1DB50AE00();
  v14 = v13;
  v15 = *v3;
  v16 = *v3 + 64;
  v17 = 1 << *(*v3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(*v3 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = v13 + 56;

  v23 = 0;
  v44 = v15;
  while (1)
  {
    v24 = v23;
    if (!v19)
    {
      break;
    }

    v25 = v23;
LABEL_17:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = v27 | (v25 << 6);
    v29 = *(*(v15 + 48) + 8 * v28);
    sub_1DB300B14(*(v15 + 56) + 32 * v28, v49);
    *&v46 = v29;
    sub_1DB30C200(v49, (&v46 + 8));
    v23 = v25;
LABEL_18:
    v50[0] = v46;
    v50[1] = v47;
    v51 = v48;
    v30 = v46;
    if (!v46)
    {
    }

    if (*(v14 + 16) && (v31 = *(v14 + 40), sub_1DB50BCF0(), MEMORY[0x1E12871F0](v30), v32 = sub_1DB50BD30(), v33 = -1 << *(v14 + 32), v34 = v32 & ~v33, ((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      while (*(*(v14 + 48) + 8 * v34) != v30)
      {
        v34 = (v34 + 1) & v35;
        if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v36 = sub_1DB30EE50(v30);
      if (v37)
      {
        v38 = v36;
        v39 = v45;
        v40 = *v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *v39;
        *&v49[0] = *v39;
        *v39 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DB311D10();
          v42 = *&v49[0];
        }

        sub_1DB30C200((*(v42 + 56) + 32 * v38), &v46);
        sub_1DB310538(v38, v42);
        v43 = *v39;

        *v39 = v42;
        v15 = v44;
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      sub_1DB301DBC(&v46);
    }

    result = __swift_destroy_boxed_opaque_existential_0(v50 + 1);
  }

  if (v20 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v20;
  }

  v23 = v26 - 1;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v19 = 0;
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      goto LABEL_18;
    }

    v19 = *(v16 + 8 * v25);
    ++v24;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3807EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB380890, 0, 0);
}

uint64_t sub_1DB380890()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  sub_1DB30BE90(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1DB381678(sub_1DB382824, v1);

  *v4 = v3;
  sub_1DB30C200(v1, (v4 + 8));
  v5 = *(v2 + 28);
  v6 = *(type metadata accessor for _ResolvedDependency() + 24);
  v7 = sub_1DB509930();
  (*(*(v7 - 8) + 32))(v4 + v6, &v1[v5], v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB3809E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for _ResolvedDependency();
  v5[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v5[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB380AF8, 0, 0);
}

uint64_t sub_1DB380AF8()
{
  v1 = v0[11];
  sub_1DB30BE90(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1DB381678(sub_1DB3828E8, v1);
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v17 = v0[7];

  *v4 = v8;
  sub_1DB30C200(v6, (v4 + 8));
  v9 = *(v7 + 28);
  v10 = *(v5 + 24);
  v11 = sub_1DB509930();
  (*(*(v11 - 8) + 32))(v4 + v10, &v6[v9], v11);
  sub_1DB382904(v4, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_storeEnumTagMultiPayload();
  sub_1DB30C06C(v2, v17, &qword_1ECC44120, &qword_1DB514148);
  v12 = v0[15];
  v13 = v0[13];
  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DB380CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  v7 = sub_1DB509DD0();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = type metadata accessor for MonotonicTimeReference();
  v6[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
  v6[18] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v14 = type metadata accessor for _ResolvedDependency();
  v6[21] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v6[23] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB380E8C, 0, 0);
}

uint64_t sub_1DB380E8C()
{
  v20 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v19);
  v8 = *(v2 + 20);
  *(v0 + 232) = v8;
  *(v1 + v8) = v19;
  v9 = *(v5 + 16);
  *(v0 + 200) = v9;
  *(v0 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v1, v4);
  ObjectType = swift_getObjectType();
  v11 = *(v6 + 24);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v18 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = sub_1DB38104C;
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);

  return v18(boxed_opaque_existential_0, ObjectType, v15);
}

uint64_t sub_1DB38104C()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1DB381444;
  }

  else
  {
    v3 = sub_1DB381160;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB381160()
{
  v39 = v0;
  v1 = (*(v0 + 136) + *(v0 + 232));
  sub_1DB30C200((v0 + 16), *(v0 + 152));
  static MonotonicTime.now.getter(&v38);
  v29 = v1[1];
  v37[0] = *v1;
  v37[1] = v29;
  sub_1DB49B574(v37, &v38);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v35 = *(v0 + 192);
  v36 = *(v0 + 184);
  v32 = *(v0 + 176);
  v33 = *(v0 + 168);
  v4 = *(v0 + 144);
  v27 = *(v0 + 136);
  v28 = *(v0 + 152);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v30 = *(v0 + 56);
  v31 = *(v0 + 160);
  v34 = *(v0 + 48);
  sub_1DB509D60();
  v3(v7, v5, v9);
  v3(v8, v6, v9);
  v11 = v28 + *(v4 + 28);
  sub_1DB509910();
  v12 = *(v10 + 8);
  v12(v6, v9);
  v12(v5, v9);
  sub_1DB38288C(v27);
  sub_1DB30C06C(v28, v31, &qword_1ECC44118, &qword_1DB514140);
  *v32 = v30;
  sub_1DB30C200(v31, (v32 + 8));
  v13 = *(v4 + 28);
  v14 = *(v33 + 24);
  v15 = sub_1DB509930();
  (*(*(v15 - 8) + 32))(v32 + v14, &v31[v13], v15);
  sub_1DB382904(v32, v35);
  swift_storeEnumTagMultiPayload();
  sub_1DB30C06C(v35, v34, &qword_1ECC44120, &qword_1DB514148);
  v16 = *(v0 + 192);
  v17 = *(v0 + 176);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v0 + 136);
  v22 = *(v0 + 112);
  v21 = *(v0 + 120);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DB381444()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[6];
  __swift_deallocate_boxed_opaque_existential_0(v0 + 2);
  (*(v6 + 8))(v4, v5);
  sub_1DB38288C(v3);
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  v8 = v0[24];
  v9 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DB3815D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v5(v3, v4);
}

uint64_t sub_1DB381678@<X0>(void (*a1)(timespec *__return_ptr, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  v40 = a1;
  v2 = sub_1DB509DD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for MonotonicTimeReference();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v42);
  v19 = &v18[*(v15 + 28)];
  *v19 = v42;
  v20 = *(v3 + 16);
  v21 = v20(v13, v18, v2);
  v22 = v43;
  v40(&v42, v21);
  if (v22)
  {
    (*(v3 + 8))(v13, v2);
    return sub_1DB38288C(v18);
  }

  else
  {
    v35 = v3;
    v36 = v20;
    v40 = 0;
    v43 = v13;
    v24 = v2;
    v25 = v37;
    sub_1DB30C200(&v42, v39);
    static MonotonicTime.now.getter(&v42);
    v26 = v42;
    tv_sec = v19->tv_sec;
    tv_nsec = v19->tv_nsec;
    v42.tv_sec = tv_sec;
    v42.tv_nsec = tv_nsec;
    v41 = v26;
    sub_1DB49B574(&v42, &v41);
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v29 = v10;
    sub_1DB509D60();
    v30 = v43;
    v31 = v36;
    v36(v25, v43, v24);
    v31(v38, v29, v24);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
    v33 = v39 + *(v32 + 28);
    sub_1DB509910();
    v34 = *(v35 + 8);
    v34(v29, v24);
    v34(v30, v24);
    return sub_1DB38288C(v18);
  }
}

uint64_t *sub_1DB3819D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v5 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  result = v6(v4, v5);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a2);
  }

  return result;
}

_OWORD *sub_1DB381A90@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_1DB30EE50(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_1DB31A6AC(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1DB30EE50(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    sub_1DB311D10();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_1DB31E8A8(v12, a2, a1, v11);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v12;
  sub_1DB30C200((v11[7] + 32 * v12), a3);
  result = sub_1DB30C200(a1, (v11[7] + v19));
LABEL_11:
  *v5 = v11;
  return result;
}

uint64_t sub_1DB381BC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_1DB314CBC(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_1DB31AC7C(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_1DB314CBC(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_1DB3120BC();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DB31EBC4(v14, a2, a3, a1, v13);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 40 * v14;
  sub_1DB30C7A8((v13[7] + 40 * v14), a4);
  result = sub_1DB30C7A8(a1, v13[7] + v21);
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_1DB381D18@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_1DB314CBC(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_1DB31AC90(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_1DB314CBC(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_1DB3120D0();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DB31EBC4(v14, a2, a3, a1, v13);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 40 * v14;
  sub_1DB30C7A8((v13[7] + 40 * v14), a4);
  result = sub_1DB30C7A8(a1, v13[7] + v21);
LABEL_11:
  *v6 = v13;
  return result;
}

unint64_t sub_1DB381E6C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  result = sub_1DB314CBC(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_1DB31C274(v19, isUniquelyReferenced_nonNull_native);
    result = sub_1DB314CBC(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v28 = result;
    sub_1DB312CF4();
    result = v28;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DB31EA18(result, a2, a3, a1, v13);

    v22 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0uLL;
    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v13[7] + 48 * result;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 24);
  v25 = *(v21 + 32);
  v26 = *(v21 + 40);
  v27 = a1[1];
  *v21 = *a1;
  *(v21 + 16) = v27;
  *(v21 + 25) = *(a1 + 25);
LABEL_11:
  *v6 = v13;
  *a4 = v22;
  *(a4 + 8) = v23;
  *(a4 + 24) = v24;
  *(a4 + 32) = v25;
  *(a4 + 40) = v26;
  return result;
}

_OWORD *sub_1DB381FDC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = sub_1DB50B560();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v30 = v16;
  v17 = sub_1DB30EDEC(a2);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v18;
  if (v16[3] < v22)
  {
    sub_1DB319D74(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_1DB30EDEC(a2);
    if ((v4 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    v17 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v27 = v17;
    sub_1DB311750();
    v17 = v27;
    v24 = v30;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v28 = v17;
    (*(v10 + 16))(v13, a2, v9);
    result = sub_1DB31E76C(v28, v13, a1, v24);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v24 = v30;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v25 = 32 * v17;
  sub_1DB30C200((v24[7] + 32 * v17), a3);
  result = sub_1DB30C200(a1, (v24[7] + v25));
LABEL_11:
  *v5 = v24;
  return result;
}

unint64_t sub_1DB3821B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_1DB3AF7C4(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_1DB30C200(v41, v39);
  v13 = *a5;
  result = sub_1DB30EE50(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1DB31A6AC(v19, a4 & 1);
    v21 = *a5;
    result = sub_1DB30EE50(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1DB311D10();
    result = v25;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = (v23[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1DB30C200(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1DB30C200(v39, (v23[7] + 32 * result));
  v26 = v23[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v23[2] = v27;
LABEL_15:
    sub_1DB3AF7C4(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_1DB30C200(v41, v39);
        v29 = *a5;
        result = sub_1DB30EE50(v12);
        v31 = v29[2];
        v32 = (v30 & 1) == 0;
        v18 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v30;
        if (v29[3] < v33)
        {
          sub_1DB31A6AC(v33, 1);
          v34 = *a5;
          result = sub_1DB30EE50(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = (v36[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_0(v28);
          sub_1DB30C200(v39, v28);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_1DB30C200(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_1DB3AF7C4(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_1DB2FEA60();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1DB382488(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1DB3AF7C4(&v45);
  v12 = v45;
  if (!v45)
  {
    goto LABEL_25;
  }

  sub_1DB30C200(v46, v44);
  v13 = *a5;
  result = sub_1DB30EE50(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1DB31A6AC(v19, a4 & 1);
    v21 = *a5;
    result = sub_1DB30EE50(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1DB311D10();
    result = v26;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_1DB300B14(*(*a5 + 56) + 32 * result, v43);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    sub_1DB30C200(v43, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v27[6] + 8 * result) = v12;
  result = sub_1DB30C200(v44, (v27[7] + 32 * result));
  v28 = v27[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v27[2] = v29;
LABEL_15:
    sub_1DB3AF7C4(&v45);
    v12 = v45;
    if (v45)
    {
      v20 = 1;
      do
      {
        sub_1DB30C200(v46, v44);
        v33 = *a5;
        result = sub_1DB30EE50(v12);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_1DB31A6AC(v37, 1);
          v38 = *a5;
          result = sub_1DB30EE50(v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v30 = *a5;
          v31 = 32 * result;
          sub_1DB300B14(*(*a5 + 56) + 32 * result, v43);
          __swift_destroy_boxed_opaque_existential_0(v44);
          v32 = *(v30 + 56);
          __swift_destroy_boxed_opaque_existential_0((v32 + v31));
          sub_1DB30C200(v43, (v32 + v31));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v40[6] + 8 * result) = v12;
          result = sub_1DB30C200(v44, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_1DB3AF7C4(&v45);
        v12 = v45;
      }

      while (v45);
    }

LABEL_25:
    sub_1DB2FEA60();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1DB382790()
{
  result = qword_1ECC44110;
  if (!qword_1ECC44110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44110);
  }

  return result;
}

uint64_t sub_1DB382804()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1DB37EC00();
}

uint64_t type metadata accessor for _ResolvedDependency()
{
  result = qword_1ECC44138;
  if (!qword_1ECC44138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB38288C(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimeReference();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB382904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ResolvedDependency();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB382984()
{
  result = qword_1ECC44130;
  if (!qword_1ECC44130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44128, &unk_1DB514160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44130);
  }

  return result;
}

uint64_t sub_1DB382A10()
{
  result = sub_1DB509930();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id ACAccountStore.activeAccount.getter@<X0>(void *a1@<X8>)
{
  result = [v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

JetCore::Account_optional __swiftcall ACAccountStore.account(forUserID:)(Swift::String forUserID)
{
  object = forUserID._object;
  v4 = v1;
  v5 = (HIBYTE(forUserID._object) & 0xF);
  forUserID._object = (forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if ((object & 0x2000000000000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((object & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = forUserID._countAndFlagsBits;

    v8 = sub_1DB38450C(countAndFlagsBits, object, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_63;
    }

LABEL_65:
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v26 = [v2 ams:v30 iTunesAccountWithDSID:?];

    goto LABEL_66;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    v31[0] = forUserID._countAndFlagsBits;
    v31[1] = object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(forUserID._countAndFlagsBits) == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v8 = 0;
          v18 = v31 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_71:
      __break(1u);
      return *&forUserID._countAndFlagsBits;
    }

    if (LOBYTE(forUserID._countAndFlagsBits) != 45)
    {
      if (v5)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if ((forUserID._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    forUserID._countAndFlagsBits = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    forUserID._countAndFlagsBits = sub_1DB50B440();
  }

  v7 = *forUserID._countAndFlagsBits;
  if (v7 == 43)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v15 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v17 + v16;
            if (__OFADD__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v7 == 45)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v9 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (forUserID._object)
  {
    v8 = 0;
    if (forUserID._countAndFlagsBits)
    {
      while (1)
      {
        v21 = *forUserID._countAndFlagsBits - 48;
        if (v21 > 9)
        {
          goto LABEL_61;
        }

        v22 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          goto LABEL_61;
        }

        v8 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_61;
        }

        ++forUserID._countAndFlagsBits;
        if (!--forUserID._object)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v8 = 0;
  LOBYTE(v5) = 1;
LABEL_62:
  v32 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_63:
  v26 = 0;
LABEL_66:
  *v4 = v26;
  return *&forUserID._countAndFlagsBits;
}

uint64_t ACAccountStore.onActiveAccountChange.getter()
{
  v0 = *(sub_1DB382F04() + 16);

  sub_1DB3370CC(&qword_1ECC44178, &qword_1ECC44180, &qword_1DB5141C0);
  return v0;
}

uint64_t sub_1DB382F04()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &off_1ECC44148);
  swift_endAccess();
  if (v1)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for _ACAccountStoreObserver();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1DB301DBC(v6);
  }

  objc_sync_enter(v0);
  sub_1DB382FF4(v0, v6);
  objc_sync_exit(v0);
  return *&v6[0];
}

uint64_t sub_1DB382FF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = objc_getAssociatedObject(a1, &off_1ECC44148);
  swift_endAccess();
  if (v4)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1DB301DBC(v12);
    goto LABEL_8;
  }

  type metadata accessor for _ACAccountStoreObserver();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44180, &qword_1DB5141C0);
    swift_allocObject();
    v7 = sub_1DB3ADCE4();
    v8 = sub_1DB383190();
    type metadata accessor for _ACAccountStoreObserver();
    swift_allocObject();
    v6 = sub_1DB384B90(v7, v8);

    swift_beginAccess();

    objc_setAssociatedObject(a1, &off_1ECC44148, v6, 0x301);
    swift_endAccess();

    goto LABEL_9;
  }

  v6 = v9;
LABEL_9:
  *a2 = v6;
  return result;
}

id sub_1DB383190()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if (byte_1EE30E198 == 1)
  {
    if (qword_1ECC42090 != -1)
    {
      swift_once();
    }

    v0 = off_1ECC44170;
    os_unfair_lock_lock(off_1ECC44170 + 6);
    v1 = *(v0 + 2);
    v2 = v1;
    os_unfair_lock_unlock(v0 + 6);
    if (v1)
    {
      return v2;
    }
  }

  v4 = [objc_opt_self() defaultCenter];

  return v4;
}

id sub_1DB38328C@<X0>(void *a1@<X8>)
{
  result = [*v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

uint64_t sub_1DB3832EC()
{
  v1 = *v0;
  v2 = *(sub_1DB382F04() + 16);

  sub_1DB3370CC(&qword_1ECC44178, &qword_1ECC44180, &qword_1DB5141C0);
  return v2;
}

id static AccountProvider<>.appleServices.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  return v0;
}

id static AccountProvider<>.appleServices(forMediaType:)(uint64_t a1)
{
  v1 = [objc_opt_self() ams:a1 sharedAccountStoreForMediaType:?];

  return v1;
}

uint64_t sub_1DB383420()
{
  [*(v0 + 24) removeObserver_];
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DB383474(char a1)
{
  v3 = sub_1DB50A400();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB50A440();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1 & 1;
  aBlock[4] = sub_1DB384ABC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1DB38371C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DB50A400();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DB50A440();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1DB384B10;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_1DB3839D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1DB509960();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509940();
  v11 = *(a1 + 16);

  sub_1DB383474(a4);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DB383ACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44188, &qword_1DB514230);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1ECC44170 = result;
  return result;
}

uint64_t sub_1DB383B10(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    result = swift_beginAccess();
    for (i = 0; i != v3; ++i)
    {
      v8 = *(a2 + 24);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = 0;
        while (*(v8 + 8 * v10 + 32) != *(v6 + 8 * i))
        {
          if (v9 == ++v10)
          {
            goto LABEL_3;
          }
        }

        swift_beginAccess();

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 24) = v8;
        if ((result & 1) == 0)
        {
          result = a3(v8);
          v8 = result;
          *(a2 + 24) = result;
        }

        v11 = *(v8 + 16);
        v12 = v11 - v10;
        if (v11 <= v10)
        {
          __break(1u);
          return result;
        }

        v13 = v11 - 1;
        v14 = v8 + 8 * v10;
        v15 = *(v14 + 32);
        memmove((v14 + 32), (v14 + 40), 8 * v12 - 8);
        *(v8 + 16) = v13;
        *(a2 + 24) = v8;
        swift_endAccess();
      }

LABEL_3:
      ;
    }
  }

  return result;
}

uint64_t sub_1DB383C58(uint64_t a1, char a2)
{
  v4 = sub_1DB50A440();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DB50A400();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = a2 & 1;
    v13 = *(a1 + 24);

    v14 = MEMORY[0x1E69E7CC0];
    v15 = 32;
    do
    {
      v16 = *(v10 + v15);
      v17 = *(*v16 + 88);

      if (v17(v18) & 1) != 0 && (LOBYTE(aBlock[0]) = v12, v19 = (*(*v16 + 104))(aBlock), (v17(v19)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1DB30336C(0, v14[2] + 1, 1, v14);
        }

        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          v14 = sub_1DB30336C((v20 > 1), v21 + 1, 1, v14);
        }

        v14[2] = v21 + 1;
        v14[v21 + 4] = v16;
      }

      v15 += 8;
      --v11;
    }

    while (v11);

    if (v14[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      v22 = *(a1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
      v23 = *(v7 + 72);
      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DB50EE90;
      sub_1DB50A3F0();
      aBlock[0] = v25;
      sub_1DB357C48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
      sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
      v26 = v32;
      v27 = v34;
      sub_1DB50B240();
      v28 = swift_allocObject();
      *(v28 + 16) = v14;
      *(v28 + 24) = a1;
      aBlock[4] = sub_1DB384AE0;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DB3330B0;
      aBlock[3] = &block_descriptor_7;
      v29 = _Block_copy(aBlock);

      v30 = v33;
      _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1E12864B0](0, v30, v26, v29);
      _Block_release(v29);
      (*(v35 + 8))(v30, v36);
      (*(v7 + 8))(v26, v27);
    }
  }
}

uint64_t sub_1DB3840B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A440();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DB50A400();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(a1 + 24);

    v13 = MEMORY[0x1E69E7CC0];
    v14 = 32;
    do
    {
      v15 = *(v10 + v14);
      v16 = *(*v15 + 88);

      if (v16(v17) & 1) != 0 && (aBlock[0] = a2, v18 = (*(*v15 + 104))(aBlock), (v16(v18)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1DB3036DC(0, v13[2] + 1, 1, v13);
        }

        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          v13 = sub_1DB3036DC((v19 > 1), v20 + 1, 1, v13);
        }

        v13[2] = v20 + 1;
        v13[v20 + 4] = v15;
      }

      v14 += 8;
      --v11;
    }

    while (v11);

    if (v13[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      v21 = *(a1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
      v22 = *(v7 + 72);
      v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB50EE90;
      sub_1DB50A3F0();
      aBlock[0] = v24;
      sub_1DB357C48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
      sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
      v25 = v31;
      v26 = v33;
      sub_1DB50B240();
      v27 = swift_allocObject();
      *(v27 + 16) = v13;
      *(v27 + 24) = a1;
      aBlock[4] = sub_1DB384B60;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DB3330B0;
      aBlock[3] = &block_descriptor_19;
      v28 = _Block_copy(aBlock);

      v29 = v32;
      _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1E12864B0](0, v29, v25, v28);
      _Block_release(v28);
      (*(v34 + 8))(v29, v35);
      (*(v7 + 8))(v25, v26);
    }
  }
}

unsigned __int8 *sub_1DB38450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DB50A860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB412E70();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB50B440();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}