NightingaleTraining::Cycle __swiftcall Cycle.init(start:end:)(Swift::Int start, Swift::Int end)
{
  result.end = end;
  result.start = start;
  return result;
}

uint64_t Cycle.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v14 = MEMORY[0x25F889340](v5._countAndFlagsBits, v5._object, a1, a2);
  outlined destroy of DefaultStringInterpolation();
  if (v14)
  {

    a5[3] = MEMORY[0x277D83B88];
    *a5 = a3;
  }

  else
  {

    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
    v8 = MEMORY[0x25F889340](v7._countAndFlagsBits, v7._object, a1, a2);
    outlined destroy of DefaultStringInterpolation();

    if (v8)
    {
      a5[3] = MEMORY[0x277D83B88];
      *a5 = a4;
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall Cycle.has(attribute:)(Swift::String attribute)
{
  v14 = attribute;
  v12 = v1;
  v13 = v2;
  v7 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v5 = v3;
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v5[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v8 = MEMORY[0x277D837E0];
  v11 = Set.init(arrayLiteral:)();
  v10 = attribute;
  v9 = MEMORY[0x25F8897F0](&v10, v11, v7, v8);

  return v9 & 1;
}

uint64_t Pregnancy.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(void)@<X3>, uint64_t *a5@<X8>)
{

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("endDay", 6uLL, 1);
  v40 = MEMORY[0x25F889340](v5._countAndFlagsBits, v5._object, a1, a2);
  outlined destroy of DefaultStringInterpolation();
  if (v40)
  {

    result = a4[2](a3);
    a5[3] = MEMORY[0x277D83B88];
    *a5 = result;
  }

  else
  {

    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmp", 3uLL, 1);
    v33 = MEMORY[0x25F889340](v7._countAndFlagsBits, v7._object, a1, a2);
    outlined destroy of DefaultStringInterpolation();
    if (v33)
    {

      result = a4[5](a3);
      a5[3] = MEMORY[0x277D83B88];
      *a5 = result;
    }

    else
    {

      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("startDay", 8uLL, 1);
      v32 = MEMORY[0x25F889340](v8._countAndFlagsBits, v8._object, a1, a2);
      outlined destroy of DefaultStringInterpolation();
      if (v32)
      {

        result = a4[1](a3);
        a5[3] = MEMORY[0x277D83B88];
        *a5 = result;
      }

      else
      {

        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchor", 0xBuLL, 1);
        v31 = MEMORY[0x25F889340](v9._countAndFlagsBits, v9._object, a1, a2);
        outlined destroy of DefaultStringInterpolation();
        if (v31)
        {

          result = a4[8](a3);
          a5[3] = MEMORY[0x277D83B88];
          *a5 = result;
        }

        else
        {

          v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpDelta", 8uLL, 1);
          v30 = MEMORY[0x25F889340](v10._countAndFlagsBits, v10._object, a1, a2);
          outlined destroy of DefaultStringInterpolation();
          if (v30)
          {

            v27 = implicit closure #1 in Pregnancy.attribute(for:)(v37, a3, a4);
            v28 = v11;
            v29 = swift_allocObject();
            *(v29 + 16) = v27;
            *(v29 + 24) = v28;
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiycMd);
            result = v29;
            a5[3] = v12;
            *a5 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
            a5[1] = v29;
          }

          else
          {

            v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("duration", 8uLL, 1);
            v26 = MEMORY[0x25F889340](v13._countAndFlagsBits, v13._object, a1, a2);
            outlined destroy of DefaultStringInterpolation();
            if (v26)
            {

              result = a4[13](a3);
              a5[3] = MEMORY[0x277D83B88];
              *a5 = result;
            }

            else
            {

              v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("source", 6uLL, 1);
              v25 = MEMORY[0x25F889340](v14._countAndFlagsBits, v14._object, a1, a2);
              outlined destroy of DefaultStringInterpolation();
              if (v25)
              {

                v15 = a4[6](a3);
                result = PregnancySource.rawValue.getter(v15);
                a5[3] = MEMORY[0x277D837D0];
                *a5 = result;
                a5[1] = v16;
              }

              else
              {

                v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inferredLMP", 0xBuLL, 1);
                v24 = MEMORY[0x25F889340](v17._countAndFlagsBits, v17._object, a1, a2);
                outlined destroy of DefaultStringInterpolation();
                if (v24)
                {

                  result = a4[9](a3);
                  a5[3] = MEMORY[0x277D839B0];
                  *a5 = result & 1;
                }

                else
                {

                  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isFactorType", 0xCuLL, 1);
                  v23 = MEMORY[0x25F889340](v18._countAndFlagsBits, v18._object, a1, a2);
                  outlined destroy of DefaultStringInterpolation();
                  if (v23)
                  {

                    a4[6](a3);
                    result = PregnancySource.isFactorType()();
                    a5[3] = MEMORY[0x277D839B0];
                    *a5 = result & 1;
                  }

                  else
                  {

                    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchorType", 0xFuLL, 1);
                    v22 = MEMORY[0x25F889340](v19._countAndFlagsBits, v19._object, a1, a2);
                    outlined destroy of DefaultStringInterpolation();
                    if (v22)
                    {

                      v20 = a4[7](a3);
                      result = SliceDeltaAnchor.rawValue.getter(v20 & 1);
                      a5[3] = MEMORY[0x277D837D0];
                      *a5 = result;
                      a5[1] = v21;
                    }

                    else
                    {

                      *a5 = 0;
                      a5[1] = 0;
                      a5[2] = 0;
                      a5[3] = 0;
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

  return result;
}

uint64_t (*implicit closure #1 in Pregnancy.attribute(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v10 = a1;
  v19 = a2;
  v14 = a3;
  v21 = partial apply for implicit closure #2 in implicit closure #1 in Pregnancy.attribute(for:);
  v22 = 0;
  v23 = a2;
  v15 = *(a2 - 8);
  v16 = a2 - 8;
  v12 = v15;
  v13 = *(v15 + 64);
  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3);
  v18 = &v10 - v11;
  v22 = v3;
  (*(v15 + 16))(&v10 - v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v4 = swift_allocObject();
  v5 = v14;
  v6 = v15;
  v7 = v17;
  v8 = v18;
  v20 = v4;
  *(v4 + 16) = v19;
  *(v4 + 24) = v5;
  (*(v6 + 32))(v4 + v7, v8);
  return v21;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall Pregnancy.has(attribute:)(Swift::String attribute)
{
  v11 = 0;
  v13 = v1;
  v12 = attribute;
  v6 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v4 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("endDay", 6uLL, 1);
  v4[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmp", 3uLL, 1);
  v4[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("startDay", 8uLL, 1);
  v4[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchor", 0xBuLL, 1);
  v4[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpDelta", 8uLL, 1);
  v4[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("duration", 8uLL, 1);
  v4[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("source", 6uLL, 1);
  v4[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inferredLMP", 0xBuLL, 1);
  v4[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isFactorType", 0xCuLL, 1);
  v4[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchorType", 0xFuLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v7 = MEMORY[0x277D837E0];
  v10 = Set.init(arrayLiteral:)();
  v9 = attribute;
  v8 = MEMORY[0x25F8897F0](&v9, v10, v6, v7);

  return v8 & 1;
}

void HyperParams.attribute(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v316 = a3;
  v326 = a1;
  v327 = a2;
  v489 = 0;
  v490 = 0;
  v488 = 0;
  v318 = type metadata accessor for ShuffleMethod();
  v319 = *(v318 - 8);
  v320 = v318 - 8;
  v322 = *(v319 + 64);
  v321 = (v322 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v327);
  v323 = &v202 - v321;
  v324 = v321;
  v5 = MEMORY[0x28223BE20](v4);
  v325 = &v202 - v324;
  v489 = v6;
  v490 = v5;
  v488 = v3;

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputPostProcThresholds", 0x18uLL, 1);
  v328 = &v487;
  v487 = v7;
  v485 = v326;
  v486 = v327;
  v329 = MEMORY[0x25F889340](v7._countAndFlagsBits, v7._object, v326, v327);
  outlined destroy of DefaultStringInterpolation();
  if (v329)
  {

    v315 = HyperParams.outputPostProcThresholds.getter();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v9 = v316;
    v10 = v8;
    v11 = v315;
    v316[3] = v10;
    *v9 = v11;
  }

  else
  {

    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("latencyBuckets", 0xEuLL, 1);
    v313 = &v484;
    v484 = v12;
    v482 = v326;
    v483 = v327;
    v314 = MEMORY[0x25F889340](v12._countAndFlagsBits, v12._object, v326, v327);
    outlined destroy of DefaultStringInterpolation();
    if (v314)
    {

      v312 = HyperParams.latencyBuckets.getter();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      v14 = v316;
      v15 = v13;
      v16 = v312;
      v316[3] = v15;
      *v14 = v16;
    }

    else
    {

      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPRs", 7uLL, 1);
      v310 = &v481;
      v481 = v17;
      v479 = v326;
      v480 = v327;
      v311 = MEMORY[0x25F889340](v17._countAndFlagsBits, v17._object, v326, v327);
      outlined destroy of DefaultStringInterpolation();
      if (v311)
      {

        v309 = HyperParams.maxFPRs.getter();
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
        v19 = v316;
        v20 = v18;
        v21 = v309;
        v316[3] = v20;
        *v19 = v21;
      }

      else
      {

        v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confusionMatrixNumThresholds", 0x1CuLL, 1);
        v307 = &v478;
        v478 = v22;
        v476 = v326;
        v477 = v327;
        v308 = MEMORY[0x25F889340](v22._countAndFlagsBits, v22._object, v326, v327);
        outlined destroy of DefaultStringInterpolation();
        if (v308)
        {

          v23 = HyperParams.confusionMatrixNumThresholds.getter();
          v24 = v316;
          v316[3] = MEMORY[0x277D83B88];
          *v24 = v23;
        }

        else
        {

          v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPRs", 0xAuLL, 1);
          v305 = &v475;
          v475 = v25;
          v473 = v326;
          v474 = v327;
          v306 = MEMORY[0x25F889340](v25._countAndFlagsBits, v25._object, v326, v327);
          outlined destroy of DefaultStringInterpolation();
          if (v306)
          {

            v304 = HyperParams.targetFPRs.getter();
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
            v27 = v316;
            v28 = v26;
            v29 = v304;
            v316[3] = v28;
            *v27 = v29;
          }

          else
          {

            v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modelOutputNumberOfBuckets", 0x1AuLL, 1);
            v302 = &v472;
            v472 = v30;
            v470 = v326;
            v471 = v327;
            v303 = MEMORY[0x25F889340](v30._countAndFlagsBits, v30._object, v326, v327);
            outlined destroy of DefaultStringInterpolation();
            if (v303)
            {

              v31 = HyperParams.modelOutputNumberOfBuckets.getter();
              v32 = v316;
              v316[3] = MEMORY[0x277D83B88];
              *v32 = v31;
            }

            else
            {

              v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceSize", 9uLL, 1);
              v300 = &v469;
              v469 = v33;
              v467 = v326;
              v468 = v327;
              v301 = MEMORY[0x25F889340](v33._countAndFlagsBits, v33._object, v326, v327);
              outlined destroy of DefaultStringInterpolation();
              if (v301)
              {

                v34 = HyperParams.sliceSize.getter();
                v35 = v316;
                v316[3] = MEMORY[0x277D83B88];
                *v35 = v34;
              }

              else
              {

                v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeContraceptionSlices", 0x1AuLL, 1);
                v298 = &v466;
                v466 = v36;
                v464 = v326;
                v465 = v327;
                v299 = MEMORY[0x25F889340](v36._countAndFlagsBits, v36._object, v326, v327);
                outlined destroy of DefaultStringInterpolation();
                if (v299)
                {

                  v37 = HyperParams.excludeContraceptionSlices.getter();
                  v38 = v316;
                  v316[3] = MEMORY[0x277D839B0];
                  *v38 = v37 & 1;
                }

                else
                {

                  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeOtherPregnancySlices", 0x1BuLL, 1);
                  v296 = &v463;
                  v463 = v39;
                  v461 = v326;
                  v462 = v327;
                  v297 = MEMORY[0x25F889340](v39._countAndFlagsBits, v39._object, v326, v327);
                  outlined destroy of DefaultStringInterpolation();
                  if (v297)
                  {

                    v40 = HyperParams.excludeOtherPregnancySlices.getter();
                    v41 = v316;
                    v316[3] = MEMORY[0x277D839B0];
                    *v41 = v40 & 1;
                  }

                  else
                  {

                    v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSliceAnchorDelta", 0x13uLL, 1);
                    v294 = &v460;
                    v460 = v42;
                    v458 = v326;
                    v459 = v327;
                    v295 = MEMORY[0x25F889340](v42._countAndFlagsBits, v42._object, v326, v327);
                    outlined destroy of DefaultStringInterpolation();
                    if (v295)
                    {

                      v43 = HyperParams.minSliceAnchorDelta.getter();
                      v44 = v316;
                      v316[3] = MEMORY[0x277D83B88];
                      *v44 = v43;
                    }

                    else
                    {

                      v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxSliceAnchorDelta", 0x13uLL, 1);
                      v292 = &v457;
                      v457 = v45;
                      v455 = v326;
                      v456 = v327;
                      v293 = MEMORY[0x25F889340](v45._countAndFlagsBits, v45._object, v326, v327);
                      outlined destroy of DefaultStringInterpolation();
                      if (v293)
                      {

                        v46 = HyperParams.maxSliceAnchorDelta.getter();
                        v47 = v316;
                        v316[3] = MEMORY[0x277D83B88];
                        *v47 = v46;
                      }

                      else
                      {

                        v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMinSliceAnchorDelta", 0x16uLL, 1);
                        v290 = &v454;
                        v454 = v48;
                        v452 = v326;
                        v453 = v327;
                        v291 = MEMORY[0x25F889340](v48._countAndFlagsBits, v48._object, v326, v327);
                        outlined destroy of DefaultStringInterpolation();
                        if (v291)
                        {

                          v49 = HyperParams.lmpMinSliceAnchorDelta.getter();
                          v50 = v316;
                          v316[3] = MEMORY[0x277D83B88];
                          *v50 = v49;
                        }

                        else
                        {

                          v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMaxSliceAnchorDelta", 0x16uLL, 1);
                          v288 = &v451;
                          v451 = v51;
                          v449 = v326;
                          v450 = v327;
                          v289 = MEMORY[0x25F889340](v51._countAndFlagsBits, v51._object, v326, v327);
                          outlined destroy of DefaultStringInterpolation();
                          if (v289)
                          {

                            v52 = HyperParams.lmpMaxSliceAnchorDelta.getter();
                            v53 = v316;
                            v316[3] = MEMORY[0x277D83B88];
                            *v53 = v52;
                          }

                          else
                          {

                            v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isCalendarPeriodPredictionRequired", 0x22uLL, 1);
                            v286 = &v448;
                            v448 = v54;
                            v446 = v326;
                            v447 = v327;
                            v287 = MEMORY[0x25F889340](v54._countAndFlagsBits, v54._object, v326, v327);
                            outlined destroy of DefaultStringInterpolation();
                            if (v287)
                            {

                              v55 = HyperParams.isCalendarPeriodPredictionRequired()();
                              v56 = v316;
                              v316[3] = MEMORY[0x277D839B0];
                              *v56 = v55;
                            }

                            else
                            {

                              v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaysSinceLastPeriodStartRequired", 0x22uLL, 1);
                              v284 = &v445;
                              v445 = v57;
                              v443 = v326;
                              v444 = v327;
                              v285 = MEMORY[0x25F889340](v57._countAndFlagsBits, v57._object, v326, v327);
                              outlined destroy of DefaultStringInterpolation();
                              if (v285)
                              {

                                PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
                                v59 = v316;
                                v316[3] = MEMORY[0x277D839B0];
                                *v59 = PeriodStart;
                              }

                              else
                              {

                                v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaySHRRequired", 0x10uLL, 1);
                                v282 = &v442;
                                v442 = v60;
                                v440 = v326;
                                v441 = v327;
                                v283 = MEMORY[0x25F889340](v60._countAndFlagsBits, v60._object, v326, v327);
                                outlined destroy of DefaultStringInterpolation();
                                if (v283)
                                {

                                  v61 = HyperParams.isDaySHRRequired()();
                                  v62 = v316;
                                  v316[3] = MEMORY[0x277D839B0];
                                  *v62 = v61;
                                }

                                else
                                {

                                  v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isNightSHRRequired", 0x12uLL, 1);
                                  v280 = &v439;
                                  v439 = v63;
                                  v437 = v326;
                                  v438 = v327;
                                  v281 = MEMORY[0x25F889340](v63._countAndFlagsBits, v63._object, v326, v327);
                                  outlined destroy of DefaultStringInterpolation();
                                  if (v281)
                                  {

                                    v64 = HyperParams.isNightSHRRequired()();
                                    v65 = v316;
                                    v316[3] = MEMORY[0x277D839B0];
                                    *v65 = v64;
                                  }

                                  else
                                  {

                                    v66 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSWTRequired", 0xDuLL, 1);
                                    v278 = &v436;
                                    v436 = v66;
                                    v434 = v326;
                                    v435 = v327;
                                    v279 = MEMORY[0x25F889340](v66._countAndFlagsBits, v66._object, v326, v327);
                                    outlined destroy of DefaultStringInterpolation();
                                    if (v279)
                                    {

                                      v67 = HyperParams.isSWTRequired()();
                                      v68 = v316;
                                      v316[3] = MEMORY[0x277D839B0];
                                      *v68 = v67;
                                    }

                                    else
                                    {

                                      v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isHRVRequired", 0xDuLL, 1);
                                      v276 = &v433;
                                      v433 = v69;
                                      v431 = v326;
                                      v432 = v327;
                                      v277 = MEMORY[0x25F889340](v69._countAndFlagsBits, v69._object, v326, v327);
                                      outlined destroy of DefaultStringInterpolation();
                                      if (v277)
                                      {

                                        v70 = HyperParams.isHRVRequired()();
                                        v71 = v316;
                                        v316[3] = MEMORY[0x277D839B0];
                                        *v71 = v70;
                                      }

                                      else
                                      {

                                        v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isRespiratoryRateRequired", 0x19uLL, 1);
                                        v274 = &v430;
                                        v430 = v72;
                                        v428 = v326;
                                        v429 = v327;
                                        v275 = MEMORY[0x25F889340](v72._countAndFlagsBits, v72._object, v326, v327);
                                        outlined destroy of DefaultStringInterpolation();
                                        if (v275)
                                        {

                                          v73 = HyperParams.isRespiratoryRateRequired()();
                                          v74 = v316;
                                          v316[3] = MEMORY[0x277D839B0];
                                          *v74 = v73;
                                        }

                                        else
                                        {

                                          v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSpO2Required", 0xEuLL, 1);
                                          v272 = &v427;
                                          v427 = v75;
                                          v425 = v326;
                                          v426 = v327;
                                          v273 = MEMORY[0x25F889340](v75._countAndFlagsBits, v75._object, v326, v327);
                                          outlined destroy of DefaultStringInterpolation();
                                          if (v273)
                                          {

                                            v76 = HyperParams.isSpO2Required()();
                                            v77 = v316;
                                            v316[3] = MEMORY[0x277D839B0];
                                            *v77 = v76;
                                          }

                                          else
                                          {

                                            v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSMRequired", 0xDuLL, 1);
                                            v270 = &v424;
                                            v424 = v78;
                                            v422 = v326;
                                            v423 = v327;
                                            v271 = MEMORY[0x25F889340](v78._countAndFlagsBits, v78._object, v326, v327);
                                            outlined destroy of DefaultStringInterpolation();
                                            if (v271)
                                            {

                                              v79 = HyperParams.isPSMRequired()();
                                              v80 = v316;
                                              v316[3] = MEMORY[0x277D839B0];
                                              *v80 = v79;
                                            }

                                            else
                                            {

                                              v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSSRequired", 0xDuLL, 1);
                                              v268 = &v421;
                                              v421 = v81;
                                              v419 = v326;
                                              v420 = v327;
                                              v269 = MEMORY[0x25F889340](v81._countAndFlagsBits, v81._object, v326, v327);
                                              outlined destroy of DefaultStringInterpolation();
                                              if (v269)
                                              {

                                                v82 = HyperParams.isPSSRequired()();
                                                v83 = v316;
                                                v316[3] = MEMORY[0x277D839B0];
                                                *v83 = v82;
                                              }

                                              else
                                              {

                                                v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredFactorLMP", 0x26uLL, 1);
                                                v266 = &v418;
                                                v418 = v84;
                                                v416 = v326;
                                                v417 = v327;
                                                v267 = MEMORY[0x25F889340](v84._countAndFlagsBits, v84._object, v326, v327);
                                                outlined destroy of DefaultStringInterpolation();
                                                if (v267)
                                                {

                                                  v85 = HyperParams.dropNegativeSlicesForInferredFactorLMP.getter();
                                                  v86 = v316;
                                                  v316[3] = MEMORY[0x277D83B88];
                                                  *v86 = v85;
                                                }

                                                else
                                                {

                                                  v87 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredTestLMP", 0x24uLL, 1);
                                                  v264 = &v415;
                                                  v415 = v87;
                                                  v413 = v326;
                                                  v414 = v327;
                                                  v265 = MEMORY[0x25F889340](v87._countAndFlagsBits, v87._object, v326, v327);
                                                  outlined destroy of DefaultStringInterpolation();
                                                  if (v265)
                                                  {

                                                    v88 = HyperParams.dropNegativeSlicesForInferredTestLMP.getter();
                                                    v89 = v316;
                                                    v316[3] = MEMORY[0x277D83B88];
                                                    *v89 = v88;
                                                  }

                                                  else
                                                  {

                                                    v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minDaySHRAvailability", 0x15uLL, 1);
                                                    v262 = &v412;
                                                    v412 = v90;
                                                    v410 = v326;
                                                    v411 = v327;
                                                    v263 = MEMORY[0x25F889340](v90._countAndFlagsBits, v90._object, v326, v327);
                                                    outlined destroy of DefaultStringInterpolation();
                                                    if (v263)
                                                    {

                                                      v91 = HyperParams.minDaySHRAvailability.getter();
                                                      v92 = v316;
                                                      v316[3] = MEMORY[0x277D839F8];
                                                      *v92 = v91;
                                                    }

                                                    else
                                                    {

                                                      v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minNightSHRAvailability", 0x17uLL, 1);
                                                      v260 = &v409;
                                                      v409 = v93;
                                                      v407 = v326;
                                                      v408 = v327;
                                                      v261 = MEMORY[0x25F889340](v93._countAndFlagsBits, v93._object, v326, v327);
                                                      outlined destroy of DefaultStringInterpolation();
                                                      if (v261)
                                                      {

                                                        v94 = HyperParams.minNightSHRAvailability.getter();
                                                        v95 = v316;
                                                        v316[3] = MEMORY[0x277D839F8];
                                                        *v95 = v94;
                                                      }

                                                      else
                                                      {

                                                        v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minWristTempAvailability", 0x18uLL, 1);
                                                        v258 = &v406;
                                                        v406 = v96;
                                                        v404 = v326;
                                                        v405 = v327;
                                                        v259 = MEMORY[0x25F889340](v96._countAndFlagsBits, v96._object, v326, v327);
                                                        outlined destroy of DefaultStringInterpolation();
                                                        if (v259)
                                                        {

                                                          v97 = HyperParams.minWristTempAvailability.getter();
                                                          v98 = v316;
                                                          v316[3] = MEMORY[0x277D839F8];
                                                          *v98 = v97;
                                                        }

                                                        else
                                                        {

                                                          v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minHRVAvailability", 0x12uLL, 1);
                                                          v256 = &v403;
                                                          v403 = v99;
                                                          v401 = v326;
                                                          v402 = v327;
                                                          v257 = MEMORY[0x25F889340](v99._countAndFlagsBits, v99._object, v326, v327);
                                                          outlined destroy of DefaultStringInterpolation();
                                                          if (v257)
                                                          {

                                                            v100 = HyperParams.minHRVAvailability.getter();
                                                            v101 = v316;
                                                            v316[3] = MEMORY[0x277D839F8];
                                                            *v101 = v100;
                                                          }

                                                          else
                                                          {

                                                            v102 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSpO2Availability", 0x13uLL, 1);
                                                            v254 = &v400;
                                                            v400 = v102;
                                                            v398 = v326;
                                                            v399 = v327;
                                                            v255 = MEMORY[0x25F889340](v102._countAndFlagsBits, v102._object, v326, v327);
                                                            outlined destroy of DefaultStringInterpolation();
                                                            if (v255)
                                                            {

                                                              v103 = HyperParams.minSpO2Availability.getter();
                                                              v104 = v316;
                                                              v316[3] = MEMORY[0x277D839F8];
                                                              *v104 = v103;
                                                            }

                                                            else
                                                            {

                                                              v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minRespiratoryRateAvailability", 0x1EuLL, 1);
                                                              v252 = &v397;
                                                              v397 = v105;
                                                              v395 = v326;
                                                              v396 = v327;
                                                              v253 = MEMORY[0x25F889340](v105._countAndFlagsBits, v105._object, v326, v327);
                                                              outlined destroy of DefaultStringInterpolation();
                                                              if (v253)
                                                              {

                                                                v106 = HyperParams.minRespiratoryRateAvailability.getter();
                                                                v107 = v316;
                                                                v316[3] = MEMORY[0x277D839F8];
                                                                *v107 = v106;
                                                              }

                                                              else
                                                              {

                                                                v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregLabelStartAnchorDelta", 0x19uLL, 1);
                                                                v250 = &v394;
                                                                v394 = v108;
                                                                v392 = v326;
                                                                v393 = v327;
                                                                v251 = MEMORY[0x25F889340](v108._countAndFlagsBits, v108._object, v326, v327);
                                                                outlined destroy of DefaultStringInterpolation();
                                                                if (v251)
                                                                {

                                                                  started = HyperParams.pregLabelStartAnchorDelta.getter();
                                                                  v110 = v316;
                                                                  v316[3] = MEMORY[0x277D83B88];
                                                                  *v110 = started;
                                                                }

                                                                else
                                                                {

                                                                  v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpPregLabelStartAnchorDelta", 0x1CuLL, 1);
                                                                  v248 = &v391;
                                                                  v391 = v111;
                                                                  v389 = v326;
                                                                  v390 = v327;
                                                                  v249 = MEMORY[0x25F889340](v111._countAndFlagsBits, v111._object, v326, v327);
                                                                  outlined destroy of DefaultStringInterpolation();
                                                                  if (v249)
                                                                  {

                                                                    v112 = HyperParams.lmpPregLabelStartAnchorDelta.getter();
                                                                    v113 = v316;
                                                                    v316[3] = MEMORY[0x277D83B88];
                                                                    *v113 = v112;
                                                                  }

                                                                  else
                                                                  {

                                                                    v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daySHRStatsOption", 0x11uLL, 1);
                                                                    v246 = &v388;
                                                                    v388 = v114;
                                                                    v386 = v326;
                                                                    v387 = v327;
                                                                    v247 = MEMORY[0x25F889340](v114._countAndFlagsBits, v114._object, v326, v327);
                                                                    outlined destroy of DefaultStringInterpolation();
                                                                    if (v247)
                                                                    {

                                                                      v115 = HyperParams.daySHRStatsOption.getter();
                                                                      v116 = FeatureStatsOption.rawValue.getter(v115);
                                                                      v117 = v316;
                                                                      v316[3] = MEMORY[0x277D837D0];
                                                                      *v117 = v116;
                                                                      v117[1] = v118;
                                                                    }

                                                                    else
                                                                    {

                                                                      v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightSHRStatsOption", 0x13uLL, 1);
                                                                      v244 = &v385;
                                                                      v385 = v119;
                                                                      v383 = v326;
                                                                      v384 = v327;
                                                                      v245 = MEMORY[0x25F889340](v119._countAndFlagsBits, v119._object, v326, v327);
                                                                      outlined destroy of DefaultStringInterpolation();
                                                                      if (v245)
                                                                      {

                                                                        v120 = HyperParams.nightSHRStatsOption.getter();
                                                                        v121 = FeatureStatsOption.rawValue.getter(v120);
                                                                        v122 = v316;
                                                                        v316[3] = MEMORY[0x277D837D0];
                                                                        *v122 = v121;
                                                                        v122[1] = v123;
                                                                      }

                                                                      else
                                                                      {

                                                                        v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSMStatsOption", 0xEuLL, 1);
                                                                        v242 = &v382;
                                                                        v382 = v124;
                                                                        v380 = v326;
                                                                        v381 = v327;
                                                                        v243 = MEMORY[0x25F889340](v124._countAndFlagsBits, v124._object, v326, v327);
                                                                        outlined destroy of DefaultStringInterpolation();
                                                                        if (v243)
                                                                        {

                                                                          v125 = HyperParams.pSMStatsOption.getter();
                                                                          v126 = FeatureStatsOption.rawValue.getter(v125);
                                                                          v127 = v316;
                                                                          v316[3] = MEMORY[0x277D837D0];
                                                                          *v127 = v126;
                                                                          v127[1] = v128;
                                                                        }

                                                                        else
                                                                        {

                                                                          v129 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSSStatsOption", 0xEuLL, 1);
                                                                          v240 = &v379;
                                                                          v379 = v129;
                                                                          v377 = v326;
                                                                          v378 = v327;
                                                                          v241 = MEMORY[0x25F889340](v129._countAndFlagsBits, v129._object, v326, v327);
                                                                          outlined destroy of DefaultStringInterpolation();
                                                                          if (v241)
                                                                          {

                                                                            v130 = HyperParams.pSSStatsOption.getter();
                                                                            v131 = FeatureStatsOption.rawValue.getter(v130);
                                                                            v132 = v316;
                                                                            v316[3] = MEMORY[0x277D837D0];
                                                                            *v132 = v131;
                                                                            v132[1] = v133;
                                                                          }

                                                                          else
                                                                          {

                                                                            v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastPeriodStartStatsOption", 0x23uLL, 1);
                                                                            v238 = &v376;
                                                                            v376 = v134;
                                                                            v374 = v326;
                                                                            v375 = v327;
                                                                            v239 = MEMORY[0x25F889340](v134._countAndFlagsBits, v134._object, v326, v327);
                                                                            outlined destroy of DefaultStringInterpolation();
                                                                            if (v239)
                                                                            {

                                                                              PeriodStartStats = HyperParams.daysSinceLastPeriodStartStatsOption.getter();
                                                                              v136 = FeatureStatsOption.rawValue.getter(PeriodStartStats);
                                                                              v137 = v316;
                                                                              v316[3] = MEMORY[0x277D837D0];
                                                                              *v137 = v136;
                                                                              v137[1] = v138;
                                                                            }

                                                                            else
                                                                            {

                                                                              v139 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sWTStatsOption", 0xEuLL, 1);
                                                                              v236 = &v373;
                                                                              v373 = v139;
                                                                              v371 = v326;
                                                                              v372 = v327;
                                                                              v237 = MEMORY[0x25F889340](v139._countAndFlagsBits, v139._object, v326, v327);
                                                                              outlined destroy of DefaultStringInterpolation();
                                                                              if (v237)
                                                                              {

                                                                                v140 = HyperParams.sWTStatsOption.getter();
                                                                                v141 = FeatureStatsOption.rawValue.getter(v140);
                                                                                v142 = v316;
                                                                                v316[3] = MEMORY[0x277D837D0];
                                                                                *v142 = v141;
                                                                                v142[1] = v143;
                                                                              }

                                                                              else
                                                                              {

                                                                                v144 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hrvStatsOption", 0xEuLL, 1);
                                                                                v234 = &v370;
                                                                                v370 = v144;
                                                                                v368 = v326;
                                                                                v369 = v327;
                                                                                v235 = MEMORY[0x25F889340](v144._countAndFlagsBits, v144._object, v326, v327);
                                                                                outlined destroy of DefaultStringInterpolation();
                                                                                if (v235)
                                                                                {

                                                                                  v145 = HyperParams.hrvStatsOption.getter();
                                                                                  v146 = FeatureStatsOption.rawValue.getter(v145);
                                                                                  v147 = v316;
                                                                                  v316[3] = MEMORY[0x277D837D0];
                                                                                  *v147 = v146;
                                                                                  v147[1] = v148;
                                                                                }

                                                                                else
                                                                                {

                                                                                  v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratoryRateStatsOption", 0x1AuLL, 1);
                                                                                  v232 = &v367;
                                                                                  v367 = v149;
                                                                                  v365 = v326;
                                                                                  v366 = v327;
                                                                                  v233 = MEMORY[0x25F889340](v149._countAndFlagsBits, v149._object, v326, v327);
                                                                                  outlined destroy of DefaultStringInterpolation();
                                                                                  if (v233)
                                                                                  {

                                                                                    v150 = HyperParams.respiratoryRateStatsOption.getter();
                                                                                    v151 = FeatureStatsOption.rawValue.getter(v150);
                                                                                    v152 = v316;
                                                                                    v316[3] = MEMORY[0x277D837D0];
                                                                                    *v152 = v151;
                                                                                    v152[1] = v153;
                                                                                  }

                                                                                  else
                                                                                  {

                                                                                    v154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spO2StatsOption", 0xFuLL, 1);
                                                                                    v230 = &v364;
                                                                                    v364 = v154;
                                                                                    v362 = v326;
                                                                                    v363 = v327;
                                                                                    v231 = MEMORY[0x25F889340](v154._countAndFlagsBits, v154._object, v326, v327);
                                                                                    outlined destroy of DefaultStringInterpolation();
                                                                                    if (v231)
                                                                                    {

                                                                                      v155 = HyperParams.spO2StatsOption.getter();
                                                                                      v156 = FeatureStatsOption.rawValue.getter(v155);
                                                                                      v157 = v316;
                                                                                      v316[3] = MEMORY[0x277D837D0];
                                                                                      *v157 = v156;
                                                                                      v157[1] = v158;
                                                                                    }

                                                                                    else
                                                                                    {

                                                                                      v159 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("evalBeforeTrain", 0xFuLL, 1);
                                                                                      v228 = &v361;
                                                                                      v361 = v159;
                                                                                      v359 = v326;
                                                                                      v360 = v327;
                                                                                      v229 = MEMORY[0x25F889340](v159._countAndFlagsBits, v159._object, v326, v327);
                                                                                      outlined destroy of DefaultStringInterpolation();
                                                                                      if (v229)
                                                                                      {

                                                                                        v160 = HyperParams.evalBeforeTrain.getter();
                                                                                        v161 = v316;
                                                                                        v316[3] = MEMORY[0x277D839B0];
                                                                                        *v161 = v160 & 1;
                                                                                      }

                                                                                      else
                                                                                      {

                                                                                        v162 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labelName", 9uLL, 1);
                                                                                        v226 = &v358;
                                                                                        v358 = v162;
                                                                                        v356 = v326;
                                                                                        v357 = v327;
                                                                                        v227 = MEMORY[0x25F889340](v162._countAndFlagsBits, v162._object, v326, v327);
                                                                                        outlined destroy of DefaultStringInterpolation();
                                                                                        if (v227)
                                                                                        {

                                                                                          v163 = HyperParams.labelName.getter();
                                                                                          v164 = v316;
                                                                                          v316[3] = MEMORY[0x277D837D0];
                                                                                          *v164 = v163;
                                                                                          v164[1] = v165;
                                                                                        }

                                                                                        else
                                                                                        {

                                                                                          v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lossName", 8uLL, 1);
                                                                                          v224 = &v355;
                                                                                          v355 = v166;
                                                                                          v353 = v326;
                                                                                          v354 = v327;
                                                                                          v225 = MEMORY[0x25F889340](v166._countAndFlagsBits, v166._object, v326, v327);
                                                                                          outlined destroy of DefaultStringInterpolation();
                                                                                          if (v225)
                                                                                          {

                                                                                            v167 = HyperParams.lossName.getter();
                                                                                            v168 = v316;
                                                                                            v316[3] = MEMORY[0x277D837D0];
                                                                                            *v168 = v167;
                                                                                            v168[1] = v169;
                                                                                          }

                                                                                          else
                                                                                          {

                                                                                            v170 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputName", 0xAuLL, 1);
                                                                                            v222 = &v352;
                                                                                            v352 = v170;
                                                                                            v350 = v326;
                                                                                            v351 = v327;
                                                                                            v223 = MEMORY[0x25F889340](v170._countAndFlagsBits, v170._object, v326, v327);
                                                                                            outlined destroy of DefaultStringInterpolation();
                                                                                            if (v223)
                                                                                            {

                                                                                              v171 = HyperParams.outputName.getter();
                                                                                              v172 = v316;
                                                                                              v316[3] = MEMORY[0x277D837D0];
                                                                                              *v172 = v171;
                                                                                              v172[1] = v173;
                                                                                            }

                                                                                            else
                                                                                            {

                                                                                              v174 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightingaleDInputFeatureList", 0x1CuLL, 1);
                                                                                              v220 = &v349;
                                                                                              v349 = v174;
                                                                                              v347 = v326;
                                                                                              v348 = v327;
                                                                                              v221 = MEMORY[0x25F889340](v174._countAndFlagsBits, v174._object, v326, v327);
                                                                                              outlined destroy of DefaultStringInterpolation();
                                                                                              if (v221)
                                                                                              {

                                                                                                v218 = v330;
                                                                                                swift_beginAccess();
                                                                                                v219 = *(v317 + 24);

                                                                                                swift_endAccess();
                                                                                                v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                                                                                                v176 = v316;
                                                                                                v177 = v219;
                                                                                                v316[3] = v175;
                                                                                                *v176 = v177;
                                                                                              }

                                                                                              else
                                                                                              {

                                                                                                v178 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batchSize", 9uLL, 1);
                                                                                                v216 = &v346;
                                                                                                v346 = v178;
                                                                                                v344 = v326;
                                                                                                v345 = v327;
                                                                                                v217 = MEMORY[0x25F889340](v178._countAndFlagsBits, v178._object, v326, v327);
                                                                                                outlined destroy of DefaultStringInterpolation();
                                                                                                if (v217)
                                                                                                {

                                                                                                  v179 = HyperParams.batchSize.getter();
                                                                                                  v180 = v316;
                                                                                                  v316[3] = MEMORY[0x277D83B88];
                                                                                                  *v180 = v179;
                                                                                                }

                                                                                                else
                                                                                                {

                                                                                                  v181 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("weightNames", 0xBuLL, 1);
                                                                                                  v214 = &v343;
                                                                                                  v343 = v181;
                                                                                                  v341 = v326;
                                                                                                  v342 = v327;
                                                                                                  v215 = MEMORY[0x25F889340](v181._countAndFlagsBits, v181._object, v326, v327);
                                                                                                  outlined destroy of DefaultStringInterpolation();
                                                                                                  if (v215)
                                                                                                  {

                                                                                                    v213 = HyperParams.weightNames.getter();
                                                                                                    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                                                                                                    v183 = v316;
                                                                                                    v184 = v182;
                                                                                                    v185 = v213;
                                                                                                    v316[3] = v184;
                                                                                                    *v183 = v185;
                                                                                                  }

                                                                                                  else
                                                                                                  {

                                                                                                    v186 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("epochs", 6uLL, 1);
                                                                                                    v211 = &v340;
                                                                                                    v340 = v186;
                                                                                                    v338 = v326;
                                                                                                    v339 = v327;
                                                                                                    v212 = MEMORY[0x25F889340](v186._countAndFlagsBits, v186._object, v326, v327);
                                                                                                    outlined destroy of DefaultStringInterpolation();
                                                                                                    if (v212)
                                                                                                    {

                                                                                                      v187 = HyperParams.epochs.getter();
                                                                                                      v188 = v316;
                                                                                                      v316[3] = MEMORY[0x277D83B88];
                                                                                                      *v188 = v187;
                                                                                                    }

                                                                                                    else
                                                                                                    {

                                                                                                      v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fullBatchTraining", 0x11uLL, 1);
                                                                                                      v209 = &v337;
                                                                                                      v337 = v189;
                                                                                                      v335 = v326;
                                                                                                      v336 = v327;
                                                                                                      v210 = MEMORY[0x25F889340](v189._countAndFlagsBits, v189._object, v326, v327);
                                                                                                      outlined destroy of DefaultStringInterpolation();
                                                                                                      if (v210)
                                                                                                      {

                                                                                                        v190 = HyperParams.fullBatchTraining.getter();
                                                                                                        v191 = v316;
                                                                                                        v316[3] = MEMORY[0x277D839B0];
                                                                                                        *v191 = v190 & 1;
                                                                                                      }

                                                                                                      else
                                                                                                      {

                                                                                                        v192 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inputShuffleMethod", 0x12uLL, 1);
                                                                                                        v207 = &v334;
                                                                                                        v334 = v192;
                                                                                                        v332 = v326;
                                                                                                        v333 = v327;
                                                                                                        v208 = MEMORY[0x25F889340](v192._countAndFlagsBits, v192._object, v326, v327);
                                                                                                        outlined destroy of DefaultStringInterpolation();
                                                                                                        if (v208)
                                                                                                        {

                                                                                                          HyperParams.inputShuffleMethod.getter(v325);
                                                                                                          (*(v319 + 104))(v323, *MEMORY[0x277D41360], v318);
                                                                                                          lazy protocol witness table accessor for type ShuffleMethod and conformance ShuffleMethod();
                                                                                                          v206 = == infix<A>(_:_:)();
                                                                                                          v205 = *(v319 + 8);
                                                                                                          v204 = v319 + 8;
                                                                                                          v205(v323, v318);
                                                                                                          v205(v325, v318);
                                                                                                          if (v206)
                                                                                                          {
                                                                                                            v195 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("identity", 8uLL, 1);
                                                                                                            object = v195._object;
                                                                                                            countAndFlagsBits = v195._countAndFlagsBits;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v197 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("random", 6uLL, 1);
                                                                                                            object = v197._object;
                                                                                                            countAndFlagsBits = v197._countAndFlagsBits;
                                                                                                          }

                                                                                                          v196 = v316;
                                                                                                          v316[3] = MEMORY[0x277D837D0];
                                                                                                          *v196 = countAndFlagsBits;
                                                                                                          v196[1] = object;
                                                                                                        }

                                                                                                        else
                                                                                                        {

                                                                                                          v198 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("learningRate", 0xCuLL, 1);
                                                                                                          v202 = &v331;
                                                                                                          v331 = v198;
                                                                                                          v330[3] = v326;
                                                                                                          v330[4] = v327;
                                                                                                          v203 = MEMORY[0x25F889340](v198._countAndFlagsBits, v198._object, v326, v327);
                                                                                                          outlined destroy of DefaultStringInterpolation();
                                                                                                          if (v203)
                                                                                                          {

                                                                                                            v199 = HyperParams.learningRate.getter();
                                                                                                            v200 = v316;
                                                                                                            v316[3] = MEMORY[0x277D83A90];
                                                                                                            *v200 = v199;
                                                                                                          }

                                                                                                          else
                                                                                                          {

                                                                                                            v201 = v316;
                                                                                                            *v316 = 0;
                                                                                                            v201[1] = 0;
                                                                                                            v201[2] = 0;
                                                                                                            v201[3] = 0;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Bool __swiftcall HyperParams.has(attribute:)(Swift::String attribute)
{
  v10 = 0;
  v11 = attribute;
  v5 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputPostProcThresholds", 0x18uLL, 1);
  v3[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("latencyBuckets", 0xEuLL, 1);
  v3[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPRs", 7uLL, 1);
  v3[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confusionMatrixNumThresholds", 0x1CuLL, 1);
  v3[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPRs", 0xAuLL, 1);
  v3[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modelOutputNumberOfBuckets", 0x1AuLL, 1);
  v3[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceSize", 9uLL, 1);
  v3[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeContraceptionSlices", 0x1AuLL, 1);
  v3[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeOtherPregnancySlices", 0x1BuLL, 1);
  v3[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSliceAnchorDelta", 0x13uLL, 1);
  v3[10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxSliceAnchorDelta", 0x13uLL, 1);
  v3[11] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isCalendarPeriodPredictionRequired", 0x22uLL, 1);
  v3[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaysSinceLastPeriodStartRequired", 0x22uLL, 1);
  v3[13] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaySHRRequired", 0x10uLL, 1);
  v3[14] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isNightSHRRequired", 0x12uLL, 1);
  v3[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSWTRequired", 0xDuLL, 1);
  v3[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isHRVRequired", 0xDuLL, 1);
  v3[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isRespiratoryRateRequired", 0x19uLL, 1);
  v3[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSpO2Required", 0xEuLL, 1);
  v3[19] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSMRequired", 0xDuLL, 1);
  v3[20] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSSRequired", 0xDuLL, 1);
  v3[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredFactorLMP", 0x26uLL, 1);
  v3[22] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredTestLMP", 0x24uLL, 1);
  v3[23] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minDaySHRAvailability", 0x15uLL, 1);
  v3[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minNightSHRAvailability", 0x17uLL, 1);
  v3[25] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minWristTempAvailability", 0x18uLL, 1);
  v3[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minHRVAvailability", 0x12uLL, 1);
  v3[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSpO2Availability", 0x13uLL, 1);
  v3[28] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minRespiratoryRateAvailability", 0x1EuLL, 1);
  v3[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregLabelStartAnchorDelta", 0x19uLL, 1);
  v3[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daySHRStatsOption", 0x11uLL, 1);
  v3[31] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightSHRStatsOption", 0x13uLL, 1);
  v3[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSMStatsOption", 0xEuLL, 1);
  v3[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSSStatsOption", 0xEuLL, 1);
  v3[34] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastPeriodStartStatsOption", 0x23uLL, 1);
  v3[35] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sWTStatsOption", 0xEuLL, 1);
  v3[36] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hrvStatsOption", 0xEuLL, 1);
  v3[37] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratoryRateStatsOption", 0x1AuLL, 1);
  v3[38] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spO2StatsOption", 0xFuLL, 1);
  v3[39] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("evalBeforeTrain", 0xFuLL, 1);
  v3[40] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labelName", 9uLL, 1);
  v3[41] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lossName", 8uLL, 1);
  v3[42] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputName", 0xAuLL, 1);
  v3[43] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightingaleDInputFeatureList", 0x1CuLL, 1);
  v3[44] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batchSize", 9uLL, 1);
  v3[45] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("weightNames", 0xBuLL, 1);
  v3[46] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("epochs", 6uLL, 1);
  v3[47] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fullBatchTraining", 0x11uLL, 1);
  v3[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inputShuffleMethod", 0x12uLL, 1);
  v3[49] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("learningRate", 0xCuLL, 1);
  v3[50] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpPregLabelStartAnchorDelta", 0x1CuLL, 1);
  v3[51] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMinSliceAnchorDelta", 0x16uLL, 1);
  v3[52] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMaxSliceAnchorDelta", 0x16uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v6 = MEMORY[0x277D837E0];
  v9 = Set.init(arrayLiteral:)();
  v8 = attribute;
  v7 = MEMORY[0x25F8897F0](&v8, v9, v5, v6);

  return v7 & 1;
}

uint64_t Interval.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a4;
  v33 = a1;
  v34 = a2;
  v28 = a3;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v27 = *(a3 + 24);
  v50 = v27;
  v29 = type metadata accessor for Optional();
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v34);
  v31 = v20 - v30;
  v48 = v6;
  v49 = v5;
  v47 = v4;
  v32 = *(v7 + 16);
  v46 = v32;

  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v35 = &v45;
  v45 = v8;
  v43 = v33;
  v44 = v34;
  v36 = MEMORY[0x25F889340](v8._countAndFlagsBits, v8._object, v33, v34);
  outlined destroy of DefaultStringInterpolation();
  if (v36)
  {

    v9 = v25;
    v25[3] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
    return (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v26);
  }

  else
  {

    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
    v23 = &v42;
    v42 = v12;
    v40 = v33;
    v41 = v34;
    v24 = MEMORY[0x25F889340](v12._countAndFlagsBits, v12._object, v33, v34);
    outlined destroy of DefaultStringInterpolation();
    if (v24)
    {

      v13 = v25;
      v22 = v26 + *(v28 + 44);
      v25[3] = v32;
      v14 = __swift_allocate_boxed_opaque_existential_0(v13);
      return (*(*(v32 - 8) + 16))(v14, v22);
    }

    else
    {

      v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, 1);
      v20[2] = &v39;
      v39 = v15;
      v37 = v33;
      v38 = v34;
      v21 = MEMORY[0x25F889340](v15._countAndFlagsBits, v15._object, v33, v34);
      outlined destroy of DefaultStringInterpolation();
      if (v21)
      {

        outlined init with copy of B?((v26 + *(v28 + 48)), v31, v27, v29);
        v20[0] = *(v27 - 8);
        v20[1] = v27 - 8;
        if ((*(v20[0] + 48))(v31, 1) == 1)
        {
          result = outlined destroy of B?(v31, v27);
          v18 = v25;
          *v25 = 0;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          v16 = v25;
          v25[3] = v27;
          v17 = __swift_allocate_boxed_opaque_existential_0(v16);
          return (*(v20[0] + 32))(v17, v31, v27);
        }
      }

      else
      {

        v19 = v25;
        *v25 = 0;
        v19[1] = 0;
        v19[2] = 0;
        v19[3] = 0;
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall Interval.has(attribute:)(Swift::String attribute)
{
  v13 = 0;
  v10 = 0;
  v14 = attribute;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v6 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v4 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v4[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v4[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v7 = MEMORY[0x277D837E0];
  v10 = Set.init(arrayLiteral:)();
  v9 = attribute;
  v8 = MEMORY[0x25F8897F0](&v9, v10, v6, v7);

  return v8 & 1;
}

uint64_t AugmentedIntervalTree<>.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  v66 = a1;
  v67 = a2;
  v60 = partial apply for closure #2 in AugmentedIntervalTree<>.attribute(for:);
  v61 = partial apply for closure #1 in AugmentedIntervalTree<>.attribute(for:);
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v64 = *v3;
  v63 = (*(*(type metadata accessor for Arguments() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = &v28 - v63;
  v78 = v66;
  v79 = MEMORY[0x28223BE20](v67);
  v77 = v4;
  v76 = *(v64 + 88);

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v68 = &v75;
  v75 = v5;
  v73 = v66;
  v74 = v67;
  v69 = MEMORY[0x25F889340](v5._countAndFlagsBits, v5._object, v66, v67);
  outlined destroy of DefaultStringInterpolation();
  if (v69)
  {

    v53 = 0;
    v58 = type metadata accessor for Function();
    v45 = 1;
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AugmentedIntervalTree.insert", 0x1CuLL, 1);
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
    v44 = 3;
    v48 = MEMORY[0x277D837D0];
    v47 = _allocateUninitializedArray<A>(_:)();
    v46 = v7;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, v45 & 1);
    v9 = v45;
    v10 = v44;
    *v46 = v8;
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", v10, v9 & 1);
    v12 = v45;
    v46[1] = v11;
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, v12 & 1);
    v14 = v47;
    v46[2] = v13;
    _finalizeUninitializedArray<A>(_:)();
    v54 = v14;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v15 = _allocateUninitializedArray<A>(_:)();
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0;
    _finalizeUninitializedArray<A>(_:)();
    v52 = v15;
    v50 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    v51 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();

    v56 = v62;
    default argument 2 of Function.init(name:arguments:attrs:body:)();
    result = Function.__allocating_init(name:arguments:attrs:body:)();
    v18 = v59;
    v59[3] = v58;
    *v18 = result;
  }

  else
  {

    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("search", 6uLL, 1);
    v42 = &v72;
    v72 = v19;
    v70 = v66;
    v71 = v67;
    v43 = MEMORY[0x25F889340](v19._countAndFlagsBits, v19._object, v66, v67);
    outlined destroy of DefaultStringInterpolation();
    if (v43)
    {

      v36 = 0;
      v41 = type metadata accessor for Function();
      v29 = 1;
      v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AugmentedIntervalTree.search", 0x1CuLL, 1);
      v40 = v20._countAndFlagsBits;
      v38 = v20._object;
      v32 = MEMORY[0x277D837D0];
      v31 = _allocateUninitializedArray<A>(_:)();
      v30 = v21;
      v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, v29 & 1);
      v23 = v29;
      *v30 = v22;
      v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, v23 & 1);
      v25 = v31;
      v30[1] = v24;
      _finalizeUninitializedArray<A>(_:)();
      v37 = v25;
      v33 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v34 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v35 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();

      v39 = v62;
      default argument 2 of Function.init(name:arguments:attrs:body:)();
      result = Function.__allocating_init(name:arguments:attrs:body:)();
      v26 = v59;
      v59[3] = v41;
      *v26 = result;
    }

    else
    {

      v27 = v59;
      *v59 = 0;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = 0;
    }
  }

  return result;
}

uint64_t closure #1 in AugmentedIntervalTree<>.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v145 = a1;
  v139 = a3;
  v176 = 0;
  v175 = 0;
  v140 = *(*a2 + 88);
  v177 = v140;
  v142 = type metadata accessor for Optional();
  v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = v33 - v143;
  v176 = MEMORY[0x28223BE20](v145);
  v175 = v3;
  v165 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v146 = &v165;
  MEMORY[0x25F8891D0](v166);
  outlined destroy of DefaultStringInterpolation();
  if (v166[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v167 = 0;
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v171 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v166);
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
  }

  if (!v170)
  {
    outlined destroy of Pregnancy?(&v167);
LABEL_87:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v33[1] = 0;
    v34 = swift_allocError();
    *v32 = 34;
    swift_willThrow();
    result = v34;
    v35 = v34;
    return result;
  }

  outlined init with take of HealthDataQuery(&v167, __dst);
  v155 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v137 = &v155;
  MEMORY[0x25F8891D0](v156);
  outlined destroy of DefaultStringInterpolation();
  if (v156[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v156);
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
  }

  if (!v160)
  {
    outlined destroy of Pregnancy?(&v157);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_87;
  }

  outlined init with take of HealthDataQuery(&v157, v162);
  v136 = v173;
  v125 = v173;
  v135 = v174;
  v126 = v174;
  __swift_project_boxed_opaque_existential_1(__dst, v173);
  v127 = *(v136 - 8);
  v131 = v127;
  v128 = v127;
  v129 = *(v127 + 64);
  v130 = v33;
  MEMORY[0x28223BE20](v33);
  v132 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(v131 + 16);
  v134 = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v133();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v147 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v123 = v33;
        MEMORY[0x28223BE20](v33);
        v122 = v33 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
        v6(v122);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v128 + 8))(v122, v125);
        v124 = 0;
      }

      else
      {
        v120 = v33;
        MEMORY[0x28223BE20](v33);
        v119 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v121 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v128 + 8))(v119, v125);
        v124 = v121;
      }
    }

    else
    {
      v5 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v5)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v93 = v33;
          MEMORY[0x28223BE20](v33);
          v92 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v94 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v128 + 8))(v92, v125);
          v124 = v94;
        }

        else
        {
          v85 = *(*(v126 + 24) + 16);
          v81 = MEMORY[0x277D846F0];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v14 = *(*(AssociatedTypeWitness - 8) + 64);
          v90 = v33;
          v82 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v85);
          v84 = v33 - v82;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v89 = v33;
          MEMORY[0x28223BE20](v84);
          v86 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v91 = dispatch thunk of static Comparable.< infix(_:_:)();
          v87 = *(v128 + 8);
          v88 = (v128 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v87(v86, v125);
          if (v91)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            goto LABEL_26;
          }

          v80 = v33;
          MEMORY[0x28223BE20](v33);
          v79 = v33 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
          v16(v79);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v87(v79, v125);
          v124 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_26;
        }

        v78 = v33;
        MEMORY[0x28223BE20](v33);
        v77 = v33 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
        v17(v77);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v128 + 8))(v77, v125);
        v124 = 0;
      }
    }

    if ((v124 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v148 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v114 = v33;
        MEMORY[0x28223BE20](v33);
        v113 = v33 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
        v9(v113);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v128 + 8))(v113, v125);
        v118 = 0;
      }

      else
      {
        v116 = v33;
        MEMORY[0x28223BE20](v33);
        v115 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v117 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v128 + 8))(v115, v125);
        v118 = v117;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v96 = v33;
      MEMORY[0x28223BE20](v33);
      v95 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v97 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v128 + 8))(v95, v125);
      v118 = v97;
    }

    else
    {
      v99 = v33;
      MEMORY[0x28223BE20](v33);
      v98 = v33 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11(v98);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v128 + 8))(v98, v125);
      v118 = 0;
    }

    if (v118)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v100 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v128 + 8))(v132, v125);
  v154 = v100;
  v112 = v163;
  v101 = v163;
  v111 = v164;
  v102 = v164;
  __swift_project_boxed_opaque_existential_1(v162, v163);
  v103 = *(v112 - 8);
  v107 = v103;
  v104 = v103;
  v105 = *(v103 + 64);
  v106 = v33;
  MEMORY[0x28223BE20](v33);
  v108 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(v107 + 16);
  v110 = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v109();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_60;
  }

  v149 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v75 = v33;
      MEMORY[0x28223BE20](v33);
      v74 = v33 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19(v74);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v104 + 8))(v74, v101);
      v76 = 0;
    }

    else
    {
      v72 = v33;
      MEMORY[0x28223BE20](v33);
      v71 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v73 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v104 + 8))(v71, v101);
      v76 = v73;
    }
  }

  else
  {
    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    if (v18)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
      {
        v55 = v33;
        MEMORY[0x28223BE20](v33);
        v54 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v56 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v104 + 8))(v54, v101);
        v76 = v56;
      }

      else
      {
        v47 = *(*(v102 + 24) + 16);
        v43 = MEMORY[0x277D846F0];
        v45 = swift_getAssociatedTypeWitness();
        v26 = *(*(v45 - 8) + 64);
        v52 = v33;
        v44 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v47);
        v46 = v33 - v44;
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v51 = v33;
        MEMORY[0x28223BE20](v46);
        v48 = v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v53 = dispatch thunk of static Comparable.< infix(_:_:)();
        v49 = *(v104 + 8);
        v50 = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49(v48, v101);
        if (v53)
        {
          goto LABEL_59;
        }

        v42 = v33;
        MEMORY[0x28223BE20](v33);
        v41 = v33 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
        v28(v41);
        dispatch thunk of BinaryInteger._lowWord.getter();
        v49(v41, v101);
        v76 = 0;
      }
    }

    else
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        goto LABEL_60;
      }

      v40 = v33;
      MEMORY[0x28223BE20](v33);
      v39 = v33 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29(v39);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v104 + 8))(v39, v101);
      v76 = 0;
    }
  }

  if (v76)
  {
LABEL_59:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_60:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v150 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v66 = v33;
        MEMORY[0x28223BE20](v33);
        v65 = v33 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22(v65);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v104 + 8))(v65, v101);
        v70 = 0;
      }

      else
      {
        v68 = v33;
        MEMORY[0x28223BE20](v33);
        v67 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v69 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v104 + 8))(v67, v101);
        v70 = v69;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v58 = v33;
      MEMORY[0x28223BE20](v33);
      v57 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v59 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v104 + 8))(v57, v101);
      v70 = v59;
    }

    else
    {
      v61 = v33;
      MEMORY[0x28223BE20](v33);
      v60 = v33 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23(v60);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v104 + 8))(v60, v101);
      v70 = 0;
    }

    if (v70)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v62 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v104 + 8))(v108, v101);
  v153 = v62;
  v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, 1);
  v64 = &v152;
  v63 = &v151;
  MEMORY[0x25F8891D0]();
  outlined destroy of DefaultStringInterpolation();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  if (swift_dynamicCast())
  {
    (*(*(v140 - 8) + 56))(v144, 0, 1);
  }

  else
  {
    (*(*(v140 - 8) + 56))(v144, 1);
  }

  v30 = v138;
  AugmentedIntervalTree.insert(start:end:context:)(&v154, &v153, v144);
  v37 = v30;
  v38 = v30;
  if (v30)
  {
    v33[0] = v38;
    outlined destroy of B?(v144, v140);
    __swift_destroy_boxed_opaque_existential_1(v162);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return v33[0];
  }

  else
  {
    v36 = 0;
    outlined destroy of B?(v144, v140);
    *(v139 + 24) = MEMORY[0x277D84F78] + 8;
    __swift_destroy_boxed_opaque_existential_1(v162);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }
}

uint64_t closure #2 in AugmentedIntervalTree<>.attribute(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v146 = a2;
  v149 = a1;
  v147 = a3;
  v180 = 0;
  v179 = 0;
  v155 = 0;
  v3 = *a2;
  v180 = a1;
  v179 = a2;
  v148 = *(v3 + 88);
  v178 = v148;
  v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v150 = &v168;
  MEMORY[0x25F8891D0](v169);
  outlined destroy of DefaultStringInterpolation();
  if (v169[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v169);
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
  }

  if (!v173)
  {
    outlined destroy of Pregnancy?(&v170);
LABEL_84:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v38[1] = 0;
    v39 = swift_allocError();
    *v37 = 35;
    swift_willThrow();
    result = v39;
    v40 = v39;
    return result;
  }

  outlined init with take of HealthDataQuery(&v170, __dst);
  v158 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v144 = &v158;
  MEMORY[0x25F8891D0](v159);
  outlined destroy of DefaultStringInterpolation();
  if (v159[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v160 = 0;
      v161 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v159);
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
  }

  if (!v163)
  {
    outlined destroy of Pregnancy?(&v160);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_84;
  }

  outlined init with take of HealthDataQuery(&v160, v165);
  v143 = v176;
  v132 = v176;
  v142 = v177;
  v133 = v177;
  __swift_project_boxed_opaque_existential_1(__dst, v176);
  v134 = *(v143 - 8);
  v138 = v134;
  v135 = v134;
  v136 = *(v134 + 64);
  v137 = v38;
  MEMORY[0x28223BE20](v38);
  v139 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = *(v138 + 16);
  v141 = (v138 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v140();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v151 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v130 = v38;
        MEMORY[0x28223BE20](v38);
        v129 = v38 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
        v6(v129);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v135 + 8))(v129, v132);
        v131 = 0;
      }

      else
      {
        v127 = v38;
        MEMORY[0x28223BE20](v38);
        v126 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v128 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v135 + 8))(v126, v132);
        v131 = v128;
      }
    }

    else
    {
      v5 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v5)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v100 = v38;
          MEMORY[0x28223BE20](v38);
          v99 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v101 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v135 + 8))(v99, v132);
          v131 = v101;
        }

        else
        {
          v92 = *(*(v133 + 24) + 16);
          v88 = MEMORY[0x277D846F0];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v14 = *(*(AssociatedTypeWitness - 8) + 64);
          v97 = v38;
          v89 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v92);
          v91 = v38 - v89;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v96 = v38;
          MEMORY[0x28223BE20](v91);
          v93 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v98 = dispatch thunk of static Comparable.< infix(_:_:)();
          v94 = *(v135 + 8);
          v95 = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v94(v93, v132);
          if (v98)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            goto LABEL_26;
          }

          v87 = v38;
          MEMORY[0x28223BE20](v38);
          v86 = v38 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
          v16(v86);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v94(v86, v132);
          v131 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_26;
        }

        v85 = v38;
        MEMORY[0x28223BE20](v38);
        v84 = v38 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
        v17(v84);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v135 + 8))(v84, v132);
        v131 = 0;
      }
    }

    if ((v131 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v152 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v121 = v38;
        MEMORY[0x28223BE20](v38);
        v120 = v38 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
        v9(v120);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v135 + 8))(v120, v132);
        v125 = 0;
      }

      else
      {
        v123 = v38;
        MEMORY[0x28223BE20](v38);
        v122 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v124 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v135 + 8))(v122, v132);
        v125 = v124;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v103 = v38;
      MEMORY[0x28223BE20](v38);
      v102 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v104 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v135 + 8))(v102, v132);
      v125 = v104;
    }

    else
    {
      v106 = v38;
      MEMORY[0x28223BE20](v38);
      v105 = v38 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11(v105);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v135 + 8))(v105, v132);
      v125 = 0;
    }

    if (v125)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v107 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v135 + 8))(v139, v132);
  v157 = v107;
  v119 = v166;
  v108 = v166;
  v118 = v167;
  v109 = v167;
  __swift_project_boxed_opaque_existential_1(v165, v166);
  v110 = *(v119 - 8);
  v114 = v110;
  v111 = v110;
  v112 = *(v110 + 64);
  v113 = v38;
  MEMORY[0x28223BE20](v38);
  v115 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *(v114 + 16);
  v117 = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v116();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_60;
  }

  v153 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v82 = v38;
      MEMORY[0x28223BE20](v38);
      v81 = v38 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19(v81);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v111 + 8))(v81, v108);
      v83 = 0;
    }

    else
    {
      v79 = v38;
      MEMORY[0x28223BE20](v38);
      v78 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v80 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v111 + 8))(v78, v108);
      v83 = v80;
    }

    goto LABEL_58;
  }

  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  if (v18)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      v60 = v38;
      MEMORY[0x28223BE20](v38);
      v59 = v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v61 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v111 + 8))(v59, v108);
      v83 = v61;
    }

    else
    {
      v52 = *(*(v109 + 24) + 16);
      v48 = MEMORY[0x277D846F0];
      v50 = swift_getAssociatedTypeWitness();
      v28 = *(*(v50 - 8) + 64);
      v57 = v38;
      v49 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v52);
      v51 = v38 - v49;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v56 = v38;
      MEMORY[0x28223BE20](v51);
      v53 = v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v58 = dispatch thunk of static Comparable.< infix(_:_:)();
      v54 = *(v111 + 8);
      v55 = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54(v53, v108);
      if (v58)
      {
LABEL_59:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_60;
      }

      v47 = v38;
      MEMORY[0x28223BE20](v38);
      v46 = v38 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30(v46);
      dispatch thunk of BinaryInteger._lowWord.getter();
      v54(v46, v108);
      v83 = 0;
    }

LABEL_58:
    if ((v83 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v45 = v38;
    MEMORY[0x28223BE20](v38);
    v44 = v38 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v44);
    dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v111 + 8))(v44, v108);
    v83 = 0;
    goto LABEL_58;
  }

LABEL_60:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v154 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v73 = v38;
        MEMORY[0x28223BE20](v38);
        v72 = v38 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22(v72);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v111 + 8))(v72, v108);
        v77 = 0;
      }

      else
      {
        v75 = v38;
        MEMORY[0x28223BE20](v38);
        v74 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v76 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v111 + 8))(v74, v108);
        v77 = v76;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v63 = v38;
      MEMORY[0x28223BE20](v38);
      v62 = v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v64 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v111 + 8))(v62, v108);
      v77 = v64;
    }

    else
    {
      v66 = v38;
      MEMORY[0x28223BE20](v38);
      v65 = v38 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25(v65);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v111 + 8))(v65, v108);
      v77 = 0;
    }

    if (v77)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v68 = v145;
  v67 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v111 + 8))(v115, v108);
  v23 = v68;
  v156 = v67;
  v24 = AugmentedIntervalTree.search(start:end:)(&v157, &v156);
  v69 = v23;
  v70 = v24;
  v71 = v23;
  if (v23)
  {
    v38[0] = v71;
    __swift_destroy_boxed_opaque_existential_1(v165);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return v38[0];
  }

  else
  {
    v42 = v70;
    v43 = 0;
    v155 = v70;

    v41 = type metadata accessor for Interval();
    v32 = type metadata accessor for Array();
    v33 = v147;
    v34 = v32;
    v35 = v42;
    v147[3] = v34;
    *v33 = v35;

    __swift_destroy_boxed_opaque_existential_1(v165);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }
}

uint64_t AugmentedIntervalTree<>.has(attribute:)(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  v3 = *v2;
  v16 = a1;
  v17 = a2;
  v15 = v2;
  v14 = *(v3 + 88);
  v9 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v6 = v4;
  *v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("search", 6uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v10 = MEMORY[0x277D837E0];
  v13 = Set.init(arrayLiteral:)();
  v12[0] = a1;
  v12[1] = a2;
  v11 = MEMORY[0x25F8897F0](v12, v13, v9, v10);

  return v11 & 1;
}

uint64_t closure #1 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCySiypGMd);
  result = AugmentedIntervalTree.__allocating_init()();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t closure #2 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCySiAA9Pregnancy_pGMd);
  result = AugmentedIntervalTree.__allocating_init()();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t closure #3 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, NightingaleTraining::Cycle *a2@<X8>)
{
  v134 = a1;
  v133 = a2;
  v160 = a1;
  v150 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v135 = &v150;
  MEMORY[0x25F8891D0](v151);
  outlined destroy of DefaultStringInterpolation();
  if (v151[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v152 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v151);
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  if (!v155)
  {
    outlined destroy of Pregnancy?(&v152);
LABEL_83:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v33 = 0;
    swift_allocError();
    *v31 = 37;
    swift_willThrow();
    return v33;
  }

  outlined init with take of HealthDataQuery(&v152, __dst);
  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v131 = &v140;
  MEMORY[0x25F8891D0](v141);
  outlined destroy of DefaultStringInterpolation();
  if (v141[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v141);
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
  }

  if (!v145)
  {
    outlined destroy of Pregnancy?(&v142);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_83;
  }

  outlined init with take of HealthDataQuery(&v142, v147);
  v130 = v158;
  v119 = v158;
  v129 = v159;
  v120 = v159;
  __swift_project_boxed_opaque_existential_1(__dst, v158);
  v121 = *(v130 - 8);
  v125 = v121;
  v122 = v121;
  v123 = *(v121 + 64);
  v124 = &v32;
  MEMORY[0x28223BE20](&v32);
  v126 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = *(v125 + 16);
  v128 = (v125 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v127();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v136 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v117 = &v32;
        MEMORY[0x28223BE20](&v32);
        v116 = &v32 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
        v4(v116);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v122 + 8))(v116, v119);
        v118 = 0;
      }

      else
      {
        v114 = &v32;
        MEMORY[0x28223BE20](&v32);
        v113 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v115 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v122 + 8))(v113, v119);
        v118 = v115;
      }
    }

    else
    {
      v3 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v3)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v87 = &v32;
          MEMORY[0x28223BE20](&v32);
          v86 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v88 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v122 + 8))(v86, v119);
          v118 = v88;
        }

        else
        {
          v79 = *(*(v120 + 24) + 16);
          v75 = MEMORY[0x277D846F0];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v12 = *(*(AssociatedTypeWitness - 8) + 64);
          v84 = &v32;
          v76 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v79);
          v78 = &v32 - v76;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v83 = &v32;
          MEMORY[0x28223BE20](v78);
          v80 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v85 = dispatch thunk of static Comparable.< infix(_:_:)();
          v81 = *(v122 + 8);
          v82 = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v81(v80, v119);
          if (v85)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            goto LABEL_26;
          }

          v74 = &v32;
          MEMORY[0x28223BE20](&v32);
          v73 = &v32 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
          v14(v73);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v81(v73, v119);
          v118 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_26;
        }

        v72 = &v32;
        MEMORY[0x28223BE20](&v32);
        v71 = &v32 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
        v15(v71);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v122 + 8))(v71, v119);
        v118 = 0;
      }
    }

    if ((v118 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v137 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v108 = &v32;
        MEMORY[0x28223BE20](&v32);
        v107 = &v32 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
        v7(v107);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v122 + 8))(v107, v119);
        v112 = 0;
      }

      else
      {
        v110 = &v32;
        MEMORY[0x28223BE20](&v32);
        v109 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v111 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v122 + 8))(v109, v119);
        v112 = v111;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v90 = &v32;
      MEMORY[0x28223BE20](&v32);
      v89 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v91 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v122 + 8))(v89, v119);
      v112 = v91;
    }

    else
    {
      v93 = &v32;
      MEMORY[0x28223BE20](&v32);
      v92 = &v32 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9(v92);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v122 + 8))(v92, v119);
      v112 = 0;
    }

    if (v112)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v94 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v122 + 8))(v126, v119);
  v106 = v148;
  v95 = v148;
  v105 = v149;
  v96 = v149;
  __swift_project_boxed_opaque_existential_1(v147, v148);
  v97 = *(v106 - 8);
  v101 = v97;
  v98 = v97;
  v99 = *(v97 + 64);
  v100 = &v32;
  MEMORY[0x28223BE20](&v32);
  v102 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v101 + 16);
  v104 = (v101 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v103();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_60;
  }

  v138 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v69 = &v32;
      MEMORY[0x28223BE20](&v32);
      v68 = &v32 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17(v68);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v98 + 8))(v68, v95);
      v70 = 0;
    }

    else
    {
      v66 = &v32;
      MEMORY[0x28223BE20](&v32);
      v65 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v67 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v98 + 8))(v65, v95);
      v70 = v67;
    }

    goto LABEL_58;
  }

  v16 = dispatch thunk of static BinaryInteger.isSigned.getter();
  if (v16)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      v50 = &v32;
      MEMORY[0x28223BE20](&v32);
      v49 = &v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v51 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v98 + 8))(v49, v95);
      v70 = v51;
    }

    else
    {
      v42 = *(*(v96 + 24) + 16);
      v38 = MEMORY[0x277D846F0];
      v40 = swift_getAssociatedTypeWitness();
      v27 = *(*(v40 - 8) + 64);
      v47 = &v32;
      v39 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v42);
      v41 = &v32 - v39;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v46 = &v32;
      MEMORY[0x28223BE20](v41);
      v43 = &v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v48 = dispatch thunk of static Comparable.< infix(_:_:)();
      v44 = *(v98 + 8);
      v45 = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v44(v43, v95);
      if (v48)
      {
LABEL_59:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_60;
      }

      v37 = &v32;
      MEMORY[0x28223BE20](&v32);
      v36 = &v32 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29(v36);
      dispatch thunk of BinaryInteger._lowWord.getter();
      v44(v36, v95);
      v70 = 0;
    }

LABEL_58:
    if ((v70 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v35 = &v32;
    MEMORY[0x28223BE20](&v32);
    v34 = &v32 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30(v34);
    dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v98 + 8))(v34, v95);
    v70 = 0;
    goto LABEL_58;
  }

LABEL_60:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v139 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v60 = &v32;
        MEMORY[0x28223BE20](&v32);
        v59 = &v32 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
        v20(v59);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v98 + 8))(v59, v95);
        v64 = 0;
      }

      else
      {
        v62 = &v32;
        MEMORY[0x28223BE20](&v32);
        v61 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v98 + 8))(v61, v95);
        v64 = v63;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v53 = &v32;
      MEMORY[0x28223BE20](&v32);
      v52 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v54 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v98 + 8))(v52, v95);
      v64 = v54;
    }

    else
    {
      v56 = &v32;
      MEMORY[0x28223BE20](&v32);
      v55 = &v32 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24(v55);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v98 + 8))(v55, v95);
      v64 = 0;
    }

    if (v64)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v58 = v132;
  v57 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v98 + 8))(v102, v95);
  v21 = Cycle.init(start:end:)(v94, v57);
  v22 = v133;
  v133[1].end = &type metadata for Cycle;
  *v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v147);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #4 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v286 = a1;
  v284 = a2;
  v285 = 0;
  v334 = 0;
  v321 = 0;
  v320 = 0;
  v307 = 0;
  v306 = 0;
  v300 = 0;
  v299 = 0;
  v293 = 0;
  v292 = 0;
  v345 = a1;
  v335 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("values", 6uLL, 1);
  v287 = &v335;
  MEMORY[0x25F8891D0](v336);
  outlined destroy of DefaultStringInterpolation();
  if (v336[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if (!swift_dynamicCast())
    {
      v337 = 0;
      v338 = 0;
      v339 = 0;
      v340 = 0;
      v341 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v336);
    v337 = 0;
    v338 = 0;
    v339 = 0;
    v340 = 0;
    v341 = 0;
  }

  if (!v340)
  {
    outlined destroy of Pregnancy?(&v337);
LABEL_147:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v69[1] = 0;
    v70 = swift_allocError();
    *v68 = 38;
    swift_willThrow();
    result = v70;
    v74 = v70;
    return result;
  }

  v277 = __dst;
  outlined init with take of HealthDataQuery(&v337, __dst);
  v279 = v343;
  v278 = v344;
  __swift_project_boxed_opaque_existential_1(__dst, v343);
  v281 = dispatch thunk of AnyArrayContainer.anyArray.getter();
  v280 = v281;
  type metadata accessor for NSNumber();
  v282 = _arrayConditionalCast<A, B>(_:)();
  if (!v282)
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_147;
  }

  v276 = v282;
  v274 = v282;
  v334 = v282;

  v324 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("target", 6uLL, 1);
  v275 = &v324;
  MEMORY[0x25F8891D0](v325);
  outlined destroy of DefaultStringInterpolation();
  if (v325[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
    if (!swift_dynamicCast())
    {
      v326 = 0;
      v327 = 0;
      v328 = 0;
      v329 = 0;
      v330 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v325);
    v326 = 0;
    v327 = 0;
    v328 = 0;
    v329 = 0;
    v330 = 0;
  }

  if (!v329)
  {
    outlined destroy of Pregnancy?(&v326);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_147;
  }

  outlined init with take of HealthDataQuery(&v326, v331);
  v322 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mode", 4uLL, 1);
  v273 = &v322;
  MEMORY[0x25F8891D0](v323);
  outlined destroy of DefaultStringInterpolation();
  if (v323[3])
  {
    if (swift_dynamicCast())
    {
      v269 = v288;
      v270 = v289;
    }

    else
    {
      v269 = 0;
      v270 = 0;
    }

    v271 = v269;
    v272 = v270;
  }

  else
  {
    outlined destroy of Pregnancy?(v323);
    v271 = 0;
    v272 = 0;
  }

  v267 = v272;
  v268 = v271;
  if (!v272)
  {
    __swift_destroy_boxed_opaque_existential_1(v331);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_147;
  }

  v265 = v268;
  v266 = v267;
  v263 = v267;
  v262 = v268;
  v320 = v268;
  v321 = v267;

  v319 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ge", 2uLL, 1);
  v317 = v268;
  v318 = v267;
  v264 = MEMORY[0x25F889340](v319._countAndFlagsBits, v319._object, v268, v267);
  outlined destroy of DefaultStringInterpolation();
  if (v264)
  {
    v259 = v283;

    v294[1] = v274;
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v260 = v283;
    v261 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus(), 0, v258, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v3);
    if (!v283)
    {
      v245 = v261;
      v257 = v332;
      v246 = v332;
      v256 = v333;
      v247 = v333;
      __swift_project_boxed_opaque_existential_1(v331, v332);
      v248 = *(v257 - 8);
      v252 = v248;
      v249 = v248;
      v250 = *(v248 + 64);
      v251 = v69;
      MEMORY[0x28223BE20](v69);
      v253 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v254 = *(v252 + 16);
      v255 = (v252 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v254();
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
      {
        goto LABEL_40;
      }

      v290 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          v243 = v69;
          MEMORY[0x28223BE20](v69);
          v242 = v69 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
          v6(v242);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v249 + 8))(v242, v246);
          v244 = 0;
        }

        else
        {
          v240 = v69;
          MEMORY[0x28223BE20](v69);
          v239 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v241 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v249 + 8))(v239, v246);
          v244 = v241;
        }
      }

      else
      {
        v5 = dispatch thunk of static BinaryInteger.isSigned.getter();
        if (v5)
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
          {
            v221 = v69;
            MEMORY[0x28223BE20](v69);
            v220 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v222 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v249 + 8))(v220, v246);
            v244 = v222;
          }

          else
          {
            v213 = *(*(v247 + 24) + 16);
            v209 = MEMORY[0x277D846F0];
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v13 = *(*(AssociatedTypeWitness - 8) + 64);
            v218 = v69;
            v210 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v213);
            v212 = v69 - v210;
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v217 = v69;
            MEMORY[0x28223BE20](v212);
            v214 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v219 = dispatch thunk of static Comparable.< infix(_:_:)();
            v215 = *(v249 + 8);
            v216 = (v249 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v215(v214, v246);
            if (v219)
            {
LABEL_39:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              goto LABEL_40;
            }

            v208 = v69;
            MEMORY[0x28223BE20](v69);
            v207 = v69 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
            v15(v207);
            dispatch thunk of BinaryInteger._lowWord.getter();
            v215(v207, v246);
            v244 = 0;
          }
        }

        else
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
          {
LABEL_40:
            if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
            {
              v291 = 0x7FFFFFFFFFFFFFFFLL;
              if (dispatch thunk of static BinaryInteger.isSigned.getter())
              {
                if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
                {
                  v234 = v69;
                  MEMORY[0x28223BE20](v69);
                  v233 = v69 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v9(v233);
                  dispatch thunk of BinaryInteger._lowWord.getter();
                  (*(v249 + 8))(v233, v246);
                  v238 = 0;
                }

                else
                {
                  v236 = v69;
                  MEMORY[0x28223BE20](v69);
                  v235 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
                  lazy protocol witness table accessor for type Int and conformance Int();
                  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
                  v237 = dispatch thunk of static Comparable.< infix(_:_:)();
                  (*(v249 + 8))(v235, v246);
                  v238 = v237;
                }
              }

              else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
              {
                v224 = v69;
                MEMORY[0x28223BE20](v69);
                v223 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
                lazy protocol witness table accessor for type Int and conformance Int();
                dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
                v225 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v249 + 8))(v223, v246);
                v238 = v225;
              }

              else
              {
                v227 = v69;
                MEMORY[0x28223BE20](v69);
                v226 = v69 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
                v10(v226);
                dispatch thunk of BinaryInteger._lowWord.getter();
                (*(v249 + 8))(v226, v246);
                v238 = 0;
              }

              if (v238)
              {
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }
            }

            v230 = dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v249 + 8))(v253, v246);
            v294[0] = v230;
            static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v245, v294, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v295);

            v231 = v295[0];
            v232 = v295[1];
            if ((v296 & 1) == 0)
            {
              v228 = v231;
              v229 = v232;
              v200 = v232;
              v199 = v231;
              v292 = v231;
              v293 = v232;
              v201 = MEMORY[0x277D83B88];
              v17 = _allocateUninitializedArray<A>(_:)();
              v18 = v200;
              *v19 = v199;
              v19[1] = v18;
              _finalizeUninitializedArray<A>(_:)();
              v202 = v17;
              v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
              v21 = v284;
              v22 = v202;
              v284[3] = v20;
              *v21 = v22;

              __swift_destroy_boxed_opaque_existential_1(v331);

              result = __swift_destroy_boxed_opaque_existential_1(__dst);
              v203 = v260;
              return result;
            }

            v204 = v260;
LABEL_146:
            v67 = v284;
            v71 = v204;
            *v284 = 0;
            v67[1] = 0;
            v67[2] = 0;
            v67[3] = 0;

            __swift_destroy_boxed_opaque_existential_1(v331);

            __swift_destroy_boxed_opaque_existential_1(__dst);
            result = v71;
            v203 = v71;
            return result;
          }

          v206 = v69;
          MEMORY[0x28223BE20](v69);
          v205 = v69 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
          v16(v205);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v249 + 8))(v205, v246);
          v244 = 0;
        }
      }

      if ((v244 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_149;
  }

  v316 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("le", 2uLL, 1);
  v314 = v262;
  v315 = v263;
  v198 = MEMORY[0x25F889340](v316._countAndFlagsBits, v316._object, v262, v263);
  outlined destroy of DefaultStringInterpolation();
  if ((v198 & 1) == 0)
  {

    v313 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("le-ge", 5uLL, 1);
    v311 = v262;
    v312 = v263;
    v136 = MEMORY[0x25F889340](v313._countAndFlagsBits, v313._object, v262, v263);
    outlined destroy of DefaultStringInterpolation();
    if ((v136 & 1) == 0)
    {

      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v72 = 0;
      v73 = swift_allocError();
      *v66 = 38;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v331);

      __swift_destroy_boxed_opaque_existential_1(__dst);
      result = v73;
      v74 = v73;
      return result;
    }

    v133 = v283;

    v308[1] = v274;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v45 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v134 = v283;
    v135 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus(), 0, v132, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v45, MEMORY[0x277D84AC0], v46);
    if (v283)
    {
      goto LABEL_150;
    }

    v119 = v135;
    v131 = v332;
    v120 = v332;
    v130 = v333;
    v121 = v333;
    __swift_project_boxed_opaque_existential_1(v331, v332);
    v122 = *(v131 - 8);
    v126 = v122;
    v123 = v122;
    v124 = *(v122 + 64);
    v125 = v69;
    MEMORY[0x28223BE20](v69);
    v127 = v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = *(v126 + 16);
    v129 = (v126 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v128();
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
    {
LABEL_120:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v305 = 0x7FFFFFFFFFFFFFFFLL;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            v108 = v69;
            MEMORY[0x28223BE20](v69);
            v107 = v69 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
            v52(v107);
            dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v123 + 8))(v107, v120);
            v112 = 0;
          }

          else
          {
            v110 = v69;
            MEMORY[0x28223BE20](v69);
            v109 = v69 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v111 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v123 + 8))(v109, v120);
            v112 = v111;
          }
        }

        else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
        {
          v98 = v69;
          MEMORY[0x28223BE20](v69);
          v97 = v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v99 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v123 + 8))(v97, v120);
          v112 = v99;
        }

        else
        {
          v101 = v69;
          MEMORY[0x28223BE20](v69);
          v100 = v69 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
          v53(v100);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v123 + 8))(v100, v120);
          v112 = 0;
        }

        if (v112)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v104 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v123 + 8))(v127, v120);
      v308[0] = v104;
      static HIDPFLUtils.findClosest<A>(_:target:)(v119, v308, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83BC0], v309);

      v105 = v309[0];
      v106 = v309[1];
      if ((v310 & 1) == 0)
      {
        v102 = v105;
        v103 = v106;
        v76 = v106;
        v75 = v105;
        v306 = v105;
        v307 = v106;
        v77 = MEMORY[0x277D83B88];
        v60 = _allocateUninitializedArray<A>(_:)();
        v61 = v76;
        *v62 = v75;
        v62[1] = v61;
        _finalizeUninitializedArray<A>(_:)();
        v78 = v60;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
        v64 = v284;
        v65 = v78;
        v284[3] = v63;
        *v64 = v65;

        __swift_destroy_boxed_opaque_existential_1(v331);

        __swift_destroy_boxed_opaque_existential_1(__dst);
        result = v134;
        v203 = v134;
        return result;
      }

      v204 = v134;
      goto LABEL_146;
    }

    v304 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v117 = v69;
        MEMORY[0x28223BE20](v69);
        v116 = v69 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v49(v116);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v123 + 8))(v116, v120);
        v118 = 0;
      }

      else
      {
        v114 = v69;
        MEMORY[0x28223BE20](v69);
        v113 = v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v115 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v123 + 8))(v113, v120);
        v118 = v115;
      }
    }

    else
    {
      v48 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v48)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v95 = v69;
          MEMORY[0x28223BE20](v69);
          v94 = v69 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v96 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v123 + 8))(v94, v120);
          v118 = v96;
        }

        else
        {
          v87 = *(*(v121 + 24) + 16);
          v83 = MEMORY[0x277D846F0];
          v85 = swift_getAssociatedTypeWitness();
          v56 = *(*(v85 - 8) + 64);
          v92 = v69;
          v84 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v87);
          v86 = v69 - v84;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v91 = v69;
          MEMORY[0x28223BE20](v86);
          v88 = v69 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v93 = dispatch thunk of static Comparable.< infix(_:_:)();
          v89 = *(v123 + 8);
          v90 = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v89(v88, v120);
          if (v93)
          {
            goto LABEL_119;
          }

          v82 = v69;
          MEMORY[0x28223BE20](v69);
          v81 = v69 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
          v58(v81);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v89(v81, v120);
          v118 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_120;
        }

        v80 = v69;
        MEMORY[0x28223BE20](v69);
        v79 = v69 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v59(v79);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v123 + 8))(v79, v120);
        v118 = 0;
      }
    }

    if ((v118 & 1) == 0)
    {
      goto LABEL_120;
    }

LABEL_119:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_120;
  }

  v195 = v283;

  v301[1] = v274;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v24 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v196 = v283;
  v197 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus(), 0, v194, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);
  if (!v283)
  {
    v181 = v197;
    v193 = v332;
    v182 = v332;
    v192 = v333;
    v183 = v333;
    __swift_project_boxed_opaque_existential_1(v331, v332);
    v184 = *(v193 - 8);
    v188 = v184;
    v185 = v184;
    v186 = *(v184 + 64);
    v187 = v69;
    MEMORY[0x28223BE20](v69);
    v189 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v190 = *(v188 + 16);
    v191 = (v188 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v190();
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
    {
LABEL_80:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v298 = 0x7FFFFFFFFFFFFFFFLL;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            v170 = v69;
            MEMORY[0x28223BE20](v69);
            v169 = v69 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
            v31(v169);
            dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v185 + 8))(v169, v182);
            v174 = 0;
          }

          else
          {
            v172 = v69;
            MEMORY[0x28223BE20](v69);
            v171 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v173 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v185 + 8))(v171, v182);
            v174 = v173;
          }
        }

        else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
        {
          v160 = v69;
          MEMORY[0x28223BE20](v69);
          v159 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v161 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v185 + 8))(v159, v182);
          v174 = v161;
        }

        else
        {
          v163 = v69;
          MEMORY[0x28223BE20](v69);
          v162 = v69 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
          v32(v162);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v185 + 8))(v162, v182);
          v174 = 0;
        }

        if (v174)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v166 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v185 + 8))(v189, v182);
      v301[0] = v166;
      static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v181, v301, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v302);

      v167 = v302[0];
      v168 = v302[1];
      if ((v303 & 1) == 0)
      {
        v164 = v167;
        v165 = v168;
        v138 = v168;
        v137 = v167;
        v299 = v167;
        v300 = v168;
        v139 = MEMORY[0x277D83B88];
        v39 = _allocateUninitializedArray<A>(_:)();
        v40 = v138;
        *v41 = v137;
        v41[1] = v40;
        _finalizeUninitializedArray<A>(_:)();
        v140 = v39;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
        v43 = v284;
        v44 = v140;
        v284[3] = v42;
        *v43 = v44;

        __swift_destroy_boxed_opaque_existential_1(v331);

        result = __swift_destroy_boxed_opaque_existential_1(__dst);
        v203 = v196;
        return result;
      }

      v204 = v196;
      goto LABEL_146;
    }

    v297 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v179 = v69;
        MEMORY[0x28223BE20](v69);
        v178 = v69 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
        v28(v178);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v185 + 8))(v178, v182);
        v180 = 0;
      }

      else
      {
        v176 = v69;
        MEMORY[0x28223BE20](v69);
        v175 = v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v177 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v185 + 8))(v175, v182);
        v180 = v177;
      }
    }

    else
    {
      v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v27)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v157 = v69;
          MEMORY[0x28223BE20](v69);
          v156 = v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v158 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v185 + 8))(v156, v182);
          v180 = v158;
        }

        else
        {
          v149 = *(*(v183 + 24) + 16);
          v145 = MEMORY[0x277D846F0];
          v147 = swift_getAssociatedTypeWitness();
          v35 = *(*(v147 - 8) + 64);
          v154 = v69;
          v146 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v149);
          v148 = v69 - v146;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v153 = v69;
          MEMORY[0x28223BE20](v148);
          v150 = v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v155 = dispatch thunk of static Comparable.< infix(_:_:)();
          v151 = *(v185 + 8);
          v152 = (v185 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v151(v150, v182);
          if (v155)
          {
            goto LABEL_79;
          }

          v144 = v69;
          MEMORY[0x28223BE20](v69);
          v143 = v69 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
          v37(v143);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v151(v143, v182);
          v180 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_80;
        }

        v142 = v69;
        MEMORY[0x28223BE20](v69);
        v141 = v69 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
        v38(v141);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v185 + 8))(v141, v182);
        v180 = 0;
      }
    }

    if ((v180 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_79:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_80;
  }

LABEL_149:
  __break(1u);
LABEL_150:
  result = 0;
  __break(1u);
  return result;
}

id closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t closure #5 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = 0;
  v24[4] = a1;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("value", 5uLL, 1);
  MEMORY[0x25F8891D0](v24);
  outlined destroy of DefaultStringInterpolation();
  if (v24[3])
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    outlined destroy of Pregnancy?(v24);
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v22 = v11;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buckets", 7uLL, 1);
  MEMORY[0x25F8891D0](v15);
  outlined destroy of DefaultStringInterpolation();
  if (v15[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v15);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (!v19)
  {
    outlined destroy of Pregnancy?(&v16);
    MEMORY[0x277D82BD8](v11);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v5 = 39;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v16, __dst);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    MEMORY[0x277D82BD8](v11);
    goto LABEL_21;
  }

  [v11 floatValue];
  v7 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v3 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v8, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v9);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v6 = static MetricsUtils.bucketize(value:buckets:)(result, v7);

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    *a2 = v6;

    __swift_destroy_boxed_opaque_existential_1(__dst);
    return MEMORY[0x277D82BD8](v11);
  }

  return result;
}

id closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 floatValue];
  *a2 = v3;
  return result;
}

uint64_t closure #6 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, void (**a2)(void)@<X8>)
{
  v20 = 0;
  __dst[5] = a1;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("values", 6uLL, 1);
  MEMORY[0x25F8891D0](v22);
  outlined destroy of DefaultStringInterpolation();
  if (v22[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v22);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  if (!v26)
  {
    outlined destroy of Pregnancy?(&v23);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v3 = 39;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v23, __dst);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v10 = _arrayConditionalCast<A, B>(_:)();
  if (!v10)
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v20 = v10;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buckets", 7uLL, 1);
  MEMORY[0x25F8891D0](v13);
  outlined destroy of DefaultStringInterpolation();
  if (v13[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v13);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  if (!v17)
  {
    outlined destroy of Pregnancy?(&v14);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v14, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v19);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v8 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
  v9 = result;
  if (v12)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
    v4 = static MetricsUtils.bucketize(values:buckets:)(v9, v5);

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    *a2 = v4;

    __swift_destroy_boxed_opaque_existential_1(v19);

    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #7 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __dst[5] = a1;
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v28);
  outlined destroy of DefaultStringInterpolation();
  if (v28[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  if (!v32)
  {
    outlined destroy of Pregnancy?(&v29);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v6 = 40;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v29, __dst);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v20);
  outlined destroy of DefaultStringInterpolation();
  if (v20[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v20);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  if (!v24)
  {
    outlined destroy of Pregnancy?(&v21);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v21, v26);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v16 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v14, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v15);
  v17 = result;
  if (v19)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v14, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v15);
    v10 = static AUC.rocCurve(outputs:labels:)(v17, v13);
    v11 = v3;
    v12 = v4;
    v9 = _allocateUninitializedArray<A>(_:)();
    v8 = v5;

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v8[3] = v7;
    *v8 = v10;

    v8[7] = v7;
    v8[4] = v11;

    v8[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v8[8] = v12;
    _finalizeUninitializedArray<A>(_:)();

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
    *a2 = v9;

    __swift_destroy_boxed_opaque_existential_1(v26);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #8 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0;
  v20 = 0;
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_31:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v7 = swift_allocError();
    *v6 = 41;
    swift_willThrow();
    return v7;
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v15 = _arrayConditionalCast<A, B>(_:)();
  if (!v15)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v21 = v15;

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v20 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPR", 6uLL, 1);
  MEMORY[0x25F8891D0](v19);
  outlined destroy of DefaultStringInterpolation();
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(v19);
    v14 = 0;
  }

  if (!v14)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v11 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
    [v14 floatValue];
    static AUC.rocAUCScore(tpr:fpr:maxFPR:)(v12, v8, v3);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v4;
  }

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #9 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __dst[5] = a1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v30);
  outlined destroy of DefaultStringInterpolation();
  if (v30[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v30);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  if (!v34)
  {
    outlined destroy of Pregnancy?(&v31);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v7 = 42;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v31, __dst);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v22);
  outlined destroy of DefaultStringInterpolation();
  if (v22[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v22);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  if (!v26)
  {
    outlined destroy of Pregnancy?(&v23);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v23, v28);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v18 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v16, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v17);
  v19 = result;
  if (v21)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v16, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v17);
    v11 = static AUC.precisionRecallCurve(outputs:labels:)(v19, v15);
    v12 = v3;
    v13 = v4;
    v14 = v5;
    v10 = _allocateUninitializedArray<A>(_:)();
    v9 = v6;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v9[3] = v8;
    *v9 = v11;

    v9[7] = v8;
    v9[4] = v12;

    v9[11] = v8;
    v9[8] = v13;

    v9[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v9[12] = v14;
    _finalizeUninitializedArray<A>(_:)();

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
    *a2 = v10;

    __swift_destroy_boxed_opaque_existential_1(v28);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #10 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __dst[5] = a1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("precision", 9uLL, 1);
  MEMORY[0x25F8891D0](v20);
  outlined destroy of DefaultStringInterpolation();
  if (v20[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v20);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  if (!v24)
  {
    outlined destroy of Pregnancy?(&v21);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v4 = 43;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v21, __dst);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("recall", 6uLL, 1);
  MEMORY[0x25F8891D0](v12);
  outlined destroy of DefaultStringInterpolation();
  if (v12[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v12);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  if (!v16)
  {
    outlined destroy of Pregnancy?(&v13);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v13, v18);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v8 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
  v9 = result;
  if (v11)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
    static AUC.prAUCScore(precison:recall:)(v9, v5);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v3;

    __swift_destroy_boxed_opaque_existential_1(v18);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #11 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = 0;
  v27 = 0;
  __dst[5] = a1;
  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v38);
  outlined destroy of DefaultStringInterpolation();
  if (v38[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v38);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  if (!v42)
  {
    outlined destroy of Pregnancy?(&v39);
LABEL_30:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v8 = 44;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v39, __dst);
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v30);
  outlined destroy of DefaultStringInterpolation();
  if (v30[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v30);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  if (!v34)
  {
    outlined destroy of Pregnancy?(&v31);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  outlined init with take of HealthDataQuery(&v31, v36);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v22 = _arrayConditionalCast<A, B>(_:)();
  if (!v22)
  {

    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  v28 = v22;

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  v27 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("numThresholds", 0xDuLL, 1);
  MEMORY[0x25F8891D0](v26);
  outlined destroy of DefaultStringInterpolation();
  if (v26[3])
  {
    if (swift_dynamicCast())
    {
      v20 = v25;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    outlined destroy of Pregnancy?(v26);
    v21 = 0;
  }

  if (!v21)
  {

    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v18 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v16, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v17);
  v19 = result;
  if (v24)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v16, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v17);
    v11 = static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)(v19, v15, [v21 integerValue]);
    v12 = v4;
    v13 = v5;
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v9 = _allocateUninitializedArray<A>(_:)();
    v10 = v7;

    *v10 = v11;

    v10[1] = v12;

    v10[2] = v13;

    v10[3] = v14;
    _finalizeUninitializedArray<A>(_:)();

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySfGGMd);
    *a2 = v9;

    MEMORY[0x277D82BD8](v21);

    __swift_destroy_boxed_opaque_existential_1(v36);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #12 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0;
  v20 = 0;
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_31:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v5 = 45;
    swift_willThrow();
    return v6;
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v15 = _arrayConditionalCast<A, B>(_:)();
  if (!v15)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v21 = v15;

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v20 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPR", 9uLL, 1);
  MEMORY[0x25F8891D0](v19);
  outlined destroy of DefaultStringInterpolation();
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(v19);
    v14 = 0;
  }

  if (!v14)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v11 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
    [v14 floatValue];
    v7 = static AUC.tpr(at:tpr:fpr:)(v12, v8, v3);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v7;
  }

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #13 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0;
  v20 = 0;
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("precision", 9uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_31:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v5 = 46;
    swift_willThrow();
    return v6;
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v15 = _arrayConditionalCast<A, B>(_:)();
  if (!v15)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v21 = v15;

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v20 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPR", 9uLL, 1);
  MEMORY[0x25F8891D0](v19);
  outlined destroy of DefaultStringInterpolation();
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(v19);
    v14 = 0;
  }

  if (!v14)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v11 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
    [v14 floatValue];
    v7 = static AUC.tpr(at:tpr:fpr:)(v12, v8, v3);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v7;
  }

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #14 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v58 = a1;
  v52 = closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus();
  v83 = 0;
  v72 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v62 = 0;
  v63 = 0;
  v53 = type metadata accessor for PFLStats.StdMethod();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = &v18 - v56;
  v83 = MEMORY[0x28223BE20](v58);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("array", 5uLL, 1);
  v59 = &v73;
  v73 = v2;
  MEMORY[0x25F8891D0](v74);
  outlined destroy of DefaultStringInterpolation();
  if (v74[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v74);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
  }

  if (!v78)
  {
    outlined destroy of Pregnancy?(&v75);
LABEL_24:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v18 = swift_allocError();
    *v17 = 46;
    return swift_willThrow();
  }

  v45 = __dst;
  outlined init with take of HealthDataQuery(&v75, __dst);
  v47 = v81;
  v46 = v82;
  __swift_project_boxed_opaque_existential_1(v45, v81);
  v48 = dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v49 = _arrayConditionalCast<A, B>(_:)();
  if (!v49 || ((v44 = v49, v42 = v49, v72 = v49, , v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("method", 6uLL, 1), v43 = &v70, v70 = v3, MEMORY[0x25F8891D0](v71), outlined destroy of DefaultStringInterpolation(), v71[3]) ? ((swift_dynamicCast() & 1) == 0 ? (v38 = 0, v39 = 0) : (v38 = v60, v39 = v61), v40 = v38, v41 = v39) : (outlined destroy of Pregnancy?(v71), v40 = 0, v41 = 0), v36 = v41, v37 = v40, !v41))
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_24;
  }

  v34 = v37;
  v35 = v36;
  v28 = v36;
  v29 = v37;
  v68 = v37;
  v69 = v36;
  v67 = v42;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v4 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v5 = v51;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v52, 0, v30, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v31);
  v32 = v5;
  v33 = result;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v25 = v33;
    v66 = v33;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("population", 0xAuLL, 1);
    object = v7._object;
    v27 = MEMORY[0x25F889340](v29, v28, v7._countAndFlagsBits);

    if (v27)
    {
      (*(v54 + 104))(v57, *MEMORY[0x277D41408], v53);
    }

    else
    {
      (*(v54 + 104))(v57, *MEMORY[0x277D41410], v53);
    }

    v64 = static PFLStats.meanAndStd(_:_:)();
    v65 = v8;
    v19 = v64;
    v20 = BYTE4(v64);
    v21 = v8;
    (*(v54 + 8))(v57, v53);
    LODWORD(v62) = v19;
    v22 = 1;
    BYTE4(v62) = v20 & 1;
    v63 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd);
    v9 = _allocateUninitializedArray<A>(_:)();
    v10 = v20;
    v11 = v21;
    v12 = v22;
    *v13 = v19;
    *(v13 + 4) = v10 & 1 & v12;
    *(v13 + 8) = v11;
    *(v13 + 12) = 0;
    _finalizeUninitializedArray<A>(_:)();
    v24 = v9;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfSgGMd);
    v15 = v24;
    v16 = v50;
    v50[3] = v14;
    *v16 = v15;

    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #15 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v100 = 0;
  v97 = 0;
  v89 = 0;
  v81 = 0;
  v78 = 0;
  v70 = 0;
  v67 = 0;
  v64 = 0;
  v102[4] = a1;
  v101 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("task", 4uLL, 1);
  MEMORY[0x25F8891D0](v102);
  outlined destroy of DefaultStringInterpolation();
  if (v102[3])
  {
    type metadata accessor for PFLTask();
    if (swift_dynamicCast())
    {
      v52 = v56;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
  }

  else
  {
    outlined destroy of Pregnancy?(v102);
    v53 = 0;
  }

  if (!v53)
  {
    goto LABEL_113;
  }

  v100 = v53;
  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hyperParams", 0xBuLL, 1);
  MEMORY[0x25F8891D0](v99);
  outlined destroy of DefaultStringInterpolation();
  if (v99[3])
  {
    type metadata accessor for HyperParams();
    if (swift_dynamicCast())
    {
      v50 = v57;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
  }

  else
  {
    outlined destroy of Pregnancy?(v99);
    v51 = 0;
  }

  if (!v51)
  {

LABEL_113:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v7 = swift_allocError();
    *v6 = 46;
    swift_willThrow();
    return v7;
  }

  v97 = v51;
  v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v91);
  outlined destroy of DefaultStringInterpolation();
  if (v91[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v91);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
  }

  if (v95)
  {
    __swift_project_boxed_opaque_existential_1(&v92, v95);
    v48 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v92);
    v49 = v48;
  }

  else
  {
    outlined destroy of Pregnancy?(&v92);
    v49 = 0;
  }

  if (v49)
  {
    type metadata accessor for NSNumber();
    v46 = _arrayConditionalCast<A, B>(_:)();

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
    KeyPath = swift_getKeyPath();

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v43 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), KeyPath, v41, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v42);
    if (v55)
    {

      __break(1u);
      goto LABEL_115;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v44 = v43;
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = v55;
  }

  if (!v44)
  {

    goto LABEL_113;
  }

  v89 = v44;
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v83);
  outlined destroy of DefaultStringInterpolation();
  if (v83[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v83);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  if (v87)
  {
    __swift_project_boxed_opaque_existential_1(&v84, v87);
    v38 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v84);
    v39 = v38;
  }

  else
  {
    outlined destroy of Pregnancy?(&v84);
    v39 = 0;
  }

  if (v39)
  {
    type metadata accessor for NSNumber();
    v36 = _arrayConditionalCast<A, B>(_:)();

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (!v37)
  {
    v34 = 0;
    v35 = v45;
    goto LABEL_52;
  }

  v31 = swift_getKeyPath();

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v3 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v31, v32, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v42);
  if (v45)
  {
LABEL_115:

    __break(1u);
    goto LABEL_116;
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v34 = v33;
  v35 = 0;
LABEL_52:
  if (!v34)
  {

    goto LABEL_113;
  }

  v81 = v34;
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("historicalPeriods", 0x11uLL, 1);
  MEMORY[0x25F8891D0](v80);
  outlined destroy of DefaultStringInterpolation();
  if (v80[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
    if (swift_dynamicCast())
    {
      v29 = v58;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
  }

  else
  {
    outlined destroy of Pregnancy?(v80);
    v30 = 0;
  }

  if (!v30)
  {

    goto LABEL_113;
  }

  v78 = v30;
  v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, 1);
  MEMORY[0x25F8891D0](v72);
  outlined destroy of DefaultStringInterpolation();
  if (v72[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v72);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
  }

  if (v76)
  {
    __swift_project_boxed_opaque_existential_1(&v73, v76);
    v27 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v28 = v27;
  }

  else
  {
    outlined destroy of Pregnancy?(&v73);
    v28 = 0;
  }

  if (v28)
  {
    type metadata accessor for NSNumber();
    v25 = _arrayConditionalCast<A, B>(_:)();

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (!v26)
  {
    v23 = 0;
    v24 = v35;
    goto LABEL_79;
  }

  v20 = swift_getKeyPath();

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v4 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v20, v21, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v42);
  if (v35)
  {
LABEL_116:

    __break(1u);
    goto LABEL_117;
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v23 = v22;
  v24 = 0;
LABEL_79:
  if (!v23)
  {

    goto LABEL_113;
  }

  v70 = v23;
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregnancies", 0xBuLL, 1);
  MEMORY[0x25F8891D0](v69);
  outlined destroy of DefaultStringInterpolation();
  if (v69[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    if (swift_dynamicCast())
    {
      v18 = v59;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    outlined destroy of Pregnancy?(v69);
    v19 = 0;
  }

  if (!v19)
  {

    goto LABEL_113;
  }

  v67 = v19;
  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("today", 5uLL, 1);
  MEMORY[0x25F8891D0](v66);
  outlined destroy of DefaultStringInterpolation();
  if (v66[3])
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v16 = v60;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    outlined destroy of Pregnancy?(v66);
    v17 = 0;
  }

  if (v17)
  {
    v13 = [v17 unsignedIntValue];
    MEMORY[0x277D82BD8](v17);
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  if (v15)
  {

    goto LABEL_113;
  }

  v64 = v14;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("metricPrefix", 0xCuLL, 1);
  MEMORY[0x25F8891D0](v63);
  outlined destroy of DefaultStringInterpolation();
  if (v63[3])
  {
    if (swift_dynamicCast())
    {
      v9 = v61;
      v10 = v62;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v9;
    v12 = v10;
  }

  else
  {
    outlined destroy of Pregnancy?(v63);
    v11 = 0;
    v12 = 0;
  }

  if (!v12)
  {

    goto LABEL_113;
  }

  v8 = static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(v53, v51, v44, v34, v30, v23, v19, v14, v11, v12);
  if (!v24)
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    *a2 = v8;
  }

LABEL_117:
}

uint64_t closure #16 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = 0;
  v22 = 0;
  v21 = 0;
  v38 = a1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minuend", 7uLL, 1);
  MEMORY[0x25F8891D0](v32);
  outlined destroy of DefaultStringInterpolation();
  if (v32[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v32);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  if (v36)
  {
    __swift_project_boxed_opaque_existential_1(&v33, v36);
    v17 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v18 = v17;
  }

  else
  {
    outlined destroy of Pregnancy?(&v33);
    v18 = 0;
  }

  if (v18)
  {
    type metadata accessor for NSNumber();
    v15 = _arrayConditionalCast<A, B>(_:)();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  v30 = v16;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("subtrahend", 0xAuLL, 1);
  MEMORY[0x25F8891D0](v24);
  outlined destroy of DefaultStringInterpolation();
  if (v24[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v24);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(&v25, v28);
    v13 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(&v25);
    v14 = 0;
  }

  if (v14)
  {
    type metadata accessor for NSNumber();
    v11 = _arrayConditionalCast<A, B>(_:)();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {

LABEL_29:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v3 = 46;
    return swift_willThrow();
  }

  v22 = v12;
  KeyPath = swift_getKeyPath();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  v9 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), KeyPath, v7, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v8);

  if (v20)
  {
    __break(1u);

    __break(1u);
  }

  else
  {

    v21 = v10;
    v5 = swift_getKeyPath();

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v5, v7, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v8);

    static HIDPFLUtils.inplaceSub(_:_:)(&v21);
    v4 = v21;

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    *a2 = v4;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  return result;
}

uint64_t default argument 1 of Function.init(name:arguments:attrs:body:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZypSg_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZypSg_Tt0gq5(0);
  return Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
}

unint64_t lazy protocol witness table accessor for type ShuffleMethod and conformance ShuffleMethod()
{
  v2 = lazy protocol witness table cache variable for type ShuffleMethod and conformance ShuffleMethod;
  if (!lazy protocol witness table cache variable for type ShuffleMethod and conformance ShuffleMethod)
  {
    type metadata accessor for ShuffleMethod();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ShuffleMethod and conformance ShuffleMethod);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of B?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t outlined destroy of B?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Cycle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Cycle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t static String._createEmpty(withInitialCapacity:)(Swift::Int a1)
{

  if (a1 > 15)
  {
    _StringGuts.grow(_:)(a1);
  }

  return 0;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZypSg_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_ypt_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5(uint64_t a1)
{
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v12 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];

    v12 = v11;
  }

  v10 = specialized Array._getCount()(a1);
  if (v10)
  {
    if (v10 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
        specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(i, IsNativeType & 1, a1, &v14);
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if (v2)
        {
          break;
        }

        v12[v8 / 0x40 + 8] |= 1 << ((v8 % 0x40) & 0x3F);
        v3 = (v12[6] + 16 * v8);
        v4 = v15;
        *v3 = v14;
        v3[1] = v4;
        outlined init with take of Any(&v16, v12[7] + 32 * v8);
        v5 = v12[2];
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

        v12[2] = v7;
        if (i + 1 == v10)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
  }
}

void *specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    return outlined init with copy of (String, Any)((a3 + 32 + 48 * a1), a4);
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)(a1, a3);
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  memcpy(__dst, v7, sizeof(__dst));
  String.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v2);
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = static String._createEmpty(withInitialCapacity:)(82);
    v9 = v2;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889370](countAndFlagsBits);

    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(String, Any)", 0xDuLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889370](v4);

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889370](v5);

    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    MEMORY[0x25F889370](v6);

    MEMORY[0x25F889320](v8, v9);
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  outlined destroy of (String, Any)(v10);
  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];

    v9 = MEMORY[0x25F889340](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

void *outlined init with copy of (String, Any)(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))((a2 + 2), (a1 + 2));
  return a2;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  return a1;
}

uint64_t static MetricsUtils.bucketize(value:buckets:)(uint64_t a1, float a2)
{
  v17 = 0;
  v19 = a2;
  v18 = a1;
  v16 = 0;
  result = MEMORY[0x25F8895B0]();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = Array.init(repeating:count:)();
    v12 = a2;
    result = static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(a1, &v12, MEMORY[0x277D83A90], MEMORY[0x277D83AB8], v13);
    if (v15)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = v14;
      v9 = 0;
    }

    if ((v9 & 1) != 0 || (!__OFADD__(v8, 1) ? (v4 = 0) : (v4 = 1), (v4 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
      v5 = Array.subscript.modify();
      *v6 = 1;
      v5();
      v7 = v17;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v7;
    }
  }

  __break(1u);
  return result;
}

void (*static MetricsUtils.bucketize(values:buckets:)(uint64_t a1, uint64_t a2))(void)
{
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v26 = a1;
  v25 = a2;
  v23 = 0;
  result = MEMORY[0x25F8895B0](a2, MEMORY[0x277D83A90]);
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v24 = Array.init(repeating:count:)();

    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd);
      IndexingIterator.next()();
      if (v19)
      {
        break;
      }

      v17 = v18;
      v13 = v18;
      result = static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(a2, &v13, MEMORY[0x277D83A90], MEMORY[0x277D83AB8], v14);
      if (v16)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v15;
        v10 = 0;
      }

      if (v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
        result = Array.subscript.modify();
        if (__OFADD__(*v5, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
        result = Array.subscript.modify();
        if (__OFADD__(*v5, 1))
        {
          goto LABEL_29;
        }
      }

      ++*v5;
      result();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v8 = v24;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v8;
  }

  return result;
}

uint64_t static AUC.rocCurve(outputs:labels:)(uint64_t a1, uint64_t a2)
{
  v126 = 0;
  v158 = 0;
  v157 = 0;
  v127 = 0;
  v149[0] = 0;
  v146 = 0;
  v135 = 0;
  v164[2] = a1;
  v164[1] = a2;
  v130 = static AUC.binaryClassificationCurve(outputs:labels:)(a1, a2);
  v128 = v2;
  v129 = v3;

  v164[0] = v130;
  v163 = v128;
  v162 = v129;
  v131 = MEMORY[0x25F8895B0]();

  if (v131 < 3)
  {
    v84 = v127;
  }

  else
  {
    v4 = v127;
    v102 = v164[0];

    v148 = v164[0];
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v110 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v111 = MEMORY[0x277D83AD0];
    v103 = &v148;
    v104 = Collection<>.diff()(v118, v110, MEMORY[0x277D83AD0]);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v147 = v104;
    v105 = &v147;
    v106 = Collection<>.diff()(v118, v110, v111);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v149[0] = v106;
    v107 = v163;

    v145 = v107;
    v108 = &v145;
    v109 = Collection<>.diff()(v118, v110, v111);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v144 = v109;
    v112 = &v144;
    v113 = Collection<>.diff()(v118, v110, v111);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v146 = v113;
    v115 = 1065353216;
    v143 = 1065353216;
    v114 = v149;
    Array.append(_:)();
    v142 = 1065353216;
    v116 = 0;
    Array.insert(_:at:)();
    v141 = 1065353216;
    v120 = &v146;
    Array.append(_:)();
    v140 = 1065353216;
    Array.insert(_:at:)();
    v117 = v149[0];

    v138 = v117;
    v5 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v119 = &v138;
    MEMORY[0x25F889420](&v139, v118, v5);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v137 = v139;
    v121 = v42;
    MEMORY[0x28223BE20](v42);
    v122 = v41;
    v41[2] = v6;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd);
    lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
    v7 = Sequence.filter(_:)();
    v124 = v4;
    v125 = v7;
    v136 = v7;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd);
    v8 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
    v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v99, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
    v100 = 0;
    v101 = v10;
    v91 = v10;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v135 = v91;
    v134 = v91;
    v92 = v41;
    MEMORY[0x28223BE20](v41);
    v94 = v38;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v93 = v95;
    v96 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), v94, v95, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v96, MEMORY[0x277D84AC0], v11);
    v97 = 0;
    v98 = v12;
    v164[0] = v12;

    v133 = v91;
    v88 = v41;
    MEMORY[0x28223BE20](v41);
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), v38, v13, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
    v89 = 0;
    v90 = v16;
    v163 = v16;

    v132 = v91;
    v85 = v41;
    MEMORY[0x28223BE20](v41);
    v40 = &v162;
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static AUC.rocCurve(outputs:labels:), v38, v17, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);
    v86 = 0;
    v87 = v20;
    v162 = v20;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v84 = v86;
  }

  v74 = v84;
  v76 = 0;
  v161 = 0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v75 = v79;
  v77 = 0;
  Array.insert(_:at:)();
  v160 = v76;
  Array.insert(_:at:)();
  v159 = 0x7FFFFFFFFFFFFFFFLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  Array.insert(_:at:)();
  v78 = MEMORY[0x277D83A90];
  v158 = Array.init()();
  v157 = Array.init()();
  v81 = v164[0];

  v156 = v81;
  v80 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();
  v82 = v154;
  v83 = v155;

  if (v83)
  {
    LODWORD(v40) = 0;
    v39 = 143;
    v38[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v73 = v82;
  }

  if (v73 <= 0.0)
  {
    v21 = v74;
    v70 = v164[0];

    v149[1] = v70;
    v22 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in static AUC.rocCurve(outputs:labels:), 0, v75, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    v71 = v21;
    v72 = v24;
    if (!v21)
    {
      v67 = v72;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v158 = v67;

      v68 = v67;
      v69 = 0;
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v74;
  v62 = v164[0];

  v153 = v62;
  v63 = v41;
  MEMORY[0x28223BE20](v41);
  v64 = v38;
  v40 = v164;
  v26 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #7 in static AUC.rocCurve(outputs:labels:), v64, v75, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
  v65 = v25;
  v66 = v28;
  if (v25)
  {
    goto LABEL_22;
  }

  v61 = v66;
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v158 = v61;

  v68 = v61;
  v69 = v65;
LABEL_12:
  v56 = v69;
  v57 = v68;
  v58 = v163;

  v152 = v58;
  BidirectionalCollection.last.getter();
  v59 = v150;
  v60 = v151;

  if (v60)
  {
    LODWORD(v40) = 0;
    v39 = 148;
    v38[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v55 = v59;
  }

  if (v55 <= 0.0)
  {
    v29 = v56;
    v52 = v163;

    v149[2] = v52;
    v30 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in static AUC.rocCurve(outputs:labels:), 0, v75, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);
    v53 = v29;
    v54 = v32;
    if (!v29)
    {
      v49 = v54;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v157 = v49;

      v50 = v49;
      v51 = 0;
LABEL_20:
      v42[1] = v50;
      v42[2] = v162;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v57;
    }

    goto LABEL_23;
  }

  v33 = v56;
  v44 = v163;

  v149[3] = v44;
  v45 = v41;
  MEMORY[0x28223BE20](v41);
  v46 = v38;
  v40 = &v163;
  v34 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #9 in static AUC.rocCurve(outputs:labels:), v46, v75, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v35);
  v47 = v33;
  v48 = v36;
  if (!v33)
  {
    v43 = v48;
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v157 = v43;

    v50 = v43;
    v51 = v47;
    goto LABEL_20;
  }

LABEL_24:
  result = 0;
  __break(1u);
  return result;
}

uint64_t static AUC.rocAUCScore(tpr:fpr:maxFPR:)(uint64_t a1, uint64_t a2, float a3)
{
  v60 = a3;
  v61 = a2;
  v62 = a1;
  v99 = 0;
  v92 = 0.0;
  v91 = 0;
  v79 = 0;
  v67 = 0.0;
  v66 = 0.0;
  v65 = 0.0;
  v106 = a1;
  v105 = a2;
  *&v104[2] = a3;
  *&v104[1] = a3;
  v104[0] = 1065353216;
  v64 = lazy protocol witness table accessor for type Float and conformance Float();
  v63 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v103[0] = v103[1];
  if ((FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v104, v103, v63, v64) & 1) == 0)
  {
    if (v60 >= 1.0 || v60 <= 0.0)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v16[1] = 0;
      v17 = swift_allocError();
      *v14 = 65;
      swift_willThrow();
      result = v17;
      v18 = v17;
      return result;
    }

    v51 = v59;
    v100 = v61;
    v47 = v16;
    MEMORY[0x28223BE20](v16);
    v49 = v15;
    v15[4] = v5;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v48 = v50;
    v6 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v7 = v51;
    v52 = v6;
    Collection.firstIndex(where:)();
    v53 = v7;
    if (v7)
    {
      __break(1u);
LABEL_31:
      v16[0] = v32;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v16[0];
      v18 = v16[0];
      return result;
    }

    v46 = v101;
    if (v102)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v45 = v46;
    }

    v43 = v45;
    v99 = v45;
    result = v45 - 1;
    v8 = __OFSUB__(v45, 1);
    v44 = v45 - 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      Array.subscript.getter();
      v41 = v98;
      result = v43 - 1;
      v9 = __OFSUB__(v43, 1);
      v42 = v43 - 1;
      if (!v9)
      {
        v37 = MEMORY[0x277D83A90];
        Array.subscript.getter();
        v38 = v60 - v97;
        Array.subscript.getter();
        v39 = v96;
        result = v43 - 1;
        v10 = __OFSUB__(v43, 1);
        v40 = v43 - 1;
        if (!v10)
        {
          v33 = MEMORY[0x277D83A90];
          Array.subscript.getter();
          v34 = v38 / (v39 - v95);
          Array.subscript.getter();
          v35 = v94;
          result = v43 - 1;
          v11 = __OFSUB__(v43, 1);
          v36 = v43 - 1;
          if (!v11)
          {
            v25 = v53;
            v22 = MEMORY[0x277D83A90];
            Array.subscript.getter();
            v21 = v41 + (v34 * (v35 - v93));
            v92 = v21;

            v86 = v62;
            v85 = v43;
            Collection.prefix(upTo:)();
            v81 = v87;
            v82 = v88;
            v83 = v89;
            v84 = v90;
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd);
            v24 = lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
            v91 = Array.init<A>(_:)();
            v80 = v21;
            Array.append(_:)();

            v74 = v61;
            v73 = v43;
            Collection.prefix(upTo:)();
            v69 = v75;
            v70 = v76;
            v71 = v77;
            v72 = v78;
            v79 = Array.init<A>(_:)();
            v68 = v60;
            Array.append(_:)();
            v12 = v25;
            v28 = v79;
            v26 = v79;

            v29 = v91;
            v27 = v91;

            static AUC.auc(x:y:)(v28, v29);
            v30 = v12;
            v31 = v13;
            v32 = v12;
            if (!v12)
            {
              v19 = v31;

              v67 = v19;
              v66 = powf(v60, 2.0) * 0.5;
              v65 = v60;
              v20 = (((v19 - v66) / (v60 - v66)) + 1.0) * 0.5;
              outlined destroy of [(start: UInt32, end: UInt32)]();
              outlined destroy of [(start: UInt32, end: UInt32)]();
              result = v30;
              v54 = v20;
              v55 = v30;
              return result;
            }

            goto LABEL_31;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  static AUC.auc(x:y:)(v61, v62);
  v56 = v59;
  result = v59;
  v57 = v4;
  v58 = v59;
  if (v59)
  {
    result = v58;
    v18 = v58;
  }

  else
  {
    v54 = v57;
    v55 = 0;
  }

  return result;
}

uint64_t static AUC.precisionRecallCurve(outputs:labels:)(uint64_t a1, uint64_t a2)
{
  v149 = 0;
  v195 = 0;
  v150 = 0;
  v187 = 0;
  v182 = 0;
  v180 = 0;
  v170[0] = 0;
  v168 = 0;
  v158 = 0;
  v198[2] = a1;
  v198[1] = a2;
  v153 = static AUC.binaryClassificationCurve(outputs:labels:)(a1, a2);
  v151 = v2;
  v152 = v3;

  v198[0] = v153;
  v197 = v151;
  v196 = v152;
  v154 = MEMORY[0x25F8895B0]();

  if (v154 < 3)
  {
    v108 = v150;
  }

  else
  {
    v4 = v150;
    v126 = v198[0];

    v169[5] = v198[0];
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v133 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    default argument 0 of Collection.dropFirst(_:)();
    Collection.dropLast(_:)();
    v169[1] = v169[6];
    v169[2] = v169[7];
    v169[3] = v169[8];
    v169[4] = v169[9];
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd);
    v132 = lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
    v130 = MEMORY[0x277D83A90];
    v169[0] = Array.init<A>(_:)();
    v134 = MEMORY[0x277D83AD0];
    v127 = v169;
    v128 = Collection<>.diff()(v141, v133, MEMORY[0x277D83AD0]);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v170[0] = v128;
    v129 = v197;

    v167[5] = v129;
    default argument 0 of Collection.dropFirst(_:)();
    Collection.dropFirst(_:)();
    v167[1] = v167[6];
    v167[2] = v167[7];
    v167[3] = v167[8];
    v167[4] = v167[9];
    v167[0] = Array.init<A>(_:)();
    v135 = v167;
    v136 = Collection<>.diff()(v141, v133, v134);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v168 = v136;
    v138 = 1065353216;
    v166 = 1065353216;
    v137 = v170;
    Array.append(_:)();
    v165 = 1065353216;
    v139 = 0;
    Array.insert(_:at:)();
    v164 = 1065353216;
    v143 = &v168;
    Array.append(_:)();
    v163 = 1065353216;
    Array.insert(_:at:)();
    v140 = v170[0];

    v161 = v140;
    v5 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v142 = &v161;
    MEMORY[0x25F889420](&v162, v141, v5);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v160 = v162;
    v144 = v50;
    MEMORY[0x28223BE20](v50);
    v145 = v49;
    v49[2] = v6;
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd);
    lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
    v7 = Sequence.filter(_:)();
    v147 = v4;
    v148 = v7;
    v159 = v7;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd);
    v8 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
    v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v123, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
    v124 = 0;
    v125 = v10;
    v115 = v10;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v158 = v115;
    v157 = v115;
    v116 = v49;
    MEMORY[0x28223BE20](v49);
    v118 = v45;
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v117 = v119;
    v120 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), v118, v119, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v120, MEMORY[0x277D84AC0], v11);
    v121 = 0;
    v122 = v12;
    v198[0] = v12;

    v156 = v115;
    v112 = v49;
    MEMORY[0x28223BE20](v49);
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), v45, v13, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
    v113 = 0;
    v114 = v16;
    v197 = v16;

    v155 = v115;
    v109 = v49;
    MEMORY[0x28223BE20](v49);
    v47 = &v196;
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static AUC.rocCurve(outputs:labels:), v45, v17, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);
    v110 = 0;
    v111 = v20;
    v196 = v20;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v108 = v110;
  }

  v101 = v108;
  v195 = Array.init()();
  v105 = v197;

  v194 = v105;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v102 = v103;
  v104 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();
  v106 = v192;
  v107 = v193;

  if (v107)
  {
    LODWORD(v47) = 0;
    v46 = 194;
    v45[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v100 = v106;
  }

  if (v100 <= 0.0)
  {
    v21 = v101;
    v97 = v197;

    v170[1] = v97;
    v22 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in static AUC.rocCurve(outputs:labels:), 0, v102, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    v98 = v21;
    v99 = v24;
    if (!v21)
    {
      v94 = v99;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v195 = v94;

      v95 = v94;
      v96 = 0;
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v101;
  v89 = v197;

  v191[4] = v89;
  v90 = v49;
  MEMORY[0x28223BE20](v49);
  v91 = v45;
  v47 = &v197;
  v26 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #7 in static AUC.precisionRecallCurve(outputs:labels:), v91, v102, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
  v92 = v25;
  v93 = v28;
  if (v25)
  {
    goto LABEL_15;
  }

  v88 = v93;
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v195 = v88;

  v95 = v88;
  v96 = v92;
LABEL_12:
  v29 = v96;
  v74 = v95;
  v76 = v198[0];
  v75 = v198[0];

  v191[0] = v76;
  v77 = v197;

  v190 = v77;
  v78 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v80 = v191;
  v79 = &v190;
  zip<A, B>(_:_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v188 = v191[1];
  v189 = v191[2];
  v81 = v49;
  MEMORY[0x28223BE20](v49);
  v83 = v45;
  v47 = implicit closure #1 in static AUC.precisionRecallCurve(outputs:labels:);
  v48 = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySfGACGMd);
  v82 = v84;
  v85 = lazy protocol witness table accessor for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>();
  v31 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v83, v84, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v85, MEMORY[0x277D84AC0], v30);
  v86 = v29;
  v87 = v31;
  if (!v29)
  {
    v69 = v87;
    outlined destroy of Zip2Sequence<[Float], [Float]>();
    v187 = v69;

    v186[0] = v75;
    v185 = v69;
    v70 = v186;
    zip<A, B>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v183 = v186[1];
    v184 = v186[2];
    v71 = v49;
    MEMORY[0x28223BE20](v49);
    v48 = 0;
    v35 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v45, v32, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v34);
    v72 = 0;
    v73 = v35;
    v65 = v35;
    outlined destroy of Zip2Sequence<[Float], [Float]>();
    v182 = v65;
    v181 = v75;
    v66 = v49;
    MEMORY[0x28223BE20](v49);
    v67 = v45;
    v47 = v198;
    v36 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v68 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #9 in static AUC.precisionRecallCurve(outputs:labels:), v67, v102, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v36, MEMORY[0x277D84AC0], v37);
    v60 = v68;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v180 = v60;

    v178[1] = v65;
    MEMORY[0x25F889240](v179, v102, v104);
    v178[0] = v179[0];
    v52 = MEMORY[0x277D83A90];
    v50[5] = 1;
    v38 = _allocateUninitializedArray<A>(_:)();
    *v39 = 1065353216;
    _finalizeUninitializedArray<A>(_:)();
    v177 = v38;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySfGGMd);
    v54 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v55 = lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>();
    v50[2] = v178;
    v50[1] = &v177;
    static RangeReplaceableCollection.+ infix<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v64 = v179[1];

    v175[1] = v60;
    MEMORY[0x25F889240](v176, v102, v104);
    v175[0] = v176[0];
    v40 = _allocateUninitializedArray<A>(_:)();
    v51 = 0;
    *v41 = 0;
    _finalizeUninitializedArray<A>(_:)();
    v174 = v40;
    v50[4] = v175;
    v50[3] = &v174;
    static RangeReplaceableCollection.+ infix<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v61 = v176[1];
    v172[1] = v74;
    MEMORY[0x25F889240](v173, v102, v104);
    v172[0] = v173[0];
    v42 = _allocateUninitializedArray<A>(_:)();
    *v43 = v51;
    _finalizeUninitializedArray<A>(_:)();
    v171 = v42;
    v57 = v172;
    v56 = &v171;
    static RangeReplaceableCollection.+ infix<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v62 = v173[1];
    v58 = v196;

    v170[2] = v58;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v63 = Sequence.reversed()();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v64;
  }

LABEL_16:
  __break(1u);
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

void *static AUC.prAUCScore(precison:recall:)(uint64_t a1, uint64_t a2)
{
  v33 = v43;
  v37 = a1;
  v34 = 0;
  v43[7] = a1;
  v43[6] = a2;
  v42[1] = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v35 = v36;
  v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v42[0] = Collection<>.diff()(v36, v2, MEMORY[0x277D83AD0]);
  result = MEMORY[0x25F8895B0](v37, MEMORY[0x277D83A90]);
  v4 = __OFSUB__(result, 1);
  v38 = result - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      LODWORD(v17) = 0;
      v16 = 760;
      v15 = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v5 = v34;
    v30 = MEMORY[0x277D83A90];
    v26 = 0;
    v41[0] = Array.subscript.getter();
    v41[1] = v6;
    v41[2] = v7;
    v41[3] = v8;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd);
    v23 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v21 = v23;
    lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
    v25 = v42;
    v24 = v41;
    zip<A, B>(_:_:)();
    outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v9 = v33[3];
    v10 = v33[4];
    v40[2] = v43[0];
    v40[3] = v43[1];
    v40[4] = v43[2];
    v40[5] = v9;
    v40[6] = v10;
    v27 = &v19;
    MEMORY[0x28223BE20](&v19);
    v28 = &v15;
    v17 = implicit closure #1 in static AUC.prAUCScore(precison:recall:);
    v18 = v11;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySfGs10ArraySliceVySfGGMd);
    v12 = lazy protocol witness table accessor for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>();
    v14 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v28, v29, v30, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);
    v31 = v5;
    v32 = v14;
    v20 = v14;
    outlined destroy of Zip2Sequence<[Float], ArraySlice<Float>>();
    v40[0] = v20;
    v39 = 0;
    Sequence.reduce<A>(_:_:)();
    result = v40;
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  return result;
}

uint64_t static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v52 = a2;
  v51 = a1;
  v54 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v77 = 0;
  v71 = 0;
  v67 = 0;
  v63 = 0;
  v61 = 0;
  v59 = 0;
  v92 = a1;
  v91 = a2;
  v90 = a3;

  v89 = v52;
  v88 = v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v53 = v55;
  v56 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v57 = 0;
  v58 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), 0, v55, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v56, MEMORY[0x277D84AC0], v3);
  v46 = v58;
  v87 = v58;
  v86 = v51;
  v47 = v20;
  MEMORY[0x28223BE20](v20);
  v19[2] = v4;
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), v19, v5, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v7);
  v48 = 0;
  v49 = v8;
  v27 = v8;
  v85 = v8;
  v30 = static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(v52, v8, v50);
  v28 = v30;
  v84 = v30;
  v34 = static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(v46, v27, v50);
  v29 = v34;
  v83 = v34;

  v80[1] = v30;
  v39 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  MEMORY[0x25F889240](&v81, v53);
  v80[0] = v81;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySfGGMd);
  v35 = lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>();
  v36 = MEMORY[0x277D83AD0];
  v31 = v80;
  v32 = Collection<>.cumSum()(v40, v35, MEMORY[0x277D83AD0]);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v79 = v32;
  MEMORY[0x25F889240](&v82, v53, v39);
  v78 = v82;
  v41 = lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>();
  v43 = MEMORY[0x277D83A90];
  v33 = Array.init<A>(_:)();
  v77 = v33;

  v74[1] = v34;
  MEMORY[0x25F889240](&v75, v53, v39);
  v74[0] = v75;
  v37 = v74;
  v38 = Collection<>.cumSum()(v40, v35, v36);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v73 = v38;
  MEMORY[0x25F889240](&v76, v53, v39);
  v72 = v76;
  v42 = Array.init<A>(_:)();
  v71 = v42;
  v69 = v52;
  v68 = 0;
  v44 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  v45 = 0;
  v25 = v70;
  v67 = v70;
  v65 = v46;
  v64 = 0;
  Sequence.reduce<A>(_:_:)();
  v26 = 0;
  v63 = v66;
  v62 = v42;
  v22 = v19;
  MEMORY[0x28223BE20](v19);
  LODWORD(v19[-2]) = v9;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), &v19[-4], v10, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  v23 = 0;
  v24 = v13;
  v20[1] = v13;
  v61 = v13;
  v60 = v33;
  v20[2] = v19;
  MEMORY[0x28223BE20](v19);
  LODWORD(v19[-2]) = v14;
  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), &v19[-4], v15, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  v20[0] = v21;
  v59 = v21;

  return v33;
}

float static AUC.tpr(at:tpr:fpr:)(uint64_t a1, uint64_t a2, float a3)
{
  static AUC.metric(at:metrics:fpr:)(a3, a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t Collection<>.diff()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = partial apply for implicit closure #1 in Collection<>.diff();
  v32 = MEMORY[0x277D84120];
  v38 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Sequence.Element, @in_guaranteed A.Sequence.Element) -> (@out A.Sequence.Element);
  v46 = 0;
  v51 = a1;
  v19 = *(a1 - 8);
  v17 = a1 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v3 = &v13 - v14;
  v26 = 0;
  v15 = MEMORY[0x277D83CB0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness - 8;
  v16 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v24 = &v13 - v16;
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  v27 = *(v29 + 8);
  v47 = AssociatedTypeWitness;
  v48 = v28;
  v49 = v21;
  v50 = v27;
  v35 = type metadata accessor for Zip2Sequence();
  v18 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v20 = &v13 - v18;
  v46 = v4;
  (*(v19 + 16))(v3);
  default argument 0 of Collection.dropFirst(_:)();
  Collection.dropFirst(_:)();
  zip<A, B>(_:_:)();
  (*(v22 + 8))(v24, AssociatedTypeWitness);
  v36 = swift_getAssociatedTypeWitness();
  v5 = swift_allocObject();
  v6 = v28;
  v7 = v29;
  v8 = v30;
  v9 = v31;
  v10 = v36;
  v33 = v5;
  v5[2] = v28;
  v5[3] = v7;
  v5[4] = v8;
  v5[5] = v10;
  v34 = &v40;
  v41 = v6;
  v42 = v7;
  v43 = v8;
  v44 = v9;
  v45 = v5;
  WitnessTable = swift_getWitnessTable();
  v39 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v38, v34, v35, v36, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v37);
  v13 = v39;

  outlined destroy of Zip2Sequence<A.SubSequence, A>(v20, AssociatedTypeWitness, v28, v35);
  return v13;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.Sequence.Element, @in_guaranteed A.Sequence.Element) -> (@out A.Sequence.Element)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v36 = a2;
  v81 = a3;
  v72 = a4;
  v45 = a5;
  v80 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Unexpectedly found nil while unwrapping an Optional value";
  v41 = "Swift/Sequence.swift";
  v42 = "Range requires lowerBound <= upperBound";
  v43 = "Swift/Range.swift";
  v44 = "Index out of range";
  v86 = a3;
  v85 = a4;
  v84 = a5;
  v73 = 0;
  v57 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](0);
  v50 = &v23 - v49;
  v51 = *(v9 - 8);
  v52 = v9 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v23 - v53;
  v55 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v56 = &v23 - v55;
  v58 = type metadata accessor for Optional();
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v73);
  v60 = &v23 - v59;
  v61 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v23 - v61;
  v63 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v23 - v63;
  v65 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v23 - v65;
  v76 = *(v18 - 8);
  v77 = v18 - 8;
  v67 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v75 = &v23 - v67;
  v68 = swift_getAssociatedTypeWitness();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v79 = &v23 - v71;
  v82 = dispatch thunk of Sequence.underestimatedCount.getter();
  v83 = ContiguousArray.init()();
  v74 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v82);
  (*(v76 + 16))(v75, v78, v81);
  dispatch thunk of Sequence.makeIterator()();
  result = v82;
  if (v82 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v82)
    {
      v33 = 0;
      for (i = v37; ; i = v29)
      {
        v31 = i;
        v32 = v33;
        if (v33 < 0 || v32 >= v82)
        {
          break;
        }

        if (v82 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          break;
        }

        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_29;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        if ((*(v47 + 48))(v62, 1, AssociatedTypeWitness) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v21 = v31;
        v35(v62, v56);
        v29 = v21;
        if (v21)
        {
          (*(v69 + 8))(v79, v68);
          outlined destroy of ContiguousArray<A1>();
          (*(v51 + 32))(v38, v56, v45);
          (*(v47 + 8))(v62, AssociatedTypeWitness);
          return v23;
        }

        (*(v47 + 8))(v62, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        if (v30 == v82)
        {
          v28 = v29;
          goto LABEL_21;
        }

        result = v29;
        v33 = v30;
      }

      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v28 = v37;
LABEL_21:
    for (j = v28; ; j = v24)
    {
      v26 = j;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(v47 + 48))(v60, 1, AssociatedTypeWitness) == 1)
      {
        (*(v69 + 8))(v79, v68);
        outlined destroy of A.Element?(v60, AssociatedTypeWitness);
        v25 = v83;

        return v25;
      }

      (*(v47 + 32))(v50, v60, AssociatedTypeWitness);
      v22 = v26;
      v35(v50, v54);
      v24 = v22;
      if (v22)
      {
        break;
      }

      (*(v47 + 8))(v50, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
    }

    (*(v47 + 8))(v50, AssociatedTypeWitness);
    (*(v69 + 8))(v79, v68);
    outlined destroy of ContiguousArray<A1>();
    (*(v51 + 32))(v38, v54, v45);
    return v23;
  }

  return result;
}

uint64_t Collection<>.cumSum()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v15 = a2;
  v10 = a3;
  v12 = partial apply for closure #1 in Collection<>.cumSum();
  v24 = 0;
  v23 = 0;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = AssociatedTypeWitness - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v5 - v9;
  v24 = &v5 - v9;
  v23 = v3;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v19 = v13;
  v20 = v15;
  v21 = v10;
  v22 = v11;
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v12, v18, v13, AssociatedTypeWitness, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  v6 = v17;
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  return v6;
}

uint64_t closure #1 in Collection<>.cumSum()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15 = a5;
  v8[2] = a1;
  v10 = a2;
  v8[1] = a4;
  v17 = 0;
  v16 = 0;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = AssociatedTypeWitness - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v10);
  v13 = v8 - v9;
  v17 = v6;
  v16 = v5;
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  (*(v11 + 16))(v13, v10, AssociatedTypeWitness);
  return (*(v11 + 32))(v15, v13, AssociatedTypeWitness);
}

uint64_t FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v19 = a2;
  v21 = a3;
  v14 = a4;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v29 = a3;
  v16 = *(a3 - 8);
  v17 = a3 - 8;
  v12 = *(v16 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v18 = &v10 - v11;
  v13 = v11;
  v6 = MEMORY[0x28223BE20](v5);
  v24 = &v10 - v13;
  v28 = v7;
  v27 = v19;
  v26 = v6;
  v15 = *(v8 + 16);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v20 = *(*(v14 + 24) + 8);
  abs<A>(_:)();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v18, v21);
  v25 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v23(v24, v21);
  return v25 & 1;
}

uint64_t static AUC.binaryClassificationCurve(outputs:labels:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v68 = 0;
  v89 = 0;
  v87 = 0;
  v86 = 0;
  v79 = 0;
  v77 = 0;
  v73 = 0;
  v98[2] = a1;
  v98[1] = a2;
  v97 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v64 = v65;
  v66 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  MEMORY[0x25F889420](v98, v65);
  v96 = v98[0];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd);
  v67 = v69;
  v70 = lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
  v71 = 0;
  v72 = Sequence.sorted(by:)();
  v57 = v72;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v95 = v72;
  v94 = v72;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd);
  v58 = v59;
  v60 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
  v61 = 0;
  v62 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v59, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v60, MEMORY[0x277D84AC0], v2);
  v54 = v62;
  v93 = v62;
  v92 = v72;
  v55 = 0;
  v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v59, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v60, MEMORY[0x277D84AC0], v3);
  v46 = v56;
  v91 = v56;
  v90 = v56;

  v47 = &v22;
  MEMORY[0x28223BE20](&v22);
  v49 = v21;
  v21[2] = v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v48 = v50;
  v51 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in static AUC.binaryClassificationCurve(outputs:labels:), v49, v50, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v5);
  v52 = 0;
  v53 = v6;
  v41 = v6;

  v89 = v41;
  v88 = v54;
  v42 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v43 = Collection<>.diff()(v64, v42, MEMORY[0x277D83AD0]);
  v87 = v43;
  v84 = v43;
  MEMORY[0x25F889420](&v85, v64, v66);
  v83 = v85;
  v7 = Sequence.filter(_:)();
  v44 = 0;
  v45 = v7;
  v82 = v7;
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v58, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v60, MEMORY[0x277D84AC0], v8);
  v39 = 0;
  v40 = v9;
  v37 = v9;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v86 = v37;
  result = MEMORY[0x25F8895B0](v41, MEMORY[0x277D83A90]);
  v11 = __OFSUB__(result, 1);
  v38 = result - 1;
  if (!v11)
  {
    v12 = v39;
    v81 = v38;
    Array.append(_:)();
    v80 = v41;
    v33 = Collection<>.cumSum()(v64, v42, MEMORY[0x277D83AD0]);
    v30 = v33;
    v79 = v33;
    v32 = v86;
    v31 = v86;

    v78 = v32;

    v34 = v21;
    v21[-2] = MEMORY[0x28223BE20](v33);
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in static AUC.binaryClassificationCurve(outputs:labels:), &v21[-4], v13, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
    v35 = v12;
    v36 = v16;
    if (!v12)
    {
      v25 = v36;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v77 = v25;

      v75 = v31;
      v17 = lazy protocol witness table accessor for type [Int] and conformance [A]();
      v24 = &v75;
      MEMORY[0x25F889420](&v76, v48, v17);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v74 = v76;

      v26 = v21;
      MEMORY[0x28223BE20](v21);
      v27 = &v21[-4];
      v21[-2] = v18;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySiGGMd);
      v19 = lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>();
      v29 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #8 in static AUC.binaryClassificationCurve(outputs:labels:), v27, v28, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);
      v23 = v29;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v73 = v23;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      return v25;
    }

    __break(1u);

    __break(1u);
  }

  __break(1u);
  return result;
}

float closure #2 in static AUC.binaryClassificationCurve(outputs:labels:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float closure #3 in static AUC.binaryClassificationCurve(outputs:labels:)@<S0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  return result;
}

BOOL closure #5 in static AUC.binaryClassificationCurve(outputs:labels:)()
{
  abs<A>(_:)();
  static Float.ulpOfOne.getter();
  return v0 < v2;
}

float closure #8 in static AUC.binaryClassificationCurve(outputs:labels:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v3 = *(a1 + 8) + 1.0;
  Array.subscript.getter();
  result = v3 - v5;
  *a2 = v3 - v5;
  return result;
}

uint64_t closure #1 in static AUC.rocCurve(outputs:labels:)(uint64_t *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v2 = *(a1 + 2);
  v13 = *a1;
  v14 = v2;
  v12 = a2;
  v11[1] = v2;
  v11[0] = 0;
  v7 = lazy protocol witness table accessor for type Float and conformance Float();
  v6 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v10[0] = v10[1];
  if (FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v11, v10, v6, v7))
  {
    v4 = MEMORY[0x277D83A90];
    Array.subscript.getter();
    v9[1] = v9[2];
    v9[0] = 0;
    default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
    v8[0] = v8[1];
    v5 = FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v9, v8, v4, v7) ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t closure #6 in static AUC.rocCurve(outputs:labels:)@<X0>(_DWORD *a1@<X8>)
{
  result = static Float.nan.getter();
  *a1 = v2;
  return result;
}

float closure #7 in static AUC.rocCurve(outputs:labels:)@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v7)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = v6;
  }

  result = v5 / v3;
  *a2 = v5 / v3;
  return result;
}

float closure #9 in static AUC.rocCurve(outputs:labels:)@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v7)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = v6;
  }

  result = v5 / v3;
  *a2 = v5 / v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySfGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  v2 = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Float and conformance Float);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Float and conformance Float);
    return WitnessTable;
  }

  return v2;
}

float closure #7 in static AUC.precisionRecallCurve(outputs:labels:)@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v7)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = v6;
  }

  result = v5 / v3;
  *a2 = v5 / v3;
  return result;
}

float closure #8 in static AUC.precisionRecallCurve(outputs:labels:)(float a1, float a2)
{
  *&v9[4] = a1;
  *&v9[2] = a2;
  *&v9[1] = a2;
  v9[0] = 0;
  v7 = lazy protocol witness table accessor for type Float and conformance Float();
  v6 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v8[0] = v8[1];
  if (FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v9, v8, v6, v7))
  {
    return 0.0;
  }

  else
  {
    return a1 / a2;
  }
}

float closure #9 in static AUC.precisionRecallCurve(outputs:labels:)@<S0>(float *a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  v18 = 0.0;
  v17 = 0;
  v9 = *a1;
  v18 = *a1;
  v17 = a2;
  v10 = *a2;

  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v15)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v14[2];
  }

  v14[1] = v7;
  v14[0] = 0;
  v6 = lazy protocol witness table accessor for type Float and conformance Float();
  v5 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v13[0] = v13[1];
  if (FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v14, v13, v5, v6))
  {
    result = 1.0;
    *a3 = 1.0;
  }

  else
  {

    BidirectionalCollection.last.getter();

    if (v12)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v4 = v11;
    }

    result = v9 / v4;
    *a3 = v9 / v4;
  }

  return result;
}

uint64_t static AUC.metric(at:metrics:fpr:)(float a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x277D83A90];
  v27 = MEMORY[0x25F8895B0]();
  if (v27 != MEMORY[0x25F8895B0](a3, v25) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd), lazy protocol witness table accessor for type [Float] and conformance [A](), (Collection.isEmpty.getter() & 1) != 0))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v15 = swift_allocError();
    *v14 = 71;
    swift_willThrow();
    return v15;
  }

  if (Float.isNaN.getter())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v22 = swift_allocError();
    *v3 = 107;
    swift_willThrow();
    return v22;
  }

  lazy protocol witness table accessor for type [Float] and conformance [A]();
  result = Sequence.contains(where:)();
  if (v24)
  {
    __break(1u);
    __break(1u);
    return result;
  }

  if (result)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v21 = swift_allocError();
    *v5 = 108;
    swift_willThrow();
    return v21;
  }

  if (Sequence.contains(where:)())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v20 = swift_allocError();
    *v6 = 109;
    swift_willThrow();
    return v20;
  }

  if (MEMORY[0x25F8895B0](a3, MEMORY[0x277D83A90]) < 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    IndexingIterator.next()();
    if (v41)
    {
      break;
    }

    result = Array.subscript.getter();
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_66;
    }

    Array.subscript.getter();
    if (v29 < v28)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v19 = swift_allocError();
      *v8 = 70;
      swift_willThrow();
      return v19;
    }
  }

  Collection.first.getter();
  if (v39)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = v38;
  }

  if (a1 <= v18)
  {
    Collection.first.getter();
    if (v30)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return 0;
  }

  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();
  if (v37)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v17 = v36;
  }

  if (v17 > a1)
  {
    result = MEMORY[0x25F8895B0](a3, MEMORY[0x277D83A90], v17);
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
    }

    else
    {
      if (result - 1 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      Collection<>.makeIterator()();
      while (1)
      {
        IndexingIterator.next()();
        if (v35)
        {
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v16 = swift_allocError();
          *v13 = 104;
          swift_willThrow();
          return v16;
        }

        result = Array.subscript.getter();
        if (v33 <= a1)
        {
          if (__OFADD__(v34, 1))
          {
            goto LABEL_63;
          }

          result = Array.subscript.getter();
          if (a1 <= v32)
          {
            break;
          }
        }
      }

      if (!__OFADD__(v34, 1))
      {
        Array.subscript.getter();
        result = Array.subscript.getter();
        if (!__OFADD__(v34, 1))
        {
          Array.subscript.getter();
          Array.subscript.getter();
          Array.subscript.getter();
          Array.subscript.getter();
          return 0;
        }

        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  BidirectionalCollection.last.getter();
  if (v31)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return 0;
}

uint64_t static AUC.auc(x:y:)(uint64_t a1, uint64_t a2)
{
  v69 = v89;
  v70 = a2;
  v73 = 0;
  v99 = 0;
  v88 = 0;
  v103 = a1;
  v102 = a2;
  v101 = 1065353216;
  v100 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v71 = v74;
  v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v72 = Collection<>.diff()(v74, v2, MEMORY[0x277D83AD0]);
  v99 = v72;
  v96 = v72;
  v76 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  Sequence.first(where:)();
  v77 = v75;
  if (v75)
  {
    __break(1u);
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v68 = v97;
  if (v98)
  {
    v66 = 1.0;
    v67 = v77;
  }

  else
  {
    v78 = v72;
    v3 = Sequence.allSatisfy(_:)();
    v64 = v77;
    v65 = v3;
    if ((v65 & 1) == 0)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v62 = 0;
      v63 = swift_allocError();
      *v4 = 64;
      swift_willThrow();
    }

    v101 = -1082130432;
    v66 = -1.0;
    v67 = v64;
  }

  v59 = v67;
  v60 = v66;
  v61 = MEMORY[0x25F8895B0](v70, MEMORY[0x277D83A90]);
  if (v61 <= 0)
  {
    LODWORD(v32) = 0;
    v31 = 760;
    v30 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v57 = MEMORY[0x277D83A90];
  v91[0] = Array.subscript.getter();
  v91[1] = v6;
  v91[2] = v7;
  v91[3] = v8;
  result = MEMORY[0x25F8895B0](v70, v57);
  v9 = __OFSUB__(result, 1);
  v58 = result - 1;
  if (v9)
  {
    goto LABEL_26;
  }

  if (v58 < 0)
  {
    LODWORD(v32) = 0;
    v31 = 760;
    v30 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v54 = v59;
  v53 = MEMORY[0x277D83A90];
  v49 = 0;
  v90[0] = Array.subscript.getter();
  v90[1] = v10;
  v90[2] = v11;
  v90[3] = v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd);
  lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
  v48 = v91;
  v47 = v90;
  zip<A, B>(_:_:)();
  outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>();
  outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>();
  v13 = v69;
  v14 = v92;
  v15 = v93;
  v16 = v94;
  v69[9] = v95;
  v13[8] = v16;
  v13[7] = v15;
  v13[6] = v14;
  v17 = v13[6];
  v18 = v13[7];
  v19 = v13[8];
  v13[3] = v13[9];
  v89[2] = v19;
  v89[1] = v18;
  v89[0] = v17;
  v50 = v34;
  MEMORY[0x28223BE20](v34);
  v51 = &v30;
  v32 = closure #3 in static AUC.auc(x:y:);
  v33 = v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVys10ArraySliceVySfGAEGMd);
  v21 = lazy protocol witness table accessor for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>();
  v22 = v54;
  v24 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v51, v52, v53, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v23);
  v55 = v22;
  v56 = v24;
  if (v22)
  {
    goto LABEL_23;
  }

  v39 = v56;
  v43 = 0;
  outlined destroy of Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>>();
  v88 = v39;
  v84 = v39;
  v83 = v72;
  zip<A, B>(_:_:)();
  v81 = v85;
  v82 = v86;
  v40 = &v30;
  MEMORY[0x28223BE20](&v30);
  v41 = &v30 - 32;
  *(&v30 - 2) = implicit closure #1 in static AUC.prAUCScore(precison:recall:);
  *(&v30 - 1) = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySfGACGMd);
  v25 = lazy protocol witness table accessor for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>();
  v26 = v43;
  v28 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v41, v42, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v27);
  v44 = v26;
  v45 = v28;
  if (!v26)
  {
    v36 = v45;
    v37 = 0;
    outlined destroy of Zip2Sequence<[Float], [Float]>();
    v29 = v37;
    v80 = v36;
    v79 = 0;
    Sequence.reduce<A>(_:_:)();
    v38 = v29;
    if (!v29)
    {
      v35 = 0;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v34[1] = v60 * v87;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  result = 0;
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySfGACGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>()
{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySfGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySfGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySfGs10ArraySliceVySfGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

float closure #1 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = 1.0 - *a1;
  *a2 = result;
  return result;
}

float *closure #2 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v20 = a1;
  v19 = a2;
  v14 = "Fatal error";
  v15 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v16 = "Swift/IntegerTypes.swift";
  v17 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v18 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v34 = 0.0;
  v33 = 0;
  v21 = type metadata accessor for FloatingPointRoundingRule();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v20);
  v25 = &v9 - v24;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v3);
  v27 = &v9 - v26;
  v28 = *result;
  v34 = v28;
  v33 = v6;
  v29 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  v11 = v28 * v29;
  (*(v22 + 104))(v27, *MEMORY[0x277D84680], v21);
  v32 = v11;
  (*(v22 + 16))(v25, v27, v21);
  v12 = (*(v22 + 88))(v25, v21);
  if (v12 == *MEMORY[0x277D84678])
  {
    v32 = roundf(v11);
    goto LABEL_19;
  }

  if (v12 == *MEMORY[0x277D84670])
  {
    v32 = rintf(v11);
    goto LABEL_19;
  }

  if (v12 == *MEMORY[0x277D84680])
  {
    goto LABEL_16;
  }

  if (v12 == *MEMORY[0x277D84688])
  {
    goto LABEL_18;
  }

  if (v12 == *MEMORY[0x277D84660])
  {
    v32 = truncf(v11);
    goto LABEL_19;
  }

  if (v12 != *MEMORY[0x277D84668])
  {
    Float._roundSlowPath(_:)();
    (*(v22 + 8))(v25, v21);
    goto LABEL_19;
  }

  if ((Float.sign.getter() & 1) == 1)
  {
LABEL_18:
    v32 = floorf(v11);
  }

  else
  {
LABEL_16:
    v32 = ceilf(v11);
  }

LABEL_19:
  v10 = v32;
  result = (*(v22 + 8))(v27, v21);
  if ((LODWORD(v10) >> 23) == 255)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v10 <= -9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v10 >= 9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v9 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    v31 = v9;
    v30 = 0;
    return max<A>(_:_:)();
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v8 = 0;
  v9 = Array.init(repeating:count:)();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v3 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  MEMORY[0x25F889420](&v7, v6, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySiGGMd);
  lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>();
  Sequence.forEach(_:)();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v5 = v9;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v5;
}

float closure #3 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  result = a3 - *a1;
  *a2 = result;
  return result;
}

uint64_t outlined destroy of Zip2Sequence<A.SubSequence, A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 - 8) + 8))();
  (*(*(a3 - 8) + 8))(a1 + *(a4 + 52));
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySiGGMd);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVys10ArraySliceVySfGAEGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in static AUC.gatherBucket(labels:bucketIndex:numThresholds:)()
{
  Array.subscript.getter();
  Array.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v0 = Array.subscript.modify();
  *v1 = v4 + v3;
  return v0();
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySiGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of A.Element?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ImputationStrategy and conformance ImputationStrategy()
{
  v2 = lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy;
  if (!lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy;
  if (!lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy);
    return WitnessTable;
  }

  return v2;
}

uint64_t static Imputation.imputeFlow(flow:day:days:flowImputed:imputeValue:)(unsigned int a1, int a2, void *a3, unsigned __int8 a4, unsigned int a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v11 = *a3;

  v13 = a2;
  v12 = MEMORY[0x25F8897F0](&v13, v11, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);

  if ((v12 & 1) != 0 && a1 == a4)
  {
    return a5;
  }

  else
  {
    return a1;
  }
}

uint64_t static Imputation.impute(required:available:target:strategy:imputedDay:)(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v20 = result & 1;
  v19 = a2;
  v18 = a3;
  v17 = a4 & 1;
  v16 = a5;
  if (result)
  {
    if (a4)
    {
      v13 = a3;
      result = static HIDPFLUtils.findClosest<A>(_:target:)(a2, &v13, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], MEMORY[0x277D84CF8], &v14);
      if (v15)
      {
        v5 = 0;
        v6 = 1;
      }

      else
      {
        v5 = v14;
        v6 = 0;
      }

      *a5 = v5;
      *(a5 + 4) = v6 & 1;
    }

    else
    {
      v10 = a3;
      result = static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(a2, &v10, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v11);
      if (v12)
      {
        v7 = 0;
        v8 = 1;
      }

      else
      {
        v7 = v11;
        v8 = 0;
      }

      *a5 = v7;
      *(a5 + 4) = v8 & 1;
    }
  }

  return result;
}

uint64_t static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(char a1, uint64_t a2, int a3, char a4, void *a5, uint64_t a6)
{
  if ((a1 & 1) == 0 || (result = static Imputation.impute(required:available:target:strategy:imputedDay:)(1, a2, a3, a4 & 1, a6), (*(a6 + 4) & 1) == 0))
  {
    v8 = 1;
    return v8 & 1;
  }

  if (!__OFADD__(*a5, 1))
  {
    ++*a5;
    v8 = 0;
    return v8 & 1;
  }

  __break(1u);
  return result;
}

float static Imputation.imputeCalendarPrediction(calendarPeriodPredictions:target:lastPredictionDay:)(uint64_t a1, int a2, _DWORD *a3)
{
  v21 = 0;
  v20 = 0;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v17 = *a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd);
  MEMORY[0x25F8891D0](&v18, &v17, a1, MEMORY[0x277D84CC0]);
  if (v19)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v18;
  }

  v20 = HIDWORD(v9);
  v21 = v9;
  v14 = a2;
  MEMORY[0x25F8891D0](&v15, &v14, a1, MEMORY[0x277D84CC0], v13, MEMORY[0x277D84CD0]);
  v8 = *&v15;
  if (v16)
  {
    v7 = *&v9;
  }

  else
  {
    v20 = HIDWORD(v15);
    v21 = v15;
    *a3 = a2;
    v7 = v8;
  }

  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  Float.init<A>(_:)();
  v6 = v3;
  Float.init<A>(_:)();
  return v7 - (v6 - v4);
}

uint64_t getEnumTagSinglePayload for ImputationStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ImputationStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void __swiftcall AggMetrics.init(from:)(NightingaleTraining::AggMetrics *__return_ptr retstr, Swift::OpaquePointer from)
{
  memset(__b, 0, sizeof(__b));
  rawValue = from._rawValue;
  v15 = MEMORY[0x25F8895B0]();
  v32 = v15;
  __b[17] = MEMORY[0x25F8895B0](from._rawValue, &type metadata for PerSliceMetrics);
  v31 = from._rawValue;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining15PerSliceMetricsVGMd);
  v19 = lazy protocol witness table accessor for type [PerSliceMetrics] and conformance [A]();
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in AggMetrics.init(from:), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
  v29 = from._rawValue;
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in AggMetrics.init(from:), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
  v27 = from._rawValue;
  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in AggMetrics.init(from:), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
  v25 = 3.0;
  static PFLStats.lessEqual<A>(vector:value:)();
  v12 = Array<A>.sum.getter();

  __b[1] = v12;
  *__b = v12 / v15;
  v24 = 6.0;
  static PFLStats.greater<A>(vector:value:)();
  v13 = Array<A>.sum.getter();

  __b[3] = v13;
  *&__b[2] = v13 / v15;
  static PFLStats.mean(_:)();
  LODWORD(__b[4]) = v2;
  static PFLStats.sum(_:)();
  HIDWORD(__b[4]) = v3;
  v22 = from._rawValue;
  v21 = 0;
  lazy protocol witness table accessor for type [PerSliceMetrics] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  __b[6] = v23;
  *&__b[5] = v23 / v15;
  static PFLStats.sum(_:)();
  HIDWORD(__b[7]) = v4;
  static PFLStats.mean(_:)();
  LODWORD(__b[7]) = v5;
  static PFLStats.greater<A>(vector:value:)();
  v8 = Array<A>.sum.getter();

  __b[9] = v8;
  *&__b[8] = v8 / v15;
  static PFLStats.sum(_:)();
  HIDWORD(__b[10]) = v6;
  static PFLStats.mean(_:)();
  LODWORD(__b[10]) = v7;
  static PFLStats.greaterEqual<A>(vector:value:)();
  v9 = Array<A>.sum.getter();

  __b[12] = v9;
  *&__b[11] = v9 / v15;
  static PFLStats.greaterEqual<A>(vector:value:)();
  v10 = Array<A>.sum.getter();

  __b[14] = v10;
  *&__b[13] = v10 / v15;
  static PFLStats.greaterEqual<A>(vector:value:)();
  v11 = Array<A>.sum.getter();

  __b[16] = v11;
  *&__b[15] = v11 / v15;

  memcpy(__dst, __b, sizeof(__dst));

  memcpy(retstr, __dst, sizeof(NightingaleTraining::AggMetrics));
}

float closure #1 in AggMetrics.init(from:)@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [PerSliceMetrics] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PerSliceMetricsVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PerSliceMetricsVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

float closure #2 in AggMetrics.init(from:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float closure #3 in AggMetrics.init(from:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

BOOL closure #4 in AggMetrics.init(from:)@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  result = Bool.intValue.getter(*(a2 + 8) & 1);
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v6 + result;
  }

  return result;
}

uint64_t AggMetrics.toDictionary(prefix:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  _allocateUninitializedArray<A>(_:)();
  v89 = v0;
  v130 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v131 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_ep3", 4uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v3);

  outlined destroy of DefaultStringInterpolation();
  *v89 = MEMORY[0x25F889320](v130, v131);
  *(v89 + 8) = v4;
  v152 = *v87;
  v86 = MEMORY[0x277D83A90];
  *(v89 + 40) = MEMORY[0x277D83A90];
  *(v89 + 16) = v152;
  v128 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v129 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v6);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_ep3Num", 7uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v7);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 48) = MEMORY[0x25F889320](v128, v129);
  *(v89 + 56) = v8;
  v151 = *(v87 + 1);
  v88 = MEMORY[0x277D83B88];
  *(v89 + 88) = MEMORY[0x277D83B88];
  *(v89 + 64) = v151;
  v126 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v127 = v9;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v10);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_nep6", 5uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v11);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 96) = MEMORY[0x25F889320](v126, v127);
  *(v89 + 104) = v12;
  v150 = v87[4];
  *(v89 + 136) = v86;
  *(v89 + 112) = v150;
  v124 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v125 = v13;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v14);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_nep6Num", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v15);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 144) = MEMORY[0x25F889320](v124, v125);
  *(v89 + 152) = v16;
  v149 = *(v87 + 3);
  *(v89 + 184) = v88;
  *(v89 + 160) = v149;
  v122 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v123 = v17;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v18);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_mae", 4uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v19);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 192) = MEMORY[0x25F889320](v122, v123);
  *(v89 + 200) = v20;
  v148 = v87[8];
  *(v89 + 232) = v86;
  *(v89 + 208) = v148;
  v120 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v121 = v21;
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v22);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_sae", 4uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v23);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 240) = MEMORY[0x25F889320](v120, v121);
  *(v89 + 248) = v24;
  v147 = v87[9];
  *(v89 + 280) = v86;
  *(v89 + 256) = v147;
  v118 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v119 = v25;
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v26);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_coverage", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v27);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 288) = MEMORY[0x25F889320](v118, v119);
  *(v89 + 296) = v28;
  v146 = v87[10];
  *(v89 + 328) = v86;
  *(v89 + 304) = v146;
  v116 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v117 = v29;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v30);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_coverageNum", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v31);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 336) = MEMORY[0x25F889320](v116, v117);
  *(v89 + 344) = v32;
  v145 = *(v87 + 6);
  *(v89 + 376) = v88;
  *(v89 + 352) = v145;
  v114 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v115 = v33;
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v34);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_meanWidth", 0xAuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v35);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 384) = MEMORY[0x25F889320](v114, v115);
  *(v89 + 392) = v36;
  v144 = v87[14];
  *(v89 + 424) = v86;
  *(v89 + 400) = v144;
  v112 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v113 = v37;
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v38);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_sumWidth", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v39);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 432) = MEMORY[0x25F889320](v112, v113);
  *(v89 + 440) = v40;
  v143 = v87[15];
  *(v89 + 472) = v86;
  *(v89 + 448) = v143;
  v110 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v111 = v41;
  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v42);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxWidthTolerable", 0x11uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v43);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 480) = MEMORY[0x25F889320](v110, v111);
  *(v89 + 488) = v44;
  v142 = v87[16];
  *(v89 + 520) = v86;
  *(v89 + 496) = v142;
  v108 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v109 = v45;
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v46);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxWidthTolerableNum", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v47);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 528) = MEMORY[0x25F889320](v108, v109);
  *(v89 + 536) = v48;
  v141 = *(v87 + 9);
  *(v89 + 568) = v88;
  *(v89 + 544) = v141;
  v106 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v107 = v49;
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v50);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallMean", 0xEuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v51);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 576) = MEMORY[0x25F889320](v106, v107);
  *(v89 + 584) = v52;
  v140 = v87[20];
  *(v89 + 616) = v86;
  *(v89 + 592) = v140;
  v104 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v105 = v53;
  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v54);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallSum", 0xDuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v55);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 624) = MEMORY[0x25F889320](v104, v105);
  *(v89 + 632) = v56;
  v139 = v87[21];
  *(v89 + 664) = v86;
  *(v89 + 640) = v139;
  v102 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v103 = v57;
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v58);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallGood", 0xEuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v59);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 672) = MEMORY[0x25F889320](v102, v103);
  *(v89 + 680) = v60;
  v138 = v87[22];
  *(v89 + 712) = v86;
  *(v89 + 688) = v138;
  v100 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v101 = v61;
  v62 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v62);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallGoodNum", 0x11uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v63);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 720) = MEMORY[0x25F889320](v100, v101);
  *(v89 + 728) = v64;
  v137 = *(v87 + 12);
  *(v89 + 760) = v88;
  *(v89 + 736) = v137;
  v98 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v99 = v65;
  v66 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v66);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v67 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallOk", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v67);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 768) = MEMORY[0x25F889320](v98, v99);
  *(v89 + 776) = v68;
  v136 = v87[26];
  *(v89 + 808) = v86;
  *(v89 + 784) = v136;
  v96 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v97 = v69;
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v70);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallOkNum", 0xFuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v71);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 816) = MEMORY[0x25F889320](v96, v97);
  *(v89 + 824) = v72;
  v135 = *(v87 + 14);
  *(v89 + 856) = v88;
  *(v89 + 832) = v135;
  v94 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v95 = v73;
  v74 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v74);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallTolerable", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v75);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 864) = MEMORY[0x25F889320](v94, v95);
  *(v89 + 872) = v76;
  v134 = v87[30];
  *(v89 + 904) = v86;
  *(v89 + 880) = v134;
  v92 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v93 = v77;
  v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v78);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallTolerableNum", 0x16uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v79);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 912) = MEMORY[0x25F889320](v92, v93);
  *(v89 + 920) = v80;
  v133 = *(v87 + 16);
  *(v89 + 952) = v88;
  *(v89 + 928) = v133;
  v90 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v91 = v81;
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v82);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_nSlices", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v83);

  outlined destroy of DefaultStringInterpolation();
  *(v89 + 960) = MEMORY[0x25F889320](v90, v91);
  *(v89 + 968) = v84;
  v132 = *(v87 + 17);
  *(v89 + 1000) = v88;
  *(v89 + 976) = v132;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}