@interface DIEncryptionChpass
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)a3 error:(id *)a4;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)a3 usage:(int64_t)a4 error:(id *)a5;
- (BOOL)replacePassWithXpcHandler:(id)a3 params:(id)a4 error:(id *)a5;
- (BOOL)replacePassphrase:(const char *)a3 error:(id *)a4;
- (BOOL)unlockWithPassphrase:(const char *)a3 error:(id *)a4;
- (BOOL)updateDiskImageParamsWithFrontend:(id)a3 error:(id *)a4;
- (DIEncryptionChpass)initWithCoder:(id)a3;
- (DIEncryptionChpass)initWithParams:(id)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
- (void)setPassEntryToChange:(void *)a3;
@end

@implementation DIEncryptionChpass

- (DIEncryptionChpass)initWithParams:(id)a3
{
  v4.receiver = self;
  v4.super_class = DIEncryptionChpass;
  return [(DIEncryptionFrontend *)&v4 initWithParams:a3];
}

- (DIEncryptionChpass)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionChpass *)self initWithParams:v5];
  if (v6)
  {
    -[DIEncryptionFrontend setAllowStoringInKeychain:](v6, "setAllowStoringInKeychain:", [v4 decodeBoolForKey:@"allowStoringInKeychain"]);
    sub_100034340(v4, &v9);
    sub_1000344D8(&v6->_passEntryToChange.__ptr_, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      operator delete();
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DIEncryptionFrontend *)self diParams];
  [v6 encodeObject:v4 forKey:@"diParams"];

  ptr = self->_passEntryToChange.__ptr_;
  if (ptr)
  {
    sub_1000345C8(v6, ptr);
  }
}

- (BOOL)replacePassWithXpcHandler:(id)a3 params:(id)a4 error:(id *)a5
{
  v7 = a3;
  LOBYTE(a5) = [(DIEncryptionFrontend *)self addPassphraseEntryWithXpcHandler:v7 flags:[(DIEncryptionFrontend *)self flags] usage:2 error:a5];

  return a5;
}

- (BOOL)unlockWithPassphrase:(const char *)a3 error:(id *)a4
{
  v7 = [(DIEncryptionFrontend *)self diParams];
  v8 = [v7 diskImageParamsXPC];

  v19 = [v8 backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v27 = v9;
    v28 = v11;
    v29[0] = 0;
    v30 = 0;
    v12 = &selRef_stringWithCString_encoding_;
    if (v11 == v9[1])
    {
LABEL_20:
      sleep(2u);
      v4 = [v12 + 445 failWithPOSIXCode:80 description:@"Incorrect passphrase" error:a4];
    }

    else
    {
      while (1)
      {
        v13 = sub_100031244(&v27);
        if (!*(v13 + 632))
        {
          v14 = sub_100180660(v13, a3, &v20);
          if (v22 == 1)
          {
            [v19 cryptoHeader];
            sub_100036F78();
          }

          v15 = std::generic_category();
          *buf = 35;
          v26 = v15;
          if (*(*v21 + 32))(v21, v20, buf) || ((v26->equivalent_0)(v26, &v20, *buf))
          {
            v16 = 1;
          }

          else
          {
            v4 = [DIError failWithUnexpected:v20 error:v21, a4];
            v16 = 0;
          }

          if (v22 == 1)
          {
            *buf = &v20;
            sub_100036760(buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v27, v23);
        if (v24[640] == 1)
        {
          sub_100035E5C(v24);
        }

        if (v27 == v10 && v28 == v10[1])
        {
          if (v30)
          {
            sub_100035E5C(v29);
          }

          v12 = &selRef_stringWithCString_encoding_;
          goto LABEL_20;
        }
      }

      if (v30)
      {
        sub_100035E5C(v29);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)replacePassphrase:(const char *)a3 error:(id *)a4
{
  v6 = self;
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4];
  if (!v7)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v8 = v7;
  [(DIEncryptionFrontend *)v6 getSerializerWithAuthTable:v7];
  if (v29)
  {
    v33.i32[0] = 8;
    sub_10017FF04(v8, a3, v33.i32, v28, &v54);
    if (v56)
    {
      v9 = *v8;
      v50 = v8;
      v51 = v9;
      v52[0] = 0;
      v53 = 0;
      if (v9 == v8[1])
      {
LABEL_11:
        v22 = 1;
      }

      else
      {
        while (1)
        {
          v10 = sub_100031244(&v50);
          v11 = v10;
          if (!*(v10 + 632))
          {
            v12 = *(v10 + 60);
            v13 = *(v10 + 112);
            ptr = v6->_passEntryToChange.__ptr_;
            v15 = *(ptr + 1);
            v33 = *ptr;
            v27 = *(v10 + 12);
            v26 = *(v10 + 96);
            v16 = *(ptr + 2);
            v34[0] = v15;
            v34[1] = v16;
            v17 = *(ptr + 12);
            v18 = *(ptr + 52);
            v37 = *(ptr + 68);
            v36 = v18;
            v38 = *(ptr + 84);
            v19 = *(ptr + 25);
            v35 = v17;
            v39 = v19;
            memcpy(v40, ptr + 104, 0x200uLL);
            v42[0] = v27;
            v20 = *(v11 + 44);
            v42[1] = *(v11 + 28);
            v43 = v20;
            v44 = v12;
            v21 = v11[5];
            v45 = v11[4];
            v46 = v21;
            v47 = v26;
            v48 = v13;
            memcpy(v49, v11 + 116, sizeof(v49));
            v30[0] = &v33;
            v30[1] = v42;
            if (sub_100036DBC(v30, vmovn_s32(vceqq_s32(v33, v27)).u8[0] & 1))
            {
              break;
            }
          }

          sub_1000312E4(&v50, v31);
          if (v32[640] == 1)
          {
            sub_100035E5C(v32);
          }

          if (v50 == v8 && v51 == v8[1])
          {
            goto LABEL_11;
          }
        }

        (*(v28[0] + 1))(v42, v28, &v55 + 4);
        if (v43)
        {
          sub_10017FA9C(v8, v42, &v50, &v33);
          v22 = v41;
          if (v41 & 1) != 0 || (LOBYTE(v6) = [DIError failWithUnexpected:v33.i64[0] verboseInfo:v33.i64[1] error:@"Failed to replace passphrase entry in auth table", a4], (v41))
          {
            if (v40[552] == 1)
            {
              sub_100035E5C(v34);
            }
          }
        }

        else
        {
          LOBYTE(v6) = [DIError failWithUnexpected:*&v42[0] verboseInfo:*(&v42[0] + 1) error:@"Failed to serialize passphrase to crypto header", a4];
          v22 = 0;
        }

        if (v43 == 1)
        {
          sub_100036B7C(v42);
        }
      }

      if (v53 == 1)
      {
        sub_100035E5C(v52);
      }

      if (v22)
      {
        (*(v28[0] + 4))(&v33, v28, v8);
        v23 = v34[0];
        if ((v34[0] & 1) == 0)
        {
          LOBYTE(v6) = [DIError failWithUnexpected:v33.i64[0] verboseInfo:v33.i64[1] error:@"Failed to update crypto header", a4];
        }

        LOBYTE(v6) = v23 | v6;
      }

      goto LABEL_22;
    }

    v24 = [DIError failWithUnexpected:v54 verboseInfo:v55 error:@"Failed to create passphrase auth entry", a4];
  }

  else
  {
    v24 = [DIError failWithUnexpected:v28[0] verboseInfo:v28[1] error:@"Failed to create crypto serializer", a4];
  }

  LOBYTE(v6) = v24;
LABEL_22:
  if (v29 == 1)
  {
    (*(v28[0] + 7))(v28);
  }

  return v6 & 1;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = DIEncryptionChpass;
  v7 = [(DIEncryptionFrontend *)&v13 updateDiskImageParamsWithFrontend:v6 error:a4];
  if (v7)
  {
    v8 = [v6 passEntryToChange];
    v10 = *v8;
    v9 = v8[1];
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }

    cntrl = self->_passEntryToChange.__cntrl_;
    self->_passEntryToChange.__ptr_ = v10;
    self->_passEntryToChange.__cntrl_ = v9;
    if (cntrl)
    {
      sub_10000367C(cntrl);
    }
  }

  return v7;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)a3 error:(id *)a4
{
  error = 0;
  if (a3)
  {
    v7 = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v8 = [NSMutableArray arrayWithObject:v7];

    v9 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v10 = 65539;
    v11 = v9 != 0;

    if (v9)
    {
      v12 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v8 addObject:v12];

      v10 = 196611;
    }

    v32[0] = kCFUserNotificationAlertHeaderKey;
    v13 = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    v14 = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v8 = [NSMutableArray arrayWithObject:v14];

    v32[0] = kCFUserNotificationAlertHeaderKey;
    v13 = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v11 = 0;
    v10 = 65539;
  }

  v33[0] = v13;
  v33[1] = @"OK";
  v32[1] = kCFUserNotificationDefaultButtonTitleKey;
  v32[2] = kCFUserNotificationAlternateButtonTitleKey;
  v32[3] = kCFUserNotificationTextFieldTitlesKey;
  v33[2] = @"Cancel";
  v33[3] = v8;
  v15 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

  v17 = CFUserNotificationCreate(0, 0.0, v10, &error, v16);
  v18 = v17;
  if (!v17)
  {
    v20 = [NSString stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v19 = [DIError failWithEnumValue:154 verboseInfo:v20 error:a4];

    goto LABEL_32;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v17, 0.0, &responseFlags))
  {
    v29 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v21 = 0;
      v22 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:a4];
LABEL_12:
      v19 = v22;
LABEL_31:

      goto LABEL_32;
    }

    v21 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 0);
    if (v11)
    {
      v23 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 1);
      if (![v21 isEqualToString:v23])
      {
        v19 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:a4];

        goto LABEL_31;
      }
    }

    if (a3 == 2)
    {
      v27 = v21;
      if (!-[DIEncryptionChpass replacePassphrase:error:](self, "replacePassphrase:error:", [v21 UTF8String], a4))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (a3 == 1)
    {
      v26 = v21;
      v25 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v21 UTF8String], a4);
    }

    else
    {
      if (a3)
      {
LABEL_25:
        if ([(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v29 error:a4])
        {
          if (![(DIEncryptionChpass *)self allowStoringInKeychain]|| v29 != 1)
          {
            v19 = 1;
            goto LABEL_31;
          }

          v22 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v21 forceSystemKeychain:0 error:a4];
          goto LABEL_12;
        }

LABEL_29:
        v19 = 0;
        goto LABEL_31;
      }

      v24 = v21;
      v25 = -[DIEncryptionChpass unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v21 UTF8String], a4);
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v19 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:a4];
LABEL_32:

  return v19;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)a3 usage:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v9 = *__error();
  if (sub_1000E044C())
  {
    v10 = sub_1000E03D8();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v33 = 70;
    v34 = 2080;
    v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E03D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v33 = 70;
      v34 = 2080;
      v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (a4)
  {
    v13 = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v14 = v13;
    v15 = [v13 UTF8String];
    if (v7)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v13 = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v17 = v13;
    v15 = [v13 UTF8String];
    if (v7)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  v18 = readpassphrase(v15, __s1, 0x102uLL, v16);

  if (v18)
  {
    if (a4)
    {
      if (!v7)
      {
        v19 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
        v20 = v19 == 0;

        if (!v20)
        {
          v21 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
          v22 = v21;
          v23 = readpassphrase([v21 UTF8String], buf, 0x102uLL, 2);

          if (!v23)
          {
            return [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:a5];
          }

          if (strncmp(__s1, buf, 0x101uLL))
          {
            return [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:a5];
          }
        }
      }
    }

    switch(a4)
    {
      case 2:
        return [(DIEncryptionChpass *)self replacePassphrase:__s1 error:a5];
      case 1:
        return [(DIEncryptionFrontend *)self setPassphrase:__s1 error:a5];
      case 0:
        return [(DIEncryptionChpass *)self unlockWithPassphrase:__s1 error:a5];
    }

    return 0;
  }

  else
  {
    if (v7)
    {
      return [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:a5];
    }

    v25 = *__error();
    if (sub_1000E044C())
    {
      v26 = sub_1000E03D8();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v33 = 70;
      v34 = 2080;
      v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        fprintf(__stderrp, "%s\n", v27);
        free(v27);
      }
    }

    else
    {
      v29 = sub_1000E03D8();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v33 = 70;
        v34 = 2080;
        v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
      }
    }

    *__error() = v25;
    v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:25 userInfo:0];
    v28 = [DIError failWithInError:v30 outError:a5];
  }

  return v28;
}

- (void)setPassEntryToChange:(void *)a3
{
  p_passEntryToChange = &self->_passEntryToChange;
  v5 = *a3;
  v4 = *(a3 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_passEntryToChange.__cntrl_;
  p_passEntryToChange->__ptr_ = v5;
  p_passEntryToChange->__cntrl_ = v4;
  if (cntrl)
  {
    sub_10000367C(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end