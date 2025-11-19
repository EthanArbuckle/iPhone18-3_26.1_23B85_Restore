uint64_t sub_24E8FE520(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v26 = v1;
  sub_24E901A2C(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
  sub_24F91FD88();

  v4 = *(v1 + 120);
  v24 = *(v1 + 112);
  v5 = *(a1 + qword_27F39B8D8);
  v6 = *(v5 + 24);
  v25 = *(v5 + 16);
  v26 = v25;
  v27 = v6;

  swift_bridgeObjectRetain_n();
  sub_24E8FB3EC(&v26);
  swift_getKeyPath();
  v26 = v1;

  sub_24F91FD78();

  swift_getKeyPath();
  v26 = v1;

  sub_24F91FD78();

  swift_getKeyPath();
  v26 = v1;
  sub_24F91FD78();

  if (v6)
  {
    if (v4)
    {
      v8 = v24;
      v7 = v25;
      if (v25 == v24 && v4 == v6)
      {

LABEL_14:

        return sub_24E8FECE0();
      }

      v10 = sub_24F92CE08();

      if (v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    swift_bridgeObjectRelease_n();
    return sub_24E8FECE0();
  }

  v8 = v24;
  v7 = v25;

  if (v4)
  {
LABEL_11:
    v11 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v26 = v8;
    v27 = v4;
    (*(v11 + 56))(&v26, ObjectType, v11);
    v14 = v13;

    v15 = swift_getObjectType();
    (*(v14 + 80))(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  v16 = *(v2 + 24);
  v17 = swift_getObjectType();
  v26 = v7;
  v27 = v6;
  (*(v16 + 56))(&v26, v17, v16);
  v19 = v18;

  v20 = swift_getObjectType();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(v19 + 72);

  v22(v2, sub_24E901C8C, v21, v20, v19);
  swift_unknownObjectRelease();

  return sub_24E8FECE0();
}

uint64_t sub_24E8FE920()
{
  swift_getKeyPath();
  v18[0].i64[0] = v0;
  sub_24E901A2C(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
  sub_24F91FD88();

  v1 = *(v0 + 192);
  v27 = *(v0 + 176);
  v28 = v1;
  v29 = *(v0 + 208);
  v2 = *(v0 + 160);
  v25 = *(v0 + 144);
  v26 = v2;
  sub_24E88C3F8(&v25, v18);
  sub_24E8FECE0();
  swift_getKeyPath();
  v18[0].i64[0] = v0;
  sub_24F91FD88();

  v3 = *(v0 + 96);
  if (!v3)
  {
    return sub_24E88EB34(&v25);
  }

  swift_getKeyPath();
  v14[0] = v0;

  sub_24F91FD88();

  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  *v17 = *(v0 + 176);
  *&v17[16] = v4;
  v6 = *(v0 + 160);
  v15 = *(v0 + 144);
  v16 = v6;
  v18[2] = v27;
  v18[3] = v28;
  v18[0] = v25;
  v18[1] = v26;
  v20 = v15;
  v23 = *(v0 + 192);
  v22 = *v17;
  *&v17[32] = *(v0 + 208);
  v7 = *(v0 + 208);
  v19 = v29;
  v24 = v7;
  v21 = v5;
  v8 = v26.i64[0] >> 61;
  v9 = v25.u8[8];
  if ((v26.i64[0] >> 61) <= 1)
  {
    if (!v8)
    {
      if (v16 >> 61)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    if (v16 >> 61 == 1)
    {
      v13 = BYTE8(v15);
      sub_24E88C3F8(&v25, v14);
      sub_24E88C3F8(&v15, v14);
      sub_24E601704(v18, &qword_27F21FF28);
      if (((v9 ^ v13) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_24E88C3F8(&v25, v14);
    sub_24E88C3F8(&v15, v14);
    sub_24E601704(v18, &qword_27F21FF28);
LABEL_23:
    v14[0] = v3;
    sub_24F9280C8();
LABEL_24:
    sub_24E88EB34(&v25);
  }

  if (v8 == 2)
  {
    if (v16 >> 61 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  if (v8 == 3)
  {
    if (v16 >> 61 != 3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v26.i64[0] != 0x8000000000000000)
    {
      goto LABEL_22;
    }

    v11 = vorrq_s8(v27, v28);
    if (v25.i64[0] | *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v29 | v25.u8[8] | (*(&v25.u32[2] + 1) << 8) | ((*(&v25.u16[6] + 1) | (v25.u8[15] << 16)) << 40) | v26.i64[1])
    {
      goto LABEL_22;
    }

    if (v16 >> 61 != 4)
    {
      goto LABEL_22;
    }

    if (v16 != 0x8000000000000000)
    {
      goto LABEL_22;
    }

    v12 = vorrq_s8(*&v17[8], *&v17[24]);
    if (*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | *v17 | *(&v16 + 1) | *(&v15 + 1) | v15)
    {
      goto LABEL_22;
    }
  }

LABEL_12:
  sub_24E88C3F8(&v15, v14);
  sub_24E601704(v18, &qword_27F21FF28);
}

uint64_t sub_24E8FECE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - v4;
  swift_getKeyPath();
  *&v93 = v0;
  sub_24E901A2C(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
  sub_24F91FD88();

  v7 = v0[15];
  if (v7)
  {
    v73.i64[0] = v0[14];
    v8 = v0[11] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
    swift_beginAccess();
    v67 = *(v8 + 8);
    swift_getKeyPath();
    *&v93 = v1;

    sub_24F91FD88();

    v9 = v1[16];
    swift_getKeyPath();
    *&v93 = v1;
    v70 = v9;

    sub_24F91FD88();

    v10 = v1[17];
    swift_getKeyPath();
    *&v93 = v1;
    *&v72 = v10;

    sub_24F91FD88();

    v11 = v1[12];
    if (v11)
    {
      v68 = *(*(v11 + qword_27F39B8D8) + 304) != 0;
    }

    else
    {
      v68 = 0;
    }

    swift_getKeyPath();
    *&v93 = v1;
    sub_24F91FD88();

    v12 = *(v1 + 12);
    v95 = *(v1 + 11);
    v96 = v12;
    v97 = v1[26];
    v13 = *(v1 + 10);
    v93 = *(v1 + 9);
    v94 = v13;
    swift_getKeyPath();
    v78 = v1;
    sub_24E88C3F8(&v93, &v88);
    sub_24F91FD88();

    v14 = v1[12];
    if (v14)
    {
      v15 = (v14 + qword_27F39B958);
      v17 = v15->i64[0];
      v16 = v15->i64[1];
      v18 = v15[1].i64[0];
      v19 = v15[1].i64[1];
      v20 = v15[3].i64[0];
      v77 = v15[2];
      v71 = v16;
      v74 = v18;
      v75 = v19;
      sub_24E901B80(v17, v16, v18, v19);
      *&v21 = v20;
      *(&v21 + 1) = v17;
    }

    else
    {
      v71 = 0;
      v74 = 0;
      v75 = 0;
      v21 = 0uLL;
      v77 = 0u;
    }

    v76 = v21;
    v22 = v1[3];
    ObjectType = swift_getObjectType();
    *&v88 = v73.i64[0];
    *(&v88 + 1) = v7;
    v73.i64[0] = (*(v22 + 56))(&v88, ObjectType, v22);
    v25 = v24;

    swift_getKeyPath();
    *&v88 = v1;
    sub_24F91FD88();

    v26 = *(v1 + 104);
    if (qword_27F210BF0 != -1)
    {
      swift_once();
    }

    sub_24F92A3B8();
    sub_24F92A408();
    (*(v3 + 8))(v5, v2);
    v27 = *(&v76 + 1);
    v28 = v70;
    v29 = v71;
    v69 = v77.i64[1];
    if (!v70)
    {

      swift_unknownObjectRelease();
      v31 = v27;
      v27 = 0;
      v32 = 0;
      v33 = 0;
      v72 = 0u;
      v73 = 0u;
      v34 = 0x8000000000000000;
LABEL_14:
      v30 = v74;
      goto LABEL_53;
    }

    v30 = v74;
    if (!(v94 >> 61))
    {
      v90 = v95;
      v91 = v96;
      v88 = v93;
      v89.i64[1] = *(&v94 + 1);
      v92 = v97;
      v89.i64[0] = v94 & 0x1FFFFFFFFFFFFFFFLL;
      sub_24E60169C(&v88, &v78, &qword_27F221548);

      swift_unknownObjectRelease();
      v31 = v27;
      v32 = *(&v93 + 1);
      v27 = v93;
      v33 = *(&v94 + 1);
      v34 = v94;
      v72 = v96;
      v73 = v95;
      v28 = v97;
LABEL_53:
      sub_24E901BD0(v31, v29, v30, v75);
      sub_24E88EB34(&v93);
      *&v88 = v27;
      *(&v88 + 1) = v32;
      v89.i64[0] = v34;
      v89.i64[1] = v33;
      v90 = v73;
      v91 = v72;
      v92 = v28;
      return sub_24E8FA874(&v88);
    }

    v35 = v88;
    if (v75 && v71)
    {
      v34 = v74 & 0x101;
      v33 = v75;
      sub_24E901B80(*(&v76 + 1), v71, v74, v75);

      swift_unknownObjectRelease();
      v31 = v27;
      v32 = v29;
      v28 = v29;
      v72 = v76;
      v73 = v77;
      goto LABEL_53;
    }

    v66 = *(&v76 + 1);
    if (v94 >> 62 == 1)
    {
      __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
      LOBYTE(v88) = 3;

      v68 = RestrictionsProtocol.doesAllow(_:properties:)(&v88, v28);
      v36 = swift_getObjectType();
      v37 = *(v25 + 16);
      v37(&v78, v36, v25);
      v38 = (v84 >> 60) - 5;
      sub_24E88D2AC(&v78);
      if (v38 < 2)
      {

        if (!v68)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v37(v86, v36, v25);

      v88 = v86[0];
      v89 = v86[1];
      v90 = v86[2];
      v91 = v87;
      v39 = v87 >> 60;
      if (v87 >> 60 == 2 || v39 == 7 || v39 == 8 && !*(&v91 + 1) && v87 == 0x8000000000000000 && v88 == 1 && (v40 = vorrq_s8(v89, v90), !(*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *(&v88 + 1))))
      {
        sub_24E88D2AC(&v88);
        if (v68)
        {
LABEL_35:

          swift_unknownObjectRelease();
          v27 = 0;
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v72 = 0u;
          v73 = 0u;
          v34 = 0x8000000000000000;
          v31 = v66;
          goto LABEL_14;
        }
      }

      else
      {
        sub_24E88D2AC(&v88);
      }

LABEL_38:
      sub_24E88C3F8(&v93, &v88);

      swift_unknownObjectRelease();
      v32 = *(&v93 + 1);
      v27 = v93;
      v33 = *(&v94 + 1);
      v34 = v94;
      v72 = v96;
      v73 = v95;
      v28 = v97;
      v31 = v66;
      goto LABEL_14;
    }

    if ((v26 & 1) == 0)
    {

      swift_unknownObjectRelease();
LABEL_51:

      v27 = 0;
      v32 = 0;
      v33 = 0;
      v28 = 0;
      v72 = 0u;
      v73 = 0u;
      v34 = 0x8000000000000000;
      goto LABEL_52;
    }

    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    LOBYTE(v88) = 3;

    if (!RestrictionsProtocol.doesAllow(_:properties:)(&v88, v28) && ((*(v28 + 120) | v68) & 1) == 0)
    {
      if (*(v28 + 16) <= 1u || *(v28 + 16) == 2)
      {
        v41 = sub_24F92CE08();

        if ((v41 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }

      if ((v67 & 0xC0) != 0x80)
      {

        swift_unknownObjectRelease();

        v32 = 0;
        v33 = 0;
        v28 = 0;
        v72 = 0u;
        v73 = 0u;
        v34 = 0x8000000000000000;
        v27 = 1;
LABEL_52:
        v31 = v66;
        goto LABEL_53;
      }
    }

LABEL_45:
    if (!v35)
    {
      goto LABEL_49;
    }

    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    LOBYTE(v88) = 3;

    v42 = RestrictionsProtocol.doesAllow(_:properties:)(&v88, v28);

    if (v42 || (*(v28 + 120) & 1) != 0 || v68)
    {
      goto LABEL_49;
    }

    if (*(v28 + 16) > 2u)
    {
    }

    else
    {
      v43 = sub_24F92CE08();

      if ((v43 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if (*(v28 + 16) > 2u)
    {
    }

    else
    {
      v44 = sub_24F92CE08();

      if ((v44 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if ((v67 & 0xC0) != 0x80)
    {
      goto LABEL_49;
    }

LABEL_64:
    if (v72)
    {
      type metadata accessor for OfferAction();
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v33 = v45;

        goto LABEL_67;
      }

      type metadata accessor for OfferStateAction();
      if (swift_dynamicCastClass())
      {

        v48 = swift_unknownObjectRetain();
        OfferStateAction.preferredAction(for:)(v48, v25);

        swift_unknownObjectRelease();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
LABEL_75:

          swift_unknownObjectRelease();

          goto LABEL_50;
        }

LABEL_67:
        v46 = swift_getObjectType();
        (*(v25 + 16))(&v78, v46, v25);
        v47 = v84 >> 60;
        if ((v84 >> 60) <= 3)
        {
          if ((v47 - 2) < 2)
          {
            sub_24E88D2AC(&v78);
            goto LABEL_84;
          }

          if (v47)
          {
            if (v47 == 1)
            {
              if ((v78 & 1) == 0)
              {
                goto LABEL_75;
              }

LABEL_84:
              v51 = *(v28 + 48);
              if (v51)
              {
                v52 = *(v28 + 40);
                v53 = v1[7];
                v54 = v1[8];
                __swift_project_boxed_opaque_existential_1(v1 + 4, v53);
                v55 = *(v54 + 16);

                if (*(v55(v53, v54) + 16))
                {
                  sub_24E76D644(v52, v51);
                  v57 = v56;
                }

                else
                {

                  v57 = 0;
                }

                v28 = v70;
                v29 = v71;
              }

              else
              {
                v57 = 0;
                v29 = v71;
              }

              v30 = v74;
              LOBYTE(v88) = v57 & 1;
              v27 = OfferAction.asExceptionRequest(forceAskToBuyReason:)(&v88);

              swift_unknownObjectRelease();

              v32 = 0;
              v34 = 0x2000000000000000;
              goto LABEL_52;
            }

LABEL_100:

            sub_24E88D2AC(&v78);

            swift_unknownObjectRelease();
            goto LABEL_50;
          }

          if (v94 >> 61 == 1)
          {
            v27 = v93;

            swift_unknownObjectRelease();
            v34 = 0x2000000000000000;
            v32 = 1;
          }

          else
          {
            sub_24E88C3F8(&v93, &v88);

            swift_unknownObjectRelease();
            v32 = *(&v93 + 1);
            v27 = v93;
            v33 = *(&v94 + 1);
            v34 = v94;
            v72 = v96;
            v73 = v95;
            v28 = v97;
          }

LABEL_106:
          v29 = v71;
          v30 = v74;
          goto LABEL_52;
        }

        if (v47 == 4 || v47 == 7)
        {
          sub_24E88D2AC(&v78);
          v58 = *(v28 + 48);
          if (v58)
          {
            v59 = *(v28 + 40);
            v60 = v1[7];
            v61 = v1[8];
            __swift_project_boxed_opaque_existential_1(v1 + 4, v60);
            v62 = *(v61 + 16);

            if (*(v62(v60, v61) + 16))
            {
              sub_24E76D644(v59, v58);
              v64 = v63;

              if (v64)
              {

                swift_unknownObjectRelease();

                v27 = 0;
                v32 = 0;
                v33 = 0;
                v28 = 0;
                v72 = 0u;
                v73 = 0u;
                v34 = 0x8000000000000000;
                goto LABEL_106;
              }
            }

            else
            {
            }

            v28 = v70;
          }

          LOBYTE(v88) = 0;
          v27 = OfferAction.asExceptionRequest(forceAskToBuyReason:)(&v88);

          swift_unknownObjectRelease();
        }

        else
        {
          if (v47 != 8)
          {
            goto LABEL_100;
          }

          v49 = (*(&v78 + 1) << 8) | ((*(&v78 + 5) | (HIBYTE(v78) << 16)) << 40) | v78;
          v50 = v83 | v85 | v82;
          if (v84 != 0x8000000000000000 || v50 | v81 | v80 | v79 | v49)
          {
            v28 = v70;
            v29 = v71;
            v30 = v74;
            if (v84 == 0x8000000000000000 && v49 == 4 && !(v50 | v81 | v80 | v79))
            {
              goto LABEL_84;
            }

            goto LABEL_100;
          }

          LOBYTE(v88) = 2;
          v27 = OfferAction.asExceptionRequest(forceAskToBuyReason:)(&v88);

          swift_unknownObjectRelease();
        }

        v32 = 0;
        v34 = 0x2000000000000000;
        goto LABEL_106;
      }
    }

LABEL_49:

    swift_unknownObjectRelease();
LABEL_50:

    goto LABEL_51;
  }

  return result;
}

uint64_t sub_24E8FFCD0(uint64_t a1)
{
  v2 = sub_24F927D88();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_24E69A5C4(0, &qword_27F222300);
  v18 = sub_24F92BEF8();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_24E9019B0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);

  sub_24F927DA8();
  v22 = MEMORY[0x277D84F90];
  sub_24E901A2C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v15 = v18;
  MEMORY[0x2530518B0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);
}

uint64_t sub_24E9000B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_24F91EB48();
    if (v2)
    {
      v3 = v2;
      v13[0] = 0x64496D616461;
      v13[1] = 0xE600000000000000;
      sub_24F92C7F8();
      if (*(v3 + 16) && (v4 = sub_24E76D934(&v16), (v5 & 1) != 0))
      {
        sub_24E643A9C(*(v3 + 56) + 32 * v4, &v14);
        sub_24E6585F8(&v16);

        if (*(&v15 + 1))
        {
          if (swift_dynamicCast())
          {
            v6 = v16;
            swift_getKeyPath();
            *&v16 = v1;
            sub_24E901A2C(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
            sub_24F91FD88();

            if (!*(v1 + 120))
            {
            }

            if (*(v1 + 112) == v6)
            {

              goto LABEL_17;
            }

            v7 = sub_24F92CE08();

            if (v7)
            {
LABEL_17:
              v8 = sub_24E8FB8AC();
              if (v8)
              {
                v9 = v8;
                swift_getKeyPath();
                *&v14 = v1;
                sub_24F91FD88();

                v10 = *(v1 + 192);
                *v18 = *(v1 + 176);
                *&v18[16] = v10;
                *&v18[32] = *(v1 + 208);
                v11 = *(v1 + 160);
                v16 = *(v1 + 144);
                v17 = v11;
                if (v11 >> 61 == 1)
                {
                  *&v14 = v9;
                  *&v15 = 0x6000000000000000;

                  sub_24E88C3F8(&v16, v13);
                  sub_24E8FA874(&v14);
                  swift_getKeyPath();
                  *&v14 = v1;
                  sub_24F91FD88();

                  if (*(v1 + 96))
                  {
                    *&v14 = *(v1 + 96);

                    sub_24F9280C8();
                  }

                  sub_24E88EB34(&v16);
                }

                else
                {
                  if (v11 >> 61 != 4 || v17 != 0x8000000000000000 || (v12 = vorrq_s8(*&v18[8], *&v18[24]), *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | *v18 | *(&v17 + 1) | *(&v16 + 1) | v16))
                  {
                    sub_24E88C3F8(&v16, &v14);

                    return sub_24E88EB34(&v16);
                  }

                  *&v14 = v9;
                  *&v15 = 0x4000000000000000;

                  sub_24E8FA874(&v14);
                  swift_getKeyPath();
                  *&v14 = v1;
                  sub_24F91FD88();

                  if (*(v1 + 96))
                  {
                    *&v14 = *(v1 + 96);

                    sub_24F9280C8();
                  }
                }
              }
            }
          }
        }
      }

      else
      {

        sub_24E6585F8(&v16);
        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {

      v14 = 0u;
      v15 = 0u;
    }

    return sub_24E601704(&v14, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24E9005E4()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24E9006D0()
{
  v1[18] = v0;
  v2 = sub_24F9215A8();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221510);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221518);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221520);
  v1[28] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221528);
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221530);
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221538);
  v1[35] = swift_task_alloc();
  v1[36] = sub_24F92B7F8();
  v1[37] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v1[38] = v8;
  v1[39] = v7;

  return MEMORY[0x2822009F8](sub_24E9009D8, v8, v7);
}

uint64_t sub_24E9009D8()
{
  v1 = v0[35];
  sub_24F92BDE8();
  v2 = sub_24F92A788();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[35];

    sub_24E601704(v4, &qword_27F221538);
LABEL_6:

    v8 = v0[1];

    return v8();
  }

  v5 = v0[35];
  swift_getKeyPath();
  sub_24F92A778();

  v6 = v0[13];
  v0[40] = v6;
  (*(v3 + 8))(v5, v2);
  if (!v6)
  {

    goto LABEL_6;
  }

  sub_24F9215C8();
  v7 = sub_24F9215B8();
  sub_24F921598();
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];

  sub_24F921578();
  (*(v11 + 8))(v10, v12);
  v0[41] = OBJC_IVAR____TtC12GameStoreKit24ProductAskToBuyPresenter___observationRegistrar;
  v0[42] = sub_24F92B7E8();
  v13 = sub_24E602068(&qword_27F221540, &qword_27F221530);
  v14 = swift_task_alloc();
  v0[43] = v14;
  *v14 = v0;
  v14[1] = sub_24E900E6C;
  v15 = v0[32];
  v16 = v0[28];

  return MEMORY[0x282200308](v16, v15, v13);
}

uint64_t sub_24E900E6C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24F92B778();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24E9015D4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24F92B778();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24E901004;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_24E901004()
{

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return MEMORY[0x2822009F8](sub_24E901068, v1, v2);
}

uint64_t sub_24E901068()
{
  v1 = *(v0 + 224);
  if ((*(*(v0 + 208) + 48))(v1, 1, *(v0 + 200)) == 1)
  {
    v2 = *(v0 + 320);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_24E6009C8(v1, *(v0 + 216), &qword_27F221518);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 216);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), v6, *(v0 + 152));
      if (qword_27F20FFD0 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 152);
      v10 = sub_24F92AAE8();
      __swift_project_value_buffer(v10, qword_27F39B0C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      *(v0 + 72) = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
      (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
      sub_24F928438();
      sub_24E601704(v0 + 48, &qword_27F2129B0);
      sub_24F92A5A8();

      (*(v8 + 8))(v7, v9);
    }

    else
    {
      v12 = *(v0 + 144);
      (*(*(v0 + 184) + 32))(*(v0 + 192), v6, *(v0 + 176));
      sub_24F921588();
      v13 = *(v0 + 360) & 1;
      if (*(v12 + 104) == v13)
      {
        *(*(v0 + 144) + 104) = v13;
      }

      else
      {
        v14 = *(v0 + 144);
        swift_getKeyPath();
        v15 = swift_task_alloc();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        *(v0 + 128) = v14;
        sub_24E901A2C(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
        sub_24F91FD78();
      }

      v16 = *(v0 + 144);
      swift_getKeyPath();
      *(v0 + 136) = v16;
      sub_24E901A2C(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
      sub_24F91FD88();

      if (*(v16 + 96))
      {

        sub_24E8FE520(v17);
      }

      else
      {
        sub_24E8FECE0();
      }

      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    }

    *(v0 + 336) = sub_24F92B7E8();
    v18 = sub_24E602068(&qword_27F221540, &qword_27F221530);
    v19 = swift_task_alloc();
    *(v0 + 344) = v19;
    *v19 = v0;
    v19[1] = sub_24E900E6C;
    v20 = *(v0 + 256);
    v21 = *(v0 + 224);

    return MEMORY[0x282200308](v21, v20, v18);
  }
}

uint64_t sub_24E9015D4()
{
  *(v0 + 120) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

unint64_t get_enum_tag_for_layout_string_12GameStoreKit24ProductAskToBuyPresenterC6StatusO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_24E90167C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 2) & 0xFFFFFF80 | (*(a1 + 16) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24E9016D0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E901750(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 0x101 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_24F966520;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
  }

  return result;
}

id sub_24E9017B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_accountID];
  *a2 = result;
  return result;
}

id sub_24E9017EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_accountID];
  *a2 = result;
  return result;
}

uint64_t sub_24E9018B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E9018EC()
{
  v1 = sub_24F91EB58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E9019B0()
{
  sub_24F91EB58();

  return sub_24E9000B8();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E901A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E901A78(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_24E8FB3EC(v4);
}

uint64_t sub_24E901AB8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v7 = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  sub_24E88C3F8(v6, v5);
  return sub_24E8FA874(a1);
}

uint64_t sub_24E901B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_24E901BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_24E901C50()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
}

void sub_24E901C94(void *a1)
{
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  if (a1)
  {
    v3 = a1;
    if (qword_27F20FFD0 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39B0C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    swift_getErrorValue();
    v7[3] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1);
    sub_24F9283D8();
    sub_24E601704(v7, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();
  }
}

uint64_t sub_24E901EF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) > 1)
  {
    if (v4 == 2 || v4 == 3)
    {
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_24E901F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v28[3] = type metadata accessor for Restrictions();
  v28[4] = &protocol witness table for Restrictions;
  v28[0] = a3;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0x8000000000000000;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221560);
  swift_allocObject();
  *(a5 + 216) = sub_24F9280D8();
  sub_24F91FDB8();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  sub_24E615E00(v28, a5 + 32);
  sub_24E69A5C4(0, &qword_27F221568);
  swift_unknownObjectRetain();
  sub_24F928F28();
  *(a5 + 72) = v27;
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  *(a5 + 80) = v27;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928F28();
  *(a5 + 88) = v27;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v14 = qword_27F20FFC8;

  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:a5 selector:sel_handleAskToBuyRequestSent_ name:qword_27F2214F0 object:0];

  v15 = [v12 defaultCenter];

  v16 = sub_24F92B098();
  [v15 addObserver:a5 selector:sel_updateStatusAndNotifyIfNeeded name:v16 object:0];

  v17 = *(a5 + 88);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *&v17[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

  v20 = v17;

  [v19 lock];
  sub_24F213714(a5, sub_24E9026A4, v18, v20);
  [v19 unlock];

  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_24F92B7F8();

  v22 = sub_24F92B7E8();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a5;
  sub_24EA998B8(0, 0, v11, &unk_24F966908, v23);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return a5;
}

uint64_t sub_24E9023CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a2)
  {
    if (!a4)
    {

      return v4 & 1;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:

    v4 = 1;
    return v4 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v4 = v5 ^ 1;
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24E902484()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 112) = v0[3];
  *(v1 + 120) = v2;
}

uint64_t sub_24E9024C4()
{

  return swift_deallocObject();
}

uint64_t sub_24E902504()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
}

uint64_t sub_24E902540()
{
  *(*(v0 + 16) + 136) = *(v0 + 24);
}

uint64_t sub_24E90257C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonGroupItemType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9025E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E902640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9026AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E9026EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24E8FABA4();
}

uint64_t SegmentedSearchResults.__allocating_init(segments:segmentChangeActions:selectedSegment:facets:selectedFacetOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v12 = *a5;
  v13 = a5[1];
  v14 = a5[2];
  v15 = *(a5 + 24);
  *(v11 + 16) = a1;
  if (a2 >> 62)
  {
    type metadata accessor for Action();
    v16 = sub_24F92CA98();
  }

  else
  {

    sub_24F92CEE8();
    type metadata accessor for Action();
    v16 = a2;
  }

  *(v11 + 24) = v16;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = v12;
  *(v11 + 56) = v13;
  *(v11 + 64) = v14;
  *(v11 + 72) = v15;
  *(v11 + 80) = a6;
  return v11;
}

uint64_t SegmentedSearchResults.init(segments:segmentChangeActions:selectedSegment:facets:selectedFacetOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a5;
  v13 = a5[1];
  v14 = a5[2];
  v15 = *(a5 + 24);
  *(v6 + 16) = a1;
  if (a2 >> 62)
  {
    type metadata accessor for Action();
    v16 = sub_24F92CA98();
  }

  else
  {

    sub_24F92CEE8();
    type metadata accessor for Action();
    v16 = a2;
  }

  *(v7 + 24) = v16;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  *(v7 + 64) = v14;
  *(v7 + 72) = v15;
  *(v7 + 80) = a6;
  return v7;
}

uint64_t SegmentedSearchResults.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SegmentedSearchResults.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SegmentedSearchResults.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v84 = v3;
  v83 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v68 - v6;
  v7 = sub_24F9285B8();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v68 - v10;
  MEMORY[0x28223BE20](v11);
  v82 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v24 = sub_24F92AC28();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v28 = v24;
  v73 = v17;
  v31 = *(v17 + 8);
  v29 = v17 + 8;
  v30 = v31;
  v31(v23, v16);
  if ((*(v25 + 48))(v15, 1, v28) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0);
    v32 = sub_24F92AC38();
    sub_24E9035C8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v33 = 0xD000000000000015;
    v33[1] = 0x800000024FA49700;
    v33[2] = v83;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v86 + 8))(v91, v87);
    v30(v85, v16);
    v34 = v84;
LABEL_8:
    swift_deallocPartialClassInstance();
    return v34;
  }

  v76 = v30;
  v77 = v29;
  v71 = v16;
  v69 = v25;
  v35 = *(v25 + 32);
  v75 = v27;
  v70 = v28;
  v35(v27, v15, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x277D84F90];
  *&v88 = v36;
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v37, qword_27F22D8D8);
  v38 = v82;
  sub_24F928528();

  v39 = v85;
  sub_24F928398();
  v41 = v86;
  v40 = v87;
  v43 = (v86 + 16);
  v42 = *(v86 + 16);
  v42(v80, v38, v87);
  type metadata accessor for SearchResultsSegment();
  sub_24E9035C8(&qword_27F221580, type metadata accessor for SearchResultsSegment);
  v44 = v81;
  v45 = sub_24F92B678();
  v34 = v84;
  if (v44)
  {
    v46 = *(v41 + 8);
    v46(v91, v40);
    v76(v39, v71);
    (*(v69 + 8))(v75, v70);
    v46(v38, v40);
    goto LABEL_8;
  }

  v80 = v43;
  v81 = v42;
  v84[2] = v45;
  v47 = type metadata accessor for Action();
  MEMORY[0x28223BE20](v47);
  *(&v68 - 2) = v48;
  *(&v68 - 1) = v38;
  v34[3] = sub_24F92ABD8();
  v50 = v72;
  v51 = v85;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v55 = v71;
  (v76)(v50);
  v34[4] = v52;
  v34[5] = v54;
  sub_24F928398();
  v81(v74, v38, v87);
  sub_24E90362C();
  sub_24F929548();
  v56 = v89;
  v57 = v90;
  *(v34 + 3) = v88;
  v34[8] = v56;
  *(v34 + 72) = v57;
  v58 = v78;
  sub_24F928398();
  v59 = v55;
  (*(v73 + 56))(v58, 0, 1, v55);
  v60 = v34[7];
  v61 = v34[8];
  v62 = *(v34 + 72);
  *&v88 = v34[6];
  *(&v88 + 1) = v60;
  v89 = v61;
  v90 = v62;
  sub_24E903680(v88);
  v63 = v91;
  v64 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v58, &v88, v91);
  v65 = *(v86 + 8);
  v66 = v63;
  v67 = v87;
  v65(v66, v87);
  v76(v51, v59);
  sub_24E9036C4(v88);
  sub_24E601704(v58, &qword_27F212F48);
  (*(v69 + 8))(v75, v70);
  v65(v82, v67);
  v34[10] = v64;
  return v34;
}

uint64_t SegmentedSearchResults.deinit()
{

  sub_24E9036C4(*(v0 + 48));

  return v0;
}

uint64_t SegmentedSearchResults.__deallocating_deinit()
{

  sub_24E9036C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_24E903558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SegmentedSearchResults.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9035C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E90362C()
{
  result = qword_27F221588;
  if (!qword_27F221588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221588);
  }

  return result;
}

uint64_t sub_24E903680(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E9036C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t LayoutView.nilIfHidden()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F922238();
  v6 = *(a1 - 8);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v10 = *(a1 - 8);
    (*(v10 + 16))(a2, v2, a1);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, a1);
}

uint64_t LayoutTextView.nilIfHiddenOrHasNoContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_24F922238() & 1) != 0 || (sub_24F9221E8() & 1) == 0)
  {
    v5 = *(a1 - 8);
    v6 = 1;
  }

  else
  {
    v9 = *(a1 - 8);
    (*(v9 + 16))(a2, v2, a1);
    v5 = v9;
    v6 = 0;
  }

  v7 = *(v5 + 56);

  return v7(a2, v6, 1, a1);
}

uint64_t LayoutTextView.nilIfHasNoContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F9221E8();
  v6 = *(a1 - 8);
  if (v5)
  {
    v10 = *(a1 - 8);
    (*(v10 + 16))(a2, v2, a1);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, a1);
}

uint64_t PosterLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v46 = sub_24F928388();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for Artwork();
  sub_24F928398();
  v50 = v5;
  v51 = *(v5 + 16);
  v40 = v4;
  v51(v9, a2, v4);
  v17 = sub_24E903F74(&qword_27F219660, type metadata accessor for Artwork);
  v42 = v16;
  v43 = v17;
  sub_24F929548();
  v18 = v52;
  *(v52 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_posterArtwork) = v53;
  type metadata accessor for Video();
  sub_24F928398();
  v19 = v4;
  v44 = v5 + 16;
  v20 = v51;
  v51(v9, a2, v19);
  sub_24E903F74(&qword_27F221590, type metadata accessor for Video);
  sub_24F929548();
  v21 = v18;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_posterVideo) = v53;
  sub_24F928398();
  v41 = a2;
  v22 = v40;
  v20(v9, a2, v40);
  sub_24F929548();
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_epicHeading) = v53;
  v23 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  v26 = v25;
  v27 = v48;
  v28 = *(v48 + 8);
  v29 = v46;
  v28(v15, v46);
  v30 = v52;
  v31 = (v52 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_footerText);
  *v31 = v24;
  v31[1] = v26;
  v32 = v45;
  sub_24F928398();
  LOBYTE(v24) = sub_24F928278();
  v45 = v28;
  v28(v32, v29);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_isDark) = v24 & 1;
  v33 = v29;
  v34 = *(v27 + 16);
  v35 = v47;
  v48 = v23;
  v34(v47, v23, v33);
  v36 = v49;
  v37 = v41;
  (v51)(v49);
  v38 = Lockup.init(deserializing:using:)(v35, v36);
  (*(v50 + 8))(v37, v22);
  (v45)(v48, v33);
  return v38;
}

uint64_t sub_24E903F74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PosterLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:posterArtwork:posterVideo:epicHeading:footerText:isDark:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned __int8 a34)
{
  v87 = a8;
  v86 = a7;
  v84 = a6;
  v83 = a5;
  v82 = a4;
  v80 = a3;
  v78 = a2;
  v67 = a28;
  v94 = a25;
  v95 = a26;
  v93 = a24;
  v91 = a27;
  v92 = a23;
  v90 = a22;
  v88 = a21;
  v73 = a20;
  v72 = a19;
  v89 = a18;
  v81 = a17;
  v79 = a16;
  v77 = a15;
  v76 = a14;
  v85 = a13;
  v75 = a12;
  v74 = a11;
  v71 = a10;
  v70 = a9;
  v66 = a34;
  v65 = sub_24F91F6B8();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v63 - v38;
  v40 = swift_allocObject();
  *(v40 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_posterArtwork) = a29;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_posterVideo) = a30;
  v41 = a1[1];
  v69 = *a1;
  v68 = v41;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_epicHeading) = a31;
  v42 = (v40 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_footerText);
  *v42 = a32;
  v42[1] = a33;
  v43 = v67;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_isDark) = v66;
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  sub_24E60169C(v43, v39, &qword_27F213E68);
  *(v40 + 424) = 4;
  sub_24E60169C(v101, &v98, &qword_27F235830);
  if (*(&v99 + 1))
  {
    v44 = v99;
    *(v40 + 448) = v98;
    *(v40 + 464) = v44;
    *(v40 + 480) = v100;
  }

  else
  {

    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v47 = v46;
    (*(v64 + 8))(v36, v65);
    v96 = v45;
    v97 = v47;
    sub_24F92C7F8();
    sub_24E601704(&v98, &qword_27F235830);
  }

  sub_24E60169C(v39, v40 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);

  v48 = v68;
  *(v40 + 16) = v69;
  *(v40 + 24) = v48;
  v49 = v80;
  *(v40 + 32) = v78;
  *(v40 + 40) = v49;
  *(v40 + 48) = v82;
  *(v40 + 56) = 0;
  v50 = v73;
  *(v40 + 64) = v72;
  *(v40 + 72) = v50;
  v51 = v84;
  *(v40 + 80) = v83;
  *(v40 + 88) = v51;
  v52 = v87;
  *(v40 + 96) = v86;
  *(v40 + 104) = v52;
  v53 = v71;
  *(v40 + 112) = v70;
  *(v40 + 120) = v53;
  *(v40 + 128) = 0;
  *(v40 + 136) = 2;
  v54 = v75;
  *(v40 + 144) = v74;
  *(v40 + 152) = v54;
  v55 = v77;
  *(v40 + 192) = v76;
  *(v40 + 200) = v55;
  v56 = v81;
  *(v40 + 208) = v79;
  *(v40 + 216) = v56;
  *(v40 + 376) = 0u;
  *(v40 + 392) = 0u;
  *(v40 + 408) = 0x8000;
  *(v40 + 360) = v91;
  *(v40 + 416) = 0;
  *(v40 + 432) = MEMORY[0x277D84FA0];
  v57 = v90;
  *(v40 + 160) = v88;
  *(v40 + 168) = v57;
  v58 = v85;
  *(v40 + 176) = v92;
  *(v40 + 184) = v58;
  v60 = v93;
  v59 = v94;
  *(v40 + 224) = v89;
  *(v40 + 232) = v60;
  *(v40 + 240) = v59;
  *(v40 + 248) = 0;
  v61 = v95;
  *(v40 + 256) = 0;
  *(v40 + 264) = v61;
  *(v40 + 272) = 0u;
  *(v40 + 288) = 0u;
  *(v40 + 304) = 0u;
  *(v40 + 320) = 0u;
  *(v40 + 336) = 0;
  sub_24E601704(v43, &qword_27F213E68);
  sub_24E601704(v39, &qword_27F213E68);
  sub_24E601704(v101, &qword_27F235830);
  *(v40 + 344) = MEMORY[0x277D84F90];
  *(v40 + 352) = 0;
  *(v40 + 440) = 0;
  *(v40 + 368) = 0;
  return v40;
}

uint64_t PosterLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:posterArtwork:posterVideo:epicHeading:footerText:isDark:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v35 = v34;
  v87 = a8;
  v86 = a7;
  v84 = a6;
  v83 = a5;
  v82 = a4;
  v80 = a3;
  v78 = a2;
  v67 = a28;
  v91 = a27;
  v94 = a25;
  v95 = a26;
  v93 = a24;
  v92 = a23;
  v90 = a22;
  v88 = a21;
  v73 = a20;
  v72 = a19;
  v89 = a18;
  v81 = a17;
  v79 = a16;
  v77 = a15;
  v76 = a14;
  v85 = a13;
  v75 = a12;
  v74 = a11;
  v71 = a10;
  v70 = a9;
  v66 = sub_24F91F6B8();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v38 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v65 - v40;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_posterArtwork) = a29;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_posterVideo) = a30;
  v42 = a1[1];
  v69 = *a1;
  v68 = v42;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_epicHeading) = a31;
  v43 = (v35 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_footerText);
  *v43 = a32;
  v43[1] = a33;
  v44 = v67;
  v45 = v41;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_isDark) = a34;
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  sub_24E60169C(v44, v41, &qword_27F213E68);
  *(v35 + 424) = 4;
  sub_24E60169C(v104, &v98, &qword_27F235830);
  if (*(&v99 + 1))
  {
    v101 = v98;
    v102 = v99;
    v103 = v100;
  }

  else
  {

    sub_24F91F6A8();
    v46 = sub_24F91F668();
    v48 = v47;
    (*(v65 + 8))(v38, v66);
    v96 = v46;
    v97 = v48;
    sub_24F92C7F8();
    sub_24E601704(&v98, &qword_27F235830);
  }

  v49 = v102;
  *(v35 + 448) = v101;
  *(v35 + 464) = v49;
  *(v35 + 480) = v103;
  sub_24E60169C(v45, v35 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v50 = v68;
  *(v35 + 16) = v69;
  *(v35 + 24) = v50;
  v51 = v80;
  *(v35 + 32) = v78;
  *(v35 + 40) = v51;
  *(v35 + 48) = v82;
  *(v35 + 56) = 0;
  v52 = v73;
  *(v35 + 64) = v72;
  *(v35 + 72) = v52;
  v53 = v84;
  *(v35 + 80) = v83;
  *(v35 + 88) = v53;
  v54 = v87;
  *(v35 + 96) = v86;
  *(v35 + 104) = v54;
  v55 = v71;
  *(v35 + 112) = v70;
  *(v35 + 120) = v55;
  *(v35 + 128) = 0;
  *(v35 + 136) = 2;
  v56 = v75;
  *(v35 + 144) = v74;
  *(v35 + 152) = v56;
  v57 = v77;
  *(v35 + 192) = v76;
  *(v35 + 200) = v57;
  v58 = v81;
  *(v35 + 208) = v79;
  *(v35 + 216) = v58;
  *(v35 + 376) = 0u;
  *(v35 + 392) = 0u;
  *(v35 + 408) = 0x8000;
  *(v35 + 360) = v91;
  *(v35 + 416) = 0;
  *(v35 + 432) = MEMORY[0x277D84FA0];
  v59 = v90;
  *(v35 + 160) = v88;
  *(v35 + 168) = v59;
  v60 = v85;
  *(v35 + 176) = v92;
  *(v35 + 184) = v60;
  v62 = v93;
  v61 = v94;
  *(v35 + 224) = v89;
  *(v35 + 232) = v62;
  *(v35 + 240) = v61;
  *(v35 + 248) = 0;
  v63 = v95;
  *(v35 + 256) = 0;
  *(v35 + 264) = v63;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0u;
  *(v35 + 320) = 0u;
  *(v35 + 336) = 0;

  sub_24E601704(v44, &qword_27F213E68);
  sub_24E601704(v45, &qword_27F213E68);
  sub_24E601704(v104, &qword_27F235830);
  *(v35 + 344) = MEMORY[0x277D84F90];
  *(v35 + 352) = 0;
  *(v35 + 440) = 0;
  *(v35 + 368) = 0;
  return v35;
}

uint64_t PosterLockup.footerText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12PosterLockup_footerText);

  return v1;
}

uint64_t sub_24E904B98()
{
}

uint64_t PosterLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t PosterLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PosterLockup()
{
  result = qword_27F221598;
  if (!qword_27F221598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RiverRowLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t RiverRow.Context.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RiverRow.Context.init(_:)(a1);
  return v2;
}

uint64_t RiverRow.Context.init(_:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler();
  swift_getWitnessTable();
  sub_24F922CB8();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t RiverRow.Context.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler();
  swift_getWitnessTable();
  v2 = sub_24F922CC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RiverRow.Context.__deallocating_deinit()
{
  RiverRow.Context.deinit();

  return swift_deallocClassInstance();
}

uint64_t RiverRow.__allocating_init(context:number:origin:itemSize:interItemSpacing:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  RiverRow.init(context:number:origin:itemSize:interItemSpacing:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t RiverRow.init(context:number:origin:itemSize:interItemSpacing:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v17 = sub_24F92B608();
  v18 = sub_24E9065F8(v17, v16, AssociatedTypeWitness, MEMORY[0x277D83B98]);

  *(v7 + 72) = v18;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

void sub_24E9053C4(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, double a8, double a9)
{
  v136 = a7;
  v107 = a6;
  v108 = a5;
  v129 = a4;
  v128 = a3;
  v127 = a1;
  v13 = *v9;
  v135 = sub_24F92CDB8();
  v14 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 88);
  v17 = *(v13 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v117 = sub_24F92C4A8();
  v133 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v125 = &v106 - v19;
  v126 = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v21);
  v116 = &v106 - v22;
  v140 = v9;
  v23 = *(v9 + 2);
  v24 = v16[4];
  swift_unknownObjectRetain();
  v139 = v16;
  v25 = v24(v17, v16);
  swift_unknownObjectRelease();
  v130 = v25;
  v26 = v25 - 1;
  v27 = v25 < 1 || a9 <= COERCE_DOUBLE(1);
  v137 = v23;
  v138 = v17;
  if (v27)
  {
    v28 = v140;
    swift_beginAccess();
    v29 = *(v28 + 9);
    v30 = 1 << *(v29 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    while (v32)
    {
      v35 = v34;
LABEL_14:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v143 = *(*(v29 + 56) + ((v35 << 9) | (8 * v36)));
      v37 = v143;
      swift_beginAccess();
      swift_getAssociatedTypeWitness();
      type metadata accessor for RiverViewRecycler();
      v38 = v37;
      swift_getWitnessTable();
      sub_24F922CC8();
      sub_24F922CA8();
      swift_endAccess();
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        swift_beginAccess();
        swift_getAssociatedTypeWitness();
        sub_24F92AEA8();
        sub_24F92AE98();
        swift_endAccess();
        return;
      }

      v32 = *(v29 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v39 = v139;
  v40 = v140[4];
  v41 = v140[6];
  v42 = v139 + 8;
  v43 = v139[8];
  swift_unknownObjectRetain();
  v124 = v42;
  v123 = v43;
  v43(&v144, v17, v39);
  swift_unknownObjectRelease();
  if (v144 == 1)
  {
    v44 = *(v140 + 3);
    v45 = __OFSUB__(v130, v44);
    v46 = v130 - v44;
    v47 = v128;
    if (v45)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v46 < 0)
    {
      v45 = __OFSUB__(0, v46);
      v46 = -v46;
      if (v45)
      {
        goto LABEL_102;
      }
    }

    if (v46 >= v26)
    {
      v46 = v26;
    }

    v118 = v46 & ~(v46 >> 63);
  }

  else
  {
    v48 = a2;
    v49 = v139;
    v50 = v139[3];
    swift_unknownObjectRetain();
    v51 = v50(v17, v49);
    swift_unknownObjectRelease();
    if (!v51)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v52 = *(v140 + 3);
    v53 = v130 / v51 * v52;
    if ((v130 / v51 * v52) >> 64 != v53 >> 63)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v118 = v53 % v130;
    v17 = v138;
    v47 = v128;
    a2 = v48;
  }

  v54 = v40 + v41;
  v55 = a8 - v140[7];
  v56 = v55 / v54;
  if (COERCE__INT64(fabs(v55 / v54)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_95;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v57 = v56;
  v58 = fmod(v55, v54);
  v59 = v58 + a9;
  v60 = -v58;
  if (v47)
  {
    v61 = -v54;
  }

  else
  {
    v61 = v54;
  }

  if (v47)
  {
    v62 = -v54;
  }

  else
  {
    v62 = v54 + a9;
  }

  if (v47)
  {
    v63 = v59;
  }

  else
  {
    v63 = v60;
  }

  v122 = *(*v23 + 104);
  v121 = v139 + 12;
  v111 = a2 + v130;
  v64 = __OFADD__(a2, v130);
  v110 = v64;
  v120 = v139 + 9;
  v119 = (v20 + 48);
  v115 = (v20 + 32);
  v114 = v139 + 11;
  v113 = (v20 + 8);
  v112 = (v133 + 1);
  v133 = (v14 + 104);
  v132 = (v14 + 8);
  v131 = *MEMORY[0x277D84688];
  v109 = v57;
  v65 = v57;
  while (1)
  {
    v69 = v63 <= v62;
    if (v47)
    {
      v69 = v62 <= v63;
    }

    if (!v69)
    {
      break;
    }

    swift_beginAccess();
    v143 = v65;
    swift_getAssociatedTypeWitness();
    sub_24F92AEC8();
    v70 = v142;
    if (v142)
    {
      swift_endAccess();
      if (v129)
      {
        v71 = 1;
      }

      else
      {
        v76 = [v70 layer];
        v77 = sub_24F92B098();
        v78 = [v76 animationForKey_];

        if (v78)
        {

          v71 = 0;
        }

        else
        {
          v71 = 1;
        }
      }
    }

    else
    {
      v72 = v17;
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RiverViewRecycler();
      swift_getWitnessTable();
      sub_24F922CC8();
      sub_24F922C98();
      swift_endAccess();
      v73 = v139;
      v74 = v139[12];
      v70 = v142;
      swift_unknownObjectRetain();
      v74(v70, v72, v73);
      swift_unknownObjectRelease();
      v142 = v70;
      v143 = v65;
      swift_beginAccess();
      sub_24F92AEA8();
      sub_24F92AED8();
      swift_endAccess();
      swift_unknownObjectRetain();
      v123(&v144, v72, v73);
      swift_unknownObjectRelease();
      if (v144 == 1)
      {
        if (v130 > 3)
        {
          v75 = &v65[v118];
          if (__OFADD__(v118, v65))
          {
            goto LABEL_93;
          }
        }

        else
        {
          v75 = v111;
          if (v110)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v75 = &v65[v118];
        if (__OFADD__(v118, v65))
        {
          goto LABEL_92;
        }
      }

      v79 = v75 % v130;
      v80 = v139;
      v81 = v139[9];
      swift_unknownObjectRetain();
      v82 = v125;
      v83 = v138;
      v81(v79, v138, v80);
      swift_unknownObjectRelease();
      v84 = v126;
      if ((*v119)(v82, 1, v126) == 1)
      {
        (*v112)(v82, v117);
      }

      else
      {
        v85 = v116;
        (*v115)(v116, v82, v84);
        v86 = v139;
        v87 = v139[11];
        swift_unknownObjectRetain();
        v87(v85, v79, v70, v83, v86);
        swift_unknownObjectRelease();
        (*v113)(v85, v84);
      }

      v71 = 1;
      v47 = v128;
    }

    v88 = [v70 superview];
    if (v88)
    {

      if ((v71 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      [v127 addSubview_];
    }

    v66 = v140[8];
    v67 = v134;
    v68 = v135;
    (*v133)(v134, v131, v135);
    CGPoint.rounded(_:)(v67, v63, v66);
    (*v132)(v67, v68);
    sub_24F92C1E8();
    [v70 setFrame_];
LABEL_45:

    v63 = v61 + v63;
    v45 = __OFADD__(v65++, 1);
    v17 = v138;
    if (v45)
    {
      goto LABEL_90;
    }
  }

  if ((v107 & 1) == 0)
  {
    if (v65 >= v109)
    {
      v89 = v140;
      swift_beginAccess();
      v90 = *(v89 + 9);
      v91 = v90 + 64;
      v92 = 1 << v90[32];
      v93 = -1;
      if (v92 < 64)
      {
        v93 = ~(-1 << v92);
      }

      v94 = v93 & *(v90 + 8);
      v135 = *(*v137 + 104);
      v95 = (v92 + 63) >> 6;

      v96 = 0;
      v134 = v90;
      while (v94)
      {
LABEL_80:
        v99 = __clz(__rbit64(v94));
        v94 &= v94 - 1;
        v100 = (v96 << 9) | (8 * v99);
        v101 = *(*(v90 + 6) + v100);
        v102 = *(*(v90 + 7) + v100);
        if (v101 >= v109 && v101 < v65)
        {
          if (v108)
          {
            v104 = v102;
            v105 = [v104 layer];
            [v105 removeAllAnimations];
          }
        }

        else
        {
          v143 = *(*(v90 + 7) + v100);
          swift_beginAccess();
          v136 = swift_getAssociatedTypeWitness();
          type metadata accessor for RiverViewRecycler();
          v97 = v102;
          swift_getWitnessTable();
          sub_24F922CC8();
          sub_24F922CA8();
          swift_endAccess();
          v141 = v101;
          swift_beginAccess();
          sub_24F92AEA8();
          v90 = v134;
          sub_24F92AE58();
          swift_endAccess();
        }
      }

      while (1)
      {
        v98 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_91;
        }

        if (v98 >= v95)
        {

          return;
        }

        v94 = *&v91[8 * v98];
        ++v96;
        if (v94)
        {
          v96 = v98;
          goto LABEL_80;
        }
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }
}

uint64_t sub_24E9062D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 88);
  v4 = *(v3 + 80);
  v5 = *(*a1 + 80);
  swift_unknownObjectRetain();
  v6 = v4(v5, v3);
  result = swift_unknownObjectRelease();
  *a2 = v6;
  return result;
}

uint64_t RiverRow.deinit()
{

  return v0;
}

uint64_t RiverRow.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24E906414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92AEE8();

  return sub_24E906470(a1, v6, a2, a3);
}

unint64_t sub_24E906470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_24F92AFF8();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_24E9065F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24F92B648())
  {
    sub_24F92CB68();
    v13 = sub_24F92CB58();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24F92B648();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24F92B628())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24F92C8D8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24E906414(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_24E9068E8()
{
  result = qword_27F2215A8[0];
  if (!qword_27F2215A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2215A8);
  }

  return result;
}

uint64_t sub_24E906AC8()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler();
  swift_getWitnessTable();
  result = sub_24F922CC8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_24E906C18(void *a1)
{
  v2 = [a1 layer];
  [v2 removeAllAnimations];

  return [a1 setHidden_];
}

id sub_24E906C80(void *a1)
{
  v2 = [a1 layer];
  [v2 removeAllAnimations];

  return [a1 removeFromSuperview];
}

void sub_24E906CF4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 72);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = [v10 layer];
    [v11 removeAllAnimations];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_24E906EA4()
{
  result = qword_27F2217B0;
  if (!qword_27F2217B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2217B0);
  }

  return result;
}

unint64_t sub_24E906EFC()
{
  result = qword_27F2217B8;
  if (!qword_27F2217B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2217B8);
  }

  return result;
}

unint64_t sub_24E906F50(uint64_t a1)
{
  *(a1 + 8) = sub_24E906F80();
  result = sub_24E906FD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24E906F80()
{
  result = qword_27F2217C0;
  if (!qword_27F2217C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2217C0);
  }

  return result;
}

unint64_t sub_24E906FD4()
{
  result = qword_27F2217C8;
  if (!qword_27F2217C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2217C8);
  }

  return result;
}

unint64_t sub_24E90702C()
{
  result = qword_27F2217D0;
  if (!qword_27F2217D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2217D0);
  }

  return result;
}

unint64_t sub_24E907084()
{
  result = qword_27F2217D8;
  if (!qword_27F2217D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2217D8);
  }

  return result;
}

uint64_t sub_24E9070D8()
{
  sub_24F00EA68(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E907170();
  v1 = sub_24F92AF68();

  return v1;
}

unint64_t sub_24E907170()
{
  result = qword_27F23E240;
  if (!qword_27F23E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E240);
  }

  return result;
}

id NSAttributedString.byCollapsingNewlines.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v2 = [v1 length];
  v3 = [v1 mutableString];
  v4 = sub_24F92B098();
  v5 = sub_24F92B098();
  [v3 replaceOccurrencesOfString:v4 withString:v5 options:1024 range:{0, v2}];

  return v1;
}

uint64_t sub_24E9072B8()
{
  v1 = v0;
  v2 = sub_24F91F7C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_24F91F758();
  Locale.normalizedLocale.getter(v5);
  v10 = *(v3 + 8);
  v10(v8, v2);
  v11 = sub_24F91F738();
  v10(v5, v2);
  [v9 setLocale_];

  [v9 setNumberStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v13 = [v9 stringFromNumber_];

  if (!v13)
  {
    v14 = objc_opt_self();
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v13 = [v14 localizedStringFromNumber:v15 numberStyle:1];
  }

  v16 = sub_24F92B0D8();
  v18 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_24E90A06C();
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = sub_24F92B118();

  return v20;
}

uint64_t sub_24E90753C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24E907574()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F2217E0);
  __swift_project_value_buffer(v4, qword_27F2217E0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

char *sub_24E9076BC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *&v3[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_orderedListTracker] = 0;
  v5 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  *&v3[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_didParseEverything] = 1;
  v6 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_foregroundColor;
  if (qword_27F210438 != -1)
  {
    swift_once();
  }

  v7 = qword_27F22BEB8;
  *&v3[v6] = qword_27F22BEB8;
  v8 = objc_allocWithZone(ASKNQMLParser);
  v9 = v7;
  v10 = sub_24F92B098();

  v11 = [v8 initWithString_];

  *&v3[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] = v11;
  v12 = &v3[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration];
  v13 = a3[3];
  v12[2] = a3[2];
  v12[3] = v13;
  v12[4] = a3[4];
  v14 = a3[1];
  *v12 = *a3;
  v12[1] = v14;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for NqmlStringGenerator();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  [*&v15[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] setDelegate_];
  return v15;
}

uint64_t sub_24E90784C(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v3) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_24E617FE0(0, 1, 1, v4);
      *(v1 + v3) = v4;
    }

    v33 = *(v4 + 16);
    v32 = *(v4 + 24);
    if (v33 >= v32 >> 1)
    {
      v4 = sub_24E617FE0((v32 > 1), v33 + 1, 1, v4);
    }

    *(v4 + 16) = v33 + 1;
    *(v4 + 8 * v33 + 32) = a1;
    *(v1 + v3) = v4;
    return swift_endAccess();
  }

  v35 = v3;
  v36 = v1;
  v6 = *(v4 + 8 * v5 + 24);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & a1[8];
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11;
LABEL_15:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v4 = *(a1[6] + 8 * v16);
    sub_24E643A9C(a1[7] + 32 * v16, v37);
    *&v38 = v4;
    sub_24E612B0C(v37, (&v38 + 8));
    v17 = v4;
    v14 = v12;
LABEL_16:
    v41[0] = v38;
    v41[1] = v39;
    v42 = v40;
    v18 = v38;
    if (!v38)
    {
      break;
    }

    sub_24E612B0C((v41 + 8), &v38);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = v6;
    v19 = sub_24E7728E8(v18);
    v21 = v6[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_40;
    }

    v4 = v20;
    if (v6[3] >= v24)
    {
      if (v3)
      {
        goto LABEL_22;
      }

      v3 = v19;
      sub_24E8B0490();
      v19 = v3;
      v6 = *&v37[0];
      if ((v4 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_6:
      v4 = v6[7] + 32 * v19;
      __swift_destroy_boxed_opaque_existential_1(v4);
      sub_24E612B0C(&v38, v4);

      v11 = v14;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_24E89D524(v24, v3);
      v19 = sub_24E7728E8(v18);
      if ((v4 & 1) != (v25 & 1))
      {
        type metadata accessor for Key(0);
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

LABEL_22:
      v6 = *&v37[0];
      if (v4)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6[(v19 >> 6) + 8] |= 1 << v19;
      *(v6[6] + 8 * v19) = v18;
      sub_24E612B0C(&v38, (v6[7] + 32 * v19));
      v26 = v6[2];
      v23 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v23)
      {
        goto LABEL_41;
      }

      v6[2] = v27;
      v11 = v14;
      if (!v9)
      {
LABEL_8:
        if (v10 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v10;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            v9 = 0;
            v40 = 0;
            v38 = 0u;
            v39 = 0u;
            goto LABEL_16;
          }

          v9 = a1[v12 + 8];
          ++v11;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }
  }

  v3 = v35;
  v4 = v36;
  swift_beginAccess();
  a1 = *(v36 + v35);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + v35) = a1;
  if (v28)
  {
    goto LABEL_30;
  }

LABEL_42:
  a1 = sub_24E617FE0(0, a1[2] + 1, 1, a1);
  *(v4 + v3) = a1;
LABEL_30:
  v30 = a1[2];
  v29 = a1[3];
  if (v30 >= v29 >> 1)
  {
    a1 = sub_24E617FE0((v29 > 1), v30 + 1, 1, a1);
  }

  a1[2] = v30 + 1;
  a1[v30 + 4] = v6;
  *(v4 + v3) = a1;
  return swift_endAccess();
}

void sub_24E907C20()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator);
  v2 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v4 = v1;

    v5 = sub_24F92B098();
    type metadata accessor for Key(0);
    sub_24E909FA4(&qword_27F212318, type metadata accessor for Key);
    v6 = sub_24F92AE28();

    v7 = [v3 initWithString:v5 attributes:v6];

    [v4 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

id sub_24E907D74()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 8 * v3 + 24);
    if (*(v4 + 16))
    {
      v5 = v0;
      v6 = *MEMORY[0x277D740A8];

      v7 = sub_24E7728E8(v6);
      if (v8)
      {
        sub_24E643A9C(*(v4 + 56) + 32 * v7, v12);

        sub_24E69A5C4(0, &qword_27F217E58);
        if (swift_dynamicCast())
        {
          return v11;
        }
      }

      else
      {
      }

      v0 = v5;
    }
  }

  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration + 16);

  return v10;
}

id sub_24E907E98(int a1)
{
  v2 = sub_24E907D74();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits] | a1;
  v5 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;
    [v2 pointSize];
    v8 = [objc_opt_self() fontWithDescriptor:v6 size:v7];

    return v8;
  }

  else
  {
    if (qword_27F20FFD8 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F2217E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v13 = sub_24E69A5C4(0, &qword_27F217E58);
    v12[0] = v2;
    v11 = v2;
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0);
    sub_24F9283A8();
    v13 = MEMORY[0x277D84CC0];
    LODWORD(v12[0]) = v4;
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0);
    sub_24F92A588();

    return v11;
  }
}

id sub_24E908150()
{
  v0 = sub_24E907E98(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221838);
  inited = swift_initStackObject();
  v2 = MEMORY[0x277D74398];
  *(inited + 16) = xmmword_24F93A400;
  v3 = *v2;
  *(inited + 32) = v3;
  v4 = *MEMORY[0x277D74388];
  *(inited + 40) = 6;
  *(inited + 48) = v4;
  *(inited + 56) = 0;
  v5 = v3;
  v6 = v4;
  v7 = sub_24E60C024(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221840);
  swift_arrayDestroy();
  v8 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221848);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_24F93DE60;
  v10 = *MEMORY[0x277D74338];
  *(v9 + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221850);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  *(v11 + 32) = v7;
  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221858);
  *(v9 + 40) = v11;
  v12 = v10;
  sub_24E60C110(v9);
  swift_setDeallocating();
  sub_24E601704(v9 + 32, &unk_27F221860);
  type metadata accessor for AttributeName(0);
  sub_24E909FA4(&qword_27F2126B0, type metadata accessor for AttributeName);
  v13 = sub_24F92AE28();

  v14 = [v8 fontDescriptorByAddingAttributes_];

  [v0 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  return v16;
}

id sub_24E90891C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NqmlStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSAttributedString __swiftcall NSAttributedString.init(nqml:configuration:)(Swift::String nqml, GameStoreKit::NqmlConfiguration *configuration)
{
  object = nqml._object;
  countAndFlagsBits = nqml._countAndFlagsBits;
  v4 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v15 = v4;
  v16 = *&configuration->orderedListItemBulletFormat._object;
  v5 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v13 = v5;
  v6 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
  v7 = sub_24E9076BC(countAndFlagsBits, object, &newline);
  [*&v7[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] parse];
  v8 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
  v9 = [*&v7[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator] mutableString];
  if (qword_27F210F48 != -1)
  {
    swift_once();
  }

  sub_24F0A8300(qword_27F39DBA8);

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];
  return v10;
}

BOOL sub_24E908B94(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_24F92C858();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

id sub_24E908C8C(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v21 = a2;
    v3 = sub_24E7728E8(@"font-name");
    if (v4)
    {
      v5 = (*(a1 + 56) + 16 * v3);
      v7 = *v5;
      v6 = v5[1];

      if (!*(a1 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = [v21 fontName];
      v7 = sub_24F92B0D8();
      v6 = v10;

      if (!*(a1 + 16))
      {
        goto LABEL_12;
      }
    }

    v11 = sub_24E7728E8(@"font-size");
    if (v12)
    {
      v13 = (*(a1 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v22[0] = 0;

      LOBYTE(v14) = sub_24E908B94(v14, v15);

      if (v14)
      {
        v16 = *v22;
        goto LABEL_13;
      }
    }

LABEL_12:
    [v21 pointSize];
    v16 = v17;
LABEL_13:
    v18 = sub_24F92B098();
    v19 = [objc_opt_self() fontWithName:v18 size:v16];

    if (v19)
    {

      return v19;
    }

    else
    {
      if (qword_27F20FFD8 != -1)
      {
        swift_once();
      }

      v20 = sub_24F92AAE8();
      __swift_project_value_buffer(v20, qword_27F2217E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93FC20;
      sub_24F9283A8();
      v23 = MEMORY[0x277D837D0];
      v22[0] = v7;
      v22[1] = v6;
      sub_24F928438();
      sub_24E601704(v22, &qword_27F2129B0);
      sub_24F9283A8();
      v23 = MEMORY[0x277D85048];
      *v22 = v16;
      sub_24F928438();
      sub_24E601704(v22, &qword_27F2129B0);
      sub_24F92A5A8();

      return v21;
    }
  }

  return a2;
}

uint64_t sub_24E909010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v3 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration + 24);
  *(inited + 64) = sub_24E69A5C4(0, &qword_27F221898);
  *(inited + 40) = v5;
  v6 = v3;
  v7 = v5;
  v8 = sub_24E608940(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F221890);
  v9 = *MEMORY[0x277D740A8];
  v10 = *(v4 + 16);
  v16 = sub_24E69A5C4(0, &qword_27F217E58);
  *&v15 = v10;
  sub_24E612B0C(&v15, v14);
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81DB58(v14, v9, isUniquelyReferenced_nonNull_native);
  sub_24E90784C(v8);
}

uint64_t sub_24E909164()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24ECDE228(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24E90920C()
{
  if (qword_27F20FFD8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F2217E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v5, &qword_27F2129B0);
  sub_24F92A5A8();

  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_didParseEverything) = 0;
  return result;
}

id sub_24E9093EC(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) beginEditing];
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
        inited = swift_initStackObject();
        v6 = inited;
        *(inited + 16) = xmmword_24F93DE60;
        v20 = MEMORY[0x277D741F0];
        break;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
        inited = swift_initStackObject();
        v6 = inited;
        *(inited + 16) = xmmword_24F93DE60;
        v20 = MEMORY[0x277D74150];
        break;
      case 4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
        v6 = swift_initStackObject();
        *(v6 + 16) = xmmword_24F93DE60;
        v7 = *MEMORY[0x277D74118];
        *(v6 + 32) = *MEMORY[0x277D74118];
        v8 = v6 + 32;
        v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration + 24);
        *(v6 + 64) = sub_24E69A5C4(0, &qword_27F221898);
        *(v6 + 40) = v9;
        v10 = v7;
        v11 = v9;
        goto LABEL_12;
      default:
        return result;
    }

    v21 = *v20;
    *(inited + 32) = *v20;
    v8 = inited + 32;
    v22 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v23 = v21;
    v24 = [v22 initWithInteger_];
    *(v6 + 64) = sub_24E69A5C4(0, &qword_27F22BD50);
    *(v6 + 40) = v24;
LABEL_12:
    v25 = sub_24E608940(v6);
    swift_setDeallocating();
    sub_24E601704(v8, &qword_27F221890);
    v26 = *MEMORY[0x277D740A8];
    v27 = sub_24E907D74();
LABEL_14:
    v33 = v27;
    v34 = sub_24E908C8C(a2, v27);

    v38 = sub_24E69A5C4(0, &qword_27F217E58);
    *&v37 = v34;
    sub_24E612B0C(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DB58(v36, v26, isUniquelyReferenced_nonNull_native);
    sub_24E90784C(v25);
  }

  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_24F93DE60;
    v29 = *MEMORY[0x277D740C0];
    *(v28 + 32) = *MEMORY[0x277D740C0];
    v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_foregroundColor);
    *(v28 + 64) = sub_24E69A5C4(0, &qword_27F2394A0);
    *(v28 + 40) = v30;
    v31 = v29;
    v32 = v30;
    v25 = sub_24E608940(v28);
    swift_setDeallocating();
    sub_24E601704(v28 + 32, &qword_27F221890);
    v26 = *MEMORY[0x277D740A8];
    v27 = sub_24E907E98(2);
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v12 = sub_24E907E98(1);
    v13 = sub_24E908C8C(a2, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_24F93DE60;
    v15 = *MEMORY[0x277D740A8];
    *(v14 + 32) = *MEMORY[0x277D740A8];
    *(v14 + 64) = sub_24E69A5C4(0, &qword_27F217E58);
    *(v14 + 40) = v13;
    v16 = v15;
    v17 = v13;
    v18 = sub_24E608940(v14);
    swift_setDeallocating();
    sub_24E601704(v14 + 32, &qword_27F221890);
    sub_24E90784C(v18);
  }

  return result;
}

uint64_t sub_24E9097FC(uint64_t a1)
{
  if (a1 == 4)
  {
    sub_24E907C20();
  }

  v2 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3[2])
  {
    __break(1u);
LABEL_8:
    result = sub_24ECDE228(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_6:
    v3[2] = v5 - 1;
    *(v1 + v2) = v3;
    swift_endAccess();

    return [*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) endEditing];
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_24E9098D8()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v2 = sub_24F92B098();
  v3 = [v1 initWithString_];

  v4 = [*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) mutableString];
  if (qword_27F210F48 != -1)
  {
    swift_once();
  }

  v5 = qword_27F39DBA8;
  if ([v4 length] < 1)
  {
  }

  else
  {
    result = [v4 length];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v7 = [v5 characterIsMember_];

    if (v7)
    {
      sub_24F0A8444(v5);
    }
  }

  if (qword_27F210F40 != -1)
  {
    swift_once();
  }

  v8 = qword_27F39DBA0;
  if (qword_27F39DBA0)
  {
    v9 = [v3 length];
    v10 = sub_24F92B098();
    [v8 replaceMatchesInString:v3 options:0 range:0 withTemplate:{v9, v10}];
  }

  sub_24F92B0D8();
  sub_24E907C20();
}

id sub_24E909ACC(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) beginEditing];
  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v10 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    v11 = inited + 32;
    v12 = (v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration + 48);
  }

  else
  {
    if (a1)
    {
      return result;
    }

    v4 = v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration;
    v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration + 56);
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_configuration + 64);
    type metadata accessor for NqmlOrderedListTracker();
    v7 = swift_allocObject();
    v7[2] = 1;
    v7[3] = v6;
    v7[4] = v5;
    *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_orderedListTracker) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    inited = swift_initStackObject();
    v9 = MEMORY[0x277D74118];
    *(inited + 16) = xmmword_24F93DE60;
    v10 = *v9;
    *(inited + 32) = *v9;
    v11 = inited + 32;
    v12 = (v4 + 72);
  }

  v13 = *v12;
  *(inited + 64) = sub_24E69A5C4(0, &qword_27F221898);
  *(inited + 40) = v13;
  v14 = v10;
  v15 = v13;
  v16 = sub_24E608940(inited);
  swift_setDeallocating();
  sub_24E601704(v11, &qword_27F221890);
  sub_24E90784C(v16);
}

void sub_24E909C78()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_orderedListTracker))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v3 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_foregroundColor);
    *(inited + 64) = sub_24E69A5C4(0, &qword_27F2394A0);
    *(inited + 40) = v4;

    v5 = v3;
    v6 = v4;
    v7 = sub_24E608940(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F221890);
    v8 = *MEMORY[0x277D740A8];
    v9 = sub_24E908150();
    v16 = sub_24E69A5C4(0, &qword_27F217E58);
    *&v15 = v9;
    sub_24E612B0C(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DB58(v14, v8, isUniquelyReferenced_nonNull_native);
    sub_24E90784C(v7);

    sub_24E9072B8();
    sub_24E907C20();

    v11 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
    swift_beginAccess();
    v12 = *(v1 + v11);
    if (v12[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v12[2];
        if (v13)
        {
LABEL_5:
          v12[2] = v13 - 1;
          *(v1 + v11) = v12;
          swift_endAccess();

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    v12 = sub_24ECDE228(v12);
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return;
  }

  sub_24E907C20();
}

uint64_t sub_24E909EBC()
{
  sub_24E907C20();
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24ECDE228(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();

    [*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) endEditing];
    *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_orderedListTracker) = 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24E909FA4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_24E909FEC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_24E90A06C()
{
  result = qword_27F2218A8;
  if (!qword_27F2218A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2218A8);
  }

  return result;
}

uint64_t BasePage.__allocating_init(pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v15 = sub_24F928818();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13 + v14, a2, v15);
  v30 = v13;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = a3;
  sub_24E90A7EC(a4, v12);
  v17 = sub_24F9285B8();
  v18 = *(v17 - 8);
  v28 = *(v18 + 48);
  if (v28(v12, 1, v17) == 1)
  {
    sub_24E90A85C(a4);
    (*(v16 + 8))(a2, v15);
  }

  else
  {
    v26 = a4;
    v27 = a2;
    v19 = qword_27F2105F0;
    v25[0] = a1;

    v25[1] = a3;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v20, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v21 = v31;
    if (v31)
    {
    }

    v22 = *(v18 + 8);
    v22(v12, v17);
    if (!v21)
    {

      sub_24E90A85C(v26);
      (*(v16 + 8))(v27, v15);
      return v30;
    }

    v23 = v26;
    v12 = v29;
    sub_24E90A7EC(v26, v29);
    if (v28(v12, 1, v17) != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v23);
      (*(v16 + 8))(v27, v15);
      v22(v12, v17);
      return v30;
    }

    sub_24E90A85C(v23);
    (*(v16 + 8))(v27, v15);
  }

  sub_24E90A85C(v12);
  return v30;
}

uint64_t BasePage.init(pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  *(v4 + 16) = a1;
  v14 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v15 = sub_24F928818();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v4 + v14, a2, v15);
  v35 = v4;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = a3;
  sub_24E90A7EC(a4, v13);
  v17 = sub_24F9285B8();
  v18 = *(v17 - 8);
  v33 = *(v18 + 48);
  if (v33(v13, 1, v17) == 1)
  {
    sub_24E90A85C(a4);
    (*(v16 + 8))(a2, v15);
    v19 = v13;
  }

  else
  {
    v28 = v18;
    v29 = a1;
    v31 = a4;
    v32 = a2;
    v20 = qword_27F2105F0;

    v30 = a3;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v21, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v22 = v36;
    if (v36)
    {
    }

    v23 = *(v28 + 8);
    v23(v13, v17);
    if (!v22)
    {

      sub_24E90A85C(v31);
      (*(v16 + 8))(v32, v15);
      return v35;
    }

    v24 = v31;
    v25 = v34;
    sub_24E90A7EC(v31, v34);
    if (v33(v25, 1, v17) != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v24);
      (*(v16 + 8))(v32, v15);
      v23(v25, v17);
      return v35;
    }

    sub_24E90A85C(v24);
    (*(v16 + 8))(v32, v15);
    v19 = v25;
  }

  sub_24E90A85C(v19);
  return v35;
}

uint64_t sub_24E90A7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E90A85C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BasePage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BasePage.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t BasePage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = v27 - v4;
  v5 = sub_24F928818();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F9285B8();
  v7 = *(v33 - 8);
  v8 = MEMORY[0x28223BE20](v33);
  v34 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  v12 = sub_24F928388();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  type metadata accessor for PageRefreshPolicy(0);
  sub_24F928398();
  v40 = v7;
  v16 = *(v7 + 16);
  v17 = v33;
  v16(v11, a2, v33);
  sub_24E90B4F8(&qword_27F2218B8, type metadata accessor for PageRefreshPolicy);
  v27[1] = v15;
  v29 = v11;
  v19 = v35;
  v18 = v36;
  sub_24F929548();
  *(v18 + 16) = v42;
  sub_24F928398();
  v28 = v16;
  v16(v34, a2, v17);
  v20 = v37;
  sub_24F928788();
  if (v20)
  {
    (*(v40 + 8))(a2, v17);
    (*(v38 + 8))(v41, v39);

    type metadata accessor for BasePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v30 + 32))(v18 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v19, v31);
    type metadata accessor for PageRenderMetricsEvent();
    v21 = a2;
    sub_24F928398();
    v22 = a2;
    v23 = v28;
    v28(v29, v22, v17);
    sub_24E90B4F8(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
    sub_24F929548();
    *(v18 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v42;
    v24 = v32;
    v23(v32, v21, v17);
    v25 = v40;
    (*(v40 + 56))(v24, 0, 1, v17);
    sub_24E90B540(v24);
    (*(v25 + 8))(v21, v17);
    (*(v38 + 8))(v41, v39);
    sub_24E90A85C(v24);
  }

  return v18;
}

uint64_t sub_24E90AE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24E90AEFC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F928818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24E90B014@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v4 = sub_24F928818();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24E90B09C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t BasePage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BasePage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E90B2C8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24E90B328@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24E90B3B4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t type metadata accessor for BasePage()
{
  result = qword_27F2218C8;
  if (!qword_27F2218C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E90B4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E90B540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_24E90A7EC(a1, &v16 - v6);
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = v7;
    return sub_24E90A85C(v11);
  }

  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v12, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  sub_24F9285C8();
  v13 = v17;
  if (v17)
  {
  }

  v14 = *(v9 + 8);
  result = v14(v7, v8);
  if (v13)
  {
    sub_24E90A7EC(a1, v5);
    if (v10(v5, 1, v8) != 1)
    {
      sub_24ECDF110();
      return v14(v5, v8);
    }

    v11 = v5;
    return sub_24E90A85C(v11);
  }

  return result;
}

uint64_t sub_24E90B770()
{
  result = sub_24F928818();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DeepLink.referrerKind.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24F92AA58();
  if (!v7)
  {
    result = sub_24E857CC8(v6);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = v8[0];
  sub_24F92C7F8();
  if (!*(v8[0] + 16) || (v4 = sub_24E76D934(v6), (v5 & 1) == 0))
  {

    result = sub_24E6585F8(v6);
    goto LABEL_9;
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v4, v8);
  sub_24E6585F8(v6);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = -1;
  }

  return result;
}

uint64_t DeepLink.referrerKind.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_24F92AA58();
  v3 = v11;
  sub_24E857CC8(v10);
  if (v3)
  {
    sub_24F92AA58();
    if (!v11)
    {
      sub_24E90BC9C(v1, v2);
      return sub_24E857CC8(v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    if (!swift_dynamicCast())
    {
      return sub_24E90BC9C(v1, v2);
    }

    v4 = v8;
  }

  else
  {
    v4 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v12 = v4;
  *&v8 = 0xD00000000000002CLL;
  *(&v8 + 1) = 0x800000024FA49C60;
  sub_24F92C7F8();
  if (v2 == 255)
  {
    sub_24E98F760(v10, &v8);
    sub_24E857CC8(&v8);
    sub_24E6585F8(v10);
    v4 = v12;
  }

  else
  {
    v9 = &type metadata for ReferrerData.Kind;
    *&v8 = v1;
    BYTE8(v8) = v2;
    sub_24E612B0C(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v7, v10, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v10);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
  v10[0] = v4;
  return sub_24F92AA68();
}

uint64_t (*DeepLink.referrerKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  DeepLink.referrerKind.getter(a1);
  return sub_24E90BC08;
}

uint64_t sub_24E90BC08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_24E90BCB0(v2, v3);
    DeepLink.referrerKind.setter(&v5);

    return sub_24E90BC9C(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    return DeepLink.referrerKind.setter(&v5);
  }
}

uint64_t sub_24E90BC9C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_24E7B6564(a1, a2);
  }

  return a1;
}

uint64_t sub_24E90BCB0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_24E90BCC4(a1, a2);
  }

  return a1;
}

uint64_t sub_24E90BCC4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_24E90BCD8@<X0>(uint64_t a1@<X8>)
{
  result = DeepLink.referrerKind.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_24E90BD1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_24E90BCB0(v3, v1);
  return DeepLink.referrerKind.setter(&v3);
}

uint64_t ArcadeWelcomeItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeWelcomeItem.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeWelcomeItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v27 = a2;
  v3 = v2;
  v26 = sub_24F9285B8();
  v23 = *(v26 - 8);
  v5 = v23;
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_24F928398();
  v12 = sub_24F928348();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  v3[2] = v12;
  v3[3] = v14;
  v24 = v11;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v15(v10, v7);
  v3[4] = v16;
  v3[5] = v18;
  type metadata accessor for Artwork();
  sub_24F928398();
  v19 = *(v5 + 16);
  v20 = v26;
  v21 = v27;
  v19(v25, v27, v26);
  sub_24E90DAA0(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  (*(v23 + 8))(v21, v20);
  v15(v24, v7);
  v3[6] = v28;
  return v3;
}

void *ArcadeWelcomeItem.__allocating_init(headline:body:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ArcadeWelcomeItem.init(headline:body:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ArcadeWelcomeItem.headline.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeWelcomeItem.body.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArcadeWelcomeItem.deinit()
{

  return v0;
}

uint64_t ArcadeWelcomeItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ArcadeWelcomeContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeWelcomeContent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeWelcomeContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v48 - v6;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  v3[2] = v16;
  v3[3] = v18;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v19(v15, v7);
  v3[4] = v20;
  v3[5] = v22;
  v54 = v3;
  v55 = a1;
  v23 = v8 + 8;
  v24 = v7;
  v25 = v49;
  sub_24F928398();
  sub_24F9282B8();
  v53 = v19;
  v51 = v23;
  v19(v13, v7);
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v25, 1, v26);
  if (v28 == 1)
  {
    v29 = v50;
    sub_24E8F2EE8(v25);
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    *(&v48 - 2) = v56;
    type metadata accessor for ArcadeWelcomeItem();
    v31 = v50;
    v32 = sub_24F92ABB8();
    v29 = v31;
    if (v31)
    {

      type metadata accessor for ArcadeWelcomeContent();
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v30 = v32;
    (*(v27 + 8))(v25, v26);
  }

  v33 = v54;
  v54[6] = v30;
  type metadata accessor for Action();
  v34 = v52;
  v35 = v55;
  sub_24F928398();
  v36 = v56;
  v37 = static Action.makeInstance(byDeserializing:using:)(v34, v56);
  if (v29)
  {
    v38 = v53;
    v53(v35, v24);
    v38(v34, v24);

    type metadata accessor for ArcadeWelcomeContent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v37;
    v54 = 0;
    v40 = v53;
    v53(v34, v24);
    v33[7] = v39;
    sub_24F928398();
    v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[9] = v41;
    sub_24F928398();
    v42 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[10] = v42;
    sub_24F928398();
    v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[8] = v43;
    sub_24F928398();
    v44 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[11] = v44;
    sub_24F928398();
    v45 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v35, v24);
    v40(v15, v24);
    v33[12] = v45;
  }

  v46 = sub_24F9285B8();
  (*(*(v46 - 8) + 8))(v36, v46);
  return v33;
}

uint64_t sub_24E90C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeWelcomeItem();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24E90DAA0(&qword_27F2218F8, v13, type metadata accessor for ArcadeWelcomeItem);
  return sub_24F929548();
}

__n128 ArcadeWelcomeContent.__allocating_init(title:subtitle:items:continueAction:familyAction:dismissingContinueAction:nonDismissingContinueAction:dismissingFamilyAction:nonDismissingFamilyAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  result = a9;
  *(v18 + 80) = a9;
  *(v18 + 96) = a10;
  return result;
}

uint64_t ArcadeWelcomeContent.init(title:subtitle:items:continueAction:familyAction:dismissingContinueAction:nonDismissingContinueAction:dismissingFamilyAction:nonDismissingFamilyAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t ArcadeWelcomeContent.deinit()
{

  return v0;
}

uint64_t ArcadeWelcomeContent.__deallocating_deinit()
{
  ArcadeWelcomeContent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E90CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X6>, uint64_t *a5@<X8>)
{
  a3();
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t ArcadeWelcomePage.ContentType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t ArcadeWelcomePage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeWelcomePage.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeWelcomePage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928818();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v46 = v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v39 - v14;
  v49 = sub_24F928388();
  v16 = *(v49 - 8);
  v17 = MEMORY[0x28223BE20](v49);
  v39[1] = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v39 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v45 = v39 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v39 - v24;
  v53 = a1;
  sub_24F928398();
  v26 = *(v7 + 16);
  v51 = v6;
  v52 = a2;
  v47 = v26;
  v26(v15, a2, v6);
  type metadata accessor for ArcadeWelcomeContent();
  v27 = swift_allocObject();
  v28 = v48;
  ArcadeWelcomeContent.init(deserializing:using:)(v25, v15);
  if (v28)
  {
    (*(v7 + 8))(v52, v51);
    (*(v16 + 8))(v53, v49);
    v29 = v50;
    type metadata accessor for ArcadeWelcomePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v21;
    v30 = v50;
    *(v50 + 16) = v27;
    v31 = v45;
    sub_24F928398();
    v32 = v46;
    v47(v46, v52, v51);
    v33 = swift_allocObject();
    ArcadeWelcomeContent.init(deserializing:using:)(v31, v32);
    *(v30 + 24) = v33;
    sub_24F928398();
    v47(v43, v52, v51);
    v34 = v44;
    sub_24F928788();
    (*(v40 + 32))(v30 + OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics, v34, v41);
    v48 = type metadata accessor for PageRenderMetricsEvent();
    v36 = v53;
    sub_24F928398();
    v37 = v51;
    v38 = v52;
    v47(v42, v52, v51);
    sub_24E90DAA0(&qword_27F2218C0, 255, type metadata accessor for PageRenderMetricsEvent);
    v29 = v50;
    sub_24F929548();
    (*(v7 + 8))(v38, v37);
    (*(v16 + 8))(v36, v49);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageRenderEvent) = v54;
  }

  return v29;
}

uint64_t type metadata accessor for ArcadeWelcomePage()
{
  result = qword_27F2218E8;
  if (!qword_27F2218E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeWelcomePage.__allocating_init(createNewFamilyContent:familyOrganizerContent:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics;
  v10 = sub_24F928818();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageRenderEvent) = a4;
  return v8;
}

uint64_t ArcadeWelcomePage.init(createNewFamilyContent:familyOrganizerContent:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics;
  v8 = sub_24F928818();
  (*(*(v8 - 8) + 32))(v4 + v7, a3, v8);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageRenderEvent) = a4;
  return v4;
}

uint64_t ArcadeWelcomePage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeWelcomePage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeWelcomePage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_24E90D784()
{
  result = qword_27F2218E0;
  if (!qword_27F2218E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2218E0);
  }

  return result;
}

uint64_t sub_24E90D7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeWelcomePage();
  v7 = swift_allocObject();
  result = ArcadeWelcomePage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E90D858@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17ArcadeWelcomePage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24E90D994()
{
  result = sub_24F928818();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E90DAA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

GameStoreKit::AccountLinksIntent __swiftcall AccountLinksIntent.init()()
{
  *v0 = 0xD000000000000012;
  v0[1] = 0x800000024F967270;
  return result;
}

uint64_t AccountLinksIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall AccountLinksIntent.makeValue(in:)(JSContext in)
{
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E90DB94()
{
  result = qword_27F221900;
  if (!qword_27F221900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221900);
  }

  return result;
}

unint64_t sub_24E90DBEC()
{
  result = qword_27F221908;
  if (!qword_27F221908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221908);
  }

  return result;
}

unint64_t sub_24E90DC44()
{
  result = qword_27F221910;
  if (!qword_27F221910)
  {
    type metadata accessor for AccountLinks();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221910);
  }

  return result;
}

id sub_24E90DC9C(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_24E90DDA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = objc_opt_self();
  result = [v7 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = [v7 valueWithObject:sub_24F92CF68() inContext:{a1, v4, v3}];
  result = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24F92C328();
  LOBYTE(v13) = v5;
  v10 = [v7 valueWithObject:sub_24F92CF68() inContext:{a1, v13}];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_24F92C328();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930);
  v11 = [v7 valueWithObject:sub_24F92CF68() inContext:{a1, v6}];
  result = swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  result = [v7 valueWithNewObjectInContext_];
  if (result)
  {
    v12 = result;
    sub_24F92C328();
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_24E90DFE0()
{
  result = qword_27F221918;
  if (!qword_27F221918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221918);
  }

  return result;
}

unint64_t sub_24E90E038()
{
  result = qword_27F221920;
  if (!qword_27F221920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221920);
  }

  return result;
}

unint64_t sub_24E90E090()
{
  result = qword_27F221928;
  if (!qword_27F221928)
  {
    type metadata accessor for ArcadeSeeAllGamesPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221928);
  }

  return result;
}

uint64_t PrivacyCategoryLayout.Metrics.textLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyCategoryLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyCategoryLayout.Metrics.iconHorizontalCenterMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PrivacyCategoryLayout.Metrics.dataTypesTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 136);

  return sub_24E612C80(a1, v1 + 136);
}

uint64_t PrivacyCategoryLayout.Metrics.dataTypesBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 176);

  return sub_24E612C80(a1, v1 + 176);
}

uint64_t PrivacyCategoryLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 216);

  return sub_24E612C80(a1, v1 + 216);
}

uint64_t PrivacyCategoryLayout.Metrics.init(textLeadingMargin:titleTopSpace:iconHorizontalCenterMargin:iconSize:dataTypesTopSpace:dataTypesBottomSpace:bottomMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  sub_24E612C80(a2, a7 + 40);
  sub_24E612C80(a1, a7);
  sub_24E612C80(a3, a7 + 80);
  *(a7 + 120) = a8;
  *(a7 + 128) = a9;
  sub_24E612C80(a4, a7 + 136);
  sub_24E612C80(a5, a7 + 176);

  return sub_24E612C80(a6, a7 + 216);
}

uint64_t sub_24E90E558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22B200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[13];
  *(a5 + 192) = a1[12];
  *(a5 + 208) = v8;
  v9 = a1[15];
  *(a5 + 224) = a1[14];
  *(a5 + 240) = v9;
  v10 = a1[9];
  *(a5 + 128) = a1[8];
  *(a5 + 144) = v10;
  v11 = a1[11];
  *(a5 + 160) = a1[10];
  *(a5 + 176) = v11;
  v12 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v12;
  v13 = a1[7];
  *(a5 + 96) = a1[6];
  *(a5 + 112) = v13;
  v14 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v14;
  v15 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v15;
  sub_24E612C80(a2, a5 + 256);
  sub_24E612C80(a3, a5 + 296);
  result = *a4;
  v17 = *(a4 + 16);
  *(a5 + 336) = *a4;
  *(a5 + 352) = v17;
  *(a5 + 368) = *(a4 + 32);
  return result;
}

double static PrivacyCategoryLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_24F9225E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_24F922618();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x277D22788], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  sub_24E615E00(a1 + 40, v18);
  v12 = sub_24F9229A8();
  v13 = MEMORY[0x277D228E0];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 136, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1 + 216, v18);
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 112));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

double PrivacyCategoryLayout.measurements(fitting:in:)()
{
  v1 = v0;
  v2 = sub_24F92CDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_24F92C228();
  __swift_project_boxed_opaque_existential_1(v1 + 37, v1[40]);
  sub_24F922288();
  v10 = v9;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  sub_24F9223C8();
  v20[0] = v12;
  sub_24F922398();
  sub_24E90E558((v0 + 42), &v18);
  if (v19)
  {
    sub_24E612C80(&v18, v20);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    if ((sub_24F922238() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v20, v21);
      if (sub_24F9221E8())
      {
        __swift_project_boxed_opaque_existential_1(v20, v21);
        sub_24F922288();
        v14 = v13;
        v16 = v15;
        __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
        sub_24F9223C8();
        *&v18 = v16;
        sub_24F922398();
        __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
        sub_24E8ED7D8();
        sub_24F9223A8();
        v8(v5, v2);
        if (v10 <= v14)
        {
          v10 = v14;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_24E90ED10(&v18);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8(v5, v2);
  return v7 + v10 + 0.0;
}

uint64_t sub_24E90ED10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22B200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrivacyCategoryLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v15 = v14;
  v45 = v14;
  v16 = *(v11 + 8);
  v16(v13, v10);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v46 = a4;
  v52.size.height = a4;
  v17 = CGRectGetWidth(v52) - v15;
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  Height = CGRectGetHeight(v53);
  __swift_project_boxed_opaque_existential_1(v5 + 37, v5[40]);
  v38 = v17;
  v37 = Height;
  sub_24F922288();
  v20 = v19;
  v47 = v21;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  v44 = v20;
  v39 = v23;
  sub_24F9223C8();
  v25 = v24;
  v26 = a1;
  v54.origin.x = a1;
  v54.origin.y = a2;
  v27 = a3;
  v54.size.width = a3;
  v28 = v46;
  v54.size.height = v46;
  v29 = v45 + CGRectGetMinX(v54);
  v55.origin.x = v26;
  v55.origin.y = a2;
  v55.size.width = a3;
  v55.size.height = v28;
  v30 = v25 + CGRectGetMinY(v55);
  __swift_project_boxed_opaque_existential_1(v5 + 37, v5[40]);
  v40 = v26;
  v31 = a2;
  v32 = v27;
  sub_24F92C1D8();
  sub_24F922228();
  v41 = v4[16];
  v56.origin.x = v26;
  v56.origin.y = v31;
  v56.size.width = v27;
  v56.size.height = v28;
  CGRectGetMinX(v56);
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v13, v10);
  v36 = v29;
  v57.origin.x = v29;
  v35 = v30;
  v57.origin.y = v30;
  v57.size.width = v44;
  v33 = v40;
  v57.size.height = v47;
  CGRectGetMidY(v57);
  __swift_project_boxed_opaque_existential_1(v5 + 32, v5[35]);
  v42 = v31;
  v43 = v32;
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E90E558((v4 + 42), &v48);
  if (v49)
  {
    sub_24E612C80(&v48, v50);
    __swift_project_boxed_opaque_existential_1(v50, v51);
    if ((sub_24F922238() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v50, v51);
      if (sub_24F9221E8())
      {
        __swift_project_boxed_opaque_existential_1(v50, v51);
        sub_24F922288();
        __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
        sub_24F9223C8();
        v58.origin.x = v36;
        v58.origin.y = v35;
        v58.size.width = v44;
        v58.size.height = v47;
        CGRectGetMaxY(v58);
        v59.origin.x = v33;
        v59.origin.y = v42;
        v59.size.width = v43;
        v59.size.height = v46;
        CGRectGetMinX(v59);
        __swift_project_boxed_opaque_existential_1(v50, v51);
        sub_24F92C1D8();
        sub_24F922228();
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_24E90ED10(&v48);
  }

  return sub_24F922128();
}

uint64_t get_enum_tag_for_layout_string_5JetUI14LayoutTextView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E90F37C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
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

uint64_t sub_24E90F3C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_24E90F4B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_24E90F500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E90F5A4()
{
  result = qword_27F21A598;
  if (!qword_27F21A598)
  {
    type metadata accessor for LeaderboardsWithFriendActivityDataIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A598);
  }

  return result;
}

uint64_t sub_24E90F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24E90F6B4)(a2, a3);
}

uint64_t sub_24E90F6B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Leaderboard(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for LeaderboardsListDataIntent();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E90F7B0, 0, 0);
}

uint64_t sub_24E90F7B0()
{
  v1 = v0[8];
  v17 = v0[9];
  v2 = v0[2];
  sub_24E90FCE0(v2, v17, type metadata accessor for Game);
  v3 = type metadata accessor for LeaderboardsWithFriendActivityDataIntent();
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  sub_24E90FCE0(v2 + *(v3 + 24), v17 + *(v1 + 24), type metadata accessor for Player);
  v12 = (v17 + *(v1 + 20));
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  sub_24E7ED984(v5, v6);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_24E90F924;
  v14 = v0[9];
  v15 = v0[3];

  return sub_24E648690(v14, v15);
}

uint64_t sub_24E90F924(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_24E90FC40;
  }

  else
  {
    v4 = sub_24E90FA38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E90FA38()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[4];
    v4 = v0[5];
    v6 = MEMORY[0x277D84F90];
    v15 = v0[11];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[7];
      v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v9 = *(v4 + 72);
      sub_24E90FCE0(v0[11] + v8 + v9 * v3, v7, type metadata accessor for Leaderboard);
      v10 = v0[7];
      if (*(v7 + *(v5 + 44)) || *(v10 + *(v5 + 56)) < 1)
      {
        sub_24E90FD48(v10, type metadata accessor for Leaderboard);
      }

      else
      {
        sub_24E90FDA8(v10, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F45834C(0, *(v6 + 16) + 1, 1);
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24F45834C(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[6];
        *(v6 + 16) = v12 + 1;
        sub_24E90FDA8(v13, v6 + v8 + v12 * v9);
        v1 = v15;
      }

      if (v2 == ++v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_15:
    sub_24E90FD48(v0[9], type metadata accessor for LeaderboardsListDataIntent);

    v14 = v0[1];

    v14(v6);
  }
}

uint64_t sub_24E90FC40()
{
  sub_24E90FD48(*(v0 + 72), type metadata accessor for LeaderboardsListDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E90FCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E90FD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E90FDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Leaderboard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SegmentedSearchResultsPageSegment.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v74 = a2;
  v65 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = v60 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v60 - v10;
  v71 = sub_24F928388();
  v12 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v60 - v18;
  MEMORY[0x28223BE20](v20);
  v68 = v60 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v60 - v23;
  v73 = a1;
  sub_24F928398();
  v25 = *(v5 + 16);
  v72 = v4;
  v26 = v4;
  v27 = v25;
  (v25)(v11, v74, v26);
  type metadata accessor for SearchResultsPage();
  swift_allocObject();
  v28 = v70;
  v29 = SearchResultsPage.init(deserializing:using:)(v24, v11);
  if (v28)
  {
    (*(v5 + 8))(v74, v72);
    return (*(v12 + 8))(v73, v71);
  }

  v61 = v19;
  v62 = v16;
  v63 = v12;
  v64 = v5;
  v70 = v29;
  v31 = v68;
  sub_24F928398();
  v32 = v69;
  v33 = v74;
  v34 = v72;
  v27(v69);
  type metadata accessor for SearchPageSegmentChangeAction();
  swift_allocObject();
  v69 = SearchPageSegmentChangeAction.init(deserializing:using:)(v31, v32);
  sub_24F928398();
  v35 = v67;
  (v27)(v67, v33, v34);
  v60[1] = sub_24E910620(&qword_27F221938, type metadata accessor for SearchPageSegmentChangeAction);
  sub_24F929548();
  v68 = v75;
  v36 = v73;
  sub_24F928398();
  (v27)(v35, v74, v34);
  sub_24F929548();
  v67 = v75;
  v61 = 0xE700000000000000;
  v37 = v62;
  v38 = v36;
  sub_24F928398();
  v39 = sub_24F928348();
  v41 = v40;
  v42 = v34;
  v43 = *(v63 + 8);
  v44 = v37;
  v45 = v71;
  v43(v44, v71);
  v46 = v38;
  v47 = v74;
  if (v41)
  {
    v63 = v39;
    v48 = v66;
    v49 = v46;
    sub_24F928398();
    v50 = sub_24F928348();
    v52 = v51;
    v43(v48, v45);
    if (v52)
    {
      (*(v64 + 8))(v74, v72);
      result = (v43)(v49, v45);
      v53 = v65;
      v54 = v68;
      *v65 = v69;
      v53[1] = v54;
      v55 = v70;
      v53[2] = v67;
      v53[3] = v55;
      v53[4] = v63;
      v53[5] = v41;
      v53[6] = v50;
      v53[7] = v52;
      return result;
    }

    v46 = v49;
    v56 = 0x656C746974;

    v61 = 0xE500000000000000;
    v47 = v74;
    v42 = v72;
  }

  else
  {
    v56 = 0x644970756F7267;
  }

  v57 = sub_24F92AC38();
  sub_24E910620(&qword_27F2213B8, MEMORY[0x277D22548]);
  swift_allocError();
  v58 = v61;
  *v59 = v56;
  v59[1] = v58;
  v59[2] = &type metadata for SegmentedSearchResultsPageSegment;
  (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D22530], v57);
  swift_willThrow();
  (*(v64 + 8))(v47, v42);
  v43(v46, v45);
}

uint64_t SegmentedSearchResultsPageSegment.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SegmentedSearchResultsPageSegment.id.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24E91058C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t SegmentedSearchResultsPageSegment.withSearchResultsPage(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = a1;
}

uint64_t sub_24E910620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E91067C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9106C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ASDPurchaseHistoryApp.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 datePurchased];
  sub_24F91F608();

  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t ASDPurchaseHistoryApp.cleanRedownloadParams.getter()
{
  v1 = [v0 redownloadParams];
  sub_24F92B0D8();

  v2 = sub_24E910830();

  return v2;
}

uint64_t sub_24E910830()
{
  sub_24E600AEC();
  result = sub_24F92C4E8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v5 = MEMORY[0x277D84F90];
    v16 = result + 40;
    do
    {
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        v3 = v7 + 1;

        if ((sub_24F92B358() & 1) == 0)
        {
          break;
        }

        v6 += 2;
        ++v7;
        if (v2 == v3)
        {
          goto LABEL_13;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v5;
      if ((result & 1) == 0)
      {
        result = sub_24F4578E0(0, *(v5 + 16) + 1, 1);
      }

      v10 = v5;
      v11 = *(v5 + 16);
      v12 = *(v10 + 24);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        result = sub_24F4578E0((v12 > 1), v11 + 1, 1);
        v13 = v11 + 1;
        v10 = v17;
      }

      *(v10 + 16) = v13;
      v14 = v10 + 16 * v11;
      *(v14 + 32) = v9;
      *(v14 + 40) = v8;
      v4 = v16;
      v5 = v10;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E907170();
  v15 = sub_24F92AF68();

  return v15;
}

uint64_t ASDPurchaseHistoryApp.supportsVisionPlatform.getter()
{
  if ([v0 supportsRealityDevice])
  {
    return 1;
  }

  else
  {
    return [v0 optedInForXROSEligibility];
  }
}

uint64_t ASDPurchaseHistoryApp.supportsCurrentPlatform(isAppleSiliconSupportEnabled:bag:)()
{
  if ([v0 watchOnly])
  {
    return 0;
  }

  if ([v0 supportsIPad])
  {
    return 1;
  }

  return [v0 supportsIPhone];
}

uint64_t Artwork.Format.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Artwork.Format.rawValue.getter()
{
  v1 = 6778480;
  v2 = 1667851624;
  if (*v0 != 2)
  {
    v2 = 7496556;
  }

  if (*v0)
  {
    v1 = 1734701162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24E910BC0()
{
  result = qword_27F221940;
  if (!qword_27F221940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221940);
  }

  return result;
}

uint64_t sub_24E910C14()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E910CB8()
{
  sub_24F92B218();
}

uint64_t sub_24E910D48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E910DF4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6778480;
  v4 = 0xE400000000000000;
  v5 = 1667851624;
  if (*v1 != 2)
  {
    v5 = 7496556;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1734701162;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t LockupContextMenuData.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LockupContextMenuData.init(deserializing:using:)(a1, a2);
  return v4;
}

void *LockupContextMenuData.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[1] = *v4;
  v25 = v3;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v24[0] = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v27 = a1;
  sub_24F928398();
  v17 = *(v8 + 16);
  v26 = a2;
  v17(v10, a2, v7);
  type metadata accessor for ShareSheetData();
  swift_allocObject();
  v18 = v25;
  v19 = ShareSheetData.init(deserializing:using:)(v16, v10);
  if (v18)
  {
    (*(v8 + 8))(v26, v7);
    (*(v12 + 8))(v27, v11);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v19;
    type metadata accessor for Action();
    v20 = v24[0];
    sub_24F928398();
    v22 = static Action.makeInstance(byDeserializing:using:)(v20, v26);
    (*(v8 + 8))(v26, v7);
    v23 = *(v12 + 8);
    v23(v27, v11);
    v23(v20, v11);
    v4[3] = v22;
  }

  return v4;
}

uint64_t LockupContextMenuData.__allocating_init(shareSheetData:shareAction:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LockupContextMenuData.init(shareSheetData:shareAction:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LockupContextMenuData.deinit()
{

  return v0;
}

uint64_t LockupContextMenuData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24E9112D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LockupContextMenuData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _s12GameStoreKit21LockupContextMenuDataC6adamId3url5title4icon17isMessagesOnlyAppAcA04AdamI0V_10Foundation3URLVSSAA7ArtworkCSbtcfC_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v75 = a6;
  v76 = a5;
  v74 = a4;
  v73 = a3;
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v66 - v8;
  v68 = sub_24F91F6B8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v66 - v11;
  v12 = sub_24F9294C8();
  MEMORY[0x28223BE20](v12 - 8);
  v71 = sub_24F928AD8();
  v13 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v66 - v16;
  v70 = sub_24F928698();
  v17 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v82 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v20 = sub_24F92A2C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24F93A400;
  v25 = v24 + v23;
  v26 = qword_27F2102B8;
  v83 = v19;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v20, qword_27F229C80);
  v28 = *(v21 + 16);
  v28(v25, v27, v20);
  if (qword_27F2102A0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v20, qword_27F229C38);
  v28(v25 + v22, v29, v20);
  v30 = sub_24E805DFC(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = MEMORY[0x277D84F90];
  v32 = sub_24EA200BC(MEMORY[0x277D84F90]);
  type metadata accessor for ClickMetricsEvent();
  inited = swift_initStackObject();
  inited[6] = 0x70756B636F6CLL;
  inited[7] = 0xE600000000000000;
  v34 = v83;
  inited[4] = v82;
  inited[5] = v34;
  v35 = MEMORY[0x277D84FA0];
  inited[8] = v30;
  inited[9] = v35;
  inited[2] = v32;
  inited[3] = v31;
  v36 = v79;
  sub_24E98C2FC();
  swift_setDeallocating();
  ClickMetricsEvent.__deallocating_deinit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v37 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_24F93DE60;
  v39 = v70;
  (*(v17 + 16))(v38 + v37, v36, v70);
  sub_24F9294B8();
  v40 = v81;
  sub_24F928AA8();
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  v69 = v13;
  v41 = *(v13 + 16);
  v42 = v80;
  v43 = v71;
  v41(v80, v40, v71);
  v44 = sub_24F929608();
  v45 = v72;
  (*(*(v44 - 8) + 56))(v72, 1, 1, v44);
  type metadata accessor for BlankAction();
  v46 = swift_allocObject();
  sub_24E60169C(v90, v89, &qword_27F235830);
  v41((v46 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v42, v43);
  sub_24E60169C(v45, v46 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  v47 = (v46 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v47 = 0u;
  v47[1] = 0u;
  v48 = v46 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v89, &v86, &qword_27F235830);
  if (*(&v87 + 1))
  {
    v49 = v87;
    *v48 = v86;
    *(v48 + 16) = v49;
    *(v48 + 32) = v88;
  }

  else
  {
    v50 = v66;
    sub_24F91F6A8();
    v51 = sub_24F91F668();
    v53 = v52;
    (*(v67 + 8))(v50, v68);
    v84 = v51;
    v85 = v53;
    sub_24F92C7F8();
    sub_24E601704(&v86, &qword_27F235830);
  }

  v54 = v75;
  sub_24E601704(v89, &qword_27F235830);
  sub_24E601704(v45, &qword_27F213E68);
  v55 = *(v69 + 8);
  v55(v80, v43);
  sub_24E601704(v90, &qword_27F235830);
  v55(v81, v43);
  (*(v17 + 8))(v79, v39);
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0u;
  if (v54)
  {
    v56 = v76;

    v57 = v56;
  }

  else
  {
    v57 = 0;
    v56 = v76;
  }

  type metadata accessor for ShareSheetProductMetadata();
  v58 = swift_allocObject();
  v59 = v83;
  *(v58 + 16) = v82;
  *(v58 + 24) = v59;
  *(v58 + 32) = 0;
  *(v58 + 40) = 0;
  v60 = v74;
  *(v58 + 48) = v73;
  *(v58 + 56) = v60;
  *(v58 + 64) = 0u;
  *(v58 + 80) = 0u;
  *(v58 + 104) = 0;
  *(v58 + 112) = 0;
  *(v58 + 96) = v56;
  *(v58 + 120) = v54 & 1;
  *(v58 + 128) = v57;
  *(v58 + 136) = 0;
  v61 = sub_24F91F4A8();
  v62 = *(v61 - 8);
  v63 = v77;
  (*(v62 + 56))(v77, 1, 1, v61);
  type metadata accessor for ShareSheetData();
  v64 = swift_allocObject();
  (*(v62 + 32))(v64 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v78, v61);
  sub_24E911D90(v63, v64 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v64 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v58 | 0x4000000000000000;
  type metadata accessor for LockupContextMenuData();
  result = swift_allocObject();
  *(result + 16) = v64;
  *(result + 24) = v46;
  return result;
}

uint64_t sub_24E911D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E911E14(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ArcadeUpsellCard();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_24F923E98();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_24E911FA0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ArcadeUpsellCard();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_24F923E98();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_24E912138()
{
  type metadata accessor for ArcadeUpsellCard();
  if (v0 <= 0x3F)
  {
    sub_24F923E98();
    if (v1 <= 0x3F)
    {
      sub_24E8D2CFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E912228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v24[1] = a3;
  v25 = a4;
  v26 = a5;
  v7 = sub_24F924218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = type metadata accessor for CommonCardAttributes(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArcadeUpsellCard();
  sub_24E91799C(a1 + *(v18 + 32), v17, type metadata accessor for CommonCardAttributes);
  v19 = v17[*(v15 + 92)];
  if (v19 == 2 || (v19 & 1) == 0)
  {
    v27 = MEMORY[0x277D84F90];
    sub_24E916E78(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    sub_24F924208();
    v27 = v20;
    sub_24E916E78(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
  }

  sub_24F92C6A8();
  sub_24E917A04(v17, type metadata accessor for CommonCardAttributes);
  v21 = MEMORY[0x277CDFB98];
  sub_24E916E78(&qword_27F216C88, MEMORY[0x277CDFB98]);
  sub_24F92C698();
  sub_24E916E78(&qword_27F21AE50, v21);
  sub_24F92AFF8();
  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v25();
  return sub_24F926B78();
}

int64x2_t sub_24E912668@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  sub_24E60169C(a1, a4, a2);
  v6 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) + 36));
  v7 = *(sub_24F924258() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_24F924B38();
  (*(*(v9 - 8) + 104))(&v6->i8[v7], v8, v9);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *v6 = result;
  return result;
}

uint64_t sub_24E91271C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_24F9259C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221960);
  MEMORY[0x28223BE20](v42);
  v11 = &v42 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221968);
  MEMORY[0x28223BE20](v43);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221970);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v44 = &v42 - v15;
  *v11 = sub_24F9249A8();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221978);
  sub_24E912E20(v1, &v11[*(v16 + 44)]);
  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_27F39E610);
  sub_24E91799C(v17, v9, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  v18 = sub_24F9259F8();

  (*(v4 + 8))(v6, v3);
  v19 = v7[20];

  *&v9[v19] = v18;
  *&v9[v7[21]] = 4;
  v20 = sub_24F925A08();
  v21 = v7[27];

  *&v9[v21] = v20;
  *&v9[v7[28]] = 4;
  v22 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221980) + 36)];
  sub_24E91799C(v9, v22, type metadata accessor for CardLayoutMetrics.CardHeight);
  sub_24E917A04(v9, type metadata accessor for CardLayoutMetrics);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = type metadata accessor for CardHeightViewModifier(0);
  *(v22 + v26[7]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  *(v22 + v26[8]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v22 + v26[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988);
  swift_storeEnumTagMultiPayload();
  *(v22 + v26[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v27 = v22 + v26[5];
  *v27 = KeyPath;
  *(v27 + 8) = 0;
  v28 = v22 + v26[6];
  *v28 = v24;
  *(v28 + 8) = 0;
  v29 = sub_24F927618();
  v31 = v30;
  v32 = &v11[*(v42 + 36)];
  v33 = *v2;
  v34 = type metadata accessor for ArcadeUpsellCardExtraLargeView(0);
  v35 = *(v34 + 20);
  sub_24E925518(12, v2 + v35, 4, (v2 + *(v34 + 24)), v33, v32);
  v36 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221990) + 36));
  *v36 = v29;
  v36[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221998);
  sub_24E9161A0();
  sub_24E6A4C1C();
  sub_24E916340();
  sub_24F926B08();
  sub_24E601704(v11, &qword_27F221960);
  v37 = v2 + v35;
  v38 = v44;
  sub_24E912228(v37, &qword_27F221968, &unk_24F9679C8, sub_24E9164B0, v44);
  sub_24E601704(v13, &qword_27F221968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  type metadata accessor for CardSafeArea(0);
  v39 = sub_24E9164B0();
  v48 = v43;
  v49 = v39;
  swift_getOpaqueTypeConformance2();
  sub_24E916E78(&qword_27F214D10, type metadata accessor for CardSafeArea);
  v40 = v46;
  sub_24F9261A8();

  return (*(v45 + 8))(v38, v40);
}

uint64_t sub_24E912E20@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v117 = sub_24F925A38();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  MEMORY[0x28223BE20](v113);
  v120 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219E8);
  MEMORY[0x28223BE20](v118);
  v122 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v119 = &v93 - v7;
  MEMORY[0x28223BE20](v8);
  v121 = &v93 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v10 - 8);
  v112 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v93 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F0);
  MEMORY[0x28223BE20](v102);
  v103 = &v93 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F8);
  MEMORY[0x28223BE20](v98);
  v101 = &v93 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A00);
  MEMORY[0x28223BE20](v94);
  v95 = &v93 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A08);
  MEMORY[0x28223BE20](v97);
  v96 = &v93 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A10);
  MEMORY[0x28223BE20](v100);
  v99 = &v93 - v18;
  v19 = type metadata accessor for ArcadeUpsellCardConfiguration.VisualView();
  MEMORY[0x28223BE20](v19);
  v21 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v22 - 8);
  v93 = &v93 - v23;
  v24 = sub_24F9259C8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v28);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A18);
  MEMORY[0x28223BE20](v31 - 8);
  v104 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v108 = &v93 - v34;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A20);
  MEMORY[0x28223BE20](v107);
  v110 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v105 = &v93 - v37;
  MEMORY[0x28223BE20](v38);
  v109 = &v93 - v39;
  v106 = type metadata accessor for ArcadeUpsellCardExtraLargeView(0);
  v40 = *(v106 + 20);
  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v114 = a1;
  v41 = &a1[v40];
  v42 = __swift_project_value_buffer(v28, qword_27F39E610);
  sub_24E91799C(v42, v30, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  (*(v25 + 104))(v27, *MEMORY[0x277CE0A10], v24);
  v43 = sub_24F9259F8();

  (*(v25 + 8))(v27, v24);
  v44 = v28[20];

  *&v30[v44] = v43;
  *&v30[v28[21]] = 4;
  v45 = sub_24F925A08();
  v46 = v28[27];

  *&v30[v46] = v45;
  *&v30[v28[28]] = 4;
  sub_24E917A04(v30, type metadata accessor for CardLayoutMetrics);
  if (sub_24F92CE08())
  {
    v47 = 1;
    v48 = v41;
    v49 = v104;
  }

  else
  {
    v50 = v41 + *(type metadata accessor for ArcadeUpsellCard() + 32);
    v51 = type metadata accessor for CommonCardAttributes(0);
    v52 = v51;
    v53 = (v50 + *(v51 + 36));
    v54 = *v53;
    v55 = v53[1];
    v48 = v41;
    if (!*v53)
    {
      v56 = v93;
      sub_24E60169C(v50 + *(v51 + 32), v93, &qword_27F213FB8);
      v57 = type metadata accessor for GSKVideo();
      (*(*(v57 - 8) + 48))(v56, 1, v57);
      sub_24E601704(v56, &qword_27F213FB8);
    }

    sub_24E60169C(v50 + *(v52 + 32), v21 + v19[5], &qword_27F213FB8);
    sub_24E60169C(v50 + *(v52 + 28), v21 + v19[6], &qword_27F213FB0);
    *v21 = v54;
    v21[1] = v55;
    *(v21 + v19[7]) = 4;
    v58 = v21 + v19[8];
    type metadata accessor for CardSafeArea(0);
    sub_24E701D04(v54);
    sub_24E916E78(&qword_27F214D10, type metadata accessor for CardSafeArea);
    *v58 = sub_24F923598();
    v58[8] = v59 & 1;
    sub_24E91799C(v21, v95, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A28);
    sub_24E916D48(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
    sub_24E916E78(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
    v60 = v96;
    sub_24F924E28();
    sub_24E60169C(v60, v101, &qword_27F221A08);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70);
    sub_24E9167B0();
    sub_24E9169D8();
    v61 = v99;
    sub_24F924E28();
    sub_24E601704(v60, &qword_27F221A08);
    sub_24E60169C(v61, v103, &qword_27F221A10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AB8);
    sub_24E916AC0();
    sub_24E916B4C();
    v49 = v104;
    sub_24F924E28();
    sub_24E601704(v61, &qword_27F221A10);
    sub_24E917A04(v21, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
    v47 = 0;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B30);
  (*(*(v62 - 8) + 56))(v49, v47, 1, v62);
  v63 = v108;
  sub_24E6009C8(v49, v108, &qword_27F221A18);
  v64 = v111;
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v65 = sub_24F922348();
  v66 = *(v65 - 8);
  (*(v66 + 56))(v64, 0, 1, v65);
  v67 = v112;
  sub_24E60169C(v64, v112, &qword_27F214148);
  v68 = (*(v66 + 48))(v67, 1, v65);
  if (v68 == 1)
  {
    sub_24E601704(v64, &qword_27F214148);
    sub_24E601704(v67, &qword_27F214148);
    v69 = 0;
  }

  else
  {
    sub_24F9222E8();
    v69 = v70;
    sub_24E601704(v64, &qword_27F214148);
    (*(v66 + 8))(v67, v65);
  }

  v71 = v68 == 1;
  v72 = v105;
  sub_24E6009C8(v63, v105, &qword_27F221A18);
  v73 = v72 + *(v107 + 36);
  *v73 = v69;
  *(v73 + 8) = v71;
  *(v73 + 9) = 1;
  v74 = v109;
  sub_24E6009C8(v72, v109, &qword_27F221A20);
  v75 = v120;
  sub_24E91799C(v48, v120, type metadata accessor for ArcadeUpsellCard);
  v76 = v114;
  v77 = *v114;
  v78 = *(v106 + 24);
  v79 = v113;
  v80 = *(v113 + 24);
  v81 = sub_24F923E98();
  (*(*(v81 - 8) + 16))(v75 + v80, &v76[v78], v81);
  *(v75 + *(v79 + 20)) = v77;
  *&v124 = 0x4028000000000000;
  (*(v115 + 104))(v116, *MEMORY[0x277CE0A58], v117);
  sub_24E66ED98();

  sub_24F9237B8();
  sub_24F927618();
  sub_24F9242E8();
  v82 = v119;
  sub_24E9170F0(v75, v119);
  v83 = (v82 + *(v118 + 36));
  v84 = v129;
  v83[4] = v128;
  v83[5] = v84;
  v83[6] = v130;
  v85 = v125;
  *v83 = v124;
  v83[1] = v85;
  v86 = v127;
  v83[2] = v126;
  v83[3] = v86;
  v87 = v121;
  sub_24E6009C8(v82, v121, &qword_27F2219E8);
  v88 = v110;
  sub_24E60169C(v74, v110, &qword_27F221A20);
  v89 = v122;
  sub_24E60169C(v87, v122, &qword_27F2219E8);
  v90 = v123;
  sub_24E60169C(v88, v123, &qword_27F221A20);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B38);
  sub_24E60169C(v89, v90 + *(v91 + 48), &qword_27F2219E8);
  sub_24E601704(v87, &qword_27F2219E8);
  sub_24E601704(v74, &qword_27F221A20);
  sub_24E601704(v89, &qword_27F2219E8);
  return sub_24E601704(v88, &qword_27F221A20);
}

uint64_t sub_24E913EB4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44 - v2;
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BA8);
  MEMORY[0x28223BE20](v44);
  v5 = &v44 - v4;
  *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BB0);
  MEMORY[0x28223BE20](v46);
  v7 = &v44 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BB8);
  MEMORY[0x28223BE20](v45);
  v47 = &v44 - v8;
  v9 = sub_24F9259C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v13, qword_27F39E610);
  sub_24E91799C(v16, v15, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v9);
  v17 = sub_24F9259F8();

  (*(v10 + 8))(v12, v9);
  v18 = v13[20];

  *&v15[v18] = v17;
  *&v15[v13[21]] = 4;
  v19 = sub_24F925A08();
  v20 = v13[27];

  *&v15[v20] = v19;
  *&v15[v13[28]] = 4;
  *v3 = sub_24F924C98();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BC0);
  v22 = v48;
  sub_24E914444(v48, &v3[*(v21 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v3, v5, &qword_27F221BA0);
  v23 = &v5[*(v44 + 36)];
  v24 = v55;
  *(v23 + 4) = v54;
  *(v23 + 5) = v24;
  *(v23 + 6) = v56;
  v25 = v51;
  *v23 = v50;
  *(v23 + 1) = v25;
  v26 = v53;
  *(v23 + 2) = v52;
  *(v23 + 3) = v26;
  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v5, v7, &qword_27F221BA8);
  v28 = &v7[*(v46 + 36)];
  *v28 = KeyPath;
  v28[8] = 0;
  v29 = &v15[v13[14]];
  v30 = *(v29 + 1);
  v46 = *v29;
  v44 = v30;
  v31 = sub_24F925808();
  v32 = v7;
  v33 = v47;
  sub_24E6009C8(v32, v47, &qword_27F221BB0);
  v34 = v33 + *(v45 + 36);
  *v34 = v31;
  *(v34 + 24) = v44;
  *(v34 + 8) = v46;
  *(v34 + 40) = 0;
  v35 = sub_24F927618();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BC8);
  v39 = v49;
  v40 = v49 + *(v38 + 36);
  v41 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  sub_24E925518(11, v22, 4, (v22 + *(v41 + 24)), *(v22 + *(v41 + 20)), v40);
  sub_24E917A04(v15, type metadata accessor for CardLayoutMetrics);
  v42 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221990) + 36));
  *v42 = v35;
  v42[1] = v37;
  return sub_24E6009C8(v33, v39, &qword_27F221BB8);
}

uint64_t sub_24E914444@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v228 = a2;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A40);
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v181 = &v175 - v3;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F8);
  MEMORY[0x28223BE20](v226);
  v227 = &v175 - v4;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A00);
  MEMORY[0x28223BE20](v218);
  v221 = &v175 - v5;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A08);
  MEMORY[0x28223BE20](v224);
  v223 = &v175 - v6;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A10);
  MEMORY[0x28223BE20](v243);
  v225 = &v175 - v7;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A28);
  MEMORY[0x28223BE20](v217);
  v222 = &v175 - v8;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2219F0);
  MEMORY[0x28223BE20](v242);
  v241 = &v175 - v9;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD0);
  MEMORY[0x28223BE20](v210);
  v211 = &v175 - v10;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AB8);
  MEMORY[0x28223BE20](v240);
  v212 = &v175 - v11;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8);
  MEMORY[0x28223BE20](v208);
  v209 = &v175 - v12;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0);
  MEMORY[0x28223BE20](v205);
  v206 = &v175 - v13;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8);
  MEMORY[0x28223BE20](v194);
  v199 = &v175 - v14;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0);
  MEMORY[0x28223BE20](v190);
  v191 = &v175 - v15;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70);
  MEMORY[0x28223BE20](v193);
  v192 = &v175 - v16;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60);
  MEMORY[0x28223BE20](v198);
  v197 = &v175 - v17;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50);
  MEMORY[0x28223BE20](v203);
  v202 = &v175 - v18;
  v189 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v189);
  v201 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v229);
  v230 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v204);
  v207 = &v175 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v22 - 8);
  v176 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v175 = &v175 - v25;
  v234 = sub_24F9259C8();
  v244 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v233);
  v237 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v188 = &v175 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A18);
  MEMORY[0x28223BE20](v30 - 8);
  v216 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v213 = &v175 - v33;
  MEMORY[0x28223BE20](v34);
  v215 = &v175 - v35;
  MEMORY[0x28223BE20](v36);
  v196 = &v175 - v37;
  MEMORY[0x28223BE20](v38);
  v200 = &v175 - v39;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF8);
  MEMORY[0x28223BE20](v231);
  v214 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v239 = &v175 - v42;
  MEMORY[0x28223BE20](v43);
  v195 = &v175 - v44;
  MEMORY[0x28223BE20](v45);
  v236 = &v175 - v46;
  MEMORY[0x28223BE20](v47);
  v245 = &v175 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C00);
  v50 = v49 - 8;
  MEMORY[0x28223BE20](v49);
  v238 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = (&v175 - v53);
  v55 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  v56 = *&v250[0];
  v57 = sub_24F927628();
  v59 = v58;
  v60 = sub_24F9251C8();
  v61 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C08) + 36));
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v63 = *MEMORY[0x277CE13B8];
  v64 = sub_24F927748();
  v65 = *(v64 - 8);
  v66 = *(v65 + 104);
  v180 = v63;
  v67 = v63;
  v68 = a1;
  v179 = v64;
  v178 = v66;
  v177 = v65 + 104;
  (v66)(v61 + v62, v67);
  *v61 = v60;
  *v54 = v56;
  v54[1] = v57;
  v54[2] = v59;
  LOBYTE(v57) = sub_24F925828();
  sub_24F923318();
  v69 = *(v50 + 44);
  v235 = v54;
  v70 = v54 + v69;
  *v70 = v57;
  *(v70 + 1) = v71;
  *(v70 + 2) = v72;
  *(v70 + 3) = v73;
  *(v70 + 4) = v74;
  v70[40] = 0;
  v75 = *(a1 + *(v55 + 20));
  v76 = v245;
  sub_24E925518(7, a1, 4, (a1 + *(v55 + 24)), v75, v245);
  LOBYTE(v50) = sub_24F925828();
  sub_24F923318();
  v77 = v76 + *(v231 + 36);
  *v77 = v50;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79;
  *(v77 + 24) = v80;
  *(v77 + 32) = v81;
  *(v77 + 40) = 0;
  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v82 = v233;
  v187 = __swift_project_value_buffer(v233, qword_27F39E610);
  v83 = v188;
  sub_24E91799C(v187, v188, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  v84 = v244;
  v85 = *(v244 + 104);
  v86 = v232;
  v186 = *MEMORY[0x277CE0A10];
  v87 = v234;
  v185 = v244 + 104;
  v184 = v85;
  v85(v232);
  v88 = sub_24F9259F8();

  v89 = *(v84 + 8);
  v244 = v84 + 8;
  v183 = v89;
  v89(v86, v87);
  v90 = v82[20];

  *(v83 + v90) = v88;
  *(v83 + v82[21]) = 4;
  v91 = sub_24F925A08();
  v92 = v82[27];

  *(v83 + v92) = v91;
  *(v83 + v82[28]) = 4;
  sub_24E917A04(v83, type metadata accessor for CardLayoutMetrics);
  v93 = v68 + *(type metadata accessor for ArcadeUpsellCard() + 32);
  v94 = v229;
  v182 = *(v93 + *(v229 + 36));
  if (!v182)
  {
    v95 = v175;
    sub_24E60169C(v93 + *(v229 + 32), v175, &qword_27F213FB8);
    v96 = type metadata accessor for GSKVideo();
    (*(*(v96 - 8) + 48))(v95, 1, v96);
    sub_24E601704(v95, &qword_27F213FB8);
  }

  v97 = v230;
  sub_24E91799C(v93, v230, type metadata accessor for CommonCardAttributes);
  v98 = v97 + *(v94 + 80);
  v188 = v93;
  v99 = v201;
  sub_24E60169C(v98, v201, &qword_27F21B270);
  sub_24E60169C(v97 + *(v94 + 76), v250, qword_27F24EC90);
  v100 = v189;
  v101 = v99 + *(v189 + 20);
  v102 = v250[1];
  *v101 = v250[0];
  *(v101 + 16) = v102;
  *(v101 + 32) = v251;
  *(v99 + *(v100 + 24)) = sub_24F92CE08() & 1;
  *(v99 + *(v100 + 28)) = v75;
  sub_24E91799C(v99, v191, type metadata accessor for CardPrimaryActionButton);
  swift_storeEnumTagMultiPayload();
  sub_24E916E78(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);

  v103 = v192;
  sub_24F924E28();
  sub_24E60169C(v103, v199, &qword_27F214C70);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88);
  sub_24E63CEC4();
  sub_24E916DC4(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
  v104 = v197;
  sub_24F924E28();
  sub_24E601704(v103, &qword_27F214C70);
  sub_24E60169C(v104, v206, &qword_27F214C60);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
  sub_24E63CE0C();
  sub_24E63D208();
  v105 = v202;
  sub_24F924E28();
  sub_24E601704(v104, &qword_27F214C60);
  sub_24E60169C(v105, v209, &qword_27F214C50);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10);
  sub_24E63C31C();
  sub_24E63CD80();
  v106 = v207;
  sub_24F924E28();
  sub_24E601704(v105, &qword_27F214C50);
  sub_24E917A04(v99, type metadata accessor for CardPrimaryActionButton);
  sub_24E917A04(v230, type metadata accessor for CommonCardAttributes);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00);
  (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
  sub_24E60169C(v106, v211, &qword_27F214A20);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AD8);
  sub_24E916C04();
  sub_24E916D48(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
  v108 = v212;
  sub_24F924E28();
  sub_24E60169C(v108, v241, &qword_27F221AB8);
  swift_storeEnumTagMultiPayload();
  v109 = sub_24E916AC0();
  v110 = sub_24E916B4C();
  v111 = v196;
  v230 = v109;
  v211 = v110;
  sub_24F924E28();
  sub_24E601704(v108, &qword_27F221AB8);
  sub_24E601704(v106, &qword_27F214A20);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221B30);
  v113 = *(v112 - 8);
  v114 = *(v113 + 56);
  v212 = v112;
  v210 = v114;
  v209 = v113 + 56;
  (v114)(v111, 0, 1);
  v115 = v111;
  v116 = v188;
  v117 = v200;
  sub_24E6009C8(v115, v200, &qword_27F221A18);
  LOBYTE(v105) = sub_24F925828();
  sub_24F923318();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v126 = v117;
  v127 = v195;
  sub_24E6009C8(v126, v195, &qword_27F221A18);
  v128 = v127 + *(v231 + 36);
  *v128 = v105;
  *(v128 + 8) = v119;
  *(v128 + 16) = v121;
  *(v128 + 24) = v123;
  *(v128 + 32) = v125;
  *(v128 + 40) = 0;
  sub_24E6009C8(v127, v236, &qword_27F221BF8);
  v129 = v237;
  sub_24E91799C(v187, v237, type metadata accessor for CardLayoutMetrics);
  sub_24F925988();
  sub_24F9258E8();

  v130 = v232;
  v131 = v234;
  v184(v232, v186, v234);
  v132 = sub_24F9259F8();

  v183(v130, v131);
  v133 = v233;
  v134 = v233[20];

  *(v129 + v134) = v132;
  *(v129 + v133[21]) = 4;
  v135 = sub_24F925A08();
  v136 = v133[27];

  *(v129 + v136) = v135;
  *(v129 + v133[28]) = 4;
  v137 = v229;
  if (!v182)
  {
    v138 = v176;
    sub_24E60169C(v116 + *(v229 + 32), v176, &qword_27F213FB8);
    v139 = type metadata accessor for GSKVideo();
    (*(*(v139 - 8) + 48))(v138, 1, v139);
    sub_24E601704(v138, &qword_27F213FB8);
  }

  v140 = (v116 + *(v137 + 64));
  v141 = v140[1];
  if (!v141)
  {
    goto LABEL_12;
  }

  v142 = *v140;
  v143 = HIBYTE(v141) & 0xF;
  if ((v141 & 0x2000000000000000) == 0)
  {
    v143 = v142 & 0xFFFFFFFFFFFFLL;
  }

  if (v143)
  {
    *&v250[0] = v142;
    *(&v250[0] + 1) = v141;
    sub_24E600AEC();

    v144 = sub_24F925E18();
    v146 = v145;
    v148 = v147;
    v149 = sub_24F925C98();
    v151 = v150;
    v153 = v152;
    v155 = v154;
    sub_24E600B40(v144, v146, v148 & 1);

    KeyPath = swift_getKeyPath();
    LODWORD(v146) = sub_24F9251C8();
    v249 = v153 & 1;
    v248 = 0;
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A50);
    v158 = v181;
    v178(&v181[*(v157 + 36)], v180, v179);
    *v158 = v149;
    *(v158 + 1) = v151;
    v158[16] = v249;
    *(v158 + 17) = v250[0];
    *(v158 + 5) = *(v250 + 3);
    *(v158 + 3) = v155;
    *(v158 + 4) = KeyPath;
    *(v158 + 5) = 4;
    v158[48] = v248;
    *(v158 + 49) = v246;
    v158[51] = v247;
    *(v158 + 13) = v146;
    v159 = v220;
    *&v158[*(v220 + 36)] = 256;
    v160 = v158;
    v161 = v222;
    sub_24E6009C8(v160, v222, &qword_27F221A40);
    (*(v219 + 56))(v161, 0, 1, v159);
  }

  else
  {
LABEL_12:
    v161 = v222;
    (*(v219 + 56))(v222, 1, 1, v220);
  }

  sub_24E60169C(v161, v221, &qword_27F221A28);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ArcadeUpsellCardConfiguration.VisualView();
  sub_24E916D48(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
  sub_24E916E78(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
  v162 = v223;
  sub_24F924E28();
  sub_24E60169C(v162, v227, &qword_27F221A08);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221A70);
  sub_24E9167B0();
  sub_24E9169D8();
  v163 = v225;
  sub_24F924E28();
  sub_24E601704(v162, &qword_27F221A08);
  sub_24E60169C(v163, v241, &qword_27F221A10);
  swift_storeEnumTagMultiPayload();
  v164 = v213;
  sub_24F924E28();
  sub_24E601704(v163, &qword_27F221A10);
  sub_24E601704(v161, &qword_27F221A28);
  v210(v164, 0, 1, v212);
  v165 = v215;
  sub_24E6009C8(v164, v215, &qword_27F221A18);
  sub_24E917A04(v237, type metadata accessor for CardLayoutMetrics);
  v166 = v238;
  sub_24E60169C(v235, v238, &qword_27F221C00);
  v167 = v239;
  sub_24E60169C(v245, v239, &qword_27F221BF8);
  v168 = v236;
  v169 = v214;
  sub_24E60169C(v236, v214, &qword_27F221BF8);
  v170 = v216;
  sub_24E60169C(v165, v216, &qword_27F221A18);
  v171 = v228;
  *v228 = 0;
  *(v171 + 8) = 0;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C10);
  sub_24E60169C(v166, v171 + v172[12], &qword_27F221C00);
  sub_24E60169C(v167, v171 + v172[16], &qword_27F221BF8);
  sub_24E60169C(v169, v171 + v172[20], &qword_27F221BF8);
  sub_24E60169C(v170, v171 + v172[24], &qword_27F221A18);
  v173 = v171 + v172[28];
  *v173 = 0;
  v173[8] = 0;
  sub_24E601704(v165, &qword_27F221A18);
  sub_24E601704(v168, &qword_27F221BF8);
  sub_24E601704(v245, &qword_27F221BF8);
  sub_24E601704(v235, &qword_27F221C00);
  sub_24E601704(v170, &qword_27F221A18);
  sub_24E601704(v169, &qword_27F221BF8);
  sub_24E601704(v239, &qword_27F221BF8);
  return sub_24E601704(v238, &qword_27F221C00);
}

unint64_t sub_24E9161A0()
{
  result = qword_27F2219A0;
  if (!qword_27F2219A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221960);
    sub_24E916258();
    sub_24E602068(&qword_27F2219C0, &qword_27F221990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219A0);
  }

  return result;
}

unint64_t sub_24E916258()
{
  result = qword_27F2219A8;
  if (!qword_27F2219A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221980);
    sub_24E602068(&qword_27F2219B0, &qword_27F2219B8);
    sub_24E916E78(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219A8);
  }

  return result;
}

unint64_t sub_24E916340()
{
  result = qword_27F2219C8;
  if (!qword_27F2219C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221998);
    sub_24E9163F8();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219C8);
  }

  return result;
}

unint64_t sub_24E9163F8()
{
  result = qword_27F2219D0;
  if (!qword_27F2219D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2219D8);
    sub_24E9161A0();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219D0);
  }

  return result;
}

unint64_t sub_24E9164B0()
{
  result = qword_27F2219E0;
  if (!qword_27F2219E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221998);
    sub_24E9161A0();
    sub_24E6A4C1C();
    sub_24E916340();
    swift_getOpaqueTypeConformance2();
    sub_24E6BC1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2219E0);
  }

  return result;
}

unint64_t sub_24E9165E0()
{
  result = qword_27F221A38;
  if (!qword_27F221A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A40);
    sub_24E91666C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A38);
  }

  return result;
}

unint64_t sub_24E91666C()
{
  result = qword_27F221A48;
  if (!qword_27F221A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A50);
    sub_24E9166F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A48);
  }

  return result;
}

unint64_t sub_24E9166F8()
{
  result = qword_27F221A58;
  if (!qword_27F221A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A60);
    sub_24E67283C();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A58);
  }

  return result;
}

unint64_t sub_24E9167B0()
{
  result = qword_27F221A78;
  if (!qword_27F221A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A70);
    sub_24E916D48(&qword_27F221A80, &qword_27F221A88, &unk_24F967BA0, sub_24E916868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A78);
  }

  return result;
}

unint64_t sub_24E916868()
{
  result = qword_27F221A90;
  if (!qword_27F221A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A98);
    sub_24E916920();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221A90);
  }

  return result;
}

unint64_t sub_24E916920()
{
  result = qword_27F221AA0;
  if (!qword_27F221AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AA8);
    sub_24E602068(&qword_27F215A40, &qword_27F215A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AA0);
  }

  return result;
}

unint64_t sub_24E9169D8()
{
  result = qword_27F221AB0;
  if (!qword_27F221AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A08);
    sub_24E916D48(&qword_27F221A30, &qword_27F221A28, &unk_24F967B80, sub_24E9165E0);
    sub_24E916E78(&qword_27F221A68, type metadata accessor for ArcadeUpsellCardConfiguration.VisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AB0);
  }

  return result;
}

unint64_t sub_24E916AC0()
{
  result = qword_27F221AC0;
  if (!qword_27F221AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221A10);
    sub_24E9167B0();
    sub_24E9169D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AC0);
  }

  return result;
}

unint64_t sub_24E916B4C()
{
  result = qword_27F221AC8;
  if (!qword_27F221AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AB8);
    sub_24E916C04();
    sub_24E916D48(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AC8);
  }

  return result;
}

unint64_t sub_24E916C04()
{
  result = qword_27F221AD0;
  if (!qword_27F221AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AD8);
    sub_24E916C90();
    sub_24E916EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AD0);
  }

  return result;
}

unint64_t sub_24E916C90()
{
  result = qword_27F221AE0;
  if (!qword_27F221AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AE8);
    sub_24E86BC28();
    sub_24E916D48(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AE0);
  }

  return result;
}

uint64_t sub_24E916D48(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E916DC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E916E78(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E916E78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E916EC0()
{
  result = qword_27F221AF0;
  if (!qword_27F221AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221AF8);
    sub_24E916F4C();
    sub_24E917008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221AF0);
  }

  return result;
}

unint64_t sub_24E916F4C()
{
  result = qword_27F221B00;
  if (!qword_27F221B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B08);
    sub_24E916E78(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B00);
  }

  return result;
}

unint64_t sub_24E917008()
{
  result = qword_27F221B10;
  if (!qword_27F221B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B18);
    sub_24E916DC4(&qword_27F221B20, &qword_27F221B28, &unk_24F968040, sub_24E86BC28);
    sub_24E916E78(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B10);
  }

  return result;
}

uint64_t sub_24E9170F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeUpsellCardExtraLargeView.Footer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E917154()
{
  result = qword_27F221B48;
  if (!qword_27F221B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B58);
    sub_24E917264();
    sub_24E6A4C1C();
    sub_24E91734C();
    swift_getOpaqueTypeConformance2();
    sub_24E6BC1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B48);
  }

  return result;
}

unint64_t sub_24E917264()
{
  result = qword_27F221B60;
  if (!qword_27F221B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B50);
    sub_24E602068(&qword_27F221B68, &qword_27F221B70);
    sub_24E916E78(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B60);
  }

  return result;
}

unint64_t sub_24E91734C()
{
  result = qword_27F221B78;
  if (!qword_27F221B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B58);
    sub_24E917404();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B78);
  }

  return result;
}

unint64_t sub_24E917404()
{
  result = qword_27F221B80;
  if (!qword_27F221B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221B88);
    sub_24E917264();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221B80);
  }

  return result;
}

uint64_t sub_24E9174D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArcadeUpsellCard();
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
    v13 = sub_24F923E98();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24E917664(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArcadeUpsellCard();
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

  v13 = sub_24F923E98();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_24E9177E4()
{
  type metadata accessor for ArcadeUpsellCard();
  if (v0 <= 0x3F)
  {
    sub_24F923E98();
    if (v1 <= 0x3F)
    {
      sub_24E66ED3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E917888()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221970);
  type metadata accessor for CardSafeArea(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221968);
  sub_24E9164B0();
  swift_getOpaqueTypeConformance2();
  sub_24E916E78(&qword_27F214D10, type metadata accessor for CardSafeArea);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E91799C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E917A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E917A70()
{
  result = qword_27F221C18;
  if (!qword_27F221C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BC8);
    sub_24E917B28();
    sub_24E602068(&qword_27F2219C0, &qword_27F221990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C18);
  }

  return result;
}

unint64_t sub_24E917B28()
{
  result = qword_27F221C20;
  if (!qword_27F221C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BB8);
    sub_24E917BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C20);
  }

  return result;
}

unint64_t sub_24E917BB4()
{
  result = qword_27F221C28;
  if (!qword_27F221C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BB0);
    sub_24E917C6C();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C28);
  }

  return result;
}

unint64_t sub_24E917C6C()
{
  result = qword_27F221C30;
  if (!qword_27F221C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221BA8);
    sub_24E602068(&qword_27F221C38, &qword_27F221BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221C30);
  }

  return result;
}

uint64_t DynamicUIRequestInfo.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DynamicUIRequestInfo.init(deserializing:using:)(a1, a2);
  return v4;
}

void *DynamicUIRequestInfo.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v43 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v19 = *(v4 + 8);
  v39 = v3;
  v41 = v19;
  v42 = v4 + 8;
  v19(v12, v3);
  v20 = sub_24F928E68();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v18, 1, v20) == 1)
  {
    sub_24E9182E0(v18);
    v23 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870);
    v23 = sub_24F928E48();
    (*(v21 + 8))(v18, v20);
  }

  v24 = v40;
  v40[2] = v23;
  sub_24F928398();
  sub_24F9281F8();
  v25 = v10;
  v26 = v39;
  v41(v25, v39);
  if (v22(v16, 1, v20) == 1)
  {
    sub_24E9182E0(v16);
    v27 = 0;
  }

  else
  {
    v27 = sub_24F928E48();
    (*(v21 + 8))(v16, v20);
  }

  v24[3] = v27;
  type metadata accessor for Action();
  v28 = v43;
  sub_24F928398();
  v29 = v38;
  v30 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, v38);
  v31 = v41;
  v41(v7, v26);
  v24[4] = v30;
  sub_24F928398();
  v32 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, v29);
  v31(v7, v26);
  v24[5] = v32;
  sub_24F928398();
  v33 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, v29);
  v31(v7, v26);
  v24[6] = v33;
  sub_24F928398();
  v34 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, v29);
  v31(v7, v26);
  v24[7] = v34;
  sub_24F928398();
  v35 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, v29);
  v36 = sub_24F9285B8();
  (*(*(v36 - 8) + 8))(v29, v36);
  v31(v28, v26);
  v31(v7, v26);
  v24[8] = v35;
  return v24;
}

uint64_t sub_24E9182E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicUIRequestInfo.deinit()
{

  return v0;
}

uint64_t DynamicUIRequestInfo.__deallocating_deinit()
{
  DynamicUIRequestInfo.deinit();

  return swift_deallocClassInstance();
}

void *sub_24E918404@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for DynamicUIRequestInfo();
  v7 = swift_allocObject();
  result = DynamicUIRequestInfo.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9184D0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E918564()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_24E918628()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24E91867C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v8, a2);
  return sub_24F92B188();
}

uint64_t sub_24E918774(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0x7463657269646E49;
  v13 = 0xE900000000000028;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v8, a2);
  v9 = sub_24F92B188();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_24E918914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v13 = *(*v12 + 88);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, a1 + v13, a3);
  v15 = *(*a2 + 88);
  swift_beginAccess();
  v14(v8, a2 + v15, a3);
  v16 = sub_24F92AFF8();
  v17 = *(v6 + 8);
  v17(v8, a3);
  v17(v11, a3);
  return v16 & 1;
}

uint64_t sub_24E918AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v8 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v7, a2 + v9, a3);
  sub_24F92AEF8();
  return (*(v5 + 8))(v7, a3);
}

uint64_t sub_24E918C04(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  sub_24E918AD8(v5, a1, a2);
  return sub_24F92D0B8();
}

uint64_t sub_24E918C8C(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  sub_24E918AD8(v5, *v2, *(a2 + 16));
  return sub_24F92D0B8();
}

uint64_t sub_24E918D88@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v455 = a5;
  v523 = a4;
  v532 = a3;
  v533 = a1;
  v534 = a7;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  v9 = MEMORY[0x28223BE20](v459);
  v448 = (&v417 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v426 = (&v417 - v11);
  v421 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v421);
  v420 = &v417 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v423 = *(v424 - 8);
  MEMORY[0x28223BE20](v424);
  v419 = &v417 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  MEMORY[0x28223BE20](v14 - 8);
  v425 = &v417 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v427 = &v417 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v446 = &v417 - v19;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D80);
  MEMORY[0x28223BE20](v457);
  v458 = &v417 - v20;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D88);
  MEMORY[0x28223BE20](v432);
  v430 = (&v417 - v21);
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CA8);
  MEMORY[0x28223BE20](v456);
  v431 = &v417 - v22;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D90);
  MEMORY[0x28223BE20](v489);
  v490 = &v417 - v23;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88);
  MEMORY[0x28223BE20](v511);
  v491 = &v417 - v24;
  v445 = sub_24F924B38();
  v440 = *(v445 - 8);
  MEMORY[0x28223BE20](v445);
  v439 = &v417 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = sub_24F921AF8();
  v442 = *(v443 - 8);
  MEMORY[0x28223BE20](v443);
  v441 = &v417 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10);
  v453 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v444 = &v417 - v27;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98);
  MEMORY[0x28223BE20](v482);
  v483 = &v417 - v28;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8);
  MEMORY[0x28223BE20](v510);
  v484 = &v417 - v29;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  v501 = *(v512 - 8);
  MEMORY[0x28223BE20](v512);
  v465 = &v417 - v30;
  v437 = type metadata accessor for CardElementView.Category(0);
  MEMORY[0x28223BE20](v437);
  v428 = &v417 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA0);
  MEMORY[0x28223BE20](v434);
  v436 = &v417 - v32;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B60);
  MEMORY[0x28223BE20](v435);
  v429 = &v417 - v33;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8);
  MEMORY[0x28223BE20](v506);
  v508 = &v417 - v34;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB0);
  MEMORY[0x28223BE20](v494);
  v495 = &v417 - v35;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30);
  MEMORY[0x28223BE20](v507);
  v487 = &v417 - v36;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20);
  MEMORY[0x28223BE20](v522);
  v509 = &v417 - v37;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B50);
  v462 = *(v463 - 8);
  MEMORY[0x28223BE20](v463);
  v433 = &v417 - v38;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C98);
  MEMORY[0x28223BE20](v486);
  v488 = &v417 - v39;
  v485 = type metadata accessor for CardContentBackgroundStyle(0);
  v40 = MEMORY[0x28223BE20](v485);
  v451 = &v417 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v452 = &v417 - v42;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0);
  MEMORY[0x28223BE20](v514);
  v516 = &v417 - v43;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8);
  MEMORY[0x28223BE20](v502);
  v504 = &v417 - v44;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0);
  MEMORY[0x28223BE20](v477);
  v467 = &v417 - v45;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70);
  MEMORY[0x28223BE20](v503);
  v481 = &v417 - v46;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60);
  MEMORY[0x28223BE20](v515);
  v505 = &v417 - v47;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50);
  MEMORY[0x28223BE20](v528);
  v517 = &v417 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  MEMORY[0x28223BE20](v49 - 8);
  v470 = &v417 - v50;
  v475 = type metadata accessor for CardPrimaryActionButton(0);
  v51 = MEMORY[0x28223BE20](v475);
  v450 = &v417 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v480 = &v417 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v447 = &v417 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v422 = &v417 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v417 - v59;
  v466 = sub_24F9289E8();
  v464 = *(v466 - 8);
  v61 = MEMORY[0x28223BE20](v466);
  v438 = &v417 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v449 = &v417 - v63;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C00);
  MEMORY[0x28223BE20](v474);
  v479 = &v417 - v64;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB8);
  MEMORY[0x28223BE20](v472);
  v473 = &v417 - v65;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BF0);
  MEMORY[0x28223BE20](v499);
  v476 = &v417 - v66;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8);
  MEMORY[0x28223BE20](v524);
  v526 = &v417 - v67;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0);
  MEMORY[0x28223BE20](v518);
  v520 = &v417 - v68;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC8);
  MEMORY[0x28223BE20](v496);
  v498 = &v417 - v69;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DD0);
  MEMORY[0x28223BE20](v468);
  v469 = &v417 - v70;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BD8);
  MEMORY[0x28223BE20](v497);
  v471 = &v417 - v71;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8);
  MEMORY[0x28223BE20](v519);
  v500 = &v417 - v72;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10);
  MEMORY[0x28223BE20](v525);
  v521 = &v417 - v73;
  v74 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v74);
  v76 = &v417 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88);
  v77 = MEMORY[0x28223BE20](v513);
  v492 = &v417 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x28223BE20](v77);
  v461 = &v417 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v83 = &v417 - v82;
  MEMORY[0x28223BE20](v81);
  v460 = &v417 - v84;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B40);
  MEMORY[0x28223BE20](v478);
  v493 = &v417 - v85;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00);
  v530 = *(v531 - 8);
  MEMORY[0x28223BE20](v531);
  v527 = &v417 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v87 - 8);
  v529 = &v417 - v88;
  v89 = type metadata accessor for CardLayoutMetrics(0);
  v90 = MEMORY[0x28223BE20](v89);
  v92 = (&v417 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v90);
  v536 = &v417 - v93;
  v94 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v94);
  v96 = &v417 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a6(0);
  v98 = a2;
  v99 = a2 + *(v97 + 32);
  v535 = v96;
  v100 = v96;
  v101 = v532;
  sub_24E92CCE0(v99, v100, type metadata accessor for CommonCardAttributes);
  if (v101 > 2u)
  {
    if (v101 == 3)
    {
      sub_24F4E9558(v523, v92);
      goto LABEL_21;
    }

    if (v101 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v102 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v102 = qword_27F39E658;
    }
  }

  else if (v101)
  {
    if (v101 == 1)
    {
      sub_24F4E9E44(v523, v92);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v102 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v102 = qword_27F39E640;
  }

  v103 = __swift_project_value_buffer(v89, v102);
  sub_24E92CCE0(v103, v92, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E92C5CC(v92, v536, type metadata accessor for CardLayoutMetrics);
  v104 = v533;
  if (sub_24E92BA60(v533, v98, v101))
  {
    switch(v104)
    {
      case 1:
        LOBYTE(v540) = 0;
        goto LABEL_49;
      case 2:
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);
        v186 = v481;
        sub_24F924E28();
        sub_24E60169C(v186, v504, &qword_27F214C70);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v187 = v505;
        sub_24F924E28();
        sub_24E601704(v186, &qword_27F214C70);
        sub_24E60169C(v187, v516, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v188 = v517;
        sub_24F924E28();
        sub_24E601704(v187, &qword_27F214C60);
        goto LABEL_51;
      case 3:
        sub_24E60169C(&v535[v94[10]], v60, &qword_27F213FB0);
        v189 = v464;
        v190 = v466;
        if ((*(v464 + 48))(v60, 1, v466) == 1)
        {
          sub_24E601704(v60, &qword_27F213FB0);
          v191 = 1;
          v132 = v534;
          v133 = v531;
          v134 = v530;
          v135 = v529;
          v192 = v454;
          v193 = v453;
          v194 = v479;
        }

        else
        {
          (*(v189 + 32))();
          v418 = v89;
          v319 = v438;
          sub_24F9289C8();
          v320 = *MEMORY[0x277CE0118];
          v321 = v440;
          v533 = *(v440 + 104);
          v322 = v439;
          v323 = v445;
          v533(v439, v320, v445);
          v324 = v441;
          sub_24F9219A8();
          (*(v321 + 8))(v322, v323);
          sub_24E92CBAC(&qword_27F214C28, MEMORY[0x277D21C48]);
          sub_24E92CBAC(&qword_27F214C30, MEMORY[0x277D7EBE8]);
          v325 = v444;
          v326 = v443;
          sub_24F925ED8();
          (*(v442 + 8))(v324, v326);
          v327 = *(v189 + 8);
          v327(v319, v190);
          v328 = sub_24F927618();
          v330 = v329;
          v331 = (v325 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20) + 36));
          v332 = sub_24F924258();
          v533(&v331[*(v332 + 20)], v320, v323);
          __asm { FMOV            V0.2D, #8.0 }

          *v331 = _Q0;
          v338 = v418;
          v339 = v536;
          v340 = (v536 + v418[32]);
          v341 = *v340;
          v342 = v340[1];
          v343 = v340[2];
          v344 = v340[3];
          v345 = &v331[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36)];
          *v345 = v344;
          *(v345 + 1) = v343;
          *(v345 + 2) = v341;
          *(v345 + 3) = v342;
          v346 = &v331[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36)];
          *v346 = v328;
          v346[1] = v330;
          v347 = *(v339 + v338[31]);

          sub_24F9278A8();
          v349 = v348;
          v351 = v350;
          v327(v449, v466);
          v192 = v454;
          v352 = (v325 + *(v454 + 36));
          *v352 = v347;
          v352[1] = v349;
          v352[2] = v351;
          v194 = v479;
          sub_24E6009C8(v325, v479, &qword_27F214C10);
          v191 = 0;
          v132 = v534;
          v133 = v531;
          v134 = v530;
          v135 = v529;
          v193 = v453;
        }

        (*(v193 + 56))(v194, v191, 1, v192);
        sub_24E60169C(v194, v473, &qword_27F214C00);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
        v353 = v476;
        sub_24F924E28();
        sub_24E60169C(v353, v498, &qword_27F214BF0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v354 = v500;
        sub_24F924E28();
        sub_24E601704(v353, &qword_27F214BF0);
        sub_24E60169C(v354, v520, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v355 = v521;
        sub_24F924E28();
        sub_24E601704(v354, &qword_27F214BC8);
        sub_24E60169C(v355, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v355, &qword_27F214B10);
        v356 = v479;
        v357 = &qword_27F214C00;
        goto LABEL_98;
      case 4:
        v146 = &v535[v94[11]];
        v147 = *(v146 + 1);
        if (!v147)
        {
          goto LABEL_71;
        }

        v148 = *v146;
        v149 = HIBYTE(v147) & 0xF;
        if ((v147 & 0x2000000000000000) == 0)
        {
          v149 = v148 & 0xFFFFFFFFFFFFLL;
        }

        if (v149)
        {
          *&v537 = v148;
          *(&v537 + 1) = v147;
          sub_24E600AEC();

          v150 = sub_24F925E18();
          v152 = v151;
          v154 = v153;
          v155 = v89;
          v156 = v536;
          v157 = sub_24F925C98();
          v159 = v158;
          v161 = v160;
          sub_24E600B40(v150, v152, v154 & 1);

          LODWORD(v537) = sub_24F9251C8();
          v162 = sub_24F925C58();
          v164 = v163;
          v166 = v165;
          v168 = v167;
          sub_24E600B40(v157, v159, v161 & 1);

          v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v170 = *MEMORY[0x277CE13B8];
          v171 = sub_24F927748();
          v172 = v465;
          (*(*(v171 - 8) + 104))(&v465[v169], v170, v171);
          *v172 = v162;
          *(v172 + 8) = v164;
          *(v172 + 16) = v166 & 1;
          *(v172 + 24) = v168;
          v173 = *(v156 + v155[19]);
          KeyPath = swift_getKeyPath();
          v175 = v512;
          v176 = v172 + *(v512 + 36);
          *v176 = KeyPath;
          *(v176 + 8) = v173;
          *(v176 + 16) = 0;
          v177 = v460;
          sub_24E6009C8(v172, v460, &qword_27F214B98);
          v178 = 0;
          v132 = v534;
          v133 = v531;
          v134 = v530;
        }

        else
        {
LABEL_71:
          v178 = 1;
          v132 = v534;
          v133 = v531;
          v134 = v530;
          v175 = v512;
          v177 = v460;
        }

        (*(v501 + 56))(v177, v178, 1, v175);
        sub_24E60169C(v177, v495, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v300 = v487;
        sub_24F924E28();
        sub_24E60169C(v300, v508, &qword_27F214B30);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v301 = v509;
        sub_24F924E28();
        sub_24E601704(v300, &qword_27F214B30);
        sub_24E60169C(v301, v520, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v302 = v521;
        sub_24F924E28();
        sub_24E601704(v301, &qword_27F214B20);
        sub_24E60169C(v302, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v302, &qword_27F214B10);
        v303 = v177;
        goto LABEL_80;
      case 5:
        v200 = &v535[v94[12]];
        v201 = *(v200 + 1);
        if (!v201)
        {
          goto LABEL_74;
        }

        v202 = *v200;
        v203 = HIBYTE(v201) & 0xF;
        if ((v201 & 0x2000000000000000) == 0)
        {
          v203 = v202 & 0xFFFFFFFFFFFFLL;
        }

        if (v203)
        {
          *&v537 = v202;
          *(&v537 + 1) = v201;
          sub_24E600AEC();

          v204 = sub_24F925E18();
          v206 = v205;
          v208 = v207;
          v418 = v89;
          v209 = v536;
          v210 = sub_24F925C98();
          v212 = v211;
          v214 = v213;
          sub_24E600B40(v204, v206, v208 & 1);

          LODWORD(v537) = sub_24F9251C8();
          v215 = sub_24F925C58();
          v217 = v216;
          v219 = v218;
          v221 = v220;
          sub_24E600B40(v210, v212, v214 & 1);

          v222 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v223 = *MEMORY[0x277CE13B8];
          v224 = sub_24F927748();
          v225 = v465;
          (*(*(v224 - 8) + 104))(&v465[v222], v223, v224);
          *v225 = v215;
          *(v225 + 8) = v217;
          *(v225 + 16) = v219 & 1;
          *(v225 + 24) = v221;
          v226 = *(v209 + v418[24]);
          v227 = swift_getKeyPath();
          v228 = v512;
          v229 = v225 + *(v512 + 36);
          *v229 = v227;
          *(v229 + 8) = v226;
          *(v229 + 16) = 0;
          sub_24E6009C8(v225, v83, &qword_27F214B98);
          v230 = 0;
          v132 = v534;
          v134 = v530;
          v135 = v529;
        }

        else
        {
LABEL_74:
          v230 = 1;
          v132 = v534;
          v134 = v530;
          v135 = v529;
          v228 = v512;
        }

        (*(v501 + 56))(v83, v230, 1, v228);
        sub_24E60169C(v83, v483, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v309 = v484;
        sub_24F924E28();
        sub_24E60169C(v309, v508, &qword_27F214BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v310 = v509;
        sub_24F924E28();
        sub_24E601704(v309, &qword_27F214BB8);
        sub_24E60169C(v310, v520, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v311 = v521;
        sub_24F924E28();
        sub_24E601704(v310, &qword_27F214B20);
        sub_24E60169C(v311, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v311, &qword_27F214B10);
        sub_24E601704(v83, &qword_27F214B88);
        v133 = v531;
        goto LABEL_93;
      case 6:
        v233 = &v535[v94[13]];
        v234 = *(v233 + 1);
        if (!v234)
        {
          goto LABEL_76;
        }

        v235 = *v233;
        v236 = HIBYTE(v234) & 0xF;
        if ((v234 & 0x2000000000000000) == 0)
        {
          v236 = v235 & 0xFFFFFFFFFFFFLL;
        }

        if (v236)
        {
          *&v537 = v235;
          *(&v537 + 1) = v234;
          sub_24E600AEC();

          v237 = sub_24F925E18();
          v239 = v238;
          v241 = v240;
          v242 = v536;
          v243 = sub_24F925C98();
          v245 = v244;
          v247 = v246;
          sub_24E600B40(v237, v239, v241 & 1);

          LODWORD(v537) = sub_24F9251C8();
          v248 = sub_24F925C58();
          v250 = v249;
          v252 = v251;
          v254 = v253;
          sub_24E600B40(v243, v245, v247 & 1);

          v255 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v256 = *MEMORY[0x277CE13B8];
          v257 = sub_24F927748();
          v258 = v465;
          (*(*(v257 - 8) + 104))(&v465[v255], v256, v257);
          *v258 = v248;
          *(v258 + 8) = v250;
          *(v258 + 16) = v252 & 1;
          *(v258 + 24) = v254;
          v259 = *(v242 + v89[26]);
          v260 = swift_getKeyPath();
          v261 = v512;
          v262 = v258 + *(v512 + 36);
          *v262 = v260;
          *(v262 + 8) = v259;
          *(v262 + 16) = 0;
          v263 = v461;
          sub_24E6009C8(v258, v461, &qword_27F214B98);
          v264 = 0;
          v132 = v534;
          v133 = v531;
          v135 = v529;
        }

        else
        {
LABEL_76:
          v264 = 1;
          v132 = v534;
          v133 = v531;
          v135 = v529;
          v261 = v512;
          v263 = v461;
        }

        (*(v501 + 56))(v263, v264, 1, v261);
        sub_24E60169C(v263, v483, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v312 = v484;
        sub_24F924E28();
        sub_24E60169C(v312, v508, &qword_27F214BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v313 = v509;
        sub_24F924E28();
        sub_24E601704(v312, &qword_27F214BB8);
        sub_24E60169C(v313, v520, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v314 = v521;
        sub_24F924E28();
        sub_24E601704(v313, &qword_27F214B20);
        sub_24E60169C(v314, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v314, &qword_27F214B10);
        sub_24E601704(v263, &qword_27F214B88);
        v134 = v530;
        goto LABEL_93;
      case 7:
        sub_24E92CCE0(v535, v76, type metadata accessor for CommonCardAttributes);
        sub_24E92CCE0(v536, &v76[*(v74 + 20)], type metadata accessor for CardLayoutMetrics);
        v76[*(v74 + 24)] = v101;
        sub_24E92CCE0(v76, v469, type metadata accessor for DefaultCardTitleView);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v195 = v471;
        sub_24F924E28();
        sub_24E60169C(v195, v498, &qword_27F214BD8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v196 = v500;
        sub_24F924E28();
        sub_24E601704(v195, &qword_27F214BD8);
        sub_24E60169C(v196, v520, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v197 = v521;
        sub_24F924E28();
        sub_24E601704(v196, &qword_27F214BC8);
        sub_24E60169C(v197, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v197, &qword_27F214B10);
        v144 = type metadata accessor for DefaultCardTitleView;
        v145 = v76;
        goto LABEL_47;
      case 8:
        v268 = &v535[v94[15]];
        v269 = *(v268 + 1);
        if (!v269)
        {
          goto LABEL_78;
        }

        v270 = *v268;
        v271 = HIBYTE(v269) & 0xF;
        if ((v269 & 0x2000000000000000) == 0)
        {
          v271 = v270 & 0xFFFFFFFFFFFFLL;
        }

        if (v271)
        {
          *&v537 = v270;
          *(&v537 + 1) = v269;
          sub_24E600AEC();

          v272 = sub_24F925E18();
          v274 = v273;
          v276 = v275;
          v418 = v89;
          v277 = v536;
          v278 = sub_24F925C98();
          v280 = v279;
          v282 = v281;
          sub_24E600B40(v272, v274, v276 & 1);

          LODWORD(v537) = sub_24F9251C8();
          v283 = sub_24F925C58();
          v285 = v284;
          v287 = v286;
          v289 = v288;
          sub_24E600B40(v278, v280, v282 & 1);

          v290 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v291 = *MEMORY[0x277CE13B8];
          v292 = sub_24F927748();
          v293 = v465;
          (*(*(v292 - 8) + 104))(&v465[v290], v291, v292);
          *v293 = v283;
          *(v293 + 8) = v285;
          *(v293 + 16) = v287 & 1;
          *(v293 + 24) = v289;
          v294 = *(v277 + v418[28]);
          v295 = swift_getKeyPath();
          v296 = v512;
          v297 = v293 + *(v512 + 36);
          *v297 = v295;
          *(v297 + 8) = v294;
          *(v297 + 16) = 0;
          v298 = v492;
          sub_24E6009C8(v293, v492, &qword_27F214B98);
          v299 = 0;
          v132 = v534;
          v133 = v531;
          v134 = v530;
        }

        else
        {
LABEL_78:
          v299 = 1;
          v132 = v534;
          v133 = v531;
          v134 = v530;
          v296 = v512;
          v298 = v492;
        }

        (*(v501 + 56))(v298, v299, 1, v296);
        sub_24E60169C(v298, v469, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v315 = v471;
        sub_24F924E28();
        sub_24E60169C(v315, v498, &qword_27F214BD8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v316 = v500;
        sub_24F924E28();
        sub_24E601704(v315, &qword_27F214BD8);
        sub_24E60169C(v316, v520, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v317 = v521;
        sub_24F924E28();
        sub_24E601704(v316, &qword_27F214BC8);
        sub_24E60169C(v317, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v317, &qword_27F214B10);
        v303 = v492;
LABEL_80:
        v318 = &qword_27F214B88;
        goto LABEL_91;
      case 9:
        v540 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00);
        sub_24E63D294();
        goto LABEL_50;
      case 10:
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
        v265 = v476;
        sub_24F924E28();
        sub_24E60169C(v265, v498, &qword_27F214BF0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v266 = v500;
        sub_24F924E28();
        sub_24E601704(v265, &qword_27F214BF0);
        sub_24E60169C(v266, v520, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v267 = v521;
        sub_24F924E28();
        sub_24E601704(v266, &qword_27F214BC8);
        sub_24E60169C(v267, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v267, &qword_27F214B10);
        goto LABEL_52;
      case 11:
        if (v101 == 1)
        {
          v136 = 2;
        }

        else
        {
          v136 = 1;
        }

        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v138 = v451;
        (*(*(v137 - 8) + 56))(v451, v136, 5, v137);
        v139 = v452;
        sub_24E92C5CC(v138, v452, type metadata accessor for CardContentBackgroundStyle);
        sub_24E92CCE0(v139, v490, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63CF80();
        v140 = v491;
        sub_24F924E28();
        sub_24E60169C(v140, v504, &qword_27F214C88);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v141 = v505;
        sub_24F924E28();
        sub_24E601704(v140, &qword_27F214C88);
        sub_24E60169C(v141, v516, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v142 = v517;
        sub_24F924E28();
        sub_24E601704(v141, &qword_27F214C60);
        sub_24E60169C(v142, v526, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v142, &qword_27F214C50);
        v144 = type metadata accessor for CardContentBackgroundStyle;
        v145 = v139;
LABEL_47:
        sub_24E92BA00(v145, v144);
        goto LABEL_52;
      case 12:
        v179 = v101;
        if (v101 - 2 < 4)
        {
          v180 = sub_24F926C98();
          v181 = v447;
          sub_24E60169C(v99 + v94[10], v447, &qword_27F213FB0);
          v182 = v448;
          sub_24F6C4E24(v181, v179 != 5, v180, v448);

          sub_24E601704(v181, &qword_27F213FB0);
          sub_24E60169C(v182, v458, &qword_27F214A10);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          sub_24E63D150();
          v183 = v488;
          sub_24F924E28();
          v184 = v182;
          v185 = &qword_27F214A10;
LABEL_89:
          sub_24E601704(v184, v185);
          v132 = v534;
          v133 = v531;
          v134 = v530;
          goto LABEL_90;
        }

        if (!v101)
        {
          v359 = sub_24F926C98();
          v360 = sub_24F925808();
          v361 = v430;
          *v430 = v359;
          *(v361 + 8) = v360;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
          sub_24E63D098();
          sub_24E63D150();
          v362 = v431;
          sub_24F924E28();
          sub_24E60169C(v362, v458, &qword_27F214CA8);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          v183 = v488;
          sub_24F924E28();

          v184 = v362;
          v185 = &qword_27F214CA8;
          goto LABEL_89;
        }

        v377 = v425;
        sub_24E60169C(v99 + v94[17], v425, &qword_27F21F550);
        v378 = (*(v423 + 48))(v377, 1, v424);
        v133 = v531;
        v134 = v530;
        if (v378 == 1)
        {
          sub_24E601704(v377, &qword_27F21F550);
          v379 = type metadata accessor for ColorGroup();
          v380 = v427;
          (*(*(v379 - 8) + 56))(v427, 1, 1, v379);
        }

        else
        {
          v391 = v419;
          sub_24E92CCE0(v377, v419, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v392 = v391;
          v393 = v420;
          sub_24E92C5CC(v392, v420, type metadata accessor for JSColor);
          v380 = v427;
          if (qword_27F20FEE0 != -1)
          {
            swift_once();
          }

          ColorGrouping.colorGroup(for:)(*(v393 + *(v421 + 24)));
          sub_24E92BA00(v393, type metadata accessor for JSColor);
          sub_24E92BA00(v377, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v394 = type metadata accessor for ColorGroup();
          v395 = *(v394 - 8);
          if ((*(v395 + 48))(v380, 1, v394) != 1)
          {
            v405 = v446;
            sub_24E92C5CC(v380, v446, type metadata accessor for ColorGroup);
            (*(v395 + 56))(v405, 0, 1, v394);
            v132 = v534;
            goto LABEL_118;
          }
        }

        v396 = v422;
        sub_24E60169C(v99 + v94[10], v422, &qword_27F213FB0);
        v397 = v464;
        v398 = v466;
        if ((*(v464 + 48))(v396, 1, v466) == 1)
        {
          sub_24E601704(v396, &qword_27F213FB0);
          v399 = type metadata accessor for ColorGroup();
          (*(*(v399 - 8) + 56))(v446, 1, 1, v399);
          v132 = v534;
        }

        else
        {
          v400 = sub_24F9289A8();
          if (v400)
          {
            v401 = qword_27F20FEE0;
            v402 = v400;
            v132 = v534;
            if (v401 != -1)
            {
              v416 = v402;
              swift_once();
              v402 = v416;
            }

            v403 = v402;
            v404 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v404);

            v396 = v422;
          }

          else
          {
            v406 = type metadata accessor for ColorGroup();
            (*(*(v406 - 8) + 56))(v446, 1, 1, v406);
            v132 = v534;
          }

          (*(v397 + 8))(v396, v398);
        }

        v407 = type metadata accessor for ColorGroup();
        if ((*(*(v407 - 8) + 48))(v380, 1, v407) != 1)
        {
          sub_24E601704(v380, &qword_27F2190D8);
        }

LABEL_118:
        v408 = sub_24F926C98();
        v409 = sub_24F927618();
        v411 = v410;
        v412 = v426;
        v413 = v426 + *(v459 + 36);
        sub_24F594764(v446, 1, v413);
        v414 = (v413 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0) + 36));
        *v414 = v409;
        v414[1] = v411;
        *v412 = v408;
        sub_24E60169C(v412, v430, &qword_27F214A10);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
        sub_24E63D098();
        sub_24E63D150();
        v415 = v431;
        sub_24F924E28();
        sub_24E60169C(v415, v458, &qword_27F214CA8);
        swift_storeEnumTagMultiPayload();
        sub_24E63D00C();
        v183 = v488;
        sub_24F924E28();
        sub_24E601704(v415, &qword_27F214CA8);
        sub_24E601704(v412, &qword_27F214A10);
        sub_24E601704(v446, &qword_27F2190D8);
LABEL_90:
        sub_24E60169C(v183, v490, &qword_27F214C98);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63CF80();
        v363 = v491;
        sub_24F924E28();
        sub_24E60169C(v363, v504, &qword_27F214C88);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v364 = v505;
        sub_24F924E28();
        sub_24E601704(v363, &qword_27F214C88);
        sub_24E60169C(v364, v516, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v365 = v517;
        sub_24F924E28();
        sub_24E601704(v364, &qword_27F214C60);
        sub_24E60169C(v365, v526, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v365, &qword_27F214C50);
        v303 = v488;
        v318 = &qword_27F214C98;
LABEL_91:
        sub_24E601704(v303, v318);
LABEL_92:
        v135 = v529;
        goto LABEL_93;
      case 13:
        v231 = v535;
        sub_24E60169C(&v535[v94[20]], v470, &qword_27F21B270);
        sub_24E60169C(v231 + v94[19], &v537, qword_27F24EC90);
        if (v101 <= 2u)
        {
          v143 = v527;
          v232 = v455;
LABEL_101:
          v132 = v534;
          v133 = v531;
          v134 = v530;
          v135 = v529;
          v358 = v467;
          goto LABEL_102;
        }

        v143 = v527;
        v232 = v455;
        if (v101 == 3)
        {
          goto LABEL_101;
        }

        v132 = v534;
        v133 = v531;
        v134 = v530;
        v135 = v529;
        v358 = v467;
        if (v101 != 4)
        {
          v390 = 1;
          goto LABEL_103;
        }

LABEL_102:
        v390 = sub_24F92CE08();
LABEL_103:

        v381 = v450;
        sub_24E6009C8(v470, v450, &qword_27F21B270);
        v382 = v475;
        v383 = v381 + *(v475 + 20);
        v384 = v538;
        *v383 = v537;
        *(v383 + 16) = v384;
        *(v383 + 32) = v539;
        *(v381 + *(v382 + 24)) = v390 & 1;
        *(v381 + *(v382 + 28)) = v232;
        v385 = v381;
        v386 = v480;
        sub_24E92C5CC(v385, v480, type metadata accessor for CardPrimaryActionButton);
        sub_24E92CCE0(v386, v358, type metadata accessor for CardPrimaryActionButton);
        swift_storeEnumTagMultiPayload();
        sub_24E92CBAC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);

        v387 = v481;
        sub_24F924E28();
        sub_24E60169C(v387, v504, &qword_27F214C70);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E92B93C(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
        v388 = v505;
        sub_24F924E28();
        sub_24E601704(v387, &qword_27F214C70);
        sub_24E60169C(v388, v516, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v389 = v517;
        sub_24F924E28();
        sub_24E601704(v388, &qword_27F214C60);
        sub_24E60169C(v389, v526, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        sub_24F924E28();
        sub_24E601704(v389, &qword_27F214C50);
        sub_24E92BA00(v480, type metadata accessor for CardPrimaryActionButton);
LABEL_93:
        sub_24E92BA00(v535, type metadata accessor for CommonCardAttributes);
        sub_24E6009C8(v143, v135, &qword_27F214B00);
        v131 = 0;
        break;
      case 14:
        LOBYTE(v540) = 1;
LABEL_49:
        sub_24F924E28();
        v540 = v537;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00);
        sub_24E63D294();
LABEL_50:
        sub_24F924E28();
        v198 = BYTE1(v537);
        v199 = v516;
        *v516 = v537;
        v199[1] = v198;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v188 = v517;
        sub_24F924E28();
LABEL_51:
        sub_24E60169C(v188, v526, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v188, &qword_27F214C50);
LABEL_52:
        v132 = v534;
        v133 = v531;
        v134 = v530;
        goto LABEL_92;
      default:
        v105 = *(v535 + 2);
        if (!v105)
        {
          goto LABEL_73;
        }

        v106 = v101;
        v107 = *(v535 + 1);
        v108 = HIBYTE(v105) & 0xF;
        if ((v105 & 0x2000000000000000) == 0)
        {
          v108 = v107 & 0xFFFFFFFFFFFFLL;
        }

        if (v108)
        {
          if (v106 == 1)
          {
            *&v537 = *(v535 + 1);
            *(&v537 + 1) = v105;
            sub_24E600AEC();

            v109 = sub_24F925E18();
            v111 = v110;
            v113 = v112;
            v114 = v536;
            v115 = sub_24F925C98();
            v117 = v116;
            v119 = v118;
            v121 = v120;
            sub_24E600B40(v109, v111, v113 & 1);

            *&v537 = v115;
            *(&v537 + 1) = v117;
            LOBYTE(v109) = v119 & 1;
            LOBYTE(v538) = v119 & 1;
            *(&v538 + 1) = v121;
            v122 = v429;
            sub_24F9268B8();
            sub_24E600B40(v115, v117, v109);

            v123 = *(v114 + v89[7]);
            v124 = swift_getKeyPath();
            v125 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70) + 36);
            *v125 = v124;
            *(v125 + 8) = v123;
            *(v125 + 16) = 0;
            LODWORD(v124) = sub_24F9251C8();
            v126 = (v122 + *(v435 + 36));
            v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
            v128 = *MEMORY[0x277CE13B8];
            v129 = sub_24F927748();
            (*(*(v129 - 8) + 104))(&v126[v127], v128, v129);
            *v126 = v124;
            sub_24E60169C(v122, v436, &qword_27F214B60);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24E92CBAC(&qword_27F214B78, type metadata accessor for CardElementView.Category);
            v130 = v433;
            sub_24F924E28();
            sub_24E601704(v122, &qword_27F214B60);
          }

          else
          {
            v367 = v94[6];
            v368 = v437;
            v369 = v428;
            sub_24E60169C(&v535[v367], &v428[*(v437 + 20)], &qword_27F213FB0);
            v370 = *(v536 + v89[9]);
            v371 = *(v536 + v89[10]);
            v372 = *(v536 + v89[8]);
            v373 = *(v536 + v89[6]);
            *v369 = v107;
            v369[1] = v105;
            *(v369 + v368[6]) = v370;
            *(v369 + v368[7]) = v371;
            *(v369 + v368[8]) = v372;
            *(v369 + v368[9]) = v373;
            *&v537 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            *&v537 = 0x4008000000000000;
            sub_24F9237C8();
            *&v537 = 0x4018000000000000;
            sub_24F9237C8();
            *&v537 = 0x4010000000000000;
            sub_24F9237C8();
            sub_24E92CCE0(v369, v436, type metadata accessor for CardElementView.Category);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24E92CBAC(&qword_27F214B78, type metadata accessor for CardElementView.Category);
            v130 = v433;
            sub_24F924E28();
            sub_24E92BA00(v369, type metadata accessor for CardElementView.Category);
          }

          v132 = v534;
          v133 = v531;
          v134 = v530;
          v135 = v529;
          v308 = v493;
          sub_24E6009C8(v130, v493, &qword_27F214B50);
          v304 = 0;
          v305 = v495;
          v306 = v463;
          v307 = v462;
        }

        else
        {
LABEL_73:
          v304 = 1;
          v132 = v534;
          v133 = v531;
          v134 = v530;
          v135 = v529;
          v305 = v495;
          v306 = v463;
          v307 = v462;
          v308 = v493;
        }

        (*(v307 + 56))(v308, v304, 1, v306);
        sub_24E60169C(v308, v305, &qword_27F214B40);
        swift_storeEnumTagMultiPayload();
        sub_24E92C2CC(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
        sub_24E92C2CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
        v374 = v487;
        sub_24F924E28();
        sub_24E60169C(v374, v508, &qword_27F214B30);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v375 = v509;
        sub_24F924E28();
        sub_24E601704(v374, &qword_27F214B30);
        sub_24E60169C(v375, v520, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v376 = v521;
        sub_24F924E28();
        sub_24E601704(v375, &qword_27F214B20);
        sub_24E60169C(v376, v526, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v143 = v527;
        sub_24F924E28();
        sub_24E601704(v376, &qword_27F214B10);
        v356 = v493;
        v357 = &qword_27F214B40;
LABEL_98:
        sub_24E601704(v356, v357);
        goto LABEL_93;
    }
  }

  else
  {
    sub_24E92BA00(v535, type metadata accessor for CommonCardAttributes);
    v131 = 1;
    v132 = v534;
    v133 = v531;
    v134 = v530;
    v135 = v529;
  }

  (*(v134 + 56))(v135, v131, 1, v133);
  sub_24E6009C8(v135, v132, &qword_27F214A20);
  return sub_24E92BA00(v536, type metadata accessor for CardLayoutMetrics);
}