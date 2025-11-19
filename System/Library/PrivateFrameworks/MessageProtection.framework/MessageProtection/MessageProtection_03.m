uint64_t @objc SKOutgoingRatchet.init(data:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  return a5(v7, v9);
}

void (*SKIncomingRatchet.init(key:index:signingKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(char *, uint64_t)
{
  *&v59 = a4;
  *(&v59 + 1) = a5;
  v53 = a3;
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SymmetricRatchet();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v49 - v15;
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  *&v63 = a1;
  *(&v63 + 1) = a2;
  v60 = a1;
  v61 = a2;
  outlined copy of Data._Representation(a1, a2);
  SymmetricKey.init<A>(data:)();
  v56 = v17;
  v57 = v23;
  v24 = *(v17 + 16);
  v58 = v16;
  v24(v21, v23, v16);
  if (one-time initialization token for statusKitRatchetStep != -1)
  {
    swift_once();
  }

  v25 = statusKitRatchetStep;
  v26 = unk_280F9FE80;
  v27 = xmmword_280F9FE88;
  v28 = qword_280F9FE98;
  v29 = byte_280F9FEA0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMR);
  v65 = &protocol witness table for HKDFRatchet<A>;
  v30 = swift_allocObject();
  *&v63 = v30;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 48) = v28;
  *(v30 + 56) = v29;
  v31 = MEMORY[0x277D84F98];
  *&v14[*(v10 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v25, v26);
  outlined copy of Data._Representation(v27, *(&v27 + 1));
  if (SymmetricKey.bitCount.getter() > 255)
  {
    outlined init with take of ContiguousBytes(&v63, &v14[*(v10 + 24)]);
    v38 = v53;
    v39 = v56;
    v40 = v58;
    (*(v56 + 32))(v14, v21, v58);
    *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = v38;
    v41 = v52;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v14, v52, type metadata accessor for SymmetricRatchet);
    v42 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet;
    v37 = v66;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v41, v66 + OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet, type metadata accessor for SymmetricRatchet);
    v43 = v59;
    v63 = v59;
    outlined copy of Data._Representation(v59, *(&v59 + 1));
    v34 = v54;
    v44 = v55;
    P256.Signing.PublicKey.init<A>(compactRepresentation:)();
    if (!v44)
    {
      (*(v39 + 8))(v57, v40);
      (*(v50 + 32))(v37 + OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey, v34, v51);
      *(v37 + OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys) = v31;
      v48 = type metadata accessor for SKIncomingRatchet(0);
      v62.receiver = v37;
      v62.super_class = v48;
      v34 = objc_msgSendSuper2(&v62, sel_init);
      outlined consume of Data._Representation(v43, *(&v43 + 1));
      outlined consume of Data._Representation(v60, v61);
      return v34;
    }

    outlined consume of Data._Representation(v43, *(&v43 + 1));
    outlined consume of Data._Representation(v60, v61);
    (*(v39 + 8))(v57, v40);
    outlined destroy of SymmetricRatchet(v37 + v42, type metadata accessor for SymmetricRatchet);
  }

  else
  {
    v32 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CC51D0], v32);
    swift_willThrow();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    outlined consume of Data._Representation(v60, v61);
    v34 = *(v56 + 8);
    v35 = v21;
    v36 = v58;
    v34(v35, v58);
    v34(v57, v36);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    v37 = v66;
  }

  type metadata accessor for SKIncomingRatchet(0);
  v45 = *((*MEMORY[0x277D85000] & *v37) + 0x30);
  v46 = *((*MEMORY[0x277D85000] & *v37) + 0x34);
  swift_deallocPartialClassInstance();
  return v34;
}

void SKIncomingRatchet.openStatus(index:encryptedMessage:authenticating:signature:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v134 = a7;
  *(&v131 + 1) = a5;
  *&v131 = a4;
  *&v133 = a2;
  *(&v133 + 1) = a3;
  v129 = a1;
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v120 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection19MPPB_SKPaddedStatusVSgMd, &_s17MessageProtection19MPPB_SKPaddedStatusVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v112 - v13;
  v125 = type metadata accessor for MPPB_SKPaddedStatus(0);
  v121 = *(v125 - 8);
  v14 = *(v121 + 64);
  MEMORY[0x28223BE20](v125);
  v119 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v123 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v112 - v20;
  v21 = type metadata accessor for SymmetricKey();
  v127 = *(v21 - 8);
  v128 = v21;
  v22 = *(v127 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v112 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v112 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v112 - v32;
  v34 = type metadata accessor for AES.GCM.SealedBox();
  v130 = *(v34 - 8);
  v35 = *(v130 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for P256.Signing.ECDSASignature();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v137 = a6;
  *(&v137 + 1) = v134;
  outlined copy of Data._Representation(a6, v134);
  v43 = lazy protocol witness table accessor for type Data and conformance Data();
  v44 = v135;
  P256.Signing.ECDSASignature.init<A>(rawRepresentation:)();
  if (!v44)
  {
    v116 = v33;
    v113 = v27;
    v114 = v29;
    v115 = v37;
    v117 = v34;
    v118 = v38;
    v134 = v39;
    v45 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey;
    v46 = v133;
    v136 = v133;
    *(&v138 + 1) = MEMORY[0x277CC9318];
    v139 = MEMORY[0x277CC9300];
    v47 = v131;
    v137 = v131;
    v135 = 0;
    v48 = __swift_project_boxed_opaque_existential_1(&v137, MEMORY[0x277CC9318]);
    v49 = *v48;
    v50 = v48[1];
    outlined copy of Data._Representation(v46, *(&v46 + 1));
    v51 = v45;
    outlined copy of Data._Representation(v47, *(&v47 + 1));
    v52 = v135;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(&v137);
    v137 = v136;
    v53 = v132;
    LOBYTE(v49) = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
    outlined consume of Data._Representation(v137, *(&v137 + 1));
    if ((v49 & 1) == 0)
    {
      lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
      swift_allocError();
      *v58 = 1;
      swift_willThrow();
      (*(v134 + 8))(v42, v118);
      return;
    }

    v54 = v133;
    outlined copy of Data._Representation(v133, *(&v133 + 1));
    v55 = v116;
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v54, *(&v54 + 1));
    v56 = v134;
    if (v52)
    {

      (*(v130 + 56))(v55, 1, 1, v117);
      outlined destroy of TetraSessionStates?(v55, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
      lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
      swift_allocError();
      *v57 = 3;
      swift_willThrow();
LABEL_13:
      (*(v56 + 8))(v42, v118);
      return;
    }

    *(&v133 + 1) = v51;
    v135 = 0;
    v59 = v130;
    v60 = v117;
    (*(v130 + 56))(v55, 0, 1, v117);
    v61 = v115;
    (*(v59 + 32))(v115, v55, v60);
    v62 = v129;
    if (v129 > 0xFFFE)
    {
      lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
      swift_allocError();
      *v79 = 0;
      swift_willThrow();
      (*(v59 + 8))(v61, v60);
      goto LABEL_13;
    }

    *&v133 = v43;
    v63 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys;
    swift_beginAccess();
    v64 = *(v53 + v63);
    if (*(v64 + 16))
    {
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
      if (v66)
      {
        v67 = v126;
        v68 = v127;
        v69 = *(v127 + 72);
        v70 = *(v64 + 56) + v69 * v65;
        v71 = *(v127 + 16);
        v72 = v128;
        v71(v126, v70, v128);
        (*(v68 + 56))(v67, 0, 1, v72);
        outlined destroy of TetraSessionStates?(v67, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
        v73 = *(v132 + v63);
        if (*(v73 + 16))
        {
          *(&v131 + 1) = v42;
          v74 = specialized __RawDictionaryStorage.find<A>(_:)(v129);
          if (v75)
          {
            v76 = *(v73 + 56) + v74 * v69;
            v77 = v114;
            v78 = v128;
            v71(v114, v76, v128);
            goto LABEL_22;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    v80 = v126;
    *&v131 = *(v127 + 56);
    (v131)(v126, 1, 1, v128);
    outlined destroy of TetraSessionStates?(v80, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    swift_beginAccess();
    v81 = v135;
    SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v62, 1, v113);
    swift_endAccess();
    if (!v81)
    {
      *(&v131 + 1) = v42;
      v135 = 0;
      v78 = v128;
      v71 = *(v127 + 16);
      v87 = v123;
      v88 = v113;
      v71(v123, v113, v128);
      (v131)(v87, 0, 1, v78);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v87, v129);
      swift_endAccess();
      v77 = v114;
      (*(v127 + 32))(v114, v88, v78);
      v59 = v130;
LABEL_22:
      v89 = v124;
      v71(v124, v77, v78);
      v90 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      v92 = v115;
      if (v91 >> 60 != 15)
      {
        *&v137 = v90;
        *(&v137 + 1) = v91;
        v93 = v135;
        v94 = static AES.GCM.open<A>(_:using:authenticating:)();
        v96 = v134;
        v97 = v89;
        v98 = *(&v131 + 1);
        v99 = v125;
        v100 = v127;
        if (v93)
        {

          outlined consume of Data._Representation(v137, *(&v137 + 1));
          v101 = *(v100 + 8);
          v102 = v128;
          v101(v97, v128);
          lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
          swift_allocError();
          *v103 = 4;
          swift_willThrow();
          v101(v114, v102);
          (*(v59 + 8))(v92, v117);
          (*(v96 + 8))(v98, v118);
        }

        else
        {
          v104 = v94;
          v105 = v95;
          outlined consume of Data._Representation(v137, *(&v137 + 1));
          v106 = v97;
          v107 = *(v100 + 8);
          v107(v106, v128);
          v139 = 0;
          v137 = 0u;
          v138 = 0u;
          outlined copy of Data._Representation(v104, v105);
          BinaryDecodingOptions.init()();
          _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus);
          v108 = v122;
          Message.init(serializedData:extensions:partial:options:)();
          v109 = v117;
          outlined consume of Data._Representation(v104, v105);
          v107(v114, v128);
          (*(v59 + 8))(v115, v109);
          (*(v134 + 8))(*(&v131 + 1), v118);
          (*(v121 + 56))(v108, 0, 1, v99);
          v110 = v119;
          _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v108, v119, type metadata accessor for MPPB_SKPaddedStatus);
          outlined copy of Data?(*(v110 + *(v99 + 20)), *(v110 + *(v99 + 20) + 8));
          outlined destroy of SymmetricRatchet(v110, type metadata accessor for MPPB_SKPaddedStatus);
        }

        return;
      }

LABEL_30:
      __break(1u);
      return;
    }

    *&v137 = v81;
    v82 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v83 = swift_dynamicCast();
    v84 = v115;
    v85 = v130;
    if (v83)
    {
      if (v140 == 3)
      {

        lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
        swift_allocError();
        *v111 = 2;
        goto LABEL_27;
      }

      if (v140 == 1)
      {

        lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
        swift_allocError();
        *v86 = 0;
LABEL_27:
        swift_willThrow();
        (*(v85 + 8))(v84, v60);
        (*(v56 + 8))(v42, *(&v54 + 1));

        return;
      }
    }

    swift_willThrow();
    (*(v85 + 8))(v84, v60);
    (*(v56 + 8))(v42, *(&v54 + 1));
  }
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v19 = __DataStorage._offset.getter();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        closure #1 in Data.init<A>(_:)(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_1(v30);
        result = AES.GCM.SealedBox.init(combined:)();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
LABEL_25:
          v24 = MEMORY[0x231890D50]();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = __DataStorage._offset.getter();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  outlined consume of Data._Representation(a1, a2);
  v7 = type metadata accessor for CryptoKitError();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SKIncomingRatchet.serializedData()()
{
  v1 = v0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMR);
  v2 = *(*(v74 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v74);
  v73 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = (&v60 - v6);
  MEMORY[0x28223BE20](v5);
  v71 = &v60 - v7;
  v8 = type metadata accessor for MPPB_KeyAndIndex(0);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymmetricRatchet();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MPPB_SKIncomingRatchet(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v19 + *(v17 + 20);
  UnknownStorage.init()();
  v21 = v19 + *(v15 + 24);
  *v21 = xmmword_22B48D7D0;
  v22 = v19 + *(v15 + 28);
  v68 = xmmword_22B48D7D0;
  *v22 = xmmword_22B48D7D0;
  v23 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys;
  swift_beginAccess();
  v24 = *(v0 + v23);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v60 = v21;
    v61 = v14;
    v62 = v22;
    v63 = v15;
    v64 = v19;
    v65 = v1;
    v80 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v80;
    v27 = -1 << *(v24 + 32);
    v28 = _HashTable.startBucket.getter();
    v29 = v75;
    v67 = v24;
    v66 = v24 + 64;
    v30 = v74;
    while (1)
    {
      v78 = v28;
      v79 = v26;
      v31 = *(v24 + 36);
      v32 = *(v30 + 48);
      v33 = v71;
      v76 = v25;
      v77 = v31;
      v34 = specialized Dictionary.subscript.getter(&v71[v32], v28, v31, 0, v24);
      v35 = v72;
      *v72 = v34;
      v36 = *(v30 + 48);
      v37 = type metadata accessor for SymmetricKey();
      v38 = *(v37 - 8);
      (*(v38 + 32))(v35 + v36, &v33[v32], v37);
      UnknownStorage.init()();
      v39 = v70;
      v40 = v29 + *(v70 + 20);
      *v40 = v68;
      v41 = v29 + *(v39 + 24);
      *v41 = 0;
      *(v41 + 8) = 1;
      v42 = v73;
      outlined init with copy of TetraSessionStates?(v35, v73, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMR);
      v43 = *v42;
      (*(v38 + 8))(&v42[*(v30 + 48)], v37);
      *v41 = v43;
      *(v41 + 8) = 0;
      type metadata accessor for NSData();
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v44 = v81;
      v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v26 = v79;
      outlined destroy of TetraSessionStates?(v35, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt16V3key_9CryptoKit12SymmetricKeyV5valuetMR);
      outlined consume of Data?(*v40, *(v40 + 8));
      *v40 = v45;
      *(v40 + 8) = v47;
      v80 = v26;
      v49 = *(v26 + 16);
      v48 = *(v26 + 24);
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
        v26 = v80;
      }

      *(v26 + 16) = v49 + 1;
      v29 = v75;
      _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v75, v26 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v49, type metadata accessor for MPPB_KeyAndIndex);
      v24 = v67;
      if (v78 < 0 || v78 >= -(-1 << *(v67 + 32)))
      {
        break;
      }

      if (((*(v66 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v77 != *(v67 + 36))
      {
        goto LABEL_15;
      }

      v28 = _HashTable.occupiedBucket(after:)();
      v25 = v76 - 1;
      if (v76 == 1)
      {

        v1 = v65;
        v19 = v64;
        v22 = v62;
        v14 = v61;
        v21 = v60;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
    *v19 = v26;
    v50 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet;
    swift_beginAccess();
    outlined init with copy of SymmetricRatchet(v1 + v50, v14, type metadata accessor for SymmetricRatchet);
    v51 = SymmetricRatchet.serializedData()();
    v53 = v52;
    outlined destroy of SymmetricRatchet(v14, type metadata accessor for SymmetricRatchet);
    outlined consume of Data?(*v21, *(v21 + 1));
    *v21 = v51;
    *(v21 + 1) = v53;
    v54 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
    if (v55 >> 60 != 15)
    {
      v56 = v54;
      v57 = v55;
      outlined consume of Data?(*v22, *(v22 + 1));
      *v22 = v56;
      *(v22 + 1) = v57;
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKIncomingRatchet and conformance MPPB_SKIncomingRatchet, type metadata accessor for MPPB_SKIncomingRatchet);
      v58 = Message.serializedData(partial:)();
      outlined destroy of SymmetricRatchet(v19, type metadata accessor for MPPB_SKIncomingRatchet);
      return v58;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t SKIncomingRatchet.signingKeyIdentifier()()
{
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v10 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v10;
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v11, v12);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v12);
    outlined consume of Data?(v11, v12);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data?(v11, v12);
    (*(v1 + 8))(v4, v0);
    v20 = v5;
    v21 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    v14 = v17;
    (*(v17 + 16))(boxed_opaque_existential_1, v8, v5);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v14 + 8))(v8, v5);
    v15 = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v15;
  }

  return result;
}

Class @objc SKOutgoingRatchet.serializedData()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);

  return v8.super.isa;
}

uint64_t SKIncomingRatchet.__ivar_destroyer()
{
  outlined destroy of SymmetricRatchet(v0 + OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet, type metadata accessor for SymmetricRatchet);
  v1 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey;
  v2 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys);
}

uint64_t type metadata completion function for SKIncomingRatchet()
{
  result = type metadata accessor for SymmetricRatchet();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for P256.Signing.PublicKey();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = Data._Representation.append(contentsOf:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA384();
      lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231890D50]();
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231890D50]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231890D50]();
      type metadata accessor for SHA384();
      lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x231891EC0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SymmetricKey() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x231891EB0](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 2 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SymmetricKey() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v30 = type metadata accessor for SymmetricKey();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = outlined copy of Data._Representation(v22, *(&v22 + 1));
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

{
  v1 = v0;
  v30 = type metadata accessor for SymmetricKey();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 2 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 2 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 2 * a2);
    v9 = type metadata accessor for SymmetricKey();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of SymmetricRatchet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of SymmetricRatchet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (key: SymmetricKey, index: UInt64)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for StatusKitErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StatusKitErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id FilesystemUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesystemUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of TetraSessionStates?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs14PrefixSequenceVy9CryptoKit12SHA384DigestVG_Tt0g5(uint64_t a1)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  outlined init with copy of TetraSessionStates?(a1, &v23[-v4], &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (!swift_dynamicCast())
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v5 = outlined destroy of TetraSessionStates?(v25, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
    v25[0] = xmmword_22B48D660;
    MEMORY[0x28223BE20](v5);
    *&v23[-16] = a1;
    v8 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
    v10 = v9;
    v11 = v6;
    v12 = *(&v25[0] + 1) >> 62;
    if ((*(&v25[0] + 1) >> 62) > 1)
    {
      if (v12 != 2)
      {
        if (!v7)
        {
          goto LABEL_18;
        }

        v17 = 0;
LABEL_30:
        if (v17 < v7)
        {
          goto LABEL_36;
        }

        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_32:

        goto LABEL_33;
      }

      v14 = *(*&v25[0] + 16);
      v13 = *(*&v25[0] + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_37;
      }

      if (v7 != v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v12)
      {
        if (v7 == BYTE14(v25[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v25[0]), v25[0]))
      {
        goto LABEL_38;
      }

      if (v7 != DWORD1(v25[0]) - LODWORD(v25[0]))
      {
LABEL_13:
        if (v12 == 2)
        {
          v17 = *(*&v25[0] + 24);
        }

        else if (v12 == 1)
        {
          v17 = *&v25[0] >> 32;
        }

        else
        {
          v17 = BYTE14(v25[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v27, 0, 15);
    if (v6)
    {
      LOBYTE(v18) = 0;
      do
      {
        v19 = v8[2];
        if (v10 == v19)
        {
          break;
        }

        if (v10 >= v19)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        *(v27 + v18) = *(v8 + v10 + 32);
        v18 = v18 + 1;
        if ((v18 >> 8))
        {
          goto LABEL_35;
        }

        if (v18 == 14)
        {
          *&v24 = v27[0];
          *(&v24 + 6) = *(v27 + 6);
          Data._Representation.append(contentsOf:)();
          LOBYTE(v18) = 0;
        }

        ++v10;
        --v11;
      }

      while (v11);
      if (v18)
      {
        *&v24 = v27[0];
        *(&v24 + 6) = *(v27 + 6);
        Data._Representation.append(contentsOf:)();
      }
    }

    goto LABEL_32;
  }

  outlined init with take of ContiguousBytes(v25, v27);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v25[0] = v24;
  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_33:
  v20 = v25[0];
  outlined copy of Data._Representation(*&v25[0], *(&v25[0] + 1));
  outlined destroy of TetraSessionStates?(a1, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  outlined consume of Data._Representation(v20, *(&v20 + 1));
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(void *a1)
{
  v35[5] = *MEMORY[0x277D85DE8];
  *&v32 = a1;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v33, v35);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_1(v35);
    goto LABEL_40;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  outlined destroy of TetraSessionStates?(v33, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v33[0] = specialized Data._Representation.init(count:)(v4 - v3);
  *(&v33[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v33[0]);
  v12 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v13 = v10;
  v14 = *&v33[0];
  v15 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v33[0] + 16);
      v16 = *(*&v33[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v33[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v33[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v33[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v35, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v35 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v33[0];
  outlined copy of Data._Representation(*&v33[0], *(&v33[0] + 1));

  outlined consume of Data._Representation(v29, *(&v29 + 1));
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t SecureEnclave.Kyber768.PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v17;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SecureEnclave.Kyber768.PrivateKey.init(dataRepresentation:)(v16[0], v16[1], v7);
    (*(v9 + 8))(v12, v8);
    outlined init with take of SecureEnclave.Kyber768.PrivateKey(v7, v14, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SecureEnclave.Kyber768.PrivateKey.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v2 + *(type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0) + 20));
  v11 = v10[1];
  v13 = *v10;
  v14 = v11;
  outlined copy of Data._Representation(v13, v11);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v13, v14);
  return (*(v5 + 8))(v8, v4);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6D654B6172746574;
  v5 = 0xEF79654B34323031;
  if (a1 != 5)
  {
    v4 = 0x7061636E65;
    v5 = 0xE500000000000000;
  }

  v6 = 0x6463456172746574;
  v7 = 0xEC00000079654B68;
  if (a1 != 3)
  {
    v6 = 0x6D654B6172746574;
    v7 = 0xEE0079654B383637;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x654B3836376D656BLL;
  v9 = 0xE900000000000079;
  if (a1 != 1)
  {
    v8 = 0x4B343230316D656BLL;
    v9 = 0xEA00000000007965;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x79654B68646365;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000079;
        if (v10 != 0x654B3836376D656BLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA00000000007965;
        if (v10 != 0x4B343230316D656BLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x79654B68646365)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF79654B34323031;
      if (v10 != 0x6D654B6172746574)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7061636E65)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEC00000079654B68;
    if (v10 != 0x6463456172746574)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEE0079654B383637;
    if (v10 != 0x6D654B6172746574)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureEnclave.Kyber1024.PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v17;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SecureEnclave.Kyber1024.PrivateKey.init(dataRepresentation:)(v16[0], v16[1], v7);
    (*(v9 + 8))(v12, v8);
    outlined init with take of SecureEnclave.Kyber768.PrivateKey(v7, v14, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SecureEnclave.Kyber1024.PrivateKey.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v2 + *(type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0) + 20));
  v11 = v10[1];
  v13 = *v10;
  v14 = v11;
  outlined copy of Data._Representation(v13, v11);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v13, v14);
  return (*(v5 + 8))(v8, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureEnclave.P256.KeyAgreement.PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMR);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v19;
    v14 = v20;
    v18 = v4;
    v15 = v21;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)();
    (*(v13 + 8))(v11, v8);
    (*(v14 + 32))(v15, v7, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys);
  }

  return result;
}

uint64_t SecureEnclave.P256.KeyAgreement.PrivateKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateI0V17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = SecureEnclave.P256.KeyAgreement.PrivateKey.dataRepresentation.getter();
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys and conformance SecureEnclave.P256.KeyAgreement.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256.KeyAgreement.PublicKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v22;
    v16 = v23;
    outlined copy of Data._Representation(v22, v23);
    P256.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
    (*(v13 + 8))(v11, v14);
    outlined consume of Data._Representation(v15, v16);
    (*(v20 + 32))(v21, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys);
  }

  return result;
}

uint64_t P256.KeyAgreement.PublicKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit4P256O12KeyAgreementO06PublicG0V17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();
  v8 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = MEMORY[0x231891580](v8);
  v12 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v11, v12);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance P256.KeyAgreement.PublicKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance P256.KeyAgreement.PublicKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance P256.KeyAgreement.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance P256.KeyAgreement.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.KeyAgreement.PublicKey.CodingKeys and conformance P256.KeyAgreement.PublicKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256.Signing.PublicKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v22;
    v16 = v23;
    outlined copy of Data._Representation(v22, v23);
    P256.Signing.PublicKey.init<A>(rawRepresentation:)();
    (*(v13 + 8))(v11, v14);
    outlined consume of Data._Representation(v15, v16);
    (*(v20 + 32))(v21, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys);
  }

  return result;
}

uint64_t P256.Signing.PublicKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit4P256O7SigningO9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();
  v8 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = MEMORY[0x231891720](v8);
  v12 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v11, v12);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance P256.Signing.PublicKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance P256.Signing.PublicKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance P256.Signing.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance P256.Signing.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type P256.Signing.PublicKey.CodingKeys and conformance P256.Signing.PublicKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Kyber768.PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Kyber768.PrivateKey();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v22;
    v16 = v23;
    outlined copy of Data._Representation(v22, v23);
    Kyber768.PrivateKey.init<A>(bytes:)();
    (*(v13 + 8))(v11, v14);
    outlined consume of Data._Representation(v15, v16);
    (*(v20 + 32))(v21, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

uint64_t Kyber768.PrivateKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = Kyber768.PrivateKey.dataRepresentation.getter();
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Kyber768.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PrivateKey.CodingKeys and conformance Kyber768.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Kyber1024.PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Kyber1024.PrivateKey();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v22;
    v16 = v23;
    outlined copy of Data._Representation(v22, v23);
    Kyber1024.PrivateKey.init<A>(bytes:)();
    (*(v13 + 8))(v11, v14);
    outlined consume of Data._Representation(v15, v16);
    (*(v20 + 32))(v21, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

uint64_t Kyber1024.PrivateKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit9Kyber1024O10PrivateKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = Kyber1024.PrivateKey.dataRepresentation.getter();
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Kyber1024.PrivateKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance Kyber1024.PrivateKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Kyber1024.PrivateKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber1024.PrivateKey.CodingKeys and conformance Kyber1024.PrivateKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Kyber768.PublicKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Kyber768.PublicKey();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v22;
    v16 = v23;
    outlined copy of Data._Representation(v22, v23);
    Kyber768.PublicKey.init<A>(dataRepresentation:)();
    (*(v13 + 8))(v11, v14);
    outlined consume of Data._Representation(v15, v16);
    (*(v20 + 32))(v21, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys);
  }

  return result;
}

uint64_t Kyber768.PublicKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9CryptoKit8Kyber768O9PublicKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = Kyber768.PublicKey.dataRepresentation.getter();
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PublicKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance Kyber768.PublicKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Kyber768.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Kyber768.PublicKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Kyber768.PublicKey.CodingKeys and conformance Kyber768.PublicKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymmetricKey.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    SymmetricKey.init<A>(data:)();
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys);
  }

  return result;
}

uint64_t SymmetricKey.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMd, _ss22KeyedEncodingContainerVy9CryptoKit12SymmetricKeyV17MessageProtectionE10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v10 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v10);
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymmetricKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SymmetricKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymmetricKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymmetricKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymmetricKey.CodingKeys and conformance SymmetricKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraOutgoingKeyContent.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TetraOutgoingKeyContent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TetraOutgoingKeyContent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x79654B68646365;
  v5 = 0xEF79654B34323031;
  v6 = 0x6D654B6172746574;
  if (v2 != 5)
  {
    v6 = 0x7061636E65;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEC00000079654B68;
  v8 = 0x6463456172746574;
  if (v2 != 3)
  {
    v8 = 0x6D654B6172746574;
    v7 = 0xEE0079654B383637;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000079;
  v10 = 0x654B3836376D656BLL;
  if (v2 != 1)
  {
    v10 = 0x4B343230316D656BLL;
    v9 = 0xEA00000000007965;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraOutgoingKeyContent.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79654B68646365;
  v3 = 0x6D654B6172746574;
  if (v1 != 5)
  {
    v3 = 0x7061636E65;
  }

  v4 = 0x6463456172746574;
  if (v1 != 3)
  {
    v4 = 0x6D654B6172746574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x654B3836376D656BLL;
  if (v1 != 1)
  {
    v5 = 0x4B343230316D656BLL;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraOutgoingKeyContent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TetraOutgoingKeyContent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraOutgoingKeyContent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraOutgoingKeyContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 3;
  type metadata accessor for TetraECDHKey();
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraECDHKey and conformance TetraECDHKey, type metadata accessor for TetraECDHKey);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for TetraOutgoingKeyContent(0);
    v12 = v11[5];
    LOBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    lazy protocol witness table accessor for type TetraKEM768Key? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[6];
    LOBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    lazy protocol witness table accessor for type TetraKEM1024Key? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v11[7]);
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 6;
    outlined copy of Data?(v18, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TetraOutgoingKeyContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v132 = &v123 - v5;
  v6 = type metadata accessor for TetraKEM1024Key(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v128 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Kyber1024.PrivateKey();
  v135 = *(v141 - 8);
  v10 = *(v135 + 64);
  MEMORY[0x28223BE20](v141);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v134 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v142 = &v123 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v139 = &v123 - v19;
  v20 = type metadata accessor for TetraKEM768Key(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v130 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for Kyber768.PrivateKey();
  v144 = *(v148 - 8);
  v24 = *(v144 + 64);
  MEMORY[0x28223BE20](v148);
  v138 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v143 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v149 = &v123 - v30;
  v150 = type metadata accessor for TetraECDHKey();
  v31 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v147 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v152 = *(v33 - 8);
  v153 = v33;
  v34 = *(v152 + 64);
  MEMORY[0x28223BE20](v33);
  v146 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v151 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v156 = &v123 - v40;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection23TetraOutgoingKeyContentV10CodingKeysOGMR);
  v155 = *(v157 - 8);
  v41 = *(v155 + 64);
  MEMORY[0x28223BE20](v157);
  v43 = &v123 - v42;
  v44 = type metadata accessor for TetraOutgoingKeyContent(0);
  v45 = (v44 - 8);
  v46 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = &v48[v45[7]];
  v133 = v21;
  v51 = *(v21 + 56);
  v50 = v21 + 56;
  v161 = v49;
  v145 = v20;
  v140 = v51;
  v51();
  v52 = &v48[v45[8]];
  v129 = v7;
  v55 = *(v7 + 56);
  v53 = v7 + 56;
  v54 = v55;
  v160 = v52;
  v136 = v6;
  v55();
  v159 = &v48[v45[9]];
  *v159 = xmmword_22B48D7D0;
  v56 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys();
  v154 = v43;
  v58 = v158;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v58)
  {
    v59 = a1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v59);
    v68 = v160;
    v67 = v161;
LABEL_5:
    outlined destroy of TetraSessionStates?(v67, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    outlined destroy of TetraSessionStates?(v68, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    return outlined consume of Data?(*v159, *(v159 + 1));
  }

  v61 = v151;
  v60 = v152;
  v126 = v50;
  v124 = v54;
  v125 = v53;
  v62 = v155;
  v127 = v48;
  v158 = v57;
  LOBYTE(v162) = 0;
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey, MEMORY[0x277CC5388]);
  v64 = v156;
  v63 = v157;
  v66 = v153;
  v65 = v154;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v123 = 0;
  v70 = v61;
  outlined init with copy of TetraSessionStates?(v64, v61, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  v71 = (*(v60 + 48))(v61, 1, v66);
  v72 = v62;
  if (v71 == 1)
  {
    outlined destroy of TetraSessionStates?(v70, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    LOBYTE(v162) = 3;
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraECDHKey and conformance TetraECDHKey, type metadata accessor for TetraECDHKey);
    v73 = v147;
    v74 = v123;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v74)
    {
      outlined destroy of TetraSessionStates?(v64, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
      (*(v72 + 8))(v65, v63);
      v59 = v158;
      goto LABEL_4;
    }

    v123 = 0;
    v82 = v127;
    outlined init with take of SecureEnclave.Kyber768.PrivateKey(v73, v127, type metadata accessor for TetraECDHKey);
  }

  else
  {
    v75 = v60;
    v76 = v65;
    v77 = *(v60 + 32);
    v78 = v70;
    v79 = v146;
    v77(v146, v78, v66);
    v80 = *(v150 + 20);
    v81 = v127;
    v77(&v127[v80], v79, v66);
    v82 = v81;
    v65 = v76;
    v64 = v156;
    (*(v75 + 56))(&v82[v80], 0, 1, v66);
    v63 = v157;
    *v82 = 0;
  }

  LOBYTE(v162) = 1;
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type Kyber768.PrivateKey and conformance Kyber768.PrivateKey, MEMORY[0x277CC55C0]);
  v84 = v148;
  v83 = v149;
  v85 = v123;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v85)
  {
    outlined destroy of TetraSessionStates?(v64, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    (*(v72 + 8))(v65, v63);
    v68 = v160;
    __swift_destroy_boxed_opaque_existential_1(v158);
    outlined destroy of TetraECDHKey(v82, type metadata accessor for TetraECDHKey);
    v67 = v161;
    goto LABEL_5;
  }

  v86 = v143;
  outlined init with copy of TetraSessionStates?(v83, v143, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v87 = v144;
  if ((*(v144 + 48))(v86, 1, v84) == 1)
  {
    outlined destroy of TetraSessionStates?(v86, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    LOBYTE(v162) = 4;
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM768Key and conformance TetraKEM768Key, type metadata accessor for TetraKEM768Key);
    v88 = v139;
    v89 = v145;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((*(v133 + 48))(v88, 1, v89) == 1)
    {
      outlined destroy of TetraSessionStates?(v88, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
      outlined destroy of TetraSessionStates?(v161, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
      v97 = 1;
    }

    else
    {
      v98 = v130;
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v88, v130, type metadata accessor for TetraKEM768Key);
      v99 = v161;
      outlined destroy of TetraSessionStates?(v161, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v98, v99, type metadata accessor for TetraKEM768Key);
      v97 = 0;
    }

    v96 = v155;
    (v140)(v161, v97, 1, v145);
  }

  else
  {
    v90 = *(v87 + 32);
    v91 = v138;
    v90(v138, v86, v84);
    v92 = v161;
    outlined destroy of TetraSessionStates?(v161, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v90(v92, v91, v84);
    (*(v87 + 56))(v92, 0, 1, v84);
    v93 = v145;
    v94 = *(v145 + 20);
    v95 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    (*(*(v95 - 8) + 56))(v92 + v94, 1, 1, v95);
    v96 = v155;
    (v140)(v161, 0, 1, v93);
  }

  LOBYTE(v162) = 2;
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey, MEMORY[0x277CC55D8]);
  v100 = v142;
  v101 = v141;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v102 = v134;
  outlined init with copy of TetraSessionStates?(v100, v134, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v103 = v135;
  if ((*(v135 + 48))(v102, 1, v101) == 1)
  {
    outlined destroy of TetraSessionStates?(v102, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    LOBYTE(v162) = 5;
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM1024Key and conformance TetraKEM1024Key, type metadata accessor for TetraKEM1024Key);
    v104 = v132;
    v105 = v136;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v106 = v137;
    if ((*(v129 + 48))(v104, 1, v105) == 1)
    {
      outlined destroy of TetraSessionStates?(v104, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      v110 = v160;
      outlined destroy of TetraSessionStates?(v160, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      v113 = 1;
    }

    else
    {
      v121 = v104;
      v122 = v128;
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v121, v128, type metadata accessor for TetraKEM1024Key);
      v110 = v160;
      outlined destroy of TetraSessionStates?(v160, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      outlined init with take of SecureEnclave.Kyber768.PrivateKey(v122, v110, type metadata accessor for TetraKEM1024Key);
      v113 = 0;
    }
  }

  else
  {
    v107 = *(v103 + 32);
    v108 = v131;
    v107(v131, v102, v101);
    v109 = v160;
    outlined destroy of TetraSessionStates?(v160, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    v107(v109, v108, v101);
    v110 = v109;
    (*(v103 + 56))(v109, 0, 1, v101);
    v105 = v136;
    v111 = *(v136 + 20);
    v112 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    (*(*(v112 - 8) + 56))(v109 + v111, 1, 1, v112);
    v113 = 0;
    v106 = v137;
  }

  v114 = v156;
  (v124)(v110, v113, 1, v105);
  v164 = 6;
  lazy protocol witness table accessor for type Data and conformance Data();
  v115 = v157;
  v116 = v154;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined destroy of TetraSessionStates?(v142, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  outlined destroy of TetraSessionStates?(v149, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  outlined destroy of TetraSessionStates?(v114, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  (*(v96 + 8))(v116, v115);
  v117 = v162;
  v118 = v163;
  v119 = v159;
  outlined consume of Data?(*v159, *(v159 + 1));
  *v119 = v117;
  *(v119 + 1) = v118;
  v120 = v127;
  outlined init with copy of TetraOutgoingKeyContent(v127, v106);
  __swift_destroy_boxed_opaque_existential_1(v158);
  return outlined destroy of TetraECDHKey(v120, type metadata accessor for TetraOutgoingKeyContent);
}

uint64_t TetraECDHSecKey.encode(to:)(void *a1, __SecKey *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = SecKeyCopyAttributes(a2);
  if (!v10)
  {
    __break(1u);
LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (one-time initialization token for TokenOID != -1)
  {
    swift_once();
  }

  v13 = TokenOID;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = TokenOID;
    v15 = __CocoaDictionary.lookup(_:)();

    if (v15)
    {
LABEL_10:

      v21[3] = v15;
      swift_dynamicCast();
      v18 = v21[0];
      v19 = v21[1];
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v5 + 8))(v8, v4);
      return outlined consume of Data._Representation(v18, v19);
    }

    __break(1u);
  }

  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if (v17)
  {
    v15 = *(*(v12 + 56) + 8 * v16);
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

LABEL_13:

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraECDHSecKey.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TetraECDHSecKey.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraECDHSecKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraECDHSecKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

SecKeyRef protocol witness for Decodable.init(from:) in conformance TetraECDHSecKey@<X0>(uint64_t *a1@<X0>, SecKeyRef *a2@<X8>)
{
  result = specialized TetraECDHSecKey.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x231890D50]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x231890D50]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SHA384Digest();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8);
  lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x277CC52C8]);
  dispatch thunk of Sequence.makeIterator()();
  v12 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR) + 36));
  result = outlined destroy of TetraSessionStates?(v4, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v14 = v22[0];
  v15 = v22[1];
  if (!a2)
  {
    v18 = v12;
    v12 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    v18 = v12;
    v12 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      v16 = 0;
      v17 = v12 - a3;
      v18 = v12 - 1;
      while (1)
      {
        v19 = v16;
        v20 = v15 + v16;
        v21 = *(v14 + 16);
        if (v20 == v21)
        {
          v15 = v20;
          v12 = v19;
          goto LABEL_17;
        }

        if (v20 >= v21)
        {
          break;
        }

        *(a2 + v19) = *(v15 + v14 + 32 + v19);
        if (a3 - 1 == v19)
        {
          v12 = a3;
          goto LABEL_16;
        }

        v16 = v19 + 1;
        --v18;
        if (v12 == v19 + 1)
        {
          v17 = 0;
LABEL_16:
          v15 += v19 + 1;
          v18 = v17;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v18 = 0;
LABEL_17:
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v18;
    return v12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318919E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 specialized closure #1 in closure #3 in Data.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  outlined init with copy of TetraSessionStates?(a3, &v13 - v10, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v11 = specialized Sequence._copySequenceContents(initializing:)(&v14, a1, a2);
  result = v15;
  *a4 = v14;
  *(a4 + 8) = result;
  *(a4 + 24) = v11;
  return result;
}

id specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

{
  v9[2] = *(v3 + 16);
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v9, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber768.PrivateKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey.CodingKeys and conformance SecureEnclave.Kyber1024.PrivateKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingKeyContent.CodingKeys and conformance TetraOutgoingKeyContent.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of TetraOutgoingKeyContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraOutgoingKeyContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraECDHKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of SecureEnclave.Kyber768.PrivateKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TetraKEM768Key? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TetraKEM768Key? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM768Key and conformance TetraKEM768Key, type metadata accessor for TetraKEM768Key);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraKEM1024Key? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    lazy protocol witness table accessor for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey(&lazy protocol witness table cache variable for type TetraKEM1024Key and conformance TetraKEM1024Key, type metadata accessor for TetraKEM1024Key);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Data? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Data? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data? and conformance <A> A?);
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t specialized TetraOutgoingKeyContent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TetraOutgoingKeyContent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

SecKeyRef specialized TetraECDHSecKey.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection15TetraECDHSecKeyV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v12;
  v9 = v13;
  v10 = specialized TetraECDHSecKey.init(aksBlob:)(v12, v13);
  outlined consume of Data._Representation(v8, v9);
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t lazy protocol witness table accessor for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey.CodingKeys and conformance TetraECDHSecKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSObject and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSObject and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSObject and conformance NSObject);
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != NSData.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = NSData.subscript.getter();
        v12 = NSData.startIndex.getter();
        result = NSData.endIndex.getter();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = NSData.endIndex.getter();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SymmetricKey.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SymmetricKey.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for TetraSessionState()
{
  result = type metadata singleton initialization cache for TetraSessionState;
  if (!type metadata singleton initialization cache for TetraSessionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TetraSessionState()
{
  type metadata accessor for TetraRatchetState(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for P256.Signing.PublicKey();
    if (v1 <= 0x3F)
    {
      type metadata accessor for P256.KeyAgreement.PublicKey?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for P256.KeyAgreement.PublicKey?()
{
  if (!lazy cache variable for type metadata for P256.KeyAgreement.PublicKey?)
  {
    type metadata accessor for P256.KeyAgreement.PublicKey();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for P256.KeyAgreement.PublicKey?);
    }
  }
}

void TetraSessionState.init(remoteTetraRegistration:sessionDST:)(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, int *a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v6 = type metadata accessor for TetraRatchetState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for P256.Signing.PublicKey();
  v32 = *(v28 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TetraSessionState();
  v13 = v12[7];
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  v15 = TetraRegistration.computeKeysHash()();
  v16 = a4 + v12[8];
  *v16 = v15;
  *(v16 + 1) = v17;
  v18 = [*&a1[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] compactRepresentation];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v33 = v19;
  v34 = v21;
  v22 = v35;
  P256.Signing.PublicKey.init<A>(compactRepresentation:)();
  if (v22)
  {

    outlined destroy of TetraSessionStates?(a4 + v13, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    outlined consume of Data._Representation(*v16, *(v16 + 1));
  }

  else
  {
    (*(v32 + 32))(a4 + v12[6], v11, v28);
    *(a4 + v12[9]) = 0;
    v23 = a1;
    v24 = v29;
    TetraRatchetState.init(asSenderWithRemoteTetraRegistration:sessionDST:)(v23, v30, v31, v29);
    outlined init with take of TetraRatchetState(v24, a4 + v12[5]);
    v25 = *&v23[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];

    if (v25 >= 0xF)
    {
      v26 = 15;
    }

    else
    {
      v26 = v25;
    }

    *a4 = v26;
  }
}

uint64_t TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = v2 + *(type metadata accessor for TetraSessionState() + 20);
  v10 = *(v9 + *(type metadata accessor for TetraRatchetState(0) + 20));
  v18[2] = a1;

  result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:), v18, v10);
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:

    return v12 != 0;
  }

  v16 = result & 0xFFFFFFFFFFFFFF8;
  if (result < 0)
  {
    v16 = result;
  }

  v17 = result;
  v12 = MEMORY[0x231891D10](v16);
  result = v17;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x231891C80](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);

LABEL_6:

    v14 = v13 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet;
    swift_beginAccess();
    v15 = v14 + *(type metadata accessor for SymmetricRatchet() + 20);
    specialized Dictionary.removeValue(forKey:)(a2, v8);
    outlined destroy of TetraSessionStates?(v8, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    swift_endAccess();

    return v12 != 0;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:)(void *a1)
{
  v2 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(v3 + 16))(v6, *a1 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v2);
  v8 = MEMORY[0x231891580](v7);
  v10 = v9;
  v11 = MEMORY[0x231891580]();
  v13 = v12;
  v14 = specialized static Data.== infix(_:_:)(v8, v10, v11, v12);
  outlined consume of Data._Representation(v11, v13);
  outlined consume of Data._Representation(v8, v10);
  (*(v3 + 8))(v6, v2);
  return v14 & 1;
}

uint64_t TetraSessionState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for TetraSessionState();
    v13 = v12[5];
    LOBYTE(v21) = 1;
    type metadata accessor for TetraRatchetState(0);
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type TetraRatchetState and conformance TetraRatchetState, type metadata accessor for TetraRatchetState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v21) = 2;
    type metadata accessor for P256.Signing.PublicKey();
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.Signing.PublicKey and conformance P256.Signing.PublicKey, MEMORY[0x277CC54E8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v12[7];
    LOBYTE(v21) = 3;
    type metadata accessor for P256.KeyAgreement.PublicKey();
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v12[8]);
    v17 = v16[1];
    v21 = *v16;
    v22 = v17;
    v20[15] = 4;
    outlined copy of Data._Representation(v21, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v21, v22);
    v18 = *(v3 + v12[9]);
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TetraSessionState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v38 - v5;
  v43 = type metadata accessor for P256.Signing.PublicKey();
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TetraRatchetState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection17TetraSessionStateV10CodingKeys33_79B65C301B389439D22E35E8CA6D9D78LLOGMR);
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v38 - v13;
  v15 = type metadata accessor for TetraSessionState();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 28);
  v21 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v22 = *(*(v21 - 8) + 56);
  v23 = v19;
  v48 = v20;
  v22(&v19[v20], 1, 1, v21);
  v25 = a1[3];
  v24 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();
  v45 = v14;
  v26 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
    return outlined destroy of TetraSessionStates?(v23 + v48, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  }

  else
  {
    v38 = v21;
    v47 = v15;
    v27 = v42;
    v28 = v43;
    LOBYTE(v50) = 0;
    v29 = v23;
    *v23 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v50) = 1;
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type TetraRatchetState and conformance TetraRatchetState, type metadata accessor for TetraRatchetState);
    v30 = v11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v47;
    outlined init with take of TetraRatchetState(v30, v29 + *(v47 + 20));
    LOBYTE(v50) = 2;
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.Signing.PublicKey and conformance P256.Signing.PublicKey, MEMORY[0x277CC54E8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v41 + 32))(v29 + *(v31 + 24), v27, v28);
    LOBYTE(v50) = 3;
    lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498]);
    v32 = v40;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of P256.KeyAgreement.PublicKey?(v32, v29 + v48);
    v51 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = v44;
    v34 = v46;
    v35 = v47;
    *(v29 + *(v47 + 32)) = v50;
    LOBYTE(v50) = 5;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v33 + 8))(v45, v34);
    *(v29 + *(v35 + 36)) = v36 & 1;
    outlined init with copy of TetraSessionState(v29, v39);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return outlined destroy of TetraRatchetState(v29, type metadata accessor for TetraSessionState);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraSessionState.CodingKeys()
{
  v1 = *v0;
  v2 = 0x566E6F6973736573;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000019;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 1)
  {
    v5 = 0x5374656863746172;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraSessionState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TetraSessionState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionState.CodingKeys and conformance TetraSessionState.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TetraRatchetState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraRatchetState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TetraSessionState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraRatchetState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TetraRatchetState and conformance TetraRatchetState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static TetraSessionState.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_7;
  }

  v44 = v8;
  v45 = v5;
  v46 = v4;
  v47 = v15;
  v18 = type metadata accessor for TetraSessionState();
  v19 = v18[6];
  v20 = MEMORY[0x231891720]();
  v22 = v21;
  v23 = v18[6];
  v24 = MEMORY[0x231891720]();
  v26 = v25;
  v27 = specialized static Data.== infix(_:_:)(v20, v22, v24, v25);
  outlined consume of Data._Representation(v24, v26);
  outlined consume of Data._Representation(v20, v22);
  if ((v27 & 1) == 0 || (specialized static Data.== infix(_:_:)(*(a1 + v18[8]), *(a1 + v18[8] + 8), *(a2 + v18[8]), *(a2 + v18[8] + 8)) & 1) == 0)
  {
LABEL_7:
    v33 = 0;
    return v33 & 1;
  }

  v28 = v18[7];
  v29 = *(v47 + 48);
  outlined init with copy of P256.KeyAgreement.PublicKey?(a1 + v28, v17);
  outlined init with copy of P256.KeyAgreement.PublicKey?(a2 + v28, &v17[v29]);
  v31 = v45;
  v30 = v46;
  v32 = *(v45 + 48);
  if (v32(v17, 1, v46) != 1)
  {
    outlined init with copy of P256.KeyAgreement.PublicKey?(v17, v12);
    if (v32(&v17[v29], 1, v30) != 1)
    {
      v35 = v44;
      v36 = (*(v31 + 32))(v44, &v17[v29], v30);
      v37 = MEMORY[0x231891580](v36);
      v39 = v38;
      v40 = MEMORY[0x231891580]();
      v42 = v41;
      v33 = specialized static Data.== infix(_:_:)(v37, v39, v40, v41);
      outlined consume of Data._Representation(v40, v42);
      outlined consume of Data._Representation(v37, v39);
      v43 = *(v31 + 8);
      v43(v35, v30);
      v43(v12, v30);
      outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      return v33 & 1;
    }

    (*(v31 + 8))(v12, v30);
    goto LABEL_11;
  }

  if (v32(&v17[v29], 1, v30) != 1)
  {
LABEL_11:
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
    v33 = 0;
    return v33 & 1;
  }

  outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v33 = 1;
  return v33 & 1;
}

uint64_t outlined init with copy of P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TetraSessionState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TetraSessionState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized TetraSessionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566E6F6973736573 && a2 == 0xEE006E6F69737265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374656863746172 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022B495BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022B495BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022B495C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022B495C30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata instantiation function for HKDFRatchet()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HKDFRatchet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 41))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for HKDFRatchet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t protocol witness for SymmetricRatchetStep.ratchet(_:) in conformance HKDFRatchet<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v48 = a5;
  v54 = a1;
  v55 = a3;
  v52 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v7 = *(*(v56 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v56);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v49 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *v5;
  v45 = *(v5 + 8);
  v46 = v22;
  v24 = *(v5 + 16);
  v23 = *(v5 + 24);
  v44 = *(v5 + 32);
  v25 = *(v5 + 40);
  v26 = type metadata accessor for SymmetricKey();
  v27 = *(v26 - 8);
  result = (*(v27 + 16))(v21, v55, v26);
  v47 = v15;
  *&v21[*(v15 + 48)] = a4;
  v55 = a4;
  if (a4 == -1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v21, v19);
    v29 = SymmetricKey.bitCount.getter();
    v42 = *(v27 + 8);
    v42(v19, v26);
    v43 = v29 / 8;
    v57 = v24;
    v58 = v23;
    v41 = *(v56 + 48);
    outlined copy of Data._Representation(v24, v23);
    v44 = v27;
    v30 = *(v48 + 16);
    v31 = *(v48 + 24);
    v48 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    lazy protocol witness table accessor for type Data and conformance Data();
    v32 = v49;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v57, v58);
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v21, v19);
    *(v32 + v41) = *&v19[*(v47 + 48)];
    v42(v19, v26);
    v33 = v56;
    v34 = *(v56 + 48);
    v57 = v46;
    v58 = v45;
    outlined copy of Data._Representation(v46, v45);
    v35 = v50;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined destroy of (key: SymmetricKey, index: UInt64)(v21);
    outlined consume of Data?(v57, v58);
    *(v35 + v34) = v55 + 1;
    v36 = v51;
    outlined init with take of (SymmetricKey, UInt64)(v32, v51);
    v37 = *(v36 + *(v33 + 48));
    v38 = *(v44 + 32);
    v38(v54, v36, v26);
    v39 = v53;
    outlined init with take of (SymmetricKey, UInt64)(v35, v53);
    v40 = *(v39 + *(v33 + 48));
    v38(v52, v39, v26);
    return v37;
  }

  return result;
}

uint64_t outlined init with copy of (key: SymmetricKey, index: UInt64)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey()
{
  result = lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey;
  if (!lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  }

  return result;
}

uint64_t outlined destroy of (key: SymmetricKey, index: UInt64)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (SymmetricKey, UInt64)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for TKClientTokenObject()
{
  result = lazy cache variable for type metadata for TKClientTokenObject;
  if (!lazy cache variable for type metadata for TKClientTokenObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TKClientTokenObject);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 24));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t type metadata completion function for SecureEnclave.Kyber1024.PrivateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for TKClientTokenObject();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void SecureEnclave.Kyber1024.PrivateKey.init(dataRepresentation:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v57[2] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Kyber1024.PublicKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(0, 0);
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v51 = v17;
    v52 = v10;
    v53 = v11;
    v54 = v6;
    v55 = v7;
    v20 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v57[0] = 0;
    v22 = [v20 objectForObjectID:isa error:v57];

    if (v22)
    {
      v49 = a1;
      v50 = a2;
      v23 = v20;
      v24 = v57[0];
      v25 = [v22 publicKey];
      if (v25)
      {
        v26 = v25;
        v48 = v22;
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v57[0] = v27;
        v57[1] = v29;
        outlined copy of Data._Representation(v27, v29);
        v30 = v52;
        Kyber1024.PublicKey.init<A>(dataRepresentation:)();
        outlined consume of Data._Representation(v27, v29);
        v31 = v53;
        v32 = *(v53 + 64);

        v47 = *(v55 + 32);
        v33 = v51;
        v47(v51 + v32, v30, v54);
        v34 = v49;
        *v33 = v48;
        v33[1] = v34;
        v33[2] = v50;
        outlined init with copy of TetraSessionStates?(v33, v15, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

        v35 = *(v15 + 1);
        v36 = *(v15 + 2);
        v37 = *(v31 + 64);
        v52 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
        v38 = v55;
        v39 = v56;
        v40 = &v56[*(v52 + 20)];
        *v40 = v35;
        *(v40 + 1) = v36;
        v41 = *(v38 + 8);
        v55 = v38 + 8;
        v50 = v41;
        v42 = v54;
        v41(&v15[v37], v54);
        outlined init with copy of TetraSessionStates?(v33, v15, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

        outlined consume of Data._Representation(*(v15 + 1), *(v15 + 2));
        v47(v39, &v15[*(v31 + 64)], v42);
        outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v33, v15, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
        v43 = *v15;
        outlined consume of Data._Representation(*(v15 + 1), *(v15 + 2));
        v44 = *(v31 + 64);
        *&v39[*(v52 + 24)] = v43;
        v50(&v15[v44], v42);
      }

      else
      {
        lazy protocol witness table accessor for type CryptoTokenKitError and conformance CryptoTokenKitError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v49, v50);
      }
    }

    else
    {
      v45 = v57[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(a1, a2);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void SecureEnclave.Kyber768.PrivateKey.init(dataRepresentation:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v57[2] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Kyber768.PublicKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(0, 0);
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v51 = v17;
    v52 = v10;
    v53 = v11;
    v54 = v6;
    v55 = v7;
    v20 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v57[0] = 0;
    v22 = [v20 objectForObjectID:isa error:v57];

    if (v22)
    {
      v49 = a1;
      v50 = a2;
      v23 = v20;
      v24 = v57[0];
      v25 = [v22 publicKey];
      if (v25)
      {
        v26 = v25;
        v48 = v22;
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v57[0] = v27;
        v57[1] = v29;
        outlined copy of Data._Representation(v27, v29);
        v30 = v52;
        Kyber768.PublicKey.init<A>(dataRepresentation:)();
        outlined consume of Data._Representation(v27, v29);
        v31 = v53;
        v32 = *(v53 + 64);

        v47 = *(v55 + 32);
        v33 = v51;
        v47(v51 + v32, v30, v54);
        v34 = v49;
        *v33 = v48;
        v33[1] = v34;
        v33[2] = v50;
        outlined init with copy of TetraSessionStates?(v33, v15, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

        v35 = *(v15 + 1);
        v36 = *(v15 + 2);
        v37 = *(v31 + 64);
        v52 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
        v38 = v55;
        v39 = v56;
        v40 = &v56[*(v52 + 20)];
        *v40 = v35;
        *(v40 + 1) = v36;
        v41 = *(v38 + 8);
        v55 = v38 + 8;
        v50 = v41;
        v42 = v54;
        v41(&v15[v37], v54);
        outlined init with copy of TetraSessionStates?(v33, v15, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

        outlined consume of Data._Representation(*(v15 + 1), *(v15 + 2));
        v47(v39, &v15[*(v31 + 64)], v42);
        outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v33, v15, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
        v43 = *v15;
        outlined consume of Data._Representation(*(v15 + 1), *(v15 + 2));
        v44 = *(v31 + 64);
        *&v39[*(v52 + 24)] = v43;
        v50(&v15[v44], v42);
      }

      else
      {
        lazy protocol witness table accessor for type CryptoTokenKitError and conformance CryptoTokenKitError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v49, v50);
      }
    }

    else
    {
      v45 = v57[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(a1, a2);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t one-time initialization function for SEPisAvailable()
{
  result = static SecureEnclave.isAvailable.getter();
  static MPStaticProperties.SEPisAvailable = result & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptoTokenKitError()
{
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptoTokenKitError()
{
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](0);
  return Hasher._finalize()();
}

void one-time initialization function for token()
{
  v0 = *MEMORY[0x277CDC170];
  v1 = objc_allocWithZone(MEMORY[0x277CC5600]);
  v2 = v0;
  v3 = [v1 initWithTokenID_];

  static SecureEnclave.token = v3;
}

uint64_t SecureEnclave.Kyber768.PrivateKey.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v23 - v9);
  result = static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(&v23 + *(v8 + 64) - v9, 0, 768, MEMORY[0x277CC55C8]);
  if (!v1)
  {
    *v10 = result;
    v10[1] = v12;
    v10[2] = v13;
    v25 = 0;
    outlined init with copy of TetraSessionStates?(v10, v7, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

    v14 = *(v7 + 1);
    v15 = *(v7 + 2);
    v16 = *(v3 + 64);
    v24 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    v17 = (a1 + *(v24 + 20));
    *v17 = v14;
    v17[1] = v15;
    v18 = type metadata accessor for Kyber768.PublicKey();
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    v20(&v7[v16], v18);
    outlined init with copy of TetraSessionStates?(v10, v7, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);

    outlined consume of Data._Representation(*(v7 + 1), *(v7 + 2));
    (*(v19 + 32))(a1, &v7[*(v3 + 64)], v18);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v10, v7, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit8Kyber768O9PublicKeyV06publicM0tMR);
    v21 = *v7;
    outlined consume of Data._Representation(*(v7 + 1), *(v7 + 2));
    v22 = *(v3 + 64);
    *(a1 + *(v24 + 24)) = v21;
    return (v20)(&v7[v22], v18);
  }

  return result;
}

uint64_t static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(a1, a2, 768, MEMORY[0x277CC55C8]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SecureEnclave.Kyber1024.PrivateKey.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v23 - v9);
  result = static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(&v23 + *(v8 + 64) - v9, 0, 1024, MEMORY[0x277CC55E0]);
  if (!v1)
  {
    *v10 = result;
    v10[1] = v12;
    v10[2] = v13;
    v25 = 0;
    outlined init with copy of TetraSessionStates?(v10, v7, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

    v14 = *(v7 + 1);
    v15 = *(v7 + 2);
    v16 = *(v3 + 64);
    v24 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    v17 = (a1 + *(v24 + 20));
    *v17 = v14;
    v17[1] = v15;
    v18 = type metadata accessor for Kyber1024.PublicKey();
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    v20(&v7[v16], v18);
    outlined init with copy of TetraSessionStates?(v10, v7, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);

    outlined consume of Data._Representation(*(v7 + 1), *(v7 + 2));
    (*(v19 + 32))(a1, &v7[*(v3 + 64)], v18);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v10, v7, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMd, &_sSo19TKClientTokenObjectC05tokenC0_10Foundation4DataV18dataRepresentation9CryptoKit9Kyber1024O9PublicKeyV06publicM0tMR);
    v21 = *v7;
    outlined consume of Data._Representation(*(v7 + 1), *(v7 + 2));
    v22 = *(v3 + 64);
    *(a1 + *(v24 + 24)) = v21;
    return (v20)(&v7[v22], v18);
  }

  return result;
}

uint64_t static SecureEnclave.Kyber1024.PrivateKey.generateKey(authContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(a1, a2, 1024, MEMORY[0x277CC55E0]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static SecureEnclave.Kyber768.PrivateKey.generateKey(authContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *, void, void))
{
  v28[24] = *MEMORY[0x277D85DE8];
  v8 = specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(a2, 0);
  if (v4)
  {
    goto LABEL_7;
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48D990;
  v28[0] = *MEMORY[0x277CDC018];
  type metadata accessor for CFStringRef(0);
  v12 = v11;
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v13 = v28[0];
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = a3;
  v28[0] = *MEMORY[0x277CDC028];
  v14 = v28[0];
  AnyHashable.init<A>(_:)();
  v15 = *MEMORY[0x277CDC058];
  if (*MEMORY[0x277CDC058])
  {
    *(inited + 168) = v12;
    *(inited + 144) = v15;
    v16 = v15;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28[0] = 0;
    v5 = [v9 createObjectWithAttributes:isa error:v28];

    if (!v5)
    {
      v27 = v28[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_7:
      v25 = *MEMORY[0x277D85DE8];
      return v5;
    }

    v18 = v28[0];
    v19 = [v5 objectID];
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = [v5 publicKey];
    if (v20)
    {
      v21 = v20;

      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v28[0] = v22;
      v28[1] = v24;
      a4(v28, MEMORY[0x277CC9318], MEMORY[0x277CC9300]);

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *closure #1 in SecureEnclave.Kyber768.PrivateKey.decapsulate(_:)(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2.super.isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B48D7C0;
  if (!*MEMORY[0x277CDC350])
  {
    __break(1u);
  }

  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12[0] = 0;
  v7 = [a1 decapsulate:v2.super.isa algorithms:isa parameters:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

id specialized static SecureEnclave.KyberToken.session(authenticationContext:parameters:)(uint64_t a1, unint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for token != -1)
  {
    swift_once();
  }

  v4 = static SecureEnclave.token;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

  v12[0] = 0;
  v6 = objc_allocWithZone(MEMORY[0x277CC5610]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithToken:v4 LAContext:a1 parameters:isa error:v12];

  v9 = v12[0];
  if (v12[0])
  {
    swift_willThrow();
    v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t lazy protocol witness table accessor for type CryptoTokenKitError and conformance CryptoTokenKitError()
{
  result = lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError;
  if (!lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError;
  if (!lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptoTokenKitError and conformance CryptoTokenKitError);
  }

  return result;
}

uint64_t outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

void *closure #1 in SecureEnclave.Kyber1024.PrivateKey.decapsulate(_:)(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22B40711C(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

SecAccessControlRef TetraRatchetState.init(asSenderWithRemoteTetraRegistration:sessionDST:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v141 = a2;
  v150 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v127 = v113 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = v113 - v10;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v11 = *(*(v143 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v143);
  v122 = v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v136 = v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v134 = v113 - v17;
  v129 = type metadata accessor for TetraECDHKey();
  v18 = *(*(v129 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v129);
  v130 = (v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v137 = v113 - v21;
  v140 = type metadata accessor for TetraOutgoingKeyContent(0);
  v22 = *(*(v140 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v140);
  v125 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v139 = v113 - v26;
  MEMORY[0x28223BE20](v25);
  v135 = v113 - v27;
  v151 = type metadata accessor for Kyber1024.PublicKey();
  v28 = *(v151 - 1);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v151);
  v131 = v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = v113 - v32;
  v138 = type metadata accessor for KEM.EncapsulationResult();
  v142 = *(v138 - 8);
  v34 = *(v142 + 64);
  MEMORY[0x28223BE20](v138);
  v36 = v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SymmetricKey();
  v133 = *(v37 - 8);
  v39 = v133 + 56;
  v38 = *(v133 + 56);
  v124 = v37;
  v128 = v38;
  (v38)(a4, 1, 1);
  v40 = type metadata accessor for TetraRatchetState(0);
  *(a4 + *(v40 + 28)) = 0;
  v41 = *(v40 + 32);
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v45 = v43 + 56;
  v145 = v41;
  v147 = a4;
  v123 = v44;
  v44(a4 + v41, 1, 1, v42);
  v46 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey;
  v47 = *&v150[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey];
  v149 = v28;
  v50 = *(v28 + 16);
  v48 = v28 + 16;
  v49 = v50;
  v50(v33, v47 + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v151);
  v144 = v36;
  v146 = v33;
  v51 = v148;
  Kyber1024.PublicKey.encapsulate()();
  v148 = v51;
  if (v51)
  {

    (*(v149 + 8))(v146, v151);
LABEL_3:
    v52 = v147;
LABEL_13:
    outlined destroy of TetraSessionStates?(v52, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    return outlined destroy of TetraSessionStates?(v52 + v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v121 = v46;
  v117 = v48;
  v118 = v49;
  v113[1] = v45;
  v114 = v42;
  v115 = v40;
  v116 = v39;
  v53 = v143;
  v54 = v149 + 8;
  v119 = *(v149 + 8);
  v119(v146, v151);
  v55 = KEM.EncapsulationResult.encapsulated.getter();
  v57 = v56;
  v58 = v140;
  v59 = *(v140 + 20);
  v60 = type metadata accessor for TetraKEM768Key(0);
  v61 = *(*(v60 - 8) + 56);
  v62 = v139;
  v146 = v59;
  v61(&v59[v139], 1, 1, v60);
  v63 = *(v58 + 24);
  v64 = type metadata accessor for TetraKEM1024Key(0);
  v65 = *(*(v64 - 8) + 56);
  v120 = v63;
  v65(&v62[v63], 1, 1, v64);
  v66 = &v62[*(v58 + 28)];
  *v66 = xmmword_22B48D7D0;
  outlined consume of Data?(0, 0xF000000000000000);
  *v66 = v55;
  *(v66 + 1) = v57;
  v67 = v62;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  v149 = v54;
  v68 = v53;
  v69 = v141;
  if ((static MPStaticProperties.SEPisAvailable & 1) == 0)
  {
    v80 = [objc_opt_self() newCompactPrivateKey];
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = v148;
    v85 = specialized TetraECDHSecKey.init(aksBlob:)(v81, v83);
    v79 = v121;
    if (!v84)
    {
      v86 = v85;
      v148 = 0;
      outlined consume of Data._Representation(v81, v83);
      v78 = v130;
      *v130 = v86;
      v87 = *(v129 + 20);
      v88 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
      (*(*(v88 - 8) + 56))(&v78[v87], 1, 1, v88);
      v73 = v150;
      v75 = v137;
      goto LABEL_15;
    }

    outlined consume of Data._Representation(v81, v83);
    v52 = v147;
    v73 = v150;
    v74 = v142;
LABEL_12:

    (*(v74 + 8))(v144, v138);
    outlined destroy of TetraSessionStates?(&v146[v67], &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    outlined destroy of TetraSessionStates?(v67 + v120, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    outlined consume of Data?(*v66, *(v66 + 1));
    goto LABEL_13;
  }

  v70 = v53;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  v52 = v147;
  v72 = v148;
  v73 = v150;
  v74 = v142;
  v75 = v137;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v76 = v134;
  SecureEnclave.P256.KeyAgreement.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
  if (v72)
  {
    goto LABEL_12;
  }

  v148 = 0;
  v77 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  v78 = v130;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v76, v130 + *(v129 + 20), &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  *v78 = 0;
  v79 = v121;
  v68 = v70;
  v69 = v141;
LABEL_15:
  outlined init with take of TetraOutgoingSymmetricRatchet(v78, v75, type metadata accessor for TetraECDHKey);
  outlined init with take of TetraOutgoingSymmetricRatchet(v75, v67, type metadata accessor for TetraECDHKey);
  v89 = v135;
  outlined init with take of TetraOutgoingSymmetricRatchet(v67, v135, type metadata accessor for TetraOutgoingKeyContent);
  v90 = *(v68 + 48);
  v91 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey;
  v92 = *&v73[v79] + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey;
  v93 = v131;
  v94 = v151;
  v118(v131, v92, v151);
  v95 = v69(1);
  v97 = v96;
  v98 = v136;
  v99 = &v73[v91];
  v100 = v144;
  v101 = v148;
  static TetraRatchetState.deriveRootAndChainKeyAsSender(theirECDHPublicKey:theirKyber1024Key:encapResult:ourOutgoingKeys:conversationDST:)(v136, v136 + v90, v99, v93, v144, v89, v95, v96);
  if (v101)
  {
    outlined consume of Data._Representation(v95, v97);

    v119(v93, v94);
    outlined destroy of TetraOutgoingSymmetricRatchet(v89, type metadata accessor for TetraOutgoingKeyContent);
    (*(v142 + 8))(v100, v138);
    goto LABEL_3;
  }

  outlined consume of Data._Representation(v95, v97);
  v119(v93, v94);
  v102 = v147;
  outlined destroy of TetraSessionStates?(v147, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v103 = v122;
  outlined init with copy of TetraSessionStates?(v98, v122, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v104 = v133;
  v105 = *(v133 + 32);
  v149 = *(v143 + 48);
  v150 = v105;
  v106 = v124;
  (v105)(v102, v103, v124);
  v128(v102, 0, 1, v106);
  v107 = *(v104 + 8);
  v133 = v104 + 8;
  v151 = v107;
  (v107)(v103 + v149, v106);
  v108 = v126;
  Date.init()();
  v123(v108, 0, 1, v114);
  outlined assign with take of P256.KeyAgreement.PublicKey?(v108, v102 + v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v109 = v115;
  *(v102 + *(v115 + 20)) = MEMORY[0x277D84F90];
  outlined init with copy of TetraSessionStates?(v136, v103, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v110 = v127;
  (v150)(v127, v103 + *(v143 + 48), v106);
  v128(v110, 0, 1, v106);
  v111 = v135;
  v112 = v125;
  outlined init with copy of TetraRatchetState(v135, v125, type metadata accessor for TetraOutgoingKeyContent);
  TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)(v110, v112, v102 + *(v109 + 24));

  outlined destroy of TetraSessionStates?(v136, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  outlined destroy of TetraOutgoingSymmetricRatchet(v111, type metadata accessor for TetraOutgoingKeyContent);
  (*(v142 + 8))(v144, v138);
  return (v151)(v103, v106);
}

id TetraRatchetState.init(asReceiverWithFullPrekey:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v66 - v6;
  v73 = type metadata accessor for TetraOutgoingKeyContent(0);
  v7 = *(*(v73 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v73);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v66 - v13;
  v82 = type metadata accessor for TetraKEM1024Key(0);
  v72 = *(v82 - 8);
  v14 = *(v72 + 64);
  v15 = MEMORY[0x28223BE20](v82);
  v81 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v66 - v17;
  v18 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TetraECDHKey();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v25);
  v67 = &v66 - v29;
  MEMORY[0x28223BE20](v28);
  v86 = &v66 - v30;
  v31 = type metadata accessor for SymmetricKey();
  v32 = *(v31 - 8);
  v79 = *(v32 + 56);
  v80 = v31;
  v78 = v32 + 56;
  v79(a2, 1, 1);
  v33 = type metadata accessor for TetraRatchetState(0);
  *(a2 + *(v33 + 28)) = 0;
  v77 = v33;
  v34 = *(v33 + 32);
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v87 = a2;
  *&v84 = v34;
  v69 = v37;
  v70 = v35;
  v68 = v36 + 56;
  (v37)(a2 + v34, 1, 1);
  LODWORD(a2) = [a1 isSEPKey];
  v88 = a1;
  v38 = [a1 keychainData];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (a2)
  {
    v42 = v85;
    SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)();
    if (v42)
    {

LABEL_6:
      v46 = v87;
      outlined destroy of TetraSessionStates?(v87, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      return outlined destroy of TetraSessionStates?(v46 + v84, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v48 = *(v23 + 20);
    v49 = v86;
    (*(v19 + 32))(&v86[v48], v22, v18);
    (*(v19 + 56))(&v49[v48], 0, 1, v18);
    *v49 = 0;
  }

  else
  {
    v43 = *(v23 + 20);
    (*(v19 + 56))(v27 + v43, 1, 1, v18);
    v44 = v85;
    v45 = specialized TetraECDHSecKey.init(aksBlob:)(v39, v41);
    outlined consume of Data._Representation(v39, v41);
    if (v44)
    {

      outlined destroy of TetraSessionStates?(v27 + v43, &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
      goto LABEL_6;
    }

    *v27 = v45;
    v50 = v67;
    outlined init with take of TetraOutgoingSymmetricRatchet(v27, v67, type metadata accessor for TetraECDHKey);
    outlined init with take of TetraOutgoingSymmetricRatchet(v50, v86, type metadata accessor for TetraECDHKey);
  }

  v85 = 0;
  result = [v88 tetraPrivateKey];
  if (result)
  {
    v51 = result;
    v52 = v83;
    outlined init with copy of TetraRatchetState(result + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey, v83, type metadata accessor for TetraKEM1024Key);

    v53 = v87;
    outlined destroy of TetraSessionStates?(v87, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v54 = v53;
    (v79)(v53, 1, 1, v80);
    v55 = v71;
    Date.init()();
    v69(v55, 0, 1, v70);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v55, v54 + v84, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v56 = v76;
    *(v54 + *(v77 + 20)) = MEMORY[0x277D84F90];
    outlined init with copy of TetraRatchetState(v86, v56, type metadata accessor for TetraECDHKey);
    outlined init with copy of TetraRatchetState(v52, v81, type metadata accessor for TetraKEM1024Key);
    v57 = v73;
    v58 = *(v73 + 20);
    v59 = type metadata accessor for TetraKEM768Key(0);
    v60 = *(*(v59 - 8) + 56);
    v60(v56 + v58, 1, 1, v59);
    v61 = *(v57 + 24);
    v62 = *(v72 + 56);
    v62(v56 + v61, 1, 1, v82);
    v63 = v56 + *(v57 + 28);
    v84 = xmmword_22B48D7D0;
    *v63 = xmmword_22B48D7D0;
    outlined destroy of TetraSessionStates?(v56 + v58, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v60(v56 + v58, 1, 1, v59);
    outlined destroy of TetraSessionStates?(v56 + v61, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    outlined init with take of TetraOutgoingSymmetricRatchet(v81, v56 + v61, type metadata accessor for TetraKEM1024Key);
    v62(v56 + v61, 0, 1, v82);
    outlined consume of Data?(*v63, *(v63 + 8));
    *v63 = v84;
    v64 = v75;
    (v79)(v75, 1, 1, v80);
    v65 = v74;
    outlined init with copy of TetraRatchetState(v56, v74, type metadata accessor for TetraOutgoingKeyContent);
    TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)(v64, v65, v87 + *(v77 + 24));

    outlined destroy of TetraOutgoingSymmetricRatchet(v83, type metadata accessor for TetraKEM1024Key);
    outlined destroy of TetraOutgoingSymmetricRatchet(v86, type metadata accessor for TetraECDHKey);
    return outlined destroy of TetraOutgoingSymmetricRatchet(v56, type metadata accessor for TetraOutgoingKeyContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static P256.KeyAgreement.PublicKey.== infix(_:_:)()
{
  v0 = MEMORY[0x231891580]();
  v2 = v1;
  v3 = MEMORY[0x231891580]();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6 & 1;
}

uint64_t P256.KeyAgreement.PublicKey.hash(into:)()
{
  v0 = MEMORY[0x231891580]();
  v2 = v1;
  Data.hash(into:)();

  return outlined consume of Data._Representation(v0, v2);
}

Swift::Int P256.KeyAgreement.PublicKey.hashValue.getter()
{
  v0 = Hasher.init(_seed:)();
  v1 = MEMORY[0x231891580](v0);
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance P256.KeyAgreement.PublicKey()
{
  v0 = Hasher.init(_seed:)();
  v1 = MEMORY[0x231891580](v0);
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance P256.KeyAgreement.PublicKey()
{
  v0 = MEMORY[0x231891580]();
  v2 = v1;
  Data.hash(into:)();

  return outlined consume of Data._Representation(v0, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance P256.KeyAgreement.PublicKey()
{
  v0 = Hasher.init(_seed:)();
  v1 = MEMORY[0x231891580](v0);
  v3 = v2;
  Data.hash(into:)();
  outlined consume of Data._Representation(v1, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance P256.KeyAgreement.PublicKey()
{
  v0 = MEMORY[0x231891580]();
  v2 = v1;
  v3 = MEMORY[0x231891580]();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6 & 1;
}

uint64_t TetraOutgoingKeyContent.init(includesKEMKey:encap:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v41 - v12;
  v44 = type metadata accessor for TetraECDHKey();
  v14 = *(*(v44 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v44);
  v17 = (v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = v41 - v18;
  v20 = type metadata accessor for TetraOutgoingKeyContent(0);
  v21 = v20[5];
  v22 = type metadata accessor for TetraKEM768Key(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v47 = v21;
  v41[1] = v23 + 56;
  v42 = v24;
  v24(a4 + v21, 1, 1, v22);
  v25 = v20[6];
  v26 = type metadata accessor for TetraKEM1024Key(0);
  v27 = *(*(v26 - 8) + 56);
  v46 = v25;
  v27(a4 + v25, 1, 1, v26);
  v28 = a4 + v20[7];
  *v28 = xmmword_22B48D7D0;
  outlined consume of Data?(0, 0xF000000000000000);
  *v28 = a2;
  *(v28 + 8) = a3;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  if (static MPStaticProperties.SEPisAvailable == 1)
  {
    result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = v48;
    SecureEnclave.P256.KeyAgreement.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
    if (!v30)
    {
      v31 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
      (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
      outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v13, v17 + *(v44 + 20), &_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
      *v17 = 0;
      goto LABEL_9;
    }

LABEL_11:
    outlined destroy of TetraSessionStates?(a4 + v47, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    outlined destroy of TetraSessionStates?(a4 + v46, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    return outlined consume of Data?(*v28, *(v28 + 8));
  }

  v32 = [objc_opt_self() newCompactPrivateKey];
  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = v48;
  v37 = specialized TetraECDHSecKey.init(aksBlob:)(v33, v35);
  outlined consume of Data._Representation(v33, v35);
  if (v36)
  {
    goto LABEL_11;
  }

  *v17 = v37;
  v38 = *(v44 + 20);
  v39 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  (*(*(v39 - 8) + 56))(v17 + v38, 1, 1, v39);
LABEL_9:
  outlined init with take of TetraOutgoingSymmetricRatchet(v17, v19, type metadata accessor for TetraECDHKey);
  result = outlined init with take of TetraOutgoingSymmetricRatchet(v19, a4, type metadata accessor for TetraECDHKey);
  if (v45)
  {
    v40 = v43;
    TetraKEM768Key.init()(v43);
    v42(v40, 0, 1, v22);
    return outlined assign with take of P256.KeyAgreement.PublicKey?(v40, a4 + v47, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  }

  return result;
}

uint64_t TetraOutgoingKeyContent.decapsulate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for TetraOutgoingKeyContent(0);
  v16 = *(v15 + 20);
  v17 = v3;
  outlined init with copy of TetraSessionStates?(v3 + v16, v14, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v18 = type metadata accessor for TetraKEM768Key(0);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v14, 1, v18);
  outlined destroy of TetraSessionStates?(v14, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  if (v20 != 1)
  {
    v30 = v32;
    outlined init with copy of TetraSessionStates?(v17 + v16, v32, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    result = v19(v30, 1, v18);
    if (result != 1)
    {
      TetraKEM768Key.decapsulate(_:)(v36, v34);
      v28 = type metadata accessor for TetraKEM768Key;
      v29 = v30;
      return outlined destroy of TetraOutgoingSymmetricRatchet(v29, v28);
    }

    goto LABEL_9;
  }

  v21 = *(v15 + 24);
  v22 = v33;
  outlined init with copy of TetraSessionStates?(v3 + v21, v33, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v23 = type metadata accessor for TetraKEM1024Key(0);
  v24 = *(*(v23 - 8) + 48);
  v25 = v24(v22, 1, v23);
  result = outlined destroy of TetraSessionStates?(v22, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  if (v25 == 1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v27 = v31;
  outlined init with copy of TetraSessionStates?(v17 + v21, v31, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  result = v24(v27, 1, v23);
  if (result != 1)
  {
    TetraKEM1024Key.decapsulate(_:)(v36, v34);
    v28 = type metadata accessor for TetraKEM1024Key;
    v29 = v27;
    return outlined destroy of TetraOutgoingSymmetricRatchet(v29, v28);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ReceivingKeyTetraRatchet.CodingKeys()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0x6E69766965636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69766965636572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReceivingKeyTetraRatchet.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ReceivingKeyTetraRatchet.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReceivingKeyTetraRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ReceivingKeyTetraRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReceivingKeyTetraRatchet.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey;
  v2 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of TetraSessionStates?(v0 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  outlined destroy of TetraOutgoingSymmetricRatchet(v0 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t ReceivingKeyTetraRatchet.encode(to:)(void *a1)
{
  v30 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v28 - v6;
  v7 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v32;
  (*(v8 + 16))(v11, v32 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v7);
  v35 = 0;
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498]);
  v19 = v33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v19)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v33 = v13;
    (*(v8 + 8))(v11, v7);
    v21 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey;
    v22 = v18;
    swift_beginAccess();
    v23 = v18 + v21;
    v24 = v31;
    outlined init with copy of TetraSessionStates?(v23, v31, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    v34 = 1;
    type metadata accessor for Kyber768.PublicKey();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Kyber768.PublicKey and conformance Kyber768.PublicKey, MEMORY[0x277CC55D0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined destroy of TetraSessionStates?(v24, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    v25 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet;
    swift_beginAccess();
    v26 = v22 + v25;
    v27 = v29;
    outlined init with copy of TetraRatchetState(v26, v29, type metadata accessor for TetraIncomingSymmetricRatchet);
    v36 = 2;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet and conformance TetraIncomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of TetraOutgoingSymmetricRatchet(v27, type metadata accessor for TetraIncomingSymmetricRatchet);
    return (*(v33 + 8))(v16, v12);
  }
}

uint64_t ReceivingKeyTetraRatchet.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v33 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection24ReceivingKeyTetraRatchetC10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v34 = *(v37 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey;
  v18 = type metadata accessor for Kyber768.PublicKey();
  v19 = *(*(v18 - 8) + 56);
  v41 = v17;
  v19(v2 + v17, 1, 1, v18);
  v20 = a1[3];
  v21 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys();
  v22 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    outlined destroy of TetraSessionStates?(v2 + v41, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    type metadata accessor for ReceivingKeyTetraRatchet(0);
    v28 = *(*v2 + 48);
    v29 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v34;
    v23 = v35;
    v40 = 0;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type P256.KeyAgreement.PublicKey and conformance P256.KeyAgreement.PublicKey, MEMORY[0x277CC5498]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = *(v23 + 32);
    v38 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey;
    v25(v2 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v13, v36);
    v40 = 1;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Kyber768.PublicKey and conformance Kyber768.PublicKey, MEMORY[0x277CC55D0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v41;
    swift_beginAccess();
    outlined assign with take of P256.KeyAgreement.PublicKey?(v9, v2 + v26, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    swift_endAccess();
    v40 = 2;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet and conformance TetraIncomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
    v27 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v16, v37);
    outlined init with take of TetraOutgoingSymmetricRatchet(v27, v2 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReceivingKeyTetraRatchet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ReceivingKeyTetraRatchet(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ReceivingKeyTetraRatchet.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

Swift::Int TetraMessageTypes.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t static TetraRatchetState.deriveRootAndChainKeyAsSender(theirECDHPublicKey:theirKyber1024Key:encapResult:ourOutgoingKeys:conversationDST:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v161 = a6;
  v164 = a5;
  v152 = a4;
  v174 = a3;
  v151 = a2;
  v150 = a1;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v153 = *(v159 - 8);
  v11 = *(v153 + 64);
  v12 = MEMORY[0x28223BE20](v159);
  v146 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v149 = &v140 - v15;
  MEMORY[0x28223BE20](v14);
  v163 = &v140 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v147 = (&v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v157 = &v140 - v21;
  v158 = type metadata accessor for SymmetricKey();
  v162 = *(v158 - 8);
  v22 = *(v162 + 64);
  v23 = MEMORY[0x28223BE20](v158);
  v148 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v154 = &v140 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v156 = &v140 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v155 = &v140 - v30;
  MEMORY[0x28223BE20](v29);
  v165 = &v140 - v31;
  v160 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v32 = *(v160 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v160);
  v35 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x6174536172746554, 0xEB000000002D7472);
  v38 = v37;
  v171 = a7;
  v172 = a8;
  *(&v169 + 1) = MEMORY[0x277CC9318];
  v170 = MEMORY[0x277CC9300];
  *&v168 = v36;
  *(&v168 + 1) = v37;
  v39 = __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277CC9318]);
  v41 = *v39;
  v40 = v39[1];
  outlined copy of Data._Representation(a7, a8);
  outlined copy of Data._Representation(v36, v38);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v41, v40);
  outlined consume of Data._Representation(v36, v38);
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v42 = v171;
  v43 = v172;
  result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v45 >> 60 == 15)
  {
    goto LABEL_33;
  }

  *&v166 = v42;
  *(&v166 + 1) = v43;
  *(&v169 + 1) = MEMORY[0x277CC9318];
  v170 = MEMORY[0x277CC9300];
  *&v168 = result;
  *(&v168 + 1) = v45;
  v46 = result;
  v47 = v45;
  v48 = __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277CC9318]);
  v49 = *v48;
  v50 = v48[1];
  outlined copy of Data._Representation(v42, v43);
  outlined copy of Data?(v46, v47);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v49, v50);
  outlined consume of Data?(v46, v47);
  outlined consume of Data._Representation(v42, v43);
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v51 = v166;
  TetraECDHKey.publicKey.getter();
  v52 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v54 = v53;
  result = (*(v32 + 8))(v35, v160);
  if (v54 >> 60 != 15)
  {
    v173 = v51;
    v55 = MEMORY[0x277CC9318];
    *(&v169 + 1) = MEMORY[0x277CC9318];
    v170 = MEMORY[0x277CC9300];
    *&v168 = v52;
    *(&v168 + 1) = v54;
    v56 = __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277CC9318]);
    v57 = *v56;
    v58 = v56[1];
    outlined copy of Data._Representation(v51, *(&v51 + 1));
    outlined copy of Data?(v52, v54);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v57, v58);
    outlined consume of Data?(v52, v54);
    outlined consume of Data._Representation(v51, *(&v51 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v168);
    TetraECDHKey.sharedSecretFromKeyAgreement(with:)(v174, v165);
    v59 = MEMORY[0x277CC9300];
    if (v8)
    {
      return outlined consume of Data._Representation(v173, *(&v173 + 1));
    }

    v60 = KEM.EncapsulationResult.encapsulated.getter();
    v62 = v61 >> 62;
    if ((v61 >> 62) > 1)
    {
      if (v62 != 2)
      {
        outlined consume of Data._Representation(v60, v61);
        v60 = 0;
        goto LABEL_14;
      }

      v65 = *(v60 + 16);
      v64 = *(v60 + 24);
      outlined consume of Data._Representation(v60, v61);
      v60 = v64 - v65;
      if (!__OFSUB__(v64, v65))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v62)
    {
      v63 = BYTE6(v61);
      outlined consume of Data._Representation(v60, v61);
      v60 = v63;
      goto LABEL_14;
    }

    v66 = HIDWORD(v60);
    v67 = v60;
    result = outlined consume of Data._Representation(v60, v61);
    if (__OFSUB__(v66, v67))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v60 = v66 - v67;
LABEL_14:
    v68 = I2OSP(value:outputByteCount:)(v60, 4);
    v70 = v69;
    v71 = KEM.EncapsulationResult.encapsulated.getter();
    v73 = v72;
    *&v166 = v68;
    *(&v166 + 1) = v70;
    *(&v169 + 1) = v55;
    v170 = v59;
    *&v168 = v71;
    *(&v168 + 1) = v72;
    v74 = __swift_project_boxed_opaque_existential_1(&v168, v55);
    v75 = *v74;
    v76 = v74[1];
    outlined copy of Data._Representation(v68, v70);
    outlined copy of Data._Representation(v71, v73);
    v77 = v75;
    v78 = v76;
    v79 = MEMORY[0x277CC9300];
    v80 = MEMORY[0x277CC9318];
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v77, v78);
    outlined consume of Data._Representation(v71, v73);
    outlined consume of Data._Representation(v68, v70);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    v81 = v166;
    *(&v169 + 1) = v80;
    v170 = v79;
    v168 = v166;
    v82 = __swift_project_boxed_opaque_existential_1(&v168, v80);
    v83 = *v82;
    v84 = v82[1];
    outlined copy of Data._Representation(v81, *(&v81 + 1));
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v83, v84);
    outlined consume of Data._Representation(v81, *(&v81 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v168);
    result = Kyber1024.PublicKey.dataRepresentation.getter();
    v86 = result;
    v87 = v85;
    v88 = v85 >> 62;
    if ((v85 >> 62) > 1)
    {
      if (v88 != 2)
      {
        result = 0;
        goto LABEL_24;
      }

      v90 = *(result + 16);
      v89 = *(result + 24);
      result = v89 - v90;
      if (!__OFSUB__(v89, v90))
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v88)
    {
      result = BYTE6(v85);
LABEL_24:
      v91 = I2OSP(value:outputByteCount:)(result, 4);
      v93 = v92;
      *&v166 = v91;
      *(&v166 + 1) = v92;
      *(&v169 + 1) = v80;
      v170 = v79;
      *&v168 = v86;
      *(&v168 + 1) = v87;
      v94 = __swift_project_boxed_opaque_existential_1(&v168, v80);
      v95 = v79;
      v96 = *v94;
      v97 = v94[1];
      outlined copy of Data._Representation(v91, v93);
      v160 = v86;
      v152 = v87;
      outlined copy of Data._Representation(v86, v87);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v96, v97);
      outlined consume of Data._Representation(v91, v93);
      __swift_destroy_boxed_opaque_existential_1(&v168);
      v98 = v166;
      *(&v169 + 1) = v80;
      v170 = v95;
      v168 = v166;
      v99 = __swift_project_boxed_opaque_existential_1(&v168, v80);
      v100 = *v99;
      v101 = v99[1];
      outlined copy of Data._Representation(v98, *(&v98 + 1));
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v100, v101);
      outlined consume of Data._Representation(v98, *(&v98 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v168);
      v102 = type metadata accessor for __DataStorage();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      v141 = v102;
      swift_allocObject();
      v105 = __DataStorage.init(length:)();
      *&v168 = 0x2000000000;
      *(&v168 + 1) = v105 | 0x4000000000000000;
      SymmetricKey.init<A>(data:)();
      v106 = v162;
      v107 = v158;
      (*(v162 + 16))(v154, v165, v158);
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
      SymmetricKey.init<A>(data:)();
      v108 = v157;
      KEM.EncapsulationResult.sharedSecret.getter();
      (*(v106 + 56))(v108, 0, 1, v107);
      v109 = v173;
      v144 = v109 >> 64;
      v145 = v109;
      type metadata accessor for NSData();
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v161 = 0;
      v110 = v168;
      v111 = type metadata accessor for SHA384();
      v112 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
      v113 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData);
      v114 = v163;
      v174 = v111;
      v115 = v106;
      v164 = v112;
      v142 = v113;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();

      (*(v153 + 16))(v146, v114, v159);
      v116 = lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
      v117 = v148;
      SymmetricKey.init<A>(data:)();
      v118 = v108;
      v119 = v147;
      outlined init with copy of TetraSessionStates?(v118, v147, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v120 = (*(v106 + 48))(v119, 1, v107);
      v143 = v116;
      if (v120 == 1)
      {
        outlined destroy of TetraSessionStates?(v119, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
        v121 = *(v141 + 48);
        v122 = *(v141 + 52);
        swift_allocObject();
        __DataStorage.init(length:)();
        v123.super.isa = Data._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v124 = v161;
        SymmetricKey.withUnsafeBytes<A>(_:)();
        v161 = v124;
        v123.super.isa = v168;
        (*(v106 + 8))(v119, v107);
      }

      *&v168 = v123;
      v125 = v149;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();
      v126 = *(v115 + 8);
      v162 = v115 + 8;
      v126(v117, v107);
      v127 = v153;
      v128 = *(v153 + 8);
      v129 = v163;
      v130 = v159;
      v148 = (v153 + 8);
      v147 = v128;
      (v128)(v163, v159);

      (*(v127 + 32))(v129, v125, v130);
      if (one-time initialization token for tetraDHRatchetStepKDFString != -1)
      {
        swift_once();
      }

      v131 = tetraDHRatchetStepKDFString;
      v166 = tetraDHRatchetStepKDFString;
      *(&v169 + 1) = MEMORY[0x277CC9318];
      v170 = MEMORY[0x277CC9300];
      v132 = v145;
      v133 = v144;
      *&v168 = v145;
      *(&v168 + 1) = v144;
      v134 = __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277CC9318]);
      v135 = *v134;
      v136 = v134[1];
      outlined copy of Data._Representation(v131, *(&v131 + 1));
      outlined copy of Data._Representation(v132, v133);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v135, v136);
      __swift_destroy_boxed_opaque_existential_1(&v168);
      v168 = v166;
      lazy protocol witness table accessor for type Data and conformance Data();
      v137 = v154;
      v138 = v163;
      static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
      outlined consume of Data?(v168, *(&v168 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v166 = v168;
      v167 = v169;
      lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
      SymmetricKey.init<A>(data:)();
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v166 = v168;
      v167 = v169;
      SymmetricKey.init<A>(data:)();
      outlined consume of Data._Representation(v160, v152);
      v139 = v158;
      v126(v137, v158);
      (v147)(v138, v130);
      outlined destroy of TetraSessionStates?(v157, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v126(v156, v139);
      v126(v155, v139);
      v126(v165, v139);
      return outlined consume of Data._Representation(v173, *(&v173 + 1));
    }

    if (!__OFSUB__(HIDWORD(v86), v86))
    {
      result = HIDWORD(v86) - v86;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t static TetraRatchetState.deriveRootAndChainKeyAsSender(rootKey:theirECDHPublicKey:theirKyber768Key:encapResult:ourOutgoingKeys:conversationDST:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, unint64_t a9)
{
  v192 = a7;
  v183 = a6;
  v171 = a5;
  v205 = a4;
  v173 = a3;
  v180 = a2;
  v179 = a1;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v184 = *(v190 - 8);
  v10 = *(v184 + 64);
  v11 = MEMORY[0x28223BE20](v190);
  v175 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v177 = &v169 - v14;
  MEMORY[0x28223BE20](v13);
  v187 = &v169 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v176 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v186 = &v169 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v170 = &v169 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v172 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v181 = (&v169 - v28);
  v189 = type metadata accessor for KEM.EncapsulationResult();
  v188 = *(v189 - 8);
  v29 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v182 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for SymmetricKey();
  v178 = *(v195 - 8);
  v31 = *(v178 + 64);
  v32 = MEMORY[0x28223BE20](v195);
  v174 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v185 = &v169 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v194 = &v169 - v37;
  MEMORY[0x28223BE20](v36);
  v196 = &v169 - v38;
  v191 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v39 = *(v191 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v191);
  v42 = &v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x7461526172746554, 0xED00002D74656863);
  v45 = v44;
  v202 = a8;
  v203 = a9;
  v46 = MEMORY[0x277CC9318];
  *(&v200 + 1) = MEMORY[0x277CC9318];
  v201 = MEMORY[0x277CC9300];
  *&v199 = v43;
  *(&v199 + 1) = v44;
  v47 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
  v49 = *v47;
  v48 = v47[1];
  outlined copy of Data._Representation(a8, a9);
  outlined copy of Data._Representation(v43, v45);
  v50 = v193;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v49, v48);
  outlined consume of Data._Representation(v43, v45);
  __swift_destroy_boxed_opaque_existential_1(&v199);
  v51 = v202;
  v52 = v203;
  result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v54 >> 60 == 15)
  {
    goto LABEL_40;
  }

  *&v197 = v51;
  *(&v197 + 1) = v52;
  *(&v200 + 1) = v46;
  v201 = MEMORY[0x277CC9300];
  *&v199 = result;
  *(&v199 + 1) = v54;
  v55 = result;
  v56 = v54;
  v57 = __swift_project_boxed_opaque_existential_1(&v199, v46);
  v58 = *v57;
  v59 = v57[1];
  outlined copy of Data._Representation(v51, v52);
  outlined copy of Data?(v55, v56);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v58, v59);
  outlined consume of Data?(v55, v56);
  outlined consume of Data._Representation(v51, v52);
  __swift_destroy_boxed_opaque_existential_1(&v199);
  v60 = v197;
  TetraECDHKey.publicKey.getter();
  v61 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v63 = v62;
  result = (*(v39 + 8))(v42, v191);
  if (v63 >> 60 == 15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v204 = v60;
  *(&v200 + 1) = MEMORY[0x277CC9318];
  v201 = MEMORY[0x277CC9300];
  *&v199 = v61;
  *(&v199 + 1) = v63;
  v64 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
  v65 = *v64;
  v66 = v64[1];
  outlined copy of Data._Representation(v60, *(&v60 + 1));
  outlined copy of Data?(v61, v63);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v65, v66);
  outlined consume of Data?(v61, v63);
  outlined consume of Data._Representation(v60, *(&v60 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v199);
  v67 = v196;
  TetraECDHKey.sharedSecretFromKeyAgreement(with:)(v205, v196);
  if (v50)
  {
    return outlined consume of Data._Representation(v204, *(&v204 + 1));
  }

  v68 = v183;
  v69 = v181;
  outlined init with copy of TetraSessionStates?(v183, v181, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v70 = v188;
  v71 = v188 + 48;
  v72 = *(v188 + 48);
  v73 = v189;
  v74 = v72(v69, 1, v189);
  v205 = v71;
  v193 = v72;
  if (v74 == 1)
  {
    outlined destroy of TetraSessionStates?(v69, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    v75 = I2OSP(value:outputByteCount:)(0, 4);
    v77 = v76;
    v78 = MEMORY[0x277CC9318];
    *(&v200 + 1) = MEMORY[0x277CC9318];
    v79 = MEMORY[0x277CC9300];
    v201 = MEMORY[0x277CC9300];
    *&v199 = v75;
    *(&v199 + 1) = v76;
    v80 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
    v81 = *v80;
    v82 = v80[1];
    outlined copy of Data._Representation(v75, v77);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v81, v82);
    outlined consume of Data._Representation(v75, v77);
    __swift_destroy_boxed_opaque_existential_1(&v199);
    v83 = I2OSP(value:outputByteCount:)(0, 4);
    v85 = v84;
    *(&v200 + 1) = v78;
    v201 = v79;
    *&v199 = v83;
    *(&v199 + 1) = v84;
    v86 = v78;
    v87 = v189;
    v88 = __swift_project_boxed_opaque_existential_1(&v199, v86);
    v89 = *v88;
    v90 = v88[1];
    outlined copy of Data._Representation(v83, v85);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v89, v90);
    outlined consume of Data._Representation(v83, v85);
    __swift_destroy_boxed_opaque_existential_1(&v199);
LABEL_28:
    v134 = v178;
    (*(v178 + 16))(v185, v67, v195);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    SymmetricKey.init<A>(data:)();
    v135 = v172;
    outlined init with copy of TetraSessionStates?(v68, v172, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    v136 = v193(v135, 1, v87);
    v137 = v190;
    if (v136 == 1)
    {
      outlined destroy of TetraSessionStates?(v135, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
      v138 = 1;
      v139 = v187;
      v140 = v186;
    }

    else
    {
      v140 = v186;
      KEM.EncapsulationResult.sharedSecret.getter();
      (*(v188 + 8))(v135, v87);
      v138 = 0;
      v139 = v187;
    }

    v141 = v195;
    (*(v134 + 56))(v140, v138, 1, v195);
    v142 = v204;
    v189 = v142 >> 64;
    v191 = v142;
    type metadata accessor for NSData();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v192 = 0;
    v143 = v199;
    v144 = type metadata accessor for SHA384();
    v145 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData);
    v205 = v144;
    v193 = v145;
    static HKDF.extract<A>(inputKeyMaterial:salt:)();

    (*(v184 + 16))(v175, v139, v137);
    v146 = lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
    v147 = v174;
    v188 = v146;
    SymmetricKey.init<A>(data:)();
    v148 = v176;
    outlined init with copy of TetraSessionStates?(v140, v176, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if ((*(v134 + 48))(v148, 1, v141) == 1)
    {
      outlined destroy of TetraSessionStates?(v148, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v149 = type metadata accessor for __DataStorage();
      v150 = *(v149 + 48);
      v151 = *(v149 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      v152.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v137 = v190;
    }

    else
    {
      v153 = v192;
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v192 = v153;
      v152.super.isa = v199;
      (*(v134 + 8))(v148, v141);
    }

    *&v199 = v152;
    v154 = v177;
    static HKDF.extract<A>(inputKeyMaterial:salt:)();
    v183 = *(v134 + 8);
    v183(v147, v141);
    v155 = v184;
    v156 = *(v184 + 8);
    v157 = v187;
    v182 = (v184 + 8);
    v181 = v156;
    (v156)(v187, v137);

    (*(v155 + 32))(v157, v154, v137);
    if (one-time initialization token for tetraDHRatchetStepKDFString != -1)
    {
      swift_once();
    }

    v158 = tetraDHRatchetStepKDFString;
    v197 = tetraDHRatchetStepKDFString;
    *(&v200 + 1) = MEMORY[0x277CC9318];
    v201 = MEMORY[0x277CC9300];
    v159 = v191;
    v160 = v189;
    *&v199 = v191;
    *(&v199 + 1) = v189;
    v161 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
    v162 = *v161;
    v163 = v161[1];
    outlined copy of Data._Representation(v158, *(&v158 + 1));
    outlined copy of Data._Representation(v159, v160);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v162, v163);
    __swift_destroy_boxed_opaque_existential_1(&v199);
    v199 = v197;
    lazy protocol witness table accessor for type Data and conformance Data();
    v164 = v185;
    v165 = v190;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v199, *(&v199 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v197 = v199;
    v198 = v200;
    lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    SymmetricKey.init<A>(data:)();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v197 = v199;
    v198 = v200;
    SymmetricKey.init<A>(data:)();
    v166 = v164;
    v167 = v195;
    v168 = v183;
    v183(v166, v195);
    (v181)(v157, v165);
    outlined destroy of TetraSessionStates?(v186, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v168(v194, v167);
    v168(v196, v167);
    return outlined consume of Data._Representation(v204, *(&v204 + 1));
  }

  (*(v70 + 32))(v182, v69, v73);
  v91 = KEM.EncapsulationResult.encapsulated.getter();
  v93 = v92 >> 62;
  if ((v92 >> 62) <= 1)
  {
    if (!v93)
    {
      v94 = BYTE6(v92);
      outlined consume of Data._Representation(v91, v92);
      v91 = v94;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v93 != 2)
  {
    outlined consume of Data._Representation(v91, v92);
    v91 = 0;
    goto LABEL_16;
  }

  v96 = *(v91 + 16);
  v95 = *(v91 + 24);
  outlined consume of Data._Representation(v91, v92);
  v91 = v95 - v96;
  if (__OFSUB__(v95, v96))
  {
    __break(1u);
LABEL_13:
    v97 = HIDWORD(v91);
    v98 = v91;
    result = outlined consume of Data._Representation(v91, v92);
    if (__OFSUB__(v97, v98))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v91 = v97 - v98;
  }

LABEL_16:
  v99 = I2OSP(value:outputByteCount:)(v91, 4);
  v101 = v100;
  v102 = KEM.EncapsulationResult.encapsulated.getter();
  v104 = v103;
  *&v197 = v99;
  *(&v197 + 1) = v101;
  v105 = MEMORY[0x277CC9318];
  *(&v200 + 1) = MEMORY[0x277CC9318];
  v106 = MEMORY[0x277CC9300];
  v201 = MEMORY[0x277CC9300];
  *&v199 = v102;
  *(&v199 + 1) = v103;
  v107 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
  v108 = *v107;
  v109 = v107[1];
  outlined copy of Data._Representation(v99, v101);
  outlined copy of Data._Representation(v102, v104);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v108, v109);
  outlined consume of Data._Representation(v102, v104);
  outlined consume of Data._Representation(v99, v101);
  __swift_destroy_boxed_opaque_existential_1(&v199);
  v110 = v197;
  *(&v200 + 1) = v105;
  v201 = v106;
  v199 = v197;
  v111 = __swift_project_boxed_opaque_existential_1(&v199, v105);
  v112 = *v111;
  v113 = v111[1];
  outlined copy of Data._Representation(v110, *(&v110 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v112, v113);
  outlined consume of Data._Representation(v110, *(&v110 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v199);
  v114 = v170;
  outlined init with copy of TetraSessionStates?(v171, v170, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v115 = type metadata accessor for Kyber768.PublicKey();
  v116 = *(v115 - 8);
  result = (*(v116 + 48))(v114, 1, v115);
  if (result != 1)
  {
    v117 = Kyber768.PublicKey.dataRepresentation.getter();
    v119 = v118;
    result = (*(v116 + 8))(v114, v115);
    v120 = v119 >> 62;
    if ((v119 >> 62) > 1)
    {
      if (v120 != 2)
      {
        result = 0;
        goto LABEL_27;
      }

      v122 = *(v117 + 16);
      v121 = *(v117 + 24);
      result = v121 - v122;
      if (!__OFSUB__(v121, v122))
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v120)
    {
      result = BYTE6(v119);
LABEL_27:
      v123 = I2OSP(value:outputByteCount:)(result, 4);
      v125 = v124;
      *&v197 = v123;
      *(&v197 + 1) = v124;
      *(&v200 + 1) = v105;
      v201 = v106;
      *&v199 = v117;
      *(&v199 + 1) = v119;
      v126 = __swift_project_boxed_opaque_existential_1(&v199, v105);
      v127 = *v126;
      v128 = v126[1];
      outlined copy of Data._Representation(v123, v125);
      outlined copy of Data._Representation(v117, v119);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v127, v128);
      outlined consume of Data._Representation(v123, v125);
      __swift_destroy_boxed_opaque_existential_1(&v199);
      v130 = *(&v197 + 1);
      v129 = v197;
      *(&v200 + 1) = v105;
      v201 = v106;
      v199 = v197;
      v131 = __swift_project_boxed_opaque_existential_1(&v199, v105);
      v132 = *v131;
      v133 = v131[1];
      outlined copy of Data._Representation(v129, v130);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v132, v133);
      outlined consume of Data._Representation(v129, v130);
      outlined consume of Data._Representation(v117, v119);
      v87 = v189;
      (*(v188 + 8))(v182, v189);
      __swift_destroy_boxed_opaque_existential_1(&v199);
      v67 = v196;
      v68 = v183;
      goto LABEL_28;
    }

    if (!__OFSUB__(HIDWORD(v117), v117))
    {
      result = HIDWORD(v117) - v117;
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t static TetraRatchetState.deriveRootAndChainKeyAsReceiver(rootKey:theirPublicKey:encap:ourReceivingKeys:conversationDST:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v308 = a7;
  v292 = a6;
  v290 = a5;
  v300 = a4;
  v274 = a2;
  v273 = a1;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v281 = *(v287 - 8);
  v11 = *(v281 + 64);
  v12 = MEMORY[0x28223BE20](v287);
  v269 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v270 = &v253 - v15;
  MEMORY[0x28223BE20](v14);
  v282 = &v253 - v16;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v17 = *(*(v284 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v284);
  v272 = &v253 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v271 = &v253 - v21;
  MEMORY[0x28223BE20](v20);
  v283 = &v253 - v22;
  v260 = type metadata accessor for Kyber1024.PublicKey();
  v259 = *(v260 - 8);
  v23 = *(v259 + 64);
  MEMORY[0x28223BE20](v260);
  v258 = &v253 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for TetraKEM1024Key(0);
  v285 = *(v286 - 8);
  v25 = *(v285 + 64);
  MEMORY[0x28223BE20](v286);
  v262 = &v253 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for Kyber768.PublicKey();
  v256 = *(v257 - 8);
  v27 = *(v256 + 64);
  MEMORY[0x28223BE20](v257);
  v255 = &v253 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for TetraKEM768Key(0);
  v289 = *(v291 - 8);
  v29 = *(v289 + 8);
  MEMORY[0x28223BE20](v291);
  v261 = &v253 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v265 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v254 = &v253 - v36;
  MEMORY[0x28223BE20](v35);
  v264 = &v253 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v277 = &v253 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v263 = &v253 - v43;
  MEMORY[0x28223BE20](v42);
  v276 = &v253 - v44;
  v45 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v294 = *(v45 - 8);
  v295 = v45;
  v46 = *(v294 + 64);
  MEMORY[0x28223BE20](v45);
  v293 = &v253 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v268 = &v253 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v275 = &v253 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v288 = &v253 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v253 - v56;
  v58 = type metadata accessor for SymmetricKey();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x28223BE20](v58);
  v278 = &v253 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v279 = &v253 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v280 = &v253 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v299 = &v253 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v71 = &v253 - v70;
  MEMORY[0x28223BE20](v69);
  v73 = &v253 - v72;
  v306 = a8;
  v307 = a9;
  v75 = v74;
  outlined init with copy of TetraSessionStates?(a3, v57, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v76 = *(v59 + 48);
  v267 = v59 + 48;
  v266 = v76;
  v77 = v76(v57, 1, v75);
  v78 = MEMORY[0x277CC9318];
  v79 = MEMORY[0x277CC9300];
  v298 = v59;
  if (v77 == 1)
  {
    outlined copy of Data._Representation(a8, a9);
    outlined destroy of TetraSessionStates?(v57, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v80 = type metadata accessor for __DataStorage();
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    swift_allocObject();
    v83 = __DataStorage.init(length:)();
    *&v303 = 0x2000000000;
    *(&v303 + 1) = v83 | 0x4000000000000000;
    SymmetricKey.init<A>(data:)();
    v84 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x6174536172746554, 0xEB000000002D7472);
    v86 = v85;
    *(&v304 + 1) = v78;
    v305 = v79;
    *&v303 = v84;
    *(&v303 + 1) = v85;
    v87 = __swift_project_boxed_opaque_existential_1(&v303, v78);
    v88 = *v87;
    v89 = v87[1];
    outlined copy of Data._Representation(v84, v86);
    v90 = v296;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v88, v89);
    v91 = v90;
    outlined consume of Data._Representation(v84, v86);
  }

  else
  {
    (*(v59 + 32))(v71, v57, v75);
    (*(v59 + 16))(v73, v71, v75);
    outlined copy of Data._Representation(a8, a9);
    v92 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x7461526172746554, 0xED00002D74656863);
    v94 = v93;
    *(&v304 + 1) = v78;
    v305 = v79;
    *&v303 = v92;
    *(&v303 + 1) = v93;
    v95 = __swift_project_boxed_opaque_existential_1(&v303, v78);
    v96 = *v95;
    v97 = v95[1];
    outlined copy of Data._Representation(v92, v94);
    v98 = v296;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v96, v97);
    v91 = v98;
    outlined consume of Data._Representation(v92, v94);
    (*(v59 + 8))(v71, v75);
  }

  __swift_destroy_boxed_opaque_existential_1(&v303);
  v99 = v293;
  TetraECDHKey.publicKey.getter();
  v100 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v102 = v101;
  (*(v294 + 8))(v99, v295);
  if (v102 >> 60 == 15)
  {
    goto LABEL_61;
  }

  v296 = v73;
  v297 = v75;
  v103 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v104 >> 60 == 15)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *&v301 = v100;
  *(&v301 + 1) = v102;
  v105 = MEMORY[0x277CC9318];
  *(&v304 + 1) = MEMORY[0x277CC9318];
  v106 = MEMORY[0x277CC9300];
  v305 = MEMORY[0x277CC9300];
  *&v303 = v103;
  *(&v303 + 1) = v104;
  v107 = v103;
  v108 = v104;
  v109 = __swift_project_boxed_opaque_existential_1(&v303, MEMORY[0x277CC9318]);
  v110 = *v109;
  v111 = v109[1];
  outlined copy of Data?(v100, v102);
  outlined copy of Data?(v107, v108);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v110, v111);
  outlined consume of Data?(v107, v108);
  outlined consume of Data?(v100, v102);
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v112 = v301;
  *(&v304 + 1) = v105;
  v305 = v106;
  v303 = v301;
  v113 = __swift_project_boxed_opaque_existential_1(&v303, v105);
  v114 = *v113;
  v115 = v113[1];
  outlined copy of Data._Representation(v112, *(&v112 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v114, v115);
  outlined consume of Data._Representation(v112, *(&v112 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v116 = v308;
  TetraECDHKey.sharedSecretFromKeyAgreement(with:)(v300, v299);
  if (v91)
  {
    (*(v298 + 8))(v296, v297);
    return outlined consume of Data._Representation(v306, v307);
  }

  v118 = type metadata accessor for TetraOutgoingKeyContent(0);
  v119 = v118;
  v120 = *(v118 + 20);
  v121 = (v289 + 48);
  v122 = v292;
  if (v292 >> 60 == 15)
  {
    v123 = v118;
    v124 = v277;
    outlined init with copy of TetraSessionStates?(v116 + v120, v277, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v125 = (*v121)(v124, 1, v291);
    outlined destroy of TetraSessionStates?(v124, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    if (v125 != 1 || (v126 = v265, outlined init with copy of TetraSessionStates?(v116 + *(v123 + 24), v265, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR), v127 = (*(v285 + 48))(v126, 1, v286), outlined destroy of TetraSessionStates?(v126, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR), v127 != 1))
    {
      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v150 = 1;
      swift_willThrow();
      v151 = *(v298 + 8);
      v152 = v297;
      v151(v299, v297);
      v151(v296, v152);
      return outlined consume of Data._Representation(v306, v307);
    }

    v128 = I2OSP(value:outputByteCount:)(0, 4);
    v130 = v129;
    v131 = MEMORY[0x277CC9318];
    *(&v304 + 1) = MEMORY[0x277CC9318];
    v132 = MEMORY[0x277CC9300];
    v305 = MEMORY[0x277CC9300];
    *&v303 = v128;
    *(&v303 + 1) = v129;
    v133 = __swift_project_boxed_opaque_existential_1(&v303, MEMORY[0x277CC9318]);
    v134 = *v133;
    v135 = v133[1];
    outlined copy of Data._Representation(v128, v130);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v134, v135);
    outlined consume of Data._Representation(v128, v130);
    __swift_destroy_boxed_opaque_existential_1(&v303);
    v136 = I2OSP(value:outputByteCount:)(0, 4);
    v138 = v137;
    *(&v304 + 1) = v131;
    v305 = v132;
    *&v303 = v136;
    *(&v303 + 1) = v137;
    v139 = __swift_project_boxed_opaque_existential_1(&v303, v131);
    v140 = *v139;
    v141 = v139[1];
    outlined copy of Data._Representation(v136, v138);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v140, v141);
    outlined consume of Data._Representation(v136, v138);
    __swift_destroy_boxed_opaque_existential_1(&v303);
    v143 = v297;
    v142 = v298;
    (*(v298 + 56))(v288, 1, 1, v297);
    goto LABEL_52;
  }

  v300 = *(v118 + 20);
  v144 = v276;
  outlined init with copy of TetraSessionStates?(v116 + v120, v276, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v295 = *v121;
  v145 = v295(v144, 1, v291);
  outlined copy of Data._Representation(v290, v122);
  outlined destroy of TetraSessionStates?(v144, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  v146 = v298;
  if (v145 == 1)
  {
    v147 = v264;
    outlined init with copy of TetraSessionStates?(v116 + *(v119 + 24), v264, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    v148 = (*(v285 + 48))(v147, 1, v286);
    outlined destroy of TetraSessionStates?(v147, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    if (v148 == 1)
    {
      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v149 = 0;
      swift_willThrow();
      outlined consume of Data?(v290, v122);
      v154 = *(v146 + 8);
      v155 = v297;
      v154(v299, v297);
      v154(v296, v155);
      return outlined consume of Data._Representation(v306, v307);
    }
  }

  v91 = v275;
  v153 = v290;
  TetraOutgoingKeyContent.decapsulate(_:)(v290, v122, v275);
  (*(v146 + 56))(v91, 0, 1, v297);
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v91, v288, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v156 = v122 >> 62;
  if ((v122 >> 62) <= 1)
  {
    if (!v156)
    {
      v157 = BYTE6(v122);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v156 != 2)
  {
    v157 = 0;
    goto LABEL_27;
  }

  v159 = *(v153 + 16);
  v158 = *(v153 + 24);
  v157 = v158 - v159;
  if (__OFSUB__(v158, v159))
  {
    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(v153), v153))
    {
      __break(1u);
      goto LABEL_59;
    }

    v157 = HIDWORD(v153) - v153;
  }

LABEL_27:
  v160 = I2OSP(value:outputByteCount:)(v157, 4);
  v162 = v161;
  *&v301 = v160;
  *(&v301 + 1) = v161;
  v163 = MEMORY[0x277CC9318];
  *(&v304 + 1) = MEMORY[0x277CC9318];
  v305 = MEMORY[0x277CC9300];
  v164 = v292;
  *&v303 = v153;
  *(&v303 + 1) = v292;
  v165 = __swift_project_boxed_opaque_existential_1(&v303, MEMORY[0x277CC9318]);
  v166 = v153;
  v167 = *v165;
  v168 = v165[1];
  outlined copy of Data?(v166, v164);
  outlined copy of Data._Representation(v160, v162);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v167, v168);
  outlined consume of Data._Representation(v160, v162);
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v169 = v301;
  *(&v304 + 1) = v163;
  v305 = MEMORY[0x277CC9300];
  v303 = v301;
  v170 = __swift_project_boxed_opaque_existential_1(&v303, v163);
  v171 = *v170;
  v172 = v170[1];
  outlined copy of Data._Representation(v169, *(&v169 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v171, v172);
  outlined consume of Data._Representation(v169, *(&v169 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v173 = v308;
  v174 = v263;
  outlined init with copy of TetraSessionStates?(v308 + v300, v263, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
  if (v295(v174, 1, v291) == 1)
  {
    outlined destroy of TetraSessionStates?(v174, &_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    v91 = v254;
    outlined init with copy of TetraSessionStates?(v173 + *(v119 + 24), v254, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
    if ((*(v285 + 48))(v91, 1, v286) == 1)
    {
LABEL_63:
      result = outlined destroy of TetraSessionStates?(v91, &_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      __break(1u);
      return result;
    }

    outlined init with take of TetraOutgoingSymmetricRatchet(v91, v262, type metadata accessor for TetraKEM1024Key);
    v175 = v258;
    TetraKEM1024Key.publicKey.getter(v258);
    v176 = Kyber1024.PublicKey.dataRepresentation.getter();
    v91 = v177;
    (*(v259 + 8))(v175, v260);
    v178 = v91 >> 62;
    if ((v91 >> 62) <= 1)
    {
      if (!v178)
      {
        v179 = BYTE6(v91);
LABEL_50:
        v201 = I2OSP(value:outputByteCount:)(v179, 4);
        v203 = v202;
        *&v301 = v201;
        *(&v301 + 1) = v202;
        v204 = MEMORY[0x277CC9318];
        *(&v304 + 1) = MEMORY[0x277CC9318];
        v205 = MEMORY[0x277CC9300];
        v305 = MEMORY[0x277CC9300];
        *&v303 = v176;
        *(&v303 + 1) = v91;
        v206 = __swift_project_boxed_opaque_existential_1(&v303, MEMORY[0x277CC9318]);
        v207 = *v206;
        v208 = v206[1];
        outlined copy of Data._Representation(v201, v203);
        outlined copy of Data._Representation(v176, v91);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v207, v208);
        outlined consume of Data._Representation(v201, v203);
        __swift_destroy_boxed_opaque_existential_1(&v303);
        v209 = v301;
        *(&v304 + 1) = v204;
        v305 = v205;
        v303 = v301;
        v210 = __swift_project_boxed_opaque_existential_1(&v303, v204);
        v211 = *v210;
        v212 = v210[1];
        outlined copy of Data._Representation(v209, *(&v209 + 1));
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v211, v212);
        outlined consume of Data._Representation(v209, *(&v209 + 1));
        outlined consume of Data._Representation(v176, v91);
        outlined consume of Data?(v290, v292);
        v199 = type metadata accessor for TetraKEM1024Key;
        v200 = &v294;
        goto LABEL_51;
      }

      if (!__OFSUB__(HIDWORD(v176), v176))
      {
        v179 = HIDWORD(v176) - v176;
        goto LABEL_50;
      }

      goto LABEL_60;
    }

LABEL_39:
    if (v178 != 2)
    {
      v179 = 0;
      goto LABEL_50;
    }

    v186 = *(v176 + 16);
    v185 = *(v176 + 24);
    v179 = v185 - v186;
    if (!__OFSUB__(v185, v186))
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_43:
    if (!__OFSUB__(HIDWORD(v176), v176))
    {
      v183 = HIDWORD(v176) - v176;
      goto LABEL_46;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  outlined init with take of TetraOutgoingSymmetricRatchet(v174, v261, type metadata accessor for TetraKEM768Key);
  v180 = v255;
  TetraKEM768Key.publicKey.getter(v255);
  v176 = Kyber768.PublicKey.dataRepresentation.getter();
  v91 = v181;
  (*(v256 + 8))(v180, v257);
  v182 = v91 >> 62;
  if ((v91 >> 62) > 1)
  {
    if (v182 != 2)
    {
      v183 = 0;
      goto LABEL_46;
    }

    v184 = *(v176 + 16);
    v178 = *(v176 + 24);
    v183 = v178 - v184;
    if (!__OFSUB__(v178, v184))
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v182)
  {
    goto LABEL_43;
  }

  v183 = BYTE6(v91);
LABEL_46:
  v187 = I2OSP(value:outputByteCount:)(v183, 4);
  v189 = v188;
  *&v301 = v187;
  *(&v301 + 1) = v188;
  v190 = MEMORY[0x277CC9318];
  *(&v304 + 1) = MEMORY[0x277CC9318];
  v191 = MEMORY[0x277CC9300];
  v305 = MEMORY[0x277CC9300];
  *&v303 = v176;
  *(&v303 + 1) = v91;
  v192 = __swift_project_boxed_opaque_existential_1(&v303, MEMORY[0x277CC9318]);
  v193 = *v192;
  v194 = v192[1];
  outlined copy of Data._Representation(v187, v189);
  outlined copy of Data._Representation(v176, v91);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v193, v194);
  outlined consume of Data._Representation(v187, v189);
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v195 = v301;
  *(&v304 + 1) = v190;
  v305 = v191;
  v303 = v301;
  v196 = __swift_project_boxed_opaque_existential_1(&v303, v190);
  v197 = *v196;
  v198 = v196[1];
  outlined copy of Data._Representation(v195, *(&v195 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v197, v198);
  outlined consume of Data._Representation(v195, *(&v195 + 1));
  outlined consume of Data._Representation(v176, v91);
  outlined consume of Data?(v290, v292);
  v199 = type metadata accessor for TetraKEM768Key;
  v200 = &v293;
LABEL_51:
  outlined destroy of TetraOutgoingSymmetricRatchet(*(v200 - 32), v199);
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v143 = v297;
  v142 = v298;
LABEL_52:
  (*(v142 + 16))(v279, v299, v143);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
  SymmetricKey.init<A>(data:)();
  v300 = v306;
  v295 = v307;
  type metadata accessor for NSData();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v213 = v303;
  v214 = type metadata accessor for SHA384();
  v215 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
  v216 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData);
  v217 = v282;
  v308 = v215;
  v293 = v216;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();

  (*(v281 + 16))(v269, v217, v287);
  v292 = lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  SymmetricKey.init<A>(data:)();
  v218 = v268;
  outlined init with copy of TetraSessionStates?(v288, v268, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v219 = v266(v218, 1, v143);
  v220 = v142;
  v221 = v283;
  if (v219 == 1)
  {
    v294 = 0;
    v222 = v214;
    outlined destroy of TetraSessionStates?(v218, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v223 = type metadata accessor for __DataStorage();
    v224 = *(v223 + 48);
    v225 = *(v223 + 52);
    swift_allocObject();
    __DataStorage.init(length:)();
    v226.super.isa = Data._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v222 = v214;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v294 = 0;
    v226.super.isa = v303;
    (*(v220 + 8))(v218, v143);
  }

  v227 = MEMORY[0x277CC9318];
  v291 = &v221[*(v284 + 48)];
  *&v303 = v226;
  v228 = v270;
  v229 = v278;
  v286 = v222;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();
  v293 = *(v298 + 8);
  (v293)(v229, v297);
  v230 = v281;
  v231 = *(v281 + 8);
  v232 = v282;
  v233 = v287;
  v290 = v281 + 8;
  v289 = v231;
  (v231)(v282, v287);

  v234 = v232;
  (*(v230 + 32))(v232, v228, v233);
  if (one-time initialization token for tetraDHRatchetStepKDFString != -1)
  {
    swift_once();
  }

  v235 = tetraDHRatchetStepKDFString;
  v301 = tetraDHRatchetStepKDFString;
  *(&v304 + 1) = v227;
  v305 = MEMORY[0x277CC9300];
  v236 = v300;
  v237 = v295;
  *&v303 = v300;
  *(&v303 + 1) = v295;
  v238 = __swift_project_boxed_opaque_existential_1(&v303, v227);
  v240 = *v238;
  v239 = v238[1];
  outlined copy of Data._Representation(v235, *(&v235 + 1));
  outlined copy of Data._Representation(v236, v237);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v240, v239);
  __swift_destroy_boxed_opaque_existential_1(&v303);
  v303 = v301;
  lazy protocol witness table accessor for type Data and conformance Data();
  v241 = v279;
  v242 = v287;
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data?(v303, *(&v303 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v301 = v303;
  v302 = v304;
  lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  v243 = v283;
  SymmetricKey.init<A>(data:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v301 = v303;
  v302 = v304;
  SymmetricKey.init<A>(data:)();
  v244 = v241;
  v245 = v297;
  v246 = v293;
  (v293)(v244, v297);
  (v289)(v234, v242);
  v246(v280, v245);
  outlined destroy of TetraSessionStates?(v288, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v246(v299, v245);
  v246(v296, v245);
  outlined consume of Data._Representation(v306, v307);
  v247 = v271;
  outlined init with copy of TetraSessionStates?(v243, v271, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v248 = v284;
  v308 = *(v284 + 48);
  v249 = v245;
  v250 = *(v298 + 32);
  v250(v273, v247, v249);
  v251 = v243;
  v252 = v272;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v251, v272, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v250(v274, v252 + *(v248 + 48), v249);
  v246(v252, v249);
  return (v246)(v247 + v308, v249);
}

uint64_t closure #1 in static TetraRatchetState.deriveRootAndChainKey(rootKey:ecdhSS:kemSS:dst:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(32, a1, a2);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraRatchetState.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79654B746F6F72;
  v3 = 0x676E696F6774756FLL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696D6F636E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraRatchetState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TetraRatchetState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraRatchetState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraRatchetState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraRatchetState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  type metadata accessor for SymmetricKey();
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for TetraRatchetState(0);
    v17 = *(v3 + v11[5]);
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMd, &_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMR);
    lazy protocol witness table accessor for type [ReceivingKeyTetraRatchet] and conformance <A> [A](&lazy protocol witness table cache variable for type [ReceivingKeyTetraRatchet] and conformance <A> [A], &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet and conformance ReceivingKeyTetraRatchet);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[6];
    v16[14] = 2;
    type metadata accessor for TetraOutgoingSymmetricRatchet(0);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet and conformance TetraOutgoingSymmetricRatchet, type metadata accessor for TetraOutgoingSymmetricRatchet);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + v11[7]);
    v16[13] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v11[8];
    v16[12] = 4;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TetraRatchetState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - v5;
  v6 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v33 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMd, _ss22KeyedDecodingContainerVy17MessageProtection17TetraRatchetStateV10CodingKeys33_24EC99FEFB5CB9AC2242B2550E093FA2LLOGMR);
  v36 = *(v38 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v15 = &v33 - v14;
  v16 = type metadata accessor for TetraRatchetState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SymmetricKey();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v42 = v16;
  v21 = *(v16 + 32);
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v41 = v21;
  v23(&v19[v21], 1, 1, v22);
  v24 = a1[3];
  v25 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys();
  v39 = v15;
  v26 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    outlined destroy of TetraSessionStates?(v19, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    return outlined destroy of TetraSessionStates?(&v19[v41], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v33 = v22;
    v40 = v6;
    v27 = v36;
    v49 = 0;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    v28 = v37;
    v29 = v38;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of P256.KeyAgreement.PublicKey?(v28, v19, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMd, &_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMR);
    v48 = 1;
    lazy protocol witness table accessor for type [ReceivingKeyTetraRatchet] and conformance <A> [A](&lazy protocol witness table cache variable for type [ReceivingKeyTetraRatchet] and conformance <A> [A], &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet and conformance ReceivingKeyTetraRatchet);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v42;
    *&v19[*(v42 + 20)] = v44;
    v47 = 2;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet and conformance TetraOutgoingSymmetricRatchet, type metadata accessor for TetraOutgoingSymmetricRatchet);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of TetraOutgoingSymmetricRatchet(v9, &v19[*(v30 + 24)], type metadata accessor for TetraOutgoingSymmetricRatchet);
    v46 = 3;
    *&v19[*(v30 + 28)] = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = 4;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v31 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v27 + 8))(v39, v29);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v31, &v19[v41], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of TetraRatchetState(v19, v34, type metadata accessor for TetraRatchetState);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return outlined destroy of TetraOutgoingSymmetricRatchet(v19, type metadata accessor for TetraRatchetState);
  }
}

unint64_t lazy protocol witness table accessor for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetState.CodingKeys and conformance TetraRatchetState.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [ReceivingKeyTetraRatchet] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMd, &_sSay17MessageProtection24ReceivingKeyTetraRatchetCGMR);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(a2, type metadata accessor for ReceivingKeyTetraRatchet);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of TetraOutgoingSymmetricRatchet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraMessageTypes and conformance TetraMessageTypes()
{
  result = lazy protocol witness table cache variable for type TetraMessageTypes and conformance TetraMessageTypes;
  if (!lazy protocol witness table cache variable for type TetraMessageTypes and conformance TetraMessageTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraMessageTypes and conformance TetraMessageTypes);
  }

  return result;
}

void type metadata completion function for ReceivingKeyTetraRatchet()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for Kyber768.PublicKey?, MEMORY[0x277CC55D0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for SymmetricRatchet();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for TetraRatchetState()
{
  type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for SymmetricKey?, MEMORY[0x277CC5330], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for [ReceivingKeyTetraRatchet], type metadata accessor for ReceivingKeyTetraRatchet, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TetraOutgoingSymmetricRatchet(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Kyber768.PublicKey?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for TetraOutgoingKeyContent()
{
  type metadata accessor for TetraECDHKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for TetraKEM768Key?, type metadata accessor for TetraKEM768Key, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Kyber768.PublicKey?(319, &lazy cache variable for type metadata for TetraKEM1024Key?, type metadata accessor for TetraKEM1024Key, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Data?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TetraRatchetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraRatchetState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}