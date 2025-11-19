id sub_1C0D69EB0(int a1)
{
  if (!a1)
  {
    sub_1C0D01E40();
    swift_allocError();
    *(v7 + 4) = 0;
    v8 = 1;
    *(v7 + 8) = 1;
    *(v7 + 12) = 0;
    *(v7 + 16) = 256;
    *(v7 + 64) = 0xD000000000000022;
    *(v7 + 72) = 0x80000001C0D802F0;
    v9 = 360;
    goto LABEL_5;
  }

  v2 = *v1;
  v4 = *(*v1 + 152);
  v3 = *(*v1 + 160);
  share = ccss_shamir_share_generator_generate_share();
  if (share)
  {
    v6 = share;
    sub_1C0D01E40();
    swift_allocError();
    *(v7 + 12) = 0;
    *(v7 + 16) = 256;
    *(v7 + 4) = v6;
    *(v7 + 8) = 0;
    *(v7 + 64) = 0xD000000000000041;
    *(v7 + 72) = 0x80000001C0D80350;
    v8 = 3;
    v9 = 364;
LABEL_5:
    *v7 = v8;
    *(v7 + 24) = v9;
    *(v7 + 32) = 0xD000000000000029;
    *(v7 + 40) = 0x80000001C0D81C40;
    *(v7 + 48) = 0xD00000000000006BLL;
    *(v7 + 56) = 0x80000001C0D81620;
    return swift_willThrow();
  }

  return [objc_allocWithZone(MEMORY[0x1E6999658]) initWithParams:*(v2 + 144) share:*(v2 + 152)];
}

void CKSecretSharing.HybridGenerator.generateShare(shareIndex:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1C0D7877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v15 = *(*v5 + 64);
  if (v15 < 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1 < 1 || v15 < a1)
  {
    goto LABEL_10;
  }

  if (HIDWORD(a1))
  {
    goto LABEL_27;
  }

  v60 = v11;
  v16 = sub_1C0D69EB0(a1);
  if (!v3)
  {
    v17 = *(v14 + 17);
    if (v17 != 1)
    {
      v18 = 0;
LABEL_20:
      v30 = *(v14 + 16);
      v59 = v18;
      if (v30 == 1 && (v31 = *(v14 + 40), v31 >> 60 != 15))
      {
        v32 = v16;
        v57 = *(v14 + 32);
        v58 = v31;
        sub_1C0D134D0(v57, v31);
        v16 = v32;
      }

      else
      {
        v57 = 0;
        v58 = 0xF000000000000000;
      }

      v33 = v16;
      v55 = v16;
      v56 = [v16 x];
      v34 = [v33 y];
      if (v34)
      {
        v35 = v34;
        v54 = v17 ^ 1;
        v36 = sub_1C0D7832C();
        v52 = v37;
        v53 = v36;

        v38 = *(type metadata accessor for CKSecretSharing.HybridGenerator() + 24);
        sub_1C0D787BC();
        v39 = v60;
        v65 = v60;
        v66 = sub_1C0D6F118(&qword_1EBE6E090, MEMORY[0x1E69664E8]);
        v40 = __swift_allocate_boxed_opaque_existential_1(&v63);
        (*(v9 + 16))(v40, v13, v39);
        __swift_project_boxed_opaque_existential_1(&v63, v65);
        sub_1C0D7819C();
        (*(v9 + 8))(v13, v39);
        v41 = v61;
        v42 = v62;
        __swift_destroy_boxed_opaque_existential_1(&v63);
        v43 = sub_1C0D7878C();
        v45 = v44;
        v46 = sub_1C0D7879C();
        v48 = v47;

        *a2 = 1;
        v49 = v52;
        *(a2 + 24) = v53;
        *(a2 + 32) = v49;
        *(a2 + 40) = v41;
        *(a2 + 48) = v42;
        *(a2 + 56) = v43;
        *(a2 + 64) = v45;
        *(a2 + 72) = v46;
        *(a2 + 80) = v48;
        LODWORD(v49) = v59;
        *(a2 + 8) = v56;
        *(a2 + 12) = v49;
        *(a2 + 16) = v54;
        v50 = v58;
        *(a2 + 88) = v57;
        *(a2 + 96) = v50;
        return;
      }

      goto LABEL_29;
    }

    v18 = *(v14 + 24);
    if ((v18 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v18))
      {
        __break(1u);
LABEL_10:
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1C0D78DAC();

        v63 = 0xD00000000000002ALL;
        v64 = 0x80000001C0D818F0;
        v61 = *(v14 + 64);
        v19 = sub_1C0D78F2C();
        MEMORY[0x1C68E3B00](v19);

        v20 = v63;
        v21 = v64;
        sub_1C0D01E40();
        v4 = swift_allocError();
        *(v22 + 4) = 0;
        *(v22 + 8) = 1;
        *(v22 + 12) = 0;
        *(v22 + 16) = 256;
        *(v22 + 64) = v20;
        *(v22 + 72) = v21;
        *v22 = 1;
        *(v22 + 24) = xmmword_1C0D7EDF0;
        *(v22 + 40) = 0x80000001C0D80020;
        *(v22 + 48) = 0xD00000000000006BLL;
        *(v22 + 56) = 0x80000001C0D81620;
        swift_willThrow();
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_11:
  v61 = v4;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
  if (swift_dynamicCast())
  {

    v24 = v69;
    if (v70 == 1)
    {
      if (v69 == 1)
      {
        sub_1C0D01E40();
        swift_allocError();
        *(v25 + 4) = 0;
        *(v25 + 8) = 1;
        *(v25 + 12) = 0;
        *(v25 + 16) = 256;
        *(v25 + 64) = 0xD000000000000049;
        *(v25 + 72) = 0x80000001C0D800D0;
        *v25 = 1;
        *(v25 + 24) = xmmword_1C0D7EE10;
        *(v25 + 40) = 0x80000001C0D80020;
        *(v25 + 48) = 0xD00000000000006BLL;
        *(v25 + 56) = 0x80000001C0D81620;
      }

      else
      {
        sub_1C0CF8DE0();
        swift_allocError();
        *v29 = v24;
        *(v29 + 4) = 1;
      }
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
      v67 = v24;
      v68 = 0;
      sub_1C0D78E9C();
      MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80090);
      v26 = v63;
      v27 = v64;
      sub_1C0D01E40();
      swift_allocError();
      *(v28 + 12) = 0;
      *(v28 + 16) = 256;
      *(v28 + 4) = v24;
      *(v28 + 8) = 0;
      *(v28 + 64) = v26;
      *(v28 + 72) = v27;
      *v28 = 3;
      *(v28 + 24) = xmmword_1C0D7EE00;
      *(v28 + 40) = 0x80000001C0D80020;
      *(v28 + 48) = 0xD00000000000006BLL;
      *(v28 + 56) = 0x80000001C0D81620;
    }

    swift_willThrow();
  }
}

__n128 CKSecretSharing.HybridSecretShare.init(shareNumber:threshold:shamirSecretShare:nonce:Ciphertext:Tag:authenticatedData:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12)
{
  result = a10;
  *a9 = 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 8) = a1;
  *(a9 + 12) = a2;
  *(a9 + 16) = BYTE4(a2) & 1;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  return result;
}

void CKSecretSharing.HybridGenerator.generateShares(_:)(uint64_t a1)
{
  if (*(*v1 + 24) > a1)
  {
    sub_1C0D01E40();
    v4 = swift_allocError();
    *(v3 + 4) = 0;
    *(v3 + 8) = 1;
    *(v3 + 12) = 0;
    *(v3 + 16) = 256;
    *(v3 + 72) = 0xE000000000000000;
    *v3 = 5;
    v5 = xmmword_1C0D7EE30;
LABEL_5:
    *(v3 + 24) = v5;
    *(v3 + 40) = 0x80000001C0D800B0;
    *(v3 + 48) = 0xD00000000000006BLL;
    *(v3 + 56) = 0x80000001C0D81620;
    *(v3 + 64) = 0;
    swift_willThrow();
LABEL_6:
    v21 = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
    if (swift_dynamicCast())
    {

      v7 = v19;
      if (v20 == 1)
      {
        if (v19 == 1)
        {
          sub_1C0D01E40();
          swift_allocError();
          *(v8 + 4) = 0;
          *(v8 + 8) = 1;
          *(v8 + 12) = 0;
          *(v8 + 16) = 256;
          *(v8 + 64) = 0xD000000000000049;
          *(v8 + 72) = 0x80000001C0D800D0;
          *v8 = 1;
          *(v8 + 24) = xmmword_1C0D7EE50;
          *(v8 + 40) = 0x80000001C0D800B0;
          *(v8 + 48) = 0xD00000000000006BLL;
          *(v8 + 56) = 0x80000001C0D81620;
        }

        else
        {
          sub_1C0CF8DE0();
          swift_allocError();
          *v13 = v7;
          *(v13 + 4) = 1;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
        sub_1C0D78DAC();
        MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
        v15 = v7;
        v16 = 0;
        sub_1C0D78E9C();
        MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80090);
        v10 = v17;
        v11 = v18;
        sub_1C0D01E40();
        swift_allocError();
        *(v12 + 12) = 0;
        *(v12 + 16) = 256;
        *(v12 + 4) = v7;
        *(v12 + 8) = 0;
        *(v12 + 64) = v10;
        *(v12 + 72) = v11;
        *v12 = 3;
        *(v12 + 24) = xmmword_1C0D7EE40;
        *(v12 + 40) = 0x80000001C0D800B0;
        *(v12 + 48) = 0xD00000000000006BLL;
        *(v12 + 56) = 0x80000001C0D81620;
      }

      swift_willThrow();
    }

    return;
  }

  if (*(*v1 + 64) < a1)
  {
    sub_1C0D01E40();
    v4 = swift_allocError();
    *(v3 + 4) = 0;
    *(v3 + 8) = 1;
    *(v3 + 12) = 0;
    *(v3 + 16) = 256;
    *(v3 + 72) = 0xE000000000000000;
    *v3 = 6;
    v5 = xmmword_1C0D7EE20;
    goto LABEL_5;
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1EEE9AC00](a1);
  v14[2] = v1;
  sub_1C0D65484(sub_1C0D6ECB4, v14, (v9 << 32) | 1);
  v4 = v2;
  if (v2)
  {
    goto LABEL_6;
  }
}

uint64_t CKSecretSharing.HybridGenerator.serializedData()()
{
  v2 = v0;
  v3 = type metadata accessor for CKSecretSharing.HybridGenerator();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0D6F050(v2, v6, type metadata accessor for CKSecretSharing.HybridGenerator);
  sub_1C0D659DC(v6, v10);
  if (!v1)
  {
    sub_1C0D6F118(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
    v7 = sub_1C0D784EC();
    sub_1C0D03EF4(v10 + 1);
    sub_1C0D6F0B8(v10, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  return v7;
}

uint64_t CKSecretSharing.HybridReconstructor.init(threshold:associatedData:includeADInShares:includeThresholdInShares:cipherSuite:insecureToChangeIncludeMessageEntropy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W6>, uint64_t *a7@<X8>)
{
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  v15 = swift_allocObject();
  result = sub_1C0D660D8(a1, a2, a3, a4, a5, v15, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1C0D6ACB0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v58 = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786AC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = *(*v2 + 24);
  if (a1 >> 62)
  {
    v17 = v9;
    v18 = v10;
    v19 = sub_1C0D78ECC();
    v10 = v18;
    v20 = v19;
    v9 = v17;
    if (v20 < v14)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v14)
  {
LABEL_3:
    sub_1C0D01E40();
    swift_allocError();
    *(v15 + 4) = 0;
    *(v15 + 8) = 1;
    *(v15 + 12) = 0;
    *(v15 + 16) = 256;
    *(v15 + 64) = 0xD00000000000002DLL;
    *(v15 + 72) = 0x80000001C0D81AB0;
    *v15 = 1;
    *(v15 + 24) = xmmword_1C0D7EE70;
    *(v15 + 40) = 0x80000001C0D81C00;
    *(v15 + 48) = 0xD00000000000006BLL;
    *(v15 + 56) = 0x80000001C0D81620;
    result = swift_willThrow();
LABEL_32:
    v45 = *MEMORY[0x1E69E9840];
    return result;
  }

  v48 = v10;
  v49 = v9;
  v21 = *(v13 + 144);
  ccss_sizeof_share_bag();
  v22 = swift_slowAlloc();
  v53 = v22;
  v23 = *(v13 + 144);
  ccss_shamir_share_bag_init();
  v52 = v13;
  v24 = *(v13 + 24);
  if (v24 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_26;
  }

  v50 = v12;
  v51 = v3;
  v47 = a2;
  v25 = 0;
  v4 = 0x1E8128000uLL;
  while (v24 != v25)
  {
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C68E3DC0](v25, a1);
    }

    else
    {
      if (v25 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v26 = *(a1 + 8 * v25 + 32);
    }

    v27 = v26;
    [v26 share];

    v28 = ccss_shamir_share_bag_add_share();
    ++v25;
    if (v28)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
      v37 = v28;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000035, 0x80000001C0D80190);
      v55 = v37;
      v38 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v38);

      v39 = v56;
      v40 = v57;
      sub_1C0D01E40();
      swift_allocError();
      *(v41 + 12) = 0;
      *(v41 + 16) = 256;
      *(v41 + 4) = v37;
      *(v41 + 8) = 0;
      *(v41 + 64) = v39;
      *(v41 + 72) = v40;
      *v41 = 3;
      *(v41 + 24) = xmmword_1C0D7EE60;
      *(v41 + 40) = 0x80000001C0D81C00;
      *(v41 + 48) = 0xD00000000000006BLL;
      *(v41 + 56) = 0x80000001C0D81620;
      swift_willThrow();
      goto LABEL_31;
    }
  }

  v4 = v52;
  v29 = *(v52 + 72);
  if (!v29)
  {
    if (qword_1EBE6CB98 != -1)
    {
      goto LABEL_40;
    }

LABEL_26:
    v36 = off_1EBE6CBA0;

LABEL_27:
    v43 = v50;
    v42 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_beginAccess();
      sub_1C0CF2CF4((v36 + 4), v36 + v36[2] + 32, &v54);
      v44 = v54;

      v36 = v44;
    }

    swift_beginAccess();
    sub_1C0D6B208((v36 + 4), v36 + v36[2] + 32, &v53, v4);

    if (!v42)
    {
      (*(v48 + 32))(v47, v43, v49);
    }

LABEL_31:
    result = MEMORY[0x1C68E4EB0](v22, -1, -1);
    goto LABEL_32;
  }

  if (v29 < 0)
  {
    goto LABEL_36;
  }

  if (HIDWORD(v29))
  {
    goto LABEL_37;
  }

  v30 = (v29 - 1) | ((v29 - 1) >> 1) | (((v29 - 1) | ((v29 - 1) >> 1)) >> 2);
  v31 = v30 | (v30 >> 4) | ((v30 | (v30 >> 4)) >> 8);
  v32 = v31 | HIWORD(v31);
  v33 = __CFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    v35 = 0xFFFFFFFFLL;
  }

  else
  {
    v35 = v34;
  }

  type metadata accessor for SecureBytes.Backing();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = v35;
  if ((_swift_stdlib_malloc_size(v36) - 32) < v29)
  {
    goto LABEL_38;
  }

  LODWORD(v56) = 0;
  result = ccrng();
  if (result)
  {
    if (v56)
    {
      goto LABEL_39;
    }

    ccrng_generate_bridge();
    swift_beginAccess();
    v36[2] = v29;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D6B208(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = *a3;
    v5 = *(a4 + 72);
    v6 = ccss_shamir_share_bag_recover_secret();
    if (v6)
    {
      v7 = v6;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD00000000000003ALL, 0x80000001C0D80230);
      v8 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v8);

      sub_1C0D01E40();
      swift_allocError();
      *(v9 + 12) = 0;
      *(v9 + 16) = 256;
      *(v9 + 4) = v7;
      *(v9 + 8) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0xE000000000000000;
      *v9 = 3;
      *(v9 + 24) = xmmword_1C0D7EE80;
      *(v9 + 40) = 0x80000001C0D81C00;
      *(v9 + 48) = 0xD00000000000006BLL;
      *(v9 + 56) = 0x80000001C0D81620;
      return swift_willThrow();
    }

    else
    {
      return sub_1C0D7868C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKSecretSharing.HybridReconstructor.recoverSecret(shares:)(uint64_t a1)
{
  v313 = *MEMORY[0x1E69E9840];
  v3 = 0xD00000000000006BLL;
  v4 = sub_1C0D785AC();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v293 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v233 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v233 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6DCE8, &unk_1C0D7EF60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v283 = &v233 - v16;
  v287 = sub_1C0D7877C();
  v285 = *(v287 - 8);
  v17 = *(v285 + 64);
  v18 = MEMORY[0x1EEE9AC00](v287);
  v286 = &v233 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v290 = &v233 - v20;
  v21 = sub_1C0D787CC();
  v288 = *(v21 - 8);
  v22 = *(v288 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v284 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v289 = &v233 - v25;
  v26 = sub_1C0D786AC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v40 = &v233 - v39;
  v41 = *v1;
  v42 = v41[7];
  v43 = *(a1 + 16);
  *v296 = v13;
  if (v42 < v43)
  {
    sub_1C0D01E40();
    v45 = swift_allocError();
    *(v44 + 4) = 0;
    *(v44 + 8) = 1;
    *(v44 + 12) = 0;
    *(v44 + 16) = 256;
    *(v44 + 72) = 0xE000000000000000;
    *v44 = 6;
    v46 = xmmword_1C0D7EEE0;
LABEL_3:
    *(v44 + 24) = v46;
    *(v44 + 40) = 0x80000001C0D81970;
    *(v44 + 48) = 0xD00000000000006BLL;
    *(v44 + 56) = 0x80000001C0D81620;
    *(v44 + 64) = 0;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v47 = v41[3];
  if (v43 < v47)
  {
    v3 = 0x80000001C0D81620;
    sub_1C0D01E40();
    v45 = swift_allocError();
    *(v48 + 4) = 0;
    *(v48 + 8) = 1;
    *(v48 + 12) = 0;
    *(v48 + 16) = 256;
    *(v48 + 64) = 0xD00000000000002DLL;
    *(v48 + 72) = 0x80000001C0D81AB0;
    *v48 = 5;
    *(v48 + 24) = xmmword_1C0D7EED0;
    *(v48 + 40) = 0x80000001C0D81970;
    *(v48 + 48) = 0xD00000000000006BLL;
    *(v48 + 56) = 0x80000001C0D81620;
    goto LABEL_6;
  }

  v55 = v41[9];
  v56 = v41[10];
  v57 = v41[11];
  v58 = v41[14];
  v59 = v41[15];
  v60 = v41[16];
  v61 = v41[17];
  v299 = bswap32(v47);
  if (!v43)
  {
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if ((*(v35 + 48) & 1) == 0 && v47 != *(v35 + 44))
  {
    sub_1C0D01E40();
    v45 = swift_allocError();
    *(v44 + 4) = 0;
    *(v44 + 8) = 1;
    *(v44 + 12) = 0;
    *(v44 + 16) = 256;
    *(v44 + 72) = 0xE000000000000000;
    *v44 = 4;
    v46 = xmmword_1C0D7EE90;
    goto LABEL_3;
  }

  v236 = v59;
  v237 = v58;
  v238 = v55;
  v239 = v61;
  v240 = v60;
  v241 = v57;
  v243 = v34;
  v244 = v38;
  v245 = v36;
  v246 = v27;
  v235 = v56;
  v242 = v37;
  v250 = v40;
  v247 = v33;
  v269 = v35;
  v62 = sub_1C0D07CD0(&v299, v300);
  v63 = v269;
  *&v273 = v62;
  *(&v273 + 1) = v64;
  v65 = v269[16];
  v291 = v41;
  v66 = v41[4];
  v67 = v41[5];
  v265 = v11;
  if (v65 >> 60 != 15)
  {
    v72 = v269[15];
    if (v67 >> 60 == 15)
    {
      v234 = v21;
      v259 = v5;
      v260 = v4;
      sub_1C0CF6468(v72, v65);
      v272 = v72;
      v67 = v65;
    }

    else
    {
      v295 = v65;
      v3 = v66;
      sub_1C0D134D0(v66, v67);
      sub_1C0D134D0(v72, v295);
      v292 = v72;
      v75 = v72;
      v76 = v295;
      v272 = v3;
      if ((sub_1C0D04660(v75, v295, v3, v67) & 1) == 0)
      {
        sub_1C0D01E40();
        v173 = v67;
        v45 = swift_allocError();
        *(v174 + 4) = 0;
        *(v174 + 8) = 1;
        *(v174 + 12) = 0;
        *(v174 + 16) = 256;
        *(v174 + 64) = 0;
        *(v174 + 72) = 0xE000000000000000;
        *v174 = 13;
        *(v174 + 24) = xmmword_1C0D7EEA0;
        *(v174 + 40) = 0x80000001C0D81970;
        *(v174 + 48) = 0xD00000000000006BLL;
        *(v174 + 56) = 0x80000001C0D81620;
        swift_willThrow();
        sub_1C0CF448C(v273, *(&v273 + 1));
        sub_1C0D13830(v272, v173);
        sub_1C0D13830(v292, v76);
        v11 = v265;
        goto LABEL_7;
      }

      v234 = v21;
      v259 = v5;
      v260 = v4;
      sub_1C0D13830(v292, v76);
    }

    goto LABEL_30;
  }

  v259 = v5;
  v260 = v4;
  v234 = v21;
  if (v67 >> 60 != 15)
  {
    v272 = v66;
    sub_1C0CF6468(v66, v67);
LABEL_30:
    v63 = v269;
    goto LABEL_31;
  }

  v272 = 0;
  v67 = 0xC000000000000000;
LABEL_31:
  v295 = (v63 + 4);
  v4 = &v301;
  v233 = xmmword_1C0D7BAB0;
  v312 = xmmword_1C0D7BAB0;
  v77 = MEMORY[0x1E6969080];
  *(&v306 + 1) = MEMORY[0x1E6969080];
  *&v307 = MEMORY[0x1E6969078];
  v78 = v273;
  v305 = v273;
  v79 = __swift_project_boxed_opaque_existential_1(&v305, MEMORY[0x1E6969080]);
  v80 = *v79;
  v81 = v79[1];
  sub_1C0CF6468(v78, *(&v78 + 1));
  v82 = v294;
  sub_1C0D4268C(v80, v81);
  __swift_destroy_boxed_opaque_existential_1(&v305);
  *(&v306 + 1) = v77;
  *&v307 = MEMORY[0x1E6969078];
  v83 = v272;
  *&v305 = v272;
  *(&v305 + 1) = v67;
  v84 = __swift_project_boxed_opaque_existential_1(&v305, v77);
  v85 = *v84;
  v86 = v84[1];
  v258 = v67;
  sub_1C0CF6468(v83, v67);
  sub_1C0D4268C(v85, v86);
  __swift_destroy_boxed_opaque_existential_1(&v305);
  if (*(v291 + 18))
  {
    v87 = &unk_1F4034748;
  }

  else
  {
    v87 = &unk_1F4034770;
  }

  v88 = sub_1C0D0FA30(v87);
  v90 = v89;
  *(&v306 + 1) = v77;
  *&v307 = MEMORY[0x1E6969078];
  *&v305 = v88;
  *(&v305 + 1) = v89;
  v91 = __swift_project_boxed_opaque_existential_1(&v305, v77);
  v92 = *v91;
  v93 = v91[1];
  sub_1C0CF6468(v88, v90);
  sub_1C0D4268C(v92, v93);
  v3 = v82;
  sub_1C0CF448C(v88, v90);
  __swift_destroy_boxed_opaque_existential_1(&v305);
  v298 = MEMORY[0x1E69E7CC0];
  sub_1C0D78E3C();
  v94 = v295;
  v95 = *(v295 + 48);
  v307 = *(v295 + 32);
  v308 = v95;
  v96 = *(v295 + 80);
  v309 = *(v295 + 64);
  v310 = v96;
  v97 = *(v295 + 96);
  v311 = v97;
  v98 = *(v295 + 16);
  v305 = *v295;
  v306 = v98;
  v99 = *(&v310 + 1);
  v100 = v308 >> 62;
  v101 = __OFSUB__(HIDWORD(v307), DWORD2(v307));
  v257 = v101;
  v256 = HIDWORD(v307) - DWORD2(v307);
  v264 = BYTE6(v308);
  v277 = *(&v308 + 1);
  v278 = *(&v307 + 1);
  v267 = v309;
  v268 = v308;
  if (*(&v307 + 1))
  {
    v102 = 0;
  }

  else
  {
    v102 = v308 == 0xC000000000000000;
  }

  v103 = v102;
  v276 = v103;
  v282 = v309 >> 62;
  v104 = __OFSUB__(HIDWORD(v308), DWORD2(v308));
  v255 = v104;
  v254 = HIDWORD(v308) - DWORD2(v308);
  v263 = BYTE6(v309);
  if (*(&v308 + 1))
  {
    v105 = 0;
  }

  else
  {
    v105 = v309 == 0xC000000000000000;
  }

  v106 = v105;
  v274 = v106;
  v281 = v310 >> 62;
  v107 = __OFSUB__(HIDWORD(v309), DWORD2(v309));
  v253 = v107;
  v252 = HIDWORD(v309) - DWORD2(v309);
  v262 = BYTE6(v310);
  v275 = *(&v309 + 1);
  v266 = v310;
  if (*(&v309 + 1))
  {
    v108 = 0;
  }

  else
  {
    v108 = v310 == 0xC000000000000000;
  }

  v109 = v108;
  v271 = v109;
  v270 = v97 >> 62;
  v110 = __OFSUB__(HIDWORD(v310), DWORD2(v310));
  v249 = v110;
  v248 = HIDWORD(v310) - DWORD2(v310);
  v251 = BYTE6(v97);
  if (*(&v310 + 1))
  {
    v111 = 0;
  }

  else
  {
    v111 = v97 == 0xC000000000000000;
  }

  v279 = v308 >> 62;
  v280 = v305;
  v112 = v111;
  v261 = v112;
  v113 = v43 - 1;
  while (1)
  {
    v114 = *(v94 + 16);
    v301 = *v94;
    v115 = *(v94 + 32);
    v116 = *(v94 + 64);
    v117 = *(v94 + 80);
    *v304 = *(v94 + 48);
    *&v304[16] = v116;
    *&v304[32] = v117;
    *&v304[48] = *(v94 + 96);
    v302 = v114;
    v303 = v115;
    v13 = DWORD2(v301);
    v118 = *(&v115 + 1);
    v119 = *v304;
    v120 = *v304 >> 62;
    v295 = v94;
    LODWORD(v294) = DWORD2(v301);
    v292 = v113;
    if (v100 == 3)
    {
      v121 = v276;
      if (*v304 >> 62 != 3)
      {
        v121 = 0;
      }

      v102 = v121 == 1;
      v122 = v282;
      v123 = 0;
      if (v102 && !*(&v115 + 1) && *v304 == 0xC000000000000000)
      {
        goto LABEL_98;
      }

LABEL_85:
      if (v120 <= 1)
      {
        goto LABEL_86;
      }

      goto LABEL_91;
    }

    v122 = v282;
    if (v100 <= 1)
    {
      v123 = v264;
      if (v100)
      {
        v123 = v256;
        if (v257)
        {
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          sub_1C0D01E40();
          v45 = swift_allocError();
          *(v221 + 4) = 0;
          *(v221 + 8) = 1;
          *(v221 + 12) = 0;
          *(v221 + 16) = 256;
          *(v221 + 64) = 0xD000000000000043;
          *(v221 + 72) = 0x80000001C0D81A60;
          *v221 = 10;
          *(v221 + 24) = xmmword_1C0D7EEC0;
          *(v221 + 40) = 0x80000001C0D81970;
          *(v221 + 48) = 0xD00000000000006BLL;
          *(v221 + 56) = 0x80000001C0D81620;
          swift_willThrow();
          sub_1C0CF448C(v3, v13);
          sub_1C0CF448C(v272, v258);
          sub_1C0CF448C(v273, *(&v273 + 1));
          v222 = *(v288 + 8);
          v3 = v234;
          v222(v284, v234);
          (*(v285 + 8))(v286, v287);
          v223 = v247;
          v224 = v295;
          (v295)(v244, v247);
          v224(v242, v223);
          v224(v245, v223);
          v222(v289, v3);
          v224(v250, v223);
          sub_1C0CF448C(v301, *(&v301 + 1));
          v183 = *(&v312 + 1);
          v182 = v312;
LABEL_200:
          sub_1C0CF448C(v182, v183);
          v5 = v259;
          v4 = v260;
          v11 = v265;
LABEL_7:
          *&v301 = v45;
          v49 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
          v50 = *v296;
          if (swift_dynamicCast())
          {

            (*(v5 + 32))(v11, v50, v4);
            v51 = *(v5 + 16);
            v3 = v293;
            v51(v293, v11, v4);
            v52 = (*(v5 + 88))(v3, v4);
            if (v52 == *MEMORY[0x1E6966358])
            {
              (*(v5 + 96))(v3, v4);
              v296[0] = *v3;
              *&v305 = 0;
              *(&v305 + 1) = 0xE000000000000000;
              sub_1C0D78DAC();
              MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
              sub_1C0D78E9C();
              MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D81990);
              v3 = *(&v305 + 1);
              v53 = v305;
              sub_1C0D01E40();
              swift_allocError();
              *(v54 + 12) = 0;
              *(v54 + 16) = 256;
              *(v54 + 4) = v296[0];
              *(v54 + 8) = 0;
              *(v54 + 64) = __PAIR128__(v3, v53);
              *v54 = 3;
              *(v54 + 24) = xmmword_1C0D7EF10;
              *(v54 + 40) = 0x80000001C0D81970;
              *(v54 + 48) = 0xD00000000000006BLL;
              *(v54 + 56) = 0x80000001C0D81620;
              swift_willThrow();
              (*(v5 + 8))(v11, v4);
            }

            else
            {
              if (v52 == *MEMORY[0x1E6966368])
              {
                v3 = 0x80000001C0D81620;
                sub_1C0D01E40();
                swift_allocError();
                *(v68 + 4) = 0;
                *(v68 + 8) = 1;
                *(v68 + 12) = 0;
                *(v68 + 16) = 256;
                *(v68 + 64) = 0xD000000000000048;
                *(v68 + 72) = 0x80000001C0D81A10;
                *v68 = 1;
                v69 = xmmword_1C0D7EF00;
              }

              else
              {
                if (v52 != *MEMORY[0x1E6966360])
                {
                  sub_1C0D6F118(&qword_1EBE6E098, MEMORY[0x1E6966370]);
                  swift_allocError();
                  v51(v73, v11, v4);
                  swift_willThrow();
                  v74 = *(v5 + 8);
                  v74(v11, v4);
                  v74(v3, v4);
                  goto LABEL_21;
                }

                v3 = 0x80000001C0D81620;
                sub_1C0D01E40();
                swift_allocError();
                *(v68 + 4) = 0;
                *(v68 + 8) = 1;
                *(v68 + 12) = 0;
                *(v68 + 16) = 256;
                *(v68 + 64) = 0xD00000000000005DLL;
                *(v68 + 72) = 0x80000001C0D819B0;
                *v68 = 2;
                v69 = xmmword_1C0D7EEF0;
              }

              *(v68 + 24) = v69;
              *(v68 + 40) = 0x80000001C0D81970;
              *(v68 + 48) = 0xD00000000000006BLL;
              *(v68 + 56) = 0x80000001C0D81620;
              swift_willThrow();
              (*(v5 + 8))(v11, v4);
            }
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      goto LABEL_85;
    }

    if (v100 == 2)
    {
      v125 = *(v278 + 16);
      v124 = *(v278 + 24);
      v126 = __OFSUB__(v124, v125);
      v123 = v124 - v125;
      if (v126)
      {
        goto LABEL_214;
      }

      goto LABEL_85;
    }

    v123 = 0;
    if (v120 <= 1)
    {
LABEL_86:
      if (v120)
      {
        LODWORD(v127) = HIDWORD(v115) - DWORD2(v115);
        if (__OFSUB__(HIDWORD(v115), DWORD2(v115)))
        {
          goto LABEL_205;
        }

        v127 = v127;
      }

      else
      {
        v127 = v304[6];
      }

      goto LABEL_93;
    }

LABEL_91:
    if (v120 != 2)
    {
      if (v123)
      {
LABEL_193:
        sub_1C0D6ECEC(&v301, v300);
        goto LABEL_199;
      }

LABEL_98:
      sub_1C0D6ECEC(&v301, v300);
      result = sub_1C0D6ECEC(&v305, v300);
      goto LABEL_99;
    }

    v129 = *(*(&v115 + 1) + 16);
    v128 = *(*(&v115 + 1) + 24);
    v126 = __OFSUB__(v128, v129);
    v127 = v128 - v129;
    if (v126)
    {
      goto LABEL_206;
    }

LABEL_93:
    if (v123 != v127)
    {
      goto LABEL_193;
    }

    if (v123 < 1)
    {
      goto LABEL_98;
    }

    sub_1C0D6ECEC(&v301, v300);
    sub_1C0D6ECEC(&v305, v300);
    sub_1C0CF6468(v118, v119);
    result = sub_1C0D6DE04(v278, v268, v118, v119);
    if ((result & 1) == 0)
    {
      goto LABEL_198;
    }

LABEL_99:
    v130 = *&v304[8];
    v131 = *&v304[16];
    v132 = *&v304[16] >> 62;
    if (v122 == 3)
    {
      v133 = v274;
      if (*&v304[16] >> 62 != 3)
      {
        v133 = 0;
      }

      if (v133 == 1)
      {
        v134 = 0;
        if (*&v304[8] == __PAIR128__(0xC000000000000000, 0))
        {
          v135 = v281;
          goto LABEL_127;
        }

LABEL_111:
        if (v132 <= 1)
        {
          goto LABEL_112;
        }

        goto LABEL_115;
      }
    }

    else
    {
      if (v122 <= 1)
      {
        v134 = v263;
        if (v122)
        {
          v134 = v254;
          if (v255)
          {
            goto LABEL_216;
          }
        }

        goto LABEL_111;
      }

      if (v122 == 2)
      {
        v137 = *(v277 + 16);
        v136 = *(v277 + 24);
        v126 = __OFSUB__(v136, v137);
        v134 = v136 - v137;
        if (v126)
        {
          goto LABEL_215;
        }

        goto LABEL_111;
      }
    }

    v134 = 0;
    if (v132 <= 1)
    {
LABEL_112:
      if (v132)
      {
        LODWORD(v138) = *&v304[12] - *&v304[8];
        if (__OFSUB__(*&v304[12], *&v304[8]))
        {
          goto LABEL_208;
        }

        v138 = v138;
      }

      else
      {
        v138 = v304[22];
      }

      v135 = v281;
      goto LABEL_122;
    }

LABEL_115:
    if (v132 != 2)
    {
      v135 = v281;
      if (v134)
      {
        goto LABEL_198;
      }

      goto LABEL_127;
    }

    v140 = *(*&v304[8] + 16);
    v139 = *(*&v304[8] + 24);
    v126 = __OFSUB__(v139, v140);
    v138 = v139 - v140;
    v135 = v281;
    if (v126)
    {
      goto LABEL_207;
    }

LABEL_122:
    if (v134 != v138)
    {
      goto LABEL_198;
    }

    if (v134 >= 1)
    {
      sub_1C0CF6468(*&v304[8], *&v304[16]);
      result = sub_1C0D6DE04(v277, v267, v130, v131);
      if ((result & 1) == 0)
      {
        goto LABEL_198;
      }
    }

LABEL_127:
    v141 = *&v304[24];
    v142 = *&v304[32];
    v143 = *&v304[32] >> 62;
    if (v135 == 3)
    {
      v144 = v271;
      if (*&v304[32] >> 62 != 3)
      {
        v144 = 0;
      }

      if (v144 == 1)
      {
        v145 = 0;
        if (*&v304[24] == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_154;
        }

LABEL_139:
        if (v143 <= 1)
        {
          goto LABEL_140;
        }

        goto LABEL_143;
      }
    }

    else
    {
      if (v135 <= 1)
      {
        v145 = v262;
        if (v135)
        {
          v145 = v252;
          if (v253)
          {
            goto LABEL_218;
          }
        }

        goto LABEL_139;
      }

      if (v135 == 2)
      {
        v147 = *(v275 + 16);
        v146 = *(v275 + 24);
        v126 = __OFSUB__(v146, v147);
        v145 = v146 - v147;
        if (v126)
        {
          goto LABEL_217;
        }

        goto LABEL_139;
      }
    }

    v145 = 0;
    if (v143 <= 1)
    {
LABEL_140:
      if (v143)
      {
        LODWORD(v148) = *&v304[28] - *&v304[24];
        if (__OFSUB__(*&v304[28], *&v304[24]))
        {
          goto LABEL_209;
        }

        v148 = v148;
      }

      else
      {
        v148 = v304[38];
      }

      goto LABEL_149;
    }

LABEL_143:
    if (v143 != 2)
    {
      if (v145)
      {
        goto LABEL_198;
      }

      goto LABEL_154;
    }

    v150 = *(*&v304[24] + 16);
    v149 = *(*&v304[24] + 24);
    v126 = __OFSUB__(v149, v150);
    v148 = v149 - v150;
    if (v126)
    {
      goto LABEL_210;
    }

LABEL_149:
    if (v145 != v148)
    {
      goto LABEL_198;
    }

    if (v145 >= 1)
    {
      sub_1C0CF6468(*&v304[24], *&v304[32]);
      result = sub_1C0D6DE04(v275, v266, v141, v142);
      if ((result & 1) == 0)
      {
        goto LABEL_198;
      }
    }

LABEL_154:
    v152 = *&v304[40];
    v151 = *&v304[48];
    if (v97 >> 60 == 15)
    {
      if (*&v304[48] >> 60 != 15)
      {
        goto LABEL_192;
      }

      sub_1C0D134D0(v99, v97);
      sub_1C0D134D0(v152, v151);
      goto LABEL_187;
    }

    if (*&v304[48] >> 60 == 15)
    {
LABEL_192:
      sub_1C0D134D0(v99, v97);
      sub_1C0D134D0(v152, v151);
      sub_1C0D13830(v99, v97);
      v175 = v152;
      v176 = v151;
LABEL_197:
      sub_1C0D13830(v175, v176);
LABEL_198:
      sub_1C0D6ED24(&v305);
LABEL_199:
      v177 = DWORD2(v305);
      *&v300[0] = 0;
      *(&v300[0] + 1) = 0xE000000000000000;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000029, 0x80000001C0D81920);
      v297 = v177;
      v178 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v178);

      MEMORY[0x1C68E3B00](0x20646E6120, 0xE500000000000000);
      v297 = v294;
      v179 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v179);

      MEMORY[0x1C68E3B00](0xD00000000000001ELL, 0x80000001C0D81950);
      v180 = v300[0];
      v3 = 0x80000001C0D81970;
      sub_1C0D01E40();
      v45 = swift_allocError();
      *(v181 + 4) = 0;
      *(v181 + 8) = 1;
      *(v181 + 12) = 0;
      *(v181 + 16) = 256;
      *(v181 + 64) = v180;
      *v181 = 9;
      *(v181 + 24) = xmmword_1C0D7EEB0;
      *(v181 + 40) = 0x80000001C0D81970;
      *(v181 + 48) = 0xD00000000000006BLL;
      *(v181 + 56) = 0x80000001C0D81620;
      swift_willThrow();
      sub_1C0CF448C(v273, *(&v273 + 1));
      sub_1C0CF448C(v272, v258);
      sub_1C0D6ED24(&v301);

      v183 = *(&v312 + 1);
      v182 = v312;
      goto LABEL_200;
    }

    v153 = *&v304[48] >> 62;
    if (v270 == 3)
    {
      v154 = v261;
      if (*&v304[48] >> 62 != 3)
      {
        v154 = 0;
      }

      if (v154 == 1)
      {
        v155 = 0;
        if (*&v304[40] == __PAIR128__(0xC000000000000000, 0))
        {
          sub_1C0D134D0(0, 0xC000000000000000);
          sub_1C0D134D0(0, 0xC000000000000000);
          v156 = 0;
          v157 = 0xC000000000000000;
          goto LABEL_186;
        }

LABEL_170:
        if (v153 <= 1)
        {
          goto LABEL_171;
        }

        goto LABEL_174;
      }
    }

    else
    {
      if (v270 <= 1)
      {
        v155 = v251;
        if (v270)
        {
          v155 = v248;
          if (v249)
          {
            goto LABEL_223;
          }
        }

        goto LABEL_170;
      }

      if (v270 == 2)
      {
        v159 = *(v99 + 16);
        v158 = *(v99 + 24);
        v126 = __OFSUB__(v158, v159);
        v155 = v158 - v159;
        if (v126)
        {
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        goto LABEL_170;
      }
    }

    v155 = 0;
    if (v153 <= 1)
    {
LABEL_171:
      if (v153)
      {
        LODWORD(v160) = *&v304[44] - *&v304[40];
        if (__OFSUB__(*&v304[44], *&v304[40]))
        {
          goto LABEL_219;
        }

        v160 = v160;
      }

      else
      {
        v160 = v304[54];
      }

      goto LABEL_180;
    }

LABEL_174:
    if (v153 != 2)
    {
      if (v155)
      {
LABEL_196:
        sub_1C0D134D0(v99, v97);
        sub_1C0D134D0(v152, v151);
        sub_1C0D13830(v152, v151);
        v175 = v99;
        v176 = v97;
        goto LABEL_197;
      }

LABEL_185:
      sub_1C0D134D0(v99, v97);
      sub_1C0D134D0(v152, v151);
      v156 = v152;
      v157 = v151;
LABEL_186:
      sub_1C0D13830(v156, v157);
LABEL_187:
      sub_1C0D13830(v99, v97);
      sub_1C0D6ED24(&v305);
      goto LABEL_188;
    }

    v162 = *(*&v304[40] + 16);
    v161 = *(*&v304[40] + 24);
    v126 = __OFSUB__(v161, v162);
    v160 = v161 - v162;
    if (v126)
    {
      goto LABEL_220;
    }

LABEL_180:
    if (v155 != v160)
    {
      goto LABEL_196;
    }

    if (v155 < 1)
    {
      goto LABEL_185;
    }

    sub_1C0D134D0(v99, v97);
    sub_1C0D134D0(v152, v151);
    sub_1C0D134D0(v99, v97);
    sub_1C0D134D0(v152, v151);
    sub_1C0D134D0(v152, v151);
    v163 = sub_1C0D6DE04(v99, v97, v152, v151);
    sub_1C0D13830(v152, v151);
    sub_1C0D13830(v152, v151);
    sub_1C0D13830(v99, v97);
    sub_1C0D13830(v99, v97);
    sub_1C0D6ED24(&v305);
    if ((v163 & 1) == 0)
    {
      goto LABEL_199;
    }

LABEL_188:
    if (v280 != v301)
    {
      goto LABEL_199;
    }

    v164 = v3;
    v165 = v97;
    v166 = v99;
    v167 = *(&v302 + 1);
    v168 = v303;
    v169 = v291[18];
    v170 = objc_allocWithZone(MEMORY[0x1E6999658]);
    sub_1C0CF6468(v167, v168);
    v171 = sub_1C0D7830C();
    [v170 initWithParams:v169 x:v294 y:v171];

    sub_1C0CF448C(v167, v168);
    sub_1C0D6ED24(&v301);
    sub_1C0D78E0C();
    v172 = *(v298 + 16);
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    if (!v292)
    {
      break;
    }

    v113 = v292 - 1;
    v94 = v295 + 104;
    v4 = &v301;
    v99 = v166;
    v97 = v165;
    v3 = v164;
    v100 = v279;
  }

  v3 = v298;
  *&v305 = v291;
  sub_1C0D6ACB0(v298, v250);
  v45 = v164;
  v11 = v265;
  if (v164)
  {
    sub_1C0CF448C(v273, *(&v273 + 1));
    sub_1C0CF448C(v272, v258);

    sub_1C0CF448C(v312, *(&v312 + 1));
    v5 = v259;
    v4 = v260;
    goto LABEL_7;
  }

  v184 = v269;
  v185 = v269[10];
  *&v305 = v269[9];
  *(&v305 + 1) = v185;
  sub_1C0CF6468(v305, v185);
  sub_1C0D17E68();
  sub_1C0D7876C();
  v187 = v259;
  v186 = v260;
  v188 = v184[12];
  *&v305 = v184[11];
  *(&v305 + 1) = v188;
  v189 = v184[13];
  v190 = v184[14];
  *&v301 = v189;
  *(&v301 + 1) = v190;
  sub_1C0CF6468(v305, v188);
  sub_1C0CF6468(v189, v190);
  sub_1C0D787AC();
  v259 = v187;
  v260 = v186;
  v191 = v312;
  v305 = v312;
  sub_1C0CF6468(v312, *(&v312 + 1));
  v3 = sub_1C0D7873C();
  v13 = v192;
  sub_1C0CF448C(v305, *(&v305 + 1));
  v301 = v233;
  *(&v306 + 1) = MEMORY[0x1E6969080];
  *&v307 = MEMORY[0x1E6969078];
  v305 = v191;
  v193 = __swift_project_boxed_opaque_existential_1(&v305, MEMORY[0x1E6969080]);
  v194 = *v193;
  v295 = v193[1];
  sub_1C0CF6468(v191, *(&v191 + 1));
  sub_1C0D4268C(v194, v295);
  __swift_destroy_boxed_opaque_existential_1(&v305);
  *(&v306 + 1) = MEMORY[0x1E6969080];
  *&v307 = MEMORY[0x1E6969078];
  *&v305 = v3;
  *(&v305 + 1) = v13;
  v195 = __swift_project_boxed_opaque_existential_1(&v305, MEMORY[0x1E6969080]);
  v196 = *v195;
  v197 = v195[1];
  sub_1C0CF6468(v3, v13);
  sub_1C0D4268C(v196, v197);
  v294 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v305);
  v305 = v301;
  sub_1C0CF6468(v301, *(&v301 + 1));
  v198 = v243;
  sub_1C0D7868C();
  v199 = v236;
  swift_bridgeObjectRetain_n();
  v200 = v237;
  *&v305 = sub_1C0D07698(v237, v199);
  *(&v305 + 1) = v201;
  *&v300[0] = sub_1C0D07698(v200, v199);
  *(&v300[0] + 1) = v202;
  v292 = sub_1C0D789EC();
  v290 = sub_1C0D6F118(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
  v203 = v198;
  sub_1C0D7881C();
  sub_1C0CF448C(*&v300[0], *(&v300[0] + 1));
  sub_1C0CF448C(v305, *(&v305 + 1));
  v204 = v246;
  v205 = v246 + 8;
  v295 = *(v246 + 8);
  (v295)(v203, v247);
  v305 = v301;
  sub_1C0CF6468(v301, *(&v301 + 1));
  sub_1C0D7868C();
  v206 = v239;
  swift_bridgeObjectRetain_n();
  v207 = v240;
  *&v305 = sub_1C0D07698(v240, v206);
  *(&v305 + 1) = v208;
  *&v300[0] = sub_1C0D07698(v207, v206);
  *(&v300[0] + 1) = v209;
  v210 = v242;
  v211 = v243;
  sub_1C0D7881C();
  sub_1C0CF448C(*&v300[0], *(&v300[0] + 1));
  sub_1C0CF448C(v305, *(&v305 + 1));
  v212 = v247;
  v292 = v205;
  (v295)(v211, v247);
  (*(v204 + 16))(v211, v245, v212);
  sub_1C0D6F118(&qword_1EBE6DCD0, MEMORY[0x1E6966458]);
  sub_1C0D7868C();
  v214 = v286;
  v213 = v287;
  v215 = v294;
  sub_1C0D7867C();
  v45 = v215;
  if (v215)
  {
    sub_1C0CF448C(v3, v13);
    sub_1C0CF448C(v272, v258);
    sub_1C0CF448C(v273, *(&v273 + 1));
    v216 = v247;
    v3 = v295;
    (v295)(v244, v247);
    (v3)(v210, v216);
    (v3)(v245, v216);
    (*(v288 + 8))(v289, v234);
    (v3)(v250, v216);
    sub_1C0CF448C(v301, *(&v301 + 1));
    v183 = *(&v312 + 1);
    v182 = v312;
    goto LABEL_200;
  }

  *&v305 = v3;
  *(&v305 + 1) = v13;
  v217 = v285;
  v4 = v283;
  (*(v285 + 16))(v283, v214, v213);
  (*(v217 + 56))(v4, 0, 1, v213);
  v300[0] = v312;
  sub_1C0CF6468(v312, *(&v312 + 1));
  sub_1C0D7874C();
LABEL_211:
  sub_1C0CF448C(*&v300[0], *(&v300[0] + 1));
  sub_1C0D13578(v4, qword_1EBE6DCE8, &unk_1C0D7EF60);
  result = sub_1C0D6E688();
  if ((result & 1) == 0)
  {
    goto LABEL_221;
  }

  if (*(v291 + 18) == 1)
  {
    sub_1C0CF448C(v272, v258);
    sub_1C0CF448C(v273, *(&v273 + 1));
    *v296 = *(v288 + 8);
    v218 = v234;
    (*v296)(v284, v234);
    (*(v285 + 8))(v286, v287);
    v219 = v247;
    v220 = v295;
    (v295)(v244, v247);
    v220(v242, v219);
    v220(v245, v219);
    (*v296)(v289, v218);
    v220(v250, v219);
    sub_1C0CF448C(v301, *(&v301 + 1));
    sub_1C0CF448C(v312, *(&v312 + 1));
    goto LABEL_22;
  }

LABEL_224:
  v225 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v225 == 2)
    {
      v228 = *(v3 + 16);
      v227 = *(v3 + 24);
      v126 = __OFSUB__(v227, v228);
      v226 = v227 - v228;
      if (v126)
      {
        __break(1u);
        goto LABEL_231;
      }
    }

    else
    {
      v226 = 0;
    }

LABEL_234:
    result = v226 - v235;
    if (__OFSUB__(v226, v235))
    {
      __break(1u);
      goto LABEL_237;
    }

    sub_1C0D01560(result, v3, v13, &v305);
    sub_1C0CF448C(v272, v258);
    sub_1C0CF448C(v273, *(&v273 + 1));
    v229 = *(v288 + 8);
    v230 = v234;
    v229(v284, v234);
    (*(v285 + 8))(v286, v287);
    v231 = v247;
    v232 = v295;
    (v295)(v244, v247);
    v232(v242, v231);
    v232(v245, v231);
    v229(v289, v230);
    v232(v250, v231);
    sub_1C0CF448C(v301, *(&v301 + 1));
    sub_1C0CF448C(v312, *(&v312 + 1));
    v3 = v305;
LABEL_22:
    v70 = *MEMORY[0x1E69E9840];
    return v3;
  }

  else
  {
    if (!v225)
    {
      v226 = BYTE6(v13);
      goto LABEL_234;
    }

LABEL_231:
    LODWORD(v226) = HIDWORD(v3) - v3;
    if (!__OFSUB__(HIDWORD(v3), v3))
    {
      v226 = v226;
      goto LABEL_234;
    }

LABEL_237:
    __break(1u);
  }

  return result;
}

uint64_t CKSecretSharing.HybridSecretShare.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C0D7840C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for CryptoKitSecretSharing_SecretShare();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1C0CF6468(a1, a2);
  sub_1C0D783FC();
  sub_1C0D6F118(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare);
  sub_1C0D784DC();
  if (v3)
  {
    return sub_1C0CF448C(a1, a2);
  }

  if (*v12 == 1)
  {
    sub_1C0CF448C(a1, a2);
    v14 = *(v9 + 48);
    v15 = &v12[*(v9 + 44)];
    v16 = *v15;
    v40 = v15[4];
    v41 = v16;
    v18 = *&v12[v14];
    v17 = *&v12[v14 + 8];
    if (v17 >> 60 != 15)
    {
      sub_1C0D134D0(*&v12[v14], *&v12[v14 + 8]);
    }

    v34 = *(v12 + 1);
    v19 = *(v12 + 1);
    v32 = *(v12 + 2);
    v33 = v19;
    v20 = *(v12 + 3);
    v21 = *(v12 + 4);
    v35 = v18;
    v36 = v17;
    v23 = *(v12 + 5);
    v22 = *(v12 + 6);
    v24 = *(v12 + 7);
    v25 = *(v12 + 8);
    sub_1C0CF6468(v19, v32);
    sub_1C0CF6468(v20, v21);
    sub_1C0CF6468(v23, v22);
    sub_1C0CF6468(v24, v25);
    result = sub_1C0D6F0B8(v12, type metadata accessor for CryptoKitSecretSharing_SecretShare);
    v26 = v40;
    LOBYTE(v37) = v40;
    *a3 = 1;
    v27 = v41;
    *(a3 + 8) = v34;
    *(a3 + 12) = v27;
    *(a3 + 16) = v26;
    v28 = v32;
    *(a3 + 24) = v33;
    *(a3 + 32) = v28;
    *(a3 + 40) = v20;
    *(a3 + 48) = v21;
    *(a3 + 56) = v23;
    *(a3 + 64) = v22;
    *(a3 + 72) = v24;
    *(a3 + 80) = v25;
    v29 = v36;
    *(a3 + 88) = v35;
    *(a3 + 96) = v29;
  }

  else
  {
    sub_1C0D01E40();
    swift_allocError();
    *(v30 + 4) = 0;
    *(v30 + 8) = 1;
    *(v30 + 12) = 0;
    *(v30 + 16) = 256;
    *(v30 + 64) = 0;
    *(v30 + 72) = 0xE000000000000000;
    *v30 = 15;
    *(v30 + 24) = xmmword_1C0D7EF20;
    *(v30 + 40) = 0xE800000000000000;
    *(v30 + 48) = 0xD00000000000006BLL;
    *(v30 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0CF448C(a1, a2);
    return sub_1C0D6F0B8(v12, type metadata accessor for CryptoKitSecretSharing_SecretShare);
  }

  return result;
}

char *Data.init(secretShare:)(uint64_t a1)
{
  v76[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for CryptoKitSecretSharing_SecretShare();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v60 = *(a1 + 12);
  v61 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v64 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v66 = v10;
  v67 = v11;
  v13 = *(a1 + 80);
  v71 = *(a1 + 72);
  v69 = v12;
  v70 = v13;
  v14 = *(a1 + 96);
  v73 = *(a1 + 88);
  *(v6 + 8) = xmmword_1C0D7BAB0;
  *(v6 + 24) = xmmword_1C0D7BAB0;
  *(v6 + 40) = xmmword_1C0D7BAB0;
  *(v6 + 56) = xmmword_1C0D7BAB0;
  v15 = &v6[*(v4 + 40)];
  sub_1C0D783DC();
  v16 = &v6[*(v2 + 44)];
  *v16 = 0;
  v16[4] = 1;
  v68 = v2;
  v17 = &v6[*(v2 + 48)];
  *v17 = xmmword_1C0D7D9D0;
  *v6 = 1;
  *(v6 + 1) = v7;
  v18 = *(v6 + 1);
  v19 = *(v6 + 2);
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  v65 = v8;
  v63 = v9;
  sub_1C0CF6468(v8, v9);
  sub_1C0CF448C(v18, v19);
  if ((v61 & 1) == 0)
  {
    *v16 = v60;
    v16[4] = 0;
  }

  if (v14 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v73;
  }

  v21 = v14;
  v62 = v14;
  if (v14 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  v22 = *v17;
  v23 = *(v17 + 1);
  sub_1C0D134D0(v73, v21);
  sub_1C0D13830(v22, v23);
  *v17 = v20;
  *(v17 + 1) = v14;
  v24 = *(v6 + 3);
  v25 = *(v6 + 4);
  v26 = v64;
  v27 = v66;
  sub_1C0CF6468(v64, v66);
  sub_1C0CF448C(v24, v25);
  *(v6 + 3) = v26;
  *(v6 + 4) = v27;
  v28 = *(v6 + 5);
  v29 = *(v6 + 6);
  v30 = v69;
  v31 = v67;
  sub_1C0CF6468(v69, v67);
  sub_1C0CF448C(v28, v29);
  *(v6 + 5) = v30;
  *(v6 + 6) = v31;
  v32 = *(v6 + 7);
  v33 = *(v6 + 8);
  v35 = v70;
  v34 = v71;
  sub_1C0CF6468(v71, v70);
  sub_1C0CF448C(v32, v33);
  sub_1C0CF448C(v65, v63);
  sub_1C0CF448C(v26, v27);
  sub_1C0CF448C(v30, v31);
  sub_1C0CF448C(v34, v35);
  sub_1C0D13830(v73, v62);
  *(v6 + 7) = v34;
  *(v6 + 8) = v35;
  sub_1C0D6F118(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare);
  v36 = v6;
  v37 = v72;
  v38 = sub_1C0D784EC();
  if (!v37)
  {
    v76[3] = MEMORY[0x1E6969080];
    v76[4] = MEMORY[0x1E6969078];
    v76[0] = v38;
    v76[1] = v39;
    v40 = __swift_project_boxed_opaque_existential_1(v76, MEMORY[0x1E6969080]);
    v41 = *v40;
    v42 = v40[1];
    v43 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v43 != 2)
      {
        memset(v74, 0, 14);
        v45 = v74;
        v44 = v74;
        goto LABEL_32;
      }

      v46 = *(v41 + 16);
      v47 = *(v41 + 24);
      v48 = sub_1C0D7812C();
      if (v48)
      {
        v49 = sub_1C0D7815C();
        v41 = v46 - v49;
        if (__OFSUB__(v46, v49))
        {
          goto LABEL_35;
        }

        v48 += v41;
      }

      v50 = __OFSUB__(v47, v46);
      v51 = v47 - v46;
      if (!v50)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v43)
    {
      v74[0] = *v40;
      LOWORD(v74[1]) = v42;
      BYTE2(v74[1]) = BYTE2(v42);
      BYTE3(v74[1]) = BYTE3(v42);
      BYTE4(v74[1]) = BYTE4(v42);
      BYTE5(v74[1]) = BYTE5(v42);
      v44 = v74 + BYTE6(v42);
      v45 = v74;
LABEL_32:
      sub_1C0D20850(v45, v44, &v75);
      v36 = v75;
      __swift_destroy_boxed_opaque_existential_1(v76);
      sub_1C0D6F0B8(v6, type metadata accessor for CryptoKitSecretSharing_SecretShare);
      goto LABEL_33;
    }

    v52 = v41;
    v53 = v41 >> 32;
    v51 = v53 - v52;
    if (v53 >= v52)
    {
      v48 = sub_1C0D7812C();
      if (!v48)
      {
LABEL_24:
        v55 = sub_1C0D7814C();
        if (v55 >= v51)
        {
          v56 = v51;
        }

        else
        {
          v56 = v55;
        }

        v57 = (v56 + v48);
        if (v48)
        {
          v44 = v57;
        }

        else
        {
          v44 = 0;
        }

        v45 = v48;
        goto LABEL_32;
      }

      v54 = sub_1C0D7815C();
      if (!__OFSUB__(v52, v54))
      {
        v48 += v52 - v54;
        goto LABEL_24;
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1C0D6F0B8(v6, type metadata accessor for CryptoKitSecretSharing_SecretShare);
LABEL_33:
  v58 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1C0D6DE04(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1C0D6E268(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C0CF448C(a3, a4);
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
  sub_1C0D198E4(v14, a3, a4, &v13);
  v10 = v4;
  sub_1C0CF448C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1C0D6DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_1C0D7812C();
  v8 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C0D7814C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1C0D6E1C0(v8, v14, a4) & 1;
}

uint64_t sub_1C0D6E02C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v12, 0, 14);
      v10 = *a3;
      swift_beginAccess();
      sub_1C0CF15F4(*(v10 + 16), *(v10 + 16), v12, 0);
      goto LABEL_10;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
LABEL_7:
    result = sub_1C0D6DF94(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v12[0] = a1;
  LOWORD(v12[1]) = a2;
  BYTE2(v12[1]) = BYTE2(a2);
  BYTE3(v12[1]) = BYTE3(a2);
  BYTE4(v12[1]) = BYTE4(a2);
  v5 = BYTE6(a2);
  BYTE5(v12[1]) = BYTE5(a2);
  v6 = *a3;
  swift_beginAccess();
  sub_1C0CF15F4(*(v6 + 16), *(v6 + 16), v12, v5);
LABEL_10:
  LOBYTE(result) = 0;
LABEL_11:
  result &= 1u;
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D6E1C0(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = a2 - a1;
    v4 = *a3;
    swift_beginAccess();
    v6 = *(v4 + 16);
    v7 = v6;
    v8 = a1;
    v9 = v3;
  }

  else
  {
    v10 = *a3;
    swift_beginAccess();
    v6 = *(v10 + 16);
    v7 = v6;
    v8 = 0;
    v9 = 0;
  }

  sub_1C0CF15F4(v6, v7, v8, v9);
  return 0;
}

uint64_t sub_1C0D6E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C0D7812C();
  v11 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C0D7814C();
  sub_1C0D198E4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL _s16CryptoKitPrivate15CKSecretSharingO17HybridSecretShareV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 80);
    v8 = *(a2 + 16);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    v12 = *(a2 + 56);
    v11 = *(a2 + 64);
    v13 = *(a2 + 72);
    v14 = *(a2 + 80);
    if (*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 12) != *(a2 + 12))
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    v24 = *(a1 + 80);
    v25 = *(a1 + 72);
    v20 = *(a2 + 88);
    v21 = *(a2 + 96);
    v22 = *(a1 + 88);
    v23 = *(a1 + 96);
    if (sub_1C0D04660(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) != 0 && (sub_1C0D04660(v4, v3, v9, v10) & 1) != 0 && (sub_1C0D04660(v5, v6, v12, v11) & 1) != 0 && (sub_1C0D04660(v25, v24, v13, v14))
    {
      if (v23 >> 60 == 15)
      {
        v16 = v21;
        v15 = v22;
        if (v21 >> 60 == 15)
        {
          sub_1C0D134D0(v22, v23);
          sub_1C0D134D0(v20, v21);
          sub_1C0D13830(v22, v23);
          return 1;
        }
      }

      else
      {
        v16 = v21;
        v15 = v22;
        if (v21 >> 60 != 15)
        {
          sub_1C0D134D0(v22, v23);
          sub_1C0D134D0(v20, v21);
          v19 = sub_1C0D04660(v22, v23, v20, v21);
          sub_1C0D13830(v20, v21);
          sub_1C0D13830(v22, v23);
          return (v19 & 1) != 0;
        }
      }

      v17 = v15;
      sub_1C0D134D0(v15, v23);
      sub_1C0D134D0(v20, v16);
      sub_1C0D13830(v17, v23);
      sub_1C0D13830(v20, v16);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1C0D6E528(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_1C0D7818C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1C0D7816C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C0D7828C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CKSecretSharing.HybridGenerator()
{
  result = qword_1EBE6E0A0;
  if (!qword_1EBE6E0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0D6E688()
{
  v0 = sub_1C0D7877C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-v6];
  sub_1C0D787BC();
  sub_1C0D787BC();
  v26 = v5;
  sub_1C0D7875C();
  v8 = *(v1 + 8);
  v8(v7, v0);
  v9 = v27;
  v8(v5, v0);
  if (v9 == 1 && (v10 = sub_1C0D7878C(), v12 = v11, v13 = sub_1C0D7878C(), v15 = v14, v16 = sub_1C0D04660(v10, v12, v13, v14), sub_1C0CF448C(v13, v15), sub_1C0CF448C(v10, v12), (v16 & 1) != 0))
  {
    v17 = sub_1C0D7879C();
    v19 = v18;
    v20 = sub_1C0D7879C();
    v22 = v21;
    v23 = sub_1C0D04660(v17, v19, v20, v21);
    sub_1C0CF448C(v20, v22);
    sub_1C0CF448C(v17, v19);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1C0D6E898(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = 0x80000001C0D81C70;
    sub_1C0D01E40();
    swift_allocError();
    *(v4 + 4) = 0;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    v5 = 0xD00000000000004BLL;
    *(v4 + 72) = 0x80000001C0D81C70;
    *v4 = 17;
    v6 = xmmword_1C0D7EF30;
    goto LABEL_6;
  }

  if ((*(a1 + 16) & 1) == 0 && *(a1 + 8))
  {
    v3 = 0x80000001C0D81CC0;
    sub_1C0D01E40();
    swift_allocError();
    *(v4 + 4) = 0;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    v5 = 0xD000000000000066;
    *(v4 + 72) = 0x80000001C0D81CC0;
    *v4 = 17;
    v6 = xmmword_1C0D7EF40;
LABEL_6:
    *(v4 + 24) = v6;
    *(v4 + 40) = 0xEF293A6675626F74;
    *(v4 + 48) = 0xD00000000000006BLL;
    *(v4 + 56) = 0x80000001C0D81620;
    *(v4 + 64) = v5;
    swift_willThrow();
    goto LABEL_18;
  }

  v7 = *(a1 + 20);
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 24);
  v10 = *(a1 + 17);
  v11 = *(a1 + 48);
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  swift_allocObject();
  sub_1C0CF6468(v3, v8);
  result = sub_1C0D660D8(v7, v3, v8, v9, v10, v12, v11);
  if (v1)
  {
    goto LABEL_18;
  }

  v3 = result;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64) >> 62;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_16;
    }

    v16 = v14 + 16;
    v14 = *(v14 + 16);
    if (!__OFSUB__(*(v16 + 8), v14))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v15)
  {
    goto LABEL_16;
  }

  if (!__OFSUB__(HIDWORD(v14), v14))
  {
LABEL_16:

    v17 = swift_slowAlloc();
    v19 = v3[18];
    v18 = v3[19];
    ccss_shamir_share_init();
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    sub_1C0D7838C();
    v22 = v3[20];
    v23 = v3[18];

    v24 = ccss_shamir_share_generator_deserialize();
    if (!v24)
    {
      memset_s(v17, 8uLL, 0, 8uLL);
      MEMORY[0x1C68E4EB0](v17, -1, -1);
      sub_1C0D6F0B8(a1, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
      return v3;
    }

    v25 = v24;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003DLL, 0x80000001C0D80460);
    v26 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v26);

    sub_1C0D01E40();
    swift_allocError();
    *(v27 + 12) = 0;
    *(v27 + 16) = 256;
    *(v27 + 4) = v25;
    *(v27 + 8) = 0;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0xE000000000000000;
    *v27 = 3;
    *(v27 + 24) = xmmword_1C0D7EF50;
    *(v27 + 40) = 0xEF293A6675626F74;
    *(v27 + 48) = 0xD00000000000006BLL;
    *(v27 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    memset_s(v17, 8uLL, 0, 8uLL);
    MEMORY[0x1C68E4EB0](v17, -1, -1);

LABEL_18:
    sub_1C0D6F0B8(a1, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C0D6ECB4(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  CKSecretSharing.HybridGenerator.generateShare(shareIndex:)(*a1, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C0D6ED8C()
{
  result = type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  if (v1 <= 0x3F)
  {
    result = sub_1C0D786AC();
    if (v2 <= 0x3F)
    {
      result = sub_1C0D787CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C0D6EE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 104))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D6EEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1C0D6EFC4()
{
  result = qword_1EBE6E0B0;
  if (!qword_1EBE6E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0B0);
  }

  return result;
}

uint64_t sub_1C0D6F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0D6F0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0D6F118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SymmetricKey.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C0CF3E1C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

CryptoKitPrivate::SymmetricKeySize __swiftcall SymmetricKeySize.init(bitCount:)(CryptoKitPrivate::SymmetricKeySize bitCount)
{
  if (bitCount.bitCount < 1 || (bitCount.bitCount & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v1->bitCount = bitCount.bitCount;
  }

  return bitCount;
}

uint64_t SymmetricKey.init(size:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 7;
  }

  if ((*a1 + 7) <= 0xE)
  {
    if (qword_1EBE6CB98 != -1)
    {
      swift_once();
    }

    v5 = off_1EBE6CBA0;

    goto LABEL_16;
  }

  if (v3 < -7)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >> 35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v4 >> 3;
  v8 = ((v4 >> 3) - 1) | (((v4 >> 3) - 1) >> 1);
  v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
  v10 = v9 | (v9 >> 8) | ((v9 | (v9 >> 8)) >> 16);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  type metadata accessor for SecureBytes.Backing();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v13;
  if ((_swift_stdlib_malloc_size(v5) - 32) < v7)
  {
LABEL_19:
    __break(1u);
    __break(1u);
  }

  result = ccrng();
  if (result)
  {
    ccrng_generate_bridge();
    result = swift_beginAccess();
    v5[2] = v7;
LABEL_16:
    *a2 = v5;
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t SymmetricKey.bitCount.getter()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 60))
  {
    return 8 * v3;
  }

  __break(1u);
  return result;
}

BOOL _s16CryptoKitPrivate12SymmetricKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  sub_1C0CF5E04(v3 + 32, v3 + 32 + *(v3 + 16), v2 + 32, v2 + 32 + v4, &v6);
  return v6;
}

uint64_t getEnumTagSinglePayload for SymmetricKeySize(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SymmetricKeySize(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0D6F528()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D6F57C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = sub_1C0D786FC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C0D7872C();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C0D786AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v29 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  v39 = a1;
  v40 = a2;
  v38 = a1;
  v41 = a2;
  sub_1C0CF6468(a1, a2);
  sub_1C0D7868C();
  sub_1C0D789EC();
  sub_1C0CF6410();
  sub_1C0D7880C();
  v33 = *(v13 + 8);
  v33(v20, v12);
  v23 = sub_1C0D7818C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1C0D7813C();
  v39 = 0x1000000000;
  v40 = v26;
  sub_1C0D6F9B8(&v39, 0);
  (*(v13 + 16))(v17, v22, v12);
  v27 = v34;
  (*(v36 + 104))(v35, *MEMORY[0x1E69664D8], v37);
  sub_1C0D7870C();
  v33(v22, v12);
  if (v3)
  {
    return sub_1C0CF448C(v38, v41);
  }

  sub_1C0CF448C(v38, v41);
  return (*(v30 + 32))(v32, v27, v31);
}

uint64_t sub_1C0D6F908()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = sub_1C0D7871C();
  v2 = v1;
  v3 = sub_1C0D6FB40(v0, v1);
  sub_1C0CF448C(v0, v2);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1C0D6F9B8(int *a1, int a2)
{
  result = sub_1C0D7826C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_1C0D7815C();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_1C0D7814C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t type metadata accessor for AesPrg()
{
  result = qword_1EBE6E0B8;
  if (!qword_1EBE6E0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0D6FAD4()
{
  result = sub_1C0D7872C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D6FB40(int64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
LABEL_8:
    if (v2 != 2)
    {
      a1 = 0;
      return bswap64(a1);
    }

    v8 = *(a1 + 16);
    v9 = sub_1C0D7812C();
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = v9;
    v11 = sub_1C0D7815C();
    if (!__OFSUB__(v8, v11))
    {
      v7 = (v8 - v11 + v10);
      sub_1C0D7814C();
      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v2)
  {
    return bswap64(a1);
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_1C0D7812C();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C0D7815C();
    if (__OFSUB__(v3, v6))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      sub_1C0D7814C();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = (v3 - v6 + v5);
    a1 = sub_1C0D7814C();
    if (v7)
    {
LABEL_12:
      a1 = *v7;
      return bswap64(a1);
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_20:
  result = sub_1C0D7814C();
  __break(1u);
  return result;
}

uint64_t sub_1C0D6FC28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1C0D78C8C();
  if (!v26)
  {
    return sub_1C0D78C1C();
  }

  v48 = v26;
  v52 = sub_1C0D78E7C();
  v39 = sub_1C0D78E8C();
  sub_1C0D78E2C();
  result = sub_1C0D78C7C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1C0D78CDC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1C0D78E6C();
      result = sub_1C0D78CAC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *PIR.BatchKeywordPirClient.init(pirParams:queryHashFunctionCount:numHashFunctionsPerTable:tableSizeForHash:numPirPerShard:secretKey:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = result[1];
  v29[0] = *result;
  v29[1] = v9;
  *v30 = result[2];
  *&v30[10] = *(result + 42);
  v11 = *a6;
  v10 = a6[1];
  if (BYTE2(v29[0]) != 2 || a5 < 1)
  {
    sub_1C0CF448C(*a6, a6[1]);
    sub_1C0D3B80C(v29);
    sub_1C0CF8DE0();
    swift_allocError();
    *v23 = 5;
    *(v23 + 4) = 1;
    swift_willThrow();
  }

  v13 = *(a4 + 16);
  if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = *&v30[16];
  if (v30[24])
  {
    v14 = 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = result;
  v31 = a3;
  if (*&v30[8] != 0x8000000000000000 || v14 != -1)
  {
    v17 = sub_1C0D33418(*&v30[8] / v14, v13 * a3);
    v18 = sub_1C0D33418(a5, v17);
    v19 = v15[1];
    v26[0] = *v15;
    v26[1] = v19;
    v27[0] = v15[2];
    *(v27 + 10) = *(v15 + 42);
    v25[0] = v11;
    v25[1] = v10;
    result = PIR.IndexPirClient.init(pirParams:secretKey:)(v26, v25, v28);
    if (!v7)
    {
      v20 = v28[3];
      *(a7 + 32) = v28[2];
      *(a7 + 48) = v20;
      *(a7 + 64) = v28[4];
      v21 = v28[1];
      *a7 = v28[0];
      *(a7 + 16) = v21;
      *(a7 + 80) = a2;
      *(a7 + 88) = 100;
      v22 = v31;
      *(a7 + 96) = v13;
      *(a7 + 104) = v22;
      *(a7 + 112) = a5;
      *(a7 + 120) = v18;
      *(a7 + 128) = a4;
      return result;
    }
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C0D70208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AesPrg();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v4[3];
  v71 = v4[2];
  v72 = v18;
  v73 = v4[4];
  v19 = v4[1];
  v69 = *v4;
  v70 = v19;
  v20 = *(v4 + 10);
  v49 = *(v4 + 11);
  v50 = v20;
  v48 = *(v4 + 12);
  v21 = *(v4 + 120);
  v67 = *(v4 + 104);
  v68 = v21;
  v63 = xmmword_1C0D7BAB0;
  v46 = a3;
  v22 = *(a3 + 8);
  v23 = a2;
  v47 = a1;
  v24 = v74;
  v25 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78B9C();
  sub_1C0CF448C(v63, *(&v63 + 1));
  sub_1C0D6F57C(v53, *(&v53 + 1), v25);
  if (v24)
  {
    return v15;
  }

  v43 = v12;
  v44 = v14;
  v74 = 0;
  v66[3] = v15;
  v66[4] = sub_1C0D73194(&qword_1EBE6E0C8, type metadata accessor for AesPrg);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  sub_1C0D731DC(v25, boxed_opaque_existential_1);
  *&v63 = v50;
  *(&v63 + 1) = v49;
  v64 = v48;
  v65 = sub_1C0D5FB80(0, 0xF000000000000000, v48);
  if (sub_1C0D19090(v47, v23))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A8, &unk_1C0D7F4D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C0D7B690;
    *(v15 + 32) = sub_1C0D18FB0();
    sub_1C0D73240(&v63);
    sub_1C0D73294(v25);
    return v15;
  }

  sub_1C0D78C7C();
  v28 = v53;
  result = sub_1C0D78C8C();
  v29 = __OFADD__(v28, result / 2);
  v15 = v28 + result / 2;
  if (v29)
  {
    __break(1u);
    goto LABEL_14;
  }

  v42 = v25;
  v30 = v4[3];
  v55 = v4[2];
  v56 = v30;
  v57 = v4[4];
  v31 = v4[1];
  v53 = *v4;
  v54 = v31;
  v58 = v50;
  v59 = v49;
  v60 = v48;
  v61 = *(v4 + 104);
  v62 = *(v4 + 120);
  result = sub_1C0D78C7C();
  if (v15 < v51)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v52 = v15;
  v32 = v44;
  sub_1C0D78CCC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v74;
  v35 = sub_1C0D70208(v32, AssociatedTypeWitness, AssociatedConformanceWitness);
  v74 = v34;
  if (v34)
  {
    (*(v45 + 8))(v32, AssociatedTypeWitness);
    sub_1C0D73240(&v63);
    sub_1C0D73294(v42);
    return v15;
  }

  v41 = v35;
  v45 = *(v45 + 8);
  (v45)(v32, AssociatedTypeWitness);
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v53 = v69;
  v54 = v70;
  v61 = v67;
  v58 = v50;
  v59 = v49;
  v60 = v48;
  v62 = v68;
  result = sub_1C0D78C9C();
  v36 = v51;
  if (v51 >= v15)
  {
    v51 = v15;
    v52 = v36;
    v15 = v43;
    sub_1C0D78CCC();
    v37 = v74;
    v38 = sub_1C0D70208(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v37)
    {

      (v45)(v15, AssociatedTypeWitness);
      sub_1C0D73240(&v63);
      sub_1C0D73294(v42);
    }

    else
    {
      v39 = v15;
      v40 = v38;
      (v45)(v39, AssociatedTypeWitness);
      *&v53 = v41;
      sub_1C0CF9F20(v40);
      sub_1C0D73240(&v63);
      sub_1C0D73294(v42);
      return v53;
    }

    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C0D70770@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  *a3 = *a1;
  a3[1] = v4;
  v11[3] = MEMORY[0x1E6969080];
  v11[4] = MEMORY[0x1E6969078];
  v11[0] = v5;
  v11[1] = v6;
  v7 = __swift_project_boxed_opaque_existential_1(v11, MEMORY[0x1E6969080]);
  v8 = *v7;
  v9 = v7[1];
  sub_1C0CF6468(v3, v4);
  sub_1C0CF6468(v5, v6);
  sub_1C0D4268C(v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1C0D70820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v166[0] = *v3;
  v166[1] = v5;
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v171 = *(v3 + 57);
  *v172 = *(v3 + 73);
  *&v172[15] = *(v3 + 88);
  v10 = *(v3 + 104);
  v11 = *(v3 + 112);
  v12 = *(v3 + 120);
  v13 = *(v3 + 128);
  v167 = v6;
  v168 = v7;
  v169 = v8;
  v170 = v9;
  v173 = v10;
  v174 = v11;
  v175 = v12;
  v176 = v13;
  v14 = v166;
  v15 = sub_1C0D70208(a1, a2, a3);
  if (v4)
  {
    return v14;
  }

  v160 = v11;
  v146 = v10;
  v148 = v12;
  if (v9)
  {
    v17 = 1;
  }

  else
  {
    v17 = v8;
  }

  if (!v17)
  {
    goto LABEL_250;
  }

  if (v7 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_252;
  }

  v18 = *(v15 + 16);
  v19 = v10;
  if (!v18)
  {

    v25 = MEMORY[0x1E69E7CC0];
    v110 = v148;
    if (v148 < 0)
    {
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    goto LABEL_163;
  }

  v20 = v15;
  *&v166[0] = MEMORY[0x1E69E7CC0];
  v21 = v7 / v17;
  sub_1C0CF7D70(0, v18, 0);
  if (!v21)
  {
    goto LABEL_251;
  }

  v22 = v21;
  v23 = 0;
  v24 = v20;
  v144 = v20;
  v145 = v20 + 32;
  v25 = *&v166[0];
  v154 = v13 + 32;
  v156 = v13;
  v158 = v21;
  v143 = v18;
  while (1)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_248;
    }

    v147 = v25;
    v149 = v23;
    v26 = *(v145 + 8 * v23);
    v27 = *(v26 + 16);
    swift_bridgeObjectRetain_n();
    v157 = v26;
    if (v27)
    {
      v28 = 0;
      v29 = (v26 + 40);
      v30 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_220;
        }

        if (v28 >= *(v156 + 16))
        {
          goto LABEL_221;
        }

        v32 = *(v29 - 1);
        v31 = *v29;
        v33 = *(v154 + 8 * v28);
        sub_1C0CF6468(v32, *v29);
        v34 = sub_1C0CF610C(v32, v31, v33, v19);
        sub_1C0CF448C(v32, v31);
        v35 = *(v34 + 16);
        v36 = *(v30 + 2);
        v37 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_222;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v37 <= *(v30 + 3) >> 1)
        {
          if (!*(v34 + 16))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v36 <= v37)
          {
            v39 = v36 + v35;
          }

          else
          {
            v39 = v36;
          }

          v30 = sub_1C0CF4C28(isUniquelyReferenced_nonNull_native, v39, 1, v30);
          if (!*(v34 + 16))
          {
LABEL_15:

            v26 = v157;
            if (v35)
            {
              goto LABEL_223;
            }

            goto LABEL_16;
          }
        }

        v40 = *(v30 + 2);
        if ((*(v30 + 3) >> 1) - v40 < v35)
        {
          goto LABEL_243;
        }

        memcpy(&v30[8 * v40 + 32], (v34 + 32), 8 * v35);

        v26 = v157;
        if (v35)
        {
          v41 = *(v30 + 2);
          v42 = __OFADD__(v41, v35);
          v43 = v41 + v35;
          if (v42)
          {
            goto LABEL_247;
          }

          *(v30 + 2) = v43;
        }

LABEL_16:
        ++v28;
        v29 += 2;
        v22 = v158;
        if (v27 == v28)
        {
          goto LABEL_33;
        }
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v150 = v149 + 1;

    v44 = 0;
    v45 = 0;
    v46 = *(v30 + 2);
    while (1)
    {
      v47 = v46 >= v45;
      if (v22 > 0)
      {
        v47 = v45 >= v46;
      }

      if (v47)
      {
        break;
      }

      v42 = __OFADD__(v45, v22);
      v45 += v22;
      if (v42)
      {
        v45 = (v45 >> 63) ^ 0x8000000000000000;
      }

      v42 = __OFADD__(v44++, 1);
      if (v42)
      {
        goto LABEL_214;
      }
    }

    v177 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7E30(0, v44, 0);
    v48 = v177;
    if (v44)
    {
      v49 = 0;
      v14 = v158;
      v162 = v46;
      while (1)
      {
        v50 = v46 >= v49;
        if (v14 > 0)
        {
          v50 = v49 >= v46;
        }

        if (v50)
        {
          goto LABEL_224;
        }

        if (__OFADD__(v49, v14))
        {
          v51 = ((v14 + v49) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v51 = v14 + v49;
        }

        if (__OFADD__(v49, v14))
        {
          goto LABEL_225;
        }

        if (*(v30 + 2) >= v14 + v49)
        {
          v52 = v14 + v49;
        }

        else
        {
          v52 = *(v30 + 2);
        }

        if (v52 < v49)
        {
          goto LABEL_226;
        }

        if (v49 < 0)
        {
          goto LABEL_227;
        }

        v177 = v48;
        v54 = *(v48 + 16);
        v53 = *(v48 + 24);
        v55 = v14;
        v56 = v48;
        sub_1C0D78BFC();
        v48 = v56;
        v14 = v55;
        if (v54 >= v53 >> 1)
        {
          sub_1C0CF7E30((v53 > 1), v54 + 1, 1);
          v14 = v158;
          v48 = v177;
        }

        *(v48 + 16) = v54 + 1;
        v57 = (v48 + 32 * v54);
        v57[4] = v30;
        v57[5] = v30 + 32;
        v57[6] = v49;
        v57[7] = (2 * v52) | 1;
        v49 = v51;
        --v44;
        v46 = v162;
        if (!v44)
        {
          goto LABEL_61;
        }
      }
    }

    v51 = 0;
    v14 = v158;
LABEL_61:
    v58 = v46 >= v51;
    if (v14 > 0)
    {
      v58 = v51 >= v46;
    }

    if (!v58)
    {
      while (1)
      {
        v79 = __OFADD__(v51, v14) ? ((v14 + v51) >> 63) ^ 0x8000000000000000 : v14 + v51;
        if (__OFADD__(v51, v14))
        {
          break;
        }

        if (*(v30 + 2) >= v14 + v51)
        {
          v80 = v14 + v51;
        }

        else
        {
          v80 = *(v30 + 2);
        }

        if (v80 < v51)
        {
          goto LABEL_236;
        }

        if (v51 < 0)
        {
          goto LABEL_237;
        }

        v177 = v48;
        v82 = *(v48 + 16);
        v81 = *(v48 + 24);
        v83 = v48;
        sub_1C0D78BFC();
        v48 = v83;
        if (v82 >= v81 >> 1)
        {
          sub_1C0CF7E30((v81 > 1), v82 + 1, 1);
          v14 = v158;
          v48 = v177;
        }

        *(v48 + 16) = v82 + 1;
        v84 = (v48 + 32 * v82);
        v84[4] = v30;
        v84[5] = v30 + 32;
        v84[6] = v51;
        v84[7] = (2 * v80) | 1;
        v85 = v46 >= v79;
        if (v14 > 0)
        {
          v85 = v79 >= v46;
        }

        v51 = v79;
        if (v85)
        {
          goto LABEL_64;
        }
      }

LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

LABEL_64:
    v151 = v48;

    v59 = *(v151 + 16);
    if (v59)
    {
      v177 = MEMORY[0x1E69E7CC0];
      v14 = &v177;
      sub_1C0CF7DF0(0, v59, 0);
      v60 = v177;
      v61 = (v151 + 56);
      while (1)
      {
        v163 = v60;
        v62 = *(v61 - 3);
        v63 = *(v61 - 2);
        v64 = *(v61 - 1);
        v65 = *v61;
        if ((*v61 & 1) == 0)
        {
          break;
        }

        v67 = *(v61 - 1);
        v152 = *(v61 - 2);
        v14 = sub_1C0D78F4C();
        swift_unknownObjectRetain_n();
        v74 = swift_dynamicCastClass();
        if (!v74)
        {
          swift_unknownObjectRelease();
          v74 = MEMORY[0x1E69E7CC0];
        }

        v75 = *(v74 + 16);
        swift_unknownObjectRelease();

        v66 = v65 >> 1;
        v42 = __OFSUB__(v65 >> 1, v67);
        v68 = (v65 >> 1) - v67;
        if (v42)
        {
          goto LABEL_246;
        }

        if (v75 != v68)
        {
          swift_unknownObjectRelease();
          v63 = v152;
          if (!v68)
          {
            goto LABEL_82;
          }

LABEL_72:
          v14 = (8 * v68);
          if (v68 < 1)
          {
            v71 = MEMORY[0x1E69E7CC0];
            if (v67 == v66)
            {
              goto LABEL_254;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D090, &qword_1C0D7B730);
            v71 = swift_allocObject();
            v72 = _swift_stdlib_malloc_size(v71);
            v73 = v72 - 32;
            if (v72 < 32)
            {
              v73 = v72 - 25;
            }

            v71[2] = v68;
            v71[3] = 2 * (v73 >> 3);
            if (v67 == v66)
            {
              goto LABEL_254;
            }
          }

          memcpy(v71 + 4, (v63 + 8 * v67), 8 * v68);
LABEL_85:
          swift_unknownObjectRelease();
          goto LABEL_86;
        }

        v71 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v71)
        {
          goto LABEL_82;
        }

LABEL_86:
        v60 = v163;
        v177 = v163;
        v77 = *(v163 + 16);
        v76 = *(v163 + 24);
        if (v77 >= v76 >> 1)
        {
          v14 = &v177;
          sub_1C0CF7DF0((v76 > 1), v77 + 1, 1);
          v60 = v177;
        }

        v61 += 4;
        *(v60 + 16) = v77 + 1;
        *(v60 + 8 * v77 + 32) = v71;
        if (!--v59)
        {

          v78 = v60;
          goto LABEL_108;
        }
      }

      v66 = v65 >> 1;
      v67 = *(v61 - 1);
      v42 = __OFSUB__(v65 >> 1, v64);
      v68 = (v65 >> 1) - v64;
      v69 = v42;
      v70 = *(v61 - 3);
      swift_unknownObjectRetain();
      if (v69)
      {
        goto LABEL_245;
      }

      if (v68)
      {
        goto LABEL_72;
      }

LABEL_82:
      v71 = MEMORY[0x1E69E7CC0];
      goto LABEL_85;
    }

    v78 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v86 = v78;
    v87 = *(v78 + 16);
    if (sub_1C0D33418(v160, v87) != v148)
    {

      sub_1C0CF8DE0();
      swift_allocError();
      *v142 = 5;
      *(v142 + 4) = 1;
      swift_willThrow();

      return v14;
    }

    if (!v160)
    {
      goto LABEL_249;
    }

    v88 = 0;
    v89 = 0;
    while (1)
    {
      v90 = v87 >= v89;
      if (v160 > 0)
      {
        v90 = v89 >= v87;
      }

      if (v90)
      {
        break;
      }

      v42 = __OFADD__(v89, v160);
      v89 += v160;
      if (v42)
      {
        v89 = (v89 >> 63) ^ 0x8000000000000000;
      }

      v42 = __OFADD__(v88++, 1);
      if (v42)
      {
        goto LABEL_215;
      }
    }

    v177 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7DB0(0, v88, 0);
    v91 = v177;
    v164 = v87;
    if (v88)
    {
      v92 = 0;
      v93 = *(v86 + 16);
      v153 = v93;
      v22 = v158;
      v94 = v160;
      while (1)
      {
        v95 = v87 >= v92;
        if (v94 > 0)
        {
          v95 = v92 >= v87;
        }

        if (v95)
        {
          goto LABEL_228;
        }

        if (__OFADD__(v92, v94))
        {
          v96 = ((v92 + v94) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v96 = v92 + v94;
        }

        if (__OFADD__(v92, v94))
        {
          goto LABEL_229;
        }

        if (*(v86 + 16) >= v92 + v94)
        {
          v97 = v92 + v94;
        }

        else
        {
          v97 = *(v86 + 16);
        }

        if (v97 < v92)
        {
          goto LABEL_230;
        }

        if (v93 < v92)
        {
          goto LABEL_231;
        }

        if (v92 < 0)
        {
          goto LABEL_232;
        }

        if (v93 < v97)
        {
          goto LABEL_233;
        }

        v177 = v91;
        v99 = *(v91 + 16);
        v98 = *(v91 + 24);
        sub_1C0D78BFC();
        if (v99 >= v98 >> 1)
        {
          sub_1C0CF7DB0((v98 > 1), v99 + 1, 1);
          v22 = v158;
          v91 = v177;
        }

        *(v91 + 16) = v99 + 1;
        v100 = (v91 + 32 * v99);
        v93 = v153;
        v100[4] = v86;
        v100[5] = v86 + 32;
        v100[6] = v92;
        v100[7] = (2 * v97) | 1;
        v92 = v96;
        --v88;
        v94 = v160;
        v87 = v164;
        if (!v88)
        {
          goto LABEL_140;
        }
      }
    }

    v96 = 0;
    v22 = v158;
    v94 = v160;
LABEL_140:
    v101 = v87 >= v96;
    if (v94 > 0)
    {
      v101 = v96 >= v87;
    }

    if (!v101)
    {
      break;
    }

LABEL_143:

    v25 = v147;
    *&v166[0] = v147;
    v103 = *(v147 + 16);
    v102 = *(v147 + 24);
    if (v103 >= v102 >> 1)
    {
      sub_1C0CF7D70((v102 > 1), v103 + 1, 1);
      v22 = v158;
      v25 = *&v166[0];
    }

    *(v25 + 16) = v103 + 1;
    *(v25 + 8 * v103 + 32) = v91;
    v24 = v144;
    v23 = v150;
    v19 = v146;
    if (v150 == v143)
    {

      v110 = v148;
      if (v148 < 0)
      {
        goto LABEL_213;
      }

LABEL_163:
      if (v110)
      {
        *&v166[0] = MEMORY[0x1E69E7CC0];
        sub_1C0CF7D30(0, v110, 0);
        v111 = 0;
        v14 = *&v166[0];
        v161 = *(v25 + 16);
        while (1)
        {
          v155 = v14;
          if (v161)
          {
            break;
          }

          v113 = MEMORY[0x1E69E7CC0];
LABEL_206:
          v14 = v155;
          *&v166[0] = v155;
          v141 = v155[2];
          v140 = v155[3];
          if (v141 >= v140 >> 1)
          {
            sub_1C0CF7D30((v140 > 1), v141 + 1, 1);
            v14 = *&v166[0];
          }

          ++v111;
          v14[2] = v141 + 1;
          v14[v141 + 4] = v113;
          if (v111 == v148)
          {

            return v14;
          }
        }

        v112 = 0;
        v113 = MEMORY[0x1E69E7CC0];
        v159 = v111;
        while (1)
        {
          if (v112 >= *(v25 + 16))
          {
            goto LABEL_216;
          }

          v114 = *(v25 + 32 + 8 * v112);
          if (v111 >= *(v114 + 16))
          {
            goto LABEL_217;
          }

          v165 = v113;
          v115 = (v114 + 32 * v111);
          v116 = v115[4];
          v117 = v115[5];
          v119 = v115[6];
          v118 = v115[7];
          v120 = v118 >> 1;
          if (v118)
          {
            v122 = v119;
            sub_1C0D78F4C();
            swift_unknownObjectRetain_n();
            sub_1C0D78BFC();
            v128 = swift_dynamicCastClass();
            if (!v128)
            {
              swift_unknownObjectRelease();
              v128 = MEMORY[0x1E69E7CC0];
            }

            v129 = *(v128 + 16);

            v121 = v120;
            v42 = __OFSUB__(v120, v122);
            v123 = v120 - v122;
            if (v42)
            {
              goto LABEL_242;
            }

            swift_unknownObjectRelease();
            if (v129 == v123)
            {

              v125 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v125)
              {
                goto LABEL_193;
              }

              swift_unknownObjectRelease();
              goto LABEL_192;
            }

            swift_unknownObjectRelease();
            if (!v123)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v121 = v118 >> 1;
            v122 = v119;
            v42 = __OFSUB__(v120, v119);
            v123 = v120 - v119;
            v124 = v42;
            swift_unknownObjectRetain();
            sub_1C0D78BFC();
            if (v124)
            {
              goto LABEL_241;
            }

            if (!v123)
            {
LABEL_191:
              swift_unknownObjectRelease();

LABEL_192:
              v125 = MEMORY[0x1E69E7CC0];
              goto LABEL_193;
            }
          }

          if (v123 < 1)
          {
            v125 = MEMORY[0x1E69E7CC0];
            if (v122 == v121)
            {
              goto LABEL_253;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D098, &unk_1C0D7F4C0);
            v125 = swift_allocObject();
            v126 = _swift_stdlib_malloc_size(v125);
            v127 = v126 - 32;
            if (v126 < 32)
            {
              v127 = v126 - 25;
            }

            v125[2] = v123;
            v125[3] = 2 * (v127 >> 3);
            if (v122 == v121)
            {
              goto LABEL_253;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
          swift_arrayInitWithCopy();
          swift_unknownObjectRelease();

LABEL_193:
          v130 = v125[2];
          v113 = v165;
          v131 = v165[2];
          v132 = v131 + v130;
          if (__OFADD__(v131, v130))
          {
            goto LABEL_218;
          }

          v133 = swift_isUniquelyReferenced_nonNull_native();
          if ((v133 & 1) == 0 || (v134 = v165[3], v132 > (v134 >> 1)))
          {
            if (v131 <= v132)
            {
              v135 = v131 + v130;
            }

            else
            {
              v135 = v131;
            }

            v113 = sub_1C0CF541C(v133, v135, 1, v165);
            v134 = v113[3];
          }

          v136 = v113[2];
          v137 = v125[2];

          if (v137)
          {
            if (((v134 >> 1) - v136) < v130)
            {
              goto LABEL_234;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
            swift_arrayInitWithCopy();

            v111 = v159;
            if (v130)
            {
              v138 = v113[2];
              v42 = __OFADD__(v138, v130);
              v139 = v138 + v130;
              if (v42)
              {
                goto LABEL_244;
              }

              v113[2] = v139;
            }
          }

          else
          {

            v111 = v159;
            if (v130)
            {
              goto LABEL_219;
            }
          }

          if (v161 == ++v112)
          {
            goto LABEL_206;
          }
        }
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  while (1)
  {
    v104 = __OFADD__(v96, v94) ? ((v96 + v94) >> 63) ^ 0x8000000000000000 : v96 + v94;
    if (__OFADD__(v96, v94))
    {
      break;
    }

    if (*(v86 + 16) >= v96 + v94)
    {
      v105 = v96 + v94;
    }

    else
    {
      v105 = *(v86 + 16);
    }

    if (v105 < v96)
    {
      goto LABEL_239;
    }

    if (v96 < 0)
    {
      goto LABEL_240;
    }

    v177 = v91;
    v107 = *(v91 + 16);
    v106 = *(v91 + 24);
    sub_1C0D78BFC();
    if (v107 >= v106 >> 1)
    {
      sub_1C0CF7DB0((v106 > 1), v107 + 1, 1);
      v22 = v158;
      v91 = v177;
    }

    *(v91 + 16) = v107 + 1;
    v108 = (v91 + 32 * v107);
    v108[4] = v86;
    v108[5] = v86 + 32;
    v108[6] = v96;
    v108[7] = (2 * v105) | 1;
    v94 = v160;
    v109 = v164 >= v104;
    if (v160 > 0)
    {
      v109 = v104 >= v164;
    }

    v96 = v104;
    if (v109)
    {
      goto LABEL_143;
    }
  }

LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  swift_unknownObjectRelease();

  __break(1u);
LABEL_254:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t PIR.BatchKeywordPirClient.queries<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[5];
  v6 = v3[7];
  v95 = v3[6];
  v96 = v6;
  v7 = v3[1];
  v8 = v3[3];
  v91 = v3[2];
  v92 = v8;
  v9 = v3[3];
  v10 = v3[5];
  v93 = v3[4];
  v94 = v10;
  v11 = v3[1];
  v89 = *v3;
  v90 = v11;
  v85 = v5;
  v86 = v95;
  v87 = v3[7];
  v81 = v7;
  v82 = v91;
  v83 = v9;
  v84 = v93;
  v97 = *(v3 + 16);
  v88 = *(v3 + 16);
  v80 = v89;
  result = sub_1C0D70820(a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v13 = *(result + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v79 = MEMORY[0x1E69E7CC0];
  v69 = result;
  v66 = v13;
  sub_1C0CF7E70(0, v13, 0);
  result = v69;
  v14 = 0;
  v15 = v79;
  v16 = v69 + 32;
  while (1)
  {
    if (v14 >= *(result + 16))
    {
      goto LABEL_105;
    }

    v67 = v14;
    v68 = v15;
    v17 = *(*(v16 + 8 * v14) + 16);
    result = sub_1C0D78BFC();
    if (v17)
    {
      break;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_80:

    v15 = v68;
    v79 = v68;
    v64 = *(v68 + 16);
    v63 = *(v68 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1C0CF7E70((v63 > 1), v64 + 1, 1);
      v15 = v79;
    }

    v14 = v67 + 1;
    *(v15 + 16) = v64 + 1;
    *(v15 + 8 * v64 + 32) = v19;
    v16 = v69 + 32;
    result = v69;
    if (v67 + 1 == v66)
    {
      v65 = v15;

      return v65;
    }
  }

  v18 = 0;
  v71 = result + 32;
  v19 = MEMORY[0x1E69E7CC0];
  v70 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return result;
    }

    v21 = *(v71 + 8 * v18);
    v72 = v18;
    if (BYTE2(v89) == 2)
    {
      v83 = v92;
      v84 = v93;
      v81 = v90;
      v82 = v91;
      v80 = v89;
      sub_1C0D78BFC();
      sub_1C0D3B974(&v89, v78);
      v22 = sub_1C0D5BA94(v21);
      goto LABEL_67;
    }

    v74 = *(v21 + 16);
    if (v74)
    {
      break;
    }

    sub_1C0D3B974(&v89, &v80);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v22 = sub_1C0D52840(v25, v93, *(&v93 + 1), v26);

LABEL_67:

    result = sub_1C0D3B9D0(&v89);
    v57 = *(v22 + 16);
    v58 = *(v19 + 16);
    v59 = v58 + v57;
    if (__OFADD__(v58, v57))
    {
      goto LABEL_102;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v59 > *(v19 + 24) >> 1)
    {
      if (v58 <= v59)
      {
        v60 = v58 + v57;
      }

      else
      {
        v60 = v58;
      }

      result = sub_1C0CF51C4(result, v60, 1, v19);
      v19 = result;
    }

    if (*(v22 + 16))
    {
      if ((*(v19 + 24) >> 1) - *(v19 + 16) < v57)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      result = v70;
      v20 = v72;
      if (v57)
      {
        v61 = *(v19 + 16);
        v39 = __OFADD__(v61, v57);
        v62 = v61 + v57;
        if (v39)
        {
          goto LABEL_107;
        }

        *(v19 + 16) = v62;
      }
    }

    else
    {

      result = v70;
      v20 = v72;
      if (v57)
      {
        goto LABEL_103;
      }
    }

    v18 = v20 + 1;
    if (v18 == v17)
    {
      goto LABEL_80;
    }
  }

  v77 = v91;
  if (!v91)
  {
    goto LABEL_106;
  }

  v23 = *(&v90 + 1);
  v75 = v21 + 32;
  sub_1C0D78BFC();
  result = sub_1C0D3B974(&v89, &v80);
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v73 = v19;
  while (1)
  {
    v27 = *(v75 + 8 * v24);
    if (v27 == 0x8000000000000000 && v77 == -1)
    {
      goto LABEL_98;
    }

    v29 = *(v23 + 16);
    v98 = v24;
    if (v29)
    {
      break;
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v42 = v34[2];
    v43 = *(v25 + 16);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v44 <= *(v25 + 24) >> 1)
    {
      if (v34[2])
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v48 = v43 + v42;
      }

      else
      {
        v48 = v43;
      }

      result = sub_1C0CF4C28(result, v48, 1, v25);
      v25 = result;
      if (v34[2])
      {
LABEL_43:
        v45 = *(v25 + 16);
        if ((*(v25 + 24) >> 1) - v45 < v42)
        {
          goto LABEL_96;
        }

        memcpy((v25 + 8 * v45 + 32), v34 + 4, 8 * v42);

        if (v42)
        {
          v46 = *(v25 + 16);
          v39 = __OFADD__(v46, v42);
          v47 = v46 + v42;
          if (v39)
          {
            goto LABEL_99;
          }

          *(v25 + 16) = v47;
        }

        goto LABEL_52;
      }
    }

    if (v42)
    {
      goto LABEL_93;
    }

LABEL_52:
    v49 = *(v23 + 16);
    v50 = *(v26 + 16);
    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_94;
    }

    sub_1C0D78BFC();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v51 > *(v26 + 24) >> 1)
    {
      if (v50 <= v51)
      {
        v52 = v50 + v49;
      }

      else
      {
        v52 = v50;
      }

      result = sub_1C0CF4C28(result, v52, 1, v26);
      v26 = result;
    }

    v53 = v98;
    if (*(v23 + 16))
    {
      v54 = *(v26 + 16);
      if ((*(v26 + 24) >> 1) - v54 < v49)
      {
        goto LABEL_97;
      }

      memcpy((v26 + 8 * v54 + 32), (v23 + 32), 8 * v49);

      if (v49)
      {
        v55 = *(v26 + 16);
        v39 = __OFADD__(v55, v49);
        v56 = v55 + v49;
        if (v39)
        {
          goto LABEL_100;
        }

        *(v26 + 16) = v56;
      }
    }

    else
    {

      if (v49)
      {
        goto LABEL_95;
      }
    }

    v24 = v53 + 1;
    if (v24 == v74)
    {

      goto LABEL_66;
    }
  }

  v76 = v26;
  v30 = 0;
  v31 = 1;
  v32 = v27 / v77;
  do
  {
    v33 = *(v23 + 8 * v30 + 32);
    if ((v31 * v33) >> 64 != (v31 * v33) >> 63)
    {
      __break(1u);
      goto LABEL_86;
    }

    v31 *= v33;
    ++v30;
  }

  while (v29 != v30);
  *&v80 = MEMORY[0x1E69E7CC0];
  sub_1C0D78BFC();
  sub_1C0CF7C60(0, v29, 0);
  v34 = v80;
  v35 = 32;
  while (1)
  {
    v36 = *(v23 + v35);
    if (!v36)
    {
      break;
    }

    if (v31 == 0x8000000000000000 && v36 == -1)
    {
      goto LABEL_90;
    }

    v31 /= v36;
    if (!v31)
    {
      goto LABEL_87;
    }

    if (v32 == 0x8000000000000000 && v31 == -1)
    {
      goto LABEL_91;
    }

    v37 = v32 / v31;
    v38 = v32 / v31 * v31;
    if ((v32 / v31 * v31) >> 64 != v38 >> 63)
    {
      goto LABEL_88;
    }

    v39 = __OFSUB__(v32, v38);
    v32 %= v31;
    if (v39)
    {
      goto LABEL_89;
    }

    *&v80 = v34;
    v41 = v34[2];
    v40 = v34[3];
    if (v41 >= v40 >> 1)
    {
      sub_1C0CF7C60((v40 > 1), v41 + 1, 1);
      v34 = v80;
    }

    v34[2] = v41 + 1;
    v34[v41 + 4] = v37;
    v35 += 8;
    if (!--v29)
    {

      v19 = v73;
      v26 = v76;
      goto LABEL_39;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);

  sub_1C0D3B9D0(&v89);
}

uint64_t PIR.BatchKeywordPirClient.decrypt<A>(replies:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v176 = *MEMORY[0x1E69E9840];
  v10 = v4[5];
  v11 = v4[7];
  v173 = v4[6];
  v174 = v11;
  v12 = v4[1];
  v13 = v4[3];
  v169 = v4[2];
  v170 = v13;
  v14 = v4[3];
  v15 = v4[5];
  v171 = v4[4];
  v172 = v15;
  v16 = v4[1];
  v167 = *v4;
  v168 = v16;
  v17 = v4[7];
  v164 = v173;
  v165 = v17;
  v160 = v169;
  v161 = v14;
  v162 = v171;
  v163 = v10;
  v175 = *(v4 + 16);
  v166 = *(v4 + 16);
  v158 = v167;
  v159 = v12;
  v18 = sub_1C0D70820(a2, a3, a4);
  if (v5)
  {
    goto LABEL_108;
  }

  v20 = v18;
  v21 = sub_1C0D6FC28(sub_1C0D72A0C, 0, a3, MEMORY[0x1E69E76D8], MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v19);
  v22 = sub_1C0D78C8C();
  v6 = sub_1C0D5FB80(0, 0xF000000000000000, v22);
  v150 = v20;
  v151 = 0;
  v152 = a1;
  v153 = 0;
  v154 = 0;
  sub_1C0D78BFC();
  v23 = sub_1C0D3C214();
  v142 = v24;
  if (!v23)
  {
LABEL_103:

LABEL_108:
    v118 = *MEMORY[0x1E69E9840];
    return v6;
  }

  v25 = v23;
  v141 = v21 + 32;
  v129 = v21;
  while (1)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      break;
    }

LABEL_102:

    v25 = sub_1C0D3C214();
    v142 = v115;
    if (!v25)
    {
      goto LABEL_103;
    }
  }

  v27 = 0;
  v28 = v25 + 32;
LABEL_6:
  while (2)
  {
    if (v27 >= v26)
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v29 = *(v142 + 16);
    if (v27 == v29)
    {
      goto LABEL_102;
    }

    if (v27 >= v29)
    {
      goto LABEL_112;
    }

    v30 = *(v28 + 8 * v27);
    v31 = *(v142 + 32 + 8 * v27);
    v160 = v169;
    v161 = v170;
    v162 = v171;
    v158 = v167;
    v159 = v168;
    sub_1C0D78BFC();
    sub_1C0D78BFC();
    sub_1C0D3B974(&v167, v157);
    PIR.IndexPirClient.decryptVectorizedPirReply(reply:indices:)(v31, v30);
    v33 = v32;
    v157[2] = v160;
    v157[3] = v161;
    v157[4] = v162;
    v157[0] = v158;
    v157[1] = v159;
    sub_1C0D3B9D0(v157);

    if (!*(v33 + 16))
    {
      ++v27;

      v26 = *(v25 + 16);
      if (v27 == v26)
      {
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

  v34 = 0;
  v124 = v33;
  v125 = v33 + 32;
  v120 = *(v33 + 16);
  v123 = v25;
  v121 = v28;
  while (1)
  {
    if (v34 >= *(v33 + 16))
    {
      goto LABEL_115;
    }

    v35 = (v125 + 16 * v34);
    v36 = v35[1];
    v135 = *v35;
    v37 = v36 >> 62;
    v127 = v6;
    v128 = v36;
    v126 = v34;
    if ((v36 >> 62) > 1)
    {
      v38 = *v35;
      if (v37 != 2)
      {
LABEL_109:
        v57 = v35[1];
        v6 = v38;
        sub_1C0CF448C(v38, v36);
LABEL_110:

        sub_1C0CF8DE0();
        swift_allocError();
        *v119 = 5;
        *(v119 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v6, v57);
        goto LABEL_107;
      }

      v55 = *(v135 + 16);
      v56 = *(v135 + 24);
    }

    else
    {
      if (!v37)
      {
        v38 = *v35;
        if ((v36 & 0xFF000000000000) == 0)
        {
          goto LABEL_109;
        }

        v144 = *v35;
        v145 = v36;
        v146 = BYTE2(v36);
        v147 = BYTE3(v36);
        v148 = BYTE4(v36);
        v149 = BYTE5(v36);
        if (v135)
        {
          v39 = 0;
          v40 = BYTE6(v36);
          v41 = 1;
          v42 = MEMORY[0x1E69E7CC0];
          v130 = BYTE6(v36);
          while (1)
          {
            v6 = v41 + 10;
            if (v40 < v41 + 10)
            {
              sub_1C0CF8DE0();
              swift_allocError();
              *v116 = 5;
              *(v116 + 4) = 1;
              swift_willThrow();
              goto LABEL_106;
            }

            v136 = *(&v144 + v41);
            v43 = *(&v144 + v41 + 8);
            v143 = v41 + 10;
            if (v43)
            {
              if (v43 <= 0xE)
              {
                v48 = 0;
                v49 = v122 & 0xF00000000000000 | (v43 << 48);
                v122 = v49;
              }

              else
              {
                v44 = sub_1C0D7818C();
                v45 = *(v44 + 48);
                v46 = *(v44 + 52);
                swift_allocObject();
                v47 = sub_1C0D7813C();
                v48 = v43 << 32;
                v49 = v47 | 0x4000000000000000;
              }
            }

            else
            {
              v48 = 0;
              v49 = 0xC000000000000000;
            }

            v155 = v48;
            v156 = v49;
            v41 = v6 + v43;
            if (v40 < v6 + v43)
            {
              break;
            }

            if (v41 < v6)
            {
              goto LABEL_114;
            }

            sub_1C0D72C50(&v155, &v144, &v144 + v40, &v143, v43);
            v143 = v6 + v43;
            v50 = v155;
            v51 = v156;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_1C0CF4FA0(0, *(v42 + 2) + 1, 1, v42);
            }

            v53 = *(v42 + 2);
            v52 = *(v42 + 3);
            if (v53 >= v52 >> 1)
            {
              v42 = sub_1C0CF4FA0((v52 > 1), v53 + 1, 1, v42);
            }

            ++v39;
            *(v42 + 2) = v53 + 1;
            v54 = &v42[24 * v53];
            *(v54 + 4) = v136;
            *(v54 + 5) = v50;
            *(v54 + 6) = v51;
            v40 = v130;
            if (v39 == v135)
            {
              goto LABEL_73;
            }
          }

          sub_1C0CF8DE0();
          swift_allocError();
          *v117 = 5;
          *(v117 + 4) = 1;
          swift_willThrow();
          sub_1C0CF448C(v155, v156);
LABEL_106:

          sub_1C0CF448C(v135, v128);
          sub_1C0CF448C(v135, v128);

LABEL_107:

          goto LABEL_108;
        }

        goto LABEL_72;
      }

      v38 = *v35;
      v55 = v135;
      v56 = v135 >> 32;
    }

    v57 = v35[1];
    v6 = v38;
    sub_1C0CF6468(v38, v36);
    if (v55 == v56)
    {
      goto LABEL_110;
    }

    sub_1C0CF6468(v6, v57);
    if (v37 == 2)
    {
      break;
    }

    if (v6 >> 32 < v6)
    {
      goto LABEL_117;
    }

    v64 = sub_1C0D7812C();
    if (!v64)
    {
      goto LABEL_122;
    }

    v65 = v64;
    v66 = sub_1C0D7815C();
    if (__OFSUB__(v6, v66))
    {
      goto LABEL_119;
    }

    v67 = (v6 - v66 + v65);
    result = sub_1C0D7814C();
    if (!v67)
    {
      goto LABEL_123;
    }

    if (result >= (v6 >> 32) - v6)
    {
      v69 = (v6 >> 32) - v6;
    }

    else
    {
      v69 = result;
    }

    v133 = v69;
    v70 = v67;
    v71 = *v67;
    v155 = 1;
    v131 = v71;
    if (v71)
    {
      v72 = 0;
      v138 = MEMORY[0x1E69E7CC0];
      do
      {
        v73 = v70;
        v74 = sub_1C0D3C6C4(v70, v70 + v133, &v155);
        v76 = v75;
        v78 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_1C0CF4FA0(0, *(v138 + 2) + 1, 1, v138);
        }

        v80 = *(v138 + 2);
        v79 = *(v138 + 3);
        if (v80 >= v79 >> 1)
        {
          v138 = sub_1C0CF4FA0((v79 > 1), v80 + 1, 1, v138);
        }

        ++v72;
        *(v138 + 2) = v80 + 1;
        v81 = &v138[24 * v80];
        *(v81 + 4) = v74;
        *(v81 + 5) = v76;
        *(v81 + 6) = v78;
        v70 = v73;
      }

      while (v72 != v131);
    }

    else
    {
      v138 = MEMORY[0x1E69E7CC0];
    }

    sub_1C0CF448C(v135, v128);
    v42 = v138;
LABEL_76:
    v95 = *(v129 + 16);
    if (v95)
    {
      v155 = MEMORY[0x1E69E7CC0];
      sub_1C0CF7EB0(0, v95, 0);
      v96 = 0;
      v97 = v155;
      do
      {
        v98 = *(v42 + 2) + 1;
        v99 = (v42 + 32);
        while (--v98)
        {
          v100 = v99 + 3;
          v101 = *v99;
          v99 += 3;
          if (v101 == *(v141 + 8 * v96))
          {
            v139 = *(v100 - 1);
            sub_1C0CF6468(*(v100 - 2), *(v100 - 1));
            v102 = v139;
            goto LABEL_83;
          }
        }

        v102 = xmmword_1C0D7D9D0;
LABEL_83:
        v155 = v97;
        v104 = *(v97 + 16);
        v103 = *(v97 + 24);
        if (v104 >= v103 >> 1)
        {
          v140 = v102;
          sub_1C0CF7EB0((v103 > 1), v104 + 1, 1);
          v102 = v140;
          v97 = v155;
        }

        ++v96;
        *(v97 + 16) = v104 + 1;
        *(v97 + 16 * v104 + 32) = v102;
      }

      while (v96 != v95);

      v105 = *(v97 + 16);
      if (!v105)
      {
        goto LABEL_13;
      }

LABEL_89:
      v106 = 0;
      while (1)
      {
        v107 = 2 * v106;
        v108 = v106;
        while (1)
        {
          if (v108 >= *(v97 + 16))
          {
            goto LABEL_113;
          }

          v109 = *(v97 + v107 * 8 + 32);
          v110 = *(v97 + v107 * 8 + 40);
          v106 = v108 + 1;
          sub_1C0D134D0(v109, v110);
          if (v110 >> 60 != 15)
          {
            break;
          }

          v107 += 2;
          ++v108;
          if (v105 == v106)
          {
            goto LABEL_13;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1C0CFD698(v127);
        }

        if (v108 >= v127[2])
        {
          break;
        }

        v111 = &v127[v107];
        v112 = v127[v107 + 4];
        v113 = v127[v107 + 5];
        v111[4] = v109;
        v111[5] = v110;
        sub_1C0D13830(v112, v113);
        if (v105 - 1 == v108)
        {
          goto LABEL_13;
        }
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
    }

    v97 = MEMORY[0x1E69E7CC0];
    v105 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v105)
    {
      goto LABEL_89;
    }

LABEL_13:
    v34 = v126 + 1;

    sub_1C0CF448C(v135, v128);
    v28 = v121;
    v6 = v127;
    v25 = v123;
    v33 = v124;
    if (v126 + 1 == v120)
    {

      v26 = *(v123 + 16);
      if (v26 - 1 == v27++)
      {
        goto LABEL_102;
      }

      goto LABEL_6;
    }
  }

  v58 = *(v6 + 16);
  v59 = *(v6 + 24);
  v60 = sub_1C0D7812C();
  if (v60)
  {
    v61 = v60;
    v62 = sub_1C0D7815C();
    if (__OFSUB__(v58, v62))
    {
      goto LABEL_120;
    }

    v137 = (v58 - v62 + v61);
    v63 = v59 - v58;
    if (__OFSUB__(v59, v58))
    {
      goto LABEL_118;
    }
  }

  else
  {
    v137 = 0;
    v63 = v59 - v58;
    if (__OFSUB__(v59, v58))
    {
      goto LABEL_118;
    }
  }

  v82 = sub_1C0D7814C();
  if (v137)
  {
    if (v82 >= v63)
    {
      v83 = v63;
    }

    else
    {
      v83 = v82;
    }

    v134 = v83;
    v84 = v137;
    v85 = *v137;
    v155 = 1;
    v132 = v85;
    if (v85)
    {
      v86 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v87 = sub_1C0D3C6C4(v84, v84 + v134, &v155);
        v89 = v88;
        v91 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1C0CF4FA0(0, *(v42 + 2) + 1, 1, v42);
        }

        v93 = *(v42 + 2);
        v92 = *(v42 + 3);
        if (v93 >= v92 >> 1)
        {
          v42 = sub_1C0CF4FA0((v92 > 1), v93 + 1, 1, v42);
        }

        ++v86;
        *(v42 + 2) = v93 + 1;
        v94 = &v42[24 * v93];
        *(v94 + 4) = v87;
        *(v94 + 5) = v89;
        *(v94 + 6) = v91;
        v84 = v137;
      }

      while (v86 != v132);
      goto LABEL_73;
    }

LABEL_72:
    v42 = MEMORY[0x1E69E7CC0];
LABEL_73:
    sub_1C0CF448C(v135, v128);
    goto LABEL_76;
  }

  __break(1u);
LABEL_122:
  result = sub_1C0D7814C();
LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_1C0D72A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v3 = sub_1C0D789EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C0D7865C();
  v16 = *(v8 - 8);
  v17 = v8;
  v9 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  sub_1C0D73194(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
  sub_1C0D7863C();
  sub_1C0CF6468(v12, v13);
  sub_1C0D3C2C8(v12, v13);
  sub_1C0CF448C(v12, v13);
  sub_1C0D7862C();
  (*(v4 + 8))(v7, v3);
  sub_1C0D7864C();
  result = (*(v16 + 8))(v11, v17);
  *v18 = v19;
  return result;
}

uint64_t sub_1C0D72C50(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v43 + 7) = 0;
      *&v43 = 0;
      v26 = *a4;
      v27 = *a4 + a5;
      if (!__OFADD__(*a4, a5))
      {
        if (v27 >= v26)
        {
          result = sub_1C0D01960(v26, v27, a2, a3, &v43);
          goto LABEL_28;
        }

        goto LABEL_34;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_1C0CF448C(v9, v8);
    *&v43 = v9;
    *(&v43 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v16 = *(&v43 + 1);
    v17 = *(v43 + 16);
    v18 = *(v43 + 24);
    result = sub_1C0D7812C();
    if (result)
    {
      v19 = result;
      v20 = sub_1C0D7815C();
      v21 = v17 - v20;
      if (!__OFSUB__(v17, v20))
      {
        if (!__OFSUB__(v18, v17))
        {
          sub_1C0D7814C();
          v22 = *a4;
          v23 = *a4 + a5;
          if (!__OFADD__(*a4, a5))
          {
            if (v23 >= v22)
            {
              result = sub_1C0D01960(v22, v23, a2, a3, (v19 + v21));
              *a1 = v43;
              a1[1] = v16 | 0x8000000000000000;
              goto LABEL_28;
            }

            goto LABEL_39;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    if (!v10)
    {
      sub_1C0CF448C(v9, v8);
      *&v43 = v9;
      WORD4(v43) = v8;
      BYTE10(v43) = BYTE2(v8);
      BYTE11(v43) = BYTE3(v8);
      BYTE12(v43) = BYTE4(v8);
      BYTE13(v43) = BYTE5(v8);
      BYTE14(v43) = BYTE6(v8);
      v11 = *a4;
      v12 = *a4 + a5;
      if (!__OFADD__(*a4, a5))
      {
        if (v12 >= v11)
        {
          result = sub_1C0D01960(v11, v12, a2, a3, &v43);
          v14 = DWORD2(v43) | ((WORD6(v43) | (BYTE14(v43) << 16)) << 32);
          *a1 = v43;
          a1[1] = v14;
LABEL_28:
          v37 = *MEMORY[0x1E69E9840];
          return result;
        }

        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_30;
    }

    v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C0CF448C(v9, v8);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v25 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v25 < v9)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (sub_1C0D7812C() && __OFSUB__(v9, sub_1C0D7815C()))
      {
LABEL_42:
        __break(1u);
      }

      v28 = sub_1C0D7818C();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v31 = sub_1C0D7810C();

      v24 = v31;
    }

    if (v25 < v9)
    {
      goto LABEL_32;
    }

    result = sub_1C0D7812C();
    if (result)
    {
      v32 = result;
      v33 = sub_1C0D7815C();
      v34 = v9 - v33;
      if (!__OFSUB__(v9, v33))
      {
        sub_1C0D7814C();
        v35 = *a4;
        v36 = *a4 + a5;
        if (!__OFADD__(*a4, a5))
        {
          if (v36 >= v35)
          {
            sub_1C0D01960(v35, v36, a2, a3, (v32 + v34));

            *a1 = v9;
            a1[1] = v24 | 0x4000000000000000;
            goto LABEL_28;
          }

          goto LABEL_40;
        }

        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D73074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1C0D730DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D73124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D73194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0D731DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AesPrg();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0D73294(uint64_t a1)
{
  v2 = type metadata accessor for AesPrg();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0D732F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E0D0, &unk_1C0D7F4E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-v10];
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = v13;
  }

LABEL_11:
  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a4);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v16 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v16)
  {
    __break(1u);
LABEL_18:
    LODWORD(v18) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v18 = v18;
  }

LABEL_21:
  if (v13 != v18)
  {
    __break(1u);
    goto LABEL_40;
  }

  v32 = xmmword_1C0D7BAB0;
  if (v12 <= 1)
  {
    if (!v12 || !__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_29;
    }

LABEL_43:
    __break(1u);
  }

  if (v12 == 2)
  {
    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      sub_1C0D782BC();
      v21 = *(a1 + 16);
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_29:
  sub_1C0D782BC();
LABEL_30:
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(a3, a4);
  sub_1C0D7837C();
  if (v17 == 2)
  {
    v22 = *(a3 + 16);
  }

  v23 = *(v8 + 52);
  sub_1C0D7837C();
  sub_1C0D7836C();
  sub_1C0D39328();
  sub_1C0D78D4C();
  while ((v31[0] & 0x100) == 0)
  {
    v28 = v31[0];
    sub_1C0D78D4C();
    if ((v31[0] & 0x100) != 0)
    {
      break;
    }

    if (*(&v32 + 1) >> 62 == 2)
    {
      v29 = *(v32 + 24);
    }

    v26 = LOBYTE(v31[0]) ^ v28;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D3F8, &qword_1C0D7BD40);
    v31[3] = v27;
    v31[4] = sub_1C0D0225C();
    LOBYTE(v31[0]) = v26;
    v30[7] = *__swift_project_boxed_opaque_existential_1(v31, v27);
    sub_1C0D782AC();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1C0D78D4C();
  }

  v11[*(v8 + 56)] = 1;
  sub_1C0D73678(v11);
  result = v32;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D73678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E0D0, &unk_1C0D7F4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C0D736F4()
{
  result = qword_1EBE6E0D8;
  if (!qword_1EBE6E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0D8);
  }

  return result;
}

void HE.EvaluationKeyConfig.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *HE.EvaluationKeyConfig.init(encryptionParams:galoisElements:hasRelinKey:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1C0D73788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D737D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D73820()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OPRF.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OPRF.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0D739E8()
{
  result = qword_1EBE6E0E0;
  if (!qword_1EBE6E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0E0);
  }

  return result;
}

unint64_t sub_1C0D73A40()
{
  result = qword_1EBE6E0E8;
  if (!qword_1EBE6E0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6E0F0, qword_1C0D7F6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0E8);
  }

  return result;
}

uint64_t *sub_1C0D73AA4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1C0D73AD0()
{
  result = qword_1EBE6E0F8;
  if (!qword_1EBE6E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E0F8);
  }

  return result;
}

uint64_t sub_1C0D73B58()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v2);
  sub_1C0D7901C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D73BB8()
{
  v1 = *v0;
  MEMORY[0x1C68E3FF0](*(v0 + 4));
  return sub_1C0D7901C();
}

uint64_t sub_1C0D73BF8()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v2);
  sub_1C0D7901C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D73C54(uint64_t *a1)
{
  v1 = *a1;
  ccaes_ecb_encrypt_mode();
  result = MEMORY[0x1C68E48A0]();
  v3 = result;
  if (qword_1EBE6CB98 != -1)
  {
    result = swift_once();
  }

  v4 = off_1EBE6CBA0;
  v8 = off_1EBE6CBA0;
  if (v3)
  {
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    swift_retain_n();
    sub_1C0D64E2C(v3, 0);
    v5 = v8;
  }

  else
  {
    swift_retain_n();
    v5 = v4;
  }

  v9 = v5;
  v6 = AESLubyRackoffContextSize();

  if (!v6)
  {
LABEL_10:
    MEMORY[0x1EEE9AC00](v7);
    sub_1C0CF44FC(&v9, sub_1C0D74558);
    return v9;
  }

  result = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = sub_1C0D64E2C(v6, 0);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C0D73E1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  result = ccecb_init();
  *a3 = result;
  if (!result)
  {
    result = cclr_aes_init();
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C0D73F08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  result = swift_beginAccess();
  if (a2 > 128 || (a2 & 7) != 0 || *(v6 + 16) != 32)
  {
    __break(1u);
  }

  else
  {
    v11 = v6;
    v8 = sub_1C0D73C54(&v11);
    v10 = v9;

    if (!v3)
    {
      *a3 = a2;
      a3[1] = v8;
      a3[2] = v10;
    }
  }

  return result;
}

uint64_t sub_1C0D73FEC(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (__OFADD__(*v3, 7))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (*v3 + 7 < 0)
    {
      v6 = *v3 + 14;
    }

    v7 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v7 != 2)
      {
        result = 0;
        goto LABEL_14;
      }

      v9 = *(result + 16);
      v8 = *(result + 24);
      result = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v7)
    {
      result = BYTE6(a2);
LABEL_14:
      v11 = sub_1C0D0F990(result);
      v12 = v10;
      MEMORY[0x1EEE9AC00](v11);
      sub_1C0CF44FC(v3 + 2, a3);
      sub_1C0CF6468(v11, v12);
      sub_1C0CF448C(v11, v12);
      return v11;
    }

    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      result = HIDWORD(v5) - v5;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D74188()
{
  result = qword_1EBE6E100;
  if (!qword_1EBE6E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E100);
  }

  return result;
}

uint64_t sub_1C0D741F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  return sub_1C0D782FC();
}

uint64_t sub_1C0D74270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D742B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LubyRackoffError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LubyRackoffError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D743B8()
{
  result = qword_1EBE6E108[0];
  if (!qword_1EBE6E108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6E108);
  }

  return result;
}

uint64_t sub_1C0D74490()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  return sub_1C0D7831C();
}

uint64_t sub_1C0D74518(uint64_t a1, uint64_t (*a2)(void, void, uint64_t, void))
{
  v3 = v2[2];
  result = a2(v2[3], v2[4], a1, v2[5]);
  *v3 = result;
  return result;
}

uint64_t sub_1C0D74558()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return sub_1C0CF44FC(*(v0 + 16), sub_1C0D745BC);
}

uint64_t sub_1C0D745BC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  return sub_1C0D73E1C(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1C0D74620(uint64_t (*a1)(void))
{
  v4 = *MEMORY[0x1E69E9840];
  if (!ccrng())
  {
    __break(1u);
  }

  result = a1();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D746DC(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 112);
  return swift_endAccess();
}

uint64_t sub_1C0D74758()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1C68E4EB0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C0D747CC(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 32);
  return swift_endAccess();
}

uint64_t sub_1C0D74850(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 > 0)
  {
    v5 = sub_1C0D78C2C();
    v6 = v5;
    *(v5 + 16) = ((v4 - 1) >> 3) + 1;
    *(v5 + 32) = 0;
    if (v4 >= 9)
    {
      bzero((v5 + 33), (v4 - 1) >> 3);
    }

    goto LABEL_7;
  }

  if ((v4 + 7) >= 8)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v7 = *(v2 + 16);
  v8 = cche_coeffs_to_bytes();
  if (v8)
  {
    v9 = v8;

    sub_1C0CF8DE0();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1C0D7496C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  if (v2)
  {
    MEMORY[0x1C68E4EB0](v2, -1, -1);
  }

  v3 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C0D74A0C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    memset_s(*(v0 + 24), *(v0 + 32) - v1, 0, *(v0 + 32) - v1);
    v2 = *(v0 + 16);

    MEMORY[0x1C68E4EB0](v1, -1, -1);

    v3 = *(v0 + 16);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D74AD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ATHM.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ATHM.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D74C78()
{
  result = qword_1EBE6E190;
  if (!qword_1EBE6E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E190);
  }

  return result;
}

unint64_t sub_1C0D74CCC(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  sub_1C0D78BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B0, &qword_1C0D7C010);
  if (!swift_dynamicCast())
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_1C0D77EA4(v41);
    result = sub_1C0D77BD4(a1, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_68;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v13 = v8 + 16;
      v8 = *(v8 + 16);
      v11 = *(v13 + 8);
      v12 = v11 - v8;
      if (!__OFSUB__(v11, v8))
      {
LABEL_18:
        if (__OFADD__(v11, v7))
        {
          __break(1u);
        }

        else if (v11 + v7 >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v14 = sub_1C0D7829C();
            MEMORY[0x1EEE9AC00](v14);
            v15 = sub_1C0D773F0(sub_1C0D77F0C);
            v19 = v16;
            if (v18 == v7)
            {
              v20 = v15;
              v21 = v17;
              if ((v16 & 0x2000000000000000) != 0)
              {
                v22 = HIBYTE(v16) & 0xF;
              }

              else
              {
                v22 = v15 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 7) = 0;
              *&v41[0] = 0;
              if (4 * v22 == v17 >> 14)
              {
LABEL_67:

                goto LABEL_68;
              }

              LOBYTE(v23) = 0;
              v24 = (v15 >> 59) & 1;
              if ((v16 & 0x1000000000000000) == 0)
              {
                LOBYTE(v24) = 1;
              }

              v25 = 4 << v24;
              v39 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v40 = v16 & 0xFFFFFFFFFFFFFFLL;
              while (1)
              {
                v26 = v21 & 0xC;
                v27 = v21;
                if (v26 == v25)
                {
                  v27 = sub_1C0D77C68(v21, v20, v19);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v22)
                {
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
LABEL_72:
                  v7 = sub_1C0D78B2C();
                  goto LABEL_8;
                }

                if ((v19 & 0x1000000000000000) != 0)
                {
                  v30 = sub_1C0D78B5C();
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v19 & 0x2000000000000000) != 0)
                {
                  *&v43 = v20;
                  *(&v43 + 1) = v40;
                  v30 = *(&v43 + v28);
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v29 = v39;
                  if ((v20 & 0x1000000000000000) == 0)
                  {
                    v29 = sub_1C0D78DFC();
                  }

                  v30 = *(v29 + v28);
                  if (v26 != v25)
                  {
LABEL_40:
                    if ((v19 & 0x1000000000000000) != 0)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_41;
                  }
                }

                v21 = sub_1C0D77C68(v21, v20, v19);
                if ((v19 & 0x1000000000000000) != 0)
                {
LABEL_44:
                  if (v22 <= v21 >> 16)
                  {
                    goto LABEL_71;
                  }

                  v21 = sub_1C0D78B3C();
                  goto LABEL_46;
                }

LABEL_41:
                v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
                *(v41 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_70;
                }

                if (v23 == 14)
                {
                  *&v43 = *&v41[0];
                  *(&v43 + 6) = *(v41 + 6);
                  sub_1C0D782CC();
                  LOBYTE(v23) = 0;
                }

                if (4 * v22 == v21 >> 14)
                {
                  if (v23)
                  {
                    *&v43 = *&v41[0];
                    *(&v43 + 6) = *(v41 + 6);
                    sub_1C0D782CC();
                  }

                  goto LABEL_67;
                }
              }
            }

            v31 = 0;
            v32 = *v2;
            v33 = v2[1];
            v34 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v34 == 2)
              {
                v31 = *(v32 + 16);
              }
            }

            else if (v34)
            {
              v31 = v32;
            }

            v35 = __OFADD__(v31, v12);
            v36 = v31 + v12;
            if (!v35)
            {
              if (!__OFADD__(v36, v18))
              {
                if (v34 > 1)
                {
                  if (v34 == 2)
                  {
                    v37 = *(v32 + 24);
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else if (v34)
                {
                  v37 = v32 >> 32;
                }

                else
                {
                  v37 = BYTE6(v33);
                }

                if (v37 >= v36 + v18)
                {
                  sub_1C0D782AC();
                  goto LABEL_67;
                }

                goto LABEL_78;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_75;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
    goto LABEL_18;
  }

  sub_1C0D13498(v41, &v43);
  v5 = __swift_project_boxed_opaque_existential_1(&v43, v44);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C0D7819C();
  result = __swift_destroy_boxed_opaque_existential_1(&v43);
LABEL_68:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D75198@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = result;
  *a5 = xmmword_1C0D7BAB0;
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
LABEL_12:
          result = v10 + (result & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v10, v8 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

LABEL_17:
        v13 = HIBYTE(a2) & 0xF;
        v14 = __OFADD__(v10, v13);
        result = v10 + v13;
        if (!v14)
        {
LABEL_18:
          sub_1C0D782BC();
          sub_1C0D74CCC(v8, a2);
          v19[3] = MEMORY[0x1E6969080];
          v19[4] = MEMORY[0x1E6969078];
          v19[0] = a3;
          v19[1] = a4;
          v15 = __swift_project_boxed_opaque_existential_1(v19, MEMORY[0x1E6969080]);
          v16 = *v15;
          v17 = v15[1];
          sub_1C0CF6468(a3, a4);
          sub_1C0D4268C(v16, v17);
          return __swift_destroy_boxed_opaque_existential_1(v19);
        }

        goto LABEL_21;
      }

LABEL_19:
      v18 = sub_1C0D78B2C();
      v14 = __OFADD__(v10, v18);
      result = v10 + v18;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
LABEL_10:
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v10 = HIDWORD(a3) - a3;
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_1C0D752D4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C0D75340(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t P256.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0D7883C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result <= 3)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v10 = 1;
      *(v10 + 4) = 1;
      swift_willThrow();
LABEL_16:
      v32 = sub_1C0D786AC();
      return (*(*(v32 - 8) + 8))(a1, v32);
    }

    v34 = v6;
    v35 = v5;
    v36 = a2;
    v39 = a1;
    sub_1C0D7867C();
    v11 = v2;
    v37 = v41;
    v38 = v40;
    v12 = sub_1C0D75750(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v40, v41);
    v14 = v13;
    v15 = 0;
    while (2)
    {
      v16 = sub_1C0D053E8(v15, 1);
      v18 = v17;
      v19 = sub_1C0D75B0C(v12, v14, 0x74616469646E6163, 0xE900000000000065, v16, v17, 0x20uLL);
      v21 = v20;
      sub_1C0CF448C(v16, v18);
      result = sub_1C0D30C08(v19, v21);
      if (*(result + 16))
      {
        v22 = result;
        v23 = *(result + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C0CFD670(v22);
        }

        v22[32] = v23;
        v24 = (v22 + 32);
        v25 = *(v22 + 2);
        do
        {
          if (!v25)
          {

            goto LABEL_6;
          }

          v26 = *v24++;
          --v25;
        }

        while (!v26);
        v27 = sub_1C0D78BFC();
        v28 = sub_1C0D0FA30(v27);
        v30 = v29;

        v40 = v28;
        v41 = v30;
        sub_1C0D7882C();
        if (!v11)
        {
          v33 = sub_1C0D786AC();
          (*(*(v33 - 8) + 8))(v39, v33);
          sub_1C0CF448C(v12, v14);
          sub_1C0CF448C(v38, v37);
          (*(v34 + 32))(v36, v42, v35);
        }

        v11 = 0;
LABEL_6:
        if (++v15 != 256)
        {
          continue;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v31 = 1;
        *(v31 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v12, v14);
        sub_1C0CF448C(v38, v37);
        a1 = v39;
        goto LABEL_16;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D75750(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v33 = a4;
  v34 = a6;
  v31 = a5;
  v32 = a3;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  v6 = sub_1C0D786AC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v42 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v15 = sub_1C0D053E8(0x10uLL, 2);
  v17 = v16;
  v18 = MEMORY[0x1E6969080];
  v19 = MEMORY[0x1E6969078];
  v40 = MEMORY[0x1E6969080];
  v41 = MEMORY[0x1E6969078];
  *&v39 = v15;
  *(&v39 + 1) = v16;
  v20 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x1E6969080]);
  v21 = *v20;
  v22 = v20[1];
  sub_1C0CF6468(v15, v17);
  sub_1C0D4268C(v21, v22);
  sub_1C0CF448C(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0D74CCC(v32, v33);
  v40 = v18;
  v41 = v19;
  v23 = v31;
  v24 = v34;
  *&v39 = v31;
  *(&v39 + 1) = v34;
  v25 = __swift_project_boxed_opaque_existential_1(&v39, v18);
  v26 = *v25;
  v27 = v25[1];
  sub_1C0CF6468(v23, v24);
  sub_1C0D4268C(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v39 = v42;
  sub_1C0CF6468(v42, *(&v42 + 1));
  sub_1C0D7868C();
  v39 = v35;
  sub_1C0CF6468(v35, *(&v35 + 1));
  sub_1C0D789EC();
  sub_1C0D78000(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v39, *(&v39 + 1));
  (*(v36 + 8))(v9, v37);
  v40 = v10;
  v41 = sub_1C0D78048(&qword_1EBE6D8B8, &qword_1EBE6D8B0, &qword_1C0D7D9F0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
  __swift_project_boxed_opaque_existential_1(&v39, v40);
  sub_1C0D7819C();
  (*(v11 + 8))(v14, v10);
  v29 = v38;
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0CF448C(v42, *(&v42 + 1));
  return v29;
}

uint64_t sub_1C0D75B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v42 = a7;
  *&v43 = a1;
  v39 = a4;
  v40 = a6;
  v38 = a3;
  *(&v43 + 1) = a2;
  v9 = sub_1C0D786AC();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D053E8(0x10uLL, 2);
  v15 = v14;
  sub_1C0D75198(5064011, 0xE300000000000000, v13, v14, &v46);
  sub_1C0CF448C(v13, v15);
  v16 = v46;
  v17 = sub_1C0D053E8(a7, 2);
  v19 = v18;
  v49 = v17;
  v50 = v18;
  sub_1C0CF6468(v17, v18);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v17, v19);
  v21 = v49;
  v20 = v50;
  v51 = v49;
  v52 = v50;
  v22 = MEMORY[0x1E6969080];
  v23 = MEMORY[0x1E6969078];
  v47 = MEMORY[0x1E6969080];
  v48 = MEMORY[0x1E6969078];
  v41 = v16;
  v46 = v16;
  v24 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
  v25 = *v24;
  v26 = v24[1];
  sub_1C0CF6468(v21, v20);
  sub_1C0CF6468(v16, *(&v16 + 1));
  sub_1C0D4268C(v25, v26);
  sub_1C0CF448C(v21, v20);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v27 = v51;
  v28 = v52;
  v49 = v51;
  v50 = v52;
  sub_1C0CF6468(v51, v52);
  sub_1C0D74CCC(v38, v39);
  sub_1C0CF448C(v27, v28);
  v29 = v49;
  v30 = v50;
  v51 = v49;
  v52 = v50;
  v47 = v22;
  v48 = v23;
  v31 = v40;
  *&v46 = a5;
  *(&v46 + 1) = v40;
  v32 = __swift_project_boxed_opaque_existential_1(&v46, v22);
  v33 = *v32;
  v34 = v32[1];
  sub_1C0CF6468(v29, v30);
  sub_1C0CF6468(a5, v31);
  sub_1C0D4268C(v33, v34);
  sub_1C0CF448C(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v35 = v51;
  v36 = v52;
  v46 = v43;
  sub_1C0CF6468(v51, v52);
  sub_1C0D789EC();
  sub_1C0D78000(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v51, v52);
  sub_1C0D7867C();
  sub_1C0CF448C(v35, v36);
  sub_1C0CF448C(v41, *(&v16 + 1));
  (*(v44 + 8))(v12, v45);
  return v46;
}

uint64_t P384.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0D7889C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result <= 5)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v10 = 1;
      *(v10 + 4) = 1;
      swift_willThrow();
LABEL_16:
      v32 = sub_1C0D786AC();
      return (*(*(v32 - 8) + 8))(a1, v32);
    }

    v34 = v6;
    v35 = v5;
    v36 = a2;
    v39 = a1;
    sub_1C0D7867C();
    v11 = v2;
    v37 = v41;
    v38 = v40;
    v12 = sub_1C0D76218(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v40, v41);
    v14 = v13;
    v15 = 0;
    while (2)
    {
      v16 = sub_1C0D053E8(v15, 1);
      v18 = v17;
      v19 = sub_1C0D765D4(v12, v14, 0x74616469646E6163, 0xE900000000000065, v16, v17, 0x30uLL);
      v21 = v20;
      sub_1C0CF448C(v16, v18);
      result = sub_1C0D30C08(v19, v21);
      if (*(result + 16))
      {
        v22 = result;
        v23 = *(result + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C0CFD670(v22);
        }

        v22[32] = v23;
        v24 = (v22 + 32);
        v25 = *(v22 + 2);
        do
        {
          if (!v25)
          {

            goto LABEL_6;
          }

          v26 = *v24++;
          --v25;
        }

        while (!v26);
        v27 = sub_1C0D78BFC();
        v28 = sub_1C0D0FA30(v27);
        v30 = v29;

        v40 = v28;
        v41 = v30;
        sub_1C0D7888C();
        if (!v11)
        {
          v33 = sub_1C0D786AC();
          (*(*(v33 - 8) + 8))(v39, v33);
          sub_1C0CF448C(v12, v14);
          sub_1C0CF448C(v38, v37);
          (*(v34 + 32))(v36, v42, v35);
        }

        v11 = 0;
LABEL_6:
        if (++v15 != 256)
        {
          continue;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v31 = 1;
        *(v31 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v12, v14);
        sub_1C0CF448C(v38, v37);
        a1 = v39;
        goto LABEL_16;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D76218(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v33 = a4;
  v34 = a6;
  v31 = a5;
  v32 = a3;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  v6 = sub_1C0D786AC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E1B0, &qword_1C0D7FB28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v42 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v15 = sub_1C0D053E8(0x11uLL, 2);
  v17 = v16;
  v18 = MEMORY[0x1E6969080];
  v19 = MEMORY[0x1E6969078];
  v40 = MEMORY[0x1E6969080];
  v41 = MEMORY[0x1E6969078];
  *&v39 = v15;
  *(&v39 + 1) = v16;
  v20 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x1E6969080]);
  v21 = *v20;
  v22 = v20[1];
  sub_1C0CF6468(v15, v17);
  sub_1C0D4268C(v21, v22);
  sub_1C0CF448C(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0D74CCC(v32, v33);
  v40 = v18;
  v41 = v19;
  v23 = v31;
  v24 = v34;
  *&v39 = v31;
  *(&v39 + 1) = v34;
  v25 = __swift_project_boxed_opaque_existential_1(&v39, v18);
  v26 = *v25;
  v27 = v25[1];
  sub_1C0CF6468(v23, v24);
  sub_1C0D4268C(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v39 = v42;
  sub_1C0CF6468(v42, *(&v42 + 1));
  sub_1C0D7868C();
  v39 = v35;
  sub_1C0CF6468(v35, *(&v35 + 1));
  sub_1C0D789FC();
  sub_1C0D78000(&qword_1ED9076A8, MEMORY[0x1E6966630]);
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v39, *(&v39 + 1));
  (*(v36 + 8))(v9, v37);
  v40 = v10;
  v41 = sub_1C0D78048(&qword_1EBE6E1B8, &qword_1EBE6E1B0, &qword_1C0D7FB28);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
  __swift_project_boxed_opaque_existential_1(&v39, v40);
  sub_1C0D7819C();
  (*(v11 + 8))(v14, v10);
  v29 = v38;
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0CF448C(v42, *(&v42 + 1));
  return v29;
}

uint64_t sub_1C0D765D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v42 = a7;
  *&v43 = a1;
  v39 = a4;
  v40 = a6;
  v38 = a3;
  *(&v43 + 1) = a2;
  v9 = sub_1C0D786AC();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D053E8(0x11uLL, 2);
  v15 = v14;
  sub_1C0D75198(5064011, 0xE300000000000000, v13, v14, &v46);
  sub_1C0CF448C(v13, v15);
  v16 = v46;
  v17 = sub_1C0D053E8(a7, 2);
  v19 = v18;
  v49 = v17;
  v50 = v18;
  sub_1C0CF6468(v17, v18);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v17, v19);
  v21 = v49;
  v20 = v50;
  v51 = v49;
  v52 = v50;
  v22 = MEMORY[0x1E6969080];
  v23 = MEMORY[0x1E6969078];
  v47 = MEMORY[0x1E6969080];
  v48 = MEMORY[0x1E6969078];
  v41 = v16;
  v46 = v16;
  v24 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
  v25 = *v24;
  v26 = v24[1];
  sub_1C0CF6468(v21, v20);
  sub_1C0CF6468(v16, *(&v16 + 1));
  sub_1C0D4268C(v25, v26);
  sub_1C0CF448C(v21, v20);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v27 = v51;
  v28 = v52;
  v49 = v51;
  v50 = v52;
  sub_1C0CF6468(v51, v52);
  sub_1C0D74CCC(v38, v39);
  sub_1C0CF448C(v27, v28);
  v29 = v49;
  v30 = v50;
  v51 = v49;
  v52 = v50;
  v47 = v22;
  v48 = v23;
  v31 = v40;
  *&v46 = a5;
  *(&v46 + 1) = v40;
  v32 = __swift_project_boxed_opaque_existential_1(&v46, v22);
  v33 = *v32;
  v34 = v32[1];
  sub_1C0CF6468(v29, v30);
  sub_1C0CF6468(a5, v31);
  sub_1C0D4268C(v33, v34);
  sub_1C0CF448C(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v35 = v51;
  v36 = v52;
  v46 = v43;
  sub_1C0CF6468(v51, v52);
  sub_1C0D789FC();
  sub_1C0D78000(&qword_1ED9076A8, MEMORY[0x1E6966630]);
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v51, v52);
  sub_1C0D7867C();
  sub_1C0CF448C(v35, v36);
  sub_1C0CF448C(v41, *(&v16 + 1));
  (*(v44 + 8))(v12, v45);
  return v46;
}

uint64_t P521.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0D7898C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result <= 8)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v10 = 1;
      *(v10 + 4) = 1;
      swift_willThrow();
LABEL_16:
      v32 = sub_1C0D786AC();
      return (*(*(v32 - 8) + 8))(a1, v32);
    }

    v34 = v6;
    v35 = v5;
    v36 = a2;
    v39 = a1;
    sub_1C0D7867C();
    v11 = v2;
    v37 = v41;
    v38 = v40;
    v12 = sub_1C0D76CE4(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v40, v41);
    v14 = v13;
    v15 = 0;
    while (2)
    {
      v16 = sub_1C0D053E8(v15, 1);
      v18 = v17;
      v19 = sub_1C0D770A0(v12, v14, 0x74616469646E6163, 0xE900000000000065, v16, v17, 0x42uLL);
      v21 = v20;
      sub_1C0CF448C(v16, v18);
      result = sub_1C0D30C08(v19, v21);
      if (*(result + 16))
      {
        v22 = result;
        v23 = *(result + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C0CFD670(v22);
        }

        v22[32] = v23 & 1;
        v24 = (v22 + 32);
        v25 = *(v22 + 2);
        do
        {
          if (!v25)
          {

            goto LABEL_6;
          }

          v26 = *v24++;
          --v25;
        }

        while (!v26);
        v27 = sub_1C0D78BFC();
        v28 = sub_1C0D0FA30(v27);
        v30 = v29;

        v40 = v28;
        v41 = v30;
        sub_1C0D7897C();
        if (!v11)
        {
          v33 = sub_1C0D786AC();
          (*(*(v33 - 8) + 8))(v39, v33);
          sub_1C0CF448C(v12, v14);
          sub_1C0CF448C(v38, v37);
          (*(v34 + 32))(v36, v42, v35);
        }

        v11 = 0;
LABEL_6:
        if (++v15 != 256)
        {
          continue;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v31 = 1;
        *(v31 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v12, v14);
        sub_1C0CF448C(v38, v37);
        a1 = v39;
        goto LABEL_16;
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D76CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v33 = a4;
  v34 = a6;
  v31 = a5;
  v32 = a3;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  v6 = sub_1C0D786AC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6E1A0, &qword_1C0D7FB20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v42 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v15 = sub_1C0D053E8(0x12uLL, 2);
  v17 = v16;
  v18 = MEMORY[0x1E6969080];
  v19 = MEMORY[0x1E6969078];
  v40 = MEMORY[0x1E6969080];
  v41 = MEMORY[0x1E6969078];
  *&v39 = v15;
  *(&v39 + 1) = v16;
  v20 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x1E6969080]);
  v21 = *v20;
  v22 = v20[1];
  sub_1C0CF6468(v15, v17);
  sub_1C0D4268C(v21, v22);
  sub_1C0CF448C(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0D74CCC(v32, v33);
  v40 = v18;
  v41 = v19;
  v23 = v31;
  v24 = v34;
  *&v39 = v31;
  *(&v39 + 1) = v34;
  v25 = __swift_project_boxed_opaque_existential_1(&v39, v18);
  v26 = *v25;
  v27 = v25[1];
  sub_1C0CF6468(v23, v24);
  sub_1C0D4268C(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v39 = v42;
  sub_1C0CF6468(v42, *(&v42 + 1));
  sub_1C0D7868C();
  v39 = v35;
  sub_1C0CF6468(v35, *(&v35 + 1));
  sub_1C0D78A0C();
  sub_1C0D78000(&qword_1EBE6E198, MEMORY[0x1E6966640]);
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v39, *(&v39 + 1));
  (*(v36 + 8))(v9, v37);
  v40 = v10;
  v41 = sub_1C0D78048(&qword_1EBE6E1A8, &qword_1EBE6E1A0, &qword_1C0D7FB20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
  __swift_project_boxed_opaque_existential_1(&v39, v40);
  sub_1C0D7819C();
  (*(v11 + 8))(v14, v10);
  v29 = v38;
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0CF448C(v42, *(&v42 + 1));
  return v29;
}

uint64_t sub_1C0D770A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v42 = a7;
  *&v43 = a1;
  v39 = a4;
  v40 = a6;
  v38 = a3;
  *(&v43 + 1) = a2;
  v9 = sub_1C0D786AC();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D053E8(0x12uLL, 2);
  v15 = v14;
  sub_1C0D75198(5064011, 0xE300000000000000, v13, v14, &v46);
  sub_1C0CF448C(v13, v15);
  v16 = v46;
  v17 = sub_1C0D053E8(a7, 2);
  v19 = v18;
  v49 = v17;
  v50 = v18;
  sub_1C0CF6468(v17, v18);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v17, v19);
  v21 = v49;
  v20 = v50;
  v51 = v49;
  v52 = v50;
  v22 = MEMORY[0x1E6969080];
  v23 = MEMORY[0x1E6969078];
  v47 = MEMORY[0x1E6969080];
  v48 = MEMORY[0x1E6969078];
  v41 = v16;
  v46 = v16;
  v24 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
  v25 = *v24;
  v26 = v24[1];
  sub_1C0CF6468(v21, v20);
  sub_1C0CF6468(v16, *(&v16 + 1));
  sub_1C0D4268C(v25, v26);
  sub_1C0CF448C(v21, v20);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v27 = v51;
  v28 = v52;
  v49 = v51;
  v50 = v52;
  sub_1C0CF6468(v51, v52);
  sub_1C0D74CCC(v38, v39);
  sub_1C0CF448C(v27, v28);
  v29 = v49;
  v30 = v50;
  v51 = v49;
  v52 = v50;
  v47 = v22;
  v48 = v23;
  v31 = v40;
  *&v46 = a5;
  *(&v46 + 1) = v40;
  v32 = __swift_project_boxed_opaque_existential_1(&v46, v22);
  v33 = *v32;
  v34 = v32[1];
  sub_1C0CF6468(v29, v30);
  sub_1C0CF6468(a5, v31);
  sub_1C0D4268C(v33, v34);
  sub_1C0CF448C(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v35 = v51;
  v36 = v52;
  v46 = v43;
  sub_1C0CF6468(v51, v52);
  sub_1C0D78A0C();
  sub_1C0D78000(&qword_1EBE6E198, MEMORY[0x1E6966640]);
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v51, v52);
  sub_1C0D7867C();
  sub_1C0CF448C(v35, v36);
  sub_1C0CF448C(v41, *(&v16 + 1));
  (*(v44 + 8))(v12, v45);
  return v46;
}

void *sub_1C0D773F0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1C0CF448C(v6, v5);
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

    sub_1C0CF448C(v6, v5);
    *v3 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1C0D7812C() && __OFSUB__(v6, sub_1C0D7815C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1C0D7818C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1C0D7810C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1C0D77B20(v6, v6 >> 32, a1);

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

    sub_1C0CF448C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    result = sub_1C0D77B20(v20[2], v20[3], a1);
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
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D77794(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1C0CF448C(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      result = sub_1C0D77A44(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1C0CF448C(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1C0CF448C(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_1C0D7812C();
  if (result)
  {
    v13 = result;
    v14 = sub_1C0D7815C();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1C0D7814C();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D77A44(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1C0D7826C();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1C0D7815C();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_1C0D7814C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

char *sub_1C0D77B20(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C0D7815C();
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

  v12 = sub_1C0D7814C();
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

unint64_t sub_1C0D77BD4(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_1C0D78DFC();
    }

    sub_1C0D782CC();
  }

  return v2 >> 60;
}

uint64_t sub_1C0D77C68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C0D78B6C();
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
    v5 = MEMORY[0x1C68E3B30](15, a1 >> 16);
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

unint64_t sub_1C0D77CE4(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1C0D42970(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D77DA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C0D7818C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C0D7811C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C0D7828C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1C0D77E20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C0D7818C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C0D7811C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C0D77EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B8, &qword_1C0D7C018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0D77F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *v6;
  v8 = v6[1];
  result = sub_1C0D77F64(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v10;
    a3[2] = v11;
    a3[3] = v12;
  }

  return result;
}

uint64_t sub_1C0D77F64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1C0D78BFC();
  result = sub_1C0D78DBC();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C0D78000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0D78048(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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