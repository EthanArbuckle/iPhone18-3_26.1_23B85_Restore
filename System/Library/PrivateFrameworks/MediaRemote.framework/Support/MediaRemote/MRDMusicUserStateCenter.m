@interface MRDMusicUserStateCenter
+ (MRDMusicUserStateCenter)sharedCenter;
- (BOOL)cachedStateLoaded;
- (MRDMediaUserState)localActiveUserState;
- (MRDMusicUserStateCenter)init;
- (MRUserIdentity)localActiveIdentity;
- (NSArray)localUserIdentities;
- (NSArray)localUserStates;
- (id)identityForHomeUserIdentifier:(id)a3;
- (id)identityForUserState:(id)a3;
- (id)stateCenter;
- (void)checkPendingIdentityCompletions;
- (void)handleRegisteredApplicationsChangedNotification:(id)a3;
- (void)handleiTunesNotification:(id)a3;
- (void)postCloudStateChanged;
- (void)registerNotifications;
- (void)updateIsMusicAppInstalled;
- (void)userIdentityForDSID:(id)a3 completion:(id)a4;
@end

@implementation MRDMusicUserStateCenter

+ (MRDMusicUserStateCenter)sharedCenter
{
  if (qword_100529210 != -1)
  {
    sub_1003A5AF0();
  }

  v3 = qword_100529218;

  return v3;
}

- (NSArray)localUserIdentities
{
  v3 = [(MRDMusicUserStateCenter *)self stateCenter];
  v4 = [v3 allUserStates];

  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MRDMusicUserStateCenter *)self identityForUserState:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)stateCenter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000704FC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_100529228 != -1)
  {
    dispatch_once(&qword_100529228, block);
  }

  return qword_100529220;
}

- (MRDMediaUserState)localActiveUserState
{
  v3 = [MRDMediaUserState alloc];
  v4 = [(MRDMusicUserStateCenter *)self stateCenter];
  v5 = [v4 activeUserState];
  v6 = [(MRDMediaUserState *)v3 initWithUserState:v5];

  return v6;
}

- (BOOL)cachedStateLoaded
{
  os_unfair_lock_lock(&self->_lock);
  cachedStateLoaded = self->_cachedStateLoaded;
  os_unfair_lock_unlock(&self->_lock);
  return cachedStateLoaded;
}

- (NSArray)localUserStates
{
  v2 = [(MRDMusicUserStateCenter *)self stateCenter];
  v3 = [v2 allUserStates];
  v4 = [v3 msv_map:&stru_1004B8338];

  return v4;
}

- (MRUserIdentity)localActiveIdentity
{
  v2 = [(MRDMusicUserStateCenter *)self localActiveUserState];
  v3 = [v2 userIdentity];

  return v3;
}

- (MRDMusicUserStateCenter)init
{
  v12.receiver = self;
  v12.super_class = MRDMusicUserStateCenter;
  v2 = [(MRDMusicUserStateCenter *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableSet set];
    finishedWaitingForCloudStateDSIDs = v3->_finishedWaitingForCloudStateDSIDs;
    v3->_finishedWaitingForCloudStateDSIDs = v4;

    v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    musicApplicationBundleIdentifier = v3->_musicApplicationBundleIdentifier;
    v3->_musicApplicationBundleIdentifier = v6;

    [(MRDMusicUserStateCenter *)v3 registerNotifications];
    v8 = MRGroupSessionSubsystemGetQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CBE0;
    block[3] = &unk_1004B6D08;
    v11 = v3;
    dispatch_async(v8, block);
  }

  return v3;
}

- (void)registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleiTunesNotification:" name:ICMediaUserStateCenterUserStatesDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleiTunesNotification:" name:ICMusicUserStateGroupSessionCapabilityChangedNotification object:0];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleRegisteredApplicationsChangedNotification:" name:@"com.apple.LaunchServices.applicationRegistered" object:0 suspensionBehavior:3];

  v6 = +[NSDistributedNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleRegisteredApplicationsChangedNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0 suspensionBehavior:3];
}

- (void)userIdentityForDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(MRDMusicUserStateCenter *)self stateCenter];
  v9 = [v8 allUserStates];
  v190[0] = _NSConcreteStackBlock;
  v190[1] = 3221225472;
  v190[2] = sub_10006DF18;
  v190[3] = &unk_1004B82F8;
  v10 = v6;
  v191 = v10;
  v11 = [v9 msv_firstWhere:v190];

  v12 = [v11 music];
  v13 = v12;
  if (!v12)
  {
    v24 = [(MRDMusicUserStateCenter *)self finishedWaitingForCloudStateDSIDs];
    v25 = [v24 containsObject:v10];

    if ((v25 & 1) == 0)
    {
      v26 = _MRLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MRDMusicUserStateCenter] No music user state for dsid: %@. Will wait for user state update.", buf, 0xCu);
      }
    }

    goto LABEL_157;
  }

  v14 = [v12 userProfile];
  v15 = [v14 socialProfile];
  v16 = [v15 socialProfileID];

  if (v16)
  {
    v186 = v11;
    v187 = v7;
    v17 = [v13 userProfile];
    v18 = [(__CFString *)v17 socialProfile];
    v19 = [v18 socialProfileID];
    v20 = [v13 userProfile];
    v21 = [v20 socialProfile];
    v22 = [v21 name];
    v23 = [MRUserIdentity resolvableIdentityWithIdentifier:v19 displayName:v22];

    goto LABEL_155;
  }

  v27 = [v13 userProfile];
  v28 = [v27 name];

  if (!v28)
  {
    goto LABEL_157;
  }

  v186 = v11;
  v187 = v7;
  v29 = _MRLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[MRDMusicUserStateCenter] No social profile for dsid: %@. Will use basic identity.", buf, 0xCu);
  }

  v185 = MRUserIdentity;
  v30 = v10;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  *&buf[8] = 0u;
  *buf = 4001;
  CC_SHA1_Init(&buf[8]);
  v31 = v30;
  v32 = [v31 UTF8String];
  v33 = [v31 length];
  v34 = v33;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        sub_100070F58(&buf[8], v32, v33);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Update(&buf[8], v32, v33);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Update(&buf[8], v32, v33);
          break;
        case 0x10A0:
          CC_SHA256_Update(&buf[8], v32, v33);
          break;
        case 0x11A0:
          CC_SHA512_Update(&buf[8], v32, v33);
          break;
      }
    }

    goto LABEL_79;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf == 3000)
      {
        sub_100070DB4(&buf[8], v32, v33);
      }

      goto LABEL_79;
    }

    v69 = &v33[buf[19]];
    if (v69 < 4)
    {
      v70 = &buf[buf[19]];
      if (v33 <= 1u)
      {
        if (!v33)
        {
LABEL_78:
          *&buf[12] += v34;
          goto LABEL_79;
        }

        if (v33 == 1)
        {
          v70[16] = *v32;
          goto LABEL_78;
        }

LABEL_62:
        memcpy(v70 + 16, v32, v33);
        goto LABEL_78;
      }

      if (v33 == 2)
      {
        v75 = *v32;
      }

      else
      {
        if (v33 != 3)
        {
          goto LABEL_62;
        }

        v75 = *v32;
        v70[18] = v32[2];
      }

      *(v70 + 8) = v75;
      goto LABEL_78;
    }

    LOBYTE(v71) = 0;
    v72 = v69 & 0xFFFFFFFFFFFFFFFCLL;
    if (buf[19] > 1u)
    {
      if (buf[19] != 2)
      {
        LOBYTE(v73) = 0;
        LOBYTE(v74) = 0;
        v76 = 0;
        if (buf[19] == 3)
        {
          LOBYTE(v73) = buf[16];
          v71 = HIBYTE(*&buf[16]);
          LOBYTE(v74) = buf[18];
          v76 = *v32;
        }

        goto LABEL_68;
      }

      LOBYTE(v73) = buf[16];
      v71 = HIBYTE(*&buf[16]);
      v74 = *v32;
    }

    else
    {
      if (!buf[19])
      {
        v73 = *v32;
        v71 = *v32 >> 8;
        v74 = HIWORD(*v32);
        v76 = HIBYTE(*v32);
        goto LABEL_68;
      }

      LOBYTE(v73) = buf[16];
      LOBYTE(v71) = *v32;
      v74 = *(v32 + 1);
    }

    v76 = v74 >> 8;
LABEL_68:
    v77 = v69 & 3;
    v78 = (v74 << 16) | (v76 << 24) | v73 | (v71 << 8);
    HIDWORD(v79) = (461845907 * ((380141568 * v78) | ((-862048943 * v78) >> 17))) ^ *&buf[8];
    LODWORD(v79) = HIDWORD(v79);
    v80 = 5 * (v79 >> 19) - 430675100;
    *&buf[8] = v80;
    v81 = &v32[-buf[19] + 4];
    v82 = &v32[v72 - buf[19]];
    while (v81 < v82)
    {
      v83 = *v81;
      v81 += 4;
      HIDWORD(v84) = (461845907 * ((380141568 * v83) | ((-862048943 * v83) >> 17))) ^ v80;
      LODWORD(v84) = HIDWORD(v84);
      v80 = 5 * (v84 >> 19) - 430675100;
      *&buf[8] = v80;
    }

    if (v77 > 1)
    {
      if (v77 == 2)
      {
        *&buf[16] = *v82;
      }

      else
      {
        v85 = *v82;
        buf[18] = v82[2];
        *&buf[16] = v85;
      }
    }

    else if (v77)
    {
      buf[16] = *v82;
    }

    buf[19] = v77;
    goto LABEL_78;
  }

  if (!*buf)
  {
    v67 = +[NSAssertionHandler currentHandler];
    v68 = [NSString stringWithUTF8String:"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"];
    [v67 handleFailureInFunction:v68 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_79;
  }

  if (*buf != 1000)
  {
    goto LABEL_79;
  }

  v35 = BYTE7(v194);
  v36 = v194 & 0xFFFFFFFFFFFFFFLL;
  v37 = BYTE7(v194) & 7;
  if (!v37)
  {
    goto LABEL_25;
  }

  v38 = 8 - v37;
  v39 = &v33[-(8 - v37)];
  if (v33 >= 8 - v37)
  {
    v40 = 8 * v37;
    v41 = v32;
    v42 = v194 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v43 = *v41++;
      v42 |= v43 << v40;
      v40 += 8;
    }

    while (v40 != 64);
    v44 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
    v45 = v193 + (*(&v193 + 1) ^ v42);
    v46 = __ROR8__(*(&v193 + 1) ^ v42, 48);
    v47 = (v45 ^ v46) + __ROR8__(*&buf[8] + *&buf[16], 32);
    v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
    v49 = v45 + v44;
    *&v193 = __ROR8__(v49, 32);
    *(&v193 + 1) = v48;
    *&buf[8] = v47 ^ v42;
    *&buf[16] = v49 ^ __ROR8__(v44, 47);
    v32 += v38;
    *&v194 = (v38 + v35) << 56;
    v34 = v39;
LABEL_25:
    if (v34 >= 8)
    {
      v51 = *&buf[8];
      v50 = *&buf[16];
      v52 = *(&v193 + 1);
      v53 = v193;
      do
      {
        v54 = *v32;
        v32 += 8;
        v55 = v52 ^ v54;
        v56 = v51 + v50;
        v57 = v56 ^ __ROR8__(v50, 51);
        v58 = v53 + v55;
        v59 = __ROR8__(v55, 48);
        v60 = (v58 ^ v59) + __ROR8__(v56, 32);
        v52 = v60 ^ __ROR8__(v58 ^ v59, 43);
        v61 = v58 + v57;
        v50 = v61 ^ __ROR8__(v57, 47);
        v53 = __ROR8__(v61, 32);
        *&v193 = v53;
        *(&v193 + 1) = v52;
        v51 = v60 ^ v54;
        *&buf[8] = v51;
        *&buf[16] = v50;
        v34 -= 8;
        v35 += 8;
      }

      while (v34 > 7);
    }

    v37 = 0;
  }

  if (v34)
  {
    v62 = 0;
    v63 = 0;
    v64 = v34;
    do
    {
      v65 = *v32++;
      v63 |= v65 << v62;
      v62 += 8;
      --v64;
    }

    while (v64);
    if (v37)
    {
      v66 = (v63 << (8 * v37)) | ((v34 + v35) << 56) | v36;
    }

    else
    {
      v66 = v63 | ((v34 + v35) << 56);
    }
  }

  else
  {
    if (v37)
    {
      goto LABEL_79;
    }

    v66 = v35 << 56;
  }

  *&v194 = v66;
LABEL_79:

  memset(&v205[8], 0, 64);
  *v205 = *buf;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        *&v205[8] = sub_1000711C0(&buf[8]);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Final(&v205[8], &buf[8]);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Final(&v205[8], &buf[8]);
          break;
        case 0x10A0:
          CC_SHA256_Final(&v205[8], &buf[8]);
          break;
        case 0x11A0:
          CC_SHA512_Final(&v205[8], &buf[8]);
          break;
      }
    }

    goto LABEL_108;
  }

  if (*buf <= 1999)
  {
    if (*buf)
    {
      if (*buf == 1000)
      {
        v86 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
        v87 = v193 + (*(&v193 + 1) ^ v194);
        v88 = __ROR8__(*(&v193 + 1) ^ v194, 48);
        v89 = (v87 ^ v88) + __ROR8__(*&buf[8] + *&buf[16], 32);
        v90 = v89 ^ __ROR8__(v87 ^ v88, 43);
        v91 = v87 + v86;
        v92 = v91 ^ __ROR8__(v86, 47);
        v93 = (v89 ^ v194) + v92;
        v94 = v93 ^ __ROR8__(v92, 51);
        v95 = (__ROR8__(v91, 32) ^ 0xFFLL) + v90;
        v96 = __ROR8__(v90, 48);
        v97 = __ROR8__(v93, 32) + (v95 ^ v96);
        v98 = v97 ^ __ROR8__(v95 ^ v96, 43);
        v99 = v94 + v95;
        v100 = v99 ^ __ROR8__(v94, 47);
        v101 = v100 + v97;
        v102 = v101 ^ __ROR8__(v100, 51);
        v103 = __ROR8__(v99, 32) + v98;
        v104 = __ROR8__(v98, 48);
        v105 = __ROR8__(v101, 32) + (v103 ^ v104);
        v106 = v105 ^ __ROR8__(v103 ^ v104, 43);
        v107 = v102 + v103;
        v108 = v107 ^ __ROR8__(v102, 47);
        v109 = v108 + v105;
        v110 = v109 ^ __ROR8__(v108, 51);
        v111 = __ROR8__(v107, 32) + v106;
        v112 = __ROR8__(v106, 48);
        v113 = __ROR8__(v109, 32) + (v111 ^ v112);
        v114 = v113 ^ __ROR8__(v111 ^ v112, 43);
        v115 = v110 + v111;
        *&buf[8] = v113;
        *&buf[16] = v115 ^ __ROR8__(v110, 47);
        *&v193 = __ROR8__(v115, 32);
        *(&v193 + 1) = v114;
        *&v205[8] = *&buf[16] ^ v113 ^ v193 ^ v114;
      }
    }

    else
    {
      v116 = +[NSAssertionHandler currentHandler];
      v117 = [NSString stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
      [v116 handleFailureInFunction:v117 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
    }

    goto LABEL_108;
  }

  if (*buf == 2000)
  {
    switch(buf[19])
    {
      case 1:
        v118 = buf[16];
        break;
      case 2:
        v118 = *&buf[16];
        break;
      case 3:
        v118 = *&buf[16] | (buf[18] << 16);
        break;
      default:
        v119 = *&buf[8];
        goto LABEL_107;
    }

    v119 = (461845907 * ((380141568 * v118) | ((-862048943 * v118) >> 17))) ^ *&buf[8];
LABEL_107:
    v120 = -2048144789 * (v119 ^ *&buf[12] ^ ((v119 ^ *&buf[12]) >> 16));
    *&buf[8] = (-1028477387 * (v120 ^ (v120 >> 13))) ^ ((-1028477387 * (v120 ^ (v120 >> 13))) >> 16);
    *&v205[8] = *&buf[8];
    goto LABEL_108;
  }

  if (*buf == 3000)
  {
    *&v205[8] = sub_1000710F0(&buf[8]);
  }

LABEL_108:
  v206[0] = *v205;
  v206[1] = *&v205[16];
  v206[2] = *&v205[32];
  v206[3] = *&v205[48];
  v207 = *&v205[64];
  if (*v205 > 3999)
  {
    if (*v205 > 4255)
    {
      if (*v205 == 4256)
      {
        v161 = v206 + 8;
        v162 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v163 = v162;
        for (i = 0; i != 64; i += 2)
        {
          v165 = *v161++;
          v166 = &v162[i];
          *v166 = a0123456789abcd_0[v165 >> 4];
          v166[1] = a0123456789abcd_0[v165 & 0xF];
        }

        v133 = [NSString alloc];
        v134 = v163;
        v135 = 64;
      }

      else
      {
        if (*v205 != 4512)
        {
          goto LABEL_167;
        }

        v140 = v206 + 8;
        v141 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v142 = v141;
        for (j = 0; j != 128; j += 2)
        {
          v144 = *v140++;
          v145 = &v141[j];
          *v145 = a0123456789abcd_0[v144 >> 4];
          v145[1] = a0123456789abcd_0[v144 & 0xF];
        }

        v133 = [NSString alloc];
        v134 = v142;
        v135 = 128;
      }
    }

    else if (*v205 == 4000)
    {
      v151 = v206 + 8;
      v152 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v153 = v152;
      for (k = 0; k != 32; k += 2)
      {
        v155 = *v151++;
        v156 = &v152[k];
        *v156 = a0123456789abcd_0[v155 >> 4];
        v156[1] = a0123456789abcd_0[v155 & 0xF];
      }

      v133 = [NSString alloc];
      v134 = v153;
      v135 = 32;
    }

    else
    {
      if (*v205 != 4001)
      {
        goto LABEL_167;
      }

      v127 = v206 + 8;
      v128 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v129 = v128;
      for (m = 0; m != 40; m += 2)
      {
        v131 = *v127++;
        v132 = &v128[m];
        *v132 = a0123456789abcd_0[v131 >> 4];
        v132[1] = a0123456789abcd_0[v131 & 0xF];
      }

      v133 = [NSString alloc];
      v134 = v129;
      v135 = 40;
    }
  }

  else
  {
    if (*v205 <= 2999)
    {
      if (*v205 == 1000)
      {
        v146 = *(&v206[0] + 1);
        if (*(&v206[0] + 1))
        {
          v147 = &v209;
          quot = *(&v206[0] + 1);
          do
          {
            v149 = lldiv(quot, 10);
            quot = v149.quot;
            if (v149.rem >= 0)
            {
              LOBYTE(v150) = v149.rem;
            }

            else
            {
              v150 = -v149.rem;
            }

            *v147-- = v150 + 48;
          }

          while (v149.quot);
          if (v146 < 0)
          {
            *v147 = 45;
          }

          else
          {
            ++v147;
          }

          v125 = v210 - v147;
          v126 = v147;
          goto LABEL_171;
        }

LABEL_168:
        v17 = @"0";
        goto LABEL_154;
      }

      if (*v205 == 2000)
      {
        v121 = DWORD2(v206[0]);
        if (DWORD2(v206[0]))
        {
          v122 = 0;
          do
          {
            v123 = ldiv(v121, 10);
            v121 = v123.quot;
            if (v123.rem >= 0)
            {
              LOBYTE(v124) = v123.rem;
            }

            else
            {
              v124 = -v123.rem;
            }

            *(&v209 + v122--) = v124 + 48;
          }

          while (v123.quot);
          v125 = -v122;
          v126 = v210 + v122;
LABEL_171:
          v167 = CFStringCreateWithBytes(0, v126, v125, 0x8000100u, 0);
          goto LABEL_153;
        }

        goto LABEL_168;
      }

LABEL_167:
      v183 = +[NSAssertionHandler currentHandler];
      v184 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
      [v183 handleFailureInFunction:v184 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

      v17 = &stru_1004D2058;
      goto LABEL_154;
    }

    if (*v205 == 3000)
    {
      LODWORD(v208[0]) = bswap32(DWORD2(v206[0]));
      v157 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v158 = 0;
      v159 = v157 + 1;
      do
      {
        v160 = *(v208 + v158);
        *(v159 - 1) = a0123456789abcd_0[v160 >> 4];
        *v159 = a0123456789abcd_0[v160 & 0xF];
        v159 += 2;
        ++v158;
      }

      while (v158 != 4);
      v133 = [NSString alloc];
      v134 = v157;
      v135 = 8;
    }

    else
    {
      if (*v205 != 3001)
      {
        goto LABEL_167;
      }

      v208[0] = bswap64(*(&v206[0] + 1));
      v136 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v137 = 0;
      v138 = v136 + 1;
      do
      {
        v139 = *(v208 + v137);
        *(v138 - 1) = a0123456789abcd_0[v139 >> 4];
        *v138 = a0123456789abcd_0[v139 & 0xF];
        v138 += 2;
        ++v137;
      }

      while (v137 != 8);
      v133 = [NSString alloc];
      v134 = v136;
      v135 = 16;
    }
  }

  v167 = [v133 initWithBytesNoCopy:v134 length:v135 encoding:4 freeWhenDone:{1, MRUserIdentity}];
LABEL_153:
  v17 = v167;
LABEL_154:

  v18 = [(__CFString *)v17 substringToIndex:7];
  v19 = [v13 userProfile];
  v20 = [v19 name];
  v23 = [v185 basicIdentityWithIdentifier:v18 displayName:v20];
LABEL_155:

  v11 = v186;
  v7 = v187;
  if (v23)
  {
    os_unfair_lock_unlock(&self->_lock);
    (*(v187 + 2))(v187, v23, 0);
LABEL_165:

    goto LABEL_166;
  }

LABEL_157:
  v168 = [(MRDMusicUserStateCenter *)self finishedWaitingForCloudStateDSIDs];
  v169 = [v168 containsObject:v10];

  if ((v169 & 1) == 0)
  {
    v170 = [(MRDMusicUserStateCenter *)self dsidToPendingCompletionMap];

    if (!v170)
    {
      v171 = +[NSMutableDictionary dictionary];
      [(MRDMusicUserStateCenter *)self setDsidToPendingCompletionMap:v171];
    }

    v172 = [(MRDMusicUserStateCenter *)self dsidToPendingCompletionMap];
    v173 = [v172 objectForKeyedSubscript:v10];

    if (!v173)
    {
      v174 = +[NSMutableArray array];
      v175 = [(MRDMusicUserStateCenter *)self dsidToPendingCompletionMap];
      [v175 setObject:v174 forKeyedSubscript:v10];

      v176 = dispatch_time(0, 5000000000);
      v177 = MRGroupSessionSubsystemGetQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006DF88;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v189 = v10;
      dispatch_after(v176, v177, block);
    }

    v178 = [(MRDMusicUserStateCenter *)self dsidToPendingCompletionMap];
    v179 = [v178 objectForKeyedSubscript:v10];
    v180 = objc_retainBlock(v7);
    [v179 addObject:v180];
  }

  os_unfair_lock_unlock(&self->_lock);
  v181 = [(MRDMusicUserStateCenter *)self finishedWaitingForCloudStateDSIDs];
  v182 = [v181 containsObject:v10];

  if (v182)
  {
    v23 = [NSError msv_errorWithDomain:MRGroupSessionError code:4 debugDescription:@"No identity found for dsid."];
    (*(v7 + 2))(v7, 0, v23);
    goto LABEL_165;
  }

LABEL_166:
}

- (void)checkPendingIdentityCompletions
{
  v2 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(MRDMusicUserStateCenter *)v2 dsidToPendingCompletionMap];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MRDMusicUserStateCenter *)v2 stateCenter];
    v6 = [v5 allUserStates];

    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v198 objects:v202 count:16];
    if (!v8)
    {
      goto LABEL_181;
    }

    v9 = v8;
    v10 = *v199;
    v189 = xmmword_10044E7C0;
    v188 = xmmword_10044E7D0;
    v190 = *v199;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v199 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v198 + 1) + 8 * i);
        v13 = [v12 dsid];

        if (v13)
        {
          v14 = [v12 dsid];
          v15 = [v14 stringValue];

          v16 = [(MRDMusicUserStateCenter *)v2 dsidToPendingCompletionMap];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (!v17)
          {
            goto LABEL_178;
          }

          v194 = v17;
          v18 = [v12 music];
          v19 = v18;
          if (!v18)
          {
            goto LABEL_177;
          }

          v192 = v15;
          v20 = [v18 userProfile];
          v21 = [v20 socialProfile];
          v22 = [v21 socialProfileID];

          v193 = v19;
          if (v22)
          {
            v191 = [v19 userProfile];
            v23 = [v191 socialProfile];
            v24 = [v23 socialProfileID];
            v25 = [v19 userProfile];
            v26 = [v25 socialProfile];
            [v26 name];
            v27 = v9;
            v28 = v7;
            v30 = v29 = v2;
            v31 = [MRUserIdentity resolvableIdentityWithIdentifier:v24 displayName:v30];

            v2 = v29;
            v7 = v28;
            v9 = v27;

            v19 = v193;
LABEL_175:

            v10 = v190;
            v15 = v192;
            if (v31)
            {
              v185 = [(MRDMusicUserStateCenter *)v2 dsidToPendingCompletionMap];
              [v185 setObject:0 forKeyedSubscript:v192];

              v186 = MRGroupSessionSubsystemGetNotificationQueue();
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10006F414;
              block[3] = &unk_1004B68F0;
              v196 = v194;
              v197 = v31;
              v187 = v31;
              dispatch_async(v186, block);

              v19 = v193;
            }

LABEL_177:

            v17 = v194;
LABEL_178:

            continue;
          }

          v32 = [v19 userProfile];
          v33 = [v32 name];

          v15 = v192;
          v19 = v193;
          if (!v33)
          {
            goto LABEL_177;
          }

          v34 = _MRLogForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v192;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[MRDMusicUserStateCenter] No social profile for dsid: %@. Will use basic identity.", buf, 0xCu);
          }

          v35 = v192;
          v214 = 0u;
          v213 = 0u;
          v212 = 0u;
          v211 = 0u;
          v210 = 0u;
          v209 = 0u;
          v208 = 0u;
          v207 = 0u;
          v206 = 0u;
          v205 = 0u;
          v204 = 0u;
          memset(&buf[8], 0, 32);
          *buf = 4001;
          CC_SHA1_Init(&buf[8]);
          v36 = v35;
          v37 = [v36 UTF8String];
          v38 = [v36 length];
          v39 = v38;
          if (*buf > 3000)
          {
            if (*buf <= 4000)
            {
              if (*buf == 3001)
              {
                sub_100070F58(&buf[8], v37, v38);
              }

              else if (*buf == 4000)
              {
                CC_MD5_Update(&buf[8], v37, v38);
              }
            }

            else
            {
              switch(*buf)
              {
                case 0xFA1:
                  CC_SHA1_Update(&buf[8], v37, v38);
                  break;
                case 0x10A0:
                  CC_SHA256_Update(&buf[8], v37, v38);
                  break;
                case 0x11A0:
                  CC_SHA512_Update(&buf[8], v37, v38);
                  break;
              }
            }

            goto LABEL_83;
          }

          if (*buf <= 1999)
          {
            if (!*buf)
            {
              v72 = +[NSAssertionHandler currentHandler];
              v73 = [NSString stringWithUTF8String:"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"];
              [v72 handleFailureInFunction:v73 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

              goto LABEL_83;
            }

            if (*buf != 1000)
            {
              goto LABEL_83;
            }

            v40 = BYTE7(v204);
            v41 = v204 & 0xFFFFFFFFFFFFFFLL;
            v42 = BYTE7(v204) & 7;
            if (v42)
            {
              v43 = 8 - v42;
              v44 = &v38[-(8 - v42)];
              if (v38 >= 8 - v42)
              {
                v45 = 8 * v42;
                v46 = v37;
                v47 = v204 & 0xFFFFFFFFFFFFFFLL;
                do
                {
                  v48 = *v46++;
                  v47 |= v48 << v45;
                  v45 += 8;
                }

                while (v45 != 64);
                v49 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
                v50 = *&buf[24] + (*&buf[32] ^ v47);
                v51 = __ROR8__(*&buf[32] ^ v47, 48);
                v52 = (v50 ^ v51) + __ROR8__(*&buf[8] + *&buf[16], 32);
                v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
                v54 = v50 + v49;
                *&buf[24] = __ROR8__(v54, 32);
                *&buf[32] = v53;
                *&buf[8] = v52 ^ v47;
                *&buf[16] = v54 ^ __ROR8__(v49, 47);
                v37 = (v37 + v43);
                *&v204 = (v43 + v40) << 56;
                v39 = v44;
                goto LABEL_29;
              }
            }

            else
            {
LABEL_29:
              if (v39 >= 8)
              {
                v55 = *&buf[8];
                v58 = *&buf[24];
                v57 = *&buf[16];
                v56 = *&buf[32];
                do
                {
                  v59 = *v37;
                  v37 += 4;
                  v60 = v56 ^ v59;
                  v61 = v55 + v57;
                  v62 = v61 ^ __ROR8__(v57, 51);
                  v63 = v58 + v60;
                  v64 = __ROR8__(v60, 48);
                  v65 = (v63 ^ v64) + __ROR8__(v61, 32);
                  v56 = v65 ^ __ROR8__(v63 ^ v64, 43);
                  v66 = v63 + v62;
                  v57 = v66 ^ __ROR8__(v62, 47);
                  v58 = __ROR8__(v66, 32);
                  *&buf[24] = v58;
                  *&buf[32] = v56;
                  v55 = v65 ^ v59;
                  *&buf[8] = v55;
                  *&buf[16] = v57;
                  v39 -= 8;
                  v40 += 8;
                }

                while (v39 > 7);
              }

              v42 = 0;
            }

            if (v39)
            {
              v67 = 0;
              v68 = 0;
              v69 = v39;
              do
              {
                v70 = *v37;
                v37 = (v37 + 1);
                v68 |= v70 << v67;
                v67 += 8;
                --v69;
              }

              while (v69);
              if (v42)
              {
                v71 = (v68 << (8 * v42)) | ((v39 + v40) << 56) | v41;
              }

              else
              {
                v71 = v68 | ((v39 + v40) << 56);
              }
            }

            else
            {
              if (v42)
              {
                goto LABEL_83;
              }

              v71 = v40 << 56;
            }

            *&v204 = v71;
LABEL_83:

            memset(&v215[8], 0, 64);
            *v215 = *buf;
            if (*buf > 3000)
            {
              if (*buf <= 4000)
              {
                if (*buf == 3001)
                {
                  *&v215[8] = sub_1000711C0(&buf[8]);
                }

                else if (*buf == 4000)
                {
                  CC_MD5_Final(&v215[8], &buf[8]);
                }
              }

              else
              {
                switch(*buf)
                {
                  case 0xFA1:
                    CC_SHA1_Final(&v215[8], &buf[8]);
                    break;
                  case 0x10A0:
                    CC_SHA256_Final(&v215[8], &buf[8]);
                    break;
                  case 0x11A0:
                    CC_SHA512_Final(&v215[8], &buf[8]);
                    break;
                }
              }

              goto LABEL_120;
            }

            if (*buf <= 1999)
            {
              if (*buf)
              {
                if (*buf == 1000)
                {
                  v92 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
                  v93 = *&buf[24] + (*&buf[32] ^ v204);
                  v94 = __ROR8__(*&buf[32] ^ v204, 48);
                  v95 = (v93 ^ v94) + __ROR8__(*&buf[8] + *&buf[16], 32);
                  v96 = v95 ^ __ROR8__(v93 ^ v94, 43);
                  v97 = v93 + v92;
                  v98 = v97 ^ __ROR8__(v92, 47);
                  v99 = (v95 ^ v204) + v98;
                  v100 = v99 ^ __ROR8__(v98, 51);
                  v101 = (__ROR8__(v97, 32) ^ 0xFFLL) + v96;
                  v102 = __ROR8__(v96, 48);
                  v103 = __ROR8__(v99, 32) + (v101 ^ v102);
                  v104 = v103 ^ __ROR8__(v101 ^ v102, 43);
                  v105 = v100 + v101;
                  v106 = v105 ^ __ROR8__(v100, 47);
                  v107 = v106 + v103;
                  v108 = v107 ^ __ROR8__(v106, 51);
                  v109 = __ROR8__(v105, 32) + v104;
                  v110 = __ROR8__(v104, 48);
                  v111 = __ROR8__(v107, 32) + (v109 ^ v110);
                  v112 = v111 ^ __ROR8__(v109 ^ v110, 43);
                  v113 = v108 + v109;
                  v114 = v113 ^ __ROR8__(v108, 47);
                  v115 = v114 + v111;
                  v116 = v115 ^ __ROR8__(v114, 51);
                  v117 = __ROR8__(v113, 32) + v112;
                  v118 = __ROR8__(v112, 48);
                  v119 = __ROR8__(v115, 32) + (v117 ^ v118);
                  v120 = v119 ^ __ROR8__(v117 ^ v118, 43);
                  v121 = v116 + v117;
                  *&buf[8] = v119;
                  *&buf[16] = v121 ^ __ROR8__(v116, 47);
                  *&buf[24] = __ROR8__(v121, 32);
                  *&buf[32] = v120;
                  *&v215[8] = *&buf[16] ^ v119 ^ *&buf[24] ^ v120;
                }
              }

              else
              {
                v123 = +[NSAssertionHandler currentHandler];
                v124 = [NSString stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
                [v123 handleFailureInFunction:v124 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
              }

LABEL_120:
              v216[0] = *v215;
              v216[1] = *&v215[16];
              v216[2] = *&v215[32];
              v216[3] = *&v215[48];
              v217 = *&v215[64];
              if (*v215 > 3999)
              {
                if (*v215 > 4255)
                {
                  if (*v215 == 4256)
                  {
                    v176 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                    v177 = v176;
                    v178 = 0;
                    v179 = v216 + 8;
                    do
                    {
                      v180 = *v179++;
                      v181 = &v176[v178];
                      *v181 = a0123456789abcd_0[v180 >> 4];
                      v181[1] = a0123456789abcd_0[v180 & 0xF];
                      v178 += 2;
                    }

                    while (v178 != 64);
                    v148 = [NSString alloc];
                    v149 = v177;
                    v150 = 64;
                  }

                  else
                  {
                    if (*v215 != 4512)
                    {
                      goto LABEL_167;
                    }

                    v155 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                    v156 = v155;
                    v157 = 0;
                    v158 = v216 + 8;
                    do
                    {
                      v159 = *v158++;
                      v160 = &v155[v157];
                      *v160 = a0123456789abcd_0[v159 >> 4];
                      v160[1] = a0123456789abcd_0[v159 & 0xF];
                      v157 += 2;
                    }

                    while (v157 != 128);
                    v148 = [NSString alloc];
                    v149 = v156;
                    v150 = 128;
                  }
                }

                else
                {
                  if (*v215 == 4000)
                  {
                    v166 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                    v167 = 0;
                    v168 = v216 + 8;
                    do
                    {
                      v169 = *v168++;
                      v170 = &v166[v167];
                      *v170 = a0123456789abcd_0[v169 >> 4];
                      v170[1] = a0123456789abcd_0[v169 & 0xF];
                      v167 += 2;
                    }

                    while (v167 != 32);
                    v171 = [[NSString alloc] initWithBytesNoCopy:v166 length:32 encoding:4 freeWhenDone:1];
                    goto LABEL_172;
                  }

                  if (*v215 != 4001)
                  {
                    goto LABEL_167;
                  }

                  v142 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                  v143 = v142;
                  v144 = 0;
                  v145 = v216 + 8;
                  do
                  {
                    v146 = *v145++;
                    v147 = &v142[v144];
                    *v147 = a0123456789abcd_0[v146 >> 4];
                    v147[1] = a0123456789abcd_0[v146 & 0xF];
                    v144 += 2;
                  }

                  while (v144 != 40);
                  v148 = [NSString alloc];
                  v149 = v143;
                  v150 = 40;
                }
              }

              else
              {
                if (*v215 <= 2999)
                {
                  if (*v215 != 1000)
                  {
                    if (*v215 == 2000)
                    {
                      quot = DWORD2(v216[0]);
                      if (DWORD2(v216[0]))
                      {
                        v138 = 0;
                        do
                        {
                          v139 = ldiv(quot, 10);
                          quot = v139.quot;
                          if (v139.rem >= 0)
                          {
                            LOBYTE(v140) = v139.rem;
                          }

                          else
                          {
                            v140 = -v139.rem;
                          }

                          v220[--v138] = v140 + 48;
                        }

                        while (v139.quot);
                        v141 = CFStringCreateWithBytes(0, &v220[v138], -v138, 0x8000100u, 0);
LABEL_165:
                        v182 = v141;
                      }

                      else
                      {
                        v182 = @"0";
                      }

LABEL_166:
                      v19 = v193;
LABEL_174:

                      v191 = v182;
                      v23 = [(__CFString *)v182 substringToIndex:7];
                      v24 = [v19 userProfile];
                      v25 = [v24 name];
                      v31 = [MRUserIdentity basicIdentityWithIdentifier:v23 displayName:v25];
                      goto LABEL_175;
                    }

LABEL_167:
                    v183 = +[NSAssertionHandler currentHandler];
                    v184 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                    [v183 handleFailureInFunction:v184 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                    v182 = &stru_1004D2058;
                    goto LABEL_166;
                  }

                  v161 = *(&v216[0] + 1);
                  if (*(&v216[0] + 1))
                  {
                    v162 = &v219;
                    v163 = *(&v216[0] + 1);
                    do
                    {
                      v164 = lldiv(v163, 10);
                      v163 = v164.quot;
                      if (v164.rem >= 0)
                      {
                        LOBYTE(v165) = v164.rem;
                      }

                      else
                      {
                        v165 = -v164.rem;
                      }

                      *v162-- = v165 + 48;
                    }

                    while (v164.quot);
                    if (v161 < 0)
                    {
                      *v162 = 45;
                    }

                    else
                    {
                      ++v162;
                    }

                    v171 = CFStringCreateWithBytes(0, v162, v220 - v162, 0x8000100u, 0);
LABEL_172:
                    v182 = v171;
                  }

                  else
                  {
                    v182 = @"0";
                  }

                  v19 = v193;
                  goto LABEL_174;
                }

                if (*v215 == 3000)
                {
                  LODWORD(v218[0]) = bswap32(DWORD2(v216[0]));
                  v172 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                  v173 = 0;
                  v174 = v172 + 1;
                  do
                  {
                    v175 = *(v218 + v173);
                    *(v174 - 1) = a0123456789abcd_0[v175 >> 4];
                    *v174 = a0123456789abcd_0[v175 & 0xF];
                    v174 += 2;
                    ++v173;
                  }

                  while (v173 != 4);
                  v148 = [NSString alloc];
                  v149 = v172;
                  v150 = 8;
                }

                else
                {
                  if (*v215 != 3001)
                  {
                    goto LABEL_167;
                  }

                  v218[0] = bswap64(*(&v216[0] + 1));
                  v151 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                  v152 = 0;
                  v153 = v151 + 1;
                  do
                  {
                    v154 = *(v218 + v152);
                    *(v153 - 1) = a0123456789abcd_0[v154 >> 4];
                    *v153 = a0123456789abcd_0[v154 & 0xF];
                    v153 += 2;
                    ++v152;
                  }

                  while (v152 != 8);
                  v148 = [NSString alloc];
                  v149 = v151;
                  v150 = 16;
                }
              }

              v141 = [v148 initWithBytesNoCopy:v149 length:v150 encoding:4 freeWhenDone:1];
              goto LABEL_165;
            }

            if (*buf != 2000)
            {
              if (*buf != 3000)
              {
                goto LABEL_120;
              }

              if (*&buf[12])
              {
                v122 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], v188), vshlq_u32(*&buf[16], v189)));
              }

              else
              {
                v122 = *&buf[24] + 374761393;
              }

              v126 = *&buf[8] + v122;
              v127 = BYTE8(v204) & 0xF;
              v128 = &buf[32];
              if (v127 >= 4)
              {
                do
                {
                  v129 = *v128;
                  v128 += 4;
                  HIDWORD(v130) = v126 - 1028477379 * v129;
                  LODWORD(v130) = HIDWORD(v130);
                  v126 = 668265263 * (v130 >> 15);
                  v127 -= 4;
                }

                while (v127 > 3);
              }

              for (; v127; --v127)
              {
                v131 = *v128++;
                HIDWORD(v132) = v126 + 374761393 * v131;
                LODWORD(v132) = HIDWORD(v132);
                v126 = -1640531535 * (v132 >> 21);
              }

              v133 = -1028477379 * ((-2048144777 * (v126 ^ (v126 >> 15))) ^ ((-2048144777 * (v126 ^ (v126 >> 15))) >> 13));
              v134 = v133 ^ HIWORD(v133);
              goto LABEL_119;
            }

            switch(buf[19])
            {
              case 1:
                v125 = buf[16];
                break;
              case 2:
                v125 = *&buf[16];
                break;
              case 3:
                v125 = *&buf[16] | (buf[18] << 16);
                break;
              default:
                v135 = *&buf[8];
LABEL_118:
                v136 = -2048144789 * (v135 ^ *&buf[12] ^ ((v135 ^ *&buf[12]) >> 16));
                v134 = (-1028477387 * (v136 ^ (v136 >> 13))) ^ ((-1028477387 * (v136 ^ (v136 >> 13))) >> 16);
                *&buf[8] = v134;
LABEL_119:
                *&v215[8] = v134;
                goto LABEL_120;
            }

            v135 = (461845907 * ((380141568 * v125) | ((-862048943 * v125) >> 17))) ^ *&buf[8];
            goto LABEL_118;
          }

          if (*buf != 2000)
          {
            if (*buf == 3000)
            {
              sub_100070DB4(&buf[8], v37, v38);
            }

            goto LABEL_83;
          }

          v74 = &v38[buf[19]];
          if (v74 < 4)
          {
            v75 = v38;
            v76 = &buf[buf[19] + 16];
            if (v75 <= 1u)
            {
              if (!v75)
              {
LABEL_82:
                *&buf[12] += v39;
                goto LABEL_83;
              }

              if (v75 == 1)
              {
                *v76 = *v37;
                goto LABEL_82;
              }

LABEL_66:
              memcpy(v76, v37, v75);
              goto LABEL_82;
            }

            if (v75 == 2)
            {
              v80 = *v37;
            }

            else
            {
              if (v75 != 3)
              {
                goto LABEL_66;
              }

              v80 = *v37;
              v76[2] = *(v37 + 2);
            }

            *v76 = v80;
            goto LABEL_82;
          }

          v77 = 0;
          if (buf[19] > 1u)
          {
            if (buf[19] == 2)
            {
              v78 = buf[16];
              v77 = HIBYTE(*&buf[16]);
              v79 = *v37;
LABEL_71:
              v81 = v79;
              v82 = v79 >> 8;
            }

            else
            {
              v78 = 0;
              v81 = 0;
              v82 = 0;
              if (buf[19] == 3)
              {
                v78 = buf[16];
                v77 = HIBYTE(*&buf[16]);
                v81 = buf[18];
                v82 = *v37;
              }
            }
          }

          else
          {
            if (buf[19])
            {
              v78 = buf[16];
              v77 = *v37;
              v79 = *(v37 + 1);
              goto LABEL_71;
            }

            v77 = BYTE1(*v37);
            v78 = *v37;
            v81 = BYTE2(*v37);
            v82 = HIBYTE(*v37);
          }

          v83 = (v81 << 16) | (v82 << 24) | v78 | (v77 << 8);
          HIDWORD(v84) = (461845907 * ((380141568 * v83) | ((-862048943 * v83) >> 17))) ^ *&buf[8];
          LODWORD(v84) = HIDWORD(v84);
          v85 = 5 * (v84 >> 19) - 430675100;
          *&buf[8] = v85;
          v86 = (v37 - buf[19] + 4);
          v87 = v37 + (v74 & 0xFFFFFFFFFFFFFFFCLL) - buf[19];
          while (v86 < v87)
          {
            v88 = *v86++;
            HIDWORD(v89) = (461845907 * ((380141568 * v88) | ((-862048943 * v88) >> 17))) ^ v85;
            LODWORD(v89) = HIDWORD(v89);
            v85 = 5 * (v89 >> 19) - 430675100;
            *&buf[8] = v85;
          }

          v90 = v74 & 3;
          if (v90 > 1)
          {
            if (v90 == 2)
            {
              *&buf[16] = *v87;
            }

            else
            {
              v91 = *v87;
              buf[18] = *(v87 + 2);
              *&buf[16] = v91;
            }
          }

          else if (v90)
          {
            buf[16] = *v87;
          }

          buf[19] = v90;
          goto LABEL_82;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v198 objects:v202 count:16];
      if (!v9)
      {
LABEL_181:

        break;
      }
    }
  }

  os_unfair_lock_unlock(&v2->_lock);
}

- (id)identityForUserState:(id)a3
{
  v3 = a3;
  v4 = [v3 music];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = [v4 userProfile];
  v7 = [v6 socialProfile];
  v8 = [v7 socialProfileID];

  if (!v8)
  {
    v16 = [v5 userProfile];
    v17 = [v16 name];

    if (v17)
    {
      v18 = [v3 dsid];
      v19 = [v18 stringValue];

      v20 = v19;
      memset(v71, 0, sizeof(v71));
      CC_SHA1_Init(v71);
      v9 = v20;
      CC_SHA1_Update(v71, [v9 UTF8String], objc_msgSend(v9, "length"));

      memset(&v72[8], 0, 64);
      *v72 = 4001;
      CC_SHA1_Final(&v72[8], v71);
      v73[0] = *v72;
      v73[1] = *&v72[16];
      v73[2] = *&v72[32];
      v73[3] = *&v72[48];
      v74 = *&v72[64];
      if (*v72 > 3999)
      {
        if (*v72 > 4255)
        {
          if (*v72 == 4256)
          {
            v61 = v73 + 8;
            v62 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
            v63 = v62;
            for (i = 0; i != 64; i += 2)
            {
              v65 = *v61++;
              v66 = &v62[i];
              *v66 = a0123456789abcd_0[v65 >> 4];
              v66[1] = a0123456789abcd_0[v65 & 0xF];
            }

            v33 = [NSString alloc];
            v34 = v63;
            v35 = 64;
          }

          else
          {
            if (*v72 != 4512)
            {
              goto LABEL_58;
            }

            v40 = v73 + 8;
            v41 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
            v42 = v41;
            for (j = 0; j != 128; j += 2)
            {
              v44 = *v40++;
              v45 = &v41[j];
              *v45 = a0123456789abcd_0[v44 >> 4];
              v45[1] = a0123456789abcd_0[v44 & 0xF];
            }

            v33 = [NSString alloc];
            v34 = v42;
            v35 = 128;
          }
        }

        else if (*v72 == 4000)
        {
          v51 = v73 + 8;
          v52 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
          v53 = v52;
          for (k = 0; k != 32; k += 2)
          {
            v55 = *v51++;
            v56 = &v52[k];
            *v56 = a0123456789abcd_0[v55 >> 4];
            v56[1] = a0123456789abcd_0[v55 & 0xF];
          }

          v33 = [NSString alloc];
          v34 = v53;
          v35 = 32;
        }

        else
        {
          if (*v72 != 4001)
          {
            goto LABEL_58;
          }

          v27 = v73 + 8;
          v28 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
          v29 = v28;
          for (m = 0; m != 40; m += 2)
          {
            v31 = *v27++;
            v32 = &v28[m];
            *v32 = a0123456789abcd_0[v31 >> 4];
            v32[1] = a0123456789abcd_0[v31 & 0xF];
          }

          v33 = [NSString alloc];
          v34 = v29;
          v35 = 40;
        }
      }

      else
      {
        if (*v72 <= 2999)
        {
          if (*v72 == 1000)
          {
            v46 = *(&v73[0] + 1);
            if (*(&v73[0] + 1))
            {
              v47 = &v76;
              quot = *(&v73[0] + 1);
              do
              {
                v49 = lldiv(quot, 10);
                quot = v49.quot;
                if (v49.rem >= 0)
                {
                  LOBYTE(v50) = v49.rem;
                }

                else
                {
                  v50 = -v49.rem;
                }

                *v47-- = v50 + 48;
              }

              while (v49.quot);
              if (v46 < 0)
              {
                *v47 = 45;
              }

              else
              {
                ++v47;
              }

              v25 = &v77 - v47;
              v26 = v47;
              goto LABEL_62;
            }

LABEL_59:
            v10 = @"0";
            goto LABEL_53;
          }

          if (*v72 == 2000)
          {
            v21 = DWORD2(v73[0]);
            if (DWORD2(v73[0]))
            {
              v22 = 0;
              do
              {
                v23 = ldiv(v21, 10);
                v21 = v23.quot;
                if (v23.rem >= 0)
                {
                  LOBYTE(v24) = v23.rem;
                }

                else
                {
                  v24 = -v23.rem;
                }

                *(&v76 + v22--) = v24 + 48;
              }

              while (v23.quot);
              v25 = -v22;
              v26 = &v77 + v22;
LABEL_62:
              v67 = CFStringCreateWithBytes(0, v26, v25, 0x8000100u, 0);
              goto LABEL_52;
            }

            goto LABEL_59;
          }

LABEL_58:
          v69 = [NSAssertionHandler currentHandler:4001];
          v70 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
          [v69 handleFailureInFunction:v70 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

          v10 = &stru_1004D2058;
          goto LABEL_53;
        }

        if (*v72 == 3000)
        {
          LODWORD(v75[0]) = bswap32(DWORD2(v73[0]));
          v57 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
          v58 = 0;
          v59 = v57 + 1;
          do
          {
            v60 = *(v75 + v58);
            *(v59 - 1) = a0123456789abcd_0[v60 >> 4];
            *v59 = a0123456789abcd_0[v60 & 0xF];
            v59 += 2;
            ++v58;
          }

          while (v58 != 4);
          v33 = [NSString alloc];
          v34 = v57;
          v35 = 8;
        }

        else
        {
          if (*v72 != 3001)
          {
            goto LABEL_58;
          }

          v75[0] = bswap64(*(&v73[0] + 1));
          v36 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
          v37 = 0;
          v38 = v36 + 1;
          do
          {
            v39 = *(v75 + v37);
            *(v38 - 1) = a0123456789abcd_0[v39 >> 4];
            *v38 = a0123456789abcd_0[v39 & 0xF];
            v38 += 2;
            ++v37;
          }

          while (v37 != 8);
          v33 = [NSString alloc];
          v34 = v36;
          v35 = 16;
        }
      }

      v67 = [v33 initWithBytesNoCopy:v34 length:v35 encoding:4 freeWhenDone:{1, 4001, *v71}];
LABEL_52:
      v10 = v67;
LABEL_53:

      v11 = [(__CFString *)v10 substringToIndex:7];
      v12 = [v5 userProfile];
      v13 = [v12 name];
      v15 = [MRUserIdentity basicIdentityWithIdentifier:v11 displayName:v13];
      goto LABEL_54;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_55;
  }

  v9 = [v5 userProfile];
  v10 = [v9 socialProfile];
  v11 = [(__CFString *)v10 socialProfileID];
  v12 = [v5 userProfile];
  v13 = [v12 socialProfile];
  v14 = [v13 name];
  v15 = [MRUserIdentity resolvableIdentityWithIdentifier:v11 displayName:v14];

LABEL_54:
LABEL_55:

  return v15;
}

- (id)identityForHomeUserIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MRDMusicUserStateCenter *)self stateCenter];
  v6 = [v5 allUserStates];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 homeUserIDs];
        v14 = [v13 containsObject:v4];

        if (v14)
        {
          v15 = [(MRDMusicUserStateCenter *)self identityForUserState:v12];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)updateIsMusicAppInstalled
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [(MRDMusicUserStateCenter *)self musicApplicationBundleIdentifier];
  v5 = [v3 applicationIsInstalled:v4];

  os_unfair_lock_lock(&self->_lock);
  LODWORD(v3) = self->_isMusicAppInstalled;
  self->_isMusicAppInstalled = v5;
  os_unfair_lock_unlock(&self->_lock);
  if (v3 != v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"not installed";
      if (v5)
      {
        v7 = @"installed";
      }

      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MRDMusicUserStateCenter] Music application changed to: %@", buf, 0xCu);
    }

    v8 = MRGroupSessionSubsystemGetNotificationQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000709B0;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)handleRegisteredApplicationsChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"bundleIDs"];

  v5 = [(MRDMusicUserStateCenter *)self musicApplicationBundleIdentifier];
  v6 = [v7 containsObject:v5];

  if (v6)
  {
    [(MRDMusicUserStateCenter *)self updateIsMusicAppInstalled];
  }
}

- (void)handleiTunesNotification:(id)a3
{
  [(MRDMusicUserStateCenter *)self postCloudStateChanged];

  [(MRDMusicUserStateCenter *)self checkPendingIdentityCompletions];
}

- (void)postCloudStateChanged
{
  v3 = MRGroupSessionSubsystemGetNotificationQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070B70;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v3, block);
}

@end