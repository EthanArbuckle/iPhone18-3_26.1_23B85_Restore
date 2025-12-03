@interface NSPPrivateAccessTokenRequest
- (NSObject)initWithChallenge:(void *)challenge tokenKey:(void *)key tokenKeyID:(void *)d originNameKey:(void *)nameKey selectedOrigin:(void *)origin blindedMessage:;
- (void)dealloc;
@end

@implementation NSPPrivateAccessTokenRequest

- (void)dealloc
{
  if (self)
  {
    ephemeralPrivateKey = self->_ephemeralPrivateKey;
    if (ephemeralPrivateKey)
    {
      CFRelease(ephemeralPrivateKey);
      self->_ephemeralPrivateKey = 0;
    }

    hpkeContext = self->_hpkeContext;
    if (hpkeContext)
    {
      free(hpkeContext);
      self->_hpkeContext = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NSPPrivateAccessTokenRequest;
  [(NSPPrivateAccessTokenRequest *)&v5 dealloc];
}

- (NSObject)initWithChallenge:(void *)challenge tokenKey:(void *)key tokenKeyID:(void *)d originNameKey:(void *)nameKey selectedOrigin:(void *)origin blindedMessage:
{
  v173 = *MEMORY[0x1E69E9840];
  v13 = a2;
  challengeCopy = challenge;
  keyCopy = key;
  dCopy = d;
  nameKeyCopy = nameKey;
  originCopy = origin;
  v19 = originCopy;
  if (!self)
  {
    v22 = 0;
    goto LABEL_56;
  }

  if (!challengeCopy)
  {
    v136 = nplog_obj();
    if (!os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_126;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v137 = "%s called with null tokenKey";
LABEL_125:
    _os_log_fault_impl(&dword_1AE7E2000, v136, OS_LOG_TYPE_FAULT, v137, md, 0xCu);
    goto LABEL_126;
  }

  if (!originCopy)
  {
    v136 = nplog_obj();
    if (!os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_126;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v137 = "%s called with null blindedMessage";
    goto LABEL_125;
  }

  if (([v13 isSupportedTokenType] & 1) == 0)
  {
    v136 = nplog_obj();
    if (!os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_126;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v137 = "%s called with null challenge.isSupportedTokenType";
    goto LABEL_125;
  }

  if ([v13 tokenType] != 3)
  {
    goto LABEL_8;
  }

  originName = [v13 originName];

  if (!originName)
  {
    v136 = nplog_obj();
    if (!os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_126;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v137 = "%s called with null challenge.originName";
    goto LABEL_125;
  }

  if (!dCopy)
  {
    v136 = nplog_obj();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
    {
      *md = 136315138;
      *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
      v137 = "%s called with null issuerEncapKey";
      goto LABEL_125;
    }

LABEL_126:

LABEL_28:
    v22 = 0;
LABEL_55:

    goto LABEL_56;
  }

LABEL_8:
  v162.receiver = self;
  v162.super_class = NSPPrivateAccessTokenRequest;
  v21 = [&v162 init];
  if (!v21)
  {
    self = nplog_obj();
    if (os_log_type_enabled(self, OS_LOG_TYPE_FAULT))
    {
      *md = 0;
      _os_log_fault_impl(&dword_1AE7E2000, self, OS_LOG_TYPE_FAULT, "[super init] failed", md, 2u);
    }

    goto LABEL_28;
  }

  v22 = v21;
  WORD1(v21[1].isa) = [v13 tokenType];
  originNames = [v13 originNames];
  v24 = [originNames count];

  if (!nameKeyCopy || v24 < 2)
  {
    originName2 = [v13 originName];
    objc_setProperty_atomic(v22, v31, originName2, 64);

    if (!keyCopy)
    {
      goto LABEL_13;
    }

LABEL_15:
    v28 = [keyCopy subdataWithRange:{objc_msgSend(keyCopy, "length") - 1, 1}];
    goto LABEL_16;
  }

  originNames2 = [v13 originNames];
  v26 = [originNames2 containsObject:nameKeyCopy];

  if ((v26 & 1) == 0)
  {
    v46 = nplog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      originNames3 = [v13 originNames];
      *md = 138412546;
      *&md[4] = nameKeyCopy;
      *&md[12] = 2112;
      *&md[14] = originNames3;
      _os_log_error_impl(&dword_1AE7E2000, v46, OS_LOG_TYPE_ERROR, "Failed to find origin name %@ in %@", md, 0x16u);
    }

    self = v22;
    goto LABEL_28;
  }

  objc_setProperty_atomic(v22, v27, nameKeyCopy, 64);
  if (keyCopy)
  {
    goto LABEL_15;
  }

LABEL_13:
  memset(md, 0, sizeof(md));
  CC_SHA256([challengeCopy bytes], objc_msgSend(challengeCopy, "length"), md);
  LOBYTE(buf) = md[31];
  v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&buf length:1];
LABEL_16:
  v32 = v28;
  objc_setProperty_atomic(v22, v29, v28, 48);

  if ([v13 tokenType] == 2 || objc_msgSend(v13, "tokenType") == 3)
  {
    v33 = v19;
    v34 = dCopy;
    v35 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v163 = __rev16(WORD1(v22[1].isa));
    [v35 appendBytes:&v163 length:2];
    objc_setProperty_atomic(v22, v36, v33, 32);
    if (WORD1(v22[1].isa) != 3)
    {
      [v35 appendData:{objc_getProperty(v22, v37, 48, 1)}];
      [v35 appendData:v33];
LABEL_24:
      v44 = v35;
      v45 = v35;
      self = v44;
LABEL_53:

      goto LABEL_54;
    }

    v160 = v35;
    v161 = dCopy;
    v159 = v34;
    v38 = v34;
    v39 = [v38 length];
    bytes = [v38 bytes];
    v158 = v19;
    if (v39 <= 0x26)
    {
      v41 = challengeCopy;
      v42 = v33;
      v43 = nplog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *md = 134217984;
        *&md[4] = v39;
        _os_log_error_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_ERROR, "Config length is too short: %zu", md, 0xCu);
      }

      dCopy = v161;
      goto LABEL_49;
    }

    v49 = bytes;
    if (*(bytes + 1) == 0x2000)
    {
      dCopy = v161;
      if (*(bytes + 35) == 256)
      {
        if (*(bytes + 37) == 256)
        {
          LOBYTE(v22[1].isa) = *bytes;
          WORD2(v22[1].isa) = *(bytes + 1);
          HIWORD(v22[1].isa) = *(bytes + 35);
          LOWORD(v22[2].isa) = *(bytes + 37);
          v50 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes + 3 length:32];
          objc_setProperty_atomic(v22, v51, v50, 40);

          if (objc_getProperty(v22, v52, 80, 1))
          {
            goto LABEL_36;
          }

          v75 = +[NSPPrivateAccessTokenClientState clientPrivateKey];
          if (v75)
          {
            v157 = v33;
            v76 = SecKeyCopyPublicKey(v75);
            if (v76)
            {
              v77 = v76;
              v78 = *MEMORY[0x1E697AD78];
              v79 = *MEMORY[0x1E697AD50];
              *&buf = *MEMORY[0x1E697AD68];
              *(&buf + 1) = v79;
              *md = v78;
              *&md[8] = &unk_1F24427F8;
              log = [MEMORY[0x1E695DF20] dictionaryWithObjects:md forKeys:&buf count:2];
              RandomKey = SecKeyCreateRandomKey(log, 0);
              if (RandomKey)
              {
                cfa = RandomKey;
                v81 = objc_alloc_init(MEMORY[0x1E695DF88]);
                isa_high = __rev16(WORD1(v22[1].isa));
                [v81 appendBytes:&isa_high length:2];
                [v81 appendBytes:"ClientBlind" length:11];
                v164 = 0;
                v144 = v81;
                v82 = [MEMORY[0x1E69996D0] blindPublicKey:v77 withPrivateKey:cfa context:v81 error:&v164];
                v148 = v164;
                CFRelease(v77);
                if (v82)
                {
                  v83 = [MEMORY[0x1E69996D0] compressedRepresentationFromSecKey:v82];
                  objc_setProperty_atomic(v22, v84, v83, 80);

                  CFRelease(v82);
                  if (objc_getProperty(v22, v85, 80, 1))
                  {
                    v22[12].isa = cfa;

                    v33 = v157;
LABEL_36:
                    v156 = v33;
                    [v160 appendData:{objc_getProperty(v22, v53, 80, 1)}];
                    memset(md, 0, sizeof(md));
                    CC_SHA256([v38 bytes], objc_msgSend(v38, "length"), md);
                    v54 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
                    objc_setProperty_atomic(v22, v55, v54, 56);

                    [v160 appendData:{objc_getProperty(v22, v56, 56, 1)}];
                    v58 = objc_getProperty(v22, v57, 40, 1);
                    if (!v58)
                    {
                      v138 = nplog_obj();
                      if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
                      {
                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "[NSPPrivateAccessTokenRequest encryptTokenRequest]";
                        _os_log_fault_impl(&dword_1AE7E2000, v138, OS_LOG_TYPE_FAULT, "%s called with null issuerEncapKey", &buf, 0xCu);
                      }

                      v65 = 0;
                      dCopy = v161;
                      goto LABEL_41;
                    }

                    v59 = v58;
                    cchpke_params_x25519_AESGCM128_HKDF_SHA256();
                    logc = cchpke_params_sizeof_kem_enc();
                    cf = malloc_type_calloc(1uLL, 0x60uLL, 0x10600407D690DC1uLL);
                    v60 = malloc_type_calloc(1uLL, logc, 0x190E006BuLL);
                    *v171 = 0;
                    ccrng();
                    v147 = v59;
                    [v59 bytes];
                    v61 = cchpke_initiator_setup();
                    v62 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v60 length:{logc, v60}];
                    objc_setProperty_atomic(v22, v63, v62, 112);

                    free(v60);
                    if (v61)
                    {
                      v64 = nplog_obj();
                      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(buf) = 67109120;
                        DWORD1(buf) = v61;
                        _os_log_error_impl(&dword_1AE7E2000, v64, OS_LOG_TYPE_ERROR, "Setup error: %d", &buf, 8u);
                      }

                      free(cf);
                      dCopy = v161;
                      v65 = v147;
LABEL_41:

                      v33 = v156;
                      goto LABEL_85;
                    }

                    v22[13].isa = cf;
                    v86 = objc_alloc_init(MEMORY[0x1E695DF88]);
                    isa = v22[1].isa;
                    [v86 appendBytes:&isa length:1];
                    LOWORD(v164) = WORD2(v22[1].isa);
                    [v86 appendBytes:&v164 length:2];
                    isa_high = HIWORD(v22[1].isa);
                    [v86 appendBytes:&isa_high length:2];
                    v167 = v22[2].isa;
                    [v86 appendBytes:&v167 length:2];
                    v166 = __rev16(WORD1(v22[1].isa));
                    cfb = v86;
                    [v86 appendBytes:&v166 length:2];
                    [v86 appendData:{objc_getProperty(v22, v87, 80, 1)}];
                    [v86 appendData:{objc_getProperty(v22, v88, 56, 1)}];
                    loga = objc_alloc_init(MEMORY[0x1E695DF88]);
                    [loga appendData:objc_getProperty(v22, v89, 48, 1)];
                    [loga appendData:objc_getProperty(v22, v90, 32, 1)];
                    v142 = objc_getProperty(v22, v91, 64, 1);
                    uTF8String = [v142 UTF8String];
                    v93 = strlen(uTF8String);
                    v94 = v93;
                    v95 = -v93 & 0x1FLL;
                    if (!v93)
                    {
                      v95 = 32;
                    }

                    v96 = v95 + v93;
                    v97 = malloc_type_calloc(1uLL, v95 + v93, 0xC8CB9515uLL);
                    memcpy(v97, uTF8String, v94);
                    v165 = bswap32(v96) >> 16;
                    [loga appendBytes:&v165 length:2];
                    [loga appendBytes:v97 length:v96];
                    free(v97);
                    v143 = malloc_type_calloc(1uLL, [loga length], 0x22C3DEEFuLL);
                    v98 = cchpke_params_sizeof_aead_tag();
                    v145 = malloc_type_calloc(1uLL, v98, 0x562F6EB5uLL);
                    v140 = v22[13].isa;
                    [cfb length];
                    [cfb bytes];
                    [loga length];
                    [loga bytes];
                    v141 = v98;
                    v99 = cchpke_initiator_encrypt();
                    if (v99)
                    {
                      v100 = v99;
                      v101 = nplog_obj();
                      v33 = v156;
                      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(buf) = 67109120;
                        DWORD1(buf) = v100;
                        _os_log_error_impl(&dword_1AE7E2000, v101, OS_LOG_TYPE_ERROR, "Encrypt error: %d", &buf, 8u);
                      }

                      free(v145);
                      free(v143);
                      v102 = 0;
                      dCopy = v161;
                      v103 = loga;
                    }

                    else
                    {
                      v105 = objc_alloc_init(MEMORY[0x1E695DF88]);
                      [v105 appendData:{objc_getProperty(v22, v106, 112, 1)}];
                      v103 = loga;
                      [v105 appendBytes:v143 length:{-[NSObject length](loga, "length")}];
                      [v105 appendBytes:v145 length:v141];
                      free(v145);
                      free(v143);
                      objc_setProperty_atomic(v22, v107, v105, 72);
                      Property = objc_getProperty(v22, v108, 72, 1);
                      v146 = Property != 0;
                      dCopy = v161;
                      v33 = v156;
                      if (!Property)
                      {
                        v110 = nplog_obj();
                        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf) = 0;
                          _os_log_error_impl(&dword_1AE7E2000, v110, OS_LOG_TYPE_ERROR, "Error creating encrypted token request", &buf, 2u);
                        }

                        v103 = loga;
                      }

                      v102 = v146;
                    }

                    if (!v102)
                    {
LABEL_85:
                      v130 = nplog_obj();
                      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(buf) = 0;
                        v131 = "Failed to encrypt the token request";
LABEL_87:
                        p_buf = &buf;
LABEL_120:
                        _os_log_error_impl(&dword_1AE7E2000, v130, OS_LOG_TYPE_ERROR, v131, p_buf, 2u);
                        goto LABEL_92;
                      }

                      goto LABEL_92;
                    }

                    v167 = bswap32([objc_getProperty(v22 v111]) >> 16;
                    [v160 appendBytes:&v167 length:2];
                    [v160 appendData:{objc_getProperty(v22, v112, 72, 1)}];
                    if (objc_getProperty(v22, v113, 80, 1))
                    {
                      if (objc_getProperty(v22, v114, 56, 1))
                      {
                        if (objc_getProperty(v22, v115, 72, 1))
                        {
                          if (v22[12].isa)
                          {
                            v116 = +[NSPPrivateAccessTokenClientState clientPrivateKey];
                            if (v116)
                            {
                              v117 = v116;
                              v118 = objc_alloc_init(MEMORY[0x1E695DF88]);
                              LOWORD(v164) = __rev16(WORD1(v22[1].isa));
                              [v118 appendBytes:&v164 length:2];
                              [v118 appendData:{objc_getProperty(v22, v119, 80, 1)}];
                              [v118 appendData:{objc_getProperty(v22, v120, 56, 1)}];
                              isa_high = bswap32([objc_getProperty(v22 v121]) >> 16;
                              [v118 appendBytes:&isa_high length:2];
                              [v118 appendData:{objc_getProperty(v22, v122, 72, 1)}];
                              v123 = objc_alloc_init(MEMORY[0x1E695DF88]);
                              [v123 appendBytes:&v164 length:2];
                              [v123 appendBytes:"ClientBlind" length:11];
                              v124 = v22[12].isa;
                              *v171 = 0;
                              v125 = [MEMORY[0x1E69996D0] blindSignMessage:v118 blindedBy:v124 withKey:v117 context:v123 error:v171];
                              v126 = *v171;
                              objc_setProperty_atomic(v22, v127, v125, 88);

                              if (objc_getProperty(v22, v128, 88, 1))
                              {

                                v35 = v160;
                                [v160 appendData:{objc_getProperty(v22, v129, 88, 1)}];
                                dCopy = v161;
                                v33 = v156;
                                v34 = v159;
                                goto LABEL_24;
                              }

                              logb = nplog_obj();
                              dCopy = v161;
                              if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
                              {
                                LODWORD(buf) = 138412290;
                                *(&buf + 4) = v126;
                                _os_log_error_impl(&dword_1AE7E2000, logb, OS_LOG_TYPE_ERROR, "generate signature: SecKeyCopyExternalRepresentation failed: %@", &buf, 0xCu);
                              }

                              v33 = v156;
LABEL_105:
                              v130 = nplog_obj();
                              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                              {
                                LOWORD(buf) = 0;
                                v131 = "Failed to generate the request signature";
                                goto LABEL_87;
                              }

LABEL_92:

                              self = 0;
LABEL_52:
                              v34 = v159;
                              v45 = v160;
                              goto LABEL_53;
                            }

                            v134 = nplog_obj();
                            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                            {
                              LOWORD(buf) = 0;
                              _os_log_error_impl(&dword_1AE7E2000, v134, OS_LOG_TYPE_ERROR, "generate signature: Failed to access stored client key", &buf, 2u);
                            }

LABEL_98:

                            goto LABEL_105;
                          }

                          v134 = nplog_obj();
                          if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
                          {
                            LODWORD(buf) = 136315138;
                            *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                            v139 = "%s called with null self.ephemeralPrivateKey";
                            goto LABEL_138;
                          }

LABEL_139:
                          dCopy = v161;
                          v33 = v156;
                          goto LABEL_98;
                        }

                        v134 = nplog_obj();
                        if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_139;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                        v139 = "%s called with null self.encryptedTokenRequest";
                      }

                      else
                      {
                        v134 = nplog_obj();
                        if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_139;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                        v139 = "%s called with null self.issuerEncapKeyID";
                      }
                    }

                    else
                    {
                      v134 = nplog_obj();
                      if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_139;
                      }

                      LODWORD(buf) = 136315138;
                      *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                      v139 = "%s called with null self.requestKey";
                    }

LABEL_138:
                    _os_log_fault_impl(&dword_1AE7E2000, v134, OS_LOG_TYPE_FAULT, v139, &buf, 0xCu);
                    goto LABEL_139;
                  }

                  v135 = nplog_obj();
                  v33 = v157;
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                  {
                    *v171 = 0;
                    _os_log_error_impl(&dword_1AE7E2000, v135, OS_LOG_TYPE_ERROR, "generate key: compressedRepresentationFromSecKey failed", v171, 2u);
                  }

                  dCopy = v161;
                }

                else
                {
                  v135 = nplog_obj();
                  dCopy = v161;
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                  {
                    *v171 = 138412290;
                    *&v171[4] = v148;
                    _os_log_error_impl(&dword_1AE7E2000, v135, OS_LOG_TYPE_ERROR, "generate key: blindPublicKey failed: %@", v171, 0xCu);
                  }

                  v33 = v157;
                }

                CFRelease(cfa);
              }

              else
              {
                CFRelease(v77);
                v133 = nplog_obj();
                if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                {
                  *v171 = 0;
                  _os_log_error_impl(&dword_1AE7E2000, v133, OS_LOG_TYPE_ERROR, "generate key: SecKeyCreateRandomKey failed", v171, 2u);
                }

                dCopy = v161;
                v33 = v157;
              }

LABEL_91:
              v130 = nplog_obj();
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                *md = 0;
                v131 = "Failed to generate the request key";
                p_buf = md;
                goto LABEL_120;
              }

              goto LABEL_92;
            }

            v104 = nplog_obj();
            dCopy = v161;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *v171 = 0;
              _os_log_error_impl(&dword_1AE7E2000, v104, OS_LOG_TYPE_ERROR, "generate key: SecKeyCopyPublicKey failed", v171, 2u);
            }
          }

          else
          {
            v104 = nplog_obj();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *v171 = 0;
              _os_log_error_impl(&dword_1AE7E2000, v104, OS_LOG_TYPE_ERROR, "generate key: Failed to access stored client key", v171, 2u);
            }

            dCopy = v161;
          }

          goto LABEL_91;
        }

        v41 = challengeCopy;
        v42 = v33;
        v43 = nplog_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v69 = bswap32(*(v49 + 37)) >> 16;
          *md = 67109120;
          *&md[4] = v69;
          v67 = "AEAD %u is not supported";
          goto LABEL_48;
        }

LABEL_49:

        v70 = nplog_obj();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *md = 0;
          _os_log_error_impl(&dword_1AE7E2000, v70, OS_LOG_TYPE_ERROR, "Failed to parse origin name key", md, 2u);
        }

        self = 0;
        v33 = v42;
        challengeCopy = v41;
        v19 = v158;
        goto LABEL_52;
      }

      v41 = challengeCopy;
      v42 = v33;
      v43 = nplog_obj();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v68 = bswap32(*(v49 + 35)) >> 16;
      *md = 67109120;
      *&md[4] = v68;
      v67 = "KDF %u is not supported";
    }

    else
    {
      v41 = challengeCopy;
      v42 = v33;
      v43 = nplog_obj();
      dCopy = v161;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v66 = bswap32(*(v49 + 1)) >> 16;
      *md = 67109120;
      *&md[4] = v66;
      v67 = "KEM %u is not supported";
    }

LABEL_48:
    _os_log_error_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_ERROR, v67, md, 8u);
    goto LABEL_49;
  }

  if ([v13 tokenType] == 58796 || objc_msgSend(v13, "tokenType") == 49278)
  {
    v47 = MEMORY[0x1E695DF88];
    v33 = v19;
    self = objc_alloc_init(v47);
    *md = __rev16(WORD1(v22[1].isa));
    [self appendBytes:md length:2];
    [self appendData:objc_getProperty(v22, v48, 48, 1)];
    [self appendData:v33];
LABEL_54:

    objc_setProperty_atomic(v22, v71, self, 24);
    goto LABEL_55;
  }

LABEL_56:

  v72 = *MEMORY[0x1E69E9840];
  return v22;
}

@end