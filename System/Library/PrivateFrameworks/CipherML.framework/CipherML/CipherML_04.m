uint64_t specialized static CipherMLError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v137 = a2;
  v2 = type metadata accessor for HE.SecurityLevel();
  v134 = *(v2 - 8);
  v135 = v2;
  v3 = *(v134 + 64);
  MEMORY[0x28223BE20](v2);
  v125 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HE.Scheme();
  v132 = *(v5 - 8);
  v133 = v5;
  v6 = *(v132 + 64);
  MEMORY[0x28223BE20](v5);
  v124 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NetworkManagerError(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CipherMLError();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v130 = &v121 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v127 = (&v121 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v129 = &v121 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = (&v121 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v121 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v121 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v121 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v121 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v121 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v121 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v121 - v44);
  MEMORY[0x28223BE20](v43);
  v47 = (&v121 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML0A7MLErrorO_ACtMd, &_s8CipherML0A7MLErrorO_ACtMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v121 - v51;
  v53 = &v121 + *(v50 + 56) - v51;
  outlined init with copy of CipherMLError(v136, &v121 - v51);
  v136 = v53;
  outlined init with copy of CipherMLError(v137, v53);
  v137 = v52;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = v137;
      outlined init with copy of CipherMLError(v137, v45);
      v88 = *v45;
      v87 = v45[1];
      v90 = v45[2];
      v89 = v45[3];
      v92 = v45[4];
      v91 = v45[5];
      v93 = v136;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_160;
      }

      v94 = *v93;
      v95 = v93[1];
      v97 = v93[2];
      v96 = v93[3];
      v98 = v93[4];
      v99 = v93[5];
      v135 = v98;
      if (v88 == v94 && v87 == v95)
      {
      }

      else
      {
        v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v117 & 1) == 0)
        {

          goto LABEL_178;
        }
      }

      if (v90 == v97 && v89 == v96)
      {

        goto LABEL_173;
      }

      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v119)
      {
LABEL_173:
        v54 = v137;
        if (v92 != v135 || v91 != v99)
        {
          v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v120)
          {
            goto LABEL_148;
          }

LABEL_176:
          outlined destroy of AspireHeEncryptionParameters(v54, type metadata accessor for CipherMLError);
          goto LABEL_162;
        }

LABEL_110:

LABEL_148:
        v59 = v54;
LABEL_170:
        outlined destroy of AspireHeEncryptionParameters(v59, type metadata accessor for CipherMLError);
        v78 = 1;
        return v78 & 1;
      }

LABEL_178:

      outlined destroy of AspireHeEncryptionParameters(v137, type metadata accessor for CipherMLError);
      goto LABEL_162;
    case 2u:
      v54 = v137;
      outlined init with copy of CipherMLError(v137, v42);
      v56 = *v42;
      v55 = v42[1];
      v57 = v136;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_160;
      }

      goto LABEL_108;
    case 3u:
      v60 = v137;
      outlined init with copy of CipherMLError(v137, v39);
      v81 = *v39;
      v80 = v39[1];
      v82 = v136;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_156;
      }

      v83 = *v82;
      v84 = v82[1];
      if (v81 == v83 && v80 == v84)
      {

        goto LABEL_151;
      }

      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    case 4u:
      v68 = v137;
      outlined init with copy of CipherMLError(v137, v36);
      v69 = v36[1];
      v70 = v136;
      v58 = swift_getEnumCaseMultiPayload() == 4;
      v59 = v68;
      if (!v58)
      {
        goto LABEL_161;
      }

      if (*v36 != *v70)
      {
        goto LABEL_180;
      }

      v71 = v70[1];
      goto LABEL_88;
    case 5u:
      v100 = v137;
      outlined init with copy of CipherMLError(v137, v33);
      v69 = v33[1];
      v101 = v136;
      v58 = swift_getEnumCaseMultiPayload() == 5;
      v59 = v100;
      if (!v58)
      {
        goto LABEL_161;
      }

      if (*v33 != *v101)
      {
        goto LABEL_180;
      }

      v71 = v101[1];
LABEL_88:
      v78 = v69 == v71;
      outlined destroy of AspireHeEncryptionParameters(v59, type metadata accessor for CipherMLError);
      return v78 & 1;
    case 6u:
      v54 = v137;
      outlined init with copy of CipherMLError(v137, v30);
      v56 = *v30;
      v55 = v30[1];
      v57 = v136;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_160;
      }

      goto LABEL_108;
    case 7u:
      v74 = v137;
      v75 = v128;
      outlined init with copy of CipherMLError(v137, v128);
      v85 = v136;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v77 = v122;
        outlined init with take of AspireHeEncryptionParameters(v85, v122, type metadata accessor for NetworkManagerError);
        v78 = specialized static NetworkManagerError.== infix(_:_:)(v75, v77);
        v79 = type metadata accessor for NetworkManagerError;
        goto LABEL_67;
      }

      v115 = type metadata accessor for NetworkManagerError;
      goto LABEL_158;
    case 8u:
      v54 = v137;
      v107 = v126;
      outlined init with copy of CipherMLError(v137, v126);
      v56 = *v107;
      v55 = v107[1];
      v57 = v136;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_108;
      }

      goto LABEL_160;
    case 9u:
      v74 = v137;
      v75 = v129;
      outlined init with copy of CipherMLError(v137, v129);
      v76 = v136;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v77 = v123;
        outlined init with take of AspireHeEncryptionParameters(v76, v123, type metadata accessor for AspireHeEncryptionParameters);
        v78 = static AspireHeEncryptionParameters.== infix(_:_:)(v75, v77);
        v79 = type metadata accessor for AspireHeEncryptionParameters;
LABEL_67:
        v86 = v79;
        outlined destroy of AspireHeEncryptionParameters(v77, v79);
        outlined destroy of AspireHeEncryptionParameters(v75, v86);
        outlined destroy of AspireHeEncryptionParameters(v74, type metadata accessor for CipherMLError);
        return v78 & 1;
      }

      v115 = type metadata accessor for AspireHeEncryptionParameters;
LABEL_158:
      outlined destroy of AspireHeEncryptionParameters(v75, v115);
      v59 = v74;
      goto LABEL_161;
    case 0xAu:
      v102 = v137;
      v103 = v127;
      outlined init with copy of CipherMLError(v137, v127);
      v104 = *v103;
      v105 = v136;
      v58 = swift_getEnumCaseMultiPayload() == 10;
      v59 = v102;
      if (!v58)
      {
        goto LABEL_161;
      }

      v106 = *v105;
      if (*(v105 + 8) == 1)
      {
        if (v106)
        {
          if (v106 == 1)
          {
            if (v104 == 1)
            {
              goto LABEL_170;
            }
          }

          else if (v104 == 2)
          {
            goto LABEL_170;
          }
        }

        else if (!v104)
        {
          goto LABEL_170;
        }
      }

      else if (v104 == v106)
      {
        goto LABEL_170;
      }

LABEL_180:
      outlined destroy of AspireHeEncryptionParameters(v59, type metadata accessor for CipherMLError);
      goto LABEL_162;
    case 0xBu:
      v60 = v137;
      v61 = v130;
      outlined init with copy of CipherMLError(v137, v130);
      v62 = v136;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v64 = v132;
        v63 = v133;
        v65 = v124;
        (*(v132 + 32))(v124, v62, v133);
        v66 = &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme;
        v67 = MEMORY[0x277D02F50];
        goto LABEL_45;
      }

      v112 = v132;
      v111 = v133;
      goto LABEL_153;
    case 0xCu:
      v60 = v137;
      v61 = v131;
      outlined init with copy of CipherMLError(v137, v131);
      v72 = v136;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v112 = v134;
        v111 = v135;
LABEL_153:
        (*(v112 + 8))(v61, v111);
LABEL_156:
        v59 = v60;
LABEL_161:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v59, &_s8CipherML0A7MLErrorO_ACtMd, &_s8CipherML0A7MLErrorO_ACtMR);
        goto LABEL_162;
      }

      v64 = v134;
      v63 = v135;
      v65 = v125;
      (*(v134 + 32))(v125, v72, v135);
      v66 = &lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel;
      v67 = MEMORY[0x277D02EF8];
LABEL_45:
      lazy protocol witness table accessor for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters(v66, v67);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v140 == v138 && v141 == v139)
      {
        v73 = *(v64 + 8);
        v73(v65, v63);

        v73(v61, v63);
LABEL_151:
        v59 = v60;
        goto LABEL_170;
      }

      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v114 = *(v64 + 8);
      v114(v65, v63);

      v114(v61, v63);
      if (v113)
      {
        goto LABEL_151;
      }

LABEL_164:
      outlined destroy of AspireHeEncryptionParameters(v60, type metadata accessor for CipherMLError);
LABEL_162:
      v78 = 0;
      return v78 & 1;
    case 0xDu:
      v58 = swift_getEnumCaseMultiPayload() == 13;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0xEu:
      v58 = swift_getEnumCaseMultiPayload() == 14;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0xFu:
      v58 = swift_getEnumCaseMultiPayload() == 15;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x10u:
      v58 = swift_getEnumCaseMultiPayload() == 16;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x11u:
      v58 = swift_getEnumCaseMultiPayload() == 17;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x12u:
      v58 = swift_getEnumCaseMultiPayload() == 18;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x13u:
      v58 = swift_getEnumCaseMultiPayload() == 19;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x14u:
      v58 = swift_getEnumCaseMultiPayload() == 20;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x15u:
      v58 = swift_getEnumCaseMultiPayload() == 21;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x16u:
      v58 = swift_getEnumCaseMultiPayload() == 22;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x17u:
      v58 = swift_getEnumCaseMultiPayload() == 23;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x18u:
      v58 = swift_getEnumCaseMultiPayload() == 24;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x19u:
      v58 = swift_getEnumCaseMultiPayload() == 25;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Au:
      v58 = swift_getEnumCaseMultiPayload() == 26;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Bu:
      v58 = swift_getEnumCaseMultiPayload() == 27;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Cu:
      v58 = swift_getEnumCaseMultiPayload() == 28;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Du:
      v58 = swift_getEnumCaseMultiPayload() == 29;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Eu:
      v58 = swift_getEnumCaseMultiPayload() == 30;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Fu:
      v58 = swift_getEnumCaseMultiPayload() == 31;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x20u:
      v58 = swift_getEnumCaseMultiPayload() == 32;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x21u:
      v58 = swift_getEnumCaseMultiPayload() == 33;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x22u:
      v58 = swift_getEnumCaseMultiPayload() == 34;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x23u:
      v58 = swift_getEnumCaseMultiPayload() == 35;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x24u:
      v58 = swift_getEnumCaseMultiPayload() == 36;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x25u:
      v58 = swift_getEnumCaseMultiPayload() == 37;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x26u:
      v58 = swift_getEnumCaseMultiPayload() == 38;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x27u:
      v58 = swift_getEnumCaseMultiPayload() == 39;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x28u:
      v58 = swift_getEnumCaseMultiPayload() == 40;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x29u:
      v58 = swift_getEnumCaseMultiPayload() == 41;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Au:
      v58 = swift_getEnumCaseMultiPayload() == 42;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Bu:
      v58 = swift_getEnumCaseMultiPayload() == 43;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Cu:
      v58 = swift_getEnumCaseMultiPayload() == 44;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Du:
      v58 = swift_getEnumCaseMultiPayload() == 45;
      v59 = v137;
      if (!v58)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    default:
      v54 = v137;
      outlined init with copy of CipherMLError(v137, v47);
      v56 = *v47;
      v55 = v47[1];
      v57 = v136;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_160:

        v59 = v54;
        goto LABEL_161;
      }

LABEL_108:
      v108 = *v57;
      v109 = v57[1];
      if (v56 == v108 && v55 == v109)
      {
        goto LABEL_110;
      }

      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v110 & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_148;
  }
}

uint64_t type metadata accessor for CipherMLError()
{
  result = type metadata singleton initialization cache for CipherMLError;
  if (!type metadata singleton initialization cache for CipherMLError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of CipherMLError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CipherMLError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AspireHeEncryptionParameters(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(void *a1)
{
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 userInfo];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v4;
  *&v54[0] = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd, &_s10Foundation14LocalizedError_pMR);
  if (swift_dynamicCast())
  {

    outlined init with take of LocalizedError(&v55, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225022960;
    v7 = *MEMORY[0x277CCA450];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    __swift_project_boxed_opaque_existential_1(&v58, *(&v59[0] + 1));
    v9 = dispatch thunk of LocalizedError.errorDescription.getter();
    v11 = 0x296C6C756E28;
    if (v10)
    {
      v11 = v9;
    }

    v12 = 0xE600000000000000;
    if (v10)
    {
      v12 = v10;
    }

    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
    v14 = [v2 domain];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x22AA609C0](v15);
    }

    v16 = [v2 code];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 initWithDomain:v14 code:v16 userInfo:isa];

    __swift_destroy_boxed_opaque_existential_0(&v58);
  }

  else
  {
    *&v57 = 0;
    v55 = 0u;
    v56 = 0u;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v55, &_s10Foundation14LocalizedError_pSgMd, &_s10Foundation14LocalizedError_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001ELL, 0x8000000225036440, &v58);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v58, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x8000000225036460, &v58);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v58, &_sypSgMd, &_sypSgMR);
    v19 = *MEMORY[0x277CCA750];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v20, v21, &v58);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v58, &_sypSgMd, &_sypSgMR);
    v22 = *MEMORY[0x277CCA7E8];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v23, v24, &v58);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v58, &_sypSgMd, &_sypSgMR);
    v25 = [v2 userInfo];
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v26 + 64);
    v53 = v60;
    v31 = (v28 + 63) >> 6;
    while (1)
    {
      v32 = v27;
      if (!v30)
      {
        break;
      }

      v33 = v27;
LABEL_21:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v33 << 6);
      v37 = (*(v26 + 48) + 16 * v36);
      v39 = *v37;
      v38 = v37[1];
      outlined init with copy of Any(*(v26 + 56) + 32 * v36, v54);
      *&v55 = v39;
      *(&v55 + 1) = v38;
      outlined init with take of Any(v54, &v56);

      v27 = v33;
LABEL_22:
      v58 = v55;
      v59[0] = v56;
      v59[1] = v57;
      v40 = *(&v55 + 1);
      if (!*(&v55 + 1))
      {
        v60 = v53;

        v47 = [v2 domain];
        if (!v47)
        {
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = MEMORY[0x22AA609C0](v48);
        }

        v49 = [v2 code];
        v50 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v51 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v50 initWithDomain:v47 code:v49 userInfo:v51];

        return;
      }

      v41 = v58;
      outlined init with take of Any(v59, &v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd, &_sSo14NSSecureCoding_pMR);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = v53;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
        v44 = v43;

        if (v44)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v54[0] = v53;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v42 = *&v54[0];
          }

          v46 = *(*(v42 + 48) + 16 * v52 + 8);

          outlined init with take of Any((*(v42 + 56) + 32 * v52), &v55);
          v53 = v42;
          specialized _NativeDictionary._delete(at:)(v52, v42);
        }

        else
        {
          v55 = 0u;
          v56 = 0u;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(&v55, &_sypSgMd, &_sypSgMR);
      }
    }

    if (v31 <= v27 + 1)
    {
      v34 = v27 + 1;
    }

    else
    {
      v34 = v31;
    }

    v27 = v34 - 1;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v30 = 0;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        goto LABEL_22;
      }

      v30 = *(v26 + 64 + 8 * v33);
      ++v32;
      if (v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

void type metadata completion function for CipherMLError()
{
  type metadata accessor for (group: String)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (useCase: String, group1: String, group2: String)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (message: String)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (Int, shardCount: Int)(319, &lazy cache variable for type metadata for (Int, shardCount: Int));
        if (v3 <= 0x3F)
        {
          type metadata accessor for (Int, shardCount: Int)(319, &lazy cache variable for type metadata for (got: Int, expected: Int));
          if (v4 <= 0x3F)
          {
            type metadata accessor for NetworkManagerError(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(319, &lazy cache variable for type metadata for (encryptionParams: AspireHeEncryptionParameters), type metadata accessor for AspireHeEncryptionParameters);
              if (v6 <= 0x3F)
              {
                type metadata accessor for (heScheme: AspireHeHeScheme)();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(319, &lazy cache variable for type metadata for (heScheme: HE.Scheme), MEMORY[0x277D02F50]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(319, &lazy cache variable for type metadata for (securityLevel: HE.SecurityLevel), MEMORY[0x277D02EF8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t type metadata accessor for (group: String)()
{
  result = lazy cache variable for type metadata for (group: String);
  if (!lazy cache variable for type metadata for (group: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (group: String));
  }

  return result;
}

void type metadata accessor for (useCase: String, group1: String, group2: String)()
{
  if (!lazy cache variable for type metadata for (useCase: String, group1: String, group2: String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (useCase: String, group1: String, group2: String));
    }
  }
}

uint64_t type metadata accessor for (message: String)()
{
  result = lazy cache variable for type metadata for (message: String);
  if (!lazy cache variable for type metadata for (message: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (message: String));
  }

  return result;
}

void type metadata accessor for (Int, shardCount: Int)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *type metadata accessor for (heScheme: AspireHeHeScheme)()
{
  result = lazy cache variable for type metadata for (heScheme: AspireHeHeScheme);
  if (!lazy cache variable for type metadata for (heScheme: AspireHeHeScheme))
  {
    result = &type metadata for AspireHeHeScheme;
    atomic_store(&type metadata for AspireHeHeScheme, &lazy cache variable for type metadata for (heScheme: AspireHeHeScheme));
  }

  return result;
}

void type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined destroy of AspireHeEncryptionParameters(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
  dispatch thunk of IteratorProtocol.next()();
  if ((v18 & 1) == 0)
  {
    v16 = xmmword_225022960;
    v10 = MEMORY[0x277D84B78];
    v11 = MEMORY[0x277D84BC0];
    do
    {
      v12 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = v16;
      *(v13 + 56) = v10;
      *(v13 + 64) = v11;
      *(v13 + 32) = v12;
      v14 = String.init(format:_:)();
      MEMORY[0x22AA60A80](v14);

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v18 != 1);
  }

  (*(v5 + 8))(v8, v4);
  return v19;
}

unint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator()
{
  result = lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator;
  if (!lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator);
  }

  return result;
}

uint64_t FixedWidthInteger.divCeil(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v66 = a4;
  v8 = *(a3 + 8);
  v64 = v8[3];
  v67 = *(v64 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v68 = a1;
  if (v20)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
LABEL_9:
      v69 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v27 = *(v8[2] + 8);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v11 + 8))(v19, a2);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_11;
    }

    if (dispatch thunk of BinaryInteger._lowWord.getter())
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v24 = __OFSUB__(v22, 64);
  v23 = v22 - 64 < 0;
  if (v21)
  {
    if (v22 <= 64)
    {
      goto LABEL_15;
    }

    v69 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = *(v8[2] + 8);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v19, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v23 == v24)
  {
    goto LABEL_18;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_15:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v29 = *(v8[4] + 8);
  v30 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v11 + 8))(v19, a2);
  if ((v30 & 1) == 0 || dispatch thunk of BinaryInteger._lowWord.getter())
  {
LABEL_19:
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v34)
    {
      if (v35 <= 64)
      {
        goto LABEL_21;
      }
    }

    else if (v35 <= 63)
    {
LABEL_21:
      if (dispatch thunk of BinaryInteger._lowWord.getter() <= 0)
      {
LABEL_31:
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
          {
            v69 = 0;
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v45 = *(v8[4] + 8);
            v46 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v11 + 8))(v19, a2);
            if ((v46 & 1) == 0)
            {
              return dispatch thunk of static BinaryInteger./ infix(_:_:)();
            }

            goto LABEL_43;
          }
        }

        else
        {
          v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v47)
          {
            if (v48 > 64)
            {
              v69 = 0;
              lazy protocol witness table accessor for type Int and conformance Int();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v49 = *(v8[4] + 8);
              v50 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v11 + 8))(v19, a2);
              if ((v50 & 1) == 0)
              {
                return dispatch thunk of static BinaryInteger./ infix(_:_:)();
              }

              goto LABEL_43;
            }

            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v51 = *(v8[4] + 8);
            v52 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v11 + 8))(v19, a2);
            if (v52)
            {
              goto LABEL_43;
            }
          }

          else if (v48 >= 64)
          {
            return dispatch thunk of static BinaryInteger./ infix(_:_:)();
          }
        }

        if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
        {
          return dispatch thunk of static BinaryInteger./ infix(_:_:)();
        }

LABEL_43:
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
          {
LABEL_48:
            v69 = 0;
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v55 = *(v8[4] + 8);
            v56 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v11 + 8))(v19, a2);
            if (v56)
            {
              goto LABEL_55;
            }

            return dispatch thunk of static BinaryInteger./ infix(_:_:)();
          }
        }

        else
        {
          v53 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v53)
          {
            if (v54 > 64)
            {
              goto LABEL_48;
            }

            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v57 = *(v8[4] + 8);
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v11 + 8))(v19, a2);
            if (v58)
            {
LABEL_55:
              v60 = v5;
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v59 = v63;
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v64 = *(v64 + 8);
              dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
              v42 = *(v11 + 8);
              v42(v59, a2);
              dispatch thunk of static BinaryInteger./ infix(_:_:)();
              v42(v17, a2);
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              goto LABEL_56;
            }
          }

          else if (v54 >= 64)
          {
            return dispatch thunk of static BinaryInteger./ infix(_:_:)();
          }
        }

        if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
        {
          return dispatch thunk of static BinaryInteger./ infix(_:_:)();
        }

        goto LABEL_55;
      }

LABEL_25:
      v38 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v39 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v38)
      {
        if (v39 <= 64)
        {
          goto LABEL_27;
        }
      }

      else if (v39 <= 63)
      {
LABEL_27:
        if (dispatch thunk of BinaryInteger._lowWord.getter() <= 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v69 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v43 = *(v8[4] + 8);
      v44 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v11 + 8))(v19, a2);
      if ((v44 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_28:
      v62 = v8;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v40 = v63;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v41 = *(v64 + 8);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v42 = *(v11 + 8);
      v42(v40, a2);
      dispatch thunk of static BinaryInteger./ infix(_:_:)();
      v42(v17, a2);
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
LABEL_56:
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v42(v17, a2);
      return (v42)(v19, a2);
    }

    v69 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v36 = *(v8[4] + 8);
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v11 + 8))(v19, a2);
    if ((v37 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_18:
  v69 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v31 = *(v8[2] + 8);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v11 + 8))(v19, a2);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t FixedWidthInteger.nextMultipleOf(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v6 = *(a3 + 8);
  v32 = *(v6 + 24);
  v29[1] = *(v32 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v14 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v15 <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v33 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v16 = *(*(v6 + 32) + 8);
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    v15 = (*(v10 + 8))(v13, a2);
    if (v17)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v15 > 63)
      {
        break;
      }

LABEL_6:
      v15 = dispatch thunk of BinaryInteger._lowWord.getter();
      if (v15 > 0)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      goto LABEL_15;
    }

    if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
    {
LABEL_23:
      FixedWidthInteger.divCeil(_:)(a1, a2, v30, v13);
      dispatch thunk of static Numeric.* infix(_:_:)();
      return (*(v10 + 8))(v13, a2);
    }

    __break(1u);
  }

  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v21 = __OFSUB__(v19, 64);
  v20 = v19 - 64 < 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v19 <= 64)
  {
    goto LABEL_21;
  }

  v33 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v22 = *(*(v6 + 32) + 8);
  v23 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v10 + 8))(v13, a2);
  if ((v23 & 1) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_15:
  v33 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v24 = *(*(v6 + 32) + 8);
  v25 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v10 + 8))(v13, a2);
  if ((v25 & 1) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_17:
  if (v20 == v21 || (dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_21:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v26 = *(*(v6 + 32) + 8);
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v10 + 8))(v13, a2);
  if (v27)
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of BinaryInteger._lowWord.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t RandomAccessCollection<>.binarySearch(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v66 = a1;
  v50 = a5;
  v62 = a3;
  v52 = *(a3 + 8);
  v9 = *(v52 + 8);
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v50 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v68 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of BidirectionalCollection.index(before:)();
  v51 = v14;
  v26 = *(v14 + 8);
  v59 = v20;
  v27 = v20;
  v28 = v25;
  v63 = v26;
  v64 = v14 + 8;
  v26(v27, v13);
  v67 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v29 = (v55 + 16);
    v55 += 8;
    v53 = v29;
    v54 = (v51 + 32);
    v65 = a4;
    v56 = v25;
    v57 = v13;
    do
    {
      v37 = a2;
      dispatch thunk of RandomAccessCollection.distance(from:to:)();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v38 = dispatch thunk of Collection.subscript.read();
      v39 = *v29;
      v40 = AssociatedTypeWitness;
      v41 = v61;
      v39(v61);
      (v38)(v69, 0);
      LOBYTE(v38) = dispatch thunk of static Comparable.> infix(_:_:)();
      v42 = *v55;
      (*v55)(v41, v40);
      if (v38)
      {
        v30 = v59;
        v31 = v68;
        dispatch thunk of BidirectionalCollection.index(before:)();
        v32 = v23;
        v33 = v6;
        v34 = v37;
        v28 = v56;
        v13 = v57;
      }

      else
      {
        v43 = dispatch thunk of Collection.subscript.read();
        v39(v41);
        (v43)(v69, 0);
        LOBYTE(v43) = dispatch thunk of static Comparable.< infix(_:_:)();
        v42(v41, v40);
        if ((v43 & 1) == 0)
        {
          v13 = v57;
          v48 = v63;
          v63(v23, v57);
          v48(v56, v13);
          v49 = v50;
          (*v54)(v50, v68, v13);
          v46 = v49;
          v45 = 0;
          return (*(v51 + 56))(v46, v45, 1, v13);
        }

        v30 = v59;
        v31 = v68;
        dispatch thunk of Collection.index(after:)();
        v28 = v56;
        v13 = v57;
        v32 = v56;
        v33 = v6;
        v34 = v37;
      }

      v35 = v63;
      v63(v31, v13);
      v35(v32, v13);
      (*v54)(v32, v30, v13);
      v36 = dispatch thunk of static Comparable.<= infix(_:_:)();
      a2 = v34;
      v6 = v33;
      v29 = v53;
    }

    while ((v36 & 1) != 0);
  }

  v44 = v63;
  v63(v23, v13);
  v44(v28, v13);
  v45 = 1;
  v46 = v50;
  return (*(v51 + 56))(v46, v45, 1, v13);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGSaySSGG_8CipherML16AspireApiRequestVsAE_pTg5015_s10Foundation4g4VSS8h4ML16jkl3Vs5C33_pIgggrzo_AC_SStAFsAG_pIegnrzr_TRAJSSAPsAE_pIgggrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v7 = type metadata accessor for AspireApiRequest(0);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - v12;
  v13 = *(a1 + 16);
  v39 = *(a2 + 16);
  v40 = v13;
  if (v39 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v39;
  }

  v47 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = v47;
  v42 = a1;
  v46 = a2;
  v37 = v14;
  if (v14)
  {

    v16 = 0;
    v17 = v14;
    while (1)
    {
      v18 = a1 + v16;
      v19 = *(a1 + v16 + 32);
      v20 = *(v18 + 40);
      v21 = *(v46 + v16 + 32);
      v22 = *(v46 + v16 + 40);
      outlined copy of Data._Representation(v19, v20);

      if (!v22)
      {
        goto LABEL_33;
      }

      v44(v19, v20, v21, v22);
      if (v4)
      {

        outlined consume of Data._Representation(v19, v20);
LABEL_27:

        return v15;
      }

      outlined consume of Data._Representation(v19, v20);

      v47 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v15 = v47;
      }

      *(v15 + 16) = v25 + 1;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v11, v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v25, type metadata accessor for AspireApiRequest);
      v16 += 16;
      --v17;
      a1 = v42;
      if (!v17)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v27 = v39;
  v26 = v40;
  if (v40 > v39)
  {
    v38 = a1 + 32;
    v28 = v37;
    v29 = 16 * v37;
    while (v28 < v26)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_30;
      }

      if (v27 == v28)
      {
        goto LABEL_24;
      }

      if (v28 >= v27)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v28, 1))
      {
        goto LABEL_32;
      }

      v31 = *(v38 + v29);
      v32 = *(v38 + v29 + 8);
      v33 = *(v46 + v29 + 32);
      v34 = *(v46 + v29 + 40);
      outlined copy of Data._Representation(v31, v32);

      v44(v31, v32, v33, v34);
      if (v4)
      {
        outlined consume of Data._Representation(v31, v32);

        goto LABEL_27;
      }

      outlined consume of Data._Representation(v31, v32);

      v47 = v15;
      v36 = *(v15 + 16);
      v35 = *(v15 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
        v15 = v47;
      }

      *(v15 + 16) = v36 + 1;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v41, v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v36, type metadata accessor for AspireApiRequest);
      ++v28;
      v29 += 16;
      v27 = v39;
      v26 = v40;
      if (v30 == v40)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_24:

  return v15;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t *, uint64_t, unint64_t), uint64_t a4)
{
  v5 = v4;
  v69 = a3;
  v70 = a4;
  v8 = type metadata accessor for AspireApiResponse(0);
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v59 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
  v14 = *(*(v68 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v68);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v60 = &v59 - v20;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  v72 = a1;
  v73 = v22;
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v75 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  result = v75;
  v66 = v23;
  v67 = v21;
  if (v23)
  {
    v64 = a2;
    v65 = v17;
    v25 = 0;
    v26 = (a2 + 40);
    v63 = v12;
    while (v21 != v25)
    {
      v27 = result;
      result = outlined init with copy of UserIdentifier(v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v25, v12, type metadata accessor for AspireApiResponse);
      if (v73 == v25)
      {
        goto LABEL_28;
      }

      v28 = *(v26 - 1);
      v29 = *v26;
      v30 = v65;
      v31 = (v65 + *(v68 + 48));
      outlined init with take of AspirePirSymmetricPirClientConfig(v12, v65, type metadata accessor for AspireApiResponse);
      *v31 = v28;
      v31[1] = v29;
      outlined copy of Data._Representation(v28, v29);
      v32 = v69(v30, v28, v29);
      v74 = v5;
      if (v5)
      {

        return outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      }

      v34 = v32;
      v35 = v33;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      result = v27;
      v75 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        result = v75;
      }

      ++v25;
      *(result + 16) = v37 + 1;
      v38 = result + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v26 += 2;
      v21 = v67;
      v5 = v74;
      v12 = v63;
      a2 = v64;
      if (v66 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_12:
    v74 = v5;
    v39 = v73;
    if (v21 <= v73)
    {
      return result;
    }

    v40 = v66;
    v65 = (a2 + 16 * v66 + 40);
    while (v40 < v21)
    {
      v66 = result;
      v41 = v62;
      result = outlined init with copy of UserIdentifier(v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v40, v62, type metadata accessor for AspireApiResponse);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_30;
      }

      if (v39 == v40)
      {
        outlined destroy of AspirePirKeywordPirParameters(v41, type metadata accessor for AspireApiResponse);
        return v66;
      }

      if (v40 >= v39)
      {
        goto LABEL_31;
      }

      v64 = v40 + 1;
      v42 = *(v65 - 1);
      v43 = *v65;
      v44 = v68;
      v45 = v61;
      v46 = (v61 + *(v68 + 48));
      outlined init with take of AspirePirSymmetricPirClientConfig(v41, v61, type metadata accessor for AspireApiResponse);
      *v46 = v42;
      v46[1] = v43;
      v47 = v60;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v45, v60, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      v48 = (v47 + *(v44 + 48));
      v49 = *v48;
      v50 = v48[1];
      outlined copy of Data._Representation(v42, v43);
      v51 = v74;
      v52 = v69(v47, v49, v50);
      v74 = v51;
      if (v51)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      }

      v54 = v52;
      v55 = v53;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      result = v66;
      v75 = v66;
      v57 = *(v66 + 16);
      v56 = *(v66 + 24);
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        result = v75;
      }

      ++v40;
      v65 += 2;
      *(result + 16) = v57 + 1;
      v58 = result + 16 * v57;
      *(v58 + 32) = v54;
      *(v58 + 40) = v55;
      v21 = v67;
      v39 = v73;
      if (v64 == v67)
      {
        return result;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML19SymmetricPirKeywordVGSay10Foundation4DataVSgGG_AOsAE_pTg503_s8f4ML19hij14V10Foundation4l7VSgAGs5C33_pIgggozo_AC_AGtAGsAH_pIegnrzr_TRAj2OsAE_pIgggozo_Tf1cn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v42 = *(a2 + 16);
  v43 = *(a1 + 16);
  if (v42 >= v43)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v57 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v57;
  v40 = a2;
  v41 = a1;
  v44 = v6;
  if (v6)
  {

    v8 = (a1 + 56);
    v9 = (a2 + 40);
    v10 = v6;
    while (1)
    {
      v52 = v10;
      v54 = v7;
      v12 = *(v8 - 3);
      v11 = *(v8 - 2);
      v14 = *(v8 - 1);
      v13 = *v8;
      v15 = *(v9 - 1);
      v16 = *v9;
      outlined copy of Data._Representation(v12, v11);
      outlined copy of Data._Representation(v14, v13);
      result = outlined copy of Data?(v15, v16);
      if (v11 >> 60 == 15)
      {
        goto LABEL_32;
      }

      v7 = a4;
      v18 = a3(v12, v11, v14, v13, v15, v16);
      if (v56)
      {

        outlined consume of Data._Representation(v12, v11);
        outlined consume of Data._Representation(v14, v13);
        outlined consume of Data?(v15, v16);
        return v7;
      }

      v48 = v19;
      v50 = v18;
      outlined consume of Data._Representation(v12, v11);
      outlined consume of Data._Representation(v14, v13);
      result = outlined consume of Data?(v15, v16);
      v7 = v54;
      v21 = *(v54 + 16);
      v20 = *(v54 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v7 = v54;
      }

      v8 += 4;
      v9 += 2;
      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v50;
      *(v22 + 40) = v48;
      v10 = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v24 = v42;
  v23 = v43;
  if (v43 > v42)
  {
    v25 = v44;
    v26 = (v40 + 16 * v44 + 40);
    v27 = (v41 + 32 * v44 + 56);
    while (v25 < v23)
    {
      if (__OFADD__(v25, 1))
      {
        goto LABEL_29;
      }

      if (v24 == v25)
      {
        goto LABEL_24;
      }

      if (v25 >= v24)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_31;
      }

      v51 = v25 + 1;
      v53 = v26;
      v45 = v25;
      v55 = v7;
      v28 = *(v27 - 3);
      v29 = *(v27 - 2);
      v30 = *(v27 - 1);
      v31 = *v27;
      v32 = *(v26 - 1);
      v33 = *v26;
      outlined copy of Data._Representation(v28, v29);
      outlined copy of Data._Representation(v30, v31);
      outlined copy of Data?(v32, v33);
      v7 = a4;
      v34 = a3(v28, v29, v30, v31, v32, v33);
      if (v56)
      {
        outlined consume of Data._Representation(v28, v29);
        outlined consume of Data._Representation(v30, v31);
        outlined consume of Data?(v32, v33);

        return v7;
      }

      v36 = v35;
      v49 = v34;
      outlined consume of Data._Representation(v28, v29);
      outlined consume of Data._Representation(v30, v31);
      result = outlined consume of Data?(v32, v33);
      v7 = v55;
      v38 = *(v55 + 16);
      v37 = *(v55 + 24);
      if (v38 >= v37 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v7 = v55;
      }

      *(v7 + 16) = v38 + 1;
      v39 = v7 + 16 * v38;
      *(v39 + 32) = v49;
      *(v39 + 40) = v36;
      v23 = v43;
      v25 = v45 + 1;
      v26 = v53 + 2;
      v27 += 4;
      v24 = v42;
      if (v51 == v43)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

LABEL_24:

  return v7;
}

uint64_t RequestsManager.PIRContext.useCase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for RequestsManager.PIRContext()
{
  result = type metadata singleton initialization cache for RequestsManager.PIRContext;
  if (!type metadata singleton initialization cache for RequestsManager.PIRContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestsManager.PIRContext.configID.getter()
{
  v1 = v0 + *(type metadata accessor for RequestsManager.PIRContext() + 28);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t RequestsManager.PIRContext.cache.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestsManager.PIRContext() + 36));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

double RequestsManager.PIRContext.symmetricPirConfig()@<D0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v86 = *(v2 - 8);
  v3 = *(v86 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v73 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v73 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v81 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v73 - v31;
  v33 = v1 + *(type metadata accessor for RequestsManager.PIRContext() + 24);
  v34 = *(v33 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v35 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v82 = v35;
  v83 = v34;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34 + v35, v22, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v36 = *(v24 + 48);
  v37 = v36(v22, 1, v23);
  v84 = v36;
  v85 = v24 + 48;
  v87 = v2;
  if (v37 == 1)
  {
    *v32 = 0;
    v32[8] = 0;
    v38 = &v32[v23[6]];
    UnknownStorage.init()();
    v39 = v30;
    v40 = v86;
    (*(v86 + 56))(&v32[v23[7]], 1, 1, v2);
    v41 = v23[8];
    v42 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v42 - 8) + 56))(&v32[v41], 1, 1, v42);
    v43 = v40;
    v30 = v39;
    if (v36(v22, 1, v23) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v22, v32, type metadata accessor for AspirePirKeywordPirParameters);
    v43 = v86;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v32[v23[7]], v14, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v32, type metadata accessor for AspirePirKeywordPirParameters);
  v78 = *(v43 + 48);
  v44 = v78(v14, 1, v87);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (v44 == 1)
  {
    goto LABEL_6;
  }

  v46 = v77;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v83 + v82, v77, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v47 = v84;
  if (v84(v46, 1, v23) == 1)
  {
    *v30 = 0;
    v30[8] = 0;
    v48 = &v30[v23[6]];
    UnknownStorage.init()();
    v49 = v87;
    (*(v86 + 56))(&v30[v23[7]], 1, 1, v87);
    v50 = v23[8];
    v51 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v51 - 8) + 56))(&v30[v50], 1, 1, v51);
    v52 = v47(v46, 1, v23) == 1;
    v53 = v46;
    v54 = v80;
    if (!v52)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v46, v30, type metadata accessor for AspirePirKeywordPirParameters);
    v49 = v87;
    v54 = v80;
  }

  v55 = v79;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v30[v23[7]], v79, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v56 = v78;
  if (v78(v55, 1, v49) == 1)
  {
    *v54 = xmmword_225022910;
    *(v54 + 16) = 0;
    *(v54 + 24) = 1;
    v57 = v54 + *(v49 + 24);
    UnknownStorage.init()();
    outlined destroy of AspirePirKeywordPirParameters(v30, type metadata accessor for AspirePirKeywordPirParameters);
    if (v56(v55, 1, v49) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v55, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    }
  }

  else
  {
    outlined destroy of AspirePirKeywordPirParameters(v30, type metadata accessor for AspirePirKeywordPirParameters);
    outlined init with take of AspirePirSymmetricPirClientConfig(v55, v54, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  v58 = *(v54 + 16);
  v59 = *(v54 + 24);
  outlined destroy of AspirePirKeywordPirParameters(v54, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v60 = v81;
  if (v59 == 1 && v58)
  {
    v61 = v73;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v83 + v82, v73, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v62 = v84;
    if (v84(v61, 1, v23) == 1)
    {
      *v60 = 0;
      *(v60 + 8) = 0;
      v63 = v60 + v23[6];
      UnknownStorage.init()();
      (*(v86 + 56))(v60 + v23[7], 1, 1, v49);
      v64 = v23[8];
      v65 = type metadata accessor for AspirePirPIRShardingFunction(0);
      (*(*(v65 - 8) + 56))(v60 + v64, 1, 1, v65);
      v52 = v62(v61, 1, v23) == 1;
      v66 = v61;
      v67 = v74;
      v68 = v75;
      if (!v52)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v66, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      }
    }

    else
    {
      outlined init with take of AspirePirSymmetricPirClientConfig(v61, v60, type metadata accessor for AspirePirKeywordPirParameters);
      v67 = v74;
      v68 = v75;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v60 + v23[7], v67, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    if (v56(v67, 1, v49) == 1)
    {
      *v68 = xmmword_225022910;
      *(v68 + 16) = 0;
      *(v68 + 24) = 1;
      v69 = v68 + *(v49 + 24);
      UnknownStorage.init()();
      outlined destroy of AspirePirKeywordPirParameters(v60, type metadata accessor for AspirePirKeywordPirParameters);
      if (v56(v67, 1, v49) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
      }
    }

    else
    {
      outlined destroy of AspirePirKeywordPirParameters(v60, type metadata accessor for AspirePirKeywordPirParameters);
      outlined init with take of AspirePirSymmetricPirClientConfig(v67, v68, type metadata accessor for AspirePirSymmetricPirClientConfig);
    }

    v70 = *v68;
    v71 = *(v68 + 8);
    outlined copy of Data._Representation(*v68, v71);
    outlined destroy of AspirePirKeywordPirParameters(v68, type metadata accessor for AspirePirSymmetricPirClientConfig);
    v72 = v76;
    *v76 = v70;
    v72[1] = v71;
    *&result = 16;
    *(v72 + 1) = xmmword_225025040;
    *(v72 + 2) = xmmword_225025050;
  }

  else
  {
LABEL_6:
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

uint64_t RequestsManager.PIRContext.constructPIRClient(keyword:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = type metadata accessor for AspireApiPIRConfig(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for SecretKey();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = type metadata accessor for RequestsManager.PIRContext();
  v20 = v19[6];
  v21 = v31;
  result = AspireApiPIRConfig.shardIndex(for:)(a1, a2);
  if (!v21)
  {
    v23 = result;
    v24 = v3 + v19[8];
    v31 = 0;
    outlined init with copy of UserIdentifier(v24, v18, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v3 + v20, v11, type metadata accessor for AspireApiPIRConfig);
    v25 = (v3 + v19[7]);
    v26 = *v25;
    v27 = v25[1];
    outlined init with copy of UserIdentifier(v18, v16, type metadata accessor for SecretKey);
    v28 = v29;
    outlined init with copy of UserIdentifier(v11, v29, type metadata accessor for AspireApiPIRConfig);
    outlined copy of Data._Representation(v26, v27);
    KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v16, v28, v26, v27, v23, 0, 1, v30);
    outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for AspireApiPIRConfig);
    return outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for SecretKey);
  }

  return result;
}

uint64_t RequestsManager.PIRContext.constructPIRClient(shardId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v5 = type metadata accessor for AspireApiPIRConfig(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SecretKey();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = type metadata accessor for RequestsManager.PIRContext();
  outlined init with copy of UserIdentifier(v3 + v19[8], v18, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v3 + v19[6], v11, type metadata accessor for AspireApiPIRConfig);
  v20 = (v3 + v19[7]);
  v21 = *v20;
  v22 = v20[1];
  outlined init with copy of UserIdentifier(v18, v16, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v11, v9, type metadata accessor for AspireApiPIRConfig);
  outlined copy of Data._Representation(v21, v22);

  KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v16, v9, v21, v22, v25, a2, 0, v24);
  outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for AspireApiPIRConfig);
  return outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for SecretKey);
}

void *RequestsManager.PIRContext.prepareDataRequests(keywords:shardIds:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = v2 + *(type metadata accessor for RequestsManager.PIRContext() + 24);
  v10 = *(v9 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10 + v11, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v12 = type metadata accessor for AspirePirBatchPirParameters(0);
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v8, 1, v12);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v10 == 1)
  {
    return RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(a1, a2);
  }

  else
  {
    return RequestsManager.PIRContext.createBatchPIRQueries(_:)(a1);
  }
}

uint64_t RequestsManager.PIRContext.createBatchPIRQueries(_:)(uint64_t a1)
{
  v4 = type metadata accessor for AspireApiPIRConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SecretKey();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BatchPIRClient();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RequestsManager.PIRContext();
  outlined init with copy of UserIdentifier(v1 + v16[8], v11, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v1 + v16[6], v7, type metadata accessor for AspireApiPIRConfig);
  v17 = (v1 + v16[7]);
  v18 = *v17;
  v19 = v17[1];
  outlined copy of Data._Representation(*v17, v19);
  BatchPIRClient.init(secretKey:config:configID:)(v11, v7, v18, v19, v15);
  if (!v2)
  {
    v20 = BatchPIRClient.constructPIRRequest(with:)(a1);
    v22 = MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = v1;
    a1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(partial apply for closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:), (&v23 - 4), v22);

    outlined destroy of AspirePirKeywordPirParameters(v15, type metadata accessor for BatchPIRClient);
  }

  return a1;
}

void *RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(uint64_t a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v49 - v8;
  v55 = type metadata accessor for AspireApiPIRRequest(0);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v53 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for AspireApiEvaluationKey(0);
  v59 = *(v54 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - v15;
  v17 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v60 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v22 = a2[2];
  if (v22)
  {
    v23 = *(a1 + 16);
    if (v22 != v23)
    {
      if (one-time initialization token for daemon != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_9;
    }

    v23 = &v49;
    MEMORY[0x28223BE20](v20);
    v2 = v61;
    *(&v49 - 2) = v61;
    v24 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGSaySSGG_8CipherML16AspireApiRequestVsAE_pTg5015_s10Foundation4g4VSS8h4ML16jkl3Vs5C33_pIgggrzo_AC_SStAFsAG_pIegnrzr_TRAJSSAPsAE_pIgggrzo_Tf1cn_n(a1, a2, partial apply for closure #2 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:), (&v49 - 2));
  }

  else
  {
    v23 = &v49;
    MEMORY[0x28223BE20](v20);
    *(&v49 - 2) = v2;
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_8CipherML16AspireApiRequestVsAE_pTg5(partial apply for closure #1 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:), (&v49 - 2), a1);
  }

  v22 = v3;
  if (!v3)
  {
    a2 = v24;
    v52 = type metadata accessor for RequestsManager.PIRContext();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v52 + 40), v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      return a2;
    }

    outlined init with take of AspirePirSymmetricPirClientConfig(v16, v60, type metadata accessor for AspireHeEvaluationKeyConfig);
    v62 = a2;
    v51 = a2[2];
    if (!v51)
    {
LABEL_27:
      outlined destroy of AspirePirKeywordPirParameters(v60, type metadata accessor for AspireHeEvaluationKeyConfig);
      return v62;
    }

    v30 = 0;
    v49 = xmmword_225022910;
    a2 = v57;
    v50 = (v59 + 56);
    while (1)
    {
      generateEvaluationKey(secretKey:config:)(v2 + *(v52 + 32), v60, a2);
      if (v22)
      {
        outlined destroy of AspirePirKeywordPirParameters(v60, type metadata accessor for AspireHeEvaluationKeyConfig);

        return a2;
      }

      a2 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      }

      v44 = v55;
      v43 = v56;
      if (v30 >= a2[2])
      {
        __break(1u);
LABEL_30:
        swift_once();
LABEL_9:
        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.daemon);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134349312;
          *(v28 + 4) = v22;

          *(v28 + 12) = 2050;
          *(v28 + 14) = v23;

          _os_log_impl(&dword_224E26000, v26, v27, "shardIds (length %{public}ld must be empty or match keywords.count %{public}ld.", v28, 0x16u);
          MEMORY[0x22AA61F40](v28, -1, -1);
        }

        else
        {
        }

        type metadata accessor for CipherMLError();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return a2;
      }

      v59 = 0;
      v45 = type metadata accessor for AspireApiRequest(0);
      v23 = (a2 + ((*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80)) + *(*(v45 - 8) + 72) * v30);
      v46 = *(v45 + 20);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23 + v46, v43, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      v47 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
      v58 = *(v47 - 8);
      v48 = (*(v58 + 48))(v43, 1, v47);
      v62 = a2;
      if (v48 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      }

      else
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v31 = v53;
          outlined init with take of AspirePirSymmetricPirClientConfig(v43, v53, type metadata accessor for AspireApiPIRRequest);
          v40 = v44;
          v41 = v54;
          v38 = v50;
          goto LABEL_18;
        }

        outlined destroy of AspirePirKeywordPirParameters(v43, type metadata accessor for AspireApiRequest.OneOf_Request);
      }

      v31 = v53;
      *v53 = 0;
      *(v31 + 2) = v49;
      v32 = v31 + v44[6];
      UnknownStorage.init()();
      v33 = v44[7];
      v34 = type metadata accessor for AspirePirEncryptedIndices(0);
      (*(*(v34 - 8) + 56))(v31 + v33, 1, 1, v34);
      v35 = v44[8];
      v36 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
      (*(*(v36 - 8) + 56))(v31 + v35, 1, 1, v36);
      v37 = (v31 + v44[9]);
      *v37 = 0;
      v37[1] = 0;
      v38 = v50;
      v39 = v31 + v44[10];
      v40 = v44;
      v41 = v54;
      (*v50)(v39, 1, 1, v54);
LABEL_18:
      ++v30;
      v42 = v40[10];
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v31 + v42, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
      a2 = v57;
      outlined init with take of AspirePirSymmetricPirClientConfig(v57, v31 + v42, type metadata accessor for AspireApiEvaluationKey);
      (*v38)(v31 + v42, 0, 1, v41);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v23 + v46, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      outlined init with take of AspirePirSymmetricPirClientConfig(v31, v23 + v46, type metadata accessor for AspireApiPIRRequest);
      swift_storeEnumTagMultiPayload();
      (*(v58 + 56))(v23 + v46, 0, 1, v47);
      v2 = v61;
      v22 = v59;
      if (v51 == v30)
      {
        goto LABEL_27;
      }
    }
  }

  return a2;
}

uint64_t closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)()
{
  type metadata accessor for AspireApiRequest(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
  return static Message.with(_:)();
}

uint64_t closure #1 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for KeywordPIRClient();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  result = RequestsManager.PIRContext.constructPIRClient(keyword:)(*a1, v15, v14);
  if (v3)
  {
    *a3 = v3;
  }

  else
  {
    KeywordPIRClient.constructPIRRequest(with:)(v15, v10);
    v17 = type metadata accessor for AspireApiRequest(0);
    MEMORY[0x28223BE20](v17);
    v18[-2] = a2;
    v18[-1] = v10;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
    static Message.with(_:)();
    outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for KeywordPIRClient);
    return outlined destroy of AspirePirKeywordPirParameters(v10, type metadata accessor for AspireApiPIRRequest);
  }

  return result;
}

uint64_t closure #1 in closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a1 + 1);

  *a1 = v8;
  *(a1 + 1) = v7;
  v10 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v10], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with copy of UserIdentifier(a3, &a1[v10], a4);
  v11 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(&a1[v10], 0, 1, v11);
}

uint64_t closure #2 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AspireApiPIRRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for KeywordPIRClient();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = RequestsManager.PIRContext.constructPIRClient(shardId:)(a3, a4, v17);
  if (!v5)
  {
    KeywordPIRClient.constructPIRRequest(with:)(a2, v13);
    v19 = type metadata accessor for AspireApiRequest(0);
    MEMORY[0x28223BE20](v19);
    v20[-2] = a5;
    v20[-1] = v13;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
    static Message.with(_:)();
    outlined destroy of AspirePirKeywordPirParameters(v17, type metadata accessor for KeywordPIRClient);
    return outlined destroy of AspirePirKeywordPirParameters(v13, type metadata accessor for AspireApiPIRRequest);
  }

  return result;
}

unint64_t RequestsManager.PIRContext.decryptBatchPIRResponses(_:for:)(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for AspireApiResponse(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiPIRResponse(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspireApiPIRConfig(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v46 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SecretKey();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v44 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for BatchPIRClient();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v45 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v42 = v2;
    v50 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = v50;
    v28 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v49 = *(v9 + 72);
    v29 = v48;
    while (1)
    {
      outlined init with copy of UserIdentifier(v28, v12, type metadata accessor for AspireApiResponse);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12, v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      v30 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
      if ((*(*(v30 - 8) + 48))(v7, 1, v30) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
        goto LABEL_11;
      }

      if (swift_getEnumCaseMultiPayload())
      {
        break;
      }

      outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiResponse);
      outlined init with take of AspirePirSymmetricPirClientConfig(v7, v16, type metadata accessor for AspireApiPIRResponse);
      v50 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v29 = v48;
        v27 = v50;
      }

      *(v27 + 16) = v32 + 1;
      outlined init with take of AspirePirSymmetricPirClientConfig(v16, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, type metadata accessor for AspireApiPIRResponse);
      v28 += v49;
      if (!--v26)
      {
        v2 = v42;
        goto LABEL_12;
      }
    }

    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
LABEL_11:
    v33 = type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiResponse);
  }

  else
  {
LABEL_12:
    v34 = type metadata accessor for RequestsManager.PIRContext();
    v35 = v44;
    outlined init with copy of UserIdentifier(v2 + v34[8], v44, type metadata accessor for SecretKey);
    v36 = v46;
    outlined init with copy of UserIdentifier(v2 + v34[6], v46, type metadata accessor for AspireApiPIRConfig);
    v37 = (v2 + v34[7]);
    v38 = *v37;
    v33 = v37[1];
    outlined copy of Data._Representation(*v37, v33);
    v39 = v45;
    v40 = v47;
    BatchPIRClient.init(secretKey:config:configID:)(v35, v36, v38, v33, v45);
    if (!v40)
    {
      v33 = BatchPIRClient.decryptPIRResponse(_:keywords:)(v27, v43);
      outlined destroy of AspirePirKeywordPirParameters(v39, type metadata accessor for BatchPIRClient);
    }
  }

  return v33;
}

unint64_t closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for KeywordPIRClient();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for AspireApiPIRResponse(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v18 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
    v19 = type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v19;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AspirePirKeywordPirParameters(v13, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_5;
  }

  outlined init with take of AspirePirSymmetricPirClientConfig(v13, v17, type metadata accessor for AspireApiPIRResponse);
  v19 = a3;
  v21 = v22[1];
  RequestsManager.PIRContext.constructPIRClient(keyword:)(a2, a3, v9);
  if (!v21)
  {
    v19 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v17, a2, a3);
    outlined destroy of AspirePirKeywordPirParameters(v9, type metadata accessor for KeywordPIRClient);
  }

  outlined destroy of AspirePirKeywordPirParameters(v17, type metadata accessor for AspireApiPIRResponse);
  return v19;
}

void *RequestsManager.PIRContext.decryptSymmetricPIRResponses(_:symmetricPirKeywords:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v65 = a2;
  v6 = type metadata accessor for PIR.SymmetricPIRClient();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymmetricPIRClient();
  v12 = *(*(v11 - 8) + 64);
  v13 = (MEMORY[0x28223BE20])(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  RequestsManager.PIRContext.symmetricPirConfig()(&v59);
  if (!v3)
  {
    v53 = v7;
    v54 = v10;
    v55 = v2;
    v56 = a1;
    v57 = v15;
    v19 = v60;
    if (v60 >> 60 == 15)
    {
      v4 = type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v47 = v6;
      v52 = v59;
      v63 = v61;
      v64 = v62;
      v20 = *(v65 + 16);
      v21 = MEMORY[0x277D84F90];
      v46 = v20;
      if (v20)
      {
        v22 = v65;
        v48 = v60;
        v49 = v11;
        v50 = v17;
        v51 = 0;
        v58[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
        v21 = v58[0];
        v23 = (v22 + 40);
        v24 = v55;
        do
        {
          v26 = *(v23 - 1);
          v25 = *v23;
          v18 = outlined copy of Data._Representation(v26, *v23);
          v58[0] = v21;
          v28 = *(v21 + 16);
          v27 = *(v21 + 24);
          if (v28 >= v27 >> 1)
          {
            v18 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
            v21 = v58[0];
          }

          v23 += 4;
          *(v21 + 16) = v28 + 1;
          v29 = v21 + 16 * v28;
          *(v29 + 32) = v26;
          *(v29 + 40) = v25;
          --v20;
        }

        while (v20);
        v3 = v51;
        v30 = v50;
        v31 = v49;
        v19 = v48;
      }

      else
      {
        v30 = v17;
        v24 = v55;
        v31 = v11;
      }

      v4 = &v46;
      MEMORY[0x28223BE20](v18);
      *(&v46 - 2) = v24;
      v32 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v56, v21, closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)partial apply, (&v46 - 4));
      v33 = v57;
      if (v3)
      {

        outlined destroy of AMDPbHEConfig.OneOf_Config?(&v59, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
      }

      else
      {
        v35 = v32;

        outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v59, v58, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v59, v58, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        v36 = v54;
        v37 = v52;
        PIR.SymmetricPIRClient.init(serverPublicKey:)();
        (*(v53 + 32))(v33, v36, v47);
        v38 = v33 + *(v31 + 20);
        *v38 = v37;
        *(v38 + 8) = v19;
        v39 = v64;
        *(v38 + 16) = v63;
        *(v38 + 32) = v39;
        v40 = outlined init with take of AspirePirSymmetricPirClientConfig(v33, v30, type metadata accessor for SymmetricPIRClient);
        v41 = *(v35 + 16);
        if (v41 == v46)
        {
          v42 = *(v30 + *(v31 + 20) + 16);
          *&v43 = MEMORY[0x28223BE20](v40);
          *(&v46 - 1) = v43;
          v4 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML19SymmetricPirKeywordVGSay10Foundation4DataVSgGG_AOsAE_pTg503_s8f4ML19hij14V10Foundation4l7VSgAGs5C33_pIgggozo_AC_AGtAGsAH_pIegnrzr_TRAj2OsAE_pIgggozo_Tf1cn_n(v65, v35, partial apply for closure #1 in SymmetricPIRClient.decryptResponses(symmetricPirKeywords:encryptedResponses:), (&v46 - 4));
          outlined destroy of AMDPbHEConfig.OneOf_Config?(&v59, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        }

        else
        {
          v44 = v46;
          v4 = type metadata accessor for CipherMLError();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
          swift_allocError();
          *v45 = v41;
          v45[1] = v44;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          outlined destroy of AMDPbHEConfig.OneOf_Config?(&v59, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        }

        outlined destroy of AspirePirKeywordPirParameters(v30, type metadata accessor for SymmetricPIRClient);
      }
    }
  }

  return v4;
}

uint64_t RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(type metadata accessor for AspireApiResponse(0) - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(type metadata accessor for AspireApiOPRFResponse(0) - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for AspireApiResponses(0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.PIRContext.requestOPRFData(for:networkManager:), 0, 0);
}

uint64_t RequestsManager.PIRContext.requestOPRFData(for:networkManager:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16CryptoKitPrivate3PIRO14BlindedKeywordVG_8CipherML16AspireApiRequestVs5NeverOTg5(partial apply for closure #1 in RequestsManager.PIRContext.requestOPRFData(for:networkManager:), v4, v3);
  v0[11] = v5;

  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = v2 + *(type metadata accessor for RequestsManager.PIRContext() + 20);
  v9 = *(type metadata accessor for UserIdentifier() + 20);
  v10 = *(v7 + 32);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  v13 = v0[10];

  return v15(v13, v5, v8 + v9, v6, v7);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  }

  else
  {
    v4 = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[10];
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = v0[8];
    v5 = v0[6];
    v33 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v7 = 0;
    v8 = v33;
    v32 = v5;
    v9 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = v0[7];
      v11 = v0[5];
      outlined init with copy of UserIdentifier(v9 + *(v32 + 72) * v7, v10, type metadata accessor for AspireApiResponse);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v11, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      v12 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
      v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
      v14 = v0[5];
      if (v13 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[5], &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
        goto LABEL_13;
      }

      v15 = v0[5];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      v16 = v0[9];
      outlined destroy of AspirePirKeywordPirParameters(v0[7], type metadata accessor for AspireApiResponse);
      outlined init with take of AspirePirSymmetricPirClientConfig(v14, v16, type metadata accessor for AspireApiOPRFResponse);
      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
      }

      ++v7;
      v19 = v0[9];
      *(v33 + 16) = v18 + 1;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v19, v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, type metadata accessor for AspireApiOPRFResponse);
      if (v3 == v7)
      {
        outlined destroy of AspirePirKeywordPirParameters(v0[10], type metadata accessor for AspireApiResponses);
        goto LABEL_16;
      }
    }

    outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for AspireApiResponse.OneOf_Response);
LABEL_13:
    v20 = v0[10];
    v21 = v0[7];
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v21, type metadata accessor for AspireApiResponse);
    outlined destroy of AspirePirKeywordPirParameters(v20, type metadata accessor for AspireApiResponses);

    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[7];
    v25 = v0[5];

    v26 = v0[1];

    return v26();
  }

  else
  {
    outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiResponses);
    v8 = MEMORY[0x277D84F90];
LABEL_16:
    v28 = v0[9];
    v27 = v0[10];
    v29 = v0[7];
    v30 = v0[5];

    v31 = v0[1];

    return v31(v8);
  }
}

{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiOPRFRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  v13 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest);
  static Message.with(_:)();
  type metadata accessor for AspireApiRequest(0);
  v10 = a2;
  v11 = v7;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
  static Message.with(_:)();
  return outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for AspireApiOPRFRequest);
}

uint64_t closure #1 in closure #1 in RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = PIR.BlindedKeyword.blindedElement.getter();
  v7 = v6;
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v5;
  a1[1] = v7;
  v8 = (a3 + *(type metadata accessor for RequestsManager.PIRContext() + 28));
  v9 = *v8;
  v10 = v8[1];
  v11 = a1[2];
  v12 = a1[3];
  outlined copy of Data._Representation(*v8, v10);
  result = outlined consume of Data._Representation(v11, v12);
  a1[2] = v9;
  a1[3] = v10;
  return result;
}

uint64_t RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v9 = *(*(type metadata accessor for AspireApiResponses(0) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:), 0, 0);
}

uint64_t RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:)()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = type metadata accessor for RequestsManager.PIRContext();
  v0[14] = v5;
  v6 = v1 + *(v5 + 20);
  v7 = *(type metadata accessor for UserIdentifier() + 20);
  v8 = *(v4 + 32);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:);
  v11 = v0[13];
  v12 = v0[8];

  return v14(v11, v12, v6 + v7, v3, v4);
}

{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:);
  }

  else
  {
    v3 = RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[11];
    v4 = *v0[13];

    v6 = RequestsManager.PIRContext.decryptSymmetricPIRResponses(_:symmetricPirKeywords:)(v5, v1);
    if (v2)
    {
LABEL_3:
      outlined destroy of AspirePirKeywordPirParameters(v0[13], type metadata accessor for AspireApiResponses);

LABEL_4:
      v8 = v0[12];
      v7 = v0[13];

      v9 = v0[1];

      return v9();
    }

    goto LABEL_11;
  }

  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11] + *(v0[14] + 24);
  v14 = *(v13 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v15 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14 + v15, v12, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v16 = type metadata accessor for AspirePirBatchPirParameters(0);
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v12, 1, v16);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v17 = *v11;
  v18 = v0[16];
  v19 = v0[11];
  v20 = v0[5];
  if (v15 != 1)
  {

    v6 = RequestsManager.PIRContext.decryptBatchPIRResponses(_:for:)(v24, v20);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_11:
    v25 = v6;

    goto LABEL_12;
  }

  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  v22 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v17, v20, closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)partial apply, v21);
  if (v18)
  {
    v23 = v0[13];

    outlined destroy of AspirePirKeywordPirParameters(v23, type metadata accessor for AspireApiResponses);
    goto LABEL_4;
  }

  v25 = v22;

LABEL_12:
  v27 = v0[5];
  v26 = v0[6];
  v28 = *(v27 + 16);

  v73 = v28;
  if (v28)
  {
    v69 = v25;
    v29 = 0;
    v71 = v27 + 32;
    v72 = v0[14];
    result = v25;
    v70 = v0;
    do
    {
      v33 = *(result + 16);
      if (v29 == v33)
      {
        break;
      }

      if (v29 >= v33)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v34 = *(v71 + 16 * v29);
      v35 = (v0[11] + *(v72 + 36));
      v75 = v34;
      v76 = *(result + 16 * v29 + 32);
      v36 = *(result + 16 * v29 + 40);
      v37 = *(v71 + 16 * v29 + 8);
      if (*v35)
      {
        v38 = v35[1];
        ObjectType = swift_getObjectType();
        v74 = *(v38 + 48);
        outlined copy of Data._Representation(v75, v37);
        outlined copy of Data?(v76, v36);
        outlined copy of Data._Representation(v75, v37);
        outlined copy of Data?(v76, v36);
        v74(v76, v36, v75, v37, ObjectType, v38);
      }

      else
      {
        outlined copy of Data._Representation(v34, *(&v34 + 1));
        outlined copy of Data?(v76, v36);
      }

      outlined copy of Data?(v76, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v37);
      v43 = v26[2];
      v44 = (v41 & 1) == 0;
      result = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_51;
      }

      v45 = v41;
      if (v26[3] >= result)
      {
        v48 = v76;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v41)
          {
            goto LABEL_14;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v48 = v76;
          if (v45)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v37);
        if ((v45 & 1) != (v47 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v42 = v46;
        v48 = v76;
        if (v45)
        {
LABEL_14:
          v30 = (v26[7] + 16 * v42);
          v31 = *v30;
          v32 = v30[1];
          *v30 = v48;
          outlined consume of Data?(v31, v32);
          outlined consume of Data._Representation(v75, v37);
          outlined consume of Data?(v76, v36);
          goto LABEL_15;
        }
      }

      v26[(v42 >> 6) + 8] |= 1 << v42;
      v49 = 16 * v42;
      *(v26[6] + v49) = v75;
      *(v26[7] + v49) = v48;
      result = outlined consume of Data?(v76, v36);
      v50 = v26[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_52;
      }

      v26[2] = v52;
LABEL_15:
      ++v29;
      result = v69;
      v0 = v70;
    }

    while (v73 != v29);
  }

  v53 = v0[7];
  v54 = *(v53 + 16);
  v55 = MEMORY[0x277D84F90];
  if (v54)
  {
    v77 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
    v55 = v77;
    v56 = (v53 + 40);
    do
    {
      if (v26[2])
      {
        v58 = *(v56 - 1);
        v57 = *v56;
        outlined copy of Data._Representation(v58, *v56);
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v57);
        if (v60)
        {
          v61 = (v26[7] + 16 * v59);
          v62 = *v61;
          v63 = v61[1];
          outlined copy of Data?(*v61, v63);
        }

        else
        {
          v62 = 0;
          v63 = 0xF000000000000000;
        }

        outlined consume of Data._Representation(v58, v57);
      }

      else
      {
        v62 = 0;
        v63 = 0xF000000000000000;
      }

      v65 = *(v77 + 16);
      v64 = *(v77 + 24);
      if (v65 >= v64 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
      }

      v56 += 2;
      *(v77 + 16) = v65 + 1;
      v66 = v77 + 16 * v65;
      *(v66 + 32) = v62;
      *(v66 + 40) = v63;
      --v54;
    }

    while (v54);
  }

  v67 = v0[12];
  outlined destroy of AspirePirKeywordPirParameters(v0[13], type metadata accessor for AspireApiResponses);

  v68 = v0[1];

  return v68(v55);
}

{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

void specialized Zip2Sequence.Iterator.next()(_OWORD *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 8);
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
LABEL_5:
    *(v1 + 32) = 1;
LABEL_6:
    *a1 = xmmword_225025060;
    a1[1] = 0u;
    a1[2] = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v4 = *(*v1 + 16 * v2 + 32);
  *(v1 + 8) = v2 + 1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v5 + 16);
  if (v6 == v7)
  {
    goto LABEL_5;
  }

  if (v6 >= v7)
  {
    goto LABEL_12;
  }

  v8 = v5 + 32 * v6;
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  *(v1 + 24) = v6 + 1;
  a1[1] = v9;
  a1[2] = v10;
  *a1 = v4;
  outlined copy of Data._Representation(v4, *(&v4 + 1));
  outlined copy of Data._Representation(v9, *(&v9 + 1));

  outlined copy of Data._Representation(v10, *(&v10 + 1));
}

BOOL RequestsManager.PIRContext.isShardEmpty(for:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for AspireApiPIRShardConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(type metadata accessor for RequestsManager.PIRContext() + 24);
  v10 = AspireApiPIRConfig.shardIndex(for:)(a1, a2);
  if (!v2)
  {
    AspireApiPIRConfig.shardConfig(at:)(v10, 0, 1, v8);
    v13 = *v8;
    outlined destroy of AspirePirKeywordPirParameters(v8, type metadata accessor for AspireApiPIRShardConfig);
    return v13 == 0;
  }

  return v11;
}

BOOL RequestsManager.PIRContext.isShardEmpty(at:)(uint64_t a1, uint64_t a2, char a3)
{
  v8 = type metadata accessor for AspireApiPIRShardConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3 + *(type metadata accessor for RequestsManager.PIRContext() + 24);
  AspireApiPIRConfig.shardConfig(at:)(a1, a2, a3 & 1, v11);
  if (!v4)
  {
    v14 = *v11;
    outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for AspireApiPIRShardConfig);
    return v14 == 0;
  }

  return v13;
}

uint64_t RequestsManager.PIRContext.init(useCase:userId:config:configID:secretKey:cache:evaluationKeyConfigInRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for RequestsManager.PIRContext();
  outlined init with take of AspirePirSymmetricPirClientConfig(a3, a9 + v18[5], type metadata accessor for UserIdentifier);
  outlined init with take of AspirePirSymmetricPirClientConfig(a4, a9 + v18[6], type metadata accessor for AspireApiPIRConfig);
  v19 = (a9 + v18[7]);
  *v19 = a5;
  v19[1] = a6;
  outlined init with take of AspirePirSymmetricPirClientConfig(a7, a9 + v18[8], type metadata accessor for SecretKey);
  v20 = (a9 + v18[9]);
  *v20 = a8;
  v20[1] = a10;
  return outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(a11, a9 + v18[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
}

uint64_t RequestsManager.setPIRConfig(config:context:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[22] = v8;
  v9 = *(v8 - 8);
  v3[23] = v9;
  v10 = *(v9 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v12 = type metadata accessor for AspireApiKeyStatus(0);
  v3[30] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v16 = type metadata accessor for AspireApiPIRConfig(0);
  v3[34] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v18 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v19 = type metadata accessor for AspireApiConfig(0);
  v3[39] = v19;
  v20 = *(v19 - 8);
  v3[40] = v20;
  v21 = *(v20 + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.setPIRConfig(config:context:), 0, 0);
}

{
  v6 = *v3;
  v7 = *(*v3 + 472);
  v8 = *v3;
  v6[60] = v2;

  v9 = v6[58];
  v10 = v6[44];

  if (v2)
  {

    v11 = RequestsManager.setPIRConfig(config:context:);
  }

  else
  {
    v6[61] = a2;
    v6[62] = a1;

    v11 = RequestsManager.setPIRConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t RequestsManager.setPIRConfig(config:context:)()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 120);
  v5 = **(v0 + 128);
  *(v0 + 336) = v5;
  v6 = [v5 useCase];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v0 + 344) = v7;
  *(v0 + 352) = v9;
  v10 = [v4 serializedPIRConfig];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v0 + 88) = v11;
  *(v0 + 96) = v13;
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v14 = *(v0 + 264);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 328), v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v15 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  v17 = *(v0 + 264);
  if (v16 == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_5:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.framework);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_224E26000, v20, v21, "CMLPIRConfig is missing pirConfig.", v22, 2u);
      MEMORY[0x22AA61F40](v22, -1, -1);
    }

    v23 = *(v0 + 328);

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v23, type metadata accessor for AspireApiConfig);
    v24 = *(v0 + 328);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v33 = *(v0 + 232);
    v44 = *(v0 + 216);
    v45 = *(v0 + 208);
    v46 = *(v0 + 200);
    v47 = *(v0 + 192);
    v48 = *(v0 + 168);
    v49 = *(v0 + 144);

    v34 = *(v0 + 8);

    return v34();
  }

  v18 = *(v0 + 264);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    outlined destroy of AspirePirKeywordPirParameters(v17, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_5;
  }

  v37 = *(v0 + 320);
  v36 = *(v0 + 328);
  v38 = *(v0 + 312);
  v39 = *(v0 + 256);
  v40 = *(v0 + 136);
  outlined init with take of AspirePirSymmetricPirClientConfig(v17, *(v0 + 288), type metadata accessor for AspireApiPIRConfig);
  v41 = *(v40 + 16);
  *(v0 + 360) = v41;
  *(v0 + 368) = *(v41 + 16);
  outlined init with copy of UserIdentifier(v36, v39, type metadata accessor for AspireApiConfig);
  (*(v37 + 56))(v39, 0, 1, v38);

  v42 = swift_task_alloc();
  *(v0 + 376) = v42;
  *v42 = v0;
  v42[1] = RequestsManager.setPIRConfig(config:context:);
  v43 = *(v0 + 256);

  return specialized DatabaseTable<>.set(key:value:)(v7, v9, v43);
}

{
  v2 = *v1;
  v3 = (*v1)[47];
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[46];
  if (v0)
  {
    v6 = v2[44];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[32], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v7 = RequestsManager.setPIRConfig(config:context:);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[32], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v7 = RequestsManager.setPIRConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 296);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = [*(v0 + 120) serializedKeyStatus];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v0 + 104) = v6;
  *(v0 + 112) = v8;
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v1)
  {
    v9 = *(v0 + 352);
    v10 = *(v0 + 288);
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 328), type metadata accessor for AspireApiConfig);

    outlined destroy of AspirePirKeywordPirParameters(v10, type metadata accessor for AspireApiPIRConfig);
    v11 = *(v0 + 328);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 232);
    v44 = *(v0 + 224);
    v45 = *(v0 + 216);
    v46 = *(v0 + 208);
    v47 = *(v0 + 200);
    v48 = *(v0 + 192);
    v49 = *(v0 + 168);
    v51 = *(v0 + 144);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 288);
    v23 = *(v0 + 272);
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 224);
    *(v0 + 392) = *(*(v0 + 360) + 24);
    v27 = *(v22 + *(v23 + 20));
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
    v30 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
    *(v0 + 400) = v27;
    *(v0 + 408) = v30;
    v31 = (v27 + v30);
    swift_beginAccess();
    v32 = *v31;
    *(v0 + 416) = *v31;
    v33 = v31[1];
    *(v0 + 424) = v33;
    v34 = *(v25 + 24);
    *(v0 + 504) = v34;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24 + v34, v26, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v35 = *(v29 + 48);
    *(v0 + 432) = v35;
    *(v0 + 440) = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v36 = v35(v26, 1, v28);
    v37 = *(v0 + 224);
    v38 = *(v0 + 232);
    if (v36 == 1)
    {
      v39 = *(v0 + 176);
      v40 = *(v0 + 160);
      v50 = *(v0 + 152);
      *v38 = MEMORY[0x277D84F90];
      *(v38 + 8) = 0;
      v41 = *(v39 + 24);

      outlined copy of Data._Representation(v32, v33);
      UnknownStorage.init()();
      (*(v40 + 56))(v38 + *(v39 + 28), 1, 1, v50);
      if (v35(v37, 1, v39) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 224), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 224), *(v0 + 232), type metadata accessor for AspireHeEvaluationKeyConfig);

      outlined copy of Data._Representation(v32, v33);
    }

    (*(*(v0 + 184) + 56))(*(v0 + 232), 0, 1, *(v0 + 176));
    v42 = swift_task_alloc();
    *(v0 + 448) = v42;
    *v42 = v0;
    v42[1] = RequestsManager.setPIRConfig(config:context:);
    v43 = *(v0 + 232);

    return specialized DatabaseTable<>.set(key:value:)(v32, v33, v43);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[56];
  v4 = *v1;
  v2[57] = v0;

  v5 = v2[53];
  v6 = v2[52];
  v7 = v2[49];
  if (v0)
  {
    v8 = v2[44];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[29], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

    outlined consume of Data._Representation(v6, v5);
    v9 = RequestsManager.setPIRConfig(config:context:);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[29], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

    outlined consume of Data._Representation(v6, v5);
    v9 = RequestsManager.setPIRConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v115 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = (*(v0 + 400) + *(v0 + 408));
  v6 = *v5;
  v7 = v5[1];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 248) + *(v0 + 504), v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v2(v3, 1, v4) == 1)
  {
    v8 = *(v0 + 432);
    v112 = *(v0 + 440);
    v9 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 8) = 0;
    v14 = *(v11 + 24);
    outlined copy of Data._Representation(v6, v7);
    UnknownStorage.init()();
    (*(v13 + 56))(v10 + *(v11 + 28), 1, 1, v12);
    if (v8(v9, 1, v11) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 216), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 216), *(v0 + 200), type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined copy of Data._Representation(v6, v7);
  }

  v15 = *(v0 + 456);
  v16 = *(v0 + 200);
  v17 = specialized Message.hash()();
  if (v15)
  {
    v19 = *(v0 + 352);
    v20 = *(v0 + 328);
    v21 = *(v0 + 288);
    v22 = *(v0 + 248);
    v23 = *(v0 + 200);
    outlined consume of Data._Representation(v6, v7);

    outlined destroy of AspirePirKeywordPirParameters(v23, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_18:
    outlined destroy of AspirePirKeywordPirParameters(v22, type metadata accessor for AspireApiKeyStatus);
    outlined destroy of AspirePirKeywordPirParameters(v20, type metadata accessor for AspireApiConfig);
    outlined destroy of AspirePirKeywordPirParameters(v21, type metadata accessor for AspireApiPIRConfig);
    v52 = *(v0 + 328);
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    v56 = *(v0 + 280);
    v55 = *(v0 + 288);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    v59 = *(v0 + 248);
    v60 = *(v0 + 224);
    v61 = *(v0 + 232);
    v103 = *(v0 + 216);
    v104 = *(v0 + 208);
    v105 = *(v0 + 200);
    v106 = *(v0 + 192);
    v108 = *(v0 + 168);
    v110 = *(v0 + 144);

    v62 = *(v0 + 8);

    return v62();
  }

  v24 = v17;
  v25 = v18;
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 200), type metadata accessor for AspireHeEvaluationKeyConfig);
  v26 = specialized static Data.== infix(_:_:)(v6, v7, v24, v25);
  outlined consume of Data._Representation(v24, v25);
  outlined consume of Data._Representation(v6, v7);
  if ((v26 & 1) == 0)
  {
    v39 = *(v0 + 432);
    v38 = *(v0 + 440);
    v40 = *(v0 + 208);
    v41 = *(v0 + 176);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 248) + *(v0 + 504), v40, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v39(v40, 1, v41) == 1)
    {
      v43 = *(v0 + 432);
      v42 = *(v0 + 440);
      v44 = *(v0 + 208);
      v45 = *(v0 + 192);
      v46 = *(v0 + 176);
      v47 = *(v0 + 152);
      v48 = *(v0 + 160);
      *v45 = MEMORY[0x277D84F90];
      *(v45 + 8) = 0;
      v49 = v45 + *(v46 + 24);
      UnknownStorage.init()();
      (*(v48 + 56))(v45 + *(v46 + 28), 1, 1, v47);
      if (v43(v44, 1, v46) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 208), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 208), *(v0 + 192), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v51 = *(v0 + 192);
    v70 = specialized Message.hash()();
    v72 = v71;
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 192), type metadata accessor for AspireHeEvaluationKeyConfig);
    v73 = Data.hexString.getter(v70, v72);
    v75 = v74;
    outlined consume of Data._Representation(v70, v72);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 352);
    v78 = *(v0 + 280);
    v77 = *(v0 + 288);
    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.framework);
    outlined init with copy of UserIdentifier(v77, v78, type metadata accessor for AspireApiPIRConfig);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 352);
    if (v82)
    {
      v109 = *(v0 + 344);
      v111 = v73;
      v84 = *(v0 + 272);
      v85 = *(v0 + 280);
      v86 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114[0] = v113;
      *v86 = 136446722;
      v87 = (*(v85 + *(v84 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
      swift_beginAccess();
      v89 = *v87;
      v88 = v87[1];
      outlined copy of Data._Representation(v89, v88);
      v90 = Data.hexString.getter(v89, v88);
      v107 = v81;
      v92 = v91;
      outlined consume of Data._Representation(v89, v88);
      outlined destroy of AspirePirKeywordPirParameters(v85, type metadata accessor for AspireApiPIRConfig);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v114);

      *(v86 + 4) = v93;
      *(v86 + 12) = 2082;
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v83, v114);

      *(v86 + 14) = v94;
      *(v86 + 22) = 2082;
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v75, v114);

      *(v86 + 24) = v95;
      _os_log_impl(&dword_224E26000, v80, v107, "Invalid PIR config hash '%{public}s' for useCase '%{public}s', expected: '%{public}s'", v86, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v113, -1, -1);
      MEMORY[0x22AA61F40](v86, -1, -1);
    }

    else
    {
      v96 = *(v0 + 280);
      v97 = *(v0 + 352);

      outlined destroy of AspirePirKeywordPirParameters(v96, type metadata accessor for AspireApiPIRConfig);
    }

    v20 = *(v0 + 328);
    v21 = *(v0 + 288);
    v22 = *(v0 + 248);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_18;
  }

  v27 = *(v0 + 400);
  v28 = *(v0 + 152);
  v29 = *(v0 + 160);
  v30 = *(v0 + 144);
  v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27 + v31, v30, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v32 = *(v29 + 48);
  v33 = v32(v30, 1, v28);
  v34 = *(v0 + 168);
  if (v33 == 1)
  {
    v35 = *(v0 + 144);
    v36 = *(v0 + 152);
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = MEMORY[0x277D84F90];
    *(v34 + 24) = 0;
    *(v34 + 32) = 1;
    *(v34 + 40) = 0;
    *(v34 + 48) = 1;
    *(v34 + 56) = 0;
    *(v34 + 64) = 1;
    v37 = v34 + *(v36 + 40);
    UnknownStorage.init()();
    if (v32(v35, 1, v36) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 144), &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 144), v34, type metadata accessor for AspireHeEncryptionParameters);
  }

  v50 = *(v0 + 136);
  RequestsManager.validateConfig(useCase:keyStatus:encryptionParams:)(*(v0 + 344), *(v0 + 352), *(v0 + 248), *(v0 + 168));
  v64 = *(v0 + 336);
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 168), type metadata accessor for AspireHeEncryptionParameters);
  v65 = [v64 sourceApplicationBundleIdentifier];
  if (v65)
  {
    v66 = v65;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  *(v0 + 464) = v69;
  v98 = swift_task_alloc();
  *(v0 + 472) = v98;
  *v98 = v0;
  v98[1] = RequestsManager.setPIRConfig(config:context:);
  v100 = *(v0 + 344);
  v99 = *(v0 + 352);
  v101 = *(v0 + 248);
  v102 = *(v0 + 136);

  return RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(v100, v99, v101, v67, v69);
}

{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[29];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[18];
  outlined destroy of AspirePirKeywordPirParameters(v0[31], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);

  v9 = v0[1];
  v11 = v0[61];
  v10 = v0[62];

  return v9(v10, v11);
}

{
  v1 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[41], type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiPIRConfig);
  v20 = v0[48];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[18];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[41];
  v2 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[31], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiPIRConfig);
  v21 = v0[57];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v12 = v0[28];
  v11 = v0[29];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[41];
  v2 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[31], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiPIRConfig);
  v21 = v0[60];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v12 = v0[28];
  v11 = v0[29];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t specialized DatabaseTable<>.set(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiConfig(0);
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  type metadata accessor for ConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, type metadata accessor for ConfigTable);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v10;
  v4[23] = v9;

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v10, v9);
}

{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  type metadata accessor for EvaluationKeyConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, type metadata accessor for EvaluationKeyConfigTable);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v10;
  v4[23] = v9;

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v10, v9);
}

uint64_t specialized DatabaseTable<>.set(key:value:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[16], v3, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];
    v4 = v0[15];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[18], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[28] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v5;
    *(inited + 40) = v4;

    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[29] = v7;
    v8 = swift_task_alloc();
    v0[30] = v8;
    *v8 = v0;
    v8[1] = specialized DatabaseTable<>.set(key:value:);
    v9 = v0[17];
    v10 = inited;
    v11 = v7;
  }

  else
  {
    v12 = v0[21];
    v14 = v0[14];
    v13 = v0[15];
    outlined init with take of AspirePirSymmetricPirClientConfig(v0[18], v12, type metadata accessor for AspireApiConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v15 = swift_initStackObject();
    v0[24] = v15;
    *(v15 + 16) = xmmword_225022960;
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMd, &_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMR);
    v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) - 8);
    v17 = *(*v16 + 72);
    v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_225022960;
    v20 = (v19 + v18);
    v21 = v16[14];
    *v20 = v14;
    v20[1] = v13;
    outlined init with copy of UserIdentifier(v12, v20 + v21, type metadata accessor for AspireApiConfig);
    swift_bridgeObjectRetain_n();
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(v19);
    v0[25] = v22;
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
    swift_deallocClassInstance();
    v23 = swift_task_alloc();
    v0[26] = v23;
    *v23 = v0;
    v23[1] = specialized DatabaseTable<>.set(key:value:);
    v24 = v0[17];
    v10 = v15;
    v11 = v22;
  }

  return specialized DatabaseTable<>.update(keys:with:)(v10, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 216) = v0;

  swift_setDeallocating();
  outlined destroy of String(v5 + 32);
  v7 = *(v2 + 184);
  v8 = *(v2 + 176);
  if (v0)
  {
    v9 = specialized DatabaseTable<>.set(key:value:);
  }

  else
  {
    v9 = specialized DatabaseTable<>.set(key:value:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  outlined destroy of AspirePirKeywordPirParameters(v0[21], type metadata accessor for AspireApiConfig);
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

{
  outlined destroy of AspirePirKeywordPirParameters(v0[21], type metadata accessor for AspireApiConfig);
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v4 = v3[22];
    v5 = v3[23];

    return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v4, v5);
  }

  else
  {
    v7 = v3[28];
    v6 = v3[29];

    swift_setDeallocating();
    outlined destroy of String(v7 + 32);
    v8 = v3[21];
    v9 = v3[18];

    v10 = v3[1];

    return v10();
  }
}

{
  v2 = v0[28];
  v1 = v0[29];

  swift_setDeallocating();
  outlined destroy of String(v2 + 32);
  v3 = v0[31];
  v4 = v0[21];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[16], v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    v5 = v0[15];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[18], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    inited = swift_initStackObject();
    v0[28] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v4;
    *(inited + 40) = v5;
    outlined copy of Data._Representation(v4, v5);
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[29] = v7;
    v8 = swift_task_alloc();
    v0[30] = v8;
    *v8 = v0;
    v8[1] = specialized DatabaseTable<>.set(key:value:);
    v9 = v0[17];
    v10 = inited;
  }

  else
  {
    v11 = v0[21];
    v13 = v0[14];
    v12 = v0[15];
    outlined init with take of AspirePirSymmetricPirClientConfig(v0[18], v11, type metadata accessor for AspireHeEvaluationKeyConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v14 = swift_initStackObject();
    v0[24] = v14;
    *(v14 + 16) = xmmword_225022960;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtGMR);
    v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR) - 8);
    v16 = *(*v15 + 72);
    v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_225022960;
    v19 = (v18 + v17);
    v20 = v15[14];
    *v19 = v13;
    v19[1] = v12;
    outlined init with copy of UserIdentifier(v11, v19 + v20, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined copy of Data._Representation(v13, v12);
    outlined copy of Data._Representation(v13, v12);
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(v18);
    v0[25] = v7;
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR);
    swift_deallocClassInstance();
    v21 = swift_task_alloc();
    v0[26] = v21;
    *v21 = v0;
    v21[1] = specialized DatabaseTable<>.set(key:value:);
    v22 = v0[17];
    v10 = v14;
  }

  return specialized DatabaseTable<>.update(keys:with:)(v10, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 216) = v0;

  swift_setDeallocating();
  outlined destroy of Data(v5 + 32);
  v7 = *(v2 + 184);
  v8 = *(v2 + 176);
  if (v0)
  {
    v9 = specialized DatabaseTable<>.set(key:value:);
  }

  else
  {
    v9 = specialized DatabaseTable<>.set(key:value:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  outlined destroy of AspirePirKeywordPirParameters(v0[21], type metadata accessor for AspireHeEvaluationKeyConfig);
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

{
  outlined destroy of AspirePirKeywordPirParameters(v0[21], type metadata accessor for AspireHeEvaluationKeyConfig);
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v4 = v3[22];
    v5 = v3[23];

    return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v4, v5);
  }

  else
  {
    v7 = v3[28];
    v6 = v3[29];

    swift_setDeallocating();
    outlined destroy of Data(v7 + 32);
    v8 = v3[21];
    v9 = v3[18];

    v10 = v3[1];

    return v10();
  }
}

{
  v2 = v0[28];
  v1 = v0[29];

  swift_setDeallocating();
  outlined destroy of Data(v2 + 32);
  v3 = v0[31];
  v4 = v0[21];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t RequestsManager.generateEvaluationKey(config:pirContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v34 - v6;
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for AspireApiKeyStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 serializedKeyStatus];
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v41 = v20;
  v42 = v22;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);
  v23 = v43;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v23)
  {
    v25 = v35;
    v26 = v36;
    v43 = 0;
    v27 = &v12[*(v9 + 24)];
    v28 = v37;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27, v37, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v29 = *(v14 + 48);
    if (v29(v28, 1, v13) == 1)
    {
      *v18 = MEMORY[0x277D84F90];
      v18[8] = 0;
      v30 = &v18[*(v13 + 24)];
      UnknownStorage.init()();
      outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiKeyStatus);
      v31 = *(v13 + 28);
      v32 = type metadata accessor for AspireHeEncryptionParameters(0);
      (*(*(v32 - 8) + 56))(&v18[v31], 1, 1, v32);
      if (v29(v28, 1, v13) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiKeyStatus);
      outlined init with take of AspirePirSymmetricPirClientConfig(v28, v18, type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v33 = type metadata accessor for RequestsManager.PIRContext();
    generateEvaluationKey(secretKey:config:)(v26 + *(v33 + 32), v18, v25);
    return outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return result;
}

uint64_t RequestsManager.generateEvaluationKey(config:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for RequestsManager.PIRContext() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[5] = v7;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = RequestsManager.generateEvaluationKey(config:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v7, a3, 1);
}

uint64_t RequestsManager.generateEvaluationKey(config:context:)()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = RequestsManager.generateEvaluationKey(config:context:);
  }

  else
  {
    v3 = RequestsManager.generateEvaluationKey(config:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 24), v2, *(v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for RequestsManager.PIRContext);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t RequestsManager.loadContext(requestContext:allowingKeyRotation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 352) = a2;
  *(v4 + 360) = v3;
  *(v4 + 896) = a3;
  *(v4 + 344) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v6 = type metadata accessor for NetworkManagerType(0);
  *(v4 + 384) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 392) = swift_task_alloc();
  v8 = type metadata accessor for SecretKey();
  *(v4 + 400) = v8;
  v9 = *(v8 - 8);
  *(v4 + 408) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  v11 = type metadata accessor for UserIdentifier();
  *(v4 + 424) = v11;
  v12 = *(v11 - 8);
  *(v4 + 432) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR) - 8) + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  *(v4 + 488) = swift_task_alloc();
  v17 = type metadata accessor for AspireApiPIRConfig(0);
  *(v4 + 496) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v4 + 504) = swift_task_alloc();
  v19 = type metadata accessor for AspireApiConfig(0);
  *(v4 + 512) = v19;
  v20 = *(v19 - 8);
  *(v4 + 520) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  *(v4 + 536) = v22;
  *(v4 + 544) = *(v22 + 64);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 552) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for HE.SerializedSecretKey();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for PEC.SimilarityClient();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v11 = type metadata accessor for PEC.SimilarityClientConfig();
  *(v4 + 88) = v11;
  v12 = *(v11 - 8);
  *(v4 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v14 = type metadata accessor for SimilarityClient();
  *(v4 + 120) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v16 = type metadata accessor for SecretKey();
  *(v4 + 144) = v16;
  v17 = *(v16 - 8);
  *(v4 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v19 = type metadata accessor for UserIdentifier();
  *(v4 + 176) = v19;
  v20 = *(v19 - 8);
  *(v4 + 184) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR) - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  v25 = *(*(type metadata accessor for AspireApiPECConfig(0) - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v26 = type metadata accessor for AspireApiConfig(0);
  *(v4 + 264) = v26;
  v27 = *(v26 - 8);
  *(v4 + 272) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  *(v4 + 288) = v29;
  *(v4 + 296) = *(v29 + 64);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

uint64_t RequestsManager.loadContext(requestContext:allowingKeyRotation:)()
{
  v1 = **(v0 + 352);
  v2 = [v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 592) = v3;
  *(v0 + 600) = v5;
  v6 = [v1 sourceApplicationBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 360);
  *(v0 + 608) = RequestsManager.keyRotation(for:)(v8, v10);

  v12 = *(v11 + 40);
  *(v0 + 616) = v12;

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v12, 0);
}

{
  v1 = v0[77];
  ActiveUseCaseTracker.markActive(useCase:active:)(v0[74], v0[75], 1);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = *(v0[45] + 16);
  v0[78] = v1;
  v0[79] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[80] = v2;
  *v2 = v0;
  v2[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];

  return specialized DatabaseTable<>.get(_:)(v5, v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  v2[81] = v0;

  v5 = v2[79];
  if (v0)
  {
    v6 = v2[75];

    v7 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {

    v7 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v87 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 512);
  v3 = *(v0 + 896);
  v4 = *(*(v0 + 520) + 48);
  if (v4(v1, 1, v2) == 1 && v3 != 0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 600);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.framework);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 600);
      v24 = *(v0 + 592);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v86[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v86);
      _os_log_impl(&dword_224E26000, v21, v22, "No dynamic configuration for use-case '%{public}s'. Running rotation task", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA61F40](v26, -1, -1);
      MEMORY[0x22AA61F40](v25, -1, -1);
    }

    v27 = *(v0 + 608);
    v28 = *(v0 + 568);
    v29 = type metadata accessor for AspireApiConfigResponse(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

    return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v27, 0);
  }

  v6 = *(v0 + 576);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v6, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v7 = v4(v6, 1, v2);
  v8 = *(v0 + 576);
  if (v7 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 600);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.framework);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 600);
    if (v13)
    {
      v15 = *(v0 + 592);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v86[0] = v17;
      *v16 = 136446210;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v86);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_224E26000, v11, v12, "No dynamic configuration for use-case '%{public}s'", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 608);
    v40 = *(v0 + 584);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_30:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v54 = *(v0 + 584);
    v55 = *(v0 + 576);
    v56 = *(v0 + 568);
    v57 = *(v0 + 560);
    v58 = *(v0 + 552);
    v59 = *(v0 + 528);
    v60 = *(v0 + 504);
    v62 = *(v0 + 480);
    v61 = *(v0 + 488);
    v63 = *(v0 + 472);
    v78 = *(v0 + 464);
    v79 = *(v0 + 456);
    v80 = *(v0 + 448);
    v81 = *(v0 + 440);
    v82 = *(v0 + 416);
    v83 = *(v0 + 392);
    v84 = *(v0 + 376);
    v85 = *(v0 + 368);

    v64 = *(v0 + 8);

    return v64();
  }

  v30 = *(v0 + 528);
  v31 = *(v0 + 512);
  v32 = *(v0 + 488);
  outlined init with take of AspirePirSymmetricPirClientConfig(v8, v30, type metadata accessor for AspireApiConfig);
  v33 = (v30 + *(v31 + 20));
  v34 = *v33;
  *(v0 + 696) = *v33;
  v35 = v33[1];
  *(v0 + 704) = v35;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, v32, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v36 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v37 = (*(*(v36 - 8) + 48))(v32, 1, v36);
  v38 = *(v0 + 488);
  if (v37 == 1)
  {
    outlined copy of Data._Representation(v34, v35);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_24:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 600);
    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.framework);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 600);
    if (v46)
    {
      v48 = *(v0 + 592);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v86[0] = v50;
      *v49 = 136446210;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v86);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_224E26000, v44, v45, "Did not find PIR config for PIR use-case '%{public}s.'", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA61F40](v50, -1, -1);
      MEMORY[0x22AA61F40](v49, -1, -1);
    }

    else
    {
    }

    v52 = *(v0 + 608);
    v40 = *(v0 + 584);
    v53 = *(v0 + 528);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v34, v35);

    outlined destroy of AspirePirKeywordPirParameters(v53, type metadata accessor for AspireApiConfig);
    goto LABEL_30;
  }

  v41 = *(v0 + 488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined copy of Data._Representation(v34, v35);
    outlined destroy of AspirePirKeywordPirParameters(v38, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_24;
  }

  v65 = *(v0 + 352);
  outlined init with take of AspirePirSymmetricPirClientConfig(v38, *(v0 + 504), type metadata accessor for AspireApiPIRConfig);
  v66 = *(v65 + 24);
  v67 = *(v65 + 40);
  v68 = *(v65 + 8);
  *(v0 + 64) = *(v65 + 56);
  *(v0 + 32) = v66;
  *(v0 + 48) = v67;
  *(v0 + 16) = v68;
  v69 = *(v65 + 8);
  v70 = *(v65 + 24);
  v71 = *(v65 + 40);
  *(v0 + 120) = *(v65 + 56);
  *(v0 + 104) = v71;
  *(v0 + 88) = v70;
  *(v0 + 72) = v69;
  outlined copy of Data._Representation(v34, v35);
  outlined init with copy of StaticPIRParameters(v0 + 16, v0 + 128);
  v72 = swift_task_alloc();
  *(v0 + 712) = v72;
  *v72 = v0;
  v72[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v73 = *(v0 + 600);
  v74 = *(v0 + 592);
  v75 = *(v0 + 504);
  v76 = *(v0 + 360);

  return RequestsManager.validate(config:static:useCase:)(v75, (v0 + 72), v74, v73);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[67];
  v7 = *(v1 + 184);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[71], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[82] = v9;
  v9[2] = v1;
  v9[3] = v3;
  v9[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v9 + v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v10 = swift_task_alloc();
  v0[83] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v11 = v0[75];
  v12 = v0[74];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v12, v11, &closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = v2[82];
  v6 = v2[76];
  v7 = v2[75];

  if (v0)
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[71], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[85] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v4, v2, 0);
}

{
  v2 = *(*v1 + 680);
  v5 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 568), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[76];
  v2 = v0[73];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v23 = v0[84];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[63];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[59];
  v15 = v0[58];
  v16 = v0[57];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  v20 = v0[49];
  v21 = v0[47];
  v22 = v0[46];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[76];
  v2 = v0[73];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[63];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[59];
  v15 = v0[58];
  v16 = v0[57];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  v20 = v0[49];
  v21 = v0[47];
  v22 = v0[46];

  v13 = v0[1];

  return v13();
}

{
  v64 = v0;
  if (*(v0 + 897) == 1)
  {
    v1 = *(*(v0 + 360) + 48);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v3 = *(v2 + 48);

    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 592), *(v0 + 600));
      if (v5)
      {
        v6 = *(v0 + 360);
        v7 = (*(v3 + 56) + 16 * v4);
        v8 = *v7;
        *(v0 + 728) = *v7;
        v9 = v7[1];
        *(v0 + 736) = v9;

        v10 = *(v6 + 24);
        v11 = *(v6 + 32);
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v62 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        *(v0 + 744) = v15;
        *v15 = v0;
        v15[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
        v16 = *(v0 + 480);

        return v62(v16, v8, v9, ObjectType, v11);
      }
    }

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 600);
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.framework);

    v20 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v20, v30);
    v32 = *(v0 + 600);
    if (v31)
    {
      v33 = *(v0 + 592);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63[0] = v35;
      *v34 = 136446210;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v63);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_224E26000, v20, v30, "No group associated with use-case '%{public}s'", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA61F40](v35, -1, -1);
      MEMORY[0x22AA61F40](v34, -1, -1);

      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 600);
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.framework);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 600);
  if (!v22)
  {
    goto LABEL_15;
  }

  v24 = *(v0 + 592);
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v63[0] = v26;
  *v25 = 136446210;
  v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v63);

  *(v25 + 4) = v27;
  _os_log_impl(&dword_224E26000, v20, v21, "Dynamic configuration is invalid for use-case '%{public}s'", v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v26);
  MEMORY[0x22AA61F40](v26, -1, -1);
  MEMORY[0x22AA61F40](v25, -1, -1);

LABEL_16:
  v37 = *(v0 + 704);
  v38 = *(v0 + 696);
  v39 = *(v0 + 608);
  v40 = *(v0 + 584);
  v41 = *(v0 + 528);
  v42 = *(v0 + 504);
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v38, v37);

  outlined destroy of AspirePirKeywordPirParameters(v41, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v42, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v43 = *(v0 + 584);
  v44 = *(v0 + 576);
  v45 = *(v0 + 568);
  v46 = *(v0 + 560);
  v47 = *(v0 + 552);
  v48 = *(v0 + 528);
  v49 = *(v0 + 504);
  v51 = *(v0 + 480);
  v50 = *(v0 + 488);
  v52 = *(v0 + 472);
  v54 = *(v0 + 464);
  v55 = *(v0 + 456);
  v56 = *(v0 + 448);
  v57 = *(v0 + 440);
  v58 = *(v0 + 416);
  v59 = *(v0 + 392);
  v60 = *(v0 + 376);
  v61 = *(v0 + 368);

  v53 = *(v0 + 8);

  return v53();
}

{
  v1 = *(*v0 + 744);
  v3 = *v0;

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[59];
  v2 = v0[53];
  v3 = v0[54];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[60], v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v3 + 48);
  v0[94] = v4;
  v0[95] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[59], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v6 = v0[62];
    v5 = v0[63];
    v7 = v0[59];
    v8 = *(v7 + *(v0[53] + 24));

    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for UserIdentifier);
    v9 = (*(v5 + *(v6 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    if (*(v8 + 16))
    {
      v10 = *v9;
      v11 = v9[1];
      outlined copy of Data._Representation(v10, v11);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
      if (v13)
      {
        outlined init with copy of UserIdentifier(*(v8 + 56) + *(v0[51] + 72) * v12, v0[57], type metadata accessor for SecretKey);
        outlined consume of Data._Representation(v10, v11);

        v14 = 0;
        goto LABEL_9;
      }

      outlined consume of Data._Representation(v10, v11);
    }

    else
    {
    }
  }

  v14 = 1;
LABEL_9:
  (*(v0[51] + 56))(v0[57], v14, 1, v0[50]);
  v15 = swift_task_alloc();
  v0[96] = v15;
  *v15 = v0;
  v15[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v16 = v0[92];
  v17 = v0[91];
  v18 = v0[76];

  return KeyRotation.areKeysExpired(groupName:)(v17, v16);
}

{
  v146 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 480);
  v4 = *(v0 + 424);
  if (v2(v3, 1, v4) == 1 || ((v5 = *(v0 + 898), (*(*(v0 + 408) + 48))(*(v0 + 456), 1, *(v0 + 400)) != 1) ? (v6 = v5 == 0) : (v6 = 0), !v6))
  {
    if (*(v0 + 896) == 1)
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 600);
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.framework);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 600);
        v12 = *(v0 + 592);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v145[0] = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v145);
        _os_log_impl(&dword_224E26000, v9, v10, "No userId or secretKey for use-case '%{public}s'. Running rotation task'", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      v15 = *(v0 + 608);
      v16 = *(v0 + 552);
      v17 = type metadata accessor for AspireApiConfigResponse(0);
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

      return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v15, 0);
    }

    if (*(v0 + 898))
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 600);
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.framework);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 600);
      if (v22)
      {
        v24 = *(v0 + 592);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v145[0] = v26;
        *v25 = 136446210;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v145);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_224E26000, v20, v21, "Key expired for use-case '%{public}s'", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x22AA61F40](v26, -1, -1);
        MEMORY[0x22AA61F40](v25, -1, -1);
      }

      else
      {
      }

      v64 = *(v0 + 704);
      v65 = *(v0 + 696);
      v66 = *(v0 + 608);
      v139 = *(v0 + 584);
      v52 = *(v0 + 528);
      v53 = *(v0 + 504);
      v54 = *(v0 + 480);
      v55 = *(v0 + 456);
      type metadata accessor for CipherMLError();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v56 = v65;
      v57 = v64;
LABEL_34:
      outlined consume of Data._Representation(v56, v57);

      outlined destroy of AspirePirKeywordPirParameters(v52, type metadata accessor for AspireApiConfig);
      outlined destroy of AspirePirKeywordPirParameters(v53, type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v54, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v139, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v55, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
      v67 = *(v0 + 584);
      v68 = *(v0 + 576);
      v69 = *(v0 + 568);
      v70 = *(v0 + 560);
      v71 = *(v0 + 552);
      v72 = *(v0 + 528);
      v73 = *(v0 + 504);
      v75 = *(v0 + 480);
      v74 = *(v0 + 488);
      v76 = *(v0 + 472);
      v121 = *(v0 + 464);
      v122 = *(v0 + 456);
      v124 = *(v0 + 448);
      v127 = *(v0 + 440);
      v130 = *(v0 + 416);
      v133 = *(v0 + 392);
      v136 = *(v0 + 376);
      v140 = *(v0 + 368);

      v77 = *(v0 + 8);
LABEL_35:

      return v77();
    }
  }

  v28 = *(v0 + 464);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, v28, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v29 = v2(v28, 1, v4);
  v30 = *(v0 + 464);
  if (v29 == 1)
  {
    v31 = &_s8CipherML14UserIdentifierVSgMd;
    v32 = &_s8CipherML14UserIdentifierVSgMR;
LABEL_23:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, v31, v32);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 600);
    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.framework);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 600);
    if (v43)
    {
      v45 = *(v0 + 592);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v145[0] = v47;
      *v46 = 136446210;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v145);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_224E26000, v41, v42, "No key for use-case '%{public}s'", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AA61F40](v47, -1, -1);
      MEMORY[0x22AA61F40](v46, -1, -1);
    }

    else
    {
    }

    v49 = *(v0 + 704);
    v50 = *(v0 + 696);
    v51 = *(v0 + 608);
    v139 = *(v0 + 584);
    v52 = *(v0 + 528);
    v53 = *(v0 + 504);
    v54 = *(v0 + 480);
    v55 = *(v0 + 456);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v56 = v50;
    v57 = v49;
    goto LABEL_34;
  }

  v33 = *(v0 + 448);
  v34 = *(v0 + 456);
  v35 = *(v0 + 400);
  v36 = *(v0 + 408);
  outlined init with take of AspirePirSymmetricPirClientConfig(v30, *(v0 + 440), type metadata accessor for UserIdentifier);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34, v33, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v37 = (*(v36 + 48))(v33, 1, v35);
  v38 = *(v0 + 448);
  if (v37 == 1)
  {
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 440), type metadata accessor for UserIdentifier);
    v31 = &_s8CipherML9SecretKeyVSgMd;
    v32 = &_s8CipherML9SecretKeyVSgMR;
    v30 = v38;
    goto LABEL_23;
  }

  v59 = *(v0 + 384);
  v58 = *(v0 + 392);
  v60 = *(v0 + 352);
  outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 448), *(v0 + 416), type metadata accessor for SecretKey);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined init with copy of UserIdentifier(v60 + *(v61 + 32), v58, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v78 = *(v0 + 392);
    if (EnumCaseMultiPayload)
    {
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v82 = *(v81 + 48);
      v83 = *(v78 + *(v81 + 64) + 8);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v78 + v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v84 = type metadata accessor for URL();
      (*(*(v84 - 8) + 8))(v78, v84);
    }

    else
    {
      v79 = *(v78 + 8);

      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v78 + *(v80 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    v63 = 1;
    goto LABEL_42;
  }

  v63 = 0;
LABEL_42:
  v85 = *(v0 + 376);
  v86 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  *(v0 + 824) = v86;
  v87 = *(v86 - 8);
  *(v0 + 832) = v87;
  v89 = v87 + 56;
  v88 = *(v87 + 56);
  *(v0 + 840) = v88;
  *(v0 + 848) = v89 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v88(v85, 1, 1, v86);
  if (!v63)
  {
    v97 = *(v0 + 608);
    v128 = *(v0 + 600);
    v131 = *(v0 + 696);
    v125 = *(v0 + 592);
    v137 = *(v0 + 704);
    v141 = *(v0 + 584);
    v98 = *(v0 + 528);
    v99 = *(v0 + 504);
    v134 = *(v0 + 480);
    v143 = *(v0 + 456);
    v100 = *(v0 + 440);
    v101 = *(v0 + 416);
    v102 = *(v0 + 376);
    v103 = *(v0 + 344);
    v104 = specialized RequestsManager.loadCache(requestContext:)(*(v0 + 352));
    v106 = v105;

    outlined destroy of AspirePirKeywordPirParameters(v98, type metadata accessor for AspireApiConfig);
    v107 = type metadata accessor for RequestsManager.PIRContext();
    outlined init with take of AspirePirSymmetricPirClientConfig(v100, v103 + v107[5], type metadata accessor for UserIdentifier);
    outlined init with take of AspirePirSymmetricPirClientConfig(v99, v103 + v107[6], type metadata accessor for AspireApiPIRConfig);
    outlined init with take of AspirePirSymmetricPirClientConfig(v101, v103 + v107[8], type metadata accessor for SecretKey);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v102, v103 + v107[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    *v103 = v125;
    v103[1] = v128;
    v108 = (v103 + v107[7]);
    *v108 = v131;
    v108[1] = v137;
    v109 = (v103 + v107[9]);
    *v109 = v104;
    v109[1] = v106;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v134, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v141, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v143, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
    v110 = *(v0 + 584);
    v111 = *(v0 + 576);
    v112 = *(v0 + 568);
    v113 = *(v0 + 560);
    v114 = *(v0 + 552);
    v115 = *(v0 + 528);
    v116 = *(v0 + 504);
    v118 = *(v0 + 480);
    v117 = *(v0 + 488);
    v119 = *(v0 + 472);
    v123 = *(v0 + 464);
    v126 = *(v0 + 456);
    v129 = *(v0 + 448);
    v132 = *(v0 + 440);
    v135 = *(v0 + 416);
    v138 = *(v0 + 392);
    v142 = *(v0 + 376);
    v144 = *(v0 + 368);

    v77 = *(v0 + 8);
    goto LABEL_35;
  }

  v91 = *(v0 + 496);
  v90 = *(v0 + 504);
  *(v0 + 856) = *(*(v0 + 624) + 24);
  v92 = (*(v90 + *(v91 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v93 = *v92;
  *(v0 + 864) = *v92;
  v94 = v92[1];
  *(v0 + 872) = v94;

  outlined copy of Data._Representation(v93, v94);
  v95 = swift_task_alloc();
  *(v0 + 880) = v95;
  *v95 = v0;
  v95[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v96 = *(v0 + 368);

  return specialized DatabaseTable<>.get(_:)(v96, v93, v94);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[67];
  v7 = *(v1 + 184);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[69], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[98] = v9;
  v9[2] = v1;
  v9[3] = v3;
  v9[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v9 + v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v10 = swift_task_alloc();
  v0[99] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v11 = v0[75];
  v12 = v0[74];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v12, v11, &closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = v2[98];
  v6 = v2[76];
  v7 = v2[75];

  if (v0)
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[69], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[101] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v4, v2, 0);
}

{
  v2 = *(*v1 + 808);
  v5 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 552), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v27 = v0[100];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[59];
  v19 = v0[58];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[49];
  v25 = v0[47];
  v26 = v0[46];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[59];
  v19 = v0[58];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[49];
  v25 = v0[47];
  v26 = v0[46];

  v17 = v0[1];

  return v17();
}

{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v4 = *v1;
  v2[111] = v0;

  v5 = v2[109];
  v6 = v2[108];
  v7 = v2[107];
  if (v0)
  {
    v8 = v2[75];

    outlined consume of Data._Representation(v6, v5);
    v9 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {

    outlined consume of Data._Representation(v6, v5);
    v9 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[103];
  v2 = v0[46];
  if ((*(v0[104] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[88];
    v4 = v0[87];
    v5 = v0[76];
    v6 = v0[75];
    v54 = v0[66];
    v58 = v0[63];
    v62 = v0[60];
    v66 = v0[73];
    v70 = v0[57];
    v7 = v0[55];
    v8 = v0[52];
    v9 = v0[47];

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v4, v3);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined destroy of AspirePirKeywordPirParameters(v8, type metadata accessor for SecretKey);
    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for UserIdentifier);
    outlined destroy of AspirePirKeywordPirParameters(v54, type metadata accessor for AspireApiConfig);
    outlined destroy of AspirePirKeywordPirParameters(v58, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v62, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v66, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v70, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
    v10 = v0[73];
    v11 = v0[72];
    v12 = v0[71];
    v13 = v0[70];
    v14 = v0[69];
    v15 = v0[66];
    v16 = v0[63];
    v17 = v0[60];
    v18 = v0[61];
    v19 = v0[59];
    v48 = v0[58];
    v49 = v0[57];
    v51 = v0[56];
    v55 = v0[55];
    v59 = v0[52];
    v63 = v0[49];
    v67 = v0[47];
    v71 = v0[46];
  }

  else
  {
    v21 = v0[106];
    v22 = v0[105];
    v23 = v0[47];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AspirePirSymmetricPirClientConfig(v2, v23, type metadata accessor for AspireHeEvaluationKeyConfig);
    v22(v23, 0, 1, v1);
    v24 = v0[76];
    v56 = v0[75];
    v60 = v0[87];
    v52 = v0[74];
    v68 = v0[88];
    v72 = v0[73];
    v25 = v0[66];
    v26 = v0[63];
    v64 = v0[60];
    v74 = v0[57];
    v27 = v0[55];
    v28 = v0[52];
    v29 = v0[47];
    v30 = v0[43];
    v31 = specialized RequestsManager.loadCache(requestContext:)(v0[44]);
    v33 = v32;

    outlined destroy of AspirePirKeywordPirParameters(v25, type metadata accessor for AspireApiConfig);
    v34 = type metadata accessor for RequestsManager.PIRContext();
    outlined init with take of AspirePirSymmetricPirClientConfig(v27, v30 + v34[5], type metadata accessor for UserIdentifier);
    outlined init with take of AspirePirSymmetricPirClientConfig(v26, v30 + v34[6], type metadata accessor for AspireApiPIRConfig);
    outlined init with take of AspirePirSymmetricPirClientConfig(v28, v30 + v34[8], type metadata accessor for SecretKey);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v29, v30 + v34[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    *v30 = v52;
    v30[1] = v56;
    v35 = (v30 + v34[7]);
    *v35 = v60;
    v35[1] = v68;
    v36 = (v30 + v34[9]);
    *v36 = v31;
    v36[1] = v33;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v64, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v74, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
    v37 = v0[73];
    v38 = v0[72];
    v39 = v0[71];
    v40 = v0[70];
    v41 = v0[69];
    v42 = v0[66];
    v43 = v0[63];
    v45 = v0[60];
    v44 = v0[61];
    v46 = v0[59];
    v50 = v0[58];
    v53 = v0[57];
    v57 = v0[56];
    v61 = v0[55];
    v65 = v0[52];
    v69 = v0[49];
    v73 = v0[47];
    v75 = v0[46];
  }

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[76];

  v22 = v0[81];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[63];
  v10 = v0[60];
  v9 = v0[61];
  v11 = v0[59];
  v14 = v0[58];
  v15 = v0[57];
  v16 = v0[56];
  v17 = v0[55];
  v18 = v0[52];
  v19 = v0[49];
  v20 = v0[47];
  v21 = v0[46];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[76];
  v2 = v0[73];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v23 = v0[86];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[63];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[59];
  v15 = v0[58];
  v16 = v0[57];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  v20 = v0[49];
  v21 = v0[47];
  v22 = v0[46];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[66];
  v4 = v0[63];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v25 = v0[90];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[63];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[59];
  v17 = v0[58];
  v18 = v0[57];
  v19 = v0[56];
  v20 = v0[55];
  v21 = v0[52];
  v22 = v0[49];
  v23 = v0[47];
  v24 = v0[46];

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v27 = v0[97];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[59];
  v19 = v0[58];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[49];
  v25 = v0[47];
  v26 = v0[46];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v27 = v0[102];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[59];
  v19 = v0[58];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[49];
  v25 = v0[47];
  v26 = v0[46];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[57];
  v7 = v0[55];
  v8 = v0[52];
  v9 = v0[47];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v8, type metadata accessor for SecretKey);
  outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for UserIdentifier);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v30 = v0[111];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[70];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[63];
  v18 = v0[60];
  v17 = v0[61];
  v19 = v0[59];
  v22 = v0[58];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[52];
  v27 = v0[49];
  v28 = v0[47];
  v29 = v0[46];

  v20 = v0[1];

  return v20();
}

{
  v1 = **(v0 + 24);
  v2 = [v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 344) = v3;
  *(v0 + 352) = v5;
  v6 = [v1 sourceApplicationBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 32);
  *(v0 + 360) = RequestsManager.keyRotation(for:)(v8, v10);

  v12 = *(v11 + 40);
  *(v0 + 368) = v12;

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v12, 0);
}

{
  v1 = v0[46];
  ActiveUseCaseTracker.markActive(useCase:active:)(v0[43], v0[44], 1);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v0[47] = *(*(v0[4] + 16) + 16);

  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];

  return specialized DatabaseTable<>.get(_:)(v4, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v5 = *(v2 + 352);

    v6 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v6 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v130 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 264);
  v3 = *(v0 + 552);
  v4 = *(*(v0 + 272) + 48);
  if (v4(v1, 1, v2) == 1 && v3 != 0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 352);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.framework);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 344);
      v23 = *(v0 + 352);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v129[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v129);
      _os_log_impl(&dword_224E26000, v21, v22, "No dynamic configuration for use-case '%{public}s'. Running rotation task", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA61F40](v26, -1, -1);
      MEMORY[0x22AA61F40](v25, -1, -1);
    }

    v27 = *(v0 + 360);
    v28 = *(v0 + 320);
    v29 = type metadata accessor for AspireApiConfigResponse(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

    return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v27, 0);
  }

  v6 = *(v0 + 328);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v6, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v7 = v4(v6, 1, v2);
  v8 = *(v0 + 328);
  if (v7 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 352);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.framework);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 352);
    if (v13)
    {
      v15 = *(v0 + 344);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v129[0] = v17;
      *v16 = 136446210;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v129);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_224E26000, v11, v12, "No dynamic configuration for use-case '%{public}s'", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 360);
    v40 = *(v0 + 336);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_34;
  }

  v30 = *(v0 + 280);
  v31 = *(v0 + 264);
  v32 = *(v0 + 240);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v8, v30, type metadata accessor for AspireApiConfig);
  v33 = (v30 + *(v31 + 20));
  v34 = *v33;
  *(v0 + 440) = *v33;
  v35 = v33[1];
  *(v0 + 448) = v35;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, v32, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v36 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v37 = (*(*(v36 - 8) + 48))(v32, 1, v36);
  v38 = *(v0 + 240);
  if (v37 == 1)
  {
    outlined copy of Data._Representation(v34, v35);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_26:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 352);
    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.framework);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 352);
    if (v56)
    {
      v58 = *(v0 + 344);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v129[0] = v60;
      *v59 = 136446210;
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, v129);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_224E26000, v54, v55, "Did not find PEC config for PEC use-case '%{public}s.'", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AA61F40](v60, -1, -1);
      MEMORY[0x22AA61F40](v59, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 360);
    v40 = *(v0 + 336);
    v50 = *(v0 + 280);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v34, v35);

    v51 = type metadata accessor for AspireApiConfig;
    goto LABEL_32;
  }

  v41 = *(v0 + 240);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined copy of Data._Representation(v34, v35);
    outlined destroy of RequestsManager.PECContext(v38, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_26;
  }

  v42 = *(v0 + 392);
  v44 = *(v0 + 344);
  v43 = *(v0 + 352);
  v45 = *(v0 + 256);
  v46 = *(v0 + 32);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v38, v45, type metadata accessor for AspireApiPECConfig);
  outlined copy of Data._Representation(v34, v35);
  v47 = specialized RequestsManager.validate(config:static:useCase:)(v45, v44, v43);
  if (v42)
  {
    v49 = *(v0 + 352);
    v48 = *(v0 + 360);
    v40 = *(v0 + 336);
    v50 = *(v0 + 256);
    outlined destroy of RequestsManager.PECContext(*(v0 + 280), type metadata accessor for AspireApiConfig);
    outlined consume of Data._Representation(v34, v35);

    v51 = type metadata accessor for AspireApiPECConfig;
LABEL_32:
    v63 = v51;
    v64 = v50;
LABEL_33:
    outlined destroy of RequestsManager.PECContext(v64, v63);
LABEL_34:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v66 = *(v0 + 328);
    v65 = *(v0 + 336);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v69 = *(v0 + 304);
    v70 = *(v0 + 280);
    v71 = *(v0 + 248);
    v72 = *(v0 + 256);
    v74 = *(v0 + 232);
    v73 = *(v0 + 240);
    v115 = *(v0 + 224);
    v116 = *(v0 + 216);
    v117 = *(v0 + 208);
    v118 = *(v0 + 200);
    v119 = *(v0 + 192);
    v120 = *(v0 + 168);
    v121 = *(v0 + 160);
    v122 = *(v0 + 136);
    v123 = *(v0 + 128);
    v124 = *(v0 + 112);
    v125 = *(v0 + 104);
    v126 = *(v0 + 80);
    v127 = *(v0 + 56);

    v75 = *(v0 + 8);

    return v75();
  }

  if ((v47 & 1) == 0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v92 = *(v0 + 352);
    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Logger.framework);

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v0 + 352);
    if (v96)
    {
      v98 = *(v0 + 344);
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v129[0] = v100;
      *v99 = 136446210;
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v97, v129);

      *(v99 + 4) = v101;
      _os_log_impl(&dword_224E26000, v94, v95, "Dynamic configuration is invalid for use-case '%{public}s'", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x22AA61F40](v100, -1, -1);
      MEMORY[0x22AA61F40](v99, -1, -1);

LABEL_52:
      v111 = *(v0 + 360);
      v40 = *(v0 + 336);
      v112 = *(v0 + 280);
      v113 = *(v0 + 256);
      type metadata accessor for CipherMLError();
      lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      outlined consume of Data._Representation(v34, v35);

      outlined destroy of RequestsManager.PECContext(v112, type metadata accessor for AspireApiConfig);
      v63 = type metadata accessor for AspireApiPECConfig;
      v64 = v113;
      goto LABEL_33;
    }

LABEL_51:

    goto LABEL_52;
  }

  v76 = *(*(v0 + 32) + 48);
  os_unfair_lock_lock((v76 + 24));
  v77 = *(v76 + 16);

  os_unfair_lock_unlock((v76 + 24));
  v78 = *(v77 + 48);

  if (!*(v78 + 16) || (v79 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 344), *(v0 + 352)), (v80 & 1) == 0))
  {

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v102 = *(v0 + 352);
    v103 = type metadata accessor for Logger();
    __swift_project_value_buffer(v103, static Logger.framework);

    v94 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    v105 = os_log_type_enabled(v94, v104);
    v106 = *(v0 + 352);
    if (v105)
    {
      v107 = *(v0 + 344);
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v129[0] = v109;
      *v108 = 136446210;
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v106, v129);

      *(v108 + 4) = v110;
      _os_log_impl(&dword_224E26000, v94, v104, "No group associated with use-case '%{public}s'", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x22AA61F40](v109, -1, -1);
      MEMORY[0x22AA61F40](v108, -1, -1);

      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v81 = *(v0 + 32);
  v82 = (*(v78 + 56) + 16 * v79);
  v83 = *v82;
  *(v0 + 456) = *v82;
  v84 = v82[1];
  *(v0 + 464) = v84;

  v85 = *(v81 + 24);
  v86 = *(v81 + 32);
  ObjectType = swift_getObjectType();
  v88 = *(v86 + 8);
  v128 = (v88 + *v88);
  v89 = v88[1];
  v90 = swift_task_alloc();
  *(v0 + 472) = v90;
  *v90 = v0;
  v90[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v91 = *(v0 + 232);

  return v128(v91, v83, v84, ObjectType, v86);
}

{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = *(v1 + 184);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[40], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[50] = v9;
  v9[2] = v1;
  v9[3] = v3;
  v9[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v9 + v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v11 = v0[43];
  v12 = v0[44];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v11, v12, &closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 416) = v0;

  v7 = *(v2 + 360);
  if (v0)
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[40], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v4, v2, 0);
}

{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 320), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[45];
  v2 = v0[42];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v28 = v0[52];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[10];
  v27 = v0[7];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[45];
  v2 = v0[42];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = v0[35];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v12 = v0[30];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[10];
  v27 = v0[7];

  v13 = v0[1];

  return v13();
}

{
  v1 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[29], v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v3 + 48);
  v0[60] = v4;
  v0[61] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[28];
  if (v5 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[28], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v7 = *(v6 + *(v0[22] + 24));

    outlined destroy of RequestsManager.PECContext(v6, type metadata accessor for UserIdentifier);
    if (*(v7 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0[32] + 32), *(v0[32] + 40));
      if (v9)
      {
        outlined init with copy of AspireApiConfig(*(v7 + 56) + *(v0[19] + 72) * v8, v0[26], type metadata accessor for SecretKey);

        v10 = 0;
        goto LABEL_8;
      }
    }
  }

  v10 = 1;
LABEL_8:
  (*(v0[19] + 56))(v0[26], v10, 1, v0[18]);
  v11 = swift_task_alloc();
  v0[62] = v11;
  *v11 = v0;
  v11[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v13 = v0[57];
  v12 = v0[58];
  v14 = v0[45];

  return KeyRotation.areKeysExpired(groupName:)(v13, v12);
}

{
  v155 = v0;
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 232);
  v4 = *(v0 + 176);
  if (v2(v3, 1, v4) == 1 || ((v5 = *(v0 + 553), (*(*(v0 + 152) + 48))(*(v0 + 208), 1, *(v0 + 144)) != 1) ? (v6 = v5 == 0) : (v6 = 0), !v6))
  {
    if (*(v0 + 552) == 1)
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 352);
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.framework);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v12 = *(v0 + 344);
        v11 = *(v0 + 352);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v154[0] = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v154);
        _os_log_impl(&dword_224E26000, v9, v10, "No userId or secretKey for use-case '%{public}s'. Running rotation task'", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      v15 = *(v0 + 360);
      v16 = *(v0 + 304);
      v17 = type metadata accessor for AspireApiConfigResponse(0);
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

      return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v15, 0);
    }

    if (*(v0 + 553))
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 352);
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.framework);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 352);
      if (v22)
      {
        v24 = *(v0 + 344);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v154[0] = v26;
        *v25 = 136446210;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v154);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_224E26000, v20, v21, "Key expired for use-case '%{public}s'", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x22AA61F40](v26, -1, -1);
        MEMORY[0x22AA61F40](v25, -1, -1);
      }

      else
      {
      }

      v49 = *(v0 + 440);
      v48 = *(v0 + 448);
      v148 = *(v0 + 360);
      v64 = *(v0 + 336);
      v65 = *(v0 + 280);
      v66 = *(v0 + 256);
      v67 = *(v0 + 232);
      v68 = *(v0 + 208);
      type metadata accessor for CipherMLError();
      lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      v55 = v64;
      v54 = v68;
      v52 = v66;
      v53 = v67;
      v51 = v65;
LABEL_33:
      swift_willThrow();
      outlined consume of Data._Representation(v49, v48);

      goto LABEL_34;
    }
  }

  v28 = *(v0 + 216);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, v28, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v29 = v2(v28, 1, v4);
  v30 = *(v0 + 216);
  if (v29 == 1)
  {
    v31 = &_s8CipherML14UserIdentifierVSgMd;
    v32 = &_s8CipherML14UserIdentifierVSgMR;
LABEL_23:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, v31, v32);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 352);
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.framework);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 352);
    if (v42)
    {
      v44 = *(v0 + 344);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v154[0] = v46;
      *v45 = 136446210;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, v154);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_224E26000, v40, v41, "No key for use-case '%{public}s'", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA61F40](v46, -1, -1);
      MEMORY[0x22AA61F40](v45, -1, -1);
    }

    else
    {
    }

    v49 = *(v0 + 440);
    v48 = *(v0 + 448);
    v147 = *(v0 + 360);
    v50 = *(v0 + 336);
    v51 = *(v0 + 280);
    v52 = *(v0 + 256);
    v53 = *(v0 + 232);
    v54 = *(v0 + 208);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    v55 = v50;
    swift_storeEnumTagMultiPayload();
    goto LABEL_33;
  }

  v33 = *(v0 + 200);
  v34 = *(v0 + 208);
  v35 = *(v0 + 144);
  v36 = *(v0 + 152);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v30, *(v0 + 192), type metadata accessor for UserIdentifier);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34, v33, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  if ((*(v36 + 48))(v33, 1, v35) == 1)
  {
    v37 = *(v0 + 200);
    outlined destroy of RequestsManager.PECContext(*(v0 + 192), type metadata accessor for UserIdentifier);
    v31 = &_s8CipherML9SecretKeyVSgMd;
    v32 = &_s8CipherML9SecretKeyVSgMR;
    v30 = v37;
    goto LABEL_23;
  }

  v56 = *(v0 + 504);
  v57 = *(v0 + 248);
  v58 = *(v0 + 256);
  v60 = *(v0 + 160);
  v59 = *(v0 + 168);
  v61 = *(v0 + 112);
  _s8CipherML18AspireApiPECConfigVWObTm_0(*(v0 + 200), v59, type metadata accessor for SecretKey);
  outlined init with copy of AspireApiConfig(v59, v60, type metadata accessor for SecretKey);
  outlined init with copy of AspireApiConfig(v58, v57, type metadata accessor for AspireApiPECConfig);
  AspireApiPECConfig.cryptokit()(v61);
  if (!v56)
  {
    v80 = *(v0 + 160);
    v81 = *(v0 + 144);
    v82 = *(v0 + 80);
    v83 = *(v0 + 48);
    v84 = *(v0 + 56);
    v85 = *(v0 + 40);
    (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 112), *(v0 + 88));
    (*(v83 + 16))(v84, v80 + *(v81 + 20), v85);
    PEC.SimilarityClient.init(config:secretKey:)();
    v127 = *(v0 + 440);
    v130 = *(v0 + 448);
    v89 = *(v0 + 360);
    v142 = *(v0 + 344);
    v145 = *(v0 + 352);
    v150 = *(v0 + 336);
    v90 = *(v0 + 280);
    v113 = *(v0 + 256);
    v121 = *(v0 + 248);
    v139 = *(v0 + 232);
    v152 = *(v0 + 208);
    v91 = *(v0 + 168);
    v92 = *(v0 + 128);
    v133 = *(v0 + 136);
    v136 = *(v0 + 192);
    v94 = *(v0 + 112);
    v93 = *(v0 + 120);
    v96 = *(v0 + 88);
    v95 = *(v0 + 96);
    v97 = *(v0 + 72);
    v124 = *(v0 + 80);
    v115 = *(v0 + 160);
    v118 = *(v0 + 64);
    v98 = *(v0 + 16);

    (*(v95 + 8))(v94, v96);
    outlined destroy of RequestsManager.PECContext(v91, type metadata accessor for SecretKey);
    outlined destroy of RequestsManager.PECContext(v90, type metadata accessor for AspireApiConfig);
    outlined destroy of RequestsManager.PECContext(v113, type metadata accessor for AspireApiPECConfig);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v115, v92, type metadata accessor for SecretKey);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v121, v92 + v93[5], type metadata accessor for AspireApiPECConfig);
    v99 = (v92 + v93[6]);
    *v99 = v127;
    v99[1] = v130;
    (*(v97 + 32))(v92 + v93[7], v124, v118);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v92, v133, type metadata accessor for SimilarityClient);
    v100 = type metadata accessor for RequestsManager.PECContext();
    _s8CipherML18AspireApiPECConfigVWObTm_0(v136, v98 + *(v100 + 20), type metadata accessor for UserIdentifier);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v133, v98 + *(v100 + 24), type metadata accessor for SimilarityClient);
    *v98 = v142;
    v98[1] = v145;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v139, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v150, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v152, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
    v102 = *(v0 + 328);
    v101 = *(v0 + 336);
    v104 = *(v0 + 312);
    v103 = *(v0 + 320);
    v105 = *(v0 + 304);
    v106 = *(v0 + 280);
    v108 = *(v0 + 248);
    v107 = *(v0 + 256);
    v109 = *(v0 + 232);
    v110 = *(v0 + 240);
    v116 = *(v0 + 224);
    v119 = *(v0 + 216);
    v122 = *(v0 + 208);
    v125 = *(v0 + 200);
    v128 = *(v0 + 192);
    v131 = *(v0 + 168);
    v134 = *(v0 + 160);
    v137 = *(v0 + 136);
    v140 = *(v0 + 128);
    v143 = *(v0 + 112);
    v146 = *(v0 + 104);
    v151 = *(v0 + 80);
    v153 = *(v0 + 56);

    v79 = *(v0 + 8);
    goto LABEL_35;
  }

  v62 = *(v0 + 352);
  v63 = *(v0 + 360);
  outlined consume of Data._Representation(*(v0 + 440), *(v0 + 448));

  v55 = *(v0 + 336);
  v51 = *(v0 + 280);
  v52 = *(v0 + 256);
  v53 = *(v0 + 232);
  v54 = *(v0 + 208);
  v86 = *(v0 + 192);
  v88 = *(v0 + 160);
  v87 = *(v0 + 168);
  outlined destroy of RequestsManager.PECContext(*(v0 + 248), type metadata accessor for AspireApiPECConfig);
  outlined destroy of RequestsManager.PECContext(v88, type metadata accessor for SecretKey);
  outlined destroy of RequestsManager.PECContext(v87, type metadata accessor for SecretKey);
  outlined destroy of RequestsManager.PECContext(v86, type metadata accessor for UserIdentifier);
LABEL_34:
  outlined destroy of RequestsManager.PECContext(v51, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v52, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v55, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v54, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v70 = *(v0 + 328);
  v69 = *(v0 + 336);
  v72 = *(v0 + 312);
  v71 = *(v0 + 320);
  v73 = *(v0 + 304);
  v74 = *(v0 + 280);
  v75 = *(v0 + 248);
  v76 = *(v0 + 256);
  v78 = *(v0 + 232);
  v77 = *(v0 + 240);
  v112 = *(v0 + 224);
  v114 = *(v0 + 216);
  v117 = *(v0 + 208);
  v120 = *(v0 + 200);
  v123 = *(v0 + 192);
  v126 = *(v0 + 168);
  v129 = *(v0 + 160);
  v132 = *(v0 + 136);
  v135 = *(v0 + 128);
  v138 = *(v0 + 112);
  v141 = *(v0 + 104);
  v144 = *(v0 + 80);
  v149 = *(v0 + 56);

  v79 = *(v0 + 8);
LABEL_35:

  return v79();
}

{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = *(v1 + 184);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[38], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[64] = v9;
  v9[2] = v1;
  v9[3] = v3;
  v9[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v9 + v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v10 = swift_task_alloc();
  v0[65] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v11 = v0[43];
  v12 = v0[44];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v11, v12, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 512);
  v5 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 528) = v0;

  v7 = *(v2 + 360);
  if (v0)
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[38], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[67] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v4, v2, 0);
}

{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v3 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v4, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v32 = v0[66];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[31];
  v14 = v0[32];
  v16 = v0[29];
  v15 = v0[30];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[10];
  v31 = v0[7];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v4, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[29];
  v16 = v0[30];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[10];
  v31 = v0[7];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[45];

  v27 = v0[49];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[7];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[45];
  v2 = v0[42];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v28 = v0[54];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[10];
  v27 = v0[7];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v4, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v32 = v0[63];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[31];
  v14 = v0[32];
  v16 = v0[29];
  v15 = v0[30];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[10];
  v31 = v0[7];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v4, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v32 = v0[68];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[31];
  v14 = v0[32];
  v16 = v0[29];
  v15 = v0[30];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[10];
  v31 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t RequestsManager.loadContext(requestContext:allowingKeyRotation:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 712);
  v15 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {
    v6 = *(v4 + 600);
    v7 = *(v4 + 88);
    v8 = *(v4 + 104);
    v9 = *(v4 + 120);
    *(v4 + 184) = *(v4 + 72);
    *(v4 + 232) = v9;
    *(v4 + 216) = v8;
    *(v4 + 200) = v7;
    outlined destroy of StaticPIRParameters(v4 + 184);

    v10 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    *(v4 + 897) = a1 & 1;
    v11 = *(v4 + 72);
    v12 = *(v4 + 88);
    v13 = *(v4 + 104);
    *(v4 + 288) = *(v4 + 120);
    *(v4 + 256) = v12;
    *(v4 + 272) = v13;
    *(v4 + 240) = v11;
    outlined destroy of StaticPIRParameters(v4 + 240);
    v10 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  *(v4 + 898) = a1;
  *(v4 + 776) = v1;

  v7 = *(v3 + 736);
  if (v1)
  {
    v8 = *(v4 + 600);

    v9 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {

    v9 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(v4 + 553) = a1;
  *(v4 + 504) = v1;

  v7 = *(v3 + 464);
  if (v1)
  {
    v8 = *(v4 + 352);

    v9 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {

    v9 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t RequestsManager.requestData(index:context:)()
{
  return MEMORY[0x2822009F8](RequestsManager.requestData(index:context:), 0, 0);
}

{
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 392) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 + 64);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v9 = type metadata accessor for AspireApiConfigResponse(0);
  *(v5 + 144) = v9;
  v10 = *(v9 - 8);
  *(v5 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v12 = type metadata accessor for NetworkManagerError(0);
  *(v5 + 168) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v14 = type metadata accessor for RequestsManager.PIRContext();
  *(v5 + 184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v16 = swift_task_alloc();
  *(v5 + 192) = v16;
  v17 = swift_task_alloc();
  *(v5 + 200) = v17;
  *v17 = v5;
  v17[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v16, a2, 1);
}

uint64_t RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    v3 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[26];
  v2 = v0[10];
  v3 = v0[8];
  v4 = (v0[24] + *(v0[23] + 36));
  v5 = *v4;
  v6 = v4[1];
  swift_unknownObjectRetain();
  v7 = specialized static RequestsManager.cachedAndMissingKeywordsInBatch(keywords:shardIds:cache:)(v3, v2, v5, v6);
  v0[27] = v7;
  v0[28] = v8;
  v0[29] = v9;
  if (v1)
  {
    outlined destroy of AspirePirKeywordPirParameters(v0[24], type metadata accessor for RequestsManager.PIRContext);
    swift_unknownObjectRelease();
    v10 = v0[24];
    v11 = v0[22];
    v12 = v0[20];
    v14 = v0[16];
    v13 = v0[17];
    v16 = v0[14];
    v15 = v0[15];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v7;
    v20 = v8;
    v21 = v9;
    swift_unknownObjectRelease();
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v0[30] = __swift_project_value_buffer(v22, static Logger.framework);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349312;
      *(v25 + 4) = *(v19 + 16);
      *(v25 + 12) = 2050;
      *(v25 + 14) = *(v20 + 16);

      _os_log_impl(&dword_224E26000, v23, v24, "Cached: %{public}ld / Missing: %{public}ld", v25, 0x16u);
      MEMORY[0x22AA61F40](v25, -1, -1);
    }

    else
    {
    }

    if (*(v20 + 16))
    {
      v26 = v0[9];
      specialized RequestContext.networkManager()(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR, (v0 + 2));
      v41 = swift_task_alloc();
      v0[31] = v41;
      *v41 = v0;
      v41[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
      v42 = v0[24];
      v43 = v0[8];

      return specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(v43, (v0 + 2), v42, v19, v20, v21);
    }

    else
    {
      v27 = v0[8];
      v28 = *(v27 + 16);
      if (v28)
      {
        v52 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
        v29 = v52;
        v30 = (v27 + 40);
        do
        {
          if (*(v19 + 16))
          {
            v32 = *(v30 - 1);
            v31 = *v30;
            outlined copy of Data._Representation(v32, *v30);
            v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v31);
            if (v34)
            {
              v35 = (*(v19 + 56) + 16 * v33);
              v36 = *v35;
              v37 = v35[1];
              outlined copy of Data?(*v35, v37);
            }

            else
            {
              v36 = 0;
              v37 = 0xF000000000000000;
            }

            outlined consume of Data._Representation(v32, v31);
          }

          else
          {
            v36 = 0;
            v37 = 0xF000000000000000;
          }

          v39 = *(v52 + 16);
          v38 = *(v52 + 24);
          if (v39 >= v38 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          }

          v30 += 2;
          *(v52 + 16) = v39 + 1;
          v40 = v52 + 16 * v39;
          *(v40 + 32) = v36;
          *(v40 + 40) = v37;
          --v28;
        }

        while (v28);
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      outlined destroy of AspirePirKeywordPirParameters(v0[24], type metadata accessor for RequestsManager.PIRContext);
      v44 = v0[24];
      v45 = v0[22];
      v46 = v0[20];
      v48 = v0[16];
      v47 = v0[17];
      v50 = v0[14];
      v49 = v0[15];

      v51 = v0[1];

      return v51(v29);
    }
  }
}

{
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);
  v2 = v0[33];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];

  v10 = v0[1];

  return v10(v2);
}

{
  v1 = *(v0 + 256);
  *(v0 + 56) = v1;
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    v33 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v34 = type metadata accessor for RequestsManager.PIRContext;
    v35 = v33;
    goto LABEL_20;
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 240);
      v9 = *(v0 + 160);

      outlined init with take of AspirePirSymmetricPirClientConfig(v6, v9, type metadata accessor for AspireApiConfigResponse);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 392);
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = v12;
        _os_log_impl(&dword_224E26000, v10, v11, "NetworkManagerError.retryWith(updatedConfig:, allowingRetry: %{BOOL}d", v13, 8u);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      v14 = *(v0 + 392);

      v15 = *(v0 + 192);
      if (v14 == 1)
      {
        v16 = *(v0 + 160);
        v17 = *v16;
        v18 = *v15;
        *(v0 + 272) = *v15;
        v19 = v15[1];
        *(v0 + 280) = v19;
        if (*(v17 + 16))
        {
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
          if (v21)
          {
            v22 = v20;
            v23 = *(v0 + 136);
            v24 = *(v0 + 72);
            v25 = *(v17 + 56);
            v26 = type metadata accessor for AspireApiConfig(0);
            v27 = *(v26 - 8);
            outlined init with copy of UserIdentifier(v25 + *(v27 + 72) * v22, v23, type metadata accessor for AspireApiConfig);
            (*(v27 + 56))(v23, 0, 1, v26);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
            v28 = [*v24 sourceApplicationBundleIdentifier];
            if (v28)
            {
              v29 = v28;
              v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = v31;
            }

            else
            {
              v30 = 0;
              v32 = 0;
            }

            v75 = *(v0 + 152);
            v74 = *(v0 + 160);
            v76 = *(v0 + 144);
            v77 = *(v0 + 120);
            v78 = *(v0 + 88);
            v79 = RequestsManager.keyRotation(for:)(v30, v32);
            *(v0 + 288) = v79;

            outlined init with copy of UserIdentifier(v74, v77, type metadata accessor for AspireApiConfigResponse);
            (*(v75 + 56))(v77, 0, 1, v76);

            return MEMORY[0x2822009F8](RequestsManager.requestData(keywords:context:shardIds:allowingRetry:), v79, 0);
          }

          v15 = *(v0 + 192);
          v16 = *(v0 + 160);
        }

        v62 = *(v0 + 168);
        v63 = *(v0 + 136);
        v64 = type metadata accessor for AspireApiConfig(0);
        (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
        type metadata accessor for CipherMLError();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        *v65 = v18;
        v65[1] = v19;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v16 = *(v0 + 160);
        v53 = *(v0 + 168);
        type metadata accessor for CipherMLError();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
        swift_allocError();
        outlined init with copy of UserIdentifier(v16, v54, type metadata accessor for AspireApiConfigResponse);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for AspireApiConfigResponse);
      goto LABEL_29;
    }

    v51 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    outlined destroy of AspirePirKeywordPirParameters(v51, type metadata accessor for RequestsManager.PIRContext);
    v34 = type metadata accessor for NetworkManagerError;
    v35 = v6;
LABEL_20:
    outlined destroy of AspirePirKeywordPirParameters(v35, v34);

    v52 = *(v0 + 256);
LABEL_30:
    v66 = *(v0 + 192);
    v67 = *(v0 + 176);
    v68 = *(v0 + 160);
    v70 = *(v0 + 128);
    v69 = *(v0 + 136);
    v72 = *(v0 + 112);
    v71 = *(v0 + 120);

    v73 = *(v0 + 8);

    return v73();
  }

  v36 = *(v0 + 240);

  v37 = *v6;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 392);
    v41 = swift_slowAlloc();
    *v41 = 67109376;
    *(v41 + 4) = v37;
    *(v41 + 8) = 1024;
    *(v41 + 10) = v40;
    _os_log_impl(&dword_224E26000, v38, v39, "NetworkManagerError.retry(fetchingNewConfig: %{BOOL}d, allowingRetry: %{BOOL}d", v41, 0xEu);
    MEMORY[0x22AA61F40](v41, -1, -1);
  }

  v42 = *(v0 + 392);

  if (v42 != 1)
  {
    v15 = *(v0 + 192);
    v55 = *(v0 + 168);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    *v56 = v37;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_29:
    outlined destroy of AspirePirKeywordPirParameters(v15, type metadata accessor for RequestsManager.PIRContext);

    goto LABEL_30;
  }

  if (v37)
  {
    v43 = *(v0 + 192);
    v44 = *(v0 + 128);
    *(v0 + 344) = *(*(*(v0 + 88) + 16) + 16);
    v45 = *v43;
    v46 = v43[1];
    v47 = type metadata accessor for AspireApiConfig(0);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);

    v48 = swift_task_alloc();
    *(v0 + 352) = v48;
    *v48 = v0;
    v48[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
    v49 = *(v0 + 128);

    return specialized DatabaseTable<>.set(key:value:)(v45, v46, v49);
  }

  else
  {
    v57 = swift_task_alloc();
    *(v0 + 368) = v57;
    *v57 = v0;
    v57[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
    v58 = *(v0 + 80);
    v59 = *(v0 + 88);
    v61 = *(v0 + 64);
    v60 = *(v0 + 72);

    return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v61, v60, v58, 0);
  }
}

{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];

  v9 = v0[1];

  return v9();
}

{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[14];
  v6 = v0[12];
  v5 = v0[13];
  v7 = *(v1 + 184);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[15], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[37] = v9;
  v9[2] = v1;
  v9[3] = v3;
  v9[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v9 + v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  v11 = v0[34];
  v12 = v0[35];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v11, v12, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);

  if (v0)
  {
    v7 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    v7 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[15], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v5, v4, v2, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.requestData(keywords:context:shardIds:allowingRetry:), 0, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for RequestsManager.PIRContext);

  v4 = *(v0 + 312);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for RequestsManager.PIRContext);

  v4 = *(v0 + 336);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12(v4);
}

{
  v2 = *(*v1 + 352);
  v3 = *v1;
  v3[45] = v0;

  if (v0)
  {
    v4 = v3[43];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v3[16], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    return MEMORY[0x2822009F8](RequestsManager.requestData(keywords:context:shardIds:allowingRetry:), 0, 0);
  }

  else
  {
    v5 = v3[43];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v3[16], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v6 = swift_task_alloc();
    v3[46] = v6;
    *v6 = v3;
    v6[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[9];
    v10 = v3[8];

    return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v10, v9, v7, 0);
  }
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 384);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10(v2);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for RequestsManager.PIRContext);

  v4 = *(v0 + 328);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 360);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 376);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  v4[32] = v1;

  v7 = v4[29];
  v8 = v4[28];
  v9 = v4[27];

  if (v1)
  {
    v10 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    v4[33] = a1;
    v10 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    *(v4 + 336) = a1;
    v7 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v7 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    *(v4 + 384) = a1;
    v7 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t specialized RequestContext.networkManager()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NetworkConfig(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NetworkManagerConfig(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  outlined init with copy of UserIdentifier(v3 + *(v15 + 32), v10, type metadata accessor for NetworkConfig);
  v16 = [*v3 sourceApplicationBundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  outlined init with take of AspirePirSymmetricPirClientConfig(v10, v14, type metadata accessor for NetworkConfig);
  v21 = &v14[*(v11 + 20)];
  *v21 = v18;
  v21[1] = v20;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static NetworkManagerHelper.shared + 96))(v25, v14);
  outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for NetworkManagerConfig);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, &v23, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  if (v24)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    return outlined init with take of LocalizedError(&v23, a3);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v23, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  }
}

uint64_t RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);

  return (specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:))(a1, a2, a3, a4, a5, a6);
}

uint64_t RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);

  return specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(a1, a2, a3);
}

uint64_t RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR) - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for RequestsManager.PIRContext();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v3[15] = *(v11 + 64);
  v3[16] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[17] = v12;
  v13 = swift_task_alloc();
  v3[18] = v13;
  *v13 = v3;
  v13[1] = RequestsManager.requestDataWithAsyncResponse(keywords:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v12, a2, 1);
}

uint64_t RequestsManager.requestDataWithAsyncResponse(keywords:context:)()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  else
  {
    v3 = RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v107 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  UUID.init()();
  v105 = UUID.uuidString.getter();
  v5 = v4;
  (*(v1 + 8))(v2, v3);
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.framework);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7, v6, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v106[0] = v14;
    *v13 = 136446466;
    v15 = [*v12 useCase];
    v16 = v5;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
    v20 = v17;
    v5 = v16;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v106);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2082;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v16, v106);
    _os_log_impl(&dword_224E26000, v9, v10, "Async response is requested for '%{public}s', uuid: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v14, -1, -1);
    MEMORY[0x22AA61F40](v13, -1, -1);
  }

  else
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  }

  v22 = v0[19];
  v23 = v0[2];
  v24 = (v0[17] + *(v0[13] + 36));
  v25 = *v24;
  v26 = v24[1];
  swift_unknownObjectRetain();
  v27 = MEMORY[0x277D84F90];
  v28 = specialized static RequestsManager.cachedAndMissingKeywordsInBatch(keywords:shardIds:cache:)(v23, MEMORY[0x277D84F90], v25, v26);
  if (v22)
  {
    outlined destroy of AspirePirKeywordPirParameters(v0[17], type metadata accessor for RequestsManager.PIRContext);
    swift_unknownObjectRelease();

    v32 = v0[16];
    v31 = v0[17];
    v33 = v0[12];
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[5];

    v37 = v0[1];

    return v37();
  }

  else
  {
    v39 = v28;
    v40 = v29;
    v41 = v30;
    swift_unknownObjectRelease();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134218240;
      *(v44 + 4) = *(v39 + 16);
      *(v44 + 12) = 2048;
      *(v44 + 14) = *(v40 + 16);

      _os_log_impl(&dword_224E26000, v42, v43, "Cached: %ld / Missing: %ld", v44, 0x16u);
      MEMORY[0x22AA61F40](v44, -1, -1);
    }

    else
    {
    }

    if (*(v40 + 16))
    {
      v46 = v0[16];
      v45 = v0[17];
      v95 = v46;
      v96 = v45;
      v97 = v0[14];
      v98 = v0[15];
      v103 = v40;
      v104 = v41;
      v47 = v0[7];
      v48 = v0[8];
      v94 = v48;
      v49 = v0[5];
      v50 = v0[6];
      v51 = v0[3];
      v100 = v0[4];
      v101 = v49;
      v99 = v0[2];
      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51, v48, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
      outlined init with copy of UserIdentifier(v45, v46, type metadata accessor for RequestsManager.PIRContext);
      v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v54 = (v47 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
      v56 = v5;
      v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = (*(v97 + 80) + v57 + 8) & ~*(v97 + 80);
      v59 = (v98 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      *(v60 + 24) = 0;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v94, v60 + v53, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
      v61 = (v60 + v54);
      v62 = v105;
      *v61 = v105;
      v61[1] = v56;
      *(v60 + v55) = v100;
      *(v60 + v57) = v99;
      v5 = v56;
      v63 = v60 + v58;
      v64 = v96;
      outlined init with take of AspirePirSymmetricPirClientConfig(v95, v63, type metadata accessor for RequestsManager.PIRContext);
      v65 = (v60 + v59);
      *v65 = v39;
      v65[1] = v103;
      v65[2] = v104;

      v66 = &async function pointer to partial apply for closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
      v67 = v101;
      v68 = v60;
    }

    else
    {
      v69 = v0[2];
      v70 = *(v69 + 16);
      if (v70)
      {
        v102 = v5;
        v106[0] = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
        v71 = v106[0];
        v72 = (v69 + 40);
        do
        {
          if (*(v39 + 16))
          {
            v74 = *(v72 - 1);
            v73 = *v72;
            outlined copy of Data._Representation(v74, *v72);
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v73);
            if (v76)
            {
              v77 = (*(v39 + 56) + 16 * v75);
              v78 = *v77;
              v79 = v77[1];
              outlined copy of Data?(*v77, v79);
            }

            else
            {
              v78 = 0;
              v79 = 0xF000000000000000;
            }

            outlined consume of Data._Representation(v74, v73);
          }

          else
          {
            v78 = 0;
            v79 = 0xF000000000000000;
          }

          v106[0] = v71;
          v81 = *(v71 + 16);
          v80 = *(v71 + 24);
          if (v81 >= v80 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
            v71 = v106[0];
          }

          v72 += 2;
          *(v71 + 16) = v81 + 1;
          v82 = v71 + 16 * v81;
          *(v82 + 32) = v78;
          *(v82 + 40) = v79;
          --v70;
        }

        while (v70);

        v5 = v102;
      }

      else
      {

        v71 = MEMORY[0x277D84F90];
      }

      v64 = v0[17];
      v83 = v0[5];
      v84 = v0[2];
      v85 = type metadata accessor for TaskPriority();
      (*(*(v85 - 8) + 56))(v83, 1, 1, v85);
      v86 = swift_allocObject();
      v86[2] = 0;
      v86[3] = 0;
      v86[4] = v71;
      v86[5] = v84;
      v62 = v105;
      v86[6] = v105;
      v86[7] = v5;

      v66 = &async function pointer to partial apply for closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
      v67 = v83;
      v68 = v86;
    }

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v67, v66, v68);

    outlined destroy of AspirePirKeywordPirParameters(v64, type metadata accessor for RequestsManager.PIRContext);
    v88 = v0[16];
    v87 = v0[17];
    v89 = v0[12];
    v91 = v0[8];
    v90 = v0[9];
    v92 = v0[5];

    v93 = v0[1];

    return v93(v62, v5);
  }
}

{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:), 0, 0);
}

uint64_t closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v32[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 40);
    do
    {
      v5 = *v3;
      if (*v3 >> 60 == 15)
      {
        [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      else
      {
        v6 = *(v3 - 1);
        outlined copy of Data._Representation(v6, *v3);
        Data._bridgeToObjectiveC()();
        outlined consume of Data?(v6, v5);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v32[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = objc_opt_self();
  type metadata accessor for NSObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = Array._bridgeToObjectiveC()().super.isa;
  v13 = MEMORY[0x22AA609C0](v8, v7);
  v0[2] = 0;
  v14 = [v10 sendReplyForBatchPIR:isa requestError:0 keywords:v12 uuid:v13 error:v0 + 2];

  v15 = v0[2];
  if (v15)
  {
    v16 = v15;

    swift_willThrow();
    v17 = 0;
  }

  else
  {
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v18 = v0[6];
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.framework);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[5];
    v22 = v0[6];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136446466;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v32);
    *(v24 + 12) = 2082;
    v0[2] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v32);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_224E26000, v20, v21, "Notified AMD for '%{public}s', response: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v25, -1, -1);
    MEMORY[0x22AA61F40](v24, -1, -1);
  }

  else
  {
  }

  v29 = v0[1];
  v30 = *MEMORY[0x277D85DE8];

  return v29();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

      outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v8 + 136) = v14;
  *(v8 + 144) = v15;
  *(v8 + 120) = v13;
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:), 0, 0);
}

uint64_t closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  specialized RequestContext.networkManager()(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR, (v0 + 2));
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v3, static Logger.framework);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v18);
    _os_log_impl(&dword_224E26000, v4, v5, "Async response request '%{public}s' has started", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  v16 = *MEMORY[0x277D85DE8];

  return specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(v15, (v0 + 2), v13, v14, v11, v12);
}

{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[13];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v41);
    _os_log_impl(&dword_224E26000, v3, v4, "Async response request '%{public}s' has finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  v9 = v0[21];
  v10 = *(v9 + 16);
  if (v10)
  {
    v41[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = (v9 + 40);
    do
    {
      v13 = *v11;
      if (*v11 >> 60 == 15)
      {
        [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      else
      {
        v14 = *(v11 - 1);
        outlined copy of Data._Representation(v14, *v11);
        Data._bridgeToObjectiveC()();
        outlined consume of Data?(v14, v13);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v41[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v15 = v0[21];

  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v19 = objc_opt_self();
  type metadata accessor for NSObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = Array._bridgeToObjectiveC()().super.isa;
  v22 = MEMORY[0x22AA609C0](v18, v17);
  v0[9] = 0;
  v23 = [v19 sendReplyForBatchPIR:isa requestError:0 keywords:v21 uuid:v22 error:v0 + 9];

  v24 = v0[9];
  if (v24)
  {
    v25 = v24;

    swift_willThrow();
    v26 = 0;
  }

  else
  {
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v27 = v0[19];
  v28 = v0[13];

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v32 = v0[12];
    v31 = v0[13];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    *v33 = 136446466;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, v41);
    *(v33 + 12) = 2082;
    v0[10] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v41);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_224E26000, v29, v30, "Notified AMD for '%{public}s', response: %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v34, -1, -1);
    MEMORY[0x22AA61F40](v33, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v38 = v0[1];
  v39 = *MEMORY[0x277D85DE8];

  return v38();
}

{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 176);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = objc_opt_self();
  v6 = _convertErrorToNSError(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = MEMORY[0x22AA609C0](v4, v3);
  *(v0 + 56) = 0;
  v9 = [v5 sendReplyForBatchPIR:0 requestError:v6 keywords:isa uuid:v8 error:v0 + 56];

  if (*(v0 + 56))
  {
    v10 = *(v0 + 56);

    swift_willThrow();
    v11 = 0;
  }

  else
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 104);
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.framework);

  v14 = v1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v19 = 136446722;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v30);
    *(v19 + 12) = 2082;
    *(v0 + 64) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v30);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2114;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v25;
    *v20 = v25;
    _os_log_impl(&dword_224E26000, v15, v16, "Async response request '%{public}s' has failed, notified AMD: %{public}s, error: %{public}@", v19, 0x20u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v29, -1, -1);
    MEMORY[0x22AA61F40](v19, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26();
}