id cryptoLog()
{
  if (cryptoLog_onceToken[0] != -1)
  {
    cryptoLog_cold_1();
  }

  v1 = cryptoLog_cryptoLog;

  return v1;
}

uint64_t __cryptoLog_block_invoke()
{
  cryptoLog_cryptoLog = os_log_create("com.apple.cosmo", "Crypto");

  return MEMORY[0x2821F96F8]();
}

SecKeyRef createKeyPair(void *a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC018];
  v11[0] = *MEMORY[0x277CDC028];
  v11[1] = v3;
  v12[0] = a1;
  v4 = MEMORY[0x277CCABB0];
  v5 = a1;
  v6 = [v4 numberWithUnsignedInteger:a2];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  RandomKey = SecKeyCreateRandomKey(v7, 0);
  v9 = *MEMORY[0x277D85DE8];
  return RandomKey;
}

sec_identity_t secIdentityFromKeyPair(__SecKey *a1)
{
  v1 = a1;
  v2 = SecKeyCopyPublicKey(a1);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (v2)
  {
    CFRelease(v2);
  }

  if (SelfSignedCertificate)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = SecIdentityCreate();
    CFRelease(SelfSignedCertificate);
    if (v5)
    {
      v1 = sec_identity_create(v5);
      CFRelease(v5);
      if (!v1)
      {
        v6 = cryptoLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          secIdentityFromKeyPair_cold_1();
        }
      }

      goto LABEL_17;
    }

    v8 = cryptoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      secIdentityFromKeyPair_cold_2();
    }

LABEL_16:
    v1 = 0;
    goto LABEL_17;
  }

  v7 = cryptoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    secIdentityFromKeyPair_cold_3();
  }

  if (v1)
  {
    CFRelease(v1);
    goto LABEL_16;
  }

LABEL_17:

  return v1;
}

__SecKey *secIdentity(void *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC018];
  v18[0] = *MEMORY[0x277CDC028];
  v18[1] = v3;
  v19[0] = a1;
  v4 = MEMORY[0x277CCABB0];
  v5 = a1;
  v6 = [v4 numberWithUnsignedInteger:a2];
  v19[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  RandomKey = SecKeyCreateRandomKey(v7, 0);
  v9 = SecKeyCopyPublicKey(RandomKey);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (v9)
  {
    CFRelease(v9);
  }

  if (SelfSignedCertificate)
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = SecIdentityCreate();
    CFRelease(SelfSignedCertificate);
    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v12)
    {
      RandomKey = sec_identity_create(v12);
      CFRelease(v12);
      if (!RandomKey)
      {
        v13 = cryptoLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          secIdentityFromKeyPair_cold_1();
        }
      }

      goto LABEL_19;
    }

    v15 = cryptoLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      secIdentityFromKeyPair_cold_2();
    }

LABEL_18:
    RandomKey = 0;
    goto LABEL_19;
  }

  v14 = cryptoLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    secIdentityFromKeyPair_cold_3();
  }

  if (RandomKey)
  {
    CFRelease(RandomKey);
    goto LABEL_18;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];

  return RandomKey;
}

id publicKeyFromIdentity(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = sec_identity_copy_ref(v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_17;
  }

  privateKeyRef = 0;
  v5 = SecIdentityCopyPrivateKey(v3, &privateKeyRef);
  CFRelease(v4);
  if (v5)
  {
    if (privateKeyRef)
    {
      CFRelease(privateKeyRef);
      privateKeyRef = 0;
    }

    v6 = cryptoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      publicKeyFromIdentity_cold_1();
    }
  }

  if (!privateKeyRef)
  {
    goto LABEL_16;
  }

  v7 = SecKeyCopyPublicKey(privateKeyRef);
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
    privateKeyRef = 0;
  }

  if (v7)
  {
    v4 = SecKeyCopySubjectPublicKeyInfo();
    CFRelease(v7);
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
LABEL_16:
    v4 = 0;
  }

LABEL_17:

  return v4;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t TransferHost.State.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD00000000000001ALL;
    v8 = 0x676E6970706F7473;
    if (v1 != 10)
    {
      v8 = 0x646570706F7473;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000017;
    if (v1 == 7)
    {
      v9 = 0xD000000000000021;
    }

    if (v1 == 6)
    {
      v9 = 0xD00000000000001ELL;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6C616974696E69;
    v3 = 0xD000000000000015;
    v4 = 0xD000000000000017;
    if (v1 != 4)
    {
      v4 = 0xD000000000000015;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000001CLL;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001FLL;
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
}

uint64_t TransferHost.State.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t sub_247D57D58()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t sub_247D57DCC()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

double TransferHost.config.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_247D57E88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_247D57ED8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_247D57F30()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t TransferHost.__allocating_init(delegate:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0x3FF0000000000000;
  v6 = type metadata accessor for TransferHost();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  TransferHost.init(delegate:config:queue:)(a1, a2, &v11, a3);
  return v9;
}

uint64_t TransferHost.__allocating_init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TransferHost.init(delegate:config:queue:)(a1, a2, a3, a4);
  return v11;
}

uint64_t TransferHost.init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26 = a2;
  v7 = sub_247DD2F6C();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD2F3C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_247DD2A2C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *a3;
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 49) = 12;
  v25 = xmmword_247DD3EC0;
  *(v4 + 56) = xmmword_247DD3EC0;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0;
  v15 = OBJC_IVAR____TtC5Cosmo12TransferHost_attestationServiceUUID;
  v16 = sub_247DD225C();
  v17 = *(*(v16 - 8) + 56);
  v17(v4 + v15, 1, 1, v16);
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm) = v25;
  v18 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor;
  v19 = type metadata accessor for NetworkDescriptor();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost) = 0;
  v17(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferServiceUUID, 1, 1, v16);
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount) = 0;
  swift_beginAccess();
  *(v4 + 40) = v26;
  swift_unknownObjectWeakAssign();
  *(v4 + 24) = v14;
  if (!a4)
  {
    sub_247D6A0F4();
    sub_247DD2A1C();
    v27 = MEMORY[0x277D84F90];
    sub_247D6A33C(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v23 + 104))(v22, *MEMORY[0x277D85260], v24);
    a4 = sub_247DD2F8C();
  }

  swift_unknownObjectRelease();
  *(v4 + 16) = a4;
  *(v4 + 48) = 0;
  return v4;
}

void sub_247D58468(char *a1)
{
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *(v1 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v2 = *(v1 + 48);
    *(v1 + 48) = v9;
    if (qword_27EE73298 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B920);
  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315394;
    v23[7] = v2;
    v17 = TransferHost.State.description.getter();
    v19 = sub_247D72868(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v23[6] = v9;
    v20 = TransferHost.State.description.getter();
    v22 = sub_247D72868(v20, v21, &v24);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_247D56000, v13, v14, "[State] Updated, old-state='%s' new-state='%s'", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }
}

uint64_t TransferHost.deinit()
{
  sub_247D6A1D0(v0 + 32);
  sub_247D6A25C(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  sub_247D6A24C(*(v0 + 80));
  v3 = *(v0 + 104);
  sub_247D6A24C(*(v0 + 96));
  v4 = *(v0 + 120);
  sub_247D6A24C(*(v0 + 112));
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationServiceUUID, &qword_27EE733A8, &unk_247DD61B0);
  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover);

  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm), *(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8));
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor, &unk_27EE733B0, &unk_247DD3F80);
  v6 = *(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost);

  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferServiceUUID, &qword_27EE733A8, &unk_247DD61B0);
  v7 = *(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);

  return v0;
}

uint64_t TransferHost.__deallocating_deinit()
{
  TransferHost.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t TransferHost.start(onStart:)(uint64_t a1, uint64_t a2)
{
  static SharedSecret.accV2Compatible(protocolVersion:)(2, v7);
  v4 = v7[0];
  v5 = v7[1];
  TransferHost.start(secret:onStart:)(v7, a1, a2);

  return sub_247D6A1F8(v4, v5);
}

uint64_t TransferHost.start(secret:onStart:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A0C();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2A2C();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = *(v4 + 16);
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = v16;
  v19[6] = v17;
  aBlock[4] = sub_247D6A2B8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);

  sub_247D6A2E8(v16, v17);
  sub_247DD2A1C();
  v25 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v20);
  _Block_release(v20);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

void sub_247D58BAC(uint64_t a1, void (*a2)(uint64_t **), uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v10 = sub_247DD225C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v68 - v17;
  v19 = *(a1 + 48);
  if (v19 == 11 || v19 == 0)
  {
    v70 = v14;
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    *(a1 + 56) = a4;
    *(a1 + 64) = a5;
    sub_247D6A2E8(a4, a5);
    sub_247D6A25C(v21, v22);
    v23 = *(a1 + 112);
    v24 = *(a1 + 120);
    *(a1 + 112) = a2;
    *(a1 + 120) = a3;

    sub_247D6A24C(v23);
    v77[0] = a4;
    v77[1] = a5;
    SharedSecret.advertisementIdentifer.getter(v18);
    v71 = v11;
    (*(v11 + 56))(v18, 0, 1, v10);
    v25 = OBJC_IVAR____TtC5Cosmo12TransferHost_attestationServiceUUID;
    swift_beginAccess();
    sub_247D6B4B4(v18, a1 + v25, &qword_27EE733A8, &unk_247DD61B0);
    swift_endAccess();
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v26 = sub_247DD23CC();
    v27 = __swift_project_value_buffer(v26, qword_27EE7B920);
    sub_247D6A2E8(a4, a5);
    v28 = sub_247DD23AC();
    v29 = sub_247DD2F2C();
    sub_247D6A1F8(a4, a5);
    if (os_log_type_enabled(v28, v29))
    {
      v68[1] = v27;
      v69 = v10;
      v30 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      v77[0] = v68[0];
      *v30 = 136315394;
      v31 = sub_247D94008(a4, a5);
      v33 = v32;
      v34 = sub_247DD2D8C();
      if (v34)
      {
        v35 = v34;
        v36 = sub_247D993D8(v34, 0);

        v37 = sub_247D99310(&v73, v36 + 4, v35, v31, v33);

        if (v37 != v35)
        {
          __break(1u);
          return;
        }
      }

      else
      {

        v36 = MEMORY[0x277D84F90];
      }

      v48 = v36[2];
      v49 = v48 - 5;
      if (v48 < 5)
      {
        v49 = 0;
      }

      v73 = v36;
      v74 = v36 + 4;
      v75 = v49;
      v76 = (2 * v48) | 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F80, &unk_247DD65B0);
      sub_247D6AE30(&qword_27EE73520, &unk_27EE73F80, &unk_247DD65B0);
      v50 = sub_247DD2E3C();
      v52 = sub_247D72868(v50, v51, v77);

      *(v30 + 4) = v52;
      *(v30 + 12) = 2080;
      v73 = a4;
      v74 = a5;
      v53 = SharedSecret.protocolVersion.getter();
      if ((v53 & 0x100) != 0)
      {
        v56 = 0xE300000000000000;
        v54 = 7104878;
      }

      else
      {
        v72 = v53;
        v54 = sub_247DD2CFC();
        v56 = v55;
      }

      v10 = v69;
      v57 = sub_247D72868(v54, v56, v77);

      *(v30 + 14) = v57;
      _os_log_impl(&dword_247D56000, v28, v29, "[Start] Using shared-secret=%s, protocol-version=%s", v30, 0x16u);
      v58 = v68[0];
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v58, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
    }

    else
    {
    }

    sub_247D6A2E8(a4, a5);
    v59 = sub_247DD23AC();
    v60 = sub_247DD2F2C();
    sub_247D6A1F8(a4, a5);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v77[0] = v62;
      *v61 = 136315138;
      v73 = a4;
      v74 = a5;
      v63 = v70;
      SharedSecret.advertisementIdentifer.getter(v70);
      sub_247D6A33C(&unk_27EE73510, MEMORY[0x277CC95F0]);
      v64 = sub_247DD321C();
      v66 = v65;
      (*(v71 + 8))(v63, v10);
      v67 = sub_247D72868(v64, v66, v77);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_247D56000, v59, v60, "[Start] Starting attestation-host with Bonjour attestationServiceUUID=%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x24C1BAF60](v62, -1, -1);
      MEMORY[0x24C1BAF60](v61, -1, -1);
    }

    sub_247D592FC();
  }

  else
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v38 = sub_247DD23CC();
    __swift_project_value_buffer(v38, qword_27EE7B920);

    v39 = sub_247DD23AC();
    v40 = sub_247DD2F2C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v42;
      *v41 = 136315138;
      LOBYTE(v77[0]) = *(a1 + 48);
      v43 = TransferHost.State.description.getter();
      v45 = sub_247D72868(v43, v44, &v73);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_247D56000, v39, v40, "[Start] Must be invoked while in the initial or stopped, state=%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x24C1BAF60](v42, -1, -1);
      MEMORY[0x24C1BAF60](v41, -1, -1);
    }

    sub_247D6ADD0();
    v46 = swift_allocError();
    *v47 = xmmword_247DD3ED0;
    v73 = v46;
    v74 = 0;
    LOBYTE(v75) = 1;
    a2(&v73);
    sub_247D6AE24(v73, v74, v75);
  }
}

uint64_t sub_247D592FC()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = (&v41 - v7);
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v0[2];
  *v12 = v13;
  v14 = v9[13];
  v46 = *MEMORY[0x277D85200];
  v45 = v14;
  v14(v12);
  v15 = v13;
  v16 = sub_247DD2ADC();
  v48 = v9[1];
  result = v48(v12, v8);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v18 = v1[8];
  if (v18 >> 60 == 15)
  {
    return result;
  }

  v44 = v9 + 13;
  v19 = v1[7];
  v20 = v47;
  *v47 = v19;
  v20[1] = v18;
  *(v20 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v43 = "Client called stop()";
  sub_247D6BA04(v20, v6, type metadata accessor for NetworkDescriptor);
  v21 = type metadata accessor for CosmoSerialChannelHost();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v15;
  sub_247D6B278(v19, v18);
  v25 = v24;
  v41 = v19;
  v42 = v18;
  sub_247D6B278(v19, v18);
  v26 = sub_247DBE028(0xD000000000000010, v43 | 0x8000000000000000, v6, v15);

  v27 = v1[9];
  v1[9] = v26;

  v28 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v30 = v26[2];
  v29 = v26[3];
  v26[2] = sub_247D6AE78;
  v26[3] = v28;

  sub_247D6A24C(v30);

  sub_247D59D90();
  sub_247D59F80();
  *v12 = v25;
  v31 = v46;
  v32 = v45;
  v45(v12, v46, v8);
  v33 = v25;
  LOBYTE(v26) = sub_247DD2ADC();
  result = v48(v12, v8);
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v1[9])
  {
    v34 = swift_allocObject();
    swift_weakInit();

    sub_247D63E18(sub_247D6AEB8, v34, &unk_2859E3F38, sub_247D6AEC4, &block_descriptor_106);
  }

  *v12 = v33;
  v32(v12, v31, v8);
  v35 = v33;
  v36 = sub_247DD2ADC();
  result = v48(v12, v8);
  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v1[9])
  {
    v37 = swift_allocObject();
    swift_weakInit();

    sub_247D63E18(sub_247D6AEB0, v37, &unk_2859E4000, sub_247D6B110, &block_descriptor_121);
  }

  *v12 = v35;
  v32(v12, v31, v8);
  v38 = sub_247DD2ADC();
  result = v48(v12, v8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v1[9])
  {
    v39 = swift_allocObject();
    swift_weakInit();

    sub_247D63E18(sub_247D6AEA8, v39, &unk_2859E40C8, sub_247D6B28C, &block_descriptor_137);
  }

  v49 = 1;
  sub_247D58468(&v49);
  if (v1[9])
  {
    v40 = v1[9];

    sub_247DBBA48();
  }

  sub_247D6A25C(v41, v42);
  return sub_247D6B998(v47, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247D598D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_247D59918(char *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_8;
  }

  if (!*(v2 + 72))
  {
    return;
  }

  v12 = *(v2 + 48);
  if (v12 <= 9)
  {
    if (v9)
    {
      if (v12 == 1)
      {
        LOBYTE(v36) = 2;
        sub_247D5A170(&v36, 0xD00000000000001CLL, 0x8000000247DD8D60);
      }
    }

    else
    {
      v21 = *(v2 + 64);
      if (v21 >> 60 == 15)
      {
        if (qword_27EE73298 != -1)
        {
          swift_once();
        }

        v22 = sub_247DD23CC();
        __swift_project_value_buffer(v22, qword_27EE7B920);
        v23 = sub_247DD23AC();
        v24 = sub_247DD2F0C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_247D56000, v23, v24, "Unexpected, attestation-host ready, but no shared-secret found", v25, 2u);
          MEMORY[0x24C1BAF60](v25, -1, -1);
        }

        v26 = *(v2 + 112);
        if (v26)
        {
          v27 = *(v2 + 120);
          sub_247D6ADD0();
          v28 = swift_allocError();
          *v29 = 0xD000000000000014;
          v29[1] = 0x8000000247DD8D80;
          v36 = v28;
          v37 = 0;
          v38 = 1;

          v26(&v36);
          sub_247D6A24C(v26);
          sub_247D6AE24(v36, v37, v38);
        }
      }

      else
      {
        v30 = *(v2 + 56);
        LOBYTE(v36) = 2;
        sub_247D6A2E8(v30, v21);
        sub_247D58468(&v36);
        v31 = *(v2 + 112);
        if (v31)
        {
          v32 = *(v2 + 120);
          v36 = v30;
          v37 = v21;
          v38 = 0;
          sub_247D6B278(v30, v21);
          sub_247D6ACFC(v31);
          v31(&v36);
          sub_247D6A24C(v31);
          sub_247D6A25C(v30, v21);
          sub_247D6AE24(v36, v37, v38);
        }

        else
        {
          sub_247D6A25C(v30, v21);
        }

        v33 = *(v2 + 112);
        v34 = *(v2 + 120);
        *(v2 + 112) = 0;
        *(v2 + 120) = 0;
        sub_247D6A24C(v33);
      }
    }

    return;
  }

  if (qword_27EE73298 != -1)
  {
    goto LABEL_24;
  }

LABEL_8:
  v13 = sub_247DD23CC();
  __swift_project_value_buffer(v13, qword_27EE7B920);

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    v39 = *(v2 + 48);
    v18 = TransferHost.State.description.getter();
    v20 = sub_247D72868(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_247D56000, v14, v15, "Stopped, ignoring attestation-host state change, state=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }
}

uint64_t sub_247D59D90()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_247DD2ADC();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      swift_weakInit();

      sub_247D65914(sub_247D6BC9C, v9, sub_247D6BCA4, v10, &unk_2859E44B0, sub_247D6BD00, &block_descriptor_222, sub_247D6C07C);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D59F80()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_247DD2ADC();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      swift_weakInit();

      sub_247D65914(sub_247D6BB34, v9, sub_247D6BB3C, v10, &unk_2859E43E8, sub_247D6BB48, &block_descriptor_205, sub_247D6C07C);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D5A170(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = *(v4 + 16);
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v15 = v14;
  LOBYTE(v14) = sub_247DD2ADC();
  result = (*(v9 + 8))(v12, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (*(v4 + 48) > 9u)
  {
    return result;
  }

  if (qword_27EE73298 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v17 = sub_247DD23CC();
  __swift_project_value_buffer(v17, qword_27EE7B920);

  v18 = sub_247DD23AC();
  v19 = sub_247DD2F2C();

  v20 = os_log_type_enabled(v18, v19);
  v42 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_247D72868(a2, a3, &v44);
    *(v21 + 12) = 2080;
    v43 = *(v4 + 48);
    v23 = TransferHost.State.description.getter();
    v25 = sub_247D72868(v23, v24, &v44);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_247D56000, v18, v19, "[Close] Closing, reason='%s', state=%s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v22, -1, -1);
    MEMORY[0x24C1BAF60](v21, -1, -1);
  }

  LOBYTE(v44) = 10;
  sub_247D58468(&v44);
  v26 = *(v4 + 80);
  if (v26 && *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost) && v13 != 4)
  {
    v27 = *(v4 + 88);

    sub_247D6ACFC(v26);
    v28 = sub_247DD23AC();
    v29 = sub_247DD2F2C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41[1] = v27;
      v31 = v30;
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315138;
      v43 = *(v4 + 48);
      v33 = TransferHost.State.description.getter();
      v35 = sub_247D72868(v33, v34, &v44);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_247D56000, v28, v29, "[Close] Completing lease, state=%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x24C1BAF60](v32, -1, -1);
      MEMORY[0x24C1BAF60](v31, -1, -1);
    }

    v36 = v42;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v13;
    *(v38 + 32) = v36;
    *(v38 + 40) = a3;
    v39 = *(v4 + 96);
    v40 = *(v4 + 104);
    *(v4 + 96) = sub_247D6AD48;
    *(v4 + 104) = v38;

    sub_247D6A24C(v39);

    v44 = 200;
    v45 = v36;
    v46 = a3;
    v47 = 0;

    v26(&v44);
    sub_247D6A24C(v26);
    return sub_247D6AD58(v44, v45, v46, v47);
  }

  else
  {
    LOBYTE(v44) = v13;
    return sub_247D6A9B0(&v44);
  }
}

void sub_247D5A61C(char *a1, void (*a2)(void), uint64_t a3)
{
  v111 = a3;
  v5 = sub_247DD230C();
  v110 = *(v5 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  if (*(Strong + 48) != 2)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v27 = sub_247DD23CC();
    __swift_project_value_buffer(v27, qword_27EE7B920);

    v28 = sub_247DD23AC();
    v29 = sub_247DD2F2C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v114 = v31;
      *v30 = 136315138;
      LOBYTE(v112[0]) = *(v14 + 48);
      v32 = TransferHost.State.description.getter();
      v34 = a2;
      v35 = sub_247D72868(v32, v33, &v114);

      *(v30 + 4) = v35;
      a2 = v34;
      _os_log_impl(&dword_247D56000, v28, v29, "[SPAKE2 Share] Ignoring request, state=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x24C1BAF60](v31, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
    }

    sub_247D6ADD0();
    v36 = swift_allocError();
    *v37 = 0xD000000000000035;
    v37[1] = 0x8000000247DD8980;
    v114 = v36;
    v115 = 0;
    v116 = 1;
    a2(&v114);
    goto LABEL_17;
  }

  if (v9 < 2u)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  v109 = a2;
  if (v15)
  {
    v108 = Strong;
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    v17 = __swift_project_value_buffer(v16, qword_27EE7B920);
    sub_247D6A2E8(v11, v12);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F2C();
    sub_247D6A1F8(v11, v12);
    if (os_log_type_enabled(v18, v19))
    {
      v110 = v17;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v114 = v21;
      *v20 = 136315394;
      v22 = sub_247DD216C();
      v24 = sub_247D72868(v22, v23, &v114);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      if (v10)
      {
        v25 = 0xE300000000000000;
        v26 = 7104878;
      }

      else
      {
        LOBYTE(v112[0]) = v9;
        v26 = sub_247DD2CFC();
        v25 = v64;
      }

      v65 = sub_247D72868(v26, v25, &v114);

      *(v20 + 14) = v65;
      _os_log_impl(&dword_247D56000, v18, v19, "[SPAKE2 Share] Received shareV=%s, protocol-version=%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
    }

    else
    {
    }

    v66 = sub_247DD23AC();
    v67 = sub_247DD2F0C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 16777472;
      v68[4] = 2;
      _os_log_impl(&dword_247D56000, v66, v67, "[SPAKE2 Share] Version mismatch, expected protocol-version >= %hhu", v68, 5u);
      MEMORY[0x24C1BAF60](v68, -1, -1);
    }

    sub_247D6ADD0();
    v69 = swift_allocError();
    *v70 = xmmword_247DD3EE0;
    v114 = v69;
    v115 = 0;
    v116 = 1;
    v109(&v114);

    LOBYTE(v114) = 6;
    sub_247D5A170(&v114, 0xD000000000000040, 0x8000000247DD89C0);
    goto LABEL_33;
  }

  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v38 = sub_247DD23CC();
  v39 = __swift_project_value_buffer(v38, qword_27EE7B920);
  sub_247D6A2E8(v11, v12);
  v107 = v39;
  v40 = sub_247DD23AC();
  v41 = sub_247DD2F2C();
  sub_247D6A1F8(v11, v12);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v114 = v106;
    *v42 = 136315394;
    v43 = sub_247DD216C();
    v108 = v14;
    v45 = sub_247D72868(v43, v44, &v114);
    v14 = v108;

    *(v42 + 4) = v45;
    *(v42 + 12) = 256;
    *(v42 + 14) = v9;
    _os_log_impl(&dword_247D56000, v40, v41, "[SPAKE2 Share] Received shareV=%s, protocol-version=%hhu", v42, 0xFu);
    v46 = v106;
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    MEMORY[0x24C1BAF60](v46, -1, -1);
    MEMORY[0x24C1BAF60](v42, -1, -1);
  }

  v47 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount);
  v48 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
    __break(1u);
    return;
  }

  *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount) = v48;
  v49 = *(v14 + 64);
  if (v49 >> 60 == 15)
  {
    LOBYTE(v114) = 0;
    sub_247D5A170(&v114, 0xD000000000000037, 0x8000000247DD8A10);
LABEL_33:

    return;
  }

  v50 = *(v14 + 56);
  sub_247D6A2E8(v50, *(v14 + 64));
  v108 = v50;
  v51 = sub_247DC2028(v50, v49);
  v53 = v52;
  v54 = type metadata accessor for Spake2Prover(0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_247DC0E24(v51, v53, v48);
  if (!v57)
  {
    sub_247D6ADD0();
    v36 = swift_allocError();
    *v71 = 0xD00000000000001DLL;
    v71[1] = 0x8000000247DD8A50;
    v114 = v36;
    v115 = 0;
    v116 = 1;
    v109(&v114);
    sub_247D6A25C(v108, v49);
LABEL_17:

    return;
  }

  v58 = v57;
  v106 = v49;
  v59 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover);
  *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover) = v57;

  v60 = OBJC_IVAR____TtC5Cosmo12Spake2Prover_prover;
  swift_beginAccess();
  v61 = v110;
  (*(v110 + 16))(v8, v58 + v60, v5);

  v62 = sub_247DD22FC();
  v105 = v63;
  v104 = v62;
  (*(v61 + 8))(v8, v5);
  swift_beginAccess();
  v72 = sub_247DD22DC();
  v74 = v73;
  swift_endAccess();
  v75 = (v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm);
  v76 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm);
  v77 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8);
  *v75 = v72;
  v75[1] = v74;
  sub_247D6A25C(v76, v77);
  v79 = v104;
  v78 = v105;
  sub_247D6A2E8(v104, v105);
  v80 = sub_247DD23AC();
  v81 = sub_247DD2F2C();
  sub_247D6A1F8(v79, v78);
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v112[0] = v83;
    *v82 = 136315394;
    v84 = sub_247DD216C();
    v86 = sub_247D72868(v84, v85, v112);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2080;
    v87 = sub_247D5BDD4(v14);
    v89 = sub_247D72868(v87, v88, v112);

    *(v82 + 14) = v89;
    _os_log_impl(&dword_247D56000, v80, v81, "[SPAKE2 Share] Computed confirmP=%s, %s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v83, -1, -1);
    MEMORY[0x24C1BAF60](v82, -1, -1);
  }

  v90 = v105;
  sub_247D6A2E8(v79, v105);
  v91 = sub_247DD23AC();
  v92 = sub_247DD2F2C();
  sub_247D6A1F8(v79, v90);
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v112[0] = v94;
    *v93 = 136315394;
    v95 = sub_247DD216C();
    v97 = sub_247D72868(v95, v96, v112);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    v98 = sub_247D5BDD4(v14);
    v100 = sub_247D72868(v98, v99, v112);

    *(v93 + 14) = v100;
    _os_log_impl(&dword_247D56000, v91, v92, "[SPAKE2 Share] Sending shareP=%s %s", v93, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v94, -1, -1);
    MEMORY[0x24C1BAF60](v93, -1, -1);
  }

  v102 = v108;
  v101 = v109;
  v103 = v105;
  v112[0] = v79;
  v112[1] = v105;
  v113 = 0;
  sub_247D6A2E8(v79, v105);
  v101(v112);
  sub_247D6A1F8(v79, v103);
  LOBYTE(v112[0]) = 4;
  sub_247D58468(v112);
  sub_247D6A1F8(v79, v103);
  sub_247D6A25C(v102, v106);
}

void sub_247D5B444(uint64_t *a1, void (*a2)(uint64_t *))
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + 48) != 4)
    {
      v23 = qword_27EE73298;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_247DD23CC();
      __swift_project_value_buffer(v24, qword_27EE7B920);
      v25 = sub_247DD23AC();
      v26 = sub_247DD2F2C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v57 = v28;
        *v27 = 136315138;
        v29 = sub_247D5BDD4(v6);
        v31 = sub_247D72868(v29, v30, &v57);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_247D56000, v25, v26, "[SPAKE2 Confirm] Ignoring request, %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x24C1BAF60](v28, -1, -1);
        MEMORY[0x24C1BAF60](v27, -1, -1);
      }

      sub_247D6ADD0();
      v21 = swift_allocError();
      *v32 = 0xD000000000000037;
      v32[1] = 0x8000000247DD8AA0;
      v57 = v21;
      v58 = 0;
      v59 = 1;
      a2(&v57);
      goto LABEL_15;
    }

    if (!*(Strong + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover))
    {
      sub_247D6ADD0();
      v34 = swift_allocError();
      *v35 = 0xD000000000000014;
      v35[1] = 0x8000000247DD8AE0;
      v57 = v34;
      v58 = 0;
      v59 = 1;

      a2(&v57);

      v33 = v34;
      goto LABEL_17;
    }

    v7 = qword_27EE73298;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_247DD23CC();
    __swift_project_value_buffer(v8, qword_27EE7B920);
    sub_247D6A2E8(v3, v4);
    v9 = sub_247DD23AC();
    v10 = sub_247DD2F2C();
    sub_247D6A1F8(v3, v4);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v57 = v12;
      *v11 = 136315394;
      v13 = sub_247DD216C();
      v15 = sub_247D72868(v13, v14, &v57);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_247D5BDD4(v6);
      v18 = sub_247D72868(v16, v17, &v57);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_247D56000, v9, v10, "[SPAKE2 Confirm] Received confirmV=%s, %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v12, -1, -1);
      MEMORY[0x24C1BAF60](v11, -1, -1);
    }

    v19 = (v6 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm);
    v20 = *(v6 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8);
    if (v20 >> 60 == 15)
    {
      sub_247D6ADD0();
      v21 = swift_allocError();
      *v22 = 0xD00000000000001CLL;
      v22[1] = 0x8000000247DD8B00;
      v57 = v21;
      v58 = 0;
      v59 = 1;
      a2(&v57);

LABEL_15:

      v33 = v21;
LABEL_17:

      return;
    }

    v36 = *v19;
    sub_247D6B278(*v19, *(v6 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8));
    sub_247D6A2E8(v36, v20);
    v37 = sub_247DD23AC();
    v38 = sub_247DD2F2C();
    sub_247D6A25C(v36, v20);
    v56 = v36;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v57 = v55;
      *v39 = 136315394;
      v40 = sub_247DD216C();
      v42 = sub_247D72868(v40, v41, &v57);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v43 = sub_247D5BDD4(v6);
      v45 = sub_247D72868(v43, v44, &v57);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_247D56000, v37, v38, "[SPAKE2 Confirm] Sending confirmP=%s %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v55, -1, -1);
      MEMORY[0x24C1BAF60](v39, -1, -1);
    }

    v57 = v36;
    v58 = v20;
    v59 = 0;
    sub_247D6A2E8(v36, v20);
    a2(&v57);
    sub_247D6A25C(v36, v20);
    sub_247DC13D8(v3, v4);
    v46 = sub_247DD23AC();
    v47 = sub_247DD2F2C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v48 = 136315138;
      v50 = sub_247D5BDD4(v6);
      v52 = sub_247D72868(v50, v51, &v57);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_247D56000, v46, v47, "[SPAKE2 Confirm] Seed validated, %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x24C1BAF60](v49, -1, -1);
      MEMORY[0x24C1BAF60](v48, -1, -1);
    }

    LOBYTE(v57) = 5;
    sub_247D58468(&v57);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      (*(v53 + 8))(v6, ObjectType, v53);

      sub_247D6A25C(v56, v20);

      swift_unknownObjectRelease();
    }

    else
    {

      sub_247D6A25C(v56, v20);
    }
  }
}

uint64_t sub_247D5BDD4(uint64_t a1)
{
  sub_247DD304C();

  v5 = *(a1 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount);
  v2 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v2);

  MEMORY[0x24C1BA0A0](0x3D657461747320, 0xE700000000000000);
  LOBYTE(v5) = *(a1 + 48);
  v3 = TransferHost.State.description.getter();
  MEMORY[0x24C1BA0A0](v3);

  return 0x612D747365747461;
}

void sub_247D5BEC4(uint64_t *a1, void (*a2)(uint64_t **), uint64_t a3)
{
  v228 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v219 = (&v196 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v218 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v196 - v13;
  v15 = sub_247DD225C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v217 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v220 = &v196 - v21;
  MEMORY[0x28223BE20](v20);
  v221 = &v196 - v22;
  v24 = *a1;
  v23 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v26 = Strong;
  if (*(Strong + 48) != 5)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v50 = sub_247DD23CC();
    __swift_project_value_buffer(v50, qword_27EE7B920);

    v51 = sub_247DD23AC();
    v52 = sub_247DD2F0C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v223 = v54;
      *v53 = 136315138;
      LOBYTE(v222) = *(v26 + 48);
      v55 = TransferHost.State.description.getter();
      v57 = sub_247D72868(v55, v56, &v223);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_247D56000, v51, v52, "[FileTransferSetup] Ignoring request, state=%s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x24C1BAF60](v54, -1, -1);
      MEMORY[0x24C1BAF60](v53, -1, -1);
    }

    v58 = 0x8000000247DD8B20;
    sub_247D6ADD0();
    v59 = swift_allocError();
    v48 = v59;
    v61 = 0xD00000000000003ALL;
    goto LABEL_18;
  }

  v213 = v16;
  v27 = *(Strong + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover);
  if (!v27)
  {
    v58 = 0x8000000247DD8AE0;
    sub_247D6ADD0();
    v59 = swift_allocError();
    v48 = v59;
    v61 = 0xD000000000000014;
LABEL_18:
    *v60 = v61;
    v60[1] = v58;
    v223 = v59;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 1;
    a2(&v223);
LABEL_19:

LABEL_20:

LABEL_21:
    v62 = *MEMORY[0x277D85DE8];
    return;
  }

  v212 = v15;
  v214 = a2;
  v28 = qword_27EE73298;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = sub_247DD23CC();
  v30 = __swift_project_value_buffer(v29, qword_27EE7B920);

  v216 = v30;
  v31 = sub_247DD23AC();
  v32 = sub_247DD2F2C();

  v33 = os_log_type_enabled(v31, v32);
  v215 = v27;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v211 = a3;
    v35 = v34;
    v36 = swift_slowAlloc();
    v223 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_247D72868(v24, v23, &v223);
    *(v35 + 12) = 2080;
    LOBYTE(v222) = *(v26 + 48);
    v37 = TransferHost.State.description.getter();
    v39 = v26;
    v40 = sub_247D72868(v37, v38, &v223);

    *(v35 + 14) = v40;
    v26 = v39;
    _os_log_impl(&dword_247D56000, v31, v32, "[FileTransferSetup] Received encryptedRemotePublicKey=%s, state=%s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v36, -1, -1);
    v41 = v35;
    a3 = v211;
    MEMORY[0x24C1BAF60](v41, -1, -1);
  }

  v42 = sub_247DD210C();
  v44 = v214;
  if (v43 >> 60 == 15)
  {
    v45 = sub_247DD23AC();
    v46 = sub_247DD2F0C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_247D56000, v45, v46, "[FileTransferSetup] Failed to deserialize encryptedRemotePublicKey from base64", v47, 2u);
      MEMORY[0x24C1BAF60](v47, -1, -1);
    }

    sub_247D6ADD0();
    v48 = swift_allocError();
    *v49 = 0xD00000000000002DLL;
    v49[1] = 0x8000000247DD8B60;
    v223 = v48;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 1;
    v44(&v223);

    goto LABEL_19;
  }

  v209 = v42;
  v210 = v43;
  v63 = sub_247DBF6AC(v42, v43);
  v65 = v64;
  if (v64 >> 60 == 15)
  {

    v66 = sub_247DD23AC();
    v67 = sub_247DD2F0C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v223 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_247D72868(v24, v23, &v223);
      *(v68 + 12) = 2080;
      LOBYTE(v222) = *(v26 + 48);
      v70 = TransferHost.State.description.getter();
      v72 = sub_247D72868(v70, v71, &v223);

      *(v68 + 14) = v72;
      _os_log_impl(&dword_247D56000, v66, v67, "[FileTransferSetup] Spake2Prover.decrypt() returned nil for encryptedRemotePublicKey=%s %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v69, -1, -1);
      MEMORY[0x24C1BAF60](v68, -1, -1);
    }

    sub_247D6ADD0();
    v48 = swift_allocError();
    *v73 = 0xD000000000000023;
    v73[1] = 0x8000000247DD8BB0;
    v223 = v48;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 1;
    v44(&v223);
    sub_247D6A25C(v209, v210);

    goto LABEL_19;
  }

  v74 = v63;

  sub_247D6B278(v74, v65);
  v75 = sub_247DD23AC();
  v76 = sub_247DD2F2C();
  sub_247D6A25C(v74, v65);

  v77 = os_log_type_enabled(v75, v76);
  v211 = a3;
  v208 = v26;
  v206 = v65;
  v199 = 0;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v223 = v79;
    *v78 = 136315394;
    v80 = sub_247DD216C();
    v82 = sub_247D72868(v80, v81, &v223);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    LOBYTE(v222) = *(v26 + 48);
    v83 = TransferHost.State.description.getter();
    v85 = sub_247D72868(v83, v84, &v223);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_247D56000, v75, v76, "[FileTransferSetup] Finished decryption, remotePublicKey=%s state=%s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v79, -1, -1);
    MEMORY[0x24C1BAF60](v78, -1, -1);
  }

  v86 = v74;
  v87 = v213;
  KeyPair = createKeyPair(*MEMORY[0x277CDC040], 256);
  v205 = secIdentityFromKeyPair(KeyPair);
  v88 = publicKeyFromIdentity(v205);
  v89 = sub_247DD217C();
  v207 = v90;

  v197 = sub_247DD216C();
  v198 = v91;
  v92 = v221;
  sub_247DD224C();
  v93 = *(v87 + 16);
  v203 = v87 + 16;
  v204 = v93;
  v94 = v212;
  v93(v14, v92, v212);
  (*(v87 + 56))(v14, 0, 1, v94);
  v95 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferServiceUUID;
  v96 = v208;
  swift_beginAccess();
  v196 = v95;
  sub_247D6B4B4(v14, v96 + v95, &qword_27EE733A8, &unk_247DD61B0);
  swift_endAccess();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
  v98 = *(v97 + 96);
  v99 = *(v97 + 112);
  v100 = v219;
  *v219 = 1;
  v101 = v206;
  v100[1] = v86;
  v100[2] = v101;
  v102 = v207;
  v100[3] = v89;
  v100[4] = v102;
  v100[5] = v205;
  v204(v100 + v98, v221, v94);
  *(v100 + v99) = 1;
  v103 = type metadata accessor for NetworkDescriptor();
  swift_storeEnumTagMultiPayload();
  (*(*(v103 - 8) + 56))(v100, 0, 1, v103);
  v104 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor;
  swift_beginAccess();
  v201 = v86;
  sub_247D6B278(v86, v101);
  v202 = v89;
  sub_247D6A2E8(v89, v102);
  swift_unknownObjectRetain();
  sub_247D6B4B4(v100, v96 + v104, &unk_27EE733B0, &unk_247DD3F80);
  swift_endAccess();
  v105 = v220;
  v204(v220, v221, v94);

  v106 = v198;

  v107 = sub_247DD23AC();
  v108 = v213;
  v109 = v107;
  v110 = sub_247DD2F2C();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v223 = v112;
    *v111 = 136315650;
    v113 = sub_247D72868(v197, v106, &v223);

    *(v111 + 4) = v113;
    *(v111 + 12) = 2080;
    sub_247D6A33C(&unk_27EE73510, MEMORY[0x277CC95F0]);
    v114 = v212;
    v115 = sub_247DD321C();
    v117 = v116;
    v118 = *(v108 + 8);
    v118(v105, v114);
    v119 = sub_247D72868(v115, v117, &v223);

    *(v111 + 14) = v119;
    *(v111 + 22) = 2080;
    LOBYTE(v222) = *(v208 + 48);
    v120 = TransferHost.State.description.getter();
    v122 = sub_247D72868(v120, v121, &v223);

    *(v111 + 24) = v122;
    _os_log_impl(&dword_247D56000, v109, v110, "[FileTransferSetup] Generated localPublicKey=%s fileTransferServiceUUID=%s, state=%s", v111, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v112, -1, -1);
    MEMORY[0x24C1BAF60](v111, -1, -1);
  }

  else
  {

    v118 = *(v108 + 8);
    v118(v105, v212);
  }

  v123 = v199;
  v124 = v202;
  v125 = v207;
  v126 = sub_247DBF19C(v202, v207);
  if (v123)
  {
    v128 = v208;

    v129 = v123;
    v130 = sub_247DD23AC();
    v131 = sub_247DD2F0C();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v220 = v118;
      v133 = v125;
      v134 = v132;
      v135 = swift_slowAlloc();
      v223 = v135;
      *v134 = 136315394;
      v222 = v123;
      v136 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v137 = sub_247DD2CFC();
      v139 = sub_247D72868(v137, v138, &v223);

      *(v134 + 4) = v139;
      *(v134 + 12) = 2080;
      LOBYTE(v222) = *(v128 + 48);
      v140 = TransferHost.State.description.getter();
      v142 = sub_247D72868(v140, v141, &v223);

      *(v134 + 14) = v142;
      _os_log_impl(&dword_247D56000, v130, v131, "[FileTransferSetup] Failed to encrypt publicKey, error=%s %s", v134, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v135, -1, -1);
      v143 = v134;
      v125 = v133;
      v118 = v220;
      MEMORY[0x24C1BAF60](v143, -1, -1);
    }

    v144 = v214;
    sub_247D6ADD0();
    v48 = swift_allocError();
    *v145 = 0xD00000000000001ELL;
    v145[1] = 0x8000000247DD8BE0;
    v223 = v48;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 1;
    v144(&v223);

    sub_247D6A25C(v209, v210);

    swift_unknownObjectRelease();
    sub_247D6A1F8(v124, v125);
    sub_247D6A25C(v201, v206);
LABEL_39:

    v118(v221, v212);
    goto LABEL_20;
  }

  if (v127 >> 60 == 15)
  {
LABEL_36:
    v146 = v208;

    v147 = sub_247DD23AC();
    v148 = sub_247DD2F0C();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v223 = v150;
      *v149 = 136315138;
      LOBYTE(v222) = *(v146 + 48);
      v151 = TransferHost.State.description.getter();
      v153 = v118;
      v154 = v125;
      v155 = sub_247D72868(v151, v152, &v223);

      *(v149 + 4) = v155;
      v125 = v154;
      v118 = v153;
      _os_log_impl(&dword_247D56000, v147, v148, "[FileTransferSetup] Spake2Prover.encrypt() returned nil, %s", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v150);
      MEMORY[0x24C1BAF60](v150, -1, -1);
      MEMORY[0x24C1BAF60](v149, -1, -1);
    }

    v156 = v214;
    sub_247D6ADD0();
    v48 = swift_allocError();
    *v157 = 0xD000000000000023;
    v157[1] = 0x8000000247DD8C00;
    v223 = v48;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 1;
    v156(&v223);

    sub_247D6A25C(v209, v210);
    swift_unknownObjectRelease();

    sub_247D6A1F8(v124, v125);
    sub_247D6A25C(v201, v206);
    goto LABEL_39;
  }

  v158 = v125;
  v159 = v126;
  v160 = v127;
  v223 = sub_247DD223C();
  v224 = v161;
  v162 = sub_247D97B54(&v223, &v225);
  v164 = v163;
  v165 = sub_247DBF19C(v162, v163);
  v167 = v166;
  v168 = v165;
  sub_247D6A1F8(v162, v164);
  if (v167 >> 60 == 15)
  {
    sub_247D6A25C(v159, v160);
    v125 = v158;
    goto LABEL_36;
  }

  v220 = sub_247DD216C();
  v170 = v169;

  v219 = sub_247DD216C();
  v172 = v171;

  sub_247D6A25C(v168, v167);
  sub_247D6A25C(v159, v160);
  v173 = v208;

  v174 = sub_247DD23AC();
  v175 = sub_247DD2F2C();

  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v223 = v177;
    *v176 = 136315650;
    *(v176 + 4) = sub_247D72868(v220, v170, &v223);
    *(v176 + 12) = 2080;
    *(v176 + 14) = sub_247D72868(v219, v172, &v223);
    *(v176 + 22) = 2080;
    LOBYTE(v222) = *(v173 + 48);
    v178 = TransferHost.State.description.getter();
    v180 = sub_247D72868(v178, v179, &v223);

    *(v176 + 24) = v180;
    _os_log_impl(&dword_247D56000, v174, v175, "[FileTransferSetup] Sending encryptedLocalPublicKey=%s encryptedServiceUUID=%s, state=%s", v176, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v177, -1, -1);
    MEMORY[0x24C1BAF60](v176, -1, -1);
  }

  v181 = v201;
  v182 = v118;
  v223 = v220;
  v224 = v170;
  v225 = v219;
  v226 = v172;
  v227 = 0;
  v214(&v223);

  v183 = sub_247DD23AC();
  v184 = sub_247DD2F2C();
  if (!os_log_type_enabled(v183, v184))
  {

    v188 = v212;
    goto LABEL_48;
  }

  LODWORD(v220) = v184;
  v185 = swift_slowAlloc();
  v219 = swift_slowAlloc();
  v223 = v219;
  *v185 = 136315138;
  v186 = v218;
  sub_247D6BA6C(v173 + v196, v218, &qword_27EE733A8, &unk_247DD61B0);
  v188 = v212;
  v187 = v213;
  v189 = (*(v213 + 48))(v186, 1, v212);

  if (v189 != 1)
  {
    v190 = v217;
    (*(v187 + 32))(v217, v186, v188);
    sub_247D6A33C(&unk_27EE73510, MEMORY[0x277CC95F0]);
    v191 = sub_247DD321C();
    v193 = v192;
    v182 = v118;
    v118(v190, v188);
    v194 = sub_247D72868(v191, v193, &v223);

    *(v185 + 4) = v194;
    _os_log_impl(&dword_247D56000, v183, v220, "Starting file-transfer-host with Bonjour fileTransferServiceUUID=%s", v185, 0xCu);
    v195 = v219;
    __swift_destroy_boxed_opaque_existential_0Tm(v219);
    MEMORY[0x24C1BAF60](v195, -1, -1);
    MEMORY[0x24C1BAF60](v185, -1, -1);

    v181 = v201;
LABEL_48:
    sub_247D5D82C();

    sub_247D6A25C(v209, v210);
    swift_unknownObjectRelease();

    sub_247D6A1F8(v202, v207);
    sub_247D6A25C(v181, v206);

    v182(v221, v188);
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_247D5D82C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for NetworkDescriptor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v12;
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 16);
  *v17 = v18;
  v19 = v14[13];
  v44 = *MEMORY[0x277D85200];
  v43 = v19;
  v19(v17);
  v42 = v18;
  LOBYTE(v18) = sub_247DD2ADC();
  v46 = v14[1];
  result = v46(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor;
  swift_beginAccess();
  sub_247D6BA6C(v1 + v21, v5, &unk_27EE733B0, &unk_247DD3F80);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_247D6BAD4(v5, &unk_27EE733B0, &unk_247DD3F80);
  }

  v22 = v5;
  v23 = v45;
  sub_247D6B8C4(v22, v45, type metadata accessor for NetworkDescriptor);
  sub_247D6BA04(v23, v11, type metadata accessor for NetworkDescriptor);
  v24 = type metadata accessor for CosmoMultiplexChannelHost(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = v42;
  v28 = v42;
  v29 = sub_247DD0DF0(0xD000000000000012, 0x8000000247DD8C30, v11, v27);

  v42 = v14 + 13;
  v30 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost;
  v31 = *(v1 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost);
  *(v1 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost) = v29;

  v32 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v33 = v29[2];
  v34 = v29[3];
  v29[2] = sub_247D6B51C;
  v29[3] = v32;

  sub_247D6A24C(v33);

  sub_247D59D90();
  sub_247D59F80();
  *v17 = v28;
  v35 = v44;
  v36 = v43;
  v43(v17, v44, v13);
  v37 = v28;
  LOBYTE(v29) = sub_247DD2ADC();
  result = v46(v17, v13);
  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v1 + v30))
  {
    v38 = swift_allocObject();
    swift_weakInit();

    sub_247D65914(sub_247D6B554, v38, 0, 0, &unk_2859E4190, sub_247D6B560, &block_descriptor_156, sub_247D6C07C);
  }

  sub_247D5F060();
  *v17 = v37;
  v36(v17, v35, v13);
  v39 = sub_247DD2ADC();
  result = v46(v17, v13);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v1 + v30))
  {
    v40 = swift_allocObject();
    swift_weakInit();

    sub_247D65914(sub_247D6B54C, v40, 0, 0, &unk_2859E4258, sub_247D6B7D4, &block_descriptor_171, sub_247D6C07C);
  }

  v47 = 6;
  sub_247D58468(&v47);
  if (*(v1 + v30))
  {
    v41 = *(v1 + v30);

    sub_247DC91B4();
  }

  return sub_247D6B998(v45, type metadata accessor for NetworkDescriptor);
}

Swift::Void __swiftcall TransferHost.setTransferFiles(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_247DD2A0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = v1[2];
  v12 = swift_allocObject();
  v12[2]._rawValue = a1._rawValue;
  v12[3]._rawValue = v1;
  aBlock[4] = sub_247D6A3C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v16 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v15);
}

void sub_247D5E10C(uint64_t a1, uint64_t a2)
{
  v119 = sub_247DD225C();
  v114 = *(v119 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x28223BE20](v119);
  v125 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE734F8, &qword_247DD4308);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v118 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = (&v109 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = (&v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v109 - v16);
  v18 = sub_247DD20DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v122 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v30 = &v109 - v29;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return;
  }

  v111 = v28;
  v112 = v27;
  v115 = v15;
  v120 = v17;
  v121 = v26;
  v113 = v6;
  v110 = a2;
  v33 = v19 + 16;
  v32 = *(v19 + 16);
  isUniquelyReferenced_nonNull_native = v19 + 8;
  v35 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v124 = *(v19 + 72);
  v36 = v35;
  v117 = v31;
  v37 = v31;
  while (1)
  {
    v32(v30, v35, v18);
    if ((sub_247DD206C() & 1) == 0)
    {
      break;
    }

    (*isUniquelyReferenced_nonNull_native)(v30, v18);
    v35 += v124;
    if (!--v37)
    {
      v38 = v110;
      v109 = OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer;
      v39 = *(*(v110 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer) + 16);
      v116 = v32;
      if (v39)
      {
        if (qword_27EE73298 != -1)
        {
          swift_once();
        }

        v40 = sub_247DD23CC();
        __swift_project_value_buffer(v40, qword_27EE7B920);

        v41 = sub_247DD23AC();
        v42 = sub_247DD2F0C();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v121 = v18;
          v44 = v43;
          v45 = swift_slowAlloc();
          v127[0] = v45;
          *v44 = 136315138;
          v126 = *(v38 + 48);
          v46 = TransferHost.State.description.getter();
          isUniquelyReferenced_nonNull_native = sub_247D72868(v46, v47, v127);

          *(v44 + 4) = isUniquelyReferenced_nonNull_native;
          _os_log_impl(&dword_247D56000, v41, v42, "[SetTransferFiles] Overriding fileURLs, state=%s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x24C1BAF60](v45, -1, -1);
          v48 = v44;
          v18 = v121;
          v32 = v116;
          MEMORY[0x24C1BAF60](v48, -1, -1);
        }
      }

      v30 = 0;
      v120 = (v19 + 32);
      v49 = v113;
      v112 = v114 + 16;
      v115 = (v114 + 8);
      v50 = MEMORY[0x277D84F98];
      v111 = (v19 + 40);
      v51 = v36;
      while (1)
      {
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v121 = v30 + 1;
        v54 = *(v49 + 48);
        v55 = v123;
        *v123 = v30;
        v56 = v51;
        v57 = v33;
        (v32)(v55 + v54);
        v19 = v125;
        sub_247DD224C();
        v58 = v118;
        sub_247D6BA6C(v55, v118, &qword_27EE734F8, &qword_247DD4308);
        v32 = *v120;
        v59 = v58 + *(v49 + 48);
        v60 = v18;
        (*v120)(v122, v59, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127[0] = v50;
        v18 = sub_247D94C28(v19);
        v62 = v50[2];
        v63 = (v61 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_40;
        }

        v19 = v61;
        if (v50[3] >= v64)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v50 = v127[0];
            if ((v61 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_247DCFB7C();
            v50 = v127[0];
            if ((v19 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          sub_247DCECB4(v64, isUniquelyReferenced_nonNull_native);
          v65 = sub_247D94C28(v125);
          if ((v19 & 1) != (v66 & 1))
          {
            sub_247DD323C();
            __break(1u);
            return;
          }

          v18 = v65;
          v50 = v127[0];
          if ((v19 & 1) == 0)
          {
LABEL_22:
            v50[(v18 >> 6) + 8] |= 1 << v18;
            isUniquelyReferenced_nonNull_native = v114;
            v67 = v125;
            v19 = v119;
            (*(v114 + 16))(v50[6] + *(v114 + 72) * v18, v125, v119);
            v68 = v50[7] + v18 * v124;
            v18 = v60;
            v32(v68, v122, v60);
            (*(isUniquelyReferenced_nonNull_native + 8))(v67, v19);
            sub_247D6BAD4(v123, &qword_27EE734F8, &qword_247DD4308);
            v69 = v50[2];
            v70 = __OFADD__(v69, 1);
            v71 = v69 + 1;
            if (v70)
            {
              goto LABEL_41;
            }

            v50[2] = v71;
            v49 = v113;
            v52 = v124;
            goto LABEL_13;
          }
        }

        v52 = v124;
        v53 = v50[7] + v18 * v124;
        v18 = v60;
        (*v111)(v53, v122, v60);
        (*v115)(v125, v119);
        sub_247D6BAD4(v123, &qword_27EE734F8, &qword_247DD4308);
LABEL_13:
        ++v30;
        v51 = v56 + v52;
        v32 = v116;
        v33 = v57;
        if (v121 == v117)
        {
          v84 = v109;
          v83 = v110;
          v85 = *(v110 + v109);
          *(v110 + v109) = v50;

          if (qword_27EE73298 != -1)
          {
            swift_once();
          }

          v86 = sub_247DD23CC();
          __swift_project_value_buffer(v86, qword_27EE7B920);

          v87 = sub_247DD23AC();
          v88 = sub_247DD2F2C();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v127[0] = v90;
            *v89 = 136315394;
            v91 = *(v83 + v84);
            sub_247D6A33C(&qword_27EE738D0, MEMORY[0x277CC95F0]);

            v92 = v83;
            v93 = sub_247DD2C4C();
            v95 = v94;

            v96 = sub_247D72868(v93, v95, v127);

            *(v89 + 4) = v96;
            *(v89 + 12) = 2080;
            v126 = *(v92 + 48);
            v97 = TransferHost.State.description.getter();
            v99 = sub_247D72868(v97, v98, v127);

            *(v89 + 14) = v99;
            _os_log_impl(&dword_247D56000, v87, v88, "[SetTransferFiles] Ready to serve files=%s, state=%s", v89, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v90, -1, -1);
            MEMORY[0x24C1BAF60](v89, -1, -1);
          }

          return;
        }
      }
    }
  }

  if (qword_27EE73298 != -1)
  {
LABEL_42:
    swift_once();
  }

  v72 = sub_247DD23CC();
  __swift_project_value_buffer(v72, qword_27EE7B920);
  v73 = v121;
  v32(v121, v30, v18);

  v74 = sub_247DD23AC();
  v75 = v32;
  v76 = sub_247DD2F0C();

  if (os_log_type_enabled(v74, v76))
  {
    LODWORD(v125) = v76;
    v77 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v127[0] = v124;
    *v77 = 136315394;
    v78 = v120;
    v75(v120, v73, v18);
    (*(v19 + 56))(v78, 0, 1, v18);
    v79 = v78;
    v80 = v115;
    sub_247D6BA6C(v79, v115, &unk_27EE73500, &unk_247DD4310);
    if ((*(v19 + 48))(v80, 1, v18) == 1)
    {
      v81 = 0xE300000000000000;
      v82 = 7104878;
    }

    else
    {
      v101 = v112;
      (*(v19 + 32))(v112, v80, v18);
      v75(v111, v101, v18);
      v82 = sub_247DD2CFC();
      v81 = v102;
      (*(v19 + 8))(v101, v18);
    }

    sub_247D6BAD4(v120, &unk_27EE73500, &unk_247DD4310);
    v103 = *isUniquelyReferenced_nonNull_native;
    (*isUniquelyReferenced_nonNull_native)(v121, v18);
    v104 = sub_247D72868(v82, v81, v127);

    *(v77 + 4) = v104;
    *(v77 + 12) = 2080;
    v126 = *(v110 + 48);
    v105 = TransferHost.State.description.getter();
    v107 = sub_247D72868(v105, v106, v127);

    *(v77 + 14) = v107;
    _os_log_impl(&dword_247D56000, v74, v125, "[SetTransferFiles] Ignoring, non-file-url found url=%s, state=%s", v77, 0x16u);
    v108 = v124;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v108, -1, -1);
    MEMORY[0x24C1BAF60](v77, -1, -1);

    v103(v30, v18);
  }

  else
  {

    v100 = *isUniquelyReferenced_nonNull_native;
    (*isUniquelyReferenced_nonNull_native)(v73, v18);
    v100(v30, v18);
  }
}

uint64_t sub_247D5ED40(char *a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v4;
    a3(&v6);
  }

  return result;
}

void sub_247D5EDB4(char *a1)
{
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(v1 + 16);
  *v7 = v9;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v4 + 8))(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  if (!*(v1 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
  {
    return;
  }

  v11 = *(v1 + 48);
  if (v11 <= 9)
  {
    if (v8)
    {
      if (v11 == 6)
      {
        BYTE6(v20) = 2;
        sub_247D5A170(&v20 + 6, 0xD00000000000001ELL, 0x8000000247DD8C90);
      }
    }

    else
    {
      BYTE5(v20) = 7;
      sub_247D58468(&v20 + 5);
    }

    return;
  }

  if (qword_27EE73298 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B920);

  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    HIBYTE(v20) = *(v1 + 48);
    v17 = TransferHost.State.description.getter();
    v19 = sub_247D72868(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_247D56000, v13, v14, "Stop detected, ignoring file-transfer-host state change, state=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }
}

uint64_t sub_247D5F060()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_247DD2ADC();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      swift_weakInit();

      sub_247D65914(sub_247D6B87C, v9, sub_247D6B884, v10, &unk_2859E4320, sub_247D6B890, &block_descriptor_188, sub_247D6C07C);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_247D5F250(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v8 = sub_247DD23CC();
    __swift_project_value_buffer(v8, qword_27EE7B920);

    sub_247D6BC90(a3, 1);
    oslog = sub_247DD23AC();
    v9 = sub_247DD2F0C();

    sub_247D6B9F8(a3, 1);

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_247D72868(a1, a2, &v30);
      *(v10 + 12) = 2080;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v13 = sub_247DD2CFC();
      v15 = sub_247D72868(v13, v14, &v30);

      *(v10 + 14) = v15;
      *(v10 + 22) = 2080;
      v28 = *(v4 + 48);
      v16 = TransferHost.State.description.getter();
      v18 = sub_247D72868(v16, v17, &v30);

      *(v10 + 24) = v18;
      _os_log_impl(&dword_247D56000, oslog, v9, "%s Failed flushing HTTP response with error=%s, state=%s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v11, -1, -1);
      v19 = v10;
LABEL_10:
      MEMORY[0x24C1BAF60](v19, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v20 = sub_247DD23CC();
    __swift_project_value_buffer(v20, qword_27EE7B920);

    oslog = sub_247DD23AC();
    v21 = sub_247DD2F2C();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_247D72868(a1, a2, &v30);
      *(v22 + 12) = 2080;
      v29 = *(v4 + 48);
      v24 = TransferHost.State.description.getter();
      v26 = sub_247D72868(v24, v25, &v30);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_247D56000, oslog, v21, "%s Finished flushing HTTP response, state=%s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v23, -1, -1);
      v19 = v22;
      goto LABEL_10;
    }
  }
}

uint64_t sub_247D5F5EC(unsigned __int8 *a1, void (*a2)(__int128 *), uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (*(result + 48) >= 2u)
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE7B920);
      v17 = sub_247DD23AC();
      v18 = sub_247DD2F2C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 16777472;
        v19[4] = v5;
        _os_log_impl(&dword_247D56000, v17, v18, "[Lease] Received lease, version=%hhu", v19, 5u);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }

      v20 = *(v7 + 80);
      v21 = *(v7 + 88);
      *(v7 + 80) = a2;
      *(v7 + 88) = a3;

      sub_247D6A24C(v20);
      if (v5 == 2)
      {
        v22 = *(v7 + 49);
        if (v22 != 12)
        {

          v23 = sub_247DD23AC();
          v24 = sub_247DD2F2C();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *&v38 = v26;
            *v25 = 136315394;
            v42 = v22;
            v27 = TransferHost.State.description.getter();
            v29 = sub_247D72868(v27, v28, &v38);

            *(v25 + 4) = v29;
            *(v25 + 12) = 2080;
            v42 = *(v7 + 48);
            v30 = TransferHost.State.description.getter();
            v32 = sub_247D72868(v30, v31, &v38);

            *(v25 + 14) = v32;
            _os_log_impl(&dword_247D56000, v23, v24, "[Lease] Client invoked stop in state=%s, satisfying now, state=%s", v25, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v26, -1, -1);
            MEMORY[0x24C1BAF60](v25, -1, -1);
          }

          LOBYTE(v38) = 3;
          sub_247D5A170(&v38, 0xD000000000000014, 0x8000000247DD8940);
        }
      }

      else
      {
        v33 = sub_247DD23AC();
        v34 = sub_247DD2F2C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 16777472;
          v35[4] = 2;
          _os_log_impl(&dword_247D56000, v33, v34, "[Lease] Version mismatch detected, expected-version=%hhu", v35, 5u);
          MEMORY[0x24C1BAF60](v35, -1, -1);
        }

        v42 = 6;
        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        sub_247DD304C();
        MEMORY[0x24C1BA0A0](0xD000000000000023, 0x8000000247DD8D10);
        v36 = sub_247DD321C();
        MEMORY[0x24C1BA0A0](v36);

        MEMORY[0x24C1BA0A0](0xD000000000000012, 0x8000000247DD8D40);
        v41 = v5;
        v37 = sub_247DD321C();
        MEMORY[0x24C1BA0A0](v37);

        sub_247D5A170(&v42, 0, 0xE000000000000000);
      }
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v8 = sub_247DD23CC();
      __swift_project_value_buffer(v8, qword_27EE7B920);

      v9 = sub_247DD23AC();
      v10 = sub_247DD2F2C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v38 = v12;
        *v11 = 136315138;
        v42 = *(v7 + 48);
        v13 = TransferHost.State.description.getter();
        v15 = sub_247D72868(v13, v14, &v38);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_247D56000, v9, v10, "[Lease] Unexpected request received, state=%s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x24C1BAF60](v12, -1, -1);
        MEMORY[0x24C1BAF60](v11, -1, -1);
      }

      v38 = xmmword_247DD3EF0;
      v39 = 2;
      v40 = 1;
      a2(&v38);
    }
  }

  return result;
}

uint64_t sub_247D5FB60(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_247D5F250(0x5D657361654C5BLL, 0xE700000000000000, a3, a4 & 1);
    v8 = *(v7 + 96);
    if (v8)
    {
      v9 = *(v7 + 104);

      v8(v10);

      return sub_247D6A24C(v8);
    }

    else
    {
      v12 = 2;
      sub_247DD304C();

      sub_247D6BC90(a3, a4 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73628, &qword_247DD4398);
      v11 = sub_247DD2CFC();
      MEMORY[0x24C1BA0A0](v11);

      sub_247D6A9B0(&v12);
    }
  }

  return result;
}

void sub_247D5FCC8(uint64_t a1, void (*a2)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + 48) > 9u)
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v13 = sub_247DD23CC();
      __swift_project_value_buffer(v13, qword_27EE7B920);

      v14 = sub_247DD23AC();
      v15 = sub_247DD2F2C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v21 = v17;
        *v16 = 136315138;
        v23 = *(v4 + 48);
        v18 = TransferHost.State.description.getter();
        v20 = sub_247D72868(v18, v19, &v21);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_247D56000, v14, v15, "[Close Request] Ignoring request, state=%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x24C1BAF60](v17, -1, -1);
        MEMORY[0x24C1BAF60](v16, -1, -1);
      }
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v5 = sub_247DD23CC();
      __swift_project_value_buffer(v5, qword_27EE7B920);

      v6 = sub_247DD23AC();
      v7 = sub_247DD2F2C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v21 = v9;
        *v8 = 136315138;
        v23 = *(v4 + 48);
        v10 = TransferHost.State.description.getter();
        v12 = sub_247D72868(v10, v11, &v21);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_247D56000, v6, v7, "[Close Request] Remote TransferClient requested close, state=%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x24C1BAF60](v9, -1, -1);
        MEMORY[0x24C1BAF60](v8, -1, -1);
      }

      v21 = xmmword_247DD3F00;
      v22 = 0;
      a2(&v21);
    }
  }
}

uint64_t sub_247D5FFBC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D5F250(0x522065736F6C435BLL, 0xEF5D747365757165, a3, a4 & 1);
    v7 = 4;
    sub_247D60074(&v7, 0xD000000000000030, 0x8000000247DD8CB0);
  }

  return result;
}

uint64_t sub_247D60074(char *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v5 = sub_247DD2A0C();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_247DD2A2C();
  v40 = *(v42 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_247DD2A7C();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v39);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = sub_247DD2ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  v24 = *(v3 + 16);
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v36 = v24;
  LOBYTE(v24) = sub_247DD2ADC();
  result = (*(v19 + 8))(v22, v18);
  if (v24)
  {
    sub_247DD2A6C();
    v26 = *(v3 + 24);
    sub_247DD2ACC();
    v35 = *(v11 + 8);
    v27 = v39;
    v35(v15, v39);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v23;
    v30 = v38;
    *(v29 + 32) = v37;
    *(v29 + 40) = v30;
    aBlock[4] = sub_247D6ADC0;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_96;
    v31 = _Block_copy(aBlock);

    sub_247DD2A1C();
    v45 = MEMORY[0x277D84F90];
    sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
    v32 = v41;
    v33 = v44;
    sub_247DD2FFC();
    MEMORY[0x24C1BA240](v17, v10, v32, v31);
    _Block_release(v31);
    (*(v43 + 8))(v32, v33);
    (*(v40 + 8))(v10, v42);
    v35(v17, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D6055C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v157 = sub_247DD20DC();
  v145 = *(v157 - 8);
  v5 = *(v145 + 64);
  v6 = MEMORY[0x28223BE20](v157);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v160 = &v134 - v10;
  MEMORY[0x28223BE20](v9);
  v143 = &v134 - v11;
  v12 = sub_247DD225C();
  v148 = *(v12 - 8);
  v13 = *(v148 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v161 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v158 = &v134 - v17;
  MEMORY[0x28223BE20](v16);
  v142 = &v134 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B0, &qword_247DD4368);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v147 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v146 = &v134 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = *(result + 48);
  v155 = result;
  if (v26 < 7)
  {
    if (qword_27EE73298 != -1)
    {
LABEL_69:
      swift_once();
    }

    v27 = sub_247DD23CC();
    __swift_project_value_buffer(v27, qword_27EE7B920);

    v28 = sub_247DD23AC();
    v29 = sub_247DD2F0C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v163 = v31;
      *v30 = 136315138;
      LOBYTE(v162) = *(v155 + 48);
      v32 = TransferHost.State.description.getter();
      v34 = sub_247D72868(v32, v33, &v163);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_247D56000, v28, v29, "[FileList] Unexpected request received, state=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x24C1BAF60](v31, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
    }

    v35 = xmmword_247DD3EF0;
    goto LABEL_64;
  }

  sub_247D615CC();
  v36 = *(v25 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  if (!*(v36 + 16))
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v126 = sub_247DD23CC();
    __swift_project_value_buffer(v126, qword_27EE7B920);

    v127 = sub_247DD23AC();
    v128 = sub_247DD2F0C();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v163 = v130;
      *v129 = 136315138;
      LOBYTE(v162) = *(v155 + 48);
      v131 = TransferHost.State.description.getter();
      v133 = sub_247D72868(v131, v132, &v163);

      *(v129 + 4) = v133;
      _os_log_impl(&dword_247D56000, v127, v128, "[FileList] No files to transfer, state=%s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v130);
      MEMORY[0x24C1BAF60](v130, -1, -1);
      MEMORY[0x24C1BAF60](v129, -1, -1);
    }

    v35 = xmmword_247DD3F10;
LABEL_64:
    v163 = v35;
    v164 = 258;
    (a2)(&v163);
  }

  v141 = v8;
  v134 = a3;
  v135 = a2;
  v37 = *(v36 + 64);
  v137 = v36 + 64;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v136 = (v38 + 63) >> 6;
  v156 = (v148 + 16);
  v151 = (v148 + 32);
  v149 = (v145 + 16);
  v150 = (v145 + 32);
  v139 = *MEMORY[0x277CCA1C0];
  v152 = (v145 + 8);
  v144 = (v148 + 8);
  v140 = v36;

  v41 = 0;
  v42 = MEMORY[0x277D84F98];
  a2 = &qword_27EE735B8;
  *&v43 = 136315394;
  v138 = v43;
  v159 = v12;
  v44 = v157;
  while (1)
  {
    if (!v40)
    {
      if (v136 <= v41 + 1)
      {
        v49 = v41 + 1;
      }

      else
      {
        v49 = v136;
      }

      v50 = (v49 - 1);
      while (1)
      {
        v48 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v48 >= v136)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B8, &unk_247DD4370);
          v111 = v147;
          (*(*(v110 - 8) + 56))(v147, 1, 1, v110);
          v61 = v111;
          v154 = 0;
          goto LABEL_24;
        }

        v40 = *(v137 + 8 * v48);
        v41 = (v41 + 1);
        if (v40)
        {
          v153 = v42;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v153 = v42;
    v48 = v41;
LABEL_23:
    v154 = (v40 - 1) & v40;
    v51 = __clz(__rbit64(v40)) | (v48 << 6);
    v52 = v140;
    v53 = v148;
    v54 = v142;
    (*(v148 + 16))(v142, *(v140 + 48) + *(v148 + 72) * v51, v12);
    v55 = v145;
    v56 = v143;
    (*(v145 + 16))(v143, *(v52 + 56) + *(v145 + 72) * v51, v44);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B8, &unk_247DD4370);
    v58 = *(v57 + 48);
    v59 = *(v53 + 32);
    v60 = v147;
    v59(v147, v54, v159);
    (*(v55 + 32))(&v60[v58], v56, v44);
    (*(*(v57 - 8) + 56))(v60, 0, 1, v57);
    v50 = v48;
    v61 = v60;
    a2 = &qword_27EE735B8;
    v42 = v153;
    v25 = v155;
LABEL_24:
    v62 = v146;
    sub_247D6B708(v61, v146);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B8, &unk_247DD4370);
    if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
    {
      break;
    }

    v64 = *(v63 + 48);
    v65 = v159;
    (*v151)(v158, v62, v159);
    v66 = v157;
    (*v150)(v160, v62 + v64, v157);
    v67 = sub_247D94864();
    v153 = v50;
    if (v67)
    {
      v68 = v67;
      if (*(v67 + 16) && (v69 = sub_247D94CC0(v139), (v70 & 1) != 0))
      {
        sub_247D6B778(*(v68 + 56) + 32 * v69, &v163);

        if (swift_dynamicCast())
        {
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v71 = sub_247DD23CC();
    __swift_project_value_buffer(v71, qword_27EE7B920);
    v72 = v141;
    (*v149)(v141, v160, v66);

    v73 = sub_247DD23AC();
    v74 = sub_247DD2F0C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = v25;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v163 = v77;
      *v76 = v138;
      sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260]);
      v78 = sub_247DD321C();
      v79 = v66;
      v81 = v80;
      (*v152)(v72, v79);
      v82 = sub_247D72868(v78, v81, &v163);

      *(v76 + 4) = v82;
      *(v76 + 12) = 2080;
      v83 = *(v75 + 48);
      a2 = &qword_27EE735B8;
      LOBYTE(v162) = v83;
      v84 = TransferHost.State.description.getter();
      v86 = sub_247D72868(v84, v85, &v163);

      *(v76 + 14) = v86;
      _os_log_impl(&dword_247D56000, v73, v74, "[FileList] Could not read file-size of file=%s, state=%s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v77, -1, -1);
      v65 = v159;
      MEMORY[0x24C1BAF60](v76, -1, -1);
    }

    else
    {

      (*v152)(v72, v66);
      v65 = v159;
    }

LABEL_36:
    v87 = *v156;
    (*v156)(v161, v158, v65);
    v88 = sub_247DD207C();
    v90 = v89;
    v91 = sub_247D94864();
    if (v91)
    {
      v92 = v91;
      if (*(v91 + 16) && (v93 = sub_247D94CC0(v139), (v94 & 1) != 0))
      {
        sub_247D6B778(*(v92 + 56) + 32 * v93, &v163);

        if (swift_dynamicCast())
        {
          v95 = v162;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v95 = 0;
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v163 = v42;
    v97 = sub_247D94C28(v161);
    v99 = v42[2];
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_67;
    }

    v103 = v98;
    if (v42[3] < v102)
    {
      sub_247DCF15C(v102, isUniquelyReferenced_nonNull_native);
      v97 = sub_247D94C28(v161);
      if ((v103 & 1) != (v104 & 1))
      {
        result = sub_247DD323C();
        __break(1u);
        return result;
      }

LABEL_48:
      v42 = v163;
      if (v103)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v112 = v97;
    sub_247DCFED0();
    v97 = v112;
    v42 = v163;
    if (v103)
    {
LABEL_11:
      v45 = (v42[7] + 24 * v97);
      v46 = v45[1];
      *v45 = v88;
      v45[1] = v90;
      v45[2] = v95;

      v47 = *v144;
      v12 = v159;
      (*v144)(v161, v159);
      (*v152)(v160, v157);
      v47(v158, v12);
      v41 = v153;
      v25 = v155;
      goto LABEL_12;
    }

LABEL_49:
    v42[(v97 >> 6) + 8] |= 1 << v97;
    a2 = v148;
    v105 = v97;
    v12 = v159;
    v87(v42[6] + *(v148 + 72) * v97, v161, v159);
    v106 = (v42[7] + 24 * v105);
    *v106 = v88;
    v106[1] = v90;
    v106[2] = v95;
    v107 = a2[1];
    v107(v161, v12);
    (*v152)(v160, v157);
    v107(v158, v12);
    v108 = v42[2];
    v101 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v101)
    {
      goto LABEL_68;
    }

    v42[2] = v109;
    v41 = v153;
    v25 = v155;
    a2 = &qword_27EE735B8;
LABEL_12:
    v40 = v154;
  }

  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v113 = sub_247DD23CC();
  __swift_project_value_buffer(v113, qword_27EE7B920);

  v114 = sub_247DD23AC();
  v115 = sub_247DD2F2C();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v163 = v117;
    *v116 = v138;
    sub_247D6A33C(&qword_27EE738D0, MEMORY[0x277CC95F0]);

    v118 = sub_247DD2C4C();
    v120 = v119;

    v121 = sub_247D72868(v118, v120, &v163);

    *(v116 + 4) = v121;
    *(v116 + 12) = 2080;
    LOBYTE(v162) = *(v155 + 48);
    v122 = TransferHost.State.description.getter();
    v124 = sub_247D72868(v122, v123, &v163);

    *(v116 + 14) = v124;
    _os_log_impl(&dword_247D56000, v114, v115, "[FileList] Received request, sending response=%s state=%s", v116, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v117, -1, -1);
    MEMORY[0x24C1BAF60](v116, -1, -1);
  }

  v125 = v135;
  LOBYTE(v163) = 8;
  sub_247D58468(&v163);
  *&v163 = 200;
  *(&v163 + 1) = v42;
  v164 = 0;

  v125(&v163);

  sub_247D6B598(v163, *(&v163 + 1), v164, SHIBYTE(v164));
}

uint64_t sub_247D615CC()
{
  v1 = v0;
  v2 = sub_247DD2ABC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_247DD2ADC();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (!*(v1 + 72))
  {
    return result;
  }

  v10 = qword_27EE73298;
  v11 = *(v1 + 72);

  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B920);
  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_247D56000, v13, v14, "[Attestation] Closing attestation-channel-host", v15, 2u);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }

  sub_247DBBD10();

  v16 = *(v1 + 72);
  *(v1 + 72) = 0;
}

uint64_t sub_247D617B8(void (*a1)(char *, unint64_t, uint64_t), void (*a2)(uint64_t), uint64_t a3)
{
  v124 = a3;
  v125 = a2;
  v126 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73600, &qword_247DD4390);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v114 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v114 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v114 - v14;
  v16 = type metadata accessor for FileRequest(0);
  v120 = *(v16 - 8);
  v121 = v16;
  v17 = *(v120 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v115 = &v114 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v116 = (&v114 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v114 - v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E8, &qword_247DD4388);
  v27 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = (&v114 - v28);
  v29 = sub_247DD20DC();
  v118 = *(v29 - 8);
  v119 = v29;
  v30 = v118[8];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v114 - v35;
  MEMORY[0x28223BE20](v34);
  v117 = &v114 - v37;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v39 = result;
  v40 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount) = v42;
  if (*(result + 48) < 8u)
  {
    v43 = qword_27EE73298;

    if (v43 == -1)
    {
LABEL_5:
      v44 = sub_247DD23CC();
      __swift_project_value_buffer(v44, qword_27EE7B920);
      sub_247D6BA04(v126, v20, type metadata accessor for FileRequest);

      v45 = sub_247DD23AC();
      v46 = sub_247DD2F0C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v128 = v48;
        *v47 = 136315650;
        sub_247D6BA04(v20, v10, type metadata accessor for FileRequest);
        v50 = v120;
        v49 = v121;
        (*(v120 + 56))(v10, 0, 1, v121);
        sub_247D6BA6C(v10, v7, &qword_27EE73600, &qword_247DD4390);
        if ((*(v50 + 48))(v7, 1, v49) == 1)
        {
          v51 = 7104878;
          v52 = 0xE300000000000000;
        }

        else
        {
          v126 = v48;
          v93 = v116;
          sub_247D6B8C4(v7, v116, type metadata accessor for FileRequest);
          sub_247D6BA04(v93, v115, type metadata accessor for FileRequest);
          v51 = sub_247DD2CFC();
          v52 = v94;
          v48 = v126;
          sub_247D6B998(v93, type metadata accessor for FileRequest);
        }

        sub_247D6BAD4(v10, &qword_27EE73600, &qword_247DD4390);
        sub_247D6B998(v20, type metadata accessor for FileRequest);
        v95 = sub_247D72868(v51, v52, &v128);

        *(v47 + 4) = v95;
        *(v47 + 12) = 2080;
        v96 = sub_247D62550(v39);
        v98 = sub_247D72868(v96, v97, &v128);

        *(v47 + 14) = v98;
        *(v47 + 22) = 2080;
        v127 = *(v39 + 48);
        v99 = TransferHost.State.description.getter();
        v101 = sub_247D72868(v99, v100, &v128);

        *(v47 + 24) = v101;
        _os_log_impl(&dword_247D56000, v45, v46, "[Request] Unexpected request=%s, %s state=%s", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v48, -1, -1);
        MEMORY[0x24C1BAF60](v47, -1, -1);
      }

      else
      {

        sub_247D6B998(v20, type metadata accessor for FileRequest);
      }

      v102 = xmmword_247DD3EF0;
LABEL_33:
      v112 = v123;
      *v123 = v102;
      *(v112 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v125(v112);

      return sub_247D6BAD4(v112, &qword_27EE735E8, &qword_247DD4388);
    }

LABEL_38:
    swift_once();
    goto LABEL_5;
  }

  v53 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  v54 = *(v53 + 16);

  v55 = v126;
  if (!v54)
  {
LABEL_21:
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v84 = sub_247DD23CC();
    __swift_project_value_buffer(v84, qword_27EE7B920);
    sub_247D6BA04(v55, v26, type metadata accessor for FileRequest);

    v85 = sub_247DD23AC();
    v86 = sub_247DD2F0C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v128 = v88;
      *v87 = 136315650;
      sub_247D6BA04(v26, v15, type metadata accessor for FileRequest);
      v90 = v120;
      v89 = v121;
      (*(v120 + 56))(v15, 0, 1, v121);
      sub_247D6BA6C(v15, v13, &qword_27EE73600, &qword_247DD4390);
      if ((*(v90 + 48))(v13, 1, v89) == 1)
      {
        v91 = 7104878;
        v92 = 0xE300000000000000;
      }

      else
      {
        v126 = v88;
        v103 = v116;
        sub_247D6B8C4(v13, v116, type metadata accessor for FileRequest);
        sub_247D6BA04(v103, v115, type metadata accessor for FileRequest);
        v91 = sub_247DD2CFC();
        v92 = v104;
        v88 = v126;
        sub_247D6B998(v103, type metadata accessor for FileRequest);
      }

      sub_247D6BAD4(v15, &qword_27EE73600, &qword_247DD4390);
      sub_247D6B998(v26, type metadata accessor for FileRequest);
      v105 = sub_247D72868(v91, v92, &v128);

      *(v87 + 4) = v105;
      *(v87 + 12) = 2080;
      v106 = sub_247D62550(v39);
      v108 = sub_247D72868(v106, v107, &v128);

      *(v87 + 14) = v108;
      *(v87 + 22) = 2080;
      v127 = *(v39 + 48);
      v109 = TransferHost.State.description.getter();
      v111 = sub_247D72868(v109, v110, &v128);

      *(v87 + 24) = v111;
      _os_log_impl(&dword_247D56000, v85, v86, "[Request] Could not find URL for request=%s, %s state=%s", v87, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v88, -1, -1);
      MEMORY[0x24C1BAF60](v87, -1, -1);
    }

    else
    {

      sub_247D6B998(v26, type metadata accessor for FileRequest);
    }

    v102 = xmmword_247DD3F10;
    goto LABEL_33;
  }

  v56 = sub_247D94C28(v55);
  if ((v57 & 1) == 0)
  {

    goto LABEL_21;
  }

  v58 = v117;
  v59 = v118[2];
  v60 = v119;
  v59(v117, *(v53 + 56) + v118[9] * v56, v119);

  if (*(v39 + 48) != 9)
  {
    LOBYTE(v128) = 9;
    sub_247D58468(&v128);
  }

  v61 = *(v39 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount);
  v41 = __OFADD__(v61, 1);
  v62 = v61 + 1;
  if (v41)
  {
    __break(1u);
    goto LABEL_40;
  }

  *(v39 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount) = v62;
  if (qword_27EE73298 != -1)
  {
LABEL_40:
    swift_once();
  }

  v63 = sub_247DD23CC();
  __swift_project_value_buffer(v63, qword_27EE7B920);
  v59(v36, v58, v60);
  v126 = v59;
  v59(v33, v58, v60);

  v64 = sub_247DD23AC();
  v65 = sub_247DD2F2C();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v128 = v121;
    *v66 = 136315906;
    sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260]);
    LODWORD(v120) = v65;
    v67 = sub_247DD321C();
    v69 = v68;
    v116 = v64;
    v70 = v118[1];
    v70(v36, v119);
    v71 = sub_247D72868(v67, v69, &v128);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2048;
    v72 = URL.fileSize.getter();
    if (v73)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72;
    }

    v70(v33, v119);
    *(v66 + 14) = v74;
    *(v66 + 22) = 2080;
    v75 = sub_247D62550(v39);
    v77 = sub_247D72868(v75, v76, &v128);

    *(v66 + 24) = v77;
    *(v66 + 32) = 2080;
    v60 = v119;
    v127 = *(v39 + 48);
    v78 = TransferHost.State.description.getter();
    v80 = sub_247D72868(v78, v79, &v128);

    *(v66 + 34) = v80;
    v81 = v116;
    _os_log_impl(&dword_247D56000, v116, v120, "[Request] Returning file=%s size=%llu, %s state=%s", v66, 0x2Au);
    v82 = v121;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v82, -1, -1);
    v83 = v66;
    v58 = v117;
    MEMORY[0x24C1BAF60](v83, -1, -1);
  }

  else
  {
    v70 = v118[1];
    v70(v33, v60);

    v70(v36, v60);
  }

  v113 = v123;
  v126(v123, v58, v60);
  *(v113 + *(type metadata accessor for CosmoFileHttpResponse(0) + 20)) = 200;
  swift_storeEnumTagMultiPayload();
  v125(v113);

  sub_247D6BAD4(v113, &qword_27EE735E8, &qword_247DD4388);
  return (v70)(v58, v60);
}

unint64_t sub_247D62550(uint64_t a1)
{
  sub_247DD304C();

  v5 = *(a1 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount);
  v2 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v2);

  MEMORY[0x24C1BA0A0](0xD000000000000012, 0x8000000247DD8C70);
  v6 = *(a1 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount);
  v3 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v3);

  return 0xD000000000000016;
}

uint64_t sub_247D62660(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_247DD20DC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  if (!*(v17 + 16))
  {
  }

  v18 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);

  v19 = sub_247D94C28(a1);
  if ((v20 & 1) == 0)
  {
  }

  v21 = v8[2];
  v21(v14, *(v17 + 56) + v8[9] * v19, v7);

  v21(v12, v14, v7);
  if ((a4 & 1) == 0)
  {
    v40 = qword_27EE73298;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_247DD23CC();
    __swift_project_value_buffer(v41, qword_27EE7B920);
    v25 = sub_247DD23AC();
    v42 = sub_247DD2F2C();
    if (os_log_type_enabled(v25, v42))
    {
      v43 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54[0] = v52;
      *v43 = 136315138;
      v51 = sub_247D62B98(v12, v16);
      v45 = v44;
      v36 = v8[1];
      v36(v12, v7);
      v46 = sub_247D72868(v51, v45, v54);

      *(v43 + 4) = v46;
      _os_log_impl(&dword_247D56000, v25, v42, "[Request] Finished writing HTTP response for %s", v43, 0xCu);
      v47 = v52;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x24C1BAF60](v47, -1, -1);
      v39 = v43;
      goto LABEL_15;
    }

LABEL_16:

    v36 = v8[1];
    v36(v12, v7);
    goto LABEL_17;
  }

  v22 = qword_27EE73298;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE7B920);
  v24 = a3;
  v25 = sub_247DD23AC();
  v26 = sub_247DD2F0C();
  sub_247D6B9F8(a3, 1);
  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_16;
  }

  v27 = swift_slowAlloc();
  LODWORD(v51) = v26;
  v28 = v27;
  v52 = swift_slowAlloc();
  v53 = a3;
  v54[0] = v52;
  *v28 = 136315394;
  v29 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
  v30 = sub_247DD2CFC();
  v32 = sub_247D72868(v30, v31, v54);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  v33 = sub_247D62B98(v12, v16);
  v35 = v34;
  v36 = v8[1];
  v36(v12, v7);
  v37 = sub_247D72868(v33, v35, v54);

  *(v28 + 14) = v37;
  _os_log_impl(&dword_247D56000, v25, v51, "[Request] Failed writing HTTP resopnse with error=%s for %s", v28, 0x16u);
  v38 = v52;
  swift_arrayDestroy();
  MEMORY[0x24C1BAF60](v38, -1, -1);
  v39 = v28;
LABEL_15:
  MEMORY[0x24C1BAF60](v39, -1, -1);

LABEL_17:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v16 + 40);
    ObjectType = swift_getObjectType();
    (*(v48 + 40))(v14, ObjectType, v48);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (v36)(v14, v7);
}

uint64_t sub_247D62B98(uint64_t a1, uint64_t a2)
{
  sub_247DD304C();

  sub_247DD20DC();
  sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260]);
  v3 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v3);

  MEMORY[0x24C1BA0A0](0x3D657A697320, 0xE600000000000000);
  URL.fileSize.getter();
  v4 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v4);

  MEMORY[0x24C1BA0A0](0x3D6574617473202CLL, 0xE800000000000000);
  v7 = *(a2 + 48);
  v5 = TransferHost.State.description.getter();
  MEMORY[0x24C1BA0A0](v5);

  return 0x3D656C6966;
}

uint64_t sub_247D62CFC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735D8, &unk_247DD48D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v88 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - v15;
  v17 = type metadata accessor for RejectFileRequest(0);
  v92 = *(v17 - 8);
  v93 = v17;
  v18 = *(v92 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v89 = &v88 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v88 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - v26;
  v91 = sub_247DD20DC();
  v94 = *(v91 - 8);
  v28 = v94[8];
  v29 = MEMORY[0x28223BE20](v91);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v88 - v32;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v35 = *(result + 48);
  v97 = result;
  if (v35 < 8)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v36 = sub_247DD23CC();
    __swift_project_value_buffer(v36, qword_27EE7B920);
    sub_247D6BA04(a1, v21, type metadata accessor for RejectFileRequest);

    v37 = sub_247DD23AC();
    v38 = sub_247DD2F0C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v100 = v40;
      *v39 = 136315394;
      sub_247D6BA04(v21, v11, type metadata accessor for RejectFileRequest);
      v42 = v92;
      v41 = v93;
      (*(v92 + 56))(v11, 0, 1, v93);
      sub_247D6BA6C(v11, v8, &qword_27EE735D8, &unk_247DD48D0);
      if ((*(v42 + 48))(v8, 1, v41) == 1)
      {
        v43 = 7104878;
        v44 = 0xE300000000000000;
      }

      else
      {
        v74 = v90;
        sub_247D6B8C4(v8, v90, type metadata accessor for RejectFileRequest);
        sub_247D6BA04(v74, v89, type metadata accessor for RejectFileRequest);
        v43 = sub_247DD2CFC();
        v44 = v75;
        sub_247D6B998(v74, type metadata accessor for RejectFileRequest);
      }

      sub_247D6BAD4(v11, &qword_27EE735D8, &unk_247DD48D0);
      sub_247D6B998(v21, type metadata accessor for RejectFileRequest);
      v76 = sub_247D72868(v43, v44, &v100);

      *(v39 + 4) = v76;
      *(v39 + 12) = 2080;
      LOBYTE(v98) = *(v97 + 48);
      v77 = TransferHost.State.description.getter();
      v79 = sub_247D72868(v77, v78, &v100);

      *(v39 + 14) = v79;
      _os_log_impl(&dword_247D56000, v37, v38, "[Reject] Unexpected request=%s, state=%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v40, -1, -1);
      MEMORY[0x24C1BAF60](v39, -1, -1);
    }

    else
    {

      sub_247D6B998(v21, type metadata accessor for RejectFileRequest);
    }

    v100 = xmmword_247DD3EF0;
    v101 = 258;
    v96(&v100);
  }

  v45 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  if (!*(v45 + 16))
  {
LABEL_16:
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v65 = sub_247DD23CC();
    __swift_project_value_buffer(v65, qword_27EE7B920);
    sub_247D6BA04(a1, v27, type metadata accessor for RejectFileRequest);

    v66 = sub_247DD23AC();
    v67 = sub_247DD2F0C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v100 = v69;
      *v68 = 136315394;
      sub_247D6BA04(v27, v16, type metadata accessor for RejectFileRequest);
      v71 = v92;
      v70 = v93;
      (*(v92 + 56))(v16, 0, 1, v93);
      sub_247D6BA6C(v16, v14, &qword_27EE735D8, &unk_247DD48D0);
      if ((*(v71 + 48))(v14, 1, v70) == 1)
      {
        v72 = 7104878;
        v73 = 0xE300000000000000;
      }

      else
      {
        v80 = v90;
        sub_247D6B8C4(v14, v90, type metadata accessor for RejectFileRequest);
        sub_247D6BA04(v80, v89, type metadata accessor for RejectFileRequest);
        v72 = sub_247DD2CFC();
        v73 = v81;
        sub_247D6B998(v80, type metadata accessor for RejectFileRequest);
      }

      sub_247D6BAD4(v16, &qword_27EE735D8, &unk_247DD48D0);
      sub_247D6B998(v27, type metadata accessor for RejectFileRequest);
      v82 = sub_247D72868(v72, v73, &v100);

      *(v68 + 4) = v82;
      *(v68 + 12) = 2080;
      LOBYTE(v98) = *(v97 + 48);
      v83 = TransferHost.State.description.getter();
      v85 = sub_247D72868(v83, v84, &v100);

      *(v68 + 14) = v85;
      _os_log_impl(&dword_247D56000, v66, v67, "[Reject] Could not find URL for request=%s, state=%s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v69, -1, -1);
      MEMORY[0x24C1BAF60](v68, -1, -1);
    }

    else
    {

      sub_247D6B998(v27, type metadata accessor for RejectFileRequest);
    }

    v100 = xmmword_247DD3F10;
    v101 = 258;
    v96(&v100);
  }

  v46 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);

  v47 = sub_247D94C28(a1);
  if ((v48 & 1) == 0)
  {

    goto LABEL_16;
  }

  v49 = v94[2];
  v50 = v91;
  v49(v33, *(v45 + 56) + v94[9] * v47, v91);

  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v51 = sub_247DD23CC();
  __swift_project_value_buffer(v51, qword_27EE7B920);
  v49(v31, v33, v50);
  v52 = v97;

  v53 = sub_247DD23AC();
  v54 = sub_247DD2F2C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v100 = v56;
    *v55 = 136315394;
    sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260]);
    v57 = sub_247DD321C();
    v59 = v58;
    v60 = v94[1];
    v60(v31, v91);
    v61 = sub_247D72868(v57, v59, &v100);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    LOBYTE(v98) = *(v52 + 48);
    v62 = TransferHost.State.description.getter();
    v64 = sub_247D72868(v62, v63, &v100);

    *(v55 + 14) = v64;
    v50 = v91;
    _os_log_impl(&dword_247D56000, v53, v54, "[Reject] Marking file=%s as rejected, state=%s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v56, -1, -1);
    MEMORY[0x24C1BAF60](v55, -1, -1);
  }

  else
  {

    v60 = v94[1];
    v60(v31, v50);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v86 = *(v52 + 40);
    ObjectType = swift_getObjectType();
    (*(v86 + 32))(v33, ObjectType, v86);
    swift_unknownObjectRelease();
  }

  v98 = xmmword_247DD3F00;
  v99 = 0;
  v96(&v98);

  return (v60)(v33, v50);
}

Swift::Void __swiftcall TransferHost.stop()()
{
  v1 = sub_247DD2A0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_247DD2A2C();
  v6 = *(v12 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v12);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + 16);
  aBlock[4] = sub_247D6A3CC;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_18;
  v10 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v13 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
}

void sub_247D63B7C(uint64_t a1)
{
  v3 = *(a1 + 48);
  if (v3 <= 9)
  {
    v16 = v1;
    v17 = v2;
    if (v3 - 2 > 4)
    {
      v15 = 3;
      sub_247D5A170(&v15, 0xD000000000000014, 0x8000000247DD8940);
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v5 = sub_247DD23CC();
      __swift_project_value_buffer(v5, qword_27EE7B920);

      v6 = sub_247DD23AC();
      v7 = sub_247DD2F2C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136315138;
        v13 = *(a1 + 48);
        v10 = TransferHost.State.description.getter();
        v12 = sub_247D72868(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_247D56000, v6, v7, "[Stop] Queueing stop until file-transfer-channel established, state=%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x24C1BAF60](v9, -1, -1);
        MEMORY[0x24C1BAF60](v8, -1, -1);
      }

      *(a1 + 49) = *(a1 + 48);
    }
  }
}

uint64_t sub_247D63D34(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = a2;
    sub_247D60074(&v8, a3, a4);
  }

  return result;
}

uint64_t sub_247D63DB4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    sub_247D6A9B0(&v4);
  }

  return result;
}

uint64_t sub_247D63E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = sub_247DD2A0C();
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2A2C();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v8 + 48);
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a5;
  v20 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v25 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v18, v14, v20);
  _Block_release(v20);
  (*(v24 + 8))(v14, v11);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_247D640F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EE732B8 != -1)
  {
    swift_once();
  }

  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE73FA0);

  v12 = sub_247DD23AC();
  v13 = sub_247DD2F2C();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 67109378;
    *(v14 + 4) = a4;
    *(v14 + 8) = 2080;
    v16 = CosmoSerialChannelHost.description.getter();
    v18 = sub_247D72868(v16, v17, &v27);

    *(v14 + 10) = v18;
    _os_log_impl(&dword_247D56000, v12, v13, "[Respond] Registered handler for messageType=%u, %s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C1BAF60](v15, -1, -1);
    v19 = v14;
    a6 = v25;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_handlers;
  swift_beginAccess();

  v22 = *(a1 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v21);
  *(a1 + v21) = 0x8000000000000000;
  sub_247DCF714(a6, v20, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + v21) = v26;
  return swift_endAccess();
}

uint64_t sub_247D64310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t (*)(uint64_t a1), void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = sub_247DD1F5C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_247DD1F4C();
  sub_247D6AF5C();
  sub_247DD1F3C();

  LOWORD(v19) = v17;
  v20 = v18;
  v15 = swift_allocObject();
  v15[2] = sub_247D6AF58;
  v15[3] = v11;
  v15[4] = a6;

  a7(&v19, sub_247D6B098, v15);

  return sub_247D6A1F8(v20, *(&v20 + 1));
}

uint64_t sub_247D647F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *, uint64_t (*)(uint64_t a1), void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = sub_247DD1F5C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_247DD1F4C();
  sub_247D6B168();
  sub_247DD1F3C();

  v18 = v17;
  v15 = swift_allocObject();
  v15[2] = sub_247D6C028;
  v15[3] = v11;
  v15[4] = a6;

  a7(&v18, sub_247D6B1BC, v15);

  return sub_247D6A1F8(v18, *(&v18 + 1));
}

uint64_t sub_247D64CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *, uint64_t (*)(uint64_t a1), void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = sub_247DD1F5C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_247DD1F4C();
  sub_247D6B390();
  sub_247DD1F3C();

  v18 = v17;
  v15 = swift_allocObject();
  v15[2] = sub_247D6C028;
  v15[3] = v11;
  v15[4] = a6;

  a7(&v18, sub_247D6B424, v15);
}

uint64_t sub_247D6519C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    return a4(a1, 0, 0, 1);
  }

  v14 = sub_247DD1F8C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_247D6A2E8(a1, a2);
  sub_247DD1F7C();
  a7();
  v17 = sub_247DD1F6C();
  v19 = v18;

  sub_247D6A2E8(v17, v19);
  a4(a9, v17, v19, 0);
  sub_247D6A1F8(v17, v19);
  sub_247D6A1F8(v17, v19);
  return sub_247D6A1F8(a1, a2);
}

uint64_t sub_247D65528(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (a1[4])
  {
    return a2(*a1, 0, 0, 1);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v4 = sub_247DD1F8C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  sub_247DD1F7C();
  sub_247D6B460();
  v7 = sub_247DD1F6C();
  v9 = v8;

  sub_247D6A2E8(v7, v9);
  a2(6, v7, v9, 0);
  sub_247D6A1F8(v7, v9);
  sub_247D6A1F8(v7, v9);
}

uint64_t sub_247D65914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v27 = a7;
  v28 = a8;
  v10 = v8;
  v15 = sub_247DD2A0C();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_247DD2A2C();
  v30 = *(v19 - 8);
  v31 = v19;
  v20 = *(v30 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v10 + 48);
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a3;
  v23[6] = a4;
  aBlock[4] = a6;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = v27;
  v24 = _Block_copy(aBlock);

  v28(a3, a4);
  sub_247DD2A1C();
  v33 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v22, v18, v24);
  _Block_release(v24);
  (*(v32 + 8))(v18, v15);
  (*(v30 + 8))(v22, v31);
}

void sub_247D65C0C(uint64_t a1, unint64_t a2)
{
  v5 = sub_247DD1F5C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_247DD1F4C();
  sub_247D6BDE8();
  sub_247DD1F3C();
  if (!v2)
  {

    return;
  }

  v8 = sub_247DD03F8(a1, a2);
  if (v9)
  {
    goto LABEL_10;
  }

  v29 = a1;
  v30 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_247D6BAD4(v27, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v8 = sub_247DD0170(a1, a2);
LABEL_10:
    v11 = v8;
    v10 = v9;
    goto LABEL_11;
  }

  sub_247D6B5A8(v27, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_247DD30FC();
  v10 = *(&v27[0] + 1);
  v11 = *&v27[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE74460);

  v13 = v2;

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 136315906;
    v18 = sub_247D72868(v11, v10, v31);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_247D72868(0x657361656C2FLL, 0xE600000000000000, v31);
    *(v16 + 22) = 2080;
    *&v27[0] = v2;
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v20 = sub_247DD2CFC();
    v22 = sub_247D72868(v20, v21, v31);

    *(v16 + 24) = v22;
    *(v16 + 32) = 2080;
    v23 = CosmoMultiplexChannelHost.description.getter();
    v25 = sub_247D72868(v23, v24, v31);

    *(v16 + 34) = v25;
    _os_log_impl(&dword_247D56000, v14, v15, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v26 = xmmword_247DD3EF0;
  *(v26 + 16) = 2;
  swift_willThrow();
}

void sub_247D66024(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v12 = sub_247DD1F5C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_247DD1F4C();
  a4();
  sub_247DD1F3C();
  if (!v6)
  {

    return;
  }

  v15 = sub_247DD03F8(a1, a2);
  if (v16)
  {
    goto LABEL_10;
  }

  v38 = a1;
  v39 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_247D6BAD4(v36, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v15 = sub_247DD0170(a1, a2);
LABEL_10:
    v18 = v15;
    v17 = v16;
    goto LABEL_11;
  }

  sub_247D6B5A8(v36, v40);
  __swift_project_boxed_opaque_existential_1(v40, v41);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_247DD30FC();
  v17 = *(&v36[0] + 1);
  v18 = *&v36[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v19 = sub_247DD23CC();
  __swift_project_value_buffer(v19, qword_27EE74460);

  v20 = v6;

  v21 = sub_247DD23AC();
  v22 = sub_247DD2F0C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = a3;
    v24 = a6;
    v25 = v23;
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136315906;
    v27 = sub_247D72868(v18, v17, v40);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_247D72868(v24, 0xE600000000000000, v40);
    *(v25 + 22) = 2080;
    *&v36[0] = v6;
    v28 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v29 = sub_247DD2CFC();
    v31 = sub_247D72868(v29, v30, v40);

    *(v25 + 24) = v31;
    *(v25 + 32) = 2080;
    v32 = CosmoMultiplexChannelHost.description.getter();
    v34 = sub_247D72868(v32, v33, v40);

    *(v25 + 34) = v34;
    _os_log_impl(&dword_247D56000, v21, v22, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v26, -1, -1);
    MEMORY[0x24C1BAF60](v25, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v35 = xmmword_247DD3EF0;
  *(v35 + 16) = 2;
  swift_willThrow();
}

void sub_247D66448(uint64_t a1, unint64_t a2)
{
  v5 = sub_247DD1F5C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_247DD1F4C();
  type metadata accessor for FileRequest(0);
  sub_247D6A33C(&qword_27EE735F0, type metadata accessor for FileRequest);
  sub_247DD1F3C();
  if (!v2)
  {

    return;
  }

  v8 = sub_247DD03F8(a1, a2);
  if (v9)
  {
    goto LABEL_10;
  }

  v29 = a1;
  v30 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_247D6BAD4(v27, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v8 = sub_247DD0170(a1, a2);
LABEL_10:
    v11 = v8;
    v10 = v9;
    goto LABEL_11;
  }

  sub_247D6B5A8(v27, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_247DD30FC();
  v10 = *(&v27[0] + 1);
  v11 = *&v27[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE74460);

  v13 = v2;

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 136315906;
    v18 = sub_247D72868(v11, v10, v31);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_247D72868(0x656C69662FLL, 0xE500000000000000, v31);
    *(v16 + 22) = 2080;
    *&v27[0] = v2;
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v20 = sub_247DD2CFC();
    v22 = sub_247D72868(v20, v21, v31);

    *(v16 + 24) = v22;
    *(v16 + 32) = 2080;
    v23 = CosmoMultiplexChannelHost.description.getter();
    v25 = sub_247D72868(v23, v24, v31);

    *(v16 + 34) = v25;
    _os_log_impl(&dword_247D56000, v14, v15, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v26 = xmmword_247DD3EF0;
  *(v26 + 16) = 2;
  swift_willThrow();
}

void sub_247D66898(uint64_t a1, unint64_t a2)
{
  v5 = sub_247DD1F5C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_247DD1F4C();
  type metadata accessor for RejectFileRequest(0);
  sub_247D6A33C(&qword_27EE735C8, type metadata accessor for RejectFileRequest);
  sub_247DD1F3C();
  if (!v2)
  {

    return;
  }

  v8 = sub_247DD03F8(a1, a2);
  if (v9)
  {
    goto LABEL_10;
  }

  v29 = a1;
  v30 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_247D6BAD4(v27, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v8 = sub_247DD0170(a1, a2);
LABEL_10:
    v11 = v8;
    v10 = v9;
    goto LABEL_11;
  }

  sub_247D6B5A8(v27, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_247DD30FC();
  v10 = *(&v27[0] + 1);
  v11 = *&v27[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE74460);

  v13 = v2;

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 136315906;
    v18 = sub_247D72868(v11, v10, v31);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_247D72868(0x467463656A65722FLL, 0xEB00000000656C69, v31);
    *(v16 + 22) = 2080;
    *&v27[0] = v2;
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v20 = sub_247DD2CFC();
    v22 = sub_247D72868(v20, v21, v31);

    *(v16 + 24) = v22;
    *(v16 + 32) = 2080;
    v23 = CosmoMultiplexChannelHost.description.getter();
    v25 = sub_247D72868(v23, v24, v31);

    *(v16 + 34) = v25;
    _os_log_impl(&dword_247D56000, v14, v15, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v26 = xmmword_247DD3EF0;
  *(v26 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_247D66CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = a5;
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x657361656C2FLL, 0xE600000000000000, v29);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v29);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v26;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v27;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  v23 = *(a1 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6BD70, v20, sub_247D6BDC4, v21, 0x657361656C2FLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v28;
  return swift_endAccess();
}

uint64_t sub_247D66F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = a5;
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x65736F6C632FLL, 0xE600000000000000, v29);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v29);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v26;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v27;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  v23 = *(a1 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6BB60, v20, sub_247D6BB6C, v21, 0x65736F6C632FLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v28;
  return swift_endAccess();
}

uint64_t sub_247D67244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = a5;
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x73656C69662FLL, 0xE600000000000000, v29);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v29);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v26;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v27;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  v23 = *(a1 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6B578, v20, sub_247D6B588, v21, 0x73656C69662FLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v28;
  return swift_endAccess();
}

uint64_t sub_247D674EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = a5;
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x656C69662FLL, 0xE500000000000000, v29);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v29);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v26;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v27;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  v23 = *(a1 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6B8A8, v20, sub_247D6B8B4, v21, 0x656C69662FLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v28;
  return swift_endAccess();
}

uint64_t sub_247D67794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v9 = sub_247DD23CC();
  __swift_project_value_buffer(v9, qword_27EE74460);

  v10 = sub_247DD23AC();
  v11 = sub_247DD2F2C();

  if (os_log_type_enabled(v10, v11))
  {
    v26 = a5;
    v12 = swift_slowAlloc();
    v25 = a2;
    v13 = swift_slowAlloc();
    v29[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_247D72868(0x467463656A65722FLL, 0xEB00000000656C69, v29);
    *(v12 + 12) = 2080;
    v14 = CosmoMultiplexChannelHost.description.getter();
    v16 = sub_247D72868(v14, v15, v29);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_247D56000, v10, v11, "[Respond] Registered handler for path=%s, %s", v12, 0x16u);
    swift_arrayDestroy();
    v17 = v13;
    a2 = v25;
    MEMORY[0x24C1BAF60](v17, -1, -1);
    v18 = v12;
    a5 = v26;
    MEMORY[0x24C1BAF60](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a1;
  v21 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  v22 = *(a1 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v21);
  *(a1 + v21) = 0x8000000000000000;
  sub_247DCF568(sub_247D6B7EC, v19, sub_247D6B7F8, v20, 0x467463656A65722FLL, 0xEB00000000656C69, isUniquelyReferenced_nonNull_native);
  *(a1 + v21) = v28;
  return swift_endAccess();
}

uint64_t sub_247D67A50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t (*)(uint64_t a1), uint64_t))
{
  sub_247D65C0C(a1, a2);
  LOBYTE(v11) = v12;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  a6(&v11, sub_247D6BE3C, v9);
}

uint64_t sub_247D67B70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  sub_247D66024(a1, a2, a5, sub_247D6BB88, &type metadata for CloseRequest, 0x65736F6C632FLL);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  a6(v10, sub_247D6BBDC, v9);
}

uint64_t sub_247D67CAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  sub_247D66024(a1, a2, a5, sub_247D6B624, &type metadata for FileListRequest, 0x73656C69662FLL);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  a6(v10, sub_247D6B678, v9);
}

uint64_t sub_247D67DE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t (*)(uint64_t a1), uint64_t))
{
  v11 = type metadata accessor for FileRequest(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  sub_247D66448(a1, a2);
  sub_247D6B8C4(v15, v17, type metadata accessor for FileRequest);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  a6(v17, sub_247D6B92C, v18);

  return sub_247D6B998(v17, type metadata accessor for FileRequest);
}

uint64_t sub_247D67F98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t (*)(uint64_t a1), uint64_t))
{
  v11 = type metadata accessor for RejectFileRequest(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  sub_247D66898(a1, a2);
  sub_247D6B8C4(v15, v17, type metadata accessor for RejectFileRequest);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  a6(v17, sub_247D6B808, v18);

  return sub_247D6B998(v17, type metadata accessor for RejectFileRequest);
}

uint64_t sub_247D68148(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t *))
{
  if (a4)
  {
    v10 = a1;
    v11 = a2;
    LOBYTE(v12) = a3;
    v15 = 1;
    sub_247D6B69C(a1, a2, a3);
  }

  else
  {
    v13 = &type metadata for LeaseRequest.Response;
    v8 = a1;
    v14 = sub_247D6BE54();
    LODWORD(v10) = v8;
    v11 = a2;
    v12 = a3;
    v15 = 0;
  }

  a5(&v10);
  return sub_247D6BAD4(&v10, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D681FC(uint64_t a1, uint64_t a2, __int16 a3, void (*a4)(uint64_t *))
{
  if ((a3 & 0x100) != 0)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    v12 = 1;
    sub_247D6B69C(a1, a2, a3);
  }

  else
  {
    v10 = &type metadata for FileListRequest.Response;
    LODWORD(v7) = a1;
    v11 = sub_247D6B6B4();
    v8 = a2;
    v12 = 0;
  }

  a4(&v7);
  return sub_247D6BAD4(&v7, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D682A0(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = type metadata accessor for CosmoFileHttpResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E8, &qword_247DD4388);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_247D6BA6C(a1, &v15 - v10, &qword_27EE735E8, &qword_247DD4388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v11[16];
    v15 = *v11;
    v16 = v12;
    v19 = 1;
    a2(&v15);
  }

  else
  {
    sub_247D6B8C4(v11, v7, type metadata accessor for CosmoFileHttpResponse);
    v17 = v4;
    v18 = sub_247D6A33C(&qword_27EE735F8, type metadata accessor for CosmoFileHttpResponse);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    sub_247D6BA04(v7, boxed_opaque_existential_1, type metadata accessor for CosmoFileHttpResponse);
    v19 = 0;
    a2(&v15);
    sub_247D6B998(v7, type metadata accessor for CosmoFileHttpResponse);
  }

  return sub_247D6BAD4(&v15, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D684A4(uint64_t a1, uint64_t a2, __int16 a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if ((a3 & 0x100) != 0)
  {
    v10[0] = a1;
    v10[1] = a2;
    v11 = a3;
    v14 = 1;
    sub_247D6B69C(a1, a2, a3);
  }

  else
  {
    v12 = a6;
    v8 = a1;
    v13 = a7();
    LODWORD(v10[0]) = v8;
    v14 = 0;
  }

  a4(v10);
  return sub_247D6BAD4(v10, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D68534(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(char *, _BYTE *, uint64_t, void))
{
  if (a6)
  {
    v11 = result;

    sub_247D65C0C(v11, a2);
    v37 = v32;
    sub_247D6BA6C(a3, &v32, &qword_27EE73588, &qword_247DD4350);
    if (v34)
    {
      *v35 = v32;
      *&v35[16] = v33;
      v36 = 1;
LABEL_4:
      a6(&v37, v35, a4, a5 & 1);
      sub_247D6A24C(a6);
      return sub_247D6AD58(*v35, *&v35[8], v35[16], v36);
    }

    sub_247D6B5A8(&v32, v31);
    sub_247D6B5C0(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    if (swift_dynamicCast())
    {
      if (*(&v28 + 1) != 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        *v35 = v27;
        *&v35[8] = v28;
        v36 = 0;
        goto LABEL_4;
      }

      v12 = v27;
      v13 = v28;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v27 = 0;
      *&v28 = 0;
      *(&v28 + 1) = 1;
    }

    sub_247D6BDD4(v12, v13, 1);
    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v14 = sub_247DD23CC();
    __swift_project_value_buffer(v14, qword_27EE74460);
    sub_247D6B5C0(v31, v30);
    v15 = sub_247DD23AC();
    v16 = sub_247DD2F0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      sub_247D6B5C0(v30, &v27);
      sub_247D6BA6C(&v27, &v25, &qword_27EE73598, &qword_247DD4360);
      if (v26)
      {
        sub_247D6B5A8(&v25, v24);
        sub_247D6B5C0(v24, v23);
        v19 = sub_247DD2CFC();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      sub_247D6BAD4(&v27, &qword_27EE73598, &qword_247DD4360);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v22 = sub_247D72868(v19, v21, &v29);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_247D56000, v15, v16, "[Respond] Could not cast %s into response type", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x24C1BAF60](v18, -1, -1);
      MEMORY[0x24C1BAF60](v17, -1, -1);
      sub_247D6A24C(a6);
    }

    else
    {
      sub_247D6A24C(a6);

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  return result;
}

uint64_t sub_247D688D8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, __int128 *, uint64_t, void), uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v14 = result;

    sub_247D66024(v14, a2, a8, sub_247D6BB88, &type metadata for CloseRequest, 0x65736F6C632FLL);
    v15 = sub_247D6BA6C(a3, &v34, &qword_27EE73588, &qword_247DD4350);
    if (v36)
    {
      v37 = v34;
      LOBYTE(v38) = v35;
      HIBYTE(v38) = 1;
LABEL_6:
      a6(v15, &v37, a4, a5 & 1);
      sub_247D6A24C(a6);
      return sub_247D6BB7C(v37, *(&v37 + 1), v38, SHIBYTE(v38));
    }

    sub_247D6B5A8(&v34, v33);
    sub_247D6B5C0(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    if (swift_dynamicCast())
    {
      v30 = 0;
      v15 = __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v37 = v29;
      v38 = 0;
      goto LABEL_6;
    }

    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE74460);
    sub_247D6B5C0(v33, v32);
    v17 = sub_247DD23AC();
    v18 = sub_247DD2F0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      sub_247D6B5C0(v32, &v29);
      sub_247D6BA6C(&v29, &v27, &qword_27EE73598, &qword_247DD4360);
      if (v28)
      {
        sub_247D6B5A8(&v27, v26);
        sub_247D6B5C0(v26, v25);
        v21 = sub_247DD2CFC();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      sub_247D6BAD4(&v29, &qword_27EE73598, &qword_247DD4360);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v24 = sub_247D72868(v21, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_247D56000, v17, v18, "[Respond] Could not cast %s into response type", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x24C1BAF60](v20, -1, -1);
      MEMORY[0x24C1BAF60](v19, -1, -1);
      sub_247D6A24C(a6);
    }

    else
    {
      sub_247D6A24C(a6);

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  return result;
}

uint64_t sub_247D68C84(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, __int128 *, uint64_t, void), uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v14 = result;

    sub_247D66024(v14, a2, a8, sub_247D6B624, &type metadata for FileListRequest, 0x73656C69662FLL);
    v15 = sub_247D6BA6C(a3, &v34, &qword_27EE73588, &qword_247DD4350);
    if (v36)
    {
      v37 = v34;
      LOBYTE(v38) = v35;
      HIBYTE(v38) = 1;
LABEL_7:
      a6(v15, &v37, a4, a5 & 1);
      sub_247D6A24C(a6);
      return sub_247D6B598(v37, *(&v37 + 1), v38, SHIBYTE(v38));
    }

    sub_247D6B5A8(&v34, v33);
    sub_247D6B5C0(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    if (swift_dynamicCast())
    {
      if (v30)
      {
        v15 = __swift_destroy_boxed_opaque_existential_0Tm(v33);
        *&v37 = v29;
        *(&v37 + 1) = v30;
        v38 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE74460);
    sub_247D6B5C0(v33, v32);
    v17 = sub_247DD23AC();
    v18 = sub_247DD2F0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      sub_247D6B5C0(v32, &v29);
      sub_247D6BA6C(&v29, &v27, &qword_27EE73598, &qword_247DD4360);
      if (v28)
      {
        sub_247D6B5A8(&v27, v26);
        sub_247D6B5C0(v26, v25);
        v21 = sub_247DD2CFC();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      sub_247D6BAD4(&v29, &qword_27EE73598, &qword_247DD4360);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v24 = sub_247D72868(v21, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_247D56000, v17, v18, "[Respond] Could not cast %s into response type", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x24C1BAF60](v20, -1, -1);
      MEMORY[0x24C1BAF60](v19, -1, -1);
      sub_247D6A24C(a6);
    }

    else
    {
      sub_247D6A24C(a6);

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  return result;
}

uint64_t sub_247D69044(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(void, void, void, void))
{
  v48 = a5;
  v49 = a4;
  v50 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E0, &qword_247DD4380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v43 - v11;
  v12 = type metadata accessor for CosmoFileHttpResponse(0);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E8, &qword_247DD4388);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = type metadata accessor for FileRequest(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v51 = a6;
  if (a6)
  {
    v26 = &v43 - v25;

    sub_247D66448(a1, a2);
    v27 = v26;
    sub_247D6B8C4(v23, v26, type metadata accessor for FileRequest);
    sub_247D6BA6C(v50, &v60, &qword_27EE73588, &qword_247DD4350);
    if (v62)
    {
      v28 = v61;
      *v18 = v60;
      v18[16] = v28;
    }

    else
    {
      sub_247D6B5A8(&v60, v59);
      sub_247D6B5C0(v59, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
      v30 = v46;
      v29 = v47;
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v45 + 56))(v29, 1, 1, v30);
        sub_247D6BAD4(v29, &qword_27EE735E0, &qword_247DD4380);
        if (qword_27EE73330 != -1)
        {
          swift_once();
        }

        v34 = sub_247DD23CC();
        __swift_project_value_buffer(v34, qword_27EE74460);
        sub_247D6B5C0(v59, v58);
        v35 = sub_247DD23AC();
        v36 = sub_247DD2F0C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v57 = v38;
          *v37 = 136315138;
          sub_247D6B5C0(v58, v56);
          sub_247D6BA6C(v56, &v54, &qword_27EE73598, &qword_247DD4360);
          if (v55)
          {
            sub_247D6B5A8(&v54, v53);
            sub_247D6B5C0(v53, &v52);
            v39 = sub_247DD2CFC();
            v41 = v40;
            __swift_destroy_boxed_opaque_existential_0Tm(v53);
          }

          else
          {
            v41 = 0xE300000000000000;
            v39 = 7104878;
          }

          sub_247D6BAD4(v56, &qword_27EE73598, &qword_247DD4360);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          v42 = sub_247D72868(v39, v41, &v57);

          *(v37 + 4) = v42;
          _os_log_impl(&dword_247D56000, v35, v36, "[Respond] Could not cast %s into response type", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          MEMORY[0x24C1BAF60](v38, -1, -1);
          MEMORY[0x24C1BAF60](v37, -1, -1);
          sub_247D6A24C(v51);
        }

        else
        {
          sub_247D6A24C(v51);

          __swift_destroy_boxed_opaque_existential_0Tm(v58);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        return sub_247D6B998(v27, type metadata accessor for FileRequest);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      (*(v45 + 56))(v29, 0, 1, v30);
      v31 = v29;
      v32 = v44;
      sub_247D6B8C4(v31, v44, type metadata accessor for CosmoFileHttpResponse);
      sub_247D6B8C4(v32, v18, type metadata accessor for CosmoFileHttpResponse);
    }

    swift_storeEnumTagMultiPayload();
    v33 = v51;
    v51(v26, v18, v49, v48 & 1);
    sub_247D6A24C(v33);
    sub_247D6BAD4(v18, &qword_27EE735E8, &qword_247DD4388);
    return sub_247D6B998(v27, type metadata accessor for FileRequest);
  }

  return result;
}

uint64_t sub_247D69618(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, __int128 *, uint64_t, void))
{
  v12 = type metadata accessor for RejectFileRequest(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v31 = &v31 - v18;
  if (a6)
  {

    sub_247D66898(a1, a2);
    v19 = v16;
    v20 = v31;
    sub_247D6B8C4(v19, v31, type metadata accessor for RejectFileRequest);
    sub_247D6BA6C(a3, &v41, &qword_27EE73588, &qword_247DD4350);
    if (v43)
    {
      v44 = v41;
      LOBYTE(v45) = v42;
      HIBYTE(v45) = 1;
    }

    else
    {
      sub_247D6B5A8(&v41, v40);
      sub_247D6B5C0(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
      if ((swift_dynamicCast() & 1) == 0)
      {
        if (qword_27EE73330 != -1)
        {
          swift_once();
        }

        v22 = sub_247DD23CC();
        __swift_project_value_buffer(v22, qword_27EE74460);
        sub_247D6B5C0(v40, v39);
        v23 = sub_247DD23AC();
        v24 = sub_247DD2F0C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v38 = v26;
          *v25 = 136315138;
          sub_247D6B5C0(v39, &v36);
          sub_247D6BA6C(&v36, &v34, &qword_27EE73598, &qword_247DD4360);
          if (v35)
          {
            sub_247D6B5A8(&v34, v33);
            sub_247D6B5C0(v33, &v32);
            v27 = sub_247DD2CFC();
            v29 = v28;
            __swift_destroy_boxed_opaque_existential_0Tm(v33);
          }

          else
          {
            v29 = 0xE300000000000000;
            v27 = 7104878;
          }

          sub_247D6BAD4(&v36, &qword_27EE73598, &qword_247DD4360);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          v30 = sub_247D72868(v27, v29, &v38);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_247D56000, v23, v24, "[Respond] Could not cast %s into response type", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v26);
          MEMORY[0x24C1BAF60](v26, -1, -1);
          MEMORY[0x24C1BAF60](v25, -1, -1);
          sub_247D6A24C(a6);

          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          v21 = v31;
          return sub_247D6B998(v21, type metadata accessor for RejectFileRequest);
        }

        sub_247D6A24C(a6);

        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_7:
        v21 = v20;
        return sub_247D6B998(v21, type metadata accessor for RejectFileRequest);
      }

      v37 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      v44 = v36;
      v45 = 0;
    }

    a6(v20, &v44, a4, a5 & 1);
    sub_247D6A24C(a6);
    sub_247D6BB7C(v44, *(&v44 + 1), v45, SHIBYTE(v45));
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_247D69A48()
{
  v1 = *v0;
  v2 = sub_247DD2CAC();
  v3 = MEMORY[0x24C1BA120](v2);

  return v3;
}

uint64_t sub_247D69A84()
{
  v1 = *v0;
  sub_247DD2CAC();
  sub_247DD2D7C();
}

uint64_t sub_247D69AD8()
{
  v1 = *v0;
  sub_247DD2CAC();
  sub_247DD32BC();
  sub_247DD2D7C();
  v2 = sub_247DD32EC();

  return v2;
}

uint64_t sub_247D69B54(uint64_t a1, id *a2)
{
  result = sub_247DD2C8C();
  *a2 = 0;
  return result;
}

uint64_t sub_247D69BCC(uint64_t a1, id *a2)
{
  v3 = sub_247DD2C9C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_247D69C4C@<X0>(uint64_t *a1@<X8>)
{
  sub_247DD2CAC();
  v2 = sub_247DD2C7C();

  *a1 = v2;
  return result;
}

uint64_t sub_247D69C90()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_247DD228C();
}

uint64_t sub_247D69CDC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_247DD227C();
}

uint64_t sub_247D69D34()
{
  sub_247DD32BC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_247DD227C();
  return sub_247DD32EC();
}

uint64_t sub_247D69D9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_247DD2CAC();
  v6 = v5;
  if (v4 == sub_247DD2CAC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_247DD322C();
  }

  return v9 & 1;
}

uint64_t sub_247D69E24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_247DD226C();
}

uint64_t sub_247D69E90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247DD2C7C();

  *a2 = v5;
  return result;
}

uint64_t sub_247D69ED8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_247DD2CAC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_247D69F04(uint64_t a1)
{
  v2 = sub_247D6A33C(&qword_27EE73650, type metadata accessor for FileAttributeKey);
  v3 = sub_247D6A33C(&qword_27EE73658, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void _s5Cosmo20TransferHostDelegatePAAE16requestedPinCodeyyyAA0fG0VcF_0()
{
  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v0 = sub_247DD23CC();
  __swift_project_value_buffer(v0, qword_27EE7B920);
  oslog = sub_247DD23AC();
  v1 = sub_247DD2F2C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_247D56000, oslog, v1, "IGNORING: using PIN-less flow", v2, 2u);
    MEMORY[0x24C1BAF60](v2, -1, -1);
  }
}

uint64_t type metadata accessor for TransferHost()
{
  result = qword_27EE733E0;
  if (!qword_27EE733E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247D6A0F4()
{
  result = qword_27EE739A0;
  if (!qword_27EE739A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE739A0);
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

uint64_t sub_247D6A1F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247D6A24C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247D6A25C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247D6A1F8(a1, a2);
  }

  return a1;
}

uint64_t sub_247D6A270()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_247D6A1F8(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D6A2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247D6A33C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247D6A384()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247D6A3D8()
{
  result = qword_27EE733D0;
  if (!qword_27EE733D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE733D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransferHost.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransferHost.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_247D6A61C()
{
  sub_247D6A7F4(319, &qword_27EE733F0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_247D6A7F4(319, &unk_27EE733F8, type metadata accessor for NetworkDescriptor);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_247D6A7F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_247DD2F9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransferHost.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TransferHost.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
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

uint64_t sub_247D6A9B0(char *a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(v3 + 16);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  result = (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v3 + 48) > 0xAu)
  {
    return result;
  }

  LOBYTE(v36) = 11;
  sub_247D58468(&v36);
  v2 = (v3 + 112);
  v9 = *(v3 + 112);
  *(v3 + 49) = 12;
  v14 = *(v3 + 120);
  if (v9)
  {
    v15 = qword_27EE73298;
    v16 = *(v3 + 120);

    if (v15 == -1)
    {
LABEL_5:
      v17 = sub_247DD23CC();
      __swift_project_value_buffer(v17, qword_27EE7B920);
      v18 = sub_247DD23AC();
      v19 = sub_247DD2F2C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_247D56000, v18, v19, "[Close] Found incomplete onStart() lambda, completing with error", v20, 2u);
        MEMORY[0x24C1BAF60](v20, -1, -1);
      }

      sub_247D6ADD0();
      v21 = swift_allocError();
      *v22 = xmmword_247DD3F30;
      v36 = v21;
      v37 = 0;
      v38 = 1;
      v9(&v36);
      sub_247D6A24C(v9);
      sub_247D6AE24(v36, v37, v38);
      v23 = *(v3 + 112);
      v24 = *(v3 + 120);
      goto LABEL_9;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v23 = 0;
LABEL_9:
  *v2 = 0;
  v2[1] = 0;
  sub_247D6A24C(v23);
  sub_247D615CC();
  v25 = *(v3 + 80);
  v26 = *(v3 + 88);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  sub_247D6A24C(v25);
  v27 = *(v3 + 96);
  v28 = *(v3 + 104);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  sub_247D6A24C(v27);
  v29 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
  {
    v30 = *(v3 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost);

    sub_247DC9468();

    v31 = *(v3 + v29);
  }

  *(v3 + v29) = 0;

  v32 = *(v3 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover);
  *(v3 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    HIBYTE(v35) = v10;
    (*(v33 + 48))(&v35 + 7, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_247D6ACFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247D6AD0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D6AD58(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_247D6AD68(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_88Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247D6ADC0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_247D63DB4(*(v0 + 16), *(v0 + 24));
}

unint64_t sub_247D6ADD0()
{
  result = qword_27EE734F0;
  if (!qword_27EE734F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE734F0);
  }

  return result;
}

void sub_247D6AE24(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_247D6A1F8(a1, a2);
  }
}

uint64_t sub_247D6AE30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247D6AF20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247D6AF5C()
{
  result = qword_27EE73528;
  if (!qword_27EE73528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73528);
  }

  return result;
}

unint64_t sub_247D6AFB0()
{
  result = qword_27EE73540;
  if (!qword_27EE73540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73540);
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_247D6B0BC()
{
  result = qword_27EE73550;
  if (!qword_27EE73550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73550);
  }

  return result;
}

unint64_t sub_247D6B168()
{
  result = qword_27EE73558;
  if (!qword_27EE73558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73558);
  }

  return result;
}

unint64_t sub_247D6B224()
{
  result = qword_27EE73560;
  if (!qword_27EE73560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73560);
  }

  return result;
}

uint64_t sub_247D6B278(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247D6A2E8(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_108Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247D6B34C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4 & 1;
  return v5(v8);
}

unint64_t sub_247D6B390()
{
  result = qword_27EE73568;
  if (!qword_27EE73568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73568);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247D6B424(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return sub_247D65528(v7, v2);
}

unint64_t sub_247D6B460()
{
  result = qword_27EE73570;
  if (!qword_27EE73570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73570);
  }

  return result;
}

uint64_t sub_247D6B4B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_247D6B598(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_247D6B5A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_247D6B5C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_247D6B624()
{
  result = qword_27EE735A0;
  if (!qword_27EE735A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE735A0);
  }

  return result;
}

uint64_t sub_247D6B69C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_247D6B6B4()
{
  result = qword_27EE735A8;
  if (!qword_27EE735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE735A8);
  }

  return result;
}

uint64_t sub_247D6B708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B0, &qword_247DD4368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D6B778(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_247D6B7F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  return sub_247D69618(a1, a2, a3, a4, a5 & 1, *(v5 + 16));
}

unint64_t sub_247D6B828()
{
  result = qword_27EE735D0;
  if (!qword_27EE735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE735D0);
  }

  return result;
}

uint64_t sub_247D6B8B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  return sub_247D69044(a1, a2, a3, a4, a5 & 1, *(v5 + 16));
}

uint64_t sub_247D6B8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_247D6B998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_247D6B9F8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_247D6BA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D6BA6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247D6BAD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_247D6BB7C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_247D6BB88()
{
  result = qword_27EE73608;
  if (!qword_27EE73608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73608);
  }

  return result;
}

unint64_t sub_247D6BC3C()
{
  result = qword_27EE73610;
  if (!qword_27EE73610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73610);
  }

  return result;
}

id sub_247D6BC90(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_152Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_102Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_161Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247D6BDC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  return sub_247D68534(a1, a2, a3, a4, a5 & 1, *(v5 + 16));
}

uint64_t sub_247D6BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_247D6BDE8()
{
  result = qword_27EE73618;
  if (!qword_27EE73618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73618);
  }

  return result;
}

unint64_t sub_247D6BE54()
{
  result = qword_27EE73620;
  if (!qword_27EE73620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73620);
  }

  return result;
}

void sub_247D6BEBC(uint64_t a1, unint64_t *a2)
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

uint64_t CosmoFileHttpResponse.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for CosmoFileHttpResponse(0) + 20)) = 200;
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_247D6C160(uint64_t *a1)
{
  v1 = *a1;
  sub_247DD2DBC();
  sub_247DD2D1C();

  sub_247DD2D1C();
  sub_247DD2D1C();
  nw_http_request_create();

  metadata_for_request = nw_http_create_metadata_for_request();
  v3 = *MEMORY[0x277CD9288];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease_n();

  return metadata_for_request;
}

uint64_t sub_247D6C264()
{
  v0 = *MEMORY[0x277CD9290];
  sub_247DD2DBC();
  sub_247DD2D1C();

  sub_247DD2D1C();
  sub_247DD2D1C();
  nw_http_request_create();

  metadata_for_request = nw_http_create_metadata_for_request();
  v2 = *MEMORY[0x277CD9288];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease_n();

  return metadata_for_request;
}

uint64_t CosmoHttpRequest.metadata.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  (*(a2 + 48))(a1, a2);
  sub_247DD2D1C();

  sub_247DD2D1C();
  sub_247DD2D1C();
  sub_247DD2D1C();

  nw_http_request_create();

  metadata_for_request = nw_http_create_metadata_for_request();
  v5 = *MEMORY[0x277CD9288];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease_n();

  return metadata_for_request;
}

uint64_t sub_247D6C4DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73600, &qword_247DD4390);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for FileRequest(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_247DD1F8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73238(&qword_27EE737C8, type metadata accessor for FileRequest);
  v10 = sub_247DD1F6C();

  return v10;
}

uint64_t sub_247D6C9E8()
{
  v0 = sub_247DD1F8C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73D18();
  v3 = sub_247DD1F6C();

  return v3;
}

uint64_t sub_247D6CC28(void (*a1)(void))
{
  v2 = sub_247DD1F8C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  a1();
  v5 = sub_247DD1F6C();

  return v5;
}

uint64_t sub_247D6CE58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735D8, &unk_247DD48D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for RejectFileRequest(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_247DD1F8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73238(&qword_27EE737B0, type metadata accessor for RejectFileRequest);
  v10 = sub_247DD1F6C();

  return v10;
}

uint64_t CosmoHttpRequest.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD2F9C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_247DD1F8C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  v11 = *(a2 + 24);
  v12 = sub_247DD1F6C();

  return v12;
}

uint64_t CosmoHttpRequest.file.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_247DD20DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_247D6D820(uint64_t a1, void (*a2)(void))
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v8, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v8, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v9 = xmmword_247DD3F20;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = sub_247DD1F5C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_247DD1F4C();
    a2();
    sub_247DD1F3C();

    result = sub_247D6A1F8(v11, v12);
    if (!v2)
    {
      return v16[3];
    }
  }

  return result;
}

uint64_t sub_247D6D9E8(uint64_t a1)
{
  v2 = type metadata accessor for CosmoHttpResponseContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v5, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v5, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v6 = xmmword_247DD3F20;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v8 = *v5;
    v9 = v5[1];
    v10 = sub_247DD1F5C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_247DD1F4C();
    sub_247D73DC0();
    sub_247DD1F3C();

    return sub_247D6A1F8(v8, v9);
  }
}

uint64_t sub_247D6DB68(uint64_t a1)
{
  v2 = type metadata accessor for CosmoHttpResponseContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v5, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v5, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v6 = xmmword_247DD3F20;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v8 = *v5;
    v9 = v5[1];
    v10 = sub_247DD1F5C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_247DD1F4C();
    sub_247D73CC4();
    sub_247DD1F3C();

    return sub_247D6A1F8(v8, v9);
  }
}

uint64_t sub_247D6DD1C(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for CosmoHttpResponseContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v7, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v7, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v8 = xmmword_247DD3F20;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v10 = *v7;
    v11 = v7[1];
    v12 = sub_247DD1F5C();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_247DD1F4C();
    a2();
    sub_247DD1F3C();

    return sub_247D6A1F8(v10, v11);
  }
}

uint64_t static CosmoHttpResponse._create(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v8, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v8, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v9 = xmmword_247DD3F20;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = sub_247DD1F5C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_247DD1F4C();
    v16 = *(a3 + 16);
    sub_247DD1F3C();

    return sub_247D6A1F8(v11, v12);
  }
}

uint64_t sub_247D6E038@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_247DD1F8C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  a1();
  v7 = sub_247DD1F6C();
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6E298@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_247DD1F8C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73D6C();
  v5 = sub_247DD1F6C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6E528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_247DD1F8C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73C70();
  v5 = sub_247DD1F6C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6E7AC@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_247DD1F8C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  a1();
  v7 = sub_247DD1F6C();
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t CosmoHttpResponse._contents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_247DD2F9C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_247DD1F8C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_247DD1F7C();
  v13 = *(a2 + 24);
  v14 = sub_247DD1F6C();
  v16 = v15;

  *a3 = v14;
  a3[1] = v16;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6EE18()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for CosmoFileHttpResponse(0) + 20));
  nw_http_response_create_well_known();
  v7 = *MEMORY[0x277CD9280];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  (*(v2 + 16))(v5, v0, v1);
  v8 = URL.fileSize.getter();
  if (v9)
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v10 = sub_247DD23CC();
    __swift_project_value_buffer(v10, qword_27EE7B878);
    v11 = sub_247DD23AC();
    v12 = sub_247DD2F0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_247D56000, v11, v12, "File specified, but could not read file-size to set 'Content-Length'", v13, 2u);
      MEMORY[0x24C1BAF60](v13, -1, -1);
    }
  }

  else
  {
    v14 = *MEMORY[0x277CD9270];
    v17[1] = v8;
    swift_unknownObjectRetain();
    sub_247DD321C();
    sub_247DD2D1C();

    nw_http_fields_append();
    swift_unknownObjectRelease();
  }

  sub_247DD207C();
  sub_247DD2D1C();
  sub_247DD2D1C();

  nw_http_fields_append();
  (*(v2 + 8))(v5, v1);

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t sub_247D6F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = a3;
  v3 = type metadata accessor for CosmoHttpResponseContent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = sub_247DD20DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v28 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  nw_http_response_create_well_known();
  v15 = *MEMORY[0x277CD9280];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  sub_247D6E298(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v10, v6, v11);
    v16 = 0;
  }

  else
  {
    sub_247D732E8(v6, type metadata accessor for CosmoHttpResponseContent);
    v16 = 1;
  }

  (*(v12 + 56))(v10, v16, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_247D6BAD4(v10, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    (*(v12 + 32))(v28, v10, v11);
    v17 = URL.fileSize.getter();
    if (v18)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v19 = sub_247DD23CC();
      __swift_project_value_buffer(v19, qword_27EE7B878);
      v20 = sub_247DD23AC();
      v21 = sub_247DD2F0C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_247D56000, v20, v21, "File specified, but could not read file-size to set 'Content-Length'", v22, 2u);
        MEMORY[0x24C1BAF60](v22, -1, -1);
      }
    }

    else
    {
      v23 = *MEMORY[0x277CD9270];
      v29 = v17;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    v24 = v28;
    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v12 + 8))(v24, v11);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t sub_247D6F588()
{
  v0 = type metadata accessor for CosmoHttpResponseContent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = sub_247DD20DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v24[0] = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  nw_http_response_create_well_known();
  v12 = *MEMORY[0x277CD9280];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  sub_247D6E528(v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v7, v3, v8);
    v13 = 0;
  }

  else
  {
    sub_247D732E8(v3, type metadata accessor for CosmoHttpResponseContent);
    v13 = 1;
  }

  (*(v9 + 56))(v7, v13, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_247D6BAD4(v7, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    (*(v9 + 32))(v24[0], v7, v8);
    v14 = URL.fileSize.getter();
    if (v15)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE7B878);
      v17 = sub_247DD23AC();
      v18 = sub_247DD2F0C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_247D56000, v17, v18, "File specified, but could not read file-size to set 'Content-Length'", v19, 2u);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }
    }

    else
    {
      v20 = *MEMORY[0x277CD9270];
      v24[1] = v14;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    v21 = v24[0];
    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v9 + 8))(v21, v8);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t sub_247D6F9F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v30 = a3;
  v31 = a4;
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_247DD20DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  nw_http_response_create_well_known();
  v18 = *MEMORY[0x277CD9280];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  v31(a1, a2, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v13, v9, v14);
    v19 = 0;
  }

  else
  {
    sub_247D732E8(v9, type metadata accessor for CosmoHttpResponseContent);
    v19 = 1;
  }

  (*(v15 + 56))(v13, v19, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_247D6BAD4(v13, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    (*(v15 + 32))(v32, v13, v14);
    v20 = URL.fileSize.getter();
    if (v21)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v22 = sub_247DD23CC();
      __swift_project_value_buffer(v22, qword_27EE7B878);
      v23 = sub_247DD23AC();
      v24 = sub_247DD2F0C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_247D56000, v23, v24, "File specified, but could not read file-size to set 'Content-Length'", v25, 2u);
        MEMORY[0x24C1BAF60](v25, -1, -1);
      }
    }

    else
    {
      v26 = *MEMORY[0x277CD9270];
      v33 = v20;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    v27 = v32;
    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v15 + 8))(v27, v14);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t CosmoHttpResponse.metadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  v8 = sub_247DD20DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(a1, a2);
  nw_http_response_create_well_known();
  v13 = *MEMORY[0x277CD9280];
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  (*(*(a2 + 8) + 24))(a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_247D6BAD4(v7, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = URL.fileSize.getter();
    if (v15)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE7B878);
      v17 = sub_247DD23AC();
      v18 = sub_247DD2F0C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_247D56000, v17, v18, "File specified, but could not read file-size to set 'Content-Length'", v19, 2u);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }
    }

    else
    {
      v20 = *MEMORY[0x277CD9270];
      v23[1] = v14;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v9 + 8))(v12, v8);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t CosmoHttpResponse.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CosmoHttpResponseContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 48))(a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v7, type metadata accessor for CosmoHttpResponseContent);
    return 0;
  }

  else
  {
    result = *v7;
    v9 = v7[1];
  }

  return result;
}

uint64_t CosmoHttpResponse.file.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 48))(a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_247DD20DC();
    v11 = *(v10 - 8);
    (*(v11 + 32))(a3, v9, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    sub_247D732E8(v9, type metadata accessor for CosmoHttpResponseContent);
    v13 = sub_247DD20DC();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t CosmoFileHttpResponse.status.setter(int a1)
{
  result = type metadata accessor for CosmoFileHttpResponse(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t static CosmoFileHttpResponse._create(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73720, &qword_247DD4550);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = type metadata accessor for CosmoHttpResponseContent(0);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = sub_247DD20DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D73280(a1, v16, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v18 + 32);
    v22(v21, v16, v17);
    v23 = v36;
    v22(v36, v21, v17);
    result = type metadata accessor for CosmoFileHttpResponse(0);
    *&v23[*(result + 20)] = 200;
  }

  else
  {
    sub_247D732E8(v16, type metadata accessor for CosmoHttpResponseContent);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_247DD304C();
    MEMORY[0x24C1BA0A0](0xD000000000000035, 0x8000000247DD8DA0);
    sub_247D73280(a1, v8, type metadata accessor for CosmoHttpResponseContent);
    v25 = v37;
    (*(v37 + 56))(v8, 0, 1, v9);
    v26 = v40;
    sub_247D6BA6C(v8, v40, &qword_27EE73720, &qword_247DD4550);
    if ((*(v25 + 48))(v26, 1, v9) == 1)
    {
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v29 = v35;
      sub_247D73B0C(v26, v35, type metadata accessor for CosmoHttpResponseContent);
      sub_247D73280(v29, v34, type metadata accessor for CosmoHttpResponseContent);
      v28 = sub_247DD2CFC();
      v27 = v30;
      sub_247D732E8(v29, type metadata accessor for CosmoHttpResponseContent);
    }

    sub_247D6BAD4(v8, &qword_27EE73720, &qword_247DD4550);
    MEMORY[0x24C1BA0A0](v28, v27);

    v31 = v38;
    v32 = v39;
    sub_247D6AFB0();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t CosmoFileHttpResponse._contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD20DC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for CosmoHttpResponseContent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D70A3C()
{
  if (*v0)
  {
    result = 0x737574617473;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_247D70A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_247DD322C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_247DD322C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_247D70B5C(uint64_t a1)
{
  v2 = sub_247D731E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D70B98(uint64_t a1)
{
  v2 = sub_247D731E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CosmoFileHttpResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73728, &qword_247DD4558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247D731E4();
  sub_247DD331C();
  v13[15] = 0;
  sub_247DD20DC();
  sub_247D73238(&qword_27EE73738, MEMORY[0x277CC9260]);
  sub_247DD31DC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CosmoFileHttpResponse(0) + 20));
    v13[14] = 1;
    sub_247DD31FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CosmoFileHttpResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_247DD20DC();
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73740, &qword_247DD4560);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CosmoFileHttpResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247D731E4();
  sub_247DD330C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v13;
  v15 = v24;
  v29 = 0;
  sub_247D73238(&qword_27EE73748, MEMORY[0x277CC9260]);
  v16 = v26;
  sub_247DD316C();
  v17 = v22;
  (*(v15 + 32))(v22, v6, v16);
  v28 = 1;
  v18 = sub_247DD318C();
  v19 = v17;
  v20 = *(v10 + 20);
  (*(v25 + 8))(v9, v27);
  *(v19 + v20) = v18;
  sub_247D73280(v19, v23, type metadata accessor for CosmoFileHttpResponse);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_247D732E8(v19, type metadata accessor for CosmoFileHttpResponse);
}

uint64_t sub_247D7110C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD20DC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for CosmoHttpResponseContent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D711CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD20DC();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_247D712BC(uint64_t a1)
{
  v2 = sub_247D74154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D712F8(uint64_t a1)
{
  v2 = sub_247D74154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247D71334@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_247D6D820(a1, sub_247D73F48);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247D71530(uint64_t a1)
{
  v2 = sub_247D74100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D7156C(uint64_t a1)
{
  v2 = sub_247D74100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247D715B0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_247D6D820(a1, sub_247D73E74);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247D71674@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, _DWORD *a5@<X8>)
{
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_247DD330C();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v13 = v17;
  v14 = sub_247DD318C();
  (*(v18 + 8))(v11, v8);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *v13 = v14;
  return result;
}

uint64_t sub_247D718D8()
{
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](0);
  return sub_247DD32EC();
}

uint64_t sub_247D7191C()
{
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](0);
  return sub_247DD32EC();
}

uint64_t sub_247D7195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247D719E0(uint64_t a1)
{
  v2 = sub_247D741A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D71A1C(uint64_t a1)
{
  v2 = sub_247D741A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247D71A58@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_247D6D820(a1, sub_247D74058);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247D71B60(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_247DD331C();
  sub_247DD31FC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_247D71D84@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  return sub_247D6E298(a1);
}

uint64_t sub_247D71D9C()
{
  v1 = type metadata accessor for CosmoHttpResponseContent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  sub_247D6E298(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v4, type metadata accessor for CosmoHttpResponseContent);
    return 0;
  }

  else
  {
    result = *v4;
    v9 = v4[1];
  }

  return result;
}

uint64_t sub_247D71E60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CosmoHttpResponseContent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  sub_247D6E298(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_247DD20DC();
    v11 = *(v10 - 8);
    (*(v11 + 32))(a1, v6, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    sub_247D732E8(v6, type metadata accessor for CosmoHttpResponseContent);
    v13 = sub_247DD20DC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_247D72018@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_247DD20DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_247D7209C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_247D6E528(a1);
}

uint64_t sub_247D720A8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_247D6F588();
}

uint64_t sub_247D720B4()
{
  v1 = type metadata accessor for CosmoHttpResponseContent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = *(v0 + 1);
  sub_247D6E528(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v4, type metadata accessor for CosmoHttpResponseContent);
    return 0;
  }

  else
  {
    result = *v4;
    v8 = v4[1];
  }

  return result;
}

uint64_t sub_247D72178@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CosmoHttpResponseContent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *(v1 + 1);
  sub_247D6E528(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_247DD20DC();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v6, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {
    sub_247D732E8(v6, type metadata accessor for CosmoHttpResponseContent);
    v12 = sub_247DD20DC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_247D7254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t))
{
  v9 = type metadata accessor for CosmoHttpResponseContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  a5(*v5, a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v12, type metadata accessor for CosmoHttpResponseContent);
    return 0;
  }

  else
  {
    result = *v12;
    v14 = v12[1];
  }

  return result;
}

uint64_t sub_247D72660@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void (*a3)(void, uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for CosmoHttpResponseContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*v4, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_247DD20DC();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a4, v12, v13);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }

  else
  {
    sub_247D732E8(v12, type metadata accessor for CosmoHttpResponseContent);
    v16 = sub_247DD20DC();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t sub_247D72868(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247D72934(v11, 0, 0, 1, a1, a2);
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
    sub_247D6B778(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_247D72934(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247D72A40(a5, a6);
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
    result = sub_247DD308C();
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

uint64_t sub_247D72A40(uint64_t a1, unint64_t a2)
{
  v4 = sub_247D72A8C(a1, a2);
  sub_247D72BBC(&unk_2859E38F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_247D72A8C(uint64_t a1, unint64_t a2)
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

  v6 = sub_247D80A0C(v5, 0);
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

  result = sub_247DD308C();
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
        v10 = sub_247DD2DDC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247D80A0C(v10, 0);
        result = sub_247DD301C();
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

uint64_t sub_247D72BBC(uint64_t result)
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

  result = sub_247D72CA8(result, v12, 1, v3);
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

char *sub_247D72CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73960, &qword_247DD48E0);
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

uint64_t _s5Cosmo0A5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_247DD322C();
      sub_247D6B69C(v6, v5, 0);
      sub_247D6B69C(v3, v2, 0);
      sub_247D6AD68(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_30;
    }

    sub_247D6B69C(v17, v2, 0);
    sub_247D6B69C(v3, v2, 0);
    sub_247D6AD68(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
    goto LABEL_54;
  }

  if (v4 != 1)
  {
    if (v3 <= 2)
    {
      if (v3 | v2)
      {
        if (!(v3 ^ 1 | v2))
        {
          if (v7 == 2 && v6 == 1 && !v5)
          {
            sub_247D6AD68(*a1, v2, 2u);
            v14 = 1;
            sub_247D6AD68(1, 0, 2u);
            return v14;
          }

LABEL_10:
          sub_247D6B69C(*a2, *(a2 + 8), v7);
          sub_247D6B69C(v3, v2, v4);
          sub_247D6AD68(v3, v2, v4);
          sub_247D6AD68(v6, v5, v7);
          return 0;
        }

        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v16 = 2;
      }

      else
      {
        if (v7 != 2 || v5 | v6)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v16 = 0;
      }
    }

    else if (v3 > 4)
    {
      if (v3 ^ 5 | v2)
      {
        if (v7 != 2 || v6 != 6 || v5)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v16 = 6;
      }

      else
      {
        if (v7 != 2 || v6 != 5 || v5)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v16 = 5;
      }
    }

    else if (v3 ^ 3 | v2)
    {
      if (v7 != 2 || v6 != 4 || v5)
      {
        goto LABEL_10;
      }

      sub_247D6AD68(*a1, v2, 2u);
      v16 = 4;
    }

    else
    {
      if (v7 != 2 || v6 != 3 || v5)
      {
        goto LABEL_10;
      }

      sub_247D6AD68(*a1, v2, 2u);
      v16 = 3;
    }

    v19 = 0;
    v20 = 2;
LABEL_54:
    sub_247D6AD68(v16, v19, v20);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v14 = 1;
    sub_247D6B69C(*a1, v2, 1u);
    sub_247D6B69C(v3, v2, 1u);
    sub_247D6AD68(v3, v2, 1u);
    sub_247D6AD68(v3, v2, 1u);
    return v14;
  }

  v9 = *a1;
  v10 = sub_247DD322C();
  sub_247D6B69C(v6, v5, 1u);
  sub_247D6B69C(v3, v2, 1u);
  sub_247D6AD68(v3, v2, 1u);
  v11 = v6;
  v12 = v5;
  v13 = 1;
LABEL_30:
  sub_247D6AD68(v11, v12, v13);
  return v10 & 1;
}

uint64_t sub_247D731AC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247D731E4()
{
  result = qword_27EE73730;
  if (!qword_27EE73730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73730);
  }

  return result;
}

uint64_t sub_247D73238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247D73280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D732E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247D73348(uint64_t a1)
{
  *(a1 + 16) = sub_247D73238(&qword_27EE73750, type metadata accessor for CosmoFileHttpResponse);
  result = sub_247D73238(&qword_27EE73758, type metadata accessor for CosmoFileHttpResponse);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_247D734E4()
{
  result = sub_247DD20DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247D73564(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_247D735E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}