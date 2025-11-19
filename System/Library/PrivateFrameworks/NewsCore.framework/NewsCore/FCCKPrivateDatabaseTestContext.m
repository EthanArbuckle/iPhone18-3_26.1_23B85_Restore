@interface FCCKPrivateDatabaseTestContext
- (FCCKPrivateDatabaseTestContext)init;
@end

@implementation FCCKPrivateDatabaseTestContext

- (FCCKPrivateDatabaseTestContext)init
{
  v333[1] = *MEMORY[0x1E69E9840];
  v302.receiver = self;
  v302.super_class = FCCKPrivateDatabaseTestContext;
  v2 = [(FCCKPrivateDatabaseTestContext *)&v302 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695E0F0];
    v4 = [FCCKRecordSchema recordWithType:MEMORY[0x1E695E0F0] fields:?];
    v5 = [FCCKRecordSchema recordWithType:v3 fields:?];
    v6 = [FCCKZoneSchema zoneWithName:?];
    v301 = [FCCKZoneSchema zoneWithName:?];
    v7 = [FCCKZoneSchema zoneWithName:?];
    v300 = [FCCKZoneSchema zoneWithName:2 options:0 staticRecordNames:?];
    v299 = [FCCKZoneSchema zoneWithName:?];
    v298 = [FCCKZoneSchema zoneWithName:6 options:0 staticRecordNames:?];
    v293 = [FCCKZoneSchema zoneWithName:?];
    v292 = [FCCKZoneSchema zoneWithName:6 options:0 staticRecordNames:?];
    v333[0] = @"DefaultZoneStaticRecord_Client";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v333 count:1];
    v9 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v8 shouldUseSecureContainer:0];

    v332 = @"DefaultZoneStaticRecord_Server";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v332 count:1];
    v296 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v10 shouldUseSecureContainer:0];

    v331 = @"DefaultZoneStaticRecordSecure_Client";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v331 count:1];
    v295 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v11 shouldUseSecureContainer:0];

    v330 = @"DefaultZoneStaticRecordSecure_Server";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v330 count:1];
    v13 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v12 shouldUseSecureContainer:1];

    v14 = objc_alloc_init(TCKDatabase);
    tckDatabase = v2->_tckDatabase;
    v2->_tckDatabase = v14;

    v16 = objc_alloc_init(TCKDatabase);
    tckDatabaseWithZoneWidePCS = v2->_tckDatabaseWithZoneWidePCS;
    v2->_tckDatabaseWithZoneWidePCS = v16;

    v18 = objc_alloc_init(TCKDatabase);
    tckSecureDatabase = v2->_tckSecureDatabase;
    v2->_tckSecureDatabase = v18;

    objc_storeStrong(&v2->_ckDatabase, v2->_tckDatabase);
    objc_storeStrong(&v2->_ckDatabaseWithZoneWidePCS, v2->_tckDatabaseWithZoneWidePCS);
    objc_storeStrong(&v2->_ckSecureDatabase, v2->_tckSecureDatabase);
    v297 = v9;
    if (v9)
    {
      v20 = *(v9 + 16);
    }

    else
    {
      v20 = 0;
    }

    v284 = v20;
    if (v4)
    {
      v21 = *(v4 + 16);
    }

    else
    {
      v21 = 0;
    }

    v263 = v21;
    v262 = [FCPair pairWithFirst:v284 second:?];
    v329[0] = v262;
    if (v6)
    {
      v22 = *(v6 + 16);
    }

    else
    {
      v22 = 0;
    }

    v281 = v22;
    if (v4)
    {
      v23 = *(v4 + 16);
    }

    else
    {
      v23 = 0;
    }

    v261 = v23;
    v260 = [FCPair pairWithFirst:v281 second:?];
    v329[1] = v260;
    if (v7)
    {
      v24 = *(v7 + 16);
    }

    else
    {
      v24 = 0;
    }

    v279 = v24;
    if (v4)
    {
      v25 = *(v4 + 16);
    }

    else
    {
      v25 = 0;
    }

    v259 = v25;
    v258 = [FCPair pairWithFirst:v279 second:?];
    v329[2] = v258;
    if (v299)
    {
      v26 = v299[2];
    }

    else
    {
      v26 = 0;
    }

    v277 = v26;
    if (v4)
    {
      v27 = *(v4 + 16);
    }

    else
    {
      v27 = 0;
    }

    v257 = v27;
    v256 = [FCPair pairWithFirst:v277 second:?];
    v329[3] = v256;
    if (v293)
    {
      v28 = v293[2];
    }

    else
    {
      v28 = 0;
    }

    v275 = v28;
    if (v4)
    {
      v29 = *(v4 + 16);
    }

    else
    {
      v29 = 0;
    }

    v255 = v29;
    v254 = [FCPair pairWithFirst:v275 second:?];
    v329[4] = v254;
    v253 = [MEMORY[0x1E695DEC8] arrayWithObjects:v329 count:5];
    v30 = v9;
    if (v9)
    {
      v30 = *(v9 + 16);
    }

    v273 = v30;
    if (v4)
    {
      v31 = *(v4 + 16);
    }

    else
    {
      v31 = 0;
    }

    v252 = v31;
    v251 = [FCPair pairWithFirst:v273 second:?];
    v327[0] = v251;
    v32 = v296;
    if (v296)
    {
      v32 = v296[2];
    }

    v271 = v32;
    if (v5)
    {
      v33 = *(v5 + 16);
    }

    else
    {
      v33 = 0;
    }

    v250 = v33;
    v249 = [FCPair pairWithFirst:v271 second:?];
    v328[0] = v249;
    v34 = v295;
    if (v295)
    {
      v34 = v295[2];
    }

    v270 = v34;
    if (v4)
    {
      v35 = *(v4 + 16);
    }

    else
    {
      v35 = 0;
    }

    v248 = v35;
    v247 = [FCPair pairWithFirst:v270 second:?];
    v327[1] = v247;
    if (v13)
    {
      v36 = *(v13 + 16);
    }

    else
    {
      v36 = 0;
    }

    v269 = v36;
    if (v5)
    {
      v37 = *(v5 + 16);
    }

    else
    {
      v37 = 0;
    }

    v246 = v37;
    v245 = [FCPair pairWithFirst:v269 second:?];
    v328[1] = v245;
    if (v6)
    {
      v38 = *(v6 + 16);
    }

    else
    {
      v38 = 0;
    }

    v268 = v38;
    if (v4)
    {
      v39 = *(v4 + 16);
    }

    else
    {
      v39 = 0;
    }

    v244 = v39;
    v243 = [FCPair pairWithFirst:v268 second:?];
    v327[2] = v243;
    v40 = v301;
    if (v301)
    {
      v40 = v301[2];
    }

    v267 = v40;
    if (v5)
    {
      v41 = *(v5 + 16);
    }

    else
    {
      v41 = 0;
    }

    v242 = v41;
    v241 = [FCPair pairWithFirst:v267 second:?];
    v328[2] = v241;
    if (v7)
    {
      v42 = *(v7 + 16);
    }

    else
    {
      v42 = 0;
    }

    v266 = v42;
    if (v4)
    {
      v43 = *(v4 + 16);
    }

    else
    {
      v43 = 0;
    }

    v240 = v43;
    v239 = [FCPair pairWithFirst:v266 second:?];
    v327[3] = v239;
    v44 = v300;
    if (v300)
    {
      v44 = v300[2];
    }

    v265 = v44;
    if (v5)
    {
      v45 = *(v5 + 16);
    }

    else
    {
      v45 = 0;
    }

    v238 = v45;
    v237 = [FCPair pairWithFirst:v265 second:?];
    v328[3] = v237;
    if (v299)
    {
      v46 = v299[2];
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    if (v4)
    {
      v48 = *(v4 + 16);
    }

    else
    {
      v48 = 0;
    }

    v236 = v48;
    v235 = [FCPair pairWithFirst:v47 second:?];
    v327[4] = v235;
    v49 = v298;
    if (v298)
    {
      v49 = v298[2];
    }

    v264 = v49;
    v291 = v4;
    v288 = v13;
    if (v5)
    {
      v50 = *(v5 + 16);
    }

    else
    {
      v50 = 0;
    }

    v234 = v50;
    v233 = [FCPair pairWithFirst:v264 second:?];
    v328[4] = v233;
    if (v293)
    {
      v51 = v293[2];
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    v53 = v4;
    v294 = v7;
    if (v4)
    {
      v53 = *(v4 + 16);
    }

    v54 = v53;
    v55 = [FCPair pairWithFirst:v52 second:v54];
    v327[5] = v55;
    v56 = v292;
    if (v292)
    {
      v56 = v292[2];
    }

    v57 = v56;
    v289 = v6;
    v290 = v5;
    if (v5)
    {
      v58 = *(v5 + 16);
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;
    v60 = [FCPair pairWithFirst:v57 second:v59];
    v328[5] = v60;
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v328 forKeys:v327 count:6];
    v287 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v253 V2Changes:v61 V3Changes:0 V4Changes:0];

    if (v297)
    {
      v62 = v297[2];
    }

    else
    {
      v62 = 0;
    }

    v285 = v62;
    v282 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v326[0] = v282;
    if (v297)
    {
      v63 = v297[2];
    }

    else
    {
      v63 = 0;
    }

    v280 = v63;
    v278 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v326[1] = v278;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v326 count:2];
    if (v297)
    {
      v65 = v297[2];
    }

    else
    {
      v65 = 0;
    }

    v276 = v65;
    v274 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v324[0] = v274;
    v66 = v296;
    if (v296)
    {
      v66 = v296[2];
    }

    v272 = v66;
    v67 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v325[0] = v67;
    v68 = v295;
    if (v295)
    {
      v68 = v295[2];
    }

    v69 = v68;
    v70 = [FCPair pairWithFirst:v69 second:@"DefaultZoneStaticRecordSecure_Client"];
    v324[1] = v70;
    if (v288)
    {
      v71 = v288[2];
    }

    else
    {
      v71 = 0;
    }

    v72 = v71;
    v73 = [FCPair pairWithFirst:v72 second:@"DefaultZoneStaticRecordSecure_Server"];
    v325[1] = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v325 forKeys:v324 count:2];
    v75 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v64 V2Changes:v74 V3Changes:0 V4Changes:0];

    v323[0] = v289;
    v323[1] = v301;
    v323[2] = v294;
    v323[3] = v300;
    v323[4] = v299;
    v323[5] = v298;
    v323[6] = v293;
    v323[7] = v292;
    v323[8] = v297;
    v323[9] = v296;
    v323[10] = v295;
    v323[11] = v288;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v323 count:12];
    v322[0] = v291;
    v322[1] = v290;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v322 count:2];
    v286 = v75;
    v78 = [FCCKPrivateDatabaseSchema databaseSchemaWithZones:v76 records:v77 recordTypeVersionMapping:v287 recordNameVersionMapping:v75];

    v79 = [[FCCKDatabaseEncryptionMiddleware alloc] initWithEncryptionSchema:v78 recordNameCipher:0];
    v80 = [FCCKPrivateDatabase alloc];
    ckDatabase = v2->_ckDatabase;
    ckDatabaseWithZoneWidePCS = v2->_ckDatabaseWithZoneWidePCS;
    ckSecureDatabase = v2->_ckSecureDatabase;
    v283 = v79;
    v321 = v79;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v321 count:1];
    v85 = [(FCCKPrivateDatabase *)&v80->super.isa t_initWithContainers:ckDatabase database:ckDatabaseWithZoneWidePCS databaseWithZoneWidePCS:ckSecureDatabase secureDatabase:v78 schema:v84 middleware:0 encryptionDelegate:0 networkBehaviorMonitor:?];
    database = v2->_database;
    v2->_database = v85;

    v87 = v2->_database;
    if (v87)
    {
      v87->_currentVersion = 3;
    }

    v88 = objc_alloc(MEMORY[0x1E695BA90]);
    if (v289)
    {
      v89 = v289[2];
    }

    else
    {
      v89 = 0;
    }

    v90 = v89;
    v91 = *MEMORY[0x1E695B728];
    v92 = [v88 initWithZoneName:v90 ownerName:*MEMORY[0x1E695B728]];
    clientZoneID = v2->_clientZoneID;
    v2->_clientZoneID = v92;

    v94 = objc_alloc(MEMORY[0x1E695BA90]);
    v95 = v294;
    if (v294)
    {
      v95 = v294[2];
    }

    v96 = v95;
    v97 = [v94 initWithZoneName:v96 ownerName:v91];
    clientZoneIDWithZoneWidePCS = v2->_clientZoneIDWithZoneWidePCS;
    v2->_clientZoneIDWithZoneWidePCS = v97;

    v99 = objc_alloc(MEMORY[0x1E695BA90]);
    v100 = v299;
    if (v299)
    {
      v100 = v299[2];
    }

    v101 = v100;
    v102 = [v99 initWithZoneName:v101 ownerName:v91];
    clientZoneIDSecure = v2->_clientZoneIDSecure;
    v2->_clientZoneIDSecure = v102;

    v319 = *&v2->_clientZoneID;
    v320 = v2->_clientZoneIDSecure;
    v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v319 count:3];
    allClientZoneIDs = v2->_allClientZoneIDs;
    v2->_allClientZoneIDs = v104;

    v106 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_clientZoneID];
    clientZone = v2->_clientZone;
    v2->_clientZone = v106;

    v108 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_clientZoneIDWithZoneWidePCS];
    clientZoneWithZoneWidePCS = v2->_clientZoneWithZoneWidePCS;
    v2->_clientZoneWithZoneWidePCS = v108;

    v110 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_clientZoneIDSecure];
    clientZoneSecure = v2->_clientZoneSecure;
    v2->_clientZoneSecure = v110;

    v317 = *&v2->_clientZone;
    v318 = v2->_clientZoneSecure;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v317 count:3];
    allClientZones = v2->_allClientZones;
    v2->_allClientZones = v112;

    v114 = [(NSArray *)v2->_allClientZones fc_dictionaryWithKeyBlock:&__block_literal_global_150];
    allClientZonesByID = v2->_allClientZonesByID;
    v2->_allClientZonesByID = v114;

    v116 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_clientZoneID];
    clientRecordID = v2->_clientRecordID;
    v2->_clientRecordID = v116;

    v118 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_clientZoneIDWithZoneWidePCS];
    clientRecordIDWithZoneWidePCS = v2->_clientRecordIDWithZoneWidePCS;
    v2->_clientRecordIDWithZoneWidePCS = v118;

    v120 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_clientZoneIDSecure];
    clientRecordIDSecure = v2->_clientRecordIDSecure;
    v2->_clientRecordIDSecure = v120;

    v315 = *&v2->_clientRecordID;
    v316 = v2->_clientRecordIDSecure;
    v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v315 count:3];
    allClientRecordIDs = v2->_allClientRecordIDs;
    v2->_allClientRecordIDs = v122;

    v124 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v291)
    {
      v125 = v291[2];
    }

    else
    {
      v125 = 0;
    }

    v126 = v125;
    v127 = [v124 initWithRecordType:v126 recordID:v2->_clientRecordID];
    clientRecord = v2->_clientRecord;
    v2->_clientRecord = v127;

    v129 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v291)
    {
      v130 = v291[2];
    }

    else
    {
      v130 = 0;
    }

    v131 = v130;
    v132 = [v129 initWithRecordType:v131 recordID:v2->_clientRecordIDWithZoneWidePCS];
    clientRecordWithZoneWidePCS = v2->_clientRecordWithZoneWidePCS;
    v2->_clientRecordWithZoneWidePCS = v132;

    v134 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v291)
    {
      v135 = v291[2];
    }

    else
    {
      v135 = 0;
    }

    v136 = v135;
    v137 = [v134 initWithRecordType:v136 recordID:v2->_clientRecordIDSecure];
    clientRecordSecure = v2->_clientRecordSecure;
    v2->_clientRecordSecure = v137;

    v313 = *&v2->_clientRecord;
    v314 = v2->_clientRecordSecure;
    v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v313 count:3];
    allClientRecords = v2->_allClientRecords;
    v2->_allClientRecords = v139;

    v141 = [(NSArray *)v2->_allClientRecords fc_dictionaryWithKeyBlock:&__block_literal_global_59_0];
    allClientRecordsByID = v2->_allClientRecordsByID;
    v2->_allClientRecordsByID = v141;

    v143 = objc_alloc(MEMORY[0x1E695BA90]);
    v144 = v301;
    if (v301)
    {
      v144 = v301[2];
    }

    v145 = v144;
    v146 = [v143 initWithZoneName:v145 ownerName:v91];
    serverZoneID = v2->_serverZoneID;
    v2->_serverZoneID = v146;

    v148 = objc_alloc(MEMORY[0x1E695BA90]);
    v149 = v300;
    if (v300)
    {
      v149 = v300[2];
    }

    v150 = v149;
    v151 = [v148 initWithZoneName:v150 ownerName:v91];
    serverZoneIDWithZoneWidePCS = v2->_serverZoneIDWithZoneWidePCS;
    v2->_serverZoneIDWithZoneWidePCS = v151;

    v153 = objc_alloc(MEMORY[0x1E695BA90]);
    v154 = v298;
    if (v298)
    {
      v154 = v298[2];
    }

    v155 = v154;
    v156 = [v153 initWithZoneName:v155 ownerName:v91];
    serverZoneIDSecure = v2->_serverZoneIDSecure;
    v2->_serverZoneIDSecure = v156;

    v311 = *&v2->_serverZoneID;
    v312 = v2->_serverZoneIDSecure;
    v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v311 count:3];
    allServerZoneIDs = v2->_allServerZoneIDs;
    v2->_allServerZoneIDs = v158;

    v160 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_serverZoneID];
    serverZone = v2->_serverZone;
    v2->_serverZone = v160;

    v162 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_serverZoneIDWithZoneWidePCS];
    serverZoneWithZoneWidePCS = v2->_serverZoneWithZoneWidePCS;
    v2->_serverZoneWithZoneWidePCS = v162;

    v164 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_serverZoneIDSecure];
    serverZoneSecure = v2->_serverZoneSecure;
    v2->_serverZoneSecure = v164;

    v309 = *&v2->_serverZone;
    v310 = v2->_serverZoneSecure;
    v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v309 count:3];
    allServerZones = v2->_allServerZones;
    v2->_allServerZones = v166;

    v168 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_serverZoneID];
    serverRecordID = v2->_serverRecordID;
    v2->_serverRecordID = v168;

    v170 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_serverZoneIDWithZoneWidePCS];
    serverRecordIDWithZoneWidePCS = v2->_serverRecordIDWithZoneWidePCS;
    v2->_serverRecordIDWithZoneWidePCS = v170;

    v172 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_serverZoneIDSecure];
    serverRecordIDSecure = v2->_serverRecordIDSecure;
    v2->_serverRecordIDSecure = v172;

    v307 = *&v2->_serverRecordID;
    v308 = v2->_serverRecordIDSecure;
    v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v307 count:3];
    allServerRecordIDs = v2->_allServerRecordIDs;
    v2->_allServerRecordIDs = v174;

    v176 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v177 = v290[2];
    }

    else
    {
      v177 = 0;
    }

    v178 = v177;
    v179 = [v176 initWithRecordType:v178 recordID:v2->_serverRecordID];
    serverRecord = v2->_serverRecord;
    v2->_serverRecord = v179;

    v181 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v182 = v290[2];
    }

    else
    {
      v182 = 0;
    }

    v183 = v182;
    v184 = [v181 initWithRecordType:v183 recordID:v2->_serverRecordIDWithZoneWidePCS];
    serverRecordWithZoneWidePCS = v2->_serverRecordWithZoneWidePCS;
    v2->_serverRecordWithZoneWidePCS = v184;

    v186 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v187 = v290[2];
    }

    else
    {
      v187 = 0;
    }

    v188 = v187;
    v189 = [v186 initWithRecordType:v188 recordID:v2->_serverRecordIDSecure];
    serverRecordSecure = v2->_serverRecordSecure;
    v2->_serverRecordSecure = v189;

    v305 = *&v2->_serverRecord;
    v306 = v2->_serverRecordSecure;
    v191 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v305 count:3];
    allServerRecords = v2->_allServerRecords;
    v2->_allServerRecords = v191;

    v193 = objc_alloc(MEMORY[0x1E695BA90]);
    v194 = [v193 initWithZoneName:*MEMORY[0x1E695B800] ownerName:v91];
    v195 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecord_Client" zoneID:v194];
    defaultZoneClientRecordID = v2->_defaultZoneClientRecordID;
    v2->_defaultZoneClientRecordID = v195;

    v197 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecordSecure_Client" zoneID:v194];
    defaultZoneClientRecordIDSecure = v2->_defaultZoneClientRecordIDSecure;
    v2->_defaultZoneClientRecordIDSecure = v197;

    v199 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecord_Server" zoneID:v194];
    defaultZoneServerRecordID = v2->_defaultZoneServerRecordID;
    v2->_defaultZoneServerRecordID = v199;

    v201 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecordSecure_Server" zoneID:v194];
    defaultZoneServerRecordIDSecure = v2->_defaultZoneServerRecordIDSecure;
    v2->_defaultZoneServerRecordIDSecure = v201;

    v203 = v2->_defaultZoneClientRecordIDSecure;
    v304[0] = v2->_defaultZoneClientRecordID;
    v304[1] = v203;
    v204 = [MEMORY[0x1E695DEC8] arrayWithObjects:v304 count:2];
    allDefaultZoneClientRecordIDs = v2->_allDefaultZoneClientRecordIDs;
    v2->_allDefaultZoneClientRecordIDs = v204;

    v206 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v291)
    {
      v207 = v291[2];
    }

    else
    {
      v207 = 0;
    }

    v208 = v207;
    v209 = [v206 initWithRecordType:v208 recordID:v2->_defaultZoneClientRecordID];
    defaultZoneClientRecord = v2->_defaultZoneClientRecord;
    v2->_defaultZoneClientRecord = v209;

    v211 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v291)
    {
      v212 = v291[2];
    }

    else
    {
      v212 = 0;
    }

    v213 = v212;
    v214 = [v211 initWithRecordType:v213 recordID:v2->_defaultZoneClientRecordIDSecure];
    defaultZoneClientRecordSecure = v2->_defaultZoneClientRecordSecure;
    v2->_defaultZoneClientRecordSecure = v214;

    v216 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v217 = v290[2];
    }

    else
    {
      v217 = 0;
    }

    v218 = v217;
    v219 = [v216 initWithRecordType:v218 recordID:v2->_defaultZoneServerRecordID];
    defaultZoneServerRecord = v2->_defaultZoneServerRecord;
    v2->_defaultZoneServerRecord = v219;

    v221 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v222 = v290[2];
    }

    else
    {
      v222 = 0;
    }

    v223 = v222;
    v224 = [v221 initWithRecordType:v223 recordID:v2->_defaultZoneServerRecordIDSecure];
    defaultZoneServerRecordSecure = v2->_defaultZoneServerRecordSecure;
    v2->_defaultZoneServerRecordSecure = v224;

    v226 = v2->_defaultZoneClientRecordSecure;
    v303[0] = v2->_defaultZoneClientRecord;
    v303[1] = v226;
    v227 = [MEMORY[0x1E695DEC8] arrayWithObjects:v303 count:2];
    allDefaultZoneClientRecords = v2->_allDefaultZoneClientRecords;
    v2->_allDefaultZoneClientRecords = v227;

    v229 = [(NSArray *)v2->_allDefaultZoneClientRecords fc_dictionaryWithKeyBlock:&__block_literal_global_61_5];
    allDefaultZoneClientRecordsByID = v2->_allDefaultZoneClientRecordsByID;
    v2->_allDefaultZoneClientRecordsByID = v229;
  }

  v231 = *MEMORY[0x1E69E9840];
  return v2;
}

@end