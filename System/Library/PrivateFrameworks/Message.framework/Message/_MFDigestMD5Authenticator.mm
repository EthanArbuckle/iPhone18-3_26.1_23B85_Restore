@interface _MFDigestMD5Authenticator
- (id)responseForServerData:(id)a3;
- (void)dealloc;
- (void)setAuthenticationState:(int64_t)a3;
- (void)setCryptInfo:(void *)a3;
- (void)setExpectedResponse:(id)a3;
@end

@implementation _MFDigestMD5Authenticator

- (void)dealloc
{
  if (self->_cryptInfo)
  {
    NSZoneFree([(_MFDigestMD5Authenticator *)self zone], self->_cryptInfo);
  }

  v3.receiver = self;
  v3.super_class = _MFDigestMD5Authenticator;
  [(_MFDigestMD5Authenticator *)&v3 dealloc];
}

- (void)setAuthenticationState:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _MFDigestMD5Authenticator;
  [(ECSASLAuthenticator *)&v6 setAuthenticationState:?];
  if (a3 != 1)
  {
    expectedResponse = self->_expectedResponse;
    if (expectedResponse)
    {

      self->_expectedResponse = 0;
    }

    *(self + 42) = *(self + 42) & 0xFC | 1;
    *(self + 20) = 0;
  }
}

- (id)responseForServerData:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  if ([(ECSASLAuthenticator *)self authenticationState]== 1)
  {
    v77 = [a3 bytes];
    v5 = [a3 length];
    v78 = &v77[v5];
    v79 = 0xAAAAAAAA00000001;
    v80 = 0u;
    v81 = 0u;
    v82 = 0;
    if (v5 >= 1)
    {
      while (1)
      {
        if (!v79)
        {
          goto LABEL_142;
        }

        v6 = copyToken(&v77);
        v7 = v6;
        v8 = v77;
        v9 = v78;
        if (v77 >= v78)
        {
          v10 = 0;
        }

        else
        {
LABEL_5:
          v10 = *v8;
        }

        v11 = v8;
        v8 = v77;
        do
        {
          while (1)
          {
            do
            {
              v12 = v10;
              v10 = 0;
            }

            while (v12 > 0x20u);
            if (((1 << v12) & 0x100002600) == 0)
            {
              break;
            }

            v10 = 0;
            v8 = v11 + 1;
            v11 = v8;
            if (v8 < v78)
            {
              v77 = v8;
              goto LABEL_5;
            }
          }
        }

        while (v12);
        v77 = v8;
        if (v6)
        {
          if (v11 >= v78 || *v11 != 61)
          {
            v15 = MFLogGeneral();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              goto LABEL_53;
            }

            if (v11 >= v9)
            {
              v16 = 0;
            }

            else
            {
              v16 = *v11;
            }

            goto LABEL_51;
          }

          v13 = v11 + 1;
          v77 = v11 + 1;
          if (v11 + 1 >= v78)
          {
            v14 = 0;
          }

          else
          {
LABEL_18:
            v14 = *v13;
          }

          v17 = v13;
          v13 = v77;
          do
          {
            while (1)
            {
              do
              {
                v18 = v14;
                v14 = 0;
              }

              while (v18 > 0x20u);
              if (((1 << v18) & 0x100002600) == 0)
              {
                break;
              }

              v14 = 0;
              v13 = v17 + 1;
              v17 = v13;
              if (v13 < v78)
              {
                v77 = v13;
                goto LABEL_18;
              }
            }
          }

          while (v18);
          v77 = v13;
          if ([(__CFString *)v6 caseInsensitiveCompare:@"realm"])
          {
            if ([(__CFString *)v7 caseInsensitiveCompare:@"nonce"])
            {
              if ([(__CFString *)v7 caseInsensitiveCompare:@"qop"])
              {
                if ([(__CFString *)v7 caseInsensitiveCompare:@"stale"])
                {
                  if ([(__CFString *)v7 caseInsensitiveCompare:@"maxbuf"])
                  {
                    if ([(__CFString *)v7 caseInsensitiveCompare:@"charset"])
                    {
                      if ([(__CFString *)v7 caseInsensitiveCompare:@"algorithm"])
                      {
                        if (![(__CFString *)v7 caseInsensitiveCompare:@"cipher-opts"])
                        {
                          v53 = copyQuotedTokenList(&v77);
                          v21 = v53;
                          if (v53)
                          {
                            if (!v81)
                            {
                              *&v81 = [(__CFData *)v53 copy];
                            }

                            goto LABEL_118;
                          }

                          v56 = MFLogGeneral();
                          if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                          {
                            goto LABEL_118;
                          }

                          buf.A = 138412290;
                          *&buf.B = v7;
                          v28 = v56;
                          v29 = "*** Unable to parse %@. Ignoring";
LABEL_60:
                          v30 = 12;
                          goto LABEL_61;
                        }

                        v19 = [(__CFString *)v7 caseInsensitiveCompare:@"rspauth"];
                        v20 = copyToken(&v77);
                        v21 = v20;
                        if (v19)
                        {
                          if (v20)
                          {
                            goto LABEL_118;
                          }

                          v21 = quoted_string(&v77);
                          if (v21)
                          {
                            goto LABEL_118;
                          }

                          v22 = MFLogGeneral();
                          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                          {
                            buf.A = 138412290;
                            *&buf.B = v7;
                            v23 = v22;
                            v24 = "*** Unable to parse %@. Aborting";
                            v25 = 12;
                            goto LABEL_52;
                          }

                          goto LABEL_53;
                        }

                        if (v20)
                        {
                          if (!*(&v81 + 1))
                          {
                            *(&v81 + 1) = MFCreateDataWithString();
                          }

                          goto LABEL_118;
                        }

                        v43 = MFLogGeneral();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                        {
LABEL_127:
                          buf.A = 138412290;
                          *&buf.B = v7;
                          _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_INFO, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
                        }
                      }

                      else
                      {
                        v51 = copyToken(&v77);
                        if (v51)
                        {
                          v34 = v51;
LABEL_102:
                          if ([(__CFString *)v34 caseInsensitiveCompare:@"md5-sess"])
                          {
                            v52 = MFLogGeneral();
                            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                            {
                              buf.A = 138412546;
                              *&buf.B = v34;
                              LOWORD(buf.D) = 2112;
                              *(&buf.D + 2) = v7;
                              _os_log_impl(&dword_1B0389000, v52, OS_LOG_TYPE_INFO, "*** Unexpected value %@ for %@. Ignoring", &buf, 0x16u);
                            }

                            LODWORD(v79) = 0;
                          }

                          else
                          {
                            LODWORD(v82) = v82 | 0x20;
                          }

LABEL_77:

                          goto LABEL_54;
                        }

                        v54 = quoted_string(&v77);
                        if (v54)
                        {
                          v55 = v54;
                          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v54 encoding:4];

                          if (v34)
                          {
                            goto LABEL_102;
                          }
                        }

                        v43 = MFLogGeneral();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_127;
                        }
                      }
                    }

                    else
                    {
                      v49 = copyToken(&v77);
                      if (v49)
                      {
                        v21 = v49;
                        if ([(__CFString *)v49 caseInsensitiveCompare:@"utf-8"])
                        {
                          v50 = MFLogGeneral();
                          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                          {
                            buf.A = 138412546;
                            *&buf.B = v21;
                            LOWORD(buf.D) = 2112;
                            *(&buf.D + 2) = v7;
                            v28 = v50;
                            v29 = "*** Unexpected value %@ for %@. Ignoring";
                            v30 = 22;
LABEL_61:
                            _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_INFO, v29, &buf, v30);
                          }

LABEL_118:

                          goto LABEL_54;
                        }

                        v46 = v82 | 0x10;
LABEL_117:
                        LODWORD(v82) = v46;
                        goto LABEL_118;
                      }

                      v43 = MFLogGeneral();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                      {
                        goto LABEL_127;
                      }
                    }
                  }

                  else
                  {
                    v47 = copyToken(&v77);
                    if (v47)
                    {
                      v21 = v47;
                      v48 = [(__CFString *)v47 intValue];
                      if ((v48 - 1) > 0xFFFD)
                      {
                        goto LABEL_118;
                      }

                      v46 = v82 & 0xFFC0003F | (v48 << 6);
                      goto LABEL_117;
                    }

                    v43 = MFLogGeneral();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_127;
                    }
                  }
                }

                else
                {
                  v44 = copyToken(&v77);
                  if (v44)
                  {
                    v21 = v44;
                    if (NSBOOLFromString())
                    {
                      v45 = 8;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    v46 = v82 & 0xFFFFFFF7 | v45;
                    goto LABEL_117;
                  }

                  v43 = MFLogGeneral();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_127;
                  }
                }
              }

              else
              {
                v33 = copyQuotedTokenList(&v77);
                if (v33)
                {
                  v34 = v33;
                  v35 = [(__CFString *)v33 count];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = v82;
                    do
                    {
                      v38 = [(__CFString *)v34 objectAtIndex:--v36];
                      v39 = 0;
                      do
                      {
                        v40 = v39;
                        v41 = [(__CFString *)QOP_NAMES[v39] caseInsensitiveCompare:v38];
                        v39 = v40 + 1;
                      }

                      while (v40 <= 1 && v41);
                      v42 = (1 << v39) & 7;
                      if (v41)
                      {
                        v42 = 0;
                      }

                      v37 |= v42;
                    }

                    while (v36);
                    LODWORD(v82) = v37;
                  }

                  goto LABEL_77;
                }

                v43 = MFLogGeneral();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_127;
                }
              }
            }

            else
            {
              v31 = quoted_string(&v77);
              if (v31)
              {
                v21 = v31;
                if (*(&v80 + 1))
                {
                  v32 = MFLogGeneral();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    buf.A = 138412290;
                    *&buf.B = v7;
                    _os_log_impl(&dword_1B0389000, v32, OS_LOG_TYPE_INFO, "*** Duplicate value for %@. Ignoring", &buf, 0xCu);
                  }

                  LODWORD(v79) = 0;
                  goto LABEL_118;
                }

                *(&v80 + 1) = v31;
              }

              else
              {
                v43 = MFLogGeneral();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_127;
                }
              }
            }
          }

          else
          {
            v26 = quoted_string(&v77);
            if (v26)
            {
              v21 = v26;
              if (v80)
              {
                v27 = MFLogGeneral();
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_118;
                }

                buf.A = 138412290;
                *&buf.B = v7;
                v28 = v27;
                v29 = "*** Duplicate value for %@. Ignoring";
                goto LABEL_60;
              }

              *&v80 = v26;
            }

            else
            {
              v43 = MFLogGeneral();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                goto LABEL_127;
              }
            }
          }
        }

        else
        {
          if (v11 >= v78 || *v11 != 44)
          {
            v15 = MFLogGeneral();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              goto LABEL_53;
            }

            if (v11 >= v9)
            {
              v16 = 0;
            }

            else
            {
              v16 = *v11;
            }

LABEL_51:
            buf.A = 67109120;
            buf.B = v16;
            v23 = v15;
            v24 = "*** Unexpected character '%c', aborting";
            v25 = 8;
LABEL_52:
            _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_INFO, v24, &buf, v25);
LABEL_53:
            LODWORD(v79) = 0;
            goto LABEL_54;
          }

          v77 = v11 + 1;
        }

LABEL_54:

        if (v77 >= v78)
        {
          if (!v79)
          {
            goto LABEL_142;
          }

          break;
        }
      }
    }

    if (self->_expectedResponse)
    {
      if (*(&v81 + 1))
      {
        if ([*(&v81 + 1) isEqual:?])
        {
          [(_MFDigestMD5Authenticator *)self setAuthenticationState:4];
          v57 = [MEMORY[0x1E695DEF0] data];
LABEL_143:

          goto LABEL_144;
        }

        v60 = MFLogGeneral();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.A) = 0;
          v61 = "*** Bogus rspauth value returned from the server";
          goto LABEL_141;
        }
      }

      else
      {
        v60 = MFLogGeneral();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.A) = 0;
          v61 = "*** Missing rspauth value in server message";
LABEL_141:
          _os_log_impl(&dword_1B0389000, v60, OS_LOG_TYPE_INFO, v61, &buf, 2u);
        }
      }

LABEL_142:
      [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
      v57 = 0;
      goto LABEL_143;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v58 = v82;
    if ((v82 & 0x20) != 0)
    {
      memset(&buf, 170, 16);
      if (MFGetRandomBytes())
      {
        v64 = CFDataCreateWithBytesNoCopy(0, &buf, 16, *MEMORY[0x1E695E498]);
        v65 = [(__CFData *)v64 mf_encodeBase64WithoutLineBreaks];
        *&v83 = v65;
        CFRelease(v64);
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%08x", 1];
        *(&v83 + 1) = MFCreateDataWithString();
        if ((v58 & 4) != 0)
        {
          [(_MFDigestMD5Authenticator *)self setSecurityLevel:2];
          [(_MFDigestMD5Authenticator *)self setMaxBuffer:(v58 >> 6)];
        }

        else
        {
          [(_MFDigestMD5Authenticator *)self setSecurityLevel:1];
        }

        v66 = [(_MFDigestMD5Authenticator *)self securityLevel];
        if ((v66 - 1) <= 2)
        {
          v67 = QOP_NAMES[(v66 - 1)];
        }

        *&v84 = MFCreateDataWithString();
        v68 = [(ECSASLAuthenticator *)self account];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", objc_msgSend(objc_opt_class(), "saslProfileName"), -[ECAuthenticatableAccount hostname](v68, "hostname")];
        [(ECAuthenticatableAccount *)v68 username];
        *(&v84 + 1) = MFCreateDataWithString();
        [(ECAuthenticatableAccount *)v68 password];
        *&v85 = MFCreateDataWithString();
        *(&v85 + 1) = MFCreateDataWithString();
        v69 = v80;
        *&v86 = [v80 copy];
        *(&v86 + 1) = _createResponseData(&v80, &v83, 1);
        if (*(&v86 + 1))
        {
          v70 = [(_MFDigestMD5Authenticator *)self securityLevel];
          if (v70 == 2)
          {
            *&v72 = 0xAAAAAAAAAAAAAAAALL;
            *(&v72 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&buf.data[13] = v72;
            *&buf.data[6] = v72;
            *&buf.data[10] = v72;
            *&buf.Nl = v72;
            *&buf.data[2] = v72;
            *&buf.A = v72;
            [(_MFDigestMD5Authenticator *)self setCryptInfo:NSZoneCalloc([(_MFDigestMD5Authenticator *)self zone], 1uLL, 0x28uLL)];
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, &v87, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to server-to-client signing key magic constant", 0x41u);
            CC_MD5_Final(0x18, &buf);
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, &v87, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to client-to-server signing key magic constant", 0x41u);
            CC_MD5_Final(8, &buf);
          }

          else if (v70 == 3)
          {
            v71 = MFLogGeneral();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf.A) = 0;
              _os_log_impl(&dword_1B0389000, v71, OS_LOG_TYPE_INFO, "*** ECSASLPrivacySecurityLevel is not supported.", &buf, 2u);
            }
          }

          ResponseData = _createResponseData(&v80, &v83, 0);
          [(_MFDigestMD5Authenticator *)self setExpectedResponse:ResponseData];

          v74 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
          v75 = v74;
          if (*(&v84 + 1))
          {
            _appendQuotedString(v74, "username", *(&v84 + 1));
          }

          if (v69)
          {
            _appendQuotedString(v75, "realm", v69);
          }

          if (*(&v80 + 1))
          {
            _appendQuotedString(v75, "nonce", *(&v80 + 1));
          }

          _appendQuotedString(v75, "cnonce", v83);
          _appendValue(v75, "nc", *(&v83 + 1));
          _appendValue(v75, "qop", v84);
          _appendQuotedString(v75, "digest-uri", *(&v85 + 1));
          _appendValue(v75, "response", *(&v86 + 1));
          if (*(self + 20))
          {
            EFStringWithInt();
            v76 = MFCreateDataWithString();
            _appendValue(v75, "maxbuf", v76);
          }

          if ((v58 & 0x10) != 0)
          {
            _appendValue(v75, "charset", [@"utf-8" dataUsingEncoding:1]);
          }

          v57 = v75;
          v65 = v83;
          if (!v83)
          {
            goto LABEL_151;
          }

          goto LABEL_150;
        }

LABEL_149:
        [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
        v57 = 0;
        if (!v65)
        {
LABEL_151:
          if (v84)
          {
          }

          if (*(&v83 + 1))
          {
          }

          if (*(&v84 + 1))
          {
          }

          if (v85)
          {
          }

          if (*(&v85 + 1))
          {
          }

          if (v86)
          {
          }

          if (*(&v86 + 1))
          {
          }

          goto LABEL_143;
        }

LABEL_150:

        goto LABEL_151;
      }
    }

    else
    {
      v59 = MFLogGeneral();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.A) = 0;
        _os_log_impl(&dword_1B0389000, v59, OS_LOG_TYPE_INFO, "*** Missing algorithm=md5-sess in server response", &buf, 2u);
      }
    }

    v65 = 0;
    goto LABEL_149;
  }

  v57 = 0;
LABEL_144:
  v62 = *MEMORY[0x1E69E9840];
  return v57;
}

- (void)setCryptInfo:(void *)a3
{
  if (self->_cryptInfo)
  {
    NSZoneFree([(_MFDigestMD5Authenticator *)self zone], self->_cryptInfo);
  }

  self->_cryptInfo = a3;
}

- (void)setExpectedResponse:(id)a3
{
  v5 = a3;

  self->_expectedResponse = a3;
}

@end