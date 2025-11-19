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
    crypto::passphrase_header_serializer::decode(v4, &v9);
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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(DIEncryptionFrontend *)self diParams];
  [v7 encodeObject:v4 forKey:@"diParams"];

  ptr = self->_passEntryToChange.__ptr_;
  if (ptr)
  {
    crypto::passphrase_header_serializer::encode(v7, ptr, v5);
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
  v32 = *MEMORY[0x277D85DE8];
  v7 = [(DIEncryptionFrontend *)self diParams];
  v8 = [v7 diskImageParamsXPC];

  v20 = [v8 backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4];
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
      v4 = [*(v12 + 848) failWithPOSIXCode:80 description:@"Incorrect passphrase" error:a4];
    }

    else
    {
      while (1)
      {
        v13 = crypto::auth_table::const_iterator::operator*(&v28);
        if (!*(v13 + 158))
        {
          v14 = crypto::auth_entry_ns::passphrase::unlock(v13, a3, &v21);
          if (v23 == 1)
          {
            [v20 cryptoHeader];
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
            v4 = [DIError failWithUnexpected:v21 error:v22, a4];
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
    v4 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (BOOL)replacePassphrase:(const char *)a3 error:(id *)a4
{
  v6 = self;
  v58 = *MEMORY[0x277D85DE8];
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4];
  if (!v7)
  {
    LOBYTE(v6) = 0;
    goto LABEL_24;
  }

  v8 = v7;
  [(DIEncryptionFrontend *)v6 getSerializerWithAuthTable:v7];
  if (v30)
  {
    v34.i32[0] = 8;
    crypto::auth_entry_ns::passphrase::create(a3, v8, v34.i32, v29, &v55);
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
            ptr = v6->_passEntryToChange.__ptr_;
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
          if (v42 & 1) != 0 || (LOBYTE(v6) = [DIError failWithUnexpected:v34.i64[0] verboseInfo:v34.i64[1] error:@"Failed to replace passphrase entry in auth table", a4], (v42))
          {
            if (v41[552] == 1)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v35);
            }
          }
        }

        else
        {
          LOBYTE(v6) = [DIError failWithUnexpected:*&v43[0] verboseInfo:*(&v43[0] + 1) error:@"Failed to serialize passphrase to crypto header", a4];
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
          LOBYTE(v6) = [DIError failWithUnexpected:v34.i64[0] verboseInfo:v34.i64[1] error:@"Failed to update crypto header", a4];
        }

        LOBYTE(v6) = v23 | v6;
      }

      goto LABEL_22;
    }

    v24 = [DIError failWithUnexpected:v55 verboseInfo:v56 error:@"Failed to create passphrase auth entry", a4];
  }

  else
  {
    v24 = [DIError failWithUnexpected:v29[0] verboseInfo:v29[1] error:@"Failed to create crypto serializer", a4];
  }

  LOBYTE(v6) = v24;
LABEL_22:
  if (v30 == 1)
  {
    (*(v29[0] + 7))(v29);
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
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
    v9 = *(v8 + 8);
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

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)a3 error:(id *)a4
{
  v39[4] = *MEMORY[0x277D85DE8];
  error = 0;
  v7 = MEMORY[0x277CBEB18];
  if (a3)
  {
    v8 = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v9 = [v7 arrayWithObject:v8];

    v10 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v11 = 65539;
    v12 = v10 != 0;

    if (v10)
    {
      v13 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v9 addObject:v13];

      v11 = 196611;
    }

    v14 = MEMORY[0x277CBEB38];
    v38[0] = *MEMORY[0x277CBF188];
    v15 = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    v16 = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v9 = [v7 arrayWithObject:v16];

    v14 = MEMORY[0x277CBEB38];
    v38[0] = *MEMORY[0x277CBF188];
    v15 = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v12 = 0;
    v11 = 65539;
  }

  v17 = *MEMORY[0x277CBF1E8];
  v39[0] = v15;
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
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v23 = [DIError failWithEnumValue:154 verboseInfo:v24 error:a4];

    goto LABEL_32;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v21, 0.0, &responseFlags))
  {
    v35 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v25 = 0;
      v26 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:a4];
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
        v23 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:a4];

        goto LABEL_31;
      }
    }

    if (a3 == 2)
    {
      v32 = v25;
      if (!-[DIEncryptionChpass replacePassphrase:error:](self, "replacePassphrase:error:", [v25 UTF8String], a4))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (a3 == 1)
    {
      v31 = v25;
      v30 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v25 UTF8String], a4);
    }

    else
    {
      if (a3)
      {
LABEL_25:
        if ([(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v35 error:a4])
        {
          if (![(DIEncryptionChpass *)self allowStoringInKeychain]|| v35 != 1)
          {
            v23 = 1;
            goto LABEL_31;
          }

          v26 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v25 forceSystemKeychain:0 error:a4];
          goto LABEL_12;
        }

LABEL_29:
        v23 = 0;
        goto LABEL_31;
      }

      v29 = v25;
      v30 = -[DIEncryptionChpass unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v25 UTF8String], a4);
    }

    if (!v30)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v23 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:a4];
LABEL_32:

  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)a3 usage:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
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
            v24 = [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:a5];
            goto LABEL_38;
          }

          if (strncmp(__s1, buf, 0x101uLL))
          {
            v24 = [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:a5];
LABEL_38:
            v28 = v24;
            goto LABEL_39;
          }
        }
      }
    }

    switch(a4)
    {
      case 2:
        v24 = [(DIEncryptionChpass *)self replacePassphrase:__s1 error:a5];
        goto LABEL_38;
      case 1:
        v24 = [(DIEncryptionFrontend *)self setPassphrase:__s1 error:a5];
        goto LABEL_38;
      case 0:
        v24 = [(DIEncryptionChpass *)self unlockWithPassphrase:__s1 error:a5];
        goto LABEL_38;
    }

    v28 = 0;
  }

  else
  {
    if (v7)
    {
      v24 = [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:a5];
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
    v28 = [DIError failWithInError:v30 outError:a5];
  }

LABEL_39:
  v31 = *MEMORY[0x277D85DE8];
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