uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
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
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML25AspireApiPECShardResponseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v284[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v253 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v254 = &v227 - v10;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  v11 = *(*(v255 - 8) + 64);
  MEMORY[0x28223BE20](v255);
  v262 = &v227 - v12;
  v263 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v13 = *(v263 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v263);
  v260 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v259 = &v227 - v18;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v19 = *(*(v261 - 8) + 64);
  MEMORY[0x28223BE20](v261);
  v265 = &v227 - v20;
  v256 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v21 = *(*(v256 - 8) + 64);
  MEMORY[0x28223BE20](v256);
  v279 = (&v227 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v258 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v23 = *(*(v258 - 8) + 64);
  MEMORY[0x28223BE20](v258);
  v271 = &v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  v25 = *(*(v264 - 8) + 64);
  MEMORY[0x28223BE20](v264);
  v274 = &v227 - v26;
  v280 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v27 = *(v280 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v280);
  v267 = (&v227 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v268 = (&v227 - v31);
  MEMORY[0x28223BE20](v32);
  v275 = &v227 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v276 = &v227 - v36;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  v37 = *(*(v277 - 8) + 64);
  MEMORY[0x28223BE20](v277);
  v39 = &v227 - v38;
  v270 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v257 = *(v270 - 8);
  v40 = *(v257 + 64);
  MEMORY[0x28223BE20](v270);
  v281 = &v227 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v227 - v43;
  v266 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v269 = *(v266 - 8);
  v45 = *(v269 + 64);
  MEMORY[0x28223BE20](v266);
  v282 = &v227 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v278 = &v227 - v48;
  v49 = type metadata accessor for AspireApiPECShardResponse(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v273 = &v227 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v272 = &v227 - v55;
  v56 = *(a1 + 16);
  if (v56 != *(a2 + 16))
  {
    goto LABEL_226;
  }

  if (!v56 || a1 == a2)
  {
    v218 = 1;
    goto LABEL_227;
  }

  v236 = v53;
  v57 = 0;
  v242 = 0;
  v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v59 = a1 + v58;
  v244 = a2 + v58;
  v248 = (v27 + 48);
  v237 = (v13 + 48);
  v229 = (v5 + 48);
  v60 = *(v54 + 72);
  v230 = v4;
  v61 = v278;
  v63 = v272;
  v62 = v273;
  v249 = v56;
  v235 = v59;
  v234 = v60;
  while (1)
  {
    v250 = v57;
    v64 = v60 * v57;
    outlined init with copy of AMDPbPIRConfig(v59 + v60 * v57, v63, type metadata accessor for AspireApiPECShardResponse);
    if (v250 == v249)
    {
      goto LABEL_236;
    }

    outlined init with copy of AMDPbPIRConfig(v244 + v64, v62, type metadata accessor for AspireApiPECShardResponse);
    v65 = *v63;
    v66 = *v62;
    v67 = *(*v63 + 16);
    if (v67 != *(*v62 + 16))
    {
      goto LABEL_225;
    }

    if (v67 && v65 != v66)
    {
      break;
    }

LABEL_202:
    v211 = v63[1];
    v212 = v62[1];
    v213 = *(v211 + 16);
    if (v213 != *(v212 + 16))
    {
      goto LABEL_225;
    }

    if (v213)
    {
      v214 = v211 == v212;
    }

    else
    {
      v214 = 1;
    }

    if (!v214)
    {
      v215 = (v211 + 32);
      v216 = (v212 + 32);
      while (v213)
      {
        if (*v215 != *v216)
        {
          goto LABEL_225;
        }

        ++v215;
        ++v216;
        if (!--v213)
        {
          goto LABEL_211;
        }
      }

      __break(1u);
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
    }

LABEL_211:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v63[2], v62[2]) & 1) == 0)
    {
      goto LABEL_225;
    }

    v217 = *(v236 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v218 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v62, type metadata accessor for AspireApiPECShardResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v63, type metadata accessor for AspireApiPECShardResponse);
    if (v218)
    {
      v57 = v250 + 1;
      v59 = v235;
      v60 = v234;
      if (v250 + 1 != v249)
      {
        continue;
      }
    }

    goto LABEL_227;
  }

  v68 = 0;
  v69 = (*(v269 + 80) + 32) & ~*(v269 + 80);
  v239 = v65 + v69;
  v238 = v66 + v69;
  v233 = v44;
  v232 = v65;
  v240 = v66;
  v231 = v67;
  v252 = v39;
  while (1)
  {
    if (v68 >= *(v65 + 16))
    {
      goto LABEL_237;
    }

    v70 = v68;
    v71 = *(v269 + 72) * v68;
    outlined init with copy of AMDPbPIRConfig(v239 + v71, v61, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v72 = *(v240 + 16);
    v241 = v70;
    if (v70 >= v72)
    {
      goto LABEL_238;
    }

    v73 = v238 + v71;
    v74 = v282;
    outlined init with copy of AMDPbPIRConfig(v73, v282, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v75 = v280;
    v76 = v248;
    if (*v61 != *v74)
    {
      goto LABEL_224;
    }

    if (*(v61 + 4) != *(v282 + 4))
    {
      goto LABEL_224;
    }

    v77 = *(v61 + 8);
    v78 = *(v282 + 8);
    v79 = *(v77 + 16);
    if (v79 != *(v78 + 16))
    {
      goto LABEL_224;
    }

    if (v79 && v77 != v78)
    {
      break;
    }

LABEL_190:
    v188 = v282;
    v189 = v252;
    v190 = *(v266 + 32);
    v191 = *(v261 + 48);
    v192 = v265;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v61 + v190, v265, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v188 + v190, v192 + v191, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    v193 = *v237;
    v194 = v263;
    v195 = (*v237)(v192, 1, v263);
    v196 = v262;
    if (v195 == 1)
    {
      if (v193(v192 + v191, 1, v194) != 1)
      {
        goto LABEL_229;
      }

      v39 = v189;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v192, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v61 = v278;
      v44 = v233;
    }

    else
    {
      v197 = v259;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v192, v259, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      if (v193(v192 + v191, 1, v194) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v197, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_229:
        v224 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
        v225 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
        v226 = v192;
        goto LABEL_233;
      }

      v198 = v260;
      outlined init with take of AMDPbPIRConfig(v192 + v191, v260, type metadata accessor for AspireSimilarityPlaintextPacking);
      v199 = *(v255 + 48);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v197, v196, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v198, v196 + v199, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
      v200 = *v229;
      v201 = v230;
      if ((*v229)(v196, 1, v230) == 1)
      {
        v202 = v200(v196 + v199, 1, v201);
        v44 = v233;
        if (v202 != 1)
        {
          goto LABEL_231;
        }

        v39 = v189;
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v196, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
      }

      else
      {
        v203 = v254;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v196, v254, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v204 = v200(v196 + v199, 1, v201);
        v44 = v233;
        if (v204 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v203, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v197 = v259;
LABEL_231:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v196, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_232:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v260, type metadata accessor for AspireSimilarityPlaintextPacking);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v197, type metadata accessor for AspireSimilarityPlaintextPacking);
          v224 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd;
          v225 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR;
          v226 = v265;
LABEL_233:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v226, v224, v225);
          v61 = v278;
          goto LABEL_224;
        }

        v39 = v189;
        v205 = v253;
        outlined init with take of AMDPbPIRConfig(v196 + v199, v253, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        v206 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v203, v205);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v205, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v203, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v196, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v194 = v263;
        v197 = v259;
        if ((v206 & 1) == 0)
        {
          goto LABEL_232;
        }
      }

      v207 = *(v194 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v208 = v260;
      LOBYTE(v207) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v208, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v197, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v265, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v61 = v278;
      if ((v207 & 1) == 0)
      {
        goto LABEL_224;
      }
    }

    v209 = *(v266 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v210 = v282;
    LOBYTE(v209) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v210, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v61, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v63 = v272;
    v62 = v273;
    v65 = v232;
    if ((v209 & 1) == 0)
    {
      goto LABEL_225;
    }

    v68 = v241 + 1;
    if (v241 + 1 == v231)
    {
      goto LABEL_202;
    }
  }

  v80 = 0;
  v81 = (*(v257 + 80) + 32) & ~*(v257 + 80);
  v247 = v77 + v81;
  v245 = v78 + v81;
  v246 = *(v257 + 72);
  v243 = v79;
  while (1)
  {
    v82 = v246 * v80;
    outlined init with copy of AMDPbPIRConfig(v247 + v246 * v80, v44, type metadata accessor for AspireHeSerializedCiphertext);
    if (v80 == v79)
    {
      goto LABEL_235;
    }

    v251 = v80;
    v83 = v61;
    v84 = v281;
    outlined init with copy of AMDPbPIRConfig(v245 + v82, v281, type metadata accessor for AspireHeSerializedCiphertext);
    v85 = *(v277 + 48);
    v86 = v252;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v44, v252, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v84, v86 + v85, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v87 = *v76;
    if ((*v76)(v86, 1, v75) != 1)
    {
      break;
    }

    if (v87(v86 + v85, 1, v75) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v281, type metadata accessor for AspireHeSerializedCiphertext);
      v219 = v44;
      v220 = type metadata accessor for AspireHeSerializedCiphertext;
LABEL_219:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v219, v220);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v86, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
      goto LABEL_224;
    }

LABEL_188:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v86, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v186 = *(v270 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v187 = v281;
    LOBYTE(v186) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v187, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireHeSerializedCiphertext);
    v79 = v243;
    v61 = v83;
    if ((v186 & 1) == 0)
    {
      goto LABEL_224;
    }

    v80 = v251 + 1;
    if (v251 + 1 == v243)
    {
      goto LABEL_190;
    }
  }

  v88 = v276;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v86, v276, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v87(v86 + v85, 1, v75) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v281, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireHeSerializedCiphertext);
    v220 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType;
    v219 = v88;
    goto LABEL_219;
  }

  v89 = v275;
  outlined init with take of AMDPbPIRConfig(v86 + v85, v275, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  v90 = *(v264 + 48);
  v91 = v88;
  v92 = v274;
  outlined init with copy of AMDPbPIRConfig(v91, v274, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined init with copy of AMDPbPIRConfig(v89, v92 + v90, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v93 = v268;
    outlined init with copy of AMDPbPIRConfig(v92, v268, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v221 = type metadata accessor for AspireHeSerializedSeededCiphertext;
LABEL_222:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v93, v221);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v92, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
      goto LABEL_223;
    }

    v102 = v271;
    outlined init with take of AMDPbPIRConfig(v92 + v90, v271, type metadata accessor for AspireHeSerializedSeededCiphertext);
    v103 = *v93;
    v104 = v93[1];
    v106 = *v102;
    v105 = v102[1];
    v107 = v104 >> 62;
    v108 = v105 >> 62;
    v109 = v93;
    if (v104 >> 62 == 3)
    {
      v110 = 0;
      v76 = v248;
      if (!v103 && v104 == 0xC000000000000000 && v105 >> 62 == 3)
      {
        v110 = 0;
        if (!v106 && v105 == 0xC000000000000000)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
      v76 = v248;
      if (v107 > 1)
      {
        if (v107 == 2)
        {
          v115 = *(v103 + 16);
          v114 = *(v103 + 24);
          v113 = __OFSUB__(v114, v115);
          v110 = v114 - v115;
          if (v113)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v110 = 0;
        }
      }

      else if (v107)
      {
        LODWORD(v110) = HIDWORD(v103) - v103;
        if (__OFSUB__(HIDWORD(v103), v103))
        {
          goto LABEL_248;
        }

        v110 = v110;
      }

      else
      {
        v110 = BYTE6(v104);
      }
    }

    if (v108 > 1)
    {
      if (v108 != 2)
      {
        if (v110)
        {
          goto LABEL_217;
        }

        goto LABEL_135;
      }

      v127 = *(v106 + 16);
      v126 = *(v106 + 24);
      v113 = __OFSUB__(v126, v127);
      v125 = v126 - v127;
      if (v113)
      {
        goto LABEL_240;
      }
    }

    else if (v108)
    {
      LODWORD(v125) = HIDWORD(v106) - v106;
      if (__OFSUB__(HIDWORD(v106), v106))
      {
        goto LABEL_242;
      }

      v125 = v125;
    }

    else
    {
      v125 = BYTE6(v105);
    }

    if (v110 != v125)
    {
      goto LABEL_217;
    }

    if (v110 < 1)
    {
      goto LABEL_135;
    }

    if (v107 > 1)
    {
      if (v107 != 2)
      {
        memset(v284, 0, 14);
        outlined copy of Data._Representation(v106, v105);
LABEL_111:
        v146 = v242;
        closure #1 in static Data.== infix(_:_:)(v284, v106, v105, &v283);
        v242 = v146;
        outlined consume of Data._Representation(v106, v105);
        if ((v283 & 1) == 0)
        {
          goto LABEL_217;
        }

        goto LABEL_135;
      }

      v128 = *(v103 + 16);
      v228 = *(v103 + 24);
      outlined copy of Data._Representation(v106, v105);
      v129 = __DataStorage._bytes.getter();
      if (v129)
      {
        v130 = v129;
        v131 = __DataStorage._offset.getter();
        if (__OFSUB__(v128, v131))
        {
          goto LABEL_258;
        }

        v132 = v128;
        v133 = v128 - v131 + v130;
      }

      else
      {
        v132 = v128;
        v133 = 0;
      }

      if (__OFSUB__(v228, v132))
      {
        goto LABEL_253;
      }

      MEMORY[0x22AA5F1C0]();
      v148 = v133;
    }

    else
    {
      if (!v107)
      {
        v284[0] = v103;
        LOWORD(v284[1]) = v104;
        BYTE2(v284[1]) = BYTE2(v104);
        BYTE3(v284[1]) = BYTE3(v104);
        BYTE4(v284[1]) = BYTE4(v104);
        BYTE5(v284[1]) = BYTE5(v104);
        outlined copy of Data._Representation(v106, v105);
        v109 = v268;
        goto LABEL_111;
      }

      v141 = v103;
      if (v103 >> 32 < v103)
      {
        goto LABEL_251;
      }

      outlined copy of Data._Representation(v106, v105);
      v142 = __DataStorage._bytes.getter();
      if (v142)
      {
        v143 = v142;
        v144 = __DataStorage._offset.getter();
        if (__OFSUB__(v141, v144))
        {
          goto LABEL_259;
        }

        v145 = v141 - v144 + v143;
        v86 = v252;
      }

      else
      {
        v145 = 0;
      }

      MEMORY[0x22AA5F1C0]();
      v148 = v145;
    }

    v157 = v242;
    closure #1 in static Data.== infix(_:_:)(v148, v106, v105, v284);
    v242 = v157;
    outlined consume of Data._Representation(v106, v105);
    v109 = v268;
    if ((v284[0] & 1) == 0)
    {
      goto LABEL_217;
    }

LABEL_135:
    v158 = *(v109 + 16);
    v159 = *(v109 + 24);
    v161 = *(v271 + 16);
    v160 = *(v271 + 24);
    v162 = v159 >> 62;
    v163 = v160 >> 62;
    if (v159 >> 62 == 3)
    {
      v164 = 0;
      if (!v158 && v159 == 0xC000000000000000 && v160 >> 62 == 3)
      {
        v164 = 0;
        if (!v161 && v160 == 0xC000000000000000)
        {
          goto LABEL_185;
        }
      }
    }

    else if (v162 > 1)
    {
      if (v162 == 2)
      {
        v166 = *(v158 + 16);
        v165 = *(v158 + 24);
        v113 = __OFSUB__(v165, v166);
        v164 = v165 - v166;
        if (v113)
        {
          goto LABEL_250;
        }
      }

      else
      {
        v164 = 0;
      }
    }

    else if (v162)
    {
      LODWORD(v164) = HIDWORD(v158) - v158;
      if (__OFSUB__(HIDWORD(v158), v158))
      {
        goto LABEL_249;
      }

      v164 = v164;
    }

    else
    {
      v164 = BYTE6(v159);
    }

    if (v163 > 1)
    {
      if (v163 != 2)
      {
        if (v164)
        {
          goto LABEL_217;
        }

        goto LABEL_185;
      }

      v169 = *(v161 + 16);
      v168 = *(v161 + 24);
      v113 = __OFSUB__(v168, v169);
      v167 = v168 - v169;
      if (v113)
      {
        goto LABEL_243;
      }
    }

    else if (v163)
    {
      LODWORD(v167) = HIDWORD(v161) - v161;
      if (__OFSUB__(HIDWORD(v161), v161))
      {
        goto LABEL_244;
      }

      v167 = v167;
    }

    else
    {
      v167 = BYTE6(v160);
    }

    if (v164 != v167)
    {
      goto LABEL_217;
    }

    if (v164 >= 1)
    {
      if (v162 > 1)
      {
        if (v162 != 2)
        {
          memset(v284, 0, 14);
          outlined copy of Data._Representation(v161, v160);
LABEL_177:
          v181 = v242;
          closure #1 in static Data.== infix(_:_:)(v284, v161, v160, &v283);
          v242 = v181;
          outlined consume of Data._Representation(v161, v160);
          if ((v283 & 1) == 0)
          {
            goto LABEL_217;
          }

          goto LABEL_185;
        }

        v170 = *(v158 + 16);
        v228 = *(v158 + 24);
        outlined copy of Data._Representation(v161, v160);
        v171 = __DataStorage._bytes.getter();
        if (v171)
        {
          v172 = v171;
          v173 = __DataStorage._offset.getter();
          if (__OFSUB__(v170, v173))
          {
            goto LABEL_261;
          }

          v174 = v170;
          v175 = v170 - v173 + v172;
        }

        else
        {
          v174 = v170;
          v175 = 0;
        }

        if (__OFSUB__(v228, v174))
        {
          goto LABEL_256;
        }

        MEMORY[0x22AA5F1C0]();
        v182 = v175;
      }

      else
      {
        if (!v162)
        {
          v284[0] = *(v109 + 16);
          LOWORD(v284[1]) = v159;
          BYTE2(v284[1]) = BYTE2(v159);
          BYTE3(v284[1]) = BYTE3(v159);
          BYTE4(v284[1]) = BYTE4(v159);
          BYTE5(v284[1]) = BYTE5(v159);
          outlined copy of Data._Representation(v161, v160);
          v109 = v268;
          goto LABEL_177;
        }

        v176 = v158;
        if (v158 >> 32 < v158)
        {
          goto LABEL_255;
        }

        outlined copy of Data._Representation(*(v271 + 16), *(v271 + 24));
        v177 = __DataStorage._bytes.getter();
        if (v177)
        {
          v178 = v177;
          v179 = __DataStorage._offset.getter();
          if (__OFSUB__(v176, v179))
          {
            goto LABEL_262;
          }

          v180 = v176 - v179 + v178;
        }

        else
        {
          v180 = 0;
        }

        MEMORY[0x22AA5F1C0]();
        v182 = v180;
      }

      v183 = v242;
      closure #1 in static Data.== infix(_:_:)(v182, v161, v160, v284);
      v242 = v183;
      outlined consume of Data._Representation(v161, v160);
      v109 = v268;
      if ((v284[0] & 1) == 0)
      {
        goto LABEL_217;
      }
    }

LABEL_185:
    v184 = *(v258 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v185 = dispatch thunk of static Equatable.== infix(_:_:)();
    v109 = v268;
    if ((v185 & 1) == 0)
    {
LABEL_217:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v271, type metadata accessor for AspireHeSerializedSeededCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v109, type metadata accessor for AspireHeSerializedSeededCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v274, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v61 = v278;
      goto LABEL_223;
    }

    v75 = v280;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v271, type metadata accessor for AspireHeSerializedSeededCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v109, type metadata accessor for AspireHeSerializedSeededCiphertext);
    v83 = v278;
    goto LABEL_187;
  }

  v93 = v267;
  outlined init with copy of AMDPbPIRConfig(v92, v267, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v221 = type metadata accessor for AspireHeSerializedFullCiphertext;
    goto LABEL_222;
  }

  v94 = v279;
  outlined init with take of AMDPbPIRConfig(v92 + v90, v279, type metadata accessor for AspireHeSerializedFullCiphertext);
  v95 = *v93;
  v96 = v93[1];
  v98 = *v94;
  v97 = v94[1];
  v99 = v96 >> 62;
  v100 = v97 >> 62;
  if (v96 >> 62 == 3)
  {
    v101 = 0;
    if (!v95 && v96 == 0xC000000000000000 && v97 >> 62 == 3)
    {
      v101 = 0;
      if (!v98 && v97 == 0xC000000000000000)
      {
        goto LABEL_123;
      }
    }
  }

  else if (v99 > 1)
  {
    if (v99 == 2)
    {
      v112 = *(v95 + 16);
      v111 = *(v95 + 24);
      v113 = __OFSUB__(v111, v112);
      v101 = v111 - v112;
      if (v113)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v101 = 0;
    }
  }

  else if (v99)
  {
    LODWORD(v101) = HIDWORD(v95) - v95;
    if (__OFSUB__(HIDWORD(v95), v95))
    {
      goto LABEL_245;
    }

    v101 = v101;
  }

  else
  {
    v101 = BYTE6(v96);
  }

  if (v100 > 1)
  {
    if (v100 != 2)
    {
      if (v101)
      {
        goto LABEL_216;
      }

      goto LABEL_123;
    }

    v118 = *(v98 + 16);
    v117 = *(v98 + 24);
    v113 = __OFSUB__(v117, v118);
    v116 = v117 - v118;
    if (v113)
    {
      goto LABEL_241;
    }
  }

  else if (v100)
  {
    LODWORD(v116) = HIDWORD(v98) - v98;
    if (__OFSUB__(HIDWORD(v98), v98))
    {
      goto LABEL_239;
    }

    v116 = v116;
  }

  else
  {
    v116 = BYTE6(v97);
  }

  if (v101 != v116)
  {
    goto LABEL_216;
  }

  if (v101 < 1)
  {
    goto LABEL_123;
  }

  if (v99 > 1)
  {
    if (v99 != 2)
    {
      memset(v284, 0, 14);
      outlined copy of Data._Representation(v98, v97);
      v139 = v242;
      closure #1 in static Data.== infix(_:_:)(v284, v98, v97, &v283);
      v242 = v139;
      outlined consume of Data._Representation(v98, v97);
      v140 = v283;
      goto LABEL_122;
    }

    v120 = *(v95 + 16);
    v228 = *(v95 + 24);
    outlined copy of Data._Representation(v98, v97);
    v121 = __DataStorage._bytes.getter();
    if (v121)
    {
      v122 = v121;
      v123 = __DataStorage._offset.getter();
      if (__OFSUB__(v120, v123))
      {
        goto LABEL_257;
      }

      v124 = v120 - v123 + v122;
    }

    else
    {
      v124 = 0;
    }

    if (__OFSUB__(v228, v120))
    {
      goto LABEL_254;
    }

    MEMORY[0x22AA5F1C0]();
    v147 = v124;
  }

  else
  {
    if (!v99)
    {
      v284[0] = *v93;
      LOWORD(v284[1]) = v96;
      BYTE2(v284[1]) = BYTE2(v96);
      BYTE3(v284[1]) = BYTE3(v96);
      BYTE4(v284[1]) = BYTE4(v96);
      BYTE5(v284[1]) = BYTE5(v96);
      outlined copy of Data._Representation(v98, v97);
      v119 = v242;
      closure #1 in static Data.== infix(_:_:)(v284, v98, v97, &v283);
      v242 = v119;
      outlined consume of Data._Representation(v98, v97);
      v93 = v267;
      if ((v283 & 1) == 0)
      {
        goto LABEL_216;
      }

      goto LABEL_123;
    }

    v134 = v95;
    if (v95 >> 32 < v95)
    {
      goto LABEL_252;
    }

    outlined copy of Data._Representation(v98, v97);
    v135 = __DataStorage._bytes.getter();
    if (v135)
    {
      v136 = v135;
      v137 = __DataStorage._offset.getter();
      if (__OFSUB__(v134, v137))
      {
        goto LABEL_260;
      }

      v138 = v134 - v137 + v136;
    }

    else
    {
      v138 = 0;
    }

    MEMORY[0x22AA5F1C0]();
    v147 = v138;
  }

  v149 = v242;
  closure #1 in static Data.== infix(_:_:)(v147, v98, v97, v284);
  v242 = v149;
  outlined consume of Data._Representation(v98, v97);
  v140 = v284[0];
  v61 = v278;
LABEL_122:
  v93 = v267;
  if ((v140 & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_123:
  v150 = v93[2];
  v151 = v279[2];
  v152 = *(v150 + 16);
  if (v152 != *(v151 + 16))
  {
    goto LABEL_216;
  }

  if (!v152 || v150 == v151)
  {
LABEL_129:
    if (v93[3] != v279[3])
    {
      goto LABEL_216;
    }

    v155 = *(v256 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v156 = dispatch thunk of static Equatable.== infix(_:_:)();
    v93 = v267;
    if ((v156 & 1) == 0)
    {
      goto LABEL_216;
    }

    v83 = v61;
    v75 = v280;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v279, type metadata accessor for AspireHeSerializedFullCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v93, type metadata accessor for AspireHeSerializedFullCiphertext);
    v76 = v248;
LABEL_187:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v274, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v275, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v276, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v86 = v252;
    goto LABEL_188;
  }

  v153 = (v150 + 32);
  v154 = (v151 + 32);
  while (*v153 == *v154)
  {
    ++v153;
    ++v154;
    if (!--v152)
    {
      goto LABEL_129;
    }
  }

LABEL_216:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v279, type metadata accessor for AspireHeSerializedFullCiphertext);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v93, type metadata accessor for AspireHeSerializedFullCiphertext);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v274, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_223:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v275, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v276, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v86, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v281, type metadata accessor for AspireHeSerializedCiphertext);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireHeSerializedCiphertext);
LABEL_224:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v282, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v61, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v63 = v272;
  v62 = v273;
LABEL_225:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v62, type metadata accessor for AspireApiPECShardResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v63, type metadata accessor for AspireApiPECShardResponse);
LABEL_226:
  v218 = 0;
LABEL_227:
  v222 = *MEMORY[0x277D85DE8];
  return v218 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd;
  v42 = v18;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v24, v21, type metadata accessor for AspireHeSerializedCiphertext);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    outlined init with copy of AMDPbPIRConfig(v25, v18, type metadata accessor for AspireHeSerializedCiphertext);
    v29 = *(v49 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, v14, v27, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, &v14[v29], v27, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireHeSerializedCiphertext);
        v40 = v21;
        v39 = type metadata accessor for AspireHeSerializedCiphertext;
        goto LABEL_17;
      }

      v27 = v31;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, v31, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v44, v31, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v42, type metadata accessor for AspireHeSerializedCiphertext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireHeSerializedCiphertext);
        v39 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType;
        v40 = v34;
LABEL_17:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v40, v39);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
        goto LABEL_19;
      }

      v35 = v45;
      outlined init with take of AMDPbPIRConfig(&v14[v29], v45, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v36 = specialized static AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType.== infix(_:_:)(v34, v35);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v35, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, v31, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v42, type metadata accessor for AspireHeSerializedCiphertext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AspireHeSerializedCiphertext);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AspireHeSerializedCiphertext);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbEvaluationKeyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v121[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v98 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  v13 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v117 = &v98 - v14;
  v114 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v15 = *(v114 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v114);
  v112 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v113 = (&v98 - v20);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR);
  v21 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v119 = &v98 - v22;
  v116 = type metadata accessor for AMDPbEvaluationKey(0);
  v23 = *(*(v116 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v116);
  v118 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
    goto LABEL_77;
  }

  if (!v29 || a1 == a2)
  {
    v92 = 1;
    goto LABEL_78;
  }

  v103 = v12;
  v102 = v8;
  v101 = 0;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = (v15 + 48);
  v34 = v32;
  v104 = *(v26 + 72);
  v105 = v4;
  v35 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR;
  v115 = &v98 - v27;
  v106 = (v5 + 48);
  v107 = v33;
  while (1)
  {
    v111 = v31;
    outlined init with copy of AMDPbPIRConfig(v31, v28, type metadata accessor for AMDPbEvaluationKey);
    v110 = v34;
    v36 = v118;
    outlined init with copy of AMDPbPIRConfig(v34, v118, type metadata accessor for AMDPbEvaluationKey);
    v37 = *(v116 + 20);
    v38 = *(v109 + 48);
    v39 = v119;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v28[v37], v119, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36 + v37, v39 + v38, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    v40 = *v107;
    v41 = v114;
    if ((*v107)(v39, 1, v114) == 1)
    {
      v42 = v40(v119 + v38, 1, v41);
      v43 = v115;
      v44 = v106;
      if (v42 != 1)
      {
        goto LABEL_72;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v119, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
      goto LABEL_61;
    }

    v45 = v119;
    v46 = v113;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v119, v113, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    if (v40(v45 + v38, 1, v41) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AMDPbEvaluationKeyMetadata);
      v43 = v115;
LABEL_72:
      v94 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd;
      v95 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR;
      goto LABEL_73;
    }

    v47 = v45 + v38;
    v48 = v112;
    outlined init with take of AMDPbPIRConfig(v47, v112, type metadata accessor for AMDPbEvaluationKeyMetadata);
    v49 = *v46 == *v48;
    v50 = v114;
    v43 = v115;
    if (!v49)
    {
      goto LABEL_70;
    }

    v51 = v113[1];
    v52 = v113[2];
    v54 = v112[1];
    v53 = v112[2];
    v55 = v52 >> 62;
    v56 = v53 >> 62;
    if (v52 >> 62 == 3)
    {
      v57 = 0;
      if (!v51 && v52 == 0xC000000000000000 && v53 >> 62 == 3)
      {
        v57 = 0;
        if (!v54 && v53 == 0xC000000000000000)
        {
          goto LABEL_60;
        }
      }

LABEL_27:
      if (v56 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v63 = *(v51 + 16);
        v62 = *(v51 + 24);
        v60 = __OFSUB__(v62, v63);
        v57 = v62 - v63;
        if (v60)
        {
          goto LABEL_80;
        }

        goto LABEL_27;
      }

      v57 = 0;
      if (v56 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v55)
    {
      LODWORD(v57) = HIDWORD(v51) - v51;
      if (__OFSUB__(HIDWORD(v51), v51))
      {
        goto LABEL_81;
      }

      v57 = v57;
      if (v56 <= 1)
      {
LABEL_28:
        if (v56)
        {
          LODWORD(v61) = HIDWORD(v54) - v54;
          if (__OFSUB__(HIDWORD(v54), v54))
          {
            goto LABEL_79;
          }

          v61 = v61;
        }

        else
        {
          v61 = BYTE6(v53);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v57 = BYTE6(v52);
      if (v56 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v56 != 2)
    {
      if (v57)
      {
        goto LABEL_70;
      }

      goto LABEL_60;
    }

    v59 = *(v54 + 16);
    v58 = *(v54 + 24);
    v60 = __OFSUB__(v58, v59);
    v61 = v58 - v59;
    if (v60)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

LABEL_34:
    if (v57 != v61)
    {
      goto LABEL_70;
    }

    if (v57 >= 1)
    {
      if (v55 > 1)
      {
        if (v55 == 2)
        {
          v64 = *(v51 + 16);
          v100 = *(v51 + 24);
          outlined copy of Data._Representation(v54, v53);
          v65 = __DataStorage._bytes.getter();
          if (v65)
          {
            v66 = __DataStorage._offset.getter();
            if (__OFSUB__(v64, v66))
            {
              goto LABEL_84;
            }

            v65 += v64 - v66;
          }

          if (__OFSUB__(v100, v64))
          {
            goto LABEL_83;
          }

          MEMORY[0x22AA5F1C0]();
          v67 = v101;
          closure #1 in static Data.== infix(_:_:)(v65, v54, v53, v121);
          v101 = v67;
          outlined consume of Data._Representation(v54, v53);
          if ((v121[0] & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_60;
        }

        memset(v121, 0, 14);
        outlined copy of Data._Representation(v54, v53);
      }

      else
      {
        if (v55)
        {
          v68 = v51;
          v69 = v51 >> 32;
          v100 = v69 - v68;
          if (v69 < v68)
          {
            goto LABEL_82;
          }

          v70 = v68;
          outlined copy of Data._Representation(v54, v53);
          v71 = __DataStorage._bytes.getter();
          if (v71)
          {
            v99 = v71;
            v72 = __DataStorage._offset.getter();
            if (__OFSUB__(v70, v72))
            {
              goto LABEL_85;
            }

            v99 += v70 - v72;
          }

          else
          {
            v99 = 0;
          }

          MEMORY[0x22AA5F1C0]();
          v74 = v101;
          closure #1 in static Data.== infix(_:_:)(v99, v54, v53, v121);
          v101 = v74;
          outlined consume of Data._Representation(v54, v53);
          if ((v121[0] & 1) == 0)
          {
LABEL_70:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v112, type metadata accessor for AMDPbEvaluationKeyMetadata);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v113, type metadata accessor for AMDPbEvaluationKeyMetadata);
            v94 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd;
            v95 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR;
LABEL_73:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v119, v94, v95);
            goto LABEL_76;
          }

          goto LABEL_60;
        }

        v121[0] = v113[1];
        LOWORD(v121[1]) = v52;
        BYTE2(v121[1]) = BYTE2(v52);
        BYTE3(v121[1]) = BYTE3(v52);
        BYTE4(v121[1]) = BYTE4(v52);
        BYTE5(v121[1]) = BYTE5(v52);
        outlined copy of Data._Representation(v54, v53);
      }

      v73 = v101;
      closure #1 in static Data.== infix(_:_:)(v121, v54, v53, &v120);
      v101 = v73;
      outlined consume of Data._Representation(v54, v53);
      if (!v120)
      {
        goto LABEL_70;
      }
    }

LABEL_60:
    v75 = *(v50 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v77 = v112;
    v76 = v113;
    v78 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v119, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    v44 = v106;
    if ((v78 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_61:
    v79 = v117;
    v80 = *(v116 + 24);
    v81 = *(v108 + 48);
    v82 = v43;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v80, v117, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v35);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v118 + v80, v79 + v81, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v35);
    v83 = *v44;
    v84 = v105;
    if ((*v44)(v79, 1, v105) != 1)
    {
      break;
    }

    if (v83(v117 + v81, 1, v84) != 1)
    {
      goto LABEL_75;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v35);
LABEL_66:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v91 = v118;
    v92 = dispatch thunk of static Equatable.== infix(_:_:)();
    v93 = v91;
    v28 = v115;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v93, type metadata accessor for AMDPbEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v28, type metadata accessor for AMDPbEvaluationKey);
    if (v92)
    {
      v34 = v110 + v104;
      v31 = v111 + v104;
      if (--v29)
      {
        continue;
      }
    }

    goto LABEL_78;
  }

  v85 = v117;
  v86 = v35;
  v87 = v103;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v117, v103, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v86);
  if (v83(v85 + v81, 1, v84) != 1)
  {
    v88 = v117;
    v89 = v102;
    outlined init with take of AMDPbPIRConfig(v117 + v81, v102, type metadata accessor for AspireHeSerializedEvaluationKey);
    v90 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v87, v89);
    v43 = v115;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v89, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v87, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v88, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v86);
    v35 = v86;
    if ((v90 & 1) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_66;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v87, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_75:
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  v43 = v82;
LABEL_76:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v118, type metadata accessor for AMDPbEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AMDPbEvaluationKey);
LABEL_77:
  v92 = 0;
LABEL_78:
  v96 = *MEMORY[0x277D85DE8];
  return v92 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML17AspireApiResponseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for AspireApiResponse(0);
  v15 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v17;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd;
  v40 = &v39 - v20;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v24, v21, type metadata accessor for AspireApiResponse);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    outlined init with copy of AMDPbPIRConfig(v25, v17, type metadata accessor for AspireApiResponse);
    v29 = *(v47 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, v14, v27, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, &v14[v29], v27, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, v31, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v42, v31, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AspireApiResponse.OneOf_Response);
        v21 = v40;
        v17 = v41;
LABEL_16:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
LABEL_17:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireApiResponse);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AspireApiResponse);
        goto LABEL_18;
      }

      v35 = v43;
      outlined init with take of AMDPbPIRConfig(&v14[v29], v43, type metadata accessor for AspireApiResponse.OneOf_Response);
      v36 = static AspireApiResponse.OneOf_Response.== infix(_:_:)(v34, v35);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v35, type metadata accessor for AspireApiResponse.OneOf_Response);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AspireApiResponse.OneOf_Response);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, v31, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      v26 = v33;
      v21 = v40;
      v17 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireApiResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AspireApiResponse);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedCiphertextVecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of AMDPbPIRConfig(v14, v11, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined init with copy of AMDPbPIRConfig(v15, v8, type metadata accessor for AspireHeSerializedCiphertextVec);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v11, *v8) & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireHeSerializedCiphertextVec);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AspireHeSerializedCiphertextVec);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireHeSerializedCiphertextVec);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AspireApiRequestV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v14 = &v46 - v13;
  v50 = type metadata accessor for AspireApiRequest(0);
  v15 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v55 = (&v46 - v20);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_23:
    v45 = 0;
    return v45 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v22 = *(a1 + 16);
  v47 = v11;
  v51 = v17;
  v52 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v49 = *(v19 + 72);
  v27 = v50;
  v28 = v22;
  while (1)
  {
    v29 = v55;
    result = outlined init with copy of AMDPbPIRConfig(v24, v55, type metadata accessor for AspireApiRequest);
    if (!v28)
    {
      break;
    }

    v54 = v28;
    outlined init with copy of AMDPbPIRConfig(v25, v17, type metadata accessor for AspireApiRequest);
    v31 = *v29 == *v17 && v29[1] == v17[1];
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_22;
    }

    v32 = *(v27 + 20);
    v33 = *(v53 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v32, v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17 + v32, &v14[v33], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v34 = *v26;
    v35 = v14;
    v36 = v14;
    v37 = v52;
    if ((*v26)(v35, 1, v52) == 1)
    {
      if (v34((v36 + v33), 1, v37) != 1)
      {
        goto LABEL_21;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      v14 = v36;
      v17 = v51;
    }

    else
    {
      v38 = v47;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36, v47, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      if (v34((v36 + v33), 1, v37) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v38, type metadata accessor for AspireApiRequest.OneOf_Request);
LABEL_21:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
        v17 = v51;
LABEL_22:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireApiRequest);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AspireApiRequest);
        goto LABEL_23;
      }

      v39 = v26;
      v40 = v48;
      outlined init with take of AMDPbPIRConfig(v36 + v33, v48, type metadata accessor for AspireApiRequest.OneOf_Request);
      v41 = static AspireApiRequest.OneOf_Request.== infix(_:_:)(v38, v40);
      v42 = v40;
      v26 = v39;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v42, type metadata accessor for AspireApiRequest.OneOf_Request);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v38, type metadata accessor for AspireApiRequest.OneOf_Request);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      v14 = v36;
      v27 = v50;
      v17 = v51;
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v43 = *(v27 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v44 = v55;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireApiRequest);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireApiRequest);
    if (v45)
    {
      v28 = v54 - 1;
      v25 += v49;
      v24 += v49;
      if (v54 != 1)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML15AMDPbHEResponseV8PbStatusO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if (v5 != 3)
            {
              return 0;
            }
          }

          else if (v7 == 4)
          {
            if (v5 != 4)
            {
              return 0;
            }
          }

          else if (v5 != 5)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AMDPbHEKeyStatusV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v80 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v11 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v93 = &v80 - v12;
  v95 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v13 = *(v95 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  v97 = type metadata accessor for AMDPbHEKeyStatus(0);
  v23 = *(*(v97 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v97);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v29 = (&v80 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_71:
    v75 = 0;
    return v75 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v75 = 1;
    return v75 & 1;
  }

  v82 = v4;
  v31 = 0;
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v85 = a2 + v32;
  v83 = v26;
  v84 = (v13 + 48);
  v80 = v22;
  v81 = (v5 + 48);
  v86 = *(v27 + 72);
  v87 = a1 + v32;
  v33 = v94;
  v92 = v30;
  while (1)
  {
    v34 = v86 * v31;
    result = outlined init with copy of AMDPbPIRConfig(v87 + v86 * v31, v29, type metadata accessor for AMDPbHEKeyStatus);
    if (v31 == v92)
    {
      break;
    }

    outlined init with copy of AMDPbPIRConfig(v85 + v34, v26, type metadata accessor for AMDPbHEKeyStatus);
    if (*v29 != *v26)
    {
      goto LABEL_70;
    }

    v90 = v31;
    v36 = *(v97 + 28);
    v37 = v19;
    v38 = *(v19 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29 + v36, v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26 + v36, &v22[v38], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v39 = *v84;
    v40 = v95;
    if ((*v84)(v22, 1, v95) == 1)
    {
      if (v39(&v22[v38], 1, v40) != 1)
      {
        goto LABEL_74;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v19 = v37;
      v41 = v90;
      v26 = v83;
      goto LABEL_59;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22, v33, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v39(&v22[v38], 1, v40) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_74:
      v78 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd;
      v79 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR;
      goto LABEL_69;
    }

    v42 = v96;
    outlined init with take of AMDPbPIRConfig(&v22[v38], v96, type metadata accessor for AspireHeEvaluationKeyConfig);
    v43 = *(v40 + 28);
    v44 = *(v91 + 48);
    v45 = v93;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33 + v43, v93, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v42[v43], v45 + v44, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v46 = v82;
    v47 = *v81;
    if ((*v81)(v45, 1, v82) != 1)
    {
      v51 = v89;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v45, v89, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      if (v47(v45 + v44, 1, v46) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v51, type metadata accessor for AspireHeEncryptionParameters);
        v49 = v45;
        v22 = v80;
LABEL_76:
        v76 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
        v77 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
        goto LABEL_67;
      }

      v19 = v37;
      v52 = v88;
      outlined init with take of AMDPbPIRConfig(v45 + v44, v88, type metadata accessor for AspireHeEncryptionParameters);
      v41 = v90;
      v22 = v80;
      if (*v51 != *v52)
      {
        goto LABEL_66;
      }

      if (*(v51 + 8) != *(v52 + 8))
      {
        goto LABEL_66;
      }

      v53 = *(v51 + 16);
      v54 = *(v52 + 16);
      v55 = *(v53 + 16);
      if (v55 != *(v54 + 16))
      {
        goto LABEL_66;
      }

      if (v55 && v53 != v54)
      {
        v56 = (v53 + 32);
        v57 = (v54 + 32);
        while (*v56 == *v57)
        {
          ++v56;
          ++v57;
          if (!--v55)
          {
            goto LABEL_24;
          }
        }

LABEL_66:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v52, type metadata accessor for AspireHeEncryptionParameters);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v51, type metadata accessor for AspireHeEncryptionParameters);
        v76 = &_s8CipherML28AspireHeEncryptionParametersVSgMd;
        v77 = &_s8CipherML28AspireHeEncryptionParametersVSgMR;
        v49 = v93;
LABEL_67:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, v76, v77);
        v50 = v94;
LABEL_68:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v96, type metadata accessor for AspireHeEvaluationKeyConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v50, type metadata accessor for AspireHeEvaluationKeyConfig);
        v78 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd;
        v79 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR;
LABEL_69:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, v78, v79);
        v26 = v83;
LABEL_70:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AMDPbHEKeyStatus);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AMDPbHEKeyStatus);
        goto LABEL_71;
      }

LABEL_24:
      v58 = *(v52 + 32);
      if (*(v51 + 32))
      {
        if ((*(v52 + 32) & 1) == 0)
        {
          v59 = 0;
LABEL_30:
          if (v59 != *(v52 + 24))
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v59 = *(v51 + 24);
        if ((*(v52 + 32) & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v59)
        {
          goto LABEL_66;
        }
      }

      v60 = *(v51 + 40);
      v61 = *(v52 + 40);
      if (*(v51 + 48))
      {
        v60 = v60 != 0;
      }

      if (*(v52 + 48) == 1)
      {
        if (v61)
        {
          if (v60 != 1)
          {
            goto LABEL_66;
          }
        }

        else if (v60)
        {
          goto LABEL_66;
        }
      }

      else if (v60 != v61)
      {
        goto LABEL_66;
      }

      v62 = *(v51 + 56);
      v63 = *(v52 + 56);
      if (*(v52 + 64) == 1)
      {
        if (v63)
        {
          if (v63 == 1)
          {
            if (v62 != 1)
            {
              goto LABEL_66;
            }
          }

          else if (v62 != 2)
          {
            goto LABEL_66;
          }
        }

        else if (v62)
        {
          goto LABEL_66;
        }
      }

      else if (v62 != v63)
      {
        goto LABEL_66;
      }

      v64 = *(v82 + 40);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v52, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v51, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v93, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v50 = v94;
      if ((v65 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    v48 = v47(v45 + v44, 1, v46) == 1;
    v22 = v80;
    v49 = v45;
    if (!v48)
    {
      goto LABEL_76;
    }

    v19 = v37;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v50 = v94;
    v41 = v90;
LABEL_51:
    v66 = *v50;
    v67 = *v96;
    v68 = *(*v50 + 16);
    if (v68 != *(*v96 + 16))
    {
      goto LABEL_68;
    }

    if (v68 && v66 != v67)
    {
      v69 = (v66 + 32);
      v70 = (v67 + 32);
      while (*v69 == *v70)
      {
        ++v69;
        ++v70;
        if (!--v68)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_68;
    }

LABEL_57:
    if (v50[8] != v96[8])
    {
      goto LABEL_68;
    }

    v71 = *(v95 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v72 = v96;
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v72, type metadata accessor for AspireHeEvaluationKeyConfig);
    v33 = v50;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v50, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v26 = v83;
    if ((v73 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_59:
    if ((v29[1] != v26[1] || v29[2] != v26[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_70;
    }

    v74 = *(v97 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AMDPbHEKeyStatus);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AMDPbHEKeyStatus);
    if (v75)
    {
      v31 = v41 + 1;
      if (v31 != v92)
      {
        continue;
      }
    }

    return v75 & 1;
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML12AMDPbHEReplyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AMDPbPECReply(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v277 = (&v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v273 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v7 = *(*(v273 - 8) + 64);
  MEMORY[0x28223BE20](v273);
  v293 = (&v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v9 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v270);
  v285 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  v11 = *(*(v276 - 8) + 64);
  MEMORY[0x28223BE20](v276);
  v287 = &v252 - v12;
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v272 = (&v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v271 = (&v252 - v19);
  MEMORY[0x28223BE20](v18);
  v288 = &v252 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v289 = &v252 - v23;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  v24 = *(*(v290 - 8) + 64);
  MEMORY[0x28223BE20](v290);
  v298 = &v252 - v25;
  v284 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v295 = *(v284 - 8);
  v26 = *(v295 + 64);
  v27 = MEMORY[0x28223BE20](v284);
  v300 = &v252 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v301 = &v252 - v29;
  v274 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v283 = *(v274 - 8);
  v30 = *(v283 + 64);
  v31 = MEMORY[0x28223BE20](v274);
  v291 = &v252 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v292 = (&v252 - v33);
  v275 = type metadata accessor for AMDPbPIRReply(0);
  v34 = *(*(v275 - 8) + 64);
  MEMORY[0x28223BE20](v275);
  v297 = &v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
  v36 = *(*(v294 - 8) + 64);
  MEMORY[0x28223BE20](v294);
  v306 = &v252 - v37;
  v305 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v38 = *(v305 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v305);
  v280 = (&v252 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v252 - v43;
  MEMORY[0x28223BE20](v42);
  v286 = &v252 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v304 = &v252 - v48;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR);
  v49 = *(*(v302 - 8) + 64);
  MEMORY[0x28223BE20](v302);
  v51 = &v252 - v50;
  v299 = type metadata accessor for AMDPbHEReply(0);
  v52 = *(*(v299 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v299);
  v307 = &v252 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v308 = &v252 - v56;
  v57 = *(a1 + 16);
  if (v57 != *(a2 + 16) || !v57 || a1 == a2)
  {
    goto LABEL_289;
  }

  v260 = v4;
  v58 = 0;
  v258 = 0;
  v59 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v282 = a1 + v59;
  v279 = a2 + v59;
  v278 = (v38 + 48);
  v268 = (v14 + 48);
  v281 = *(v55 + 72);
  v60 = v286;
  v296 = v13;
  v269 = v44;
  v261 = v51;
  v303 = v57;
  while (1)
  {
    v61 = v281 * v58;
    outlined init with copy of AMDPbPIRConfig(v282 + v281 * v58, v308, type metadata accessor for AMDPbHEReply);
    if (v58 == v303)
    {
      __break(1u);
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
    }

    v62 = v307;
    outlined init with copy of AMDPbPIRConfig(v279 + v61, v307, type metadata accessor for AMDPbHEReply);
    v63 = *(v302 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v308, v51, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v62, &v51[v63], &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    v64 = *v278;
    v65 = v305;
    if ((*v278)(v51, 1, v305) == 1)
    {
      if (v64(&v51[v63], 1, v65) != 1)
      {
        goto LABEL_275;
      }

      goto LABEL_269;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51, v304, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    if (v64(&v51[v63], 1, v65) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v304, type metadata accessor for AMDPbHEReply.OneOf_Reply);
LABEL_275:
      v248 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd;
      v249 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR;
      goto LABEL_288;
    }

    outlined init with take of AMDPbPIRConfig(&v51[v63], v60, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v66 = *(v294 + 48);
    v67 = v306;
    outlined init with copy of AMDPbPIRConfig(v304, v306, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined init with copy of AMDPbPIRConfig(v60, v67 + v66, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v68 = v280;
    outlined init with copy of AMDPbPIRConfig(v306, v280, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v68, type metadata accessor for AMDPbPECReply);
      goto LABEL_282;
    }

    v69 = v277;
    outlined init with take of AMDPbPIRConfig(v306 + v66, v277, type metadata accessor for AMDPbPECReply);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbPECShardReplyV_Tt1g5(*v68, *v69) & 1) == 0 || (v70 = *(v260 + 20), type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AMDPbPECReply);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v68, type metadata accessor for AMDPbPECReply);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v306, type metadata accessor for AMDPbHEReply.OneOf_Reply);
      goto LABEL_287;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AMDPbPECReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v68, type metadata accessor for AMDPbPECReply);
LABEL_268:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v306, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v60, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v304, type metadata accessor for AMDPbHEReply.OneOf_Reply);
LABEL_269:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    v242 = *(v299 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v244 = v307;
    v243 = v308;
    LOBYTE(v242) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v244, type metadata accessor for AMDPbHEReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v243, type metadata accessor for AMDPbHEReply);
    if (v242)
    {
      ++v58;
      v13 = v296;
      if (v58 != v303)
      {
        continue;
      }
    }

    goto LABEL_289;
  }

  v71 = v269;
  outlined init with copy of AMDPbPIRConfig(v306, v269, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v71, type metadata accessor for AMDPbPIRReply);
    v51 = v261;
LABEL_282:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v306, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
    goto LABEL_287;
  }

  v72 = v297;
  outlined init with take of AMDPbPIRConfig(v306 + v66, v297, type metadata accessor for AMDPbPIRReply);
  v73 = *v71;
  v74 = *v72;
  v75 = *(*v71 + 16);
  v76 = v268;
  if (v75 != *(*v72 + 16))
  {
    goto LABEL_286;
  }

  if (!v75 || v73 == v74)
  {
LABEL_266:
    v241 = *(v275 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_286;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v297, type metadata accessor for AMDPbPIRReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v71, type metadata accessor for AMDPbPIRReply);
    v51 = v261;
    goto LABEL_268;
  }

  v77 = 0;
  v78 = (*(v283 + 80) + 32) & ~*(v283 + 80);
  v257 = v73 + v78;
  v256 = v74 + v78;
  v255 = v73;
  v254 = v75;
  while (1)
  {
    if (v77 >= *(v73 + 16))
    {
      goto LABEL_296;
    }

    v79 = v77;
    v80 = *(v283 + 72) * v77;
    v81 = v292;
    outlined init with copy of AMDPbPIRConfig(v257 + v80, v292, type metadata accessor for AspireHeSerializedCiphertextVec);
    v82 = *(v74 + 16);
    v259 = v79;
    if (v79 >= v82)
    {
      goto LABEL_297;
    }

    v83 = v256 + v80;
    v84 = v291;
    outlined init with copy of AMDPbPIRConfig(v83, v291, type metadata accessor for AspireHeSerializedCiphertextVec);
    v85 = *v81;
    v86 = *v84;
    v87 = *(v85 + 16);
    if (v87 != *(*v84 + 16))
    {
      goto LABEL_285;
    }

    if (v87 && v85 != v86)
    {
      break;
    }

LABEL_264:
    v237 = *(v274 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v238 = v292;
    v239 = v291;
    LOBYTE(v237) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v239, type metadata accessor for AspireHeSerializedCiphertextVec);
    v240 = v238;
    v13 = v296;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v240, type metadata accessor for AspireHeSerializedCiphertextVec);
    v60 = v286;
    v73 = v255;
    if ((v237 & 1) == 0)
    {
      goto LABEL_286;
    }

    v77 = v259 + 1;
    if (v259 + 1 == v254)
    {
      goto LABEL_266;
    }
  }

  v88 = 0;
  v89 = (*(v295 + 80) + 32) & ~*(v295 + 80);
  v267 = v85 + v89;
  v266 = v86 + v89;
  v265 = v74;
  v264 = v85;
  v263 = v86;
  v262 = v87;
  while (2)
  {
    if (v88 >= *(v85 + 16))
    {
      goto LABEL_294;
    }

    v90 = *(v295 + 72) * v88;
    v91 = v301;
    outlined init with copy of AMDPbPIRConfig(v267 + v90, v301, type metadata accessor for AspireHeSerializedCiphertext);
    if (v88 >= *(v86 + 16))
    {
      goto LABEL_295;
    }

    v92 = v300;
    outlined init with copy of AMDPbPIRConfig(v266 + v90, v300, type metadata accessor for AspireHeSerializedCiphertext);
    v93 = *(v290 + 48);
    v94 = v298;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v91, v298, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v92, v94 + v93, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v95 = *v76;
    if ((*v76)(v94, 1, v13) == 1)
    {
      v96 = v95(v94 + v93, 1, v13);
      v97 = v301;
      if (v96 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v300, type metadata accessor for AspireHeSerializedCiphertext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v97, type metadata accessor for AspireHeSerializedCiphertext);
        v71 = v269;
        goto LABEL_284;
      }

LABEL_262:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      v235 = *(v284 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v236 = v300;
      LOBYTE(v235) = dispatch thunk of static Equatable.== infix(_:_:)();
      v13 = v296;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v236, type metadata accessor for AspireHeSerializedCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v97, type metadata accessor for AspireHeSerializedCiphertext);
      v71 = v269;
      v76 = v268;
      v74 = v265;
      v85 = v264;
      v86 = v263;
      if ((v235 & 1) == 0)
      {
        goto LABEL_285;
      }

      if (++v88 == v262)
      {
        goto LABEL_264;
      }

      continue;
    }

    break;
  }

  v98 = v289;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v94, v289, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v95(v94 + v93, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v300, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v301, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v98, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_284:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
LABEL_285:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v291, type metadata accessor for AspireHeSerializedCiphertextVec);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v292, type metadata accessor for AspireHeSerializedCiphertextVec);
    v60 = v286;
LABEL_286:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v297, type metadata accessor for AMDPbPIRReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v71, type metadata accessor for AMDPbPIRReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v306, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v51 = v261;
LABEL_287:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v60, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v304, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v248 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd;
    v249 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR;
LABEL_288:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, v248, v249);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v307, type metadata accessor for AMDPbHEReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v308, type metadata accessor for AMDPbHEReply);
LABEL_289:
    v250 = *MEMORY[0x277D85DE8];
    return;
  }

  v99 = v94 + v93;
  v100 = v288;
  outlined init with take of AMDPbPIRConfig(v99, v288, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  v101 = *(v276 + 48);
  v102 = v98;
  v103 = v287;
  outlined init with copy of AMDPbPIRConfig(v102, v287, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined init with copy of AMDPbPIRConfig(v100, v103 + v101, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v104 = v271;
    outlined init with copy of AMDPbPIRConfig(v103, v271, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v251 = type metadata accessor for AspireHeSerializedSeededCiphertext;
      goto LABEL_292;
    }

    v115 = v285;
    outlined init with take of AMDPbPIRConfig(v103 + v101, v285, type metadata accessor for AspireHeSerializedSeededCiphertext);
    v116 = *v104;
    v117 = v104[1];
    v119 = *v115;
    v118 = v115[1];
    v120 = v117 >> 62;
    v121 = v118 >> 62;
    if (v117 >> 62 == 3)
    {
      v122 = 0;
      if (!v116 && v117 == 0xC000000000000000 && v118 >> 62 == 3)
      {
        v122 = 0;
        if (!v119 && v118 == 0xC000000000000000)
        {
          goto LABEL_199;
        }
      }
    }

    else if (v120 > 1)
    {
      if (v120 == 2)
      {
        v127 = *(v116 + 16);
        v126 = *(v116 + 24);
        v125 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        if (v125)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v122 = 0;
      }
    }

    else if (v120)
    {
      LODWORD(v122) = HIDWORD(v116) - v116;
      if (__OFSUB__(HIDWORD(v116), v116))
      {
        goto LABEL_307;
      }

      v122 = v122;
    }

    else
    {
      v122 = BYTE6(v117);
    }

    if (v121 > 1)
    {
      if (v121 != 2)
      {
        if (v122)
        {
          goto LABEL_277;
        }

        goto LABEL_199;
      }

      v139 = *(v119 + 16);
      v138 = *(v119 + 24);
      v125 = __OFSUB__(v138, v139);
      v137 = v138 - v139;
      if (v125)
      {
        goto LABEL_301;
      }
    }

    else if (v121)
    {
      LODWORD(v137) = HIDWORD(v119) - v119;
      if (__OFSUB__(HIDWORD(v119), v119))
      {
        goto LABEL_299;
      }

      v137 = v137;
    }

    else
    {
      v137 = BYTE6(v118);
    }

    if (v122 != v137)
    {
      goto LABEL_277;
    }

    if (v122 < 1)
    {
      goto LABEL_199;
    }

    if (v120 > 1)
    {
      if (v120 != 2)
      {
        memset(__s1, 0, 14);
        if (v121)
        {
          if (v121 != 2)
          {
            v202 = v119;
            v125 = __OFSUB__(v119 >> 32, v119);
            v141 = (v119 >> 32) - v119;
            if (v141 < 0 != v125)
            {
              goto LABEL_325;
            }

            v203 = __DataStorage._bytes.getter();
            if (!v203)
            {
              goto LABEL_340;
            }

            v204 = v203;
            v205 = __DataStorage._offset.getter();
            if (__OFSUB__(v202, v205))
            {
              goto LABEL_329;
            }

            v145 = v202 - v205 + v204;
            v146 = MEMORY[0x22AA5F1C0]();
            if (!v145)
            {
              goto LABEL_341;
            }

            goto LABEL_194;
          }

          v169 = *(v119 + 16);
          v170 = *(v119 + 24);
          v145 = __DataStorage._bytes.getter();
          if (v145)
          {
            v171 = __DataStorage._offset.getter();
            if (__OFSUB__(v169, v171))
            {
              goto LABEL_334;
            }

            v145 += v169 - v171;
          }

          v125 = __OFSUB__(v170, v169);
          v172 = v170 - v169;
          if (v125)
          {
            goto LABEL_327;
          }

          v173 = MEMORY[0x22AA5F1C0]();
          if (!v145)
          {
            goto LABEL_342;
          }

LABEL_169:
          if (v173 >= v172)
          {
            v175 = v172;
          }

          else
          {
            v175 = v173;
          }

          goto LABEL_197;
        }

LABEL_145:
        __s2 = v119;
        v310 = v118;
        v311 = BYTE2(v118);
        v312 = BYTE3(v118);
        v313 = BYTE4(v118);
        v175 = BYTE6(v118);
        v314 = BYTE5(v118);
        p_s2 = &__s2;
        goto LABEL_198;
      }

      v147 = *(v116 + 16);
      v148 = *(v116 + 24);
      v149 = __DataStorage._bytes.getter();
      if (v149)
      {
        v150 = v149;
        v151 = __DataStorage._offset.getter();
        if (__OFSUB__(v147, v151))
        {
          goto LABEL_316;
        }

        v253 = v147 - v151 + v150;
      }

      else
      {
        v253 = 0;
      }

      if (__OFSUB__(v148, v147))
      {
        goto LABEL_313;
      }

      MEMORY[0x22AA5F1C0]();
      v178 = v253;
    }

    else
    {
      if (!v120)
      {
        __s1[0] = *v104;
        LOWORD(__s1[1]) = v117;
        BYTE2(__s1[1]) = BYTE2(v117);
        BYTE3(__s1[1]) = BYTE3(v117);
        BYTE4(__s1[1]) = BYTE4(v117);
        BYTE5(__s1[1]) = BYTE5(v117);
        if (v121)
        {
          if (v121 == 1)
          {
            v140 = v119;
            v125 = __OFSUB__(v119 >> 32, v119);
            v141 = (v119 >> 32) - v119;
            if (v141 < 0 != v125)
            {
              goto LABEL_323;
            }

            v142 = __DataStorage._bytes.getter();
            if (!v142)
            {
              goto LABEL_345;
            }

            v143 = v142;
            v144 = __DataStorage._offset.getter();
            if (__OFSUB__(v140, v144))
            {
              goto LABEL_331;
            }

            v145 = v140 - v144 + v143;
            v146 = MEMORY[0x22AA5F1C0]();
            if (!v145)
            {
              goto LABEL_344;
            }

LABEL_194:
            if (v146 >= v141)
            {
              v175 = v141;
            }

            else
            {
              v175 = v146;
            }

LABEL_197:
            p_s2 = v145;
LABEL_198:
            if (memcmp(__s1, p_s2, v175))
            {
              goto LABEL_277;
            }

LABEL_199:
            v206 = v104[2];
            v207 = v104[3];
            v209 = *(v285 + 16);
            v208 = *(v285 + 24);
            v210 = v207 >> 62;
            v211 = v208 >> 62;
            if (v207 >> 62 == 3)
            {
              v212 = 0;
              if (!v206 && v207 == 0xC000000000000000 && v208 >> 62 == 3)
              {
                v212 = 0;
                if (!v209 && v208 == 0xC000000000000000)
                {
                  goto LABEL_259;
                }
              }
            }

            else if (v210 > 1)
            {
              if (v210 == 2)
              {
                v214 = *(v206 + 16);
                v213 = *(v206 + 24);
                v125 = __OFSUB__(v213, v214);
                v212 = v213 - v214;
                if (v125)
                {
                  goto LABEL_308;
                }
              }

              else
              {
                v212 = 0;
              }
            }

            else if (v210)
            {
              LODWORD(v212) = HIDWORD(v206) - v206;
              if (__OFSUB__(HIDWORD(v206), v206))
              {
                goto LABEL_309;
              }

              v212 = v212;
            }

            else
            {
              v212 = BYTE6(v207);
            }

            if (v211 > 1)
            {
              if (v211 != 2)
              {
                if (v212)
                {
                  goto LABEL_277;
                }

                goto LABEL_259;
              }

              v217 = *(v209 + 16);
              v216 = *(v209 + 24);
              v125 = __OFSUB__(v216, v217);
              v215 = v216 - v217;
              if (v125)
              {
                goto LABEL_303;
              }
            }

            else if (v211)
            {
              LODWORD(v215) = HIDWORD(v209) - v209;
              if (__OFSUB__(HIDWORD(v209), v209))
              {
                goto LABEL_302;
              }

              v215 = v215;
            }

            else
            {
              v215 = BYTE6(v208);
            }

            if (v212 != v215)
            {
              goto LABEL_277;
            }

            if (v212 >= 1)
            {
              if (v210 > 1)
              {
                if (v210 != 2)
                {
                  memset(__s1, 0, 14);
                  if (v211 == 2)
                  {
                    goto LABEL_249;
                  }

                  if (v211 == 1)
                  {
                    v218 = v209;
                    v219 = v209 >> 32;
                    if (v209 >> 32 < v209)
                    {
                      goto LABEL_332;
                    }

LABEL_250:
                    v230 = v258;
                    v231 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v218, v219, v208 & 0x3FFFFFFFFFFFFFFFLL, __s1);
                    v183 = &v290;
                    v258 = v230;
                    if (v230)
                    {
                      goto LABEL_346;
                    }

                    if ((v231 & 1) == 0)
                    {
LABEL_277:
                      v245 = type metadata accessor for AspireHeSerializedSeededCiphertext;
                      v246 = type metadata accessor for AspireHeSerializedSeededCiphertext;
                      v247 = &v316;
                      goto LABEL_278;
                    }

                    goto LABEL_259;
                  }

LABEL_247:
                  __s2 = v209;
                  v310 = v208;
                  v311 = BYTE2(v208);
                  v312 = BYTE3(v208);
                  v313 = BYTE4(v208);
                  v314 = BYTE5(v208);
                  if (memcmp(__s1, &__s2, BYTE6(v208)))
                  {
                    goto LABEL_277;
                  }

                  goto LABEL_259;
                }

                v220 = *(v206 + 16);
                v253 = *(v206 + 24);
                v221 = __DataStorage._bytes.getter();
                if (v221)
                {
                  v222 = v221;
                  v223 = __DataStorage._offset.getter();
                  if (__OFSUB__(v220, v223))
                  {
                    goto LABEL_320;
                  }

                  v224 = v220 - v223 + v222;
                }

                else
                {
                  v224 = 0;
                }

                if (__OFSUB__(v253, v220))
                {
                  goto LABEL_315;
                }

                MEMORY[0x22AA5F1C0]();
                v232 = v224;
              }

              else
              {
                if (!v210)
                {
                  __s1[0] = v104[2];
                  LOWORD(__s1[1]) = v207;
                  BYTE2(__s1[1]) = BYTE2(v207);
                  BYTE3(__s1[1]) = BYTE3(v207);
                  BYTE4(__s1[1]) = BYTE4(v207);
                  BYTE5(__s1[1]) = BYTE5(v207);
                  if (v211)
                  {
                    if (v211 == 1)
                    {
                      v218 = v209;
                      v219 = v209 >> 32;
                      if (v209 >> 32 < v209)
                      {
                        goto LABEL_333;
                      }

                      goto LABEL_250;
                    }

LABEL_249:
                    v218 = *(v209 + 16);
                    v219 = *(v209 + 24);
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                }

                v225 = v206;
                if (v206 >> 32 < v206)
                {
                  goto LABEL_314;
                }

                v226 = __DataStorage._bytes.getter();
                if (v226)
                {
                  v227 = v226;
                  v228 = __DataStorage._offset.getter();
                  if (__OFSUB__(v225, v228))
                  {
                    goto LABEL_321;
                  }

                  v229 = v225 - v228 + v227;
                }

                else
                {
                  v229 = 0;
                }

                MEMORY[0x22AA5F1C0]();
                v232 = v229;
              }

              v233 = v258;
              closure #1 in static Data.== infix(_:_:)(v232, v209, v208, __s1);
              v258 = v233;
              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_277;
              }
            }

LABEL_259:
            v234 = *(v270 + 24);
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
            if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
            {
              goto LABEL_277;
            }

            v199 = type metadata accessor for AspireHeSerializedSeededCiphertext;
            v200 = type metadata accessor for AspireHeSerializedSeededCiphertext;
            v201 = &v316;
            goto LABEL_261;
          }

          v184 = *(v119 + 16);
          v185 = *(v119 + 24);
          v145 = __DataStorage._bytes.getter();
          if (v145)
          {
            v186 = __DataStorage._offset.getter();
            if (__OFSUB__(v184, v186))
            {
              goto LABEL_335;
            }

            v145 += v184 - v186;
          }

          v125 = __OFSUB__(v185, v184);
          v172 = v185 - v184;
          if (v125)
          {
            goto LABEL_328;
          }

          v173 = MEMORY[0x22AA5F1C0]();
          if (!v145)
          {
            goto LABEL_343;
          }

          goto LABEL_169;
        }

        goto LABEL_145;
      }

      v164 = v116;
      if (v116 >> 32 < v116)
      {
        goto LABEL_311;
      }

      v165 = __DataStorage._bytes.getter();
      if (v165)
      {
        v166 = v165;
        v167 = __DataStorage._offset.getter();
        if (__OFSUB__(v164, v167))
        {
          goto LABEL_319;
        }

        v168 = v164 - v167 + v166;
      }

      else
      {
        v168 = 0;
      }

      MEMORY[0x22AA5F1C0]();
      v178 = v168;
    }

    v180 = v258;
    closure #1 in static Data.== infix(_:_:)(v178, v119, v118, __s1);
    v258 = v180;
    if ((__s1[0] & 1) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_199;
  }

  v104 = v272;
  outlined init with copy of AMDPbPIRConfig(v103, v272, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v106 = v273;
  if (EnumCaseMultiPayload != 1)
  {
    v251 = type metadata accessor for AspireHeSerializedFullCiphertext;
LABEL_292:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v104, v251);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
    goto LABEL_279;
  }

  v107 = v293;
  outlined init with take of AMDPbPIRConfig(v103 + v101, v293, type metadata accessor for AspireHeSerializedFullCiphertext);
  v108 = *v104;
  v109 = v104[1];
  v111 = *v107;
  v110 = v107[1];
  v112 = v109 >> 62;
  v113 = v110 >> 62;
  if (v109 >> 62 == 3)
  {
    v114 = 0;
    if (v108)
    {
      goto LABEL_68;
    }

    if (v109 != 0xC000000000000000)
    {
      goto LABEL_68;
    }

    if (v110 >> 62 != 3)
    {
      goto LABEL_68;
    }

    v114 = 0;
    if (v111 || v110 != 0xC000000000000000)
    {
      goto LABEL_68;
    }

LABEL_181:
    v193 = v104[2];
    v194 = v293[2];
    v195 = *(v193 + 16);
    if (v195 != *(v194 + 16))
    {
      goto LABEL_273;
    }

    if (v195 && v193 != v194)
    {
      v196 = (v193 + 32);
      v197 = (v194 + 32);
      while (*v196 == *v197)
      {
        ++v196;
        ++v197;
        if (!--v195)
        {
          goto LABEL_187;
        }
      }

LABEL_273:
      v245 = type metadata accessor for AspireHeSerializedFullCiphertext;
      v246 = type metadata accessor for AspireHeSerializedFullCiphertext;
      v247 = &v317;
LABEL_278:
      outlined destroy of AMDPbHEConfig.OneOf_Config(*(v247 - 32), v245);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v104, v246);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v287, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_279:
      v71 = v269;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v288, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v289, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v298, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v300, type metadata accessor for AspireHeSerializedCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v301, type metadata accessor for AspireHeSerializedCiphertext);
      goto LABEL_285;
    }

LABEL_187:
    if (v104[3] != v293[3])
    {
      goto LABEL_273;
    }

    v198 = *(v106 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_273;
    }

    v199 = type metadata accessor for AspireHeSerializedFullCiphertext;
    v200 = type metadata accessor for AspireHeSerializedFullCiphertext;
    v201 = &v317;
LABEL_261:
    outlined destroy of AMDPbHEConfig.OneOf_Config(*(v201 - 32), v199);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v104, v200);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v287, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v288, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v289, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v94 = v298;
    v97 = v301;
    goto LABEL_262;
  }

  if (v112 > 1)
  {
    if (v112 == 2)
    {
      v124 = *(v108 + 16);
      v123 = *(v108 + 24);
      v125 = __OFSUB__(v123, v124);
      v114 = v123 - v124;
      if (v125)
      {
        goto LABEL_304;
      }
    }

    else
    {
      v114 = 0;
    }
  }

  else if (v112)
  {
    LODWORD(v114) = HIDWORD(v108) - v108;
    if (__OFSUB__(HIDWORD(v108), v108))
    {
      goto LABEL_305;
    }

    v114 = v114;
  }

  else
  {
    v114 = BYTE6(v109);
  }

LABEL_68:
  if (v113 > 1)
  {
    if (v113 != 2)
    {
      if (v114)
      {
        goto LABEL_273;
      }

      goto LABEL_181;
    }

    v130 = *(v111 + 16);
    v129 = *(v111 + 24);
    v125 = __OFSUB__(v129, v130);
    v128 = v129 - v130;
    if (v125)
    {
      goto LABEL_298;
    }
  }

  else if (v113)
  {
    LODWORD(v128) = HIDWORD(v111) - v111;
    if (__OFSUB__(HIDWORD(v111), v111))
    {
      goto LABEL_300;
    }

    v128 = v128;
  }

  else
  {
    v128 = BYTE6(v110);
  }

  if (v114 != v128)
  {
    goto LABEL_273;
  }

  if (v114 < 1)
  {
    goto LABEL_181;
  }

  if (v112 <= 1)
  {
    if (v112)
    {
      v152 = v108;
      if (v108 >> 32 < v108)
      {
        goto LABEL_310;
      }

      v153 = __DataStorage._bytes.getter();
      if (v153)
      {
        v154 = v153;
        v155 = __DataStorage._offset.getter();
        if (__OFSUB__(v152, v155))
        {
          goto LABEL_318;
        }

        v156 = v152 - v155 + v154;
      }

      else
      {
        v156 = 0;
      }

      MEMORY[0x22AA5F1C0]();
      v179 = v258;
      closure #1 in static Data.== infix(_:_:)(v156, v111, v110, __s1);
      v258 = v179;
      v106 = v273;
      if ((__s1[0] & 1) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_181;
    }

    __s1[0] = *v104;
    LOWORD(__s1[1]) = v109;
    BYTE2(__s1[1]) = BYTE2(v109);
    BYTE3(__s1[1]) = BYTE3(v109);
    BYTE4(__s1[1]) = BYTE4(v109);
    BYTE5(__s1[1]) = BYTE5(v109);
    if (v113)
    {
      if (v113 == 1)
      {
        v131 = v111;
        v132 = v111 >> 32;
        if (v111 >> 32 < v111)
        {
          goto LABEL_324;
        }
      }

      else
      {
        v131 = *(v111 + 16);
        v132 = *(v111 + 24);
      }

      v181 = v258;
      v182 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v131, v132, v110 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      v183 = &v290;
      v258 = v181;
      if (v181)
      {
        goto LABEL_346;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_181;
    }

LABEL_144:
    __s2 = v111;
    v310 = v110;
    v311 = BYTE2(v110);
    v312 = BYTE3(v110);
    v313 = BYTE4(v110);
    v163 = BYTE6(v110);
    v314 = BYTE5(v110);
    v174 = &__s2;
LABEL_180:
    if (memcmp(__s1, v174, v163))
    {
      goto LABEL_273;
    }

    goto LABEL_181;
  }

  if (v112 == 2)
  {
    v133 = *(v108 + 16);
    v253 = *(v108 + 24);
    v134 = __DataStorage._bytes.getter();
    if (v134)
    {
      v135 = v134;
      v136 = __DataStorage._offset.getter();
      if (__OFSUB__(v133, v136))
      {
        goto LABEL_317;
      }

      v252 = v133 - v136 + v135;
    }

    else
    {
      v252 = 0;
    }

    if (__OFSUB__(v253, v133))
    {
      goto LABEL_312;
    }

    MEMORY[0x22AA5F1C0]();
    v177 = v258;
    closure #1 in static Data.== infix(_:_:)(v252, v111, v110, __s1);
    v258 = v177;
    if ((__s1[0] & 1) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_181;
  }

  memset(__s1, 0, 14);
  if (!v113)
  {
    goto LABEL_144;
  }

  if (v113 == 2)
  {
    v157 = *(v111 + 16);
    v158 = *(v111 + 24);
    v159 = __DataStorage._bytes.getter();
    if (v159)
    {
      v160 = __DataStorage._offset.getter();
      if (__OFSUB__(v157, v160))
      {
        goto LABEL_336;
      }

      v159 += v157 - v160;
    }

    v125 = __OFSUB__(v158, v157);
    v161 = v158 - v157;
    if (v125)
    {
      goto LABEL_326;
    }

    v162 = MEMORY[0x22AA5F1C0]();
    if (!v159)
    {
      goto LABEL_339;
    }

    if (v162 >= v161)
    {
      v163 = v161;
    }

    else
    {
      v163 = v162;
    }

LABEL_179:
    v174 = v159;
    goto LABEL_180;
  }

  v187 = v111;
  v125 = __OFSUB__(v111 >> 32, v111);
  v188 = (v111 >> 32) - v111;
  if (v188 < 0 != v125)
  {
    goto LABEL_322;
  }

  v189 = __DataStorage._bytes.getter();
  if (v189)
  {
    v190 = v189;
    v191 = __DataStorage._offset.getter();
    if (__OFSUB__(v187, v191))
    {
      goto LABEL_330;
    }

    v159 = v187 - v191 + v190;
    v192 = MEMORY[0x22AA5F1C0]();
    if (!v159)
    {
      goto LABEL_338;
    }

    if (v192 >= v188)
    {
      v163 = v188;
    }

    else
    {
      v163 = v192;
    }

    goto LABEL_179;
  }

  MEMORY[0x22AA5F1C0]();
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  MEMORY[0x22AA5F1C0]();
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  MEMORY[0x22AA5F1C0]();
  __break(1u);
LABEL_346:

  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML12AMDPbHEQueryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECQuery(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AMDPbPIRQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
  v12 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v68 - v13;
  v83 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v14 = *(v83 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v83);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v72 = (&v68 - v20);
  MEMORY[0x28223BE20](v19);
  v81 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v68 - v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR);
  v26 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v28 = &v68 - v27;
  v80 = type metadata accessor for AMDPbHEQuery(0);
  v29 = *(*(v80 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v80);
  v84 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = (&v68 - v33);
  v35 = *(a1 + 16);
  if (v35 != *(a2 + 16))
  {
LABEL_34:
    v64 = 0;
    return v64 & 1;
  }

  if (!v35 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v36 = *(a1 + 16);
  v76 = v25;
  v77 = v28;
  v70 = v7;
  v71 = v18;
  v69 = v11;
  v37 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v38 = a1 + v37;
  v39 = a2 + v37;
  v78 = (v14 + 48);
  v79 = &v68 - v33;
  v73 = *(v32 + 72);
  v40 = v83;
  v41 = v84;
  v42 = v80;
  v43 = v36;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v38, v34, type metadata accessor for AMDPbHEQuery);
    if (!v43)
    {
      break;
    }

    outlined init with copy of AMDPbPIRConfig(v39, v41, type metadata accessor for AMDPbHEQuery);
    v45 = *v34 == *v41 && v34[1] == v41[1];
    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    v85 = v43;
    v46 = *(v42 + 20);
    v47 = *(v82 + 48);
    v48 = v34 + v46;
    v49 = v77;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v48, v77, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v41 + v46, v49 + v47, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v50 = *v78;
    if ((*v78)(v49, 1, v40) == 1)
    {
      v51 = v50(v49 + v47, 1, v40);
      v41 = v84;
      if (v51 != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v52 = v76;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49, v76, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
      if (v50(v49 + v47, 1, v40) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v52, type metadata accessor for AMDPbHEQuery.OneOf_Query);
        v41 = v84;
LABEL_27:
        v65 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd;
        v66 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR;
        goto LABEL_32;
      }

      v53 = v81;
      outlined init with take of AMDPbPIRConfig(v49 + v47, v81, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      v54 = *(v75 + 48);
      v55 = v52;
      v56 = v74;
      outlined init with copy of AMDPbPIRConfig(v55, v74, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      outlined init with copy of AMDPbPIRConfig(v53, v56 + v54, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v84;
      if (EnumCaseMultiPayload == 1)
      {
        v58 = v71;
        outlined init with copy of AMDPbPIRConfig(v56, v71, type metadata accessor for AMDPbHEQuery.OneOf_Query);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v67 = type metadata accessor for AMDPbPECQuery;
          goto LABEL_30;
        }

        v59 = v70;
        outlined init with take of AMDPbPIRConfig(v56 + v54, v70, type metadata accessor for AMDPbPECQuery);
        v60 = specialized static AMDPbPECQuery.== infix(_:_:)(v58, v59);
        v61 = type metadata accessor for AMDPbPECQuery;
      }

      else
      {
        v58 = v72;
        outlined init with copy of AMDPbPIRConfig(v56, v72, type metadata accessor for AMDPbHEQuery.OneOf_Query);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = type metadata accessor for AMDPbPIRQuery;
LABEL_30:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v58, v67);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v56, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
LABEL_31:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AMDPbHEQuery.OneOf_Query);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AMDPbHEQuery.OneOf_Query);
          v65 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd;
          v66 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR;
LABEL_32:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, v65, v66);
          v34 = v79;
LABEL_33:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v41, type metadata accessor for AMDPbHEQuery);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AMDPbHEQuery);
          goto LABEL_34;
        }

        v59 = v69;
        outlined init with take of AMDPbPIRConfig(v56 + v54, v69, type metadata accessor for AMDPbPIRQuery);
        v60 = specialized static AMDPbPIRQuery.== infix(_:_:)(v58, v59);
        v61 = type metadata accessor for AMDPbPIRQuery;
      }

      v62 = v61;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v59, v61);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v58, v62);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v56, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      if ((v60 & 1) == 0)
      {
        goto LABEL_31;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      v40 = v83;
      v42 = v80;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v63 = *(v42 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v34 = v79;
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v41, type metadata accessor for AMDPbHEQuery);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AMDPbHEQuery);
    if (v64)
    {
      v43 = v85 - 1;
      v39 += v73;
      v38 += v73;
      if (v85 != 1)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbPECShardReplyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v98 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v99 = &v88 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  v11 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v88 - v12;
  v106 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v13 = *(v106 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v104 = &v88 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v19 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v109 = &v88 - v20;
  v112 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v21 = *(v112 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v112);
  v107 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v110 = &v88 - v26;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
  v27 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v29 = &v88 - v28;
  v111 = type metadata accessor for AMDPbPECShardReply(0);
  v30 = *(*(v111 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v111);
  v33 = (&v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v36 = (&v88 - v35);
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_45:
    v85 = 0;
    return v85 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v85 = 1;
    return v85 & 1;
  }

  v90 = v4;
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v96 = a2 + v38;
  v40 = (v21 + 48);
  v41 = 0;
  v95 = v40;
  v92 = (v13 + 48);
  v89 = (v5 + 48);
  v42 = *(v34 + 72);
  v43 = v110;
  v93 = v42;
  v94 = v39;
  v100 = v37;
  v91 = v33;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v39 + v42 * v41, v36, type metadata accessor for AMDPbPECShardReply);
    if (v41 == v100)
    {
      break;
    }

    v97 = v41;
    outlined init with copy of AMDPbPIRConfig(v96 + v42 * v41, v33, type metadata accessor for AMDPbPECShardReply);
    v45 = *(v111 + 28);
    v46 = *(v108 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36 + v45, v29, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33 + v45, &v29[v46], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    v47 = *v95;
    v48 = v112;
    if ((*v95)(v29, 1, v112) == 1)
    {
      if (v47(&v29[v46], 1, v48) != 1)
      {
        goto LABEL_36;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v43, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if (v47(&v29[v46], 1, v48) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
LABEL_36:
        v86 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd;
        v87 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR;
        goto LABEL_43;
      }

      v49 = v107;
      outlined init with take of AMDPbPIRConfig(&v29[v46], v107, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      if (*v43 != *v49 || *(v43 + 4) != *(v49 + 4) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*(v43 + 8), *(v49 + 8)) & 1) == 0)
      {
        goto LABEL_42;
      }

      v50 = v43;
      v51 = v49;
      v52 = *(v112 + 32);
      v53 = *(v105 + 48);
      v54 = v109;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50 + v52, v109, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51 + v52, v54 + v53, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v55 = *v92;
      v56 = v54;
      v57 = v106;
      if ((*v92)(v56, 1, v106) == 1)
      {
        v58 = v55(v109 + v53, 1, v57);
        v43 = v110;
        v33 = v91;
        if (v58 != 1)
        {
          goto LABEL_38;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v109, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v49 = v107;
      }

      else
      {
        v59 = v57;
        v60 = v109;
        v61 = v104;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v109, v104, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        if (v55(v60 + v53, 1, v59) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v61, type metadata accessor for AspireSimilarityPlaintextPacking);
          v43 = v110;
          v33 = v91;
LABEL_38:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v109, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
          v49 = v107;
          goto LABEL_42;
        }

        v62 = v103;
        outlined init with take of AMDPbPIRConfig(v109 + v53, v103, type metadata accessor for AspireSimilarityPlaintextPacking);
        v63 = v102;
        v64 = *(v101 + 48);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v61, v102, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v62, v63 + v64, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v65 = *v89;
        v66 = v90;
        v67 = (*v89)(v63, 1, v90);
        v33 = v91;
        if (v67 == 1)
        {
          if (v65(v63 + v64, 1, v66) != 1)
          {
            goto LABEL_40;
          }

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        }

        else
        {
          v68 = v99;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v63, v99, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          if (v65(v63 + v64, 1, v66) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v68, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_40:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_41:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v103, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v104, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v109, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
            v49 = v107;
            v43 = v110;
LABEL_42:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
            v86 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd;
            v87 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR;
LABEL_43:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, v86, v87);
LABEL_44:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AMDPbPECShardReply);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AMDPbPECShardReply);
            goto LABEL_45;
          }

          v69 = v98;
          outlined init with take of AMDPbPIRConfig(v63 + v64, v98, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v70 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v68, v69);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v68, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          if ((v70 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        v71 = *(v106 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v73 = v103;
        v72 = v104;
        v74 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v73, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v72, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v109, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v49 = v107;
        v43 = v110;
        if ((v74 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v75 = v49;
      v76 = *(v112 + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v78 = v75;
      v43 = v110;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v78, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if ((v77 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v79 = *v36;
    v80 = *v33;
    v81 = *(*v36 + 16);
    if (v81 != *(*v33 + 16))
    {
      goto LABEL_44;
    }

    if (v81 && v79 != v80)
    {
      v82 = (v79 + 32);
      v83 = (v80 + 32);
      while (*v82 == *v83)
      {
        ++v82;
        ++v83;
        if (!--v81)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_44;
    }

LABEL_30:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v36[1], v33[1]) & 1) == 0)
    {
      goto LABEL_44;
    }

    v84 = *(v111 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AMDPbPECShardReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AMDPbPECShardReply);
    if (v85)
    {
      v41 = v97 + 1;
      v42 = v93;
      v39 = v94;
      if (v97 + 1 != v100)
      {
        continue;
      }
    }

    return v85 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML19AMDPbPIRShardConfigV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPIRShardConfig(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v27 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_22:
    v26 = 0;
    return v26 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v9 + 72);
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v15 + v17 * v13, v11, type metadata accessor for AMDPbPIRShardConfig);
    if (v13 == v12)
    {
      break;
    }

    result = outlined init with copy of AMDPbPIRConfig(v16 + v17 * v13, v8, type metadata accessor for AMDPbPIRShardConfig);
    if (*v11 != *v8 || v11[1] != v8[1] || (v19 = v11[2], v20 = v8[2], v21 = *(v19 + 16), v21 != *(v20 + 16)))
    {
LABEL_21:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbPIRShardConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AMDPbPIRShardConfig);
      goto LABEL_22;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v19 + 32);
      v24 = (v20 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_21;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    v25 = *(v4 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbPIRShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AMDPbPIRShardConfig);
    if ((v26 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AspireApiKeyStatusV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v62 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v11 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v62 - v12;
  v78 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v13 = *(v78 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v79 = type metadata accessor for AspireApiKeyStatus(0);
  v23 = *(*(v79 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v79);
  v26 = (&v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v29 = &v62 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    goto LABEL_35;
  }

  if (!v30 || a1 == a2)
  {
    v59 = 1;
    return v59 & 1;
  }

  v64 = v4;
  v31 = 0;
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v68 = a2 + v32;
  v66 = v26;
  v67 = (v13 + 48);
  v62 = &v62 - v28;
  v63 = (v5 + 48);
  v69 = *(v27 + 72);
  v70 = a1 + v32;
  v71 = v22;
  v65 = v19;
  v75 = v30;
  while (1)
  {
    v33 = v69 * v31;
    result = outlined init with copy of AMDPbPIRConfig(v70 + v69 * v31, v29, type metadata accessor for AspireApiKeyStatus);
    if (v31 == v75)
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AMDPbPIRConfig(v68 + v33, v26, type metadata accessor for AspireApiKeyStatus);
    if (*v29 != *v26)
    {
      goto LABEL_34;
    }

    v35 = *(v79 + 24);
    v36 = *(v19 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v29[v35], v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26 + v35, &v22[v36], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v37 = *v67;
    v38 = v78;
    if ((*v67)(v22, 1, v78) == 1)
    {
      if (v37(&v22[v36], 1, v38) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v19 = v65;
        v26 = v66;
        goto LABEL_24;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v66, type metadata accessor for AspireApiKeyStatus);
      v61 = v29;
      v60 = type metadata accessor for AspireApiKeyStatus;
LABEL_30:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v61, v60);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
      goto LABEL_35;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22, v80, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v37(&v22[v36], 1, v38) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v66, type metadata accessor for AspireApiKeyStatus);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AspireApiKeyStatus);
      v60 = type metadata accessor for AspireHeEvaluationKeyConfig;
      v61 = v80;
      goto LABEL_30;
    }

    v39 = v76;
    outlined init with take of AMDPbPIRConfig(&v22[v36], v76, type metadata accessor for AspireHeEvaluationKeyConfig);
    v40 = *(v38 + 28);
    v41 = *(v74 + 48);
    v42 = v77;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v80[v40], v77, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + v40, v42 + v41, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v43 = v64;
    v44 = *v63;
    if ((*v63)(v42, 1, v64) == 1)
    {
      v45 = v44(v77 + v41, 1, v43);
      v29 = v62;
      if (v45 != 1)
      {
        goto LABEL_32;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v46 = v76;
      v19 = v65;
    }

    else
    {
      v47 = v77;
      v48 = v73;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v77, v73, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      if (v44(v47 + v41, 1, v43) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireHeEncryptionParameters);
        v29 = v62;
LABEL_32:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
        v46 = v76;
        goto LABEL_33;
      }

      v49 = v72;
      outlined init with take of AMDPbPIRConfig(v47 + v41, v72, type metadata accessor for AspireHeEncryptionParameters);
      v50 = static AspireHeEncryptionParameters.== infix(_:_:)(v48, v49);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v46 = v76;
      v19 = v65;
      v29 = v62;
      if ((v50 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v51 = *v80;
    v52 = *v46;
    v53 = *(*v80 + 16);
    if (v53 != *(*v46 + 16))
    {
      goto LABEL_33;
    }

    if (v53 && v51 != v52)
    {
      break;
    }

LABEL_22:
    if (v80[8] != v46[8])
    {
      goto LABEL_33;
    }

    v56 = *(v78 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v57 = v80;
    LOBYTE(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v57, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v26 = v66;
    if ((v56 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_24:
    v58 = *(v79 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AspireApiKeyStatus);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AspireApiKeyStatus);
    if (v59)
    {
      ++v31;
      v22 = v71;
      if (v31 != v75)
      {
        continue;
      }
    }

    return v59 & 1;
  }

  v54 = (v51 + 32);
  v55 = (v52 + 32);
  while (*v54 == *v55)
  {
    ++v54;
    ++v55;
    if (!--v53)
    {
      goto LABEL_22;
    }
  }

LABEL_33:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v80, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v26 = v66;
LABEL_34:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AspireApiKeyStatus);
LABEL_35:
  v59 = 0;
  return v59 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML45AspireSimilaritySerializedDcrtPlaintextMatrixV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v67 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  v11 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v82 = &v67 - v12;
  v83 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v13 = *(v83 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v83);
  v79 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  v84 = type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0);
  v23 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v67 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_29:
    v62 = 0;
    return v62 & 1;
  }

  if (v30 && a1 != a2)
  {
    v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v32 = a1 + v31;
    v33 = v5;
    v34 = (v13 + 48);
    v35 = a2 + v31;
    v70 = (v33 + 48);
    v71 = v22;
    v36 = *(v27 + 72);
    v72 = v4;
    v73 = v36;
    v68 = v34;
    v69 = v19;
    v74 = v25;
    while (1)
    {
      outlined init with copy of AMDPbPIRConfig(v32, v29, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      v81 = v35;
      outlined init with copy of AMDPbPIRConfig(v35, v25, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      if (*v29 != *v25 || *(v29 + 1) != *(v25 + 1) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedDcrtPlaintextV_Tt1g5(*(v29 + 1), *(v25 + 1)) & 1) == 0)
      {
        break;
      }

      v78 = v32;
      v37 = *(v84 + 32);
      v38 = *(v19 + 48);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v29[v37], v22, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v25[v37], &v22[v38], &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v39 = *v34;
      v40 = v83;
      if ((*v34)(v22, 1, v83) == 1)
      {
        v41 = v39(&v22[v38], 1, v40);
        v25 = v74;
        if (v41 != 1)
        {
          goto LABEL_23;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v42 = v78;
      }

      else
      {
        v43 = v80;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22, v80, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        if (v39(&v22[v38], 1, v40) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireSimilarityPlaintextPacking);
          v25 = v74;
LABEL_23:
          v63 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
          v64 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
          v65 = v22;
          goto LABEL_27;
        }

        v44 = v79;
        outlined init with take of AMDPbPIRConfig(&v22[v38], v79, type metadata accessor for AspireSimilarityPlaintextPacking);
        v45 = *(v77 + 48);
        v46 = v82;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43, v82, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v44, v46 + v45, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v47 = *v70;
        v48 = v72;
        v49 = (*v70)(v46, 1, v72);
        v25 = v74;
        if (v49 == 1)
        {
          v50 = v47(v82 + v45, 1, v48);
          v42 = v78;
          if (v50 != 1)
          {
            goto LABEL_25;
          }

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          v51 = v83;
        }

        else
        {
          v52 = v82;
          v53 = v76;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v82, v76, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          v54 = v47(v52 + v45, 1, v48);
          v42 = v78;
          if (v54 == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v53, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_25:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_26:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v79, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v80, type metadata accessor for AspireSimilarityPlaintextPacking);
            v63 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd;
            v64 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR;
            v65 = v71;
LABEL_27:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v65, v63, v64);
            break;
          }

          v55 = v75;
          outlined init with take of AMDPbPIRConfig(v52 + v45, v75, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v56 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v53, v55);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v53, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v52, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          v51 = v83;
          if ((v56 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v57 = *(v51 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v59 = v79;
        v58 = v80;
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v59, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v58, type metadata accessor for AspireSimilarityPlaintextPacking);
        v22 = v71;
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v34 = v68;
        v19 = v69;
        if ((v60 & 1) == 0)
        {
          break;
        }
      }

      v61 = *(v84 + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v25, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      if (v62)
      {
        v35 = v81 + v73;
        v32 = v42 + v73;
        if (--v30)
        {
          continue;
        }
      }

      return v62 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v25, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
    goto LABEL_29;
  }

  v62 = 1;
  return v62 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML016AspireSimilarityE5DbRowV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v57[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireSimilaritySimilarityDbRow(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v49 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_67;
  }

  if (!v12 || a1 == a2)
  {
    v46 = 1;
    goto LABEL_68;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v53 = 0;
  v54 = a2 + v14;
  v55 = *(v9 + 72);
  while (1)
  {
    v16 = v55 * v13;
    outlined init with copy of AMDPbPIRConfig(v15 + v55 * v13, v11, type metadata accessor for AspireSimilaritySimilarityDbRow);
    if (v13 == v12)
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    outlined init with copy of AMDPbPIRConfig(v54 + v16, v7, type metadata accessor for AspireSimilaritySimilarityDbRow);
    if (*v11 != *v7)
    {
      goto LABEL_66;
    }

    v17 = v11[1];
    v18 = v11[2];
    v19 = v7[1];
    v20 = v7[2];
    v21 = v18 >> 62;
    v22 = v20 >> 62;
    if (v18 >> 62 == 3)
    {
      v23 = 0;
      if (!v17 && v18 == 0xC000000000000000 && v20 >> 62 == 3)
      {
        v23 = 0;
        if (!v19 && v20 == 0xC000000000000000)
        {
          goto LABEL_56;
        }
      }

LABEL_23:
      if (v22 <= 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        v26 = __OFSUB__(v28, v29);
        v23 = v28 - v29;
        if (v26)
        {
          goto LABEL_72;
        }

        goto LABEL_23;
      }

      v23 = 0;
      if (v22 <= 1)
      {
        goto LABEL_24;
      }
    }

    else if (v21)
    {
      LODWORD(v23) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_73;
      }

      v23 = v23;
      if (v22 <= 1)
      {
LABEL_24:
        if (v22)
        {
          LODWORD(v27) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_70;
          }

          v27 = v27;
        }

        else
        {
          v27 = BYTE6(v20);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v23 = BYTE6(v18);
      if (v22 <= 1)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    if (v22 != 2)
    {
      if (v23)
      {
        goto LABEL_66;
      }

      goto LABEL_56;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
      goto LABEL_71;
    }

LABEL_30:
    if (v23 != v27)
    {
      goto LABEL_66;
    }

    if (v23 < 1)
    {
      goto LABEL_56;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        memset(v57, 0, 14);
LABEL_52:
        v36 = v19;
        v37 = v53;
        closure #1 in static Data.== infix(_:_:)(v57, v36, v20, &v56);
        v53 = v37;
        if (!v56)
        {
          goto LABEL_66;
        }

        goto LABEL_56;
      }

      v51 = v15;
      v52 = v4;
      v30 = *(v17 + 16);
      v50 = *(v17 + 24);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(v30, v32))
        {
          goto LABEL_76;
        }

        v31 += v30 - v32;
      }

      if (__OFSUB__(v50, v30))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (!v21)
      {
        v57[0] = v11[1];
        LOWORD(v57[1]) = v18;
        BYTE2(v57[1]) = BYTE2(v18);
        BYTE3(v57[1]) = BYTE3(v18);
        BYTE4(v57[1]) = BYTE4(v18);
        BYTE5(v57[1]) = BYTE5(v18);
        goto LABEL_52;
      }

      v51 = v15;
      v52 = v4;
      v33 = v17;
      if (v17 >> 32 < v17)
      {
        goto LABEL_74;
      }

      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v50 = v34;
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v33, v35))
        {
          goto LABEL_77;
        }

        v31 = v33 - v35 + v50;
      }

      else
      {
        v31 = 0;
      }
    }

    MEMORY[0x22AA5F1C0]();
    v38 = v19;
    v39 = v53;
    closure #1 in static Data.== infix(_:_:)(v31, v38, v20, v57);
    v53 = v39;
    v15 = v51;
    v4 = v52;
    if ((v57[0] & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_56:
    v40 = v11[3];
    v41 = v7[3];
    v42 = *(v40 + 16);
    if (v42 != *(v41 + 16))
    {
      goto LABEL_66;
    }

    if (v42 && v40 != v41)
    {
      break;
    }

LABEL_62:
    v45 = *(v4 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AspireSimilaritySimilarityDbRow);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilaritySimilarityDbRow);
    if ((v46 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    goto LABEL_68;
  }

  v43 = (v40 + 32);
  v44 = (v41 + 32);
  while (*v43 == *v44)
  {
    ++v43;
    ++v44;
    if (!--v42)
    {
      goto LABEL_62;
    }
  }

LABEL_66:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AspireSimilaritySimilarityDbRow);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilaritySimilarityDbRow);
LABEL_67:
  v46 = 0;
LABEL_68:
  v47 = *MEMORY[0x277D85DE8];
  return v46 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML23AspireApiPIRShardConfigV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v41 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_42:
    v40 = 0;
    return v40 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v9 + 72);
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v15 + v17 * v13, v11, type metadata accessor for AspireApiPIRShardConfig);
    if (v13 == v12)
    {
      break;
    }

    result = outlined init with copy of AMDPbPIRConfig(v16 + v17 * v13, v8, type metadata accessor for AspireApiPIRShardConfig);
    if (*v11 != *v8)
    {
      goto LABEL_41;
    }

    if (v11[1] != v8[1])
    {
      goto LABEL_41;
    }

    v19 = v11[2];
    v20 = v8[2];
    v21 = *(v19 + 16);
    if (v21 != *(v20 + 16))
    {
      goto LABEL_41;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v19 + 32);
      v24 = (v20 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_41;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    v25 = v4[8];
    v26 = (v11 + v25);
    v27 = *(v11 + v25 + 8);
    v28 = (v8 + v25);
    v29 = v28[1];
    if (v27)
    {
      if (!v29)
      {
        goto LABEL_41;
      }

      v30 = *v26 == *v28 && v27 == v29;
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v29)
    {
      goto LABEL_41;
    }

    v31 = v4[9];
    v32 = *(v11 + v31);
    v33 = *(v8 + v31);
    if (v32 == 2)
    {
      if (v33 != 2)
      {
        goto LABEL_41;
      }
    }

    else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
    {
      goto LABEL_41;
    }

    v34 = v4[10];
    v35 = (v11 + v34);
    v36 = *(v11 + v34 + 8);
    v37 = (v8 + v34);
    v38 = *(v8 + v34 + 8);
    if (v36)
    {
      if (!v38)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v35 != *v37)
      {
        LOBYTE(v38) = 1;
      }

      if (v38)
      {
LABEL_41:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AspireApiPIRShardConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireApiPIRShardConfig);
        goto LABEL_42;
      }
    }

    v39 = v4[7];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AspireApiPIRShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireApiPIRShardConfig);
    if ((v40 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_8CipherML027AspireHeSerializedKeySwitchH0VTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v71 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR);
  v13 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v15 = &v71 - v14;
  v79 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v16 = *(v79 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v79);
  v85 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v78 = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v82 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v25);
  v81 = (&v71 - v28);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v72 = v8;
  v73 = v12;
  v83 = v4;
  v29 = 0;
  v74 = a1;
  v75 = v16;
  v30 = *(a1 + 64);
  v71 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v76 = a2;
  v77 = (v5 + 48);
  while (v33)
  {
    v84 = (v33 - 1) & v33;
    v38 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_17:
    v43 = *(*(v74 + 48) + 8 * v38);
    v44 = v78;
    outlined init with copy of AMDPbPIRConfig(*(v74 + 56) + *(v16 + 72) * v38, v78, type metadata accessor for AspireHeSerializedKeySwitchKey);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMR);
    v46 = *(v45 + 48);
    v47 = v82;
    *v82 = v43;
    v48 = v47;
    outlined init with take of AMDPbPIRConfig(v44, v47 + v46, type metadata accessor for AspireHeSerializedKeySwitchKey);
    (*(*(v45 - 8) + 56))(v48, 0, 1, v45);
LABEL_18:
    v49 = v81;
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v48, v81, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMR);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMR);
    v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
    v52 = v51 == 1;
    if (v51 == 1)
    {
      return v52;
    }

    v53 = *(v50 + 48);
    v54 = *v49;
    outlined init with take of AMDPbPIRConfig(v49 + v53, v86, type metadata accessor for AspireHeSerializedKeySwitchKey);
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
    if ((v56 & 1) == 0)
    {
      goto LABEL_34;
    }

    v57 = v85;
    outlined init with copy of AMDPbPIRConfig(*(a2 + 56) + *(v16 + 72) * v55, v85, type metadata accessor for AspireHeSerializedKeySwitchKey);
    v58 = *(v79 + 20);
    v59 = *(v80 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v57 + v58, v15, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v86 + v58, &v15[v59], &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    v60 = *v77;
    v61 = v83;
    if ((*v77)(v15, 1, v83) == 1)
    {
      if (v60(&v15[v59], 1, v61) != 1)
      {
        goto LABEL_30;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    }

    else
    {
      v62 = v73;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v15, v73, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
      if (v60(&v15[v59], 1, v61) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v62, type metadata accessor for AspireHeSerializedCiphertextVec);
LABEL_30:
        v69 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd;
        v70 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR;
LABEL_32:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, v69, v70);
LABEL_33:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v85, type metadata accessor for AspireHeSerializedKeySwitchKey);
LABEL_34:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v86, type metadata accessor for AspireHeSerializedKeySwitchKey);
        return 0;
      }

      v63 = v62;
      v64 = v72;
      outlined init with take of AMDPbPIRConfig(&v15[v59], v72, type metadata accessor for AspireHeSerializedCiphertextVec);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v63, *v64) & 1) == 0)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v64, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v63, type metadata accessor for AspireHeSerializedCiphertextVec);
        v69 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd;
        v70 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR;
        goto LABEL_32;
      }

      v65 = *(v83 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v64, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v63, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
      if ((v66 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v35 = v85;
    v36 = v86;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v35, type metadata accessor for AspireHeSerializedKeySwitchKey);
    result = outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AspireHeSerializedKeySwitchKey);
    v16 = v75;
    a2 = v76;
    v33 = v84;
    if ((v37 & 1) == 0)
    {
      return v52;
    }
  }

  if (v34 <= v29 + 1)
  {
    v39 = v29 + 1;
  }

  else
  {
    v39 = v34;
  }

  v40 = v39 - 1;
  while (1)
  {
    v41 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v41 >= v34)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMR);
      v68 = v82;
      (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
      v84 = 0;
      v29 = v40;
      v48 = v68;
      goto LABEL_18;
    }

    v42 = *(v71 + 8 * v41);
    ++v29;
    if (v42)
    {
      v84 = (v42 - 1) & v42;
      v38 = __clz(__rbit64(v42)) | (v41 << 6);
      v29 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML13AMDPbHEConfigVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AMDPbPIRConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
  v12 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v97 - v13;
  v14 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v102 = (&v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v101 = (&v97 - v20);
  MEMORY[0x28223BE20](v19);
  v112 = &v97 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v97 - v24;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
  v26 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v28 = &v97 - v27;
  v111 = type metadata accessor for AMDPbHEConfig(0);
  v120 = *(v111 - 8);
  v29 = *(v120 + 64);
  v30 = MEMORY[0x28223BE20](v111);
  v121 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v97 - v33;
  MEMORY[0x28223BE20](v32);
  v110 = &v97 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMR);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v37);
  v114 = (&v97 - v41);
  v116 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v116 + 16))
  {
    return 0;
  }

  v107 = v25;
  v98 = v11;
  v99 = v7;
  v42 = 0;
  v105 = a1;
  v43 = *(a1 + 64);
  v100 = a1 + 64;
  v44 = 1 << *(a1 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v108 = (v15 + 48);
  v48 = v109;
  v117 = v39;
  v106 = v47;
  v115 = v28;
  while (v46)
  {
    v53 = v14;
    v119 = (v46 - 1) & v46;
    v54 = __clz(__rbit64(v46)) | (v42 << 6);
LABEL_18:
    v59 = (*(v105 + 48) + 16 * v54);
    v61 = *v59;
    v60 = v59[1];
    v62 = v110;
    outlined init with copy of AMDPbPIRConfig(*(v105 + 56) + *(v120 + 72) * v54, v110, type metadata accessor for AMDPbHEConfig);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetMR);
    v64 = *(v63 + 48);
    v65 = v117;
    *v117 = v61;
    *(v65 + 1) = v60;
    v39 = v65;
    outlined init with take of AMDPbPIRConfig(v62, &v65[v64], type metadata accessor for AMDPbHEConfig);
    (*(*(v63 - 8) + 56))(v39, 0, 1, v63);

    v14 = v53;
LABEL_19:
    v66 = v39;
    v67 = v114;
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v66, v114, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMR);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetMR);
    v69 = (*(*(v68 - 8) + 48))(v67, 1, v68) == 1;
    result = v69;
    if (v69)
    {
      return result;
    }

    v118 = v69;
    v70 = *(v68 + 48);
    v71 = v67;
    v72 = *v67;
    v73 = v116;
    v74 = v71[1];
    outlined init with take of AMDPbPIRConfig(v71 + v70, v48, type metadata accessor for AMDPbHEConfig);
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v74);
    LOBYTE(v72) = v76;

    if ((v72 & 1) == 0)
    {
      goto LABEL_39;
    }

    v77 = v121;
    outlined init with copy of AMDPbPIRConfig(*(v73 + 56) + *(v120 + 72) * v75, v121, type metadata accessor for AMDPbHEConfig);
    v78 = *(v113 + 48);
    v79 = v115;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v77, v115, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v48, v79 + v78, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    v80 = *v108;
    if ((*v108)(v79, 1, v14) == 1)
    {
      v49 = v80(v79 + v78, 1, v14);
      v47 = v106;
      if (v49 != 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v81 = v107;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v79, v107, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
      if (v80(v79 + v78, 1, v14) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v48 = v109;
LABEL_33:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v79, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
        goto LABEL_38;
      }

      v82 = v79 + v78;
      v83 = v112;
      outlined init with take of AMDPbPIRConfig(v82, v112, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      v84 = v104;
      v85 = *(v103 + 48);
      outlined init with copy of AMDPbPIRConfig(v81, v104, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      v86 = v84;
      outlined init with copy of AMDPbPIRConfig(v83, v84 + v85, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v102;
        outlined init with copy of AMDPbPIRConfig(v84, v102, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v47 = v106;
        if (EnumCaseMultiPayload != 1)
        {
          v96 = type metadata accessor for AMDPbPECConfig;
          goto LABEL_36;
        }

        v89 = v99;
        outlined init with take of AMDPbPIRConfig(v86 + v85, v99, type metadata accessor for AMDPbPECConfig);
        v90 = specialized static AMDPbPECConfig.== infix(_:_:)(v87, v89);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v89, type metadata accessor for AMDPbPECConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v87, type metadata accessor for AMDPbPECConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v86, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v91 = v107;
        if ((v90 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v87 = v101;
        outlined init with copy of AMDPbPIRConfig(v84, v101, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v92 = swift_getEnumCaseMultiPayload();
        v47 = v106;
        if (v92 == 1)
        {
          v96 = type metadata accessor for AMDPbPIRConfig;
LABEL_36:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v87, v96);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v84, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
          v91 = v107;
LABEL_37:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v112, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v91, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v115, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
          v48 = v109;
LABEL_38:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v121, type metadata accessor for AMDPbHEConfig);
LABEL_39:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AMDPbHEConfig);
          return 0;
        }

        v93 = v98;
        outlined init with take of AMDPbPIRConfig(v84 + v85, v98, type metadata accessor for AMDPbPIRConfig);
        v94 = specialized static AMDPbPIRConfig.== infix(_:_:)(v87, v93);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v93, type metadata accessor for AMDPbPIRConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v87, type metadata accessor for AMDPbPIRConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v84, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v91 = v107;
        if ((v94 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v112, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v91, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      v79 = v115;
      v48 = v109;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v79, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    v50 = *(v111 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v51 = v121;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v51, type metadata accessor for AMDPbHEConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AMDPbHEConfig);
    v39 = v117;
    v46 = v119;
    result = v118;
    if ((v52 & 1) == 0)
    {
      return result;
    }
  }

  if (v47 <= v42 + 1)
  {
    v55 = v42 + 1;
  }

  else
  {
    v55 = v47;
  }

  v56 = v55 - 1;
  while (1)
  {
    v57 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v57 >= v47)
    {
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetMR);
      (*(*(v95 - 8) + 56))(v39, 1, 1, v95);
      v119 = 0;
      v42 = v56;
      goto LABEL_19;
    }

    v58 = *(v100 + 8 * v57);
    ++v42;
    if (v58)
    {
      v53 = v14;
      v119 = (v58 - 1) & v58;
      v54 = __clz(__rbit64(v58)) | (v57 << 6);
      v42 = v57;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML15AspireApiConfigVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v121 - v14;
  v139 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v16 = *(v139 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v139);
  v128 = (&v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v121 - v21;
  MEMORY[0x28223BE20](v20);
  v137 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v121 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR);
  v27 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v143 = &v121 - v28;
  v136 = type metadata accessor for AspireApiConfig(0);
  v146 = *(v136 - 8);
  v29 = *(v146 + 64);
  v30 = MEMORY[0x28223BE20](v136);
  v32 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v145 = &v121 - v34;
  MEMORY[0x28223BE20](v33);
  v135 = &v121 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetSgMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetSgMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v140 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v38);
  v144 = (&v121 - v41);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v126 = v12;
  v122 = v8;
  v125 = v11;
  v123 = v7;
  v134 = a2;
  v42 = 0;
  v129 = 0;
  v43 = *(a1 + 64);
  v124 = a1 + 64;
  v44 = 1 << *(a1 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v133 = (v16 + 48);
  v48 = v145;
  v130 = v47;
  v131 = a1;
  v127 = v15;
  while (v46)
  {
    v49 = v26;
    v50 = v32;
    v142 = (v46 - 1) & v46;
    v51 = __clz(__rbit64(v46)) | (v42 << 6);
LABEL_16:
    v57 = *(a1 + 56);
    v58 = (*(a1 + 48) + 16 * v51);
    v60 = *v58;
    v59 = v58[1];
    v61 = v135;
    outlined init with copy of AMDPbPIRConfig(v57 + *(v146 + 72) * v51, v135, type metadata accessor for AspireApiConfig);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
    v63 = *(v62 + 48);
    v64 = v140;
    *v140 = v60;
    v64[1] = v59;
    v65 = v64;
    outlined init with take of AMDPbPIRConfig(v61, v64 + v63, type metadata accessor for AspireApiConfig);
    (*(*(v62 - 8) + 56))(v65, 0, 1, v62);

    v54 = v144;
LABEL_17:
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v65, v54, &_sSS3key_8CipherML15AspireApiConfigV5valuetSgMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetSgMR);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
    v67 = (*(*(v66 - 8) + 48))(v54, 1, v66) == 1;
    result = v67;
    if (v67)
    {
      return result;
    }

    v141 = v67;
    v68 = v50;
    v26 = v49;
    v69 = *(v66 + 48);
    v70 = *v54;
    v71 = v54[1];
    outlined init with take of AMDPbPIRConfig(v54 + v69, v48, type metadata accessor for AspireApiConfig);
    v72 = v134;
    v73 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
    v75 = v74;

    if ((v75 & 1) == 0)
    {
      goto LABEL_76;
    }

    outlined init with copy of AMDPbPIRConfig(*(v72 + 56) + *(v146 + 72) * v73, v68, type metadata accessor for AspireApiConfig);
    v76 = *(v138 + 48);
    v77 = v143;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v68, v143, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v48, v77 + v76, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v78 = *v133;
    v79 = v139;
    if ((*v133)(v77, 1, v139) == 1)
    {
      v80 = v78(v77 + v76, 1, v79);
      v48 = v145;
      v32 = v68;
      if (v80 != 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v77, v49, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
      v81 = v78(v77 + v76, 1, v79);
      v82 = v127;
      if (v81 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireApiConfig.OneOf_Config);
        v48 = v145;
        v32 = v68;
LABEL_66:
        v119 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd;
        v120 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR;
        goto LABEL_74;
      }

      v83 = v137;
      outlined init with take of AMDPbPIRConfig(v77 + v76, v137, type metadata accessor for AspireApiConfig.OneOf_Config);
      v84 = *(v126 + 48);
      outlined init with copy of AMDPbPIRConfig(v49, v82, type metadata accessor for AspireApiConfig.OneOf_Config);
      outlined init with copy of AMDPbPIRConfig(v83, v82 + v84, type metadata accessor for AspireApiConfig.OneOf_Config);
      v32 = v68;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = v128;
        outlined init with copy of AMDPbPIRConfig(v82, v128, type metadata accessor for AspireApiConfig.OneOf_Config);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v137, type metadata accessor for AspireApiConfig.OneOf_Config);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v85, type metadata accessor for AspireApiPECConfig);
          v48 = v145;
LABEL_69:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
          goto LABEL_73;
        }

        v86 = v123;
        outlined init with take of AMDPbPIRConfig(v82 + v84, v123, type metadata accessor for AspireApiPECConfig);
        v87 = specialized static AspireApiPECConfig.== infix(_:_:)(v85, v86);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v86, type metadata accessor for AspireApiPECConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v137, type metadata accessor for AspireApiConfig.OneOf_Config);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v85, type metadata accessor for AspireApiPECConfig);
        if ((v87 & 1) == 0)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v82, type metadata accessor for AspireApiConfig.OneOf_Config);
          goto LABEL_72;
        }
      }

      else
      {
        v88 = v132;
        outlined init with copy of AMDPbPIRConfig(v82, v132, type metadata accessor for AspireApiConfig.OneOf_Config);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v48 = v145;
        if (EnumCaseMultiPayload == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v137, type metadata accessor for AspireApiConfig.OneOf_Config);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v88, type metadata accessor for AspireApiPIRConfig);
          goto LABEL_69;
        }

        v90 = v82 + v84;
        v91 = v125;
        outlined init with take of AMDPbPIRConfig(v90, v125, type metadata accessor for AspireApiPIRConfig);
        v92 = *(v122 + 20);
        v93 = *(v88 + v92);
        v94 = *(v91 + v92);
        if (v93 != v94)
        {

          v95 = closure #1 in static AspireApiPIRConfig.== infix(_:_:)(v93, v94);

          if (!v95)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v137, type metadata accessor for AspireApiConfig.OneOf_Config);
            v97 = v125;
            v96 = v132;
LABEL_71:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v97, type metadata accessor for AspireApiPIRConfig);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v96, type metadata accessor for AspireApiPIRConfig);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v82, type metadata accessor for AspireApiConfig.OneOf_Config);
            v77 = v143;
LABEL_72:
            v48 = v145;
LABEL_73:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireApiConfig.OneOf_Config);
            v119 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd;
            v120 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR;
LABEL_74:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, v119, v120);
LABEL_75:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v32, type metadata accessor for AspireApiConfig);
LABEL_76:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireApiConfig);
            return 0;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v96 = v132;
        v97 = v125;
        v98 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v137, type metadata accessor for AspireApiConfig.OneOf_Config);
        if ((v98 & 1) == 0)
        {
          goto LABEL_71;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config(v97, type metadata accessor for AspireApiPIRConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v96, type metadata accessor for AspireApiPIRConfig);
        v77 = v143;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v82, type metadata accessor for AspireApiConfig.OneOf_Config);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireApiConfig.OneOf_Config);
      v48 = v145;
    }

    result = outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v99 = v136;
    v100 = *(v136 + 20);
    v102 = *&v32[v100];
    v101 = *&v32[v100 + 8];
    v103 = (v48 + v100);
    v104 = *v103;
    v105 = v103[1];
    v106 = v101 >> 62;
    v107 = v105 >> 62;
    if (v101 >> 62 == 3)
    {
      v108 = 0;
      if (!v102 && v101 == 0xC000000000000000 && v105 >> 62 == 3)
      {
        v108 = 0;
        if (!v104 && v105 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }
    }

    else if (v106)
    {
      if (v106 == 1)
      {
        LODWORD(v108) = HIDWORD(v102) - v102;
        if (__OFSUB__(HIDWORD(v102), v102))
        {
          goto LABEL_83;
        }

        v108 = v108;
      }

      else
      {
        v111 = *(v102 + 16);
        v110 = *(v102 + 24);
        v112 = __OFSUB__(v110, v111);
        v108 = v110 - v111;
        if (v112)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v108 = BYTE6(v101);
    }

    if (v107 > 1)
    {
      if (v107 != 2)
      {
        if (v108)
        {
          goto LABEL_75;
        }

        goto LABEL_61;
      }

      v115 = *(v104 + 16);
      v114 = *(v104 + 24);
      v112 = __OFSUB__(v114, v115);
      v113 = v114 - v115;
      if (v112)
      {
        goto LABEL_81;
      }
    }

    else if (v107)
    {
      LODWORD(v113) = HIDWORD(v104) - v104;
      if (__OFSUB__(HIDWORD(v104), v104))
      {
        goto LABEL_80;
      }

      v113 = v113;
    }

    else
    {
      v113 = BYTE6(v105);
    }

    if (v108 != v113)
    {
      goto LABEL_75;
    }

    if (v108 >= 1)
    {
      outlined copy of Data._Representation(v104, v105);
      v116 = v129;
      v117 = specialized Data.withUnsafeBytes<A>(_:)(v102, v101, v104, v105);
      v129 = v116;
      if ((v117 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

LABEL_61:
    if (v32[*(v99 + 24)] != *(v48 + *(v99 + 24)))
    {
      goto LABEL_75;
    }

    v118 = *(v99 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    LOBYTE(v118) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v32, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireApiConfig);
    v47 = v130;
    a1 = v131;
    v46 = v142;
    result = v141;
    if ((v118 & 1) == 0)
    {
      return result;
    }
  }

  if (v47 <= v42 + 1)
  {
    v52 = v42 + 1;
  }

  else
  {
    v52 = v47;
  }

  v53 = v52 - 1;
  v54 = v144;
  while (1)
  {
    v55 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v55 >= v47)
    {
      v49 = v26;
      v50 = v32;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
      v65 = v140;
      (*(*(v109 - 8) + 56))(v140, 1, 1, v109);
      v142 = 0;
      v42 = v53;
      goto LABEL_17;
    }

    v56 = *(v124 + 8 * v55);
    ++v42;
    if (v56)
    {
      v49 = v26;
      v50 = v32;
      v142 = (v56 - 1) & v56;
      v51 = __clz(__rbit64(v56)) | (v55 << 6);
      v42 = v55;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x22AA5F1C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x22AA5F1C0]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t specialized static AMDPbPIRShardConfig.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AMDPbPIRShardConfig(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AMDPbPECShardReply.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for AMDPbPECShardReply(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      outlined init with take of AMDPbPIRConfig(&v16[v18], v28, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      v21 = static AspireSimilaritySerializedCiphertextMatrix.== infix(_:_:)(v11, v20);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v20, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v24 = 0;
      return v24 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
LABEL_8:
  v22 = v29;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*v29, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v22[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(v27 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t specialized static AMDPbEvaluationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for AMDPbEvaluationKey(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v25, v24, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27, &v24[v26], &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AMDPbEvaluationKeyMetadata);
LABEL_9:
    v35 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd;
    v36 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR;
LABEL_15:
    v40 = v24;
LABEL_16:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, v35, v36);
    goto LABEL_17;
  }

  v37 = v50;
  outlined init with take of AMDPbPIRConfig(&v24[v26], v50, type metadata accessor for AMDPbEvaluationKeyMetadata);
  if (*v19 != *v37 || (specialized static Data.== infix(_:_:)(v19[1], v19[2], v37[1], v37[2]) & 1) == 0)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v37, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AMDPbEvaluationKeyMetadata);
    v35 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd;
    v36 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR;
    goto LABEL_15;
  }

  v38 = *(v12 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config(v37, type metadata accessor for AMDPbEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AMDPbEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  v30 = *(v51 + 24);
  v31 = *(v52 + 48);
  v32 = v55;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v30, v55, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v30, v32 + v31, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v33 = v54;
  v34 = *(v53 + 48);
  if (v34(v32, 1, v54) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }

    goto LABEL_21;
  }

  v43 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32, v49, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_21:
    v35 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd;
    v36 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR;
    v40 = v32;
    goto LABEL_16;
  }

  v44 = v32 + v31;
  v45 = v48;
  outlined init with take of AMDPbPIRConfig(v44, v48, type metadata accessor for AspireHeSerializedEvaluationKey);
  v46 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v43, v45);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AspireHeSerializedEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireHeSerializedEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v46)
  {
    goto LABEL_23;
  }

LABEL_17:
  v41 = 0;
  return v41 & 1;
}

uint64_t specialized static AMDPbHEKeyStatus.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for AMDPbHEKeyStatus(0);
  v18 = *(v17 + 28);
  v19 = *(v13 + 48);
  v25 = v17;
  v26 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v18, v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v18, &v16[v19], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v16[v19], v8, type metadata accessor for AspireHeEvaluationKeyConfig);
      v23 = static AspireHeEvaluationKeyConfig.== infix(_:_:)(v12, v8);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AspireHeEvaluationKeyConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AspireHeEvaluationKeyConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
LABEL_11:
  if (v26[1] == a2[1] && v26[2] == a2[2] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v24 = *(v25 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static AMDPbPECConfig.== infix(_:_:)(void *a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v49 - v10;
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v53 = type metadata accessor for AMDPbPECConfig(0);
  v25 = *(v53 + 36);
  v26 = *(v21 + 56);
  v57 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v25, v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v27 = v58;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58 + v25, &v24[v26], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v30 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v31 = v24;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, v29, v30);
    goto LABEL_27;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  outlined init with take of AMDPbPIRConfig(&v24[v26], v15, type metadata accessor for AspireHeEncryptionParameters);
  v32 = static AspireHeEncryptionParameters.== infix(_:_:)(v19, v15);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v15, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  v33 = v57;
  if (*v57 != *v27)
  {
    goto LABEL_27;
  }

  v34 = v53;
  v35 = *(v53 + 40);
  v36 = *(v52 + 48);
  v37 = v56;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v57 + v35, v56, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27 + v35, v37 + v36, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v38 = v55;
  v39 = *(v54 + 48);
  if (v39(v37, 1, v55) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v40 = v51;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v51, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_15:
    v29 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v30 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v31 = v37;
    goto LABEL_7;
  }

  v41 = v37 + v36;
  v42 = v50;
  outlined init with take of AMDPbPIRConfig(v41, v50, type metadata accessor for AspireSimilarityPlaintextPacking);
  v43 = static AspireSimilarityPlaintextPacking.== infix(_:_:)(v40, v42);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v42, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (*(v33 + 2) != *(v27 + 8))
  {
    goto LABEL_27;
  }

  v44 = *(v27 + 24);
  if (v33[3])
  {
    if (*(v27 + 24))
    {
      goto LABEL_25;
    }

    v45 = 0;
LABEL_24:
    if (v45 == *(v27 + 16))
    {
      goto LABEL_25;
    }

LABEL_27:
    v47 = 0;
    return v47 & 1;
  }

  v45 = v33[2];
  if ((*(v27 + 24) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v45)
  {
    goto LABEL_27;
  }

LABEL_25:
  if ((specialized static Data.== infix(_:_:)(v33[4], v33[5], *(v27 + 32), *(v27 + 40)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v46 = *(v34 + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v47 & 1;
}

uint64_t specialized static AMDPbPECQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKey(0);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd, &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - v13;
  v14 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - v25;
  v27 = *a1;
  v28 = *a2;
  v29 = *(*a1 + 16);
  if (v29 != *(*a2 + 16))
  {
    goto LABEL_21;
  }

  if (v29 && v27 != v28)
  {
    v30 = (v27 + 32);
    v31 = (v28 + 32);
    while (*v30 == *v31)
    {
      ++v30;
      ++v31;
      if (!--v29)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_21;
  }

LABEL_7:
  v57 = v7;
  v32 = type metadata accessor for AMDPbPECQuery(0);
  v61 = a2;
  v33 = *(v32 + 28);
  v34 = a1;
  v35 = *(v23 + 48);
  v58 = v32;
  v59 = v34;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34 + v33, v26, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v61 + v33, &v26[v35], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v36 = *(v15 + 48);
  if (v36(v26, 1, v14) == 1)
  {
    if (v36(&v26[v35], 1, v14) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    v37 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd;
    v38 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR;
    v39 = v26;
LABEL_20:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, v37, v38);
    goto LABEL_21;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v22, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  if (v36(&v26[v35], 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    goto LABEL_12;
  }

  outlined init with take of AMDPbPIRConfig(&v26[v35], v18, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v40 = specialized static AspireSimilaritySerializedCiphertextMatrix.== infix(_:_:)(v22, v18);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v42 = v58;
  v41 = v59;
  v43 = *(v58 + 32);
  v44 = *(v11 + 48);
  v45 = v64;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v59 + v43, v64, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v46 = v61 + v43;
  v47 = v61;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46, v45 + v44, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v48 = v63;
  v49 = *(v62 + 48);
  if (v49(v45, 1, v63) != 1)
  {
    v50 = v60;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v45, v60, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    if (v49(v45 + v44, 1, v48) != 1)
    {
      v53 = v45 + v44;
      v54 = v57;
      outlined init with take of AMDPbPIRConfig(v53, v57, type metadata accessor for AMDPbEvaluationKey);
      v55 = specialized static AMDPbEvaluationKey.== infix(_:_:)(v50, v54);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v54, type metadata accessor for AMDPbEvaluationKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v50, type metadata accessor for AMDPbEvaluationKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
      if ((v55 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v50, type metadata accessor for AMDPbEvaluationKey);
    goto LABEL_19;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
LABEL_19:
    v37 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd;
    v38 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR;
    v39 = v45;
    goto LABEL_20;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
LABEL_24:
  if (specialized static Data.== infix(_:_:)(v41[1], v41[2], v47[1], v47[2]))
  {
    v56 = *(v42 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v51 & 1;
  }

LABEL_21:
  v51 = 0;
  return v51 & 1;
}

uint64_t specialized static AMDPbHEConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v16, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v17[v18], &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AMDPbHEConfig(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v12, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEConfig.OneOf_Config);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AMDPbPIRConfig(&v17[v18], v8, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  v21 = specialized static AMDPbHEConfig.OneOf_Config.== infix(_:_:)(v12, v8);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AMDPbPIRConfig.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd, &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v49 - v10;
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v53 = type metadata accessor for AMDPbPIRConfig(0);
  v25 = *(v53 + 36);
  v26 = *(v21 + 56);
  v57 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v25, v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v27 = v58;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58 + v25, &v24[v26], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v30 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v31 = v24;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, v29, v30);
    goto LABEL_30;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  outlined init with take of AMDPbPIRConfig(&v24[v26], v15, type metadata accessor for AspireHeEncryptionParameters);
  v32 = static AspireHeEncryptionParameters.== infix(_:_:)(v19, v15);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v15, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v19, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v33 = v57;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML19AMDPbPIRShardConfigV_Tt1g5(*v57, *v27) & 1) == 0)
  {
    goto LABEL_30;
  }

  v34 = v53;
  v35 = *(v53 + 40);
  v36 = *(v52 + 48);
  v37 = v56;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33 + v35, v56, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27 + v35, v37 + v36, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v38 = v55;
  v39 = *(v54 + 48);
  if (v39(v37, 1, v55) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v40 = v51;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v51, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspirePirKeywordPirParameters);
LABEL_15:
    v29 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd;
    v30 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR;
    v31 = v37;
    goto LABEL_7;
  }

  v41 = v37 + v36;
  v42 = v50;
  outlined init with take of AMDPbPIRConfig(v41, v50, type metadata accessor for AspirePirKeywordPirParameters);
  v43 = static AspirePirKeywordPirParameters.== infix(_:_:)(v40, v42);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v42, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v44 = v33[1];
  v45 = *(v27 + 8);
  if (*(v27 + 16) != 1)
  {
    if (v44 == v45)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!v45)
  {
    if (!v44)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (v45 == 1)
  {
    if (v44 == 1)
    {
      goto LABEL_27;
    }

LABEL_30:
    v47 = 0;
    return v47 & 1;
  }

  if (v44 != 2)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v33[3] != *(v27 + 24) || (specialized static Data.== infix(_:_:)(v33[4], v33[5], *(v27 + 32), *(v27 + 40)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v46 = *(v34 + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v47 & 1;
}

uint64_t specialized static AMDPbHEConfig.OneOf_Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AMDPbPIRConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of AMDPbPIRConfig(a1, &v31 - v22, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  outlined init with copy of AMDPbPIRConfig(a2, &v23[v24], type metadata accessor for AMDPbHEConfig.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AMDPbPIRConfig(v23, v16, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AMDPbPIRConfig(&v23[v24], v7, type metadata accessor for AMDPbPECConfig);
      v25 = specialized static AMDPbPECConfig.== infix(_:_:)(v16, v7);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbPECConfig);
      v26 = v16;
      v27 = type metadata accessor for AMDPbPECConfig;
LABEL_9:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v26, v27);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v23, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      return v25 & 1;
    }

    v28 = type metadata accessor for AMDPbPECConfig;
    v29 = v16;
  }

  else
  {
    outlined init with copy of AMDPbPIRConfig(v23, v18, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v23[v24], v11, type metadata accessor for AMDPbPIRConfig);
      v25 = specialized static AMDPbPIRConfig.== infix(_:_:)(v18, v11);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AMDPbPIRConfig);
      v26 = v18;
      v27 = type metadata accessor for AMDPbPIRConfig;
      goto LABEL_9;
    }

    v28 = type metadata accessor for AMDPbPIRConfig;
    v29 = v18;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v29, v28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static AMDPbHEReply.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v16, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v17[v18], &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AMDPbHEReply(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v12, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEReply.OneOf_Reply);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AMDPbPIRConfig(&v17[v18], v8, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  v21 = specialized static AMDPbHEReply.OneOf_Reply.== infix(_:_:)(v12, v8);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AMDPbHEReply.OneOf_Reply.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for AMDPbPECReply(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for AMDPbPIRReply(0);
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v32 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v32 - v20;
  v22 = *(v19 + 56);
  outlined init with copy of AMDPbPIRConfig(a1, &v32 - v20, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined init with copy of AMDPbPIRConfig(a2, &v21[v22], type metadata accessor for AMDPbHEReply.OneOf_Reply);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AMDPbPIRConfig(v21, v14, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AMDPbPIRConfig(&v21[v22], v6, type metadata accessor for AMDPbPECReply);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbPECShardReplyV_Tt1g5(*v14, *v6))
      {
        v23 = *(v33 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v24 = type metadata accessor for AMDPbPECReply;
          outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbPECReply);
          v25 = v14;
LABEL_13:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v25, v24);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AMDPbHEReply.OneOf_Reply);
          return 1;
        }
      }

      v30 = type metadata accessor for AMDPbPECReply;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbPECReply);
      v31 = v14;
LABEL_16:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v31, v30);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AMDPbHEReply.OneOf_Reply);
      return 0;
    }

    v26 = type metadata accessor for AMDPbPECReply;
    v27 = v14;
  }

  else
  {
    outlined init with copy of AMDPbPIRConfig(v21, v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v21[v22], v9, type metadata accessor for AMDPbPIRReply);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedCiphertextVecV_Tt1g5(*v16, *v9))
      {
        v28 = *(v32 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v24 = type metadata accessor for AMDPbPIRReply;
          outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AMDPbPIRReply);
          v25 = v16;
          goto LABEL_13;
        }
      }

      v30 = type metadata accessor for AMDPbPIRReply;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AMDPbPIRReply);
      v31 = v16;
      goto LABEL_16;
    }

    v26 = type metadata accessor for AMDPbPIRReply;
    v27 = v16;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v27, v26);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
  return 0;
}

uint64_t specialized static AMDPbHEQuery.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for AMDPbHEQuery(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
LABEL_12:
      v23 = *(v26 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEQuery.OneOf_Query);
LABEL_9:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of AMDPbPIRConfig(&v16[v18], v25, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  v22 = specialized static AMDPbHEQuery.OneOf_Query.== infix(_:_:)(v12, v21);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AMDPbPIRQuery.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKey(0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v51 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd, &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v13 = &v51 - v12;
  v14 = type metadata accessor for AspirePirEncryptedIndices(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v51 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd, &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v53 = v13;
  v51 = v7;
  v52 = type metadata accessor for AMDPbPIRQuery(0);
  v27 = *(v52 + 28);
  v28 = a1;
  v29 = *(v23 + 48);
  v54 = v28;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v27, v26, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v30 = a2 + v27;
  v31 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, &v26[v29], &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) == 1)
  {
    if (v32(&v26[v29], 1, v14) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v22, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (v32(&v26[v29], 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspirePirEncryptedIndices);
LABEL_10:
    v40 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd;
    v41 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR;
LABEL_16:
    v43 = v26;
LABEL_17:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, v40, v41);
    goto LABEL_18;
  }

  outlined init with take of AMDPbPIRConfig(&v26[v29], v18, type metadata accessor for AspirePirEncryptedIndices);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v22, *v18) & 1) == 0 || v22[1] != v18[1])
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspirePirEncryptedIndices);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspirePirEncryptedIndices);
    v40 = &_s8CipherML25AspirePirEncryptedIndicesVSgMd;
    v41 = &_s8CipherML25AspirePirEncryptedIndicesVSgMR;
    goto LABEL_16;
  }

  v42 = *(v14 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v42) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspirePirEncryptedIndices);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspirePirEncryptedIndices);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 32);
  v36 = *(v56 + 48);
  v37 = v54;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v54 + v35, v53, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31 + v35, v33 + v36, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v38 = v58;
  v39 = *(v57 + 48);
  if (v39(v33, 1, v58) != 1)
  {
    v46 = v55;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33, v55, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    if (v39(v33 + v36, 1, v38) != 1)
    {
      v47 = v33 + v36;
      v48 = v51;
      outlined init with take of AMDPbPIRConfig(v47, v51, type metadata accessor for AMDPbEvaluationKey);
      v49 = specialized static AMDPbEvaluationKey.== infix(_:_:)(v46, v48);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AMDPbEvaluationKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AMDPbEvaluationKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
      if ((v49 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AMDPbEvaluationKey);
    goto LABEL_22;
  }

  if (v39(v33 + v36, 1, v38) != 1)
  {
LABEL_22:
    v40 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd;
    v41 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR;
    v43 = v33;
    goto LABEL_17;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
LABEL_24:
  if (specialized static Data.== infix(_:_:)(*(v37 + 1), *(v37 + 2), *(v31 + 1), *(v31 + 2)))
  {
    v50 = *(v34 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v44 & 1;
  }

LABEL_18:
  v44 = 0;
  return v44 & 1;
}

uint64_t specialized static AMDPbHEQuery.OneOf_Query.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECQuery(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AMDPbPIRQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of AMDPbPIRConfig(a1, &v31 - v22, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  outlined init with copy of AMDPbPIRConfig(a2, &v23[v24], type metadata accessor for AMDPbHEQuery.OneOf_Query);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AMDPbPIRConfig(v23, v16, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AMDPbPIRConfig(&v23[v24], v7, type metadata accessor for AMDPbPECQuery);
      v25 = specialized static AMDPbPECQuery.== infix(_:_:)(v16, v7);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbPECQuery);
      v26 = v16;
      v27 = type metadata accessor for AMDPbPECQuery;
LABEL_9:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v26, v27);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v23, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      return v25 & 1;
    }

    v28 = type metadata accessor for AMDPbPECQuery;
    v29 = v16;
  }

  else
  {
    outlined init with copy of AMDPbPIRConfig(v23, v18, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v23[v24], v11, type metadata accessor for AMDPbPIRQuery);
      v25 = specialized static AMDPbPIRQuery.== infix(_:_:)(v18, v11);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AMDPbPIRQuery);
      v26 = v18;
      v27 = type metadata accessor for AMDPbPIRQuery;
      goto LABEL_9;
    }

    v28 = type metadata accessor for AMDPbPIRQuery;
    v29 = v18;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v29, v28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
  v25 = 0;
  return v25 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML13AMDPbHEConfigVtMd, &_sSS_8CipherML13AMDPbHEConfigVtMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML13AMDPbHEConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML13AMDPbHEConfigVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_sSS_8CipherML13AMDPbHEConfigVtMd, &_sSS_8CipherML13AMDPbHEConfigVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AMDPbHEConfig(0);
      result = outlined init with take of AMDPbPIRConfig(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for AMDPbHEConfig);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined destroy of AMDPbHEConfig.OneOf_Config(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AMDPbPIRConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AMDPbPIRConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AMDPbHEConfig.OneOf_Config?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AMDPbHEConfigsReply(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm()
{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric()
{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

uint64_t type metadata completion function for AMDPbFetchHEConfigs()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AMDPbHEConfigsReply()
{
  type metadata accessor for [String : AMDPbHEConfig]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for [AMDPbHEKeyStatus], type metadata accessor for AMDPbHEKeyStatus, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [AMDPbHEKeyStatus](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for AMDPbHEKeyStatus()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?, type metadata accessor for AspireHeEvaluationKeyConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AMDPbPIRConfig()
{
  type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for [AMDPbPIRShardConfig], type metadata accessor for AMDPbPIRShardConfig, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspirePirKeywordPirParameters?, type metadata accessor for AspirePirKeywordPirParameters, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AMDPbPIRShardConfig()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AMDPbPECConfig()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AMDPbHEQuery()
{
  type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbHEQuery.OneOf_Query?, type metadata accessor for AMDPbHEQuery.OneOf_Query, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AMDPbHEConfig.OneOf_Config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_53Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for AMDPbEvaluationKey()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbEvaluationKeyMetadata?, type metadata accessor for AMDPbEvaluationKeyMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeSerializedEvaluationKey?, type metadata accessor for AspireHeSerializedEvaluationKey, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AMDPbEvaluationKeyMetadata()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AMDPbPIRQuery()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspirePirEncryptedIndices?, type metadata accessor for AspirePirEncryptedIndices, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbEvaluationKey?, type metadata accessor for AMDPbEvaluationKey, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AMDPbPECQuery()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt32]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireSimilaritySerializedCiphertextMatrix?, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbEvaluationKey?, type metadata accessor for AMDPbEvaluationKey, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AMDPbPECShardReply()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [Data]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireSimilaritySerializedCiphertextMatrix?, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [UInt64](uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_104Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_105Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for AMDPbHEConfig(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for [AMDPbHEKeyStatus](319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AspireApiConfig(0);
      result = outlined init with take of AMDPbPIRConfig(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for AspireApiConfig);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say8CipherML10TokenCacheC06CachedE0VGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMd, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Date();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16CryptoKitPrivate2HEO13SecurityLevelO_SayAE10RlweParamsOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMd, &_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16CryptoKitPrivate2HEO13SecurityLevelOSayAE10RlweParamsOGGMd, &_ss18_DictionaryStorageCy16CryptoKitPrivate2HEO13SecurityLevelOSayAE10RlweParamsOGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMd, &_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for HE.SecurityLevel();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML12UseCaseGroupVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML12UseCaseGroupVtMd, &_sSS_8CipherML12UseCaseGroupVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_sSS_8CipherML12UseCaseGroupVtMd, &_sSS_8CipherML12UseCaseGroupVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for UseCaseGroup();
      result = outlined init with take of AMDPbPIRConfig(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for UseCaseGroup);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ScTyyts5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTyyts5Error_pGGMd, &_ss18_DictionaryStorageCySSScTyyts5Error_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_8CipherML9SecretKeyVtMd, &_s10Foundation4DataV_8CipherML9SecretKeyVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_s10Foundation4DataV_8CipherML9SecretKeyVtMd, &_s10Foundation4DataV_8CipherML9SecretKeyVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for SecretKey();
      result = outlined init with take of AMDPbPIRConfig(v6 + v9, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for SecretKey);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_AESgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVAESgGMd, &_ss18_DictionaryStorageCy10Foundation4DataVAESgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data?(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
      result = outlined init with take of AMDPbPIRConfig(v6 + v9, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for AspireHeEvaluationKeyConfig);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMd, &_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMd, &_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMd, &_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMR);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
      result = outlined init with take of AMDPbPIRConfig(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t outlined destroy of AMDPbHEConfig.OneOf_Config?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of AMDPbHEConfig.OneOf_Config?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t PegasusNetworkingError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PegasusNetworkingError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PegasusNetworkingError(v1, v5, type metadata accessor for PegasusNetworkingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *v5;
      v8 = v5[1];
      v16 = 0;
      v17 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v16 = 0xD000000000000015;
      v17 = 0x8000000225035AA0;
      MEMORY[0x22AA60A80](v7, v8);

      MEMORY[0x22AA60A80](39, 0xE100000000000000);
      return v16;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    v10 = type metadata accessor for ProxyError();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 32))(v14, v5, v10);
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    MEMORY[0x22AA60A80](0x6520726576726573, 0xEE002720726F7272);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x22AA60A80](39, 0xE100000000000000);
    v15 = v16;
    (*(v11 + 8))(v14, v10);
    return v15;
  }
}

uint64_t type metadata accessor for PegasusNetworkingError()
{
  result = type metadata singleton initialization cache for PegasusNetworkingError;
  if (!type metadata singleton initialization cache for PegasusNetworkingError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PegasusNetworking.networkDelegationConfig.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

void *PegasusNetworking.__allocating_init(networkDelegationConfig:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[15] = a1;
  v4[16] = a2;
  v5 = type metadata accessor for PegasusProxyForEncryptedPQAGeo();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v4[14] = PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)();
  return v4;
}

void *PegasusNetworking.init(networkDelegationConfig:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  v3[15] = a1;
  v3[16] = a2;
  v6 = type metadata accessor for PegasusProxyForEncryptedPQAGeo();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v3[14] = PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)();
  return v3;
}

uint64_t PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](PegasusNetworking.fetchConfigs(useCases:userId:), v2, 0);
}