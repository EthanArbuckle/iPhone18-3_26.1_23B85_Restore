unint64_t sub_18EF99908()
{
  result = qword_1ED5FE220;
  if (!qword_1ED5FE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE220);
  }

  return result;
}

uint64_t sub_18EF99980@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8060, &qword_18F0A0F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9CCD8();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  v11 = sub_18F09423C();
  v24 = v12;
  v26 = 1;
  v22 = sub_18F09423C();
  v23 = v13;
  v25 = 2;
  v14 = sub_18F09423C();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

double sub_18EF99BCC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18EF99980(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_18EF99C18(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD000000000000010;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_355()
{

  return swift_allocObject();
}

unint64_t sub_18EF99CB0()
{
  result = qword_1ED5FE3D8;
  if (!qword_1ED5FE3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18EF8558C(&unk_1ED5FE8C0);
    sub_18EFBE9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE3D8);
  }

  return result;
}

unint64_t sub_18EF99DFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    sub_18EF825F4(255, v3, v4);
    OUTLINED_FUNCTION_142();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18EF99E5C()
{
  result = qword_1ED5FED60;
  if (!qword_1ED5FED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FED60);
  }

  return result;
}

uint64_t sub_18EF99EB0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8090, &qword_18F0A0F58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F694();
  sub_18F09459C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13[15] = 0;
  v9 = sub_18F09428C();
  v13[14] = 1;
  v10 = sub_18F09428C();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

uint64_t _s14CodableWrapperVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF9A12CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

__n128 OUTLINED_FUNCTION_29_0@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1 * v2);
  v6 = v3->n128_i64[1];
  v7 = v3->n128_u64[0];
  result = v3[1];
  v5 = v3[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_346()
{

  return sub_18F09411C();
}

unint64_t sub_18EF9A1DC()
{
  result = qword_1ED5FEB08;
  if (!qword_1ED5FEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB08);
  }

  return result;
}

uint64_t sub_18EF9A258(char a1)
{
  if (a1)
  {
    return 0x664565676E616863;
  }

  else
  {
    return 0x746365666665;
  }
}

uint64_t sub_18EF9A3CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 8))
    {
      v2 = *a1 + 114;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x72)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18EF9A414(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

__n128 OUTLINED_FUNCTION_27_0@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12 + a1 * v13;
  *v14 = a12;
  *(v14 + 8) = a11;
  result = a8;
  *(v14 + 16) = a8;
  *(v14 + 32) = a9;
  return result;
}

uint64_t sub_18EF9A498(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18EF9A4AC(a1, a2);
  }

  return a1;
}

uint64_t sub_18EF9A4AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_18EF9A518()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_106(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[10];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
      OUTLINED_FUNCTION_106(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
        v5 = v0[12];
      }
    }

    v8 = OUTLINED_FUNCTION_52(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void LNActionMetadata.init(from:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v21;
  a20 = v22;
  v306 = v24;
  v307 = v23;
  v294 = v25;
  v27 = v26;
  v28 = _s14CodableWrapperVMa(0);
  v29 = OUTLINED_FUNCTION_45(v28);
  v302 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_42();
  v35 = (v33 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v37 = OUTLINED_FUNCTION_371();
  v38 = type metadata accessor for LNActionMetadata.CodableWrapper(v37);
  v39 = v38;
  v40 = *(v27 + v38[22]);
  v311 = v38;
  v312 = v27;
  if (v40 || (v40 = *(v27 + v38[21])) != 0)
  {
  }

  else
  {
    v258 = 0;
    v259 = *(v27 + v38[37]);
    v310 = *(v259 + 16);
    v40 = MEMORY[0x1E69E7CC8];
    while (v310 != v258)
    {
      if (v258 >= *(v259 + 16))
      {
        goto LABEL_129;
      }

      v260 = *(v259 + 32 + 8 * v258);
      swift_isUniquelyReferenced_nonNull_native();
      *&v314 = v40;
      sub_18EF952E4();
      if (__OFADD__(v40[2], (v262 & 1) == 0))
      {
        goto LABEL_130;
      }

      v263 = v261;
      v264 = v262;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7320, &qword_18F09BD50);
      if (sub_18F09417C())
      {
        sub_18EF952E4();
        if ((v264 & 1) != (v266 & 1))
        {
          goto LABEL_133;
        }

        v263 = v265;
      }

      v40 = v314;
      if (v264)
      {
        v267 = *(v314 + 56) + 40 * v263;
        v268 = *v267;
        v269 = *(v267 + 8);
        v270 = *(v267 + 16);
        v271 = *(v267 + 24);
        *v267 = 0u;
        *(v267 + 16) = 0u;
        v272 = *(v267 + 32);
        *(v267 + 32) = 8;
        sub_18EFDEB74(v268, v269, v270, v271, v272);
      }

      else
      {
        *(v314 + 8 * (v263 >> 6) + 64) |= 1 << v263;
        *(v40[6] + 8 * v263) = v260;
        v273 = v40[7] + 40 * v263;
        *v273 = 0u;
        *(v273 + 16) = 0u;
        *(v273 + 32) = 8;
        v274 = v40[2];
        v162 = __OFADD__(v274, 1);
        v275 = v274 + 1;
        if (v162)
        {
          goto LABEL_132;
        }

        v40[2] = v275;
      }

      ++v258;
      v39 = v311;
    }

    swift_bridgeObjectRelease_n();
    v27 = v312;
  }

  v308 = v40;
  v41 = *(v27 + v39[17]);
  if (v41 == 2 || (v41 & 1) != 0)
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    v42 = 0;
  }

  v43 = *v27;
  v44 = v27[1];
  v45 = sub_18F093B5C();
  if (v27[6])
  {
    v46 = v27[5];
    v47 = v27[6];
  }

  else
  {
    v48 = v27[2];
    v49 = v27[3];
  }

  OUTLINED_FUNCTION_108();
  v50 = sub_18F093B5C();
  OUTLINED_FUNCTION_232(v50, &v319 + 8);

  if (v27[7])
  {
    v51 = v27[7];
LABEL_15:

    goto LABEL_16;
  }

  if (v27[4])
  {
    v52 = v27[4];

    goto LABEL_15;
  }

  sub_18F093A5C();
LABEL_16:
  v53 = sub_18F093A3C();
  OUTLINED_FUNCTION_345(v53, &v319);
  v54 = v27[8];
  v293 = v42;
  v292 = v45;
  if (v54 && (v55 = *(v54 + 16)) != 0)
  {
    v56 = v54 + ((*(v302 + 80) + 32) & ~*(v302 + 80));
    v57 = MEMORY[0x1E69E7CC0];
    v58 = *(v302 + 72);
    do
    {
      OUTLINED_FUNCTION_9();
      v59 = OUTLINED_FUNCTION_368();
      sub_18EF86A14(v59, v60);
      v61 = *(v20 + 8);
      v62 = *(v20 + 16);
      OUTLINED_FUNCTION_245();
      if (v63)
      {
        v64 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        OUTLINED_FUNCTION_9();
        v65 = OUTLINED_FUNCTION_189();
        sub_18EF86A14(v65, v66);
        v67 = sub_18EF9FEB8(v35);
        *(&v320 + 1) = v64;
        *&v319 = v67;
      }

      else
      {
        v319 = 0u;
        v320 = 0u;
      }

      OUTLINED_FUNCTION_63();
      sub_18EF86A6C();
      if (*(&v320 + 1))
      {
        sub_18EF914D4(&v319, &v314);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = *(v57 + 2);
          v71 = OUTLINED_FUNCTION_242();
          v57 = sub_18EFA0044(v71, v72, v73, v57);
        }

        v69 = *(v57 + 2);
        v68 = *(v57 + 3);
        if (v69 >= v68 >> 1)
        {
          v74 = OUTLINED_FUNCTION_114(v68);
          v57 = sub_18EFA0044(v74, v69 + 1, 1, v57);
        }

        *(v57 + 2) = v69 + 1;
        sub_18EF914D4(&v314, &v57[32 * v69 + 32]);
      }

      else
      {
        sub_18EF933AC(&v319, &qword_1EACB9180);
      }

      v56 += v58;
      --v55;
    }

    while (v55);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v289 = sub_18EF9CBD0(v57, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  v75 = v311[10];
  MEMORY[0x1EEE9AC00](v289);
  OUTLINED_FUNCTION_247();
  *(v76 - 16) = v307;
  *(v76 - 8) = v306;
  v77 = v312;
  v288 = sub_18EF9EBC8(sub_18EF93270);
  v78 = v311[11];
  MEMORY[0x1EEE9AC00](v288);
  OUTLINED_FUNCTION_247();
  *(v79 - 16) = v307;
  *(v79 - 8) = v306;
  v287 = sub_18EFD9810(sub_18EF9D964);
  v80 = v311[12];
  MEMORY[0x1EEE9AC00](v287);
  OUTLINED_FUNCTION_247();
  *(v81 - 16) = v307;
  *(v81 - 8) = v306;
  v82 = sub_18EFD99B4(sub_18F01299C);
  v286 = v82;
  v83 = v311[14];
  v285 = *(v77 + v311[13]);
  v284 = *(v77 + v83);
  v283 = *(v77 + v83 + 8);
  v84 = *(v77 + v311[18]);
  if ((~v84 & 0xF000000000000007) != 0)
  {
    sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
    v85 = OUTLINED_FUNCTION_216();
    sub_18EFA3D24(v85);
    sub_18EF9E62C(v84);
    v86 = OUTLINED_FUNCTION_216();
    v82 = sub_18EFA3D90(v86);
  }

  v87 = (v77 + v311[19]);
  v281 = *v87;
  v280 = *(v87 + 8);
  v88 = MEMORY[0x193AD91F0](v82);
  v89 = *(v77 + v311[20]);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_81();
  sub_18EF93B88(sub_18F0129B8, v90, v91, _s14CodableWrapperVMa_10);
  objc_autoreleasePoolPop(v88);
  sub_18EF825F4(0, &unk_1ED5FFA18, off_1E72AFEA8);
  OUTLINED_FUNCTION_142();
  v92 = sub_18F093DBC();
  OUTLINED_FUNCTION_232(v92, &v312);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9450, &unk_18F09BD58);
  sub_18F0941CC();
  v93 = 0;
  v94 = v308[8];
  v95 = *(v308 + 32);
  OUTLINED_FUNCTION_65();
  v98 = v97 & v96;
  v100 = (v99 + 63) >> 6;
  v303 = v101;
  if ((v97 & v96) != 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  v103 = v93;
  while (1)
  {
    v93 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v93 >= v100)
    {
      break;
    }

    ++v103;
    if (v308[v93 + 8])
    {
      OUTLINED_FUNCTION_229();
      v98 = v105 & v104;
      while (2)
      {
        v106 = v102 | (v93 << 6);
        v107 = *(v308[6] + 8 * v106);
        v108 = v308[7] + 40 * v106;
        v110 = *v108;
        v109 = *(v108 + 8);
        v111 = *(v108 + 16);
        v112 = *(v108 + 24);
        switch(*(v108 + 32))
        {
          case 1:
            v140 = sub_18EF825F4(0, &qword_1ED5FD150, off_1E72B0168);
            OUTLINED_FUNCTION_234(v140);
            v141 = v107;
            v142 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v142, v143, v144, v145, 1);
            OUTLINED_FUNCTION_282();
            v131 = MEMORY[0x1E69E6158];
            v132 = &selRef_initWithSearchScopes_;
            goto LABEL_48;
          case 2:
            v124 = sub_18EF825F4(0, &qword_1EACB7328, off_1E72B00F0);
            OUTLINED_FUNCTION_234(v124);
            v125 = v107;
            v126 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v126, v127, v128, v129, 2);
            OUTLINED_FUNCTION_282();
            v131 = MEMORY[0x1E69E6158];
            v132 = &selRef_initWithSupportedCategories_;
LABEL_48:
            sub_18EF9CBD0(v130, v131, v132);
            break;
          case 3:
            OUTLINED_FUNCTION_234(objc_allocWithZone(LNPropertyUpdaterSystemProtocolMetadata));
            v133 = v107;

            OUTLINED_FUNCTION_67();
            OUTLINED_FUNCTION_282();
            sub_18EFA7764(v134, v135, v136, v137, &selRef_initWithEntityIdentifier_entityProperty_);
            break;
          case 4:
            v115 = sub_18EF825F4(0, &qword_1EACB7070, off_1E72B0028);
            OUTLINED_FUNCTION_234(v115);
            v116 = v107;
            v117 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v117, v118, v119, v120, 4);
            OUTLINED_FUNCTION_168();
            OUTLINED_FUNCTION_282();
            v123 = &selRef_initWithEntityIdentifier_;
            goto LABEL_50;
          case 5:
            v146 = sub_18EF825F4(0, &qword_1EACB6FA8, off_1E72B0210);
            OUTLINED_FUNCTION_234(v146);
            v147 = v107;
            v148 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v148, v149, v150, v151, 5);
            OUTLINED_FUNCTION_168();
            OUTLINED_FUNCTION_282();
            v123 = &selRef_initWithActionIdentifier_;
LABEL_50:
            sub_18EF9EB60(v121, v122, v123);
            break;
          case 6:
            v152 = sub_18EF825F4(0, &qword_1EACB6ED0, off_1E72B00D8);
            OUTLINED_FUNCTION_234(v152);
            v153 = v107;
            v154 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v154, v155, v156, v157, 6);
            OUTLINED_FUNCTION_282();
            sub_18EFBFC64();
            break;
          case 7:
            v138 = objc_allocWithZone(LNStructuredDataRepresentableTypeSystemProtocolMetadata);
            v139 = v107;
            [v138 initWithStructuredRepresentations_];
            break;
          case 8:
            v158 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
            v159 = v107;
            [v158 init];
            break;
          default:
            v113 = objc_allocWithZone(LNConditionallyEnabledSystemProtocolMetadata);
            v114 = v107;
            [v113 initWithPersistState_];
            break;
        }

        OUTLINED_FUNCTION_297((v106 >> 3) & 0x1FFFFFFFFFFFFFF8);
        *(v303[6] + 8 * v106) = v107;
        *(v303[7] + 8 * v106) = v160;
        v161 = v303[2];
        v162 = __OFADD__(v161, 1);
        v163 = v161 + 1;
        if (!v162)
        {
          v303[2] = v163;
          v77 = v312;
          if (!v98)
          {
            goto LABEL_36;
          }

LABEL_35:
          v102 = __clz(__rbit64(v98));
          v98 &= v98 - 1;
          continue;
        }

        break;
      }

LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      type metadata accessor for LNSystemProtocolIdentifier();
      sub_18F0944AC();
      __break(1u);
      JUMPOUT(0x18EF9BB28);
    }
  }

  type metadata accessor for LNSystemProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_24();
  sub_18EF8558C(v164);
  OUTLINED_FUNCTION_288();
  v309 = sub_18F093A3C();

  v166 = 0;
  v167 = *(v77 + v311[23]);
  if ((~v167 & 0xF000000000000007) != 0)
  {
    v166 = sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);

    sub_18EFA4278(v167, v307, v306);
    v168 = OUTLINED_FUNCTION_216();
    v165 = sub_18EFA4FC0(v168);
  }

  v305 = v166;
  v169 = MEMORY[0x193AD91F0](v165);
  v170 = v169;
  if (*(v77 + v311[24]))
  {
    MEMORY[0x1EEE9AC00](v169);
    OUTLINED_FUNCTION_81();
    sub_18EF92A54(sub_18F0206B4, v171, v172, sub_18EF94860);
  }

  else
  {
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    OUTLINED_FUNCTION_30();
    sub_18EF8558C(v173);
    sub_18F093A5C();
  }

  objc_autoreleasePoolPop(v170);
  type metadata accessor for LNActionTypeSpecificMetadataKey(0);
  OUTLINED_FUNCTION_30();
  sub_18EF8558C(v174);
  OUTLINED_FUNCTION_168();
  v175 = sub_18F093A3C();

  v176 = (v77 + v311[25]);
  if (v176[1])
  {
    v177 = *v176;
    v301 = sub_18F093B5C();
  }

  else
  {
    v301 = 0;
  }

  v178 = *(v77 + v311[26]);
  v304 = v175;
  if (v178)
  {
    sub_18EF94FC0(v178);
    OUTLINED_FUNCTION_204();
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v179);
    OUTLINED_FUNCTION_108();
    v180 = sub_18F093A3C();
    OUTLINED_FUNCTION_234(v180);
  }

  else
  {
    OUTLINED_FUNCTION_139();
  }

  v181 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_332();
  sub_18F093A5C();
  OUTLINED_FUNCTION_332();
  v299 = sub_18F093A3C();

  v183 = *(v77 + v311[27]);
  if (v183)
  {
    v184 = *(v183 + 16);
    if (v184)
    {
      *&v314 = MEMORY[0x1E69E7CC0];
      sub_18F09411C();
      sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
      v185 = (v183 + 64);
      do
      {
        v187 = *(v185 - 4);
        v186 = *(v185 - 3);
        v188 = *(v185 - 2);
        v189 = *(v185 - 1);
        v190 = *v185;
        v185 += 40;
        *&v319 = v187;
        *(&v319 + 1) = v186;
        *&v320 = v188;
        *(&v320 + 1) = v189;
        v321 = v190;

        sub_18EFCAE3C(&v319);
        sub_18F0940FC();
        v191 = *(v314 + 16);
        sub_18F09412C();
        OUTLINED_FUNCTION_184();
        sub_18F09413C();
        sub_18F09410C();
        --v184;
      }

      while (v184);
      v77 = v312;
    }

    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    OUTLINED_FUNCTION_142();
    v192 = sub_18F093DBC();
    OUTLINED_FUNCTION_232(v192, &a16);
  }

  v193 = (v77 + v311[28]);
  if (v193[1])
  {
    v194 = *v193;
    v182 = sub_18F093B5C();
  }

  v195 = (v77 + v311[29]);
  v196 = *v195;
  v197 = v195[1];
  v198 = *(v195 + 16);
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_81();
  v203 = sub_18EFA0BE8(sub_18EFA0BCC, v199, v200, v201, v202);
  OUTLINED_FUNCTION_323(v203);
  v204 = *(v77 + v311[30]);
  if (v204)
  {
    v205 = *(v204 + 16);
    if (v205)
    {
      OUTLINED_FUNCTION_347();
      sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
      v206 = (v204 + 72);
      do
      {
        v207 = *(v206 - 4);
        v208 = *(v206 - 3);
        v209 = *(v206 - 2);
        v211 = *(v206 - 1);
        v210 = *v206;
        *&v314 = *(v206 - 5);
        *(&v314 + 1) = v207;
        v315 = v208;
        v316 = v209;
        v317 = v211;
        v318 = v210;

        sub_18EFA1084(&v314);
        sub_18F0940FC();
        v212 = *(v313 + 16);
        sub_18F09412C();
        OUTLINED_FUNCTION_184();
        sub_18F09413C();
        sub_18F09410C();
        v206 += 6;
        --v205;
      }

      while (v205);
      v77 = v312;
    }

    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_142();
    v213 = sub_18F093DBC();
    OUTLINED_FUNCTION_232(v213, &a13);
  }

  v214 = *(v77 + v311[31]);
  if (v214)
  {
    v215 = *(v214 + 16);
    if (v215)
    {
      OUTLINED_FUNCTION_347();
      sub_18EF825F4(0, &unk_1EACB7078, off_1E72B0030);
      v216 = (v214 + 40);
      do
      {
        v217 = *(v216 - 1);
        v218 = *v216;

        sub_18EF9EB60(v217, v218, &selRef_initWithEntityIdentifier_);
        sub_18F0940FC();
        v219 = *(v313 + 16);
        sub_18F09412C();
        OUTLINED_FUNCTION_366();
        sub_18F09413C();
        sub_18F09410C();
        v216 += 2;
        --v215;
      }

      while (v215);
      v77 = v312;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7390, &qword_18F09BD68);
    OUTLINED_FUNCTION_142();
    v220 = sub_18F093DBC();
    OUTLINED_FUNCTION_228(v220);
  }

  else
  {
    v297 = 0;
  }

  if (*(v77 + v311[32]) == 2)
  {
    v222 = *(v77 + v311[15]);
    v223 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:(v222 == 2) | (v222 & 1) assistantOnly:0];
  }

  else
  {
    v221 = *(v77 + v311[32]);
    v223 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v221 & 1 assistantOnly:(v221 >> 8) & 1];
  }

  v224 = OUTLINED_FUNCTION_365(v223);
  v225 = (v77 + v311[33]);
  if (v225[1])
  {
    v226 = *v225;
    v224 = sub_18F093B5C();
    v296 = v224;
  }

  else
  {
    v296 = 0;
  }

  if (*(v77 + v311[34]))
  {
    MEMORY[0x1EEE9AC00](v224);
    OUTLINED_FUNCTION_81();
    sub_18EF93B88(sub_18F0129D4, v227, v228, _s14CodableWrapperVMa_24);
    sub_18EF825F4(0, &unk_1EACB6F30, off_1E72AFE70);
    OUTLINED_FUNCTION_272();
    v229 = sub_18F093DBC();
    OUTLINED_FUNCTION_345(v229, &a9);
  }

  else
  {
    v295 = 0;
  }

  v230 = *(v77 + v311[35]);
  if (v230)
  {
    v231 = 0;
    v313 = v181;
    v232 = *(v230 + 16);
    v233 = (v230 + 56);
    while (v232 != v231)
    {
      if (v231 >= *(v230 + 16))
      {
        goto LABEL_128;
      }

      v235 = *(v233 - 1);
      v234 = *v233;
      v236 = *(v233 - 3);
      v237 = *(v233 - 2);
      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);

      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_124();
      sub_18EFF196C(v238, v239, v240, v241);
      MEMORY[0x193AD88C0]();
      OUTLINED_FUNCTION_386();
      if (v243)
      {
        OUTLINED_FUNCTION_114(v242);
        sub_18F093DFC();
      }

      OUTLINED_FUNCTION_257();
      sub_18F093E3C();
      v233 += 4;
      ++v231;
    }

    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    v244 = sub_18F093DBC();
  }

  else
  {
    v244 = 0;
  }

  if (v280)
  {
    v245 = 0;
  }

  else
  {
    v245 = v281;
  }

  if (v283)
  {
    v246 = 0;
  }

  else
  {
    v246 = v284;
  }

  v247 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_319();
  v279 = v248;
  OUTLINED_FUNCTION_326();
  v278 = v249;
  OUTLINED_FUNCTION_372();
  v277 = v250;
  OUTLINED_FUNCTION_116();
  LOBYTE(v276) = v285 & 1;
  [v251 v252];

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_372();

  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_319();

  sub_18EF933AC(v307, &qword_1EACB72C8);
  OUTLINED_FUNCTION_28();
  sub_18EF86A6C();
  OUTLINED_FUNCTION_259();
}

void LNEntityMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v23;
  a20 = v24;
  v228 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_163();
  v34 = _s14CodableWrapperVMa_0(0);
  v35 = OUTLINED_FUNCTION_95(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19();
  v38 = _s14CodableWrapperVMa(0);
  v39 = OUTLINED_FUNCTION_45(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_42();
  v240 = (v44 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v47 = OUTLINED_FUNCTION_371();
  v48 = type metadata accessor for LNEntityMetadata.CodableWrapper(v47);
  v49 = *(v29 + *(v48 + 68));
  v231 = v29;
  v227 = v27;
  v50 = OUTLINED_FUNCTION_281(v48);
  v225 = v21;
  v224 = v22;
  v219 = v41;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v52 = *(v50 + 64);
    if (*(v29 + v52))
    {
      v29 = *(v29 + v52);
    }

    else
    {
      type metadata accessor for LNSystemEntityProtocolIdentifier();
      OUTLINED_FUNCTION_61();
      sub_18EF8558C(v53);
      sub_18F093A5C();
      OUTLINED_FUNCTION_138();
    }

    v51 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D8, &qword_18F09BD20);
  v236 = sub_18F0941CC();
  v55 = v51 + 64;
  v54 = *(v51 + 64);
  v56 = *(v51 + 32);
  OUTLINED_FUNCTION_65();
  v59 = v58 & v57;
  v61 = (v60 + 63) >> 6;

  v62 = 0;
  if (v59)
  {
    while (2)
    {
      v63 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
LABEL_14:
      v67 = v63 | (v62 << 6);
      v68 = *(*(v51 + 48) + 8 * v67);
      v69 = *(v51 + 56) + 40 * v67;
      v71 = *v69;
      v70 = *(v69 + 8);
      switch(*(v69 + 32))
      {
        case 1:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v98));
          v99 = v68;
          OUTLINED_FUNCTION_130();
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v100, v101, v102, v103, 1);
          v51 = sub_18F093DBC();
          v81 = OUTLINED_FUNCTION_258(v51, sel_initWithSearchScopes_);

          v82 = OUTLINED_FUNCTION_56();
          v86 = 1;
          goto LABEL_23;
        case 2:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v87));
          v88 = v68;
          OUTLINED_FUNCTION_130();
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v89, v90, v91, v92, 2);
          v51 = sub_18F093DBC();
          v81 = OUTLINED_FUNCTION_258(v51, sel_initWithSupportedCategories_);

          v82 = OUTLINED_FUNCTION_56();
          v86 = 2;
          goto LABEL_23;
        case 3:
          v238 = *(v69 + 24);
          v234 = *(v69 + 16);
          OUTLINED_FUNCTION_228(objc_allocWithZone(LNPropertyUpdaterSystemProtocolMetadata));
          v93 = v68;

          v94 = OUTLINED_FUNCTION_168();
          v74 = sub_18EFA7764(v94, v95, v234, v238, &selRef_initWithEntityIdentifier_entityProperty_);
          goto LABEL_25;
        case 4:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v75));
          v76 = v68;
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v77, v78, v79, v80, 4);
          OUTLINED_FUNCTION_130();
          v51 = sub_18F093B5C();
          v81 = OUTLINED_FUNCTION_258(v51, sel_initWithEntityIdentifier_);

          v82 = OUTLINED_FUNCTION_56();
          v86 = 4;
          goto LABEL_23;
        case 5:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v104));
          v105 = v68;
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v106, v107, v108, v109, 5);
          OUTLINED_FUNCTION_130();
          v51 = sub_18F093B5C();
          v81 = OUTLINED_FUNCTION_258(v51, sel_initWithActionIdentifier_);

          v82 = OUTLINED_FUNCTION_56();
          v86 = 5;
          goto LABEL_23;
        case 6:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v110));
          v111 = v68;
          OUTLINED_FUNCTION_130();
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v112, v113, v114, v115, 6);
          sub_18F0939FC();
          OUTLINED_FUNCTION_142();
          v51 = sub_18F093DBC();
          v81 = OUTLINED_FUNCTION_258(v51, sel_initWithSupportedContentTypes_);

          v82 = OUTLINED_FUNCTION_56();
          v86 = 6;
LABEL_23:
          sub_18EFDEB74(v82, v83, v84, v85, v86);
          goto LABEL_26;
        case 7:
          v96 = objc_allocWithZone(LNStructuredDataRepresentableTypeSystemProtocolMetadata);
          v97 = v68;
          v74 = [v96 initWithStructuredRepresentations_];
          goto LABEL_25;
        case 8:
          v116 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
          v117 = v68;
          v74 = [v116 init];
          goto LABEL_25;
        default:
          v72 = objc_allocWithZone(LNConditionallyEnabledSystemProtocolMetadata);
          v73 = v68;
          v74 = [v72 initWithPersistState_];
LABEL_25:
          v81 = v74;
LABEL_26:
          OUTLINED_FUNCTION_297((v67 >> 3) & 0x1FFFFFFFFFFFFFF8);
          *(v236[6] + 8 * v67) = v68;
          *(v236[7] + 8 * v67) = v81;
          v118 = v236[2];
          v119 = __OFADD__(v118, 1);
          v120 = v118 + 1;
          if (v119)
          {
            goto LABEL_96;
          }

          v236[2] = v120;
          if (!v59)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v64 = v62;
  while (1)
  {
    v62 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      JUMPOUT(0x18EF9CBA4);
    }

    if (v62 >= v61)
    {
      break;
    }

    ++v64;
    if (*(v55 + 8 * v62))
    {
      OUTLINED_FUNCTION_229();
      v59 = v66 & v65;
      goto LABEL_14;
    }
  }

  v121 = *v231;
  v122 = *(v231 + 8);
  v230 = sub_18F093B5C();
  if (*(v231 + 32))
  {
    v123 = *(v231 + 24);
  }

  else
  {
    v123 = 0;
  }

  v124 = *(v231 + 16);

  OUTLINED_FUNCTION_168();
  sub_18F093B5C();
  OUTLINED_FUNCTION_216();

  if (*(v231 + 40))
  {
    v125 = *(v231 + 40);
  }

  else
  {
    sub_18F093A5C();
    OUTLINED_FUNCTION_204();
  }

  v126 = sub_18F093A3C();

  v127 = *(v231 + 48);
  v223 = v123;
  v222 = v124;
  v221 = v126;
  if (v127)
  {
    v128 = *(v127 + 16);
    if (v128)
    {
      v129 = v127 + ((*(v219 + 80) + 32) & ~*(v219 + 80));
      v130 = MEMORY[0x1E69E7CC0];
      v131 = *(v219 + 72);
      do
      {
        OUTLINED_FUNCTION_9();
        v132 = OUTLINED_FUNCTION_137();
        sub_18EF86A14(v132, v133);
        v134 = *(v20 + 8);
        v135 = *(v20 + 16);
        OUTLINED_FUNCTION_245();
        if (v136)
        {
          v137 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
          OUTLINED_FUNCTION_9();
          sub_18EF86A14(v20, v240);
          v138 = sub_18EF9FEB8(v240);
          *(&v249 + 1) = v137;
          *&v248 = v138;
        }

        else
        {
          v248 = 0u;
          v249 = 0u;
        }

        OUTLINED_FUNCTION_63();
        sub_18EF86A6C();
        if (*(&v249 + 1))
        {
          sub_18EF914D4(&v248, &v243);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = *(v130 + 2);
            v142 = OUTLINED_FUNCTION_242();
            v130 = sub_18EFA0044(v142, v143, v144, v130);
          }

          v140 = *(v130 + 2);
          v139 = *(v130 + 3);
          if (v140 >= v139 >> 1)
          {
            v145 = OUTLINED_FUNCTION_114(v139);
            v130 = sub_18EFA0044(v145, v140 + 1, 1, v130);
          }

          *(v130 + 2) = v140 + 1;
          sub_18EF914D4(&v243, &v130[32 * v140 + 32]);
        }

        else
        {
          sub_18EF933AC(&v248, &qword_1EACB9180);
        }

        v129 += v131;
        --v128;
      }

      while (v128);
    }

    else
    {
      v130 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v130 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v220 = sub_18EF9CBD0(v130, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v146 = v226[9];
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(v231 + v147, v224);
  sub_18EF9FE2C();
  v148 = v228;
  v218 = v228;
  v149 = sub_18EF9CEB8(v224, v225, v228);
  v150 = v226[10];
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_247();
  *(v151 - 16) = v227;
  *(v151 - 8) = v228;
  v152 = sub_18EF9EBC8(sub_18EFA3E10);
  if (*(v231 + v226[14]))
  {
    MEMORY[0x1EEE9AC00](v152);
    OUTLINED_FUNCTION_97();
    *(v153 - 16) = v227;
    *(v153 - 8) = v228;
    sub_18EF9D97C(sub_18EFA3E10);
    v148 = v228;
  }

  v154 = objc_allocWithZone(LNTypeDisplayRepresentation);
  OUTLINED_FUNCTION_108();
  v155 = sub_18EF9307C();
  v156 = *(v231 + v226[11]);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_97();
  *(v157 - 16) = v227;
  *(v157 - 8) = v148;
  sub_18EF93B88(sub_18EF94A38, v158, v159, _s14CodableWrapperVMa_12);
  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  OUTLINED_FUNCTION_272();
  v160 = sub_18F093DBC();
  OUTLINED_FUNCTION_345(v160, &a15);
  OUTLINED_FUNCTION_390(v226[12]);
  if (v162)
  {
    v163 = *v161;
    v164 = sub_18F093B5C();
    OUTLINED_FUNCTION_323(v164);
  }

  else
  {
    v224 = 0;
  }

  v165 = *(v231 + v226[13]);
  v229 = v155;
  if (v165)
  {
    sub_18EF94FC0(v165);
    OUTLINED_FUNCTION_204();
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v166);
    OUTLINED_FUNCTION_108();
    v241 = sub_18F093A3C();
  }

  else
  {
    v241 = 0;
  }

  v167 = *(v231 + v226[15]);
  if (v167)
  {
    v168 = *(v167 + 16);
    if (v168)
    {
      *&v243 = MEMORY[0x1E69E7CC0];
      sub_18F09411C();
      sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
      v169 = (v167 + 64);
      do
      {
        v171 = *(v169 - 4);
        v170 = *(v169 - 3);
        v172 = *(v169 - 2);
        v173 = *(v169 - 1);
        v174 = *v169;
        v169 += 40;
        *&v248 = v171;
        *(&v248 + 1) = v170;
        *&v249 = v172;
        *(&v249 + 1) = v173;
        v250 = v174;

        sub_18EFCAE3C(&v248);
        sub_18F0940FC();
        v175 = *(v243 + 16);
        sub_18F09412C();
        OUTLINED_FUNCTION_137();
        sub_18F09413C();
        sub_18F09410C();
        --v168;
      }

      while (v168);
    }

    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    OUTLINED_FUNCTION_142();
    v239 = sub_18F093DBC();
  }

  else
  {
    v239 = 0;
  }

  type metadata accessor for LNSystemEntityProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_61();
  sub_18EF8558C(v176);
  OUTLINED_FUNCTION_288();
  v235 = sub_18F093A3C();

  OUTLINED_FUNCTION_390(v226[18]);
  if (v178)
  {
    v179 = *v177;
    v237 = sub_18F093B5C();
  }

  else
  {
    v237 = 0;
  }

  v180 = *(v231 + v226[20]);
  v217 = *(v231 + v226[19]);
  if (v180)
  {
    v181 = *(v180 + 16);
    if (v181)
    {
      OUTLINED_FUNCTION_347();
      sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
      v182 = (v180 + 72);
      do
      {
        v183 = *(v182 - 4);
        v184 = *(v182 - 3);
        v185 = *(v182 - 2);
        v187 = *(v182 - 1);
        v186 = *v182;
        *&v243 = *(v182 - 5);
        *(&v243 + 1) = v183;
        v244 = v184;
        v245 = v185;
        v246 = v187;
        v247 = v186;

        sub_18EFA1084(&v243);
        sub_18F0940FC();
        v188 = *(v242 + 16);
        sub_18F09412C();
        OUTLINED_FUNCTION_137();
        sub_18F09413C();
        sub_18F09410C();
        v182 += 6;
        --v181;
      }

      while (v181);
    }

    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_142();
    v233 = sub_18F093DBC();
  }

  else
  {
    v233 = 0;
  }

  OUTLINED_FUNCTION_390(v226[21]);
  if (v190)
  {
    v191 = *v189;
    v232 = sub_18F093B5C();
  }

  else
  {
    v232 = 0;
  }

  if (*(v231 + v226[22]) == 2)
  {
    v193 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  }

  else
  {
    v192 = *(v231 + v226[22]);
    v193 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v192 & 1 assistantOnly:(v192 >> 8) & 1];
  }

  v216 = v193;
  OUTLINED_FUNCTION_390(v226[23]);
  if (v195)
  {
    v196 = *v194;
    v215 = sub_18F093B5C();
  }

  else
  {
    v215 = 0;
  }

  v197 = *(v231 + v226[24]);
  if (v197)
  {
    v198 = 0;
    v199 = *(v197 + 16);
    v200 = (v197 + 56);
    while (v199 != v198)
    {
      if (v198 >= *(v197 + 16))
      {
        goto LABEL_95;
      }

      v202 = *(v200 - 1);
      v201 = *v200;
      v203 = *(v200 - 3);
      v204 = *(v200 - 2);
      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
      OUTLINED_FUNCTION_404();

      OUTLINED_FUNCTION_393();
      OUTLINED_FUNCTION_124();
      sub_18EFF196C(v205, v206, v207, v208);
      MEMORY[0x193AD88C0]();
      OUTLINED_FUNCTION_386();
      if (v210)
      {
        OUTLINED_FUNCTION_114(v209);
        sub_18F093DFC();
      }

      sub_18F093E3C();
      v200 += 4;
      ++v198;
    }

    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    OUTLINED_FUNCTION_201();
    v211 = sub_18F093DBC();
  }

  else
  {
    v211 = 0;
  }

  v212 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v230 transient:v222 & 1 mangledTypeName:v223 mangledTypeNameByBundleIdentifier:v221 effectiveBundleIdentifiers:v220 displayRepresentation:v229 properties:v225 customIntentTypeClassName:v224 availabilityAnnotations:v241 requiredCapabilities:v239 systemProtocolMetadata:v235 attributionBundleIdentifier:v237 transferableContentTypes:v217 assistantDefinedSchemas:v233 fullyQualifiedTypeName:v232 visibilityMetadata:v216 defaultQueryIdentifier:v215 allowedTargets:v211];
  OUTLINED_FUNCTION_281(v212);

  v213 = OUTLINED_FUNCTION_374();
  sub_18EF933AC(v213, v214);
  OUTLINED_FUNCTION_27();
  sub_18EF86A6C();
  OUTLINED_FUNCTION_259();
}

id sub_18EF9CBD0(uint64_t a1, uint64_t a2, SEL *a3)
{
  OUTLINED_FUNCTION_376();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_189();
  v5 = sub_18F093DBC();

  v6 = [v4 *a3];

  return v6;
}

void OUTLINED_FUNCTION_239()
{
  v1 = *(v0 - 10);
  v2 = *(v0 - 9);
  v3 = *(v0 - 3);
  v4 = *(v0 - 2);
  v5 = *(v0 - 1);
  v6 = *v0;
}

unint64_t sub_18EF9CC4C()
{
  result = qword_1ED5FF498;
  if (!qword_1ED5FF498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EFC2698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF498);
  }

  return result;
}

unint64_t sub_18EF9CCD8()
{
  result = qword_1ED5FF1D0;
  if (!qword_1ED5FF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1D0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_356@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 176);
  v3 = *(v1 - 160);
  *(a1 + 64) = *(v1 - 144);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_18EF9CD40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18EF99EB0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_18EF9CD80(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 0x766F637369447369;
  }
}

unint64_t sub_18EF9CDD0()
{
  result = qword_1ED5FD148;
  if (!qword_1ED5FD148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18EF8558C(&unk_1ED5FD100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD148);
  }

  return result;
}

id sub_18EF9CEB8(uint64_t *a1, uint64_t a2, void *a3)
{
  v72 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v69 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  v74 = sub_18F0932BC();
  v77 = *(v74 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v69 - v19;
  v21 = sub_18F0931CC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s14CodableWrapperVMa_0(0);
  v27 = v26[8];
  v76 = a1;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_18EF933AC(v20, &qword_1EACB78A0);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    sub_18F0931AC();
    sub_18EF825F4(0, &qword_1ED5FD160, 0x1E696B100);
    if (swift_dynamicCast())
    {
      v28 = v78;
      v29 = *(v76 + v26[9]);
      if (v29)
      {
        sub_18EF933FC(v29);
        type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
        sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
        sub_18EF8558C(&unk_1ED5FD778);
        v30 = sub_18F093A3C();
      }

      else
      {
        v30 = 0;
      }

      v63 = v75;
      v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocalizedStringResource:v28 alternatives:v30];

      sub_18EF933AC(v72, &qword_1EACB72C8);
      (*(v22 + 8))(v25, v21);
      goto LABEL_45;
    }

    (*(v22 + 8))(v25, v21);
  }

  v31 = v72;
  sub_18EF9FE2C();
  v32 = v74;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v74);
  v34 = v76;
  v35 = v70;
  v36 = v71;
  if (EnumTagSinglePayload == 1)
  {
    v37 = v26[7];
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v12, 1, v32) != 1)
    {
      sub_18EF933AC(v12, &qword_1EACB72C8);
    }
  }

  else
  {
    (*(v77 + 32))(v14, v12, v32);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v32);
  }

  if (__swift_getEnumTagSinglePayload(v14, 1, v32) == 1)
  {
    sub_18EF933AC(v14, &qword_1EACB72C8);
    v38 = *v34;
    v39 = v34[1];
    v40 = sub_18F093B5C();
    if (v34[3])
    {
      v41 = v34[2];
      v42 = sub_18F093B5C();
    }

    else
    {
      v42 = 0;
    }

    if (v34[5])
    {
      v48 = v34[4];
      v49 = sub_18F093B5C();
    }

    else
    {
      v49 = 0;
    }

    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v35, 1, v32) == 1)
    {
      v53 = v75;
      if (v75)
      {
        sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);
        v54 = v53;
        v55 = [v54 bundleIdentifier];
        v56 = sub_18F093B8C();
        v58 = v57;

        v65 = sub_18F0469EC(v56, v58, 0);
        v32 = v74;
        v36 = v71;
        if (v65 >= 2)
        {
          v66 = [v65 URL];
          sub_18F09327C();
          sub_18F019C6C(v65);
          v64 = 0;
        }

        else
        {
          v64 = 1;
        }

        v35 = v70;
      }

      else
      {
        v64 = 1;
        v32 = v74;
      }

      __swift_storeEnumTagSinglePayload(v36, v64, 1, v32);
      if (__swift_getEnumTagSinglePayload(v35, 1, v32) != 1)
      {
        sub_18EF933AC(v35, &qword_1EACB72C8);
      }
    }

    else
    {
      (*(v77 + 32))(v36, v35, v32);
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v32);
    }

    if (__swift_getEnumTagSinglePayload(v36, 1, v32) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = sub_18F09324C();
      (*(v77 + 8))(v36, v32);
    }

    v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v40 defaultValue:v42 table:v49 bundleURL:v67];

    sub_18EF933AC(v31, &qword_1EACB72C8);
  }

  else
  {
    (*(v77 + 32))(v73, v14, v32);
    v43 = *v34;
    v44 = v34[1];
    v45 = sub_18F093B5C();
    if (v34[3])
    {
      v46 = v34[2];
      v47 = sub_18F093B5C();
    }

    else
    {
      v47 = 0;
    }

    v50 = v75;
    if (v34[5])
    {
      v51 = v34[4];
      v52 = sub_18F093B5C();
    }

    else
    {
      v52 = 0;
    }

    v59 = sub_18F09324C();
    v60 = *(v34 + v26[9]);
    if (v60)
    {
      sub_18EF933FC(v60);
      type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
      sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF8558C(&unk_1ED5FD778);
      v61 = sub_18F093A3C();
      v32 = v74;
    }

    else
    {
      v61 = 0;
    }

    v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v45 defaultValue:v47 table:v52 bundleURL:v59 alternatives:v61];

    sub_18EF933AC(v31, &qword_1EACB72C8);
    (*(v77 + 8))(v73, v32);
  }

LABEL_45:
  sub_18EF86A6C();
  return v62;
}

void sub_18EF9D85C()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_145();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_21();
  v9 = _s14CodableWrapperVMa_1(v8);
  v10 = OUTLINED_FUNCTION_95(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  sub_18EF825F4(0, &qword_1ED5FE2F8, off_1E72AFE98);
  sub_18EF86A14(v2, v3);
  OUTLINED_FUNCTION_363();
  sub_18EF9FE2C();
  v13 = v1;
  v14 = OUTLINED_FUNCTION_197();
  *v0 = sub_18EF938B4(v14, v15, v1);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_387()
{
  v2 = *v0;
  result = *(v1 - 112);
  v4 = *(v1 - 312);
  return result;
}

id sub_18EF9DA9C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v49 - v7;
  v51 = _s14CodableWrapperVMa_7(0);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49 - v19;
  v21 = _s14CodableWrapperVMa_6(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v49 - v27;
  v29 = _s14CodableWrapperVMa_5(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
  {
    sub_18EF88240(v28, v32);
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_18EF933AC(v20, &qword_1EACB7870);
      v36 = *(v29 + 20);
      sub_18EF9FE2C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v51) == 1)
      {
        sub_18EF86A6C();
        v33 = &qword_1EACB7878;
        v34 = v8;
        goto LABEL_3;
      }

      v43 = v49;
      sub_18EF88240(v8, v49);
      sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
      v44 = v50;
      sub_18EF86A14(v43, v50);
      v45 = _s14CodableWrapperOMa(0);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
      v46 = sub_18EFA6BE0();
      sub_18EF933AC(v44, &qword_1EACB7830);
      if (!v46)
      {
        sub_18EF86A6C();
        sub_18EF86A6C();
        return 0;
      }

      v35 = [objc_allocWithZone(LNActionDescriptionIconImage) initWithImage_];
    }

    else
    {
      sub_18EF88240(v20, v24);
      v37 = *v24;
      v38 = v24[1];
      sub_18EF9FE2C();
      v39 = sub_18F0932BC();
      if (__swift_getEnumTagSinglePayload(v15, 1, v39) == 1)
      {
        v40 = *(v21 + 20);
        v41 = v53;
        sub_18EF9FE2C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v39);

        if (EnumTagSinglePayload != 1)
        {
          sub_18EF933AC(v15, &qword_1EACB72C8);
        }
      }

      else
      {
        v41 = v53;
        (*(*(v39 - 8) + 32))(v53, v15, v39);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v39);
      }

      v47 = objc_allocWithZone(LNActionDescriptionIconNamed);
      v35 = sub_18F00DD44(v37, v38, v41);
    }

    sub_18EF86A6C();
    sub_18EF86A6C();
    return v35;
  }

  v33 = &qword_1EACB7868;
  v34 = v28;
LABEL_3:
  sub_18EF933AC(v34, v33);
  return 0;
}

uint64_t sub_18EF9E184(void *a1, uint64_t a2, void *a3)
{
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v7 = _s14CodableWrapperVMa_10(0);
  v8 = sub_18EF9E62C(*(a1 + v7[7]));
  if (v8)
  {
    v9 = a1[1];
    v57 = v8;
    v55 = v3;
    if (v9)
    {
      v10 = *a1;
      v8 = sub_18F093B5C();
      v56 = v8;
    }

    else
    {
      v56 = 0;
    }

    v53 = *(a1 + v7[8]);
    v12 = v7[5];
    MEMORY[0x1EEE9AC00](v8);
    v47 = a2;
    v48 = a3;
    v54 = sub_18EF9EBC8(sub_18EF92DAC);
    v13 = v7[6];
    MEMORY[0x1EEE9AC00](v54);
    v58 = a2;
    v47 = a2;
    v48 = a3;
    v61 = a3;
    result = sub_18EF9EBC8(sub_18EFA3E10);
    v50 = 0;
    v51 = result;
    v15 = 0;
    v52 = v7;
    v16 = v7[9];
    v59 = a1;
    v17 = *(a1 + v16);
    v60 = MEMORY[0x1E69E7CC0];
    v62 = MEMORY[0x1E69E7CC0];
    v18 = *(v17 + 16);
    v19 = v17 + 56;
    v49 = v17 + 56;
LABEL_7:
    v20 = (v19 + 32 * v15);
    while (v18 != v15)
    {
      if (v15 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      ++v15;
      v21 = v20 + 4;
      v23 = *(v20 - 1);
      v22 = *v20;
      v25 = *(v20 - 3);
      v24 = *(v20 - 2);
      sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);

      sub_18EFA3F8C(v22);
      result = sub_18EFA3E28(v25, v24, v23, v22);
      v20 = v21;
      if (result)
      {
        MEMORY[0x193AD88C0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F093DFC();
        }

        result = sub_18F093E3C();
        v60 = v62;
        v19 = v49;
        goto LABEL_7;
      }
    }

    sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
    v26 = sub_18F093DBC();

    v28 = v52;
    v29 = v59;
    v30 = *(v59 + v52[10]);
    MEMORY[0x1EEE9AC00](v27);
    a2 = v58;
    v47 = v58;
    v48 = v61;
    sub_18EF92A54(sub_18F0206B4, &v46, v31, sub_18EFA4264);
    type metadata accessor for LNValueTypeSpecificMetadataKey();
    sub_18EF8558C(&qword_1ED5FF088);
    v32 = sub_18F093A3C();

    v33 = v29 + v28[13];
    if (*(v33 + 8))
    {
      if (*(v29 + v28[12]))
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = *v33;
    }

    v35 = *(v29 + v28[11]);
    v36 = v28[15];
    v37 = (v29 + v28[14]);
    if (*(v37 + 8))
    {
      v38 = 0;
    }

    else
    {
      v38 = *v37;
    }

    if (*(v29 + v36 + 8))
    {
      v39 = *(v29 + v36);
      v40 = sub_18F093B5C();
    }

    else
    {
      v40 = 0;
    }

    v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v45 = v35;
    v46 = v34;
    v43 = v56;
    v42 = v57;
    v44 = v51;
    v11 = [v41 initWithName:v56 valueType:v57 optional:v53 title:v54 description:v51 resolvableInputTypes:v26 typeSpecificMetadata:v32 dynamicOptionsSupport:v45 inputConnectionBehavior:v46 capabilities:v38 queryIdentifier:v40];

    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0;
  }

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v11;
}

id sub_18EF9E62C(unint64_t a1)
{
  v2 = a1 >> 60;
  result = 0;
  switch(v2)
  {
    case 1uLL:
      memcpy(v25, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x79uLL);
      if (v25[11])
      {
        sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
        result = sub_18EFD255C(v25);
      }

      else
      {
        if ((v25[15] & 1) == 0)
        {
          v21 = LNAnyAppValueType;
          goto LABEL_22;
        }

        sub_18EF825F4(0, &unk_1ED5FE710, off_1E72B0038);
        result = sub_18EF9E9CC(v25);
      }

      break;
    case 2uLL:
      v14 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      sub_18EF825F4(0, &qword_1ED5FDCB8, off_1E72AFF00);
      sub_18EFA3D24(v15);
      result = sub_18EFA3FA0(v15, v16, v17);
      break;
    case 3uLL:
      v6 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);

      v9 = &selRef_initWithEnumerationIdentifier_;
      goto LABEL_16;
    case 4uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1EACB7248, off_1E72AFED0);

      result = sub_18EFD261C(v20);
      break;
    case 5uLL:
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1ED5FCF10, off_1E72B0098);
      result = sub_18EFB0F38(v22);
      break;
    case 6uLL:
      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, qword_1ED5FD958, off_1E72B0080);
      result = sub_18EFA4058(v18);
      break;
    case 7uLL:
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1ED5FD170, off_1E72B0160);
      result = sub_18EFA756C(v24);
      break;
    case 8uLL:
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1EACB7098, off_1E72AFF78);
      result = sub_18EFD27C4(v13);
      break;
    case 9uLL:
      v23 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v7 = *(v23 + 16);
      v8 = *(v23 + 24);
      sub_18EF825F4(0, &unk_1EACB6E00, off_1E72AFF18);

      v9 = &selRef_initWithIdentifier_;
LABEL_16:
      result = sub_18EF9EB60(v7, v8, v9);
      break;
    case 0xAuLL:
      v5 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1EACB6EF8, off_1E72B0058);
      result = sub_18EFF1118(v5, off_1E72B0058, &selRef_recurrenceRuleType);
      break;
    case 0xBuLL:
      v10 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      sub_18EF825F4(0, &qword_1EACB8790, off_1E72AFF58);
      result = sub_18EFD2818(v11, v12);
      break;
    case 0xCuLL:
      return result;
    case 0xDuLL:
      if (a1 == 0xD000000000000000)
      {
        v21 = LNQueryParametersValueType;
      }

      else
      {
        v21 = LNEntityIdentifierValueType;
      }

LABEL_22:
      result = [objc_allocWithZone(v21) init];
      break;
    default:
      v4 = *(a1 + 16);
      sub_18EF825F4(0, &unk_1ED5FE198, off_1E72B00F8);
      result = sub_18EF94F6C(v4);
      break;
  }

  return result;
}

id sub_18EF9E9CC(uint64_t a1)
{
  if (*(a1 + 48) >> 64 && *(a1 + 72) >> 64 || (v2 = *(a1 + 56), v2 != 1) && (v8 = *(a1 + 48), v9 = *(a1 + 56), v2) && *(a1 + 96) >> 64)
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    objc_allocWithZone(LNSystemEntityValueType);
    sub_18EF9FE2C();
    sub_18EF9FE2C();

    return sub_18EFACD38();
  }

  else
  {
    sub_18EF825F4(0, &unk_1ED5FE710, off_1E72B0038);
    v7 = *a1;
    v6 = *(a1 + 8);

    return sub_18EF9EB60(v7, v6, &selRef_initWithIdentifier_);
  }
}

id sub_18EF9EB60(uint64_t a1, uint64_t a2, SEL *a3)
{
  OUTLINED_FUNCTION_376();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_189();
  sub_18F093B5C();
  OUTLINED_FUNCTION_357();

  v6 = [v5 *a3];

  return v6;
}

uint64_t sub_18EF9EBC8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s14CodableWrapperVMa_0(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v10, v6);
  a1(&v13, v6);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v13;
  }

  return result;
}

uint64_t sub_18EF9ED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))();
  OUTLINED_FUNCTION_8_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, a2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_18EF9EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  v8 = sub_18F093F3C();
  v9 = OUTLINED_FUNCTION_7(v8);
  v45 = v10;
  v46 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_135();
  v43 = v14;
  v44 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v42 = v20;
  OUTLINED_FUNCTION_1_3();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_22();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_1_3();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_22();
  v36 = v35 - v34;
  (*(v22 + 16))(v28, v4, a3);
  if (__swift_getEnumTagSinglePayload(v28, 1, v7) == 1)
  {
    (*(v16 + 8))(a2, AssociatedTypeWitness);
    (*(v45 + 8))(a1, v46);
    return (*(v22 + 8))(v28, a3);
  }

  else
  {
    (*(v22 + 8))(v4, a3);
    v38 = *(v30 + 32);
    v38(v36, v28, v7);
    (*(v16 + 16))(v42, a2, AssociatedTypeWitness);
    (*(v45 + 16))(v43, a1, v46);
    (*(v44 + 96))(v43, v42, v7);
    (*(v16 + 8))(a2, AssociatedTypeWitness);
    (*(v45 + 8))(a1, v46);
    v38(v4, v36, v7);
    OUTLINED_FUNCTION_8_0();
    return __swift_storeEnumTagSinglePayload(v39, v40, v41, v7);
  }
}

uint64_t sub_18EF9F1FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 33))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_18EF9F23C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x18EF9F440);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

unint64_t sub_18EF9F4F8()
{
  result = qword_1ED5FE6E8;
  if (!qword_1ED5FE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6E8);
  }

  return result;
}

void OUTLINED_FUNCTION_113()
{

  sub_18EF84150();
}

void OUTLINED_FUNCTION_129()
{
  *(v1 - 136) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

unint64_t sub_18EF9F694()
{
  result = qword_1ED5FEC60;
  if (!qword_1ED5FEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC60);
  }

  return result;
}

uint64_t sub_18EF9F6E8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8070, &qword_18F0A0F38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F95C();
  sub_18F09459C();
  type metadata accessor for LNSideEffect(0);
  HIBYTE(v10) = 0;
  sub_18EF8558C(&unk_1ED5FE0E8);
  sub_18F0942CC();
  v8 = v11;
  type metadata accessor for LNChangeEffect(0);
  HIBYTE(v10) = 1;
  sub_18EF8558C(&unk_1ED5FE0C0);
  sub_18F0942CC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18EF9F930@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EF9F6E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_18EF9F95C()
{
  result = qword_1ED5FE0B0;
  if (!qword_1ED5FE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE0B0);
  }

  return result;
}

uint64_t sub_18EF9FA74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_18EF9FAC4()
{
  result = qword_1ED5FF270;
  if (!qword_1ED5FF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18EF8558C(&unk_1ED5FF178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF270);
  }

  return result;
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_18F0938FC();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_18F093B8C();
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  *(v0 + 392) = *(v0 + 320);
  *(v0 + 408) = v1;

  return AssistantSchemaVersion.description.getter();
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return swift_slowAlloc();
}

uint64_t sub_18EF9FD20()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_106(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[10];
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
    OUTLINED_FUNCTION_106(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
      v6 = v1[12];
    }
  }

  v9 = OUTLINED_FUNCTION_120(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t sub_18EF9FE2C()
{
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_269(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_108();
  v10(v9);
  return v0;
}

id sub_18EF9FEB8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = sub_18F093B5C();
  v10 = *(_s14CodableWrapperVMa(0) + 24);
  sub_18EF9FE2C();
  v11 = sub_18F0932BC();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
  {
    v12 = sub_18F09324C();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v7 bundleIdentifier:v9 url:v12];

  sub_18EF86A6C();
  return v13;
}

char *sub_18EFA0044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *static DaemonRecord.from(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED5FDB08 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_4_7();
  v4 = qword_1ED5FDAE0;
  v5 = sub_18EFA0A74(qword_1ED5FDAE0);

  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AD8BA0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v9 = &v7[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier];
    OUTLINED_FUNCTION_4_7();
    v10 = *v9 == a1 && *(v9 + 1) == a2;
    if (v10 || (sub_18F09444C() & 1) != 0)
    {

      return v8;
    }
  }

  return 0;
}

uint64_t sub_18EFA0A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_18F0941BC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_18EFA0AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v11 = *a1;
  v10 = a1[1];
  sub_18EF825F4(0, &qword_1ED5FE098, off_1E72AFEB8);
  sub_18EF9FE2C();
  v12 = a2;
  result = sub_18EFA0C40(v11, v10, v9, a2);
  *a3 = result;
  return result;
}

void *sub_18EFA0BE8(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  result = a1(&v8, v7);
  if (!v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

id sub_18EFA0C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSideEffect:a1 changeEffect:a2];

  sub_18EF933AC(a3, &qword_1EACB72C8);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_12LinkMetadata012TypeSpecificB7Storage33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLO(void *a1)
{
  if (*a1 >> 61 == 7)
  {
    return (*a1 >> 3) + 14;
  }

  else
  {
    return *a1 >> 60;
  }
}

double sub_18EFA0D4C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18EFA0D90(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_18EFA0D90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8078, &qword_18F0A0F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA0FDC();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  v11 = sub_18F09427C();
  v24 = v12;
  v26 = 1;
  v22 = sub_18F09427C();
  v23 = v13;
  v25 = 2;
  v14 = sub_18F09423C();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

unint64_t sub_18EFA0FDC()
{
  result = qword_1ED5FCF90;
  if (!qword_1ED5FCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF90);
  }

  return result;
}

uint64_t sub_18EFA1038(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6E69616D6F64;
}

id sub_18EFA1084(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sub_18F093B5C();
  v5 = a1[2];
  v6 = a1[3];
  v7 = sub_18F093B5C();
  if (a1[5])
  {
    v8 = a1[4];

    v9 = sub_18F093B5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v4 version:v7 domain:v9];

  return v10;
}

uint64_t sub_18EFA1164(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8450, &qword_18F0A1118);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA1394();
  sub_18F09459C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v10[31] = 0;
    v8 = sub_18F0942AC();
    v10[30] = 1;
    sub_18F09423C();
    v10[29] = 2;
    sub_18EF8882C();
    sub_18F09426C();
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v8;
}

unint64_t sub_18EFA1394()
{
  result = qword_1ED5FDFE8;
  if (!qword_1ED5FDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFE8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_18EFA1418()
{
  result = qword_1ED5FDCE8;
  if (!qword_1ED5FDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDCE8);
  }

  return result;
}

uint64_t sub_18EFA146C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D78, &qword_18F0A7C90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA16C8();
  sub_18F09459C();
  v11 = 0;
  sub_18EF8882C();
  sub_18F0942CC();
  v9 = v10;
  type metadata accessor for LNArrayValueTypeCapabilities(0);
  v11 = 1;
  sub_18EF8558C(&unk_1ED5FDCD0);
  sub_18F09426C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_18EFA1694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18EFA146C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_18EFA16C8()
{
  result = qword_1ED5FDD10;
  if (!qword_1ED5FDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDD10);
  }

  return result;
}

uint64_t sub_18EFA1720(char a1)
{
  if (a1)
  {
    return 0x696C696261706163;
  }

  else
  {
    return 0x61567265626D656DLL;
  }
}

unint64_t sub_18EFA182C()
{
  result = qword_1ED5FD9F8;
  if (!qword_1ED5FD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD9F8);
  }

  return result;
}

void sub_18EFA1880()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_311(v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_7(v8);
  v17 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_163();
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v3();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v1)
  {
    sub_18F0942AC();
    v14 = *(v17 + 8);
    v15 = OUTLINED_FUNCTION_279();
    v16(v15);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void sub_18EFA19A8(void *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_18EFA1A00()
{
  result = qword_1ED5FDA20;
  if (!qword_1ED5FDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA20);
  }

  return result;
}

unint64_t sub_18EFA1AE4()
{
  result = qword_1ED5FD600;
  if (!qword_1ED5FD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD600);
  }

  return result;
}

uint64_t sub_18EFA1B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_18EFA1BA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x72 && *(a1 + 8))
    {
      v2 = *a1 + 113;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x71)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_18EFA1BEC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FA0, &qword_18F0A0E88);
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v42 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FA8, &qword_18F0A0E90);
  v46 = *(v44 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FB0, &qword_18F0A0E98);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7FB8, &qword_18F0A0EA0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2438();
  v18 = v51;
  sub_18F09459C();
  if (v18)
  {
    goto LABEL_10;
  }

  v42 = v9;
  v43 = v12;
  v51 = a1;
  v19 = sub_18F0942EC();
  sub_18EF89690(v19, 0);
  if (v22 == v23 >> 1)
  {
    goto LABEL_9;
  }

  if (v22 >= (v23 >> 1))
  {
    __break(1u);
    return;
  }

  v24 = *(v21 + v22);
  sub_18F019378(v22 + 1, v23 >> 1, v20, v21, v22, v23);
  v26 = v25;
  v28 = v27;
  swift_unknownObjectRelease();
  if (v26 != v28 >> 1)
  {
LABEL_9:
    v33 = sub_18F0940BC();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v35 = &_s14CodableWrapperON_1;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v16, v13);
    a1 = v51;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v53 = 1;
      sub_18EFC4298();
      v29 = v8;
      sub_18F09421C();
      swift_allocObject();
      sub_18EFC42EC();
      v30 = v44;
      v31 = v29;
      sub_18F0942CC();
      v32 = v50;
      swift_unknownObjectRelease();
      (*(v46 + 8))(v31, v30);
    }

    else
    {
      v54 = 2;
      sub_18EFA25DC();
      v40 = v49;
      sub_18F09421C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7CA8, &qword_18F0A0CD0);
      swift_allocBox();
      _s24WhenClauseCodableWrapperVMa(0);
      sub_18EF8558C(&unk_1ED5FD560);
      v41 = v47;
      sub_18F0942CC();
      v32 = v50;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v40, v41);
    }

    (*(v32 + 8))(v16, v13);
  }

  else
  {
    v52 = 0;
    sub_18EFA3100();
    v37 = v43;
    sub_18F09421C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7CD0, &qword_18F0A0CD8);
    swift_allocBox();
    _s27ActionSummaryCodableWrapperVMa(0);
    sub_18EF8558C(&unk_1ED5FDC80);
    v38 = v42;
    sub_18F0942CC();
    v39 = v50;
    swift_unknownObjectRelease();
    (*(v45 + 8))(v37, v38);
    (*(v39 + 8))(v16, v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

uint64_t sub_18EFA23CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_18EFA240C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_18EFA1BEC(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_18EFA2438()
{
  result = qword_1ED5FDC60;
  if (!qword_1ED5FDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC60);
  }

  return result;
}

uint64_t sub_18EFA248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFA24B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFA24B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75536E6F69746361 && a2 == 0xED00007972616D6DLL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7453686374697773 && a2 == 0xEF746E656D657461;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x75616C436E656877 && a2 == 0xEA00000000006573)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

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

unint64_t sub_18EFA25DC()
{
  result = qword_1ED5FD590;
  if (!qword_1ED5FD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD590);
  }

  return result;
}

uint64_t sub_18EFA2638(char a1)
{
  if (!a1)
  {
    return 0x75536E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x7453686374697773;
  }

  return 0x75616C436E656877;
}

uint64_t sub_18EFA26CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = _s14CodableWrapperVMa_22(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8DA8, &qword_18F0A7CA8);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v21 - v8;
  v10 = _s24WhenClauseCodableWrapperVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2ADC();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v10;
  v15 = v23;
  v16 = v13;
  LOBYTE(v27) = 0;
  sub_18EF8558C(&unk_1ED5FD4F0);
  v18 = v24;
  v17 = v25;
  sub_18F0942CC();
  sub_18EF88240(v18, v16);
  v26 = 1;
  sub_18EF9561C();
  sub_18F0942CC();
  *(v16 + *(v21 + 20)) = v27;
  v26 = 2;
  sub_18F09426C();
  v19 = *(v21 + 24);
  (*(v15 + 8))(v9, v17);
  *(v16 + v19) = v27;
  sub_18EF86A14(v16, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

unint64_t sub_18EFA2ADC()
{
  result = qword_1ED5FD578;
  if (!qword_1ED5FD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD578);
  }

  return result;
}

uint64_t sub_18EFA2B38(char a1)
{
  if (!a1)
  {
    return 0x6F697469646E6F63;
  }

  if (a1 == 1)
  {
    return 1852139639;
  }

  return 0x736977726568746FLL;
}

uint64_t sub_18EFA2B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E80, &qword_18F0A7D30);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = _s14CodableWrapperVMa_22(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 32);
  v18 = _s19BasicCodableWrapperOMa(0);
  v28 = v17;
  __swift_storeEnumTagSinglePayload(v16 + v17, 1, 1, v18);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2F8C();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v16 + v28, &unk_1EACB72F8);
  }

  else
  {
    v24 = v7;
    v32 = 0;
    v21 = v26;
    v20 = v27;
    *v16 = sub_18F09427C();
    v16[1] = v22;
    type metadata accessor for LNActionConfigurationConditionComparisonOperator(0);
    v31 = 1;
    sub_18EF8558C(&unk_1ED5FD470);
    sub_18F0942CC();
    v16[2] = v29;
    v30 = 2;
    sub_18EF8558C(&unk_1ED5FE008);
    sub_18F09426C();
    (*(v21 + 8))(v11, v20);
    sub_18EF872D4();
    sub_18EF86A14(v16, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFA2F8C()
{
  result = qword_1ED5FD508;
  if (!qword_1ED5FD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD508);
  }

  return result;
}

uint64_t sub_18EFA2FE8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x65756C6176;
}

unint64_t sub_18EFA3100()
{
  result = qword_1ED5FDC38;
  if (!qword_1ED5FDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC38);
  }

  return result;
}

uint64_t sub_18EFA3174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8DC0, &qword_18F0A7CB8);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - v7;
  v9 = _s27ActionSummaryCodableWrapperVMa(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = sub_18F0932BC();
  v37 = v14;
  v16 = v13;
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v15);
  v18 = a1[3];
  v17 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_18EFA3620();
  v19 = v35;
  sub_18F09459C();
  if (v19)
  {
    v20 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    sub_18F01E5A4(0, 0);
    sub_18EF933AC(v16 + v20, &qword_1EACB72C8);
  }

  else
  {
    v41 = 0;
    sub_18EFA3674();
    sub_18F09426C();
    v21 = v39;
    v22 = v40;
    v23 = v8;
    v24 = v16;
    v35 = v38;
    *v16 = v38;
    v16[1] = v21;
    v31[1] = v22;
    v31[2] = v21;
    v16[2] = v22;
    LOBYTE(v38) = 1;
    sub_18EF8558C(&unk_1ED5FF550);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(v38) = 2;
    v25 = sub_18F09423C();
    v26 = v33;
    v27 = (v16 + *(v9 + 24));
    *v27 = v25;
    v27[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    v41 = 3;
    sub_18EFA3C14(&unk_1ED5FDD20);
    v29 = v34;
    sub_18F0942CC();
    (*(v26 + 8))(v23, v29);
    *(v24 + *(v9 + 28)) = v38;
    sub_18EF86A14(v24, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFA3620()
{
  result = qword_1ED5FDC98;
  if (!qword_1ED5FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC98);
  }

  return result;
}

unint64_t sub_18EFA3674()
{
  result = qword_1ED5FDC00;
  if (!qword_1ED5FDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC00);
  }

  return result;
}

unint64_t sub_18EFA36D0(char a1)
{
  result = 0x537972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x5255656C646E7562;
      break;
    case 2:
      result = 0x656C626174;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EFA377C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EFA3838);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
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
          result = OUTLINED_FUNCTION_181(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EFA3860(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EFA38EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8DE0, &qword_18F0A7CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA3B74();
  sub_18F09459C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_18F09427C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    v10[15] = 1;
    sub_18EFA3C14(&unk_1ED5FDD20);
    sub_18F0942CC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18EFA3B14@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_18EFA3B74()
{
  result = qword_1ED5FDB58;
  if (!qword_1ED5FDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB58);
  }

  return result;
}

uint64_t sub_18EFA3BD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

unint64_t sub_18EFA3C14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7768, &qword_18F09BEF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EFA3C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18EFA3CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416(a1);
  }

  return OUTLINED_FUNCTION_170(v2);
}

unint64_t sub_18EFA3D24(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EFA3D90(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_18EFA3DA4(result);
  }

  return result;
}

unint64_t sub_18EFA3DA4(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:

      break;
    default:
      return result;
  }

  return result;
}

id sub_18EFA3E28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != 1 || !a3)
  {
    if (a1)
    {
    }

    else
    {
      if ((~a4 & 0xF000000000000007) == 0)
      {

        return 0;
      }

      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      sub_18EFA3D24(a4);
      v9 = sub_18EF9E62C(a4);
      if (v9)
      {
        v10 = v9;
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValueType_];
        sub_18EFA3D90(a4);

        sub_18EFA3D90(a4);
        return v7;
      }

      sub_18EFA3D90(a4);
    }

    sub_18EFA3D90(a4);
    return 0;
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v6 = sub_18F093B5C();

  v7 = [v5 initWithQueryType_];

  sub_18EFA3D90(a4);

  return v7;
}

unint64_t sub_18EFA3F8C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_18EFA3D24(result);
  }

  return result;
}

id sub_18EFA3FA0(unint64_t a1, uint64_t a2, char a3)
{
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v6 = sub_18EF9E62C(a1);
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      a2 = 3;
    }

    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMemberValueType:v6 capabilities:a2];

    sub_18EFA3DA4(a1);
  }

  else
  {
    sub_18EFA3DA4(a1);
    return 0;
  }

  return v8;
}

id sub_18EFA4058(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 14:
        v1 = &selRef_currencyAmountValueType;
        break;
      case 12:
        v1 = &selRef_fileValueType;
        break;
      case 13:
        v1 = &selRef_paymentMethodValueType;
        break;
      case 3:
        v1 = &selRef_personValueType;
        break;
      default:
        return 0;
    }
  }

  else
  {
    v1 = &selRef_applicationValueType;
  }

  return [objc_opt_self() *v1];
}

char *sub_18EFA40F4(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (1)
    {
      v14 = *v6;

      a1(&v11, &v14);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        sub_18EF914D4(&v11, v13);
        sub_18EF914D4(v13, &v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_18EFA0044(0, *(v7 + 2) + 1, 1, v7);
        }

        v9 = *(v7 + 2);
        v8 = *(v7 + 3);
        if (v9 >= v8 >> 1)
        {
          v7 = sub_18EFA0044((v8 > 1), v9 + 1, 1, v7);
        }

        *(v7 + 2) = v9 + 1;
        sub_18EF914D4(&v11, &v7[32 * v9 + 32]);
      }

      else
      {
        sub_18EF933AC(&v11, &qword_1EACB9180);
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

id sub_18EFA4278(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s24WhenClauseCodableWrapperVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s27ActionSummaryCodableWrapperVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!(a1 >> 62))
  {
    v19 = swift_projectBox();
    sub_18EF86A14(v19, v13);
    sub_18EF825F4(0, &qword_1ED5FDBD0, off_1E72AFEC0);
    v18 = sub_18EFA4934(v13, a2, a3);
LABEL_6:
    sub_18EF86A6C();
    return v18;
  }

  if (a1 >> 62 != 1)
  {
    v20 = swift_projectBox();
    sub_18EF86A14(v20, v9);
    sub_18EF825F4(0, &unk_1ED5FD650, off_1E72AFE68);
    v18 = sub_18EFA4484(v9, a2, a3);
    goto LABEL_6;
  }

  v14 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  v15 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *(v14 + 32);
  sub_18EF825F4(0, &unk_1ED5FD518, off_1E72AFE58);
  return sub_18EFC6860(v15, v16, v17, a2, a3);
}

id sub_18EFA4484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = _s14CodableWrapperVMa_22(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &unk_1ED5FD4E0, off_1E72AFE48);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a3;
  result = sub_18EFA468C(v13, v9, a3);
  if (result)
  {
    v16 = result;
    sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);
    v17 = _s24WhenClauseCodableWrapperVMa(0);
    v18 = sub_18EFA4278(*(a1 + *(v17 + 20)), a2, a3);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + *(v17 + 24));
      if ((~v20 & 0xF000000000000007) != 0)
      {

        v21 = sub_18EFA4278(v20, a2, a3);
        sub_18EFA4FC0(v20);
      }

      else
      {
        v21 = 0;
      }

      sub_18EF825F4(0, &unk_1ED5FD650, off_1E72AFE68);
      return sub_18EFA4F58(v16, v19, v21);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_18EFA468C(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_18F093B5C();
  v10 = a1[2];
  v11 = *(_s14CodableWrapperVMa_22(0) + 24);
  v12 = sub_18EFA4790(sub_18EFC74D8);
  v13 = [v6 initWithParameterIdentifier:v9 comparisonOperator:v10 value:v12];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v13;
}

uint64_t sub_18EFA4790(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s19BasicCodableWrapperOMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v10, v6);
  a1(&v13, v6);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v13;
  }

  return result;
}

id sub_18EFA4934(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-v11];
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v26 = a2;
  v27 = a3;
  v16 = sub_18EFA4B50(sub_18EFA4D04, v25, v13, v14, v15);
  v17 = _s27ActionSummaryCodableWrapperVMa(0);
  v18 = v17[5];
  sub_18EF9FE2C();
  v19 = sub_18F0932BC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
  {
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v19) != 1)
    {
      sub_18EF933AC(v10, &qword_1EACB72C8);
    }
  }

  else
  {
    (*(*(v19 - 8) + 32))(v12, v10, v19);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  }

  v20 = (a1 + v17[6]);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(a1 + v17[7]);
  objc_allocWithZone(LNActionSummary);

  return sub_18EFA4E30(v16, v12, v21, v22);
}

uint64_t sub_18EFA4B50(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;

  a1(&v9, v8);

  if (v5)
  {

    __break(1u);
  }

  else
  {

    return v9;
  }

  return result;
}

void sub_18EFA4C04()
{
  OUTLINED_FUNCTION_180();
  v19 = v1;
  v20 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_46();
  v15 = *v9;
  v14 = v9[1];
  v16 = v9[2];
  sub_18EF825F4(0, v5, v3);
  OUTLINED_FUNCTION_366();
  sub_18EF9FE2C();
  v17 = v7;

  v18 = OUTLINED_FUNCTION_318();
  *v19 = v20(v18);
  OUTLINED_FUNCTION_177();
}

id sub_18EFA4D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_18F093B5C();
  v9 = sub_18F093DBC();

  v10 = [v7 initWithFormatString:v8 parameterIdentifiers:v9];

  sub_18EF933AC(a4, &qword_1EACB72C8);
  return v10;
}

id sub_18EFA4E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_18F0932BC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v9) != 1)
  {
    v10 = sub_18F09324C();
    (*(*(v9 - 8) + 8))(a2, v9);
  }

  if (a4)
  {
    v11 = sub_18F093B5C();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_18F093DBC();

  v13 = [v5 initWithSummaryString:a1 bundleURL:v10 table:v11 otherParameterIdentifiers:v12];

  return v13;
}

id sub_18EFA4F58(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCondition:a1 when:a2 otherwise:a3];

  return v6;
}

uint64_t sub_18EFA4FC0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So11LNValueTypeC12LinkMetadataE14CodableWrapper33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x72)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_187()
{
  *(v1 - 344) = v0;

  return swift_unknownObjectRelease();
}

void LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v23;
  a20 = v24;
  v162 = v25;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_204();
  v29 = _s14CodableWrapperVMa_0(v28);
  v30 = OUTLINED_FUNCTION_95(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22();
  v160 = v34 - v33;
  v35 = OUTLINED_FUNCTION_237();
  v36 = _s14CodableWrapperVMa(v35);
  v37 = OUTLINED_FUNCTION_45(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_42();
  v44 = (v42 - v43);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v149 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v49 = OUTLINED_FUNCTION_95(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_301();
  MEMORY[0x1EEE9AC00](v52);
  v158 = v27;
  v164 = &v149 - v53;
  sub_18EF9FE2C();
  v54 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v55 = *(v20 + *(v54 + 52));
  if (v55 != 2 && (v55 & 1) != 0 || (static LNEnumMetadata.enumIdentifierIsSystem(enumIdentifier:)(*v20, v20[1]) & 1) != 0)
  {
    sub_18F09323C();
    v56 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v56);
    sub_18EF872D4();
    v57 = *v20;
    v58 = v20[1];
  }

  v156 = sub_18F093B5C();
  if (v20[3])
  {
    v59 = v20[2];
    v60 = v20[3];
  }

  v61 = sub_18F093B5C();
  OUTLINED_FUNCTION_234(v61);

  v62 = v20[4];
  v161 = v54;
  if (!v62)
  {
    sub_18F093A5C();
    OUTLINED_FUNCTION_295();
  }

  v159 = v22;

  v154 = sub_18F093A3C();

  v63 = v20[5];
  v64 = MEMORY[0x1E69E7CC0];
  v165 = v20;
  v157 = v21;
  LODWORD(v163) = v55;
  if (v63)
  {
    v65 = *(v63 + 16);
    if (v65)
    {
      v66 = v63 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v67 = MEMORY[0x1E69E7CC0];
      v68 = *(v39 + 72);
      do
      {
        OUTLINED_FUNCTION_9();
        sub_18EF86A14(v66, v47);
        v69 = *(v47 + 1);
        v70 = *(v47 + 2);
        OUTLINED_FUNCTION_245();
        if (v71)
        {
          v72 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
          OUTLINED_FUNCTION_9();
          v73 = OUTLINED_FUNCTION_368();
          sub_18EF86A14(v73, v74);
          v75 = sub_18EF9FEB8(v44);
          *(&v167 + 1) = v72;
          *&v166 = v75;
        }

        else
        {
          v166 = 0u;
          v167 = 0u;
        }

        OUTLINED_FUNCTION_63();
        sub_18EF86A6C();
        if (*(&v167 + 1))
        {
          sub_18EF914D4(&v166, &v168);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = *(v67 + 2);
            v79 = OUTLINED_FUNCTION_242();
            v67 = sub_18EFA0044(v79, v80, v81, v67);
          }

          v77 = *(v67 + 2);
          v76 = *(v67 + 3);
          if (v77 >= v76 >> 1)
          {
            v82 = OUTLINED_FUNCTION_114(v76);
            v67 = sub_18EFA0044(v82, v77 + 1, 1, v67);
          }

          *(v67 + 2) = v77 + 1;
          sub_18EF914D4(&v168, &v67[32 * v77 + 32]);
        }

        else
        {
          sub_18EF933AC(&v166, &qword_1EACB9180);
        }

        v66 += v68;
        --v65;
      }

      while (v65);
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v83 = sub_18EF9CBD0(v67, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v84 = v160;
  v85 = v161;
  v86 = v161[8];
  OUTLINED_FUNCTION_8();
  v87 = v165;
  sub_18EF86A14(v165 + v88, v84);
  v89 = v164;
  sub_18EF9FE2C();
  v90 = v162;
  v91 = v162;
  v92 = OUTLINED_FUNCTION_244();
  sub_18EF9CEB8(v92, v93, v90);
  v94 = v85[9];
  v95 = v91;
  sub_18EFA5D44(v87 + v94, v89, v90);
  v96 = *(v87 + v85[14]);
  if (v96)
  {
    v97 = v95;
    sub_18EFD6FA4(v96, v89, v90);
  }

  v98 = objc_allocWithZone(LNTypeDisplayRepresentation);
  OUTLINED_FUNCTION_130();
  v159 = sub_18EF9307C();
  v99 = v165;
  v100 = *(v165 + v85[10]);
  OUTLINED_FUNCTION_281(v95);
  v101 = OUTLINED_FUNCTION_168();
  sub_18EFA5F9C(v101, v102, v90);
  sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
  OUTLINED_FUNCTION_142();
  v160 = sub_18F093DBC();

  v103 = (v99 + v85[11]);
  if (v103[1])
  {
    v104 = *v103;
    v153 = sub_18F093B5C();
  }

  else
  {
    v153 = 0;
  }

  v105 = v163;
  v106 = *(v99 + v85[12]);
  if (v106)
  {
    sub_18EF94FC0(v106);
    OUTLINED_FUNCTION_138();
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v107);
    OUTLINED_FUNCTION_144();
    v108 = sub_18F093A3C();
    OUTLINED_FUNCTION_232(v108, &a14);
  }

  else
  {
    v152 = 0;
  }

  if (v105 == 2)
  {
    v151 = 0;
  }

  else
  {
    v151 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v109 = (v99 + v85[15]);
  if (v109[1])
  {
    v110 = *v109;
    v163 = sub_18F093B5C();
  }

  else
  {
    v163 = 0;
  }

  v111 = *(v99 + v85[16]);
  if (v111)
  {
    v112 = *(v111 + 16);
    if (v112)
    {
      *&v166 = MEMORY[0x1E69E7CC0];
      sub_18F09411C();
      sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
      v113 = (v111 + 72);
      do
      {
        v114 = *(v113 - 4);
        v115 = *(v113 - 3);
        v116 = *(v113 - 2);
        v118 = *(v113 - 1);
        v117 = *v113;
        *&v168 = *(v113 - 5);
        *(&v168 + 1) = v114;
        v169 = v115;
        v170 = v116;
        v171 = v118;
        v172 = v117;

        sub_18EFA1084(&v168);
        sub_18F0940FC();
        v119 = *(v166 + 16);
        sub_18F09412C();
        OUTLINED_FUNCTION_178();
        sub_18F09413C();
        sub_18F09410C();
        v113 += 6;
        --v112;
      }

      while (v112);
      v99 = v165;
    }

    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_142();
    v162 = sub_18F093DBC();
  }

  else
  {
    v162 = 0;
  }

  if (*(v99 + v85[17]) == 2)
  {
    v121 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  }

  else
  {
    v120 = *(v99 + v85[17]);
    v121 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v120 & 1 assistantOnly:(v120 >> 8) & 1];
  }

  OUTLINED_FUNCTION_228(v121);
  v122 = *(v99 + v85[18]);
  if (v122)
  {
    v161 = v83;
    v123 = 0;
    *&v166 = v64;
    v124 = *(v122 + 16);
    for (i = (v122 + 56); ; i += 4)
    {
      if (v124 == v123)
      {
        sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
        v122 = OUTLINED_FUNCTION_414();

        v131 = v161;
        goto LABEL_59;
      }

      if (v123 >= *(v122 + 16))
      {
        break;
      }

      v127 = *(i - 1);
      v126 = *i;
      v128 = *(i - 3);
      v129 = *(i - 2);
      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);

      sub_18EFF196C(v128, v129, v127, v126);
      MEMORY[0x193AD88C0]();
      v130 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v130 >> 1)
      {
        OUTLINED_FUNCTION_114(v130);
        sub_18F093DFC();
      }

      OUTLINED_FUNCTION_140();
      sub_18F093E3C();
      ++v123;
    }

    __break(1u);
  }

  else
  {
    v131 = v83;
LABEL_59:
    v132 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v149 = v122;
    v148 = v122;
    v133 = v150;
    v134 = v151;
    v135 = v152;
    v136 = v153;
    v137 = v156;
    v138 = v155;
    v139 = v154;
    v141 = v159;
    v140 = v160;
    v161 = [v132 initWithIdentifier:v156 mangledTypeName:v155 mangledTypeNameByBundleIdentifier:v154 effectiveBundleIdentifiers:v131 displayRepresentation:v159 cases:v160 customIntentEnumTypeName:v153 availabilityAnnotations:v152 system:v151 fullyQualifiedTypeName:v163 assistantDefinedSchemas:v162 visibilityMetadata:v150 allowedTargets:v148];
    OUTLINED_FUNCTION_116();

    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_268();
    sub_18EF933AC(v144, v145);
    OUTLINED_FUNCTION_268();
    sub_18EF933AC(v146, v147);
    OUTLINED_FUNCTION_23();
    sub_18EF86A6C();
    OUTLINED_FUNCTION_259();
  }
}

uint64_t static LNEnumMetadata.enumIdentifierIsSystem(enumIdentifier:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AAAC0;
  OUTLINED_FUNCTION_0_15();
  v5[4] = 0xD00000000000001DLL;
  v5[5] = v6;
  v5[6] = 0x704F65676E616843;
  v5[7] = 0xEF6E6F6974617265;
  OUTLINED_FUNCTION_0_15();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;
  OUTLINED_FUNCTION_0_15();
  *(v10 + 80) = v12;
  *(v10 + 88) = v11;
  OUTLINED_FUNCTION_0_15();
  *(v13 + 96) = v15;
  *(v13 + 104) = v14;
  strcpy((v13 + 112), "UndoOperation");
  *(v13 + 126) = -4864;
  v18[0] = a1;
  v18[1] = a2;
  v17[2] = v18;
  LOBYTE(a2) = sub_18EFA5BB8(sub_18EFA5C94, v17, inited);
  swift_setDeallocating();
  sub_18EFA5CF8();
  return a2 & 1;
}

BOOL sub_18EFA5BB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_18EFA5CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18F09444C() & 1;
  }
}

uint64_t sub_18EFA5CF8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_18EFA5D44(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  v8 = _s14CodableWrapperVMa_0(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v22 - v17;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
  {

    return 0;
  }

  else
  {
    sub_18EF88240(v18, v14);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    sub_18EF86A14(v14, v12);
    sub_18EF9FE2C();
    v20 = a3;
    v19 = sub_18EF9CEB8(v12, v7, a3);
    sub_18EF86A6C();
  }

  return v19;
}

uint64_t sub_18EFA5F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = _s14CodableWrapperVMa_18(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (v15)
  {
    v20 = v3;
    v24 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
    v22 = *(v11 + 72);
    v23 = v17;
    do
    {
      sub_18EF86A14(v16, v14);
      sub_18EF9FE2C();
      v21 = a3;
      sub_18EFA61D8(v14, v9, a3);
      sub_18F0940FC();
      v18 = *(v24 + 16);
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v16 += v22;
      --v15;
    }

    while (v15);

    return v24;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

id sub_18EFA61D8(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = _s14CodableWrapperVMa_2(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = *a1;
  v16 = a1[1];
  v17 = sub_18F093B5C();
  sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
  v18 = _s14CodableWrapperVMa_18(0);
  sub_18EF86A14(a1 + *(v18 + 20), v13);
  sub_18EF9FE2C();
  v19 = a3;
  v20 = sub_18EFA63B4(v13, v9, a3);
  v21 = [v14 initWithIdentifier:v17 displayRepresentation:v20];

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v21;
}

id sub_18EFA63B4(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = a3;
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - v18;
  v20 = _s14CodableWrapperVMa_0(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v69 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v69 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  v29 = _s14CodableWrapperVMa_2(0);
  v30 = v29[5];
  v71 = a1;
  sub_18EF9FE2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v76 = v12;
  v77 = v26;
  if (EnumTagSinglePayload == 1)
  {
    v32 = sub_18EF933AC(v19, &qword_1EACB72D0);
    v75 = 0;
    v33 = v78;
    v34 = v72;
  }

  else
  {
    sub_18EF88240(v19, v28);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    sub_18EF86A14(v28, v26);
    v33 = v78;
    sub_18EF9FE2C();
    v34 = v72;
    v35 = v72;
    v75 = sub_18EF9CEB8(v26, v12, v34);
    v32 = sub_18EF86A6C();
  }

  v36 = v71;
  if (*(v71 + v29[8]))
  {
    MEMORY[0x1EEE9AC00](v32);
    *(&v69 - 2) = v33;
    *(&v69 - 1) = v34;
    v72 = sub_18EF9D97C(sub_18EFA3E10);
  }

  else
  {
    v72 = 0;
  }

  v37 = v29[9];
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v20) == 1)
  {
    sub_18EF933AC(v17, &qword_1EACB72D0);
    v70 = 0;
    v38 = v76;
    v39 = v77;
  }

  else
  {
    v40 = v69;
    sub_18EF88240(v17, v69);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    v39 = v77;
    sub_18EF86A14(v40, v77);
    v38 = v76;
    sub_18EF9FE2C();
    v41 = v34;
    v70 = sub_18EF9CEB8(v39, v38, v34);
    sub_18EF86A6C();
  }

  v42 = v73;
  v43 = v29[7];
  v44 = v36;
  sub_18EF9FE2C();
  v45 = _s14CodableWrapperOMa(0);
  v46 = v34;
  if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
  {
    v47 = v29[6];
    v48 = v74;
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v42, 1, v45) != 1)
    {
      sub_18EF933AC(v42, &qword_1EACB7830);
    }
  }

  else
  {
    v48 = v74;
    sub_18EF88240(v42, v74);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v45);
  }

  sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
  v49 = sub_18EFA6BE0();
  sub_18EF933AC(v48, &qword_1EACB7830);
  if (v49)
  {
    v50 = v49;
    v51 = [v50 inImage];
    v52 = [v51 _isSystem];

    if ((v52 & 1) == 0)
    {
      sub_18F0126AC([v50 inImage], &selRef__name);
      if (v53)
      {

        if (v46)
        {
          v54 = [v46 bundleIdentifier];
          v55 = sub_18F093B8C();
          v56 = v38;
          v58 = v57;

          v59 = [v50 inImage];
          v60 = v58;
          v38 = v56;
          v39 = v77;
          sub_18F012714(v55, v60, v59);

          v50 = v59;
        }
      }
    }
  }

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(v44, v39);
  sub_18EF9FE2C();
  v61 = v46;
  v62 = sub_18EF9CEB8(v39, v38, v46);
  if (v72)
  {
    v63 = sub_18F093DBC();
  }

  else
  {
    v63 = 0;
  }

  v64 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v65 = v75;
  v66 = v70;
  v67 = [v64 initWithTitle:v62 subtitle:v75 image:v49 synonyms:v63 descriptionText:v70];

  sub_18EF933AC(v78, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v67;
}

id sub_18EFA6BE0()
{
  v0 = sub_18F0932BC();
  v60[0] = *(v0 - 8);
  v1 = *(v60[0] + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v60 - v9;
  v11 = _s14CodableWrapperOMa(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v60 - v16;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    sub_18EF88240(v10, v17);
    sub_18EF86A14(v17, v15);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v43 = *v15;
        v44 = *(v15 + 1);
        if (v15[57])
        {
          v45 = 0;
          v46 = 0;
LABEL_35:
          sub_18EF825F4(0, &qword_1ED5FCF48, off_1E72B01B0);
          v51 = v45;
          v56 = v46;
          v57 = sub_18EFA72AC(v46, v45);
          v58 = objc_allocWithZone(LNSymbolImage);
          v18 = sub_18EFA7308(v43, v44, v57, 0);

          goto LABEL_36;
        }

        v47 = *(v15 + 5);
        v48 = *(v15 + 6);
        v49 = v15[56];
        if (*(v15 + 8))
        {
          v46 = 0;
          v45 = 0;
          if (v49)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v52 = [objc_allocWithZone(LNSystemNamedColor) initWithSystemColor:*(v15 + 2) variant:*(v15 + 3)];
          if (v52)
          {
            v53 = v52;
            v46 = [objc_allocWithZone(LNSymbolImageColorSpecification) initWithSystemNamedColor_];
          }

          else
          {
            v46 = 0;
          }

          if (v49)
          {
            goto LABEL_34;
          }
        }

        v54 = [objc_allocWithZone(LNSystemNamedColor) initWithSystemColor:v47 variant:v48];
        if (v54)
        {
          v55 = v54;
          v45 = [objc_allocWithZone(LNSymbolImageColorSpecification) initWithSystemNamedColor_];

          goto LABEL_35;
        }

LABEL_34:
        v45 = 0;
        goto LABEL_35;
      case 2u:
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0);
        v31 = *&v15[v30[12]];
        v32 = *&v15[v30[16]];
        v33 = &v15[v30[20]];
        v34 = *v33;
        v35 = v33[8];
        v36 = v60[0];
        (*(v60[0] + 32))(v6, v15, v0);
        (*(v36 + 16))(v4, v6, v0);
        if (v35)
        {
          v37 = 0;
        }

        else
        {
          v37 = v34;
        }

        sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
        v18 = sub_18EFFFA38(v4, 0, v37, v31, v32);
        (*(v36 + 8))(v6, v0);
        goto LABEL_37;
      case 3u:
        v39 = *v15;
        v38 = *(v15 + 1);
        v40 = *(v15 + 2);
        v41 = v15[24];
        sub_18EF825F4(0, &qword_1ED5FCE00, 0x1E696ACD0);
        sub_18EF825F4(0, &qword_1ED5FCDF8, 0x1E696E980);
        v42 = sub_18F093EEC();
        v18 = v42;
        if (!v42)
        {
          sub_18EF86A6C();
          sub_18EF9A4AC(v39, v38);
          return v18;
        }

        if (v41)
        {
          v50 = 0;
        }

        else
        {
          v50 = v40;
        }

        sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
        v51 = v18;
        v18 = sub_18EFFFB04(v51, v50, 0);
        sub_18EF9A4AC(v39, v38);
LABEL_36:

        goto LABEL_37;
      case 4u:
        v27 = *v15;
        v28 = *(v15 + 1);
        v29 = *(v15 + 2);
        sub_18EF825F4(0, &unk_1ED5FD340, off_1E72B0068);
        v18 = sub_18EFFF9BC(v27);
        goto LABEL_37;
      default:
        v19 = *v15;
        v20 = *(v15 + 1);
        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        v23 = *(v15 + 4);
        if (v15[40])
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v15 + 4);
        }

        sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
        v25 = sub_18EFFF930(v19, v20, 0, v24);
        v18 = v25;
        if (!v21)
        {
          goto LABEL_37;
        }

        if (v25)
        {
          v26 = [v25 inImage];
          sub_18F012714(v22, v21, v26);

LABEL_37:
          sub_18EF86A6C();
        }

        else
        {
          sub_18EF86A6C();
        }

        return v18;
    }
  }

  sub_18EF933AC(v10, &qword_1EACB7830);
  return 0;
}

id sub_18EFA72AC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithForeground:a1 background:a2];

  return v4;
}

id sub_18EFA7308(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_18F093B5C();

  v8 = [v4 initWithSymbolSystemName:v7 colorization:a3 configuration:a4];

  return v8;
}

unint64_t sub_18EFA7380()
{
  result = qword_1ED5FD180;
  if (!qword_1ED5FD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD180);
  }

  return result;
}

void sub_18EFA73D4(void *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_18EFA742C()
{
  result = qword_1ED5FD1A0;
  if (!qword_1ED5FD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1A0);
  }

  return result;
}

unint64_t sub_18EFA7480()
{
  result = qword_1ED5FCF58;
  if (!qword_1ED5FCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_352()
{
}

id sub_18EFA756C(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for LNSearchCriteriaValueTypeIdentifier(0);
    result = sub_18F09447C();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() stringValueType];

    return v1;
  }

  return result;
}

uint64_t sub_18EFA7610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
    case 2:
    case 6:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:
    case 5:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EFA76BC()
{
  result = qword_1ED5FDB48;
  if (!qword_1ED5FDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB48);
  }

  return result;
}

uint64_t sub_18EFA7724(char a1)
{
  if (a1)
  {
    return 0x79747265706F7270;
  }

  else
  {
    return 0x797469746E65;
  }
}

id sub_18EFA7764(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_18F093B5C();

  OUTLINED_FUNCTION_189();
  sub_18F093B5C();
  OUTLINED_FUNCTION_357();

  v9 = [v5 *a5];

  return v9;
}

void static LNAutoShortcutMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_33(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7670, &qword_18F09BE80);
  OUTLINED_FUNCTION_95(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21();
  v15 = _s14CodableWrapperVMa_29(v14);
  v16 = OUTLINED_FUNCTION_36(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_113();
  if (v0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31();
  if (v20)
  {
    sub_18EF933AC(v1, &unk_1EACB7670);
    sub_18EFD2EC8();
    v21 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_38(v21, v22);
LABEL_5:
    sub_18EFD2EC8();
    v23 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_112(v23, v24);
    goto LABEL_6;
  }

  v25 = OUTLINED_FUNCTION_140();
  sub_18EF88240(v25, v26);
  sub_18EF825F4(0, &qword_1ED5FEC28, off_1E72AFF60);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_244();
  sub_18EF9FE2C();
  v27 = 0;
  v28 = OUTLINED_FUNCTION_100();
  sub_18EFA89F4(v28, v29, v30);
  OUTLINED_FUNCTION_224();
LABEL_6:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return sub_18F0941DC();
}

uint64_t OUTLINED_FUNCTION_18@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void *OUTLINED_FUNCTION_18_2(void *a1)
{

  return memcpy(a1, (v1 + 488), 0x50uLL);
}

uint64_t sub_18EFA7A98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8160, &qword_18F0A0FD0);
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v33 - v9;
  v11 = _s14CodableWrapperVMa_29(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = _s14CodableWrapperVMa_0(0);
  v42 = v16;
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  v44 = *(v11 + 28);
  __swift_storeEnumTagSinglePayload(v15 + v44, 1, 1, v17);
  v18 = v15;
  v19 = v15 + *(v11 + 36);
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  v20 = v19;
  *v19 = 0u;
  v21 = a1[3];
  v22 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  sub_18EFA810C();
  v40 = v10;
  v23 = v41;
  sub_18F09459C();
  if (v23)
  {
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    sub_18EF933AC(v18 + v25, &qword_1EACB72D0);
    sub_18EF933AC(v18 + v44, &qword_1EACB72D0);

    memcpy(__dst, v20, 0x50uLL);
    return sub_18EF933AC(__dst, &unk_1EACB8170);
  }

  else
  {
    v41 = v17;
    v24 = v37;
    v34 = v11;
    LOBYTE(__dst[0]) = 0;
    *v18 = sub_18F09427C();
    v18[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v47[0] = 1;
    sub_18EF883DC();
    sub_18F0942CC();
    v18[2] = __dst[0];
    LOBYTE(__dst[0]) = 2;
    v33 = sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(__dst[0]) = 3;
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(__dst[0]) = 4;
    v27 = sub_18F09423C();
    v28 = v34;
    v29 = (v18 + *(v34 + 32));
    *v29 = v27;
    v29[1] = v30;
    v50 = 5;
    sub_18EFA860C();
    sub_18F09426C();
    memcpy(v46, __dst, sizeof(v46));
    memcpy(v47, v20, sizeof(v47));
    sub_18EF933AC(v47, &unk_1EACB8170);
    memcpy(v20, v46, 0x50uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    v49 = 6;
    sub_18EF9CC4C();
    sub_18F09426C();
    v31 = *(v28 + 40);
    (*(v24 + 8))(v40, v39);
    *(v18 + v31) = v45;
    sub_18EF86A14(v18, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFA810C()
{
  result = qword_1EACB7138;
  if (!qword_1EACB7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7138);
  }

  return result;
}

unint64_t sub_18EFA8168(char a1)
{
  result = 0x6554657361726870;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x74695474726F6873;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6D496D6574737973;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_5(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x18EFA8348);
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

uint64_t _s14CodableWrapperV10CodingKeysOwet_5(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EFA860C()
{
  result = qword_1EACB7068;
  if (!qword_1EACB7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7068);
  }

  return result;
}

uint64_t sub_18EFA8660(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18EFA86B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

void sub_18EFA8768()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_51();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      v4 = *(v0 + 36);
    }

    v5 = OUTLINED_FUNCTION_52(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_18EFA8828()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    v5 = *(v1 + 36);
  }

  v6 = OUTLINED_FUNCTION_120(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_243()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_99@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

id sub_18EFA89F4(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v24 = sub_18F093B5C();
  v8 = a1[2];
  sub_18EF9D97C(sub_18EFA8EB4);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v23 = sub_18F093DBC();

  v9 = _s14CodableWrapperVMa_29(0);
  v10 = v9[6];
  v22 = sub_18EF9EBC8(sub_18EFA3E10);
  v11 = v9[7];
  v21 = sub_18EF9EBC8(sub_18EFA3E10);
  v12 = (a1 + v9[8]);
  if (v12[1])
  {
    v13 = *v12;
    v20 = sub_18F093B5C();
  }

  else
  {
    v20 = 0;
  }

  v14 = memcpy(__dst, a1 + v9[9], sizeof(__dst));
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_18EFA9774(sub_18F019CD0);
  v16 = *(a1 + v9[10]);
  if (v16)
  {
    sub_18EF94FC0(v16);
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v17 = sub_18F093A3C();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActionIdentifier:v24 phraseTemplates:v23 shortTitle:v22 autoShortcutDescription:v21 systemImageName:v20 parameterPresentation:v15 availabilityAnnotations:v17];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v18;
}

id sub_18EFA8D40@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EFA8ED8(v13, 0x74726F6853707041, 0xEC00000073747563, v9, a2);
  *a3 = result;
  return result;
}

id sub_18EFA8EB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_18EFA8D40(a1, *(v2 + 24), a2);
}

id sub_18EFA8ED8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v68 = a4;
  v70 = a5;
  v67 = a3;
  v64[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v66 = v64 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v64 - v12;
  v69 = sub_18F0932BC();
  v71 = *(v69 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v64 - v19;
  v21 = sub_18F0931CC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s14CodableWrapperVMa_0(0);
  v27 = v26[8];
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_18EF933AC(v20, &qword_1EACB78A0);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    sub_18F0931AC();
    sub_18EF825F4(0, &qword_1ED5FD160, 0x1E696B100);
    if (swift_dynamicCast())
    {

      v28 = v72;
      v29 = *(a1 + v26[9]);
      if (v29)
      {
        sub_18EF933FC(v29);
        type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
        sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
        sub_18EF8558C(&unk_1ED5FD778);
        v30 = sub_18F093A3C();
      }

      else
      {
        v30 = 0;
      }

      v58 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocalizedStringResource:v28 alternatives:v30];

      sub_18EF933AC(v68, &qword_1EACB72C8);
      (*(v22 + 8))(v25, v21);
      goto LABEL_35;
    }

    (*(v22 + 8))(v25, v21);
  }

  v31 = v26[7];
  sub_18EF9FE2C();
  v32 = v69;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v69);
  v34 = v68;
  v36 = v65;
  v35 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_18EF933AC(v13, &qword_1EACB72C8);
    v37 = *a1;
    v38 = a1[1];
    v39 = sub_18F093B5C();
    if (a1[3])
    {
      v40 = a1[2];
      v41 = sub_18F093B5C();
    }

    else
    {
      v41 = 0;
    }

    v47 = v70;
    v48 = sub_18F093B5C();

    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v36, 1, v32) == 1)
    {
      if (v47)
      {
        sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);
        v49 = v47;
        v50 = [v49 bundleIdentifier];
        v51 = sub_18F093B8C();
        v53 = v52;

        v60 = sub_18F0469EC(v51, v53, 0);
        v36 = v65;
        v35 = v66;
        if (v60 >= 2)
        {
          v61 = [v60 URL];
          sub_18F09327C();
          sub_18F019C6C(v60);
          v59 = 0;
          v47 = v70;
        }

        else
        {
          v59 = 1;
          v47 = v70;
        }

        v32 = v69;
      }

      else
      {
        v59 = 1;
      }

      __swift_storeEnumTagSinglePayload(v35, v59, 1, v32);
      if (__swift_getEnumTagSinglePayload(v36, 1, v32) != 1)
      {
        sub_18EF933AC(v36, &qword_1EACB72C8);
      }
    }

    else
    {
      (*(v71 + 32))(v35, v36, v32);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v32);
    }

    if (__swift_getEnumTagSinglePayload(v35, 1, v32) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = sub_18F09324C();
      (*(v71 + 8))(v35, v32);
    }

    v58 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v39 defaultValue:v41 table:v48 bundleURL:v62];

    sub_18EF933AC(v34, &qword_1EACB72C8);
  }

  else
  {
    (*(v71 + 32))(v16, v13, v32);
    v42 = *a1;
    v43 = a1[1];
    v44 = sub_18F093B5C();
    if (a1[3])
    {
      v45 = a1[2];
      v46 = sub_18F093B5C();
    }

    else
    {
      v46 = 0;
    }

    v54 = sub_18F093B5C();

    v55 = sub_18F09324C();
    v56 = *(a1 + v26[9]);
    if (v56)
    {
      sub_18EF933FC(v56);
      type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
      sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF8558C(&unk_1ED5FD778);
      v32 = v69;
      v57 = sub_18F093A3C();
    }

    else
    {
      v57 = 0;
    }

    v58 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v44 defaultValue:v46 table:v54 bundleURL:v55 alternatives:v57];

    sub_18EF933AC(v34, &qword_1EACB72C8);
    (*(v71 + 8))(v16, v32);
  }

LABEL_35:
  sub_18EF86A6C();
  return v58;
}

uint64_t sub_18EFA9774(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  if (!v1[1])
  {
    return 0;
  }

  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v7, v1, sizeof(v7));
  sub_18F018818(v7, v5);
  a1(&v8, __dst);
  memcpy(v5, __dst, sizeof(v5));
  if (v2)
  {
    result = sub_18F018850(v5);
    __break(1u);
  }

  else
  {
    sub_18F018850(v5);
    return v8;
  }

  return result;
}

void __LNValueTypeObjectClassesForCoding_block_invoke()
{
  v15[17] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v15[4] = objc_opt_class();
  v15[5] = objc_opt_class();
  v15[6] = objc_opt_class();
  v15[7] = objc_opt_class();
  v15[8] = objc_opt_class();
  v15[9] = objc_opt_class();
  v15[10] = objc_opt_class();
  v15[11] = objc_opt_class();
  v15[12] = objc_opt_class();
  v15[13] = objc_opt_class();
  v15[14] = objc_opt_class();
  v15[15] = objc_opt_class();
  v15[16] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{17, 0}];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v10 + 1) + 8 * v5) objectClassesForCoding];
        [v0 addObjectsFromArray:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v7 = [v0 copy];
  v8 = LNValueTypeObjectClassesForCoding_objectClassesForCoding;
  LNValueTypeObjectClassesForCoding_objectClassesForCoding = v7;

  v9 = *MEMORY[0x1E69E9840];
}

id sub_18EFAA01C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  a3();
  sub_18EF825F4(0, a4, a5);
  v7 = sub_18F093A3C();

  return v7;
}

void *sub_18EFAA0A0()
{
  result = sub_18EFAA0C0();
  off_1ED5FF9E0 = result;
  return result;
}

uint64_t sub_18EFAA0C0()
{
  v0 = sub_18EFAA19C();
  v1 = sub_18EFAD214();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v0;
  sub_18EFAC0F0(v1, sub_18EFAF5C4, 0, isUniquelyReferenced_nonNull_native, &v10);
  v3 = v10;
  v4 = sub_18EFAE610();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3;
  sub_18EFAC0F0(v4, sub_18EFAF5C4, 0, v5, &v10);
  v6 = v10;
  v7 = sub_18EFADCB0();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v10 = v6;
  sub_18EFAC0F0(v7, sub_18EFAF5C4, 0, v8, &v10);
  return v10;
}

uint64_t sub_18EFAA19C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9510, &qword_18F0AAE88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18F0AAAE0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED5FF9D8;
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x800000018F0B00C0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = v1;
  v3 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  *(v0 + 64) = [v3 attributedStringValueType];
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x800000018F0B00E0;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;

  *(v0 + 104) = [v3 attributedStringValueType];
  strcpy((v0 + 112), "Swift.String");
  *(v0 + 125) = 0;
  *(v0 + 126) = -5120;
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;

  *(v0 + 144) = [v3 stringValueType];
  *(v0 + 152) = 0x676E69727453;
  *(v0 + 160) = 0xE600000000000000;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;

  *(v0 + 184) = [v3 stringValueType];
  strcpy((v0 + 192), "Swift.Double");
  *(v0 + 205) = 0;
  *(v0 + 206) = -5120;
  *(v0 + 208) = v2;
  *(v0 + 216) = v1;

  *(v0 + 224) = [v3 doubleValueType];
  *(v0 + 232) = 0x656C62756F44;
  *(v0 + 240) = 0xE600000000000000;
  *(v0 + 248) = v2;
  *(v0 + 256) = v1;

  *(v0 + 264) = [v3 doubleValueType];
  *(v0 + 272) = 0xD000000000000017;
  *(v0 + 280) = 0x800000018F0B0100;
  *(v0 + 288) = v2;
  *(v0 + 296) = v1;

  *(v0 + 304) = [v3 doubleValueType];
  strcpy((v0 + 312), "TimeInterval");
  *(v0 + 325) = 0;
  *(v0 + 326) = -5120;
  *(v0 + 328) = v2;
  *(v0 + 336) = v1;

  *(v0 + 344) = [v3 doubleValueType];
  *(v0 + 352) = 0x6E492E7466697753;
  *(v0 + 360) = 0xE900000000000074;
  *(v0 + 368) = v2;
  *(v0 + 376) = v1;

  *(v0 + 384) = [v3 intValueType];
  *(v0 + 392) = 0x6E492E7466697753;
  *(v0 + 400) = 0xEA00000000003874;
  *(v0 + 408) = v2;
  *(v0 + 416) = v1;

  *(v0 + 424) = [v3 int8ValueType];
  *(v0 + 432) = 0x6E492E7466697753;
  *(v0 + 440) = 0xEB00000000363174;
  *(v0 + 448) = v2;
  *(v0 + 456) = v1;

  *(v0 + 464) = [v3 int16ValueType];
  *(v0 + 472) = 0x6E492E7466697753;
  *(v0 + 480) = 0xEB00000000323374;
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;

  *(v0 + 504) = [v3 int32ValueType];
  *(v0 + 512) = 0x6E492E7466697753;
  *(v0 + 520) = 0xEB00000000343674;
  *(v0 + 528) = v2;
  *(v0 + 536) = v1;

  *(v0 + 544) = [v3 int64ValueType];
  *(v0 + 552) = 7630409;
  *(v0 + 560) = 0xE300000000000000;
  *(v0 + 568) = v2;
  *(v0 + 576) = v1;

  *(v0 + 584) = [v3 intValueType];
  *(v0 + 592) = 947154505;
  *(v0 + 600) = 0xE400000000000000;
  *(v0 + 608) = v2;
  *(v0 + 616) = v1;

  *(v0 + 624) = [v3 int8ValueType];
  *(v0 + 632) = 0x3631746E49;
  *(v0 + 640) = 0xE500000000000000;
  *(v0 + 648) = v2;
  *(v0 + 656) = v1;

  *(v0 + 664) = [v3 int16ValueType];
  *(v0 + 672) = 0x3233746E49;
  *(v0 + 680) = 0xE500000000000000;
  *(v0 + 688) = v2;
  *(v0 + 696) = v1;

  *(v0 + 704) = [v3 int32ValueType];
  *(v0 + 712) = 0x3436746E49;
  *(v0 + 720) = 0xE500000000000000;
  *(v0 + 728) = v2;
  *(v0 + 736) = v1;

  *(v0 + 744) = [v3 int64ValueType];
  *(v0 + 752) = 0xD000000000000019;
  *(v0 + 760) = 0x800000018F0B0120;
  *(v0 + 768) = v2;
  *(v0 + 776) = v1;

  *(v0 + 784) = [v3 dateComponentsValueType];
  strcpy((v0 + 792), "DateComponents");
  *(v0 + 807) = -18;
  *(v0 + 808) = v2;
  *(v0 + 816) = v1;

  *(v0 + 824) = [v3 dateComponentsValueType];
  *(v0 + 832) = 0x697461646E756F46;
  *(v0 + 840) = 0xEF657461442E6E6FLL;
  *(v0 + 848) = v2;
  *(v0 + 856) = v1;

  *(v0 + 864) = [v3 dateValueType];
  *(v0 + 872) = 1702125892;
  *(v0 + 880) = 0xE400000000000000;
  *(v0 + 888) = v2;
  *(v0 + 896) = v1;

  *(v0 + 904) = [v3 dateValueType];
  *(v0 + 912) = 0x6F422E7466697753;
  *(v0 + 920) = 0xEA00000000006C6FLL;
  *(v0 + 928) = v2;
  *(v0 + 936) = v1;

  *(v0 + 944) = [v3 BOOLValueType];
  *(v0 + 952) = 1819242306;
  *(v0 + 960) = 0xE400000000000000;
  *(v0 + 968) = v2;
  *(v0 + 976) = v1;

  *(v0 + 984) = [v3 BOOLValueType];
  strcpy((v0 + 992), "Foundation.URL");
  *(v0 + 1007) = -18;
  *(v0 + 1008) = v2;
  *(v0 + 1016) = v1;

  *(v0 + 1024) = [v3 URLValueType];
  *(v0 + 1032) = 5001813;
  *(v0 + 1040) = 0xE300000000000000;
  *(v0 + 1048) = v2;
  *(v0 + 1056) = v1;

  *(v0 + 1064) = [v3 URLValueType];
  *(v0 + 1072) = 0x6C504C432E435F5FLL;
  *(v0 + 1080) = 0xEF6B72616D656361;
  *(v0 + 1088) = v2;
  *(v0 + 1096) = v1;

  *(v0 + 1104) = [v3 placemarkValueType];
  *(v0 + 1112) = 0xD000000000000018;
  *(v0 + 1120) = 0x800000018F0B0140;
  *(v0 + 1128) = v2;
  *(v0 + 1136) = v1;

  *(v0 + 1144) = [v3 placemarkValueType];
  *(v0 + 1152) = 0x6D6563616C504C43;
  *(v0 + 1160) = 0xEB000000006B7261;
  *(v0 + 1168) = v2;
  *(v0 + 1176) = v1;

  *(v0 + 1184) = [v3 placemarkValueType];
  *(v0 + 1192) = 1701603654;
  *(v0 + 1200) = 0xE400000000000000;
  *(v0 + 1208) = v2;
  *(v0 + 1216) = v1;
  v4 = objc_opt_self();

  *(v0 + 1224) = [v4 fileValueType];
  *(v0 + 1232) = 0x6E6F73726550;
  *(v0 + 1240) = 0xE600000000000000;
  *(v0 + 1248) = v2;
  *(v0 + 1256) = v1;

  *(v0 + 1264) = [v4 personValueType];
  strcpy((v0 + 1272), "CurrencyAmount");
  *(v0 + 1287) = -18;
  *(v0 + 1288) = v2;
  *(v0 + 1296) = v1;

  *(v0 + 1304) = [v4 currencyAmountValueType];
  strcpy((v0 + 1312), "PaymentMethod");
  *(v0 + 1326) = -4864;
  *(v0 + 1328) = v2;
  *(v0 + 1336) = v1;

  *(v0 + 1344) = [v4 paymentMethodValueType];
  *(v0 + 1352) = 0xD000000000000013;
  *(v0 + 1360) = 0x800000018F0B0160;
  *(v0 + 1368) = v2;
  *(v0 + 1376) = v1;

  *(v0 + 1384) = [v4 paymentMethodValueType];
  *(v0 + 1392) = 0xD000000000000022;
  *(v0 + 1400) = 0x800000018F0B0180;
  *(v0 + 1408) = v2;
  *(v0 + 1416) = v1;
  v5 = objc_opt_self();

  *(v0 + 1424) = [v5 recurrenceRuleType];
  *(v0 + 1432) = 0xD000000000000017;
  *(v0 + 1440) = 0x800000018F0AEA10;
  *(v0 + 1448) = v2;
  *(v0 + 1456) = v1;
  sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);

  *(v0 + 1464) = static LNCodableValueType.dateInterval.getter();
  strcpy((v0 + 1472), "Swift.Duration");
  *(v0 + 1487) = -18;
  *(v0 + 1488) = v2;
  *(v0 + 1496) = v1;

  *(v0 + 1504) = static LNCodableValueType.duration.getter();
  *(v0 + 1512) = 0xD00000000000001FLL;
  *(v0 + 1520) = 0x800000018F0AEAA0;
  *(v0 + 1528) = v2;
  *(v0 + 1536) = v1;

  *(v0 + 1544) = static LNCodableValueType.personNameComponents.getter();
  *(v0 + 1552) = 0xD00000000000001ALL;
  *(v0 + 1560) = 0x800000018F0B01B0;
  *(v0 + 1568) = v2;
  *(v0 + 1576) = v1;
  sub_18EF825F4(0, &qword_1ED5FF9F0, off_1E72B01C8);

  *(v0 + 1584) = static LNSystemEntityValueType.placeDescriptor.getter();
  *(v0 + 1592) = 0xD00000000000002BLL;
  *(v0 + 1600) = 0x800000018F0B01D0;
  *(v0 + 1608) = v2;
  *(v0 + 1616) = v1;
  *(v0 + 1624) = static LNSystemEntityValueType.audioSearchCriteria.getter();
  *(v0 + 1632) = 0xD00000000000002CLL;
  *(v0 + 1640) = 0x800000018F0B0200;
  *(v0 + 1648) = v2;
  *(v0 + 1656) = v1;
  *(v0 + 1664) = static LNSystemEntityValueType.semanticContentDescriptor.getter();
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  sub_18EFACEF8();

  return sub_18F093A5C();
}

uint64_t sub_18EFAAD4C()
{
  result = sub_18EFAAD74(&unk_1F02E2A60);
  qword_1ED5FF9D8 = result;
  return result;
}

uint64_t sub_18EFAAD74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_18EFAAE0C();
  v4 = MEMORY[0x193AD8990](v2, &type metadata for PrebuiltType.Role, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_18EFAAEB8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

unint64_t sub_18EFAAE0C()
{
  result = qword_1ED5FF9B0;
  if (!qword_1ED5FF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9B0);
  }

  return result;
}

unint64_t sub_18EFAAE64()
{
  result = qword_1ED5FF9E8;
  if (!qword_1ED5FF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9E8);
  }

  return result;
}

BOOL sub_18EFAAEB8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_18F09452C();
  MEMORY[0x193AD9050](a2);
  v7 = sub_18F09456C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_18EFAAFA8(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_18EFAAFA8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F02BC08(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_18F02C488(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_18F09452C();
      MEMORY[0x193AD9050](v5);
      result = sub_18F09456C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_18F02C114();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_18F09449C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id static LNCodableValueType.dateInterval.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v22[-v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA0E0;
  *(inited + 32) = @"LNPlatformNameIOS";
  v5 = objc_allocWithZone(LNAvailabilityAnnotation);
  v6 = @"LNPlatformNameIOS";
  *(inited + 40) = OUTLINED_FUNCTION_0_1();
  *(inited + 48) = @"LNPlatformNameMACOS";
  v7 = objc_allocWithZone(LNAvailabilityAnnotation);
  v8 = @"LNPlatformNameMACOS";
  *(inited + 56) = OUTLINED_FUNCTION_0_1();
  *(inited + 64) = @"LNPlatformNameVISIONOS";
  v9 = objc_allocWithZone(LNAvailabilityAnnotation);
  v10 = @"LNPlatformNameVISIONOS";
  *(inited + 72) = OUTLINED_FUNCTION_0_1();
  *(inited + 80) = @"LNPlatformNameWATCHOS";
  v11 = objc_allocWithZone(LNAvailabilityAnnotation);
  v12 = @"LNPlatformNameWATCHOS";
  *(inited + 88) = OUTLINED_FUNCTION_0_1();
  *(inited + 96) = @"LNPlatformNameTVOS";
  v13 = objc_allocWithZone(LNAvailabilityAnnotation);
  v14 = @"LNPlatformNameTVOS";
  *(inited + 104) = OUTLINED_FUNCTION_0_1();
  type metadata accessor for LNPlatformName();
  sub_18EFABC24();
  sub_18EFABC68();
  v15 = sub_18F093A5C();
  sub_18F09323C();
  v16 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v16);
  v17 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0x746E492065746144, 0xED00006C61767265, 0, 0, v3);
  v18 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v19 = sub_18EF9307C();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_18EFABE0C(0xD000000000000017, 0x800000018F0AEA10, 0xD00000000000001BLL, 0x800000018F0AEA30, v15, 0xD000000000000021, 0x800000018F0AEA50, v19);
}

id sub_18EFABB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_18F093B5C();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_18F093B5C();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = sub_18F093B5C();

LABEL_8:
  v12 = [v6 initWithIntroducedVersion:v9 deprecatedVersion:v10 obsoletedVersion:v11];

  return v12;
}

unint64_t sub_18EFABC24()
{
  result = qword_1ED5FFA40;
  if (!qword_1ED5FFA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FFA40);
  }

  return result;
}

unint64_t sub_18EFABC68()
{
  result = qword_1ED5FFA38;
  if (!qword_1ED5FFA38)
  {
    type metadata accessor for LNPlatformName();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FFA38);
  }

  return result;
}

id sub_18EFABD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_18F093B5C();

  if (a4)
  {
    v10 = sub_18F093B5C();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_18F0932BC();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v11) != 1)
  {
    v12 = sub_18F09324C();
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v13 = [v6 initWithKey:v9 table:v10 bundleURL:v12];

  return v13;
}

id sub_18EFABE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_18F093B5C();

  v12 = sub_18F093B5C();

  if (a5)
  {
    type metadata accessor for LNPlatformName();
    sub_18EFABC24();
    sub_18EFABC68();
    v13 = sub_18F093A3C();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_18F093B5C();

  v15 = [v8 initWithIdentifier:v11 mangledTypeName:v12 availabilityAnnotations:v13 contentTypeIdentifier:v14 displayRepresentation:a8];

  return v15;
}

unint64_t sub_18EFABF2C()
{
  result = qword_1ED5FCF40;
  if (!qword_1ED5FCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF40);
  }

  return result;
}

unint64_t sub_18EFABF98()
{
  result = qword_1ED5FCF20;
  if (!qword_1ED5FCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF20);
  }

  return result;
}

void sub_18EFABFEC(void *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_18EFAC048()
{
  result = qword_1ED5FDAF0;
  if (!qword_1ED5FDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAF0);
  }

  return result;
}

uint64_t sub_18EFAC0F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v77 = a5;
  HIDWORD(v59) = a4;
  sub_18EFAF5BC(&v70);
  v7 = v71;
  v8 = v73;
  v9 = v74;
  v55 = v75;
  v56 = v70;
  v57 = v76;
  v49 = v72;
  v10 = (v72 + 64) >> 6;
  v51 = a1;

  *v50 = a3;

  v11 = v8;
  *__src = v10;
  for (i = v7; ; v7 = i)
  {
    v12 = v9;
    if (!v9)
    {
      break;
    }

LABEL_7:
    v14 = __clz(__rbit64(v12)) | (v11 << 6);
    v15 = (*(v56 + 48) + 32 * v14);
    v16 = v15[1];
    v17 = *(*(v56 + 56) + 8 * v14);
    v19 = v15[2];
    v18 = v15[3];
    v60 = *v15;
    v61 = v16;
    v62 = v19;
    v63 = v18;
    v64 = v17;

    v20 = v17;
    v55(&v65, &v60);

    v21 = v66;
    if (!v66)
    {
      goto LABEL_19;
    }

    v22 = v65;
    v24 = v67;
    v23 = v68;
    v58 = v69;
    v25 = *v77;
    v33 = sub_18EFAC46C(v65, v66, v67, v68);
    v34 = *(v25 + 16);
    v35 = (v26 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_21;
    }

    v37 = v26;
    if (*(v25 + 24) >= v36)
    {
      if ((v59 & 0x100000000) != 0)
      {
        if (v26)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9518, &qword_18F0AAEA0);
        sub_18F09418C();
        if (v37)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v38 = v77;
      sub_18EFAF260(v36, BYTE4(v59) & 1, v27, v28, v29, v30, v31, v32, v48, v49, v50[0], v50[1], v51, v52, __src[0], i, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v39 = *v38;
      v40 = sub_18EFAC46C(v22, v21, v24, v23);
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_23;
      }

      v33 = v40;
      if (v37)
      {
LABEL_18:
        __break(1u);
LABEL_19:
        sub_18EFAE608();
      }
    }

    v42 = *v77;
    v42[(v33 >> 6) + 8] |= 1 << v33;
    v43 = (v42[6] + 32 * v33);
    *v43 = v22;
    v43[1] = v21;
    v43[2] = v24;
    v43[3] = v23;
    *(v42[7] + 8 * v33) = v58;
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_22;
    }

    v9 = (v12 - 1) & v12;
    v42[2] = v46;
    HIDWORD(v59) = 1;
    v8 = v11;
    v10 = *__src;
  }

  v13 = v8;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_19;
    }

    v12 = *(v7 + 8 * v11);
    ++v13;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFAC3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

id sub_18EFAC408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;

  return a6;
}

uint64_t sub_18EFAC46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 40);
  sub_18F09452C();
  sub_18F093C1C();
  sub_18EFAD10C(__src, a3);
  sub_18EFACFFC(__src, a4);
  sub_18F09456C();
  v8 = OUTLINED_FUNCTION_264();

  return sub_18EFAF5FC(v8, v9, a3, a4, v10);
}

uint64_t sub_18EFAC510(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18F09BCC0;
  MEMORY[0x193AD8780](a1, a2);
  *(v8 + 32) = 0x6E55534E2E435F5FLL;
  *(v8 + 40) = 0xEA00000000007469;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED5FF9D8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v10 = a3;
  v11 = *(a4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a4 + 16);
  sub_18EFAC848(v10, 0xD000000000000016, 0x800000018F0AFF80, v8, v9);
  *(a4 + 16) = v19;

  swift_endAccess();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18F09BCC0;
  sub_18F09406C();

  MEMORY[0x193AD8780](a1, a2);
  *(v12 + 32) = 0x697461646E756F46;
  *(v12 + 40) = 0xEF74696E552E6E6FLL;
  swift_beginAccess();

  v13 = v10;
  v14 = *(a4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a4 + 16);
  sub_18EFAC848(v13, 0xD000000000000016, 0x800000018F0AFF80, v12, v9);
  *(a4 + 16) = v20;

  swift_endAccess();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18F09BCC0;
  MEMORY[0x193AD8780](a1, a2);
  *(v15 + 32) = 1953066581;
  *(v15 + 40) = 0xE400000000000000;
  swift_beginAccess();
  v16 = v13;
  v17 = *(a4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a4 + 16);
  sub_18EFAC848(v16, 0xD000000000000016, 0x800000018F0AFF80, v15, v9);
  *(a4 + 16) = v21;

  return swift_endAccess();
}

void sub_18EFAC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_18EFAC46C(a2, a3, a4, a5);
  OUTLINED_FUNCTION_0_16(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9518, &qword_18F0AAEA0);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_18EFAC46C(a2, a3, a4, a5);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    sub_18F0944AC();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = a1;
  }

  else
  {
    sub_18EFAC9B4(v18, a2, a3, a4, a5, a1, v23);
  }
}

unint64_t sub_18EFAC9B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

id static LNCodableValueType.duration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v22[-v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA0E0;
  *(inited + 32) = @"LNPlatformNameIOS";
  v5 = objc_allocWithZone(LNAvailabilityAnnotation);
  v6 = @"LNPlatformNameIOS";
  *(inited + 40) = OUTLINED_FUNCTION_0_1();
  *(inited + 48) = @"LNPlatformNameMACOS";
  v7 = objc_allocWithZone(LNAvailabilityAnnotation);
  v8 = @"LNPlatformNameMACOS";
  *(inited + 56) = OUTLINED_FUNCTION_0_1();
  *(inited + 64) = @"LNPlatformNameVISIONOS";
  v9 = objc_allocWithZone(LNAvailabilityAnnotation);
  v10 = @"LNPlatformNameVISIONOS";
  *(inited + 72) = OUTLINED_FUNCTION_0_1();
  *(inited + 80) = @"LNPlatformNameWATCHOS";
  v11 = objc_allocWithZone(LNAvailabilityAnnotation);
  v12 = @"LNPlatformNameWATCHOS";
  *(inited + 88) = OUTLINED_FUNCTION_0_1();
  *(inited + 96) = @"LNPlatformNameTVOS";
  v13 = objc_allocWithZone(LNAvailabilityAnnotation);
  v14 = @"LNPlatformNameTVOS";
  *(inited + 104) = OUTLINED_FUNCTION_0_1();
  type metadata accessor for LNPlatformName();
  sub_18EFABC24();
  sub_18EFABC68();
  v15 = sub_18F093A5C();
  sub_18F09323C();
  v16 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v16);
  v17 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0x6E6F697461727544, 0xE800000000000000, 0, 0, v3);
  v18 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v19 = sub_18EF9307C();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_18EFABE0C(0x75442E7466697753, 0xEE006E6F69746172, 0x6974617275443873, 0xEB00000000566E6FLL, v15, 0xD00000000000001DLL, 0x800000018F0AEA80, v19);
}

id sub_18EFACD38()
{
  v1 = sub_18F093B5C();

  v2 = sub_18F093B5C();

  v3 = sub_18F093B5C();

  v4 = [v0 initWithIdentifier:v1 bundleIdentifier:v2 contentTypeIdentifier:v3];

  return v4;
}

unint64_t sub_18EFACEF8()
{
  result = qword_1ED5FF9A8;
  if (!qword_1ED5FF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9A8);
  }

  return result;
}

unint64_t sub_18EFACF50()
{
  result = qword_1ED5FF9A0;
  if (!qword_1ED5FF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9A0);
  }

  return result;
}

uint64_t sub_18EFACFA4()
{
  OUTLINED_FUNCTION_3_4();
  sub_18F09452C();
  OUTLINED_FUNCTION_6_3();
  sub_18EFAD10C(__src, v1);
  sub_18EFACFFC(__src, v0);
  return sub_18F09456C();
}

void sub_18EFACFFC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18F09456C();
  v3 = 0;
  v4 = 0;
  v5 = *(a2 + 56);
  v6 = *(a2 + 32);
  OUTLINED_FUNCTION_65();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v4;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(a2 + 48) + (v13 | (v12 << 6)));
      sub_18F09452C();
      MEMORY[0x193AD9050](v14);
      v3 ^= sub_18F09456C();
    }

    while (v9);
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      MEMORY[0x193AD9050](v3);
      return;
    }

    v9 = *(a2 + 56 + 8 * v12);
    ++v4;
    if (v9)
    {
      v4 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_18EFAD10C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193AD9050](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      OUTLINED_FUNCTION_4_4();
      sub_18F093C1C();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t static PrebuiltType.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_18F09444C() & 1) == 0 || (sub_18EFAD634(v2, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_108();

  return sub_18F02A618(v7, v8);
}

uint64_t sub_18EFAD214()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9510, &qword_18F0AAE88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AAAF0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED5FF9D8;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x800000018F0AFFA0;
  v2 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v1;
  v3 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  *(inited + 64) = [v3 applicationValueType];
  *(inited + 72) = 0xD000000000000015;
  *(inited + 80) = 0x800000018F0AFFC0;
  *(inited + 88) = v2;
  *(inited + 96) = v1;

  *(inited + 104) = [v3 fileValueType];
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x800000018F0AFFE0;
  *(inited + 128) = v2;
  *(inited + 136) = v1;

  *(inited + 144) = [v3 personValueType];
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x800000018F0B0000;
  *(inited + 168) = v2;
  *(inited + 176) = v1;

  *(inited + 184) = [v3 currencyAmountValueType];
  *(inited + 192) = 0xD00000000000001ELL;
  *(inited + 200) = 0x800000018F0B0020;
  *(inited + 208) = v2;
  *(inited + 216) = v1;

  *(inited + 224) = [v3 paymentMethodValueType];
  *(inited + 232) = 0xD000000000000025;
  *(inited + 240) = 0x800000018F0B0040;
  *(inited + 248) = v2;
  *(inited + 256) = v1;
  v4 = objc_opt_self();

  *(inited + 264) = [v4 photoItemCollectionValueType];
  *(inited + 272) = 0xD000000000000020;
  *(inited + 280) = 0x800000018F0B0070;
  *(inited + 288) = v2;
  *(inited + 296) = v1;
  *(inited + 304) = [v4 intentToggleOperationValueType];
  *(inited + 312) = 0xD00000000000001CLL;
  *(inited + 320) = 0x800000018F0B00A0;
  *(inited + 328) = v2;
  *(inited + 336) = v1;
  *(inited + 344) = [v4 intentToggleStateValueType];
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  sub_18EFACEF8();
  return sub_18F093A5C();
}

uint64_t sub_18EFAD634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18F09444C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18EFADCB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9510, &qword_18F0AAE88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA3F0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED5FF9D8;
  v6 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x800000018F0AFD40;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_18F09BCC0;
  *(v7 + 32) = @"LNPlatformNameWildcard";
  v8 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v9 = @"LNPlatformNameWildcard";
  *(v7 + 40) = [v8 available];
  type metadata accessor for LNPlatformName();
  sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
  sub_18EFABC68();
  v10 = sub_18F093A5C();
  sub_18F09323C();
  v11 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
  v12 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0xD000000000000013, 0x800000018F0AFDD0, 0, 0, v3);
  v13 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v14 = sub_18EF9307C();
  v15 = objc_allocWithZone(LNCodableValueType);
  *(inited + 64) = sub_18EFABE0C(0xD000000000000021, 0x800000018F0AFD40, 0xD000000000000025, 0x800000018F0AFD70, v10, 0xD00000000000002BLL, 0x800000018F0AFDA0, v14);
  *(inited + 72) = 0xD000000000000028;
  *(inited + 80) = 0x800000018F0AFE30;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v5;
  v16 = objc_allocWithZone(LNSystemEntityValueType);
  *(inited + 104) = sub_18EFACD38();
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  sub_18EFACEF8();
  return sub_18F093A5C();
}

void sub_18EFAE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(a1, a2, a3, a4, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v10;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v14 != a4 || a4 + 32 + 24 * v10 <= (v14 + 4))
    {
      v17 = OUTLINED_FUNCTION_393();
      memmove(v17, v18, v19);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_393();
    swift_arrayInitWithCopy();
  }
}

unint64_t OUTLINED_FUNCTION_79(uint64_t a1)
{

  return sub_18EF85B48(a1);
}

void OUTLINED_FUNCTION_283()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_78()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);

  return sub_18F09431C();
}

void sub_18EFAE1E8(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v32 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_18F0944AC();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v15 = sub_18EFAF54C();
    v16 = v12[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v14;
    if (v12[3] < v16 + v17)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      sub_18F09418C();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v23 = (v22[6] + 16 * v15);
    *v23 = v9;
    v23[1] = v10;
    *(v22[7] + 8 * v15) = v13;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v22[2] = v26;
    ++v7;
    a2 = 1;
  }

  a4();
  v19 = *a3;
  v20 = sub_18EFAF54C();
  if ((v18 & 1) != (v21 & 1))
  {
    goto LABEL_21;
  }

  v15 = v20;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72B8, &unk_18F09BD00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001BLL, 0x800000018F0AFB50);
  sub_18F09414C();
  MEMORY[0x193AD8780](39, 0xE100000000000000);
  sub_18F0941AC();
  __break(1u);
}

unint64_t sub_18EFAE4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18F09444C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_18EFAE610()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = objc_opt_self();
  v2 = [v1 accelerationValueType];
  sub_18EFAC510(0x6172656C65636341, 0xEC0000006E6F6974, v2, v0);

  v3 = [v1 angleValueType];
  sub_18EFAC510(0x656C676E41, 0xE500000000000000, v3, v0);

  v4 = [v1 areaValueType];
  sub_18EFAC510(1634038337, 0xE400000000000000, v4, v0);

  v5 = [v1 concentrationMassValueType];
  sub_18EFAC510(0xD000000000000011, 0x800000018F0AFF00, v5, v0);

  v6 = [v1 dispersionValueType];
  sub_18EFAC510(0x6973726570736944, 0xEA00000000006E6FLL, v6, v0);

  v7 = [v1 durationValueType];
  sub_18EFAC510(0x6E6F697461727544, 0xE800000000000000, v7, v0);

  v8 = [v1 energyValueType];
  sub_18EFAC510(0x796772656E45, 0xE600000000000000, v8, v0);

  v9 = [v1 electricChargeValueType];
  sub_18EFAC510(0x6369727463656C45, 0xEE00656772616843, v9, v0);

  v10 = [v1 electricCurrentValueType];
  sub_18EFAC510(0x6369727463656C45, 0xEF746E6572727543, v10, v0);

  v11 = [v1 electricPotentialDifferenceValueType];
  sub_18EFAC510(0xD00000000000001BLL, 0x800000018F0AFF20, v11, v0);

  v12 = [v1 electricResistanceValueType];
  sub_18EFAC510(0xD000000000000012, 0x800000018F0AFF40, v12, v0);

  v13 = [v1 frequencyValueType];
  sub_18EFAC510(0x636E657571657246, 0xE900000000000079, v13, v0);

  v14 = [v1 fuelEfficiencyValueType];
  sub_18EFAC510(0x696666456C657546, 0xEE0079636E656963, v14, v0);

  v15 = [v1 illuminanceValueType];
  sub_18EFAC510(0x616E696D756C6C49, 0xEB0000000065636ELL, v15, v0);

  v16 = [v1 informationStorageValueType];
  sub_18EFAC510(0xD000000000000012, 0x800000018F0AFF60, v16, v0);

  v17 = [v1 lengthValueType];
  sub_18EFAC510(0x6874676E654CLL, 0xE600000000000000, v17, v0);

  v18 = [v1 massValueType];
  sub_18EFAC510(1936941389, 0xE400000000000000, v18, v0);

  v19 = [v1 powerValueType];
  sub_18EFAC510(0x7265776F50, 0xE500000000000000, v19, v0);

  v20 = [v1 pressureValueType];
  sub_18EFAC510(0x6572757373657250, 0xE800000000000000, v20, v0);

  v21 = [v1 speedValueType];
  sub_18EFAC510(0x6465657053, 0xE500000000000000, v21, v0);

  v22 = [v1 temperatureValueType];
  sub_18EFAC510(0x74617265706D6554, 0xEB00000000657275, v22, v0);

  v23 = [v1 volumeValueType];
  sub_18EFAC510(0x656D756C6F56, 0xE600000000000000, v23, v0);

  swift_beginAccess();
  v24 = *(v0 + 16);

  return v24;
}

uint64_t sub_18EFAEC48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_18EFAF260(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, char __src, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_36_0();
  a34 = v37;
  a35 = v38;
  OUTLINED_FUNCTION_34_0();
  v39 = *v36;
  if (*(*v36 + 24) > v40)
  {
    v41 = *(*v36 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9498, &qword_18F0AAA88);
  v42 = OUTLINED_FUNCTION_38_0();
  if (!*(v39 + 16))
  {
LABEL_31:

LABEL_32:
    *v35 = v42;
    OUTLINED_FUNCTION_35_0();
    return;
  }

  v85 = v35;
  v86 = v39;
  v43 = 0;
  v44 = v39;
  OUTLINED_FUNCTION_0_7();
  v48 = (v47 + 63) >> 6;
  v49 = v42 + 8;
  if ((v46 & v45) == 0)
  {
LABEL_6:
    v51 = v43;
    while (1)
    {
      v43 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v43 >= v48)
      {
        break;
      }

      ++v51;
      if (*(v44 + 8 * v43))
      {
        OUTLINED_FUNCTION_229();
        goto LABEL_11;
      }
    }

    if ((a12 & 1) == 0)
    {

      v35 = v85;
      goto LABEL_32;
    }

    v79 = *(v39 + 32);
    OUTLINED_FUNCTION_9_1();
    v35 = v85;
    if (v81 != v82)
    {
      OUTLINED_FUNCTION_11_1(v80);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v83, v84, v44);
    }

    *(v39 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_0();
LABEL_11:
    v52 = v50 | (v43 << 6);
    v53 = *(v39 + 56);
    v54 = (*(v39 + 48) + 32 * v52);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[2];
    v58 = v54[3];
    v59 = *(v53 + 8 * v52);
    if ((a12 & 1) == 0)
    {
      v60 = v54[1];

      v61 = v59;
    }

    v62 = v42[5];
    sub_18F09452C();
    v63 = v56;
    v64 = v55;
    v65 = v57;
    v66 = v63;
    sub_18F093C1C();
    sub_18EFAD10C(&__src, v65);
    sub_18EFACFFC(&__src, v58);
    v67 = sub_18F09456C();
    OUTLINED_FUNCTION_6_2(v67);
    v69 = v49[v68];
    OUTLINED_FUNCTION_17_0();
    if (v70)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_23:
    OUTLINED_FUNCTION_2_4();
    *(v49 + v74) |= v75;
    v77 = (v42[6] + 32 * v76);
    *v77 = v64;
    v77[1] = v66;
    v77[2] = v65;
    v77[3] = v58;
    *(v42[7] + 8 * v76) = v59;
    OUTLINED_FUNCTION_13_1();
    v39 = v86;
    if (!v78)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v70)
    {
      if (v72)
      {
        break;
      }
    }

    if (v71 == v73)
    {
      v71 = 0;
    }

    if (v49[v71] != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_18EFAF4AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_18F0AAA20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_18EFAF54C()
{
  OUTLINED_FUNCTION_376();
  v1 = *(v0 + 40);
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F09456C();
  v2 = OUTLINED_FUNCTION_189();

  return sub_18EFAE4CC(v2, v3, v4);
}

id sub_18EFAF5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFAC408(a2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  a2[4] = result;
  return result;
}

uint64_t sub_18EFAF5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v11 = ~v6;
  v22 = (a3 + 40);
  while (1)
  {
    v12 = (*(v5 + 48) + 32 * v7);
    result = *v12;
    v14 = v12[2];
    v15 = v12[3];
    v16 = *v12 == a1 && v12[1] == a2;
    if (v16 || (result = sub_18F09444C(), (result & 1) != 0))
    {
      v17 = *(v14 + 16);
      if (v17 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_22:
    v7 = (v7 + 1) & v11;
    if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  if (v17)
  {
    v18 = v14 == a3;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
LABEL_21:
    if (sub_18F02A618(v15, a4))
    {
      return v7;
    }

    goto LABEL_22;
  }

  v19 = (v14 + 40);
  v20 = v22;
  while (v17)
  {
    result = *(v19 - 1);
    if (result != *(v20 - 1) || *v19 != *v20)
    {
      result = sub_18F09444C();
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v19 += 2;
    v20 += 2;
    if (!--v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{
  *(v1 - 152) = a1;
  v3 = *(v1 - 224);

  return sub_18F0938EC();
}

void OUTLINED_FUNCTION_7_7()
{

  JUMPOUT(0x193AD8780);
}

void OUTLINED_FUNCTION_7_8()
{

  JUMPOUT(0x193AD9AF0);
}

uint64_t OUTLINED_FUNCTION_235(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

void OUTLINED_FUNCTION_23_0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = (*(v1 + 48) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

void LNContentTypeMetadata.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7560, &qword_18F09BE08);
  OUTLINED_FUNCTION_7(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_127();
  sub_18EFAFB88();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7570, &qword_18F09BE10);
    sub_18EFAFBDC(&unk_1ED5FD6E8);
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_314();
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
    OUTLINED_FUNCTION_320();
    v9 = sub_18F093DBC();

    v10 = sub_18F093DBC();

    [v14 initWithExportableTypes:v9 importableTypes:v10];

    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_279();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EFAFB88()
{
  result = qword_1ED5FD688;
  if (!qword_1ED5FD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD688);
  }

  return result;
}

unint64_t sub_18EFAFBDC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7570, &qword_18F09BE10);
    sub_18EF99DFC(v4);
    OUTLINED_FUNCTION_289();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EFAFC98(char a1)
{
  if (a1)
  {
    return 0x626174726F706D69;
  }

  else
  {
    return 0x626174726F707865;
  }
}

void LNContentType.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7548, &qword_18F09BDF8);
  OUTLINED_FUNCTION_7(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_127();
  sub_18EFAFE40();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v0)
  {
    sub_18F09427C();
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_18F093B5C();

    [v9 initWithContentType_];

    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_137();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EFAFE40()
{
  result = qword_1ED5FD5C0;
  if (!qword_1ED5FD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_347()
{
  *(v1 - 192) = v0;

  return sub_18F09411C();
}

void sub_18EFAFED0(void *a1@<X8>)
{
  LNContentTypeMetadata.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

__n128 OUTLINED_FUNCTION_91@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 136);
  v3 = *(v1 - 104);
  *(a1 + 48) = *(v1 - 120);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_291()
{

  return sub_18F09444C();
}

void sub_18EFAFF30(void *a1@<X8>)
{
  LNContentType.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

Class __getLNExportedContentClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __LinkServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E72B1318;
    v9 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNValue.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("LNExportedContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNExportedContentClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNValue.m" lineNumber:20 description:{@"Unable to find class %s", "LNExportedContent"}];

LABEL_10:
    __break(1u);
  }

  getLNExportedContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_18EFB0DC4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_2(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EFA63B4(v13, v9, a2);
  *a3 = result;
  return result;
}

id sub_18EFB0F38(unint64_t a1)
{
  if (a1 > 0x16)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E72B0BA8[a1]];
  }
}

uint64_t static AssistantPrebuiltLibrary.loadLibrary()()
{
  if (qword_1EACB6C90 != -1)
  {
    swift_once();
  }

  v1 = sub_18F093A2C();
  __swift_project_value_buffer(v1, qword_1EACCDC28);
  v2 = sub_18F093A0C();
  v3 = sub_18F093EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18EF7E000, v2, v3, "Loading prebuilt library from AppIntentDomains", v4, 2u);
    MEMORY[0x193AD9AF0](v4, -1, -1);
  }

  sub_18F0934FC();
  result = sub_18F0934CC();
  if (!v0)
  {
    v6 = sub_18EFB3ACC();

    return v6;
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

void sub_18EFB115C()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v148 = sub_18F09381C();
  v8 = OUTLINED_FUNCTION_7(v148);
  v140 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42();
  v147 = v12 - v13;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v114 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9420, &qword_18F0AAA38);
  v16 = OUTLINED_FUNCTION_36(v146);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v156 = (&v114 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9428, &qword_18F0AAA40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v153 = &v114 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9430, &qword_18F0AAA48);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v152 = &v114 - v25;
  OUTLINED_FUNCTION_237();
  v149 = sub_18F09339C();
  v26 = OUTLINED_FUNCTION_7(v149);
  v145 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22();
  v144 = v31 - v30;
  OUTLINED_FUNCTION_237();
  v150 = sub_18F0937FC();
  v32 = OUTLINED_FUNCTION_7(v150);
  v154 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42();
  v151 = v36 - v37;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v114 - v39;
  v161 = 0;
  v130 = sub_18F09343C();
  v129 = v41;
  v42 = MEMORY[0x1E69E7CC0];
  v128 = sub_18F093A5C();
  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v127 = MEMORY[0x193AD89C0](v42);
  v43 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v164 = sub_18F09343C();
  v165[0] = v44;
  v165[1] = 0;
  v165[2] = 0;
  v166[0] = 0;
  v45 = v3;
  v46 = sub_18F0937AC();
  v48 = v47;

  sub_18F0933DC();
  v126 = sub_18F042998(&v164, v46, v48, v7, v5, v40, 0, 0);
  v162[0] = sub_18F09343C();
  v162[1] = v49;
  v162[2] = 0;
  v162[3] = 0;
  v163 = 1;
  v138 = v45;
  v50 = sub_18F0937AC();
  v52 = v51;

  sub_18F0933DC();
  v53 = v7;
  v137 = v40;
  v134 = v43;
  v54 = sub_18F042998(v162, v50, v52, v7, v5, v40, 0, 0);
  v55 = objc_allocWithZone(LNActionDescriptionMetadata);
  v125 = sub_18EFB38A8(v54, 0, MEMORY[0x1E69E7CC0], 0);
  HIDWORD(v124) = sub_18F0933AC();
  v56 = v144;
  sub_18F0933FC();
  v123 = sub_18F09338C();
  v57 = v152;
  (*(v145 + 8))(v56, v149);
  sub_18F09341C();
  v58 = sub_18F09386C();
  HIDWORD(v121) = __swift_getEnumTagSinglePayload(v57, 1, v58);
  if (HIDWORD(v121) == 1)
  {
    sub_18EFB3164(v57, &qword_1EACB9430, &qword_18F0AAA48);
    v122 = 0;
  }

  else
  {
    v59 = sub_18F02CB74();
    OUTLINED_FUNCTION_33_0(v59, &v154);
    (*(v60 + 8))(v57, v58);
  }

  v61 = v153;
  sub_18F09344C();
  v62 = sub_18F0939AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v62);
  v64 = v138;
  if (EnumTagSinglePayload == 1)
  {
    sub_18EFB3164(v61, &qword_1EACB9428, &qword_18F0AAA40);
    v120 = 0;
  }

  else
  {
    v65 = sub_18EFB22F0();
    OUTLINED_FUNCTION_33_0(v65, &v152);
    (*(v66 + 8))(v61, v62);
  }

  v67 = sub_18F0933BC();
  MEMORY[0x1EEE9AC00](v67);
  v113 = v0;
  v119 = sub_18EFB394C(sub_18EFB383C);

  sub_18EFB336C();
  v118 = v68;
  sub_18F09345C();
  v69 = v159;
  v136 = v5;
  v135 = v53;
  if (v159)
  {
    __swift_project_boxed_opaque_existential_1Tm(v158, v159);
    v70 = v137;
    sub_18F0933DC();
    v71 = sub_18F09343C();
    v117 = sub_18F0345A0(v53, v5, v64, v70, v71, v72, &v161, v69);

    v73 = v154;
    (*(v154 + 8))(v70, v150);
    __swift_destroy_boxed_opaque_existential_1Tm(v158);
  }

  else
  {
    sub_18EFB3164(v158, &unk_1EACB9438, &qword_18F0AAA50);
    v117 = 0;
    v73 = v154;
  }

  v116 = sub_18EFB5704();
  v115 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  v74 = *(sub_18F0933EC() + 16);

  v75 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    v76 = sub_18F0933EC();
    v77 = 0;
    v143 = v140 + 16;
    v142 = v140 + 88;
    v157 = v75;
    v78 = (v140 + 8);
    v132 = v140 + 96;
    v149 = *(v76 + 16);
    LODWORD(v140) = *MEMORY[0x1E698ACA8];
    v133 = v73 + 16;
    v139 = v73 + 8;
    v131 = *MEMORY[0x1E698ACA0];
    v74 = v75;
    v145 = v1;
    v144 = v76;
    for (i = v78; ; v78 = i)
    {
      if (v149 == v77)
      {

        goto LABEL_29;
      }

      if (v77 >= *(v76 + 16))
      {
        break;
      }

      v79 = sub_18F09384C();
      OUTLINED_FUNCTION_36(v79);
      v81 = *(v80 + 16);
      v82 = v76 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v77;
      v83 = *(v146 + 48);
      v84 = v156;
      *v156 = v77;
      v81(v84 + v83, v82);
      sub_18F0933DC();
      v152 = sub_18F09343C();
      v86 = v85;
      v87 = v155;
      sub_18F09383C();
      OUTLINED_FUNCTION_4_2(&v167);
      v88 = v147;
      v89 = v148;
      v90(v147, v87, v148);
      OUTLINED_FUNCTION_4_2(v166);
      v92 = v91(v88, v89);
      if (v92 == v140)
      {
        OUTLINED_FUNCTION_4_2(&v161);
        v93(v88, v89);
        v94 = *(v88 + 8);
        v95 = *v78;
        v96 = 1;
      }

      else
      {
        v95 = *v78;
        if (v92 != v131)
        {
          v95(v88, v89);
        }

        v94 = 0;
        v96 = 9999;
      }

      v154 = v96;
      v95(v155, v89);
      sub_18EF825F4(0, &qword_1EACB6F80, 0x1E696AE18);
      sub_18F09380C();
      v153 = sub_18F093E9C();

      sub_18F09382C();
      if (v97)
      {
        v98 = sub_18F093E9C();
      }

      else
      {
        v98 = 0;
      }

      v99 = v150;
      if (v94)
      {
        v158[0] = v152;
        v158[1] = v86;
        v158[2] = v77;
        v159 = 0;
        v160 = 7;

        v100 = sub_18F0937AC();
        v102 = v101;
        OUTLINED_FUNCTION_4_2(v162);
        v103 = v137;
        v104 = v151;
        v105(v137, v151, v99);
        v106 = v136;

        v107 = sub_18F042998(v158, v100, v102, v135, v106, v103, 0, 0);

        swift_bridgeObjectRelease_n();
      }

      else
      {

        v107 = 0;
        v104 = v151;
      }

      sub_18EF825F4(0, &unk_1EACB6F30, off_1E72AFE70);
      sub_18EFB9C40(v153, v98, v154, v107);
      OUTLINED_FUNCTION_4_2(v165);
      v108(v104, v99);
      v109 = sub_18EFB3164(v156, &qword_1EACB9420, &qword_18F0AAA38);
      MEMORY[0x193AD88C0](v109);
      if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      sub_18F093E3C();
      v74 = v157;
      ++v77;
      v76 = v144;
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v110 = HIDWORD(v121) == 1;
    sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
    LOBYTE(v112) = v110;
    LOBYTE(v111) = BYTE4(v124) & 1;
    LNActionMetadata.init(identifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:deprecationMetadata:openAppWhenRun:supportedModes:explicitAuthenticationPolicy:outputType:outputFlags:parameters:systemProtocolMetadata:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:requiredCapabilities:attributionBundleIdentifier:sideEffect:assistantDefinedSchemas:assistantDefinedSchemaTraits:visibilityMetadata:fullyQualifiedTypeName:constraints:allowedTargets:)(v130, v129, 0, 0xE000000000000000, v128, v127, 1, v126, v125, 0, v111, v123, v122, v112, v120, 0, v119, v118, v117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v116, v115, 0, 0, v74, 0, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_259();
  }
}

uint64_t sub_18EFB1E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v60 = a4;
  v67 = a3;
  v51 = a2;
  v57 = a5;
  v6 = sub_18F0939AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_18F0937FC();
  v52 = *(v49 - 8);
  v11 = v52;
  v12 = *(v52 + 64);
  v13 = MEMORY[0x1EEE9AC00](v49);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = (&v45 - v16);
  sub_18F0933DC();
  v17 = sub_18F09343C();
  v58 = v17;
  v19 = v18;
  v20 = sub_18F09371C();
  v55 = v21;
  v56 = v20;
  sub_18F09372C();
  v54 = sub_18EFB22F0();
  (*(v7 + 8))(v10, v6);
  v47 = a1;
  v53 = sub_18F0936DC();
  v59 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);

  v22 = sub_18F09371C();
  v65[0] = v17;
  v65[1] = v19;
  v65[2] = v22;
  v65[3] = v23;
  v66 = 3;
  v24 = sub_18F0937AC();
  v26 = v25;
  v45 = *(v11 + 16);
  v27 = v48;
  v28 = v49;
  v45(v15, v48, v49);
  v29 = v67;

  v30 = v51;
  v50 = sub_18F042998(v65, v24, v26, v51, v29, v15, 0, 0);
  v46 = v19;

  v31 = sub_18F09371C();
  v63[0] = v58;
  v63[1] = v19;
  v63[2] = v31;
  v63[3] = v32;
  v64 = 4;
  v33 = sub_18F0937AC();
  v35 = v34;
  v45(v15, v27, v28);
  v36 = v67;

  v37 = sub_18F042998(v63, v33, v35, v30, v36, v15, 0, 0);
  v38 = sub_18F09371C();
  v40 = sub_18F0409B0(v30, v36, v60, v27, v58, v46, v38, v39);

  sub_18F0936FC();
  v41 = v62 != 0;
  sub_18EFB3164(v61, &qword_1EACB9180, &qword_18F09BD30);
  v42 = objc_allocWithZone(LNActionParameterMetadata);
  v43 = sub_18EFB31BC(v56, v55, v54, v53 & 1, v50, v37, MEMORY[0x1E69E7CC0], v40, 0, 0, v41, 0, 0);

  result = (*(v52 + 8))(v27, v28);
  *v57 = v43;
  return result;
}

id sub_18EFB22F0()
{
  v1 = sub_18F0936BC();
  v2 = OUTLINED_FUNCTION_7(v1);
  v105 = v3;
  v106 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_22();
  v104 = v7 - v6;
  v8 = sub_18F0936CC();
  v9 = OUTLINED_FUNCTION_7(v8);
  v107 = v10;
  v108 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22();
  v15 = v14 - v13;
  v113 = sub_18F09362C();
  v16 = OUTLINED_FUNCTION_7(v113);
  v111 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v112 = &v102 - v28;
  v29 = sub_18F09356C();
  v30 = OUTLINED_FUNCTION_7(v29);
  v114 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22();
  v36 = v35 - v34;
  v37 = sub_18F0939AC();
  v38 = OUTLINED_FUNCTION_7(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v38);
  v110 = &v102 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v102 - v45;
  v47 = *(v40 + 16);
  v103 = v0;
  v109 = v47;
  v47(&v102 - v45, v0, v37);
  v48 = *(v40 + 88);
  v115 = v37;
  v49 = v48(v46, v37);
  if (v49 != *MEMORY[0x1E698AD50])
  {
    if (v49 == *MEMORY[0x1E698AD98])
    {
      v50 = [objc_opt_self() doubleValueType];
      goto LABEL_9;
    }

    if (v49 == *MEMORY[0x1E698AD68])
    {
      v50 = [objc_opt_self() BOOLValueType];
      goto LABEL_9;
    }

    if (v49 == *MEMORY[0x1E698ADB0])
    {
      (*(v40 + 8))(v46, v115);
      v50 = [objc_opt_self() stringValueType];
      goto LABEL_9;
    }

    if (v49 == *MEMORY[0x1E698ADA8])
    {
      v52 = OUTLINED_FUNCTION_3_15();
      v53(v52);
      v54 = [objc_opt_self() personValueType];
      sub_18EF82E14(v46, &qword_1EACB97E8, &qword_18F0AC370);
      return v54;
    }

    if (v49 == *MEMORY[0x1E698AD78])
    {
      v55 = OUTLINED_FUNCTION_3_15();
      v56(v55);
      v57 = v114;
      (*(v114 + 32))(v36, v46, v29);
      sub_18EF825F4(0, &unk_1EACB6E00, off_1E72AFF18);
      sub_18F09354C();
      v58 = sub_18EFB39E8();
      (*(v57 + 8))(v36, v29);
      return v58;
    }

    if (v49 == *MEMORY[0x1E698ADA0])
    {
      v59 = OUTLINED_FUNCTION_3_15();
      v60(v59);
      v61 = v112;
      sub_18EFB3978(v46, v112);
      sub_18EFB3A5C(v61, v27);
      v62 = v113;
      if (__swift_getEnumTagSinglePayload(v27, 1, v113) == 1)
      {
        sub_18EF82E14(v27, &qword_1EACB96A0, &unk_18F0ABB80);
        v58 = [objc_allocWithZone(LNAnyEntityType) init];
      }

      else
      {
        v74 = v111;
        (*(v111 + 32))(v22, v27, v62);
        sub_18EF825F4(0, &unk_1EACB6E00, off_1E72AFF18);
        sub_18F09361C();
        v58 = sub_18EFB39E8();
        (*(v74 + 8))(v22, v62);
      }

      sub_18EF82E14(v61, &qword_1EACB96A0, &unk_18F0ABB80);
      return v58;
    }

    if (v49 == *MEMORY[0x1E698AD90])
    {
      v63 = OUTLINED_FUNCTION_2_17();
      v64 = v115;
      v65(v63, v115);
      v66 = *v46;
      v67 = *(*v46 + 16);
      if (v67)
      {
        v116 = MEMORY[0x1E69E7CC0];
        sub_18F09411C();
        v68 = v66 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v69 = *(v40 + 72);
        v113 = v66;
        v114 = v69;
        v71 = v109;
        v70 = v110;
        do
        {
          v72 = v71(v70, v68, v64);
          sub_18EFB22F0(v72);
          (*(v40 + 8))(v70, v64);
          sub_18F0940FC();
          v73 = *(v116 + 16);
          sub_18F09412C();
          sub_18F09413C();
          sub_18F09410C();
          v68 += v114;
          --v67;
        }

        while (v67);
      }

      else
      {
        v81 = *v46;
      }

      sub_18EF825F4(0, &unk_1EACB7248, off_1E72AFED0);
      return sub_18EFBA294();
    }

    v75 = v115;
    if (v49 == *MEMORY[0x1E698AD00])
    {
      (*(v40 + 96))(v46, v115);
      v77 = v107;
      v76 = v108;
      (*(v107 + 32))(v15, v46, v108);
      v58 = sub_18EFB7B38();
      (*(v77 + 8))(v15, v76);
      return v58;
    }

    if (v49 == *MEMORY[0x1E698ACF8])
    {
      (*(v40 + 96))(v46, v115);
      v78 = v104;
      v79 = v105;
      v80 = v106;
      (*(v105 + 32))(v104, v46, v106);
      v58 = sub_18EFBBA78();
      (*(v79 + 8))(v78, v80);
      return v58;
    }

    if (v49 == *MEMORY[0x1E698AD88])
    {
      v83 = OUTLINED_FUNCTION_2_17();
      v84(v83, v75);
      v85 = *v46;
      v86 = swift_projectBox();
      v87 = v110;
      v88 = v109(v110, v86, v75);
      v89 = sub_18EFB22F0(v88);
      v90 = [objc_allocWithZone(LNArrayValueType) initWithMemberValueType:v89 capabilities:3];
    }

    else
    {
      v91 = v109;
      v87 = v110;
      if (v49 != *MEMORY[0x1E698AD58])
      {
        if (v49 != *MEMORY[0x1E698ADC0])
        {
          if (v49 == *MEMORY[0x1E698AD48])
          {
            v50 = [objc_opt_self() stringValueType];
            goto LABEL_9;
          }

          if (v49 == *MEMORY[0x1E698AD38])
          {
            v50 = [objc_opt_self() attributedStringValueType];
            goto LABEL_9;
          }

          if (v49 == *MEMORY[0x1E698AD70])
          {
            v50 = [objc_opt_self() dateValueType];
            goto LABEL_9;
          }

          if (v49 == *MEMORY[0x1E698AD18])
          {
            v50 = [objc_opt_self() dateComponentsValueType];
            goto LABEL_9;
          }

          if (v49 == *MEMORY[0x1E698AD08])
          {
            sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
            return static LNCodableValueType.dateInterval.getter();
          }

          else if (v49 == *MEMORY[0x1E698ADB8])
          {
            sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
            return static LNCodableValueType.duration.getter();
          }

          else
          {
            if (v49 == *MEMORY[0x1E698AD60])
            {
              v50 = [objc_opt_self() URLValueType];
              goto LABEL_9;
            }

            if (v49 == *MEMORY[0x1E698AD80])
            {
              v50 = [objc_opt_self() fileValueType];
              goto LABEL_9;
            }

            if (v49 == *MEMORY[0x1E698AD40])
            {
              sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
              return static LNCodableValueType.personNameComponents.getter();
            }

            else
            {
              if (v49 == *MEMORY[0x1E698ADC8])
              {
                v50 = [objc_opt_self() placemarkValueType];
                goto LABEL_9;
              }

              if (v49 == *MEMORY[0x1E698AD10])
              {
                v50 = [objc_opt_self() currencyAmountValueType];
                goto LABEL_9;
              }

              if (v49 == *MEMORY[0x1E698ACF0])
              {
                v50 = [objc_opt_self() applicationValueType];
                goto LABEL_9;
              }

              if (v49 == *MEMORY[0x1E698AD20])
              {
                v50 = [objc_opt_self() recurrenceRuleType];
                goto LABEL_9;
              }

              if (v49 == *MEMORY[0x1E698ACE8])
              {
                return [objc_allocWithZone(LNAnyAppValueType) init];
              }

              else if (v49 == *MEMORY[0x1E698AD28])
              {
                sub_18EF825F4(0, &qword_1ED5FF9F0, off_1E72B01C8);
                return static LNSystemEntityValueType.placeDescriptor.getter();
              }

              else
              {
                if (v49 != *MEMORY[0x1E698AD30])
                {
                  v116 = 0;
                  v117 = 0xE000000000000000;
                  sub_18F09406C();
                  MEMORY[0x193AD8780](0xD000000000000013, 0x800000018F0B0C80);
                  sub_18F09414C();
                  result = sub_18F0941AC();
                  __break(1u);
                  return result;
                }

                sub_18EF825F4(0, &qword_1ED5FF9F0, off_1E72B01C8);
                return static LNSystemEntityValueType.semanticContentDescriptor.getter();
              }
            }
          }
        }

        v97 = OUTLINED_FUNCTION_2_17();
        v98(v97, v75);
        v99 = *v46;
        v100 = swift_projectBox();
        v101 = v91(v87, v100, v75);
        v58 = sub_18EFB22F0(v101);
LABEL_39:
        (*(v40 + 8))(v87, v75);

        return v58;
      }

      v92 = OUTLINED_FUNCTION_2_17();
      v93(v92, v75);
      v94 = *v46;
      v95 = swift_projectBox();
      v96 = v91(v87, v95, v75);
      v89 = sub_18EFB22F0(v96);
      v90 = [objc_allocWithZone(LNArrayValueType) initWithMemberValueType:v89 capabilities:0];
    }

    v58 = v90;

    goto LABEL_39;
  }

  v50 = [objc_opt_self() intValueType];
LABEL_9:

  return v50;
}