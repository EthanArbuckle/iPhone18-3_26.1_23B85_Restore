uint64_t sub_2260E0770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FilePath();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2260E081C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FilePath();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_2260E08C4()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for RawCryptex;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_2260E08EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2260E0980()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for CheckedContinuation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 4);

  (*(v4 + 8))(&v0[v6], v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2260E0AA8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for CheckedContinuation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);

  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2260E0BE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2260E0C18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2260E0D88(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 24)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_2260E0EC4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2260E103C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2260E10E8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2260E119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2260E12DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for Logger();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_2260E1418()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2260E1468()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2260E14A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2260E1558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_278583FB8;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x277CBEE78];
        while (1)
        {
          v8 = (*(a2 + 16))(a2, v6);
          v9 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v9)
          {
            return;
          }

          Value = CFDictionaryGetValue(v9, v7);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v9);
          if (((v6 != 0) & v8) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v9;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

uint64_t CryptexInfo.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CryptexInfo.devicePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexInfo() + 24);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CryptexInfo()
{
  result = type metadata singleton initialization cache for CryptexInfo;
  if (!type metadata singleton initialization cache for CryptexInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexInfo.subdevicePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexInfo() + 28);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CryptexInfo.mountPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexInfo() + 32);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CryptexInfo.init(infoInternal:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 216);
  v31[12] = *(a1 + 200);
  v31[13] = v4;
  v31[14] = *(a1 + 232);
  *(&v31[14] + 15) = *(a1 + 247);
  v5 = *(a1 + 152);
  v31[8] = *(a1 + 136);
  v31[9] = v5;
  v6 = *(a1 + 184);
  v31[10] = *(a1 + 168);
  v31[11] = v6;
  v7 = *(a1 + 88);
  v31[4] = *(a1 + 72);
  v31[5] = v7;
  v8 = *(a1 + 120);
  v31[6] = *(a1 + 104);
  v31[7] = v8;
  v9 = *(a1 + 24);
  v31[0] = *(a1 + 8);
  v31[1] = v9;
  v10 = *(a1 + 56);
  v31[2] = *(a1 + 40);
  v31[3] = v10;
  *a2 = String.init(cString:)();
  a2[1] = v11;
  v12 = *(a1 + 471);
  v31[12] = *(a1 + 455);
  v31[13] = v12;
  v31[14] = *(a1 + 487);
  *(&v31[14] + 15) = *(a1 + 502);
  v13 = *(a1 + 407);
  v31[8] = *(a1 + 391);
  v31[9] = v13;
  v14 = *(a1 + 439);
  v31[10] = *(a1 + 423);
  v31[11] = v14;
  v15 = *(a1 + 343);
  v31[4] = *(a1 + 327);
  v31[5] = v15;
  v16 = *(a1 + 375);
  v31[6] = *(a1 + 359);
  v31[7] = v16;
  v17 = *(a1 + 279);
  v31[0] = *(a1 + 263);
  v31[1] = v17;
  v18 = *(a1 + 311);
  v31[2] = *(a1 + 295);
  v31[3] = v18;
  v19._countAndFlagsBits = String.init(cString:)();
  CryptexVersion.init(_:)(v19);
  a2[2] = v32;
  memcpy(v31, (a1 + 518), sizeof(v31));
  v20 = String.init(cString:)();
  v22 = v21;
  v23 = type metadata accessor for CryptexInfo();
  v24 = a2 + v23[6];
  MEMORY[0x22AA74B40](v20, v22);
  memcpy(v31, (a1 + 1542), sizeof(v31));
  v25 = String.init(cString:)();
  v26 = a2 + v23[7];
  MEMORY[0x22AA74B40](v25);
  memcpy(v31, (a1 + 2566), sizeof(v31));
  v27 = String.init(cString:)();
  v28 = a2 + v23[8];
  result = MEMORY[0x22AA74B40](v27);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void type metadata completion function for CryptexInfo()
{
  type metadata accessor for CryptexVersion?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FilePath();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CryptexVersion?()
{
  if (!lazy cache variable for type metadata for CryptexVersion?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CryptexVersion?);
    }
  }
}

uint64_t OpaquePointer.init(from:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v36 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v38, v9);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v37 = &v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for CryptexPersonalizationService();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = cryptex_attr_create();
  v26 = type metadata accessor for Cryptex.PersonalizeOptions();
  v27 = *(v26 + 24);
  v39 = a1;
  outlined init with copy of CryptexPersonalizationService?(&a1[v27], v18, &_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of CryptexPersonalizationService?(v18, &_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
    cryptex_attr_set_authentication();
  }

  else
  {
    outlined init with take of CryptexPersonalizationService(v18, v24);
    URL.absoluteString.getter();
    String.utf8CString.getter();

    cryptex_attr_set_tss_url();

    v28 = v24[*(v19 + 20)];
    cryptex_attr_set_authentication();
    outlined destroy of Cryptex.PersonalizeOptions(v24, type metadata accessor for CryptexPersonalizationService);
  }

  v29 = v39;
  outlined init with copy of CryptexPersonalizationService?(&v39[*(v26 + 28)], v6, &_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
  v30 = v38;
  if ((*(v7 + 48))(v6, 1, v38) == 1)
  {
    outlined destroy of CryptexPersonalizationService?(v6, &_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
  }

  else
  {
    v31 = v37;
    outlined init with take of (host: URL, port: Int32)(v6, v37);
    v32 = v36;
    outlined init with copy of CryptexPersonalizationService?(v31, v36, &_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
    URL.absoluteString.getter();
    v33 = type metadata accessor for URL();
    (*(*(v33 - 8) + 8))(v32, v33);
    v34 = *(v31 + *(v30 + 48));
    String.utf8CString.getter();

    cryptex_attr_set_socks_proxy();
    outlined destroy of CryptexPersonalizationService?(v31, &_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  }

  *v29;
  *v29;
  v29[1];
  cryptex_attr_set_personalization_flags();
  outlined destroy of Cryptex.PersonalizeOptions(v29, type metadata accessor for Cryptex.PersonalizeOptions);
  return v25;
}

uint64_t OpaquePointer.init(from:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = cryptex_attr_create();
  cryptex_attr_set_persistence();
  cryptex_attr_set_nonce_persistence();
  if (v2 == 1)
  {
    cryptex_attr_set_limit_load_to_rem();
  }

  if (v3)
  {
    cryptex_attr_set_read_write();
  }

  return v4;
}

{
  v1 = *a1;
  result = cryptex_attr_create();
  if (v1 == 1)
  {
    v3 = result;
    cryptex_attr_set_uninstall_flags();
    return v3;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with take of (host: URL, port: Int32)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CryptexPersonalizationService?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of CryptexPersonalizationService?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of CryptexPersonalizationService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexPersonalizationService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Cryptex.PersonalizeOptions(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static NSFileHandle.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x22AA75EA0](a1);
  if (v7 == XPC_TYPE_FD.getter())
  {
    v10 = xpc_fd_dup(a1);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFileDescriptor:v10 closeOnDealloc:1];
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD00000000000001CLL, 0x8000000226116630, 0xD000000000000026, 0x8000000226116650, 0x637078286D6F7266, 0xEA0000000000293ALL, 8, v8);
    outlined destroy of CryptexError(v6);
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage()
{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage);
  }

  return result;
}

uint64_t outlined destroy of CryptexError(uint64_t a1)
{
  v2 = type metadata accessor for CryptexError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

xpc_object_t NSFileHandle.asXPC()()
{
  v1 = v0;
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_fd_create([v1 fileDescriptor]);
  if (!result)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD000000000000017, 0x8000000226116680, 0xD000000000000026, 0x8000000226116650, 0x29284350587361, 0xE700000000000000, 17, v8);
    outlined destroy of CryptexError(v6);
    swift_willThrow();
    return 0;
  }

  return result;
}

id protocol witness for static XpcCodable.from(xpc:) in conformance NSFileHandle@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = static NSFileHandle.from(xpc:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestTestError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RequestTestError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 _img4_chip_instance.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = img4_chip_select_personalized_ap();
  memset(&v4[3], 0, 64);
  *a1 = 6;
  *(a1 + 8) = v2;
  *(a1 + 16) = -1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 47) = 0;
  *(a1 + 61) = *v4;
  result = *&v4[32];
  *(a1 + 124) = 0;
  *(a1 + 109) = *&v4[48];
  *(a1 + 93) = *&v4[32];
  *(a1 + 77) = *&v4[16];
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

void _img4_chip_instance.certificateProductionStatus.getter(_BYTE *a1@<X8>)
{
  if ((*(v1 + 16) & 0x20) != 0)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = *(v1 + 48) & 1;
  }
}

void _img4_chip_instance.effectiveProductionStatus.getter(_BYTE *a1@<X8>)
{
  if ((*(v1 + 16) & 0x80) != 0)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = *(v1 + 50) & 1;
  }
}

Swift::Int Cryptex.Format.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Cryptex.Format()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Cryptex.Format()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t Cryptex.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

double _s10CryptexKit0A8IdentityVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

__n128 key path getter for Cryptex.personalizedIdentity : Cryptex@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 144))(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v7[8];
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 key path setter for Cryptex.personalizedIdentity : Cryptex(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = a1[4];
  *(v3 + 120) = a1[5];
  v5 = a1[7];
  *(v3 + 136) = a1[6];
  *(v3 + 152) = v5;
  *(v3 + 168) = a1[8];
  v6 = *a1;
  *(v3 + 56) = a1[1];
  result = a1[2];
  v8 = a1[3];
  *(v3 + 72) = result;
  *(v3 + 88) = v8;
  *(v3 + 104) = v4;
  *(v3 + 40) = v6;
  return result;
}

__n128 Cryptex.personalizedIdentity.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  *(a1 + 96) = *(v1 + 136);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  *(a1 + 32) = *(v1 + 72);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(v1 + 104);
  *(a1 + 80) = v3;
  result = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 Cryptex.personalizedIdentity.setter(__int128 *a1)
{
  swift_beginAccess();
  v3 = a1[4];
  *(v1 + 120) = a1[5];
  v4 = a1[7];
  *(v1 + 136) = a1[6];
  *(v1 + 152) = v4;
  *(v1 + 168) = a1[8];
  v5 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  *(v1 + 104) = v3;
  *(v1 + 40) = v5;
  return result;
}

void *key path getter for Cryptex.personalizedNonce : Cryptex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 168))(&v5);
  v4 = v5;
  *(a2 + 4) = BYTE4(v5);
  *a2 = v4;
  return result;
}

uint64_t key path setter for Cryptex.personalizedNonce : Cryptex(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 188) = v3;
  *(v4 + 184) = v2;
  return result;
}

uint64_t Cryptex.personalizedNonce.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 184);
  *(a1 + 4) = *(v1 + 188);
  *a1 = v4;
  return result;
}

uint64_t Cryptex.personalizedNonce.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = swift_beginAccess();
  *(v1 + 188) = v3;
  *(v1 + 184) = v2;
  return result;
}

uint64_t Cryptex.assets.getter()
{
  v2 = Cryptex.getCore()();
  if (!v1)
  {
    v0 = *(v2 + 16);
  }

  return v0;
}

uint64_t (*Cryptex._cryptex.read())()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  return Cryptex._cryptex.read;
}

uint64_t Cryptex._cryptex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

uint64_t Cryptex.format.getter@<X0>(char *a1@<X8>)
{
  v3 = (*(*v1 + 216))(v5);
  RawCryptex.format.getter(a1);
  return v3(v5, 0);
}

uint64_t Cryptex.personalize(for:persistence:options:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 504) = a3;
  *(v4 + 512) = v3;
  *(v4 + 496) = a1;
  *(v4 + 470) = *a2;
  type metadata accessor for Cryptex();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 520) = v6;
  *(v4 + 528) = v5;

  return MEMORY[0x2822009F8](Cryptex.personalize(for:persistence:options:), v6, v5);
}

uint64_t Cryptex.personalize(for:persistence:options:)()
{
  v1 = *(v0 + 496);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 536) = v6;
  *v6 = v0;
  v6[1] = Cryptex.personalize(for:persistence:options:);

  return v8(v0 + 16, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v8 = *v1;
  *(*v1 + 544) = v0;

  v4 = *(v2 + 528);
  v5 = *(v2 + 520);
  if (v0)
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 470);
  v2 = *(v0 + 512);
  v3 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v3;
  *(v0 + 288) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v4;
  v5 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v5;
  v6 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;
  *(v0 + 469) = v1;

  v7 = swift_task_alloc();
  *(v0 + 552) = v7;
  *v7 = v0;
  v7[1] = Cryptex.personalize(for:persistence:options:);
  v8 = *(v0 + 512);

  return CryptexNonceSpec.init(forCryptex:persistence:)(v0 + 616, v8, (v0 + 469));
}

{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v8 = *v1;
  *(*v1 + 560) = v0;

  v4 = *(v2 + 528);
  v5 = *(v2 + 520);
  if (v0)
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v16 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 616);
  v15 = *(v0 + 620);
  v14 = v2;
  CryptexReadNonceOptions.init(nonceSpec:)(&v14, &v12);
  v3 = v12;
  v4 = v13;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  *(v0 + 624) = v3;
  *(v0 + 628) = v4;
  v7 = *(v6 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 568) = v9;
  *v9 = v0;
  v9[1] = Cryptex.personalize(for:persistence:options:);

  return v11(v0 + 448, v0 + 624, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v8 = *v1;
  *(*v1 + 576) = v0;

  v4 = *(v2 + 528);
  v5 = *(v2 + 520);
  if (v0)
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = *(v0 + 512);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 584) = v2;
  *(v0 + 592) = v3;
  v4 = *(v0 + 464);
  v5 = *(v0 + 468);
  v6 = *(v0 + 272);
  *(v0 + 400) = *(v0 + 256);
  *(v0 + 416) = v6;
  *(v0 + 432) = *(v0 + 288);
  v7 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 192);
  *(v0 + 352) = v7;
  v8 = *(v0 + 240);
  *(v0 + 368) = *(v0 + 224);
  *(v0 + 384) = v8;
  v9 = *(v0 + 176);
  *(v0 + 304) = *(v0 + 160);
  *(v0 + 320) = v9;
  *(v0 + 472) = v2;
  *(v0 + 480) = v3;
  *(v0 + 488) = v4;
  *(v0 + 492) = v5;
  v15 = (*v1 + 256);
  v16 = (*v15 + **v15);
  v10 = (*v15)[1];
  v11 = swift_task_alloc();
  *(v0 + 600) = v11;
  *v11 = v0;
  v11[1] = Cryptex.personalize(for:persistence:options:);
  v12 = *(v0 + 504);
  v13 = *(v0 + 512);

  return v16(v0 + 304, v0 + 472, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v8 = *v1;
  *(*v1 + 608) = v0;

  v4 = *(v2 + 528);
  v5 = *(v2 + 520);
  if (v0)
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v6 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  outlined consume of Data._Representation(v0[73], v0[74]);
  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 544);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 560);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 576);
  return (*(v0 + 8))();
}

{
  outlined consume of Data._Representation(v0[73], v0[74]);
  v1 = v0[76];
  v2 = v0[1];

  return v2();
}

uint64_t Cryptex.personalize(for:nonce:options:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v4 + 520) = v3;
  *(v4 + 512) = a3;
  v5 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v5;
  *(v4 + 144) = a1[8];
  v6 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v6;
  v7 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v7;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  v9 = *a2;
  v10 = *(a2 + 8);
  *(v4 + 528) = *a2;
  *(v4 + 536) = v10;
  *(v4 + 704) = *(a2 + 16);
  *(v4 + 708) = *(a2 + 20);
  outlined copy of Data._Representation(v9, v10);
  type metadata accessor for Cryptex();
  *(v4 + 544) = lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 552) = v11;
  *(v4 + 560) = v12;
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](Cryptex.personalize(for:nonce:options:), v11, v12);
}

uint64_t Cryptex.personalize(for:nonce:options:)()
{
  v15 = *MEMORY[0x277D85DE8];
  _img4_nonce.init(from:)(*(v0 + 528), *(v0 + 536), (v0 + 592));
  v1 = *(v0 + 544);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 608);
  *(v0 + 648) = *(v0 + 592);
  *(v0 + 664) = v4;
  *(v0 + 680) = *(v0 + 624);
  *(v0 + 696) = *(v0 + 640);
  v5 = *(v0 + 144);
  *(v0 + 272) = *(v0 + 128);
  *(v0 + 288) = v5;
  v6 = *(v0 + 112);
  *(v0 + 240) = *(v0 + 96);
  *(v0 + 256) = v6;
  v7 = *(v0 + 80);
  *(v0 + 208) = *(v0 + 64);
  *(v0 + 224) = v7;
  v8 = *(v0 + 48);
  *(v0 + 176) = *(v0 + 32);
  *(v0 + 192) = v8;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 496) = 0;
  v9 = swift_task_alloc();
  *(v0 + 568) = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v0 + 160;
  v9[5] = v0 + 648;
  v9[6] = v0 + 496;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 576) = v11;
  *v11 = v0;
  v11[1] = Cryptex.personalize(for:nonce:options:);
  v12 = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277D841D8];

  return MEMORY[0x2822008A0](v0 + 504, v2, v1, 0xD00000000000001FLL, 0x80000002261166A0, partial apply for closure #1 in Cryptex.personalize(for:nonce:options:), v9, v13);
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 576);
  v10 = *v1;
  *(*v1 + 584) = v0;

  v4 = *(v2 + 560);
  v5 = *(v2 + 552);
  if (v0)
  {
    v6 = Cryptex.personalize(for:nonce:options:);
  }

  else
  {
    v6 = Cryptex.personalize(for:nonce:options:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 568);
  v2 = *(v0 + 704);
  v3 = *(v0 + 520);
  v4 = *(v0 + 708);
  v5 = RawCryptex.init(_:)(*(v0 + 504));
  (*(*v3 + 224))(v5);
  v6 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v6;
  *(v0 + 432) = *(v0 + 144);
  v7 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v7;
  v8 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v8;
  v9 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v9;
  protocol witness for Request.checkEntitlement(entitlements:) in conformance RequestTestError(v0 + 304);
  swift_beginAccess();
  *(v3 + 40) = *(v0 + 304);
  v10 = *(v0 + 320);
  v11 = *(v0 + 336);
  v12 = *(v0 + 352);
  *(v3 + 104) = *(v0 + 368);
  *(v3 + 88) = v12;
  *(v3 + 72) = v11;
  *(v3 + 56) = v10;
  v13 = *(v0 + 384);
  v14 = *(v0 + 400);
  v15 = *(v0 + 416);
  *(v3 + 168) = *(v0 + 432);
  *(v3 + 152) = v15;
  *(v3 + 136) = v14;
  *(v3 + 120) = v13;
  swift_beginAccess();
  *(v3 + 188) = v4;
  *(v3 + 184) = v2;

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[71];

  v2 = v0[73];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t closure #1 in Cryptex.personalize(for:nonce:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  type metadata accessor for Cryptex();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex);
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v13);
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = a2;
  v27[7] = a1;
  v14 = (*(*a2 + 216))(v28);
  _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:), v27, v15);
  result = v14(v28, 0);
  if ((v29 & 1) == 0)
  {
    v17 = *a6;
    if (*a6)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v18 = swift_allocError();
      *v19 = v17;
    }

    else
    {
      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      v18 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_2260DF000, v21, v22, "Failed to kick off personalization: %@", v23, 0xCu);
      outlined destroy of NSObject?(v24);
      MEMORY[0x22AA75CB0](v24, -1, -1);
      MEMORY[0x22AA75CB0](v23, -1, -1);
    }

    v28[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

void closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:)(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, _BYTE *a6@<X8>)
{
  v24[1] = a2;
  v24[2] = a3;
  v25 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v24 - v13;
  v15 = type metadata accessor for Cryptex.PersonalizeOptions();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CryptexError(a1, v19, type metadata accessor for Cryptex.PersonalizeOptions);
  OpaquePointer.init(from:)(v19);
  v20 = *(a4 + 208);
  (*(v10 + 16))(v14, a5, v9);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v21, v14, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @unowned OpaquePointer?) -> ();
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);

  LOBYTE(v21) = cryptex_personalize2();
  _Block_release(v23);
  *v25 = v21;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @unowned OpaquePointer?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t default argument 0 of Cryptex.personalize(for:persistence:options:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CryptexLocalDevice();
  result = CryptexLocalDevice.__allocating_init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for CryptexLocalDevice;
  *a1 = result;
  return result;
}

uint64_t Cryptex.install(onto:options:)(uint64_t a1, _BYTE *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v3 + 56) = v2;
  *(v3 + 65) = *a2;
  *(v3 + 66) = a2[1];
  *(v3 + 67) = a2[2];
  *(v3 + 68) = a2[3];
  type metadata accessor for Cryptex();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](Cryptex.install(onto:options:), v4, v5);
}

uint64_t Cryptex.install(onto:options:)()
{
  v33 = v0;
  v32 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 48);
  v2 = *(v0 + 68);
  v3 = *(v0 + 67);
  v4 = *(v0 + 66);
  v5 = *(v0 + 65);
  if (v5 == 2)
  {
    (*(**(v0 + 56) + 168))(&v29);
    if (BYTE4(v29) == 255 || (v30 = v29, v31 = BYTE4(v29), LOBYTE(v5) = CryptexNonceSpec.isEphemeral()(), v5 == 2))
    {
      LOBYTE(v5) = 0;
    }
  }

  v6 = *(v0 + 56);
  LOBYTE(v30) = v5;
  BYTE1(v30) = v4;
  BYTE2(v30) = v3;
  HIBYTE(v30) = v2;
  v7 = OpaquePointer.init(from:)(&v30);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2260DF000, v8, v9, "Attempting to install to codex", v10, 2u);
    MEMORY[0x22AA75CB0](v10, -1, -1);
  }

  v11 = *(v0 + 56);

  *(v0 + 48) = 0;
  v12 = swift_task_alloc();
  *(v12 + 16) = v7;
  *(v12 + 24) = v1;
  v13 = (*(*v11 + 216))(v0 + 16);
  _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.install(onto:options:), v12, v14);

  v13(v0 + 16, 0);
  if (*(v0 + 64) == 1)
  {
    v15 = *(v0 + 8);
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = *v1;
    if (*v1)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v18 = swift_allocError();
      *v19 = v17;
    }

    else
    {
      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      v18 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_2260DF000, v21, v22, "Failed to install: %@", v23, 0xCu);
      outlined destroy of NSObject?(v24);
      MEMORY[0x22AA75CB0](v24, -1, -1);
      MEMORY[0x22AA75CB0](v23, -1, -1);
    }

    swift_willThrow();
    v15 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];
  }

  return v15();
}

uint64_t Cryptex.attachPersonalizedManifest(path:)()
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v25 - v9;
  v25[4] = 0;
  v26 = 16842752;
  result = FilePath.withCString<A>(_:)();
  if (!v1)
  {
    v25[1] = 0;
    v13 = v27[0];
    MEMORY[0x28223BE20](result, v12);
    LODWORD(v25[-2]) = v13;
    v14 = (*(*v0 + 216))(v27);
    _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.attachPersonalizedManifest(path:), &v25[-4], v15);
    v14(v27, 0);
    if (v27[11])
    {
      v16 = v13;
      v17 = POSIXErrorCode.init(rawValue:)();
      *v10 = v17;
      v10[4] = BYTE4(v17) & 1;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of CryptexError(v10, v7, type metadata accessor for CryptexError);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
        swift_allocError();
        outlined init with copy of CryptexError(v7, v22, type metadata accessor for CryptexError);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        outlined destroy of CryptexError(v7);
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_2260DF000, v18, v19, "Failed to attach personalized manifest: %@", v20, 0xCu);
        outlined destroy of NSObject?(v21);
        MEMORY[0x22AA75CB0](v21, -1, -1);
        MEMORY[0x22AA75CB0](v20, -1, -1);
      }

      else
      {

        outlined destroy of CryptexError(v7);
      }

      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      swift_allocError();
      outlined init with copy of CryptexError(v10, v24, type metadata accessor for CryptexError);
      swift_willThrow();
      outlined destroy of CryptexError(v10);
      return close(v16);
    }

    else
    {
      return close(v13);
    }
  }

  return result;
}

uint64_t Cryptex.fcopyPersonalizedManifest(path:)()
{
  v19 = 1;
  v20 = 16842752;
  result = FilePath.withCString<A>(_:)();
  if (!v1)
  {
    v4 = v21[0];
    MEMORY[0x28223BE20](result, v3);
    v18[4] = v4;
    v5 = (*(*v0 + 216))(v21);
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGSgMd, &_ss9UnmanagedVySo10CFErrorRefaGSgMR);
    _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.fcopyPersonalizedManifest(path:), v18, v7);
    v5(v21, 0);
    v8 = v22;
    if (v22)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v9 = swift_allocError();
      *v10 = v8;
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v9;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_2260DF000, v12, v13, "Failed to copy personalized manifest: %@", v14, 0xCu);
        outlined destroy of NSObject?(v15);
        MEMORY[0x22AA75CB0](v15, -1, -1);
        MEMORY[0x22AA75CB0](v14, -1, -1);
      }

      swift_willThrow();
    }

    return close(v4);
  }

  return result;
}

uint64_t Cryptex.getCore()()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1 = static CryptexAssetType.allCases.getter();
  v2 = v1;
  v3 = v1[2];
  if (!v3)
  {

LABEL_23:
    type metadata accessor for CryptexCore();
    return CryptexCore.__allocating_init(assets:)(v0);
  }

  v4 = 0;
  v30 = v1[2];
  v31 = v1;
  while (v4 < v2[2])
  {
    v7 = *(v2 + v4 + 32);
    LOBYTE(v33[0]) = v7;
    CryptexAssetType.rawAssetType.getter(&v34);
    if (v35 == 1)
    {
      goto LABEL_5;
    }

    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = v38;
    MEMORY[0x28223BE20](v8, v9);
    v10 = (*(*v32 + 216))(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPySo14_cryptex_assetVGSgMd, &_sSPySo14_cryptex_assetVGSgMR);
    _s10CryptexKit03RawA0V010withUnsafeA4Core7performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.getCore());
    v10(v33, 0);
    if (!v44)
    {
      goto LABEL_5;
    }

    v11 = *(v44 + 24);
    v12 = String.init(cString:)();
    v13 = MEMORY[0x22AA74BE0](v12);

    v14 = [objc_opt_self() fileHandleForReadingAtPath_];

    if (!v14)
    {

      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    type metadata accessor for CryptexAsset();
    LOBYTE(v33[0]) = v7;
    v15 = v14;
    v16 = CryptexAsset.__allocating_init(type:file:)(v33, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v0;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v20 = v0[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_27;
    }

    v23 = v18;
    if (v0[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v0 = v33[0];
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v0 = v33[0];
        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_29;
      }

      v19 = v24;
      v0 = v33[0];
      if ((v23 & 1) == 0)
      {
LABEL_17:
        v0[(v19 >> 6) + 8] |= 1 << v19;
        *(v0[6] + v19) = v7;
        *(v0[7] + 8 * v19) = v16;

        v26 = v0[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_28;
        }

        v0[2] = v28;
        goto LABEL_4;
      }
    }

    v5 = v0[7];
    v6 = *(v5 + 8 * v19);
    *(v5 + 8 * v19) = v16;

LABEL_4:
    v3 = v30;
    v2 = v31;
LABEL_5:
    if (v3 == ++v4)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for Cryptex()
{
  result = type metadata singleton initialization cache for Cryptex;
  if (!type metadata singleton initialization cache for Cryptex)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t partial apply for closure #1 in Cryptex.install(onto:options:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = cryptex_install2();
  *a1 = result;
  return result;
}

uint64_t Cryptex.__allocating_init(from:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Cryptex.init(from:)(a1);
  return v5;
}

uint64_t Cryptex.init(from:)(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v63 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Logger();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  _s10CryptexKit0A8IdentityVSgWOi0_(&v54);
  *(v1 + 120) = v59;
  *(v1 + 136) = v60;
  *(v1 + 152) = v61;
  *(v1 + 168) = v62;
  *(v1 + 56) = v55;
  *(v1 + 72) = v56;
  *(v1 + 88) = v57;
  *(v1 + 104) = v58;
  *(v1 + 40) = v54;
  *(v1 + 184) = 0;
  *(v1 + 188) = -1;
  v44 = type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v53[7] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v46 + 104))(v45, *MEMORY[0x277D85268], v47);
  *(v1 + 208) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR____TtC10CryptexKit7Cryptex_logger;
  Logger.init(category:)(0x78657470797243, 0xE700000000000000);
  swift_beginAccess();
  *(v1 + 120) = v59;
  *(v1 + 136) = v60;
  *(v1 + 152) = v61;
  *(v1 + 168) = v62;
  *(v1 + 56) = v55;
  *(v1 + 72) = v56;
  *(v1 + 88) = v57;
  *(v1 + 104) = v58;
  *(v1 + 40) = v54;
  swift_beginAccess();
  *(v1 + 188) = -1;
  *(v1 + 184) = 0;
  swift_beginAccess();
  *(v1 + 200) = v48;
  *(v1 + 192) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v52 = 0;
  v53[0] = 0;
  v49 = v53;
  v50 = &v52;
  swift_beginAccess();
  v18 = *(v1 + 200);
  _s10CryptexKit03RawA0V010withUnsafeA4Core7performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.init(from:));
  swift_endAccess();
  v19 = v52;
  if (v52)
  {
    v20 = *v52;
    v21._countAndFlagsBits = String.init(cString:)();
    CryptexVersion.init(_:)(v21);
    v22 = v51;
    if (!v51)
    {
      v23 = v41;
      v24 = v42;
      (*(v41 + 16))(v43, v1 + v17, v42);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v51 = v28;
        *v27 = 136315138;
        v29 = *v19;
        v30 = String.init(cString:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v51);

        *(v27 + 4) = v32;
        v24 = v42;
        _os_log_impl(&dword_2260DF000, v25, v26, "Failed to parse version: '%s'", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x22AA75CB0](v28, -1, -1);
        MEMORY[0x22AA75CB0](v27, -1, -1);

        v33 = *(v41 + 8);
      }

      else
      {

        v33 = *(v23 + 8);
      }

      v33(v43, v24);
      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v36 = *(v2 + 192);

      v33((v2 + v17), v24);
      type metadata accessor for Cryptex();
      v37 = *(*v2 + 48);
      v38 = *(*v2 + 52);
      swift_deallocPartialClassInstance();
      goto LABEL_12;
    }
  }

  else
  {
    v22 = 0;
  }

  *(v1 + 32) = v22;
  v34 = v53[0];
  if (v53[0])
  {
    v34 = String.init(cString:)();
  }

  else
  {
    v35 = 0;
  }

  *(v1 + 16) = v34;
  *(v1 + 24) = v35;
LABEL_12:
  v39 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t Cryptex.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 192);

  v4 = OBJC_IVAR____TtC10CryptexKit7Cryptex_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t Cryptex.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 192);

  v4 = OBJC_IVAR____TtC10CryptexKit7Cryptex_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)@<X0>(_DWORD *a1@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)@<X0>(_DWORD *a1@<X8>)
{
  return partial apply for closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)(a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)(a1);
}

uint64_t partial apply for closure #1 in Cryptex.attachPersonalizedManifest(path:)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = cryptex_attach_personalized_manifest();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in Cryptex.fcopyPersonalizedManifest(path:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = cryptex_fcopy_personalized_manifest2();
  *a1 = result;
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
  __swift_destroy_boxed_opaque_existential_0(v11);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v2 = *(v1 + 40);
  lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
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
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t partial apply for closure #1 in Cryptex.init(from:)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = cryptex_core_parse_info_asset();
  *a1 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type Cryptex.Format and conformance Cryptex.Format()
{
  result = lazy protocol witness table cache variable for type Cryptex.Format and conformance Cryptex.Format;
  if (!lazy protocol witness table cache variable for type Cryptex.Format and conformance Cryptex.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.Format and conformance Cryptex.Format);
  }

  return result;
}

uint64_t type metadata completion function for Cryptex()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of Cryptex.personalize(for:persistence:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of Cryptex.personalize(for:persistence:options:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of Cryptex.personalize(for:nonce:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of Cryptex.install(onto:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2);
}

uint64_t getEnumTagSinglePayload for Cryptex.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Cryptex.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t outlined init with copy of CryptexError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #1 in closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:)(void *a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (a1)
  {
    v6 = a1;
    TatsuError.init(extractedFrom:)(a1, v14);
    v7 = v15;
    if (v15 == 255)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v10 = swift_allocError();
      *v12 = v6;
      v13 = v6;
    }

    else
    {
      v9 = v14[0];
      v8 = v14[1];
      lazy protocol witness table accessor for type TatsuError and conformance TatsuError();
      v10 = swift_allocError();
      *v11 = v9;
      *(v11 + 8) = v8;
      *(v11 + 16) = v7;
    }

    v14[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v14[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type TatsuError and conformance TatsuError()
{
  result = lazy protocol witness table cache variable for type TatsuError and conformance TatsuError;
  if (!lazy protocol witness table cache variable for type TatsuError and conformance TatsuError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TatsuError and conformance TatsuError);
  }

  return result;
}

uint64_t partial apply for closure #1 in Cryptex.getCore()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 24);
  result = cryptex_core_get_asset_from_index();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType()
{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _cryptex_asset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _cryptex_asset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _cryptex_asset_type(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _cryptex_asset_type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for _img4_chip_instance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _img4_chip_instance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for CFMutableDictionaryRef(uint64_t a1)
{
  type metadata accessor for CFDictionaryRef(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _img4_dgst(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _img4_dgst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

void type metadata accessor for CFErrorRef(uint64_t a1, unint64_t *a2)
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

uint64_t CryptexNonce.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

void CryptexNonce.spec.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  *a1 = *(v1 + 16);
  *(a1 + 4) = v2;
}

uint64_t CryptexNonce.init(data:spec:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 4);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 20) = v5;
  return result;
}

Swift::Int CryptexPersistence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CryptexNonceSpec.logger);
  __swift_project_value_buffer(v0, static CryptexNonceSpec.logger);
  return Logger.init(category:)(0x65705365636E6F4ELL, 0xE900000000000063);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(category:)(0x7541346567616D49, 0xEA00000000006874);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(category:)(0x6E6F6E5F34676D69, 0xEA00000000006563);
}

uint64_t CryptexNonceSpec.init(forCryptex:persistence:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 89) = *a3;
  v4 = (*a2 + 240) & 0xFFFFFFFFFFFFLL | 0xC37000000000000;
  *(v3 + 64) = *(*a2 + 240);
  *(v3 + 72) = v4;
  type metadata accessor for Cryptex();
  lazy protocol witness table accessor for type Cryptex and conformance Cryptex();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexNonceSpec.init(forCryptex:persistence:), v5, v6);
}

uint64_t CryptexNonceSpec.init(forCryptex:persistence:)()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexNonceSpec.init(forCryptex:persistence:), 0, 0);
}

{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 88))
  {
    v4 = *(v0 + 56);

    v1 = 0;
    v3 = 2;
    goto LABEL_12;
  }

  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 89);
    v2 = *(v0 + 56);

    v3 = 0;
LABEL_12:
    v20 = *(v0 + 48);
    *v20 = v1;
    *(v20 + 4) = v3;
    v17 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];
    goto LABEL_13;
  }

  v5 = *(v0 + 56);
  *(v0 + 80) = 0;
  *(swift_task_alloc() + 16) = v0 + 80;
  v6 = (*(*v5 + 216))(v0 + 16);
  _s10CryptexKit03RawA0V010withUnsafeA4Core7performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in CryptexNonceSpec.init(forCryptex:persistence:));

  v6(v0 + 16, 0);
  if (!*(v0 + 84))
  {
    v19 = *(v0 + 56);

    v1 = *(v0 + 80);
    v3 = 1;
    goto LABEL_12;
  }

  v7 = POSIXErrorCode.init(rawValue:)() & 0x1FFFFFFFFLL | 0xFFFFFF8000000000;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CryptexNonceSpec.logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v13 + 4) = BYTE4(v7);
    *v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2260DF000, v9, v10, "Failed to get nonce domain handle: %@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x22AA75CB0](v12, -1, -1);
    MEMORY[0x22AA75CB0](v11, -1, -1);
  }

  v15 = *(v0 + 56);

  lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
  swift_allocError();
  *(v16 + 4) = BYTE4(v7);
  *v16 = v7;
  swift_willThrow();

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];
LABEL_13:

  return v17();
}

unint64_t lazy protocol witness table accessor for type Cryptex and conformance Cryptex()
{
  result = lazy protocol witness table cache variable for type Cryptex and conformance Cryptex;
  if (!lazy protocol witness table cache variable for type Cryptex and conformance Cryptex)
  {
    type metadata accessor for Cryptex();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex and conformance Cryptex);
  }

  return result;
}

uint64_t partial apply for closure #1 in CryptexNonceSpec.init(forCryptex:persistence:)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = cryptex_core_get_nonce_domain_handle();
  *a1 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error()
{
  result = lazy protocol witness table cache variable for type AppleImage4Error and conformance AppleImage4Error;
  if (!lazy protocol witness table cache variable for type AppleImage4Error and conformance AppleImage4Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleImage4Error and conformance AppleImage4Error);
  }

  return result;
}

Swift::Bool_optional __swiftcall CryptexNonceSpec.isEphemeral()()
{
  if (!*(v0 + 4))
  {
    return ((*v0 & 1) == 0);
  }

  if (*(v0 + 4) == 1)
  {
    return 2;
  }

  return 0;
}

Swift::tuple_OpaquePointer_optional_String __swiftcall CryptexNonceSpec.getDomainAndDescription()()
{
  v1 = *v0;
  if (*(v0 + 4))
  {
    if (*(v0 + 4) == 1)
    {
      v2 = *v0;
      v3 = img4_nonce_domain_get_from_handle();
      strcpy(v8, "NonceDomain=");
      BYTE5(v8[1]) = 0;
      HIWORD(v8[1]) = -5120;
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v4);

      v5 = v3;
      v6 = v8[0];
      v7 = v8[1];
    }

    else
    {
      v7 = 0xE800000000000000;
      v6 = 0x6863726165736572;
      v5 = MEMORY[0x277D829E0];
    }
  }

  else
  {
    if (v1)
    {
      v5 = MEMORY[0x277D829E8];
    }

    else
    {
      v5 = MEMORY[0x277D829F0];
    }

    if (v1)
    {
      v6 = 6906980;
    }

    else
    {
      v6 = 6906992;
    }

    v7 = 0xE300000000000000;
  }

  result._1._object = v7;
  result._1._countAndFlagsBits = v6;
  result._0.value._rawValue = v5;
  return result;
}

void CryptexReadNonceOptions.nonceSpec.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t CryptexReadNonceOptions.nonceSpec.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t CryptexReadNonceOptions.init(nonceSpec:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3 == 255)
  {
    v2 = 4;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexPersistence and conformance CryptexPersistence()
{
  result = lazy protocol witness table cache variable for type CryptexPersistence and conformance CryptexPersistence;
  if (!lazy protocol witness table cache variable for type CryptexPersistence and conformance CryptexPersistence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexPersistence and conformance CryptexPersistence);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexNonce(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexNonce(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexPersistence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexPersistence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTag for CryptexNonceSpec(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for CryptexNonceSpec(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexNonceSpec(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexNonceSpec(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for Cryptex.UninstallOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t FilePath.createSymlink(targeting:)()
{
  v0 = type metadata accessor for CryptexError();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  FilePath.string.getter();
  FilePath.string.getter();
  v5 = String.utf8CString.getter();

  v6 = String.utf8CString.getter();

  v7 = symlink((v5 + 32), (v6 + 32));

  if (v7)
  {
    *v4 = MEMORY[0x22AA74A20](result);
    swift_storeEnumTagMultiPayload();
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v14 = 0xD000000000000019;
    v15 = 0x8000000226116780;
    type metadata accessor for FilePath();
    lazy protocol witness table accessor for type FilePath and conformance FilePath();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v9);

    MEMORY[0x22AA74CD0](0x6E69746E696F7020, 0xED00002074612067);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v10);

    v11 = v14;
    v12 = v15;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v4, v11, v12, 0xD000000000000026, 0x80000002261167A0, 0xD000000000000019, 0x80000002261167D0, 9, v13);

    outlined destroy of CryptexError(v4);
    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath and conformance FilePath()
{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
  }

  return result;
}

uint64_t FilePath.symlinkTarget()()
{
  result = FilePath.symlinkExists()();
  if (!v1)
  {
    if (result)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = 1025;
      bzero((v2 + 32), 0x401uLL);
      FilePath.string.getter();
      v3 = String.utf8CString.getter();

      v4 = readlink((v3 + 32), (v2 + 32), 0x400uLL);

      if (v4 == -1)
      {
        v11 = MEMORY[0x22AA74A20](v5);
        lazy protocol witness table accessor for type Errno and conformance Errno();
        swift_allocError();
        *v12 = v11;
        swift_willThrow();
      }

      else
      {
        v6 = *(v2 + 16);
        v7 = static String._fromUTF8Repairing(_:)();
        v9 = v8;

        return MEMORY[0x22AA74B40](v7, v9);
      }
    }

    else
    {
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_allocError();
      *v10 = 22;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Cryptex.BootstrapOptions.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Cryptex.BootstrapOptions.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Cryptex.BootstrapOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002261167F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Cryptex.BootstrapOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Cryptex.BootstrapOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Cryptex.BootstrapOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMd, ">P");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

uint64_t Cryptex.BootstrapOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMd, &_ss22KeyedDecodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v5);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Cryptex.BootstrapOptions(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMd, ">P");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v8, v3);
}

uint64_t CryptexDevice.readNonce(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return CryptexDevice.readNonce(options:)(a1, a2, a3, a4);
}

{
  v8 = *(a2 + 4);
  *(v4 + 32) = *a2;
  *(v4 + 36) = v8;
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = CryptexDevice.readNonce(options:);

  return v13(a1, v4 + 32, a3, a4);
}

uint64_t CryptexDevice.readNonce(options:)()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](CryptexDevice.readNonce(options:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 24);
  return (*(v0 + 8))();
}

uint64_t CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 392) = a2;
  *(v6 + 400) = a4;
  *(v6 + 384) = a1;
  v8 = type metadata accessor for FilePath();
  *(v6 + 424) = v8;
  v9 = *(v8 - 8);
  *(v6 + 432) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 534) = *a3;
  *(v6 + 535) = a3[1];
  *(v6 + 536) = a3[2];
  *(v6 + 537) = a3[3];

  return MEMORY[0x2822009F8](CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:), 0, 0);
}

uint64_t CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:)()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[48];
  type metadata accessor for CryptexBundle();
  (*(v2 + 16))(v1, v4, v3);
  v0[56] = CryptexBundle.__allocating_init(path:)(v1);
  v11 = (v0[51] + 8);
  v12 = (*v11 + **v11);
  v5 = (*v11)[1];
  v6 = swift_task_alloc();
  v0[57] = v6;
  *v6 = v0;
  v6[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  v7 = v0[51];
  v8 = v0[52];
  v9 = v0[50];

  return (v12)(v0 + 2, v9, v7);
}

{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    v3 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 144);
  *(v0 + 272) = *(v0 + 128);
  *(v0 + 288) = v3;
  v4 = *(v0 + 112);
  *(v0 + 240) = *(v0 + 96);
  *(v0 + 256) = v4;
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v5;
  v6 = *(*v1 + 160);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  *v8 = v0;
  v8[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  v9 = *(v0 + 448);

  return (v11)(v0 + 160, 0, 0);
}

{
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v0 + 416);
    v12 = *(v0 + 400);
    *(v0 + 328) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v2);
    default argument 1 of Cryptex.personalize(for:persistence:options:)((v0 + 532));
    *(v0 + 533) = *(v0 + 532);
    v4 = *(*v1 + 248);
    v13 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 496) = v6;
    *v6 = v0;
    v6[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
    v7 = *(v0 + 392);

    return v13(v0 + 304, v0 + 533, v7);
  }

  else
  {
    v9 = *(v0 + 448);
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v10 = *(v0 + 440);

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v6 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 304));
    v4 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 537);
  v3 = *(v0 + 536);
  v4 = *(v0 + 535);
  *(v0 + 528) = *(v0 + 534);
  *(v0 + 529) = v4;
  *(v0 + 530) = v3;
  *(v0 + 531) = v2;
  default argument 0 of Cryptex.install(onto:options:)();
  v8 = (*v1 + 264);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  *(v0 + 512) = v6;
  *v6 = v0;
  v6[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);

  return v9(v0 + 344, v0 + 528);
}

{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v6 = *v1;
  *(v2 + 520) = v0;

  __swift_destroy_boxed_opaque_existential_0((v2 + 344));
  if (v0)
  {
    v4 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    v4 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[60];
  v3 = v0[55];
  v2 = v0[56];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[56];

  v2 = v0[58];
  v3 = v0[55];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[56];

  v2 = v0[61];
  v3 = v0[55];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[60];
  v2 = v0[56];

  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  v3 = v0[63];
  v4 = v0[55];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[60];
  v2 = v0[56];

  v3 = v0[65];
  v4 = v0[55];

  v5 = v0[1];

  return v5();
}

uint64_t CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 472);
  v7 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v5 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    v5 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t CryptexLocalDevice.readNonce(options:)(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 152) = *a2;
  *(v3 + 149) = *(a2 + 4);
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexLocalDevice.readNonce(options:), v4, v5);
}

uint64_t CryptexLocalDevice.readNonce(options:)()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  *(v0 + 88) = 0u;
  v1 = v0 + 88;
  v2 = *(v0 + 149);
  v3 = *(v0 + 152);
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  LODWORD(v41[0]) = v3;
  BYTE4(v41[0]) = v2;
  v44 = CryptexNonceSpec.getDomainAndDescription()();
  object = v44._1._object;
  v5 = *(v0 + 24);
  if (!v44._0.value._rawValue)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      v23 = 0xC000000000;
      goto LABEL_13;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v21 + 4) = -64;
    *v21 = 0;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_2260DF000, v17, v18, "Failed to get nonce domain: %@", v19, 0xCu);
    v23 = 0xC000000000;
    goto LABEL_10;
  }

  countAndFlagsBits = v44._1._countAndFlagsBits;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v40 = v0;
  if (os_log_type_enabled(v7, v8))
  {
    v39 = countAndFlagsBits;
    v9 = *(v0 + 149);
    v10 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41[0] = v12;
    *v11 = 136315394;
    *(v0 + 144) = v10;
    *(v0 + 148) = v9;
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v41);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, object, v41);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_2260DF000, v7, v8, "Reading nonce for spec '%s' => domain '%s'", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA75CB0](v12, -1, -1);
    MEMORY[0x22AA75CB0](v11, -1, -1);
  }

  else
  {
  }

  if (!img4_nonce_domain_copy_nonce())
  {
    v27 = v1 - 56;
    v28 = *(v40 + 149);
    v29 = *(v40 + 152);
    v30 = *(v40 + 16);
    v31 = *(v1 + 16);
    *v27 = *v1;
    *(v27 + 16) = v31;
    *(v27 + 32) = *(v1 + 32);
    *(v27 + 48) = *(v1 + 48);
    v32 = _img4_nonce.data.getter();
    LODWORD(v41[0]) = v29;
    BYTE4(v41[0]) = v28;
    CryptexNonce.init(data:spec:)(v32, v33, v41, v30);
    v34 = *(v40 + 8);
    v35 = *MEMORY[0x277D85DE8];
    goto LABEL_14;
  }

  v23 = POSIXErrorCode.init(rawValue:)() & 0x1FFFFFFFFLL | 0x4000000000;
  v17 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  v0 = v40;
  if (os_log_type_enabled(v17, v24))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v25 + 4) = BYTE4(v23);
    *v25 = v23;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v26;
    *v20 = v26;
    _os_log_impl(&dword_2260DF000, v17, v24, "Failed to read nonce: %@", v19, 0xCu);
LABEL_10:
    outlined destroy of CryptexPersonalizationService?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA75CB0](v20, -1, -1);
    MEMORY[0x22AA75CB0](v19, -1, -1);
  }

LABEL_13:

  lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
  swift_allocError();
  *(v36 + 4) = BYTE4(v23);
  *v36 = v23;
  swift_willThrow();
  v34 = *(v0 + 8);
  v37 = *MEMORY[0x277D85DE8];
LABEL_14:

  return v34();
}

uint64_t type metadata accessor for CryptexLocalDevice()
{
  result = type metadata singleton initialization cache for CryptexLocalDevice;
  if (!type metadata singleton initialization cache for CryptexLocalDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexLocalDevice.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CryptexLocalDevice.init()();
  return v3;
}

uint64_t CryptexLocalDevice.init()()
{
  v1 = v0;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *(v0 + 16) = 0;
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  *&v21[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, *MEMORY[0x277D85268], v20);
  *(v0 + 24) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x7665446C61636F4CLL, 0xEB00000000656369);
  v13 = (v0 + OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_cachedIdentity);
  _s10CryptexKit0A8IdentityVSgWOi0_(v21);
  v14 = v21[7];
  v13[6] = v21[6];
  v13[7] = v14;
  v13[8] = v21[8];
  v15 = v21[3];
  v13[2] = v21[2];
  v13[3] = v15;
  v16 = v21[5];
  v13[4] = v21[4];
  v13[5] = v16;
  v17 = v21[1];
  *v13 = v21[0];
  v13[1] = v17;
  v18 = *(v1 + 16);
  *(v1 + 16) = 0;
  swift_unknownObjectRelease();
  return v1;
}

void static CryptexLocalDevice.activateConnection(_:)(_xpc_connection_s *a1)
{
  v3[4] = closure #1 in static CryptexLocalDevice.activateConnection(_:);
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v3[3] = &block_descriptor_0;
  v2 = _Block_copy(v3);
  xpc_connection_set_event_handler(a1, v2);
  _Block_release(v2);
  xpc_connection_activate(a1);
}

uint64_t closure #1 in static CryptexLocalDevice.activateConnection(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x22AA75EA0](a1);
  result = XPC_TYPE_ERROR.getter();
  if (v8 != result)
  {
    Logger.init()();
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      swift_getObjectType();
      v17 = a1;
      swift_unknownObjectRetain();
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2260DF000, v10, v11, "Unexpected XPC: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA75CB0](v13, -1, -1);
      MEMORY[0x22AA75CB0](v12, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t CryptexLocalDevice.__allocating_init(endpoint:)(_xpc_endpoint_s *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CryptexLocalDevice.init(endpoint:)(a1);
  return v5;
}

uint64_t CryptexLocalDevice.init(endpoint:)(_xpc_endpoint_s *a1)
{
  v2 = v1;
  v25 = a1;
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  *(v1 + 16) = 0;
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  *&v27[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v7, *MEMORY[0x277D85268], v24);
  *(v1 + 24) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x7665446C61636F4CLL, 0xEB00000000656369);
  v14 = (v1 + OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_cachedIdentity);
  _s10CryptexKit0A8IdentityVSgWOi0_(v27);
  v15 = v27[7];
  v14[6] = v27[6];
  v14[7] = v15;
  v14[8] = v27[8];
  v16 = v27[3];
  v14[2] = v27[2];
  v14[3] = v16;
  v17 = v27[5];
  v14[4] = v27[4];
  v14[5] = v17;
  v18 = v27[1];
  *v14 = v27[0];
  v14[1] = v18;
  v19 = xpc_connection_create_from_endpoint(v25);
  aBlock[4] = closure #1 in static CryptexLocalDevice.activateConnection(_:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  aBlock[3] = &block_descriptor_11;
  v20 = _Block_copy(aBlock);
  xpc_connection_set_event_handler(v19, v20);
  _Block_release(v20);
  xpc_connection_activate(v19);
  swift_unknownObjectRelease();
  v21 = *(v2 + 16);
  *(v2 + 16) = v19;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t CryptexLocalDevice.inventoryConn()()
{
  v1[9] = v0;
  v2 = type metadata accessor for CryptexError();
  v1[10] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice();
  v1[12] = lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x2822009F8](CryptexLocalDevice.inventoryConn(), v5, v4);
}

{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[11];
    type metadata accessor for SendableXPCObj();
    v3 = swift_unknownObjectRetain();
    v4 = SendableXPCObj.__allocating_init(_:)(v3);

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v0[12];
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[15] = v9;
    v10 = type metadata accessor for SendableXPCObj();
    *v9 = v0;
    v9[1] = CryptexLocalDevice.inventoryConn();
    v11 = v0[9];

    return MEMORY[0x2822008A0](v0 + 8, v1, v7, 0x726F746E65766E69, 0xEF29286E6E6F4379, partial apply for closure #1 in CryptexLocalDevice.inventoryConn(), v11, v10);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = CryptexLocalDevice.inventoryConn();
  }

  else
  {
    v7 = CryptexLocalDevice.inventoryConn();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = xpc_connection_create_from_endpoint(*&v2[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value]);
  v0[6] = closure #1 in static CryptexLocalDevice.activateConnection(_:);
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v0[5] = &block_descriptor_15;
  v4 = _Block_copy(v0 + 2);
  xpc_connection_set_event_handler(v3, v4);
  _Block_release(v4);
  xpc_connection_activate(v3);

  v5 = *(v1 + 16);
  *(v1 + 16) = v3;
  swift_unknownObjectRelease();
  v6 = v0[11];
  if (*(v1 + 16))
  {
    type metadata accessor for SendableXPCObj();
    v7 = swift_unknownObjectRetain();
    v8 = SendableXPCObj.__allocating_init(_:)(v7);

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[10];
    v12 = v0[11];
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD00000000000001DLL, 0x8000000226116850, 0xD00000000000001ELL, 0x8000000226116870, 0x726F746E65766E69, 0xEF29286E6E6F4379, 128, v13);
    outlined destroy of CryptexError(v6);
    swift_willThrow();
    v14 = v0[11];

    v15 = v0[1];

    return v15();
  }
}

{
  v1 = v0[16];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

void closure #1 in CryptexLocalDevice.inventoryConn()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + 24);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in CryptexLocalDevice.inventoryConn();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @guaranteed OS_xpc_object?) -> ();
  aBlock[3] = &block_descriptor_83;
  v13 = _Block_copy(aBlock);

  cryptex_inventory_lookup_endpoint();
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in CryptexLocalDevice.inventoryConn()(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef);
    v8 = swift_allocError();
    *v9 = a1;
    v16 = v8;
    v10 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a2)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    v13 = swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v7, 0xD000000000000016, 0x80000002261169C0, 0xD00000000000001ELL, 0x8000000226116870, 0x726F746E65766E69, 0xEF29286E6E6F4379, 118, v14);
    outlined destroy of CryptexError(v7);
    v16 = v13;
    goto LABEL_3;
  }

  type metadata accessor for SendableXPCObj();
  v12 = swift_unknownObjectRetain();
  v16 = SendableXPCObj.__allocating_init(_:)(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @guaranteed OS_xpc_object?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(a2, a3);

  swift_unknownObjectRelease();
}

uint64_t CryptexLocalDevice.readIdentity()(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexLocalDevice.readIdentity(), v3, v4);
}

uint64_t CryptexLocalDevice.readIdentity()()
{
  v19 = *MEMORY[0x277D85DE8];
  _img4_chip_instance.init()(v0 + 160);
  if (img4_chip_instantiate())
  {
    v1 = *(v0 + 312);
    v2 = POSIXErrorCode.init(rawValue:)() & 0x1FFFFFFFFLL;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
      swift_allocError();
      *(v7 + 4) = BYTE4(v2);
      *v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_2260DF000, v3, v4, "Failed to read identity from AppleImage4: %@", v5, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v6, -1, -1);
      MEMORY[0x22AA75CB0](v5, -1, -1);
    }

    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v9 + 4) = BYTE4(v2);
    *v9 = v2;
    swift_willThrow();
    v10 = *(v0 + 8);
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *(v0 + 304);
    v13 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v13;
    *(v0 + 144) = *(v0 + 288);
    v14 = *(v0 + 208);
    *(v0 + 48) = *(v0 + 192);
    *(v0 + 64) = v14;
    v15 = *(v0 + 240);
    *(v0 + 80) = *(v0 + 224);
    *(v0 + 96) = v15;
    v16 = *(v0 + 176);
    *(v0 + 16) = *(v0 + 160);
    *(v0 + 32) = v16;
    CryptexIdentity.init(chipInstance:)(v0 + 16, v12);
    v10 = *(v0 + 8);
    v17 = *MEMORY[0x277D85DE8];
  }

  return v10();
}

uint64_t CryptexLocalDevice.trust(signingService:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CryptexError();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for CryptexTrustOptions() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for CryptexSigningService() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.trust(signingService:options:), v9, v8);
}

uint64_t CryptexLocalDevice.trust(signingService:options:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[3];
  outlined init with copy of CryptexSigningService(v0[2], v2, type metadata accessor for CryptexSigningService);
  outlined init with copy of CryptexSigningService(v3, v1, type metadata accessor for CryptexTrustOptions);
  OpaquePointer.init(from:options:)(v2, v1);
  if (cryptex_signing_service_trust())
  {
    v4 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = POSIXErrorCode.init(rawValue:)();
    *v5 = v8;
    *(v5 + 4) = BYTE4(v8) & 1;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of CryptexSigningService(v5, v4, type metadata accessor for CryptexError);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[6];
    if (v11)
    {
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError);
      swift_allocError();
      outlined init with copy of CryptexSigningService(v12, v16, type metadata accessor for CryptexError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CryptexError(v12);
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2260DF000, v9, v10, "Failed to trust signing service: %@", v14, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v15, -1, -1);
      MEMORY[0x22AA75CB0](v14, -1, -1);
    }

    else
    {

      outlined destroy of CryptexError(v12);
    }

    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[5];
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexSigningService(v26, v28, type metadata accessor for CryptexError);
    swift_willThrow();
    outlined destroy of CryptexError(v26);

    v22 = v0[1];
  }

  else
  {
    v19 = v0[8];
    v18 = v0[9];
    v21 = v0[6];
    v20 = v0[7];

    v22 = v0[1];
  }

  return v22();
}

uint64_t CryptexLocalDevice.getInstalledCryptexes()()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for POSIXError();
  v0[454] = v1;
  v2 = *(v1 - 8);
  v0[455] = v2;
  v3 = *(v2 + 64) + 15;
  v0[456] = swift_task_alloc();
  v4 = *(type metadata accessor for CryptexInfo() - 8);
  v0[457] = v4;
  v5 = *(v4 + 64) + 15;
  v0[458] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexLocalDevice.getInstalledCryptexes(), v6, v7);
}

{
  v23 = *MEMORY[0x277D85DE8];
  *(v0 + 3616) = 0u;
  if (_cryptex_copy_list())
  {
    v1 = POSIXErrorCode.init(rawValue:)();
    if ((v1 & 0x100000000) != 0)
    {
      LODWORD(v1) = static POSIXErrorCode.ELAST.getter();
    }

    v2 = *(v0 + 3648);
    v3 = *(v0 + 3640);
    v4 = *(v0 + 3632);
    *(v0 + 3672) = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, 255, MEMORY[0x277CC8658]);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v3 + 8))(v2, v4);
    goto LABEL_5;
  }

  v10 = *(v0 + 3616);
  if (!v10)
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_5:
    v5 = *(v0 + 3664);
    v6 = *(v0 + 3648);
    swift_willThrow();

    v7 = *(v0 + 8);
    v8 = *MEMORY[0x277D85DE8];

    return v7();
  }

  v11 = *(v0 + 3624);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = *(v0 + 3656);
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v22;
    do
    {
      v14 = *(v0 + 3664);
      memcpy((v0 + 16), v10, 0xE10uLL);
      CryptexInfo.init(infoInternal:)(v0 + 16, v14);
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      }

      v17 = *(v0 + 3664);
      *(v22 + 16) = v16 + 1;
      outlined init with take of CryptexInfo(v17, v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16);
      v10 += 3600;
      --v11;
    }

    while (v11);
  }

  v18 = *(v0 + 3664);
  v19 = *(v0 + 3648);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20(v12);
}

uint64_t CryptexLocalDevice.parse<A>(replyXpc:ofType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, __int128 *a3@<X8>)
{
  v30 = a2;
  v5 = type metadata accessor for CryptexError();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - v14;
  v16 = *(a1 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Result<>.from<A>(xpc:responseType:)(a1, v30, v38);
  v30 = v20;
  v21 = v29;
  outlined init with copy of CryptexPersonalizationService?(v38, v35, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  if (v37)
  {
    outlined destroy of CryptexPersonalizationService?(v38, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
    v22 = *v36;
    a3[2] = v35[2];
    a3[3] = v22;
    *(a3 + 57) = *&v36[9];
    v24 = v35[0];
    v23 = v35[1];
  }

  else
  {
    outlined init with take of Response(v35, v34);
    outlined init with copy of Response(v34, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit8Response_pMd, &_s10CryptexKit8Response_pMR);
    if (swift_dynamicCast())
    {
      (*(v16 + 56))(v15, 0, 1, a1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      outlined destroy of CryptexPersonalizationService?(v38, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
      v26 = *(v16 + 32);
      v27 = v30;
      v26(v30, v15, a1);
      v26(a3, v27, a1);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      type metadata accessor for Result();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v16 + 56))(v15, 1, 1, a1);
    (*(v21 + 8))(v15, v10);
    swift_storeEnumTagMultiPayload();
    static CryptexError.error(_:_:file:function:lineNumber:)(v9, 0xD000000000000017, 0x80000002261168D0, 0xD00000000000001ELL, 0x8000000226116870, 0xD000000000000017, 0x80000002261168B0, 183, v31);
    outlined destroy of CryptexError(v9);
    __swift_destroy_boxed_opaque_existential_0(v34);
    outlined destroy of CryptexPersonalizationService?(v38, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
    v28 = v32[0];
    a3[2] = v31[2];
    a3[3] = v28;
    *(a3 + 57) = *(v32 + 9);
    v24 = v31[0];
    v23 = v31[1];
  }

  *a3 = v24;
  a3[1] = v23;
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*v4 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v5[13] = v8;
  *v8 = v5;
  v8[1] = CryptexLocalDevice.sendRequest<A>(_:);

  return v10();
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v4[12];
    v4[15] = a1;
    type metadata accessor for CryptexLocalDevice();
    v4[16] = lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v4[17] = v11;
    v4[18] = v10;

    return MEMORY[0x2822009F8](CryptexLocalDevice.sendRequest<A>(_:), v11, v10);
  }
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = *&v2[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value];
  v0[19] = v6;
  swift_unknownObjectRetain();

  (*(v3 + 40))(v4, v3);
  v7 = XpcDictCodable.asXPC()(&type metadata for RequestWrapper, &protocol witness table for RequestWrapper);
  v0[20] = v7;
  if (v1)
  {
    outlined destroy of RequestWrapper((v0 + 2));
    swift_unknownObjectRelease();
    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v7;
    v11 = v0[16];
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    outlined destroy of RequestWrapper((v0 + 2));
    v15 = swift_task_alloc();
    v0[21] = v15;
    v15[2] = v14;
    v15[3] = v13;
    v15[4] = v6;
    v15[5] = v10;
    v15[6] = v12;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    v0[22] = v17;
    swift_getAssociatedTypeWitness();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    v18 = type metadata accessor for Result();
    *v17 = v0;
    v17[1] = CryptexLocalDevice.sendRequest<A>(_:);
    v19 = v0[8];

    return MEMORY[0x2822008A0](v19, v12, v11, 0x75716552646E6573, 0xEF293A5F28747365, partial apply for closure #1 in CryptexLocalDevice.sendRequest<A>(_:), v15, v18);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = CryptexLocalDevice.sendRequest<A>(_:);
  }

  else
  {
    v7 = v2[21];

    v4 = v2[17];
    v5 = v2[18];
    v6 = CryptexLocalDevice.sendRequest<A>(_:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v2 = v0[19];
  v1 = v0[20];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

void closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a2;
  v21 = a3;
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v10 = type metadata accessor for CheckedContinuation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - v14;
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(a4 + 24);
  (*(v11 + 16))(v15, a1, v10);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a5;
  *(v18 + 3) = a6;
  *(v18 + 4) = a4;
  (*(v11 + 32))(&v18[v17], v15, v10);
  aBlock[4] = partial apply for closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  aBlock[3] = &block_descriptor_63;
  v19 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(v20, v21, v16, v19);
  _Block_release(v19);
}

uint64_t closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v25 - v17;
  type metadata accessor for SendableXPCObj();
  v19 = swift_unknownObjectRetain();
  v20 = SendableXPCObj.__allocating_init(_:)(v19);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  (*(v9 + 16))(v13, a3, v8);
  v22 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a4;
  *(v23 + 5) = a5;
  *(v23 + 6) = v26;
  *(v23 + 7) = v20;
  (*(v9 + 32))(&v23[v22], v13, v8);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), v23);
}

uint64_t closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  v9 = type metadata accessor for Result();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)()
{
  v1 = v0[2];
  v0[12] = *(v0[3] + OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value);
  v2 = (*v1 + 224) & 0xFFFFFFFFFFFFLL | 0x7051000000000000;
  v0[13] = *(*v1 + 224);
  v0[14] = v2;
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), v4, v3);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2(v4, v6, v6, AssociatedConformanceWitness);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  (*(v3 + 16))(v0[10], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  outlined init with copy of CryptexPersonalizationService?(a3, v28 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of CryptexPersonalizationService?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      outlined destroy of CryptexPersonalizationService?(a3, &_sScPSgMd, &_sScPSgMR);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CryptexPersonalizationService?(a3, &_sScPSgMd, &_sScPSgMR);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t CryptexLocalDevice.uninstallCryptex(withName:version:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = *a3;
  *(v5 + 40) = v4;
  *(v5 + 48) = v6;
  *(v5 + 56) = *a4;
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexLocalDevice.uninstallCryptex(withName:version:options:), v7, v8);
}

uint64_t CryptexLocalDevice.uninstallCryptex(withName:version:options:)()
{
  v26 = v0;
  v25[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  LOBYTE(v25[0]) = *(v0 + 56);
  OpaquePointer.init(from:)(v25);
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  if (v1)
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v25[0] = *(v0 + 48);
    CryptexVersion.description.getter();
    v6 = v5;
    String.utf8CString.getter();
    if (v6)
    {
      String.utf8CString.getter();
    }
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    String.utf8CString.getter();
  }

  v9 = cryptex_uninstall();
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = *(v0 + 8);
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *v2;
    if (*v2)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef);
      v13 = swift_allocError();
      *v14 = v12;
    }

    else
    {
      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError);
      v13 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v15 = *(v0 + 40);
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2260DF000, v17, v18, "Failed to uninstall cryptex: %@", v19, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v20, -1, -1);
      MEMORY[0x22AA75CB0](v19, -1, -1);
    }

    swift_willThrow();
    v10 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];
  }

  return v10();
}

uint64_t CryptexLocalDevice.lockdown()()
{
  v1[2] = v0;
  v2 = type metadata accessor for POSIXError();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.lockdown(), v6, v5);
}

{
  if (cryptex_lockdown())
  {
    v1 = POSIXErrorCode.init(rawValue:)();
    if ((v1 & 0x100000000) != 0)
    {
      LODWORD(v1) = static POSIXErrorCode.ELAST.getter();
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    *(v0 + 56) = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, 255, MEMORY[0x277CC8658]);
    _BridgedStoredNSError.init(_:userInfo:)();
    (*(v5 + 16))(v3, v2, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    if (v9)
    {
      v28 = *(v0 + 24);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      POSIXError._nsError.getter();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = *(v11 + 8);
      v16(v10, v28);
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_2260DF000, v7, v8, "Failed to lockdown cryptexes: %@", v13, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v14, -1, -1);
      MEMORY[0x22AA75CB0](v13, -1, -1);
    }

    else
    {

      v16 = *(v11 + 8);
      v16(v10, v12);
    }

    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 24);
    POSIXError._nsError.getter();
    swift_willThrow();
    v16(v25, v26);

    v23 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 16) + OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_logger;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2260DF000, v18, v19, "Successfully locked down cryptexes", v20, 2u);
      MEMORY[0x22AA75CB0](v20, -1, -1);
    }

    v22 = *(v0 + 40);
    v21 = *(v0 + 48);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t CryptexLocalDevice.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CryptexLocalDevice.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t protocol witness for CryptexDevice.readIdentity() in conformance CryptexLocalDevice(uint64_t a1)
{
  v4 = *(**v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v8(a1);
}

uint64_t protocol witness for CryptexDevice.readNonce(options:) in conformance CryptexLocalDevice(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2);
}

uint64_t CryptexRemoteDevice.readNonce(options:)()
{
  type metadata accessor for CryptexRemoteDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexRemoteDevice and conformance CryptexRemoteDevice, v0, type metadata accessor for CryptexRemoteDevice);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexRemoteDevice.readNonce(options:), v2, v1);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

void CryptexRemoteDevice.__allocating_init(udid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a3;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v15[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v8, *MEMORY[0x277D85268], v3);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void CryptexRemoteDevice.init(udid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  *&v22[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v8, *MEMORY[0x277D85268], v20);
  *(v3 + 16) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _s10CryptexKit0A8IdentityVSgWOi0_(v22);
  v15 = v22[4];
  *(v3 + 104) = v22[5];
  v16 = v22[7];
  *(v3 + 120) = v22[6];
  *(v3 + 136) = v16;
  *(v3 + 152) = v22[8];
  v17 = v22[0];
  *(v3 + 40) = v22[1];
  v18 = v22[3];
  *(v3 + 56) = v22[2];
  *(v3 + 72) = v18;
  *(v3 + 88) = v15;
  *(v3 + 24) = v17;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CryptexRemoteDevice.readIdentity()(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  type metadata accessor for CryptexRemoteDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexRemoteDevice and conformance CryptexRemoteDevice, v3, type metadata accessor for CryptexRemoteDevice);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexRemoteDevice.readIdentity(), v5, v4);
}

uint64_t CryptexRemoteDevice.readIdentity()()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = *(v1 + 24);
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v4 = *(v1 + 40);
  *(v0 + 64) = *(v1 + 72);
  *(v0 + 80) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v2;
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v7 = *(v1 + 104);
  *(v0 + 128) = *(v1 + 136);
  *(v0 + 144) = v6;
  *(v0 + 96) = v7;
  *(v0 + 112) = v5;
  if (_s10CryptexKit0A8IdentityVSgWOg(v0 + 16) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v9 = *(v0 + 160);
  *v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v12 = *(v0 + 80);
  v9[3] = *(v0 + 64);
  v9[4] = v12;
  v9[1] = v10;
  v9[2] = v11;
  v13 = *(v0 + 96);
  v14 = *(v0 + 112);
  v15 = *(v0 + 144);
  v9[7] = *(v0 + 128);
  v9[8] = v15;
  v9[5] = v13;
  v9[6] = v14;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t CryptexRemoteDevice.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t protocol witness for CryptexDevice.readIdentity() in conformance CryptexRemoteDevice(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for CryptexDevice.readIdentity() in conformance CryptexRemoteDevice;

  return v8(a1);
}

uint64_t protocol witness for CryptexDevice.readIdentity() in conformance CryptexRemoteDevice()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for CryptexDevice.readNonce(options:) in conformance CryptexRemoteDevice(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of CryptexSigningService(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10CryptexKit0D4InfoVGMd, &_ss23_ContiguousArrayStorageCy10CryptexKit0D4InfoVGMR);
  v10 = *(type metadata accessor for CryptexInfo() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CryptexInfo() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathV9ComponentVGMR);
  v10 = *(type metadata accessor for FilePath.Component() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FilePath.Component() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CryptexPersonalizationService?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with take of CryptexInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Response(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of Response(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CryptexError and conformance CryptexError(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10CryptexKit0A8IdentityVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of CryptexDevice.readIdentity()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CryptexDevice.readNonce(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata completion function for CryptexLocalDevice()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CryptexLocalDevice.readNonce(options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of CryptexLocalDevice.inventoryConn()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of CryptexLocalDevice.inventoryConn();

  return v6();
}

uint64_t dispatch thunk of CryptexLocalDevice.inventoryConn()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CryptexLocalDevice.readIdentity()(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1);
}

uint64_t dispatch thunk of CryptexLocalDevice.trust(signingService:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of CryptexLocalDevice.getInstalledCryptexes()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of CryptexLocalDevice.getInstalledCryptexes();

  return v6();
}

uint64_t dispatch thunk of CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 232);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CryptexLocalDevice.uninstallCryptex(withName:version:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 240);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CryptexLocalDevice.lockdown()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v6();
}

uint64_t dispatch thunk of CryptexRemoteDevice.readNonce(options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of CryptexRemoteDevice.readIdentity()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1);
}

uint64_t partial apply for closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = *(type metadata accessor for CheckedContinuation() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(a1, v6, v7, v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)()
{
  v3 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(v8, v9, v10, v6, v7, v0 + v5, v3, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in CryptexLocalDevice.inventoryConn()(void *a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in CryptexLocalDevice.inventoryConn()(a1, a2);
}

uint64_t CryptexAssetType.name.getter()
{
  v1 = *v0;
  v2 = 0x616D69206B736964;
  v3 = 0x6163207473757274;
  v4 = 0x7420346567616D69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x696C702E6F666E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t CryptexAssetType.fileName.getter()
{
  v1 = *v0;
  v2 = 1735222375;
  v3 = 1684239463;
  v4 = 1832152425;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1986491495;
  if (v1 != 1)
  {
    v5 = 1718511975;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void CryptexAssetType.rawAssetType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = MEMORY[0x277D82958];
    }

    else
    {
      if (v2 != 4)
      {
        v6 = 0;
        v4 = xmmword_226114090;
        v5 = 0uLL;
        v7 = 0uLL;
        goto LABEL_12;
      }

      v3 = MEMORY[0x277D82968];
    }
  }

  else if (*v1)
  {
    if (v2 == 1)
    {
      v3 = MEMORY[0x277D82960];
    }

    else
    {
      v3 = MEMORY[0x277D82950];
    }
  }

  else
  {
    v3 = MEMORY[0x277D82948];
  }

  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
LABEL_12:
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

CryptexKit::CryptexAssetType_optional __swiftcall CryptexAssetType.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x67616D496B736964 && stringValue._object == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6148656D756C6F76 && object == 0xEA00000000006873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x73696C506F666E69 && object == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6361437473757274 && object == 0xEA00000000006568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x6954346567616D69 && object == 0xEC00000074656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x8000000226116A40 == object)
  {

    v7 = 5;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

Swift::Int CryptexAssetType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t CryptexAssetType.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x67616D496B736964;
  v3 = 0x6361437473757274;
  v4 = 0x6954346567616D69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6148656D756C6F76;
  if (v1 != 1)
  {
    v5 = 0x73696C506F666E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CryptexAssetType()
{
  v1 = *v0;
  v2 = 0x67616D496B736964;
  v3 = 0x6361437473757274;
  v4 = 0x6954346567616D69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6148656D756C6F76;
  if (v1 != 1)
  {
    v5 = 0x73696C506F666E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CryptexAssetType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CryptexAssetType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CryptexAsset.__allocating_init(type:file:)(_BYTE *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LOBYTE(a1) = *a1;
  Logger.init(category:)(0x4178657470797243, 0xEC00000074657373);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t CryptexAsset.init(type:file:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  Logger.init(category:)(0x4178657470797243, 0xEC00000074657373);
  *(v2 + 16) = v4;
  *(v2 + 24) = a2;
  return v2;
}

id CryptexAsset.data.getter()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = v0[3];
  v15[0] = 0;
  if (![v2 seekToOffset:0 error:v15])
  {
    v5 = v15[0];
    _convertNSErrorToError(_:)();

LABEL_7:
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = v0;
  v4 = v15[0];
  v5 = v2;
  v6 = NSFileHandle.readToEnd()();
  if (!v1)
  {
    v5 = v6;
    v8 = v7;
    v15[0] = 0;
    v9 = [v2 seekToOffset:0 error:v15];
    v10 = v15[0];
    if (!v9)
    {
      v13 = v15[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v5, v8);
      goto LABEL_8;
    }

    if (v8 >> 60 != 15)
    {
      v14 = v15[0];
      goto LABEL_8;
    }

    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    v5 = v3;
    (*(*v3 + 120))(v10);
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t CryptexAsset.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = swift_slowAlloc();
  if (MEMORY[0x22AA74A40]([*(v2 + 24) fileDescriptor], 50, v4))
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v17 = *(v2 + 16);
      lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2260DF000, v5, v6, "Failed to get path for asset of type %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AA75CB0](v8, -1, -1);
      MEMORY[0x22AA75CB0](v7, -1, -1);
    }

    v12 = type metadata accessor for FilePath();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v14 = String.init(cString:)();
    MEMORY[0x22AA74B40](v14);
    v15 = type metadata accessor for FilePath();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 0, 1, v15);
  }
}

uint64_t CryptexAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for FilePath();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v27 - v23;
  (*(*v1 + 120))(v22);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of FilePath?(v13);
    v25 = type metadata accessor for URL();
    return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }

  else
  {
    (*(v15 + 32))(v24, v13, v14);
    (*(v15 + 16))(v20, v24, v14);
    (*(v4 + 104))(v8, *MEMORY[0x277CC91D8], v3);
    URL.init(filePath:directoryHint:)(v20, v8, a1);
    return (*(v15 + 8))(v24, v14);
  }
}

uint64_t URL.init(filePath:directoryHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v32 = v29 - v8;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FilePath();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  (*(v16 + 16))(v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v20 = String.init(validating:)();
  if (v21)
  {
    v22 = *(v10 + 16);
    v29[1] = v20;
    v31 = v9;
    v22(v14, a2, v9);
    v23 = type metadata accessor for URL();
    v29[0] = a2;
    v24 = v23;
    v25 = *(*(v23 - 8) + 56);
    v30 = a1;
    v26 = v33;
    v25(v32, 1, 1, v23);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v10 + 8))(v29[0], v31);
    (*(v16 + 8))(v30, v15);
    return (v25)(v26, 0, 1, v24);
  }

  else
  {
    (*(v10 + 8))(a2, v9);
    (*(v16 + 8))(a1, v15);
    v28 = type metadata accessor for URL();
    return (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  }
}

uint64_t CryptexAsset.deinit()
{
  v1 = OBJC_IVAR____TtC10CryptexKit12CryptexAsset_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CryptexAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10CryptexKit12CryptexAsset_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type CryptexError and conformance CryptexError()
{
  result = lazy protocol witness table cache variable for type CryptexError and conformance CryptexError;
  if (!lazy protocol witness table cache variable for type CryptexError and conformance CryptexError)
  {
    type metadata accessor for CryptexError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexError and conformance CryptexError);
  }

  return result;
}

uint64_t outlined destroy of FilePath?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [CryptexAssetType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CryptexAssetType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CryptexAssetType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10CryptexKit0A9AssetTypeOGMd, &_sSay10CryptexKit0A9AssetTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CryptexAssetType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexAssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexAssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for CryptexAsset()
{
  result = type metadata singleton initialization cache for CryptexAsset;
  if (!type metadata singleton initialization cache for CryptexAsset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CryptexAsset()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CryptexType.init(type:subtype:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Bool __swiftcall CryptexType.isPackage()()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for packageContent != -1)
  {
    swift_once();
  }

  v3 = 3;
  if (!packageContent)
  {
    v3 = 0;
  }

  v4 = 6;
  if (!packageContent)
  {
    v4 = 0;
  }

  return v1 == v3 && v2 == v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptexType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t key path getter for static Errno.current : Errno.Type@<X0>(_DWORD *a1@<X8>)
{
  result = MEMORY[0x22AA74A20]();
  *a1 = result;
  return result;
}

uint64_t valueOrErrno<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = *(a3 + 8);
  v8 = *(v7[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v29 = -1;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v18 = *(v7[2] + 8);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = (*(v13 + 8))(v17, a2);
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v28 = a4;
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v21)
    {
      if (v22 > 64)
      {
        v29 = -1;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v23 = *(v7[2] + 8);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = (*(v13 + 8))(v17, a2);
        a4 = v28;
        if (v24)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v25 = *(v7[4] + 8);
      v26 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*(v13 + 8))(v17, a2);
      a4 = v28;
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a4 = v28;
      if (v22 >= 64)
      {
        goto LABEL_13;
      }
    }
  }

  v20 = dispatch thunk of BinaryInteger._lowWord.getter();
  if (v20 == -1)
  {
LABEL_14:
    *a4 = MEMORY[0x22AA74A20](v20);
    lazy protocol witness table accessor for type Errno and conformance Errno();
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_13:
  (*(v13 + 16))(a4, a1, a2);
  lazy protocol witness table accessor for type Errno and conformance Errno();
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t nothingOrErrno<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Errno and conformance Errno();
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v13[-v10];
  valueOrErrno<A>(_:)(a1, a2, a3, &v13[-v10]);
  v14 = a2;
  v15 = a3;
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(protocol witness for Request.checkEntitlement(entitlements:) in conformance RequestTestError, v13, v6, &v16);
  (*(v7 + 8))(v11, v6);
  return v16 | (v17 << 32);
}

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3[3] - 8) + 32))(a4, v17, a3[3]);
  }

  else
  {
    (*(v8 + 32))(v12, v17, v7);
    a1(v12);
    (*(v8 + 8))(v12, v7);
    v20 = a3[3];
  }

  v21 = a3[4];
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t valueOrErrno<A>(retryOnInterrupt:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v8 = a1;
  v22 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Errno and conformance Errno();
  v13 = type metadata accessor for Result();
  v14 = *(*(v13 - 8) + 64);
  EnumCaseMultiPayload = MEMORY[0x28223BE20](v13, v15);
  v18 = (&v21 - v17);
  while (1)
  {
    a2(EnumCaseMultiPayload);
    valueOrErrno<A>(_:)(v12, a3, a4, v18);
    (*(v9 + 8))(v12, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v19 = *v18;
    if ((v8 & 1) == 0 || v19 != 4)
    {
      *v22 = v19;
      return swift_storeEnumTagMultiPayload();
    }
  }

  (*(v9 + 32))(v22, v18, a3);
  return swift_storeEnumTagMultiPayload();
}

unint64_t nothingOrErrno<A>(retryOnInterrupt:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  lazy protocol witness table accessor for type Errno and conformance Errno();
  v9 = type metadata accessor for Result();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v16[-v13];
  valueOrErrno<A>(retryOnInterrupt:_:)(a1, a2, a4, a5, &v16[-v13]);
  v17 = a4;
  v18 = a5;
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(protocol witness for Request.checkEntitlement(entitlements:) in conformance RequestTestError, v16, v9, &v19);
  (*(v10 + 8))(v14, v9);
  return v19 | (v20 << 32);
}

uint64_t cryptex_signing_service_flags_t.init(from:)(unsigned __int8 *a1)
{
  v1 = *a1;
  outlined destroy of CryptexTrustOptions(a1);
  return v1;
}

uint64_t outlined destroy of CryptexTrustOptions(uint64_t a1)
{
  v2 = type metadata accessor for CryptexTrustOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

xpc_object_t String.asXPC()()
{
  v0 = String.utf8CString.getter();
  v1 = xpc_string_create((v0 + 32));

  return v1;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance String@<X0>(Swift::String *a1@<X8>)
{
  swift_getObjectType();
  v3 = OS_xpc_object.string()();
  result = v3._countAndFlagsBits;
  if (!v4)
  {
    *a1 = v3;
  }

  return result;
}

xpc_object_t protocol witness for XpcCodable.asXPC() in conformance String()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = String.utf8CString.getter();
  v4 = xpc_string_create((v3 + 32));

  return v4;
}

uint64_t CryptexVersion.description.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = (*v0 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *v2++;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v11 = BidirectionalCollection<>.joined(separator:)();

  return v11;
}

CryptexKit::CryptexVersion_optional __swiftcall CryptexVersion.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *(a1._rawValue + 2);
  if (v3 > 5 || !v3)
  {

    a1._rawValue = 0;
  }

  v2->_rawValue = a1._rawValue;
  result.value.components = a1;
  result.is_nil = v4;
  return result;
}

CryptexKit::CryptexVersion_optional __swiftcall CryptexVersion.init(_:)(Swift::String a1)
{
  v2 = v1;
  v32 = 46;
  v33 = 0xE100000000000000;
  v30 = &v32;
  isUniquelyReferenced_nonNull_native = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(4, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v29, a1._countAndFlagsBits, a1._object, &v32);
  v5 = isUniquelyReferenced_nonNull_native;
  v6 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (isUniquelyReferenced_nonNull_native + 56);
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v5 + 16))
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      if (!((v11 ^ v10) >> 14))
      {
        goto LABEL_24;
      }

      v12 = *(v8 - 1);
      v13 = *v8;
      if ((*v8 & 0x1000000000000000) != 0)
      {
        v19 = *v8;
        v20 = *(v8 - 2);
        v21 = *(v8 - 3);
        v27 = *(v8 - 1);

        v15 = specialized _parseInteger<A, B>(ascii:radix:)(v21, v20, v27, v19, 10);
        LOBYTE(v21) = v22;

        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v32 = *(v8 - 1);
          v33 = v13 & 0xFFFFFFFFFFFFFFLL;
          v14 = &v32;
        }

        else if ((v12 & 0x1000000000000000) != 0)
        {
          v14 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v28 = *(v8 - 3);
          v23 = *v8;
          v24 = *(v8 - 2);
          v25 = *(v8 - 1);
          v14 = _StringObject.sharedUTF8.getter();
          v12 = v25;
          v10 = v28;
          v11 = v24;
          v13 = v23;
        }

        v15 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Su_SsTG5SiTf1nnc_nTf4xnn_n(v14, v10, v11, v12, v13, 10);
        v31 = v16 & 1;
        if (v16)
        {
LABEL_24:

          goto LABEL_25;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      ++v7;
      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = v15;
      v8 += 4;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_21:

    v26 = *(v9 + 16);
    if (v26 >= 6 || !v26)
    {
LABEL_25:

      v9 = 0;
    }

    *v2 = v9;
  }

  result.value.components._rawValue = isUniquelyReferenced_nonNull_native;
  result.is_nil = v4;
  return result;
}

uint64_t static CryptexVersion.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSu_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}