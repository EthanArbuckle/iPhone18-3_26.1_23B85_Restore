uint64_t sub_1ABDE22A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a8;
  v20[1] = a1;
  v13 = sub_1ABF22854();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_1ABF24AB4();

  strcpy(v21, "SELECT * from ");
  HIBYTE(v21[0]) = -18;
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
  MEMORY[0x1AC5A9410](a6, a7);
  MEMORY[0x1AC5A9410](0x27203D3D20, 0xE500000000000000);
  MEMORY[0x1AC5A9410](v20[0], a9);
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_1ABF22844();
  sub_1ABDE4448();
  v18 = sub_1ABF22564();

  (*(v14 + 8))(v17, v13);
  sub_1ABA925A4(v21, &unk_1EB4D38A0, &qword_1ABF3A8B0);
  return v18;
}

uint64_t sub_1ABDE24A4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v54 = v1[6];
  v55 = v1[4];
  v5 = *(v1 + 56);
  v56 = v1[8];
  v6 = *(v1 + 72);
  v57 = v1[10];
  v7 = *(v1 + 88);
  v58 = v1[12];
  v8 = *(v1 + 104);
  v9 = *(v1 + 120);
  if (*(v1 + 25) == 8)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(v1 + 25);
  }

  v11 = *(v1 + 121);
  v59 = v1[14];
  v60 = v11;
  v61 = v10;
  if (v2 == 1 && (v3 & 1) != 0)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = a1;
  }

  else
  {
    v49 = v1[2];
    v50 = *v1;
    v51 = *(v1 + 56);
    v52 = *(v1 + 40);
    sub_1ABADC4FC();
    v12 = v14;
    v15 = *(v14 + 16);
    if (v15 >= *(v14 + 24) >> 1)
    {
      sub_1ABA7DD4C();
      v12 = v33;
    }

    *(v12 + 16) = v15 + 1;
    v16 = v12 + 32 * v15;
    *(v16 + 32) = v50;
    *(v16 + 40) = v2;
    *(v16 + 48) = v49;
    *(v16 + 56) = v3 | (v10 << 8);
    v4 = v52;
    v13 = a1;
    v11 = v60;
    v5 = v51;
  }

  v17 = v9;
  if (!v4 || (v5 & 1) == 0)
  {
    v20 = v5;
    v21 = v9;
    v22 = v4;
    v18 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v12 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC4FC();
      v12 = v35;
    }

    v19 = v13;
    sub_1ABA937D4();
    if (v23)
    {
      sub_1ABA7DD4C();
      v25 = v20;
      v24 = v22;
      v12 = v36;
    }

    else
    {
      v24 = v22;
      v25 = v20;
    }

    v17 = v21;
    v26 = v25 | (v61 << 8);
    *(v12 + 16) = v13;
    v27 = v12 + 32 * v6;
    *(v27 + 32) = v55;
    *(v27 + 40) = v24;
    *(v27 + 48) = v54;
    *(v27 + 56) = v26 | 0x2000;
    v11 = v60;
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_19:
    if (v18)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v18 = v7;
  v19 = v13;
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_20:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = *(v12 + 16);
    sub_1ABA7BEF0();
    sub_1ABADC4FC();
    v12 = v38;
  }

  sub_1ABA937D4();
  if (v23)
  {
    sub_1ABA7DD4C();
    v12 = v39;
  }

  *(v12 + 16) = v13;
  v28 = v12 + 32 * v6;
  *(v28 + 32) = v56;
  *(v28 + 40) = v6;
  *(v28 + 48) = v57;
  *(v28 + 56) = v18 | (v61 << 8) | 0x4000;
LABEL_25:
  if (!v8 || (v17 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v12 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC4FC();
      v12 = v41;
    }

    sub_1ABA937D4();
    if (v23)
    {
      sub_1ABA7DD4C();
      v12 = v42;
    }

    *(v12 + 16) = v13;
    v29 = v12 + 32 * v6;
    *(v29 + 32) = v58;
    *(v29 + 40) = v8;
    *(v29 + 48) = v59;
    *(v29 + 56) = v17 | (v61 << 8) | 0x6000;
  }

  if (v11 <= 4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = *(v12 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC4FC();
      v12 = v44;
    }

    sub_1ABA937D4();
    if (v23)
    {
      sub_1ABA7DD4C();
      v12 = v45;
    }

    *(v12 + 16) = v13;
    v30 = v12 + 32 * v6;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 32) = v11;
    *(v30 + 56) = 0x8000;
  }

  if (v19 && *(v19 + 16))
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = *(v12 + 16);
      sub_1ABA7BEF0();
      sub_1ABADC4FC();
      v12 = v47;
    }

    sub_1ABA937D4();
    if (v23)
    {
      sub_1ABA7DD4C();
      v12 = v48;
    }

    *(v12 + 16) = v13;
    v31 = v12 + 32 * v6;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 32) = v19;
    *(v31 + 56) = -24576;
  }

  return v12;
}

uint64_t sub_1ABDE280C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(v4 >> 13)
  {
    case 1u:
      v5 = (v4 >> 8) & 0x1F;
      sub_1ABA80FA0();
      v6 = 4;
      goto LABEL_8;
    case 2u:
      v5 = (v4 >> 8) & 0x1F;
      sub_1ABA80FA0();
      v6 = 5;
      goto LABEL_8;
    case 3u:
      v5 = (v4 >> 8) & 0x1F;
      sub_1ABA80FA0();
      v6 = 7;
      goto LABEL_8;
    case 4u:
      if (v1 - 1 >= 3)
      {
        if (v1)
        {
          return 0;
        }

        sub_1ABA8E40C();
        v7 = 9;
      }

      else
      {
        sub_1ABA8E40C();
        v7 = 8;
      }

      LOBYTE(v25[0]) = v7;
      sub_1ABF24C54();
      v22 = 0x31203D3D20;
      v23 = 0xE500000000000000;
LABEL_18:
      MEMORY[0x1AC5A9410](v22, v23);
      return v25[2];
    case 5u:
      sub_1ABA8E40C();
      LOBYTE(v25[0]) = 0;
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x28204E4920, 0xE500000000000000);
      v10 = *(v1 + 16);
      v11 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v25[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADDBD4();
        v11 = v25[0];
        v12 = (v1 + 32);
        do
        {
          v13 = *v12++;
          v26 = v13;
          v14 = sub_1ABF24FF4();
          v16 = v15;
          v25[0] = v11;
          v17 = *(v11 + 16);
          if (v17 >= *(v11 + 24) >> 1)
          {
            sub_1ABADDBD4();
            v11 = v25[0];
          }

          *(v11 + 16) = v17 + 1;
          v18 = v11 + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v16;
          --v10;
        }

        while (v10);
      }

      v25[0] = v11;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      v19 = sub_1ABF23B54();
      v21 = v20;

      MEMORY[0x1AC5A9410](v19, v21);

      v22 = 41;
      v23 = 0xE100000000000000;
      goto LABEL_18;
    default:
      v5 = v4 >> 8;
      sub_1ABA80FA0();
      v6 = 2;
LABEL_8:
      LOBYTE(v26) = v6;
      sub_1ABF24C54();
      v8 = v25[0];
      LOBYTE(v25[0]) = v5;
      v9 = sub_1ABDE30A8(v8, v25[1], v1, v2 & 1, v3, v4 & 1, v25);

      return v9;
  }
}

void *KTSIndexManager.init(viewService:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  sub_1ABDDDEAC();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[4] = v11;
    v1[5] = v12;
    *(v1 + 3) = v13;
    v1[8] = v14;
    sub_1ABAD219C(&qword_1EB4D9D98, &qword_1ABF62740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF3BFC0;
    *(inited + 32) = 0;
    v7 = sub_1ABDDE104();
    *(inited + 80) = 1;
    v8 = sub_1ABDDE2B0(v7);
    *(inited + 128) = 2;
    sub_1ABDDE46C(v8);
    sub_1ABDE425C();
    v10 = sub_1ABF239C4();

    v3[9] = v10;
    v3[2] = 0;
    v3[3] = 0;
  }

  return v3;
}

double sub_1ABDE2E30@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  v4 = a1[3];
  v5 = a1[5];
  v6 = sub_1ABA93E20(a1, v4);
  *&v17 = v4;
  *(&v17 + 1) = v5;
  v7 = sub_1ABA93DC0(&v15);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  sub_1ABDE6544(&v19, &v15, v18);
  sub_1ABA84B54(&v15);
  if (!v2)
  {
    if (v18[3])
    {
      sub_1ABAD219C(&qword_1EB4D1530, &qword_1ABF336C0);
      if (swift_dynamicCast())
      {
        result = *&v15;
        v9 = v16;
        v10 = v17;
        *a2 = v15;
        *(a2 + 16) = v9;
        *(a2 + 24) = v10;
        return result;
      }
    }

    else
    {
      sub_1ABA925A4(v18, &qword_1EB4D9BF8, &qword_1ABF62500);
    }

    if (qword_1EB4CE7E8 != -1)
    {
      swift_once();
    }

    v11 = sub_1ABF237F4();
    sub_1ABA7AA24(v11, qword_1EB4CE7F0);
    v12 = sub_1ABF237D4();
    v13 = sub_1ABF24664();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1ABA78000, v12, v13, "KTSIndexManager error: result of call to executeQuery was not a KTSSegmentData.", v14, 2u);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *KTSIndexManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  v5 = v0[6];
  v4 = v0[7];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v0[9];

  return v0;
}

uint64_t KTSIndexManager.__deallocating_deinit()
{
  KTSIndexManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABDE30A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, _BYTE *a7)
{
  v8 = *a7;
  if (a4)
  {
    if (a6)
    {
LABEL_3:
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF910C0);
      sub_1ABAD219C(&qword_1EB4D9DA8, &unk_1ABF627A0);
      v9 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v9);

      MEMORY[0x1AC5A9410](0x2078616D20, 0xE500000000000000);
      v10 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v10);

      MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF91100);
      sub_1ABF24C54();
      sub_1ABDBF718();
      swift_allocError();
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }

    v15 = 0;
    v16 = "nonDiscretionary";
    switch(*a7)
    {
      case 1:
        v16 = "includesOpenRange";
        goto LABEL_26;
      case 2:
        v16 = "includesClosedRange";
        goto LABEL_26;
      case 3:
        v15 = 0;
        v16 = "includedInOpenRange";
        break;
      case 4:
        v15 = 0;
        v16 = "includedInClosedRange";
        break;
      case 5:
        v16 = "partialRangeFrom";
LABEL_26:
        v15 = 1;
        break;
      case 6:
        v15 = 0;
        v16 = "partialRangeThrough";
        break;
      case 7:
        v15 = 0;
        v16 = "partialRangeUpTo";
        break;
      default:
        break;
    }

    if (v15 && (v16 | 0x8000000000000000) == 0x80000001ABF86210)
    {
LABEL_39:
    }

    else
    {
      v21 = sub_1ABF25054();

      if ((v21 & 1) == 0)
      {
        v22 = 0x80000001ABF86210;
        switch(v8)
        {
          case 1:
            v23 = "includesOpenRange";
            goto LABEL_53;
          case 2:
            v23 = "includesClosedRange";
LABEL_53:
            v22 = v23 | 0x8000000000000000;
            goto LABEL_54;
          case 5:
LABEL_54:
            v28 = 0x80000001ABF86190;
            if (0x80000001ABF86190 != v22)
            {
              goto LABEL_67;
            }

            goto LABEL_39;
          default:
            v28 = 0x80000001ABF86190;
LABEL_67:
            v31 = sub_1ABF25054();

            if ((v31 & 1) == 0)
            {
              v32 = "includedInClosedRange";
              switch(v8)
              {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                  goto LABEL_78;
                case 4:
                  goto LABEL_88;
                case 6:
                  v32 = "partialRangeThrough";
LABEL_88:
                  if (0x80000001ABF86230 == (v32 | 0x8000000000000000))
                  {
LABEL_107:

                    v35 = a1;
                  }

                  else
                  {
LABEL_78:
                    v34 = sub_1ABF25054();

                    v35 = a1;
                    if ((v34 & 1) == 0)
                    {
                      switch(v8)
                      {
                        case 0:
                        case 3:
                        case 4:
                        case 6:
                        case 7:
                          goto LABEL_108;
                        case 1:
                          goto LABEL_106;
                        case 2:
                          v28 = 0x80000001ABF861B0;
                          goto LABEL_106;
                        case 5:
                          v28 = 0x80000001ABF86210;
LABEL_106:
                          if (0x80000001ABF861B0 == v28)
                          {
                            goto LABEL_107;
                          }

LABEL_108:
                          v44 = sub_1ABF25054();

                          v35 = a1;
                          if (v44)
                          {
                            break;
                          }

                          goto LABEL_3;
                        default:
                          goto LABEL_110;
                      }
                    }
                  }

                  MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
                  MEMORY[0x1AC5A9410](v35, a2);
                  v25 = 2112544;
                  v26 = 0xE300000000000000;
                  goto LABEL_69;
                default:
                  goto LABEL_110;
              }
            }

            break;
        }
      }
    }

    MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    v25 = 540884000;
    v26 = 0xE400000000000000;
  }

  else if (a6)
  {
    v13 = 0;
    v14 = "nonDiscretionary";
    switch(*a7)
    {
      case 1:
        v13 = 0;
        v14 = "includesOpenRange";
        break;
      case 2:
        v13 = 0;
        v14 = "includesClosedRange";
        break;
      case 3:
        v13 = 0;
        v14 = "includedInOpenRange";
        break;
      case 4:
        v14 = "includedInClosedRange";
        goto LABEL_30;
      case 5:
        v13 = 0;
        v14 = "partialRangeFrom";
        break;
      case 6:
        v14 = "partialRangeThrough";
LABEL_30:
        v13 = 1;
        break;
      case 7:
        v13 = 0;
        v14 = "partialRangeUpTo";
        break;
      default:
        break;
    }

    if (v13 && (v14 | 0x8000000000000000) == 0x80000001ABF861F0)
    {
LABEL_33:
    }

    else
    {
      v19 = sub_1ABF25054();

      if ((v19 & 1) == 0)
      {
        v20 = "includesOpenRange";
        switch(v8)
        {
          case 1:
            goto LABEL_57;
          case 2:
            v20 = "includesClosedRange";
            goto LABEL_57;
          case 5:
            v20 = "partialRangeFrom";
LABEL_57:
            if (0x80000001ABF86190 != (v20 | 0x8000000000000000))
            {
              goto LABEL_63;
            }

            goto LABEL_33;
          default:
LABEL_63:
            v29 = sub_1ABF25054();

            if ((v29 & 1) == 0)
            {
              v45 = 0x80000001ABF86190;
              v30 = "nonDiscretionary";
              switch(v8)
              {
                case 0:
                  goto LABEL_76;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                  goto LABEL_85;
                case 7:
                  v30 = "partialRangeUpTo";
LABEL_76:
                  if (0x80000001ABF86250 == (v30 | 0x8000000000000000))
                  {
LABEL_95:

                    v40 = a1;
                  }

                  else
                  {
LABEL_85:
                    v39 = sub_1ABF25054();

                    v40 = a1;
                    if ((v39 & 1) == 0)
                    {
                      switch(v8)
                      {
                        case 0:
                        case 3:
                        case 4:
                        case 6:
                        case 7:
                          goto LABEL_101;
                        case 1:
                          goto LABEL_94;
                        case 2:
                          v41 = "includesClosedRange";
                          goto LABEL_93;
                        case 5:
                          v41 = "partialRangeFrom";
LABEL_93:
                          v45 = v41 | 0x8000000000000000;
LABEL_94:
                          if (0x80000001ABF861B0 == v45)
                          {
                            goto LABEL_95;
                          }

LABEL_101:
                          v42 = sub_1ABF25054();

                          v40 = a1;
                          if (v42)
                          {
                            break;
                          }

                          goto LABEL_3;
                        default:
                          goto LABEL_110;
                      }
                    }
                  }

                  MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
                  MEMORY[0x1AC5A9410](v40, a2);
                  v25 = 2113056;
                  v26 = 0xE300000000000000;
                  goto LABEL_69;
                default:
                  goto LABEL_110;
              }
            }

            break;
        }
      }
    }

    MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    v25 = 540884512;
    v26 = 0xE400000000000000;
  }

  else
  {
    v17 = 1;
    v18 = "nonDiscretionary";
    switch(*a7)
    {
      case 1:
        v17 = 0;
        v18 = "includesOpenRange";
        break;
      case 2:
        v17 = 0;
        v18 = "includesClosedRange";
        break;
      case 3:
        v17 = 0;
        v18 = "includedInOpenRange";
        break;
      case 4:
        v17 = 0;
        v18 = "includedInClosedRange";
        break;
      case 5:
        v17 = 0;
        v18 = "partialRangeFrom";
        break;
      case 6:
        v17 = 0;
        v18 = "partialRangeThrough";
        break;
      case 7:
        v18 = "partialRangeUpTo";
        break;
      default:
        break;
    }

    if (v17 && (v18 | 0x8000000000000000) == 0x80000001ABF86170)
    {
    }

    else
    {
      v24 = sub_1ABF25054();

      if ((v24 & 1) == 0)
      {
        v27 = "includesOpenRange";
        switch(v8)
        {
          case 1:
            goto LABEL_60;
          case 2:
            v27 = "includesClosedRange";
            goto LABEL_60;
          case 5:
            v27 = "partialRangeFrom";
LABEL_60:
            if (0x80000001ABF86190 != (v27 | 0x8000000000000000))
            {
              goto LABEL_71;
            }

            break;
          default:
LABEL_71:
            v33 = sub_1ABF25054();

            if ((v33 & 1) == 0)
            {
              switch(v8)
              {
                case 0:
                case 1:
                case 2:
                case 4:
                case 5:
                case 6:
                case 7:
                  v36 = sub_1ABF25054();

                  if (v36)
                  {
                    goto LABEL_81;
                  }

                  v37 = 0x80000001ABF86190;
                  switch(v8)
                  {
                    case 0:
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                      goto LABEL_103;
                    case 1:
                      goto LABEL_98;
                    case 2:
                      v38 = "includesClosedRange";
                      goto LABEL_97;
                    case 5:
                      v38 = "partialRangeFrom";
LABEL_97:
                      v37 = v38 | 0x8000000000000000;
LABEL_98:
                      if (0x80000001ABF861B0 == v37)
                      {
                      }

                      else
                      {
LABEL_103:
                        v43 = sub_1ABF25054();

                        if ((v43 & 1) == 0)
                        {
                          goto LABEL_3;
                        }
                      }

                      sub_1ABF24AB4();
                      MEMORY[0x1AC5A9410](a1, a2);
                      MEMORY[0x1AC5A9410](2112544, 0xE300000000000000);
                      sub_1ABF24344();
                      MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
                      MEMORY[0x1AC5A9410](a1, a2);
                      v25 = 2113056;
                      v26 = 0xE300000000000000;
                      break;
                    default:
                      goto LABEL_110;
                  }

                  goto LABEL_69;
                case 3:

LABEL_81:
                  sub_1ABF24AB4();
                  MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
                  MEMORY[0x1AC5A9410](a1, a2);
                  MEMORY[0x1AC5A9410](540884000, 0xE400000000000000);
                  sub_1ABF24344();
                  MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
                  MEMORY[0x1AC5A9410](a1, a2);
                  v25 = 540884512;
                  goto LABEL_82;
                default:
LABEL_110:
                  JUMPOUT(0);
              }
            }

            return result;
        }

        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
        MEMORY[0x1AC5A9410](a1, a2);
        MEMORY[0x1AC5A9410](540884512, 0xE400000000000000);
        sub_1ABF24344();
        MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
        MEMORY[0x1AC5A9410](a1, a2);
        v25 = 540884000;
LABEL_82:
        v26 = 0xE400000000000000;
        goto LABEL_69;
      }
    }

    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0x4E45455754454220, 0xE900000000000020);
    sub_1ABF24344();
    v25 = 0x20444E4120;
    v26 = 0xE500000000000000;
  }

LABEL_69:
  MEMORY[0x1AC5A9410](v25, v26);
  sub_1ABF24344();
  return 0;
}

_OWORD *sub_1ABDE4244(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1ABDE425C()
{
  result = qword_1EB4D9DA0;
  if (!qword_1EB4D9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DA0);
  }

  return result;
}

uint64_t sub_1ABDE4314(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABDE4448()
{
  result = qword_1EB4D9DB0;
  if (!qword_1EB4D9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DB0);
  }

  return result;
}

unint64_t sub_1ABDE44C8()
{
  result = qword_1EB4D9DB8;
  if (!qword_1EB4D9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DB8);
  }

  return result;
}

unint64_t sub_1ABDE451C()
{
  result = qword_1EB4D9DC8;
  if (!qword_1EB4D9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DC8);
  }

  return result;
}

unint64_t sub_1ABDE4570()
{
  result = qword_1EB4D9DD0;
  if (!qword_1EB4D9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DD0);
  }

  return result;
}

unint64_t sub_1ABDE4678()
{
  result = qword_1EB4D9DE0;
  if (!qword_1EB4D9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DE0);
  }

  return result;
}

unint64_t sub_1ABDE46CC()
{
  result = qword_1EB4D9DE8;
  if (!qword_1EB4D9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DE8);
  }

  return result;
}

uint64_t sub_1ABDE47E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABDE482C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1ABDE1B44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1ABDE4858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  result = sub_1ABDE22A0(a1, a2, a3, a4, a5, a6, a7, a8, a10);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

uint64_t KTSDataRequest.init(parameters:cadence:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1ABF21F04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1ABA937E4(a2);
  *(a2 + 169) = a1;
  sub_1ABF21EF4();
  v9 = sub_1ABF21EC4();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  *(a2 + 176) = v9;
  *(a2 + 184) = v11;
  return result;
}

uint64_t KTSSliceData.identifier.getter()
{
  memcpy(v5, v0, sizeof(v5));
  v2 = v0[26];
  v1 = v0[27];
  if (sub_1ABDD3444(v5) == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v5[22];
  }

  return v3;
}

void *KTSSliceData.init(identifier:data:context:metadata:)()
{
  sub_1ABA80FB8();
  sub_1ABDE4AC8(v5);
  sub_1ABDD345C(v7);
  memcpy(__dst, v7, 0xC0uLL);
  __dst[24] = v1;
  __dst[25] = v0;
  __dst[26] = v3;
  __dst[27] = v2;
  nullsub_1(__dst);
  return memcpy(v4, __dst, 0xE0uLL);
}

uint64_t sub_1ABDE4AC8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9E00, &qword_1ABF62820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KTSData.init(identifier:data:context:metadata:)()
{
  sub_1ABA8EBF8();
  EntityIdentifier.init(_:)(v4, v5, &v14);
  if (v15 == 1)
  {
    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA7DD18();
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1EB4CE7F0);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24664();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_1ABA83B70(&dword_1ABA78000, v10, v11, "Can't make life event entity identifier for trip data object");
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
    }

    sub_1ABDE4AC8(v3);

    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
  }

  else
  {
    v13 = v14;
    result = sub_1ABDE4AC8(v3);
    *v0 = v13;
    v0[1] = v1;
    v0[2] = v2;
  }

  return result;
}

double KTSSegmentData.init(identifier:data:context:metadata:)()
{
  sub_1ABA8EBF8();
  EntityIdentifier.init(_:)(v4, v5, &v16);
  if ((v17 & 1) == 0)
  {
    v6 = v16;
    sub_1ABDE5900(v3, &v16, &qword_1EB4D9E00, &qword_1ABF62820);
    if (v18)
    {
      sub_1ABAD219C(&qword_1EB4D9E08, &qword_1ABF62828);
      if (swift_dynamicCast())
      {
        sub_1ABDE4AC8(v3);
        *v0 = v14;
        v0[1] = v15;
        v0[2] = v6;
        v0[3] = v1;
        v0[4] = v2;
        return result;
      }
    }

    else
    {
      sub_1ABDE4AC8(&v16);
    }
  }

  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA7DD18();
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1EB4CE7F0);
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24664();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    sub_1ABA83B70(&dword_1ABA78000, v12, v13, "Can't make a KTS entity identifier for KTS segment data object");
    MEMORY[0x1AC5AB8B0](v11, -1, -1);
  }

  sub_1ABDE4AC8(v3);

  v0[4] = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 1) = 0u;
  return result;
}

uint64_t KTSDataRequest.Cadence.rawValue.getter()
{
  v1 = 0x796C68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C61756E6E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C6B656577;
  }
}

uint64_t KTSSegmentData.segmentId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t KTSSegmentData.data.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t KTSSegmentData.context.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t KTSSegmentData.Metadata.segmentId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t KTSSegmentData.Metadata.segmentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1ABDE5020@<X0>(uint64_t *a1@<X8>)
{
  result = KTSSegmentData.context.getter();
  *a1 = result;
  return result;
}

uint64_t KTSData.data.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t KTSData.context.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1ABDE5158@<X0>(uint64_t *a1@<X8>)
{
  result = KTSData.context.getter();
  *a1 = result;
  return result;
}

uint64_t KTSSliceData.request.getter()
{
  memcpy(__dst, v0, 0xC0uLL);
  v1 = sub_1ABA7D000();
  memcpy(v1, v2, 0xC0uLL);
  return sub_1ABDE5900(__dst, v4, &qword_1EB4D9E10, &qword_1ABF62830);
}

uint64_t KTSSliceData.data.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t KTSSliceData.context.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

void *KTSSliceData.init(identifier:data:context:request:)()
{
  sub_1ABA80FB8();
  memcpy(v7, v5, sizeof(v7));
  v4[24] = v1;
  v4[25] = v0;
  nullsub_1(v7);
  result = memcpy(v4, v7, 0xC0uLL);
  v4[26] = v3;
  v4[27] = v2;
  return result;
}

uint64_t sub_1ABDE534C@<X0>(uint64_t *a1@<X8>)
{
  result = KTSSliceData.context.getter();
  *a1 = result;
  return result;
}

IntelligencePlatform::KTSDataRequest::Cadence_optional __swiftcall KTSDataRequest.Cadence.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x796C6B656577 && rawValue._object == 0xE600000000000000;
  if (v5 || (sub_1ABA7C038() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x796C68746E6F6DLL && object == 0xE700000000000000;
    if (v8 || (sub_1ABA7C038() & 1) != 0)
    {

      v7 = 1;
    }

    else if (countAndFlagsBits == 0x6C61756E6E61 && object == 0xE600000000000000)
    {

      v7 = 2;
    }

    else
    {
      v10 = sub_1ABA7C038();

      if (v10)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1ABDE54D8@<X0>(uint64_t *a1@<X8>)
{
  result = KTSDataRequest.Cadence.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KTSDataRequest.parameters.getter()
{
  sub_1ABA937E4(v4);
  v0 = sub_1ABA7D000();
  memcpy(v0, v1, 0xA9uLL);
  return sub_1ABDD3560(v4, v3);
}

uint64_t KTSDataRequest.requestId.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return sub_1ABA7D000();
}

uint64_t static KTSDataRequest.== infix(_:_:)(unsigned __int8 *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA9uLL);
  v4 = __src[169];
  v5 = *(__src + 22);
  v6 = *(__src + 23);
  memcpy(v16, a2, 0xA9uLL);
  v7 = *(a2 + 169);
  v8 = *(a2 + 176);
  v9 = *(a2 + 184);
  memcpy(__srca, __src, 0xA9uLL);
  memcpy(v13, a2, 0xA9uLL);
  sub_1ABDD3560(__dst, v18);
  sub_1ABDD3560(v16, v18);
  LOBYTE(a2) = static KTSQueryParams.== infix(_:_:)(__srca, v13);
  memcpy(v17, v13, 0xA9uLL);
  sub_1ABDD35BC(v17);
  memcpy(v18, __srca, 0xA9uLL);
  sub_1ABDD35BC(v18);
  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v4 == 3)
  {
    if (v7 != 3)
    {
LABEL_12:
      v11 = 0;
      return v11 & 1;
    }
  }

  else if (v7 == 3 || (sub_1ABAD1410(v4, v7) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v5 == v8 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    sub_1ABA7D000();
    v11 = sub_1ABF25054();
  }

  return v11 & 1;
}

uint64_t KTSDataRequest.hash(into:)()
{
  sub_1ABA937E4(&v5);
  v1 = *(v0 + 169);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  KTSQueryParams.hash(into:)();
  sub_1ABF25254();
  if (v1 != 3)
  {
    sub_1ABA7EA54();
    sub_1ABF23D34();
  }

  return sub_1ABF23D34();
}

uint64_t KTSDataRequest.hashValue.getter()
{
  sub_1ABA937E4(v5);
  v1 = *(v0 + 169);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1ABF25234();
  KTSQueryParams.hash(into:)();
  sub_1ABF25254();
  if (v1 != 3)
  {
    sub_1ABA7EA54();
    sub_1ABF23D34();
  }

  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABDE58C4()
{
  sub_1ABF25234();
  KTSDataRequest.hash(into:)();
  return sub_1ABF25294();
}

uint64_t sub_1ABDE5900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_1ABAD219C(a3, a4) - 8) + 16);
  v6 = sub_1ABA7D000();
  v7(v6);
  return a2;
}

unint64_t sub_1ABDE59B0()
{
  result = qword_1EB4D9E28;
  if (!qword_1EB4D9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E28);
  }

  return result;
}

unint64_t sub_1ABDE5A08()
{
  result = qword_1EB4D9E30;
  if (!qword_1EB4D9E30)
  {
    sub_1ABAE2850(&qword_1EB4D9E38, &qword_1ABF62980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E30);
  }

  return result;
}

unint64_t sub_1ABDE5A70()
{
  result = qword_1EB4D9E40;
  if (!qword_1EB4D9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E40);
  }

  return result;
}

uint64_t sub_1ABDE5AD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDE5B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABDE5C24(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABDE5C44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 192);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDE5C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABDE5D10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 184);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDE5D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSDataRequest.Cadence(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void static KTSRecordType.combine(ktsRecords:intoRowWithId:withType:graphContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v28;
  v29 = *(v22 + 16);
  if (!v29)
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    goto LABEL_16;
  }

  v86 = v26;
  v87 = v20;
  v80 = v23;
  v81 = v24;
  v82 = v27;
  v83 = *v25;
  v30 = v22 + 32;
  v84 = v22 + 32;
  v85 = v29;
  v88 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1ABDEABB0();
    v32 = v89[3];
    v31 = v89[4];
    sub_1ABA93E20(v89, v89[3]);
    v33 = *(v31 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABA93DC0(&v90);
    v33(v32, v31);
    sub_1ABA84B54(v89);
    if (AssociatedTypeWitness)
    {
      sub_1ABAFF5C4(&v90, &v93);
      v34 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      a10 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = *(v34 + 16);
        sub_1ABADC334();
        v36 = v47;
        a10 = v47;
      }

      v37 = *(v36 + 16);
      if (v37 >= *(v36 + 24) >> 1)
      {
        sub_1ABADC334();
        v88 = v48;
        a10 = v48;
      }

      else
      {
        v88 = v36;
      }

      v38 = v96;
      v39 = v97;
      v40 = sub_1ABA94E50(&v93, v96);
      v41 = *(*(v38 - 8) + 64);
      v42 = MEMORY[0x1EEE9AC00](v40);
      v44 = &v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_1ABDE9A60(v37, v44, &a10, v38, v39);
      sub_1ABA84B54(&v93);
    }

    else
    {
      sub_1ABDE64DC(&v90);
    }

    v30 += 40;
    --v29;
  }

  while (v29);
  type metadata accessor for KTSContextRepresentation();
  v49 = v87;
  sub_1ABD9B548(v88, v86);
  if (v49)
  {

    goto LABEL_16;
  }

  v51 = v50;

  if (v51)
  {
    v93 = MEMORY[0x1E69E7CC0];
    v53 = v84;
    v52 = v85;
    do
    {
      sub_1ABDEABB0();
      v54 = v89[3];
      v55 = v89[4];
      sub_1ABA93E20(v89, v89[3]);
      (*(v55 + 32))(v54, v55);
      v56 = sub_1ABA84B54(v89);
      MEMORY[0x1AC5A9710](v56);
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v53 += 40;
      --v52;
    }

    while (v52);
    v57 = v93;
    type metadata accessor for KTSDataRepresentation(0);
    v58 = sub_1ABDAD380(v57);

    if (v58)
    {
      if (v83)
      {
        if (v83 == 1)
        {
          memset(v89, 0, 40);

          KTSData.init(identifier:data:context:metadata:)();
          v59 = v94;
          if (v94)
          {
            v60 = v95;
            v61 = v93;
            v62 = v82;
            v82[3] = &type metadata for KTSData;
            v62[4] = sub_1ABDD34B8();

            *v62 = v61;
            v62[1] = v59;
            v62[2] = v60;
          }

          else
          {

            v78 = v82;
            v82[4] = 0;
            *v78 = 0u;
            *(v78 + 1) = 0u;
          }
        }

        else
        {
          sub_1ABDD345C(v89);
          v75 = v82;
          v82[3] = &type metadata for KTSSliceData;
          v75[4] = sub_1ABDD3464();
          sub_1ABAABD74();
          v76 = swift_allocObject();
          *v75 = v76;
          memcpy(v76 + 2, v89, 0xC0uLL);
          v76[26] = v58;
          v76[27] = v51;
          v77 = v81;
          v76[28] = v80;
          v76[29] = v77;
        }
      }

      else
      {
        if (qword_1EB4CE7E8 != -1)
        {
          sub_1ABA7DD18();
        }

        v70 = sub_1ABF237F4();
        sub_1ABA7AA24(v70, qword_1EB4CE7F0);
        v71 = sub_1ABF237D4();
        v72 = sub_1ABF24664();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = sub_1ABA88598();
          *v73 = 0;
          _os_log_impl(&dword_1ABA78000, v71, v72, "KTSRecord: Can't combine into type ktsSegmentRecordType. Please pick one of ktsSliceRecordType or ktsRecordType", v73, 2u);
          MEMORY[0x1AC5AB8B0](v73, -1, -1);
        }

        sub_1ABA88E10();
        sub_1ABA7BD00();
        sub_1ABA96E10(v74, 0xD00000000000006FLL);
      }

      goto LABEL_16;
    }
  }

  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA7DD18();
  }

  v63 = sub_1ABF237F4();
  sub_1ABA7AA24(v63, qword_1EB4CE7F0);
  v64 = sub_1ABF237D4();
  v65 = sub_1ABF24664();
  if (sub_1ABA957C8(v65))
  {
    v66 = sub_1ABA88598();
    sub_1ABA96C68(v66);
    sub_1ABAA3060(&dword_1ABA78000, v67, v68, "KTSDataProtocol: Missing result for context or data.");
    sub_1ABA82E18();
  }

  sub_1ABA88E10();
  sub_1ABA7BD00();
  sub_1ABA96E10(v69, 0xD00000000000002ELL);
LABEL_16:
  sub_1ABA7BC90();
}

uint64_t sub_1ABDE64DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9E48, &unk_1ABF62D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABDE6544@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  sub_1ABA93E20(a2, v7);
  (*(v8 + 72))(__src, v7, v8);
  v9 = EntityIdentifier.stringValue.getter();
  v11 = v10;
  v12 = a2[3];
  v13 = a2[4];
  sub_1ABA93E20(a2, v12);
  (*(v13 + 88))(v51, v12, v13);
  if (v3)
  {
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_1ABA93E20(a2, v14);
  (*(v15 + 80))(v14, v15);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1ABDEABB0();
      sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
      sub_1ABA82858();
      type metadata accessor for KTSContextAggregateRepresentation();
      if (sub_1ABAA4238())
      {
        type metadata accessor for KTSDataAggregateRepresentation(0);
        if (swift_dynamicCastClass())
        {
          memset(__src, 0, 40);

          KTSData.init(identifier:data:context:metadata:)();
          if (v48)
          {
            a3[3] = &type metadata for KTSData;
            a3[4] = sub_1ABDD34B8();

            *a3 = v47;
            a3[1] = v48;
            a3[2] = v49;
            return sub_1ABA84B54(v51);
          }

          goto LABEL_37;
        }
      }

      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v34 = sub_1ABF237F4();
      sub_1ABA7AA24(v34, qword_1EB4CE7F0);
      v35 = sub_1ABF237D4();
      v36 = sub_1ABF24664();
      if (sub_1ABA957C8(v36))
      {
        v37 = sub_1ABA88598();
        sub_1ABA96C68(v37);
        sub_1ABAA3060(&dword_1ABA78000, v38, v39, "KTSRecord: Wrong result for KTSData.Context or KTSData.Data.");
        sub_1ABA82E18();
      }

      sub_1ABA88E10();
      sub_1ABA7BD00();
      sub_1ABAA18A4();
    }

    else
    {
      sub_1ABDEABB0();
      sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
      sub_1ABA82858();
      type metadata accessor for KTSContextAggregateRepresentation();
      if (sub_1ABAA4238())
      {
        type metadata accessor for KTSDataAggregateRepresentation(0);
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = v22;
          sub_1ABDD345C(__src);
          a3[3] = &type metadata for KTSSliceData;
          a3[4] = sub_1ABDD3464();
          sub_1ABAABD74();
          v24 = swift_allocObject();
          *a3 = v24;
          memcpy(v24 + 2, __src, 0xC0uLL);
          v24[26] = v23;
          v24[27] = v47;
          v24[28] = v9;
          v24[29] = v11;
          return sub_1ABA84B54(v51);
        }
      }

      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v40 = sub_1ABF237F4();
      sub_1ABA7AA24(v40, qword_1EB4CE7F0);
      v41 = sub_1ABF237D4();
      v42 = sub_1ABF24664();
      if (sub_1ABA957C8(v42))
      {
        v43 = sub_1ABA88598();
        sub_1ABA96C68(v43);
        sub_1ABAA3060(&dword_1ABA78000, v44, v45, "KTSRecord: Wrong result for TriKTSSliceDatapData.Context or KTSSliceData.Data.");
        sub_1ABA82E18();
      }

      sub_1ABA88E10();
      sub_1ABA7BD00();
      sub_1ABAA18A4();
      v33 = v46 + 26;
    }

LABEL_35:
    sub_1ABA96E10(v31, v33);

    return sub_1ABA84B54(v51);
  }

  sub_1ABDEABB0();
  sub_1ABAD219C(&qword_1EB4D9F68, qword_1ABF63878);
  if (!swift_dynamicCast())
  {
LABEL_18:

    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA7DD18();
    }

    v25 = sub_1ABF237F4();
    sub_1ABA7AA24(v25, qword_1EB4CE7F0);
    v26 = sub_1ABF237D4();
    v27 = sub_1ABF24664();
    if (sub_1ABA957C8(v27))
    {
      v28 = sub_1ABA88598();
      sub_1ABA96C68(v28);
      sub_1ABAA3060(&dword_1ABA78000, v29, v30, "KTSRecord: Wrong result for KTSSegment.Context.");
      sub_1ABA82E18();
    }

    sub_1ABA88E10();
    sub_1ABA7BD00();
    sub_1ABAA18A4();
    v33 = v32 | 3;
    goto LABEL_35;
  }

  v17 = __src[6];
  sub_1ABA96210(*&__src[5], *(&__src[5] + 1));
  sub_1ABA96210(v17, *(&v17 + 1));
  sub_1ABDEABB0();
  sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
  sub_1ABA82858();
  type metadata accessor for KTSContextRepresentation();
  if ((sub_1ABAA4238() & 1) == 0)
  {

    goto LABEL_18;
  }

  KTSSegmentData.init(identifier:data:context:metadata:)();
  v18 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v19 = *&__src[1];
    v20 = *&__src[0];
    a3[3] = &type metadata for KTSSegmentData;
    a3[4] = sub_1ABDD350C();
    v21 = swift_allocObject();
    *a3 = v21;

    *(v21 + 16) = v20;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = *(&__src[1] + 8);
    return sub_1ABA84B54(v51);
  }

LABEL_37:
  sub_1ABA84B54(v51);

  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

void KTSRecordProtocol.toData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v30 = v29;
  v83 = v31;
  v32 = sub_1ABA7BB64(v29);
  v34 = v33;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v32);
  v39 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 64))(&a13, v37);
  v41 = a13;
  v42 = v28[10];
  v43 = sub_1ABA8EC0C();
  v45 = v44(v43);
  if (v41)
  {
    if (v41 != 1)
    {
      if (v24)
      {
        goto LABEL_25;
      }

      type metadata accessor for KTSDataAggregateRepresentation(0);
      if (swift_dynamicCastClass())
      {
        sub_1ABA955A0();
        v60 = sub_1ABA8EC0C();
        v61(v60);
        sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
        sub_1ABA82858();
        type metadata accessor for KTSContextAggregateRepresentation();
        if (swift_dynamicCast())
        {
          v62 = v90;
          v63 = v28[9];
          v64 = sub_1ABA8EF78();
          v65(v64);
          v66 = EntityIdentifier.stringValue.getter();
          v68 = v67;
          sub_1ABDD345C(v84);
          v69 = v83;
          v83[3] = &type metadata for KTSSliceData;
          v69[4] = sub_1ABDD3464();
          sub_1ABAABD74();
          v70 = swift_allocObject();
          *v69 = v70;
          memcpy(v70 + 2, v84, 0xC0uLL);
          v70[26] = v39;
          v70[27] = v62;
          v70[28] = v66;
          v70[29] = v68;
          goto LABEL_25;
        }
      }

      goto LABEL_17;
    }

    if (!v24)
    {
      type metadata accessor for KTSDataAggregateRepresentation(0);
      if (swift_dynamicCastClass())
      {
        sub_1ABA955A0();
        v46 = sub_1ABA8EC0C();
        v47(v46);
        sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
        sub_1ABA82858();
        type metadata accessor for KTSContextAggregateRepresentation();
        if (sub_1ABAB578C())
        {
          sub_1ABA90DE8();
          v48 = sub_1ABA8EF78();
          v49(v48);
          EntityIdentifier.stringValue.getter();
          memset(v84, 0, 40);

          KTSData.init(identifier:data:context:metadata:)();
          v50 = v86;
          if (v86)
          {
            v51 = v87;
            v52 = v85;
            v53 = v83;
            v83[3] = &type metadata for KTSData;
            v53[4] = sub_1ABDD34B8();

            *v53 = v52;
            v53[1] = v50;
            v53[2] = v51;
            goto LABEL_25;
          }
        }
      }

LABEL_17:

      sub_1ABA88E10();
      sub_1ABA7BD00();
      sub_1ABDEAD4C(v71, 0xD000000000000049);
    }
  }

  else if (!v24)
  {
    v82 = v45;
    (*(v34 + 16))(v39, v23, v30);
    if (swift_dynamicCast())
    {
      v54 = *(&v84[0] + 1);
      v55 = *&v84[1];
      v56 = v84[6];
      sub_1ABA96210(*&v84[5], *(&v84[5] + 1));
      sub_1ABA96210(v56, *(&v56 + 1));
      v57 = v28[11];
      v58 = sub_1ABA8EC0C();
      v59(v58);
      sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
      sub_1ABA82858();
      type metadata accessor for KTSContextRepresentation();
      if (sub_1ABAB578C())
      {
        sub_1ABA90DE8();
        v72 = sub_1ABA8EF78();
        v73(v72);
        EntityIdentifier.stringValue.getter();
        v88 = &type metadata for KTSSegmentData.Metadata;
        v89 = &protocol witness table for KTSSegmentData.Metadata;
        v85 = v54;
        v86 = v55;

        KTSSegmentData.init(identifier:data:context:metadata:)();
        v74 = *(&v84[0] + 1);
        if (*(&v84[0] + 1))
        {
          v75 = *&v84[1];
          v76 = *&v84[0];
          v77 = sub_1ABDD350C();
          v81 = *(&v84[1] + 8);
          v78 = v83;
          v83[3] = &type metadata for KTSSegmentData;
          v78[4] = v77;
          v79 = swift_allocObject();
          *v78 = v79;

          *(v79 + 16) = v76;
          *(v79 + 24) = v74;
          *(v79 + 32) = v75;
          *(v79 + 40) = v81;
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    sub_1ABA88E10();
    sub_1ABA7BD00();
    sub_1ABDEAD4C(v80, 0xD000000000000044);
  }

LABEL_25:
  sub_1ABA7BC90();
}

IntelligencePlatform::KTSRecordType_optional __swiftcall KTSRecordType.init(rawValue:)(Swift::String rawValue)
{
  sub_1ABDEAD2C();
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KTSRecordType.rawValue.getter()
{
  v1 = 0x726F63655273746BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_1ABDE7250@<X0>(unint64_t *a1@<X8>)
{
  result = KTSRecordType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KTSSegmentRecord.ktsContext.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = sub_1ABA7D000();
  sub_1ABB0DBF0(v3, v4);
  return sub_1ABA7D000();
}

uint64_t KTSSegmentRecord.ktsContext.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t KTSSegmentRecord.ktsData.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = sub_1ABA7D000();
  sub_1ABB0DBF0(v3, v4);
  return sub_1ABA7D000();
}

uint64_t KTSSegmentRecord.ktsData.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t KTSSegmentRecord.ktsDataSummary.getter()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1ABF217F4();
  v6 = sub_1ABA806BC(v5);
  sub_1ABF217E4();
  v7 = sub_1ABA82858();
  type metadata accessor for KTSDataRepresentation(v7);
  sub_1ABDE9B4C(&qword_1EB4D9E50, type metadata accessor for KTSDataRepresentation);
  sub_1ABAA1D74();

  if (!v1)
  {
    v6 = v9;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

void KTSSegmentRecord.ktsContextSummary.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v13 = v12;
  v14 = *(v10 + 80);
  v15 = *(v10 + 88);
  v12[3] = type metadata accessor for KTSContextRepresentation();
  v13[4] = sub_1ABDE9B4C(&qword_1EB4D9E18, type metadata accessor for KTSContextRepresentation);
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1ABF217F4();
  sub_1ABA806BC(v17);
  sub_1ABF217E4();
  sub_1ABDE9B4C(&qword_1EB4D95C8, type metadata accessor for KTSContextRepresentation);
  sub_1ABAB5DA4();

  objc_autoreleasePoolPop(v16);
  if (v11)
  {
    sub_1ABD5B8D0(v13);
  }

  else
  {
    *v13 = a10;
  }

  sub_1ABA7BC90();
}

BOOL static KTSSegmentRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 73);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v14 = *(a2 + 64);
  v16 = *(a2 + 72);
  v17 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  v18 = *(a2 + 73);
  if (v17)
  {
    result = 0;
  }

  else
  {
    v19 = sub_1ABF25054();
    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  v24 = v2 == v11 && v3 == v10 && v5 == v13 && v7 == v15 && v6 == v14;
  if (v24 && ((v8 ^ v16) & 1) == 0 && ((v9 ^ v18) & 1) == 0)
  {
    return v4 == v12;
  }

  return result;
}

uint64_t sub_1ABDE77B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D67655373746BLL && a2 == 0xEC0000006449746ELL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x797469437369 && a2 == 0xE600000000000000;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6177686769487369 && a2 == 0xE900000000000079;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65746E6F4373746BLL && a2 == 0xEA00000000007478;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6174614473746BLL && a2 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1ABF25054();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABDE7B64(char a1)
{
  result = 0x656D67655373746BLL;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x656D6954646E65;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    case 5:
      result = 0x65636E6174736964;
      break;
    case 6:
      result = 0x6F69746176656C65;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x797469437369;
      break;
    case 9:
      result = 0x6177686769487369;
      break;
    case 10:
      result = 0x65746E6F4373746BLL;
      break;
    case 11:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDE7CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDE77B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDE7CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDE7B5C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDE7D24(uint64_t a1)
{
  v2 = sub_1ABDE9AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDE7D60(uint64_t a1)
{
  v2 = sub_1ABDE9AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSSegmentRecord.encode(to:)()
{
  sub_1ABA8E418();
  v34 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D9E58, &qword_1ABF62D30);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v13 = *v0;
  v12 = *(v0 + 8);
  v14 = *(v0 + 24);
  v32 = *(v0 + 16);
  v33 = v12;
  v30 = *(v0 + 32);
  v31 = v14;
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v37 = *(v0 + 72);
  v28 = *(v0 + 73);
  v19 = *(v0 + 88);
  v27[1] = *(v0 + 80);
  v27[2] = v19;
  v20 = *(v0 + 104);
  v29 = *(v0 + 96);
  v21 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABDE9AF8();
  sub_1ABF252E4();
  v35 = v13;
  sub_1ABAE8BC8();
  sub_1ABA97F74();
  v22 = v34;
  sub_1ABF24F84();
  if (v22)
  {
    v24 = *(v6 + 8);
    v25 = sub_1ABA8EF78();
    v26(v25);
  }

  else
  {
    v34 = v20;
    v23 = v29;
    LOBYTE(v35) = 1;
    sub_1ABA81934();
    sub_1ABF24F34();
    sub_1ABA95958(2);
    sub_1ABAA3DB4();
    sub_1ABF24FB4();
    sub_1ABA95958(3);
    sub_1ABAA3DB4();
    sub_1ABF24FB4();
    sub_1ABAA23FC(4);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABAA23FC(5);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABAA23FC(6);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABAA23FC(7);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABA95958(8);
    sub_1ABAA3DB4();
    sub_1ABF24F44();
    sub_1ABA95958(9);
    sub_1ABAA3DB4();
    sub_1ABF24F44();
    sub_1ABAB2BAC();
    sub_1ABC38D74();
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
    v35 = v23;
    v36 = v34;
    sub_1ABB0DBF0(v23, v34);
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
    (*(v6 + 8))(v11);
  }

  sub_1ABA9A664();
}

void KTSSegmentRecord.init(from:)()
{
  sub_1ABA8E418();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D9E68, &qword_1ABF62D38);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABDE9AF8();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAE8B74();
    sub_1ABDEAD38();
    sub_1ABF24E64();
    sub_1ABA7F774(1);
    v10 = sub_1ABF24E14();
    v34 = v11;
    sub_1ABA7F774(2);
    v33 = sub_1ABF24E94();
    sub_1ABA7F774(3);
    v32 = sub_1ABF24E94();
    sub_1ABA7F774(4);
    sub_1ABF24E34();
    v13 = v12;
    sub_1ABA7F774(5);
    sub_1ABF24E34();
    v15 = v14;
    sub_1ABA7F774(6);
    sub_1ABF24E34();
    v17 = v16;
    sub_1ABA7F774(7);
    sub_1ABF24E34();
    v31 = v18;
    sub_1ABA7F774(8);
    v29 = sub_1ABF24E24();
    v27 = v10;
    v28 = v36;
    sub_1ABA7F774(9);
    v25 = sub_1ABF24E24();
    LOBYTE(v35[0]) = 10;
    sub_1ABC38DC8();
    sub_1ABDEAD38();
    sub_1ABF24E64();
    v19 = v36;
    v20 = v37;
    sub_1ABF24E64();
    v21 = v29 & 1;
    v24 = v25 & 1;
    v22 = sub_1ABA8E0A8();
    v23(v22);
    v30 = v51;
    v26 = v52;
    v35[0] = v28;
    v35[1] = v27;
    v35[2] = v34;
    v35[3] = v33;
    v35[4] = v32;
    v35[5] = v13;
    v35[6] = v15;
    v35[7] = v17;
    v35[8] = v31;
    LOBYTE(v35[9]) = v21;
    BYTE1(v35[9]) = v24;
    v35[10] = v19;
    v35[11] = v20;
    v35[12] = v51;
    v35[13] = v52;
    memcpy(v4, v35, 0x70uLL);
    sub_1ABDE4398(v35, &v36);
    sub_1ABA84B54(v2);
    v36 = v28;
    v37 = v27;
    v38 = v34;
    v39 = v33;
    v40 = v32;
    v41 = v13;
    v42 = v15;
    v43 = v17;
    v44 = v31;
    v45 = v21;
    v46 = v24;
    v47 = v19;
    v48 = v20;
    v49 = v30;
    v50 = v26;
    sub_1ABDE43F4(&v36);
  }

  sub_1ABA9A664();
}

uint64_t sub_1ABDE85FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDE9D98();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABDE87BC()
{
  sub_1ABDEAD2C();
  v0 = sub_1ABF24D84();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABDE880C(char a1)
{
  result = 0x644973746BLL;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = sub_1ABA97654();
      break;
    case 3:
      result = sub_1ABAA2DD4();
      break;
    case 4:
      result = sub_1ABA94CBC();
      break;
    case 5:
      result = sub_1ABA8C6D0();
      break;
    case 6:
      result = sub_1ABAA3258();
      break;
    case 7:
      result = sub_1ABAB1210();
      break;
    case 8:
      result = sub_1ABA7AB48();
      break;
    case 9:
      result = sub_1ABA99658();
      break;
    case 10:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDE88D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABAD0BB0();
}

uint64_t sub_1ABDE88F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABDE87BC();
  *a2 = result;
  return result;
}

uint64_t sub_1ABDE8928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABDE880C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABDE8970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDE8804();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDE8998(uint64_t a1)
{
  v2 = sub_1ABDE9B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDE89D4(uint64_t a1)
{
  v2 = sub_1ABDE9B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSSummaryRecord.init(from:)()
{
  sub_1ABA8E418();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D9E88, &qword_1ABF62D48);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABDE9B94();
  sub_1ABAB53B8();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v16 = 0;
    sub_1ABA7DD70();
    sub_1ABF24E94();
    sub_1ABA8F8A0(1);
    sub_1ABF24E94();
    sub_1ABA8F8A0(2);
    sub_1ABF24E94();
    sub_1ABA8F8A0(3);
    sub_1ABF24E34();
    sub_1ABA8F8A0(4);
    sub_1ABF24E34();
    sub_1ABA8F8A0(6);
    sub_1ABF24E34();
    sub_1ABA8F8A0(7);
    sub_1ABF24E24();
    sub_1ABA8F8A0(8);
    sub_1ABF24E24();
    sub_1ABA8F8A0(5);
    sub_1ABF24E34();
    sub_1ABA964E0();
    sub_1ABAA3A5C();
    *(v9 - 256) = v8;
    sub_1ABA80994();
    sub_1ABF24E64();
    sub_1ABAA203C();
    sub_1ABAA3A5C();
    v11 = *(v10 - 256);
    sub_1ABA80994();
    sub_1ABF24E64();
    v12 = sub_1ABA7BCF0();
    v13(v12);
    sub_1ABA937FC();
    sub_1ABDE9BE8(&v15, &v16);
    sub_1ABA84B54(v2);
    v14 = sub_1ABA81B2C();
    sub_1ABDE9C20(v14);
  }

  sub_1ABA9A664();
}

uint64_t sub_1ABDE8CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDE9FD8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t KTSSliceRecord.ktsContext.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_1ABA7D000();
  sub_1ABB0DBF0(v3, v4);
  return sub_1ABA7D000();
}

uint64_t KTSSliceRecord.ktsContext.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t KTSSliceRecord.ktsData.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = sub_1ABA7D000();
  sub_1ABB0DBF0(v3, v4);
  return sub_1ABA7D000();
}

uint64_t KTSSliceRecord.ktsData.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_1ABDE8F98()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1ABF217F4();
  v6 = sub_1ABA806BC(v5);
  sub_1ABF217E4();
  v7 = sub_1ABA82858();
  type metadata accessor for KTSDataAggregateRepresentation(v7);
  sub_1ABDE9B4C(&qword_1EB4D9E70, type metadata accessor for KTSDataAggregateRepresentation);
  sub_1ABAA1D74();

  if (!v1)
  {
    v6 = v9;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

void sub_1ABDE9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v13 = v12;
  v14 = *(v10 + 64);
  v15 = *(v10 + 72);
  v12[3] = type metadata accessor for KTSContextAggregateRepresentation();
  v13[4] = sub_1ABDE9B4C(&qword_1EB4D9E20, type metadata accessor for KTSContextAggregateRepresentation);
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1ABF217F4();
  sub_1ABA806BC(v17);
  sub_1ABF217E4();
  sub_1ABDE9B4C(&qword_1EB4D95D8, type metadata accessor for KTSContextAggregateRepresentation);
  sub_1ABAB5DA4();

  objc_autoreleasePoolPop(v16);
  if (v11)
  {
    sub_1ABD5B8D0(v13);
  }

  else
  {
    *v13 = a10;
  }

  sub_1ABA7BC90();
}

BOOL sub_1ABDE918C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (v8 && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && ((*(a1 + 49) ^ *(a2 + 49)) & 1) == 0)
  {
    return *(a1 + 56) == *(a2 + 56);
  }

  return result;
}

void sub_1ABDE9248()
{
  sub_1ABA8E418();
  v34 = v2;
  v35 = v1;
  v4 = v3;
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7BB64(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v16 = *v0;
  v15 = *(v0 + 8);
  v32 = *(v0 + 16);
  v33 = v15;
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  v19 = *(v0 + 40);
  v38 = *(v0 + 48);
  v31 = *(v0 + 49);
  v20 = *(v0 + 56);
  v21 = *(v0 + 64);
  v29 = *(v0 + 72);
  v30 = v21;
  v22 = *(v0 + 88);
  v28[1] = *(v0 + 80);
  v28[2] = v22;
  v23 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  v34();
  sub_1ABF252E4();
  v36 = v16;
  v24 = v14;
  sub_1ABAE8BC8();
  sub_1ABA97F74();
  v25 = v35;
  sub_1ABF24F84();
  if (!v25)
  {
    v27 = v29;
    v26 = v30;
    sub_1ABA95958(1);
    sub_1ABAB51B0();
    sub_1ABF24FB4();
    sub_1ABA95958(2);
    sub_1ABAB51B0();
    sub_1ABF24FB4();
    sub_1ABAA23FC(3);
    sub_1ABAB6994();
    sub_1ABAA23FC(4);
    sub_1ABAB6994();
    sub_1ABAA23FC(5);
    sub_1ABAB6994();
    sub_1ABAA23FC(6);
    sub_1ABAB6994();
    sub_1ABA95958(7);
    sub_1ABAB51B0();
    sub_1ABF24F44();
    sub_1ABA95958(8);
    sub_1ABAB51B0();
    sub_1ABF24F44();
    v36 = v26;
    v37 = v27;
    sub_1ABB0DBF0(v26, v27);
    sub_1ABC38D74();
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
    sub_1ABAB2BAC();
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
  }

  (*(v9 + 8))(v24, v7);
  sub_1ABA9A664();
}

uint64_t sub_1ABDE94FC()
{
  sub_1ABDEAD2C();
  v0 = sub_1ABF24D84();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABDE954C(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = sub_1ABA97654();
      break;
    case 3:
      result = sub_1ABAA2DD4();
      break;
    case 4:
      result = sub_1ABA94CBC();
      break;
    case 5:
      result = sub_1ABA8C6D0();
      break;
    case 6:
      result = sub_1ABAA3258();
      break;
    case 7:
      result = sub_1ABAB1210();
      break;
    case 8:
      result = sub_1ABA7AB48();
      break;
    case 9:
      result = sub_1ABA99658();
      break;
    case 10:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDE9624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABDE94FC();
  *a2 = result;
  return result;
}

uint64_t sub_1ABDE9654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABDE954C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABDE969C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDE9544();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDE96C4(uint64_t a1)
{
  v2 = sub_1ABDE9C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDE9700(uint64_t a1)
{
  v2 = sub_1ABDE9C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSSliceRecord.init(from:)()
{
  sub_1ABA8E418();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D9EA0, &qword_1ABF62D58);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABDE9C50();
  sub_1ABAB53B8();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v16 = 0;
    sub_1ABA7DD70();
    sub_1ABF24E94();
    sub_1ABA8F8A0(1);
    sub_1ABF24E94();
    sub_1ABA8F8A0(2);
    sub_1ABF24E94();
    sub_1ABA8F8A0(3);
    sub_1ABF24E34();
    sub_1ABA8F8A0(4);
    sub_1ABF24E34();
    sub_1ABA8F8A0(6);
    sub_1ABF24E34();
    sub_1ABA8F8A0(7);
    sub_1ABF24E24();
    sub_1ABA8F8A0(8);
    sub_1ABF24E24();
    sub_1ABA8F8A0(5);
    sub_1ABF24E34();
    sub_1ABA964E0();
    sub_1ABAA3A5C();
    *(v9 - 256) = v8;
    sub_1ABA80994();
    sub_1ABF24E64();
    sub_1ABAA203C();
    sub_1ABAA3A5C();
    v11 = *(v10 - 256);
    sub_1ABA80994();
    sub_1ABF24E64();
    v12 = sub_1ABA7BCF0();
    v13(v12);
    sub_1ABA937FC();
    sub_1ABDE45C4(&v15, &v16);
    sub_1ABA84B54(v2);
    v14 = sub_1ABA81B2C();
    sub_1ABDE4790(v14);
  }

  sub_1ABA9A664();
}

uint64_t sub_1ABDE99E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDEA1C4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABDE9A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1ABA93DC0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1ABAFF5C4(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_1ABDE9AF8()
{
  result = qword_1EB4D9E60;
  if (!qword_1EB4D9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E60);
  }

  return result;
}

uint64_t sub_1ABDE9B4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ABDE9B94()
{
  result = qword_1EB4D9E80;
  if (!qword_1EB4D9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E80);
  }

  return result;
}

unint64_t sub_1ABDE9C50()
{
  result = qword_1EB4D9E98;
  if (!qword_1EB4D9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E98);
  }

  return result;
}

unint64_t sub_1ABDE9CA8()
{
  result = qword_1EB4D9EA8;
  if (!qword_1EB4D9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EA8);
  }

  return result;
}

unint64_t sub_1ABDE9CFC(void *a1)
{
  a1[1] = sub_1ABDE4448();
  a1[2] = sub_1ABDE9D44();
  a1[3] = sub_1ABDE9D98();
  a1[4] = sub_1ABDE9DEC();
  result = sub_1ABDE9E40();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDE9D44()
{
  result = qword_1EB4D9EB0;
  if (!qword_1EB4D9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EB0);
  }

  return result;
}

unint64_t sub_1ABDE9D98()
{
  result = qword_1EB4D9EB8;
  if (!qword_1EB4D9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EB8);
  }

  return result;
}

unint64_t sub_1ABDE9DEC()
{
  result = qword_1EB4D9EC0;
  if (!qword_1EB4D9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EC0);
  }

  return result;
}

unint64_t sub_1ABDE9E40()
{
  result = qword_1EB4D9EC8;
  if (!qword_1EB4D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EC8);
  }

  return result;
}

unint64_t sub_1ABDE9EE8(void *a1)
{
  a1[1] = sub_1ABDE9F30();
  a1[2] = sub_1ABDE9F84();
  a1[3] = sub_1ABDE9FD8();
  a1[4] = sub_1ABDEA02C();
  result = sub_1ABDEA080();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDE9F30()
{
  result = qword_1EB4D9ED0;
  if (!qword_1EB4D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9ED0);
  }

  return result;
}

unint64_t sub_1ABDE9F84()
{
  result = qword_1EB4D9ED8;
  if (!qword_1EB4D9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9ED8);
  }

  return result;
}

unint64_t sub_1ABDE9FD8()
{
  result = qword_1EB4D9EE0;
  if (!qword_1EB4D9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EE0);
  }

  return result;
}

unint64_t sub_1ABDEA02C()
{
  result = qword_1EB4D9EE8;
  if (!qword_1EB4D9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EE8);
  }

  return result;
}

unint64_t sub_1ABDEA080()
{
  result = qword_1EB4D9EF0;
  if (!qword_1EB4D9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EF0);
  }

  return result;
}

unint64_t sub_1ABDEA128(void *a1)
{
  a1[1] = sub_1ABDE44C8();
  a1[2] = sub_1ABDEA170();
  a1[3] = sub_1ABDEA1C4();
  a1[4] = sub_1ABDEA218();
  result = sub_1ABDEA26C();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDEA170()
{
  result = qword_1EB4D9EF8;
  if (!qword_1EB4D9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EF8);
  }

  return result;
}

unint64_t sub_1ABDEA1C4()
{
  result = qword_1EB4D9F00;
  if (!qword_1EB4D9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F00);
  }

  return result;
}

unint64_t sub_1ABDEA218()
{
  result = qword_1EB4D9F08;
  if (!qword_1EB4D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F08);
  }

  return result;
}

unint64_t sub_1ABDEA26C()
{
  result = qword_1EB4D9F10;
  if (!qword_1EB4D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F10);
  }

  return result;
}

uint64_t sub_1ABDEA314(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSRecordType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABDEA5D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 96))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDEA61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1ABDEA690(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSSegmentRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDEA848()
{
  result = qword_1EB4D9F18;
  if (!qword_1EB4D9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F18);
  }

  return result;
}

unint64_t sub_1ABDEA8A0()
{
  result = qword_1EB4D9F20;
  if (!qword_1EB4D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F20);
  }

  return result;
}

unint64_t sub_1ABDEA8F8()
{
  result = qword_1EB4D9F28;
  if (!qword_1EB4D9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F28);
  }

  return result;
}

unint64_t sub_1ABDEA950()
{
  result = qword_1EB4D9F30;
  if (!qword_1EB4D9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F30);
  }

  return result;
}

unint64_t sub_1ABDEA9A8()
{
  result = qword_1EB4D9F38;
  if (!qword_1EB4D9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F38);
  }

  return result;
}

unint64_t sub_1ABDEAA00()
{
  result = qword_1EB4D9F40;
  if (!qword_1EB4D9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F40);
  }

  return result;
}

unint64_t sub_1ABDEAA58()
{
  result = qword_1EB4D9F48;
  if (!qword_1EB4D9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F48);
  }

  return result;
}

unint64_t sub_1ABDEAAB0()
{
  result = qword_1EB4D9F50;
  if (!qword_1EB4D9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F50);
  }

  return result;
}

unint64_t sub_1ABDEAB08()
{
  result = qword_1EB4D9F58;
  if (!qword_1EB4D9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F58);
  }

  return result;
}

unint64_t sub_1ABDEAB5C()
{
  result = qword_1EB4D9F60;
  if (!qword_1EB4D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F60);
  }

  return result;
}

uint64_t sub_1ABDEABB0()
{
  sub_1ABDEAD2C();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0);
  return v0;
}

uint64_t sub_1ABDEAD4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 4;

  return swift_willThrow();
}

void sub_1ABDEAD7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0xEB00000000746E65;
    v10 = 0x6D6765735F73746BLL;
  }

  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v13 = sub_1ABF237F4();
  sub_1ABA7AA24(v13, qword_1EB4CE7F0);
  v14 = sub_1ABF237D4();
  v15 = sub_1ABF24644();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1ABA78000, v14, v15, "Fetching KTSSegmentView for client.", v16, 2u);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t sub_1ABDEAF18()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABDEAF64(char a1)
{
  result = 0x656D67655373746BLL;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x656D6954646E65;
      break;
    case 4:
      result = 0x65636E6174736964;
      break;
    case 5:
      result = 0x6F69746176656C65;
      break;
    case 6:
      result = 0x65726F6373;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x797469437369;
      break;
    case 9:
      result = 0x6177686769487369;
      break;
    case 10:
      result = 0x65746E6F4373746BLL;
      break;
    case 11:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDEB0CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACFE80();
}

uint64_t sub_1ABDEB0F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABDEAF18();
  *a2 = result;
  return result;
}

uint64_t sub_1ABDEB120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABDEAF64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABDEB14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABDEB510();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABDEB198(uint64_t a1)
{
  v2 = sub_1ABDEB564();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1ABDEB1E4(uint64_t a1)
{
  v2 = sub_1ABDEB464();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABDEB230(uint64_t a1)
{
  v2 = sub_1ABDEB464();

  return MEMORY[0x1EEE09A88](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for KTSSegmentViewColumns(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDEB35C()
{
  result = qword_1EB4D9F70;
  if (!qword_1EB4D9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F70);
  }

  return result;
}

unint64_t sub_1ABDEB3B4()
{
  result = qword_1EB4D9F78;
  if (!qword_1EB4D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F78);
  }

  return result;
}

unint64_t sub_1ABDEB40C()
{
  result = qword_1EB4D9F80;
  if (!qword_1EB4D9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F80);
  }

  return result;
}

unint64_t sub_1ABDEB464()
{
  result = qword_1EB4D9F88;
  if (!qword_1EB4D9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F88);
  }

  return result;
}

unint64_t sub_1ABDEB4BC()
{
  result = qword_1EB4D9F90;
  if (!qword_1EB4D9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F90);
  }

  return result;
}

unint64_t sub_1ABDEB510()
{
  result = qword_1EB4D9F98;
  if (!qword_1EB4D9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F98);
  }

  return result;
}

unint64_t sub_1ABDEB564()
{
  result = qword_1EB4D9FA0;
  if (!qword_1EB4D9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9FA0);
  }

  return result;
}

void sub_1ABDEB5C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;

    swift_unknownObjectRelease();
    if (qword_1EB4CE7E8 != -1)
    {
      swift_once();
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1EB4CE7F0);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24644();
    if (os_log_type_enabled(v14, v15))
    {
      v22 = a3;
      v16 = a2;
      v17 = v12;
      v18 = v10;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1ABA78000, v14, v15, "Fetching KTSSliceView for client.", v19, 2u);
      v20 = v19;
      v10 = v18;
      v12 = v17;
      a2 = v16;
      a3 = v22;
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
    }

    *a4 = a1;
    a4[1] = v10;
    a4[2] = v12;
    a4[3] = a2;
    a4[4] = a3;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1ABDBF718();
    swift_allocError();
    *v21 = 0xD000000000000015;
    *(v21 + 8) = 0x80000001ABF91450;
    *(v21 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1ABDEB798()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4CF640);
  sub_1ABA7AA24(v0, qword_1EB4CF640);
  return sub_1ABF22CE4();
}

uint64_t LanguageView.databaseFilePath.getter()
{
  v2 = sub_1ABF21CF4();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v11 = [*v0 viewArtifactURL];
    sub_1ABF21CA4();

    v1 = sub_1ABF21CB4();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    sub_1ABB93C20();
    swift_allocError();
    *v12 = 0xD00000000000001ELL;
    *(v12 + 8) = 0x80000001ABF91470;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t LanguageView.inferredLanguageTriples()()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  swift_getObjectType();
  sub_1ABF22464();
  if (v1)
  {
  }

  return v5;
}

uint64_t sub_1ABDEBA08(uint64_t a1, uint64_t *a2)
{
  if (qword_1EB4CF630 != -1)
  {
    swift_once();
  }

  v4 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v4, qword_1EB4CF640);
  result = sub_1ABF22CD4();
  if (!v2)
  {
    v6 = *a2;
    *a2 = result;
  }

  return result;
}

uint64_t GDLanguageView.databaseFilePath.getter()
{
  v1 = sub_1ABF21CF4();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  *&v7 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform14GDLanguageView_assertion);
  if (!v10)
  {
    return 0;
  }

  v11 = [v10 viewArtifactURL];
  sub_1ABF21CA4();

  v12 = sub_1ABF21CB4();
  (*(v4 + 8))(v9, v1);
  return v12;
}

id GDLanguageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GDLanguageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemmatizedSubgraphView()
{
  result = qword_1ED871198;
  if (!qword_1ED871198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABDEBDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ABF23C04();
    v11 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = 0x80000001ABF91510;
    v9 = 0xD000000000000013;
  }

  v12 = (a4 + *(type metadata accessor for LemmatizedSubgraphView() + 20));
  *v12 = a2;
  v12[1] = a3;
  v12[2] = v9;
  v12[3] = v11;
  v13 = type metadata accessor for SearchableViewDatabaseTable();
  v14 = v13[6];
  swift_bridgeObjectRetain_n();
  sub_1ABF22CE4();
  v15 = (v12 + v13[9]);
  *v15 = 0x7463656A627573;
  v15[1] = 0xE700000000000000;
  *(v12 + v13[8]) = &unk_1F208FB20;
  result = MEMORY[0x1AC5A9410](0x5F7463656A626F5FLL, 0xEB00000000737466);
  v17 = (v12 + v13[7]);
  *v17 = v9;
  v17[1] = v11;
  return result;
}

uint64_t sub_1ABDEBF38()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 29804;
  *(v0 + 24) = 0xE200000000000000;
  *(v0 + 32) = &unk_1F208E8E8;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000039;
  *(v0 + 72) = 0x80000001ABF91560;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABDEBFF8()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 6648940;
  *(v0 + 24) = 0xE300000000000000;
  *(v0 + 32) = &unk_1F208E928;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000042;
  *(v0 + 72) = 0x80000001ABF915D0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABDEC0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDEC108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABDEC154()
{
  result = sub_1ABF239C4();
  qword_1ED86D3A0 = result;
  return result;
}

uint64_t sub_1ABDEC1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x3A657079745BLL, 0xE600000000000000);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](0x3A65756C61762CLL, 0xE700000000000000);
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](0x3A736F702CLL, 0xE500000000000000);
  v5 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v5);

  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1ABDEC2F4(uint64_t a1, uint64_t *a2)
{
  if (qword_1ED86D398 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v39 = qword_1ED86D3A0;

    v3 = sub_1ABF239C4();
    v40 = a2[2];
    if (v40)
    {
      break;
    }

LABEL_14:

    v21 = a1;
    v41 = *(a1 + 16);
    if (!v41)
    {
LABEL_26:

      return v39;
    }

    v22 = 0;
    a2 = (a1 + 40);
    while (v22 < *(v21 + 16))
    {
      v24 = *(a2 - 1);
      v23 = *a2;

      swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_1ABA94FC8(v24, v23);
      sub_1ABA7DD84(v25, v26);
      if (v12)
      {
        goto LABEL_30;
      }

      v29 = v27;
      v30 = v28;
      sub_1ABAD219C(&qword_1EB4DA028, qword_1ABF63C28);
      if (sub_1ABA80FD0())
      {
        v31 = sub_1ABA94FC8(v24, v23);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_34;
        }

        v29 = v31;
      }

      if (v30)
      {

        *(*(v3 + 56) + v29) = 1;
      }

      else
      {
        sub_1ABA7F258(v3 + 8 * (v29 >> 6));
        v34 = (v33 + 16 * v29);
        *v34 = v24;
        v34[1] = v23;
        *(*(v3 + 56) + v29) = v35;
        v36 = *(v3 + 16);
        v12 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v12)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v37;
      }

      ++v22;
      a2 += 2;
      v21 = a1;
      if (v41 == v22)
      {
        goto LABEL_26;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v4 = 0;
  v5 = a2 + 5;
  while (1)
  {
    if (v4 >= a2[2])
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v7 = *(v5 - 1);
    v6 = *v5;

    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_1ABA94FC8(v7, v6);
    sub_1ABA7DD84(v8, v9);
    if (v12)
    {
      goto LABEL_28;
    }

    v13 = v10;
    v14 = v11;
    sub_1ABAD219C(&qword_1EB4DA028, qword_1ABF63C28);
    if (sub_1ABA80FD0())
    {
      break;
    }

LABEL_9:
    if (v14)
    {

      *(*(v3 + 56) + v13) = 3;
    }

    else
    {
      sub_1ABA7F258(v3 + 8 * (v13 >> 6));
      v18 = (v17 + 16 * v13);
      *v18 = v7;
      v18[1] = v6;
      *(*(v3 + 56) + v13) = 3;
      v19 = *(v3 + 16);
      v12 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v12)
      {
        goto LABEL_31;
      }

      *(v3 + 16) = v20;
    }

    ++v4;
    v5 += 2;
    if (v40 == v4)
    {
      goto LABEL_14;
    }
  }

  v15 = sub_1ABA94FC8(v7, v6);
  if ((v14 & 1) == (v16 & 1))
  {
    v13 = v15;
    goto LABEL_9;
  }

LABEL_34:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDEC5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  v10 = sub_1ABF23D44();
  *a5 = a3;
  a5[1] = a4;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = v10;
  a5[5] = 0;
  a5[6] = MEMORY[0x1E69E7CC0];
  a5[7] = -1;
}

void sub_1ABDEC684()
{
  v1 = *(v0 + 56);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 48);
    *(v0 + 56) = v2;
    if (v2 >= *(v3 + 16))
    {
      v9 = sub_1ABDEC8B8();
      v11 = v10;
      v13 = v12;
      v15 = v14;

      sub_1ABB4DD88();
      v16 = *(*(v0 + 48) + 16);
      sub_1ABB4E18C(v16);
      v17 = *(v0 + 48);
      *(v17 + 16) = v16 + 1;
      v18 = v17 + 32 * v16;
      *(v18 + 32) = v9;
      *(v18 + 40) = v11;
      *(v18 + 48) = v13;
      *(v18 + 56) = v15;
      *(v0 + 48) = v17;
      goto LABEL_6;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = v3 + 32 * v2;
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
      v7 = *(v4 + 48);
      v8 = *(v4 + 56);

LABEL_6:
      *(v0 + 56) = v2 - 1;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1ABDEC780()
{
  v1 = v0[7];
  if (v1 <= 0)
  {
    v9 = v0[5];
    v4 = 10;
  }

  else
  {
    v2 = v0[6];
    if (v1 > *(v2 + 16))
    {
      goto LABEL_8;
    }

    v3 = (v2 + 32 * v1);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];
  }

  if (!__OFSUB__(v1, 1))
  {
    v0[7] = v1 - 1;
    return v4;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABDEC828()
{
  v1 = v0[7];
  if (v1 <= 0)
  {
    v8 = v0[5];
    return 10;
  }

  v2 = v0[6];
  if (v1 <= *(v2 + 16))
  {
    v3 = (v2 + 32 * v1);
    v4 = *v3;
    v6 = v3[1];
    v5 = v3[2];
    v7 = v3[3];

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABDEC8B8()
{
  v1 = v0[5];
  v27 = v0[4];
  if (v1 >= v27)
  {
    return 7;
  }

  else
  {
    v2 = v0[2];
    v0[3];
    v3 = *v0;
    while (1)
    {
      v4 = sub_1ABF23D44();
      if (v4)
      {
        break;
      }

      v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
      if (v1 < 0)
      {
        goto LABEL_40;
      }

      if (v1 >= v6[2])
      {
        goto LABEL_41;
      }

      v13 = &v6[2 * v1];
      v14 = v13[4];
      v15 = v13[5];

      if (*(v3 + 16) && (v16 = sub_1ABA980D8(v14, v15), (v17 & 1) != 0))
      {
        v18 = *(*(v3 + 56) + v16);
      }

      else
      {
        v18 = 6;
      }

      if (qword_1ED86D3C0 != -1)
      {
        swift_once();
      }

      v19 = off_1ED86D3C8;
      if (*(off_1ED86D3C8 + 2))
      {
        v20 = *(off_1ED86D3C8 + 5);
        sub_1ABF25234();
        MEMORY[0x1AC5AA8A0](v18);
        v21 = sub_1ABF25294();
        v22 = ~(-1 << v19[32]);
        while (1)
        {
          v23 = v21 & v22;
          if (((*&v19[(((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v21 = v23 + 1;
          if (*(*(v19 + 6) + v23) == v18)
          {
            if (__OFADD__(v1, 1))
            {
              goto LABEL_43;
            }

            v0[5] = v1 + 1;
            return v18;
          }
        }
      }

      if (v18 != 9)
      {
        if (v18 == 5)
        {
          return sub_1ABDECE6C();
        }

        if (v18 != 17)
        {
          return sub_1ABDED2B4();
        }

        sub_1ABDECDAC();
        return v26;
      }

      sub_1ABDECBA0();
      v24 = v0[5];
      v1 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

      v0[5] = v1;
      if (v1 >= v27)
      {
        return 7;
      }
    }

    v5 = v4;
    if (v4 < 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
      v6 = swift_allocObject();
      v7 = j__malloc_size(v6);
      v6[2] = v5;
      v6[3] = 2 * ((v7 - 32) / 16);
    }

    v8 = v5 & ~(v5 >> 63);

    v9 = 4;
    while (v8)
    {
      v10 = sub_1ABF23DE4();
      if (!v11)
      {
        goto LABEL_44;
      }

      v12 = &v6[v9];
      *v12 = v10;
      v12[1] = v11;
      v9 += 2;
      --v8;
      if (!--v5)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:

    __break(1u);
  }

  return result;
}

void sub_1ABDECBA0()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v3 = v0;
  v0[5] = v2;
  v24 = v0[4];
  if (v2 < v24)
  {
    v4 = v0[2];
    v5 = *v0;
    v0[3];
    v23 = v1 + 1;
    v6 = v1 + 1;
    v22 = v0;
    while (1)
    {
      v7 = sub_1ABF23D44();
      if (v7)
      {
        v8 = v7;
        if (v7 < 1)
        {
          v9 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
          v9 = swift_allocObject();
          v10 = j__malloc_size(v9);
          v9[2] = v8;
          v9[3] = 2 * ((v10 - 32) / 16);
        }

        v11 = 0;
        v12 = 4;
        while (1)
        {
          if ((v8 & ~(v8 >> 63)) == v11)
          {
            __break(1u);
            goto LABEL_26;
          }

          v13 = sub_1ABF23DE4();
          if (!v14)
          {
            break;
          }

          v15 = &v9[v12];
          ++v11;
          *v15 = v13;
          v15[1] = v14;
          v12 += 2;
          if (v8 == v11)
          {
            v11 = v8;
            break;
          }
        }

        v3 = v22;
        v2 = v23;
        if (v11 != v8)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      if (v2 < 0)
      {
        break;
      }

      if (v6 >= v9[2])
      {
        goto LABEL_27;
      }

      v16 = &v9[2 * v6];
      v17 = v16[4];
      v18 = v16[5];

      if (!*(v5 + 16))
      {

LABEL_23:
        v3[5] = v6 - 1;
        return;
      }

      v19 = sub_1ABA980D8(v17, v18);
      v21 = v20;

      if ((v21 & 1) == 0 || *(*(v5 + 56) + v19) != 9)
      {
        goto LABEL_23;
      }

      v3[5] = ++v6;
      if (v6 >= v24)
      {
        return;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }
}

void sub_1ABDECDAC()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v0[5] = v2;
  if (v2 == v0[4])
  {
    return;
  }

  v3 = sub_1ABA967E4(v0[2], v0[3]);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if (v2 >= v3[2])
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = &v3[2 * v2];
  v5 = v4[4];
  v6 = v4[5];

  v0[5] = v2 + 1;
}

uint64_t sub_1ABDECE6C()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:

    __break(1u);
    return result;
  }

  v3 = v0;
  v0[5] = v2;
  v4 = v0[4];
  if (v2 >= v4)
  {
LABEL_36:

    return 10;
  }

  v5 = v0[2];
  v6 = v0[3];
  v7 = *v0;
  v40 = v0;
  v39 = v1 + 1;
  v41 = v0[4];
  while (1)
  {
    v8 = sub_1ABF23D44();
    if (v8)
    {
      v9 = v8;
      if (v8 < 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v10[2] = v9;
        v10[3] = 2 * ((v11 - 32) / 16);
      }

      v12 = 0;
      v13 = 4;
      while (1)
      {
        if ((v9 & ~(v9 >> 63)) == v12)
        {
          __break(1u);
          goto LABEL_36;
        }

        v14 = sub_1ABF23DE4();
        if (!v15)
        {
          break;
        }

        v16 = &v10[v13];
        ++v12;
        *v16 = v14;
        v16[1] = v15;
        v13 += 2;
        if (v9 == v12)
        {
          v12 = v9;
          break;
        }
      }

      v3 = v40;
      v4 = v41;
      if (v12 != v9)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    if (v2 < 0)
    {
      goto LABEL_42;
    }

    if (v2 >= v10[2])
    {
      goto LABEL_43;
    }

    v17 = &v10[2 * v2];
    v18 = v17[4];
    v19 = v17[5];

    if (!*(v7 + 16))
    {

      goto LABEL_35;
    }

    v20 = sub_1ABA980D8(v18, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v7 + 56) + v20);
      if (v23 == 17)
      {
        v24 = v2 + 1;
        v3[5] = v2 + 1;
        if (v2 + 1 == v4)
        {
          goto LABEL_36;
        }

        v25 = sub_1ABF23D44();
        if (v25)
        {
          v26 = v25;
          if (v25 < 1)
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
            v27 = swift_allocObject();
            v28 = j__malloc_size(v27);
            v27[2] = v26;
            v27[3] = 2 * ((v28 - 32) / 16);
          }

          v29 = v26 & ~(v26 >> 63);

          v30 = 4;
          while (v29)
          {
            v31 = sub_1ABF23DE4();
            if (!v32)
            {
              goto LABEL_48;
            }

            v33 = &v27[v30];
            *v33 = v31;
            v33[1] = v32;
            v30 += 2;
            --v29;
            if (!--v26)
            {

              v3 = v40;
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v27 = MEMORY[0x1E69E7CC0];
LABEL_32:
        if (v24 >= v27[2])
        {
          goto LABEL_45;
        }

        v34 = &v27[2 * v24];
        v35 = v34[4];
        v36 = v34[5];

        v39 = v2 + 2;
        v3[5] = v2 + 2;
        MEMORY[0x1AC5A9410](v35, v36);
        v4 = v41;

        ++v2;
        v23 = 17;
      }

      if (v23 == 5)
      {
        break;
      }
    }

LABEL_35:
    v3[5] = ++v2;
    if (v2 >= v4)
    {
      goto LABEL_36;
    }
  }

  v38 = sub_1ABA967E4(v5, v6);
  if (v2 < v39)
  {
    goto LABEL_47;
  }

  sub_1ABDF015C(v39, v2, v38);

  sub_1ABAD219C(&qword_1EB4DA020, &qword_1ABF63C20);
  sub_1ABDED644();
  sub_1ABF23D94();
  swift_unknownObjectRelease();
  v40[5] = v2 + 1;
  return 6;
}

uint64_t sub_1ABDED2B4()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    __break(1u);
    return result;
  }

  v3 = v0;
  v0[5] = v2;
  v4 = v0[4];
  if (v2 >= v4)
  {
    return 10;
  }

  v5 = v3[2];
  v6 = v3[3];
  v40 = v1;
  v41 = v4;
  v42 = *v3;
  v7 = v1 + 1;
  while (1)
  {
    v8 = sub_1ABF23D44();
    if (v8)
    {
      v9 = v8;
      if (v8 < 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v10[2] = v9;
        v10[3] = 2 * ((v11 - 32) / 16);
      }

      v12 = v9 & ~(v9 >> 63);

      v13 = 4;
      while (v12)
      {
        v14 = sub_1ABF23DE4();
        if (!v15)
        {
          goto LABEL_45;
        }

        v16 = &v10[v13];
        *v16 = v14;
        v16[1] = v15;
        v13 += 2;
        --v12;
        if (!--v9)
        {

          v1 = v40;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
    if (v2 < 0)
    {
      goto LABEL_40;
    }

    if (v7 >= v10[2])
    {
      goto LABEL_41;
    }

    v17 = v3;
    v18 = v1;
    v19 = v6;
    v20 = v2;
    v21 = v5;
    v22 = &v10[2 * v7];
    v23 = v22[4];
    v24 = v22[5];

    if (*(v42 + 16))
    {
      v25 = sub_1ABA980D8(v23, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v42 + 56) + v25);
        goto LABEL_21;
      }
    }

    else
    {
    }

    v28 = 6;
LABEL_21:
    v5 = v21;
    v2 = v20;
    if (qword_1ED86D3C0 != -1)
    {
      swift_once();
    }

    v29 = off_1ED86D3C8;
    v6 = v19;
    v1 = v18;
    v3 = v17;
    if (*(off_1ED86D3C8 + 2))
    {
      v30 = *(off_1ED86D3C8 + 5);
      sub_1ABF25234();
      MEMORY[0x1AC5AA8A0](v28);
      v31 = sub_1ABF25294();
      v32 = ~(-1 << v29[32]);
      while (1)
      {
        v33 = v31 & v32;
        if (((*&v29[(((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v31 = v33 + 1;
        if (v28 == *(*(v29 + 6) + v33))
        {
          goto LABEL_32;
        }
      }
    }

    if (v28 == 9)
    {
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_43;
    }

    v17[5] = v7;
    if (v7 >= v41)
    {
      return 10;
    }
  }

LABEL_32:
  v36 = sub_1ABA967E4(v5, v6);
  if (v7 <= v1)
  {
    goto LABEL_44;
  }

  sub_1ABDF015C(v1, v7, v36);

  sub_1ABAD219C(&qword_1EB4DA020, &qword_1ABF63C20);
  sub_1ABDED644();
  v37 = sub_1ABF23EA4();
  LODWORD(result) = sub_1ABAD52AC(v37, v38, v17[1]);
  if (result)
  {
    v39 = result == 20;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1ABDED644()
{
  result = qword_1ED86B908;
  if (!qword_1ED86B908)
  {
    sub_1ABAE2850(&qword_1EB4DA020, &qword_1ABF63C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationEntityCard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABDED73C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDED818()
{
  result = qword_1ED86B9F8;
  if (!qword_1ED86B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B9F8);
  }

  return result;
}

unint64_t sub_1ABDED878(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1ABDED8E4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2) & 0xF;
  *a3 = result;
  *(a3 + 8) = a2;
  v4 = MEMORY[0x1E69E7CC0];
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

double sub_1ABDED914@<D0>(uint64_t a1@<X8>)
{
  while (1)
  {
    sub_1ABDEDD90();
    v4 = sub_1ABDEDFB8();
    if (!v6)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v27 = -4;
LABEL_84:
      *(a1 + 24) = v27;
      return result;
    }

    v7 = v4;
    sub_1ABAA3A6C();
    v9 = v9 && v8 == 0xE100000000000000;
    if (v9 || (sub_1ABA8F8B8() & 1) != 0)
    {

      sub_1ABDEE344();
      if (!v17)
      {
        goto LABEL_49;
      }

      sub_1ABAA3A6C();
      if (v9 && v18 == 0xE100000000000000)
      {
      }

      else
      {
        v20 = sub_1ABA9036C();

        if ((v20 & 1) == 0)
        {
LABEL_49:
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          goto LABEL_83;
        }
      }

      sub_1ABDEDFB8();

      sub_1ABDEE344();
      if (v28)
      {
        sub_1ABAA3A6C();
        if (v9 && v29 == 0xE100000000000000)
        {
        }

        else
        {
          v31 = sub_1ABA9036C();

          if ((v31 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        sub_1ABDEDFB8();

        v26 = 2;
      }

      else
      {
LABEL_71:
        v26 = 1;
      }

      goto LABEL_82;
    }

    v10 = v7 == 33 && v2 == 0xE100000000000000;
    if (v10 || (sub_1ABA8F8B8() & 1) != 0)
    {

      sub_1ABDEE344();
      if (v21)
      {
        sub_1ABAA3A6C();
        if (v9 && v22 == 0xE100000000000000)
        {
        }

        else
        {
          v24 = sub_1ABA9036C();

          if ((v24 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        v26 = 10;
        goto LABEL_82;
      }

LABEL_56:
      v25 = *(v1 + 56);
      *a1 = 0xD000000000000012;
      *(a1 + 8) = 0x80000001ABF916D0;
      *(a1 + 16) = v25;
      goto LABEL_57;
    }

    v11 = v7 == 44 && v2 == 0xE100000000000000;
    if (v11 || (sub_1ABA8F8B8() & 1) != 0)
    {

      v26 = 3;
      goto LABEL_82;
    }

    v12 = v7 == 91 && v2 == 0xE100000000000000;
    if (v12 || (sub_1ABA8F8B8() & 1) != 0)
    {

      v26 = 4;
      goto LABEL_82;
    }

    v13 = v7 == 93 && v2 == 0xE100000000000000;
    if (v13 || (sub_1ABA8F8B8() & 1) != 0)
    {

      v26 = 5;
      goto LABEL_82;
    }

    v14 = v7 == 40 && v2 == 0xE100000000000000;
    if (v14 || (sub_1ABA8F8B8() & 1) != 0)
    {

      v26 = 6;
LABEL_82:
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = v26;
LABEL_83:
      v27 = -32;
      goto LABEL_84;
    }

    v15 = v7 == 41 && v2 == 0xE100000000000000;
    if (v15 || (sub_1ABA8F8B8() & 1) != 0)
    {

      v26 = 7;
      goto LABEL_82;
    }

    v16 = v7 == 10 && v2 == 0xE100000000000000;
    if (!v16 && (sub_1ABA8F8B8() & 1) == 0)
    {
      break;
    }

    sub_1ABDEDD90();
  }

  v32 = v7 == 59 && v2 == 0xE100000000000000;
  if (v32 || (sub_1ABA8F8B8() & 1) != 0)
  {

    v26 = 8;
    goto LABEL_82;
  }

  v33 = v7 == 46 && v2 == 0xE100000000000000;
  if (v33 || (sub_1ABA8F8B8() & 1) != 0)
  {

    v26 = 9;
    goto LABEL_82;
  }

  v34 = v7 == 45 && v2 == 0xE100000000000000;
  if (v34 || (sub_1ABA8F8B8() & 1) != 0)
  {

    v26 = 11;
    goto LABEL_82;
  }

  v35 = v7 == 43 && v2 == 0xE100000000000000;
  if (v35 || (sub_1ABA8F8B8() & 1) != 0)
  {

    v26 = 12;
    goto LABEL_82;
  }

  v36 = v7 == 42 && v2 == 0xE100000000000000;
  if (v36 || (sub_1ABA8F8B8() & 1) != 0)
  {

    v26 = 13;
    goto LABEL_82;
  }

  v37 = v7 == 47 && v2 == 0xE100000000000000;
  if (v37 || (sub_1ABA8F8B8() & 1) != 0)
  {

    v26 = 14;
    goto LABEL_82;
  }

  sub_1ABA7BE8C();
  sub_1ABF23B04();
  if (v38)
  {
    v39 = v7 == 39 && v2 == 0xE100000000000000;
    if (v39 || (sub_1ABA8F8B8() & 1) != 0)
    {
      v40 = sub_1ABA7BE8C();
      sub_1ABDEF054(v40, v41, v42);
      goto LABEL_127;
    }

    sub_1ABA7BE8C();
    if (sub_1ABF23B24())
    {
LABEL_126:
      sub_1ABA7BE8C();
      sub_1ABDEE630();
      goto LABEL_127;
    }

    sub_1ABF23B14();

    v46 = *(v1 + 56);
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = v46;
LABEL_57:
    *(a1 + 24) = 0;
    return result;
  }

  sub_1ABDEE598();
  if (v43)
  {
    sub_1ABF23B04();
    v45 = v44;

    if (v45)
    {
      goto LABEL_126;
    }
  }

  sub_1ABA7BE8C();
  sub_1ABDEEAFC();
LABEL_127:

  result = *&v47;
  *a1 = v47;
  *(a1 + 16) = v48;
  *(a1 + 24) = v49;
  return result;
}

void sub_1ABDEDD90()
{
  while (1)
  {
    v1 = v0[4];
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];
      v4 = v0[6];

      v0[5] = v3;
      v0[6] = v2;

      goto LABEL_10;
    }

    v5 = v0[7];
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      break;
    }

    v0[7] = v7;
    v8 = sub_1ABF23DE4();
    if (!v9)
    {
      return;
    }

    v3 = v8;
    v2 = v9;
    v10 = v0[6];

    v0[5] = v3;
    v0[6] = v2;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = v1[2];
      sub_1ABA7BEF0();
      sub_1ABAD8D3C();
      v1 = v26;
    }

    v11 = v1[2];
    if (v11 >= v1[3] >> 1)
    {
      sub_1ABAD8D3C();
      v1 = v27;
    }

    v1[2] = v11 + 1;
    v12 = &v1[2 * v11];
    v12[4] = v3;
    v12[5] = v2;
    v0[4] = v1;
LABEL_10:
    v13 = sub_1ABDEFBB8(v3, v2);
    if ((v13 & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    v14 = (v13 - 14) <= 0xFFFFFFFB && (v13 - 8232) >= 2;
    if (!v14 || v13 == 133)
    {
    }

    else
    {
      v24 = sub_1ABF23AB4();

      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    v15 = v1[2];
    if (v15)
    {
      v16 = v1[4];
      v17 = v1[5];
      v18 = v15 - 1;
      if (v15 == 1)
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v19 = sub_1ABAA21A8();
        j__malloc_size(v19);
        sub_1ABA80FF0();
        v19[2] = v18;
        v19[3] = v20;
        swift_arrayInitWithCopy();
      }

      v0[4] = v19;
    }

    else
    {
      v21 = v0[7];
      v6 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v6)
      {
        goto LABEL_29;
      }

      v0[7] = v22;
      v16 = sub_1ABF23DE4();
      v17 = v23;
    }

    v0[5] = v16;
    v0[6] = v17;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1ABDEDFB8()
{
  v3 = v1[4];
  if (v3[2])
  {
    v0 = v3[4];
    v2 = v3[5];

    sub_1ABB800DC(1, v3);
    v5 = v4;
    v7 = v6;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      sub_1ABB62C34();
      v9 = v8;

      goto LABEL_12;
    }

    sub_1ABF25094();
    swift_unknownObjectRetain_n();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x1E69E7CC0];
    }

    v17 = *(v16 + 16);

    if (!__OFSUB__(v7 >> 1, v5))
    {
      if (v17 == (v7 >> 1) - v5)
      {
        v9 = swift_dynamicCastClass();

        swift_unknownObjectRelease();
        if (v9)
        {
LABEL_13:
          v1[4] = v9;
          v18 = v1[6];

          v1[5] = v0;
          v1[6] = v2;

          return v0;
        }

        v9 = MEMORY[0x1E69E7CC0];
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v10 = v1[7];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v1[7] = v12;
  v0 = sub_1ABF23DE4();
  v14 = v13;
  v15 = v1[6];

  v1[5] = v0;
  v1[6] = v14;
  return v0;
}

uint64_t sub_1ABDEE144@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    v7 = *(v3 + 56);
    *(a1 + 24) = v7;
    sub_1ABB344B0(v4, v5, v6, v7);

    sub_1ABB800DC(1, v3);
    v9 = v8;
    v11 = v10;
    if ((v10 & 1) == 0)
    {
LABEL_3:
      sub_1ABB63398();
      v13 = v12;

      goto LABEL_14;
    }

    sub_1ABF25094();
    swift_unknownObjectRetain_n();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
      v27 = MEMORY[0x1E69E7CC0];
    }

    v28 = *(v27 + 16);

    if (!__OFSUB__(v11 >> 1, v9))
    {
      if (v28 == (v11 >> 1) - v9)
      {
        v13 = swift_dynamicCastClass();

        swift_unknownObjectRelease();
        if (v13)
        {
LABEL_15:
          *(v1 + 72) = v13;
          sub_1ABDEFF58(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
          v29 = *(a1 + 8);
          v30 = *(a1 + 16);
          *(v1 + 80) = *a1;
          *(v1 + 88) = v29;
          *(v1 + 96) = v30;
          *(v1 + 104) = *(a1 + 24);
          sub_1ABA88CCC();

          return sub_1ABB344B0(v31, v32, v33, v34);
        }

        v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v14 = *(v1 + 112);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 112) = v16;
  sub_1ABDED914(v36);
  v17 = v36[0];
  v18 = v36[1];
  v19 = v36[2];
  v20 = v37;
  sub_1ABDEFF58(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  *(v1 + 80) = v17;
  *(v1 + 88) = v18;
  *(v1 + 96) = v19;
  *(v1 + 104) = v20;
  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  sub_1ABA88CCC();

  return sub_1ABDEFF6C(v21, v22, v23, v24);
}

void sub_1ABDEE344()
{
  v1 = v0;
  v2 = v0[4];
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v0[6];

    v1[5] = v3;
    v1[6] = v4;
  }

  else
  {
    v6 = v0[7];
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v0[7] = v8;
      v9 = sub_1ABF23DE4();
      v11 = v10;
      if (v10)
      {
        v12 = v0[6];

        v0[5] = v9;
        v0[6] = v11;
        swift_bridgeObjectRetain_n();
        sub_1ABB4DC98();
        v13 = *(v0[4] + 16);
        sub_1ABB4E09C(v13);
        v14 = v0[4];
        *(v14 + 16) = v13 + 1;
        v15 = v14 + 16 * v13;
        *(v15 + 32) = v9;
        *(v15 + 40) = v11;
        v0[4] = v14;
      }
    }
  }
}

void sub_1ABDEE424(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v2 + 80);
    v9 = *(v2 + 88);
    v10 = *(v2 + 96);
    v11 = *(v4 + 56);
    v12 = *(v2 + 104);
    v13 = sub_1ABAA365C();
    sub_1ABB344B0(v13, v14, v15, v16);
    sub_1ABDEFF58(v8, v9, v10, v12);
    *(v2 + 80) = v5;
    *(v2 + 88) = v6;
    *(v2 + 96) = v7;
    *(v2 + 104) = v11;
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v11;
    sub_1ABAA365C();
    sub_1ABA88CCC();

    sub_1ABB344B0(v17, v18, v19, v20);
  }

  else
  {
    v22 = *(v1 + 112);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 112) = v24;
      sub_1ABDED914(v44);
      v26 = v44[0];
      v25 = v44[1];
      v27 = v44[2];
      v28 = v45;
      if (v45 <= 0xFBu)
      {
        sub_1ABDEFF58(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
        *(v1 + 80) = v26;
        *(v1 + 88) = v25;
        *(v1 + 96) = v27;
        *(v1 + 104) = v28;
        v33 = sub_1ABA83B90();
        sub_1ABDEFF6C(v33, v34, v35, v36);
        v37 = sub_1ABA83B90();
        sub_1ABB344B0(v37, v38, v39, v40);
        sub_1ABB4DF98();
        v41 = *(*(v1 + 72) + 16);
        sub_1ABB4E39C(v41);
        v42 = *(v1 + 72);
        *(v42 + 16) = v41 + 1;
        v43 = v42 + 32 * v41;
        *(v43 + 32) = v26;
        *(v43 + 40) = v25;
        *(v43 + 48) = v27;
        *(v43 + 56) = v28;
        *(v1 + 72) = v42;
      }

      else
      {
        v29 = sub_1ABA83B90();
        sub_1ABDEFF58(v29, v30, v31, v32);
      }

      *a1 = v26;
      *(a1 + 8) = v25;
      *(a1 + 16) = v27;
      *(a1 + 24) = v28;
      sub_1ABA88CCC();
    }
  }
}

uint64_t sub_1ABDEE598()
{
  v1 = v0;
  v2 = sub_1ABF23DE4();
  v4 = v3;
  if (v3)
  {
    v5 = v0[6];
    swift_bridgeObjectRetain_n();

    v1[5] = v2;
    v1[6] = v4;
    sub_1ABB4DC98();
    v6 = *(v1[4] + 16);
    sub_1ABB4E09C(v6);
    v7 = v1[4];
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 16 * v6;
    *(v8 + 32) = v2;
    *(v8 + 40) = v4;
    v1[4] = v7;
  }

  return v2;
}

void sub_1ABDEE630()
{
  sub_1ABAA5A04();
  v62 = 0;
  v63 = v3;
  sub_1ABF23B14();
  while (1)
  {
    v4 = v2[4];
    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];
      v0 = v2[6];

      v2[5] = v6;
      v2[6] = v5;
    }

    else
    {
      sub_1ABA97D44();
      if (v8)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v9 = sub_1ABAA4B20(v7);
      if (!v10)
      {
        goto LABEL_27;
      }

      v6 = v9;
      v5 = v10;
      v11 = v2[6];

      v2[5] = v6;
      v2[6] = v5;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = v4[2];
        sub_1ABA7BEF0();
        sub_1ABAD8D3C();
        v4 = v25;
      }

      v13 = v4[2];
      v12 = v4[3];
      v0 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        sub_1ABA7DC80(v12);
        sub_1ABAD8D3C();
        v4 = v26;
      }

      v4[2] = v0;
      v14 = &v4[2 * v13];
      v14[4] = v6;
      v14[5] = v5;
      v2[4] = v4;
    }

    sub_1ABA7C5D0();
    if ((sub_1ABF23B24() & 1) == 0)
    {
      sub_1ABA7C5D0();
      sub_1ABF23B04();
      if ((v15 & 1) != 0 && (v6 != 95 || v5 != 0xE100000000000000))
      {
        sub_1ABA7C5D0();
        if ((sub_1ABF25054() & 1) == 0)
        {
          break;
        }
      }
    }

    v1 = &v62;
    v17 = sub_1ABA7C5D0();
    MEMORY[0x1AC5A9400](v17);

    v18 = v4[2];
    if (v18)
    {
      v1 = v4[4];
      v19 = v4[5];
      v0 = v18 - 1;
      if (v18 == 1)
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v20 = sub_1ABAA21A8();
        v21 = j__malloc_size(v20);
        v20[2] = v0;
        v20[3] = 2 * ((v21 - 32) / 16);
        swift_arrayInitWithCopy();
      }

      v2[4] = v20;
    }

    else
    {
      sub_1ABA97D44();
      if (v8)
      {
        goto LABEL_55;
      }

      v1 = sub_1ABAA4B20(v22);
      v19 = v23;
    }

    v2[5] = v1;
    v2[6] = v19;
  }

LABEL_27:
  v2 = v62;
  v1 = v63;
  v27 = v62 == 7105633 && v63 == 0xE300000000000000;
  if (v27 || (v0 = 0xE300000000000000, (sub_1ABA7C038() & 1) != 0))
  {

    v28 = 15;
    goto LABEL_33;
  }

  v31 = v2 == 7628135 && v1 == 0xE300000000000000;
  if (v31 || (sub_1ABA7C038() & 1) != 0)
  {

    v28 = 16;
    goto LABEL_33;
  }

  v32 = v2 == 0x657475706D6F63 && v1 == 0xE700000000000000;
  if (v32 || (sub_1ABA7C038() & 1) != 0)
  {

    v28 = 17;
    goto LABEL_33;
  }

  v33 = v2 == 0x7265746C6966 && v1 == 0xE600000000000000;
  if (v33 || (sub_1ABA7C038() & 1) != 0)
  {

    v28 = 18;
    goto LABEL_33;
  }

LABEL_56:
  v34 = v2 == 7173491 && v1 == 0xE300000000000000;
  if (v34 || (sub_1ABA7C038() & 1) != 0)
  {

    v28 = 19;
LABEL_33:
    v29 = v59;
LABEL_34:
    v29[1] = 0;
    v29[2] = 0;
    *v29 = v28;
    v30 = -32;
    goto LABEL_35;
  }

  v35 = v2 == 6780513 && v1 == v0;
  if (v35 || (sub_1ABA7C038() & 1) != 0)
  {

    v28 = 20;
    goto LABEL_33;
  }

  v36 = v2 == 0x746E756F63 && v1 == 0xE500000000000000;
  if (v36 || (sub_1ABA7C038() & 1) != 0)
  {

    v29 = v59;
    v28 = 21;
    goto LABEL_34;
  }

  v37 = v2 == 0x756F635F71696E75 && v1 == 0xEA0000000000746ELL;
  if (v37 || (sub_1ABA94798() & 1) != 0)
  {

    v28 = 22;
    goto LABEL_33;
  }

  v38 = sub_1ABA7BE8C();
  sub_1ABD78408(v38, v39, v40);
  if (v61)
  {

    v41._countAndFlagsBits = sub_1ABA7BE8C();
    KGQ.Keyword.init(rawValue:)(v41);
    if (v60 == 17)
    {
      v29 = v59;
      *v59 = v2;
      v59[1] = v1;
      v59[2] = 0;
      v30 = 0x80;
    }

    else
    {

      sub_1ABAA2A50(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      *v29 = v60;
      v30 = -96;
    }
  }

  else
  {

    sub_1ABAA2A50(v42, v43, v44, v45, v46, v47, v48, v49, v58, v59);
    *v29 = v60;
    v30 = -64;
  }

LABEL_35:
  *(v29 + 24) = v30;
}

void sub_1ABDEEAFC()
{
  sub_1ABAA5A04();
  v75 = v1;
  sub_1ABF23B14();
  for (i = 0; ; i = 1)
  {
    while (1)
    {
      v2 = v0[4];
      if (v2[2])
      {
        v4 = v2[4];
        v3 = v2[5];
        v5 = v0[6];

        v0[5] = v4;
        v0[6] = v3;
      }

      else
      {
        sub_1ABA97D44();
        if (v7)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v8 = sub_1ABAA4B20(v6);
        if (!v9)
        {
          goto LABEL_36;
        }

        v4 = v8;
        v3 = v9;
        v10 = v0[6];

        v0[5] = v4;
        v0[6] = v3;
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = v2[2];
          sub_1ABA7BEF0();
          sub_1ABAD8D3C();
          v2 = v33;
        }

        v12 = v2[2];
        v11 = v2[3];
        if (v12 >= v11 >> 1)
        {
          sub_1ABA7DC80(v11);
          sub_1ABAD8D3C();
          v2 = v34;
        }

        v2[2] = v12 + 1;
        v13 = &v2[2 * v12];
        v13[4] = v4;
        v13[5] = v3;
        v0[4] = v2;
      }

      sub_1ABA8EF78();
      sub_1ABF23B04();
      if (v14)
      {
        break;
      }

      v15 = v2[2];
      if (v15)
      {
        v16 = v2[4];
        v17 = v2[5];
        if (v15 == 1)
        {
          v18 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
          v18 = sub_1ABAA21A8();
          j__malloc_size(v18);
          sub_1ABA80FF0();
          sub_1ABAA54B4(v19);
        }

        v0[4] = v18;
      }

      else
      {
        sub_1ABA97D44();
        if (v7)
        {
          goto LABEL_90;
        }

        v16 = sub_1ABAA4B20(v20);
        v17 = v21;
      }

      v0[5] = v16;
      v0[6] = v17;
      v22 = sub_1ABA8EF78();
      MEMORY[0x1AC5A9400](v22);
    }

    v23 = v4 == 46 && v3 == 0xE100000000000000;
    if (!v23)
    {
      sub_1ABA8EF78();
      if ((sub_1ABF25054() & 1) == 0)
      {
        break;
      }
    }

    if (i)
    {

      v35 = v75;
      goto LABEL_37;
    }

    v24 = v2[2];
    if (v24)
    {
      v25 = v2[4];
      v26 = v2[5];
      if (v24 == 1)
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v27 = sub_1ABAA21A8();
        j__malloc_size(v27);
        sub_1ABA80FF0();
        sub_1ABAA54B4(v28);
      }

      v0[4] = v27;
    }

    else
    {
      sub_1ABA97D44();
      if (v7)
      {
        goto LABEL_91;
      }

      v25 = sub_1ABAA4B20(v29);
      v26 = v30;
    }

    v0[5] = v25;
    v0[6] = v26;
    v31 = sub_1ABA8EF78();
    MEMORY[0x1AC5A9400](v31);
  }

LABEL_36:
  v35 = v75;
  if (i)
  {
LABEL_37:
    v36 = sub_1ABB24D04(0, v35);
    if ((v37 & 1) == 0)
    {
      sub_1ABAA2A50(v36, v37, v38, v39, v40, v41, v42, v43, v72, v73);
      *v44 = v45;
      v46 = 64;
LABEL_88:
      *(v44 + 24) = v46;
      return;
    }

LABEL_86:
    v44 = v73;
    *v73 = 0;
    v73[1] = 0;
    v73[2] = 0;
    v46 = 2;
    goto LABEL_88;
  }

  if ((v75 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v75) & 0xF;
  }

  else
  {
    v47 = 0;
  }

  if (!v47)
  {
LABEL_92:

    goto LABEL_86;
  }

  if ((v75 & 0x1000000000000000) != 0)
  {
    v49 = sub_1ABB81A68(0, v75, 10);
    v60 = v69;
    goto LABEL_85;
  }

  if ((v75 & 0x2000000000000000) != 0)
  {
    if ((v75 & 0xF00000000000000) != 0)
    {
      while (1)
      {
        sub_1ABA7D44C();
        if (!v23 & v50)
        {
          break;
        }

        sub_1ABA7F78C();
        if (!v23)
        {
          break;
        }

        v49 = v59 + v58;
        if (__OFADD__(v59, v58))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v23)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

  v70 = sub_1ABF24B74();
  v48 = *v70;
  if (v48 == 43)
  {
    if (v71 < 1)
    {
      goto LABEL_95;
    }

    if (v71 == 1)
    {
      goto LABEL_83;
    }

    v49 = 0;
    if (!v70)
    {
      goto LABEL_74;
    }

    while (1)
    {
      sub_1ABA7D44C();
      if (!v23 & v50)
      {
        break;
      }

      sub_1ABA7F78C();
      if (!v23)
      {
        break;
      }

      v49 = v55 + v54;
      if (__OFADD__(v55, v54))
      {
        break;
      }

      sub_1ABA7E4F0();
      if (v23)
      {
        goto LABEL_84;
      }
    }

LABEL_83:
    v49 = 0;
    v53 = 1;
    goto LABEL_84;
  }

  if (v48 != 45)
  {
    if (!v71)
    {
      goto LABEL_83;
    }

    v49 = 0;
    if (!v70)
    {
      goto LABEL_74;
    }

    while (1)
    {
      v56 = *v70 - 48;
      if (v56 > 9)
      {
        goto LABEL_83;
      }

      v57 = 10 * v49;
      if ((v49 * 10) >> 64 != (10 * v49) >> 63)
      {
        goto LABEL_83;
      }

      v49 = v57 + v56;
      if (__OFADD__(v57, v56))
      {
        goto LABEL_83;
      }

      ++v70;
      if (!--v71)
      {
        goto LABEL_74;
      }
    }
  }

  if (v71 >= 1)
  {
    if (v71 == 1)
    {
      goto LABEL_83;
    }

    v49 = 0;
    if (v70)
    {
      while (1)
      {
        sub_1ABA7D44C();
        if (!v23 & v50)
        {
          goto LABEL_83;
        }

        sub_1ABA7F78C();
        if (!v23)
        {
          goto LABEL_83;
        }

        v49 = v52 - v51;
        if (__OFSUB__(v52, v51))
        {
          goto LABEL_83;
        }

        sub_1ABA7E4F0();
        if (v23)
        {
          goto LABEL_84;
        }
      }
    }

LABEL_74:
    v53 = 0;
LABEL_84:
    v60 = v53;
LABEL_85:

    if ((v60 & 1) == 0)
    {
      sub_1ABAA2A50(v61, v62, v63, v64, v65, v66, v67, v68, v72, v73);
      *v44 = v49;
      v46 = 32;
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  __break(1u);
  __break(1u);
LABEL_95:
  __break(1u);
  __break(1u);
}

uint64_t sub_1ABDEF054@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (result != 39 || a2 != 0xE100000000000000)
  {
    result = sub_1ABF25054();
    if ((result & 1) == 0)
    {
      sub_1ABA893C0();
      result = sub_1ABF23B14();
    }
  }

  v6 = 0;
  v7 = v3[6];
  while (1)
  {
    v8 = v4[4];
    v9 = v8[2];
    if (v9)
    {
      v11 = v8[4];
      v10 = v8[5];
      v12 = v9 - 1;
      if (v9 == 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v13 = sub_1ABAA21A8();
        j__malloc_size(v13);
        sub_1ABA80FF0();
        v13[2] = v12;
        v13[3] = v14;
        swift_arrayInitWithCopy();
      }

      v4[4] = v13;

      goto LABEL_18;
    }

    v15 = v4[7];
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v4[7] = v16;
    v11 = sub_1ABF23DE4();
    v10 = v17;

    if (!v10)
    {
      v4[5] = v11;
      v4[6] = 0;
      sub_1ABF24AB4();

      result = MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF91710);
      v23 = 0;
LABEL_45:
      *a3 = 0;
      *(a3 + 8) = 0xE000000000000000;
      *(a3 + 16) = v16;
      *(a3 + 24) = v23;
      return result;
    }

LABEL_18:
    v19 = v11 == 39 && v10 == 0xE100000000000000;
    if (v6)
    {
      if (!v19 && (sub_1ABA8EC20() & 1) == 0)
      {
        v20 = v11 == 92 && v10 == 0xE100000000000000;
        if (!v20 && (sub_1ABA8EC20() & 1) == 0)
        {

          v4[5] = v11;
          v4[6] = v10;
          sub_1ABF24AB4();

          result = MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF916F0);
          v23 = 0;
          v16 = v4[7];
          goto LABEL_45;
        }
      }

      goto LABEL_41;
    }

    if (v19)
    {

      v11 = 39;
LABEL_44:
      v16 = 0;
      v4[5] = v11;
      v4[6] = v10;
      v23 = 96;
      goto LABEL_45;
    }

    if (sub_1ABA8EC20())
    {

      goto LABEL_44;
    }

    v21 = v11 == 92 && v10 == 0xE100000000000000;
    if (v21 || (sub_1ABA8EC20() & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
LABEL_41:
      v22 = sub_1ABA7C5D0();
      MEMORY[0x1AC5A9400](v22);

      v6 = 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABDEF364(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v101[0] = *a1;
  v101[1] = v3;
  v101[2] = v4;
  v102 = v5;
  v103 = v6;
  v104 = v7;
  v105 = v8;
  v106 = v9;
  switch(v5 >> 5)
  {
    case 1u:
      if ((v9 & 0xE0) == 0x20)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    case 2u:
      if ((v9 & 0xE0) == 0x40)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    case 3u:
      if ((v9 & 0xE0) != 0x60)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    case 4u:
      if ((v9 & 0xE0) != 0x80)
      {
LABEL_21:

        goto LABEL_51;
      }

LABEL_13:
      if (v2 != v6 || v3 != v7)
      {
        v20 = sub_1ABA94798();
        v21 = sub_1ABA7C298();
        sub_1ABB344B0(v21, v22, v23, v9);
        v24 = sub_1ABA7DD98();
        sub_1ABB344B0(v24, v25, v26, v5);
        sub_1ABDEFE2C(v101);
        return v20 & 1;
      }

      sub_1ABB344B0(v2, v3, v8, v9);
      v30 = sub_1ABA7DD98();
      v33 = v5;
      goto LABEL_35;
    case 5u:
      if ((v9 & 0xE0) != 0xA0)
      {
        goto LABEL_51;
      }

      v29 = sub_1ABACF218(v2, v6);
      sub_1ABDEFE2C(v101);
      return v29 & 1;
    case 6u:
      if ((v9 & 0xE0) != 0xC0)
      {
        goto LABEL_51;
      }

LABEL_19:
      sub_1ABDEFE2C(v101);
      return *&v2 == *&v6;
    case 7u:
      v28 = v4 | v3;
      if (v4 | v3 | v2 || v5 != 224)
      {
        v34 = v5 == 224 && v2 == 1;
        if (!v34 || v28)
        {
          v43 = v5 == 224 && v2 == 2;
          if (!v43 || v28)
          {
            v56 = v5 == 224 && v2 == 3;
            if (!v56 || v28)
            {
              v58 = v5 == 224 && v2 == 4;
              if (!v58 || v28)
              {
                v66 = v5 == 224 && v2 == 5;
                if (!v66 || v28)
                {
                  v68 = v5 == 224 && v2 == 6;
                  if (!v68 || v28)
                  {
                    v70 = v5 == 224 && v2 == 7;
                    if (!v70 || v28)
                    {
                      v72 = v5 == 224 && v2 == 8;
                      if (!v72 || v28)
                      {
                        v74 = v5 == 224 && v2 == 9;
                        if (!v74 || v28)
                        {
                          v76 = v5 == 224 && v2 == 10;
                          if (!v76 || v28)
                          {
                            v78 = v5 == 224 && v2 == 11;
                            if (!v78 || v28)
                            {
                              v80 = v5 == 224 && v2 == 12;
                              if (!v80 || v28)
                              {
                                v82 = v5 == 224 && v2 == 13;
                                if (!v82 || v28)
                                {
                                  v84 = v5 == 224 && v2 == 14;
                                  if (!v84 || v28)
                                  {
                                    v86 = v5 == 224 && v2 == 15;
                                    if (!v86 || v28)
                                    {
                                      v88 = v5 == 224 && v2 == 16;
                                      if (!v88 || v28)
                                      {
                                        v90 = v5 == 224 && v2 == 17;
                                        if (!v90 || v28)
                                        {
                                          v92 = v5 == 224 && v2 == 18;
                                          if (!v92 || v28)
                                          {
                                            v94 = v5 == 224 && v2 == 19;
                                            if (!v94 || v28)
                                            {
                                              v96 = v5 == 224 && v2 == 20;
                                              if (!v96 || v28)
                                              {
                                                v98 = v5 == 224 && v2 == 21;
                                                if (!v98 || v28)
                                                {
                                                  if (v9 <= 0xDF)
                                                  {
                                                    goto LABEL_51;
                                                  }

                                                  if (v9 != 224 || v6 != 22)
                                                  {
                                                    goto LABEL_51;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v9 < 0xE0)
                                                  {
                                                    goto LABEL_51;
                                                  }

                                                  if (v9 != 224 || v6 != 21)
                                                  {
                                                    goto LABEL_51;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                if (v9 < 0xE0)
                                                {
                                                  goto LABEL_51;
                                                }

                                                if (v9 != 224 || v6 != 20)
                                                {
                                                  goto LABEL_51;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              if (v9 < 0xE0)
                                              {
                                                goto LABEL_51;
                                              }

                                              if (v9 != 224 || v6 != 19)
                                              {
                                                goto LABEL_51;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            if (v9 < 0xE0)
                                            {
                                              goto LABEL_51;
                                            }

                                            if (v9 != 224 || v6 != 18)
                                            {
                                              goto LABEL_51;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          if (v9 < 0xE0)
                                          {
                                            goto LABEL_51;
                                          }

                                          if (v9 != 224 || v6 != 17)
                                          {
                                            goto LABEL_51;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        if (v9 < 0xE0)
                                        {
                                          goto LABEL_51;
                                        }

                                        if (v9 != 224 || v6 != 16)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v9 < 0xE0)
                                      {
                                        goto LABEL_51;
                                      }

                                      if (v9 != 224 || v6 != 15)
                                      {
                                        goto LABEL_51;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (v9 < 0xE0)
                                    {
                                      goto LABEL_51;
                                    }

                                    if (v9 != 224 || v6 != 14)
                                    {
                                      goto LABEL_51;
                                    }
                                  }
                                }

                                else
                                {
                                  if (v9 < 0xE0)
                                  {
                                    goto LABEL_51;
                                  }

                                  if (v9 != 224 || v6 != 13)
                                  {
                                    goto LABEL_51;
                                  }
                                }
                              }

                              else
                              {
                                if (v9 < 0xE0)
                                {
                                  goto LABEL_51;
                                }

                                if (v9 != 224 || v6 != 12)
                                {
                                  goto LABEL_51;
                                }
                              }
                            }

                            else
                            {
                              if (v9 < 0xE0)
                              {
                                goto LABEL_51;
                              }

                              if (v9 != 224 || v6 != 11)
                              {
                                goto LABEL_51;
                              }
                            }
                          }

                          else
                          {
                            if (v9 < 0xE0)
                            {
                              goto LABEL_51;
                            }

                            if (v9 != 224 || v6 != 10)
                            {
                              goto LABEL_51;
                            }
                          }
                        }

                        else
                        {
                          if (v9 < 0xE0)
                          {
                            goto LABEL_51;
                          }

                          if (v9 != 224 || v6 != 9)
                          {
                            goto LABEL_51;
                          }
                        }
                      }

                      else
                      {
                        if (v9 < 0xE0)
                        {
                          goto LABEL_51;
                        }

                        if (v9 != 224 || v6 != 8)
                        {
                          goto LABEL_51;
                        }
                      }
                    }

                    else
                    {
                      if (v9 < 0xE0)
                      {
                        goto LABEL_51;
                      }

                      if (v9 != 224 || v6 != 7)
                      {
                        goto LABEL_51;
                      }
                    }
                  }

                  else
                  {
                    if (v9 < 0xE0)
                    {
                      goto LABEL_51;
                    }

                    if (v9 != 224 || v6 != 6)
                    {
                      goto LABEL_51;
                    }
                  }
                }

                else
                {
                  if (v9 < 0xE0)
                  {
                    goto LABEL_51;
                  }

                  if (v9 != 224 || v6 != 5)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                if (v9 < 0xE0)
                {
                  goto LABEL_51;
                }

                if (v9 != 224 || v6 != 4)
                {
                  goto LABEL_51;
                }
              }
            }

            else
            {
              if (v9 < 0xE0)
              {
                goto LABEL_51;
              }

              if (v9 != 224 || v6 != 3)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
            if (v9 < 0xE0)
            {
              goto LABEL_51;
            }

            if (v9 != 224 || v6 != 2)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v9 < 0xE0)
          {
            goto LABEL_51;
          }

          if (v9 != 224 || v6 != 1)
          {
            goto LABEL_51;
          }
        }

        if (!(v8 | v7))
        {
          goto LABEL_36;
        }
      }

      else if (v9 >= 0xE0 && !(v8 | v7 | v6) && v9 == 224)
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    default:
      if (v9 > 0x1F)
      {
        v36 = sub_1ABA7DD98();
        sub_1ABB344D8(v36, v37, v38, v5);
LABEL_51:
        v39 = sub_1ABA7C298();
        v42 = v9;
        goto LABEL_52;
      }

      if (!v5)
      {
        if (v9)
        {
          goto LABEL_76;
        }

        if (v2 == v6 && v3 == v7)
        {
          sub_1ABB344B0(v2, v3, v8, 0);
          v63 = sub_1ABA7DD98();
          sub_1ABB344B0(v63, v64, v65, 0);
          sub_1ABDEFE2C(v101);
        }

        else
        {
          v46 = sub_1ABA94798();
          v47 = sub_1ABA7C298();
          sub_1ABB344B0(v47, v48, v49, 0);
          v50 = sub_1ABA7DD98();
          sub_1ABB344B0(v50, v51, v52, 0);
          sub_1ABDEFE2C(v101);
          if ((v46 & 1) == 0)
          {
            return 0;
          }
        }

        return v4 == v8;
      }

      if (v5 == 1)
      {
        if (v9 == 1)
        {
          if (v2 == v6 && v3 == v7)
          {
            v12 = 1;
            sub_1ABB344B0(v2, v3, v8, 1u);
            v60 = sub_1ABA7DD98();
            sub_1ABB344B0(v60, v61, v62, 1u);
            sub_1ABDEFE2C(v101);
          }

          else
          {
            v11 = sub_1ABA94798();
            v12 = 1;
            v13 = sub_1ABA7C298();
            sub_1ABB344B0(v13, v14, v15, 1u);
            v16 = sub_1ABA7DD98();
            sub_1ABB344B0(v16, v17, v18, 1u);
            sub_1ABDEFE2C(v101);
            if ((v11 & 1) == 0)
            {
              return 0;
            }
          }

          if (v4 == v8)
          {
            return v12;
          }

          return 0;
        }

        goto LABEL_76;
      }

      if (v9 == 2 && !(v8 | v7 | v6))
      {
        sub_1ABB344B0(0, 0, 0, 2u);
        v30 = sub_1ABA7DD98();
        v33 = 2;
LABEL_35:
        sub_1ABB344B0(v30, v31, v32, v33);
LABEL_36:
        sub_1ABDEFE2C(v101);
        return 1;
      }

LABEL_76:
      v53 = sub_1ABA7C298();
      sub_1ABB344B0(v53, v54, v55, v9);
      v39 = sub_1ABA7DD98();
      v42 = v5;
LABEL_52:
      sub_1ABB344B0(v39, v40, v41, v42);
      sub_1ABDEFE2C(v101);
      return 0;
  }
}

BOOL sub_1ABDEF9F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

LABEL_6:
    v10 = a1 == a5 && a2 == a6;
    if (v10 || (sub_1ABF25054() & 1) != 0)
    {
      return a3 == a7;
    }

    return 0;
  }

  if (a4 == 1)
  {
    if (a8 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return a8 == 2 && !(a6 | a5 | a7);
}

unint64_t sub_1ABDEFABC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[2] = v3;
      v12[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v12[0] = a2;
        v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v12 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_1ABA9A684(v5);
          }

          while (v9);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = result >> 16;
          v6 = sub_1ABF24B74();
          v5 = v11;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_1ABA9A684(v5);
          }

          while (v9);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1ABDEFBB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_1ABA893C0();
    sub_1ABDEFD24();
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_1ABA893C0();
      v9 = sub_1ABF24AA4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          sub_1ABA84328();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1ABF24B74();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          sub_1ABA84328();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

void sub_1ABDEFD24()
{
  sub_1ABAA2DEC();
  if (v0)
  {
    sub_1ABAA26E8();
    if (!v1)
    {
      sub_1ABA9766C();
      if (v3 > v2 >> 16)
      {
        return;
      }

      __break(1u);
    }
  }

  sub_1ABA893C0();
  sub_1ABDEFD98();
  if ((v4 & 1) == 0)
  {
    sub_1ABA893C0();
    sub_1ABDEFABC(v5, v6, v7);
  }
}

void sub_1ABDEFD98()
{
  sub_1ABAA2DEC();
  sub_1ABAA26E8();
  if (v0)
  {
    sub_1ABA893C0();
    sub_1ABB807B0(v3, v4, v5);
  }

  sub_1ABA9766C();
  if (v2 <= v1 >> 16)
  {
    __break(1u);
  }
}

uint64_t sub_1ABDEFDE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1ABDEFE2C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DA030, qword_1ABF63D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABDEFE94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABF25094();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1ABDEFF58(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1ABB344F0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1ABDEFF6C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1ABB344B0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1ABDEFF80(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1ABDEFF9C(uint64_t a1)
{
  v1 = *(a1 + 24) >> 5;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ABDEFFB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x39 && *(a1 + 25))
    {
      v2 = *a1 + 56;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x38)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1ABDF0004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x38)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 57;
    if (a3 >= 0x39)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x39)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1ABDF0070(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    v2 = *(result + 24) & 3 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    v2 = -32;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t sub_1ABDF00A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDF00E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABDF0130(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1ABDF0160(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86D278, type metadata accessor for CustomGraphActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF01B8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C5D0, type metadata accessor for CustomGraphTransportationActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0210(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA68, type metadata accessor for CustomGraphWorkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0268(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CB80, type metadata accessor for CustomGraphMeetingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF02C0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CDB8, type metadata accessor for CustomGraphEatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0318(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C810, type metadata accessor for CustomGraphWatchingTVActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0370(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C618, type metadata accessor for CustomGraphCommunicatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF03C8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA00, type metadata accessor for CustomGraphShoppingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0420(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C7E8, type metadata accessor for CustomGraphMindfulnessActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0478(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C9E0, type metadata accessor for CustomGraphSleepingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF04D0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C8F8, type metadata accessor for CustomGraphTravelingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0528(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CB50, type metadata accessor for CustomGraphReadingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0580(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C798, type metadata accessor for CustomGraphVacationingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF05D8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CD90, type metadata accessor for CustomGraphGamingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0630(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C7C0, type metadata accessor for CustomGraphSocializingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0688(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C9B8, type metadata accessor for CustomGraphWakingUpActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF06E0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C880, type metadata accessor for CustomGraphGoingToBedActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0738(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C8A8, type metadata accessor for CustomGraphExercisingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0790(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CC50, type metadata accessor for CustomGraphCommuteActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF07E8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CDD8, type metadata accessor for CustomGraphDiningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0840(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C3B0, type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0898(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C830, type metadata accessor for CustomGraphStationaryActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF08F0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C5F0, type metadata accessor for CustomGraphLocationVisitActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0948(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA88, type metadata accessor for CustomGraphWalkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF09A0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CB30, type metadata accessor for CustomGraphRunningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF09F8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C998, type metadata accessor for CustomGraphBicyclingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0A50(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CD70, type metadata accessor for CustomGraphHikingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0AA8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C858, type metadata accessor for CustomGraphOnThePhoneActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0B00(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA20, type metadata accessor for CustomGraphFacetimeActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0B58(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CC28, type metadata accessor for CustomGraphDrivingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0BB0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA40, type metadata accessor for CustomGraphBehaviorActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CustomLifeEventContext.__allocating_init<>()()
{
  v0 = type metadata accessor for ViewService();
  v1 = static ViewService.clientService.getter(v0);
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomLifeEventContext.init<>(viewService:)(v1);
  return v2;
}

uint64_t sub_1ABDF0D0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  v5 = sub_1ABDF2A2C(v3, v4);
  return a1(v2, v2, v5);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC27268);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC27234);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC2729C);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC272D0);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC27304);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:)(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC26FD0);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC26F98);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC27008);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC27040);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC27078);
}

void CustomLifeEventContext.enumerateActivityEvents<>(order:using:)()
{
  sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  sub_1ABDF2A2C(v0, v1);
  sub_1ABC26E40();
}

uint64_t CustomLifeEventContext.__allocating_init<>(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomLifeEventContext.init<>(viewService:)(a1);
  return v2;
}

uint64_t CustomLifeEventContext.__allocating_init(context:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_1ABA7BD7C();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v5 + 16);
  v10 = sub_1ABA7BC4C();
  v11(v10);
  v12 = type metadata accessor for ViewService();
  static ViewService.clientService.getter(v12);
  v13 = CustomLifeEventContext.__allocating_init(context:viewService:)();
  (*(v5 + 8))(a1, v3);
  return v13;
}

uint64_t CustomLifeEventContext.__allocating_init(context:viewService:)()
{
  sub_1ABA7D028();
  v0 = swift_allocObject();
  v1 = sub_1ABA7D0F8();
  CustomLifeEventContext.init(context:viewService:)(v1, v2);
  return v0;
}

void *CustomLifeEventContext.init(context:viewService:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  sub_1ABA7BD7C();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - v15;
  (*(v10 + 16))(v25 - v15, a1, v8, v14);
  v17 = type metadata accessor for LifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v18 = LifeEventView.init(viewService:)(a2);
  if (v3)
  {
    v19 = *(v10 + 8);
    v19(a1, v8);
    v20 = sub_1ABA7BC4C();
    (v19)(v20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v18;
    v22 = sub_1ABDF2A2C(&qword_1EB4DA038, type metadata accessor for LifeEventView);
    v23 = *(v7 + 88);
    v25[0] = v17;
    v25[1] = v8;
    v25[2] = v22;
    v25[3] = v23;
    type metadata accessor for EventBaseContext();
    (*(v10 + 8))(a1, v8);
    v25[0] = v21;
    v4[2] = sub_1ABC26464(v16, v25);
  }

  return v4;
}

uint64_t *CustomLifeEventContext.init<>(viewService:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  type metadata accessor for LifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v6 = a1;
  v7 = LifeEventView.init(viewService:)(v6);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;
    v10 = ViewService.subgraphView(name:tableName:batchSize:)(0xD000000000000011, 0x80000001ABF91730, 0xD000000000000012, 0x80000001ABF91750, 10);
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();
    v11 = sub_1ABAE6998(v10);

    sub_1ABAD219C(&qword_1EB4DA040, &qword_1ABF642F8);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v11;
    v3[2] = v12;
  }

  return v3;
}

void CustomLifeEventContext.activityEvents(order:)()
{
  sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  sub_1ABDF2A2C(v0, v1);
  sub_1ABC264B4();
}

void CustomLifeEventContext.activityEvents<A>(of:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a4 + 8);
  sub_1ABC264B4();
}

uint64_t CustomLifeEventContext.activityEvents(whose:in:order:)(char *a1, uint64_t a2, char a3)
{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC26600);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC2662C);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC26658);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC26684);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC266B0);
}

uint64_t CustomLifeEventContext.activityEvents<A>(of:whose:in:order:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC26600);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC2662C);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC26658);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC26684);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC266B0);
}

uint64_t sub_1ABDF14F8(char *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = sub_1ABA8C3AC();
  v13 = v7;
  sub_1ABA8F8D8();
  v11 = sub_1ABDF2A2C(v9, v10);
  return a4(v8, &v13, a2, a3 & 1, v8, v11);
}

uint64_t sub_1ABDF16D8(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, void, uint64_t, void))
{
  v8 = *(v7 + 16);
  v10 = *a2;
  return a7(a1, &v10, a3, a4 & 1, a5, *(a6 + 8));
}

uint64_t CustomLifeEventContext.activityEvents(overlapping:order:)(uint64_t a1, char a2)
{
  return sub_1ABDF1790(a1, a2, sub_1ABC26844);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC26870);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC2689C);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC268C8);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC268F4);
}

void CustomLifeEventContext.activityEvents<A>(of:overlapping:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  sub_1ABC26844();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  sub_1ABC26870();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  sub_1ABC2689C();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  sub_1ABC268C8();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  sub_1ABC268F4();
}

uint64_t sub_1ABDF1790(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v6 = sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  v9 = sub_1ABDF2A2C(v7, v8);
  return a3(v6, a1, a2 & 1, v6, v9);
}

uint64_t CustomLifeEventContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CustomLifeEventContext.__deallocating_deinit()
{
  CustomLifeEventContext.deinit();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void CustomLifeEventContext.enumerateActivityEvents<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(a6 + 8);
  sub_1ABC26E40();
}

void CustomLifeEventContext.enumerateActivityEvents<A>(of:order:block:)()
{
  v7 = *(*v0 + 80);
  v8 = *(*v0 + 88);
  sub_1ABA7D018();
  CustomLifeEventContext.enumerateActivityEvents<A>(of:order:using:)(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1ABDF1A94(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = sub_1ABA8C3AC();
  v19 = v12;
  sub_1ABA8F8D8();
  v16 = sub_1ABDF2A2C(v14, v15);
  return a7(v13, &v19, a2, a3 & 1, a4, a5, v13, v16, a6);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:block:)(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:whose:in:order:using:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC26F98);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC26FD0);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC27008);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC27040);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC27078);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:whose:in:order:block:)(uint64_t a1, char *a2)
{
  return sub_1ABDF1CE0(a1, a2);
}

{
  return sub_1ABDF1CE0(a1, a2);
}

{
  return sub_1ABDF1CE0(a1, a2);
}

{
  return sub_1ABDF1CE0(a1, a2);
}

{
  return sub_1ABDF1CE0(a1, a2);
}

uint64_t sub_1ABDF1CE0(uint64_t a1, char *a2)
{
  v3 = *v2;
  v11 = *a2;
  sub_1ABA90AB8();
  v9 = *(v4 + 80);
  sub_1ABA90AB8();
  v10 = *(v5 + 88);
  return v7(v6);
}

uint64_t sub_1ABDF1FA8(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t, void, uint64_t, void *))
{
  v10 = *a1;
  v9[2] = a4;
  v9[3] = a5;
  return a8(&v10, a2, a3 & 1, a7, v9);
}