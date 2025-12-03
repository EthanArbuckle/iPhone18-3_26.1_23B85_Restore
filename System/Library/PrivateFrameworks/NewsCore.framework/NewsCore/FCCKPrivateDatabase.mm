@interface FCCKPrivateDatabase
+ (id)privateDatabaseSchema;
+ (id)recordSchemas;
+ (id)testingDatabase;
- (char)_queueForOperation:(char *)operation;
- (id)_clientRecordID:(id)d;
- (id)_clientToServerRecord:(uint64_t)record;
- (id)_clientToServerRecordZoneID:(id)d;
- (id)_mapObjects:(char)objects toClient:(void *)client withBlock:;
- (id)_mapRecordIDs:(char)ds toClient:;
- (id)_mapRecordZoneIDs:(char)ds toClient:;
- (id)_mapRecordZoneIDs:(char)ds toClient:(char)client expectUnknownZones:;
- (id)_mapRecords:(char)records toClient:;
- (id)_mapZones:(char)zones toClient:;
- (id)_serverToClientError:(uint64_t)error;
- (id)_serverToClientRecord:(uint64_t)record;
- (id)_serverToClientRecordZoneID:(id)d;
- (id)_serverToClientRecordZoneID:(id)d expectUnknownZones:(void *)zones;
- (id)databaseWithZoneWidePCS;
- (id)initWithCKProperties:(void *)properties schema:(void *)schema middleware:(void *)middleware encryptionDelegate:(void *)delegate networkBehaviorMonitor:;
- (id)initWithContainerIdentifier:(void *)identifier secureContainerIdentifier:(char)containerIdentifier productionEnvironment:(void *)environment encryptionDelegate:(void *)delegate networkBehaviorMonitor:(char)monitor privateDataSyncingEnabled:;
- (id)pruningAssistantForZoneName:(id *)name;
- (id)secureDatabase;
- (id)t_initWithContainers:(void *)containers database:(void *)database databaseWithZoneWidePCS:(void *)s secureDatabase:(void *)secureDatabase schema:(void *)schema middleware:(void *)middleware encryptionDelegate:(void *)delegate networkBehaviorMonitor:;
- (void)_addCKOperation:(uint64_t)operation destination:;
- (void)_beginInitialStartUpIfNeeded;
- (void)_continueStartUp;
- (void)_finishStartUpWithError:(uint64_t)error;
- (void)_possiblyRetryStartUp;
- (void)_possiblySimulateCrashForError:(void *)error message:(void *)message;
- (void)_preflightOperation:(void *)operation;
- (void)_preflightRecordsInDatabaseChangesOperation:(uint64_t)operation;
- (void)addCKOperation:(uint64_t)operation destination:;
- (void)addOperation:(uint64_t)operation;
- (void)enumerateActiveDestinationsWithOptions:(void *)options handler:;
- (void)enumeratePayloadsWithRecordIDs:(void *)ds records:(void *)records zoneIDs:(void *)iDs zones:(uint64_t)zones options:(void *)options payloadHandler:;
- (void)fetchAllDatabaseChangesWithServerChangeToken:(id)token qualityOfService:(int64_t)service completionQueue:(id)queue completionHandler:(id)handler;
- (void)fetchSecureDatabaseSupportedWithCompletionHandler:(uint64_t)handler;
- (void)registerZonePruningAssistants:(uint64_t)assistants;
- (void)registerZoneRestorationSources:(uint64_t)sources;
- (void)reportEncryptionMigrationError:(uint64_t)error;
- (void)reportPostMigrationCleanupError:(uint64_t)error;
- (void)reportRecoverableStartUpError:(uint64_t)error;
- (void)t_performStartUpWithCompletion:(uint64_t)completion;
- (void)takeDatabaseOfflineDueToError:(uint64_t)error;
- (void)zoneIDsUsingSecureContainer;
@end

@implementation FCCKPrivateDatabase

+ (id)recordSchemas
{
  v569[38] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v503 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v568[0] = v503;
  v502 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v568[1] = v502;
  v501 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v568[2] = v501;
  v500 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v568[3] = v500;
  v499 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v568[4] = v499;
  v498 = [MEMORY[0x1E695DEC8] arrayWithObjects:v568 count:5];
  v497 = [FCCKRecordSchema recordWithType:v498 fields:?];
  v569[0] = v497;
  v496 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v567[0] = v496;
  v495 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v567[1] = v495;
  v494 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v567[2] = v494;
  v493 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v567[3] = v493;
  v492 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v567[4] = v492;
  v491 = [MEMORY[0x1E695DEC8] arrayWithObjects:v567 count:5];
  v490 = [FCCKRecordSchema recordWithType:v491 fields:?];
  v569[1] = v490;
  v489 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v566[0] = v489;
  v488 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v566[1] = v488;
  v487 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v566[2] = v487;
  v486 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v566[3] = v486;
  v485 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v566[4] = v485;
  v484 = [MEMORY[0x1E695DEC8] arrayWithObjects:v566 count:5];
  v483 = [FCCKRecordSchema recordWithType:v484 fields:?];
  v569[2] = v483;
  v482 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v565[0] = v482;
  v481 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v565[1] = v481;
  v480 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v565[2] = v480;
  v479 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v565[3] = v479;
  v478 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v565[4] = v478;
  v477 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v565[5] = v477;
  v476 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v565[6] = v476;
  v475 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v565[7] = v475;
  v474 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v565[8] = v474;
  v473 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v565[9] = v473;
  v472 = [MEMORY[0x1E695DEC8] arrayWithObjects:v565 count:10];
  v471 = [FCCKRecordSchema recordWithType:v472 fields:?];
  v569[3] = v471;
  v470 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v564[0] = v470;
  v469 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v564[1] = v469;
  v468 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v564[2] = v468;
  v467 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v564[3] = v467;
  v466 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v564[4] = v466;
  v465 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v564[5] = v465;
  v464 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v564[6] = v464;
  v463 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v564[7] = v463;
  v462 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v564[8] = v462;
  v461 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v564[9] = v461;
  v460 = [MEMORY[0x1E695DEC8] arrayWithObjects:v564 count:10];
  v459 = [FCCKRecordSchema recordWithType:v460 fields:?];
  v569[4] = v459;
  v458 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v563[0] = v458;
  v457 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v563[1] = v457;
  v456 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v563[2] = v456;
  v455 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v563[3] = v455;
  v454 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v563[4] = v454;
  v453 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v563[5] = v453;
  v452 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v563[6] = v452;
  v451 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v563[7] = v451;
  v450 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v563[8] = v450;
  v449 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v563[9] = v449;
  v448 = [MEMORY[0x1E695DEC8] arrayWithObjects:v563 count:10];
  v447 = [FCCKRecordSchema recordWithType:v448 fields:?];
  v569[5] = v447;
  v446 = [FCCKRecordFieldSchema fieldWithName:0 type:0 isEncrypted:?];
  v562[0] = v446;
  v445 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v562[1] = v445;
  v444 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v562[2] = v444;
  v443 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v562[3] = v443;
  v442 = [MEMORY[0x1E695DEC8] arrayWithObjects:v562 count:4];
  v441 = [FCCKRecordSchema recordWithType:v442 fields:?];
  v569[6] = v441;
  v440 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v561[0] = v440;
  v439 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v561[1] = v439;
  v438 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v561[2] = v438;
  v437 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v561[3] = v437;
  v436 = [MEMORY[0x1E695DEC8] arrayWithObjects:v561 count:4];
  v435 = [FCCKRecordSchema recordWithType:v436 fields:?];
  v569[7] = v435;
  v434 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[0] = v434;
  v433 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[1] = v433;
  v432 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v560[2] = v432;
  v431 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v560[3] = v431;
  v430 = [FCCKRecordFieldSchema fieldWithName:0 type:0 isEncrypted:?];
  v560[4] = v430;
  v429 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[5] = v429;
  v428 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[6] = v428;
  v427 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v560[7] = v427;
  v426 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[8] = v426;
  v425 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[9] = v425;
  v424 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v560[10] = v424;
  v423 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v560[11] = v423;
  v422 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v560[12] = v422;
  v421 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[13] = v421;
  v420 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[14] = v420;
  v419 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[15] = v419;
  v418 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v560[16] = v418;
  v417 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[17] = v417;
  v416 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v560[18] = v416;
  v415 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v560[19] = v415;
  v414 = [MEMORY[0x1E695DEC8] arrayWithObjects:v560 count:20];
  v413 = [FCCKRecordSchema recordWithType:v414 fields:?];
  v569[8] = v413;
  v412 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v559[0] = v412;
  v411 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v559[1] = v411;
  v410 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v559[2] = v410;
  v409 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v559[3] = v409;
  v408 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v559[4] = v408;
  v407 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v559[5] = v407;
  v406 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[6] = v406;
  v405 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v559[7] = v405;
  v404 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[8] = v404;
  v403 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[9] = v403;
  v402 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v559[10] = v402;
  v401 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v559[11] = v401;
  v400 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v559[12] = v400;
  v399 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[13] = v399;
  v398 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[14] = v398;
  v397 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[15] = v397;
  v396 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v559[16] = v396;
  v395 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[17] = v395;
  v394 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v559[18] = v394;
  v393 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v559[19] = v393;
  v392 = [MEMORY[0x1E695DEC8] arrayWithObjects:v559 count:20];
  v391 = [FCCKRecordSchema recordWithType:v392 fields:?];
  v569[9] = v391;
  v390 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[0] = v390;
  v389 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[1] = v389;
  v388 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v558[2] = v388;
  v387 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v558[3] = v387;
  v386 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v558[4] = v386;
  v385 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[5] = v385;
  v384 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[6] = v384;
  v383 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v558[7] = v383;
  v382 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[8] = v382;
  v381 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[9] = v381;
  v380 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v558[10] = v380;
  v379 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v558[11] = v379;
  v378 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v558[12] = v378;
  v377 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[13] = v377;
  v376 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[14] = v376;
  v375 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[15] = v375;
  v374 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v558[16] = v374;
  v373 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[17] = v373;
  v372 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v558[18] = v372;
  v371 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v558[19] = v371;
  v370 = [MEMORY[0x1E695DEC8] arrayWithObjects:v558 count:20];
  v369 = [FCCKRecordSchema recordWithType:v370 fields:?];
  v569[10] = v369;
  v368 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v557[0] = v368;
  v367 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v557[1] = v367;
  v366 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v557[2] = v366;
  v365 = [FCCKRecordFieldSchema fieldWithName:0 type:0 isEncrypted:?];
  v557[3] = v365;
  v364 = [FCCKRecordFieldSchema fieldWithName:5 type:0 isEncrypted:?];
  v557[4] = v364;
  v363 = [MEMORY[0x1E695DEC8] arrayWithObjects:v557 count:5];
  v362 = [FCCKRecordSchema recordWithType:v363 fields:?];
  v569[11] = v362;
  v361 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v556[0] = v361;
  v360 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v556[1] = v360;
  v359 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v556[2] = v359;
  v358 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v556[3] = v358;
  v357 = [FCCKRecordFieldSchema fieldWithName:5 type:1 isEncrypted:?];
  v556[4] = v357;
  v356 = [MEMORY[0x1E695DEC8] arrayWithObjects:v556 count:5];
  v355 = [FCCKRecordSchema recordWithType:v356 fields:?];
  v569[12] = v355;
  v354 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v555[0] = v354;
  v353 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v555[1] = v353;
  v352 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v555[2] = v352;
  v351 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v555[3] = v351;
  v350 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[4] = v350;
  v349 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[5] = v349;
  v348 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[6] = v348;
  v347 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[7] = v347;
  v346 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[8] = v346;
  v345 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[9] = v345;
  v344 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[10] = v344;
  v343 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[11] = v343;
  v342 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[12] = v342;
  v341 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[13] = v341;
  v340 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[14] = v340;
  v339 = [FCCKRecordFieldSchema fieldWithName:4 type:0 isEncrypted:?];
  v555[15] = v339;
  v338 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v555[16] = v338;
  v337 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v555[17] = v337;
  v336 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v555[18] = v336;
  v335 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v555[19] = v335;
  v334 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[20] = v334;
  v333 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[21] = v333;
  v332 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v555[22] = v332;
  v331 = [MEMORY[0x1E695DEC8] arrayWithObjects:v555 count:23];
  v330 = [FCCKRecordSchema recordWithType:v331 fields:?];
  v569[13] = v330;
  v329 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v554[0] = v329;
  v328 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v554[1] = v328;
  v327 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v554[2] = v327;
  v326 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v554[3] = v326;
  v325 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[4] = v325;
  v324 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[5] = v324;
  v323 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[6] = v323;
  v322 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[7] = v322;
  v321 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[8] = v321;
  v320 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[9] = v320;
  v319 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[10] = v319;
  v318 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[11] = v318;
  v317 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[12] = v317;
  v316 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[13] = v316;
  v315 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[14] = v315;
  v314 = [FCCKRecordFieldSchema fieldWithName:4 type:1 isEncrypted:?];
  v554[15] = v314;
  v313 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v554[16] = v313;
  v312 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v554[17] = v312;
  v311 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v554[18] = v311;
  v310 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v554[19] = v310;
  v309 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[20] = v309;
  v308 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[21] = v308;
  v307 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v554[22] = v307;
  v306 = [MEMORY[0x1E695DEC8] arrayWithObjects:v554 count:23];
  v305 = [FCCKRecordSchema recordWithType:v306 fields:?];
  v569[14] = v305;
  v304 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v553[0] = v304;
  v303 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v553[1] = v303;
  v302 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v553[2] = v302;
  v301 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v553[3] = v301;
  v300 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[4] = v300;
  v299 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[5] = v299;
  v298 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[6] = v298;
  v297 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[7] = v297;
  v296 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[8] = v296;
  v295 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[9] = v295;
  v294 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[10] = v294;
  v293 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[11] = v293;
  v292 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[12] = v292;
  v291 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[13] = v291;
  v290 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[14] = v290;
  v289 = [FCCKRecordFieldSchema fieldWithName:4 type:1 isEncrypted:?];
  v553[15] = v289;
  v288 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v553[16] = v288;
  v287 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v553[17] = v287;
  v286 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v553[18] = v286;
  v285 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v553[19] = v285;
  v284 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[20] = v284;
  v283 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[21] = v283;
  v282 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v553[22] = v282;
  v281 = [MEMORY[0x1E695DEC8] arrayWithObjects:v553 count:23];
  v280 = [FCCKRecordSchema recordWithType:v281 fields:?];
  v569[15] = v280;
  v279 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v552[0] = v279;
  v278 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v552[1] = v278;
  v277 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v552[2] = v277;
  v276 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v552[3] = v276;
  v275 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v552[4] = v275;
  v274 = [MEMORY[0x1E695DEC8] arrayWithObjects:v552 count:5];
  v273 = [FCCKRecordSchema recordWithType:v274 fields:?];
  v569[16] = v273;
  v272 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v551[0] = v272;
  v271 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v551[1] = v271;
  v270 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v551[2] = v270;
  v269 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v551[3] = v269;
  v268 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v551[4] = v268;
  v267 = [MEMORY[0x1E695DEC8] arrayWithObjects:v551 count:5];
  v266 = [FCCKRecordSchema recordWithType:v267 fields:?];
  v569[17] = v266;
  v265 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v550[0] = v265;
  v264 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v550[1] = v264;
  v263 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v550[2] = v263;
  v262 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v550[3] = v262;
  v261 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v550[4] = v261;
  v260 = [MEMORY[0x1E695DEC8] arrayWithObjects:v550 count:5];
  v259 = [FCCKRecordSchema recordWithType:v260 fields:?];
  v569[18] = v259;
  v258 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v549 = v258;
  v257 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v549 count:1];
  v256 = [FCCKRecordSchema recordWithType:v257 fields:?];
  v569[19] = v256;
  v255 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v548[0] = v255;
  v254 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v548[1] = v254;
  v253 = [MEMORY[0x1E695DEC8] arrayWithObjects:v548 count:2];
  v252 = [FCCKRecordSchema recordWithType:v253 fields:?];
  v569[20] = v252;
  v251 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v547[0] = v251;
  v250 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v547[1] = v250;
  v249 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v547[2] = v249;
  v248 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v547[3] = v248;
  v247 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v547[4] = v247;
  v246 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v547[5] = v246;
  v245 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v547[6] = v245;
  v244 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v547[7] = v244;
  v243 = [MEMORY[0x1E695DEC8] arrayWithObjects:v547 count:8];
  v242 = [FCCKRecordSchema recordWithType:v243 fields:?];
  v569[21] = v242;
  v241 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v546[0] = v241;
  v240 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v546[1] = v240;
  v239 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v546[2] = v239;
  v238 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v546[3] = v238;
  v237 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v546[4] = v237;
  v236 = [MEMORY[0x1E695DEC8] arrayWithObjects:v546 count:5];
  v235 = [FCCKRecordSchema recordWithType:v236 fields:?];
  v569[22] = v235;
  v234 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v545[0] = v234;
  v233 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v545[1] = v233;
  v232 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v545[2] = v232;
  v231 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v545[3] = v231;
  v230 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v545[4] = v230;
  v229 = [MEMORY[0x1E695DEC8] arrayWithObjects:v545 count:5];
  v228 = [FCCKRecordSchema recordWithType:v229 fields:?];
  v569[23] = v228;
  v227 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v544[0] = v227;
  v226 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v544[1] = v226;
  v225 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v544[2] = v225;
  v224 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v544[3] = v224;
  v223 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v544[4] = v223;
  v222 = [MEMORY[0x1E695DEC8] arrayWithObjects:v544 count:5];
  v221 = [FCCKRecordSchema recordWithType:v222 fields:?];
  v569[24] = v221;
  v220 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v543[0] = v220;
  v219 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v543[1] = v219;
  v218 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v543[2] = v218;
  v217 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v543[3] = v217;
  v216 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v543[4] = v216;
  v215 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v543[5] = v215;
  v214 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v543[6] = v214;
  v213 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v543[7] = v213;
  v212 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v543[8] = v212;
  v211 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v543[9] = v211;
  v210 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v543[10] = v210;
  v209 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v543[11] = v209;
  v208 = [MEMORY[0x1E695DEC8] arrayWithObjects:v543 count:12];
  v207 = [FCCKRecordSchema recordWithType:v208 fields:?];
  v569[25] = v207;
  v206 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v542[0] = v206;
  v205 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v542[1] = v205;
  v204 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v542[2] = v204;
  v203 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v542[3] = v203;
  v202 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v542[4] = v202;
  v201 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v542[5] = v201;
  v200 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v542[6] = v200;
  v199 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v542[7] = v199;
  v198 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v542[8] = v198;
  v197 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v542[9] = v197;
  v196 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v542[10] = v196;
  v195 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v542[11] = v195;
  v194 = [MEMORY[0x1E695DEC8] arrayWithObjects:v542 count:12];
  v193 = [FCCKRecordSchema recordWithType:v194 fields:?];
  v569[26] = v193;
  v192 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v541[0] = v192;
  v191 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v541[1] = v191;
  v190 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v541[2] = v190;
  v189 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v541[3] = v189;
  v188 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v541[4] = v188;
  v187 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v541[5] = v187;
  v186 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v541[6] = v186;
  v185 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v541[7] = v185;
  v184 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v541[8] = v184;
  v183 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v541[9] = v183;
  v182 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v541[10] = v182;
  v181 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v541[11] = v181;
  v180 = [MEMORY[0x1E695DEC8] arrayWithObjects:v541 count:12];
  v179 = [FCCKRecordSchema recordWithType:v180 fields:?];
  v569[27] = v179;
  v178 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v540[0] = v178;
  v177 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v540[1] = v177;
  v176 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v540[2] = v176;
  v175 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v540[3] = v175;
  v174 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v540[4] = v174;
  v173 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v540[5] = v173;
  v172 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v540[6] = v172;
  v171 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v540[7] = v171;
  v170 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v540[8] = v170;
  v169 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v540[9] = v169;
  v168 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v540[10] = v168;
  v167 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v540[11] = v167;
  v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:v540 count:12];
  v165 = [FCCKRecordSchema recordWithType:v166 fields:?];
  v569[28] = v165;
  v164 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v539[0] = v164;
  v163 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v539[1] = v163;
  v162 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v539[2] = v162;
  v161 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v539[3] = v161;
  v160 = [FCCKRecordFieldSchema fieldWithName:4 type:0 isEncrypted:?];
  v539[4] = v160;
  v159 = [FCCKRecordFieldSchema fieldWithName:4 type:0 isEncrypted:?];
  v539[5] = v159;
  v158 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v539[6] = v158;
  v157 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v539[7] = v157;
  v156 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v539[8] = v156;
  v155 = [MEMORY[0x1E695DEC8] arrayWithObjects:v539 count:9];
  v154 = [FCCKRecordSchema recordWithType:v155 fields:?];
  v569[29] = v154;
  v153 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v538[0] = v153;
  v152 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v538[1] = v152;
  v151 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v538[2] = v151;
  v150 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v538[3] = v150;
  v149 = [FCCKRecordFieldSchema fieldWithName:4 type:0 isEncrypted:?];
  v538[4] = v149;
  v148 = [FCCKRecordFieldSchema fieldWithName:4 type:0 isEncrypted:?];
  v538[5] = v148;
  v147 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v538[6] = v147;
  v146 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v538[7] = v146;
  v145 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v538[8] = v145;
  v144 = [MEMORY[0x1E695DEC8] arrayWithObjects:v538 count:9];
  v143 = [FCCKRecordSchema recordWithType:v144 fields:?];
  v569[30] = v143;
  v142 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v537[0] = v142;
  v141 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v537[1] = v141;
  v140 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v537[2] = v140;
  v139 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v537[3] = v139;
  v138 = [FCCKRecordFieldSchema fieldWithName:4 type:1 isEncrypted:?];
  v537[4] = v138;
  v137 = [FCCKRecordFieldSchema fieldWithName:4 type:1 isEncrypted:?];
  v537[5] = v137;
  v136 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v537[6] = v136;
  v135 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v537[7] = v135;
  v134 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v537[8] = v134;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v537 count:9];
  v132 = [FCCKRecordSchema recordWithType:v133 fields:?];
  v569[31] = v132;
  v131 = [FCCKRecordFieldSchema fieldWithName:0 type:0 isEncrypted:?];
  v536[0] = v131;
  v130 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v536[1] = v130;
  v129 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v536[2] = v129;
  v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v536 count:3];
  v127 = [FCCKRecordSchema recordWithType:v128 fields:?];
  v569[32] = v127;
  v126 = [FCCKRecordFieldSchema fieldWithName:0 type:1 isEncrypted:?];
  v535[0] = v126;
  v125 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v535[1] = v125;
  v124 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v535[2] = v124;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v535 count:3];
  v122 = [FCCKRecordSchema recordWithType:v123 fields:?];
  v569[33] = v122;
  v121 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[0] = v121;
  v120 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[1] = v120;
  v119 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[2] = v119;
  v118 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[3] = v118;
  v117 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[4] = v117;
  v116 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[5] = v116;
  v115 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[6] = v115;
  v114 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[7] = v114;
  v113 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[8] = v113;
  v112 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[9] = v112;
  v111 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[10] = v111;
  v110 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[11] = v110;
  v109 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[12] = v109;
  v108 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[13] = v108;
  v107 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[14] = v107;
  v106 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[15] = v106;
  v105 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[16] = v105;
  v104 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[17] = v104;
  v103 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[18] = v103;
  v102 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[19] = v102;
  v101 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[20] = v101;
  v100 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[21] = v100;
  v99 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[22] = v99;
  v98 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[23] = v98;
  v97 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[24] = v97;
  v96 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[25] = v96;
  v95 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[26] = v95;
  v94 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[27] = v94;
  v93 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[28] = v93;
  v92 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[29] = v92;
  v91 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[30] = v91;
  v90 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[31] = v90;
  v89 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[32] = v89;
  v88 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[33] = v88;
  v87 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[34] = v87;
  v86 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[35] = v86;
  v85 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[36] = v85;
  v84 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[37] = v84;
  v83 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[38] = v83;
  v82 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[39] = v82;
  v81 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v534[40] = v81;
  v80 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[41] = v80;
  v79 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[42] = v79;
  v78 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v534[43] = v78;
  v77 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v534[44] = v77;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v534 count:45];
  v75 = [FCCKRecordSchema recordWithType:v76 fields:?];
  v569[34] = v75;
  v74 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[0] = v74;
  v73 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[1] = v73;
  v72 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[2] = v72;
  v71 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[3] = v71;
  v70 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v533[4] = v70;
  v69 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[5] = v69;
  v68 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[6] = v68;
  v67 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[7] = v67;
  v66 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v533[8] = v66;
  v65 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[9] = v65;
  v64 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v533[10] = v64;
  v63 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[11] = v63;
  v62 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v533[12] = v62;
  v61 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[13] = v61;
  v60 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[14] = v60;
  v59 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[15] = v59;
  v58 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[16] = v58;
  v57 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[17] = v57;
  v56 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[18] = v56;
  v55 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[19] = v55;
  v54 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v533[20] = v54;
  v53 = [FCCKRecordFieldSchema fieldWithName:1 type:0 isEncrypted:?];
  v533[21] = v53;
  v52 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[22] = v52;
  v51 = [FCCKRecordFieldSchema fieldWithName:2 type:0 isEncrypted:?];
  v533[23] = v51;
  v50 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[24] = v50;
  v49 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[25] = v49;
  v48 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[26] = v48;
  v47 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[27] = v47;
  v46 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[28] = v46;
  v45 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v533[29] = v45;
  v44 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[30] = v44;
  v43 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[31] = v43;
  v42 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[32] = v42;
  v41 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[33] = v41;
  v40 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[34] = v40;
  v39 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[35] = v39;
  v38 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v533[36] = v38;
  v37 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[37] = v37;
  v36 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[38] = v36;
  v35 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[39] = v35;
  v34 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v533[40] = v34;
  v33 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v533[41] = v33;
  v32 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[42] = v32;
  v31 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v533[43] = v31;
  v30 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v533[44] = v30;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v533 count:45];
  v28 = [FCCKRecordSchema recordWithType:v29 fields:?];
  v569[35] = v28;
  v27 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[0] = v27;
  v26 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[1] = v26;
  v25 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[2] = v25;
  v24 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[3] = v24;
  v23 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[4] = v23;
  v22 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[5] = v22;
  v21 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[6] = v21;
  v20 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[7] = v20;
  v19 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[8] = v19;
  v18 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[9] = v18;
  v17 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[10] = v17;
  v16 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[11] = v16;
  v15 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[12] = v15;
  v14 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[13] = v14;
  v13 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[14] = v13;
  v530 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[15] = v530;
  v529 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[16] = v529;
  v528 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[17] = v528;
  v527 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[18] = v527;
  v526 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[19] = v526;
  v525 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[20] = v525;
  v524 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[21] = v524;
  v523 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[22] = v523;
  v522 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[23] = v522;
  v12 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[24] = v12;
  v11 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[25] = v11;
  v521 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[26] = v521;
  v520 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[27] = v520;
  v519 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[28] = v519;
  v518 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[29] = v518;
  v517 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[30] = v517;
  v516 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[31] = v516;
  v515 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[32] = v515;
  v514 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[33] = v514;
  v512 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[34] = v512;
  v511 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[35] = v511;
  v510 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[36] = v510;
  v509 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[37] = v509;
  v504 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[38] = v504;
  v513 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[39] = v513;
  v508 = [FCCKRecordFieldSchema fieldWithName:2 type:1 isEncrypted:?];
  v532[40] = v508;
  v507 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[41] = v507;
  v506 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[42] = v506;
  v505 = [FCCKRecordFieldSchema fieldWithName:1 type:1 isEncrypted:?];
  v532[43] = v505;
  v0 = [FCCKRecordFieldSchema fieldWithName:3 type:1 isEncrypted:?];
  v532[44] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v532 count:45];
  v2 = [FCCKRecordSchema recordWithType:v1 fields:?];
  v569[36] = v2;
  v3 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v531[0] = v3;
  v4 = [FCCKRecordFieldSchema fieldWithName:3 type:0 isEncrypted:?];
  v531[1] = v4;
  v5 = [FCCKRecordFieldSchema fieldWithName:5 type:1 isEncrypted:?];
  v531[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v531 count:3];
  v7 = [FCCKRecordSchema recordWithType:v6 fields:?];
  v569[37] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v569 count:38];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)privateDatabaseSchema
{
  v202 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_self();
  v188 = @"static_sentinel";
  v189 = @"SharedPersonalizationProfile";
  v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v188 count:2];
  v118 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v126 shouldUseSecureContainer:0];
  v136 = v118;
  v174 = @"static_sentinel_secure";
  v175 = @"SharedPersonalizationProfileSecure";
  v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:2];
  v115 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v116 shouldUseSecureContainer:1];
  v137 = v115;
  v113 = [FCCKZoneSchema zoneWithName:?];
  v138 = v113;
  v110 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v139 = v110;
  v108 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v140 = v108;
  v106 = [FCCKZoneSchema zoneWithName:?];
  v141 = v106;
  v103 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v142 = v103;
  v97 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v143 = v97;
  v95 = [FCCKZoneSchema zoneWithName:?];
  v144 = v95;
  v93 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v145 = v93;
  v91 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v146 = v91;
  v89 = [FCCKZoneSchema zoneWithName:?];
  v147 = v89;
  v87 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v148 = v87;
  v85 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v149 = v85;
  v83 = [FCCKZoneSchema zoneWithName:?];
  v150 = v83;
  v80 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v151 = v80;
  v78 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v152 = v78;
  v76 = [FCCKZoneSchema zoneWithName:?];
  v153 = v76;
  v74 = [FCCKZoneSchema zoneWithName:?];
  v154 = v74;
  v72 = [FCCKZoneSchema zoneWithName:?];
  v155 = v72;
  v70 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v156 = v70;
  v68 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v157 = v68;
  v66 = [FCCKZoneSchema zoneWithName:?];
  v158 = v66;
  v64 = [FCCKZoneSchema zoneWithName:3 options:0 staticRecordNames:?];
  v159 = v64;
  v61 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v160 = v61;
  v57 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v161 = v57;
  v55 = [FCCKZoneSchema zoneWithName:?];
  v162 = v55;
  v53 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v163 = v53;
  v49 = [FCCKZoneSchema zoneWithName:?];
  v164 = v49;
  v0 = [FCCKZoneSchema zoneWithName:7 options:0 staticRecordNames:?];
  v165 = v0;
  v1 = [FCCKZoneSchema zoneWithName:?];
  v166 = v1;
  v171[0] = @"user_info_static_record_name_secure";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:1];
  v3 = [FCCKZoneSchema zoneWithName:7 options:v2 staticRecordNames:?];
  v167 = v3;
  v170[0] = @"user_info_static_record_name_secure2";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:1];
  v5 = [FCCKZoneSchema zoneWithName:7 options:v4 staticRecordNames:?];
  v168 = v5;
  v173 = @"static_user_privacy_exporter_record";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
  v7 = [FCCKZoneSchema zoneWithName:2 options:v6 staticRecordNames:?];
  v169 = v7;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:34];

  v104 = +[FCCKPrivateDatabase recordSchemas];
  objc_opt_self();
  v8 = *MEMORY[0x1E695B800];
  v98 = [FCPair pairWithFirst:*MEMORY[0x1E695B800] second:?];
  v136 = v98;
  v96 = [FCPair pairWithFirst:v8 second:@"Sentinel"];
  v137 = v96;
  v94 = [FCPair pairWithFirst:v8 second:@"SentinelSecure"];
  v138 = v94;
  v92 = [FCPair pairWithFirst:@"AudioPlaylist" second:@"AudioPlaylistItem"];
  v139 = v92;
  v90 = [FCPair pairWithFirst:@"IssueReadingHistory" second:?];
  v140 = v90;
  v88 = [FCPair pairWithFirst:@"PuzzleHistory" second:?];
  v141 = v88;
  v86 = [FCPair pairWithFirst:@"ReadingHistory" second:?];
  v142 = v86;
  v84 = [FCPair pairWithFirst:@"ReadingList" second:?];
  v143 = v84;
  v82 = [FCPair pairWithFirst:@"ChannelMemberships" second:@"ReferenceToMembership"];
  v144 = v82;
  v81 = [FCPair pairWithFirst:@"SensitiveSubscriptions" second:@"Subscription"];
  v145 = v81;
  v79 = [FCPair pairWithFirst:@"Shortcuts" second:?];
  v146 = v79;
  v77 = [FCPair pairWithFirst:@"Subscriptions" second:@"Subscription"];
  v147 = v77;
  v75 = [FCPair pairWithFirst:@"UserEventHistory" second:@"UserEventHistorySession"];
  v148 = v75;
  v73 = [FCPair pairWithFirst:@"UserInfo" second:?];
  v149 = v73;
  v69 = [FCPair pairWithFirst:@"UserInfo" second:?];
  v150 = v69;
  v67 = [FCPair pairWithFirst:@"UserInfo" second:?];
  v151 = v67;
  v65 = [FCPair pairWithFirst:@"UserPrivacyExporter" second:@"UserPrivacyExporter"];
  v152 = v65;
  v62 = [FCPair pairWithFirst:@"RecipeUserEventHistory" second:@"UserEventHistorySession"];
  v153 = v62;
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:18];
  v71 = v8;
  v58 = [FCPair pairWithFirst:v8 second:@"PersonalizationProfile"];
  v174 = v58;
  v54 = [FCPair pairWithFirst:v8 second:@"PersonalizationProfileSecure"];
  v188 = v54;
  v50 = [FCPair pairWithFirst:@"AudioPlaylist" second:@"AudioPlaylistItem"];
  v175 = v50;
  v63 = [FCPair pairWithFirst:@"AudioPlaylistSecure" second:@"AudioPlaylistItemSecure"];
  v189 = v63;
  v46 = [FCPair pairWithFirst:@"IssueReadingHistory" second:@"IssueReadingHistoryItem"];
  v176 = v46;
  v60 = [FCPair pairWithFirst:@"IssueReadingHistorySecure" second:@"IssueReadingHistoryItemSecure"];
  v190 = v60;
  v44 = [FCPair pairWithFirst:@"PuzzleHistory" second:@"PuzzleHistoryItem"];
  v177 = v44;
  v59 = [FCPair pairWithFirst:@"PuzzleHistorySecure" second:@"PuzzleHistoryItemSecure"];
  v191 = v59;
  v42 = [FCPair pairWithFirst:@"ReadingHistory" second:@"ReadingHistoryItem"];
  v178 = v42;
  v56 = [FCPair pairWithFirst:@"ReadingHistorySecure" second:@"ReadingHistoryItemSecure"];
  v192 = v56;
  v41 = [FCPair pairWithFirst:@"ReadingList" second:@"ReadingListEntry"];
  v179 = v41;
  v52 = [FCPair pairWithFirst:@"ReadingListSecure" second:@"ReadingListEntrySecure"];
  v193 = v52;
  v40 = [FCPair pairWithFirst:@"SensitiveSubscriptions" second:@"Subscription"];
  v180 = v40;
  v39 = [FCPair pairWithFirst:@"SensitiveSubscriptionsSecure" second:@"SubscriptionSecure"];
  v194 = v39;
  v38 = [FCPair pairWithFirst:@"Shortcuts" second:@"Shortcut"];
  v181 = v38;
  v48 = [FCPair pairWithFirst:@"ShortcutsSecure" second:@"ShortcutSecure"];
  v195 = v48;
  v37 = [FCPair pairWithFirst:@"Subscriptions" second:@"Subscription"];
  v182 = v37;
  v47 = [FCPair pairWithFirst:@"Subscriptions_CK" second:@"Subscription_CK"];
  v196 = v47;
  v122 = [FCPair pairWithFirst:@"UserEventHistory" second:@"UserEventHistorySession"];
  v183 = v122;
  v45 = [FCPair pairWithFirst:@"UserEventHistorySecure" second:@"UserEventHistorySessionSecure"];
  v197 = v45;
  v36 = [FCPair pairWithFirst:@"UserInfo" second:@"UserInfo"];
  v184 = v36;
  v35 = [FCPair pairWithFirst:@"UserInfoSecure" second:@"UserInfoSecure"];
  v198 = v35;
  v34 = [FCPair pairWithFirst:@"UserInfo" second:@"TagSettings"];
  v185 = v34;
  v33 = [FCPair pairWithFirst:@"UserInfoSecure" second:@"TagSettingsSecure"];
  v199 = v33;
  v32 = [FCPair pairWithFirst:@"UserInfo" second:@"PuzzleTypeSettings"];
  v186 = v32;
  v31 = [FCPair pairWithFirst:@"UserInfoSecure" second:?];
  v200 = v31;
  v125 = [FCPair pairWithFirst:@"RecipeUserEventHistory" second:@"UserEventHistorySession"];
  v187 = v125;
  v51 = [FCPair pairWithFirst:@"RecipeUserEventHistorySecure" second:@"UserEventHistorySessionSecure"];
  v201 = v51;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v174 count:14];
  v30 = [FCPair pairWithFirst:@"Subscriptions" second:@"Subscription"];
  v172 = v30;
  v43 = [FCPair pairWithFirst:@"SensitiveSubscriptionsSecure" second:@"SubscriptionSecure"];
  v173 = v43;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
  v121 = [FCPair pairWithFirst:@"AudioPlaylist" second:@"AudioPlaylistItem"];
  v170[0] = v121;
  v102 = [FCPair pairWithFirst:@"AudioPlaylistSecure2" second:@"AudioPlaylistItemSecure2"];
  v171[0] = v102;
  v120 = [FCPair pairWithFirst:@"IssueReadingHistory" second:@"IssueReadingHistoryItem"];
  v170[1] = v120;
  v107 = [FCPair pairWithFirst:@"IssueReadingHistorySecure2" second:@"IssueReadingHistoryItemSecure2"];
  v171[1] = v107;
  v119 = [FCPair pairWithFirst:@"PuzzleHistory" second:@"PuzzleHistoryItem"];
  v170[2] = v119;
  v109 = [FCPair pairWithFirst:@"PuzzleHistorySecure2" second:@"PuzzleHistoryItemSecure2"];
  v171[2] = v109;
  v111 = [FCPair pairWithFirst:@"ReadingHistory" second:@"ReadingHistoryItem"];
  v170[3] = v111;
  v101 = [FCPair pairWithFirst:@"ReadingHistorySecure2" second:@"ReadingHistoryItemSecure2"];
  v171[3] = v101;
  v114 = [FCPair pairWithFirst:@"ReadingList" second:@"ReadingListEntry"];
  v170[4] = v114;
  v112 = [FCPair pairWithFirst:@"ReadingListSecure2" second:@"ReadingListEntrySecure2"];
  v171[4] = v112;
  v131 = [FCPair pairWithFirst:@"SensitiveSubscriptions" second:@"Subscription"];
  v170[5] = v131;
  v100 = [FCPair pairWithFirst:@"SensitiveSubscriptionsSecure2" second:@"SubscriptionSecure2"];
  v171[5] = v100;
  v133 = [FCPair pairWithFirst:@"Shortcuts" second:@"Shortcut"];
  v170[6] = v133;
  v117 = [FCPair pairWithFirst:@"ShortcutsSecure2" second:@"ShortcutSecure2"];
  v171[6] = v117;
  v123 = [FCPair pairWithFirst:@"Subscriptions" second:@"Subscription"];
  v170[7] = v123;
  v99 = [FCPair pairWithFirst:@"SensitiveSubscriptionsSecure2" second:@"SubscriptionSecure2"];
  v171[7] = v99;
  v9 = [FCPair pairWithFirst:@"UserInfo" second:@"UserInfo"];
  v170[8] = v9;
  v10 = [FCPair pairWithFirst:@"UserInfoSecure2" second:@"UserInfoSecure2"];
  v171[8] = v10;
  v11 = [FCPair pairWithFirst:@"UserInfo" second:@"TagSettings"];
  v170[9] = v11;
  v12 = [FCPair pairWithFirst:@"UserInfoSecure2" second:@"TagSettingsSecure2"];
  v171[9] = v12;
  v13 = [FCPair pairWithFirst:@"UserInfo" second:@"PuzzleTypeSettings"];
  v170[10] = v13;
  v14 = [FCPair pairWithFirst:@"UserInfoSecure2" second:@"PuzzleTypeSettingsSecure"];
  v171[10] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:11];
  v135 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v127 V2Changes:v29 V3Changes:v28 V4Changes:v15];

  objc_opt_self();
  v134 = [FCPair pairWithFirst:v71 second:@"static_sentinel"];
  v136 = v134;
  v132 = [FCPair pairWithFirst:v71 second:@"static_sentinel_secure"];
  v137 = v132;
  v129 = [FCPair pairWithFirst:v71 second:@"SharedPersonalizationProfile"];
  v138 = v129;
  v128 = [FCPair pairWithFirst:@"UserInfo" second:@"user_info_static_record_name"];
  v139 = v128;
  v130 = [FCPair pairWithFirst:@"UserPrivacyExporter" second:@"static_user_privacy_exporter_record"];
  v140 = v130;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:5];
  v16 = [FCPair pairWithFirst:v71 second:@"SharedPersonalizationProfile"];
  v174 = v16;
  v17 = [FCPair pairWithFirst:v71 second:@"SharedPersonalizationProfileSecure"];
  v188 = v17;
  v18 = [FCPair pairWithFirst:@"UserInfo" second:@"user_info_static_record_name"];
  v175 = v18;
  v19 = [FCPair pairWithFirst:@"UserInfoSecure" second:@"user_info_static_record_name_secure"];
  v189 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v174 count:2];
  v21 = [FCPair pairWithFirst:@"UserInfo" second:@"user_info_static_record_name"];
  v170[0] = v21;
  v22 = [FCPair pairWithFirst:@"UserInfoSecure2" second:@"user_info_static_record_name_secure2"];
  v171[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:1];
  v24 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v124 V2Changes:v20 V3Changes:MEMORY[0x1E695E0F8] V4Changes:v23];

  v25 = [FCCKPrivateDatabaseSchema databaseSchemaWithZones:v105 records:v104 recordTypeVersionMapping:v135 recordNameVersionMapping:v24];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)initWithCKProperties:(void *)properties schema:(void *)schema middleware:(void *)middleware encryptionDelegate:(void *)delegate networkBehaviorMonitor:
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a2;
  propertiesCopy = properties;
  schemaCopy = schema;
  middlewareCopy = middleware;
  delegateCopy = delegate;
  v53.receiver = self;
  v53.super_class = FCCKPrivateDatabase;
  v17 = objc_msgSendSuper2(&v53, sel_init);
  v18 = v17;
  if (v17)
  {
    v45 = delegateCopy;
    v47 = v12;
    objc_storeStrong(v17 + 9, a2);
    objc_storeStrong(v18 + 10, properties);
    objc_storeStrong(v18 + 15, schema);
    v46 = middlewareCopy;
    objc_storeWeak(v18 + 2, middlewareCopy);
    objc_storeStrong(v18 + 3, delegate);
    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v20 = dispatch_queue_create("com.apple.news.FCCKPrivateDatabase", v19);
    v21 = v18[11];
    v18[11] = v20;

    v22 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v23 = v18[12];
    v18[12] = v22;

    [v18[12] setName:@"com.apple.news.FCCKPrivateDatabase.serial"];
    [v18[12] setMaxConcurrentOperationCount:1];
    v24 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v25 = v18[13];
    v18[13] = v24;

    [v18[13] setName:@"com.apple.news.FCCKPrivateDatabase.highPriority"];
    [v18[13] setMaxConcurrentOperationCount:3];
    v26 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v27 = v18[14];
    v18[14] = v26;

    [v18[14] setName:@"com.apple.news.FCCKPrivateDatabase.noPreflight"];
    [v18[14] setMaxConcurrentOperationCount:-1];
    v28 = dispatch_group_create();
    v29 = v18[19];
    v18[19] = v28;

    dispatch_group_enter(v18[19]);
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v32 = v18[15];
    v33 = [v32 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v49 + 1) + 8 * i);
          if ([v37 conformsToProtocol:&unk_1F2ECAF58])
          {
            [v30 addObject:v37];
          }

          if ([v37 conformsToProtocol:&unk_1F2E7D810])
          {
            [v31 addObject:v37];
          }

          if ([v37 conformsToProtocol:&unk_1F2E8AC60])
          {
            [v48 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v34);
    }

    v38 = v18[16];
    v18[16] = v30;
    v39 = v30;

    v40 = v18[17];
    v18[17] = v31;
    v41 = v31;

    v42 = v18[18];
    v18[18] = v48;

    v12 = v47;
    middlewareCopy = v46;
    delegateCopy = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)initWithContainerIdentifier:(void *)identifier secureContainerIdentifier:(char)containerIdentifier productionEnvironment:(void *)environment encryptionDelegate:(void *)delegate networkBehaviorMonitor:(char)monitor privateDataSyncingEnabled:
{
  v13 = a2;
  identifierCopy = identifier;
  selfCopy = self;
  v35 = identifierCopy;
  v36 = v13;
  if (self)
  {
    v15 = identifierCopy;
    v16 = MEMORY[0x1E69B68D8];
    delegateCopy = delegate;
    environmentCopy = environment;
    v17 = [v16 alloc];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __167__FCCKPrivateDatabase_initWithContainerIdentifier_secureContainerIdentifier_productionEnvironment_encryptionDelegate_networkBehaviorMonitor_privateDataSyncingEnabled___block_invoke;
    v37[3] = &unk_1E7C3F960;
    containerIdentifierCopy = containerIdentifier;
    v38 = v13;
    v39 = v15;
    v30 = [v17 initWithConstructor:v37];
    v18 = +[FCCKPrivateDatabase privateDatabaseSchema];
    array = [MEMORY[0x1E695DF70] array];
    v31 = objc_alloc_init(FCCKDatabaseQualityOfServiceUpgradingMiddleware);
    [array addObject:v31];
    v28 = [[FCCKDatabaseLoggingMiddleware alloc] initAllowingNilDesiredKeys:?];
    v27 = [[FCCKDatabaseUserAuthenticationMiddleware alloc] initWithPrivateDataSyncingEnabled:monitor];
    v20 = objc_alloc_init(FCCKDatabaseRecordVersionMiddleware);
    v29 = objc_alloc_init(FCCKAESSIVRecordNameCipher);
    objc_opt_self();
    v21 = [[FCCKDatabaseEncryptionMiddleware alloc] initWithEncryptionSchema:v18 recordNameCipher:v29];
    v22 = [[FCCKDatabaseEncryptedZoneMigrator alloc] initWithSchema:v18 recordEncryptionMiddleware:v21 deprecatedBlock:&__block_literal_global_242_0];
    v23 = [[FCCKDatabaseEncryptionStartUpMiddleware alloc] initWithEncryptionMigrator:v22];
    [array addObject:v23];
    [array addObject:v28];
    [array addObject:v27];
    [array addObject:v20];
    [array addObject:v21];
    v24 = [(FCCKPrivateDatabase *)selfCopy initWithCKProperties:v30 schema:v18 middleware:array encryptionDelegate:environmentCopy networkBehaviorMonitor:delegateCopy];

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id *__167__FCCKPrivateDatabase_initWithContainerIdentifier_secureContainerIdentifier_productionEnvironment_encryptionDelegate_networkBehaviorMonitor_privateDataSyncingEnabled___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695B8B0]);
  [v2 setCaptureResponseHTTPHeaders:1];
  v21 = v2;
  [v2 setUseZoneWidePCS:0];
  v3 = objc_alloc_init(MEMORY[0x1E695B8B0]);
  [v3 setCaptureResponseHTTPHeaders:1];
  [v3 setUseZoneWidePCS:1];
  if (*(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:*(a1 + 32) environment:v4];
  v6 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v5 options:v2];
  v7 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v5 options:v3];
  v20 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:*(a1 + 40) environment:v4];
  v8 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v20 options:v3];
  v9 = MEMORY[0x1E695DEC8];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __167__FCCKPrivateDatabase_initWithContainerIdentifier_secureContainerIdentifier_productionEnvironment_encryptionDelegate_networkBehaviorMonitor_privateDataSyncingEnabled___block_invoke_2;
  v22[3] = &unk_1E7C3B1F8;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = [v9 fc_array:v22];
  v14 = [FCCKPrivateDatabaseCKProperties alloc];
  v15 = [v12 privateCloudDatabase];
  v16 = [v11 privateCloudDatabase];
  v17 = [v10 privateCloudDatabase];
  v18 = [(FCCKPrivateDatabaseCKProperties *)&v14->super.isa initWithContainers:v13 database:v15 databaseWithZoneWidePCS:v16 secureDatabase:v17];

  return v18;
}

void __167__FCCKPrivateDatabase_initWithContainerIdentifier_secureContainerIdentifier_productionEnvironment_encryptionDelegate_networkBehaviorMonitor_privateDataSyncingEnabled___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4])
  {
    [v3 addObject:?];
    v3 = v4;
  }

  if (a1[5])
  {
    [v4 addObject:?];
    v3 = v4;
  }

  if (a1[6])
  {
    [v4 addObject:?];
    v3 = v4;
  }
}

- (id)t_initWithContainers:(void *)containers database:(void *)database databaseWithZoneWidePCS:(void *)s secureDatabase:(void *)secureDatabase schema:(void *)schema middleware:(void *)middleware encryptionDelegate:(void *)delegate networkBehaviorMonitor:
{
  v16 = a2;
  containersCopy = containers;
  databaseCopy = database;
  sCopy = s;
  if (self)
  {
    v20 = MEMORY[0x1E69B68D8];
    delegateCopy = delegate;
    middlewareCopy = middleware;
    schemaCopy = schema;
    secureDatabaseCopy = secureDatabase;
    v25 = [v20 alloc];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __152__FCCKPrivateDatabase_t_initWithContainers_database_databaseWithZoneWidePCS_secureDatabase_schema_middleware_encryptionDelegate_networkBehaviorMonitor___block_invoke;
    v28[3] = &unk_1E7C3F988;
    v29 = v16;
    v30 = containersCopy;
    v31 = databaseCopy;
    v32 = sCopy;
    v26 = [v25 initWithConstructor:v28];
    self = [(FCCKPrivateDatabase *)self initWithCKProperties:v26 schema:secureDatabaseCopy middleware:schemaCopy encryptionDelegate:middlewareCopy networkBehaviorMonitor:delegateCopy];
  }

  return self;
}

id *__152__FCCKPrivateDatabase_t_initWithContainers_database_databaseWithZoneWidePCS_secureDatabase_schema_middleware_encryptionDelegate_networkBehaviorMonitor___block_invoke(void **a1)
{
  v1 = [[FCCKPrivateDatabaseCKProperties alloc] initWithContainers:a1[5] database:a1[6] databaseWithZoneWidePCS:a1[7] secureDatabase:?];

  return v1;
}

+ (id)testingDatabase
{
  v2 = [FCCKPrivateDatabase alloc];
  v3 = [(FCCKPrivateDatabase *)&v2->super.isa t_initWithContainers:0 database:0 databaseWithZoneWidePCS:0 secureDatabase:0 schema:0 middleware:0 encryptionDelegate:0 networkBehaviorMonitor:?];

  return v3;
}

- (void)addOperation:(uint64_t)operation
{
  v3 = a2;
  v4 = v3;
  if (operation)
  {
    [v3 setDatabase:operation];
    if ([v4 skipPreflight])
    {
      v5 = [(FCCKPrivateDatabase *)operation _queueForOperation:v4];
      [v5 addOperation:v4];
    }

    else
    {
      qualityOfService = [v4 qualityOfService];
      v7 = *(operation + 88);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __36__FCCKPrivateDatabase_addOperation___block_invoke;
      v8[3] = &unk_1E7C393F8;
      v8[4] = operation;
      v10 = qualityOfService;
      v9 = v4;
      FCDispatchAsyncWithQualityOfService(v7, qualityOfService, v8);
    }
  }
}

- (char)_queueForOperation:(char *)operation
{
  v3 = a2;
  v4 = v3;
  if (operation)
  {
    if ([v3 skipPreflight])
    {
      v5 = 112;
    }

    else
    {
      relativePriority = [v4 relativePriority];
      v5 = 96;
      if (relativePriority > 0)
      {
        v5 = 104;
      }
    }

    operation = *&operation[v5];
  }

  return operation;
}

void __36__FCCKPrivateDatabase_addOperation___block_invoke(uint64_t a1)
{
  [(FCCKPrivateDatabase *)*(a1 + 32) _beginInitialStartUpIfNeeded];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 152);
  }

  else
  {
    v3 = 0;
  }

  if (FCDispatchGroupIsEmpty(v3))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__FCCKPrivateDatabase_addOperation___block_invoke_2;
    block[3] = &unk_1E7C36C58;
    block[4] = *(a1 + 32);
    v6 = &v17;
    v17 = v4;
    v7 = FCBlockWithQualityOfService(v5, block);
    v7[2]();
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 152);
      v10 = *(v8 + 88);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__FCCKPrivateDatabase_addOperation___block_invoke_3;
    v14[3] = &unk_1E7C36C58;
    v14[4] = v8;
    v6 = &v15;
    v11 = *(a1 + 48);
    v15 = *(a1 + 40);
    v12 = v10;
    v7 = v9;
    v13 = FCBlockWithQualityOfService(v11, v14);
    dispatch_group_notify(v7, v12, v13);
  }
}

- (void)_beginInitialStartUpIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 9) & 1) == 0)
  {
    v2 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(self + 128);
      v6 = 138412290;
      v7 = v3;
      v4 = v2;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Starting up with middleware: %@", &v6, 0xCu);
    }

    *(self + 9) = 1;
    [(FCCKPrivateDatabase *)self _continueStartUp];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __36__FCCKPrivateDatabase_addOperation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 160);
    if (v3 == 2)
    {
      goto LABEL_5;
    }

    if (v3 != 1)
    {
      goto LABEL_6;
    }

    [(FCCKPrivateDatabase *)v2 _possiblyRetryStartUp];
    if (*(a1 + 32))
    {
LABEL_5:
      [*(a1 + 40) cancel];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_6:
  v4 = [(FCCKPrivateDatabase *)v2 _queueForOperation:?];
  [v4 addOperation:*(a1 + 40)];
}

- (void)_possiblyRetryStartUp
{
  if ((*(self + 11) & 1) == 0 && *(self + 160) == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:*(self + 176)];
    v4 = v3;

    if (v4 >= fmin(exp2((*(self + 168) - 1)) * 5.0, 60.0))
    {

      [(FCCKPrivateDatabase *)self _continueStartUp];
    }
  }
}

void __36__FCCKPrivateDatabase_addOperation___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 160);
    if (v3 == 2)
    {
      goto LABEL_5;
    }

    if (v3 != 1)
    {
      goto LABEL_6;
    }

    [(FCCKPrivateDatabase *)v2 _possiblyRetryStartUp];
    if (*(a1 + 32))
    {
LABEL_5:
      [*(a1 + 40) cancel];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_6:
  v4 = [(FCCKPrivateDatabase *)v2 _queueForOperation:?];
  [v4 addOperation:*(a1 + 40)];
}

- (void)registerZoneRestorationSources:(uint64_t)sources
{
  v4 = a2;
  if (sources)
  {
    objc_storeStrong((sources + 184), a2);
  }
}

- (void)registerZonePruningAssistants:(uint64_t)assistants
{
  v4 = a2;
  if (assistants)
  {
    objc_storeStrong((assistants + 192), a2);
  }
}

- (id)pruningAssistantForZoneName:(id *)name
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = v3;
  if (name)
  {
    v4 = MEMORY[0x1E695BA90];
    v5 = v3;
    v6 = [v4 alloc];
    v7 = [v6 initWithZoneName:v5 ownerName:*MEMORY[0x1E695B728]];

    v8 = [(FCCKPrivateDatabase *)name _serverToClientRecordZoneID:v7];
    zoneName = [v8 zoneName];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = name[24];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v17 canHelpPruneZoneName:zoneName])
          {
            if (v13 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't have multiple assistants pruning the same zone"];
              *buf = 136315906;
              v28 = "[FCCKPrivateDatabase pruningAssistantForZoneName:]";
              v29 = 2080;
              v30 = "FCCKPrivateDatabase.m";
              v31 = 1024;
              v32 = 411;
              v33 = 2114;
              v34 = v19;
              _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v18 = v17;

            v13 = v18;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)fetchSecureDatabaseSupportedWithCompletionHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler)
  {
    secureDatabase = [(FCCKPrivateDatabase *)handler secureDatabase];
    container = [secureDatabase container];

    if (container)
    {
      secureDatabase2 = [(FCCKPrivateDatabase *)handler secureDatabase];
      container2 = [secureDatabase2 container];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__FCCKPrivateDatabase_fetchSecureDatabaseSupportedWithCompletionHandler___block_invoke;
      v8[3] = &unk_1E7C3F9B0;
      v9 = v3;
      [container2 accountInfoWithCompletionHandler:v8];
    }

    else
    {
      (*(v3 + 2))(v3, 0, 0);
    }
  }
}

- (id)secureDatabase
{
  if (self)
  {
    v1 = *(self + 72);
    value = [v1 value];
    v3 = value;
    if (value)
    {
      v4 = *(value + 24);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __73__FCCKPrivateDatabase_fetchSecureDatabaseSupportedWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 supportsDeviceToDeviceEncryption], v5);
}

- (void)enumeratePayloadsWithRecordIDs:(void *)ds records:(void *)records zoneIDs:(void *)iDs zones:(uint64_t)zones options:(void *)options payloadHandler:
{
  v13 = a2;
  dsCopy = ds;
  recordsCopy = records;
  iDsCopy = iDs;
  optionsCopy = options;
  if (self)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke;
    aBlock[3] = &unk_1E7C3FA78;
    zonesCopy = zones;
    aBlock[4] = self;
    v23 = v13;
    v24 = dsCopy;
    v25 = recordsCopy;
    v26 = iDsCopy;
    v27 = optionsCopy;
    v18 = _Block_copy(aBlock);
    v19 = v18;
    v20 = *(v18 + 2);
    if ((zones & 2) != 0)
    {
      v20(v18, 1, &__block_literal_global_61);
      (v19)[2](v19, 2, &__block_literal_global_137);
      v21 = &__block_literal_global_139;
    }

    else
    {
      v20(v18, 1, &__block_literal_global_141_0);
      v21 = &__block_literal_global_143;
    }

    (v19)[2](v19, 3, v21);
  }
}

void __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke(uint64_t a1, int64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 80);
  v7 = v6 & 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_2;
  aBlock[3] = &unk_1E7C3F9D8;
  v36 = v6 & 1;
  v8 = *(a1 + 32);
  v37 = (v6 & 4) != 0;
  aBlock[4] = v8;
  v24 = a2;
  v35 = a2;
  v9 = v5;
  v34 = v9;
  v10 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_3;
  v31[3] = &unk_1E7C3FA00;
  v11 = v10;
  v32 = v11;
  v12 = _Block_copy(v31);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_4;
  v28[3] = &unk_1E7C3FA28;
  v30 = v7;
  v28[4] = *(a1 + 32);
  v13 = v9;
  v29 = v13;
  v14 = _Block_copy(v28);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_5;
  v26[3] = &unk_1E7C3FA50;
  v15 = v14;
  v27 = v15;
  v16 = _Block_copy(v26);
  v17 = [*(a1 + 40) fc_arrayOfObjectsPassingTest:v15];
  v18 = [*(a1 + 48) fc_arrayOfObjectsPassingTest:v16];
  v19 = [*(a1 + 56) fc_arrayOfObjectsPassingTest:v11];
  v25 = v12;
  v20 = [*(a1 + 64) fc_arrayOfObjectsPassingTest:v12];
  if ([v17 count] || objc_msgSend(v18, "count") || objc_msgSend(v19, "count") || objc_msgSend(v20, "count"))
  {
    v21 = v13;
    v22 = objc_alloc_init(FCCKPrivateDatabaseCKPayload);
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_recordIDs, v17);
      objc_storeStrong(&v23->_records, v18);
      objc_storeStrong(&v23->_zoneIDs, v19);
      objc_storeStrong(&v23->_zones, v20);
      v23->_destination = v24;
    }

    (*(*(a1 + 72) + 16))();

    v13 = v21;
  }
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCCKPrivateDatabase *)*(a1 + 32) _clientToServerRecordZoneID:v3];
  }

  v6 = v5;
  if (*(a1 + 57) == 1 && ([v5 zoneName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E695B800]), v7, v8))
  {
    v9 = *(a1 + 48) == 3;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v10)
    {
      v10 = v10[10];
    }

    v12 = v10;
    v13 = [v6 zoneName];
    v14 = [(FCCKPrivateDatabaseSchema *)v12 schemaForZoneWithName:v13];
    v9 = (*(v11 + 16))(v11, v14);
  }

  return v9;
}

- (id)_clientToServerRecordZoneID:(id)d
{
  dCopy = d;
  v10 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v9 = a2;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a2;
    v5 = [v3 arrayWithObjects:&v9 count:1];

    v6 = [(FCCKPrivateDatabase *)dCopy _mapRecordZoneIDs:v5 toClient:0];
    dCopy = [v6 firstObject];
  }

  v7 = *MEMORY[0x1E69E9840];

  return dCopy;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneID];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v17 = v3;
      v6 = MEMORY[0x1E695DEC8];
      v7 = v3;
      v8 = [v6 arrayWithObjects:&v17 count:1];

      v9 = [(FCCKPrivateDatabase *)v5 _mapRecordIDs:v8 toClient:0];
      v5 = [v9 firstObject];
    }
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[10];
  }

  v12 = v10;
  v13 = [(FCCKPrivateDatabaseSchema *)v12 schemaForZoneContainingRecordID:v5];
  v14 = (*(v11 + 16))(v11, v13);

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (v2[10])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2[9] ^ 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (v2[10] & 1) == 0)
  {
    v3 = v2[9];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 10);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_9(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 10) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t __99__FCCKPrivateDatabase_enumeratePayloadsWithRecordIDs_records_zoneIDs_zones_options_payloadHandler___block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 10);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)enumerateActiveDestinationsWithOptions:(void *)options handler:
{
  optionsCopy = options;
  if (self)
  {
    v6 = *(self + 40);
    v9 = optionsCopy;
    (*(optionsCopy + 2))(optionsCopy, 1);
    optionsCopy = v9;
    if (v6 >= 1)
    {
      secureDatabase = [(FCCKPrivateDatabase *)self secureDatabase];

      if (secureDatabase)
      {
        (*(v9 + 2))(v9, 3);
      }

      optionsCopy = v9;
      if ((a2 & 2) != 0)
      {
        databaseWithZoneWidePCS = [(FCCKPrivateDatabase *)self databaseWithZoneWidePCS];

        optionsCopy = v9;
        if (databaseWithZoneWidePCS)
        {
          (*(v9 + 2))(v9, 2);
          optionsCopy = v9;
        }
      }
    }
  }
}

- (id)databaseWithZoneWidePCS
{
  if (self)
  {
    v1 = *(self + 72);
    value = [v1 value];
    v3 = value;
    if (value)
    {
      v4 = *(value + 16);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addCKOperation:(uint64_t)operation destination:
{
  if (self)
  {
    v5 = a2;
    [(FCCKPrivateDatabase *)self _preflightOperation:v5];
    [(FCCKPrivateDatabase *)self _addCKOperation:v5 destination:operation];
  }
}

- (void)_preflightOperation:(void *)operation
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (operation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      recordsToSave = [v4 recordsToSave];
      v6 = [(FCCKPrivateDatabase *)operation _mapRecords:recordsToSave toClient:0];
      [v4 setRecordsToSave:v6];

      recordIDsToDelete = [v4 recordIDsToDelete];
      v8 = [(FCCKPrivateDatabase *)operation _mapRecordIDs:recordIDsToDelete toClient:0];
      [v4 setRecordIDsToDelete:v8];

      perRecordCompletionBlock = [v4 perRecordCompletionBlock];
      if (perRecordCompletionBlock && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CKModifyRecordsOperation.perRecordCompletionBlock is not supported"];
        *buf = 136315906;
        *&buf[4] = "[FCCKPrivateDatabase _preflightRecordsInModifyOperation:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCCKPrivateDatabase.m";
        *&buf[22] = 1024;
        LODWORD(v53) = 821;
        WORD2(v53) = 2114;
        *(&v53 + 6) = v39;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      modifyRecordsCompletionBlock = [v4 modifyRecordsCompletionBlock];
      v11 = modifyRecordsCompletionBlock;
      if (!modifyRecordsCompletionBlock)
      {
        goto LABEL_15;
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __58__FCCKPrivateDatabase__preflightRecordsInModifyOperation___block_invoke;
      *&v53 = &unk_1E7C3FAC0;
      *(&v53 + 1) = operation;
      v54 = modifyRecordsCompletionBlock;
      [v4 setModifyRecordsCompletionBlock:buf];
LABEL_14:

LABEL_15:
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      recordIDs = [v4 recordIDs];
      v13 = [(FCCKPrivateDatabase *)operation _mapRecordIDs:recordIDs toClient:0];
      [v4 setRecordIDs:v13];

      perRecordCompletionBlock = [v4 perRecordCompletionBlock];
      if (perRecordCompletionBlock && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CKFetchRecordsOperation.perRecordCompletionBlock is not supported"];
        *buf = 136315906;
        *&buf[4] = "[FCCKPrivateDatabase _preflightRecordsInFetchOperation:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCCKPrivateDatabase.m";
        *&buf[22] = 1024;
        LODWORD(v53) = 922;
        WORD2(v53) = 2114;
        *(&v53 + 6) = v42;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      fetchRecordsCompletionBlock = [v4 fetchRecordsCompletionBlock];
      v11 = fetchRecordsCompletionBlock;
      if (!fetchRecordsCompletionBlock)
      {
        goto LABEL_15;
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __57__FCCKPrivateDatabase__preflightRecordsInFetchOperation___block_invoke;
      *&v53 = &unk_1E7C37C88;
      *(&v53 + 1) = operation;
      v54 = fetchRecordsCompletionBlock;
      [v4 setFetchRecordsCompletionBlock:buf];
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      recordZonesToSave = [v4 recordZonesToSave];
      v17 = [(FCCKPrivateDatabase *)operation _mapZones:recordZonesToSave toClient:0];
      [v4 setRecordZonesToSave:v17];

      recordZoneIDsToDelete = [v4 recordZoneIDsToDelete];
      v19 = [(FCCKPrivateDatabase *)operation _mapRecordZoneIDs:recordZoneIDsToDelete toClient:0];
      [v4 setRecordZoneIDsToDelete:v19];

      modifyRecordZonesCompletionBlock = [v4 modifyRecordZonesCompletionBlock];
      perRecordCompletionBlock = modifyRecordZonesCompletionBlock;
      if (!modifyRecordZonesCompletionBlock)
      {
        goto LABEL_16;
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __63__FCCKPrivateDatabase__preflightZoneIDsInModifyZonesOperation___block_invoke;
      *&v53 = &unk_1E7C3FAC0;
      *(&v53 + 1) = operation;
      v54 = modifyRecordZonesCompletionBlock;
      [v4 setModifyRecordZonesCompletionBlock:buf];
LABEL_24:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      recordZoneIDs = [v4 recordZoneIDs];
      v22 = [(FCCKPrivateDatabase *)operation _mapRecordZoneIDs:recordZoneIDs toClient:0];
      [v4 setRecordZoneIDs:v22];

      fetchRecordZonesCompletionBlock = [v4 fetchRecordZonesCompletionBlock];
      perRecordCompletionBlock = fetchRecordZonesCompletionBlock;
      if (!fetchRecordZonesCompletionBlock)
      {
        goto LABEL_16;
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __63__FCCKPrivateDatabase__preflightZonesIDsInFetchZonesOperation___block_invoke;
      *&v53 = &unk_1E7C37C88;
      *(&v53 + 1) = operation;
      v54 = fetchRecordZonesCompletionBlock;
      [v4 setFetchRecordZonesCompletionBlock:buf];
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      recordZoneIDs2 = [v4 recordZoneIDs];

      if (recordZoneIDs2)
      {
        recordZoneIDs3 = [v4 recordZoneIDs];
        v26 = [(FCCKPrivateDatabase *)operation _mapRecordZoneIDs:recordZoneIDs3 toClient:0];
        [v4 setRecordZoneIDs:v26];
      }

      configurationsByRecordZoneID = [v4 configurationsByRecordZoneID];

      if (configurationsByRecordZoneID)
      {
        configurationsByRecordZoneID2 = [v4 configurationsByRecordZoneID];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke;
        v51[3] = &unk_1E7C3FAE8;
        v51[4] = operation;
        v29 = [configurationsByRecordZoneID2 fc_dictionaryByTransformingKeysWithBlock:v51];
        [v4 setConfigurationsByRecordZoneID:v29];
      }

      recordChangedBlock = [v4 recordChangedBlock];
      perRecordCompletionBlock = recordChangedBlock;
      if (recordChangedBlock)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_2;
        *&v53 = &unk_1E7C3FB10;
        v31 = recordChangedBlock;
        *(&v53 + 1) = operation;
        v54 = v31;
        [v4 setRecordChangedBlock:buf];
      }

      recordWithIDWasDeletedBlock = [v4 recordWithIDWasDeletedBlock];
      v11 = recordWithIDWasDeletedBlock;
      if (recordWithIDWasDeletedBlock)
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_3;
        v49[3] = &unk_1E7C3FB38;
        v49[4] = operation;
        v50 = recordWithIDWasDeletedBlock;
        [v4 setRecordWithIDWasDeletedBlock:v49];
      }

      recordZoneChangeTokensUpdatedBlock = [v4 recordZoneChangeTokensUpdatedBlock];
      v34 = recordZoneChangeTokensUpdatedBlock;
      if (recordZoneChangeTokensUpdatedBlock)
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_4;
        v47[3] = &unk_1E7C3FB60;
        v47[4] = operation;
        v48 = recordZoneChangeTokensUpdatedBlock;
        [v4 setRecordZoneChangeTokensUpdatedBlock:v47];
      }

      recordZoneFetchCompletionBlock = [v4 recordZoneFetchCompletionBlock];
      v36 = recordZoneFetchCompletionBlock;
      if (recordZoneFetchCompletionBlock)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_5;
        v45[3] = &unk_1E7C3FB88;
        v45[4] = operation;
        v46 = recordZoneFetchCompletionBlock;
        [v4 setRecordZoneFetchCompletionBlock:v45];
      }

      fetchRecordZoneChangesCompletionBlock = [v4 fetchRecordZoneChangesCompletionBlock];
      v38 = fetchRecordZoneChangesCompletionBlock;
      if (fetchRecordZoneChangesCompletionBlock)
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_6;
        v43[3] = &unk_1E7C39710;
        v43[4] = operation;
        v44 = fetchRecordZoneChangesCompletionBlock;
        [v4 setFetchRecordZoneChangesCompletionBlock:v43];
      }

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(FCCKPrivateDatabase *)operation _preflightRecordsInDatabaseChangesOperation:v3];
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't handle queries on the private database"];
      *buf = 136315906;
      *&buf[4] = "[FCCKPrivateDatabase _preflightOperation:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCCKPrivateDatabase.m";
      *&buf[22] = 1024;
      LODWORD(v53) = 797;
      WORD2(v53) = 2114;
      *(&v53 + 6) = v40;
      v41 = MEMORY[0x1E69E9C10];
LABEL_46:
      _os_log_error_impl(&dword_1B63EF000, v41, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"all CK operations MUST go through database preflight"];
        *buf = 136315906;
        *&buf[4] = "[FCCKPrivateDatabase _preflightOperation:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCCKPrivateDatabase.m";
        *&buf[22] = 1024;
        LODWORD(v53) = 809;
        WORD2(v53) = 2114;
        *(&v53 + 6) = v40;
        v41 = MEMORY[0x1E69E9C10];
        goto LABEL_46;
      }
    }
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_addCKOperation:(uint64_t)operation destination:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = *(self + 136);
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
LABEL_4:
      v11 = 0;
      v12 = v9;
      while (1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v23 + 1) + 8 * v11);
        v22 = v12;
        v14 = [v13 database:self willEnqueueOperation:v5 error:&v22];
        v9 = v22;

        if (v14 == 2)
        {
          goto LABEL_20;
        }

        if (v14 == 1)
        {

          [v5 cancelWithUnderlyingError:v9];
          goto LABEL_14;
        }

        ++v11;
        v12 = v9;
        if (v8 == v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }
    }

    v9 = 0;
LABEL_14:
    if (operation > 1)
    {
      if (operation == 2)
      {
        databaseWithZoneWidePCS = [(FCCKPrivateDatabase *)self databaseWithZoneWidePCS];
      }

      else
      {
        if (operation != 3)
        {
          goto LABEL_29;
        }

        databaseWithZoneWidePCS = [(FCCKPrivateDatabase *)self secureDatabase];
      }

      v20 = databaseWithZoneWidePCS;
      [databaseWithZoneWidePCS addOperation:v5];
    }

    else
    {
      if (operation)
      {
        if (operation != 1)
        {
LABEL_29:

          goto LABEL_30;
        }

        v15 = *(self + 72);
        value = [v15 value];
        v17 = value;
        if (value)
        {
          v18 = *(value + 8);
        }

        else
        {
          v18 = 0;
        }

        v6 = v18;

        [v6 addOperation:v5];
LABEL_20:

        goto LABEL_29;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
      *buf = 136315906;
      v28 = "[FCCKPrivateDatabase _addCKOperation:destination:]";
      v29 = 2080;
      v30 = "FCCKPrivateDatabase.m";
      v31 = 1024;
      v32 = 759;
      v33 = 2114;
      v34 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_29;
  }

LABEL_30:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_continueStartUp
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_6:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  *(self + 11) = 1;
  if ([*(self + 128) count])
  {
    v2 = *(self + 128);
    firstObject = [v2 firstObject];

    v4 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *buf = 138412290;
      v14 = objc_opt_class();
      v6 = v14;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Performing startup for middleware: %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__FCCKPrivateDatabase__continueStartUp__block_invoke;
    v10[3] = &unk_1E7C36C80;
    v11 = firstObject;
    selfCopy = self;
    v7 = firstObject;
    [v7 performStartUpForDatabase:self completion:v10];

    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69E9840];

  [(FCCKPrivateDatabase *)self _finishStartUpWithError:?];
}

- (void)t_performStartUpWithCompletion:(uint64_t)completion
{
  if (completion)
  {
    v3 = *(completion + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__FCCKPrivateDatabase_t_performStartUpWithCompletion___block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = completion;
    v4 = a2;
    dispatch_async(v3, block);
    v5 = *(completion + 152);
    v6 = *(completion + 88);
    v7 = v5;
    dispatch_group_notify(v7, v6, v4);
  }
}

void __39__FCCKPrivateDatabase__continueStartUp__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    *buf = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v3;
    v7 = v16;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Finished startup for middleware: %@, result error %@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 88);
  }

  else
  {
    v9 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__FCCKPrivateDatabase__continueStartUp__block_invoke_145;
  v12[3] = &unk_1E7C36C58;
  v13 = v3;
  v14 = v8;
  v10 = v3;
  FCDispatchAsyncWithQualityOfService(v9, 25, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __39__FCCKPrivateDatabase__continueStartUp__block_invoke_145(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [(FCCKPrivateDatabase *)v2 _finishStartUpWithError:v3];
  }

  else
  {
    if (v2)
    {
      v4 = *(v2 + 128);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 fc_arrayByRemovingFirstObject];
    v7 = *(a1 + 40);
    if (v7)
    {
      objc_storeStrong((v7 + 128), v6);
    }

    v8 = *(a1 + 40);

    [(FCCKPrivateDatabase *)v8 _continueStartUp];
  }
}

- (void)_finishStartUpWithError:(uint64_t)error
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    v4 = FCPrivateDataEncryptionLog;
    if (v3)
    {
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
      {
        v5 = @"disabled";
        if (*(error + 40) > 0)
        {
          v5 = @"enabled";
        }

        v14 = 138543618;
        v15 = v5;
        v16 = 2114;
        v17 = v3;
        _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "Private database startup failed with encryption %{public}@, error: %{public}@", &v14, 0x16u);
      }
    }

    else if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(error + 40);
      if (v6 <= 0)
      {
        v7 = @"disabled";
      }

      else
      {
        v7 = @"enabled";
      }

      v8 = v4;
      v9 = FCCKPrivateDatabaseVersionString(v6);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Private database startup succeeded with encryption %{public}@, version=%{public}@", &v14, 0x16u);
    }

    started = FCCKDatabaseStartUpResultFromError(v3);
    if (started == 2)
    {
      [FCCKPrivateDatabase _possiblySimulateCrashForError:v3 message:@"Private database startup failed with fatal error"];
    }

    *(error + 11) = 0;
    *(error + 160) = started;
    if ((*(error + 10) & 1) == 0)
    {
      *(error + 10) = 1;
      dispatch_group_leave(*(error + 152));
    }

    if (started)
    {
      ++*(error + 168);
      date = [MEMORY[0x1E695DF00] date];
      v12 = *(error + 176);
      *(error + 176) = date;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_preflightRecordsInDatabaseChangesOperation:(uint64_t)operation
{
  v3 = a2;
  recordZoneWithIDChangedBlock = [v3 recordZoneWithIDChangedBlock];
  v5 = recordZoneWithIDChangedBlock;
  if (recordZoneWithIDChangedBlock)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__FCCKPrivateDatabase__preflightRecordsInDatabaseChangesOperation___block_invoke;
    v14[3] = &unk_1E7C3FBB0;
    v14[4] = operation;
    v15 = recordZoneWithIDChangedBlock;
    [v3 setRecordZoneWithIDChangedBlock:v14];
  }

  recordZoneWithIDWasDeletedBlock = [v3 recordZoneWithIDWasDeletedBlock];
  v7 = recordZoneWithIDWasDeletedBlock;
  if (recordZoneWithIDWasDeletedBlock)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__FCCKPrivateDatabase__preflightRecordsInDatabaseChangesOperation___block_invoke_2;
    v12[3] = &unk_1E7C3FBB0;
    v12[4] = operation;
    v13 = recordZoneWithIDWasDeletedBlock;
    [v3 setRecordZoneWithIDWasDeletedBlock:v12];
  }

  fetchDatabaseChangesCompletionBlock = [v3 fetchDatabaseChangesCompletionBlock];
  v9 = fetchDatabaseChangesCompletionBlock;
  if (fetchDatabaseChangesCompletionBlock)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__FCCKPrivateDatabase__preflightRecordsInDatabaseChangesOperation___block_invoke_3;
    v10[3] = &unk_1E7C3FBD8;
    v10[4] = operation;
    v11 = fetchDatabaseChangesCompletionBlock;
    [v3 setFetchDatabaseChangesCompletionBlock:v10];
  }
}

- (id)_mapRecords:(char)records toClient:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if ((records & 1) == 0)
    {
      v7 = v5;
      v8 = *(self + 80);
      if (v8)
      {
      }

      else if (*(self + 40) <= 0)
      {
        NSClassFromString(&cfstr_Xctest.isa);
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__FCCKPrivateDatabase__mapRecords_toClient___block_invoke;
    v11[3] = &unk_1E7C3FCA0;
    recordsCopy = records;
    v11[4] = self;
    v9 = [(FCCKPrivateDatabase *)self _mapObjects:v6 toClient:records withBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_mapRecordIDs:(char)ds toClient:
{
  if (self)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__FCCKPrivateDatabase__mapRecordIDs_toClient___block_invoke;
    v5[3] = &unk_1E7C3FC50;
    dsCopy = ds;
    v5[4] = self;
    self = [(FCCKPrivateDatabase *)self _mapObjects:a2 toClient:ds withBlock:v5];
    v3 = vars8;
  }

  return self;
}

void __58__FCCKPrivateDatabase__preflightRecordsInModifyOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v12 = [(FCCKPrivateDatabase *)v7 _mapRecords:a2 toClient:1];
  v10 = [(FCCKPrivateDatabase *)*(a1 + 32) _mapRecordIDs:v9 toClient:1];

  v11 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientError:v8];

  (*(*(a1 + 40) + 16))();
}

- (id)_serverToClientError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    v5 = v3;
    v6 = v5;
    if (v5)
    {
      domain = [v5 domain];
      v8 = [domain isEqualToString:*MEMORY[0x1E695B740]];

      if (v8)
      {
        userInfo = [v6 userInfo];
        v10 = *MEMORY[0x1E695B798];
        v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B798]];
        v12 = *MEMORY[0x1E695B7B0];
        v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B7B0]];
        v31 = *MEMORY[0x1E695B7C0];
        v14 = [userInfo objectForKeyedSubscript:?];
        v32 = *MEMORY[0x1E695B7B8];
        v15 = [userInfo objectForKeyedSubscript:?];
        v16 = v15;
        if (v11)
        {
          v17 = 0;
        }

        else
        {
          v17 = v13 == 0;
        }

        if (!v17 || v14 != 0 || v15 != 0)
        {
          v33 = v13;
          v20 = [userInfo mutableCopy];
          if (v11)
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __44__FCCKPrivateDatabase__serverToClientError___block_invoke;
            v34[3] = &unk_1E7C3FD18;
            v34[4] = error;
            [v11 fc_dictionaryByTransformingKeysWithBlock:v34];
            v21 = v30 = v11;
            [v20 setObject:v21 forKeyedSubscript:v10];

            v11 = v30;
          }

          if (v33)
          {
            v22 = [(FCCKPrivateDatabase *)error _serverToClientRecord:v33];
            [v20 setObject:v22 forKeyedSubscript:v12];
          }

          v23 = v20;
          if (v14)
          {
            v24 = [(FCCKPrivateDatabase *)error _serverToClientRecord:v14];
            [v20 setObject:v24 forKeyedSubscript:v31];
          }

          v13 = v33;
          if (v16)
          {
            v25 = [(FCCKPrivateDatabase *)error _serverToClientRecord:v16];
            [v23 setObject:v25 forKeyedSubscript:v32];
          }

          v26 = MEMORY[0x1E696ABC0];
          domain2 = [v6 domain];
          v28 = [v26 errorWithDomain:domain2 code:objc_msgSend(v6 userInfo:{"code"), v23}];

          v6 = v28;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_mapRecordZoneIDs:(char)ds toClient:
{
  if (self)
  {
    self = [(FCCKPrivateDatabase *)self _mapRecordZoneIDs:a2 toClient:ds expectUnknownZones:0];
    v3 = vars8;
  }

  return self;
}

void __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientRecord:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)_serverToClientRecord:(uint64_t)record
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  firstObject = 0;
  if (record && v3)
  {
    v10[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(FCCKPrivateDatabase *)record _mapRecords:v6 toClient:1];
    firstObject = [v7 firstObject];
  }

  v8 = *MEMORY[0x1E69E9840];

  return firstObject;
}

void __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v16 = [(FCCKPrivateDatabase *)v6 _clientRecordID:v8];
  v9 = *(a1 + 32);
  v10 = v8;
  if (v9)
  {
    v20[0] = v7;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v7;
    v13 = [v11 arrayWithObjects:v20 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__FCCKPrivateDatabase__serverToClientRecordType_withRecordID___block_invoke;
    v17[3] = &unk_1E7C3FCF0;
    v18 = v10;
    v19 = v9;
    v14 = [(FCCKPrivateDatabase *)v9 _mapObjects:v13 toClient:1 withBlock:v17];
    v9 = [v14 firstObject];
  }

  (*(v5 + 16))(v5, v16, v9);
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_clientRecordID:(id)d
{
  dCopy = d;
  v10 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v9 = a2;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a2;
    v5 = [v3 arrayWithObjects:&v9 count:1];

    v6 = [(FCCKPrivateDatabase *)dCopy _mapRecordIDs:v5 toClient:1];
    dCopy = [v6 firstObject];
  }

  v7 = *MEMORY[0x1E69E9840];

  return dCopy;
}

void __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = [(FCCKPrivateDatabase *)v7 _serverToClientRecordZoneID:a2];
  (*(v6 + 16))(v6, v10, v9, v8);
}

- (id)_serverToClientRecordZoneID:(id)d
{
  dCopy = d;
  v10 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v9 = a2;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a2;
    v5 = [v3 arrayWithObjects:&v9 count:1];

    v6 = [(FCCKPrivateDatabase *)dCopy _mapRecordZoneIDs:v5 toClient:1];
    dCopy = [v6 firstObject];
  }

  v7 = *MEMORY[0x1E69E9840];

  return dCopy;
}

void __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v17 = [(FCCKPrivateDatabase *)v12 _serverToClientRecordZoneID:a2];
  v16 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientError:v13];

  (*(v11 + 16))(v11, v17, v15, v14, a5, v16);
}

void __69__FCCKPrivateDatabase__preflightRecordsInRecordZoneChangesOperation___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientError:a2];
  (*(v2 + 16))(v2, v3);
}

void __67__FCCKPrivateDatabase__preflightRecordsInDatabaseChangesOperation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [FCCKPrivateDatabase _serverToClientRecordZoneID:a2 expectUnknownZones:?];
  (*(v2 + 16))(v2, v3);
}

- (id)_serverToClientRecordZoneID:(id)d expectUnknownZones:(void *)zones
{
  dCopy = d;
  v10 = *MEMORY[0x1E69E9840];
  if (d)
  {
    zonesCopy = zones;
    v3 = MEMORY[0x1E695DEC8];
    zonesCopy2 = zones;
    v5 = [v3 arrayWithObjects:&zonesCopy count:1];

    v6 = [(FCCKPrivateDatabase *)dCopy _mapRecordZoneIDs:v5 toClient:1 expectUnknownZones:1];
    dCopy = [v6 firstObject];
  }

  v7 = *MEMORY[0x1E69E9840];

  return dCopy;
}

void __67__FCCKPrivateDatabase__preflightRecordsInDatabaseChangesOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [FCCKPrivateDatabase _serverToClientRecordZoneID:a2 expectUnknownZones:?];
  (*(v2 + 16))(v2, v3);
}

void __67__FCCKPrivateDatabase__preflightRecordsInDatabaseChangesOperation___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a2;
  v9 = [(FCCKPrivateDatabase *)v7 _serverToClientError:a4];
  (*(v6 + 16))(v6, v8, a3, v9);
}

void __57__FCCKPrivateDatabase__preflightRecordsInFetchOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__FCCKPrivateDatabase__preflightRecordsInFetchOperation___block_invoke_2;
  v13[3] = &unk_1E7C3FC00;
  v13[4] = *(a1 + 32);
  v14 = v8;
  v9 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientError:v6];

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v10, v11, v12);
}

void __57__FCCKPrivateDatabase__preflightRecordsInFetchOperation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = [(FCCKPrivateDatabase *)v5 _clientRecordID:a2];
  v7 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientRecord:v6];

  if (v9)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];
  }
}

void __63__FCCKPrivateDatabase__preflightZonesIDsInFetchZonesOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientError:a3];
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__FCCKPrivateDatabase__preflightZonesIDsInFetchZonesOperation___block_invoke_2;
    v11[3] = &unk_1E7C3FC28;
    v11[4] = *(a1 + 32);
    v12 = v7;
    v8 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v6, v9, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __63__FCCKPrivateDatabase__preflightZonesIDsInFetchZonesOperation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v14 = [(FCCKPrivateDatabase *)v5 _serverToClientRecordZoneID:a2];
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v8;
  v10 = 0;
  if (v8 && v7)
  {
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = [(FCCKPrivateDatabase *)v7 _mapZones:v11 toClient:1];
    v10 = [v12 firstObject];
  }

  if (v14 && v10)
  {
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_mapZones:(char)zones toClient:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if ((zones & 1) == 0)
    {
      v7 = v5;
      v8 = *(self + 80);
      if (v8)
      {
      }

      else if (*(self + 40) <= 0)
      {
        NSClassFromString(&cfstr_Xctest.isa);
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__FCCKPrivateDatabase__mapZones_toClient___block_invoke;
    v11[3] = &unk_1E7C3FCC8;
    zonesCopy = zones;
    v11[4] = self;
    v9 = [(FCCKPrivateDatabase *)self _mapObjects:v6 toClient:zones withBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __63__FCCKPrivateDatabase__preflightZoneIDsInModifyZonesOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v12 = [(FCCKPrivateDatabase *)v7 _mapZones:a2 toClient:1];
  v10 = [(FCCKPrivateDatabase *)*(a1 + 32) _mapRecordZoneIDs:v9 toClient:1];

  v11 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientError:v8];

  (*(*(a1 + 40) + 16))();
}

id __46__FCCKPrivateDatabase__mapRecordIDs_toClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v14 = 0;
    v7 = [a3 serverToClientRecordID:v5 inDatabase:v6 error:&v14];
    v8 = v14;
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = FCPrivateDataEncryptionLog;
    if (!os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v8;
    v10 = "Failed to map server record ID %{public}@ to client with error: %{public}@";
    goto LABEL_12;
  }

  v13 = 0;
  v7 = [a3 clientToServerRecordID:v5 inDatabase:v6 error:&v13];
  v8 = v13;
  if (v7)
  {
    goto LABEL_8;
  }

  v9 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v8;
    v10 = "Failed to map client record ID %{public}@ to server with error: %{public}@";
LABEL_12:
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
  }

LABEL_7:
  v7 = 0;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_mapObjects:(char)objects toClient:(void *)client withBlock:
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a2;
  clientCopy = client;
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v25 = *(self + 144);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v23 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v31 + 1) + 8 * i) copy];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        if (objects)
        {
          reverseObjectEnumerator = [v25 reverseObjectEnumerator];
        }

        else
        {
          reverseObjectEnumerator = v25;
        }

        v11 = reverseObjectEnumerator;
        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
LABEL_11:
          v15 = 0;
          v16 = v9;
          while (1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v27 + 1) + 8 * v15);
            v18 = objc_autoreleasePoolPush();
            v9 = clientCopy[2](clientCopy, v16, v17);

            objc_autoreleasePoolPop(v18);
            if (!v9)
            {
              break;
            }

            ++v15;
            v16 = v9;
            if (v13 == v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v13)
              {
                goto LABEL_11;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {

          if (!v9)
          {
            continue;
          }

LABEL_19:
          [v21 addObject:v9];
          v11 = v9;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v26);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_mapRecordZoneIDs:(char)ds toClient:(char)client expectUnknownZones:
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__FCCKPrivateDatabase__mapRecordZoneIDs_toClient_expectUnknownZones___block_invoke;
  v6[3] = &unk_1E7C3FC78;
  dsCopy = ds;
  v6[4] = self;
  clientCopy = client;
  v4 = [(FCCKPrivateDatabase *)self _mapObjects:a2 toClient:ds withBlock:v6];

  return v4;
}

id __69__FCCKPrivateDatabase__mapRecordZoneIDs_toClient_expectUnknownZones___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 zoneName];
  v8 = [v7 isEqualToString:*MEMORY[0x1E695B800]];

  if (v8)
  {
    v9 = v5;
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v17 = 0;
    v9 = [v6 serverToClientRecordZoneID:v5 inDatabase:v10 error:&v17];
    v11 = v17;
    if (v9)
    {
      goto LABEL_11;
    }

    if (*(a1 + 41))
    {
      goto LABEL_11;
    }

    v12 = FCPrivateDataEncryptionLog;
    if (!os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v11;
    v13 = "Failed to map server record zone ID %{public}@ to client with error: %{public}@";
  }

  else
  {
    v16 = 0;
    v9 = [v6 clientToServerRecordZoneID:v5 inDatabase:v10 error:&v16];
    v11 = v16;
    if (v9)
    {
      goto LABEL_11;
    }

    if (*(a1 + 41))
    {
      goto LABEL_11;
    }

    v12 = FCPrivateDataEncryptionLog;
    if (!os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v11;
    v13 = "Failed to map client record zone ID %{public}@ to server with error: %{public}@";
  }

  _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
LABEL_11:

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_clientToServerRecord:(uint64_t)record
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  firstObject = 0;
  if (record && v3)
  {
    v10[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(FCCKPrivateDatabase *)record _mapRecords:v6 toClient:0];
    firstObject = [v7 firstObject];
  }

  v8 = *MEMORY[0x1E69E9840];

  return firstObject;
}

id __44__FCCKPrivateDatabase__mapRecords_toClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v14 = 0;
    v7 = [a3 serverToClientRecord:v5 inDatabase:v6 error:&v14];
    v8 = v14;
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = FCPrivateDataEncryptionLog;
    if (!os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v8;
    v10 = "Failed to map server record %{public}@ to client with error: %{public}@";
    goto LABEL_12;
  }

  v13 = 0;
  v7 = [a3 clientToServerRecord:v5 inDatabase:v6 error:&v13];
  v8 = v13;
  if (v7)
  {
    goto LABEL_8;
  }

  v9 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v8;
    v10 = "Failed to map client record %{public}@ to server with error: %{public}@";
LABEL_12:
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
  }

LABEL_7:
  v7 = 0;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

id __42__FCCKPrivateDatabase__mapZones_toClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 zoneID];
  v8 = [v7 zoneName];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695B800]];

  if (v9)
  {
    v10 = v5;
    goto LABEL_10;
  }

  v11 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v18 = 0;
    v10 = [v6 serverToClientRecordZone:v5 inDatabase:v11 error:&v18];
    v12 = v18;
    if (v10)
    {
      goto LABEL_9;
    }

    v13 = FCPrivateDataEncryptionLog;
    if (!os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v12;
    v14 = "Failed to map server record zone %{public}@ to client with error: %{public}@";
  }

  else
  {
    v17 = 0;
    v10 = [v6 clientToServerRecordZone:v5 inDatabase:v11 error:&v17];
    v12 = v17;
    if (v10)
    {
      goto LABEL_9;
    }

    v13 = FCPrivateDataEncryptionLog;
    if (!os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v12;
    v14 = "Failed to map client record zone %{public}@ to server with error: %{public}@";
  }

  _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
LABEL_9:

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

id __62__FCCKPrivateDatabase__serverToClientRecordType_withRecordID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = 0;
  v8 = [a3 serverToClientRecordType:v5 withRecordID:v6 inDatabase:v7 error:&v14];
  v9 = v14;
  if (!v8)
  {
    v10 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543874;
      v16 = v5;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "Failed to map server record type %{public}@ and ID %{public}@ to client with error: %{public}@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

id __44__FCCKPrivateDatabase__serverToClientError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(FCCKPrivateDatabase *)*(a1 + 32) _clientRecordID:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(FCCKPrivateDatabase *)*(a1 + 32) _serverToClientRecordZoneID:v3];
    }

    else
    {
      v4 = v3;
    }
  }

  v5 = v4;

  return v5;
}

- (void)zoneIDsUsingSecureContainer
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = selfCopy[10];
    v4 = selfCopy[5];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __50__FCCKPrivateDatabase_zoneIDsUsingSecureContainer__block_invoke;
    v10 = &unk_1E7C3FD40;
    v11 = v2;
    v12 = selfCopy;
    v5 = v2;
    [(FCCKPrivateDatabaseSchema *)v3 enumerateZoneSchemasForVersion:v4 withBlock:&v7];
    selfCopy = [v5 allObjects];
  }

  return selfCopy;
}

void __50__FCCKPrivateDatabase_zoneIDsUsingSecureContainer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(v3 + 10) == 1)
  {
    v19 = v3;
    v4 = objc_alloc(MEMORY[0x1E695BA90]);
    v5 = v19[2];
    v6 = *MEMORY[0x1E695B728];
    v7 = [v4 initWithZoneName:v5 ownerName:*MEMORY[0x1E695B728]];

    v8 = [v7 zoneName];
    v9 = [v8 isEqualToString:*MEMORY[0x1E695B800]];

    if (v9)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = *(v10 + 80);
      }

      else
      {
        v11 = 0;
      }

      v12 = [(FCCKPrivateDatabaseSchema *)v11 mappingFromRecordZoneID:v7 toVersion:0];
      v13 = objc_alloc(MEMORY[0x1E695BA90]);
      v14 = [v12 toZoneSchema];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 16);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v18 = [v13 initWithZoneName:v17 ownerName:v6];

      [*(a1 + 32) addObject:v18];
    }

    v3 = v19;
  }
}

- (void)takeDatabaseOfflineDueToError:(uint64_t)error
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    v4 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "Taking database offline due to error: %{public}@", buf, 0xCu);
    }

    v5 = *(error + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__FCCKPrivateDatabase_takeDatabaseOfflineDueToError___block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = error;
    dispatch_sync(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __53__FCCKPrivateDatabase_takeDatabaseOfflineDueToError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  [v3 cancelAllOperations];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  result = [v5 cancelAllOperations];
  v7 = *(a1 + 32);
  if (v7)
  {
    *(v7 + 160) = 2;
  }

  return result;
}

- (void)reportRecoverableStartUpError:(uint64_t)error
{
  if (error)
  {
    [FCCKPrivateDatabase _possiblySimulateCrashForError:a2 message:@"Private database startup failed with recoverable error"];
  }
}

- (void)_possiblySimulateCrashForError:(void *)error message:(void *)message
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  messageCopy = message;
  if (NFInternalBuild())
  {
    v5 = NewsCoreUserDefaults();
    if (([v5 BOOLForKey:@"disable_simulated_crashes_for_encryption"] & 1) != 0 || NSClassFromString(&cfstr_Xctest.isa))
    {
    }

    else
    {
      v7 = FCShouldErrorBeExcludedFromSimulatedCrashes(errorCopy);

      if ((v7 & 1) == 0)
      {
        v8 = FCPrivateDataEncryptionCrashLog;
        if (os_log_type_enabled(FCPrivateDataEncryptionCrashLog, OS_LOG_TYPE_INFO))
        {
          v9 = 138543618;
          v10 = messageCopy;
          v11 = 2114;
          v12 = errorCopy;
          _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
          v8 = FCPrivateDataEncryptionCrashLog;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v9 = 138543618;
          v10 = messageCopy;
          v11 = 2114;
          v12 = errorCopy;
          _os_log_fault_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@", &v9, 0x16u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportEncryptionMigrationError:(uint64_t)error
{
  if (error)
  {
    [FCCKPrivateDatabase _possiblySimulateCrashForError:a2 message:@"Private database encryption migration failed with error"];
  }
}

- (void)reportPostMigrationCleanupError:(uint64_t)error
{
  if (error)
  {
    [FCCKPrivateDatabase _possiblySimulateCrashForError:a2 message:@"Private database encryption data cleanup failed with error"];
  }
}

uint64_t __64__FCCKPrivateDatabase__privateDatabaseDeprecatedRecordTestBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  v4 = [v3 isEqualToString:@"Subscription"];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:@"subscriptionType"];
    v6 = [v5 isEqualToString:@"pending"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v2 recordType];
  v8 = [v7 isEqualToString:@"ReadingHistoryItem"];

  if (v8)
  {
    v9 = [v2 objectForKeyedSubscript:@"articleID"];
    v10 = v9 == 0;

    v6 |= v10;
  }

  v11 = [v2 recordType];
  v12 = [v11 isEqualToString:@"ReadingListEntry"];

  if (v12)
  {
    v13 = [v2 recordID];
    v14 = [v13 recordName];
    v15 = [v14 containsString:@"http"];

    v6 |= v15;
  }

  return v6 & 1;
}

- (void)fetchAllDatabaseChangesWithServerChangeToken:(id)token qualityOfService:(int64_t)service completionQueue:(id)queue completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = objc_alloc_init(FCCKPrivateFetchDatabaseChangesOperation);
    [(FCCKPrivateFetchDatabaseChangesOperation *)v13 setPreviousServerChangeToken:tokenCopy];
    [(FCOperation *)v13 setQualityOfService:service];
    if (service == 9)
    {
      v14 = -1;
    }

    else
    {
      v14 = service == 33 || service == 25;
    }

    [(FCOperation *)v13 setRelativePriority:v14];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __130__FCCKPrivateDatabase_Additions__fetchAllDatabaseChangesWithServerChangeToken_qualityOfService_completionQueue_completionHandler___block_invoke;
    v17[3] = &unk_1E7C40E20;
    v17[4] = self;
    serviceCopy = service;
    v18 = queueCopy;
    v20 = handlerCopy;
    v19 = tokenCopy;
    [(FCCKPrivateFetchDatabaseChangesOperation *)v13 setFetchDatabaseChangesCompletionBlock:v17];
    [(FCCKPrivateDatabase *)self addOperation:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v23 = "[FCCKPrivateDatabase(Additions) fetchAllDatabaseChangesWithServerChangeToken:qualityOfService:completionQueue:completionHandler:]";
    v24 = 2080;
    v25 = "FCCKPrivateDatabase+Additions.m";
    v26 = 1024;
    v27 = 25;
    v28 = 2114;
    v29 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __130__FCCKPrivateDatabase_Additions__fetchAllDatabaseChangesWithServerChangeToken_qualityOfService_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 fc_isCKErrorWithCode:21];
    v17 = FCCloudKitLog;
    if (v16)
    {
      if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "Database changes server change token expired, resetting the token and trying again", buf, 2u);
      }

      [*(a1 + 32) fetchAllDatabaseChangesWithServerChangeToken:0 qualityOfService:*(a1 + 64) completionQueue:*(a1 + 40) completionHandler:*(a1 + 56)];
    }

    else
    {
      if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v15;
        _os_log_error_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_ERROR, "Error fetching database changes: %{public}@", buf, 0xCu);
      }

      v22 = *(a1 + 56);
      if (v22)
      {
        v23 = *(a1 + 40);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __130__FCCKPrivateDatabase_Additions__fetchAllDatabaseChangesWithServerChangeToken_qualityOfService_completionQueue_completionHandler___block_invoke_4;
        block[3] = &unk_1E7C379C8;
        v35 = v22;
        dispatch_async(v23, block);
      }
    }

    goto LABEL_20;
  }

  v18 = FCCloudKitLog;
  if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 48);
    *buf = 138412290;
    v37 = v19;
    _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Fetched database changes with serverChangeToken: %@", buf, 0xCu);
  }

  if (!v11)
  {
    v20 = 0;
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v20 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = [MEMORY[0x1E695DFD8] setWithArray:v12];
LABEL_17:
  v24 = *(a1 + 56);
  if (v24)
  {
    v25 = *(a1 + 40);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __130__FCCKPrivateDatabase_Additions__fetchAllDatabaseChangesWithServerChangeToken_qualityOfService_completionQueue_completionHandler___block_invoke_7;
    v27[3] = &unk_1E7C40DF8;
    v32 = v24;
    v28 = 0;
    v29 = v20;
    v30 = v21;
    v31 = v13;
    v33 = a5;
    dispatch_async(v25, v27);
  }

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
}

void __137__FCCKPrivateDatabase_Additions__fetchChangesForRecordZoneID_changeToken_desiredKeys_fetchAllChanges_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if ([a6 fc_isCKErrorWithCode:21])
  {
    if (!*(a1 + 32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"how did a nil change token expire?"];
      v16 = 136315906;
      v17 = "[FCCKPrivateDatabase(Additions) fetchChangesForRecordZoneID:changeToken:desiredKeys:fetchAllChanges:qualityOfService:completionHandler:]_block_invoke";
      v18 = 2080;
      v19 = "FCCKPrivateDatabase+Additions.m";
      v20 = 1024;
      v21 = 101;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
    }

    [*(a1 + 40) fetchChangesForRecordZoneID:*(a1 + 48) changeToken:0 desiredKeys:*(a1 + 56) fetchAllChanges:*(a1 + 80) qualityOfService:*(a1 + 72) completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64), a6 == 0, v11, v12, 0, v13, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end