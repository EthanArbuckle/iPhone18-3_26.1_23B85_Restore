@interface MCProfileTrustEvaluator
- (BOOL)_verifyCerts:(id)a3 policy:(__SecPolicy *)a4;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)a3;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)a3;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)a3;
@end

@implementation MCProfileTrustEvaluator

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_ui())
  {
    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEBUG, "Allowing all profiles to write defaults.", buf, 2u);
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    ConfigurationProfileSigner = SecPolicyCreateConfigurationProfileSigner();
    if (ConfigurationProfileSigner)
    {
      v8 = ConfigurationProfileSigner;
      v6 = [(MCProfileTrustEvaluator *)self _verifyCerts:v4 policy:ConfigurationProfileSigner];
      CFRelease(v8);
    }

    else
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Cannot create customer policy.", v15, 2u);
      }

      v6 = 0;
    }

    v10 = SecPolicyCreateConfigurationProfileSigner();
    if (v10)
    {
      v11 = v10;
      v6 |= [(MCProfileTrustEvaluator *)self _verifyCerts:v4 policy:v10];
      CFRelease(v11);
    }

    else
    {
      v12 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Cannot create QA policy.", v14, 2u);
      }
    }
  }

  return v6;
}

- (BOOL)_verifyCerts:(id)a3 policy:(__SecPolicy *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 count])
  {
LABEL_5:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  trust = 0;
  if (SecTrustCreateWithCertificates(v5, a4, &trust))
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Cannot create trust for certificate evaluation.", buf, 2u);
    }

    goto LABEL_5;
  }

  err = 0;
  v7 = SecTrustEvaluateWithError(trust, &err);
  if (v7)
  {
    v8 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEBUG, "Certificate chain is allowed to write defaults.", buf, 2u);
    }
  }

  else
  {
    v9 = CFErrorCopyDescription(err);
    v10 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Write defaults, trust evaluation failed: %{public}@", buf, 0xCu);
    }

    CFRelease(v9);
    CFRelease(err);
  }

  CFRelease(trust);
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_variant_has_internal_ui())
  {
    v4 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Allowing all unsupported payloads to be installed.", buf, 2u);
    }

    LOBYTE(v5) = 1;
    goto LABEL_22;
  }

  AppleATVVPNProfileSigning = SecPolicyCreateAppleATVVPNProfileSigning();
  if (AppleATVVPNProfileSigning)
  {
    v7 = AppleATVVPNProfileSigning;
    if ([v3 count])
    {
      trust = 0;
      if (!SecTrustCreateWithCertificates(v3, v7, &trust))
      {
        err = 0;
        v5 = SecTrustEvaluateWithError(trust, &err);
        if (v5)
        {
          v10 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEBUG, "Certificate chain is allowed to install unsupported payloads.", buf, 2u);
          }
        }

        else
        {
          v11 = CFErrorCopyDescription(err);
          v12 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v18 = v11;
            _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Unsupported payload, trust evaluation failed: %{public}@", buf, 0xCu);
          }

          CFRelease(v11);
          CFRelease(err);
        }

        CFRelease(trust);
        goto LABEL_21;
      }

      v8 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Cannot create trust for unsupported payload certificate evaluation.", buf, 2u);
      }
    }

    LOBYTE(v5) = 0;
LABEL_21:
    CFRelease(v7);
    goto LABEL_22;
  }

  v9 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Cannot create unsupported payload policy.", buf, 2u);
  }

  LOBYTE(v5) = 0;
LABEL_22:

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  ConfigurationProfileSigner = SecPolicyCreateConfigurationProfileSigner();
  if (ConfigurationProfileSigner)
  {
    v5 = ConfigurationProfileSigner;
    if ([v3 count])
    {
      trust = 0;
      if (!SecTrustCreateWithCertificates(v3, v5, &trust))
      {
        err = 0;
        v7 = SecTrustEvaluateWithError(trust, &err);
        if (v7)
        {
          v9 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEBUG, "Certificate chain is allowed to install supervised restrictions on unsupervised devices.", buf, 2u);
          }
        }

        else
        {
          v10 = CFErrorCopyDescription(err);
          v11 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v17 = v10;
            _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Install supervised restrictions on unsupervised devices, trust evaluation failed: %{public}@", buf, 0xCu);
          }

          CFRelease(v10);
          CFRelease(err);
        }

        CFRelease(trust);
        goto LABEL_17;
      }

      v6 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Cannot create trust for certificate evaluation.", buf, 2u);
      }
    }

    LOBYTE(v7) = 0;
LABEL_17:
    CFRelease(v5);
    goto LABEL_18;
  }

  v8 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Cannot create policy.", buf, 2u);
  }

  LOBYTE(v7) = 0;
LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

@end