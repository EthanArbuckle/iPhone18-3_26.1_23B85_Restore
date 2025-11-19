@interface MPCustomDataPlaybackQueue(MPCAdditions)
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
@end

@implementation MPCustomDataPlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v394 = *MEMORY[0x1E69E9840];
  v342 = a4;
  v341 = [a1 identifier];
  if ([v341 isEqualToString:@"InProcess-com.apple.mediaplayer.playbackcontext"])
  {
    v6 = [a1 mediaRemoteOptions];
    v7 = [v6 objectForKeyedSubscript:@"playbackContext"];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:58 debugDescription:@"mediaRemoteOptions does not contain 'playbackContext'"];
    }

    v28 = v342[2];
LABEL_24:
    v28();

LABEL_25:
    goto LABEL_430;
  }

  if ([v341 isEqualToString:@"com.apple.music.playbackqueue.tracklist"])
  {
    v338 = [a1 data];
    if (!v338)
    {
      v49 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:5 debugDescription:@"Missing tracklist data in playback queue."];
      (v342[2])(v342, 0, v49);

LABEL_413:
      goto LABEL_430;
    }

    v9 = [[_MPCProtoTracklist alloc] initWithData:v338];
    *v373 = 0;
    *&v373[8] = v373;
    *&v373[16] = 0x3032000000;
    v374 = __Block_byref_object_copy__19581;
    v375 = __Block_byref_object_dispose__19582;
    v376 = [a1 featureName];
    v362[0] = 0;
    v362[1] = v362;
    v362[2] = 0x3032000000;
    v362[3] = __Block_byref_object_copy__19581;
    v362[4] = __Block_byref_object_dispose__19582;
    v363 = [a1 queueGroupingID];
    v10 = objc_alloc_init(MEMORY[0x1E6970818]);
    v371[0] = 0;
    v371[1] = v371;
    v371[2] = 0x3032000000;
    v371[3] = __Block_byref_object_copy__19581;
    v371[4] = __Block_byref_object_dispose__19582;
    v372 = 0;
    if (v9)
    {
      v11 = v9->_startingItemIndexPath;
      accountInfos = v9->_accountInfos;
    }

    else
    {
      v11 = 0;
      accountInfos = 0;
    }

    v326 = accountInfos;
    v13 = [(NSMutableArray *)v326 firstObject];
    v351[0] = MEMORY[0x1E69E9820];
    v351[1] = 3221225472;
    v352 = __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke;
    v353 = &unk_1E82361F0;
    v358 = v342;
    v321 = v9;
    v354 = v321;
    v323 = v10;
    v355 = v323;
    v359 = v373;
    v360 = v362;
    v361 = v371;
    v325 = v11;
    v356 = v325;
    v357 = a1;
    v330 = v13;
    v328 = v351;
    v14 = +[MPCPlaybackAccountManager sharedManager];
    v332 = [v14 fallbackAccount];

    if (v332)
    {
      if ([v332 hasCatalogPlaybackCapability])
      {
        if (!v330)
        {
          v66 = _MPCLogCategoryMusicBehavior();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 0;
            *&buf[12] = 2114;
            *&buf[14] = v332;
            _os_log_impl(&dword_1C5C61000, v66, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [empty accountInfo] account=%{public}@", buf, 0x16u);
          }

          v67 = v332;
          v68 = [MPCPlaybackRequestEnvironment alloc];
          v69 = [v67 userIdentity];
          v70 = [(MPCPlaybackRequestEnvironment *)v68 initWithUserIdentity:v69];

          v352(v328, v70, 0, 0);
          goto LABEL_412;
        }

        v364 = 0;
        v365 = &v364;
        v366 = 0x3032000000;
        v367 = __Block_byref_object_copy__19581;
        v368 = __Block_byref_object_dispose__19582;
        v369 = 0;
        v15 = v330;
        v16 = v15;
        if ((a3 & 1) == 0)
        {
          LOBYTE(v334) = 0;
          v17 = @"assume DELEGATION (legacy client)";
          v18 = a3;
          goto LABEL_148;
        }

        if (v15[2])
        {
          v334 = 0;
          v72 = 0;
          v73 = 0;
          v17 = @"accountCapabilities.contains(DELEGATION) == NO";
          v74 = v15;
          v75 = (v15 + 1);
          while (v72 < *(v75 + 1))
          {
            v76 = [(_MPCProtoDelegateInfo *)v74 accountCapabilitiesAtIndex:v72];
            v77 = v334;
            if (v334)
            {
              v78 = v17;
            }

            else
            {
              v78 = @"accountCapabilities.contains(DELEGATION) == YES";
            }

            if (v76 == 3)
            {
              v79 = 1;
            }

            else
            {
              v79 = v334;
            }

            if (v76 == 3)
            {
              v80 = @"accountCapabilities.contains(DELEGATION_INLINE) == YES";
            }

            else
            {
              v80 = v17;
            }

            if (v76 == 3)
            {
              v81 = 1;
            }

            else
            {
              v81 = v73;
            }

            if (v76 != 2)
            {
              v77 = v79;
            }

            v334 = v77;
            if (v76 == 2)
            {
              v17 = v78;
            }

            else
            {
              v17 = v80;
            }

            if (v76 == 2)
            {
              v73 = 1;
            }

            else
            {
              v73 = v81;
            }

            ++v72;
          }

          if ((v73 & 1) == 0)
          {
            v18 = 0;
            v16 = v74;
LABEL_148:
            v99 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v17;
              *&buf[22] = 1024;
              v100 = v18 & 1;
              *&buf[24] = v100;
              *&buf[28] = 1024;
              *&buf[30] = a3 & 1;
              _os_log_impl(&dword_1C5C61000, v99, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | delegation NOT SUPPORTED [%{public}@] incomingAccountSupportsDelegation=%{BOOL}u playerSupportsDelegation=%{BOOL}u", buf, 0x22u);
              v101 = 0;
            }

            else
            {
              v101 = 0;
              v100 = v18 & 1;
            }

            goto LABEL_151;
          }

          v16 = v74;
        }

        else
        {
          LOBYTE(v334) = 0;
          v17 = @"assume DELEGATION (legacy client)";
        }

        v99 = _MPCLogCategoryMusicBehavior();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          *&buf[4] = v16;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          *&buf[22] = 1024;
          *&buf[24] = 1;
          *&buf[28] = 1024;
          v100 = 1;
          *&buf[30] = 1;
          _os_log_impl(&dword_1C5C61000, v99, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | delegation SUPPORTED [%{public}@] incomingAccountSupportsDelegation=%{BOOL}u playerSupportsDelegation=%{BOOL}u", buf, 0x22u);
        }

        else
        {
          v100 = 1;
        }

        v101 = 1;
LABEL_151:

        v111 = +[MPCPlaybackAccountManager sharedManager];
        v112 = [v111 fallbackAccount];

        v113 = v16[4];
        if (v113)
        {
          v114 = v112;
          v115 = &buf[25];
          quot = v16[4];
          do
          {
            v117 = lldiv(quot, 10);
            quot = v117.quot;
            if (v117.rem >= 0)
            {
              LOBYTE(v118) = v117.rem;
            }

            else
            {
              v118 = -v117.rem;
            }

            *(v115 - 2) = v118 + 48;
            v119 = v115 - 2;
            --v115;
          }

          while (v117.quot);
          if (v113 < 0)
          {
            *(v115 - 2) = 45;
            v119 = v115 - 2;
          }

          v120 = CFStringCreateWithBytes(0, v119, &buf[24] - v119, 0x8000100u, 0);
          v112 = v114;
        }

        else
        {
          v120 = @"0";
        }

        v121 = +[MPCPlaybackAccountManager sharedManager];
        v122 = [v121 accountForDSID:v120];

        if (v122)
        {
          if (([v122 isDelegated] & 1) == 0)
          {
            v128 = [v122 hasCatalogPlaybackCapability];
            if ((a3 & 2) != 0)
            {
              v129 = v128;
            }

            else
            {
              v129 = 1;
            }

            v123 = _MPCLogCategoryMusicBehavior();
            v130 = os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT);
            if (v129)
            {
              if (v130)
              {
                *buf = 134218242;
                *&buf[4] = v16;
                *&buf[12] = 2114;
                *&buf[14] = v122;
                _os_log_impl(&dword_1C5C61000, v123, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using specified account [matching non-delegate account] account=%{public}@", buf, 0x16u);
              }

              goto LABEL_177;
            }

            if (v130)
            {
              *buf = 134218242;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v112;
              _os_log_impl(&dword_1C5C61000, v123, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [matching non-delegate account, non-sub, fallback allowed] account=%{public}@", buf, 0x16u);
            }

LABEL_242:
            v126 = v112;
            v127 = 0;
            v316 = 1;
            goto LABEL_243;
          }

          if (v101)
          {
            v123 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v122;
              _os_log_impl(&dword_1C5C61000, v123, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using delegate account [matching account] account=%{public}@", buf, 0x16u);
            }

LABEL_177:

            v126 = v122;
            v316 = 0;
            v127 = 0;
LABEL_243:
            v138 = v126;
            v136 = 0;
LABEL_244:

            v169 = v136;
            if (v169)
            {
              v352(v328, 0, 0, v169);
LABEL_411:

              _Block_object_dispose(&v364, 8);
              goto LABEL_412;
            }

            if (([v138 isDelegated] & 1) == 0 && !v127)
            {
              v189 = [MPCPlaybackRequestEnvironment alloc];
              v190 = [v138 userIdentity];
              v191 = [(MPCPlaybackRequestEnvironment *)v189 initWithUserIdentity:v190];
              v192 = v365[5];
              v365[5] = v191;

              if (v316)
              {
                v193 = MEMORY[0x1E695E118];
              }

              else
              {
                v193 = 0;
              }

              v352(v328, v365[5], v193, 0);
LABEL_364:

              _Block_object_dispose(&v364, 8);
              goto LABEL_412;
            }

            v170 = v16;
            v313 = v138;
            v312 = [MEMORY[0x1E69E4688] defaultIdentityStore];
            v314 = *(v170 + 14);
            v171 = *(v170 + 4);
            v172 = _MPCLogCategoryDelegation();
            if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218499;
              *&buf[4] = v170;
              *&buf[12] = 2113;
              *&buf[14] = v314;
              *&buf[22] = 2049;
              *&buf[24] = v171;
              _os_log_impl(&dword_1C5C61000, v172, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - Received account info for potential delegation - UUID=%{private}@ - DSID=%{private}lld", buf, 0x20u);
            }

            if (!v314 || !v171)
            {
              v173 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:7 debugDescription:{@"Invalid delegation info: %@", v170}];
              v186 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v170;
                _os_log_impl(&dword_1C5C61000, v186, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - Getting delegated playback request environment failed [no valid delegation info]", buf, 0xCu);
              }

              v187 = v173;
              v178 = 0;
              v188 = v173;
              goto LABEL_346;
            }

            if (v313)
            {
              v173 = [v313 userIdentity];
              v174 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v170;
                *&buf[12] = 2114;
                *&buf[14] = v313;
                _os_log_impl(&dword_1C5C61000, v174, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - delegation supported [found existing account] account=%{public}@", buf, 0x16u);
              }
            }

            else
            {
              v194 = MEMORY[0x1E69E4680];
              v195 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v171];
              v196 = [v194 specificAccountWithDSID:v195];
              v173 = [v196 identityAllowingDelegation:1];

              v197 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v170;
                *&buf[12] = 2114;
                *&buf[14] = v173;
                _os_log_impl(&dword_1C5C61000, v197, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - Creating delegated identity [] userIdentity=%{public}@", buf, 0x16u);
              }

              v370 = 0;
              v198 = [v312 insertPropertiesForUserIdentity:v173 usingBlock:&__block_literal_global_227 error:&v370];
              v199 = v370;
              v174 = v199;
              if ((v198 & 1) == 0)
              {
                if (v199)
                {
                  v249 = v199;
                }

                else
                {
                  v249 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:7 debugDescription:{@"Failed to create delegated account from info: %@", v170}];
                }

                v188 = v249;
                v258 = _MPCLogCategoryDelegation();
                if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  *&buf[4] = v170;
                  *&buf[12] = 2114;
                  *&buf[14] = v188;
                  _os_log_impl(&dword_1C5C61000, v258, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - Creating delegated identity failed [property insertion failed] - error=%{public}@", buf, 0x16u);
                }

                v259 = v188;
                goto LABEL_344;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              *&buf[24] = __Block_byref_object_copy__19581;
              *&buf[32] = __Block_byref_object_dispose__19582;
              v378 = 0;
              v200 = dispatch_semaphore_create(0);
              v387 = v314;
              v201 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v387 count:1];
              v388 = MEMORY[0x1E69E9820];
              v389 = 3221225472;
              v390 = ____MPCCreateDelegateAccountPlaybackRequestEnvironment_block_invoke_232;
              v391 = &unk_1E82362D8;
              v393 = buf;
              v202 = v200;
              v392 = v202;
              [v312 addDelegationUUIDs:v201 forUserIdentity:v173 completionHandler:&v388];

              dispatch_semaphore_wait(v202, 0xFFFFFFFFFFFFFFFFLL);
              if (*(*&buf[8] + 40))
              {
                v203 = _MPCLogCategoryDelegation();
                if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
                {
                  v204 = *(*&buf[8] + 40);
                  *v384 = 134218242;
                  *&v384[4] = v170;
                  v385 = 2114;
                  v386 = v204;
                  _os_log_impl(&dword_1C5C61000, v203, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - Creating delegated identity failed [uuid addition failed] - error=%{public}@", v384, 0x16u);
                }

                v188 = *(*&buf[8] + 40);
                v205 = v188;

                _Block_object_dispose(buf, 8);
                goto LABEL_344;
              }

              _Block_object_dispose(buf, 8);
            }

            v175 = +[MPCPlaybackAccountManager sharedManager];
            v174 = [v175 anyDelegationHostingAccount];

            if (v174)
            {
              v176 = [MPCMutablePlaybackRequestEnvironment alloc];
              v177 = [v174 userIdentity];
              v178 = [(MPCPlaybackRequestEnvironment *)v176 initWithUserIdentity:v177];

              v179 = [MPCMutablePlaybackDelegationProperties alloc];
              v180 = *(v170 + 6);
              v181 = v180;
              if (v180)
              {
                v182 = v180;
              }

              else
              {
                v182 = @"unknown-guid";
              }

              v183 = [(MPCPlaybackDelegationProperties *)v179 initWithStoreAccountID:v171 deviceGUID:v182];

              v184 = *(v170 + 7);
              [(MPCMutablePlaybackDelegationProperties *)v183 setDeviceName:v184];

              if ((v170[31] & 4) != 0)
              {
                if (v170[18] - 1 >= 4)
                {
                  v185 = 0;
                }

                else
                {
                  v185 = v170[18];
                }
              }

              else
              {
                v185 = 0;
              }

              [(MPCMutablePlaybackDelegationProperties *)v183 setSystemReleaseType:v185];
              v233 = *(v170 + 8);
              [(MPCMutablePlaybackDelegationProperties *)v183 setRequestUserAgent:v233];

              v234 = *(v170 + 10);
              if (v234)
              {
                v235 = [MEMORY[0x1E695DFE8] timeZoneWithName:v234];
                [(MPCMutablePlaybackDelegationProperties *)v183 setTimeZone:v235];
              }

              v236 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v170;
                *&buf[12] = 2114;
                *&buf[14] = v183;
                _os_log_impl(&dword_1C5C61000, v236, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - Delegation supported - properties=%{public}@", buf, 0x16u);
              }

              [(MPCMutablePlaybackRequestEnvironment *)v178 setDelegationProperties:v183];
              v188 = 0;
              goto LABEL_345;
            }

            v231 = _MPCLogCategoryDelegation();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v170;
              *&buf[12] = 2114;
              *&buf[14] = v313;
              _os_log_impl(&dword_1C5C61000, v231, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - delegation failed [no delegation host] account=%{public}@", buf, 0x16u);
            }

            v188 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:73 debugDescription:{@"No host for delegated account: %@", v170}];
            v232 = v188;
            v174 = 0;
LABEL_344:
            v178 = 0;
LABEL_345:

LABEL_346:
            v260 = v188;
            v261 = v365[5];
            v365[5] = v178;

            if (v260)
            {
              v262 = _MPCLogCategoryMusicBehavior();
              if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = v170;
                *&buf[12] = 2114;
                *&buf[14] = v260;
                _os_log_impl(&dword_1C5C61000, v262, OS_LOG_TYPE_ERROR, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | no account found [failed to create delegate request environment] dsidError=%{public}@", buf, 0x16u);
              }

              v352(v328, 0, 0, v260);
              goto LABEL_410;
            }

            if (v334)
            {
              v263 = [MEMORY[0x1E69E4688] defaultIdentityStore];
              v264 = [v313 userIdentity];
              *v384 = 0;
              v265 = [v263 getPropertiesForUserIdentity:v264 error:v384];
              v266 = *v384;

              if (v266)
              {
                v352(v328, 0, 0, v266);
                v267 = v265;
LABEL_409:

LABEL_410:
                goto LABEL_411;
              }

              v267 = [v265 delegateToken];
              if ([v267 type] != 1 || (objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 604800.0), v268 = objc_claimAutoreleasedReturnValue(), v269 = objc_msgSend(v267, "expiresBeforeDate:", v268), v268, v269))
              {
                v270 = *(v170 + 13);
                if (v270)
                {
                  v271 = +[MPCPlaybackAccountManager sharedManager];
                  v272 = *(v170 + 4);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = ____MPCPlaybackRequestEnvironmentFromProtoAccountInfo_block_invoke;
                  *&buf[24] = &unk_1E8236290;
                  v379 = v328;
                  v381 = v316;
                  v382 = v127;
                  v383 = v334;
                  *&buf[32] = v170;
                  v380 = &v364;
                  v378 = v313;
                  [v271 updateCredentialsWithDelegateTokenE:v270 forDSID:v272 completion:buf];

                  v273 = v379;
                }

                else
                {
                  v273 = *(v170 + 11);
                  if (v273)
                  {
                    v274 = +[MPCPlaybackAccountManager sharedManager];
                    v275 = *(v170 + 4);
                    v370 = 0;
                    v336 = [v274 getDelegateTokenBWithTokenA:v273 forDSID:v275 error:&v370];
                    v276 = v370;

                    if (v276)
                    {
                      v388 = @"MPCErrorUserInfoKeyRemoteCommandStatusCode";
                      *buf = &unk_1F4599430;
                      v277 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v388 count:1];
                      v278 = [v276 msv_errorByWrappingWithDomain:@"MPCError" code:74 userInfo:v277 debugDescription:@"Failed to get tokenB"];
                    }

                    else
                    {
                      v304 = MEMORY[0x1E696ABC0];
                      v388 = @"MPCErrorUserInfoKeyRemoteCommandStatusCode";
                      v389 = @"MPCErrorUserInfoKeyCustomDataType";
                      *buf = &unk_1F4599430;
                      *&buf[8] = @"com.apple.music/wha-delegation/b";
                      v390 = @"MPCErrorUserInfoKeyCustomData";
                      v277 = [v336 data];
                      *&buf[16] = v277;
                      v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v388 count:3];
                      v278 = [v304 msv_errorWithDomain:@"MPCError" code:74 userInfo:v318 debugDescription:{@"Delegation token missing or expired for %@", v365[5]}];
                    }

                    v352(v328, 0, 0, v278);
                  }

                  else
                  {
                    v303 = MEMORY[0x1E696ABC0];
                    v388 = @"MPCErrorUserInfoKeyRemoteCommandStatusCode";
                    *buf = &unk_1F4599430;
                    v278 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v388 count:1];
                    v276 = [v303 msv_errorWithDomain:@"MPCError" code:74 userInfo:v278 debugDescription:@"Delegation token missing and inline delegation missing tokens"];
                    v352(v328, 0, 0, v276);
                  }
                }

                v266 = v265;
                goto LABEL_409;
              }

              if (v316)
              {
                v296 = MEMORY[0x1E695E118];
              }

              else if ((v170[31] & 8) != 0)
              {
                v296 = [MEMORY[0x1E696AD98] numberWithBool:*(v170 + 120)];
              }

              else
              {
                v296 = 0;
              }

              if (!v365[5])
              {
                v308 = [MEMORY[0x1E696AAA8] currentHandler];
                v309 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __MPCPlaybackRequestEnvironmentFromProtoAccountInfo(_MPCProtoDelegateInfo *__strong, MPRemotePlaybackQueuePlaybackContextOptions, void (^__strong)(MPCPlaybackRequestEnvironment * _Nullable __strong, NSNumber * _Nullable __strong, NSError * _Nullable __strong))"}];
                [v308 handleFailureInFunction:v309 file:@"MPRemotePlaybackQueue+MPCAdditions.m" lineNumber:392 description:{@"Failed to produce playback request environment for accountInfo: %@, desiredAccount: %@", v170, v313}];
              }

              (v352)(v328);
            }

            else
            {
              if (v316)
              {
                v265 = MEMORY[0x1E695E118];
              }

              else if ((v170[31] & 8) != 0)
              {
                v265 = [MEMORY[0x1E696AD98] numberWithBool:*(v170 + 120)];
              }

              else
              {
                v265 = 0;
              }

              v352(v328, v365[5], v265, 0);
            }

            goto LABEL_364;
          }

          v134 = _MPCLogCategoryMusicBehavior();
          v132 = v134;
          if ((a3 & 2) == 0)
          {
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              v135 = MPCHashedDSIDFromDSID(v120);
              *buf = 134218499;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v135;
              *&buf[22] = 2113;
              *&buf[24] = v120;
              _os_log_impl(&dword_1C5C61000, v132, OS_LOG_TYPE_ERROR, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | no account found [delegate account match, delegate not allowed, fallback not allowed] delegateAccount=%{public}@[%{private}@]", buf, 0x20u);
            }

LABEL_185:

            v136 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:67 debugDescription:@"cannot create playback context without user identity"];
            v137 = v136;
            v316 = 0;
            v127 = 0;
            v138 = 0;
            goto LABEL_244;
          }

          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = v16;
            *&buf[12] = 2114;
            *&buf[14] = v112;
            _os_log_impl(&dword_1C5C61000, v132, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [delegate account match, delegate not allowed, fallback allowed] account=%{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v101)
          {
            v124 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
            {
              v125 = MPCHashedDSIDFromDSID(v120);
              *buf = 134218499;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v125;
              *&buf[22] = 2113;
              *&buf[24] = v120;
              _os_log_impl(&dword_1C5C61000, v124, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | creating delegate account [no match, delegate allowed, incoming account supports delegation] delegateAccount=%{public}@[%{private}@]", buf, 0x20u);
            }

            v316 = 0;
            v126 = 0;
            v127 = 1;
            goto LABEL_243;
          }

          v131 = _MPCLogCategoryMusicBehavior();
          v132 = v131;
          if ((a3 & 2) == 0)
          {
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              v133 = MPCHashedDSIDFromDSID(v120);
              *buf = 134218755;
              *&buf[4] = v16;
              *&buf[12] = 1024;
              *&buf[14] = v100;
              *&buf[18] = 2114;
              *&buf[20] = v133;
              *&buf[28] = 2113;
              *&buf[30] = v120;
              _os_log_impl(&dword_1C5C61000, v132, OS_LOG_TYPE_ERROR, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | no account found [no match, fallback not allowed] incomingAccountSupportsDelegation=%{BOOL}u delegateAccount=%{public}@[%{private}@]", buf, 0x26u);
            }

            goto LABEL_185;
          }

          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = v16;
            *&buf[12] = 2114;
            *&buf[14] = v112;
            _os_log_impl(&dword_1C5C61000, v132, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [no match, fallback allowed] account=%{public}@", buf, 0x16u);
          }
        }

        goto LABEL_242;
      }

      v62 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:27 debugDescription:{@"Subscription required for shared queue, and user doesn't have playback capability: %@", v332}];
      v352(v328, 0, 0, v62);
    }

    else
    {
      v61 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:27 debugDescription:@"Subscription required for shared queue and no active account found"];
      v352(v328, 0, 0, v61);
    }

LABEL_412:

    _Block_object_dispose(v371, 8);
    _Block_object_dispose(v362, 8);

    _Block_object_dispose(v373, 8);
    goto LABEL_413;
  }

  if ([v341 isEqualToString:@"com.apple.music.playbackqueue.radio"])
  {
    v339 = [a1 data];
    if (!v339)
    {
      v63 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:8 debugDescription:@"Missing creation properties data in playback queue."];
      (v342[2])(v342, 0, v63);

LABEL_429:
      goto LABEL_430;
    }

    v19 = [[_MPCProtoRadioCreationProperties alloc] initWithData:v339];
    v20 = v19;
    if (v19)
    {
      accountInfo = v19->_accountInfo;
    }

    else
    {
      accountInfo = 0;
    }

    v22 = accountInfo;
    v345[0] = MEMORY[0x1E69E9820];
    v345[1] = 3221225472;
    v346 = __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_6;
    v347 = &unk_1E8236218;
    v350 = v342;
    v348 = a1;
    v327 = v20;
    v349 = v327;
    v331 = v22;
    v329 = v345;
    v23 = +[MPCPlaybackAccountManager sharedManager];
    v333 = [v23 fallbackAccount];

    if (v333)
    {
      if ([v333 hasCatalogPlaybackCapability])
      {
        if (!v331)
        {
          v82 = _MPCLogCategoryMusicBehavior();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 0;
            *&buf[12] = 2114;
            *&buf[14] = v333;
            _os_log_impl(&dword_1C5C61000, v82, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [empty accountInfo] account=%{public}@", buf, 0x16u);
          }

          v83 = v333;
          v84 = [MPCPlaybackRequestEnvironment alloc];
          v85 = [v83 userIdentity];

          v86 = [(MPCPlaybackRequestEnvironment *)v84 initWithUserIdentity:v85];
          v346(v329, v86, 0, 0);

          goto LABEL_428;
        }

        v364 = 0;
        v365 = &v364;
        v366 = 0x3032000000;
        v367 = __Block_byref_object_copy__19581;
        v368 = __Block_byref_object_dispose__19582;
        v369 = 0;
        v24 = v331;
        p_isa = &v24->super.super.isa;
        if ((a3 & 1) == 0)
        {
          LOBYTE(v335) = 0;
          v26 = @"assume DELEGATION (legacy client)";
          v27 = a3;
          goto LABEL_198;
        }

        if (v24->_accountCapabilities.count)
        {
          v335 = 0;
          v87 = 0;
          v88 = 0;
          v26 = @"accountCapabilities.contains(DELEGATION) == NO";
          v89 = v24;
          p_accountCapabilities = &v24->_accountCapabilities;
          while (v87 < p_accountCapabilities->count)
          {
            v91 = [(_MPCProtoDelegateInfo *)v89 accountCapabilitiesAtIndex:v87];
            v92 = v335;
            if (v335)
            {
              v93 = v26;
            }

            else
            {
              v93 = @"accountCapabilities.contains(DELEGATION) == YES";
            }

            if (v91 == 3)
            {
              v94 = 1;
            }

            else
            {
              v94 = v335;
            }

            if (v91 == 3)
            {
              v95 = @"accountCapabilities.contains(DELEGATION_INLINE) == YES";
            }

            else
            {
              v95 = v26;
            }

            if (v91 == 3)
            {
              v96 = 1;
            }

            else
            {
              v96 = v88;
            }

            if (v91 != 2)
            {
              v92 = v94;
            }

            v335 = v92;
            if (v91 == 2)
            {
              v26 = v93;
            }

            else
            {
              v26 = v95;
            }

            if (v91 == 2)
            {
              v88 = 1;
            }

            else
            {
              v88 = v96;
            }

            ++v87;
          }

          if ((v88 & 1) == 0)
          {
            v27 = 0;
            p_isa = v89;
LABEL_198:
            v139 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              *&buf[4] = p_isa;
              *&buf[12] = 2114;
              *&buf[14] = v26;
              *&buf[22] = 1024;
              v140 = v27 & 1;
              *&buf[24] = v140;
              *&buf[28] = 1024;
              *&buf[30] = a3 & 1;
              _os_log_impl(&dword_1C5C61000, v139, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | delegation NOT SUPPORTED [%{public}@] incomingAccountSupportsDelegation=%{BOOL}u playerSupportsDelegation=%{BOOL}u", buf, 0x22u);
              v141 = 0;
            }

            else
            {
              v141 = 0;
              v140 = v27 & 1;
            }

            goto LABEL_201;
          }

          p_isa = v89;
        }

        else
        {
          LOBYTE(v335) = 0;
          v26 = @"assume DELEGATION (legacy client)";
        }

        v139 = _MPCLogCategoryMusicBehavior();
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          *&buf[4] = p_isa;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          *&buf[22] = 1024;
          *&buf[24] = 1;
          *&buf[28] = 1024;
          v140 = 1;
          *&buf[30] = 1;
          _os_log_impl(&dword_1C5C61000, v139, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | delegation SUPPORTED [%{public}@] incomingAccountSupportsDelegation=%{BOOL}u playerSupportsDelegation=%{BOOL}u", buf, 0x22u);
        }

        else
        {
          v140 = 1;
        }

        v141 = 1;
LABEL_201:

        v142 = +[MPCPlaybackAccountManager sharedManager];
        v143 = [v142 fallbackAccount];

        v144 = p_isa[4];
        if (v144)
        {
          v145 = v143;
          v146 = &buf[25];
          v147 = p_isa[4];
          do
          {
            v148 = lldiv(v147, 10);
            v147 = v148.quot;
            if (v148.rem >= 0)
            {
              LOBYTE(v149) = v148.rem;
            }

            else
            {
              v149 = -v148.rem;
            }

            *(v146 - 2) = v149 + 48;
            v150 = v146 - 2;
            --v146;
          }

          while (v148.quot);
          if (v144 < 0)
          {
            *(v146 - 2) = 45;
            v150 = v146 - 2;
          }

          v151 = CFStringCreateWithBytes(0, v150, &buf[24] - v150, 0x8000100u, 0);
          v143 = v145;
        }

        else
        {
          v151 = @"0";
        }

        v152 = +[MPCPlaybackAccountManager sharedManager];
        v153 = [v152 accountForDSID:v151];

        if (v153)
        {
          if (([v153 isDelegated] & 1) == 0)
          {
            v158 = [v153 hasCatalogPlaybackCapability];
            if ((a3 & 2) != 0)
            {
              v159 = v158;
            }

            else
            {
              v159 = 1;
            }

            v154 = _MPCLogCategoryMusicBehavior();
            v160 = os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT);
            if (v159)
            {
              if (v160)
              {
                *buf = 134218242;
                *&buf[4] = p_isa;
                *&buf[12] = 2114;
                *&buf[14] = v153;
                _os_log_impl(&dword_1C5C61000, v154, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using specified account [matching non-delegate account] account=%{public}@", buf, 0x16u);
              }

              goto LABEL_227;
            }

            if (v160)
            {
              *buf = 134218242;
              *&buf[4] = p_isa;
              *&buf[12] = 2114;
              *&buf[14] = v143;
              _os_log_impl(&dword_1C5C61000, v154, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [matching non-delegate account, non-sub, fallback allowed] account=%{public}@", buf, 0x16u);
            }

LABEL_281:
            v157 = v143;
            v324 = 0;
            v322 = 1;
            goto LABEL_282;
          }

          if (v141)
          {
            v154 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = p_isa;
              *&buf[12] = 2114;
              *&buf[14] = v153;
              _os_log_impl(&dword_1C5C61000, v154, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using delegate account [matching account] account=%{public}@", buf, 0x16u);
            }

LABEL_227:

            v157 = v153;
            v322 = 0;
            v324 = 0;
LABEL_282:
            v168 = v157;
            v166 = 0;
LABEL_283:

            v206 = v166;
            if (v206)
            {
              v346(v329, 0, 0, v206);
LABEL_427:

              _Block_object_dispose(&v364, 8);
              goto LABEL_428;
            }

            if (([v168 isDelegated] & 1) == 0 && !v324)
            {
              v226 = [MPCPlaybackRequestEnvironment alloc];
              v227 = [v168 userIdentity];
              v228 = [(MPCPlaybackRequestEnvironment *)v226 initWithUserIdentity:v227];
              v229 = v365[5];
              v365[5] = v228;

              if (v322)
              {
                v230 = MEMORY[0x1E695E118];
              }

              else
              {
                v230 = 0;
              }

              v346(v329, v365[5], v230, 0);
LABEL_393:

              _Block_object_dispose(&v364, 8);
              goto LABEL_428;
            }

            v207 = p_isa;
            v317 = v168;
            v315 = [MEMORY[0x1E69E4688] defaultIdentityStore];
            v319 = *(v207 + 14);
            v208 = *(v207 + 4);
            v209 = _MPCLogCategoryDelegation();
            if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218499;
              *&buf[4] = v207;
              *&buf[12] = 2113;
              *&buf[14] = v319;
              *&buf[22] = 2049;
              *&buf[24] = v208;
              _os_log_impl(&dword_1C5C61000, v209, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - Received account info for potential delegation - UUID=%{private}@ - DSID=%{private}lld", buf, 0x20u);
            }

            if (!v319 || !v208)
            {
              v210 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:7 debugDescription:{@"Invalid delegation info: %@", v207}];
              v223 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v207;
                _os_log_impl(&dword_1C5C61000, v223, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - Getting delegated playback request environment failed [no valid delegation info]", buf, 0xCu);
              }

              v224 = v210;
              v215 = 0;
              v225 = v210;
              goto LABEL_375;
            }

            if (v317)
            {
              v210 = [v317 userIdentity];
              v211 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v207;
                *&buf[12] = 2114;
                *&buf[14] = v317;
                _os_log_impl(&dword_1C5C61000, v211, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - delegation supported [found existing account] account=%{public}@", buf, 0x16u);
              }
            }

            else
            {
              v237 = MEMORY[0x1E69E4680];
              v238 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v208];
              v239 = [v237 specificAccountWithDSID:v238];
              v210 = [v239 identityAllowingDelegation:1];

              v240 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v207;
                *&buf[12] = 2114;
                *&buf[14] = v210;
                _os_log_impl(&dword_1C5C61000, v240, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - Creating delegated identity [] userIdentity=%{public}@", buf, 0x16u);
              }

              v362[0] = 0;
              v241 = [v315 insertPropertiesForUserIdentity:v210 usingBlock:&__block_literal_global_227 error:v362];
              v242 = v362[0];
              v211 = v242;
              if ((v241 & 1) == 0)
              {
                if (v242)
                {
                  v257 = v242;
                }

                else
                {
                  v257 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:7 debugDescription:{@"Failed to create delegated account from info: %@", v207}];
                }

                v225 = v257;
                v279 = _MPCLogCategoryDelegation();
                if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  *&buf[4] = v207;
                  *&buf[12] = 2114;
                  *&buf[14] = v225;
                  _os_log_impl(&dword_1C5C61000, v279, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - Creating delegated identity failed [property insertion failed] - error=%{public}@", buf, 0x16u);
                }

                v280 = v225;
                goto LABEL_373;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              *&buf[24] = __Block_byref_object_copy__19581;
              *&buf[32] = __Block_byref_object_dispose__19582;
              v378 = 0;
              v243 = dispatch_semaphore_create(0);
              v371[0] = v319;
              v244 = [MEMORY[0x1E695DEC8] arrayWithObjects:v371 count:1];
              v388 = MEMORY[0x1E69E9820];
              v389 = 3221225472;
              v390 = ____MPCCreateDelegateAccountPlaybackRequestEnvironment_block_invoke_232;
              v391 = &unk_1E82362D8;
              v393 = buf;
              v245 = v243;
              v392 = v245;
              [v315 addDelegationUUIDs:v244 forUserIdentity:v210 completionHandler:&v388];

              dispatch_semaphore_wait(v245, 0xFFFFFFFFFFFFFFFFLL);
              if (*(*&buf[8] + 40))
              {
                v246 = _MPCLogCategoryDelegation();
                if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
                {
                  v247 = *(*&buf[8] + 40);
                  *v373 = 134218242;
                  *&v373[4] = v207;
                  *&v373[12] = 2114;
                  *&v373[14] = v247;
                  _os_log_impl(&dword_1C5C61000, v246, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - Creating delegated identity failed [uuid addition failed] - error=%{public}@", v373, 0x16u);
                }

                v225 = *(*&buf[8] + 40);
                v248 = v225;

                _Block_object_dispose(buf, 8);
                goto LABEL_373;
              }

              _Block_object_dispose(buf, 8);
            }

            v212 = +[MPCPlaybackAccountManager sharedManager];
            v211 = [v212 anyDelegationHostingAccount];

            if (v211)
            {
              v213 = [MPCMutablePlaybackRequestEnvironment alloc];
              v214 = [v211 userIdentity];
              v215 = [(MPCPlaybackRequestEnvironment *)v213 initWithUserIdentity:v214];

              v216 = [MPCMutablePlaybackDelegationProperties alloc];
              v217 = *(v207 + 6);
              v218 = v217;
              if (v217)
              {
                v219 = v217;
              }

              else
              {
                v219 = @"unknown-guid";
              }

              v220 = [(MPCPlaybackDelegationProperties *)v216 initWithStoreAccountID:v208 deviceGUID:v219];

              v221 = *(v207 + 7);
              [(MPCMutablePlaybackDelegationProperties *)v220 setDeviceName:v221];

              if ((v207[31] & 4) != 0)
              {
                if (v207[18] - 1 >= 4)
                {
                  v222 = 0;
                }

                else
                {
                  v222 = v207[18];
                }
              }

              else
              {
                v222 = 0;
              }

              [(MPCMutablePlaybackDelegationProperties *)v220 setSystemReleaseType:v222];
              v252 = *(v207 + 8);
              [(MPCMutablePlaybackDelegationProperties *)v220 setRequestUserAgent:v252];

              v253 = v207;
              v254 = *(v207 + 10);
              if (v254)
              {
                v255 = [MEMORY[0x1E695DFE8] timeZoneWithName:v254];
                [(MPCMutablePlaybackDelegationProperties *)v220 setTimeZone:v255];

                v253 = v207;
              }

              v256 = _MPCLogCategoryDelegation();
              if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v253;
                *&buf[12] = 2114;
                *&buf[14] = v220;
                _os_log_impl(&dword_1C5C61000, v256, OS_LOG_TYPE_DEFAULT, "_MPCProtoDelegateInfo %p - Delegation supported - properties=%{public}@", buf, 0x16u);
              }

              [(MPCMutablePlaybackRequestEnvironment *)v215 setDelegationProperties:v220];
              v225 = 0;
              goto LABEL_374;
            }

            v250 = _MPCLogCategoryDelegation();
            if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v207;
              *&buf[12] = 2114;
              *&buf[14] = v317;
              _os_log_impl(&dword_1C5C61000, v250, OS_LOG_TYPE_ERROR, "_MPCProtoDelegateInfo %p - delegation failed [no delegation host] account=%{public}@", buf, 0x16u);
            }

            v225 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:73 debugDescription:{@"No host for delegated account: %@", v207}];
            v251 = v225;
            v211 = 0;
LABEL_373:
            v215 = 0;
LABEL_374:

LABEL_375:
            v281 = v225;
            v282 = v365[5];
            v365[5] = v215;

            if (v281)
            {
              v283 = _MPCLogCategoryMusicBehavior();
              if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = v207;
                *&buf[12] = 2114;
                *&buf[14] = v281;
                _os_log_impl(&dword_1C5C61000, v283, OS_LOG_TYPE_ERROR, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | no account found [failed to create delegate request environment] dsidError=%{public}@", buf, 0x16u);
              }

              v346(v329, 0, 0, v281);
              goto LABEL_426;
            }

            if (v335)
            {
              v284 = [MEMORY[0x1E69E4688] defaultIdentityStore];
              v285 = [v317 userIdentity];
              *v373 = 0;
              v286 = [v284 getPropertiesForUserIdentity:v285 error:v373];
              v287 = *v373;

              if (v287)
              {
                v346(v329, 0, 0, v287);
                v288 = v286;
LABEL_425:

LABEL_426:
                goto LABEL_427;
              }

              v288 = [v286 delegateToken];
              if ([v288 type] != 1 || (objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 604800.0), v289 = objc_claimAutoreleasedReturnValue(), v290 = objc_msgSend(v288, "expiresBeforeDate:", v289), v289, v290))
              {
                v291 = *(v207 + 13);
                v320 = v291;
                if (v291)
                {
                  v292 = v291;
                  v293 = +[MPCPlaybackAccountManager sharedManager];
                  v294 = *(v207 + 4);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = ____MPCPlaybackRequestEnvironmentFromProtoAccountInfo_block_invoke;
                  *&buf[24] = &unk_1E8236290;
                  v379 = v329;
                  v381 = v322;
                  v382 = v324;
                  v383 = v335;
                  *&buf[32] = v207;
                  v380 = &v364;
                  v378 = v317;
                  [v293 updateCredentialsWithDelegateTokenE:v292 forDSID:v294 completion:buf];

                  v295 = v379;
                }

                else
                {
                  v295 = *(v207 + 11);
                  if (v295)
                  {
                    v297 = +[MPCPlaybackAccountManager sharedManager];
                    v298 = *(v207 + 4);
                    v362[0] = 0;
                    v337 = [v297 getDelegateTokenBWithTokenA:v295 forDSID:v298 error:v362];
                    v299 = v362[0];

                    if (v299)
                    {
                      v388 = @"MPCErrorUserInfoKeyRemoteCommandStatusCode";
                      *buf = &unk_1F4599430;
                      v300 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v388 count:1];
                      v301 = [v299 msv_errorByWrappingWithDomain:@"MPCError" code:74 userInfo:v300 debugDescription:@"Failed to get tokenB"];
                    }

                    else
                    {
                      v306 = MEMORY[0x1E696ABC0];
                      v388 = @"MPCErrorUserInfoKeyRemoteCommandStatusCode";
                      v389 = @"MPCErrorUserInfoKeyCustomDataType";
                      *buf = &unk_1F4599430;
                      *&buf[8] = @"com.apple.music/wha-delegation/b";
                      v390 = @"MPCErrorUserInfoKeyCustomData";
                      v300 = [v337 data];
                      *&buf[16] = v300;
                      v307 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v388 count:3];
                      v301 = [v306 msv_errorWithDomain:@"MPCError" code:74 userInfo:v307 debugDescription:{@"Delegation token missing or expired for %@", v365[5]}];
                    }

                    v346(v329, 0, 0, v301);
                  }

                  else
                  {
                    v305 = MEMORY[0x1E696ABC0];
                    v388 = @"MPCErrorUserInfoKeyRemoteCommandStatusCode";
                    *buf = &unk_1F4599430;
                    v301 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v388 count:1];
                    v299 = [v305 msv_errorWithDomain:@"MPCError" code:74 userInfo:v301 debugDescription:@"Delegation token missing and inline delegation missing tokens"];
                    v346(v329, 0, 0, v299);
                  }
                }

                v287 = v286;
                goto LABEL_425;
              }

              if (v322)
              {
                v302 = MEMORY[0x1E695E118];
              }

              else if ((v207[31] & 8) != 0)
              {
                v302 = [MEMORY[0x1E696AD98] numberWithBool:*(v207 + 120)];
              }

              else
              {
                v302 = 0;
              }

              if (!v365[5])
              {
                v310 = [MEMORY[0x1E696AAA8] currentHandler];
                v311 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __MPCPlaybackRequestEnvironmentFromProtoAccountInfo(_MPCProtoDelegateInfo *__strong, MPRemotePlaybackQueuePlaybackContextOptions, void (^__strong)(MPCPlaybackRequestEnvironment * _Nullable __strong, NSNumber * _Nullable __strong, NSError * _Nullable __strong))"}];
                [v310 handleFailureInFunction:v311 file:@"MPRemotePlaybackQueue+MPCAdditions.m" lineNumber:392 description:{@"Failed to produce playback request environment for accountInfo: %@, desiredAccount: %@", v207, v317}];
              }

              (v346)(v329);
            }

            else
            {
              if (v322)
              {
                v286 = MEMORY[0x1E695E118];
              }

              else if ((v207[31] & 8) != 0)
              {
                v286 = [MEMORY[0x1E696AD98] numberWithBool:*(v207 + 120)];
              }

              else
              {
                v286 = 0;
              }

              v346(v329, v365[5], v286, 0);
            }

            goto LABEL_393;
          }

          v164 = _MPCLogCategoryMusicBehavior();
          v162 = v164;
          if ((a3 & 2) == 0)
          {
            if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
            {
              v165 = MPCHashedDSIDFromDSID(v151);
              *buf = 134218499;
              *&buf[4] = p_isa;
              *&buf[12] = 2114;
              *&buf[14] = v165;
              *&buf[22] = 2113;
              *&buf[24] = v151;
              _os_log_impl(&dword_1C5C61000, v162, OS_LOG_TYPE_ERROR, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | no account found [delegate account match, delegate not allowed, fallback not allowed] delegateAccount=%{public}@[%{private}@]", buf, 0x20u);
            }

LABEL_235:

            v166 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:67 debugDescription:@"cannot create playback context without user identity"];
            v167 = v166;
            v322 = 0;
            v324 = 0;
            v168 = 0;
            goto LABEL_283;
          }

          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = p_isa;
            *&buf[12] = 2114;
            *&buf[14] = v143;
            _os_log_impl(&dword_1C5C61000, v162, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [delegate account match, delegate not allowed, fallback allowed] account=%{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v141)
          {
            v155 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
            {
              v156 = MPCHashedDSIDFromDSID(v151);
              *buf = 134218499;
              *&buf[4] = p_isa;
              *&buf[12] = 2114;
              *&buf[14] = v156;
              *&buf[22] = 2113;
              *&buf[24] = v151;
              _os_log_impl(&dword_1C5C61000, v155, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | creating delegate account [no match, delegate allowed, incoming account supports delegation] delegateAccount=%{public}@[%{private}@]", buf, 0x20u);
            }

            v322 = 0;
            v157 = 0;
            v324 = 1;
            goto LABEL_282;
          }

          v161 = _MPCLogCategoryMusicBehavior();
          v162 = v161;
          if ((a3 & 2) == 0)
          {
            if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              v163 = MPCHashedDSIDFromDSID(v151);
              *buf = 134218755;
              *&buf[4] = p_isa;
              *&buf[12] = 1024;
              *&buf[14] = v140;
              *&buf[18] = 2114;
              *&buf[20] = v163;
              *&buf[28] = 2113;
              *&buf[30] = v151;
              _os_log_impl(&dword_1C5C61000, v162, OS_LOG_TYPE_ERROR, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | no account found [no match, fallback not allowed] incomingAccountSupportsDelegation=%{BOOL}u delegateAccount=%{public}@[%{private}@]", buf, 0x26u);
            }

            goto LABEL_235;
          }

          if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = p_isa;
            *&buf[12] = 2114;
            *&buf[14] = v143;
            _os_log_impl(&dword_1C5C61000, v162, OS_LOG_TYPE_DEFAULT, "[MPRQ:MPC:%p] __MPCPlaybackRequestEnvironmentFromProtoAccountInfo | using device fallback account [no match, fallback allowed] account=%{public}@", buf, 0x16u);
          }
        }

        goto LABEL_281;
      }

      v65 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:27 debugDescription:{@"Subscription required for shared queue, and user doesn't have playback capability: %@", v333}];
      v346(v329, 0, 0, v65);
    }

    else
    {
      v64 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:27 debugDescription:@"Subscription required for shared queue and no active account found"];
      v346(v329, 0, 0, v64);
    }

LABEL_428:

    goto LABEL_429;
  }

  if ([v341 isEqualToString:@"com.apple.mediaplayer.playbackcontext"])
  {
    v7 = [a1 data];
    objc_opt_class();
    v8 = MSVUnarchivedObjectOfClass();
    v29 = a1;
    v30 = [v29 featureName];

    if (v30)
    {
      v31 = [v29 featureName];
      [v8 setPlayActivityFeatureName:v31];
    }

    v32 = [v29 queueGroupingID];

    if (v32)
    {
      v33 = [v29 queueGroupingID];
      [v8 setPlayActivityQueueGroupingID:v33];
    }

    v34 = [v29 siriRecommendationIdentifier];
    v35 = [v34 dataUsingEncoding:4];

    if (v35)
    {
      v36 = [v29 siriRecommendationIdentifier];
      v37 = [v36 dataUsingEncoding:4];
      [v8 setPlayActivityRecommendationData:v37];
    }

    v38 = [v29 siriAssetInfo];

    if (v38)
    {
      v39 = [v29 siriAssetInfo];
      [v8 setSiriAssetInfo:v39];
    }

    v40 = [v29 siriReferenceIdentifier];

    if (v40)
    {
      v41 = [v29 siriReferenceIdentifier];
      [v8 setSiriReferenceIdentifier:v41];
    }

    v42 = [v29 siriWHAMetricsInfo];

    if (v42)
    {
      v43 = [v29 siriWHAMetricsInfo];
      [v8 setSiriWHAMetricsInfo:v43];
    }

    v44 = [v29 privateListeningOverride];

    if (v44)
    {
      v45 = [v29 privateListeningOverride];
      [v8 setPrivateListeningOverride:v45];
    }

    v46 = [v29 userIdentity];

    if (v46)
    {
      v47 = [v29 userIdentity];
      [v8 setUserIdentity:v47];
    }

    if ([v29 isRequestingImmediatePlayback])
    {
      v48 = 20;
    }

    else
    {
      v48 = 0;
    }

    [v8 setActionAfterQueueLoad:v48];

    v28 = v342[2];
    goto LABEL_24;
  }

  if (![v341 isEqualToString:@"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack"])
  {
    if ([v341 isEqualToString:@"com.apple.music.playbackqueue.sharedlistening"])
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:58 debugDescription:@"Sharedlistening playback context cannot be used for remote set queue."];
    }

    else
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:4 debugDescription:{@"Unknown queue identifier: %@", v341}];
    }
    v7 = ;
    (v342[2])(v342, 0, v7);
    goto LABEL_25;
  }

  v50 = [a1 data];
  v51 = MEMORY[0x1E69B1460];
  v52 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = [v52 setWithObjects:{v53, v54, objc_opt_class(), 0}];
  v344 = 0;
  v56 = [v51 decodedObjectOfClasses:v55 fromData:v50 error:&v344];
  v57 = v344;

  v58 = [v56 objectForKeyedSubscript:@"original"];
  v59 = [v56 objectForKeyedSubscript:@"supplemental"];
  if ([v58 isSupported])
  {
    v60 = _MPCLogCategoryPlayback();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v60, OS_LOG_TYPE_DEFAULT, "[RemotePlaybackQueue] using originalPlaybackContext", buf, 2u);
    }

    goto LABEL_133;
  }

  if (v59)
  {
    if ([v59 isSupported])
    {
      v71 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5C61000, v71, OS_LOG_TYPE_DEFAULT, "[RemotePlaybackQueue] originalPlaybackContext is not supported, using supplementalPlaybackContext", buf, 2u);
      }

      v60 = v58;
      v58 = v59;
      goto LABEL_133;
    }

    v97 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:58 debugDescription:@"Neither the originalPlaybackContext nor the supplementalPlaybackContext are supported."];

    v60 = _MPCLogCategoryPlayback();
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_132;
    }

    *buf = 0;
    v98 = "[RemotePlaybackQueue] Neither the originalPlaybackContext nor the supplementalPlaybackContext are supported.";
    goto LABEL_131;
  }

  v97 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:58 debugDescription:@"originalPlaybackContext is not supported and no supplementalPlaybackContext was provided."];

  v60 = _MPCLogCategoryPlayback();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v98 = "[RemotePlaybackQueue] originalPlaybackContext is not supported and no supplementalPlaybackContext was provided.";
LABEL_131:
    _os_log_impl(&dword_1C5C61000, v60, OS_LOG_TYPE_DEFAULT, v98, buf, 2u);
  }

LABEL_132:
  v58 = 0;
  v57 = v97;
LABEL_133:

  if (v57)
  {
    (v342[2])(v342, 0, v57);
  }

  else
  {
    v102 = [v56 objectForKeyedSubscript:@"sessionID"];
    [v58 setSessionIdentifier:v102];

    if ([v58 conformsToProtocol:&unk_1F45B4200])
    {
      v103 = v58;
      v104 = [v103 playbackRequestEnvironment];
      v343 = 0;
      v105 = [v104 rectifiedPlaybackRequestEnvironmentWithReasons:&v343];
      v340 = v343;

      if (v105)
      {
        v106 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          v107 = [v340 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v108 = v107;
          *&buf[4] = v107;
          *&buf[12] = 2114;
          *&buf[14] = v103;
          _os_log_impl(&dword_1C5C61000, v106, OS_LOG_TYPE_DEFAULT, "[RemotePlaybackQueue] account rectification [%{public}@] context: %{public}@", buf, 0x16u);
        }

        [v103 setPlaybackRequestEnvironment:v105];
      }
    }

    v109 = [a1 mediaRemoteOptions];
    v110 = [v109 objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];

    if (v110)
    {
      -[NSObject setQueueEndAction:](v58, "setQueueEndAction:", [v110 integerValue]);
    }

    (v342[2])(v342, v58, 0);
  }

LABEL_430:
}

@end