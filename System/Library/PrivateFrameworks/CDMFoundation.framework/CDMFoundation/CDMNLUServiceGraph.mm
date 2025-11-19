@interface CDMNLUServiceGraph
+ (id)getUsageForAssetSetName:(int64_t)a3 withLocale:(id)a4;
+ (id)requiredDAGServices;
- (void)buildGraph;
@end

@implementation CDMNLUServiceGraph

+ (id)requiredDAGServices
{
  v51[22] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v50 = NSStringFromClass(v3);
  v51[0] = v50;
  v4 = objc_opt_class();
  v49 = NSStringFromClass(v4);
  v51[1] = v49;
  v5 = objc_opt_class();
  v48 = NSStringFromClass(v5);
  v51[2] = v48;
  v6 = objc_opt_class();
  v47 = NSStringFromClass(v6);
  v51[3] = v47;
  v7 = objc_opt_class();
  v46 = NSStringFromClass(v7);
  v51[4] = v46;
  v8 = objc_opt_class();
  v45 = NSStringFromClass(v8);
  v51[5] = v45;
  v9 = objc_opt_class();
  v44 = NSStringFromClass(v9);
  v51[6] = v44;
  v10 = objc_opt_class();
  v43 = NSStringFromClass(v10);
  v51[7] = v43;
  v11 = objc_opt_class();
  v42 = NSStringFromClass(v11);
  v51[8] = v42;
  v12 = objc_opt_class();
  v41 = NSStringFromClass(v12);
  v51[9] = v41;
  v13 = objc_opt_class();
  v40 = NSStringFromClass(v13);
  v51[10] = v40;
  v14 = objc_opt_class();
  v39 = NSStringFromClass(v14);
  v51[11] = v39;
  v15 = objc_opt_class();
  v38 = NSStringFromClass(v15);
  v51[12] = v38;
  v16 = objc_opt_class();
  v37 = NSStringFromClass(v16);
  v51[13] = v37;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v51[14] = v18;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v51[15] = v20;
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v51[16] = v22;
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v51[17] = v24;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v51[18] = v26;
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v51[19] = v28;
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v51[20] = v30;
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v51[21] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:22];
  v34 = [v2 setWithArray:v33];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)getUsageForAssetSetName:(int64_t)a3 withLocale:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (a3 == 1)
  {
    v6 = [CDMAssetsUtils getNLUsages:v5];
    goto LABEL_5;
  }

  if (!a3)
  {
    v6 = [CDMAssetsUtils getAssistantUsages:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_9;
  }

  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12 = 136315394;
    v13 = "+[CDMNLUServiceGraph getUsageForAssetSetName:withLocale:]";
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s No usages found for asset set name %@", &v12, 0x16u);
  }

  v7 = 0;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)buildGraph
{
  objc_initWeak(location, self);
  v3 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v4 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v161 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v157 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v155 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v153 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v150 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v5 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v159 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v148 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v6 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v7 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v8 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v9 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v136 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v10 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v143 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v134 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v141 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v128 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v122 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v126 = v10;
  v139 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v500[0] = 0;
  v500[1] = v500;
  v500[2] = 0x3032000000;
  v500[3] = __Block_byref_object_copy__487;
  v500[4] = __Block_byref_object_dispose__488;
  v501 = 0;
  v498[0] = 0;
  v498[1] = v498;
  v498[2] = 0x3032000000;
  v498[3] = __Block_byref_object_copy__487;
  v498[4] = __Block_byref_object_dispose__488;
  v499 = 0;
  v496[0] = 0;
  v496[1] = v496;
  v496[2] = 0x3032000000;
  v496[3] = __Block_byref_object_copy__487;
  v496[4] = __Block_byref_object_dispose__488;
  v497 = 0;
  v494[0] = 0;
  v494[1] = v494;
  v494[2] = 0x3032000000;
  v494[3] = __Block_byref_object_copy__487;
  v494[4] = __Block_byref_object_dispose__488;
  v495 = 0;
  v492[0] = 0;
  v492[1] = v492;
  v492[2] = 0x3032000000;
  v492[3] = __Block_byref_object_copy__487;
  v492[4] = __Block_byref_object_dispose__488;
  v493 = 0;
  v490[0] = 0;
  v490[1] = v490;
  v490[2] = 0x3032000000;
  v490[3] = __Block_byref_object_copy__487;
  v490[4] = __Block_byref_object_dispose__488;
  v491 = 0;
  v488[0] = 0;
  v488[1] = v488;
  v488[2] = 0x3032000000;
  v488[3] = __Block_byref_object_copy__487;
  v488[4] = __Block_byref_object_dispose__488;
  v489 = 0;
  v486[0] = 0;
  v486[1] = v486;
  v486[2] = 0x3032000000;
  v486[3] = __Block_byref_object_copy__487;
  v486[4] = __Block_byref_object_dispose__488;
  v487 = 0;
  v484[0] = 0;
  v484[1] = v484;
  v484[2] = 0x3032000000;
  v484[3] = __Block_byref_object_copy__487;
  v484[4] = __Block_byref_object_dispose__488;
  v485 = 0;
  v482[0] = 0;
  v482[1] = v482;
  v482[2] = 0x3032000000;
  v482[3] = __Block_byref_object_copy__487;
  v482[4] = __Block_byref_object_dispose__488;
  v483 = 0;
  v480[0] = 0;
  v480[1] = v480;
  v480[2] = 0x3032000000;
  v480[3] = __Block_byref_object_copy__487;
  v480[4] = __Block_byref_object_dispose__488;
  v481 = 0;
  v478[0] = 0;
  v478[1] = v478;
  v478[2] = 0x3032000000;
  v478[3] = __Block_byref_object_copy__487;
  v478[4] = __Block_byref_object_dispose__488;
  v479 = 0;
  v476[0] = 0;
  v476[1] = v476;
  v476[2] = 0x3032000000;
  v476[3] = __Block_byref_object_copy__487;
  v476[4] = __Block_byref_object_dispose__488;
  v477 = 0;
  v474[0] = 0;
  v474[1] = v474;
  v474[2] = 0x3032000000;
  v474[3] = __Block_byref_object_copy__487;
  v474[4] = __Block_byref_object_dispose__488;
  v475 = 0;
  v472[0] = 0;
  v472[1] = v472;
  v472[2] = 0x3032000000;
  v472[3] = __Block_byref_object_copy__487;
  v472[4] = __Block_byref_object_dispose__488;
  v473 = 0;
  v470[0] = 0;
  v470[1] = v470;
  v470[2] = 0x3032000000;
  v470[3] = __Block_byref_object_copy__487;
  v470[4] = __Block_byref_object_dispose__488;
  v471 = 0;
  v468[0] = 0;
  v468[1] = v468;
  v468[2] = 0x3032000000;
  v468[3] = __Block_byref_object_copy__487;
  v468[4] = __Block_byref_object_dispose__488;
  v469 = 0;
  v466[0] = 0;
  v466[1] = v466;
  v466[2] = 0x3032000000;
  v466[3] = __Block_byref_object_copy__487;
  v466[4] = __Block_byref_object_dispose__488;
  v467 = 0;
  v464[0] = 0;
  v464[1] = v464;
  v464[2] = 0x3032000000;
  v464[3] = __Block_byref_object_copy__487;
  v464[4] = __Block_byref_object_dispose__488;
  v465 = 0;
  v462[0] = 0;
  v462[1] = v462;
  v462[2] = 0x3032000000;
  v462[3] = __Block_byref_object_copy__487;
  v462[4] = __Block_byref_object_dispose__488;
  v463 = 0;
  v460[0] = 0;
  v460[1] = v460;
  v460[2] = 0x3032000000;
  v460[3] = __Block_byref_object_copy__487;
  v460[4] = __Block_byref_object_dispose__488;
  v461 = 0;
  v458[0] = 0;
  v458[1] = v458;
  v458[2] = 0x3032000000;
  v458[3] = __Block_byref_object_copy__487;
  v458[4] = __Block_byref_object_dispose__488;
  v459 = 0;
  v456[0] = 0;
  v456[1] = v456;
  v456[2] = 0x3032000000;
  v456[3] = __Block_byref_object_copy__487;
  v456[4] = __Block_byref_object_dispose__488;
  v457 = 0;
  v454[0] = 0;
  v454[1] = v454;
  v454[2] = 0x3032000000;
  v454[3] = __Block_byref_object_copy__487;
  v454[4] = __Block_byref_object_dispose__488;
  v455 = 0;
  v452[0] = 0;
  v452[1] = v452;
  v452[2] = 0x3032000000;
  v452[3] = __Block_byref_object_copy__487;
  v452[4] = __Block_byref_object_dispose__488;
  v453 = 0;
  v450[0] = 0;
  v450[1] = v450;
  v450[2] = 0x3032000000;
  v450[3] = __Block_byref_object_copy__487;
  v450[4] = __Block_byref_object_dispose__488;
  v451 = 0;
  v448[0] = 0;
  v448[1] = v448;
  v448[2] = 0x3032000000;
  v448[3] = __Block_byref_object_copy__487;
  v448[4] = __Block_byref_object_dispose__488;
  v449 = 0;
  v446[0] = 0;
  v446[1] = v446;
  v446[2] = 0x3032000000;
  v446[3] = __Block_byref_object_copy__487;
  v446[4] = __Block_byref_object_dispose__488;
  v447 = 0;
  v444[0] = 0;
  v444[1] = v444;
  v444[2] = 0x3032000000;
  v444[3] = __Block_byref_object_copy__487;
  v444[4] = __Block_byref_object_dispose__488;
  v445 = 0;
  v442[0] = 0;
  v442[1] = v442;
  v442[2] = 0x3032000000;
  v442[3] = __Block_byref_object_copy__487;
  v442[4] = __Block_byref_object_dispose__488;
  v443 = 0;
  v440[0] = 0;
  v440[1] = v440;
  v440[2] = 0x3032000000;
  v440[3] = __Block_byref_object_copy__487;
  v440[4] = __Block_byref_object_dispose__488;
  v441 = 0;
  v438[0] = 0;
  v438[1] = v438;
  v438[2] = 0x3032000000;
  v438[3] = __Block_byref_object_copy__487;
  v438[4] = __Block_byref_object_dispose__488;
  v439 = 0;
  v436[0] = 0;
  v436[1] = v436;
  v436[2] = 0x3032000000;
  v436[3] = __Block_byref_object_copy__487;
  v436[4] = __Block_byref_object_dispose__488;
  v437 = 0;
  v434[0] = 0;
  v434[1] = v434;
  v434[2] = 0x3032000000;
  v434[3] = __Block_byref_object_copy__487;
  v434[4] = __Block_byref_object_dispose__488;
  v435 = 0;
  v432[0] = 0;
  v432[1] = v432;
  v432[2] = 0x3032000000;
  v432[3] = __Block_byref_object_copy__487;
  v432[4] = __Block_byref_object_dispose__488;
  v433 = 0;
  v11 = [MEMORY[0x1E696AD60] stringWithString:@"\n*** ✅ FOR DEBUGGING (start) ***"];
  [(CDMServiceGraph *)self getGraphInput];
  v118 = v6;
  v114 = v120 = v5;
  v12 = [v114 siriNLUTypeObj];
  v13 = MEMORY[0x1E69D1420];
  v14 = [v12 requestId];
  v124 = [v13 extractRequestLinkData:v14];

  v15 = [(CDMServiceGraph *)self getLanguage];
  v16 = [(CDMServiceGraph *)self validateRequest:v12];
  v430[0] = 0;
  v430[1] = v430;
  v430[2] = 0x3032000000;
  v430[3] = __Block_byref_object_copy__487;
  v430[4] = __Block_byref_object_dispose__488;
  v431 = [v16 utterance];
  v428[0] = 0;
  v428[1] = v428;
  v428[2] = 0x3032000000;
  v428[3] = __Block_byref_object_copy__487;
  v428[4] = __Block_byref_object_dispose__488;
  v429 = [v16 idA];
  v426[0] = 0;
  v426[1] = v426;
  v426[2] = 0x3032000000;
  v426[3] = __Block_byref_object_copy__487;
  v426[4] = __Block_byref_object_dispose__488;
  v427 = 0;
  [(CDMServiceGraph *)self populateRequesterEnumForNluRequest:v12];
  v116 = v7;
  v112 = v8;
  v109 = v16;
  v17 = [v12 requestId];
  v420[0] = MEMORY[0x1E69E9820];
  v420[1] = 3221225472;
  v420[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke;
  v420[3] = &unk_1E862E890;
  v18 = v12;
  v421 = v18;
  v423 = v462;
  v424 = v500;
  v19 = v3;
  v422 = v19;
  objc_copyWeak(&v425, location);
  v133 = [(CDMServiceGraph *)self addNodeWithName:@"doContextUpdate" bindService:v19 requestId:v17 block:v420];

  v20 = [v18 requestId];
  v413[0] = MEMORY[0x1E69E9820];
  v413[1] = 3221225472;
  v413[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_618;
  v413[3] = &unk_1E862E8B8;
  v21 = v18;
  v414 = v21;
  v22 = v15;
  v415 = v22;
  v418 = v498;
  v23 = v4;
  v416 = v23;
  v24 = v11;
  v417 = v24;
  objc_copyWeak(&v419, location);
  v132 = [(CDMServiceGraph *)self addNodeWithName:@"doCurrentTokenize" bindService:v23 requestId:v20 block:v413];

  v25 = [v21 requestId];
  v412[0] = MEMORY[0x1E69E9820];
  v412[1] = 3221225472;
  v412[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_620;
  v412[3] = &unk_1E862F0E0;
  v412[4] = v500;
  v412[5] = v426;
  v412[6] = v430;
  v412[7] = v496;
  v412[8] = v498;
  v26 = [(CDMServiceGraph *)self addNodeWithName:@"doCorrectedUtteranceTokenize" bindService:v23 requestId:v25 block:v412];
  v110 = v9;

  v27 = [v21 requestId];
  v405[0] = MEMORY[0x1E69E9820];
  v405[1] = 3221225472;
  v405[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_621;
  v405[3] = &unk_1E862EDC8;
  v409 = v494;
  v28 = v23;
  v406 = v28;
  v29 = v21;
  v407 = v29;
  v410 = v430;
  v30 = v22;
  v408 = v30;
  objc_copyWeak(&v411, location);
  v131 = [(CDMServiceGraph *)self addNodeWithName:@"doPreviousTurnsTokenize" bindService:v159 requestId:v27 block:v405];
  v107 = v28;
  v108 = v19;

  v31 = [v29 requestId];
  v398[0] = MEMORY[0x1E69E9820];
  v398[1] = 3221225472;
  v398[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_2;
  v398[3] = &unk_1E862ED78;
  v400 = v496;
  v401 = v426;
  v32 = v161;
  v399 = v32;
  v402 = v486;
  v403 = v484;
  v404 = v488;
  v162 = [(CDMServiceGraph *)self addNodeWithName:@"doEmbedding" bindService:v32 requestId:v31 block:v398];

  v33 = [v29 requestId];
  v389 = MEMORY[0x1E69E9820];
  v390 = 3221225472;
  v391 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_625;
  v392 = &unk_1E862F130;
  v395 = v500;
  v396 = v496;
  v34 = v29;
  v393 = v34;
  v397 = v482;
  v394 = v157;
  v106 = v394;
  v147 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doSpanizationDateTime" requestId:? block:?];

  v35 = [v34 requestId];
  v380 = MEMORY[0x1E69E9820];
  v381 = 3221225472;
  v382 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_629;
  v383 = &unk_1E862F130;
  v386 = v500;
  v387 = v496;
  v36 = v34;
  v384 = v36;
  v388 = v480;
  v385 = v155;
  v105 = v385;
  v146 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doSpanizationRegex" requestId:? block:?];

  v37 = [v36 requestId];
  v374[0] = MEMORY[0x1E69E9820];
  v374[1] = 3221225472;
  v374[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_630;
  v374[3] = &unk_1E862F130;
  v377 = v500;
  v378 = v496;
  v375 = v153;
  v38 = v36;
  v376 = v38;
  v379 = v478;
  v104 = v375;
  v154 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanizationSiriVocabulary" bindService:v375 requestId:v37 block:v374];

  v39 = [v38 requestId];
  v368[0] = MEMORY[0x1E69E9820];
  v368[1] = 3221225472;
  v368[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_632;
  v368[3] = &unk_1E862F130;
  v371 = v500;
  v372 = v496;
  v40 = v38;
  v369 = v40;
  v373 = v476;
  v41 = v150;
  v370 = v41;
  v145 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanizationVoc" bindService:v41 requestId:v39 block:v368];
  v102 = v41;
  v103 = v32;
  v151 = v24;

  v42 = [v40 requestId];
  v356[0] = MEMORY[0x1E69E9820];
  v356[1] = 3221225472;
  v356[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_633;
  v356[3] = &unk_1E862E8E0;
  v357 = v148;
  v43 = v40;
  v358 = v43;
  v360 = v426;
  v44 = v30;
  v359 = v44;
  v361 = v496;
  v362 = v432;
  v363 = v486;
  v364 = v484;
  v365 = v500;
  v366 = v468;
  objc_copyWeak(&v367, location);
  v101 = v357;
  v158 = [(CDMServiceGraph *)self addNodeWithName:@"doUaaPNLInference" bindService:v357 requestId:v42 block:v356];

  v45 = [v43 requestId];
  v350[0] = MEMORY[0x1E69E9820];
  v350[1] = 3221225472;
  v350[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_2_634;
  v350[3] = &unk_1E862F130;
  v353 = v432;
  v354 = v498;
  v46 = v43;
  v351 = v46;
  v355 = v434;
  v47 = v139;
  v352 = v47;
  v138 = [(CDMServiceGraph *)self addNodeWithName:@"doShortcutParse" bindService:v47 requestId:v45 block:v350];

  v48 = [v46 requestId];
  v337[0] = MEMORY[0x1E69E9820];
  v337[1] = 3221225472;
  v337[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_636;
  v337[3] = &unk_1E862E908;
  v340 = v460;
  v341 = v496;
  v342 = v432;
  v343 = v426;
  v344 = v486;
  v345 = v484;
  v346 = v462;
  v49 = v46;
  v338 = v49;
  v347 = v500;
  objc_copyWeak(&v349, location);
  v50 = v141;
  v339 = v50;
  v348 = v458;
  v140 = [(CDMServiceGraph *)self addNodeWithName:@"doPSCInference" bindService:v50 requestId:v48 block:v337];

  v51 = [v49 requestId];
  v324[0] = MEMORY[0x1E69E9820];
  v324[1] = 3221225472;
  v324[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_637;
  v324[3] = &unk_1E862E908;
  v327 = v456;
  v328 = v496;
  v329 = v432;
  v330 = v426;
  v331 = v486;
  v332 = v484;
  v333 = v462;
  v52 = v49;
  v325 = v52;
  v334 = v500;
  objc_copyWeak(&v336, location);
  v335 = v454;
  v53 = v128;
  v326 = v53;
  v156 = [(CDMServiceGraph *)self addNodeWithName:@"doLVCInference" bindService:v53 requestId:v51 block:v324];
  v99 = v53;
  v100 = v50;

  v54 = [v52 requestId];
  v308 = MEMORY[0x1E69E9820];
  v309 = 3221225472;
  v310 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_638;
  v311 = &unk_1E862E908;
  v314 = v466;
  v315 = v496;
  v316 = v432;
  v317 = v426;
  v318 = v486;
  v319 = v484;
  v320 = v462;
  v55 = v52;
  v312 = v55;
  v321 = v500;
  objc_copyWeak(&v323, location);
  v313 = v143;
  v322 = v464;
  v98 = v313;
  v56 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doSNLCInference" requestId:? block:?];

  v57 = [v55 requestId];
  v298[0] = MEMORY[0x1E69E9820];
  v298[1] = 3221225472;
  v298[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_639;
  v298[3] = &unk_1E862E958;
  v58 = v55;
  v299 = v58;
  v302 = v428;
  v59 = v44;
  v300 = v59;
  v303 = v478;
  v304 = v426;
  v305 = v500;
  v306 = v492;
  v307 = v490;
  v60 = v134;
  v301 = v60;
  v135 = [(CDMServiceGraph *)self addNodeWithName:@"doSSUMatching" bindService:v60 requestId:v57 block:v298];
  v97 = v47;

  v61 = [v58 requestId];
  v289[0] = MEMORY[0x1E69E9820];
  v289[1] = 3221225472;
  v289[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_2_647;
  v289[3] = &unk_1E862E930;
  v294 = v462;
  v290 = v159;
  v62 = v58;
  v291 = v62;
  v295 = v498;
  v296 = v494;
  v297 = v452;
  v63 = v124;
  v292 = v63;
  v96 = v59;
  v293 = v96;
  v125 = v290;
  v160 = [(CDMServiceGraph *)self addNodeWithName:@"doCcqrAerCbRInference" bindService:v290 requestId:v61 block:v289];

  v64 = [v62 requestId];
  v279[0] = MEMORY[0x1E69E9820];
  v279[1] = 3221225472;
  v279[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_648;
  v279[3] = &unk_1E862E958;
  v283 = v496;
  v284 = v426;
  v285 = v486;
  v286 = v484;
  v287 = v500;
  v65 = v136;
  v280 = v65;
  v288 = v438;
  v66 = v151;
  v281 = v66;
  v67 = v62;
  v282 = v67;
  v152 = [(CDMServiceGraph *)self addNodeWithName:@"doCATIInference" bindService:v65 requestId:v64 block:v279];

  v68 = [v67 requestId];
  v129 = v66;
  v264 = MEMORY[0x1E69E9820];
  v265 = 3221225472;
  v266 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_651;
  v267 = &unk_1E862E980;
  v270 = v472;
  v271 = v496;
  v272 = v432;
  v273 = v426;
  v274 = v486;
  v275 = v484;
  v276 = v500;
  v69 = v67;
  v268 = v69;
  objc_copyWeak(&v278, location);
  v269 = v120;
  v277 = v470;
  v121 = v269;
  v70 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doNLv4Inference" requestId:? block:?];
  v95 = v65;

  v71 = [v69 requestId];
  v255[0] = MEMORY[0x1E69E9820];
  v255[1] = 3221225472;
  v255[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_655;
  v255[3] = &unk_1E862E9A8;
  v258 = v426;
  v259 = v432;
  v260 = v496;
  v261 = v500;
  v256 = v126;
  v72 = v69;
  v257 = v72;
  v262 = v470;
  v263 = v464;
  v127 = v256;
  v149 = [(CDMServiceGraph *)self addNodeWithName:@"doNLv4SNLCMerging" bindService:v256 requestId:v71 block:v255];

  v73 = [v72 requestId];
  v245 = MEMORY[0x1E69E9820];
  v246 = 3221225472;
  v247 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_662;
  v248 = &unk_1E862ED78;
  v250 = v426;
  v251 = v432;
  v252 = v496;
  v253 = v500;
  v254 = v436;
  v249 = v122;
  v123 = v249;
  v74 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doOverridesProto" requestId:? block:?];

  [v74 setQueuePriority:4];
  v75 = [v72 requestId];
  v237 = MEMORY[0x1E69E9820];
  v238 = 3221225472;
  v239 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_663;
  v240 = &unk_1E862E9D0;
  v76 = v72;
  v241 = v76;
  v77 = v63;
  v242 = v77;
  v244 = v452;
  v243 = v118;
  v119 = v243;
  v137 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doRepetitionDetection" requestId:? block:?];

  v78 = [v76 requestId];
  v223 = MEMORY[0x1E69E9820];
  v224 = 3221225472;
  v225 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_666;
  v226 = &unk_1E862E9F8;
  v230 = v450;
  v231 = v426;
  v232 = v496;
  v233 = v486;
  v234 = v484;
  v79 = v77;
  v227 = v79;
  v80 = v76;
  v228 = v80;
  v235 = v500;
  v236 = v448;
  v229 = v116;
  v117 = v229;
  v144 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doMentionDetection" requestId:? block:?];
  v94 = v60;

  v81 = [v80 requestId];
  v213 = MEMORY[0x1E69E9820];
  v214 = 3221225472;
  v215 = __32__CDMNLUServiceGraph_buildGraph__block_invoke_669;
  v216 = &unk_1E862EA20;
  v219 = v446;
  v220 = v500;
  v82 = v80;
  v217 = v82;
  v221 = v496;
  v222 = v444;
  v218 = v112;
  v113 = v218;
  v142 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doContextualSpanMatching" requestId:? block:?];

  v83 = [v82 requestId];
  v200[1] = MEMORY[0x1E69E9820];
  v200[2] = 3221225472;
  v200[3] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_672;
  v200[4] = &unk_1E862EA48;
  v204 = v448;
  v205 = v500;
  v206 = v442;
  v207 = v496;
  v208 = v444;
  v209 = v486;
  v210 = v484;
  v211 = v426;
  v93 = v79;
  v201 = v93;
  v84 = v82;
  v202 = v84;
  v212 = v440;
  v203 = v110;
  v111 = v203;
  v85 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doMentionResolving" requestId:? block:?];

  v86 = [v84 requestId];
  v191[0] = MEMORY[0x1E69E9820];
  v191[1] = 3221225472;
  v191[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_675;
  v191[3] = &unk_1E862EA70;
  v193 = v474;
  v194 = v482;
  v195 = v480;
  v196 = v478;
  v197 = v476;
  v87 = v84;
  v192 = v87;
  objc_copyWeak(v200, location);
  v198 = v432;
  v199 = v440;
  v88 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanMerging" requestId:v86 block:v191];

  v89 = [v87 requestId];
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_2_677;
  v165[3] = &unk_1E862EA98;
  v169 = v500;
  v92 = v87;
  v166 = v92;
  v170 = v434;
  v171 = v466;
  v172 = v464;
  v173 = v472;
  v174 = v470;
  v175 = v468;
  v176 = v438;
  v177 = v460;
  v178 = v458;
  v179 = v454;
  v180 = v436;
  v181 = v450;
  v182 = v448;
  v183 = v442;
  v184 = v440;
  v185 = v474;
  v186 = v452;
  v187 = v498;
  v188 = v490;
  v189 = v462;
  v115 = v114;
  v167 = v115;
  v130 = v129;
  v168 = v130;
  objc_copyWeak(&v190, location);
  v90 = [(CDMServiceGraph *)self addNodeWithName:@"doPostProcess" requestId:v89 block:v165];

  [v160 addDependency:v131];
  [v160 addDependency:v132];
  [v160 addDependency:v137];
  [v133 addDependency:v160];
  [v26 addDependency:v133];
  [v56 addDependency:v26];
  [v74 addDependency:v26];
  [v162 addDependency:v26];
  [v147 addDependency:v26];
  [v146 addDependency:v26];
  [v154 addDependency:v26];
  [v145 addDependency:v26];
  [v158 addDependency:v26];
  [v70 addDependency:v26];
  [v144 addDependency:v162];
  [v142 addDependency:v26];
  [v85 addDependency:v142];
  [v85 addDependency:v144];
  [v88 addDependency:v147];
  [v88 addDependency:v146];
  [v88 addDependency:v154];
  [v88 addDependency:v145];
  [v88 addDependency:v85];
  [v138 addDependency:v88];
  [v152 addDependency:v162];
  [v140 addDependency:v26];
  [v140 addDependency:v88];
  [v140 addDependency:v162];
  [v156 addDependency:v26];
  [v156 addDependency:v88];
  [v156 addDependency:v162];
  [v56 addDependency:v88];
  [v56 addDependency:v162];
  [v56 addDependency:v85];
  [v135 addDependency:v154];
  [v158 addDependency:v162];
  [v158 addDependency:v88];
  [v70 addDependency:v162];
  [v70 addDependency:v88];
  [v70 addDependency:v85];
  [v149 addDependency:v70];
  [v149 addDependency:v56];
  [v74 addDependency:v88];
  [v90 addDependency:v149];
  [v90 addDependency:v158];
  [v90 addDependency:v140];
  [v90 addDependency:v156];
  [v90 addDependency:v152];
  [v90 addDependency:v74];
  [v90 addDependency:v138];
  [v90 addDependency:v137];
  [v90 addDependency:v85];
  [v90 addDependency:v135];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_3;
  aBlock[3] = &unk_1E862EAC0;
  aBlock[4] = v436;
  v91 = _Block_copy(aBlock);
  [(CDMServiceGraph *)self skipNode:v70 basedOnNode:v74 withCondition:v91];
  [(CDMServiceGraph *)self skipNode:v56 basedOnNode:v74 withCondition:v91];
  [(CDMServiceGraph *)self skipNode:v140 basedOnNode:v74 withCondition:v91];
  [(CDMServiceGraph *)self skipNode:v152 basedOnNode:v74 withCondition:v91];
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __32__CDMNLUServiceGraph_buildGraph__block_invoke_680;
  v163[3] = &unk_1E862EAC0;
  v163[4] = v464;
  [(CDMServiceGraph *)self skipNode:v70 basedOnNode:v56 withCondition:v163];

  objc_destroyWeak(&v190);
  objc_destroyWeak(v200);

  objc_destroyWeak(&v278);
  objc_destroyWeak(&v323);

  objc_destroyWeak(&v336);
  objc_destroyWeak(&v349);

  objc_destroyWeak(&v367);
  objc_destroyWeak(&v411);

  objc_destroyWeak(&v419);
  objc_destroyWeak(&v425);

  _Block_object_dispose(v426, 8);
  _Block_object_dispose(v428, 8);

  _Block_object_dispose(v430, 8);
  _Block_object_dispose(v432, 8);

  _Block_object_dispose(v434, 8);
  _Block_object_dispose(v436, 8);

  _Block_object_dispose(v438, 8);
  _Block_object_dispose(v440, 8);

  _Block_object_dispose(v442, 8);
  _Block_object_dispose(v444, 8);

  _Block_object_dispose(v446, 8);
  _Block_object_dispose(v448, 8);

  _Block_object_dispose(v450, 8);
  _Block_object_dispose(v452, 8);

  _Block_object_dispose(v454, 8);
  _Block_object_dispose(v456, 8);

  _Block_object_dispose(v458, 8);
  _Block_object_dispose(v460, 8);

  _Block_object_dispose(v462, 8);
  _Block_object_dispose(v464, 8);

  _Block_object_dispose(v466, 8);
  _Block_object_dispose(v468, 8);

  _Block_object_dispose(v470, 8);
  _Block_object_dispose(v472, 8);

  _Block_object_dispose(v474, 8);
  _Block_object_dispose(v476, 8);

  _Block_object_dispose(v478, 8);
  _Block_object_dispose(v480, 8);

  _Block_object_dispose(v482, 8);
  _Block_object_dispose(v484, 8);

  _Block_object_dispose(v486, 8);
  _Block_object_dispose(v488, 8);

  _Block_object_dispose(v490, 8);
  _Block_object_dispose(v492, 8);

  _Block_object_dispose(v494, 8);
  _Block_object_dispose(v496, 8);

  _Block_object_dispose(v498, 8);
  _Block_object_dispose(v500, 8);

  objc_destroyWeak(location);
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Prepare CDMContextUpdateRequestCommand", &v17, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D1298]);
  v4 = [*(a1 + 32) currentTurnInput];
  [v3 setCurrentTurn:v4];

  v5 = [*(a1 + 32) previousTurnInputs];
  [v3 setPreviousTurns:v5];

  v6 = [*(*(*(a1 + 48) + 8) + 40) qrResponse];
  v7 = [v6 rewriteHypotheses];
  [v3 setQrHypotheses:v7];

  v8 = [[CDMContextUpdateRequestCommand alloc] initWithCtxUpdateRequest:v3];
  v9 = [*(a1 + 40) handle:v8];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 56) + 8) + 40);
  v13 = [*(a1 + 32) requestId];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = [WeakRetained cdmDataDispatcherContext];
  [CDMDataDispatcher dispatchContextUpdateData:v12 requestId:v13 dataDispatcherContext:v15];

  v16 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_618(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use in CDMTokenizerProtoService", &v14, 0xCu);
  }

  v3 = [*(a1 + 32) currentTurnInput];
  v4 = [v3 asrOutputs];
  v5 = [CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:v4 locale:*(a1 + 40)];

  v6 = [*(a1 + 48) handle:v5];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [CDMServiceGraphUtil addDebugInfo:*(a1 + 56) nluRequest:*(a1 + 32) responseObject:*(*(*(a1 + 64) + 8) + 40)];
  v9 = *(*(*(a1 + 64) + 8) + 40);
  v10 = [*(a1 + 32) requestId];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = [WeakRetained cdmDataDispatcherContext];
  [CDMDataDispatcher dispatchCurrentTurnTokenizationData:v9 requestId:v10 dataDispatcherContext:v12];

  v13 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_620(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use in CDMTokenizerProtoService", &v9, 0xCu);
  }

  v3 = [*(*(a1[4] + 8) + 40) firstReformedInput];
  v4 = [v3 type] == 1;

  v5 = CDMOSLoggerForCategory(0);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v7 = "%s Current Turn is a Correction for the previous turn";
LABEL_9:
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, v7, &v9, 0xCu);
    }
  }

  else if (v6)
  {
    v9 = 136315138;
    v10 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v7 = "%s Current Turn is NOT a Correction for the previous turn";
    goto LABEL_9;
  }

  objc_storeStrong((*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  objc_storeStrong((*(a1[7] + 8) + 40), *(*(a1[8] + 8) + 40));
  v8 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_621(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentTurnInput];
  v4 = [*(a1 + 40) previousTurnInputs];
  v5 = [CDMServiceGraphUtil prepareCcqrTokens:v2 currentTurn:v3 previousTurns:v4 utterance:*(*(*(a1 + 64) + 8) + 40) locale:*(a1 + 48)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 56) + 8) + 40);
  v11 = [*(a1 + 40) requestId];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v10 = [WeakRetained cdmDataDispatcherContext];
  [CDMDataDispatcher dispatchPreviousTurnTokenizationData:v8 requestId:v11 dataDispatcherContext:v10];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[CDMNLUServiceGraph buildGraph]_block_invoke_2";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMEmbeddingProtoRequestCommand for use in CDMEmbeddingProtoService", &v18, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D12B0]);
  v4 = [*(*(*(a1 + 40) + 8) + 40) response];
  v5 = [v4 tokenChain];
  [v3 setTokenChain:v5];

  [v3 setText:*(*(*(a1 + 48) + 8) + 40)];
  v6 = [[CDMEmbeddingProtoRequestCommand alloc] initWithRequest:v3];
  v7 = [*(a1 + 32) handle:v6];
  v8 = [v7 response];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v7 embeddingConfigs];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [SiriNLUInternalEmbeddingConverter convertFromProtoEmbeddingResponseCommand:*(*(*(a1 + 56) + 8) + 40)];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_625(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatcherRequestCommand for use in CDMDateTimeSpanMatchService", &v19, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) firstReformedInput];
  v4 = [v3 currentTurn];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];

  v7 = [*(*(*(a1 + 56) + 8) + 40) responses];
  v8 = [CDMBaseSpanMatchService convertToSpanMatchRequests:v7 nlContext:v6];

  v9 = [CDMSpanMatcherRequestCommand alloc];
  v10 = [*(a1 + 32) currentTurnInput];
  v11 = [v10 asrOutputs];
  v12 = [*(a1 + 32) requestId];
  v13 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v12];
  v14 = [(CDMSpanMatcherRequestCommand *)v9 initWithRequests:v8 asrHypothesis:v11 selfMetadata:v13];

  v15 = [*(a1 + 40) handle:v14];
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_629(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatcherRequestCommand for use in CDMRegexSpanMatchService", &v19, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) firstReformedInput];
  v4 = [v3 currentTurn];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];

  v7 = [*(*(*(a1 + 56) + 8) + 40) responses];
  v8 = [CDMBaseSpanMatchService convertToSpanMatchRequests:v7 nlContext:v6];

  v9 = [CDMSpanMatcherRequestCommand alloc];
  v10 = [*(a1 + 32) currentTurnInput];
  v11 = [v10 asrOutputs];
  v12 = [*(a1 + 32) requestId];
  v13 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v12];
  v14 = [(CDMSpanMatcherRequestCommand *)v9 initWithRequests:v8 asrHypothesis:v11 selfMetadata:v13];

  v15 = [*(a1 + 40) handle:v14];
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_630(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136315138;
    v21 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatcherRequestCommand for use in CDMSiriVocabularySpanMatchService", &v20, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) firstReformedInput];
  v4 = [v3 currentTurn];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];

  v7 = [*(*(*(a1 + 56) + 8) + 40) responses];
  v8 = [CDMBaseSpanMatchService convertToSpanMatchRequests:v7 nlContext:v6];

  v9 = objc_alloc_init(CDMSpanMatchDataUpdateCommand);
  [*(a1 + 32) updateData:v9];
  v10 = [CDMSpanMatcherRequestCommand alloc];
  v11 = [*(a1 + 40) currentTurnInput];
  v12 = [v11 asrOutputs];
  v13 = [*(a1 + 40) requestId];
  v14 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v13];
  v15 = [(CDMSpanMatcherRequestCommand *)v10 initWithRequests:v8 asrHypothesis:v12 selfMetadata:v14];

  v16 = [*(a1 + 32) handle:v15];
  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_632(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatcherRequestCommand for use in CDMVocSpanMatchService", &v19, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) firstReformedInput];
  v4 = [v3 currentTurn];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];

  v7 = [*(*(*(a1 + 56) + 8) + 40) responses];
  v8 = [CDMBaseSpanMatchService convertToSpanMatchRequests:v7 nlContext:v6];

  v9 = [CDMSpanMatcherRequestCommand alloc];
  v10 = [*(a1 + 32) currentTurnInput];
  v11 = [v10 asrOutputs];
  v12 = [*(a1 + 32) requestId];
  v13 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v12];
  v14 = [(CDMSpanMatcherRequestCommand *)v9 initWithRequests:v8 asrHypothesis:v11 selfMetadata:v13];

  v15 = [*(a1 + 40) handle:v14];
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_633(uint64_t a1)
{
  v18 = *(a1 + 32);
  v2 = [*(a1 + 40) requestId];
  v16 = *(*(*(a1 + 56) + 8) + 40);
  v17 = *(a1 + 48);
  v19 = [*(*(*(a1 + 64) + 8) + 40) response];
  v3 = [v19 tokenChain];
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v5 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v6 = [CDMServiceGraphUtil embeddingsOutput:v5 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.uaap.ssu"];
  v7 = [*(*(*(a1 + 96) + 8) + 40) firstReformedInput];
  v8 = [v7 currentTurn];
  v9 = *(*(a1 + 104) + 8);
  obj = *(v9 + 40);
  v22 = 0;
  v20 = 0;
  v10 = v2;
  LOBYTE(v2) = [CDMServiceGraphUtil runUaaPNLProtoService:v18 requestId:v2 utterance:v16 locale:v17 tokenChain:v3 matchingSpans:v4 embeddingTensor:v6 currentTurn:v8 outUaapProtoRequest:&v22 outUaapProtoResponse:&obj outError:&v20];
  v11 = v22;
  objc_storeStrong((v9 + 40), obj);
  v12 = v20;

  if ((v2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 112));
    [WeakRetained failedWithError:v12];
  }

  v14 = *(*(*(a1 + 104) + 8) + 40);
  v15 = [*(a1 + 40) requestId];
  [CDMDataDispatcher dispatchUaaPData:v11 withResponse:v14 requestId:v15];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_2_634(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[CDMNLUServiceGraph buildGraph]_block_invoke_2";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Output VoiceCommand NLUParse if there is voice command matching span found", &v14, 0xCu);
  }

  v3 = [CDMShortcutRequestCommand alloc];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [*(*(*(a1 + 56) + 8) + 40) response];
  v6 = [v5 tokenChain];
  v7 = [*(a1 + 32) currentTurnInput];
  v8 = [v7 turnContext];
  v9 = [(CDMShortcutRequestCommand *)v3 initWithMatchingSpans:v4 tokenChain:v6 currentTurnContext:v8];

  v10 = [*(a1 + 40) handle:v9];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_636(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a2);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v35 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Creating CDMPSCRequestCommand for use in CDMPSCService", buf, 0xCu);
  }

  v31 = [*(*(*(a1 + 56) + 8) + 40) response];
  v4 = [v31 tokenChain];
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v8 = [CDMServiceGraphUtil embeddingsOutput:v7 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.psc"];
  v9 = [*(*(*(a1 + 96) + 8) + 40) rewriteMsg];
  v10 = [*(a1 + 32) requestId];
  v11 = [*(*(*(a1 + 104) + 8) + 40) firstReformedInput];
  v12 = [v11 currentTurn];
  v32 = 0;
  v13 = [CDMServiceGraphUtil buildPSCRequestWithTokenChain:v4 matchingSpans:v5 utterance:v6 embeddingTensor:v8 rewriteMsg:v9 nluRequestId:v10 currentTurn:v12 error:&v32];
  v14 = v32;
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;
  v17 = v14;

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (!v18)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained failedWithError:v17];

    v18 = *(*(*(a1 + 48) + 8) + 40);
  }

  v20 = [*(a1 + 40) handle:v18];
  v21 = objc_loadWeakRetained(&location);
  if (!v21 || (v22 = objc_loadWeakRetained(&location), v23 = [v22 isCancelled], v22, v21, (v23 & 1) != 0))
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v35 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s CDMPSCService node was cancelled, so not adding response to graph.", buf, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  objc_storeStrong((*(*(a1 + 112) + 8) + 40), v20);
  v25 = [*(*(*(a1 + 112) + 8) + 40) cmdError];

  if (v25)
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v29 = [*(*(*(a1 + 112) + 8) + 40) cmdError];
      v30 = [v29 localizedDescription];
      *buf = 136315394;
      v35 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v36 = 2112;
      v37 = v30;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s PSC failed to handle the request: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:
  v26 = *(*(*(a1 + 48) + 8) + 40);
  v27 = [*(a1 + 32) requestId];
  [CDMDataDispatcher dispatchPSCData:v26 withResponse:v20 requestId:v27];

  objc_destroyWeak(&location);
  v28 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_637(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v31 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMLVCRequestCommand for use in CDMLVCService", buf, 0xCu);
  }

  v28 = [*(*(*(a1 + 56) + 8) + 40) response];
  v3 = [v28 tokenChain];
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(*(*(a1 + 72) + 8) + 40);
  v6 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v7 = [CDMServiceGraphUtil embeddingsOutput:v6 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.lvc"];
  v8 = [*(*(*(a1 + 96) + 8) + 40) rewriteMsg];
  v9 = [*(a1 + 32) requestId];
  v10 = [*(*(*(a1 + 104) + 8) + 40) firstReformedInput];
  v29 = 0;
  v11 = [CDMServiceGraphUtil buildLVCRequestWithTokenChain:v3 matchingSpans:v4 utterance:v5 embeddingTensor:v7 rewriteMsg:v8 nluRequestId:v9 reformedTurnInput:v10 error:&v29];
  v12 = v29;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  v15 = *(*(*(a1 + 48) + 8) + 40);
  if (!v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained failedWithError:v12];

    v15 = *(*(*(a1 + 48) + 8) + 40);
  }

  v17 = [*(a1 + 40) handle:v15];
  v18 = *(*(a1 + 112) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(*(*(a1 + 112) + 8) + 40) cmdError];

  if (v20)
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v26 = [*(*(*(a1 + 112) + 8) + 40) cmdError];
      v27 = [v26 localizedDescription];
      *buf = 136315394;
      v31 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v32 = 2112;
      v33 = v27;
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s LVC failed to handle the request: %@", buf, 0x16u);
    }
  }

  v22 = *(*(*(a1 + 48) + 8) + 40);
  v23 = *(*(*(a1 + 112) + 8) + 40);
  v24 = [*(a1 + 32) requestId];
  [CDMDataDispatcher dispatchLVCData:v22 withResponse:v23 requestId:v24];

  v25 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_638(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a2);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v35 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Creating CDMSNLCProtoRequestCommand for use in CDMSNLCProtoService", buf, 0xCu);
  }

  v31 = [*(*(*(a1 + 56) + 8) + 40) response];
  v4 = [v31 tokenChain];
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v8 = [CDMServiceGraphUtil embeddingsOutput:v7 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.snlc"];
  v9 = [*(*(*(a1 + 96) + 8) + 40) rewriteMsg];
  v10 = [*(a1 + 32) requestId];
  v11 = [*(*(*(a1 + 104) + 8) + 40) firstReformedInput];
  v12 = [v11 currentTurn];
  v32 = 0;
  v13 = [CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:v4 matchingSpans:v5 utterance:v6 embeddingTensor:v8 rewriteMsg:v9 requestId:v10 currentTurn:v12 error:&v32];
  v14 = v32;
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;
  v17 = v14;

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (!v18)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained failedWithError:v17];

    v18 = *(*(*(a1 + 48) + 8) + 40);
  }

  v20 = [*(a1 + 40) handle:v18];
  v21 = objc_loadWeakRetained(&location);
  if (!v21 || (v22 = objc_loadWeakRetained(&location), v23 = [v22 isCancelled], v22, v21, (v23 & 1) != 0))
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v35 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s CDMSNLCProtoService node was cancelled, so not adding response to graph.", buf, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  objc_storeStrong((*(*(a1 + 112) + 8) + 40), v20);
  v25 = [*(*(*(a1 + 112) + 8) + 40) cmdError];

  if (v25)
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v29 = [*(*(*(a1 + 112) + 8) + 40) cmdError];
      v30 = [v29 localizedDescription];
      *buf = 136315394;
      v35 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v36 = 2112;
      v37 = v30;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s SNLC failed to handle the request: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:
  v26 = *(*(*(a1 + 48) + 8) + 40);
  v27 = [*(a1 + 32) requestId];
  [CDMDataDispatcher dispatchSNLCData:v26 withResponse:v20 requestId:v27];

  objc_destroyWeak(&location);
  v28 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_639(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315138;
    v23 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Building SSU request for use in CDMSSUService", &v22, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D13A8]);
  v4 = [*(a1 + 32) requestId];
  [v3 setNluRequestId:v4];

  [v3 setAsrId:*(*(*(a1 + 56) + 8) + 40)];
  [v3 setLocale:*(a1 + 40)];
  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (!v5)
  {
    v20 = "siriVocabularySpanResponse != nil";
    v21 = 595;
    goto LABEL_12;
  }

  v6 = [v5 spanMatchResponse];
  v7 = [v6 matchingSpans];
  [v3 setMatchingSpans:v7];

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v20 = "correctedUtterance != nil";
    v21 = 598;
    goto LABEL_12;
  }

  [v3 setUtterance:?];
  v8 = [*(*(*(a1 + 80) + 8) + 40) firstReformedInput];
  v9 = [v8 currentTurn];
  v10 = [v9 turnContext];
  v11 = [v10 nlContext];
  v12 = [v11 salientEntities];
  [v3 setSalientEntities:v12];

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v20 = "ssuRequestCommand == nil";
    v21 = 602;
    goto LABEL_12;
  }

  v13 = [[CDMSSURequestCommand alloc] initWithParserRequest:v3];
  v14 = *(*(a1 + 88) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v20 = "ssuResponseCommand == nil";
    v21 = 605;
LABEL_12:
    __assert_rtn("[CDMNLUServiceGraph buildGraph]_block_invoke", "CDMNLUServiceGraph.m", v21, v20);
  }

  v16 = [*(a1 + 48) handle:*(*(*(a1 + 88) + 8) + 40)];
  v17 = *(*(a1 + 96) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_2_647(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[CDMNLUServiceGraph buildGraph]_block_invoke_2";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Prepare to run CDMCcqrAerCbRService", buf, 0xCu);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = [*(*(a1[9] + 8) + 40) response];
  v6 = [CDMServiceGraphUtil runCcqrService:v3 nluRequest:v4 tokenResponse:v5 previousTurnTokenizationResponseCommand:*(*(a1[10] + 8) + 40) rdResponse:*(*(a1[11] + 8) + 40) requestLink:a1[6] locale:a1[7]];
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s CDMCcqrAerCbRService node finished", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_648(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a2);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Creating CATIRequestCommand for use in CDMCATIProtoService", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E69D1278]);
  v5 = [*(*(*(a1 + 56) + 8) + 40) response];
  v6 = [v5 tokenChain];
  v7 = [CDMServiceGraphUtil buildNormalizedUtterance:v6];

  [v4 setNormalisedUtterance:v7];
  [v4 setOriginalUtterance:*(*(*(a1 + 64) + 8) + 40)];
  v8 = [*(*(*(a1 + 72) + 8) + 40) embeddingTensorOutputs];
  v9 = [CDMServiceGraphUtil embeddingsOutput:v8 embeddingConfig:*(*(*(a1 + 80) + 8) + 40) forFactor:@"com.apple.siri.nl.cati"];
  [v4 setEmbeddings:v9];

  v10 = [*(*(*(a1 + 88) + 8) + 40) firstReformedInput];
  v11 = [v10 currentTurn];
  [v4 setTurnInput:v11];

  v12 = [[CDMCATIProtoRequestCommand alloc] initWithRequest:v4];
  v13 = [*(a1 + 32) handle:v12];
  v14 = objc_loadWeakRetained(&location);
  if (v14 && (v15 = objc_loadWeakRetained(&location), v16 = [v15 isCancelled], v15, v14, (v16 & 1) == 0))
  {
    v18 = *(*(a1 + 96) + 8);
    v19 = v13;
    v17 = *(v18 + 40);
    *(v18 + 40) = v19;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s CDMCATIProtoService node was cancelled, so not adding response to graph.", buf, 0xCu);
    }
  }

  [CDMServiceGraphUtil addDebugInfo:*(a1 + 40) nluRequest:*(a1 + 48) responseObject:v13];
  objc_destroyWeak(&location);
  v20 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_651(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a2);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v33 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Creating CDMNLv4RequestCommand for use in CDMNLv4ProtoService", buf, 0xCu);
  }

  v29 = [*(*(*(a1 + 56) + 8) + 40) response];
  v4 = [v29 tokenChain];
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v8 = [CDMServiceGraphUtil embeddingsOutput:v7 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.nlv4"];
  v9 = [*(*(*(a1 + 96) + 8) + 40) firstReformedInput];
  v10 = [v9 currentTurn];
  v11 = [*(a1 + 32) requestId];
  v30 = 0;
  v12 = [CDMServiceGraphUtil buildNLv4ProtoRequestWithTokenChain:v4 matchingSpans:v5 utterance:v6 embeddingTensor:v8 currentTurn:v10 requestId:v11 outError:&v30];
  v13 = v30;
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 112));
    [WeakRetained failedWithError:v13];
  }

  v17 = [*(a1 + 40) handle:*(*(*(a1 + 48) + 8) + 40)];
  v18 = objc_loadWeakRetained(&location);
  if (!v18 || (v19 = objc_loadWeakRetained(&location), v20 = [v19 isCancelled], v19, v18, (v20 & 1) != 0))
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v33 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMNLv4ProtoService node was cancelled, so not adding response to graph.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  objc_storeStrong((*(*(a1 + 104) + 8) + 40), v17);
  v22 = [*(*(*(a1 + 104) + 8) + 40) cmdError];
  v23 = v22 == 0;

  if (!v23)
  {
    v21 = objc_loadWeakRetained((a1 + 112));
    v24 = [*(*(*(a1 + 104) + 8) + 40) cmdError];
    v25 = [v24 localizedDescription];
    [v21 failedWithErrorCode:1 errorDomain:@"doNLv4InferenceNode" message:v25];

LABEL_11:
  }

  v26 = *(*(*(a1 + 48) + 8) + 40);
  v27 = [*(a1 + 32) requestId];
  [CDMDataDispatcher dispatchNLv4Data:v26 withResponse:v17 requestId:v27];

  objc_destroyWeak(&location);
  v28 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_655(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [*(*(*(a1 + 64) + 8) + 40) response];
  v5 = [v4 tokenChain];
  v6 = [*(*(*(a1 + 72) + 8) + 40) firstReformedInput];
  v7 = [CDMServiceGraphUtil overrideInputsFromUtterance:v2 matchingSpans:v3 tokenChain:v5 contextUpdateReformedTurnInputBundle:v6];

  v8 = objc_alloc_init(MEMORY[0x1E69D1330]);
  [v8 setInputs:v7];
  v9 = [[CDMOverridesProtoRequestCommand alloc] initWithRequest:v8];
  v10 = [*(a1 + 32) handle:v9];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69D1318]);
    v12 = [v10 parsesForReplacement];
    v13 = [v12 mutableCopy];
    [v11 setHypotheses:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69D1158]);
    v15 = [*(a1 + 40) requestId];
    [v14 setRequestId:v15];

    v16 = [v10 parsesForReplacement];
    v17 = [v16 mutableCopy];
    [v14 setParses:v17];

    v18 = [[CDMNLv4ProtoResponseCommand alloc] initWithParserResponse:v11 nluResponse:v14];
    v19 = *(*(a1 + 80) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

LABEL_3:
    goto LABEL_9;
  }

  if (+[CDMFeatureFlags isAmbiguityRefactorEnabled](CDMFeatureFlags, "isAmbiguityRefactorEnabled") && [*(*(*(a1 + 88) + 8) + 40) isDelegated])
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315138;
      v25 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s SNLC delegated to server so NLv4 response will be empty", &v24, 0xCu);
    }

    v22 = *(*(a1 + 80) + 8);
    v11 = *(v22 + 40);
    *(v22 + 40) = 0;
    goto LABEL_3;
  }

LABEL_9:

  v23 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_662(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMOverridesProtoRequestCommand for use in CDMOverridesProtoService", &v15, 0xCu);
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [*(*(*(a1 + 56) + 8) + 40) response];
  v6 = [v5 tokenChain];
  v7 = [*(*(*(a1 + 64) + 8) + 40) firstReformedInput];
  v8 = [CDMServiceGraphUtil overrideInputsFromUtterance:v3 matchingSpans:v4 tokenChain:v6 contextUpdateReformedTurnInputBundle:v7];

  v9 = objc_alloc_init(MEMORY[0x1E69D1330]);
  [v9 setInputs:v8];
  v10 = [[CDMOverridesProtoRequestCommand alloc] initWithRequest:v9];
  v11 = [*(a1 + 32) handle:v10];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_663(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136315138;
    v21 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMRepetitionDetectionRequestCommand for use in CDMRepetitionDetectionService", &v20, 0xCu);
  }

  v3 = [*(a1 + 32) previousTurnInputs];
  v4 = [v3 lastObject];

  v5 = [*(a1 + 32) currentTurnInput];
  v6 = [CDMRepetitionDetectionRequestCommand alloc];
  v7 = [*(a1 + 40) nlId];
  v8 = [*(a1 + 40) resultCandidateId];
  v9 = [*(a1 + 32) requestId];
  v10 = [CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:v4 curTurn:v5 nluRequestId:v7 resultCandidateId:v8 cdmRequestId:v9];
  v11 = [(CDMRepetitionDetectionRequestCommand *)v6 initWithQRRequest:v10];

  v12 = [*(a1 + 48) handle:v11];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [*(*(*(a1 + 56) + 8) + 40) cmdError];

  if (v15)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) cmdError];
      v18 = [v17 localizedDescription];
      v20 = 136315394;
      v21 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s [WARN]: Repetition Detection prediction failed: %@", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_666(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v32 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMMentionDetectorRequestCommand for use in CDMMentionDetectorService", buf, 0xCu);
  }

  v28 = [CDMMentionDetectorRequestCommand alloc];
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v30 = [*(*(*(a1 + 72) + 8) + 40) response];
  v29 = [v30 tokenChain];
  v4 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v5 = [CDMServiceGraphUtil embeddingsOutput:v4 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.marrs.md"];
  v6 = [*(a1 + 32) nlId];
  v7 = [*(a1 + 32) resultCandidateId];
  v8 = [*(a1 + 40) requestId];
  v9 = [CDMMentionDetectorServiceUtils buildMDRequestWithUtterance:v3 tokenChain:v29 embedding:v5 nluRequestId:v6 resultCandidateId:v7 cdmRequestId:v8];
  v10 = [*(*(*(a1 + 96) + 8) + 40) firstReformedInput];
  v11 = [v10 currentTurn];
  v12 = [(CDMMentionDetectorRequestCommand *)v28 initWithMDRequest:v9 withCurrTurn:v11];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [*(a1 + 48) handle:*(*(*(a1 + 56) + 8) + 40)];
  v16 = *(*(a1 + 104) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v27 = [*(*(*(a1 + 104) + 8) + 40) response];
    *buf = 136315394;
    v32 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v33 = 2112;
    v34 = v27;
    _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s #MD response: %@", buf, 0x16u);
  }

  v19 = [*(*(*(a1 + 104) + 8) + 40) cmdError];

  if (v19)
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [*(*(*(a1 + 104) + 8) + 40) cmdError];
      v22 = [v21 localizedDescription];
      *buf = 136315394;
      v32 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: Mention Detection prediction failed: %@", buf, 0x16u);
    }
  }

  v23 = *(*(*(a1 + 56) + 8) + 40);
  v24 = *(*(*(a1 + 104) + 8) + 40);
  v25 = [*(a1 + 40) requestId];
  [CDMDataDispatcher dispatchMDData:v23 withResponse:v24 requestId:v25];

  v26 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_669(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315138;
    v26 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMContextualSpanMatcherRequestCommand for use in CDMContextualSpanMatcherService", &v25, 0xCu);
  }

  v3 = [CDMContextualSpanMatcherRequestCommand alloc];
  v4 = [*(*(*(a1 + 56) + 8) + 40) firstReformedInput];
  v5 = [v4 currentTurn];
  v6 = [v5 turnContext];
  v7 = [v6 nlContext];
  v8 = [*(a1 + 32) requestId];
  v9 = [*(*(*(a1 + 64) + 8) + 40) response];
  v10 = [v9 tokenChain];
  v11 = [CDMContextualSpanMatcherServiceUtils buildContextualSpanMatcherRequestWithNLContext:v7 requestId:v8 tokenChain:v10];
  v12 = [(CDMContextualSpanMatcherRequestCommand *)v3 initWithContextualSpanMatcherRequest:v11];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [*(a1 + 40) handle:*(*(*(a1 + 48) + 8) + 40)];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v24 = [*(*(*(a1 + 72) + 8) + 40) contextualSpanMatcherResponse];
    v25 = 136315394;
    v26 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v27 = 2112;
    v28 = v24;
    _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s #ContextualSpanMatcher response: %@", &v25, 0x16u);
  }

  v19 = [*(*(*(a1 + 72) + 8) + 40) cmdError];

  if (v19)
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [*(*(*(a1 + 72) + 8) + 40) cmdError];
      v22 = [v21 localizedDescription];
      v25 = 136315394;
      v26 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: ContextualSpanMatcher prediction failed: %@", &v25, 0x16u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_672(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v39 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMMentionResolverRequestCommand for use in CDMMentionResolverService", buf, 0xCu);
  }

  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 136315394;
    v39 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v40 = 2112;
    v41 = v30;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s CDMMentionDetectorResponseCommand: %@", buf, 0x16u);
  }

  v4 = [*(*(*(a1 + 64) + 8) + 40) firstReformedInput];
  v33 = [v4 currentTurn];

  v32 = [CDMMentionResolverRequestCommand alloc];
  v37 = [*(*(*(a1 + 80) + 8) + 40) response];
  v36 = [v37 tokenChain];
  v35 = [*(*(*(a1 + 56) + 8) + 40) response];
  v34 = [*(*(*(a1 + 88) + 8) + 40) contextualSpanMatcherResponse];
  v5 = [*(*(*(a1 + 96) + 8) + 40) embeddingTensorOutputs];
  v6 = [CDMServiceGraphUtil embeddingsOutput:v5 embeddingConfig:*(*(*(a1 + 104) + 8) + 40) forFactor:@"com.apple.siri.nl.marrs.mr"];
  v7 = *(*(*(a1 + 112) + 8) + 40);
  v8 = [*(*(*(a1 + 64) + 8) + 40) firstReformedInput];
  v9 = [v8 previousTurns];
  v10 = [v9 count];
  v11 = [*(a1 + 32) nlId];
  v12 = [*(a1 + 32) resultCandidateId];
  v13 = [*(a1 + 40) requestId];
  v14 = [CDMMentionResolverServiceUtils buildMRRequestWithCurTurn:v33 tokenChain:v36 mdResponse:v35 contextualSpanMatcherResponse:v34 embedding:v6 utterance:v7 turnIndex:v10 nluRequestId:v11 resultCandidateId:v12 cdmRequestId:v13];
  v15 = [(CDMMentionResolverRequestCommand *)v32 initWithMRRequest:v14];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [*(a1 + 48) handle:*(*(*(a1 + 72) + 8) + 40)];
  v19 = *(*(a1 + 120) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v31 = [*(*(*(a1 + 120) + 8) + 40) response];
    *buf = 136315394;
    v39 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v40 = 2112;
    v41 = v31;
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s #MR response: %@", buf, 0x16u);
  }

  v22 = [*(*(*(a1 + 120) + 8) + 40) cmdError];

  if (v22)
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [*(*(*(a1 + 120) + 8) + 40) cmdError];
      v25 = [v24 localizedDescription];
      *buf = 136315394;
      v39 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [WARN]: Mention Resolver prediction failed: %@", buf, 0x16u);
    }
  }

  v26 = *(*(*(a1 + 72) + 8) + 40);
  v27 = *(*(*(a1 + 120) + 8) + 40);
  v28 = [*(a1 + 40) requestId];
  [CDMDataDispatcher dispatchMRData:v26 withResponse:v27 requestId:v28];

  v29 = *MEMORY[0x1E69E9840];
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_675(uint64_t a1)
{
  v2 = [CDMServiceGraphUtil mergeDateTimeSpans:*(*(*(a1 + 48) + 8) + 40) regexSpans:*(*(*(a1 + 56) + 8) + 40) siriVocabularySpans:*(*(*(a1 + 64) + 8) + 40) vocSpans:*(*(*(a1 + 72) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [*(a1 + 32) requestId];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = [WeakRetained cdmDataDispatcherContext];
  [CDMDataDispatcher dispatchSpanizationData:v5 requestId:v6 dataDispatcherContext:v8];

  v14 = [*(*(*(a1 + 40) + 8) + 40) matchingSpansForNL];
  v9 = [*(*(*(a1 + 88) + 8) + 40) response];
  v10 = [v9 mentions];
  v11 = [CDMServiceGraphUtil appendMarrsSpans:v14 marrsMRSpans:v10];
  v12 = *(*(a1 + 80) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __32__CDMNLUServiceGraph_buildGraph__block_invoke_2_677(uint64_t a1)
{
  v9 = [*(*(*(a1 + 56) + 8) + 40) correctionOutcome];
  v2 = [*(a1 + 32) currentTurnInput];
  v3 = [v2 correctionOutcomeOverride];
  v4 = [v3 type];

  if (v4 == 1)
  {
    v5 = [*(a1 + 32) currentTurnInput];
    v6 = [v5 correctionOutcomeOverride];

    v9 = v6;
  }

  v7 = [CDMPostProcessUtils runPostProcess:*(*(*(a1 + 64) + 8) + 40) snlcRequest:*(*(*(a1 + 72) + 8) + 40) snlcResponse:*(*(*(a1 + 80) + 8) + 40) nLv4Request:*(*(*(a1 + 88) + 8) + 40) nLv4Response:*(*(*(a1 + 96) + 8) + 40) uaapNLProtoResponse:*(*(*(a1 + 104) + 8) + 40) catiProtoResponse:*(*(*(a1 + 112) + 8) + 40) pscRequest:*(*(*(a1 + 120) + 8) + 40) pscResponse:*(*(*(a1 + 128) + 8) + 40) lvcResponse:*(*(*(a1 + 136) + 8) + 40) overridesProtoResponse:*(*(*(a1 + 144) + 8) + 40) mdRequest:*(*(*(a1 + 152) + 8) + 40) mdResponse:*(*(*(a1 + 160) + 8) + 40) mrRequest:*(*(*(a1 + 168) + 8) + 40) mrResponse:*(*(*(a1 + 176) + 8) + 40) spanProtoResponse:*(*(*(a1 + 184) + 8) + 40) rdResponse:*(*(*(a1 + 192) + 8) + 40) tokenProtoResponse:*(*(*(a1 + 200) + 8) + 40) ssuResponse:*(*(*(a1 + 208) + 8) + 40) ccqrResponse:*(*(*(a1 + 216) + 8) + 40) correctionOutcome:v9 nluRequest:*(a1 + 32) graphInput:*(a1 + 48) debugText:?];
  WeakRetained = objc_loadWeakRetained((a1 + 224));
  [WeakRetained setGraphOutput:v7];
}

BOOL __32__CDMNLUServiceGraph_buildGraph__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(*(*(a1 + 32) + 8) + 40) parsesForReplacement];
  v2 = [v1 count];

  v3 = CDMOSLoggerForCategory(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v8 = 136315138;
      v9 = "[CDMNLUServiceGraph buildGraph]_block_invoke_3";
      v5 = "%s Skip node logic #1: Non-empty overridesProtoResponse.parsesForReplacement, will initiate skip of inference nodes";
LABEL_7:
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, v5, &v8, 0xCu);
    }
  }

  else if (v4)
  {
    v8 = 136315138;
    v9 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v5 = "%s Skip node logic #1: Empty overridesProtoResponse.parsesForReplacement, will NOT skip inference nodes";
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2 != 0;
}

BOOL __32__CDMNLUServiceGraph_buildGraph__block_invoke_680(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(*(*(a1 + 32) + 8) + 40) classLabel];
  v2 = CDMOSLoggerForCategory(0);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (v1)
  {
    if (v3)
    {
      v7 = 136315138;
      v8 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
      v4 = "%s Skip node logic #2: SNLC did NOT classify SNLC_CLASS_SERVER, will NOT skip doNLv4Inference node";
LABEL_7:
      _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, v4, &v7, 0xCu);
    }
  }

  else if (v3)
  {
    v7 = 136315138;
    v8 = "[CDMNLUServiceGraph buildGraph]_block_invoke";
    v4 = "%s Skip node logic #2: SNLC classified SNLC_CLASS_SERVER, will initiate skip of doNLv4Inference node";
    goto LABEL_7;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v1 == 0;
}

@end