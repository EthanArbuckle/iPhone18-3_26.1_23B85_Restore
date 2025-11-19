uint64_t SecMPPublicIdentityCopyFromPrivate(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 48) publicIdentity];
  v3 = [v2 asRef];

  return v3;
}

uint64_t SecMPPublicIdentityGetTypeID()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SecMPPublicIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDSingleton;
  if (SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDOnce, block);
  }

  return SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDSingleton;
}

BOOL SecMPPIAppendSerialization(uint64_t a1, __CFData *a2)
{
  v3 = [*(a1 + 32) identityData];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);

  return v3 != 0;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B406230()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B40627C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22B4063AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B406504(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22B4065B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B406654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_22B40678C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_22B4068F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_22B4069B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B406A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_22B406B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_22B406BF8()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22B406DF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TetraRatchetState(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = type metadata accessor for P256.Signing.PublicKey();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v7 = v10;
      v8 = *(v10 - 8);
      v9 = a3[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      if (*(*(v11 - 8) + 84) != a2)
      {
        v14 = *(a1 + a3[9]);
        if (v14 >= 2)
        {
          return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v7 = v11;
      v8 = *(v11 - 8);
      v9 = a3[7];
    }
  }

  v12 = *(v8 + 48);

  return v12(a1 + v9, a2, v7);
}

uint64_t sub_22B406F64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TetraRatchetState(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for P256.Signing.PublicKey();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 1;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void *sub_22B40711C(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = closure #1 in SecureEnclave.Kyber768.PrivateKey.decapsulate(_:)(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B407170(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_22B4072FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22B407488(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TetraECDHKey();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 8) >> 60;
        v17 = ((4 * v16) & 0xC) == 0;
        v18 = ((4 * v16) & 0xC | (v16 >> 2)) ^ 0xF;
        if (v17)
        {
          return 0;
        }

        else
        {
          return v18;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22B407600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TetraECDHKey();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        v17 = (a1 + a4[7]);
        *v17 = 0;
        v17[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22B407778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22B407840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreO21InternalSwiftProtobuf4EnumAadEP8rawValuexSgSi_tcfCTW_0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreO21InternalSwiftProtobuf4EnumAadEP8rawValueSivgTW_0()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *_s17MessageProtection30TetraPB_PrivateKeyBackingStoreOSYAASY8rawValuexSg03RawJ0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOSYAASY8rawValue03RawJ0QzvgTW_0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOSQAASQ2eeoiySbx_xtFZTW_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22B407A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_22B407B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_22B407C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TetraSessionState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22B407CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TetraSessionState();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B407DA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _s17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOs0fE0AAsAGP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x79654B706573;
  }

  else
  {
    result = 0x79654B7061;
  }

  *v0;
  return result;
}

uint64_t sub_22B407EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricRatchet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B407F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricRatchet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B407F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TetraOutgoingKeyContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22B408080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TetraOutgoingKeyContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22B408188()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

SecKeyRef SecMWCreateEphemeralDeviceIdentity(const __CFAllocator *a1, CFErrorRef *a2)
{
  valuePtr = 256;
  v4 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  v12 = CFDictionaryCreateForCFTypes(a1, v5, v6, v7, v8, v9, v10, v11, *MEMORY[0x277CDBFD0], *MEMORY[0x277CBED10]);
  v25 = *MEMORY[0x277CDC4F0];
  v24 = *MEMORY[0x277CDC080];
  v23 = *MEMORY[0x277CDC018];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, v13, v14, v15, v16, v17, v18, v19, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  RandomKey = SecKeyCreateRandomKey(MutableForCFTypesWith, a2);
  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return RandomKey;
}

CFDataRef SecMWCreateSessionSalt(const __CFAllocator *a1, CFErrorRef *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    if (a2)
    {
      v4 = CFErrorCreate(*MEMORY[0x277CBECE8], @"SecRandomCopyBytes", -1, 0);
      result = 0;
      *a2 = v4;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = CFDataCreate(a1, bytes, 16);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

CFDataRef SecMWCreateSessionSeed(const __CFAllocator *a1, CFErrorRef *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, bytes))
  {
    if (a2)
    {
      v4 = CFErrorCreate(*MEMORY[0x277CBECE8], @"SecRandomCopyBytes", -1, 0);
      result = 0;
      *a2 = v4;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = CFDataCreate(a1, bytes, 32);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

CFDictionaryRef CFDictionaryCreateForCFTypes(CFAllocatorRef allocator, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v23 = &a10;
  v11 = 0;
  if (a9)
  {
    do
    {
      v11 += 2;
      v12 = v23;
      v23 += 2;
    }

    while (v12[1]);
  }

  v13 = v11 >> 1;
  v24 = &a9;
  Mutable = CFDictionaryCreateMutable(allocator, v11 >> 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v11)
  {
    v16 = *MEMORY[0x277CBEEE8];
    do
    {
      v17 = v24;
      v18 = *v24;
      v24 += 2;
      v19 = v17[1];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v16;
      }

      CFDictionarySetValue(v15, v18, v20);
      --v13;
    }

    while (v13);
  }

  Copy = CFDictionaryCreateCopy(allocator, v15);
  CFRelease(v15);
  return Copy;
}

__CFDictionary *CFDictionaryCreateMutableForCFTypesWith(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      CFDictionarySetValue(Mutable, v11, *v14);
      v12 = v14 + 1;
      v14 += 2;
      v11 = *v12;
    }

    while (*v12);
  }

  return Mutable;
}

id MessageProtectionLog()
{
  if (MessageProtectionLog_onceToken != -1)
  {
    MessageProtectionLog_cold_1();
  }

  v1 = MessageProtectionLog_log;

  return v1;
}

uint64_t __MessageProtectionLog_block_invoke()
{
  MessageProtectionLog_log = os_log_create("com.apple.messageprotection", "MessageProtection");

  return MEMORY[0x2821F96F8]();
}

void MPLogAndAssignCFError(uint64_t a1, uint64_t *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a2 = [v7 errorWithDomain:@"com.apple.messageprotection" code:a1 userInfo:v8];

    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignCFError_cold_1();
    }
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignCFError_cold_2();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void MPLogAndAssignError(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a2 = [v7 errorWithDomain:@"com.apple.messageprotection" code:a1 userInfo:v8];

    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignCFError_cold_1();
    }
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignError_cold_2();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t SecMPCreateError(int a1, CFIndex a2, const __CFString *a3, __CFError *cf, CFErrorRef *a5)
{
  userInfoKeys[2] = *MEMORY[0x277D85DE8];
  if (a5 && !*a5)
  {
    v9 = *MEMORY[0x277CBECE8];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
    if (cf)
    {
      v11 = CFErrorCopyDescription(cf);
      CFStringAppend(MutableCopy, @" \\ ");
      CFStringAppend(MutableCopy, v11);
      CFRelease(v11);
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = *MEMORY[0x277CBEE78];
    userInfoKeys[0] = *MEMORY[0x277CBEE30];
    userInfoKeys[1] = v13;
    v14 = &sLocalErrorDomain;
    userInfoValues[0] = MutableCopy;
    userInfoValues[1] = cf;
    if (a1)
    {
      v14 = MEMORY[0x277CBEE40];
    }

    *a5 = CFErrorCreateWithUserInfoKeysAndValues(v9, *v14, a2, userInfoKeys, userInfoValues, v12);
    CFRelease(MutableCopy);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_22B40A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B40A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t SecMPPIEncryptionSpace(uint64_t a1, int a2)
{
  v3 = [*(a1 + 32) encryptionSize];
  v4 = -44;
  if (!a2)
  {
    v4 = -43;
  }

  v5 = v3 + v4;
  if (v3 >= 0x2A)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t SecMPPIRecreateSignature(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 8 * *MEMORY[0x2318925A0]();
  v7 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v7);
  ccder_decode_sequence_tl();
  mp_decode_forced_uint();
  mp_decode_forced_uint();
  v8 = *a3 + *a4;
  ccder_encode_integer();
  ccder_encode_integer();
  result = ccder_encode_constructed_tl();
  *a3 = result;
  *a4 = (v8 - result) & ~((v8 - result) >> 63);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mp_decode_forced_uint()
{
  result = ccder_decode_tl();
  if (result)
  {
    v1 = result;
    if ((ccn_read_uint() & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t SecMPVerifyAndExposeMessage(const __CFData *a1, uint64_t a2, uint64_t a3, const __CFData *a4, CFErrorRef *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (CFDataGetLength(a1))
          {
            BytePtr = CFDataGetBytePtr(a1);
            v11 = CFDataGetLength(a4);
            v12 = v11;
            if (*BytePtr != 2)
            {
              SecMPCreateError(0, -8, @"Unknown format of message to verify and expose", 0, a5);
LABEL_67:
              CFDataSetLength(a4, v12);
              goto LABEL_15;
            }

            v58 = v11;
            v57 = CFDataGetLength(a4);
            v13 = *MEMORY[0x277CBECE8];
            Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
            v15 = CFDataGetLength(a1);
            if (v15 <= 3)
            {
              v16 = @"SecMPVerifyMessageContents: Incoming length is too short.";
LABEL_34:
              MPLogAndAssignCFError(1, a5, v16);
              cf = 0;
              goto LABEL_35;
            }

            v20 = v15;
            v63 = v15;
            v62 = 0;
            v21 = [*(a3 + 48) encryptionSize];
            if (v21 < 0)
            {
              v16 = @"SecMPVerifyMessageContents: Inconsistent encryptionSize.";
              goto LABEL_34;
            }

            v22 = v21;
            v23 = CFDataGetBytePtr(a1);
            v61 = v23;
            CFDataAppendBytes(Mutable, v23, 1);
            v24 = SecMPPublicIdentityCopyFromPrivate(0, a3);
            if (!v24)
            {
              v16 = @"SecMPVerifyMessageContents: Unable to get public identity from private of the receiver.";
              goto LABEL_34;
            }

            v55 = v22;
            v25 = Mutable;
            v26 = v24;
            SecMPPIAppendCanonicalHash(a2, v25);
            cf = v26;
            v27 = v26;
            Mutable = v25;
            SecMPPIAppendCanonicalHash(v27, v25);
            v61 = v23 + 1;
            v63 = v20 - 1;
            if (readSize(&v61, &v63, &v62, a5))
            {
LABEL_35:
              v40 = 0;
              ReferenceFromRange = 0;
              v37 = 0;
              v35 = 0;
              v32 = 0;
              goto LABEL_36;
            }

            v28 = v55;
            if (v55 > v62 || v63 < v62 + 60)
            {
              v48 = @"SecMPVerifyMessageContents: Insufficient size remaining.";
            }

            else
            {
              v29 = v63 - v62;
              v30 = v20 - v29;
              if (v30 >= 0)
              {
                v31 = CFDataGetBytePtr(a1);
                bytesDeallocator = *MEMORY[0x277CBED00];
                v32 = CFDataCreateWithBytesNoCopy(v13, &v31[v30], v29, *MEMORY[0x277CBED00]);
                v33 = v62;
                v34 = CFDataGetBytePtr(a1);
                v52 = v33;
                v35 = CFDataCreateWithBytesNoCopy(v13, v34 + 3, v33, bytesDeallocator);
                v36 = CFDataGetBytePtr(v35);
                v37 = CFDataCreateWithBytesNoCopy(v13, v36, v55, bytesDeallocator);
                length = SecMPFIEncryptionSpace(a3);
                if (length < 0)
                {
                  MPLogAndAssignCFError(1, a5, @"SecMPVerifyMessageContents: Insufficient public key encryption space.");
                }

                else
                {
                  bytesDeallocatora = CFDataGetBytePtr(v35);
                  v51 = CFDataGetLength(v35);
                  v50 = CFDataGetBytePtr(v32);
                  v38 = CFDataGetLength(v32);
                  if (SecMPPIVerifySignature(a2, bytesDeallocatora, v51, v50, v38, a5))
                  {
                    v56 = v52 - v55;
                    ReferenceFromRange = CFDataCreateReferenceFromRange(v13, v35, v28, v52 - v28);
                    v40 = CFDataCreateMutable(v13, 0);
                    if (SecMPFIDecrypt(a3, v37, v40, &length, a5))
                    {
                      if (v56 < 1)
                      {
                        goto LABEL_46;
                      }

                      v41 = length;
                      v42 = [cf[4] encryptionSize];
                      v43 = v42 - 44;
                      if (v42 < 0x2A)
                      {
                        v43 = 0;
                      }

                      if (v41 == v43)
                      {
                        v44 = 1;
                      }

                      else
                      {
LABEL_46:
                        v44 = 0;
                      }

                      CFDataSetLength(v40, length);
                      v49 = CFDataGetBytePtr(ReferenceFromRange);
                      CFDataAppendBytes(v40, v49, v56);
                      v45 = SecMPDecryptUsingCTREmbeddedKey(v40, Mutable, a4, v44, a5) == 0;
                      if (!a5)
                      {
                        goto LABEL_48;
                      }

LABEL_37:
                      if (*a5)
                      {
                        v46 = CFCopyDescription(*a5);
                        v47 = MessageProtectionLog();
                        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v65 = Mutable;
                          v66 = 2112;
                          v67 = v46;
                          _os_log_impl(&dword_22B404000, v47, OS_LOG_TYPE_DEFAULT, "Message Decryption: sender/receiver hash: %@ status: %@", buf, 0x16u);
                        }

LABEL_50:
                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if (v32)
                        {
                          CFRelease(v32);
                        }

                        if (v35)
                        {
                          CFRelease(v35);
                        }

                        if (v37)
                        {
                          CFRelease(v37);
                        }

                        if (v40)
                        {
                          CFRelease(v40);
                        }

                        if (ReferenceFromRange)
                        {
                          CFRelease(ReferenceFromRange);
                        }

                        if (cf)
                        {
                          CFRelease(cf);
                        }

                        if (v45)
                        {
                          result = 1;
                          goto LABEL_16;
                        }

                        CFDataSetLength(a4, v57);
                        v12 = v58;
                        goto LABEL_67;
                      }

LABEL_48:
                      v46 = MessageProtectionLog();
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v65 = Mutable;
                        _os_log_impl(&dword_22B404000, v46, OS_LOG_TYPE_DEFAULT, "Message Decryption: sender/receiver hash: %@ status: success", buf, 0xCu);
                      }

                      goto LABEL_50;
                    }

LABEL_36:
                    v45 = 0;
                    if (!a5)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_37;
                  }
                }

                v40 = 0;
                ReferenceFromRange = 0;
                goto LABEL_36;
              }

              v48 = @"SecMPVerifyMessageContents: Insufficient size remaining for the signature.";
            }

            MPLogAndAssignCFError(1, a5, v48);
            goto LABEL_35;
          }

          v17 = @"SecMPVerifyAndExposeMessage: Missing incoming data.";
        }

        else
        {
          v17 = @"SecMPVerifyAndExposeMessage: Missing exposedMessageContents DataRef.";
        }
      }

      else
      {
        v17 = @"SecMPVerifyAndExposeMessage: Missing receiver.";
      }
    }

    else
    {
      v17 = @"SecMPVerifyAndExposeMessage: Missing sender.";
    }
  }

  else
  {
    v17 = @"SecMPVerifyAndExposeMessage: Missing incoming message.";
  }

  MPLogAndAssignCFError(1, a5, v17);
LABEL_15:
  result = 0;
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

CFDataRef CFDataCreateReferenceFromRange(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, CFIndex a4)
{
  BytePtr = CFDataGetBytePtr(theData);
  v8 = *MEMORY[0x277CBED00];

  return CFDataCreateWithBytesNoCopy(a1, &BytePtr[a3], a4, v8);
}

uint64_t SecMPDecryptUsingCTREmbeddedKey(const __CFData *a1, const __CFData *a2, const __CFData *a3, int a4, CFErrorRef *a5)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a3);
  v12 = CFDataGetLength(a1);
  v13 = 4294966387;
  if (v12 < 17 || !BytePtr)
  {
    goto LABEL_10;
  }

  CFDataIncreaseLength(a3, v12 - 16);
  CFDataGetMutableBytePtr(a3);
  ccaes_ctr_crypt_mode();
  ccctr_one_shot();
  if (a4 && (!CFDataGetBytePtr(a2) || CFDataGetLength(a2) < 1 || SecMPVerifyIntegrityTag(a3, a2, BytePtr)))
  {
    v13 = 4294967246;
LABEL_10:
    CFDataSetLength(a3, Length);
    SecMPCreateError(0, v13, @"Failed to Decrypt message", 0, a5);
    return v13;
  }

  return 0;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void SecMPLogError(__CFError *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = CFErrorCopyUserInfo(a1);
    Code = CFErrorGetCode(a1);
    Domain = CFErrorGetDomain(a1);
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CBEE30]);
    if (CFDictionaryGetValue(v2, *MEMORY[0x277CBEE78]))
    {
      SecMPLogError();
    }

    CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
    CFStringGetCString(Value, v7, 1024, 0x8000100u);
    syslog(3, "MessageProtection: %s (%ld) -- %s", buffer, Code, v7);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t insertSize(uint64_t a1, _WORD *a2, CFErrorRef *a3)
{
  if (a1 > 65534)
  {
    insertSize_cold_1(a3, a2);
    return 4294967246;
  }

  else
  {
    v3 = a1;
    result = 0;
    *a2 = bswap32(v3) >> 16;
  }

  return result;
}

uint64_t appendSize(uint64_t a1, CFMutableDataRef theData, CFErrorRef *a3)
{
  if (a1 > 65534)
  {
    appendSize_cold_1(a3, theData);
    return 4294967246;
  }

  else
  {
    *bytes = bswap32(a1) >> 16;
    CFDataAppendBytes(theData, bytes, 2);
    return 0;
  }
}

uint64_t appendOneByteSize(uint64_t a1, CFMutableDataRef theData, CFErrorRef *a3)
{
  if (a1 > 254)
  {
    appendOneByteSize_cold_1(a3, theData);
    return 4294967246;
  }

  else
  {
    bytes = a1;
    CFDataAppendBytes(theData, &bytes, 1);
    return 0;
  }
}

uint64_t readSize(uint64_t *a1, uint64_t *a2, _WORD *a3, CFErrorRef *a4)
{
  if (a1 && a2 && a3 && (v4 = *a2 - 2, *a2 >= 2))
  {
    v5 = 0;
    v6 = *a1 + 2;
    *a3 = bswap32(**a1) >> 16;
    *a2 = v4;
    *a1 = v6;
  }

  else
  {
    readSize_cold_1(a4, a2);
    return 4294967246;
  }

  return v5;
}

uint64_t appendPublicOctetsAndSize(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  SecKeyCopyPublicBytes();
  appendPublicOctetsAndSize_cold_1(a3);
  return 4294941021;
}

void appendLongLong(__CFData *a1, unint64_t a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = bswap64(a2);
  CFDataAppendBytes(a1, v3, 8);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t readSize_0(uint64_t *a1, uint64_t *a2, _WORD *a3, CFErrorRef *a4)
{
  if (a1 && a2 && a3 && (v4 = *a2 - 2, *a2 >= 2))
  {
    v5 = 0;
    v6 = *a1 + 2;
    *a3 = bswap32(**a1) >> 16;
    *a2 = v4;
    *a1 = v6;
  }

  else
  {
    readSize_cold_1_0(a4);
    return 4294967246;
  }

  return v5;
}

uint64_t SecMPComputePaddingForTransport(unint64_t a1, int a2, CFErrorRef *a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v6 = @"Invalid input size";
    v7 = -7;
LABEL_12:
    SecMPCreateError(0, v7, v6, 0, a3);
    return -1;
  }

  if (a2 == 1)
  {
    Multiple = 64;
  }

  else
  {
    if (a2 != 2)
    {
      v6 = @"Invalid message type";
      v7 = -20;
      goto LABEL_12;
    }

    Multiple = 196;
  }

  if (Multiple < a1)
  {
    Multiple = nextMultiple(a1, 0x10uLL);
  }

  v8 = Multiple >= a1;
  result = Multiple - a1;
  if (!v8)
  {
    v6 = @"Invalid handling";
    v7 = -6;
    goto LABEL_12;
  }

  return result;
}

unint64_t nextMultiple(uint64_t a1, unint64_t a2)
{
  if (__CFADD__(a2, a1))
  {
    v3 = MessageProtectionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      nextMultiple_cold_1(a1, a2, v3);
    }

    __assert_rtn("nextMultiple", "SecMessageLengthHiding.m", 52, "0");
  }

  return (a1 + a2 - 1) / a2 * a2;
}

uint64_t SecMPComputePaddingForStorage(unint64_t a1, int a2, CFErrorRef *a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v9 = @"Invalid input size";
    v10 = -7;
LABEL_16:
    SecMPCreateError(0, v10, v9, 0, a3);
    return -1;
  }

  v4 = a2 - 1;
  if ((a2 - 1) >= 3)
  {
    v9 = @"Invalid message type";
    v10 = -20;
    goto LABEL_16;
  }

  v6 = qword_22B48D5F0[v4];
  Multiple = v6;
  if (v6 < a1)
  {
    Multiple = qword_22B48D5C0[v4];
    if (Multiple < a1)
    {
      v8 = qword_22B48D5D8[v4];
      if (v8 >= a1)
      {
        v11 = 2 * v6;
        if (2 * v6 <= a1)
        {
          v11 = a1;
        }

        v12 = 1 << -__clz(v11);
        if ((v11 & (v11 - 1)) != 0)
        {
          Multiple = v12;
        }

        else
        {
          Multiple = v11;
        }
      }

      else
      {
        Multiple = nextMultiple(a1, v8);
      }
    }
  }

  v13 = Multiple >= a1;
  result = Multiple - a1;
  if (!v13)
  {
    v9 = @"Invalid handling";
    v10 = -6;
    goto LABEL_16;
  }

  return result;
}

uint64_t SecMPPublicIdentityCreateFromBytes(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:*a2 length:*a3];
  v11 = 0;
  v6 = [SecMessageLegacyPublicIdentity identityWithIdentityData:v5 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [v6 asRef];
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SecMPPublicIdentityCreateFromBytes_cold_1(v7, v9);
    }

    v8 = 0;
    if (a4)
    {
      *a4 = v7;
    }
  }

  return v8;
}

uint64_t SecMPPublicIdentityCreateFromData(int a1, CFDataRef theData, void *a3)
{
  if (!theData)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return SecMPPublicIdentityCreateFromBytes(BytePtr, &BytePtr, &Length, a3);
}

BOOL SecMPPIEqualToBytes(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, *MEMORY[0x277CBED00]);
  Mutable = CFDataCreateMutable(v4, 0);
  SecMPPIAppendSerialization(a1, Mutable);
  if (v5)
  {
    v7 = Mutable == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = CFEqual(v5, Mutable) != 0;
    goto LABEL_10;
  }

  v9 = v5 == Mutable;
  if (v5)
  {
LABEL_10:
    CFRelease(v5);
    if (!Mutable)
    {
      return v9;
    }

    goto LABEL_8;
  }

  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

  return v9;
}

uint64_t SecMPPIEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v6 = CFDataCreateMutable(v4, 0);
  SecMPPIAppendSerialization(a1, Mutable);
  SecMPPIAppendSerialization(a2, v6);
  if (Mutable)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = Mutable == v6;
    if (!Mutable)
    {
      if (!v6)
      {
        return v8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = CFEqual(Mutable, v6) != 0;
  }

  CFRelease(Mutable);
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v8;
}

BOOL SecMPPIAppendCanonicalPublicKey(uint64_t a1, __CFData *a2)
{
  v3 = [*(a1 + 32) identityData];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);

  return v3 != 0;
}

uint64_t SecMPPIVerifySignature(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t *a6)
{
  if (a5)
  {
    v9 = *a4;
    if (a5 - 1 == v9)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:a4 + 1 length:*a4];
      v14 = [MEMORY[0x277CBEA90] dataWithBytes:a2 length:a3];
      if ([*(a1 + 32) verifySignature:v13 ofData:v14])
      {
        v15 = 1;
      }

      else
      {
        v22 = a5 + 2;
        v16 = malloc_type_malloc(a5 + 2, 0x77E2E09EuLL);
        if (v16)
        {
          v17 = v16;
          v21 = v16;
          SecMPPIRecreateSignature((a4 + 1), v9, &v21, &v22);
          if (v21)
          {
            v18 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v22];

            v19 = [*(a1 + 32) verifySignature:v18 ofData:v14];
            free(v17);
            if (v19)
            {
              v15 = 1;
            }

            else
            {
              MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Failed to verify signature (primary and replacement signature).");
              v15 = 0;
            }

            v13 = v18;
            goto LABEL_15;
          }

          MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Failed to decode DER of replacement signature.");
          free(v17);
        }

        else
        {
          MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Failed to allocate memory for replacement signature.");
        }

        v15 = 0;
      }

LABEL_15:

      return v15;
    }
  }

  MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Incorrect signature size or start.");
  return 0;
}

BOOL SecMPPIAppendPKIEncryptedData(uint64_t a1, uint64_t a2, __CFData *a3)
{
  v4 = [*(a1 + 32) encryptData:a2];
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v5);
    CFDataAppendBytes(a3, BytePtr, Length);
  }

  else
  {
    v8 = MessageProtectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SecMPPIAppendPKIEncryptedData_cold_1(v8);
    }
  }

  return v5 != 0;
}

uint64_t SecMPFullIdentityGetTypeID()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SecMPFullIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDSingleton;
  if (SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDOnce, block);
  }

  return SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDSingleton;
}

uint64_t __SecMPFullIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t __SecMPPublicIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SecMPFullIdentityCreate()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

uint64_t SecMPFullIdentityCreateWithAccessProtClass()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

uint64_t SecMPFullIdentityCreateWithProtClass()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

uint64_t SecMPFullIdentityCreateFromData(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v4 = [SecMessageLegacyFullIdentity identityWithDataRepresentation:a2 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = MessageProtectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SecMPFullIdentityCreateFromData_cold_1(v5);
    }

    *a3 = v5;
  }

  v7 = [v4 asRef];

  return v7;
}

uint64_t SecMPFIAppendSerialization(uint64_t a1, __CFData *a2, CFErrorRef *a3)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (v4)
  {
    SecMPCreateError(0, -7, @"NULL parameter passed", 0, a3);
  }

  else
  {
    v7 = *(a1 + 48);
    v14 = 0;
    v8 = [v7 dataRepresentationWithError:&v14];
    v9 = v14;
    v10 = v9;
    if (a3 && v9)
    {
      *a3 = v9;
    }

    BytePtr = CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v8);
    CFDataAppendBytes(a2, BytePtr, Length);
  }

  return v5;
}

unint64_t SecMPFIEncryptionSpace(uint64_t a1)
{
  v1 = [*(a1 + 48) encryptionSize];
  if (v1 >= 0x2A)
  {
    return v1 - 42;
  }

  else
  {
    return 0;
  }
}

BOOL SecMPFIDecrypt(uint64_t a1, uint64_t a2, __CFData *a3, void *a4, void *a5)
{
  v8 = *(a1 + 48);
  v15 = 0;
  v9 = [v8 decryptMessage:a2 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v9);
    CFDataAppendBytes(a3, BytePtr, Length);
    *a4 = [(__CFData *)v9 length];
  }

  else
  {
    *a5 = v10;
  }

  return v9 != 0;
}

uint64_t SecMPFullIdentityCreateWithAccess()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

BOOL SecMPFIAppendSignature(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 48);
  v13 = 0;
  v7 = [v6 signData:a2 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = a3;
    v12 = [v7 length];
    [v9 appendBytes:&v12 length:1];
    [v9 appendData:v7];
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SecMPFIAppendSignature_cold_1(v8);
    }

    if (a4)
    {
      *a4 = v8;
    }
  }

  return v7 != 0;
}

void SecMPFIAppendPublicHash(uint64_t a1, __CFData *a2)
{
  v6 = [*(a1 + 48) publicIdentity];
  v3 = [v6 publicIDHash];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);
}

void SecMPFIAppendCanonicalPublicHash(uint64_t a1, __CFData *a2)
{
  v6 = [*(a1 + 48) publicIdentity];
  v3 = [v6 publicIDCanonicalHash];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);
}

void SecMPPIAppendCanonicalHash(uint64_t a1, __CFData *a2)
{
  theData = [*(a1 + 32) publicIDCanonicalHash];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  CFDataAppendBytes(a2, BytePtr, Length);
}

uint64_t SecMPFullIdentityCreateFromRefs(uint64_t a1, uint64_t a2)
{
  v2 = [[SecMessageLegacyFullIdentity alloc] initWithEncryptionSecKey:a2 signingSecKey:a1];
  v3 = [@"Testmessage" dataUsingEncoding:4];
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [(SecMessageLegacyFullIdentity *)v2 asRef];
  v7 = [(SecMessageLegacyFullIdentity *)v2 publicIdentity];
  v8 = [v7 asRef];

  if (!SecMPSignAndProtectMessage(v3, v6, v8, v4, 0))
  {
    SecMPFullIdentityCreateFromRefs_cold_1();
  }

  if ((SecMPVerifyAndExposeMessage(v4, v8, v6, v5, 0) & 1) == 0)
  {
    SecMPFullIdentityCreateFromRefs_cold_2();
  }

  if (([(__CFData *)v5 isEqualToData:v3]& 1) == 0)
  {
    SecMPFullIdentityCreateFromRefs_cold_3();
  }

  CFRelease(v8);

  return v6;
}

void sub_22B412D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22B413BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose((v67 - 224), 8);
  _Block_object_dispose((v67 - 160), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_22B41504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t MPSecondaryEncryptionDisabled()
{
  if (get_value(@"SecondaryRegistrationDisabled"))
  {
    return 1;
  }

  return get_value(@"SecondaryEncryptionDisabled");
}

uint64_t get_value(void *a1)
{
  v1 = MEMORY[0x277CBEBD0];
  v2 = a1;
  v3 = [[v1 alloc] initWithSuiteName:@"com.apple.ids"];
  v4 = [v3 BOOLForKey:v2];

  return v4;
}

void set_value(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.ids"];
  [v5 setBool:a2 forKey:v4];
}

uint64_t SecMPFullIdentityObjCCreateOTRSessionWithFlags(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 signingKey];
  [v4 secKeyRef];

  v5 = [v3 signingKey];

  [v5 secKeyRef];
  v6 = *MEMORY[0x277CBECE8];
  v7 = SecOTRFullIdentityCreateFromSecKeyRef();
  v8 = SecOTRPublicIdentityCreateFromSecKeyRef();
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = SecOTRSessionCreateFromIDAndFlags();
    CFRelease(v7);
LABEL_6:
    CFRelease(v9);
    return v11;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v11 = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t SecMPFullIdentityCreateOTRSessionWithFlags(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = [*(a1 + 48) signingKey];
  v5 = [v4 secKeyRef];
  v6 = SecOTRFullIdentityCreateFromSecKeyRef();

  v7 = [*(a2 + 32) signingKey];
  v8 = [v7 secKeyRef];
  v9 = SecOTRPublicIdentityCreateFromSecKeyRef();

  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = SecOTRSessionCreateFromIDAndFlags();
    CFRelease(v6);
LABEL_6:
    CFRelease(v9);
    return v11;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v11 = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_22B419704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22B41A990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_22B41B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_22B41B9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_22B41BD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t NGMPBLegacyKeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NGMPBLegacyKey__signingKey;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NGMPBLegacyKey__encryptionKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBDevicePreKeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v30[0] = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v30[0];
          goto LABEL_51;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 24;
LABEL_44:
          v26 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_51;
        }

LABEL_38:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v23 = objc_alloc_init(NGMPBP256Key);
      objc_storeStrong((a1 + 16), v23);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !NGMPBP256KeyReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadData();
        v15 = 32;
        goto LABEL_44;
      case 5:
        v14 = PBReaderReadData();
        v15 = 40;
        goto LABEL_44;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          LOBYTE(v30[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v30[0] & 0x7F) << v16;
          if ((v30[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_48:
        *(a1 + 48) = v22;
        goto LABEL_51;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBFullDeviceIdentityReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NGMPBP256Key);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NGMPBP256KeyReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NGMPBDevicePreKey);
    [a1 addPrekeys:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NGMPBDevicePreKeyReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBOuterMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        v14 = &OBJC_IVAR___NGMPBOuterMessage__encryptedPayload;
        if (v13 == 1)
        {
          goto LABEL_27;
        }

        if (v13 == 2)
        {
          v14 = &OBJC_IVAR___NGMPBOuterMessage__ephemeralPubKey;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = &OBJC_IVAR___NGMPBOuterMessage__signature;
            goto LABEL_27;
          case 4:
            v14 = &OBJC_IVAR___NGMPBOuterMessage__tetraMessage;
            goto LABEL_27;
          case 0x63:
            v14 = &OBJC_IVAR___NGMPBOuterMessage__keyValidator;
LABEL_27:
            v15 = PBReaderReadData();
            v16 = *v14;
            v17 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_28;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBPublicDeviceIdentityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBPublicDevicePrekeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v22 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v22;
          goto LABEL_33;
        }

        if (v13 != 4)
        {
LABEL_24:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_33;
        }

        v14 = PBReaderReadData();
        v15 = 32;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_33:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBP256KeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBInnerMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadData();
        v22 = 32;
LABEL_36:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_41;
      }

      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_40:
      *(a1 + 8) = v20;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v21 = PBReaderReadData();
      v22 = 24;
    }

    else
    {
      if (v13 != 99)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v21 = PBReaderReadData();
      v22 = 16;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x28223BE20](a1);
    return SymmetricKey.withUnsafeBytes<A>(_:)();
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v3 = MEMORY[0x231891960](0xD000000000000018, 0x800000022B494B90);
    [v2 initWithDomain:v3 code:0 userInfo:0];

    return swift_willThrow();
  }
}

uint64_t *closure #1 in closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, _DWORD *a7@<X8>)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v23, 0, 14);
      goto LABEL_15;
    }

    v22 = a7;
    v14 = *(a3 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_13;
    }

    a7 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
    v16 = __DataStorage._offset.getter();
    v17 = v14 - v16;
    if (!__OFSUB__(v14, v16))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v23[0] = a3;
    LOWORD(v23[1]) = a4;
    BYTE2(v23[1]) = BYTE2(a4);
    BYTE3(v23[1]) = BYTE3(a4);
    BYTE4(v23[1]) = BYTE4(a4);
    BYTE5(v23[1]) = BYTE5(a4);
LABEL_15:
    result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(a5, a6, a1, a2, v23);
    goto LABEL_16;
  }

  v18 = a3;
  if (a3 > a3 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = a7;
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v19 = __DataStorage._offset.getter();
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
LABEL_12:
      v15 += v17;
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
  }

LABEL_13:
  MEMORY[0x231890D50]();
  result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(a5, a6, a1, a2, v15);
  a7 = v22;
LABEL_16:
  *a7 = result;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t variable initialization expression of TetraRatchetState.rootKey@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t specialized static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      goto LABEL_39;
    }

    v14 = HIDWORD(a2) - a2;
  }

LABEL_11:
  *&v47 = specialized Data.init(count:)(v14);
  *(&v47 + 1) = v17;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v47, 0);
  v50 = v47;
  v18 = ccaes_ctr_crypt_mode();
  v44[2] = a1;
  v44[3] = a4;
  v44[4] = a5;
  v44[5] = a6;
  v44[6] = &v50;
  v44[7] = MEMORY[0x28223BE20](v18);
  v19 = specialized Data.withUnsafeBytes<A>(_:)(partial apply for closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:), v44, a2, a3);
  if (!v6)
  {
    v20 = v19;
    if (v19)
    {
      v21 = type metadata accessor for CryptoKitError();
      lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
      swift_allocError();
      *v22 = v20;
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC51C8], v21);
      swift_willThrow();
      outlined consume of Data._Representation(v50, *(&v50 + 1));
LABEL_37:
      v42 = *MEMORY[0x277D85DE8];
      return v20;
    }

    v23 = *(&v50 + 1);
    v24 = v50;
    v48 = MEMORY[0x277CC9318];
    v49 = MEMORY[0x277CC9300];
    v47 = v50;
    v25 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277CC9318]);
    v26 = *v25;
    v27 = v25[1];
    v28 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v28 != 2)
      {
        memset(v45, 0, 14);
        outlined copy of Data._Representation(v24, v23);
        v29 = v45;
        v30 = v45;
        goto LABEL_36;
      }

      v31 = *(v26 + 16);
      v32 = *(v26 + 24);
      outlined copy of Data._Representation(v24, v23);
      v23 = v27 & 0x3FFFFFFFFFFFFFFFLL;
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v23 = v27 & 0x3FFFFFFFFFFFFFFFLL;
        v33 = __DataStorage._offset.getter();
        v26 = v31 - v33;
        if (__OFSUB__(v31, v33))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v24 += v26;
      }

      v34 = __OFSUB__(v32, v31);
      v35 = v32 - v31;
      if (!v34)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v28)
    {
      v45[0] = *v25;
      LOWORD(v45[1]) = v27;
      BYTE2(v45[1]) = BYTE2(v27);
      BYTE3(v45[1]) = BYTE3(v27);
      BYTE4(v45[1]) = BYTE4(v27);
      BYTE5(v45[1]) = BYTE5(v27);
      outlined copy of Data._Representation(v24, v23);
      v29 = v45;
      v30 = v45 + BYTE6(v27);
LABEL_36:
      closure #1 in Data.init<A>(_:)(v29, v30, &v46);
      v20 = v46;
      __swift_destroy_boxed_opaque_existential_1(&v47);
      outlined consume of Data._Representation(v50, *(&v50 + 1));
      goto LABEL_37;
    }

    v36 = v26;
    v37 = v26 >> 32;
    v35 = v37 - v36;
    if (v37 >= v36)
    {
      outlined copy of Data._Representation(v24, v23);
      v24 = __DataStorage._bytes.getter();
      if (!v24)
      {
LABEL_28:
        v39 = MEMORY[0x231890D50]();
        if (v39 >= v35)
        {
          v40 = v35;
        }

        else
        {
          v40 = v39;
        }

        v41 = (v40 + v24);
        if (v24)
        {
          v30 = v41;
        }

        else
        {
          v30 = 0;
        }

        v29 = v24;
        goto LABEL_36;
      }

      v38 = __DataStorage._offset.getter();
      if (!__OFSUB__(v36, v38))
      {
        v24 += v36 - v38;
        goto LABEL_28;
      }

LABEL_41:
      __break(1u);
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *partial apply for closure #1 in closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  return closure #1 in closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 40), *(v3 + 48), a3);
}

uint64_t *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v29 = *MEMORY[0x277D85DE8];
  v7 = *result;
  v8 = result[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      if (a3)
      {
        if (a5)
        {
          result = ccctr_one_shot();
          goto LABEL_20;
        }

        goto LABEL_37;
      }

      goto LABEL_35;
    }

    outlined consume of Data._Representation(v7, v8);
    *v6 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v7 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (!__OFSUB__(v12, __DataStorage._offset.getter()))
    {
      result = MEMORY[0x231890D50]();
      if (a3)
      {
        if (a5)
        {
          result = ccctr_one_shot();
          *v6 = v7;
          v6[1] = v11 | 0x8000000000000000;
          v13 = *MEMORY[0x277D85DE8];
          return result;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v9)
  {
    result = outlined consume of Data._Representation(v7, v8);
    LOWORD(v27) = v8;
    BYTE2(v27) = BYTE2(v8);
    HIBYTE(v27) = BYTE3(v8);
    LOBYTE(v28) = BYTE4(v8);
    HIBYTE(v28) = BYTE5(v8);
    if (a3)
    {
      result = a2;
      if (a5)
      {
        result = ccctr_one_shot();
        *v6 = v7;
        v6[1] = v27 | ((v28 | (BYTE6(v8) << 16)) << 32);
LABEL_20:
        v17 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_34;
  }

  v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v7, v8);
  *v6 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v16 < v7)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_32:
      __break(1u);
    }

    v18 = type metadata accessor for __DataStorage();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v14 = v21;
    v16 = v7 >> 32;
  }

  if (v16 < v7)
  {
    goto LABEL_29;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (__OFSUB__(v7, __DataStorage._offset.getter()))
  {
    goto LABEL_30;
  }

  result = MEMORY[0x231890D50]();
  if (!a3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a5)
  {
    v22 = ccctr_one_shot();

    *v6 = v7;
    v6[1] = v14 | 0x4000000000000000;
    v23 = *MEMORY[0x277D85DE8];
    return v22;
  }

LABEL_42:
  __break(1u);
  return result;
}

void type metadata accessor for SecKeyRef(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t one-time initialization function for TetraLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, TetraLogger);
  __swift_project_value_buffer(v0, TetraLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

dispatch_semaphore_t one-time initialization function for conversationLock()
{
  result = dispatch_semaphore_create(1);
  conversationLock = result;
  return result;
}

NSObject *closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for TetraSessionStates();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  result = MessageProtectionLog();
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = result;
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v18 = conversationLock;
  OS_dispatch_semaphore.wait()();

  static os_log_type_t.debug.getter();
  result = MessageProtectionLog();
  if (!result)
  {
    goto LABEL_20;
  }

  v19 = result;
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v40, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TetraSessionStates?(v10, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    lazy protocol witness table accessor for type TetraCommitmentError and conformance TetraCommitmentError();
    v20 = swift_allocError();
    *v21 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  outlined init with take of TetraRatchetOuterMessage(v10, v15, type metadata accessor for TetraSessionStates);
  if ((TetraSessionStates.discardMessageKeyOnSessionStates(ephemeralECDHPublicKey:messageIndex:)(a4, a5) & 1) == 0)
  {
    lazy protocol witness table accessor for type TetraCommitmentError and conformance TetraCommitmentError();
    v20 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
    outlined destroy of TetraOuterMessageType(v15, type metadata accessor for TetraSessionStates);
LABEL_12:
    v23 = static os_log_type_t.error.getter();
    result = MessageProtectionLog();
    if (result)
    {
      v24 = result;
      if (os_log_type_enabled(result, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41[0] = v26;
        *v25 = 136315394;
        v27 = [v40 base64EncodedStringWithOptions_];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v41);

        *(v25 + 4) = v31;
        *(v25 + 12) = 2080;
        swift_getErrorValue();
        v32 = Error.localizedDescription.getter();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v41);

        *(v25 + 14) = v34;
        _os_log_impl(&dword_22B404000, v24, v23, "Failed to commit updated session state for %s because of error: %s.", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231892DF0](v26, -1, -1);
        MEMORY[0x231892DF0](v25, -1, -1);
      }

      static os_log_type_t.debug.getter();
      result = MessageProtectionLog();
      if (result)
      {
        v35 = result;
        os_log(_:dso:log:_:_:)();

        v36 = conversationLock;
        OS_dispatch_semaphore.signal()();

        return 0;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v40, v15, 0);
  static os_log_type_t.debug.getter();
  result = MessageProtectionLog();
  if (result)
  {
    v37 = result;
    os_log(_:dso:log:_:_:)();

    v38 = conversationLock;
    OS_dispatch_semaphore.signal()();

    outlined destroy of TetraOuterMessageType(v15, type metadata accessor for TetraSessionStates);
    return 1;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v18 = a2;
    v19 = a3;
    v9 = MEMORY[0x277CC9318];
    v16 = MEMORY[0x277CC9318];
    v17 = MEMORY[0x277CC9300];
    v14 = a4;
    v15 = a5;
  }

  else
  {
    v18 = a4;
    v19 = a5;
    v9 = MEMORY[0x277CC9318];
    v16 = MEMORY[0x277CC9318];
    v17 = MEMORY[0x277CC9300];
    v14 = a2;
    v15 = a3;
  }

  v10 = __swift_project_boxed_opaque_existential_1(&v14, v9);
  v11 = *v10;
  v12 = v10[1];
  outlined copy of Data._Representation(a2, a3);
  outlined copy of Data._Representation(a4, a5);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v18;
}

void static TetraAPI.open(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:theirIdentity:signedBy:tetraVersion:ourPrekeys:ourSigningPublicKeyCompactRepresentation:decryptionBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, objc_class *a7, unint64_t a8, void *a9, void *a10, unint64_t a11, void *a12, uint64_t a13, void *a14, int a15, uint64_t a16, uint64_t a17, void (*a18)(void, unint64_t, void, id, void, void), uint64_t a19)
{
  v501 = a7;
  v491 = a5;
  v496 = a3;
  v497 = a4;
  v494 = a1;
  v495 = a2;
  v498 = a10;
  v507 = *MEMORY[0x277D85DE8];
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v21 = *(*(v454 - 8) + 64);
  MEMORY[0x28223BE20](v454);
  v457 = &v448 - v22;
  v23 = type metadata accessor for TetraRatchetState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v466 = (&v448 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v470 = type metadata accessor for P256.Signing.PublicKey();
  v467 = *(v470 - 1);
  v26 = *(v467 + 64);
  MEMORY[0x28223BE20](v470);
  v471 = &v448 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = type metadata accessor for TetraSessionState();
  v456 = *(v468 - 1);
  v28 = *(v456 + 64);
  v29 = MEMORY[0x28223BE20](v468);
  v461 = &v448 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v460 = &v448 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v462 = (&v448 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v464 = (&v448 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v465 = (&v448 - v38);
  MEMORY[0x28223BE20](v37);
  v463 = (&v448 - v39);
  v479 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v478 = *(v479 - 8);
  v40 = *(v478 + 64);
  v41 = MEMORY[0x28223BE20](v479);
  v453 = &v448 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v472 = v42;
  MEMORY[0x28223BE20](v41);
  v473 = &v448 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v455 = &v448 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v469 = (&v448 - v49);
  MEMORY[0x28223BE20](v48);
  v477 = &v448 - v50;
  v483 = type metadata accessor for TetraSessionStates();
  v482 = *(v483 - 8);
  v51 = *(v482 + 64);
  v52 = MEMORY[0x28223BE20](v483);
  v475 = &v448 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v476 = &v448 - v55;
  MEMORY[0x28223BE20](v54);
  v485 = &v448 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v480 = &v448 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v458 = &v448 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v459 = &v448 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v481 = &v448 - v66;
  MEMORY[0x28223BE20](v65);
  v489 = (&v448 - v67);
  v484 = type metadata accessor for TetraRatchetOuterMessage(0);
  v68 = *(*(v484 - 8) + 64);
  MEMORY[0x28223BE20](v484);
  v492 = &v448 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v487 = &v448 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = type metadata accessor for TetraOuterMessageType(0);
  v73 = *(*(v493 - 1) + 64);
  v74 = MEMORY[0x28223BE20](v493);
  v490 = &v448 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v488 = &v448 - v77;
  MEMORY[0x28223BE20](v76);
  v499 = &v448 - v78;
  v79 = [a14 compactRepresentation];
  v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;
  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(v501, a8, a9, v80, v82, v498, a11, a12, v83, v84);
  v87 = v86;
  v89 = v88;
  outlined consume of Data._Representation(v83, v85);
  outlined consume of Data._Representation(v80, v82);

  v90 = v87(0);
  v92 = v91;

  v93.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v90, v92);
  v94 = static os_log_type_t.info.getter();
  v486 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v95 = static OS_os_log.default.getter();
  v96 = os_log_type_enabled(v95, v94);
  v500 = a14;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v498 = v87;
    v99 = v98;
    *&v504 = v98;
    *v97 = 136315138;
    v100 = [(objc_class *)v93.super.isa base64EncodedStringWithOptions:0];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = a6;
    isa = v93.super.isa;
    v104 = v89;
    v106 = v105;

    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v106, &v504);
    v89 = v104;
    v93.super.isa = isa;
    a6 = v102;

    *(v97 + 4) = v107;
    _os_log_impl(&dword_22B404000, v95, v94, "Decrypting for conversationID: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    v108 = v99;
    v87 = v498;
    MEMORY[0x231892DF0](v108, -1, -1);
    MEMORY[0x231892DF0](v97, -1, -1);
  }

  static os_log_type_t.debug.getter();
  v109 = MessageProtectionLog();
  v110 = v499;
  if (!v109)
  {
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  v111 = v109;
  v501 = v93.super.isa;
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v112 = a6;
  v113 = conversationLock;
  OS_dispatch_semaphore.wait()();

  static os_log_type_t.debug.getter();
  v114 = MessageProtectionLog();
  if (!v114)
  {
LABEL_291:
    __break(1u);
  }

  v115 = v114;
  v116 = a18;
  v117 = a19;
  v118 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)();

  v119 = v87;
  v120 = v87(1);
  v122 = v121;

  v123 = 0;
  parseTetraOuterMessage(serializedData:authenticatedData:signedBy:onSessionWithDST:)(v494, v495, v496, v497, v500, v120, v122, v110);
  v498 = v119;
  v496 = a16;
  LODWORD(v495) = a15;
  outlined consume of Data._Representation(v120, v122);
  v505 = &type metadata for MessageProtectionFeatureFlags;
  v506 = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags();
  LOBYTE(v504) = 3;
  LOBYTE(v122) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v504);
  v497 = v112;
  v124 = v501;
  v125 = v110;
  if (v122)
  {
    v126 = v488;
    outlined init with copy of TetraOuterMessageType(v110, v488, type metadata accessor for TetraOuterMessageType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v127 = a13;
      v128 = v487;
      outlined init with take of TetraRatchetOuterMessage(v126, v487, type metadata accessor for TetraNoRatchetOuterMessage);
      v129 = static os_log_type_t.info.getter();
      v130 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v130, v129))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v451 = a18;
        v133 = v132;
        *&v504 = v132;
        *v131 = 136315138;
        v134 = [(objc_class *)v124 base64EncodedStringWithOptions:0];
        v452 = a19;
        v135 = v89;
        v136 = v134;
        v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v124;
        v140 = v139;

        v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v140, &v504);
        v124 = v138;
        v127 = a13;
        v125 = v499;

        *(v131 + 4) = v141;
        v89 = v135;
        v117 = v452;
        _os_log_impl(&dword_22B404000, v130, v129, "Decrypting TetraNoRatchet for conversationID: %s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v133);
        v142 = v133;
        v116 = v451;
        MEMORY[0x231892DF0](v142, -1, -1);
        v143 = v131;
        v128 = v487;
        MEMORY[0x231892DF0](v143, -1, -1);
      }

      v144 = v498;
      if (v127)
      {

        specialized static TetraAPI.openNoRatchet(tetraOuterMessage:sessionDST:guid:authenticatedData:ourPrekeys:theirIdentity:tetraVersion:signedBy:decryptionBlock:)(v128, v144, v89, v491, v497, v496, v127, v495, v500, v116, v117);

        static os_log_type_t.debug.getter();
        v145 = MessageProtectionLog();
        if (v145)
        {
          v146 = v145;
          os_log(_:dso:log:_:_:)();

          v147 = conversationLock;
          OS_dispatch_semaphore.signal()();

          outlined destroy of TetraOuterMessageType(v128, type metadata accessor for TetraNoRatchetOuterMessage);
          outlined destroy of TetraOuterMessageType(v125, type metadata accessor for TetraOuterMessageType);
          goto LABEL_287;
        }

        goto LABEL_297;
      }

LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    outlined destroy of TetraOuterMessageType(v126, type metadata accessor for TetraOuterMessageType);
  }

  v148 = v490;
  outlined init with copy of TetraOuterMessageType(v110, v490, type metadata accessor for TetraOuterMessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of TetraOuterMessageType(v148, type metadata accessor for TetraOuterMessageType);
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v149 = swift_allocError();
    *v150 = 0;
    swift_willThrow();
    v123 = v149;
    v151 = v110;
    v152 = type metadata accessor for TetraOuterMessageType;
    goto LABEL_275;
  }

  outlined init with take of TetraRatchetOuterMessage(v148, v492, type metadata accessor for TetraRatchetOuterMessage);
  if (one-time initialization token for sharedInstance != -1)
  {
    goto LABEL_75;
  }

LABEL_18:
  v153 = static TetraDBManager.sharedInstance;
  v154 = v489;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v124, v489);
  if (v123)
  {
    outlined destroy of TetraOuterMessageType(v125, type metadata accessor for TetraOuterMessageType);
    goto LABEL_274;
  }

  v487 = v153;
  v155 = v481;
  outlined init with copy of TetraSessionStates?(v154, v481, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v156 = *(v482 + 48);
  v450 = v482 + 48;
  v449 = v156;
  if (v156(v155, 1, v483) == 1)
  {
    outlined destroy of TetraSessionStates?(v155, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  }

  else
  {
    outlined init with take of TetraRatchetOuterMessage(v155, v485, type metadata accessor for TetraSessionStates);
    v503 = 0;
    v162 = v484;
    v163 = v492;
    if (*(v492 + *(v484 + 36) + 8) >> 60 == 15)
    {
      goto LABEL_28;
    }

    v164 = (v492 + *(v484 + 40));
    if (v164[1] >> 60 == 15)
    {
      goto LABEL_28;
    }

    v452 = v117;
    v451 = v116;
    v165 = v484;
    v166 = v476;
    outlined init with copy of TetraOuterMessageType(v485, v476, type metadata accessor for TetraSessionStates);
    v167 = v478;
    v168 = v163 + *(v165 + 28);
    v169 = v477;
    v170 = v479;
    (*(v478 + 16))(v477, v168, v479);
    (*(v167 + 56))(v169, 0, 1, v170);
    v171 = v164[1];
    if (v171 >> 60 == 15)
    {
      goto LABEL_310;
    }

    v172 = TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(v169, *v164, v171);
    outlined destroy of TetraSessionStates?(v169, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    outlined destroy of TetraOuterMessageType(v166, type metadata accessor for TetraSessionStates);
    v163 = v492;
    v116 = v451;
    v117 = v452;
    v124 = v501;
    v162 = v484;
    if (v172)
    {
LABEL_28:
      v173 = (v163 + *(v162 + 40));
      v174 = *v173;
      v175 = v173[1];

      v176 = TetraSessionStates.openMessage(_:prekeysHash:sessionDST:theirTetraVersion:didRatchet:)(v163, v174, v175, v498, v89, v495, &v503);
      v179 = v178;
      v181 = v180;
      v496 = v176;
      v498 = v182;
      v500 = v89;

      v183 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      if (v181 >> 60 != 15)
      {
        v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v185 = v117;
        v186 = v124;
        v188 = v187;
        outlined copy of Data?(v179, v181);
        outlined copy of Data._Representation(v179, v181);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v504 = v183;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v179, v181, v184, v188, isUniquelyReferenced_nonNull_native);
        outlined consume of Data?(v179, v181);
        v124 = v186;
        v117 = v185;

        v183 = v504;
      }

      TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v124, v485, v503);
      v452 = v117;
      v451 = v116;
      static os_log_type_t.debug.getter();
      v203 = MessageProtectionLog();
      if (v203)
      {
        v204 = v203;
        os_log(_:dso:log:_:_:)();

        v205 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v206 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v183);

        v207 = *(v484 + 28);
        v497 = *(v492 + 24);
        v208 = v478;
        v209 = v473;
        v210 = v479;
        (*(v478 + 16))(v473, v492 + v207, v479);
        v211 = (*(v208 + 80) + 32) & ~*(v208 + 80);
        v212 = (v472 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
        v213 = swift_allocObject();
        v214 = v501;
        *(v213 + 16) = v474;
        *(v213 + 24) = v214;
        (*(v208 + 32))(v213 + v211, v209, v210);
        *(v213 + v212) = v497;
        v215 = v214;
        v216 = v496;
        v217 = v498;
        v451(v496, v498, v206, 0, closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)partial apply, v213);

        outlined consume of Data._Representation(v216, v217);
        outlined consume of Data?(v179, v181);

        outlined destroy of TetraOuterMessageType(v485, type metadata accessor for TetraSessionStates);
        outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraOuterMessageType);
        outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        v218 = v492;
LABEL_55:
        outlined destroy of TetraOuterMessageType(v218, type metadata accessor for TetraRatchetOuterMessage);
        goto LABEL_287;
      }

LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
      return;
    }

    outlined destroy of TetraOuterMessageType(v485, type metadata accessor for TetraSessionStates);
    v123 = 0;
  }

  v157 = (v492 + *(v484 + 40));
  v158 = v157[1];
  if (v158 >> 60 == 15)
  {
    v159 = v492;
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v160 = swift_allocError();
    *v161 = 0;
LABEL_31:
    swift_willThrow();
    v123 = v160;
    outlined destroy of TetraOuterMessageType(v125, type metadata accessor for TetraOuterMessageType);
    outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    v152 = type metadata accessor for TetraRatchetOuterMessage;
    v151 = v159;
    goto LABEL_275;
  }

  if (*(v492 + *(v484 + 36) + 8) >> 60 == 15)
  {
    v159 = v492;
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v160 = swift_allocError();
    *v177 = 1;
    goto LABEL_31;
  }

  v190 = *v157;
  *&v504 = v118;
  v125 = v496;
  if (v496 >> 62)
  {
    v415 = v190;
    if ((v496 & 0x8000000000000000) != 0)
    {
      v416 = v496;
    }

    else
    {
      v416 = v496 & 0xFFFFFFFFFFFFFF8;
    }

    v118 = v158;
    v417 = MEMORY[0x231891D10](v416);
    v158 = v118;
    v125 = v496;
    v191 = v417;
    v190 = v415;
  }

  else
  {
    v191 = *((v496 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v488 = v190;
  v490 = v158;
  outlined copy of Data._Representation(v190, v158);
  v451 = v116;
  if (!v191)
  {
    v202 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v481 = v123;
  v123 = 0;
  v494 = v125 & 0xC000000000000001;
  v493 = (v125 & 0xFFFFFFFFFFFFFF8);
  v452 = v117;
  do
  {
    if (v494)
    {
      v193 = MEMORY[0x231891C80](v123, v125);
    }

    else
    {
      if (v123 >= v493[2])
      {
        goto LABEL_74;
      }

      v193 = *(v125 + 8 * v123 + 32);
    }

    v118 = v193;
    v117 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_18;
    }

    v194 = [v193 tetraRegistration];
    if (v194)
    {
      v195 = v194;
      v196 = v89;
      v197 = TetraRegistration.computeKeysHash()();
      v199 = v198;
      v200 = specialized static Data.== infix(_:_:)(v197, v198, v488, v490);
      outlined consume of Data._Representation(v197, v199);

      if (v200)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v201 = *(v504 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v89 = v196;
      v124 = v501;
      v116 = v451;
      v125 = v496;
    }

    else
    {
    }

    ++v123;
    v192 = v117 == v191;
    v117 = v452;
  }

  while (!v192);
  v202 = v504;
  v123 = v481;
LABEL_57:
  v219 = v499;
  if (v202 < 0 || (v202 & 0x4000000000000000) != 0)
  {
    if (!MEMORY[0x231891D10](v202))
    {
      goto LABEL_272;
    }

    if (MEMORY[0x231891D10](v202) != 1)
    {
      goto LABEL_271;
    }

LABEL_61:
    v496 = v202;
    if ((v202 & 0xC000000000000001) != 0)
    {
      v221 = MEMORY[0x231891C80](0, v202);
      goto LABEL_64;
    }

    if (*(v202 + 16))
    {
      v221 = *(v202 + 32);
LABEL_64:
      v222 = v221;
      v223 = [v500 compactRepresentation];
      v224 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v226 = v225;

      *&v504 = v224;
      *(&v504 + 1) = v226;
      v227 = v471;
      P256.Signing.PublicKey.init<A>(compactRepresentation:)();
      if (v123)
      {
        outlined destroy of TetraOuterMessageType(v219, type metadata accessor for TetraOuterMessageType);
        outlined consume of Data?(v488, v490);

        outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined destroy of TetraOuterMessageType(v492, type metadata accessor for TetraRatchetOuterMessage);
        v116 = v451;
        goto LABEL_276;
      }

      v500 = v89;
      v228 = v478;
      v229 = *(v478 + 16);
      v480 = *(v484 + 28);
      v230 = v469;
      v231 = v479;
      v485 = v478 + 16;
      v484 = v229;
      v229(v469, &v480[v492], v479);
      v481 = 0;
      v232 = *(v228 + 56);
      v232(v230, 0, 1, v231);
      v233 = v222;
      v234 = v227;
      v235 = v468;
      v236 = v465;
      v494 = v468[7];
      v232((v465 + v494), 1, 1, v231);
      v237 = v235;
      v238 = (v236 + v235[8]);
      v239 = v488;
      v240 = v490;
      v493 = v238;
      *v238 = v488;
      v238[1] = v240;
      v241 = v467;
      v242 = *(v467 + 16);
      v486 = v237[6];
      v242(v236 + v486, v234, v470);
      *(v236 + v237[9]) = 1;
      outlined copy of Data?(v239, v240);
      v243 = v233;
      v244 = v466;
      v245 = v481;
      TetraRatchetState.init(asReceiverWithFullPrekey:)(v243, v466);
      if (v245)
      {

        outlined consume of Data?(v239, v240);
        outlined destroy of TetraSessionStates?(v469, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v246 = v245;
        v247 = *(v241 + 8);
        v248 = v470;
        v247(v471, v470);
        outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraOuterMessageType);
        v247(v236 + v486, v248);
        v123 = v246;
        outlined destroy of TetraSessionStates?(v236 + v494, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        outlined consume of Data._Representation(*v493, v493[1]);
        outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined destroy of TetraOuterMessageType(v492, type metadata accessor for TetraRatchetOuterMessage);
        v253 = v497;
        v116 = v451;
        goto LABEL_277;
      }

      v493 = v243;
      (*(v241 + 8))(v471, v470);
      outlined init with take of TetraRatchetOuterMessage(v244, v236 + v237[5], type metadata accessor for TetraRatchetState);
      if (v495 >= 0xF)
      {
        v249 = 15;
      }

      else
      {
        v249 = v495;
      }

      *v236 = v249;
      outlined assign with take of P256.KeyAgreement.PublicKey?(v469, v236 + v494, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v250 = v463;
      outlined init with take of TetraRatchetOuterMessage(v236, v463, type metadata accessor for TetraSessionState);
      v503 = 0;
      *v250 = v249;
      *(v250 + v237[9]) = 1;
      v251 = v237[5];
      v252 = v500;

      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v492, v498, v252, &v503);
      v471 = v254;
      v475 = v255;
      v486 = v256;
      v494 = v257;
      v481 = 0;
      v452 = v117;

      v258 = v489;
      v259 = v459;
      outlined init with copy of TetraSessionStates?(v489, v459, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      v260 = v483;
      v261 = v449(v259, 1, v483);
      outlined destroy of TetraSessionStates?(v259, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      if (v261 == 1)
      {
        outlined destroy of TetraSessionStates?(v258, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined init with copy of TetraOuterMessageType(v250, v258, type metadata accessor for TetraSessionState);
        *(v258 + *(v260 + 20)) = 0;
        *(v258 + *(v260 + 24)) = MEMORY[0x277D84F90];
        (*(v482 + 56))(v258, 0, 1, v260);
LABEL_95:
        v286 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v287 = v494;
        if (v494 >> 60 != 15)
        {
          v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v290 = v289;
          v291 = v486;
          outlined copy of Data?(v486, v287);
          outlined copy of Data._Representation(v291, v287);
          v292 = swift_isUniquelyReferenced_nonNull_native();
          *&v504 = v286;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v291, v287, v288, v290, v292);
          outlined consume of Data?(v291, v287);

          v286 = v504;
        }

        v293 = v458;
        outlined init with copy of TetraSessionStates?(v489, v458, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        if (v449(v293, 1, v483) == 1)
        {
          goto LABEL_328;
        }

        v124 = v501;
        v123 = v481;
        TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v501, v293, v503);
        if (v123)
        {

          outlined consume of Data._Representation(v471, v475);
          outlined consume of Data?(v486, v494);

          outlined consume of Data?(v488, v490);
          outlined destroy of TetraOuterMessageType(v463, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraOuterMessageType);

          outlined destroy of TetraOuterMessageType(v293, type metadata accessor for TetraSessionStates);
          outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          outlined destroy of TetraOuterMessageType(v492, type metadata accessor for TetraRatchetOuterMessage);
          v253 = v497;
          v116 = v451;
          goto LABEL_277;
        }

        outlined destroy of TetraOuterMessageType(v293, type metadata accessor for TetraSessionStates);
        static os_log_type_t.debug.getter();
        v294 = MessageProtectionLog();
        if (!v294)
        {
          goto LABEL_330;
        }

        v295 = v294;
        os_log(_:dso:log:_:_:)();

        v296 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v297 = static os_log_type_t.info.getter();
        v298 = MessageProtectionLog();
        if (v298)
        {
          v299 = v298;

          if (os_log_type_enabled(v299, v297))
          {
            v300 = swift_slowAlloc();
            v301 = swift_slowAlloc();
            *&v504 = v301;
            *v300 = 136315138;
            *(v300 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v491, v497, &v504);
            _os_log_impl(&dword_22B404000, v299, v297, "Successfully decrypted %s", v300, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v301);
            MEMORY[0x231892DF0](v301, -1, -1);
            MEMORY[0x231892DF0](v300, -1, -1);
          }

          v302 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v286);

          v303 = v492;
          v304 = *(v492 + 24);
          v305 = v473;
          v306 = v479;
          (v484)(v473, &v480[v492], v479);
          v307 = v478;
          v308 = (*(v478 + 80) + 32) & ~*(v478 + 80);
          v309 = (v472 + v308 + 7) & 0xFFFFFFFFFFFFFFF8;
          v310 = swift_allocObject();
          v311 = v501;
          *(v310 + 16) = v474;
          *(v310 + 24) = v311;
          (*(v307 + 32))(v310 + v308, v305, v306);
          *(v310 + v309) = v304;
          v312 = v311;
          v313 = v471;
          v314 = v475;
          v451(v471, v475, v302, 0, partial apply for closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:), v310);

          outlined consume of Data._Representation(v313, v314);
          outlined consume of Data?(v486, v494);

          outlined consume of Data?(v488, v490);
          outlined destroy of TetraOuterMessageType(v463, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraOuterMessageType);
          outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          v218 = v303;
          goto LABEL_55;
        }

        goto LABEL_331;
      }

      outlined init with copy of TetraOuterMessageType(v250, v464, type metadata accessor for TetraSessionState);
      if (v449(v258, 1, v260) == 1)
      {
        goto LABEL_329;
      }

      if (specialized static TetraSessionState.== infix(_:_:)(v489, v464))
      {
        outlined assign with copy of TetraSessionState(v464, v489);
LABEL_94:
        TetraSessionStates.cleanupPreviousSessionStates()();
        outlined destroy of TetraOuterMessageType(v464, type metadata accessor for TetraSessionState);
        goto LABEL_95;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
      v262 = (*(v456 + 80) + 32) & ~*(v456 + 80);
      v495 = *(v456 + 72);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_22B48D7C0;
      v482 = v262;
      v264 = v489;
      outlined init with copy of TetraOuterMessageType(v489, v263 + v262, type metadata accessor for TetraSessionState);
      v265 = *(v483 + 24);
      v266 = *(v264 + v265);
      *&v504 = v263;

      specialized Array.append<A>(contentsOf:)(v267);
      v268 = *(v264 + v265);
      *(v264 + v265) = v504;

      v269 = v464;
      v270 = outlined assign with copy of TetraSessionState(v464, v264);
      v470 = &v448;
      MEMORY[0x28223BE20](v270);
      v447[2] = v269;
      v476 = v265;
      v271 = *(v264 + v265);
      v272 = v481;
      v273 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in TetraSessionStates.makeDefault(_:), v447, v271);
      v481 = v272;
      if (v274)
      {
        v275 = v271[2];
LABEL_84:
        v279 = *(v489 + v476);
        v280 = v279[2];
        if (v275 > v280)
        {
LABEL_302:
          __break(1u);
          goto LABEL_303;
        }

        if (v275 < 0)
        {
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        if (__OFADD__(v280, v275 - v280))
        {
          goto LABEL_304;
        }

        v281 = *(v489 + v476);
        v282 = swift_isUniquelyReferenced_nonNull_native();
        *(v489 + v476) = v279;
        if (!v282 || v275 > v279[3] >> 1)
        {
          if (v280 <= v275)
          {
            v283 = v275;
          }

          else
          {
            v283 = v280;
          }

          v279 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v282, v283, 1, v279, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
          *(v489 + v476) = v279;
        }

        v284 = v489;
        v285 = v476;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v275, v280, 0);
        *(v284 + v285) = v279;
        goto LABEL_94;
      }

      v276 = v273 + 1;
      if (__OFADD__(v273, 1))
      {
        goto LABEL_307;
      }

      v278 = v271 + 2;
      v277 = v271[2];
      if (v276 == v277)
      {
        v275 = v273;
        goto LABEL_84;
      }

      v469 = (v478 + 48);
      v465 = (v478 + 32);
      v466 = (v478 + 8);
      v315 = v482 + v495 * v276;
      v316 = v462;
      v275 = v273;
      while (1)
      {
        if (v276 >= v277)
        {
          goto LABEL_295;
        }

        v498 = v271;
        v317 = outlined init with copy of TetraOuterMessageType(v271 + v315, v316, type metadata accessor for TetraSessionState);
        if (*v316 != *v464)
        {
          goto LABEL_218;
        }

        v477 = v275;
        v318 = v468;
        v319 = v468[6];
        v320 = MEMORY[0x231891720](v317);
        v322 = v321;
        v323 = v318[6];
        v324 = MEMORY[0x231891720]();
        v326 = v324;
        v327 = v325;
        v328 = v322 >> 62;
        v329 = v325 >> 62;
        if (v322 >> 62 == 3)
        {
          v330 = 0;
          v331 = v320;
          if (!v320 && v322 == 0xC000000000000000 && v325 >> 62 == 3)
          {
            v330 = 0;
            if (!v324 && v325 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v332 = 0;
              v333 = 0xC000000000000000;
              goto LABEL_142;
            }
          }
        }

        else
        {
          v331 = v320;
          if (v328 > 1)
          {
            if (v328 == 2)
            {
              v335 = *(v320 + 16);
              v334 = *(v320 + 24);
              v336 = __OFSUB__(v334, v335);
              v330 = v334 - v335;
              if (v336)
              {
                goto LABEL_309;
              }
            }

            else
            {
              v330 = 0;
            }
          }

          else if (v328)
          {
            LODWORD(v330) = HIDWORD(v320) - v320;
            if (__OFSUB__(HIDWORD(v320), v320))
            {
              goto LABEL_308;
            }

            v330 = v330;
          }

          else
          {
            v330 = BYTE6(v322);
          }
        }

        if (v329 > 1)
        {
          if (v329 != 2)
          {
            if (v330)
            {
LABEL_140:
              outlined consume of Data._Representation(v324, v325);
              outlined consume of Data._Representation(v331, v322);
              goto LABEL_217;
            }

LABEL_141:
            outlined consume of Data._Representation(v324, v325);
            v332 = v331;
            v333 = v322;
LABEL_142:
            outlined consume of Data._Representation(v332, v333);
            v316 = v462;
            goto LABEL_159;
          }

          v339 = *(v324 + 16);
          v338 = *(v324 + 24);
          v336 = __OFSUB__(v338, v339);
          v337 = v338 - v339;
          if (v336)
          {
            goto LABEL_306;
          }
        }

        else if (v329)
        {
          LODWORD(v337) = HIDWORD(v324) - v324;
          if (__OFSUB__(HIDWORD(v324), v324))
          {
            goto LABEL_305;
          }

          v337 = v337;
        }

        else
        {
          v337 = BYTE6(v325);
        }

        if (v330 != v337)
        {
          goto LABEL_140;
        }

        if (v330 < 1)
        {
          goto LABEL_141;
        }

        if (v328 > 1)
        {
          if (v328 != 2)
          {
            *(&v504 + 6) = 0;
            *&v504 = 0;
            outlined copy of Data._Representation(v324, v325);
            v348 = v481;
            closure #1 in static Data.== infix(_:_:)(&v504, v326, v327, &v502);
            v481 = v348;
            outlined consume of Data._Representation(v326, v327);
            outlined consume of Data._Representation(v326, v327);
            v341 = v331;
            goto LABEL_155;
          }

          v467 = v331;
          v342 = *(v331 + 16);
          v459 = *(v331 + 24);
          outlined copy of Data._Representation(v324, v325);
          v343 = __DataStorage._bytes.getter();
          if (v343)
          {
            v344 = __DataStorage._offset.getter();
            if (__OFSUB__(v342, v344))
            {
              goto LABEL_318;
            }

            v343 += v342 - v344;
          }

          if (__OFSUB__(v459, v342))
          {
            goto LABEL_317;
          }
        }

        else
        {
          if (!v328)
          {
            *&v504 = v331;
            WORD4(v504) = v322;
            BYTE10(v504) = BYTE2(v322);
            BYTE11(v504) = BYTE3(v322);
            BYTE12(v504) = BYTE4(v322);
            BYTE13(v504) = BYTE5(v322);
            outlined copy of Data._Representation(v324, v325);
            v340 = v481;
            closure #1 in static Data.== infix(_:_:)(&v504, v326, v327, &v502);
            v481 = v340;
            outlined consume of Data._Representation(v326, v327);
            outlined consume of Data._Representation(v326, v327);
            v341 = v331;
LABEL_155:
            outlined consume of Data._Representation(v341, v322);
            v349 = v502;
            goto LABEL_158;
          }

          v467 = v331;
          if (v331 >> 32 < v331)
          {
            goto LABEL_316;
          }

          outlined copy of Data._Representation(v324, v325);
          v345 = __DataStorage._bytes.getter();
          if (v345)
          {
            v346 = v345;
            v347 = __DataStorage._offset.getter();
            if (__OFSUB__(v331, v347))
            {
              goto LABEL_319;
            }

            v343 = v331 - v347 + v346;
          }

          else
          {
            v343 = 0;
          }
        }

        MEMORY[0x231890D50]();
        v350 = v481;
        closure #1 in static Data.== infix(_:_:)(v343, v326, v327, &v504);
        v481 = v350;
        outlined consume of Data._Representation(v326, v327);
        outlined consume of Data._Representation(v326, v327);
        outlined consume of Data._Representation(v467, v322);
        v349 = v504;
LABEL_158:
        v316 = v462;
        v275 = v477;
        if (!v349)
        {
          goto LABEL_218;
        }

LABEL_159:
        v351 = v468[8];
        v352 = *(v316 + v351);
        v353 = *(v316 + v351 + 8);
        v354 = (v464 + v351);
        v356 = *v354;
        v355 = v354[1];
        v357 = v353 >> 62;
        v358 = v355 >> 62;
        if (v353 >> 62 == 3)
        {
          v359 = 0;
          if (!v352 && v353 == 0xC000000000000000 && v355 >> 62 == 3)
          {
            v359 = 0;
            if (!v356 && v355 == 0xC000000000000000)
            {
              goto LABEL_190;
            }
          }
        }

        else if (v357 > 1)
        {
          if (v357 == 2)
          {
            v361 = *(v352 + 16);
            v360 = *(v352 + 24);
            v336 = __OFSUB__(v360, v361);
            v359 = v360 - v361;
            if (v336)
            {
              goto LABEL_314;
            }
          }

          else
          {
            v359 = 0;
          }
        }

        else if (v357)
        {
          LODWORD(v359) = HIDWORD(v352) - v352;
          if (__OFSUB__(HIDWORD(v352), v352))
          {
            goto LABEL_315;
          }

          v359 = v359;
        }

        else
        {
          v359 = BYTE6(v353);
        }

        if (v358 > 1)
        {
          if (v358 != 2)
          {
            v316 = v462;
            v275 = v477;
            if (v359)
            {
              goto LABEL_218;
            }

            goto LABEL_210;
          }

          v364 = *(v356 + 16);
          v363 = *(v356 + 24);
          v336 = __OFSUB__(v363, v364);
          v362 = v363 - v364;
          if (v336)
          {
            goto LABEL_312;
          }
        }

        else if (v358)
        {
          LODWORD(v362) = HIDWORD(v356) - v356;
          if (__OFSUB__(HIDWORD(v356), v356))
          {
            goto LABEL_311;
          }

          v362 = v362;
        }

        else
        {
          v362 = BYTE6(v355);
        }

        if (v359 != v362)
        {
          goto LABEL_217;
        }

        if (v359 < 1)
        {
LABEL_190:
          v316 = v462;
          goto LABEL_210;
        }

        if (v357 > 1)
        {
          if (v357 != 2)
          {
            *(&v504 + 6) = 0;
            *&v504 = 0;
            outlined copy of Data._Representation(v356, v355);
            goto LABEL_202;
          }

          v365 = *(v352 + 16);
          v467 = *(v352 + 24);
          outlined copy of Data._Representation(v356, v355);
          v366 = __DataStorage._bytes.getter();
          if (v366)
          {
            v367 = v366;
            v368 = __DataStorage._offset.getter();
            if (__OFSUB__(v365, v368))
            {
              goto LABEL_322;
            }

            v369 = v365 - v368 + v367;
          }

          else
          {
            v369 = 0;
          }

          if (__OFSUB__(v467, v365))
          {
            goto LABEL_321;
          }

          MEMORY[0x231890D50]();
          v377 = v369;
        }

        else
        {
          if (!v357)
          {
            *&v504 = v352;
            WORD4(v504) = v353;
            BYTE10(v504) = BYTE2(v353);
            BYTE11(v504) = BYTE3(v353);
            BYTE12(v504) = BYTE4(v353);
            BYTE13(v504) = BYTE5(v353);
            outlined copy of Data._Representation(v356, v355);
LABEL_202:
            v375 = v481;
            closure #1 in static Data.== infix(_:_:)(&v504, v356, v355, &v502);
            v481 = v375;
            outlined consume of Data._Representation(v356, v355);
            v376 = v502;
            goto LABEL_209;
          }

          v370 = v352;
          if (v352 >> 32 < v352)
          {
            goto LABEL_320;
          }

          outlined copy of Data._Representation(v356, v355);
          v371 = __DataStorage._bytes.getter();
          if (v371)
          {
            v372 = v371;
            v373 = __DataStorage._offset.getter();
            if (__OFSUB__(v370, v373))
            {
              goto LABEL_323;
            }

            v374 = v370 - v373 + v372;
          }

          else
          {
            v374 = 0;
          }

          MEMORY[0x231890D50]();
          v377 = v374;
        }

        v378 = v481;
        closure #1 in static Data.== infix(_:_:)(v377, v356, v355, &v504);
        v481 = v378;
        outlined consume of Data._Representation(v356, v355);
        v376 = v504;
LABEL_209:
        v316 = v462;
        v275 = v477;
        if (!v376)
        {
          goto LABEL_218;
        }

LABEL_210:
        v379 = v468[7];
        v380 = *(v454 + 48);
        v381 = v457;
        outlined init with copy of TetraSessionStates?(v316 + v379, v457, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        outlined init with copy of TetraSessionStates?(v464 + v379, v381 + v380, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v382 = *v469;
        if ((*v469)(v381, 1, v479) == 1)
        {
          if (v382(v457 + v380, 1, v479) == 1)
          {
            goto LABEL_263;
          }

          goto LABEL_215;
        }

        v383 = v457;
        outlined init with copy of TetraSessionStates?(v457, v455, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        if (v382(v383 + v380, 1, v479) == 1)
        {
          (*v466)(v455, v479);
LABEL_215:
          v384 = v457;
          v385 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd;
          v386 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR;
          goto LABEL_216;
        }

        v390 = (*v465)(v453, v457 + v380, v479);
        v391 = MEMORY[0x231891580](v390);
        v393 = v392;
        v394 = MEMORY[0x231891580]();
        v396 = v394;
        v397 = v395;
        v398 = v393 >> 62;
        v399 = v395 >> 62;
        if (v393 >> 62 == 3)
        {
          v400 = 0;
          if (!v391 && v393 == 0xC000000000000000 && v395 >> 62 == 3)
          {
            v400 = 0;
            if (!v394 && v395 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v401 = 0;
              v402 = 0xC000000000000000;
              goto LABEL_262;
            }
          }
        }

        else if (v398 == 2)
        {
          v404 = *(v391 + 16);
          v403 = *(v391 + 24);
          v336 = __OFSUB__(v403, v404);
          v400 = v403 - v404;
          if (v336)
          {
            goto LABEL_326;
          }
        }

        else if (v398 == 1)
        {
          LODWORD(v400) = HIDWORD(v391) - v391;
          if (__OFSUB__(HIDWORD(v391), v391))
          {
            goto LABEL_327;
          }

          v400 = v400;
        }

        else
        {
          v400 = BYTE6(v393);
        }

        if (v399 > 1)
        {
          if (v399 != 2)
          {
            if (!v400)
            {
LABEL_261:
              outlined consume of Data._Representation(v394, v395);
              v401 = v391;
              v402 = v393;
LABEL_262:
              outlined consume of Data._Representation(v401, v402);
              v413 = *v466;
              v414 = v479;
              (*v466)(v453, v479);
              v413(v455, v414);
LABEL_263:
              outlined destroy of TetraSessionStates?(v457, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
              v316 = v462;
              outlined destroy of TetraOuterMessageType(v462, type metadata accessor for TetraSessionState);
              v275 = v477;
LABEL_264:
              v271 = v498;
              goto LABEL_229;
            }

LABEL_260:
            outlined consume of Data._Representation(v394, v395);
            outlined consume of Data._Representation(v391, v393);
            v411 = *v466;
            v412 = v479;
            (*v466)(v453, v479);
            v411(v455, v412);
            v384 = v457;
            v385 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd;
            v386 = _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR;
LABEL_216:
            outlined destroy of TetraSessionStates?(v384, v385, v386);
LABEL_217:
            v316 = v462;
            v275 = v477;
LABEL_218:
            outlined destroy of TetraOuterMessageType(v316, type metadata accessor for TetraSessionState);
            goto LABEL_219;
          }

          v407 = *(v394 + 16);
          v406 = *(v394 + 24);
          v336 = __OFSUB__(v406, v407);
          v405 = v406 - v407;
          if (v336)
          {
            goto LABEL_324;
          }
        }

        else if (v399)
        {
          LODWORD(v405) = HIDWORD(v394) - v394;
          if (__OFSUB__(HIDWORD(v394), v394))
          {
            goto LABEL_325;
          }

          v405 = v405;
        }

        else
        {
          v405 = BYTE6(v395);
        }

        if (v400 != v405)
        {
          goto LABEL_260;
        }

        if (v400 < 1)
        {
          goto LABEL_261;
        }

        outlined copy of Data._Representation(v394, v395);
        v408 = v481;
        LODWORD(v467) = specialized Data.withUnsafeBytes<A>(_:)(v391, v393, v396, v397);
        v481 = v408;
        outlined consume of Data._Representation(v396, v397);
        outlined consume of Data._Representation(v391, v393);
        v409 = *v466;
        v410 = v479;
        (*v466)(v453, v479);
        v409(v455, v410);
        outlined destroy of TetraSessionStates?(v457, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v316 = v462;
        outlined destroy of TetraOuterMessageType(v462, type metadata accessor for TetraSessionState);
        v275 = v477;
        if (v467)
        {
          goto LABEL_264;
        }

LABEL_219:
        if (v276 == v275)
        {
          v271 = v498;
        }

        else
        {
          if (v275 < 0)
          {
            goto LABEL_298;
          }

          v387 = *v278;
          if (v275 >= *v278)
          {
            goto LABEL_299;
          }

          v388 = v498;
          v389 = v275 * v495;
          outlined init with copy of TetraOuterMessageType(v498 + v482 + v275 * v495, v460, type metadata accessor for TetraSessionState);
          if (v276 >= v387)
          {
            goto LABEL_300;
          }

          outlined init with copy of TetraOuterMessageType(v388 + v315, v461, type metadata accessor for TetraSessionState);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v498 = specialized _ArrayBuffer._consumeAndCreateNew()(v498);
          }

          v271 = v498;
          outlined assign with take of TetraSessionState(v461, v498 + v482 + v389, type metadata accessor for TetraSessionState);
          if (v276 >= v271[2])
          {
            goto LABEL_301;
          }

          outlined assign with take of TetraSessionState(v460, v271 + v315, type metadata accessor for TetraSessionState);
          *(v489 + v476) = v271;
          v316 = v462;
        }

        ++v275;
LABEL_229:
        ++v276;
        v278 = v271 + 2;
        v277 = v271[2];
        v315 += v495;
        if (v276 == v277)
        {
          goto LABEL_84;
        }
      }
    }

    __break(1u);
    goto LABEL_290;
  }

  v220 = *(v202 + 16);
  if (!v220)
  {
LABEL_272:

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v419 = swift_allocError();
    v420 = 4;
    goto LABEL_273;
  }

  if (v220 == 1)
  {
    goto LABEL_61;
  }

LABEL_271:

  lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
  v419 = swift_allocError();
  v420 = 5;
LABEL_273:
  *v418 = v420;
  swift_willThrow();
  v123 = v419;
  outlined consume of Data?(v488, v490);
  outlined destroy of TetraOuterMessageType(v219, type metadata accessor for TetraOuterMessageType);
  outlined destroy of TetraSessionStates?(v489, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
LABEL_274:
  v152 = type metadata accessor for TetraRatchetOuterMessage;
  v151 = v492;
LABEL_275:
  outlined destroy of TetraOuterMessageType(v151, v152);
LABEL_276:
  v253 = v497;
LABEL_277:
  *&v504 = v123;
  v421 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && v503 == 3)
  {
    v422 = v123;
    v423 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v424 = MEMORY[0x231891960](0xD00000000000001BLL, 0x800000022B494BB0);
    v425 = [v423 initWithDomain:v424 code:5 userInfo:0];

    static os_log_type_t.debug.getter();
    v426 = MessageProtectionLog();
    if (v426)
    {
      v427 = v426;
      os_log(_:dso:log:_:_:)();

      v428 = conversationLock;
      OS_dispatch_semaphore.signal()();

      v429 = v425;
      v116(0, 0xF000000000000000, 0, v425, 0, 0);

      v430 = v504;
      goto LABEL_286;
    }

LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  v431 = v116;

  v432 = v123;
  v433 = v123;
  v434 = static os_log_type_t.error.getter();
  v435 = MessageProtectionLog();
  if (!v435)
  {
    __break(1u);
    goto LABEL_293;
  }

  v436 = v435;
  if (os_log_type_enabled(v435, v434))
  {
    v437 = swift_slowAlloc();
    v438 = swift_slowAlloc();
    *&v504 = v438;
    *v437 = 67109634;
    *(v437 + 4) = 1;
    *(v437 + 8) = 2080;
    *(v437 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v491, v253, &v504);
    *(v437 + 18) = 2080;
    swift_getErrorValue();
    v439 = Error.localizedDescription.getter();
    v441 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v439, v440, &v504);

    *(v437 + 20) = v441;
    _os_log_impl(&dword_22B404000, v436, v434, "Tetra (Tetra Ratchet = %{BOOL}d) failed decrypting %s with error: %s", v437, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v438, -1, -1);
    MEMORY[0x231892DF0](v437, -1, -1);
  }

  static os_log_type_t.debug.getter();
  v442 = MessageProtectionLog();
  if (!v442)
  {
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  v443 = v442;
  os_log(_:dso:log:_:_:)();

  v444 = conversationLock;
  OS_dispatch_semaphore.signal()();

  v445 = v432;
  v431(0, 0xF000000000000000, 0, v432, 0, 0);

  v430 = v432;
LABEL_286:

LABEL_287:

  v446 = *MEMORY[0x277D85DE8];
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    outlined copy of Data._Representation(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = outlined init with take of Any(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TetraSessionState();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      outlined init with copy of TetraOuterMessageType(a3 + v16 + v17 * v14, v13, type metadata accessor for TetraSessionState);
      v18 = a1(v13);
      if (v3)
      {
        outlined destroy of TetraOuterMessageType(v13, type metadata accessor for TetraSessionState);

        goto LABEL_15;
      }

      if (v18)
      {
        outlined init with take of TetraRatchetOuterMessage(v13, v25, type metadata accessor for TetraSessionState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = outlined init with take of TetraRatchetOuterMessage(v25, v15 + v16 + v21 * v17, type metadata accessor for TetraSessionState);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = outlined destroy of TetraOuterMessageType(v13, type metadata accessor for TetraSessionState);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x231891D10](v17))
  {
    v9 = 0;
    v20 = v5 & 0xFFFFFFFFFFFFFF8;
    v21 = v5 & 0xC000000000000001;
    v19 = v5;
    while (1)
    {
      if (v21)
      {
        v10 = MEMORY[0x231891C80](v9, v5);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          return v3;
        }

        goto LABEL_9;
      }

      if (v9 >= *(v20 + 16))
      {
        break;
      }

      v10 = *(v5 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v22 = v10;
      v3 = a2;
      v12 = a1(&v22);
      if (v4)
      {
        goto LABEL_15;
      }

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = i;
        v14 = a1;
        v15 = a2;
        v16 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v15;
        a1 = v14;
        i = v13;
        v5 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = &v23;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v9;
      if (v11 == i)
      {
        v3 = v23;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_23:

  return v3;
}

void thunk for @callee_unowned @convention(block) (@unowned NSData?, @unowned NSDictionary?, @unowned NSError?, @unowned (@escaping @callee_unowned @convention(block) (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned ObjCBool))?) -> ()(uint64_t a1, unint64_t a2, objc_class *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a3)
  {
LABEL_5:
    v11 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  if (a4)
  {
    a4 = _convertErrorToNSError(_:)();
  }

  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
    v13[3] = &block_descriptor_20;
    a5 = _Block_copy(v13);
  }

  (*(a7 + 16))(a7, isa, v11, a4, a5);
  _Block_release(a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

id TetraAPI.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraAPI.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraAPI();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TetraAPI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraAPI();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Data.append<A>(contentsOf:)(void *a1)
{
  v2 = v1;
  v40[5] = *MEMORY[0x277D85DE8];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v38, v40);
    v5 = __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    MEMORY[0x28223BE20](v5);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_51;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  outlined destroy of TetraSessionStates?(v38, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v6 = NSData.startIndex.getter();
  v7 = NSData.endIndex.getter();
  v8 = NSData.startIndex.getter();
  v9 = NSData.endIndex.getter();
  if (v6 < v8 || v9 < v6)
  {
    goto LABEL_54;
  }

  v10 = NSData.startIndex.getter();
  v11 = NSData.endIndex.getter();
  if (v7 < v10 || v11 < v7)
  {
    goto LABEL_55;
  }

  v12 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = *v2;
  v14 = v2[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v14);
      v17 = BYTE6(v14);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v15 != 2)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v18 = v13 + 16;
  v13 = *(v13 + 16);
  v16 = *(v18 + 8);
  v17 = v16 - v13;
  if (__OFSUB__(v16, v13))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_63;
    }

    v17 = HIDWORD(v13) - v13;
    v16 = v13 >> 32;
  }

LABEL_18:
  if (__OFADD__(v16, v12))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v16 + v12 < v16)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v16 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v19 = Data._Representation.resetBytes(in:)();
  MEMORY[0x28223BE20](v19);
  v22 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.append<A>(contentsOf:));
  if (v21 != v12)
  {
LABEL_34:
    v30 = 0;
    v31 = *v2;
    v32 = v2[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v30 = *(v31 + 16);
      }
    }

    else if (v33)
    {
      v30 = v31;
    }

    v34 = __OFADD__(v30, v17);
    v35 = v30 + v17;
    if (!v34)
    {
      if (!__OFADD__(v35, v21))
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v36 = *(v31 + 24);
          }

          else
          {
            v36 = 0;
          }
        }

        else if (v33)
        {
          v36 = v31 >> 32;
        }

        else
        {
          v36 = BYTE6(v32);
        }

        if (v36 >= v35 + v21)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v23 = v20;
  memset(v40, 0, 15);
  if (v20 == NSData.endIndex.getter())
  {
    goto LABEL_50;
  }

  v24 = NSData.subscript.getter();
  v17 = NSData.startIndex.getter();
  v25 = NSData.endIndex.getter();
  if (v23 < v17 || v23 >= v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v26) = 0;
  v27 = v23 + 1;
  while (1)
  {
    *(v40 + v26) = v24;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v26 == 14)
    {
      *&v38[0] = v40[0];
      *(v38 + 6) = *(v40 + 6);
      Data._Representation.append(contentsOf:)();
      if (v27 == NSData.endIndex.getter())
      {
        goto LABEL_50;
      }

      LOBYTE(v26) = 0;
      goto LABEL_31;
    }

    if (v27 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_31:
    v24 = NSData.subscript.getter();
    v17 = NSData.startIndex.getter();
    v28 = NSData.endIndex.getter();
    if (v27 >= v17 && v27++ < v28)
    {
      continue;
    }

    goto LABEL_33;
  }

  *&v38[0] = v40[0];
  *(v38 + 6) = *(v40 + 6);
  Data._Representation.append(contentsOf:)();
LABEL_50:

LABEL_51:
  v37 = *MEMORY[0x277D85DE8];
}

void specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, _BYTE *a4)
{
  v6 = v5;
  v47 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v11 = *(*(v47 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v47);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = *(v4 + *(type metadata accessor for TetraRatchetState(0) + 20));
  v48[2] = a1;

  v18 = v17;
  v19 = v6;
  v20 = specialized _ArrayProtocol.filter(_:)(partial apply for specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:), v48, v18);
  v21 = v20;
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:

    specialized TetraRatchetState.ratchetedOpen<A>(message:sessionDST:didRatchet:)(a1, a2, a3, a4, type metadata accessor for TetraNoRatchetOuterMessage, type metadata accessor for TetraNoRatchetOuterMessage, type metadata accessor for TetraNoRatchetOuterMessage);
    return;
  }

  if (v20 >= 0)
  {
    v20 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x231891D10](v20))
  {
    goto LABEL_19;
  }

LABEL_3:
  v45 = v16;
  v46 = v14;
  if ((v21 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231891C80](0, v21);
    goto LABEL_6;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);

LABEL_6:

    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    v26 = (a1 + *(v47 + 44));
    v28 = *v26;
    v27 = v26[1];
    swift_beginAccess();
    TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(v23, v24, v25, v28, v27, 0);
    if (!v19)
    {
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v50 = v19;
    v29 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast() || v51 != 3)
    {
      goto LABEL_15;
    }

    v30 = static os_log_type_t.error.getter();
    v31 = MessageProtectionLog();
    if (v31)
    {
      v32 = v31;

      v33 = v45;
      outlined init with copy of TetraOuterMessageType(a1, v45, type metadata accessor for TetraNoRatchetOuterMessage);
      v34 = v46;
      outlined init with copy of TetraOuterMessageType(a1, v46, type metadata accessor for TetraNoRatchetOuterMessage);
      if (os_log_type_enabled(v32, v30))
      {
        v35 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v35 = 136315394;
        v36 = v33 + *(v47 + 28);
        v37 = P256.KeyAgreement.PublicKey.compressedRepresentation.getter();
        v39 = v38;
        v40 = Data.base64EncodedString(options:)(0);
        LODWORD(v47) = v30;
        outlined consume of Data._Representation(v37, v39);
        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraNoRatchetOuterMessage);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40._countAndFlagsBits, v40._object, &v49);

        *(v35 + 4) = v41;
        *(v35 + 12) = 1024;
        LODWORD(v41) = *(v34 + 24);
        outlined destroy of TetraOuterMessageType(v34, type metadata accessor for TetraNoRatchetOuterMessage);
        *(v35 + 14) = v41;
        _os_log_impl(&dword_22B404000, v32, v47, "Out of sync ratchet upon unsealing receiving chain. ECDH: %s Index: %u", v35, 0x12u);
        v42 = v44;
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x231892DF0](v42, -1, -1);
        MEMORY[0x231892DF0](v35, -1, -1);
      }

      else
      {
        outlined destroy of TetraOuterMessageType(v34, type metadata accessor for TetraNoRatchetOuterMessage);

        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraNoRatchetOuterMessage);
      }

      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v43 = 3;
      swift_willThrow();
LABEL_15:

      return;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

{
  v6 = v5;
  v47 = type metadata accessor for TetraRatchetOuterMessage(0);
  v11 = *(*(v47 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v47);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = *(v4 + *(type metadata accessor for TetraRatchetState(0) + 20));
  v48[2] = a1;

  v18 = v17;
  v19 = v6;
  v20 = specialized _ArrayProtocol.filter(_:)(partial apply for specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:), v48, v18);
  v21 = v20;
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:

    specialized TetraRatchetState.ratchetedOpen<A>(message:sessionDST:didRatchet:)(a1, a2, a3, a4, type metadata accessor for TetraRatchetOuterMessage, type metadata accessor for TetraRatchetOuterMessage, type metadata accessor for TetraRatchetOuterMessage);
    return;
  }

  if (v20 >= 0)
  {
    v20 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x231891D10](v20))
  {
    goto LABEL_19;
  }

LABEL_3:
  v45 = v16;
  v46 = v14;
  if ((v21 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231891C80](0, v21);
    goto LABEL_6;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);

LABEL_6:

    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    v26 = (a1 + *(v47 + 44));
    v28 = *v26;
    v27 = v26[1];
    swift_beginAccess();
    TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(v23, v24, v25, v28, v27, 0);
    if (!v19)
    {
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v50 = v19;
    v29 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast() || v51 != 3)
    {
      goto LABEL_15;
    }

    v30 = static os_log_type_t.error.getter();
    v31 = MessageProtectionLog();
    if (v31)
    {
      v32 = v31;

      v33 = v45;
      outlined init with copy of TetraOuterMessageType(a1, v45, type metadata accessor for TetraRatchetOuterMessage);
      v34 = v46;
      outlined init with copy of TetraOuterMessageType(a1, v46, type metadata accessor for TetraRatchetOuterMessage);
      if (os_log_type_enabled(v32, v30))
      {
        v35 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v35 = 136315394;
        v36 = v33 + *(v47 + 28);
        v37 = P256.KeyAgreement.PublicKey.compressedRepresentation.getter();
        v39 = v38;
        v40 = Data.base64EncodedString(options:)(0);
        LODWORD(v47) = v30;
        outlined consume of Data._Representation(v37, v39);
        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraRatchetOuterMessage);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40._countAndFlagsBits, v40._object, &v49);

        *(v35 + 4) = v41;
        *(v35 + 12) = 1024;
        LODWORD(v41) = *(v34 + 24);
        outlined destroy of TetraOuterMessageType(v34, type metadata accessor for TetraRatchetOuterMessage);
        *(v35 + 14) = v41;
        _os_log_impl(&dword_22B404000, v32, v47, "Out of sync ratchet upon unsealing receiving chain. ECDH: %s Index: %u", v35, 0x12u);
        v42 = v44;
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x231892DF0](v42, -1, -1);
        MEMORY[0x231892DF0](v35, -1, -1);
      }

      else
      {
        outlined destroy of TetraOuterMessageType(v34, type metadata accessor for TetraRatchetOuterMessage);

        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraRatchetOuterMessage);
      }

      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v43 = 3;
      swift_willThrow();
LABEL_15:

      return;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void specialized TetraRatchetState.ratchetedOpen<A>(message:sessionDST:didRatchet:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, _BYTE *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v212 = a7;
  v211 = a6;
  v217 = a4;
  v241 = a2;
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v215 = v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v214 = v202 - v14;
  MEMORY[0x28223BE20](v13);
  v213 = v202 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v220 = v202 - v18;
  v19 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v219 = v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TetraOutgoingKeyContent(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v218 = v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v227 = v202 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v216 = v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v225 = v202 - v31;
  v32 = type metadata accessor for Kyber768.PublicKey();
  v237 = *(v32 - 8);
  v238 = v32;
  v33 = *(v237 + 64);
  MEMORY[0x28223BE20](v32);
  v224 = v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v226 = v202 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v223 = (v202 - v40);
  MEMORY[0x28223BE20](v39);
  v233 = (v202 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v210 = v202 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v230 = v202 - v47;
  MEMORY[0x28223BE20](v46);
  v229 = (v202 - v48);
  v49 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v236 = v202 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v228 = *(v235 - 8);
  v52 = v228[8];
  MEMORY[0x28223BE20](v235);
  v234 = v202 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v222 = v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v231 = v202 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = v202 - v61;
  v239 = v60;
  v240 = a1;
  v63 = *(v60 + 48);
  v64 = a1 + *(v9 + 28);
  v232 = v9;
  v65 = (a1 + *(v9 + 36));
  v67 = *v65;
  v66 = v65[1];
  v68 = type metadata accessor for TetraRatchetState(0);
  v69 = *(v68 + 24);
  v221 = a3;
  v70 = (v241)(1);
  v72 = v71;
  v73 = v242;
  static TetraRatchetState.deriveRootAndChainKeyAsReceiver(rootKey:theirPublicKey:encap:ourReceivingKeys:conversationDST:)(v62, &v62[v63], v243, v64, v67, v66, v243 + v69, v70, v71);
  v242 = v73;
  if (v73)
  {
    outlined consume of Data._Representation(v70, v72);
    return;
  }

  v204 = v69;
  v206 = v68;
  outlined consume of Data._Representation(v70, v72);
  v74 = v228;
  v75 = v228[2];
  v205 = v64;
  v75(v234, v64, v235);
  v76 = v231;
  outlined init with copy of TetraSessionStates?(v62, v231, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  TetraIncomingSymmetricRatchet.init(symmetricRatchetHead:)(v76 + *(v239 + 48), v236);
  v77 = type metadata accessor for SymmetricKey();
  v78 = *(v77 - 8);
  v208 = v78[1];
  v208(v76, v77);
  v209 = v232[8];
  v79 = v229;
  outlined init with copy of TetraSessionStates?(v240 + v209, v229, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v80 = type metadata accessor for ReceivingKeyTetraRatchet(0);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v83 = swift_allocObject();
  v84 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey;
  (*(v237 + 56))(v83 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey, 1, 1, v238);
  (v74[4])(v83 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v234, v235);
  v202[2] = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet;
  outlined init with take of TetraRatchetOuterMessage(v236, v83 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
  swift_beginAccess();
  outlined assign with take of P256.KeyAgreement.PublicKey?(v79, v83 + v84, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  swift_endAccess();
  v85 = v243;
  outlined destroy of TetraSessionStates?(v243, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v207 = v62;
  outlined init with copy of TetraSessionStates?(v62, v76, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v86 = *(v239 + 48);
  v87 = v78[4];
  v234 = (v78 + 4);
  v229 = v87;
  (v87)(v85, v76, v77);
  v88 = v78[7];
  v235 = (v78 + 7);
  v228 = v88;
  (v88)(v85, 0, 1, v77);
  v203 = v77;
  v202[3] = v78 + 1;
  v208(v76 + v86, v77);
  v89 = v230;
  outlined init with copy of TetraSessionStates?(v240 + v209, v230, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v91 = v237;
  v90 = v238;
  v92 = *(v237 + 48);
  v202[1] = v237 + 48;
  v202[0] = v92;
  v93 = v85;
  if (v92(v89, 1, v238) == 1)
  {
    outlined destroy of TetraSessionStates?(v89, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    v94 = type metadata accessor for KEM.EncapsulationResult();
    v95 = v233;
    (*(*(v94 - 8) + 56))(v233, 1, 1, v94);
  }

  else
  {
    v96 = v90;
    v97 = v224;
    (*(v91 + 32))(v224, v89, v96);
    v98 = v223;
    v99 = v242;
    Kyber768.PublicKey.encapsulate()();
    v95 = v233;
    if (v99)
    {

      (*(v91 + 8))(v97, v96);
LABEL_15:
      outlined destroy of TetraSessionStates?(v207, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
      return;
    }

    v242 = 0;
    (*(v91 + 8))(v97, v96);
    v100 = type metadata accessor for KEM.EncapsulationResult();
    (*(*(v100 - 8) + 56))(v98, 0, 1, v100);
    outlined init with take of KEM.EncapsulationResult?(v98, v95);
  }

  v236 = v83;
  v101 = v206[8];
  v224 = v206[7];
  v102 = *&v224[v93];
  v230 = v101;
  v103 = v93 + v101;
  v104 = v225;
  outlined init with copy of TetraSessionStates?(v103, v225, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v105 = type metadata accessor for Date();
  v106 = *(v105 - 8);
  isa = 0;
  if ((v106[6])(v104, 1, v105) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v106[1](v104, v105);
  }

  v108 = v102 > 0x27;
  v109 = [objc_opt_self() shouldRekeyIfLastRekeyFrom_];

  v110 = v108 | v109;
  v111 = v226;
  outlined init with copy of TetraSessionStates?(v95, v226, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v112 = type metadata accessor for KEM.EncapsulationResult();
  v113 = *(v112 - 8);
  v114 = (*(v113 + 48))(v111, 1, v112);
  v223 = v106;
  if (v114 == 1)
  {
    outlined destroy of TetraSessionStates?(v111, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    v115 = 0;
    v116 = 0xF000000000000000;
  }

  else
  {
    v115 = KEM.EncapsulationResult.encapsulated.getter();
    v116 = v117;
    (*(v113 + 8))(v111, v112);
  }

  v119 = v240;
  v118 = v241;
  v120 = v227;
  v121 = v242;
  TetraOutgoingKeyContent.init(includesKEMKey:encap:)(v110 & 1, v115, v116, v227);
  if (v121)
  {

    outlined destroy of TetraSessionStates?(v233, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    goto LABEL_15;
  }

  LODWORD(v241) = v110;
  v122 = v239;
  v123 = *(v239 + 48);
  v124 = v118(0);
  v126 = v125;
  v127 = v222;
  static TetraRatchetState.deriveRootAndChainKeyAsSender(rootKey:theirECDHPublicKey:theirKyber768Key:encapResult:ourOutgoingKeys:conversationDST:)(v222, v222 + v123, v207, v205, v119 + v209, v233, v120, v124, v125);
  v242 = 0;
  outlined consume of Data._Representation(v124, v126);
  v128 = v243;
  outlined destroy of TetraSessionStates?(v243, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v129 = v231;
  outlined init with copy of TetraSessionStates?(v127, v231, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v130 = *(v122 + 48);
  v131 = v203;
  (v229)(v128, v129, v203);
  (v228)(v128, 0, 1, v131);
  v208(v129 + v130, v131);
  if (v241)
  {
    *&v224[v128] = 0;
    v132 = v216;
    Date.init()();
    (v223[7])(v132, 0, 1, v105);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v132, v128 + v230, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  outlined init with copy of TetraSessionStates?(v127, v129, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v133 = v220;
  (v229)(v220, v129 + *(v122 + 48), v131);
  (v228)(v133, 0, 1, v131);
  v134 = v218;
  outlined init with copy of TetraOuterMessageType(v120, v218, type metadata accessor for TetraOutgoingKeyContent);
  v135 = v219;
  TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)(v133, v134, v219);
  v208(v129, v131);
  outlined assign with take of TetraSessionState(v135, v128 + v204, type metadata accessor for TetraOutgoingSymmetricRatchet);
  v136 = *(v240 + 8);
  v137 = *(v240 + 16);
  v138 = *(v240 + 24);
  v139 = v128;
  v140 = (v240 + v232[11]);
  v141 = *v140;
  v142 = v140[1];
  swift_beginAccess();
  v143 = v242;
  TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(v136, v137, v138, v141, v142, 0);
  if (!v143)
  {
    v242 = 0;
    swift_endAccess();
    v165 = v206[5];

    MEMORY[0x231891A40](v166);
    if (*((*(v139 + v165) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v139 + v165) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v241 = *((*(v139 + v165) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v167 = *(v139 + v165);
    v168 = v167 >> 62;
    v169 = v217;
    if (v167 >> 62)
    {
      if (v167 < 0)
      {
        v201 = v167;
      }

      else
      {
        v201 = v167 & 0xFFFFFFFFFFFFFF8;
      }

      v240 = v167 >> 62;
      if (MEMORY[0x231891D10](v201) <= 7)
      {
        goto LABEL_47;
      }

      v170 = MEMORY[0x231891D10](v201);
      v168 = v240;
    }

    else
    {
      v170 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v170 <= 7)
      {
LABEL_47:

        outlined destroy of TetraSessionStates?(v222, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
        outlined destroy of TetraOuterMessageType(v227, type metadata accessor for TetraOutgoingKeyContent);
        outlined destroy of TetraSessionStates?(v233, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
        outlined destroy of TetraSessionStates?(v207, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
        *v169 = 1;
        return;
      }
    }

    v240 = v168;
    v241 = v170 - 7;
    if (__OFSUB__(v170, 7))
    {
      __break(1u);
    }

    else
    {
      v171 = static os_log_type_t.info.getter();
      v172 = MessageProtectionLog();
      if (!v172)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v173 = v172;
      if (os_log_type_enabled(v172, v171))
      {
        v174 = swift_slowAlloc();
        *v174 = 134217984;
        *(v174 + 4) = v241;
        _os_log_impl(&dword_22B404000, v173, v171, "Removing first %ld chains.", v174, 0xCu);
        MEMORY[0x231892DF0](v174, -1, -1);
      }

      v169 = v217;
      v175 = v241;
      if (!v241)
      {
        goto LABEL_47;
      }

      if ((v241 & 0x8000000000000000) == 0)
      {
        if (v240)
        {
          if (v167 < 0)
          {
            v178 = v167;
          }

          else
          {
            v178 = v167 & 0xFFFFFFFFFFFFFF8;
          }

          v176 = MEMORY[0x231891D10](v178);
        }

        else
        {
          v176 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v176 < 0 || v176 >= v175)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, v175, v243);
          goto LABEL_47;
        }

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_endAccess();
  v245 = v143;
  v144 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v145 = swift_dynamicCast();
  v146 = v233;
  v147 = v207;
  if ((v145 & 1) == 0)
  {

    outlined destroy of TetraSessionStates?(v222, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
    v177 = v227;
LABEL_55:
    outlined destroy of TetraOuterMessageType(v177, type metadata accessor for TetraOutgoingKeyContent);
    outlined destroy of TetraSessionStates?(v146, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    outlined destroy of TetraSessionStates?(v147, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);

    return;
  }

  v148 = v227;
  if (v246 != 3)
  {

LABEL_54:
    outlined destroy of TetraSessionStates?(v222, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
    v177 = v148;
    goto LABEL_55;
  }

  v149 = static os_log_type_t.error.getter();
  v150 = MessageProtectionLog();
  if (v150)
  {
    v151 = v150;

    v152 = v240;
    v153 = v213;
    v154 = v211;
    outlined init with copy of TetraOuterMessageType(v240, v213, v211);
    v155 = v214;
    outlined init with copy of TetraOuterMessageType(v152, v214, v154);
    v156 = v152;
    v157 = v215;
    outlined init with copy of TetraOuterMessageType(v156, v215, v154);
    v158 = os_log_type_enabled(v151, v149);
    v159 = v212;
    if (v158)
    {
      v160 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v244 = v243;
      *v160 = 136315650;
      v161 = v210;
      outlined init with copy of TetraSessionStates?(v153 + v232[8], v210, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
      v162 = v238;
      if ((v202[0])(v161, 1, v238) == 1)
      {
        outlined destroy of TetraSessionStates?(v161, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
        object = 0xEA00000000007965;
        countAndFlagsBits = 0x4B206D654B206F4ELL;
      }

      else
      {
        v179 = Kyber768.PublicKey.dataRepresentation.getter();
        v181 = v180;
        (*(v237 + 8))(v161, v162);
        v182 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v182._countAndFlagsBits;
        object = v182._object;
        v183 = v179;
        v153 = v213;
        v184 = v181;
        v155 = v214;
        outlined consume of Data._Representation(v183, v184);
      }

      outlined destroy of TetraOuterMessageType(v153, v159);
      v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v244);

      *(v160 + 4) = v185;
      *(v160 + 12) = 2080;
      v186 = (v155 + v232[9]);
      if (v186[1] >> 60 == 15)
      {
        v187 = 0xE800000000000000;
        v188 = 0x7061636E45206F4ELL;
      }

      else
      {
        v189 = *v186;
        v190 = Data.base64EncodedString(options:)(0);
        v188 = v190._countAndFlagsBits;
        v187 = v190._object;
      }

      outlined destroy of TetraOuterMessageType(v155, v159);
      v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v187, &v244);

      *(v160 + 14) = v191;
      *(v160 + 22) = 2080;
      v192 = v215;
      v193 = v215 + v232[7];
      v194 = P256.KeyAgreement.PublicKey.compressedRepresentation.getter();
      v196 = v195;
      v197 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v194, v196);
      outlined destroy of TetraOuterMessageType(v192, v159);
      v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197._countAndFlagsBits, v197._object, &v244);

      *(v160 + 24) = v198;
      _os_log_impl(&dword_22B404000, v151, v149, "Out of sync ratchet upon ratcheting. KEM Key: %s. Encap: %s ECDH: %s", v160, 0x20u);
      v199 = v243;
      swift_arrayDestroy();
      MEMORY[0x231892DF0](v199, -1, -1);
      MEMORY[0x231892DF0](v160, -1, -1);

      v148 = v227;
      v146 = v233;
      v147 = v207;
    }

    else
    {

      outlined destroy of TetraOuterMessageType(v157, v159);
      outlined destroy of TetraOuterMessageType(v155, v159);
      outlined destroy of TetraOuterMessageType(v153, v159);
      v148 = v227;
    }

    lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
    swift_allocError();
    *v200 = 3;
    swift_willThrow();

    goto LABEL_54;
  }

LABEL_65:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TetraSessionState();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Iterator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v12 = HIDWORD(a1) - a1;
LABEL_10:
  v15 = *v2;
  v16 = *(*v2 + 2);
  v17 = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v27 = v2;
    v28 = *(v15 + 2);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x277CC92E0]);
    dispatch thunk of IteratorProtocol.next()();
    if (v33)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v29 = *(v15 + 3);
      v30 = v29 >> 1;
      if ((v29 >> 1) >= v28 + 1)
      {
        break;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v28 + 1, 1, v15);
      v31 = v33;
      v30 = *(v15 + 3) >> 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v15 + 2) = v28;
      v2 = v27;
      if (v31)
      {
        goto LABEL_22;
      }
    }

    v31 = 0;
    do
    {
LABEL_30:
      if (v28 >= v30)
      {
        break;
      }

      v15[v28++ + 32] = v32[14];
      dispatch thunk of IteratorProtocol.next()();
      v31 = v33;
    }

    while ((v33 & 1) == 0);
    goto LABEL_27;
  }

  v18 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v15 + 3) >> 1, v20 < v17))
  {
    if (v16 <= v17)
    {
      v21 = v16 + v12;
    }

    else
    {
      v21 = v16;
    }

    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v15);
    v20 = *(v15 + 3) >> 1;
  }

  v22 = v20 - *(v15 + 2);
  v23 = Data._copyContents(initializing:)();
  result = outlined consume of Data._Representation(a1, a2);
  if (v23 < v12)
  {
    goto LABEL_24;
  }

  if (v23 < 1)
  {
    goto LABEL_21;
  }

  v24 = *(v15 + 2);
  v25 = __OFADD__(v24, v23);
  v26 = v24 + v23;
  if (!v25)
  {
    *(v15 + 2) = v26;
LABEL_21:
    if (v23 != v22)
    {
LABEL_22:
      result = (*(v6 + 8))(v10, v5);
      *v2 = v15;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x231890D50]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x231890D50]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x231891EC0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int16 a1)
{
  v3 = MEMORY[0x231891EB0](*(v1 + 40), a1, 2);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231891C20](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = type metadata accessor for SymmetricKey();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v40)
      {
        (*v19)(v41, v28, v42);
      }

      else
      {
        (*v38)(v41, v28, v42);
      }

      result = MEMORY[0x231891EC0](*(v12 + 40), v26);
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v41, v42);
      ++*(v12 + 16);
      v6 = v39;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v42 = type metadata accessor for SymmetricKey();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 2 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v40)
      {
        (*v19)(v41, v28, v42);
      }

      else
      {
        (*v38)(v41, v28, v42);
      }

      result = MEMORY[0x231891EB0](*(v12 + 40), v26, 2);
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 2 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v41, v42);
      ++*(v12 + 16);
      v6 = v39;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        outlined copy of Data._Representation(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return outlined consume of Data._Representation(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for SymmetricKey();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 2 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SymmetricKey();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for TetraSessionState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v14;
    v38 = v11;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        outlined init with copy of TetraOuterMessageType(v24 + v25 * v20, v40, type metadata accessor for TetraSessionState);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = outlined destroy of TetraOuterMessageType(v26, type metadata accessor for TetraSessionState);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = outlined init with copy of TetraOuterMessageType(v24 + v25 * v44, v37, type metadata accessor for TetraSessionState);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            outlined init with copy of TetraOuterMessageType(v24 + v43, v38, type metadata accessor for TetraSessionState);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = outlined assign with take of TetraSessionState(v38, v17 + v42 + v32, type metadata accessor for TetraSessionState);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = outlined assign with take of TetraSessionState(v37, v34 + v33, type metadata accessor for TetraSessionState);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}