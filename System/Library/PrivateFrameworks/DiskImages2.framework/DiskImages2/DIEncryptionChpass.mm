@interface DIEncryptionChpass
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error;
- (BOOL)replacePassWithXpcHandler:(id)handler params:(id)params error:(id *)error;
- (BOOL)replacePassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error;
- (DIEncryptionChpass)initWithCoder:(id)coder;
- (DIEncryptionChpass)initWithParams:(id)params;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)setPassEntryToChange:(void *)change;
@end

@implementation DIEncryptionChpass

- (DIEncryptionChpass)initWithParams:(id)params
{
  v4.receiver = self;
  v4.super_class = DIEncryptionChpass;
  return [(DIEncryptionFrontend *)&v4 initWithParams:params];
}

- (DIEncryptionChpass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionChpass *)self initWithParams:v5];
  if (v6)
  {
    -[DIEncryptionFrontend setAllowStoringInKeychain:](v6, "setAllowStoringInKeychain:", [coderCopy decodeBoolForKey:@"allowStoringInKeychain"]);
    crypto::passphrase_header_serializer::decode(coderCopy, &v9);
    std::shared_ptr<crypto::passphrase_header>::operator=[abi:ne200100]<crypto::passphrase_header,std::default_delete<crypto::passphrase_header>,0>(&v6->_passEntryToChange.__ptr_, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      MEMORY[0x24C1ED730](v7, 0x1000C409E51EDBFLL);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diParams = [(DIEncryptionFrontend *)self diParams];
  [coderCopy encodeObject:diParams forKey:@"diParams"];

  ptr = self->_passEntryToChange.__ptr_;
  if (ptr)
  {
    crypto::passphrase_header_serializer::encode(coderCopy, ptr, v5);
  }
}

- (BOOL)replacePassWithXpcHandler:(id)handler params:(id)params error:(id *)error
{
  handlerCopy = handler;
  LOBYTE(error) = [(DIEncryptionFrontend *)self addPassphraseEntryWithXpcHandler:handlerCopy flags:[(DIEncryptionFrontend *)self flags] usage:2 error:error];

  return error;
}

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v28 = v9;
    v29 = v11;
    v30[0] = 0;
    v31 = 0;
    v12 = 0x278F80000;
    if (v11 == v9[1])
    {
LABEL_20:
      sleep(2u);
      error = [*(v12 + 848) failWithPOSIXCode:80 description:@"Incorrect passphrase" error:error];
    }

    else
    {
      while (1)
      {
        v13 = crypto::auth_table::const_iterator::operator*(&v28);
        if (!*(v13 + 158))
        {
          v14 = crypto::auth_entry_ns::passphrase::unlock(v13, passphrase, &v21);
          if (v23 == 1)
          {
            [backendXPC cryptoHeader];
            std::allocate_shared[abi:ne200100]<crypto::format,std::allocator<crypto::format>,crypto::keys,std::shared_ptr<crypto::header> &,0>();
          }

          v15 = std::generic_category();
          *buf = 35;
          v27 = v15;
          if (*(*v22 + 32))(v22, v21, buf) || ((v27->equivalent_0)(v27, &v21, *buf))
          {
            v16 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v21 error:v22, error];
            v16 = 0;
          }

          if (v23 == 1)
          {
            *buf = &v21;
            std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        crypto::auth_table::const_iterator::operator++(&v28, v24);
        if (v25[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v25);
        }

        if (v28 == v10 && v29 == v10[1])
        {
          if (v31)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
          }

          v12 = 0x278F80000uLL;
          goto LABEL_20;
        }
      }

      if (v31)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
      }
    }
  }

  else
  {
    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return error & 1;
}

- (BOOL)replacePassphrase:(const char *)passphrase error:(id *)error
{
  selfCopy = self;
  v58 = *MEMORY[0x277D85DE8];
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  if (!v7)
  {
    LOBYTE(selfCopy) = 0;
    goto LABEL_24;
  }

  v8 = v7;
  [(DIEncryptionFrontend *)selfCopy getSerializerWithAuthTable:v7];
  if (v30)
  {
    v34.i32[0] = 8;
    crypto::auth_entry_ns::passphrase::create(passphrase, v8, v34.i32, v29, &v55);
    if (v57)
    {
      v9 = *v8;
      v51 = v8;
      v52 = v9;
      v53[0] = 0;
      v54 = 0;
      if (v9 == v8[1])
      {
LABEL_11:
        v22 = 1;
      }

      else
      {
        while (1)
        {
          v10 = crypto::auth_table::const_iterator::operator*(&v51);
          v11 = v10;
          if (!*(v10 + 632))
          {
            v12 = *(v10 + 60);
            v13 = *(v10 + 112);
            ptr = selfCopy->_passEntryToChange.__ptr_;
            v15 = *(ptr + 1);
            v34 = *ptr;
            v28 = *(v10 + 12);
            v27 = *(v10 + 96);
            v16 = *(ptr + 2);
            v35[0] = v15;
            v35[1] = v16;
            v17 = *(ptr + 12);
            v18 = *(ptr + 52);
            v38 = *(ptr + 68);
            v37 = v18;
            v39 = *(ptr + 84);
            v19 = *(ptr + 25);
            v36 = v17;
            v40 = v19;
            memcpy(v41, ptr + 104, 0x200uLL);
            v43[0] = v28;
            v20 = *(v11 + 44);
            v43[1] = *(v11 + 28);
            v44 = v20;
            v45 = v12;
            v21 = v11[5];
            v46 = v11[4];
            v47 = v21;
            v48 = v27;
            v49 = v13;
            memcpy(v50, v11 + 116, sizeof(v50));
            v31[0] = &v34;
            v31[1] = v43;
            if (boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<1ul>(v31, vmovn_s32(vceqq_s32(v34, v28)).u8[0] & 1))
            {
              break;
            }
          }

          crypto::auth_table::const_iterator::operator++(&v51, v32);
          if (v33[640] == 1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v33);
          }

          if (v51 == v8 && v52 == v8[1])
          {
            goto LABEL_11;
          }
        }

        (*(v29[0] + 1))(v43, v29, &v56 + 4);
        if (v44)
        {
          crypto::auth_table::replace(v8, v43, &v51, &v34);
          v22 = v42;
          if (v42 & 1) != 0 || (LOBYTE(selfCopy) = [DIError failWithUnexpected:v34.i64[0] verboseInfo:v34.i64[1] error:@"Failed to replace passphrase entry in auth table", error], (v42))
          {
            if (v41[552] == 1)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v35);
            }
          }
        }

        else
        {
          LOBYTE(selfCopy) = [DIError failWithUnexpected:*&v43[0] verboseInfo:*(&v43[0] + 1) error:@"Failed to serialize passphrase to crypto header", error];
          v22 = 0;
        }

        if (v44 == 1)
        {
          crypto::descriptor_handle_t::~descriptor_handle_t(v43);
        }
      }

      if (v54 == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v53);
      }

      if (v22)
      {
        (*(v29[0] + 4))(&v34, v29, v8);
        v23 = v35[0];
        if ((v35[0] & 1) == 0)
        {
          LOBYTE(selfCopy) = [DIError failWithUnexpected:v34.i64[0] verboseInfo:v34.i64[1] error:@"Failed to update crypto header", error];
        }

        LOBYTE(selfCopy) = v23 | selfCopy;
      }

      goto LABEL_22;
    }

    error = [DIError failWithUnexpected:v55 verboseInfo:v56 error:@"Failed to create passphrase auth entry", error];
  }

  else
  {
    error = [DIError failWithUnexpected:v29[0] verboseInfo:v29[1] error:@"Failed to create crypto serializer", error];
  }

  LOBYTE(selfCopy) = error;
LABEL_22:
  if (v30 == 1)
  {
    (*(v29[0] + 7))(v29);
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
  return selfCopy & 1;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error
{
  frontendCopy = frontend;
  v13.receiver = self;
  v13.super_class = DIEncryptionChpass;
  v7 = [(DIEncryptionFrontend *)&v13 updateDiskImageParamsWithFrontend:frontendCopy error:error];
  if (v7)
  {
    passEntryToChange = [frontendCopy passEntryToChange];
    v10 = *passEntryToChange;
    v9 = *(passEntryToChange + 8);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = self->_passEntryToChange.__cntrl_;
    self->_passEntryToChange.__ptr_ = v10;
    self->_passEntryToChange.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v7;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error
{
  v39[4] = *MEMORY[0x277D85DE8];
  error = 0;
  v7 = MEMORY[0x277CBEB18];
  if (usage)
  {
    gUIPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v9 = [v7 arrayWithObject:gUIPassphraseLabelCreate];

    gUIVerifyPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v11 = 65539;
    v12 = gUIVerifyPassphraseLabelCreate != 0;

    if (gUIVerifyPassphraseLabelCreate)
    {
      gUIVerifyPassphraseLabelCreate2 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v9 addObject:gUIVerifyPassphraseLabelCreate2];

      v11 = 196611;
    }

    v14 = MEMORY[0x277CBEB38];
    v38[0] = *MEMORY[0x277CBF188];
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    gUIPassphraseLabelUnlock = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v9 = [v7 arrayWithObject:gUIPassphraseLabelUnlock];

    v14 = MEMORY[0x277CBEB38];
    v38[0] = *MEMORY[0x277CBF188];
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v12 = 0;
    v11 = 65539;
  }

  v17 = *MEMORY[0x277CBF1E8];
  v39[0] = gUIPassphrasePromptCreate;
  v39[1] = @"OK";
  v18 = *MEMORY[0x277CBF1C0];
  v38[1] = v17;
  v38[2] = v18;
  v38[3] = *MEMORY[0x277CBF230];
  v39[2] = @"Cancel";
  v39[3] = v9;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v20 = [v14 dictionaryWithDictionary:v19];

  v21 = CFUserNotificationCreate(0, 0.0, v11, &error, v20);
  v22 = v21;
  if (!v21)
  {
    error = [MEMORY[0x277CCACA8] stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v23 = [DIError failWithEnumValue:154 verboseInfo:error error:error];

    goto LABEL_32;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v21, 0.0, &responseFlags))
  {
    v35 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v25 = 0;
      v26 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
LABEL_12:
      v23 = v26;
LABEL_31:

      goto LABEL_32;
    }

    v27 = *MEMORY[0x277CBF238];
    v25 = CFUserNotificationGetResponseValue(v22, *MEMORY[0x277CBF238], 0);
    if (v12)
    {
      v28 = CFUserNotificationGetResponseValue(v22, v27, 1);
      if (![v25 isEqualToString:v28])
      {
        v23 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:error];

        goto LABEL_31;
      }
    }

    if (usage == 2)
    {
      v32 = v25;
      if (!-[DIEncryptionChpass replacePassphrase:error:](self, "replacePassphrase:error:", [v25 UTF8String], error))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (usage == 1)
    {
      v31 = v25;
      v30 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v25 UTF8String], error);
    }

    else
    {
      if (usage)
      {
LABEL_25:
        if ([(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v35 error:error])
        {
          if (![(DIEncryptionChpass *)self allowStoringInKeychain]|| v35 != 1)
          {
            v23 = 1;
            goto LABEL_31;
          }

          v26 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v25 forceSystemKeychain:0 error:error];
          goto LABEL_12;
        }

LABEL_29:
        v23 = 0;
        goto LABEL_31;
      }

      v29 = v25;
      v30 = -[DIEncryptionChpass unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v25 UTF8String], error);
    }

    if (!v30)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v23 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_32:

  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error
{
  stdinCopy = stdin;
  v38 = *MEMORY[0x277D85DE8];
  v9 = *__error();
  if (DIForwardLogs())
  {
    v10 = getDIOSLog();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v34 = 70;
    v35 = 2080;
    v36 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = getDIOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v34 = 70;
      v35 = 2080;
      v36 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (usage)
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v14 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
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
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v17 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  v18 = readpassphrase(uTF8String, __s1, 0x102uLL, v16);

  if (v18)
  {
    if (usage)
    {
      if (!stdinCopy)
      {
        cLIVerifyPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
        v20 = cLIVerifyPassphrasePromptCreate == 0;

        if (!v20)
        {
          cLIVerifyPassphrasePromptCreate2 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
          v22 = cLIVerifyPassphrasePromptCreate2;
          v23 = readpassphrase([cLIVerifyPassphrasePromptCreate2 UTF8String], buf, 0x102uLL, 2);

          if (!v23)
          {
            v24 = [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:error];
            goto LABEL_38;
          }

          if (strncmp(__s1, buf, 0x101uLL))
          {
            v24 = [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:error];
LABEL_38:
            v28 = v24;
            goto LABEL_39;
          }
        }
      }
    }

    switch(usage)
    {
      case 2:
        v24 = [(DIEncryptionChpass *)self replacePassphrase:__s1 error:error];
        goto LABEL_38;
      case 1:
        v24 = [(DIEncryptionFrontend *)self setPassphrase:__s1 error:error];
        goto LABEL_38;
      case 0:
        v24 = [(DIEncryptionChpass *)self unlockWithPassphrase:__s1 error:error];
        goto LABEL_38;
    }

    v28 = 0;
  }

  else
  {
    if (stdinCopy)
    {
      v24 = [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:error];
      goto LABEL_38;
    }

    v25 = *__error();
    if (DIForwardLogs())
    {
      v26 = getDIOSLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v34 = 70;
      v35 = 2080;
      v36 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
        free(v27);
      }
    }

    else
    {
      v29 = getDIOSLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v34 = 70;
        v35 = 2080;
        v36 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
        _os_log_impl(&dword_248DE0000, v29, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
      }
    }

    *__error() = v25;
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:25 userInfo:0];
    v28 = [DIError failWithInError:v30 outError:error];
  }

LABEL_39:
  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)setPassEntryToChange:(void *)change
{
  p_passEntryToChange = &self->_passEntryToChange;
  v5 = *change;
  v4 = *(change + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_passEntryToChange.__cntrl_;
  p_passEntryToChange->__ptr_ = v5;
  p_passEntryToChange->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end