uint64_t sub_100086528(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = *(result + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;

      sub_1000C6094();

      LODWORD(v4) = v27;
      v5 = &selRef_constraintEqualToConstant_;
      if ([v3 publicPermission] == 1)
      {
        v6 = &selRef_constraintEqualToConstant_;
        v7 = [v3 participants];
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        v8 = sub_1000C6E94();

        if (v8 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C72F4())
        {

          if (!i)
          {
            break;
          }

          v10 = [v3 v6[66]];
          v11 = sub_1000C6E94();

          v24 = v4;
          if (v11 >> 62)
          {
            v12 = sub_1000C72F4();
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = &unk_100113000;
          v25 = v3;
          if (v12)
          {
            v3 = 0;
            v4 = v11 & 0xC000000000000001;
            v5 = (v11 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v4)
              {
                v14 = sub_1000C7254();
              }

              else
              {
                if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v14 = *(v11 + 8 * v3 + 32);
              }

              v6 = v14;
              v15 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (-[SEL role](v14, "role") == 1 || [v6 v13[352]] != 2)
              {
              }

              else
              {
                sub_1000C7284();
                v16 = _swiftEmptyArrayStorage[2];
                sub_1000C72B4();
                v13 = &unk_100113000;
                sub_1000C72C4();
                sub_1000C7294();
              }

              ++v3;
              if (v15 == v12)
              {
                v3 = v25;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
          }

          else
          {
LABEL_26:

            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v26 = sub_1000C72F4();
            }

            else
            {
              v26 = _swiftEmptyArrayStorage[2];
            }

            v18 = [v3 participants];
            v4 = sub_1000C6E94();

            if (v4 >> 62)
            {
              v19 = sub_1000C72F4();
              if (!v19)
              {
LABEL_50:

                if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
                {
                  v23 = sub_1000C72F4();
                }

                else
                {
                  v23 = _swiftEmptyArrayStorage[2];
                }

                if (v26 <= 0)
                {

                  if (v23 > 0)
                  {
                    return 1;
                  }

                  else
                  {
                    return v24;
                  }
                }

                else if (v23 < 1)
                {

                  return 2;
                }

                else
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_1000C6094();

                  if (_swiftEmptyArrayStorage == 3)
                  {
                    return 2;
                  }

                  else
                  {
                    return 3;
                  }
                }
              }
            }

            else
            {
              v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v19)
              {
                goto LABEL_50;
              }
            }

            v3 = 0;
            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v20 = sub_1000C7254();
              }

              else
              {
                if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v20 = *(v4 + 8 * v3 + 32);
              }

              v6 = v20;
              v21 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (-[SEL role](v20, "role") == 1 || [v6 v13[352]] != 3)
              {
              }

              else
              {
                sub_1000C7284();
                v22 = _swiftEmptyArrayStorage[2];
                sub_1000C72B4();
                v13 = &unk_100113000;
                sub_1000C72C4();
                sub_1000C7294();
              }

              ++v3;
              if (v21 == v19)
              {
                v3 = v25;
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }
      }

      v17 = [v3 v5[80]];

      if (v17 == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100086A5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

void sub_100086B10()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v12 = v55;
  if (v55)
  {
    v13 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:v55];
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v13;

    v14 = v13;
    sub_1000C60A4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v15 = v55;
    if (v55)
    {
      if (*(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID + 8))
      {
        v53 = v5;
        v16 = *(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID);
        v17 = objc_allocWithZone(CKContainerOptions);

        v18 = [v17 init];
        v54 = v15;
        v19 = v18;
        v20 = objc_allocWithZone(CKAccountOverrideInfo);
        v21 = sub_1000C6D44();

        v22 = v20;
        v23 = v19;
        v24 = [v22 initWithAccountID:v21];

        [v23 setAccountOverrideInfo:v24];
        v25 = objc_allocWithZone(CKContainer);
        v26 = [v25 initWithContainerID:v54 options:v23];
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v26;

        sub_1000C60A4();
        sub_1000C5F54();

        v27 = sub_1000C5F64();
        v28 = sub_1000C6FF4();

        if (os_log_type_enabled(v27, v28))
        {
          v48 = v24;
          v49 = v2;
          v50 = v28;
          v51 = v27;
          v52 = v23;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v57 = v30;
          v31 = v29;
          *v29 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          v32 = v55;
          v5 = v53;
          if (v55 && (v33 = [v55 options], v32, v32 = objc_msgSend(v33, "accountOverrideInfo"), v33, v32))
          {
            v34 = [v32 accountID];

            if (v34)
            {
              v32 = sub_1000C6D84();
              v36 = v35;
            }

            else
            {
              v32 = 0;
              v36 = 0;
            }

            v5 = v53;
          }

          else
          {
            v36 = 0;
          }

          v55 = v32;
          v56 = v36;
          sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
          v39 = sub_1000C6D94();
          v41 = sub_100071844(v39, v40, &v57);

          *(v31 + 1) = v41;
          v42 = v51;
          _os_log_impl(&_mh_execute_header, v51, v50, "replaceContainer container.options.accountOverrideInfo.accountID: %s", v31, 0xCu);
          sub_100010544(v30);

          (*(v5 + 8))(v11, v4);
        }

        else
        {

          v5 = v53;
          (*(v53 + 8))(v11, v4);
        }
      }

      else
      {
        v37 = [objc_allocWithZone(CKContainer) initWithContainerID:v55];
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v37;

        v38 = v37;
        sub_1000C60A4();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (v55)
    {
    }

    else
    {
      sub_1000C5F54();
      v43 = sub_1000C5F64();
      v44 = sub_1000C6FD4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "replaceContainer throwing as it didn't build a container", v45, 2u);
      }

      (*(v5 + 8))(v9, v4);
      sub_1000100B0();
      swift_allocError();
      *v46 = 0xD000000000000012;
      *(v46 + 8) = 0x80000001000DB990;
      *(v46 + 16) = xmmword_1000D1B10;
      *(v46 + 32) = 0x80000001000D8E80;
      *(v46 + 40) = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_100087238()
{
  v31 = sub_1000C5F74();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v30 - v5;
  v7 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    v16 = sub_1000C5F64();
    v17 = sub_1000C6FD4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "can't get the user iCloud account ID without a document/folder sharing URL--may get here from SPI with no fileURL, will try userICloudEDSAccountID then fall back on signed-in account w. accountID == nil", v18, 2u);
    }

    (*(v0 + 8))(v4, v31);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_1000C5D24(v19);
    v21 = v20;
    v22 = [objc_opt_self() accountDescriptorForURL:v20 mustBeLoggedIn:1];

    if (v22)
    {
      v23 = [v22 accountIdentifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1000C6D84();

        (*(v12 + 8))(v15, v11);
        return v25;
      }
    }

    sub_1000C5F54();
    v27 = sub_1000C5F64();
    v28 = sub_1000C6FD4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "accountID must be non-nil for document/folder sharing", v29, 2u);
    }

    (*(v0 + 8))(v6, v31);
    (*(v12 + 8))(v15, v11);
  }

  return 0;
}

uint64_t sub_10008765C()
{
  v1 = v0;
  v2 = sub_10000FEB8(&qword_100118C60, &qword_1000D1E38);
  v126 = *(v2 - 8);
  v127 = v2;
  v3 = *(v126 + 64);
  v4 = __chkstk_darwin(v2);
  v124 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v125 = &v87 - v6;
  v120 = sub_10000FEB8(&qword_100118308, &qword_1000D0A60);
  v117 = *(v120 - 8);
  v7 = *(v117 + 64);
  __chkstk_darwin(v120);
  v114 = &v87 - v8;
  v121 = sub_10000FEB8(&qword_100118310, &qword_1000D0A68);
  v9 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v115 = &v87 - v10;
  v110 = sub_10000FEB8(&qword_100118C68, &qword_1000D1E40);
  v109 = *(v110 - 8);
  v11 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v87 - v12;
  v112 = sub_10000FEB8(&qword_100118C70, &qword_1000D1E48);
  v13 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v111 = &v87 - v14;
  v119 = sub_10000FEB8(&qword_100118C78, &qword_1000D1E50);
  v116 = *(v119 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v119);
  v113 = &v87 - v16;
  v17 = sub_10000FEB8(&qword_100118C80, &unk_1000D1E58);
  v122 = *(v17 - 8);
  v123 = v17;
  v18 = *(v122 + 64);
  __chkstk_darwin(v17);
  v118 = &v87 - v19;
  v107 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v106 = *(v107 - 8);
  v20 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = &v87 - v21;
  v130 = sub_10000FEB8(&qword_100118C58, &qword_1000D1DA0);
  v104 = *(v130 - 8);
  v22 = *(v104 + 64);
  __chkstk_darwin(v130);
  v103 = &v87 - v23;
  v102 = sub_10000FEB8(&qword_100118C50, &qword_1000D1D98);
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v87 - v25;
  v129 = sub_10000FEB8(&qword_100118568, &unk_1000D0BD0);
  v99 = *(v129 - 8);
  v26 = *(v99 + 64);
  __chkstk_darwin(v129);
  v98 = &v87 - v27;
  v128 = sub_10000FEB8(&qword_100118C48, &unk_1000D1D88);
  v95 = *(v128 - 8);
  v28 = *(v95 + 64);
  __chkstk_darwin(v128);
  v94 = &v87 - v29;
  v93 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v92 = *(v93 - 8);
  v30 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v87 - v31;
  v90 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  v89 = *(v90 - 8);
  v32 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v87 - v33;
  v87 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v34 = *(*(v87 - 8) + 64);
  v35 = __chkstk_darwin(v87);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v87 - v38;
  v40 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v87 - v43;
  v45 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v87 - v48;
  v50 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShare;
  v131 = 0;
  sub_10000FEB8(&qword_100118B40, &qword_1000D31C0);
  sub_1000C6054();
  v51 = *(v46 + 32);
  v96 = v50;
  v97 = v45;
  v51(v50, v49, v45);
  v52 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__currentUserIsOwner;
  LOBYTE(v131) = 1;
  sub_1000C6054();
  (*(v41 + 32))(v1 + v52, v44, v40);
  v53 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__sharingURL;
  v54 = sub_1000C5D84();
  (*(*(v54 - 8) + 56))(v39, 1, 1, v54);
  sub_10000FF70(v39, v37);
  v55 = v88;
  sub_1000C6054();
  sub_100010F24(v39, &qword_100116260, &qword_1000CD940);
  (*(v89 + 32))(v1 + v53, v55, v90);
  v56 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShareParticipantsCoOwnersState;
  v131 = &off_100106FD0;
  v57 = v91;
  sub_1000C6054();
  (*(v92 + 32))(v1 + v56, v57, v93);
  v58 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerID;
  v131 = 0;
  sub_10000FEB8(&qword_100118B50, &qword_1000D1B38);
  v59 = v94;
  sub_1000C6054();
  (*(v95 + 32))(v58, v59, v128);
  v60 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerSetupInfo;
  v131 = 0;
  sub_10000FEB8(&qword_100118580, &qword_1000D1B40);
  v61 = v98;
  sub_1000C6054();
  (*(v99 + 32))(v60, v61, v129);
  v62 = (v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID);
  *v62 = 0;
  v62[1] = 0;
  v63 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__container;
  v131 = 0;
  sub_10000FEB8(&qword_100118B68, &qword_1000D1B60);
  v64 = v100;
  sub_1000C6054();
  v65 = v1 + v63;
  v66 = v1;
  (*(v101 + 32))(v65, v64, v102);
  v67 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckSystemSharingUIObserver;
  v131 = 0;
  v68 = sub_10000FEB8(&unk_100118B78, &qword_1000D1B68);
  v69 = v103;
  v102 = v68;
  sub_1000C6054();
  (*(v104 + 32))(v67, v69, v130);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v70 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v70 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_store) = v70;
  swift_beginAccess();
  v71 = v105;
  sub_1000C6064();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930);

  v72 = v107;
  sub_1000C6124();

  (*(v106 + 8))(v71, v72);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v73 = v108;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118C88, &qword_100118C68, &qword_1000D1E40);
  sub_10008AC2C();
  v74 = v110;
  sub_1000C6114();
  (*(v109 + 8))(v73, v74);
  swift_beginAccess();
  v75 = v114;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118570, &qword_100118308, &qword_1000D0A60);
  sub_100079FFC();
  v76 = v120;
  sub_1000C6114();
  (*(v117 + 8))(v75, v76);
  sub_10001E490(&qword_100118CA0, &qword_100118C70, &qword_1000D1E48);
  sub_10001E490(&qword_1001185A0, &qword_100118310, &qword_1000D0A68);
  v77 = v113;
  sub_1000C5F84();
  v78 = swift_allocObject();
  swift_weakInit();

  v79 = swift_allocObject();
  *(v79 + 16) = sub_10008AD18;
  *(v79 + 24) = v78;
  sub_10001E490(&qword_100118CA8, &qword_100118C78, &qword_1000D1E50);
  v81 = v118;
  v80 = v119;
  sub_1000C60E4();

  (*(v116 + 8))(v77, v80);
  swift_beginAccess();
  v82 = v125;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118CB0, &qword_100118C80, &unk_1000D1E58);
  v83 = v123;
  sub_1000C6134();
  (*(v122 + 8))(v81, v83);
  v85 = v126;
  v84 = v127;
  (*(v126 + 16))(v124, v82, v127);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (*(v85 + 8))(v82, v84);
  return v66;
}

void sub_1000887E4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!v1)
    {

      return;
    }

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    v4 = [v2 owner];
    v5 = v4;
    if (v3)
    {
      if (v4)
      {
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        sub_1000C7184();
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_10;
      }

      v3 = v4;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C60A4();
  }
}

id sub_100088924(id a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v4 = &selRef_initWithContainerSetupInfo_;
      a1 = a2;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_9;
      }

      v4 = &selRef_initWithContainerID_;
    }

    a1 = [objc_allocWithZone(CKContainer) *v4];
    if (a1)
    {
      v5 = objc_allocWithZone(CKSystemSharingUIObserver);
      v6 = a1;
      a1 = [v5 initWithContainer:v6];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = a2;
      v9 = a2;

      sub_1000C70E4();

      swift_allocObject();
      swift_weakInit();

      sub_1000C70F4();

      return a1;
    }

LABEL_9:

    return a1;
  }

  return 0;
}

uint64_t sub_100088AFC(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_1000C5F74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v30 - v15;
  if (a3)
  {
    sub_1000C5F54();
    swift_errorRetain();
    v17 = sub_1000C5F64();
    v18 = sub_1000C6FD4();
    sub_10008AEFC(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v30[3] = a2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v21 = sub_1000C6D94();
      v23 = sub_100071844(v21, v22, v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "ckShareModel systemSharingUIDidSaveShareBlock error: %s", v19, 0xCu);
      sub_100010544(v20);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v25 = sub_1000C6F44();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v26 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1000C6F14();

    sub_10008AF08(a2, 0);
    v27 = a5;
    v28 = sub_1000C6F04();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = &protocol witness table for MainActor;
    v29[4] = v26;
    v29[5] = a2;
    v29[6] = a5;

    sub_1000B8860(0, 0, v16, &unk_1000D1E88, v29);
  }
}

uint64_t sub_100088E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_1000C5F74();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = sub_1000C5D84();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = sub_1000C6F14();
  v6[21] = sub_1000C6F04();
  v14 = sub_1000C6ED4();
  v6[22] = v14;
  v6[23] = v13;

  return _swift_task_switch(sub_100088FCC, v14, v13);
}

uint64_t sub_100088FCC()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    v8 = *(v0 + 168);
LABEL_20:

    goto LABEL_21;
  }

  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (!v3)
  {
    v9 = *(v0 + 168);
LABEL_19:

    goto LABEL_20;
  }

  v4 = [*(v0 + 72) recordID];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *(v0 + 40);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = [*(v0 + 40) recordID];

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v11 = *(v0 + 168);

LABEL_21:
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27();
  }

  if (!v6)
  {
LABEL_11:
    v10 = *(v0 + 168);

    goto LABEL_21;
  }

  sub_100010778(0, &qword_100118CB8, CKRecordID_ptr);
  v7 = sub_1000C7184();

  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = [*(v0 + 72) URL];
  if (!v12)
  {
LABEL_18:
    v21 = *(v0 + 168);

    goto LABEL_19;
  }

  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = v12;
  sub_1000C5D44();

  (*(v16 + 32))(v14, v15, v17);
  *(v0 + 208) = sub_1000C6F04();
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_1000892BC;

  return sub_100064C74();
}

uint64_t sub_1000892BC()
{
  v2 = v0;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 224) = v2;

  v7 = sub_1000C6ED4();
  if (v2)
  {
    v8 = sub_1000895E4;
  }

  else
  {
    v8 = sub_100089418;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100089418()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10008947C, v2, v3);
}

uint64_t sub_10008947C()
{
  v1 = v0[15];
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ckShareModel calling notifyClientShareDidChange()", v4, 2u);
  }

  v5 = v0[25];
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];

  v9 = *(v8 + 8);
  v0[29] = v9;
  v9(v6, v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000B5CC();
    swift_unknownObjectRelease();
  }

  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1000898CC;
  v11 = v0[25];
  v12 = v0[19];
  v13 = v0[10];

  return sub_1000658E8(v12, v13);
}

uint64_t sub_1000895E4()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_100089648, v2, v3);
}

uint64_t sub_100089648()
{
  v37 = v0;
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[14];

  sub_1000C5F54();
  swift_errorRetain();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v30 = v0[25];
    v31 = v0[24];
    v7 = v0[17];
    v34 = v0[16];
    v35 = v0[19];
    v8 = v0[12];
    v32 = v0[11];
    v33 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    v0[6] = v6;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v11 = sub_1000C6D94();
    v13 = sub_100071844(v11, v12, &v36);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "ckShareModel systemSharingUIDidSaveShareBlock failed to refetch share: %s", v9, 0xCu);
    sub_100010544(v10);

    (*(v8 + 8))(v33, v32);
    (*(v7 + 8))(v35, v34);
  }

  else
  {
    v14 = v0[28];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[12];

    (*(v22 + 8))(v20, v21);
    (*(v19 + 8))(v17, v18);
  }

  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000898CC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_100089ADC;
  }

  else
  {
    v7 = sub_100089A08;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100089A08()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  (*(v6 + 8))(v4, v5);
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100089ADC()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[13];

  sub_1000C5F54();
  swift_errorRetain();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[25];
    v36 = v0[19];
    v8 = v0[17];
    v33 = v0[29];
    v34 = v0[16];
    v29 = v0[24];
    v30 = v0[12];
    v31 = v0[11];
    v32 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v0[7] = v6;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v11 = sub_1000C6D94();
    v13 = sub_100071844(v11, v12, &v38);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "ckShareModel systemSharingUIDidSaveShareBlock failed to fetch share metadata: %s", v9, 0xCu);
    sub_100010544(v10);

    v33(v32, v31);
    (*(v8 + 8))(v36, v34);
  }

  else
  {
    v14 = v0[31];
    v15 = v0[29];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[17];
    v35 = v0[16];
    v37 = v0[19];
    v19 = v0[12];
    v20 = v0[13];
    v21 = v0[11];

    v15(v20, v21);
    (*(v18 + 8))(v37, v35);
  }

  v23 = v0[18];
  v22 = v0[19];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[13];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100089D74(void *a1, uint64_t a2, char a3)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v37 - v8;
  v10 = sub_1000C5F74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  if (a3)
  {
    sub_1000C5F54();
    swift_errorRetain();
    v18 = sub_1000C5F64();
    v19 = sub_1000C6FD4();
    sub_10008ADE8(a2, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      v37[3] = a2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v22 = sub_1000C6D94();
      v24 = sub_100071844(v22, v23, v37);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "ckShareModel systemSharingUIDidStopSharingBlock error: %s", v20, 0xCu);
      sub_100010544(v21);
    }

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    sub_1000C5F54();
    v26 = a1;
    v27 = sub_1000C5F64();
    v28 = sub_1000C6FF4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "ckShareModel systemSharingUIDidStopSharingBlock stopped sharing: %@", v29, 0xCu);
      sub_100010F24(v30, &qword_100117080, &unk_1000CC350);
    }

    (*(v11 + 8))(v17, v10);
    v32 = sub_1000C6F44();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1000C6F14();
    v34 = v26;

    v35 = sub_1000C6F04();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v33;
    v36[5] = v34;

    sub_1000B8860(0, 0, v9, &unk_1000D1E70, v36);
  }
}

uint64_t sub_10008A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1000C5F74();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_1000C6F14();
  v5[11] = sub_1000C6F04();
  v10 = sub_1000C6ED4();

  return _swift_task_switch(sub_10008A2B8, v10, v9);
}

uint64_t sub_10008A2B8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v3 = *(v0 + 40);
      if (v3)
      {
        v4 = [*(v0 + 40) recordID];

        if (v4)
        {
          v5 = *(v0 + 56);
          sub_100010778(0, &qword_100118CB8, CKRecordID_ptr);
          v6 = v5;
          v7 = sub_1000C7184();

          if (v7)
          {
            v8 = *(v0 + 80);
            sub_1000C5F54();
            v9 = sub_1000C5F64();
            v10 = sub_1000C6FF4();
            if (os_log_type_enabled(v9, v10))
            {
              v11 = swift_slowAlloc();
              *v11 = 0;
              _os_log_impl(&_mh_execute_header, v9, v10, "ckShareModel systemSharingUIDidStopSharingBlock dismissing", v11, 2u);
            }

            v13 = *(v0 + 72);
            v12 = *(v0 + 80);
            v14 = *(v0 + 64);

            (*(v13 + 8))(v12, v14);
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10000816C();
              v15 = sub_1000077D8();
              if (v15)
              {
                [v15 _shareWasMadePrivate];
                swift_unknownObjectRelease();
              }

              v16 = sub_1000077D8();
              if (v16)
              {
                [v16 _dismissViewControllerWithError:0];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                goto LABEL_16;
              }

              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

LABEL_16:
  v17 = *(v0 + 80);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10008A544()
{
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShare;
  v2 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__currentUserIsOwner;
  v4 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__sharingURL;
  v6 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShareParticipantsCoOwnersState;
  v8 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerID;
  v10 = sub_10000FEB8(&qword_100118C48, &unk_1000D1D88);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerSetupInfo;
  v12 = sub_10000FEB8(&qword_100118568, &unk_1000D0BD0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID + 8);

  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__container;
  v15 = sub_10000FEB8(&qword_100118C50, &qword_1000D1D98);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckSystemSharingUIObserver;
  v17 = sub_10000FEB8(&qword_100118C58, &qword_1000D1DA0);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  swift_weakDestroy();
  v18 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_store);

  return v0;
}

uint64_t sub_10008A7F8()
{
  sub_10008A544();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CKShareModel()
{
  result = qword_100118B28;
  if (!qword_100118B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008A8A4()
{
  sub_10002F0A0(319, &qword_100118B38, &qword_100118B40, &qword_1000D31C0);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_10001D1A8(319, &qword_100117460);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_10002F0A0(319, &qword_100118018, &qword_100116260, &qword_1000CD940);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_10001D1A8(319, &qword_1001168A0);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_10002F0A0(319, &qword_100118B48, &qword_100118B50, &qword_1000D1B38);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_10002F0A0(319, &qword_100118B58, &qword_100118580, &qword_1000D1B40);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_10002F0A0(319, &qword_100118B60, &qword_100118B68, &qword_1000D1B60);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_10002F0A0(319, &qword_100118B70, &unk_100118B78, &qword_1000D1B68);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10008ABEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10008AC2C()
{
  result = qword_100118C90;
  if (!qword_100118C90)
  {
    sub_100010624(&qword_100118B50, &qword_1000D1B38);
    sub_10008ACC8(&qword_100118C98, &qword_100118048, CKContainerID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C90);
  }

  return result;
}

uint64_t sub_10008ACC8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010778(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008AD20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008AD58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10008AD90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008ADE8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10008ADF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008AE3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10008A1C4(a1, v4, v5, v7, v6);
}

void sub_10008AEFC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10008AF08(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10008AF14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008AF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011080;

  return sub_100088E50(a1, v4, v5, v6, v7, v8);
}

id sub_10008B0F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeMessageView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008B164(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_10008B188@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = type metadata accessor for ComposeMessageView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator_completion];
  *v7 = v4;
  v7[1] = v3;
  sub_1000229B4(v4);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10008B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008B808();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008B26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008B808();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10008B2D0()
{
  sub_10008B808();
  sub_1000C6724();
  __break(1u);
}

uint64_t sub_10008B2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000FEB8(&qword_100118D78, &qword_1000D2050);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v29 = sub_1000C6A84();
  v6 = sub_1000C67F4();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v28 = sub_1000C6824();
  sub_100010F24(v5, &qword_100118D78, &qword_1000D2050);
  KeyPath = swift_getKeyPath();
  v26 = sub_1000C6A14();
  v25 = swift_getKeyPath();
  sub_1000C65D4();
  v8 = sub_1000C68C4();
  v10 = v9;
  v12 = v11;
  v7(v5, 1, 1, v6);
  sub_1000C6824();
  sub_100010F24(v5, &qword_100118D78, &qword_1000D2050);
  v13 = sub_1000C68B4();
  v15 = v14;
  LOBYTE(v7) = v16;
  v18 = v17;

  sub_1000500D8(v8, v10, v12 & 1);

  LOBYTE(v8) = v7 & 1;
  v30 = v7 & 1;
  v19 = v28;
  v21 = v26;
  v20 = KeyPath;
  *a1 = v29;
  *(a1 + 8) = v20;
  v22 = v25;
  *(a1 + 16) = v19;
  *(a1 + 24) = v22;
  *(a1 + 32) = v21;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v8;
  *(a1 + 64) = v18;

  sub_100050DE0(v13, v15, v8);

  sub_1000500D8(v13, v15, v8);
}

double sub_10008B5E8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C65F4();
  v14 = 1;
  sub_10008B2F8(&v8);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15 = v8;
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v21 = v12;
  v20[0] = v8;
  sub_10008B9C4(&v15, v7);
  sub_100010F24(v20, &qword_100118D70, &qword_1000D2048);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *v13;
  *(a1 + 33) = *&v13[16];
  v4 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v4;
  result = *&v13[63];
  *(a1 + 80) = *&v13[63];
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
  return result;
}

uint64_t sub_10008B6E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10008B744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10008B7B4()
{
  result = qword_100118D50;
  if (!qword_100118D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D50);
  }

  return result;
}

unint64_t sub_10008B808()
{
  result = qword_100118D58;
  if (!qword_100118D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D58);
  }

  return result;
}

uint64_t sub_10008B85C(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  if ([objc_opt_self() canSendText])
  {
    v6 = [objc_allocWithZone(MFMessageComposeViewController) init];
    sub_10000FEB8(&qword_100118D68, &qword_1000D1FD8);
    sub_1000C6754();
    [v6 setMessageComposeDelegate:v10];

    if (a2)
    {
      v7.super.isa = sub_1000C6E84().super.isa;
    }

    else
    {
      v7.super.isa = 0;
    }

    [v6 setRecipients:v7.super.isa];

    if (a4)
    {
      a4 = sub_1000C6D44();
    }

    [v6 setBody:a4];

    return v6;
  }

  else
  {
    v8 = objc_allocWithZone(sub_10000FEB8(&qword_100118D60, &qword_1000D1FD0));
    return sub_1000C6614();
  }
}

uint64_t sub_10008B9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100118D70, &qword_1000D2048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008BA48()
{
  result = qword_100118D80;
  if (!qword_100118D80)
  {
    sub_100010624(&qword_100118D88, &qword_1000D20B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D80);
  }

  return result;
}

uint64_t sub_10008BAB0()
{
  v1 = [v0 allowedParticipantAccessOptions];
  if (v1 == 3)
  {
    return 7958081;
  }

  if (v1 == 2)
  {
    return 0x6E65697069636552;
  }

  if (v1 == 1)
  {
    return 0xD000000000000010;
  }

  sub_1000C7244(17);

  strcpy(v3, "Unknown (raw: ");
  [v0 allowedParticipantAccessOptions];
  v4._countAndFlagsBits = sub_1000C7374();
  sub_1000C6E04(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000C6E04(v5);
  return v3[0];
}

uint64_t sub_10008BBE8()
{
  v1 = [v0 allowedParticipantPermissionOptions];
  if (v1 == 1)
  {
    return 0x6C6E4F2064616552;
  }

  if (v1 == 3)
  {
    return 7958081;
  }

  if (v1 == 2)
  {
    return 0x6972572F64616552;
  }

  sub_1000C7244(17);

  strcpy(v3, "Unknown (raw: ");
  [v0 allowedParticipantPermissionOptions];
  v4._countAndFlagsBits = sub_1000C7374();
  sub_1000C6E04(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000C6E04(v5);
  return v3[0];
}

uint64_t sub_10008BD18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10008BD60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008BDC8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  type metadata accessor for GlobalPermissionViewModel();
  sub_10008D374();
  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  sub_1000C6F14();

  v4 = sub_1000C6F04();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = a2;
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1000C6BC4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  sub_1000C6BD4();
  sub_1000C6BD4();
  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  sub_1000C6334();
  sub_10000FEB8(&qword_100118D90, &qword_1000D2358);
  sub_100010624(&qword_100118D98, &qword_1000D2360);
  sub_10008D558();
  swift_getOpaqueTypeConformance2();
  sub_10008D63C();
  return sub_1000C6324();
}

uint64_t sub_10008C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C6F14();

  v4 = sub_1000C6F04();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = a3;

  v6 = sub_1000C6F04();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a3;
  sub_1000C6BC4();
  sub_10000FEB8(&qword_100117138, &unk_1000CE1D0);
  sub_1000C6B94();
}

uint64_t sub_10008C650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10008C6D0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10008C744(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_1000C6F24();
  v10 = sub_1000C6F44();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1000C6F14();

  v11 = sub_1000C6F04();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a1;
  sub_1000B8860(0, 0, v9, &unk_1000D2420, v12);
}

uint64_t sub_10008C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 16) = a5;
  *(v6 + 24) = sub_1000C6F14();
  *(v6 + 32) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_10008C924, v8, v7);
}

uint64_t sub_10008C924()
{
  v1 = v0[3];
  v0[7] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v0[8] = v3;
  v0[9] = v2;

  return _swift_task_switch(sub_10008C9B0, v3, v2);
}

uint64_t sub_10008C9B0()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 16) + 16);
  *(v0 + 80) = *(v2 + 16);

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_10008CA7C;

  return sub_100019FA8(v1 + 1, v2, 1, 1);
}

uint64_t sub_10008CA7C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_10008CB98;
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_10003E4A4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10008CB98()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];

  sub_1000401D8(v1, 0xD000000000000029, 0x80000001000DBA70);

  v5 = v0[5];
  v6 = v0[6];

  return _swift_task_switch(sub_10003E5B0, v5, v6);
}

uint64_t sub_10008CC40(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = a1;

  sub_1000C60A4();
  sub_1000C6F24();
  v9 = sub_1000C6F44();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_1000C6F14();

  v10 = sub_1000C6F04();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = a1;
  *(v11 + 40) = a3;
  sub_1000B8860(0, 0, v8, &unk_1000D2410, v11);
}

uint64_t sub_10008CDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C6F14();

  v4 = sub_1000C6F04();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = a3;
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1000C6BC4();
  sub_10000FEB8(&qword_100117148, &qword_1000CE1E0);
  sub_1000C6B94();
}

uint64_t sub_10008CF50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C6604();
  sub_10008D0F4(v15);
  *&v14[7] = v15[0];
  *&v14[23] = v15[1];
  *&v14[39] = v15[2];
  *&v14[55] = v15[3];
  v4 = [objc_opt_self() labelColor];
  v5 = sub_1000C6A64();
  v11 = v3;
  v12[0] = 1;
  *&v12[17] = *&v14[16];
  *&v12[33] = *&v14[32];
  *&v12[49] = *&v14[48];
  *&v12[1] = *v14;
  *&v12[64] = *&v14[63];
  *&v12[72] = swift_getKeyPath();
  v13 = v5;
  v6 = *(a2 + 16);
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = sub_10000B7A8(), swift_unknownObjectRelease(), !v7))
  {
    [objc_allocWithZone(UIImage) init];
  }

  sub_1000C6A74();
  sub_10000FEB8(&qword_100118D98, &qword_1000D2360);
  sub_10008D558();
  sub_1000C6914();

  v9[4] = *&v12[48];
  v9[5] = *&v12[64];
  v10 = v13;
  v9[0] = v11;
  v9[1] = *v12;
  v9[2] = *&v12[16];
  v9[3] = *&v12[32];
  return sub_10008D698(v9);
}

uint64_t sub_10008D0F4@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  v7 = sub_1000C68A4();
  v29 = v8;
  v30 = v7;
  v28 = v9;
  v31 = v10;
  sub_1000500D8(v2, v4, v6 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_1000383C8();
  v11 = sub_1000C68D4();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_1000C67D4();
  v15 = sub_1000C68B4();
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v11, v13, v4 & 1);

  sub_1000C6A54();
  v20 = sub_1000C6884();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1000500D8(v15, v17, v19 & 1);

  *a1 = v30;
  *(a1 + 8) = v29;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v24 & 1;
  *(a1 + 56) = v26;
  sub_100050DE0(v30, v29, v28 & 1);

  sub_100050DE0(v20, v22, v24 & 1);

  sub_1000500D8(v20, v22, v24 & 1);

  sub_1000500D8(v30, v29, v28 & 1);
}

unint64_t sub_10008D374()
{
  result = qword_100117130;
  if (!qword_100117130)
  {
    type metadata accessor for GlobalPermissionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117130);
  }

  return result;
}

uint64_t sub_10008D41C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D49C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10003F7C8(a1);
}

uint64_t sub_10008D4A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D4E0(char *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10003F858(a1);
}

unint64_t sub_10008D558()
{
  result = qword_100118DA0;
  if (!qword_100118DA0)
  {
    sub_100010624(&qword_100118D98, &qword_1000D2360);
    sub_10001E490(&qword_100118DA8, &qword_100118DB0, &qword_1000D2368);
    sub_10001E490(&qword_100117D30, &qword_100117D38, &qword_1000D2370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118DA0);
  }

  return result;
}

unint64_t sub_10008D63C()
{
  result = qword_100118DB8;
  if (!qword_100118DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118DB8);
  }

  return result;
}

uint64_t sub_10008D698(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100118D98, &qword_1000D2360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011080;

  return sub_10004077C(a1, v4, v5, v7, v6);
}

uint64_t sub_10008D7DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10008D828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100017CBC;

  return sub_10008C884(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008D8F0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10003D958(a1);
}

uint64_t sub_10008D974@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000C6A34();
  result = sub_1000C62F4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

double sub_10008D9D0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10008D9E4()
{
  v0 = type metadata accessor for NetworkMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10008F180(1);
}

uint64_t sub_10008DA20()
{
  v0 = type metadata accessor for ActivitiesModelData();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  type metadata accessor for ActivityType(0);
  v4 = UIActivityTypeMail;
  sub_1000C6054();
  return v3;
}

uint64_t sub_10008DAA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_10000FEB8(&qword_100118DE0, &qword_1000D2678);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v61 - v5);
  v7 = sub_10000FEB8(&qword_100118DE8, &qword_1000D2680);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v69 = v61 - v9;
  v76 = sub_10000FEB8(&qword_100118DF0, &qword_1000D2688);
  v10 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v78 = v61 - v11;
  v73 = sub_10000FEB8(&qword_100118DF8, &qword_1000D2690);
  v12 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v72 = (v61 - v13);
  v77 = sub_10000FEB8(&qword_100118E00, &qword_1000D2698);
  v14 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v75 = v61 - v15;
  v74 = type metadata accessor for PeopleView();
  v16 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v70 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000FEB8(&qword_100118E08, &qword_1000D26A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v79 = v61 - v20;
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 16);
  type metadata accessor for NetworkMonitor();
  sub_10008E930(&qword_100118E10, type metadata accessor for NetworkMonitor);
  v67 = v22;
  v68 = v21;
  v66 = v23;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v82)
  {
    type metadata accessor for SharingModel();
    sub_10008E930(&qword_100117158, type metadata accessor for SharingModel);
    *v6 = sub_1000C6404();
    v6[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_10008E7E8();
    sub_10008EA84();
    return sub_1000C6624();
  }

  v63 = v18;
  v64 = v7;
  v65 = v3;
  v71 = v6;
  v26 = a1[3];
  v27 = a1[4];
  v28 = *(a1 + 40);
  type metadata accessor for SharingModel();
  sub_10008E930(&qword_100117158, type metadata accessor for SharingModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v29 = v82;
  v62 = v27;
  v61[1] = v28;
  v30 = *(sub_1000C6224() + 16);

  if (*(v30 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();
  }

  v31 = v71;
  if (v29 <= 1)
  {
    if (!v29)
    {
      v32 = v69;
      sub_1000C6274();
      sub_1000C6C74();
      v33 = v32 + *(v64 + 36);
      __asm { FMOV            V2.2D, #1.0 }

      *v33 = _Q2;
      *(v33 + 16) = v39;
      *(v33 + 24) = v40;
      v41 = &qword_100118DE8;
      v42 = &qword_1000D2680;
      sub_100017574(v32, v78, &qword_100118DE8, &qword_1000D2680);
      swift_storeEnumTagMultiPayload();
      sub_10008E874();
      sub_10008E9CC();
      v43 = v79;
      sub_1000C6624();
      v44 = v32;
LABEL_11:
      sub_100010F24(v44, v41, v42);
      goto LABEL_12;
    }

LABEL_10:
    sub_10009619C(0, &v82);
    v54 = v91;
    v55 = v72;
    v72[8] = v90;
    v55[9] = v54;
    v55[10] = v92;
    v56 = v87;
    v55[4] = v86;
    v55[5] = v56;
    v57 = v89;
    v55[6] = v88;
    v55[7] = v57;
    v58 = v83;
    *v55 = v82;
    v55[1] = v58;
    v59 = v85;
    v55[2] = v84;
    v55[3] = v59;
    swift_storeEnumTagMultiPayload();
    sub_10008EAE8(&v82, v81);
    sub_10008E930(&qword_100118E28, type metadata accessor for PeopleView);
    sub_10008E978();
    v60 = v75;
    sub_1000C6624();
    v41 = &qword_100118E00;
    v42 = &qword_1000D2698;
    sub_100017574(v60, v78, &qword_100118E00, &qword_1000D2698);
    swift_storeEnumTagMultiPayload();
    sub_10008E874();
    sub_10008E9CC();
    v43 = v79;
    sub_1000C6624();
    sub_10008EB44(&v82);
    v44 = v60;
    goto LABEL_11;
  }

  if (v29 != 2)
  {
    goto LABEL_10;
  }

  v82 = *(a1 + 3);
  LOBYTE(v83) = *(a1 + 64);
  v45 = swift_allocObject();
  v46 = *(a1 + 3);
  *(v45 + 48) = *(a1 + 2);
  *(v45 + 64) = v46;
  *(v45 + 80) = *(a1 + 64);
  v47 = *(a1 + 1);
  *(v45 + 16) = *a1;
  *(v45 + 32) = v47;
  v48 = swift_allocObject();
  v49 = *(a1 + 3);
  *(v48 + 48) = *(a1 + 2);
  *(v48 + 64) = v49;
  *(v48 + 80) = *(a1 + 64);
  v50 = *(a1 + 1);
  *(v48 + 16) = *a1;
  *(v48 + 32) = v50;
  sub_10008EC78();
  sub_10008EC78();
  sub_100017574(&v82, v81, &qword_100118E58, &qword_1000D2788);
  sub_10008EC78();
  sub_10008EC78();
  sub_100017574(&v82, v81, &qword_100118E58, &qword_1000D2788);
  v51 = v70;
  v52 = v48;
  v31 = v71;
  sub_1000A38E0(sub_10008EB9C, v45, sub_10008EC34, v52, v70);
  sub_10008EC80(v51, v72);
  swift_storeEnumTagMultiPayload();
  sub_10008E930(&qword_100118E28, type metadata accessor for PeopleView);
  sub_10008E978();
  v53 = v75;
  sub_1000C6624();
  sub_100017574(v53, v78, &qword_100118E00, &qword_1000D2698);
  swift_storeEnumTagMultiPayload();
  sub_10008E874();
  sub_10008E9CC();
  v43 = v79;
  sub_1000C6624();
  sub_100010F24(v53, &qword_100118E00, &qword_1000D2698);
  sub_10008ECE4(v51);
LABEL_12:
  sub_100017574(v43, v31, &qword_100118E08, &qword_1000D26A0);
  swift_storeEnumTagMultiPayload();
  sub_10008E7E8();
  sub_10008EA84();
  sub_1000C6624();
  return sub_100010F24(v43, &qword_100118E08, &qword_1000D26A0);
}

uint64_t sub_10008E480(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  type metadata accessor for SharingModel();
  sub_10008E930(&qword_100117158, type metadata accessor for SharingModel);
  v8 = sub_1000C6224();
  v9 = a2(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a3(v8);

  return v12;
}

uint64_t sub_10008E550@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  sub_10008DAA0(v12, a1);
  type metadata accessor for SharingModel();
  sub_10008E930(&qword_100117158, type metadata accessor for SharingModel);
  v5 = sub_1000C6224();
  v6 = sub_1000C6024();
  v7 = (a1 + *(sub_10000FEB8(&qword_100118DD0, &qword_1000D2668) + 36));
  *v7 = v6;
  v7[1] = v5;
  type metadata accessor for ActivitiesModelData();
  sub_10008E930(&qword_100116750, type metadata accessor for ActivitiesModelData);
  v8 = sub_1000C6224();
  v9 = sub_1000C6024();
  result = sub_10000FEB8(&qword_100118DD8, &qword_1000D2670);
  v11 = (a1 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

__n128 sub_10008E6F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10008E714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10008E75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10008E7E8()
{
  result = qword_100118E18;
  if (!qword_100118E18)
  {
    sub_100010624(&qword_100118E08, &qword_1000D26A0);
    sub_10008E874();
    sub_10008E9CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E18);
  }

  return result;
}

unint64_t sub_10008E874()
{
  result = qword_100118E20;
  if (!qword_100118E20)
  {
    sub_100010624(&qword_100118E00, &qword_1000D2698);
    sub_10008E930(&qword_100118E28, type metadata accessor for PeopleView);
    sub_10008E978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E20);
  }

  return result;
}

uint64_t sub_10008E930(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008E978()
{
  result = qword_100118E30;
  if (!qword_100118E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E30);
  }

  return result;
}

unint64_t sub_10008E9CC()
{
  result = qword_100118E38;
  if (!qword_100118E38)
  {
    sub_100010624(&qword_100118DE8, &qword_1000D2680);
    sub_10001E490(&qword_100118E40, &qword_100118E48, &qword_1000D26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E38);
  }

  return result;
}

unint64_t sub_10008EA84()
{
  result = qword_100118E50;
  if (!qword_100118E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E50);
  }

  return result;
}

uint64_t sub_10008EBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_100050264();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_100050264();
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  sub_100050264();

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10008EC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008ECE4(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008ED44()
{
  result = qword_100118E60;
  if (!qword_100118E60)
  {
    sub_100010624(&qword_100118DD8, &qword_1000D2670);
    sub_10008EDFC();
    sub_10001E490(&qword_100118EA0, &qword_100118EA8, &qword_1000D27A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E60);
  }

  return result;
}

unint64_t sub_10008EDFC()
{
  result = qword_100118E68;
  if (!qword_100118E68)
  {
    sub_100010624(&qword_100118DD0, &qword_1000D2668);
    sub_10008EEB4();
    sub_10001E490(&qword_100118E90, &qword_100118E98, &qword_1000D27A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E68);
  }

  return result;
}

unint64_t sub_10008EEB4()
{
  result = qword_100118E70;
  if (!qword_100118E70)
  {
    sub_100010624(&qword_100118E78, &qword_1000D2790);
    sub_10008EF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E70);
  }

  return result;
}

unint64_t sub_10008EF38()
{
  result = qword_100118E80;
  if (!qword_100118E80)
  {
    sub_100010624(&qword_100118E88, &qword_1000D2798);
    sub_10008E7E8();
    sub_10008EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E80);
  }

  return result;
}

uint64_t sub_10008EFD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10008F018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10008F08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10008F10C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10008F180(int a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_10000FEB8(&qword_1001185B8, &qword_1000D0BE0);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = v24 - v5;
  v25 = sub_1000C7024();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C7014();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = sub_1000C6CA4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000C6174();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1000C6164();
  v17 = sub_10008FCFC();
  v24[0] = "tor";
  v24[1] = v17;
  sub_1000C6C94();
  v31 = _swiftEmptyArrayStorage;
  sub_10008FEC8(&qword_100118F80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000FEB8(&qword_100118F88, &qword_1000D2890);
  sub_10008FF10(&qword_100118F90, &qword_100118F88, &qword_1000D2890);
  sub_1000C7204();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  *(v1 + 24) = sub_1000C7054();
  v18 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing14NetworkMonitor__status;
  v30 = 0;
  v19 = v26;
  sub_1000C6054();
  (*(v27 + 32))(v2 + v18, v19, v28);
  v20 = *(v2 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_1000229B4(sub_10008FD80);
  sub_1000C6144();

  if (v29)
  {
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    sub_1000C6154();
  }

  return v2;
}

uint64_t sub_10008F544(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1000C6C84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C6CA4();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C61B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008FCFC();
    v23 = sub_1000C7034();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v9);
    v15 = *(v10 + 80);
    v24 = v5;
    v16 = v2;
    v17 = (v15 + 24) & ~v15;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    (*(v10 + 32))(v18 + v17, v12, v9);
    aBlock[4] = sub_10008FE4C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008EFD4;
    aBlock[3] = &unk_100109F58;
    v19 = _Block_copy(aBlock);

    sub_1000C6C94();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10008FEC8(&qword_100118F98, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000FEB8(&qword_100118FA0, &qword_1000D2898);
    sub_10008FF10(&qword_100118FA8, &qword_100118FA0, &qword_1000D2898);
    v20 = v26;
    sub_1000C7204();
    v21 = v23;
    sub_1000C7044();
    _Block_release(v19);

    (*(v16 + 8))(v20, v1);
    return (*(v25 + 8))(v8, v24);
  }

  return result;
}

uint64_t sub_10008F930()
{
  v0 = sub_1000C6194();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C61A4();
    (*(v1 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v0);
    v9 = sub_1000C6184();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[7] = (v9 & 1) == 0;
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10008FAE0()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing14NetworkMonitor__status;
  v3 = sub_10000FEB8(&qword_1001185B8, &qword_1000D0BE0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_100118EE0;
  if (!qword_100118EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008FBEC()
{
  sub_10008FC98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10008FC98()
{
  if (!qword_100118EF0)
  {
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100118EF0);
    }
  }
}

unint64_t sub_10008FCFC()
{
  result = qword_10011A200;
  if (!qword_10011A200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011A200);
  }

  return result;
}

uint64_t sub_10008FD48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008FD88()
{
  v1 = sub_1000C61B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008FE4C()
{
  v1 = *(*(sub_1000C61B4() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_10008F930();
}

uint64_t sub_10008FEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008FEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008FF10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008FF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v3 = sub_1000C63B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FEB8(&qword_100118FE0, &qword_1000D2A58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_10000FEB8(&qword_100118FD0, &qword_1000D2A48);
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v28 = a1;
  sub_10000FEB8(&qword_100119010, &qword_1000D2A68);
  sub_10001E490(&qword_100119018, &qword_100119010, &qword_1000D2A68);
  sub_1000C6864();
  sub_1000C63A4();
  v18 = sub_10001E490(&qword_100118FE8, &qword_100118FE0, &qword_1000D2A58);
  sub_1000C69F4();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  v27 = v23;
  sub_10000FEB8(&qword_100118FD8, &qword_1000D2A50);
  v29 = v8;
  v30 = v3;
  v31 = v18;
  v32 = &protocol witness table for GroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v19 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v20 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60);
  v29 = v19;
  v30 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_1000C69D4();
  return (*(v25 + 8))(v17, v21);
}

uint64_t sub_100090340@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v53 = sub_10000FEB8(&qword_100119070, &qword_1000D2AC8);
  v61 = *(v53 - 8);
  v3 = v61[8];
  v4 = __chkstk_darwin(v53);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v46 - v6;
  v60 = sub_10000FEB8(&qword_100119078, &qword_1000D2AD0);
  v56 = *(v60 - 8);
  v7 = v56[8];
  v8 = __chkstk_darwin(v60);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v46 - v10;
  v11 = sub_10000FEB8(&qword_100119080, &qword_1000D2AD8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v57 = sub_10000FEB8(&qword_100119088, &qword_1000D2AE0);
  v51 = *(v57 - 8);
  v16 = v51;
  v17 = *(v51 + 64);
  v18 = __chkstk_darwin(v57);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v64 = a1;
  sub_10000FEB8(&qword_100119090, &qword_1000D2AE8);
  sub_1000967B4();
  sub_1000C6C14();
  sub_1000C6A34();
  sub_1000C6284();
  sub_100096950();
  v50 = v22;
  sub_1000C6974();

  (*(v12 + 8))(v15, v11);
  v63 = a1;
  sub_10000FEB8(&qword_1001190E8, &qword_1000D2B10);
  v23 = sub_100010624(&qword_1001190F0, &qword_1000D2B18);
  v24 = sub_100010624(&qword_1001190F8, &qword_1000D2B20);
  v25 = sub_1000969E8();
  v26 = sub_100096B84();
  v27 = sub_100096BD8();
  v65 = v23;
  v66 = &type metadata for TransportPresentationState;
  v67 = v24;
  v68 = v25;
  v69 = v26;
  v70 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v55;
  sub_1000C6C14();
  v62 = a1;
  sub_10000FEB8(&qword_100119158, &qword_1000D2B48);
  sub_100096DAC();
  v29 = v59;
  sub_1000C6C14();
  v46 = *(v16 + 16);
  v49 = v20;
  v30 = v57;
  v46(v20, v22, v57);
  v48 = v56[2];
  v31 = v58;
  v32 = v60;
  v48(v58, v28, v60);
  v47 = v61[2];
  v33 = v52;
  v34 = v29;
  v35 = v53;
  v47(v52, v34, v53);
  v36 = v54;
  v46(v54, v20, v30);
  v37 = sub_10000FEB8(&qword_100119170, &qword_1000D2B50);
  v48(&v36[*(v37 + 48)], v31, v32);
  v38 = v33;
  v47(&v36[*(v37 + 64)], v33, v35);
  v39 = v61[1];
  v40 = v35;
  v39(v59, v35);
  v41 = v56[1];
  v42 = v60;
  v41(v55, v60);
  v43 = *(v51 + 8);
  v44 = v57;
  v43(v50, v57);
  v39(v38, v40);
  v41(v58, v42);
  return (v43)(v49, v44);
}

double sub_1000909BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C65F4();
  v12 = 0;
  sub_100090B00(a1, __src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v14, __src, 0x101uLL);
  sub_100017574(__dst, &v9, &qword_1001191F8, &qword_1000D2C90);
  sub_100010F24(v14, &qword_1001191F8, &qword_1000D2C90);
  memcpy(&v11[7], __dst, 0x101uLL);
  v5 = v12;
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  __src[0] = sub_1000C6A64();
  v7 = sub_1000C6B74();
  *a2 = v4;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v11, 0x108uLL);
  *(a2 + 288) = v7;
  *(a2 + 296) = 0xC034000000000000;
  result = 20.0;
  *(a2 + 304) = xmmword_1000D28F0;
  *(a2 + 320) = 0x4034000000000000;
  *(a2 + 328) = 0;
  return result;
}

uint64_t sub_100090B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v60 = a2;
  v2 = sub_1000C6A94();
  v54 = *(v2 - 8);
  *&v55 = v2;
  v3 = *(v54 + 64);
  __chkstk_darwin(v2);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = sub_10009122C();
  *(&v75 + 1) = v5;
  sub_1000383C8();
  v6 = sub_1000C68D4();
  v8 = v7;
  v10 = v9;
  sub_1000C67C4();
  v11 = sub_1000C68B4();
  v13 = v12;
  v15 = v14;

  sub_1000500D8(v6, v8, v10 & 1);

  v59 = sub_1000C68A4();
  v63 = v16;
  LOBYTE(v6) = v17;
  v61 = v18;
  v19 = v50;
  sub_1000500D8(v11, v13, v15 & 1);

  v62 = sub_1000C6784();
  v20 = v6 & 1;
  LOBYTE(v75) = v6 & 1;
  LOBYTE(v92[0]) = 0;
  if (*v19)
  {
    v57 = 0;
    v58 = 0;
    v51 = 0;
    v56 = 0;
  }

  else
  {
    v58 = sub_100091BF0();
    v22 = v21;
    KeyPath = swift_getKeyPath();
    v57 = v22;

    v51 = KeyPath;

    v56 = 1;
  }

  if (*(v19 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    sub_1000C6A74();
    v25 = v53;
    v24 = v54;
    v26 = v55;
    (*(v54 + 104))(v53, enum case for Image.ResizingMode.stretch(_:), v55);
    v27 = sub_1000C6AB4();
    v50 = v27;

    (*(v24 + 8))(v25, v26);
    sub_1000C6C54();
    sub_1000C62C4();
    v103 = 1;
    *&v102[6] = v106;
    *&v102[22] = v107;
    *&v102[38] = v108;
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    v28 = sub_1000C6404();
    v54 = v29;
    v30 = sub_1000C6404();
    v53 = v30;
    v32 = v31;
    v49 = v31;
    v48 = sub_1000C6784();
    v33 = v59;
    *&v66 = v59;
    *(&v66 + 1) = v63;
    v52 = v20;
    LOBYTE(v67) = v20;
    *(&v67 + 1) = *v105;
    DWORD1(v67) = *&v105[3];
    *(&v67 + 1) = v61;
    LOBYTE(v68) = v62;
    *(&v68 + 1) = *v104;
    DWORD1(v68) = *&v104[3];
    *(&v68 + 1) = 0;
    *&v69[0] = 0;
    v55 = xmmword_1000D2900;
    *(v69 + 8) = xmmword_1000D2900;
    BYTE8(v69[1]) = 0;
    *(v78 + 9) = *(v69 + 9);
    v77 = v68;
    v78[0] = v69[0];
    v75 = v66;
    v76 = v67;
    v70 = v27;
    *v71 = 1;
    *&v71[48] = *&v102[46];
    *&v72 = v30;
    *&v71[34] = *&v102[32];
    *&v71[18] = *&v102[16];
    *&v71[2] = *v102;
    *(v64 + 7) = v27;
    *(&v64[4] + 7) = *&v71[48];
    *(&v64[3] + 7) = *&v71[32];
    *(&v64[2] + 7) = *&v71[16];
    *(&v64[1] + 7) = *v71;
    *(&v72 + 1) = v32;
    LOBYTE(v73) = v48;
    DWORD1(v73) = *&v65[3];
    *(&v73 + 1) = *v65;
    *(&v73 + 1) = 0xC024000000000000;
    memset(v74, 0, 25);
    sub_100017574(&v66, v92, &qword_100119200, &qword_1000D2D10);
    v34 = v57;
    v35 = v58;
    v36 = v51;
    LOBYTE(v27) = v56;
    sub_10009752C(v58, v57);
    sub_100017574(&v70, v92, &qword_100119208, &qword_1000D2D18);

    sub_100017574(&v72, v92, &qword_100119210, &qword_1000D2D20);
    sub_100097570(v35, v34);
    v37 = v78[0];
    v38 = v60;
    *(v60 + 32) = v77;
    *(v38 + 48) = v37;
    *(v38 + 64) = v78[1];
    v39 = v76;
    *v38 = v75;
    *(v38 + 16) = v39;
    *(v38 + 80) = v35;
    *(v38 + 88) = v34;
    *(v38 + 96) = v36;
    *(v38 + 104) = v27;
    v40 = v64[1];
    *(v38 + 105) = v64[0];
    v41 = v64[2];
    v42 = v64[3];
    *(v38 + 168) = *(&v64[3] + 15);
    *(v38 + 153) = v42;
    *(v38 + 137) = v41;
    *(v38 + 121) = v40;
    v43 = v54;
    *(v38 + 184) = v28;
    *(v38 + 192) = v43;
    v44 = v73;
    *(v38 + 200) = v72;
    *(v38 + 216) = v44;
    *(v38 + 232) = v74[0];
    *(v38 + 241) = *(v74 + 9);
    v79[0] = v53;
    v79[1] = v49;
    v80 = v48;
    *v81 = *v65;
    *&v81[3] = *&v65[3];
    v82 = 0xC024000000000000;
    v83 = 0;
    v85 = 0;
    v84 = 0;
    v86 = 0;
    sub_100010F24(v79, &qword_100119210, &qword_1000D2D20);

    v87[0] = v50;
    v87[1] = 0;
    v88 = 1;
    v89 = *v102;
    v90 = *&v102[16];
    *v91 = *&v102[32];
    *&v91[14] = *&v102[46];
    sub_100010F24(v87, &qword_100119208, &qword_1000D2D18);
    sub_100097570(v35, v34);
    v92[0] = v33;
    v92[1] = v63;
    v93 = v52;
    *v94 = *v105;
    *&v94[3] = *&v105[3];
    v95 = v61;
    v96 = v62;
    *v97 = *v104;
    *&v97[3] = *&v104[3];
    v99 = 0;
    v98 = 0;
    v100 = v55;
    v101 = 0;
    return sub_100010F24(v92, &qword_100119200, &qword_1000D2D10);
  }

  else
  {
    v46 = *(v19 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009122C()
{
  if (*v0 == 1)
  {
    v1 = [objc_opt_self() mainBundle];
    v87._countAndFlagsBits = 0x80000001000DC2A0;
    v103._countAndFlagsBits = 0x6E694C20646E6553;
    v103._object = 0xE90000000000006BLL;
    v118.value._countAndFlagsBits = 0;
    v118.value._object = 0;
    v2.super.isa = v1;
    v133._countAndFlagsBits = 0;
    v133._object = 0xE000000000000000;
    v3 = sub_1000C5B74(v103, v118, v2, v133, v87);

    return v3;
  }

  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v88._object = (inited + 32);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v88._countAndFlagsBits = 0x80000001000DBFA0;
  v104._countAndFlagsBits = 0x6F4E206572616853;
  v104._object = 0xEA00000000006574;
  v119.value._countAndFlagsBits = 0;
  v119.value._object = 0;
  v8.super.isa = v7;
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v104, v119, v8, v134, v88);
  v11 = v10;

  *(inited + 40) = v9;
  *(inited + 48) = v11;
  *(inited + 56) = 8;
  v12 = [v6 mainBundle];
  v89._countAndFlagsBits = 0x80000001000DBFD0;
  v105._countAndFlagsBits = 0x6F46206572616853;
  v105._object = 0xEC0000007265646CLL;
  v120.value._countAndFlagsBits = 0;
  v120.value._object = 0;
  v13.super.isa = v12;
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v105, v120, v13, v135, v89);
  v16 = v15;

  *(inited + 64) = v14;
  *(inited + 72) = v16;
  *(inited + 80) = 9;
  v17 = [v6 mainBundle];
  v90._countAndFlagsBits = 0x80000001000DC000;
  v106._countAndFlagsBits = 0x694C206572616853;
  v106._object = 0xEA00000000007473;
  v121.value._countAndFlagsBits = 0;
  v121.value._object = 0;
  v18.super.isa = v17;
  v136._countAndFlagsBits = 0;
  v136._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v106, v121, v18, v136, v90);
  v21 = v20;

  *(inited + 88) = v19;
  *(inited + 96) = v21;
  *(inited + 104) = 10;
  v22 = [v6 mainBundle];
  v91._countAndFlagsBits = 0x80000001000DC030;
  v107._countAndFlagsBits = 0x6154206572616853;
  v107._object = 0xEF70756F72472062;
  v122.value._countAndFlagsBits = 0;
  v122.value._object = 0;
  v23.super.isa = v22;
  v137._countAndFlagsBits = 0;
  v137._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v107, v122, v23, v137, v91);
  v26 = v25;

  *(inited + 112) = v24;
  *(inited + 120) = v26;
  *(inited + 128) = 11;
  v27 = [v6 mainBundle];
  v92._countAndFlagsBits = 0x80000001000DC060;
  v108._countAndFlagsBits = 0x6F42206572616853;
  v108._object = 0xEB00000000647261;
  v123.value._countAndFlagsBits = 0;
  v123.value._object = 0;
  v28.super.isa = v27;
  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v108, v123, v28, v138, v92);
  v31 = v30;

  *(inited + 136) = v29;
  *(inited + 144) = v31;
  *(inited + 152) = 0;
  v32 = [v6 mainBundle];
  v93._countAndFlagsBits = 0x80000001000DBFD0;
  v109._countAndFlagsBits = 0x6F46206572616853;
  v109._object = 0xEC0000007265646CLL;
  v124.value._countAndFlagsBits = 0;
  v124.value._object = 0;
  v33.super.isa = v32;
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v109, v124, v33, v139, v93);
  v36 = v35;

  *(inited + 160) = v34;
  *(inited + 168) = v36;
  *(inited + 176) = 1;
  v37 = [v6 mainBundle];
  v94._countAndFlagsBits = 0x80000001000DC0A0;
  v110._countAndFlagsBits = 0x6946206572616853;
  v110._object = 0xEA0000000000656CLL;
  v125.value._countAndFlagsBits = 0;
  v125.value._object = 0;
  v38.super.isa = v37;
  v140._countAndFlagsBits = 0;
  v140._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v110, v125, v38, v140, v94);
  v41 = v40;

  *(inited + 184) = v39;
  *(inited + 192) = v41;
  *(inited + 200) = 2;
  v42 = [v6 mainBundle];
  v111._countAndFlagsBits = 0xD000000000000011;
  v95._countAndFlagsBits = 0x80000001000DC0F0;
  v111._object = 0x80000001000DC0D0;
  v126.value._countAndFlagsBits = 0;
  v126.value._object = 0;
  v43.super.isa = v42;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v111, v126, v43, v141, v95);
  v46 = v45;

  *(inited + 208) = v44;
  *(inited + 216) = v46;
  *(inited + 224) = 3;
  v47 = [v6 mainBundle];
  v112._countAndFlagsBits = 0xD000000000000012;
  v96._countAndFlagsBits = 0x80000001000DC140;
  v112._object = 0x80000001000DC120;
  v127.value._countAndFlagsBits = 0;
  v127.value._object = 0;
  v48.super.isa = v47;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v112, v127, v48, v142, v96);
  v51 = v50;

  *(inited + 232) = v49;
  *(inited + 240) = v51;
  *(inited + 248) = 4;
  v52 = [v6 mainBundle];
  v97._countAndFlagsBits = 0x80000001000DC170;
  v113._countAndFlagsBits = 0x6D49206572616853;
  v113._object = 0xEB00000000656761;
  v128.value._countAndFlagsBits = 0;
  v128.value._object = 0;
  v53.super.isa = v52;
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v54 = sub_1000C5B74(v113, v128, v53, v143, v97);
  v56 = v55;

  *(inited + 256) = v54;
  *(inited + 264) = v56;
  *(inited + 272) = 5;
  v57 = [v6 mainBundle];
  v98._countAndFlagsBits = 0x80000001000DC1A0;
  v114._countAndFlagsBits = 0x6F4D206572616853;
  v114._object = 0xEB00000000656976;
  v129.value._countAndFlagsBits = 0;
  v129.value._object = 0;
  v58.super.isa = v57;
  v144._countAndFlagsBits = 0;
  v144._object = 0xE000000000000000;
  v59 = sub_1000C5B74(v114, v129, v58, v144, v98);
  v61 = v60;

  *(inited + 280) = v59;
  *(inited + 288) = v61;
  *(inited + 296) = 6;
  v62 = [v6 mainBundle];
  v99._countAndFlagsBits = 0x80000001000DC1D0;
  v115._countAndFlagsBits = 0x4450206572616853;
  v115._object = 0xE900000000000046;
  v130.value._countAndFlagsBits = 0;
  v130.value._object = 0;
  v63.super.isa = v62;
  v145._countAndFlagsBits = 0;
  v145._object = 0xE000000000000000;
  v64 = sub_1000C5B74(v115, v130, v63, v145, v99);
  v66 = v65;

  *(inited + 304) = v64;
  *(inited + 312) = v66;
  *(inited + 320) = 13;
  v67 = [v6 mainBundle];
  v116._countAndFlagsBits = 0xD00000000000001ALL;
  v100._countAndFlagsBits = 0x80000001000DC220;
  v116._object = 0x80000001000DC200;
  v131.value._countAndFlagsBits = 0;
  v131.value._object = 0;
  v68.super.isa = v67;
  v146._countAndFlagsBits = 0x706F655020646441;
  v146._object = 0xEA0000000000656CLL;
  v69 = sub_1000C5B74(v116, v131, v68, v146, v100);
  v71 = v70;

  *(inited + 328) = v69;
  *(inited + 336) = v71;
  v72 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  if (!*(v0 + 8))
  {
    v86 = *(v0 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
    return result;
  }

  v73 = *(v0 + 8);

  v74 = sub_10003CC40(v72);
  v76 = v75;
  v77 = *(v72 + 16);

  if (v77 && (v78 = sub_100071E64(13), (v79 & 1) != 0))
  {
    v80 = (*(v72 + 56) + 16 * v78);
    v82 = *v80;
    v81 = v80[1];

    if (v74 == v82 && v76 == v81)
    {

      goto LABEL_13;
    }

    v83 = sub_1000C73A4();

    if (v83)
    {
LABEL_13:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v102 == 3)
      {

        v84 = [v6 mainBundle];
        v101._countAndFlagsBits = 0x80000001000DC260;
        v117._countAndFlagsBits = 0x706F655020646441;
        v117._object = 0xEA0000000000656CLL;
        v132.value._countAndFlagsBits = 0;
        v132.value._object = 0;
        v85.super.isa = v84;
        v147._countAndFlagsBits = 0;
        v147._object = 0xE000000000000000;
        v74 = sub_1000C5B74(v117, v132, v85, v147, v101);
      }

      return v74;
    }
  }

  else
  {
  }

  return v74;
}

uint64_t sub_100091BF0()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CE810;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v51._countAndFlagsBits = 0x80000001000DBC60;
  v60._countAndFlagsBits = 0xD000000000000045;
  v60._object = 0x80000001000DBC10;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v3.super.isa = v2;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v60, v68, v3, v76, v51);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 9;
  v7 = [v1 mainBundle];
  v61._countAndFlagsBits = 0xD000000000000017;
  v52._countAndFlagsBits = 0x80000001000DBD00;
  v61._object = 0x80000001000DBC90;
  v77._object = 0x80000001000DBCB0;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v8.super.isa = v7;
  v77._countAndFlagsBits = 0xD000000000000040;
  v9 = sub_1000C5B74(v61, v69, v8, v77, v52);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 10;
  v12 = [v1 mainBundle];
  v62._countAndFlagsBits = 0xD00000000000001CLL;
  v53._countAndFlagsBits = 0x80000001000DBD50;
  v62._object = 0x80000001000DBD30;
  v78._object = 0x80000001000DBCB0;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v13.super.isa = v12;
  v78._countAndFlagsBits = 0xD000000000000040;
  v14 = sub_1000C5B74(v62, v70, v13, v78, v53);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 11;
  v17 = [v1 mainBundle];
  v63._countAndFlagsBits = 0xD000000000000018;
  v54._countAndFlagsBits = 0x80000001000DBDA0;
  v63._object = 0x80000001000DBD80;
  v79._object = 0x80000001000DBCB0;
  v71.value._countAndFlagsBits = 0;
  v71.value._object = 0;
  v18.super.isa = v17;
  v79._countAndFlagsBits = 0xD000000000000040;
  v19 = sub_1000C5B74(v63, v71, v18, v79, v54);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 13;
  v22 = [v1 mainBundle];
  v64._countAndFlagsBits = 0xD000000000000021;
  v55._countAndFlagsBits = 0x80000001000DBE00;
  v64._object = 0x80000001000DBDD0;
  v80._object = 0x80000001000DBCB0;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v23.super.isa = v22;
  v80._countAndFlagsBits = 0xD000000000000040;
  v24 = sub_1000C5B74(v64, v72, v23, v80, v55);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  v27 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  v28 = [v1 mainBundle];
  v56._countAndFlagsBits = 0x80000001000DBE90;
  v65._countAndFlagsBits = 0xD000000000000043;
  v65._object = 0x80000001000DBE40;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v29.super.isa = v28;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v30 = sub_1000C5B74(v65, v73, v29, v81, v56);
  v32 = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100030744(v30, v32, 8, isUniquelyReferenced_nonNull_native);
  v34 = v27;
  v35 = [v1 mainBundle];
  v57._countAndFlagsBits = 0x80000001000DBE90;
  v66._countAndFlagsBits = 0xD000000000000050;
  v66._object = 0x80000001000DBEC0;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v36.super.isa = v35;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v37 = sub_1000C5B74(v66, v74, v36, v82, v57);
  v39 = v38;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_100030744(v37, v39, 0, v40);
  v41 = [v1 mainBundle];
  v58._countAndFlagsBits = 0x80000001000DBF70;
  v67._countAndFlagsBits = 0xD00000000000004ELL;
  v67._object = 0x80000001000DBF20;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v42.super.isa = v41;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v43 = sub_1000C5B74(v67, v75, v42, v83, v58);
  v45 = v44;

  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100030744(v43, v45, 1, v46);
  if (*(v59 + 8))
  {
    v47 = *(v59 + 8);

    v48 = sub_10003CC40(v34);

    return v48;
  }

  else
  {
    v50 = *(v59 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009215C(_OWORD *a1)
{
  v2 = sub_10000FEB8(&qword_1001190F0, &qword_1000D2B18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  *v5 = sub_1000C65F4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_10000FEB8(&qword_100119178, &qword_1000D2B58);
  sub_1000923FC(a1, &v5[*(v6 + 44)]);
  v7 = &v5[*(sub_10000FEB8(&qword_100119110, &qword_1000D2B28) + 36)];
  *v7 = xmmword_1000D2910;
  *(v7 + 1) = xmmword_1000D2910;
  v7[32] = 0;
  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  *&v16 = sub_1000C6A64();
  *&v5[*(v2 + 36)] = sub_1000C6B74();
  v18 = *(a1 + 40);
  sub_10000FEB8(&qword_100119180, &qword_1000D2B60);
  sub_1000C6B04();
  v18 = v16;
  v19 = v17;
  v9 = swift_allocObject();
  v10 = a1[9];
  v9[9] = a1[8];
  v9[10] = v10;
  v9[11] = a1[10];
  v11 = a1[5];
  v9[5] = a1[4];
  v9[6] = v11;
  v12 = a1[7];
  v9[7] = a1[6];
  v9[8] = v12;
  v13 = a1[1];
  v9[1] = *a1;
  v9[2] = v13;
  v14 = a1[3];
  v9[3] = a1[2];
  v9[4] = v14;
  sub_10008EAE8(a1, &v16);
  sub_10000FEB8(&qword_1001190F8, &qword_1000D2B20);
  sub_1000969E8();
  sub_100096B84();
  sub_100096BD8();
  sub_1000C69C4();

  return sub_100010F24(v5, &qword_1001190F0, &qword_1000D2B18);
}

uint64_t sub_1000923FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FEB8(&qword_1001191B8, &qword_1000D2C08);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (v28 - v9);
  v11 = [objc_opt_self() mainBundle];
  v27._countAndFlagsBits = 0x80000001000DBBC0;
  v29._object = 0x80000001000DBB80;
  v29._countAndFlagsBits = 0x1000000000000030;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v12.super.isa = v11;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v13 = sub_1000C5B74(v29, v30, v12, v31, v27);
  v15 = v14;

  v28[0] = v13;
  v28[1] = v15;
  sub_1000383C8();
  v16 = sub_1000C68D4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  *v10 = sub_1000C6C54();
  v10[1] = v23;
  v24 = sub_10000FEB8(&qword_1001191C0, &qword_1000D2C10);
  sub_100092638(a1, v10 + *(v24 + 44));
  sub_100017574(v10, v8, &qword_1001191B8, &qword_1000D2C08);
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  v25 = sub_10000FEB8(&qword_1001191C8, &qword_1000D2C18);
  sub_100017574(v8, a2 + *(v25 + 48), &qword_1001191B8, &qword_1000D2C08);
  sub_100050DE0(v16, v18, v20 & 1);

  sub_100010F24(v10, &qword_1001191B8, &qword_1000D2C08);
  sub_100010F24(v8, &qword_1001191B8, &qword_1000D2C08);
  sub_1000500D8(v16, v18, v20 & 1);
}

uint64_t sub_100092638@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000FEB8(&qword_1001191D0, &qword_1000D2C20);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v7 = sub_10000FEB8(&qword_1001191D8, &qword_1000D2C28);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = &v49 - v11;
    v66[0] = *(a1 + 40);
    swift_retain_n();
    sub_10000FEB8(&qword_100119180, &qword_1000D2B60);
    sub_1000C6B04();
    v64 = *(&v67 + 1);
    v65 = v67;
    v63 = v68[0];
    v14 = *(a1 + 72);
    v67 = *(a1 + 56);
    *v68 = v14;
    *&v68[16] = *(a1 + 88);
    *&v68[32] = *(a1 + 104);
    sub_10000FEB8(&qword_1001191A0, &qword_1000D2B80);
    sub_1000C6B04();
    v66[0] = *(a1 + 112);
    *&v66[1] = *(a1 + 128);
    sub_10000FEB8(&qword_100119198, &qword_1000D2B78);
    sub_1000C6B04();
    v61 = *(&v67 + 1);
    v62 = v67;
    v60 = *v68;
    v53 = *&v68[8];
    v66[0] = *(a1 + 136);
    *&v66[1] = *(a1 + 152);
    sub_10000FEB8(&qword_1001191B0, &qword_1000D2BE8);
    sub_1000C6B04();
    v58 = *(&v67 + 1);
    v59 = v67;
    v56 = *&v68[8];
    v57 = *v68;
    *&v96[7] = v91;
    *&v96[23] = v92;
    *&v96[39] = v93;
    *&v96[55] = v94;
    v95 = 0;
    v50 = sub_1000C6774();
    sub_1000C6204();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v49 = v95;
    v97 = 0;
    sub_1000C6C54();
    v23 = 1;
    sub_1000C62C4();
    *(v98 + 7) = *(&v98[3] + 8);
    *(&v98[1] + 7) = *(&v98[4] + 8);
    *(&v98[2] + 7) = *(&v98[5] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v24 = v67;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v25 = v52;
    if (v67 - 1 < 2)
    {
      sub_1000C6264();
      sub_1000C6C74();
      v27 = v26;
      v29 = v28;
      v30 = &v6[*(sub_10000FEB8(&qword_1001191F0, &qword_1000D2C88) + 36)];
      __asm { FMOV            V0.2D, #1.0 }

      *v30 = _Q0;
      *(v30 + 2) = v27;
      *(v30 + 3) = v29;
      sub_1000C6C54();
      sub_1000C62C4();
      v36 = &v6[*(v25 + 36)];
      v37 = *(&v98[7] + 8);
      *v36 = *(&v98[6] + 8);
      *(v36 + 1) = v37;
      *(v36 + 2) = *(&v98[8] + 8);
      sub_100097460(v6, v13);
      v23 = 0;
    }

    v38 = v13;
    (*(v51 + 56))(v13, v23, 1, v25);
    if ((v24 - 1) >= 2)
    {
      v39 = 1.0;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = v13;
    v41 = v54;
    sub_100017574(v40, v54, &qword_1001191D8, &qword_1000D2C28);
    *(&v66[2] + 9) = *&v96[16];
    *(&v66[3] + 9) = *&v96[32];
    *&v66[0] = v12;
    *(&v66[0] + 1) = v65;
    v52 = v12;
    *&v66[1] = v64;
    BYTE8(v66[1]) = v63;
    *(&v66[4] + 9) = *&v96[48];
    *(&v66[1] + 9) = *v96;
    *(&v66[5] + 1) = *&v96[63];
    *&v66[6] = v62;
    *(&v66[6] + 1) = v61;
    *&v66[7] = v60;
    v42 = v53;
    *(&v66[7] + 1) = v53;
    *&v66[8] = v59;
    *(&v66[8] + 1) = v58;
    *&v66[9] = v57;
    *(&v66[16] + 1) = v98[2];
    *(&v66[15] + 1) = v98[1];
    *(&v66[9] + 1) = v56;
    *&v66[10] = sub_10008DA20;
    *(&v66[10] + 1) = 0;
    v44 = v49;
    v43 = v50;
    LOBYTE(v66[11]) = v49;
    BYTE8(v66[11]) = v50;
    *&v66[12] = v16;
    *(&v66[12] + 1) = v18;
    *&v66[13] = v20;
    *(&v66[13] + 1) = v22;
    LOBYTE(v66[14]) = 0;
    *&v66[17] = *(&v98[2] + 15);
    *(&v66[14] + 1) = v98[0];
    *(&v66[17] + 1) = v39;
    v45 = v55;
    memcpy(v55, v66, 0x120uLL);
    v46 = v45 + *(sub_10000FEB8(&qword_1001191E0, &qword_1000D2C78) + 48);
    sub_100017574(v41, v46, &qword_1001191D8, &qword_1000D2C28);
    sub_100017574(v66, &v67, &qword_1001191E8, &qword_1000D2C80);
    sub_100010F24(v38, &qword_1001191D8, &qword_1000D2C28);
    sub_100010F24(v41, &qword_1001191D8, &qword_1000D2C28);
    *&v68[25] = *&v96[16];
    *&v68[41] = *&v96[32];
    *v69 = *&v96[48];
    *&v67 = v52;
    *(&v67 + 1) = v65;
    *v68 = v64;
    v68[8] = v63;
    *&v68[9] = *v96;
    *&v69[15] = *&v96[63];
    v70 = v62;
    v71 = v61;
    v72 = v60;
    v73 = v42;
    v74 = v59;
    v75 = v58;
    v76 = v57;
    v77 = v56;
    v78 = sub_10008DA20;
    v79 = 0;
    v80 = v44;
    v81 = v43;
    v82 = v16;
    v83 = v18;
    v84 = v20;
    v85 = v22;
    v86 = 0;
    *v89 = v98[2];
    *&v89[15] = *(&v98[2] + 15);
    v88 = v98[1];
    v87 = v98[0];
    v90 = v39;
    return sub_100010F24(&v67, &qword_1001191E8, &qword_1000D2C80);
  }

  else
  {
    v48 = *(a1 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100092D48@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100092DC8()
{
  sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000CB170;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x80000001000DBB60;
  sub_1000C7454();
}

uint64_t sub_100092E64@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000FEB8(&qword_100119188, &qword_1000D2B68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v10 = sub_10000FEB8(&qword_100119190, &qword_1000D2B70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v55 - v12;
  v56 = sub_10000FEB8(&qword_100119140, &qword_1000D2B38);
  v14 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v16 = &v55 - v15;
  v17 = type metadata accessor for ComposeMailView(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v34 = swift_allocObject();
      v35 = *(a2 + 144);
      v34[9] = *(a2 + 128);
      v34[10] = v35;
      v34[11] = *(a2 + 160);
      v36 = *(a2 + 80);
      v34[5] = *(a2 + 64);
      v34[6] = v36;
      v37 = *(a2 + 112);
      v34[7] = *(a2 + 96);
      v34[8] = v37;
      v38 = *(a2 + 16);
      v34[1] = *a2;
      v34[2] = v38;
      v39 = *(a2 + 48);
      v34[3] = *(a2 + 32);
      v34[4] = v39;
      *&v57 = _swiftEmptyArrayStorage;
      *(&v57 + 1) = sub_100096EC0;
      *&v58 = v34;
      BYTE8(v58) = 1;
    }

    else
    {
      v47 = swift_allocObject();
      v48 = *(a2 + 144);
      v47[9] = *(a2 + 128);
      v47[10] = v48;
      v47[11] = *(a2 + 160);
      v49 = *(a2 + 80);
      v47[5] = *(a2 + 64);
      v47[6] = v49;
      v50 = *(a2 + 112);
      v47[7] = *(a2 + 96);
      v47[8] = v50;
      v51 = *(a2 + 16);
      v47[1] = *a2;
      v47[2] = v51;
      v52 = *(a2 + 48);
      v47[3] = *(a2 + 32);
      v47[4] = v52;
      *&v57 = _swiftEmptyArrayStorage;
      *(&v57 + 1) = sub_100096EF8;
      *&v58 = v47;
      BYTE8(v58) = 0;
    }

    sub_10008EAE8(a2, &v61);
    sub_100083C08();

    sub_1000C6624();
    v53 = v62;
    v54 = BYTE8(v62);
    *v9 = v61;
    *(v9 + 2) = v53;
    v9[24] = v54;
    swift_storeEnumTagMultiPayload();
    sub_10000FEB8(&qword_100119150, &qword_1000D2B40);
    sub_100096C64();
    sub_100096D20();
    sub_1000C6624();
  }

  else if (*a1)
  {
    v61 = *(a2 + 112);
    *&v62 = *(a2 + 128);
    sub_10000FEB8(&qword_100119198, &qword_1000D2B78);
    sub_1000C6AE4();
    v55 = a3;
    v40 = v57;
    v41 = swift_allocObject();
    v42 = *(a2 + 144);
    v41[9] = *(a2 + 128);
    v41[10] = v42;
    v41[11] = *(a2 + 160);
    v43 = *(a2 + 80);
    v41[5] = *(a2 + 64);
    v41[6] = v43;
    v44 = *(a2 + 112);
    v41[7] = *(a2 + 96);
    v41[8] = v44;
    v45 = *(a2 + 16);
    v41[1] = *a2;
    v41[2] = v45;
    v46 = *(a2 + 48);
    v41[3] = *(a2 + 32);
    v41[4] = v46;
    *v13 = _swiftEmptyArrayStorage;
    *(v13 + 8) = v40;
    *(v13 + 3) = sub_100096F30;
    *(v13 + 4) = v41;
    swift_storeEnumTagMultiPayload();
    sub_10008EAE8(a2, &v61);
    sub_1000970A8(&qword_100116AE8, type metadata accessor for ComposeMailView);
    sub_10008B7B4();

    sub_1000C6624();
    sub_100017574(v16, v9, &qword_100119140, &qword_1000D2B38);
    swift_storeEnumTagMultiPayload();
    sub_10000FEB8(&qword_100119150, &qword_1000D2B40);
    sub_100096C64();
    sub_100096D20();
    sub_1000C6624();

    return sub_100010F24(v16, &qword_100119140, &qword_1000D2B38);
  }

  else
  {
    v21 = *(a2 + 72);
    v61 = *(a2 + 56);
    v22 = *(a2 + 88);
    v62 = v21;
    v63 = v22;
    v64 = *(a2 + 104);
    sub_10000FEB8(&qword_1001191A0, &qword_1000D2B80);
    sub_1000C6B04();
    v23 = swift_allocObject();
    v24 = *(a2 + 144);
    *(v23 + 9) = *(a2 + 128);
    *(v23 + 10) = v24;
    *(v23 + 11) = *(a2 + 160);
    v25 = *(a2 + 80);
    *(v23 + 5) = *(a2 + 64);
    *(v23 + 6) = v25;
    v26 = *(a2 + 112);
    *(v23 + 7) = *(a2 + 96);
    *(v23 + 8) = v26;
    v27 = *(a2 + 16);
    *(v23 + 1) = *a2;
    *(v23 + 2) = v27;
    v28 = *(a2 + 48);
    *(v23 + 3) = *(a2 + 32);
    *(v23 + 4) = v28;
    *v20 = swift_getKeyPath();
    sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
    swift_storeEnumTagMultiPayload();
    v29 = (v20 + *(v17 + 20));
    v30 = v58;
    *v29 = v57;
    v29[1] = v30;
    v31 = v60;
    v29[2] = v59;
    v29[3] = v31;
    v32 = (v20 + *(v17 + 24));
    *v32 = sub_100096FD8;
    v32[1] = v23;
    sub_100096FE8(v20, v13);
    swift_storeEnumTagMultiPayload();
    sub_10008EAE8(a2, &v61);
    sub_1000970A8(&qword_100116AE8, type metadata accessor for ComposeMailView);
    sub_10008B7B4();
    sub_1000C6624();
    sub_100017574(v16, v9, &qword_100119140, &qword_1000D2B38);
    swift_storeEnumTagMultiPayload();
    sub_10000FEB8(&qword_100119150, &qword_1000D2B40);
    sub_100096C64();
    sub_100096D20();
    sub_1000C6624();
    sub_100010F24(v16, &qword_100119140, &qword_1000D2B38);
    return sub_10009704C(v20);
  }
}

uint64_t sub_1000935D8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1000C5F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11 - 8);
  v15 = v36 - v14;
  if ((a2 & 1) == 0)
  {
    if (a1 != 2)
    {
      return result;
    }

    v23 = *(a3 + 8);
    if (v23)
    {
      v24 = *(a3 + 72);
      v37[0] = *(a3 + 56);
      v37[1] = v24;
      v37[2] = *(a3 + 88);
      v38 = *(a3 + 104);
      swift_retain_n();
      sub_10000FEB8(&qword_1001191A0, &qword_1000D2B80);
      sub_1000C6AE4();

      v25 = v36[2];

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
      }

      sub_1000B0F08(v26);

      v27 = *(a3 + 24);
      if (v27)
      {
        v28 = sub_1000970A8(&qword_1001191A8, type metadata accessor for ActivitiesModelData);
        v29 = sub_1000C6F44();
        (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
        sub_1000C6F14();
        swift_retain_n();

        v30 = sub_1000C6F04();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = &protocol witness table for MainActor;
        *(v31 + 32) = v23;
        *(v31 + 40) = 1;
        *(v31 + 48) = v27;
        *(v31 + 56) = v28;
        sub_1000B8860(0, 0, v15, &unk_1000D2BC8, v31);
      }

      v35 = *(a3 + 32);
      type metadata accessor for ActivitiesModelData();
      v33 = &qword_100116750;
      v34 = type metadata accessor for ActivitiesModelData;
    }

    else
    {
      v32 = *(a3 + 16);
      type metadata accessor for SharingModel();
      v33 = &qword_100117158;
      v34 = type metadata accessor for SharingModel;
    }

    sub_1000970A8(v33, v34);
    result = sub_1000C63F4();
    __break(1u);
    return result;
  }

  sub_1000C5F54();
  swift_errorRetain();
  v16 = sub_1000C5F64();
  v17 = sub_1000C6FD4();
  sub_10008ADE8(a1, 1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v37[0] = v19;
    *v18 = 136315138;
    v36[0] = a1;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v20 = sub_1000C6D94();
    v22 = sub_100071844(v20, v21, v37);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Failed to present Mail compose: %s", v18, 0xCu);
    sub_100010544(v19);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100093A60(char a1, void *a2)
{
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1000C5F74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v13 = sub_1000C5F64();
  v14 = sub_1000C6FF4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Did message sent: %{BOOL}d", v15, 8u);
  }

  result = (*(v9 + 8))(v12, v8);
  if (a1)
  {
    v17 = a2[1];
    if (v17)
    {
      v18 = a2[3];
      if (v18)
      {
        v19 = sub_1000970A8(&qword_1001191A8, type metadata accessor for ActivitiesModelData);
        v20 = sub_1000C6F44();
        (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        sub_1000C6F14();
        swift_retain_n();
        swift_retain_n();
        v21 = sub_1000C6F04();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = &protocol witness table for MainActor;
        *(v22 + 32) = v17;
        *(v22 + 40) = 1;
        *(v22 + 48) = v18;
        *(v22 + 56) = v19;
        sub_1000B8860(0, 0, v7, &unk_1000D2BD0, v22);
      }
    }

    else
    {
      v23 = a2[2];
      type metadata accessor for SharingModel();
      sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
      sub_1000C63F4();
      __break(1u);
    }

    v24 = a2[4];
    type metadata accessor for ActivitiesModelData();
    sub_1000970A8(&qword_100116750, type metadata accessor for ActivitiesModelData);

    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100093DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 128) = a4;
  sub_1000C6F14();
  *(v6 + 72) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;

  return _swift_task_switch(sub_100093E8C, v8, v7);
}

uint64_t sub_100093E8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 128);
  v3 = *(v1 + 8);
  *(v0 + 96) = v3;
  if (v2 == 1)
  {
    if (v3)
    {

      v4 = swift_task_alloc();
      *(v0 + 104) = v4;
      *v4 = v0;
      v4[1] = sub_100094060;

      return sub_100056B08();
    }

    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    v8 = *(v1 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);

    return sub_1000C63F4();
  }

  if (*(v0 + 64))
  {
    v6 = *(v0 + 64);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_1000B0F08(v6);

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1000941DC;

  return sub_10006D96C();
}

uint64_t sub_100094060()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1000943D4;
  }

  else
  {
    v7 = v2[12];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_10009417C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10009417C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000941DC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_100094320, v5, v4);
}

uint64_t sub_100094320()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v2 + 136);
  *(v0 + 32) = *(v2 + 152);
  *(v0 + 16) = v3;
  sub_10000FEB8(&qword_1001191B0, &qword_1000D2BE8);
  v4 = sub_1000C6AE4();
  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = *(v0 + 48);
    v5(v4);
    sub_100010800(v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000943D4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];

  sub_100094478(v1, 0xD000000000000018, 0x80000001000D68F0);

  v5 = v0[1];

  return v5();
}

void sub_100094478(uint64_t a1, NSObject *a2, unint64_t a3)
{
  v48 = a2;
  v49 = sub_1000C5F74();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v49);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
  v59 = a1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  swift_dynamicCast();
  v13 = v53;
  v14 = v54;
  v15 = v56;
  v16 = v57;
  v51 = v58;
  v50 = v55;
  if (v58 == 8)
  {
    if (!v55)
    {
      __break(1u);
      goto LABEL_12;
    }

    v17 = v55;

    v18 = v17;
    sub_1000C5F54();
    v12 = v18;

    v19 = sub_1000C5F64();
    v20 = sub_1000C6FD4();

    LODWORD(v47) = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v46 = v16;
      v22 = v21;
      v45 = swift_slowAlloc();
      v53 = v45;
      *v22 = 136315394;
      *(v22 + 4) = sub_100071844(v48, a3, &v53);
      *(v22 + 12) = 2080;
      v12 = v12;
      v23 = [v12 description];
      v24 = sub_1000C6D84();
      v48 = v19;
      v25 = v5;
      v26 = v15;
      v27 = v14;
      v28 = v13;
      v29 = v24;
      v31 = v30;

      v32 = v29;
      v13 = v28;
      v14 = v27;
      v15 = v26;
      v33 = sub_100071844(v32, v31, &v53);

      *(v22 + 14) = v33;
      v34 = v48;
      _os_log_impl(&_mh_execute_header, v48, v47, "ComposeParticipantsView %s stopSharing failed with error: %s", v22, 0x16u);
      swift_arrayDestroy();

      v16 = v46;

      (*(v25 + 8))(v11, v49);
    }

    else
    {

      (*(v5 + 8))(v11, v49);
    }
  }

  else
  {
    v47 = v54;
    sub_1000C5F54();

    v35 = sub_1000C5F64();
    v36 = sub_1000C6FD4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v45 = v13;
      v38 = v37;
      v39 = swift_slowAlloc();
      v46 = v16;
      v40 = v15;
      v41 = v39;
      v53 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100071844(v48, a3, &v53);
      _os_log_impl(&_mh_execute_header, v35, v36, "ComposeParticipantsView %s stopSharing failed with unexpected error, returning CKError.internalError as best approximation", v38, 0xCu);
      sub_100010544(v41);
      v15 = v40;
      v16 = v46;

      v13 = v45;
    }

    (*(v5 + 8))(v9, v49);
    v14 = v47;
  }

  if (*(v52 + 8))
  {
    v42 = *(v52 + 8);

    sub_100067838(0, v12);

    sub_1000494BC(v13, v14, v50, v15, v16, v51);

    return;
  }

LABEL_12:
  v43 = *(v52 + 16);
  type metadata accessor for SharingModel();
  sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
  sub_1000C63F4();
  __break(1u);
}

uint64_t sub_100094980(char a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22[-v11];
  v13 = sub_1000C6F44();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1000C6F14();
  sub_10008EAE8(a3, v22);

  v14 = sub_1000C6F04();
  v15 = swift_allocObject();
  v16 = a3[6];
  *(v15 + 152) = a3[7];
  v17 = a3[9];
  *(v15 + 168) = a3[8];
  *(v15 + 184) = v17;
  *(v15 + 200) = a3[10];
  v18 = a3[2];
  *(v15 + 88) = a3[3];
  v19 = a3[5];
  *(v15 + 104) = a3[4];
  *(v15 + 120) = v19;
  *(v15 + 136) = v16;
  v20 = a3[1];
  *(v15 + 40) = *a3;
  *(v15 + 56) = v20;
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = a1;
  *(v15 + 72) = v18;
  *(v15 + 216) = a2;
  sub_1000B8860(0, 0, v12, a5, v15);
}

uint64_t sub_100094B08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 96) = a4;
  sub_1000C6F14();
  *(v6 + 32) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_100094BA4, v8, v7);
}

uint64_t sub_100094BA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  v3 = *(v1 + 8);
  *(v0 + 56) = v3;
  if (v2 == 1)
  {
    if (v3)
    {

      v4 = swift_task_alloc();
      *(v0 + 64) = v4;
      *v4 = v0;
      v4[1] = sub_100094D7C;

      return sub_100056B08();
    }

    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    v8 = *(v1 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);

    return sub_1000C63F4();
  }

  if (*(v0 + 24))
  {
    v6 = *(v0 + 24);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  swift_retain_n();

  sub_1000B0F08(v6);

  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100094E98;

  return sub_10006D96C();
}

uint64_t sub_100094D7C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_1000951D4;
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_10003E5B0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100094E98()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v6;
  v4[1] = sub_100094FE0;

  return sub_100069028();
}

uint64_t sub_100094FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_100095124, v5, v4);
}

uint64_t sub_100095124()
{
  v1 = v0[7];
  v2 = v0[4];

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_10000816C();
    v4 = sub_1000077D8();
    if (v4)
    {
      [v4 _dismissViewControllerWithError:0];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000951D4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  sub_100094478(v1, 0xD000000000000016, 0x80000001000D68D0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100095278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    v3 = type metadata accessor for GlobalPermissionViewModel();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    sub_100043774(v6);

    sub_1000970A8(&qword_100117130, type metadata accessor for GlobalPermissionViewModel);
    v7 = sub_1000C6334();
    v9 = v8;
    v10 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1000C6A64();
    result = sub_1000C6B74();
    *a2 = v7;
    a2[1] = v9;
    a2[2] = result;
  }

  else
  {
    v12 = *(a1 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000953D4(uint64_t a1)
{
  v2 = sub_1000C6654();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10000FEB8(&qword_100118FF0, &qword_1000D2A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_1000C6644();
  v11 = a1;
  sub_10000FEB8(&qword_100119020, &qword_1000D2A70);
  sub_10001E490(&qword_100119028, &qword_100119020, &qword_1000D2A70);
  sub_1000C6254();
  sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60);
  sub_1000C6684();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000955C0(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[9];
  v2[9] = a1[8];
  v2[10] = v3;
  v2[11] = a1[10];
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[7];
  v2[7] = a1[6];
  v2[8] = v5;
  v6 = a1[1];
  v2[1] = *a1;
  v2[2] = v6;
  v7 = a1[3];
  v2[3] = a1[2];
  v2[4] = v7;
  sub_10008EAE8(a1, &v9);
  sub_10000FEB8(&qword_100119030, &qword_1000D2A78);
  sub_100096614();
  return sub_1000C6B34();
}

uint64_t sub_1000956A4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10000816C();
      v2 = sub_1000077D8();
      if (v2)
      {
        [v2 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = *(a1 + 16);
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009577C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000C6A84();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = sub_1000C6A64();
  v6 = [v3 quaternaryLabelColor];
  v7 = sub_1000C6A64();
  v8 = (a1 + *(sub_10000FEB8(&qword_100119030, &qword_1000D2A78) + 36));
  v9 = *(sub_10000FEB8(&qword_100119068, &qword_1000D2A90) + 28);
  v10 = enum case for Image.Scale.large(_:);
  v11 = sub_1000C6AA4();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  result = swift_getKeyPath();
  *v8 = result;
  *a1 = v2;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

uint64_t sub_1000958B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1000C6F14();
  v7[3] = sub_1000C6F04();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_100051D40;

  return sub_10005E534(a5, a6, a7);
}

uint64_t sub_100095988@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v27 = sub_1000C66B4();
  v28 = *(v27 - 8);
  v2 = *(v28 + 64);
  __chkstk_darwin(v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FEB8(&qword_100118FC0, &qword_1000D2A38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = v1[9];
  v35[8] = v1[8];
  v35[9] = v10;
  v35[10] = v1[10];
  v11 = v1[5];
  v35[4] = v1[4];
  v35[5] = v11;
  v12 = v1[7];
  v35[6] = v1[6];
  v35[7] = v12;
  v13 = v1[1];
  v35[0] = *v1;
  v14 = v1[2];
  v35[3] = v1[3];
  v35[1] = v13;
  v35[2] = v14;
  v30 = v35;
  v26 = sub_10000FEB8(&qword_100118FC8, &qword_1000D2A40);
  v15 = sub_100010624(&qword_100118FD0, &qword_1000D2A48);
  v16 = sub_100010624(&qword_100118FD8, &qword_1000D2A50);
  v17 = sub_100010624(&qword_100118FE0, &qword_1000D2A58);
  v18 = sub_1000C63B4();
  v19 = sub_10001E490(&qword_100118FE8, &qword_100118FE0, &qword_1000D2A58);
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = &protocol witness table for GroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v22 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60);
  v31 = v21;
  v32 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v31 = v15;
  v32 = v16;
  v33 = OpaqueTypeConformance2;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1000C6394();
  sub_1000C66A4();
  sub_10001E490(&qword_100119000, &qword_100118FC0, &qword_1000D2A38);
  sub_1000970A8(&qword_100119008, &type metadata accessor for StackNavigationViewStyle);
  v24 = v27;
  sub_1000C68E4();
  (*(v28 + 8))(v4, v24);
  return (*(v6 + 8))(v9, v5);
}

double sub_100095DBC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_1000383C8();

    sub_1000C68D4();
  }

  sub_1000C6624();
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_100095E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    sub_1000383C8();
    v3 = sub_1000C68D4();
    v5 = v4;
    v7 = v6;
    sub_1000C6834();
    v8 = sub_1000C68B4();
    v10 = v9;
    v12 = v11;

    sub_1000500D8(v3, v5, v7 & 1);

    v13 = sub_1000C68A4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_1000500D8(v8, v10, v12 & 1);

    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17 & 1;
    *(a2 + 24) = v19;
  }

  else
  {
    type metadata accessor for SharingModel();
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009605C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C64F4();
  *a1 = result;
  return result;
}

uint64_t sub_1000960D4(uint64_t a1)
{
  v2 = sub_1000C6AA4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000C6424();
}

__n128 sub_10009619C@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for SharingModel();
  sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel);
  v4 = sub_1000C6404();
  v14 = v5;
  v15 = v4;
  type metadata accessor for ActivitiesModelData();
  sub_1000970A8(&qword_100116750, type metadata accessor for ActivitiesModelData);
  v6 = sub_1000C6404();
  v12 = v7;
  v13 = v6;
  sub_10000FEB8(&qword_100118FB0, &unk_1000D2920);
  sub_1000C6AD4();
  sub_1000C6AD4();
  sub_1000C6AD4();
  sub_10000FEB8(&unk_1001174D8, &qword_1000CE898);
  sub_1000C6AD4();
  sub_1000C6AD4();
  v8 = a1 & 1;
  sub_100096470();
  v9 = [swift_getObjCClassFromMetadata() appearance];
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  [v9 setBackgroundColor:v10];

  *a2 = v8;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  *(a2 + 40) = v16.n128_u8[0];
  *(a2 + 48) = v16.n128_u64[1];
  *(a2 + 56) = v16;
  *(a2 + 72) = v17;
  *(a2 + 88) = v18;
  *(a2 + 104) = v19;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  result = v16;
  *(a2 + 136) = v16;
  *(a2 + 152) = v17;
  *(a2 + 160) = v16;
  return result;
}

unint64_t sub_100096470()
{
  result = qword_100118FB8;
  if (!qword_100118FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100118FB8);
  }

  return result;
}

uint64_t sub_1000964BC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000964D4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100096508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100096550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100096614()
{
  result = qword_100119038;
  if (!qword_100119038)
  {
    sub_100010624(&qword_100119030, &qword_1000D2A78);
    sub_1000966CC();
    sub_10001E490(&qword_100119060, &qword_100119068, &qword_1000D2A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119038);
  }

  return result;
}

unint64_t sub_1000966CC()
{
  result = qword_100119040;
  if (!qword_100119040)
  {
    sub_100010624(&qword_100119048, &qword_1000D2A80);
    sub_10001E490(&qword_100119050, &qword_100119058, &qword_1000D2A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119040);
  }

  return result;
}

unint64_t sub_1000967B4()
{
  result = qword_100119098;
  if (!qword_100119098)
  {
    sub_100010624(&qword_100119090, &qword_1000D2AE8);
    sub_10009686C();
    sub_10001E490(&qword_1001190D0, &qword_1001190D8, &qword_1000D2B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119098);
  }

  return result;
}

unint64_t sub_10009686C()
{
  result = qword_1001190A0;
  if (!qword_1001190A0)
  {
    sub_100010624(&qword_1001190A8, &qword_1000D2AF0);
    sub_10001E490(&qword_1001190B0, &qword_1001190B8, &qword_1000D2AF8);
    sub_10001E490(&qword_1001190C0, &qword_1001190C8, &qword_1000D2B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001190A0);
  }

  return result;
}

unint64_t sub_100096950()
{
  result = qword_1001190E0;
  if (!qword_1001190E0)
  {
    sub_100010624(&qword_100119080, &qword_1000D2AD8);
    sub_1000967B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001190E0);
  }

  return result;
}

unint64_t sub_1000969E8()
{
  result = qword_100119100;
  if (!qword_100119100)
  {
    sub_100010624(&qword_1001190F0, &qword_1000D2B18);
    sub_100096AA0();
    sub_10001E490(&qword_1001190C0, &qword_1001190C8, &qword_1000D2B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119100);
  }

  return result;
}

unint64_t sub_100096AA0()
{
  result = qword_100119108;
  if (!qword_100119108)
  {
    sub_100010624(&qword_100119110, &qword_1000D2B28);
    sub_10001E490(&qword_100119118, &qword_100119120, &qword_1000D2B30);
    sub_10001E490(&qword_1001190D0, &qword_1001190D8, &qword_1000D2B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119108);
  }

  return result;
}

unint64_t sub_100096B84()
{
  result = qword_100119128;
  if (!qword_100119128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119128);
  }

  return result;
}

unint64_t sub_100096BD8()
{
  result = qword_100119130;
  if (!qword_100119130)
  {
    sub_100010624(&qword_1001190F8, &qword_1000D2B20);
    sub_100096C64();
    sub_100096D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119130);
  }

  return result;
}

unint64_t sub_100096C64()
{
  result = qword_100119138;
  if (!qword_100119138)
  {
    sub_100010624(&qword_100119140, &qword_1000D2B38);
    sub_1000970A8(&qword_100116AE8, type metadata accessor for ComposeMailView);
    sub_10008B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119138);
  }

  return result;
}

unint64_t sub_100096D20()
{
  result = qword_100119148;
  if (!qword_100119148)
  {
    sub_100010624(&qword_100119150, &qword_1000D2B40);
    sub_100083C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119148);
  }

  return result;
}

unint64_t sub_100096DAC()
{
  result = qword_100119160;
  if (!qword_100119160)
  {
    sub_100010624(&qword_100119158, &qword_1000D2B48);
    sub_100096E64();
    sub_10001E490(&qword_1001190C0, &qword_1001190C8, &qword_1000D2B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119160);
  }

  return result;
}

unint64_t sub_100096E64()
{
  result = qword_100119168;
  if (!qword_100119168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119168);
  }

  return result;
}

uint64_t sub_100096F38()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[18];

  if (v0[19])
  {
    v11 = v0[20];
  }

  v12 = v0[21];

  v13 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100096FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeMailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009704C(uint64_t a1)
{
  v2 = type metadata accessor for ComposeMailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000970A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000970F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100017CBC;

  return sub_1000958B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000971CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100097218(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 216);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011080;

  return sub_100093DF0(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_1000972E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[17];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[21];

  if (v0[22])
  {
    v12 = v0[23];
  }

  v13 = v0[24];

  v14 = v0[26];

  v15 = v0[27];

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_100097390(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 216);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_100094B08(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_100097460(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001191D0, &qword_1000D2C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000974D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C64F4();
  *a1 = result;
  return result;
}

uint64_t sub_10009752C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100097570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000975EC()
{
  sub_100010624(&qword_100118FC0, &qword_1000D2A38);
  sub_1000C66B4();
  sub_10001E490(&qword_100119000, &qword_100118FC0, &qword_1000D2A38);
  sub_1000970A8(&qword_100119008, &type metadata accessor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000976D0()
{
  result = qword_100119218;
  if (!qword_100119218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119218);
  }

  return result;
}

unint64_t sub_100097774()
{
  result = qword_100119220;
  if (!qword_100119220)
  {
    sub_100010624(&qword_100119228, &qword_1000D2F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119220);
  }

  return result;
}

uint64_t sub_100097834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10009787C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000978F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003CBD4();
  sub_1000C5DF4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1000979D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = sub_10000FEB8(&qword_100119240, &qword_1000D3060);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  __chkstk_darwin(v7);
  v11 = &v29[-v10 - 4];
  v12 = *a1;
  v13 = *(*a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact);
  sub_1000C6C54();
  sub_1000C62C4();
  LOBYTE(v39[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  *v11 = sub_1000C6604();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v14 = sub_10000FEB8(&qword_100119248, &qword_1000D3068);
  sub_100097D84(a1, &v11[*(v14 + 44)]);
  v15 = *(v12 + 80);
  v16 = sub_1000C6A64();
  sub_1000C6C54();
  sub_1000C62C4();
  *&v29[6] = *&v30[51];
  *&v29[22] = *&v30[59];
  *&v29[38] = *&v30[67];
  sub_100017574(v11, v9, &qword_100119240, &qword_1000D3060);
  v17 = v13;
  v31[0] = v13;
  v31[1] = 0;
  *v32 = 257;
  *&v32[2] = *v30;
  *&v32[18] = *&v30[8];
  *&v32[34] = *&v30[16];
  *&v32[48] = *&v30[23];
  v18 = *v32;
  v19 = *&v32[16];
  v20 = *&v32[32];
  *(a3 + 64) = *&v30[23];
  *(a3 + 32) = v19;
  *(a3 + 48) = v20;
  *a3 = v13;
  *(a3 + 16) = v18;
  v21 = sub_10000FEB8(&qword_100119250, &unk_1000D3070);
  sub_100017574(v9, a3 + v21[12], &qword_100119240, &qword_1000D3060);
  v22 = *&v29[16];
  *(v33 + 10) = *v29;
  v23 = a3 + v21[16];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a3 + v21[20]);
  *&v33[0] = v16;
  WORD4(v33[0]) = 256;
  *(&v33[1] + 10) = v22;
  *(&v33[2] + 10) = *&v29[32];
  *(&v33[3] + 1) = *&v29[46];
  sub_100017574(v31, v39, &qword_100117CF0, &unk_1000D6550);
  sub_100017574(v33, v39, &qword_100119258, &qword_1000D3080);

  v25 = v33[1];
  *v24 = v33[0];
  v24[1] = v25;
  v26 = v33[3];
  v24[2] = v33[2];
  v24[3] = v26;
  sub_100010F24(v11, &qword_100119240, &qword_1000D3060);
  v34 = v16;
  v35 = 256;
  v36 = *v29;
  v37 = *&v29[16];
  *v38 = *&v29[32];
  *&v38[14] = *&v29[46];
  sub_100010F24(&v34, &qword_100119258, &qword_1000D3080);
  sub_100010F24(v9, &qword_100119240, &qword_1000D3060);
  v39[0] = v17;
  v39[1] = 0;
  v40 = 257;
  v41 = *v30;
  v42 = *&v30[8];
  *v43 = *&v30[16];
  *&v43[14] = *&v30[23];
  return sub_100010F24(v39, &qword_100117CF0, &unk_1000D6550);
}

uint64_t sub_100097D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_10000FEB8(&qword_100119260, &qword_1000D3088);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = *a1;
  v10 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v44 = v10;
  v45 = v11;
  sub_1000383C8();

  v12 = sub_1000C68D4();
  v14 = v13;
  v44 = v12;
  v45 = v13;
  v16 = v15 & 1;
  v46 = v15 & 1;
  v47 = v17;
  sub_1000C6964();
  sub_1000500D8(v12, v14, v16);

  v18 = *(v9 + 56);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(v9 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v44 = *(v9 + 48);
    v45 = v18;

    v20 = sub_1000C68D4();
    v22 = v21;
    v24 = v23;
    sub_1000C67D4();
    v25 = sub_1000C68B4();
    v27 = v26;
    v29 = v28;

    sub_1000500D8(v20, v22, v24 & 1);

    sub_1000C6A54();
    v30 = sub_1000C6884();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    sub_1000500D8(v25, v27, v29 & 1);

    v37 = v34 & 1;
    sub_100050DE0(v30, v32, v37);
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v37 = 0;
    v36 = 0;
  }

  v38 = v43;
  sub_100017574(v8, v43, &qword_100119260, &qword_1000D3088);
  v39 = v42;
  sub_100017574(v38, v42, &qword_100119260, &qword_1000D3088);
  v40 = (v39 + *(sub_10000FEB8(&qword_100119268, &qword_1000D3090) + 48));
  sub_100098148(v30, v32, v37, v36);
  sub_10009818C(v30, v32, v37, v36);
  *v40 = v30;
  v40[1] = v32;
  v40[2] = v37;
  v40[3] = v36;
  sub_100010F24(v8, &qword_100119260, &qword_1000D3088);
  sub_10009818C(v30, v32, v37, v36);
  return sub_100010F24(v38, &qword_100119260, &qword_1000D3088);
}

uint64_t sub_1000980C4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v9 = *(v2 + 32);
  *a2 = sub_1000C65C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_10000FEB8(&qword_100119238, &qword_1000D3058);
  return sub_1000979D0(v8, a1, a2 + *(v6 + 44));
}

uint64_t sub_100098148(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100050DE0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10009818C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000500D8(result, a2, a3 & 1);
  }

  return result;
}

id sub_10009822C()
{
  result = [objc_allocWithZone(CNContact) init];
  qword_100119230 = result;
  return result;
}

uint64_t sub_100098260@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10000FEB8(&qword_100119290, &qword_1000D3168);
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  if (qword_100115F88 != -1)
  {
    swift_once();
  }

  v12 = qword_100119230;
  sub_1000C6C54();
  sub_1000C62C4();
  *&v41[3] = *&v41[27];
  LOBYTE(v44) = 1;
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  v13 = objc_opt_self();
  v39 = v12;
  v14 = [v13 mainBundle];
  v38._countAndFlagsBits = 0x80000001000DC2F0;
  v50._object = 0x80000001000DC2D0;
  v50._countAndFlagsBits = 0xD000000000000012;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v15.super.isa = v14;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v16 = sub_1000C5B74(v50, v51, v15, v52, v38);
  v18 = v17;

  v44 = v16;
  v45 = v18;
  sub_1000383C8();
  v19 = sub_1000C68D4();
  v21 = v20;
  LOBYTE(v14) = v22;
  v24 = v23;
  sub_1000C61C4();
  v25 = sub_1000C61F4();
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  v26 = &v11[v6[9]];
  *v26 = a1;
  *(v26 + 1) = a2;
  v27 = &v11[v6[10]];
  *v27 = sub_1000986C8;
  v27[1] = 0;
  v28 = &v11[v6[11]];
  LOBYTE(v42) = 0;

  sub_1000C6AD4();
  v29 = v45;
  *v28 = v44;
  *(v28 + 1) = v29;
  v30 = v40;
  sub_100017574(v11, v40, &qword_100119290, &qword_1000D3168);
  v31 = v39;
  v42 = v39;
  *v43 = 257;
  *&v43[2] = *v41;
  *&v43[18] = *&v41[8];
  *&v43[34] = *&v41[16];
  v32 = *&v41[23];
  *&v43[48] = *&v41[23];
  v33 = v39;
  v34 = *v43;
  v35 = *&v43[32];
  *(a3 + 32) = *&v43[16];
  *(a3 + 48) = v35;
  *a3 = v33;
  *(a3 + 16) = v34;
  *(a3 + 64) = v32;
  *(a3 + 72) = v19;
  *(a3 + 80) = v21;
  LOBYTE(v14) = v14 & 1;
  *(a3 + 88) = v14;
  *(a3 + 96) = v24;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  v36 = sub_10000FEB8(&qword_100119298, &qword_1000D3170);
  sub_100017574(v30, a3 + *(v36 + 80), &qword_100119290, &qword_1000D3168);
  sub_100017574(&v42, &v44, &qword_100117CF0, &unk_1000D6550);
  sub_100050DE0(v19, v21, v14);

  sub_100010F24(v11, &qword_100119290, &qword_1000D3168);
  sub_100010F24(v30, &qword_100119290, &qword_1000D3168);
  sub_1000500D8(v19, v21, v14);

  v44 = v31;
  v45 = 0;
  v46 = 257;
  v47 = *v41;
  v48 = *&v41[8];
  *v49 = *&v41[16];
  *&v49[14] = *&v41[23];
  return sub_100010F24(&v44, &qword_100117CF0, &unk_1000D6550);
}

uint64_t sub_1000986C8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0x80000001000DC330;
  v9._countAndFlagsBits = 0x65766F6D6552;
  v9._object = 0xE600000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1000C5B74(v9, v10, v3, v11, v8);

  sub_1000383C8();
  result = sub_1000C68D4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_100098798(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) == (result & 1))
  {
    *(a2 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003CBD4();
    sub_1000C5DE4();
  }

  return result;
}

uint64_t sub_10009887C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_1000C65C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_10000FEB8(&qword_100119280, &qword_1000D3130);
  sub_100098260(v4, v5, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  *(v7 + 4) = v5;
  v8 = (a1 + *(sub_10000FEB8(&qword_100119288, &qword_1000D3138) + 36));
  *v8 = sub_10009899C;
  v8[1] = v7;
}

uint64_t sub_10009895C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009899C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_100098798(a1, v1[2]);
}

unint64_t sub_1000989F8()
{
  result = qword_1001192A0;
  if (!qword_1001192A0)
  {
    sub_100010624(&qword_100119288, &qword_1000D3138);
    sub_100098A9C(&qword_1001192A8, &qword_1001192B0, &qword_1000D3178);
    sub_100098AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192A0);
  }

  return result;
}

uint64_t sub_100098A9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100098AF0()
{
  result = qword_1001192B8;
  if (!qword_1001192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192B8);
  }

  return result;
}

unint64_t sub_100098B4C()
{
  v1 = type metadata accessor for SPIAnalyticsEvent();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099C28(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = sub_10000FEB8(&qword_1001192C8, &qword_1000D3188);
      v15 = *&v4[v14[20]];

      v16 = *&v4[v14[24] + 8];

      v17 = &v4[v14[28]];
      sub_100099CE8(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3), *(v17 + 4), v17[40]);
      v18 = sub_1000C5D84();
      (*(*(v18 - 8) + 8))(v4, v18);
      result = 0xD000000000000029;
      break;
    case 2u:
    case 3u:
    case 8u:
    case 0xDu:
      sub_100099C8C(v4);
      result = 0xD00000000000002BLL;
      break;
    case 4u:
    case 6u:
      sub_100099C8C(v4);
      result = 0xD000000000000030;
      break;
    case 5u:
    case 0xAu:
      sub_100099C8C(v4);
      result = 0xD000000000000026;
      break;
    case 7u:
    case 9u:
      sub_100099C8C(v4);
      result = 0xD000000000000022;
      break;
    case 0xBu:
      sub_100099C8C(v4);
      result = 0xD000000000000036;
      break;
    case 0xCu:
      v10 = sub_10000FEB8(&qword_1001192C0, &qword_1000D3180);

      v11 = *&v4[v10[24]];

      v12 = *&v4[v10[28] + 8];

      v13 = &v4[v10[32]];
      sub_100099CE8(*v13, *(v13 + 1), *(v13 + 2), *(v13 + 3), *(v13 + 4), v13[40]);
      sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
      result = 0xD000000000000038;
      break;
    case 0xEu:
      sub_100099C8C(v4);
      goto LABEL_4;
    default:
      v5 = sub_10000FEB8(&qword_1001192D0, &unk_1000D3190);
      v6 = *&v4[*(v5 + 64) + 8];

      v7 = &v4[*(v5 + 80)];
      sub_100099CE8(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), v7[40]);
      v8 = sub_1000C5D84();
      (*(*(v8 - 8) + 8))(v4, v8);
LABEL_4:
      result = 0xD000000000000028;
      break;
  }

  return result;
}

void *sub_100098F58()
{
  v1 = v0;
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v119 - v4;
  v6 = sub_1000C5D84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SPIAnalyticsEvent();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099C28(v1, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v99 = sub_10000FEB8(&qword_1001192C8, &qword_1000D3188);
      v100 = v99[12];
      v101 = v99[16];
      v102 = *&v14[v99[20]];
      v103 = &v14[v99[24]];
      v104 = v103[1];
      v119 = *v103;
      v105 = &v14[v99[28]];
      v106 = *(v105 + 1);
      v121 = *v105;
      v122[0] = v106;
      *(v122 + 9) = *(v105 + 25);
      v107 = v105[40];
      v108 = v14[v100];
      v109 = v14[v101];
      (*(v7 + 32))(v10, v14, v6);
      (*(v7 + 16))(v5, v10, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      sub_1000193C0(v108, v107 != 255);
      sub_10001954C(v109, v107 != 255);
      sub_1000196BC(v108, v102);
      v110 = sub_100018CDC(v5, 0, v119, v104, &v121, 0, 0xE000000000000000);

      isa = sub_1000C6F94().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v110;
      sub_100030594(isa, 0x737365636361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v113 = v120;
      v114 = sub_1000C6F94().super.super.isa;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v113;
      sub_100030594(v114, 0x697373696D726570, 0xEB00000000736E6FLL, v115);
      v116 = v120;
      v117 = sub_1000C6F94().super.super.isa;
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v116;
      sub_100030594(v117, 0x766E49776F6C6C61, 0xED0000676E697469, v118);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);
      v20 = v120;
      sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
      goto LABEL_15;
    case 2u:
      v57 = *(v14 + 1);
      v119 = *v14;
      v59 = *(v14 + 3);
      v58 = *(v14 + 4);
      v60 = *(v14 + 5);
      v61 = *(v14 + 4);
      v121 = *(v14 + 3);
      v122[0] = v61;
      *(v122 + 9) = *(v14 + 73);
      v62 = v14[88];
      v63 = v14[16];
      v64 = v14[17];
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_1000193C0(v63, v62 != 255);
      sub_10001954C(v64, v62 != 255);
      sub_1000196BC(v63, v59);
      v65 = sub_100018CDC(v5, 0, v58, v60, &v121, v119, v57);

      v66 = sub_1000C6F94().super.super.isa;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v65;
      sub_100030594(v66, 0x737365636361, 0xE600000000000000, v67);
      v68 = v120;
      v69 = sub_1000C6F94().super.super.isa;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v68;
      sub_100030594(v69, 0x697373696D726570, 0xEB00000000736E6FLL, v70);
      v71 = v120;
      goto LABEL_9;
    case 3u:
      v72 = *(v14 + 1);
      v73 = *(v14 + 2);
      v74 = *(v14 + 3);
      v75 = *(v14 + 3);
      v121 = *(v14 + 2);
      v122[0] = v75;
      *(v122 + 9) = *(v14 + 57);
      v76 = v14[72];
      v77 = *v14;
      v78 = v14[1];
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_1000193C0(v77, v76 != 255);
      sub_10001954C(v78, v76 != 255);
      sub_1000196BC(v77, v72);
      v79 = sub_100018CDC(v5, 0, v73, v74, &v121, 0, 0xE000000000000000);

      v80 = sub_1000C6F94().super.super.isa;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v79;
      sub_100030594(v80, 0x737365636361, 0xE600000000000000, v81);
      v82 = v120;
      v83 = sub_1000C6F94().super.super.isa;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v82;
      sub_100030594(v83, 0x697373696D726570, 0xEB00000000736E6FLL, v84);
      v71 = v120;
LABEL_9:
      v85 = sub_1000C6F94().super.super.isa;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v71;
      sub_100030594(v85, 0x766E49776F6C6C61, 0xED0000676E697469, v86);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);
      goto LABEL_10;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      v19 = *(v14 + 3);
      v121 = *(v14 + 2);
      v122[0] = v19;
      *(v122 + 9) = *(v14 + 57);
      (*(v7 + 56))(v5, 1, 1, v6);
      v20 = sub_100018CDC(v5, 0, v17, v18, &v121, v15, v16);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);

      goto LABEL_11;
    case 9u:
    case 0xBu:
      v23 = *v14;
      v24 = *(v14 + 1);
      v25 = *(v14 + 2);
      v26 = *(v14 + 40);
      v121 = *(v14 + 24);
      v122[0] = v26;
      *(v122 + 9) = *(v14 + 49);
      (*(v7 + 56))(v5, 1, 1, v6);
      v20 = sub_100018CDC(v5, v23, v24, v25, &v121, 0, 0xE000000000000000);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);

      goto LABEL_11;
    case 0xAu:
      v28 = *v14;
      v27 = *(v14 + 1);
      v29 = *(v14 + 2);
      v30 = *(v14 + 3);
      v31 = *(v14 + 3);
      v121 = *(v14 + 2);
      v122[0] = v31;
      *(v122 + 9) = *(v14 + 57);
      sub_100019774(v27, v14[72] != 255);
      (*(v7 + 56))(v5, 1, 1, v6);
      v32 = sub_100018CDC(v5, v28, v29, v30, &v121, 0, 0xE000000000000000);

      sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
      v33 = sub_1000C6F94().super.super.isa;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v32;
      sub_100030594(v33, 0x737574617473, 0xE600000000000000, v34);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);

      return v120;
    case 0xCu:
      v35 = sub_10000FEB8(&qword_1001192C0, &qword_1000D3180);
      v36 = *&v14[v35[12]];
      v37 = v35[16];
      v38 = *&v14[v35[24]];
      v39 = v35[20];
      v40 = &v14[v35[28]];
      v41 = *v40;
      v42 = v40[1];
      v43 = &v14[v35[32]];
      v44 = *(v43 + 1);
      v121 = *v43;
      v122[0] = v44;
      *(v122 + 9) = *(v43 + 25);
      v45 = v14[v37];
      v46 = v14[v39];
      v47 = v43[40];
      sub_10000FF00(v14, v5);
      sub_1000193C0(v45, v47 != 255);
      sub_10001954C(v46, v47 != 255);
      sub_1000196BC(v45, v38);
      v48 = sub_100018CDC(v5, v36, v41, v42, &v121, 0, 0xE000000000000000);

      v49 = sub_1000C6F94().super.super.isa;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v48;
      sub_100030594(v49, 0x737365636361, 0xE600000000000000, v50);
      v51 = v120;
      v52 = sub_1000C6F94().super.super.isa;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v51;
      sub_100030594(v52, 0x697373696D726570, 0xEB00000000736E6FLL, v53);
      v54 = v120;
      v55 = sub_1000C6F94().super.super.isa;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v54;
      sub_100030594(v55, 0x766E49776F6C6C61, 0xED0000676E697469, v56);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);

LABEL_10:
      v20 = v120;
      goto LABEL_11;
    case 0xDu:
    case 0xEu:
      v21 = *v14;
      v22 = *(v14 + 24);
      v121 = *(v14 + 8);
      v122[0] = v22;
      *(v122 + 9) = *(v14 + 33);
      (*(v7 + 56))(v5, 1, 1, v6);
      v20 = sub_100018CDC(v5, v21, 0, 0, &v121, 0, 0xE000000000000000);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);

LABEL_11:
      sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
      break;
    default:
      v88 = sub_10000FEB8(&qword_1001192D0, &unk_1000D3190);
      v89 = *&v14[v88[12]];
      v90 = &v14[v88[16]];
      v92 = *v90;
      v91 = v90[1];
      v93 = &v14[v88[20]];
      v94 = *(v93 + 1);
      v121 = *v93;
      v122[0] = v94;
      *(v122 + 9) = *(v93 + 25);
      v95 = v93[40];
      (*(v7 + 32))(v10, v14, v6);
      sub_100017D30(v89, v95 != 255);
      (*(v7 + 16))(v5, v10, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      v96 = sub_100018CDC(v5, 0, v92, v91, &v121, 0, 0xE000000000000000);

      sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
      v97 = sub_1000C6F94().super.super.isa;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v96;
      sub_100030594(v97, 0x737574617473, 0xE600000000000000, v98);
      sub_100010F24(&v121, &qword_1001167F0, &qword_1000CC600);
      v20 = v120;
LABEL_15:
      (*(v7 + 8))(v10, v6);
      break;
  }

  return v20;
}

uint64_t type metadata accessor for SPIAnalyticsEvent()
{
  result = qword_100119348;
  if (!qword_100119348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100099C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SPIAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099C8C(uint64_t a1)
{
  v2 = type metadata accessor for SPIAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099CE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_1000494BC(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

void sub_100099D4C()
{
  sub_10009A214(319, &qword_100119358, &type metadata accessor for URL, type metadata accessor for CSUIShareItemStatus);
  if (v0 <= 0x3F)
  {
    sub_100099EB8();
    if (v1 <= 0x3F)
    {
      sub_100099F74();
      if (v2 <= 0x3F)
      {
        sub_10009A030();
        if (v3 <= 0x3F)
        {
          sub_10009A0E4();
          if (v4 <= 0x3F)
          {
            sub_10009A174();
            if (v5 <= 0x3F)
            {
              sub_10009A214(319, &qword_100119388, sub_100020C20, type metadata accessor for CSUICurrentUserCKShareStatus);
              if (v6 <= 0x3F)
              {
                sub_10009A2CC();
                if (v7 <= 0x3F)
                {
                  sub_10009A3AC();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_100099EB8()
{
  if (!qword_100119360)
  {
    sub_1000C5D84();
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100119360);
    }
  }
}

void sub_100099F74()
{
  if (!qword_100119368)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100119368);
    }
  }
}

void sub_10009A030()
{
  if (!qword_100119370)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100119370);
    }
  }
}

void sub_10009A0E4()
{
  if (!qword_100119378)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100119378);
    }
  }
}

void sub_10009A174()
{
  if (!qword_100119380)
  {
    sub_100020C20();
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100119380);
    }
  }
}

void sub_10009A214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_10009A2CC()
{
  if (!qword_100119390)
  {
    sub_100010624(&qword_100116260, &qword_1000CD940);
    sub_100010624(&qword_100118B40, &qword_1000D31C0);
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100119390);
    }
  }
}

void sub_10009A3AC()
{
  if (!qword_100119398)
  {
    sub_100010624(&qword_100118B40, &qword_1000D31C0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100119398);
    }
  }
}

uint64_t sub_10009A448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5DC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009A51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C5DC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10009A5F8()
{
  sub_1000C5DC4();
  if (v0 <= 0x3F)
  {
    sub_10009AE9C(319, &qword_100119430, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10009AA6C(319, &unk_100119438, type metadata accessor for AlertViewModelButton, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10009A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5DC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10009A864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C5DC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10009A998()
{
  sub_1000C5DC4();
  if (v0 <= 0x3F)
  {
    sub_10009AA6C(319, &qword_100118A18, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10009AAD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10009AA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10009AAD0()
{
  if (!qword_100116AA8)
  {
    sub_100010624(&unk_100116AB0, &qword_1000CCC48);
    v0 = sub_1000C71C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100116AA8);
    }
  }
}

uint64_t sub_10009AB80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C5DC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10009ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009ACDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10009ADC4()
{
  sub_10009AA6C(319, &qword_100119578, type metadata accessor for AlertViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10009AE9C(319, &unk_100119580, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10009AE9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10009AF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v22 = a1;
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v18 - v6;
  sub_100017574(v3, v18 - v6, &qword_100116C80, &unk_1000CE870);
  v8 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_10009B914(v7);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = &v7[*(v8 + 20)];
    v9 = *v11;
    v10 = *(v11 + 1);

    sub_10009BB3C(v7);
  }

  v18[1] = v10;
  v27 = v9;
  v28 = v10;
  v12 = v3 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v12) = *(v12 + 16);
  v24 = v13;
  v25 = v14;
  v26 = v12;
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  v15 = sub_1000C6BB4();
  v20 = v18;
  v19 = v23;
  v16 = __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  sub_10000FEB8(&qword_1001195B0, &qword_1000D3300);
  sub_10000FEB8(&qword_1001195B8, &qword_1000D3308);
  sub_10000FEB8(&qword_1001195C0, &qword_1000D3310);
  sub_10001E490(&qword_1001195C8, &qword_1001195B0, &qword_1000D3300);
  sub_1000383C8();
  sub_10009B98C();
  sub_10009BAC0();
  sub_1000C69A4();
}

uint64_t sub_10009B1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_10000FEB8(&qword_1001195E0, &qword_1000D3318);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - v6;
  v8 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  v12 = type metadata accessor for AlertViewModel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017574(a1, v11, &qword_100116C80, &unk_1000CE870);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10009B914(v11);
    v17 = 1;
    v18 = v22;
  }

  else
  {
    sub_10009BD78(v11, v16, type metadata accessor for AlertViewModel);
    v23 = *&v16[*(v12 + 28)];

    v21[1] = sub_10000FEB8(&qword_100119600, &qword_1000D3328);
    sub_1000C5DC4();
    sub_10000FEB8(&qword_1001195F0, &qword_1000D3320);
    sub_10001E490(&qword_100119608, &qword_100119600, &qword_1000D3328);
    sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320);
    sub_10009BB98(qword_100119610, type metadata accessor for AlertViewModelButton);
    sub_1000C6BF4();
    sub_10009BB3C(v16);
    v19 = v22;
    (*(v4 + 32))(v22, v7, v3);
    v17 = 0;
    v18 = v19;
  }

  return (*(v4 + 56))(v18, v17, 1, v3);
}

uint64_t sub_10009B568(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100017574(a1 + *(v3 + 32), &v12[-v8], qword_100118990, &unk_1000D1890);
  sub_100049224(a1, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_10009BD78(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for AlertViewModelButton);
  v13 = a1;
  return sub_1000C6B24();
}

uint64_t sub_10009B734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AlertViewModelButton(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_100050DE0(v4, v5, v6);
}

uint64_t sub_10009B798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - v6;
  sub_100017574(a1, v17 - v6, &qword_100116C80, &unk_1000CE870);
  v8 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_10009B914(v7);
LABEL_5:
    result = 0;
    v13 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v9 = &v7[*(v8 + 24)];
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_10009BB3C(v7);
  if (!v10)
  {
    goto LABEL_5;
  }

  v17[0] = v11;
  v17[1] = v10;
  sub_1000383C8();
  result = sub_1000C68D4();
  v16 = v15 & 1;
LABEL_6:
  *a2 = result;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v14;
  return result;
}

uint64_t sub_10009B914(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009B98C()
{
  result = qword_1001195D0;
  if (!qword_1001195D0)
  {
    sub_100010624(&qword_1001195B8, &qword_1000D3308);
    sub_10009BA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195D0);
  }

  return result;
}

unint64_t sub_10009BA10()
{
  result = qword_1001195D8;
  if (!qword_1001195D8)
  {
    sub_100010624(&qword_1001195E0, &qword_1000D3318);
    sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195D8);
  }

  return result;
}

unint64_t sub_10009BAC0()
{
  result = qword_1001195F8;
  if (!qword_1001195F8)
  {
    sub_100010624(&qword_1001195C0, &qword_1000D3310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195F8);
  }

  return result;
}

uint64_t sub_10009BB3C(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009BB98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009BBE0()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1000C5DC4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  sub_1000500D8(*v7, *(v7 + 8), *(v7 + 16));
  v8 = *(v7 + 24);

  v9 = v1[6];
  v10 = sub_1000C61F4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v5 + v1[7]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009BD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009BDE0()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_10009BE5C()
{
  sub_100010624(&qword_1001195B0, &qword_1000D3300);
  sub_100010624(&qword_1001195B8, &qword_1000D3308);
  sub_100010624(&qword_1001195C0, &qword_1000D3310);
  sub_10001E490(&qword_1001195C8, &qword_1001195B0, &qword_1000D3300);
  sub_1000383C8();
  sub_10009B98C();
  sub_10009BAC0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009BF64(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1000C60B4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009C050()
{
  v1 = v0;
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL;
  v13 = *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL);
  v34 = v2;
  v14 = sub_1000106C0();
  v35 = v14;
  swift_getKeyPath();
  v32 = v2;
  v33 = v14;
  swift_getKeyPath();

  sub_1000C6094();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10009CB18(v7);
    v15 = *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle);

    sub_10000DC84(0, 0);

    v17 = *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName);
    __chkstk_darwin(v16);
    v18 = sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    *(&v30 - 2) = v18;
    v19 = sub_1000105A8();
    *(&v30 - 1) = v19;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v30 - 2) = v18;
    *(&v30 - 1) = v19;
    swift_getKeyPath();

    sub_1000C6094();

    v21 = v37;
    if (v37)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v21 == 0;

    sub_1000C60A4();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v22 = sub_1000C5D14();
    v24 = v23;
    v25 = *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle);

    sub_10000DC84(v22, v24);

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = 0;

    sub_1000C60A4();
    (*(v9 + 8))(v12, v8);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = *(v1 + v30);
    __chkstk_darwin(result);
    *(&v30 - 2) = v2;
    *(&v30 - 1) = v14;
    v28 = swift_getKeyPath();
    __chkstk_darwin(v28);
    *(&v30 - 2) = v2;
    *(&v30 - 1) = v14;
    swift_getKeyPath();

    v29 = v31;
    sub_1000C6094();

    sub_10000CEE8(v29);
    swift_unknownObjectRelease();
    return sub_10009CB18(v29);
  }

  return result;
}

uint64_t sub_10009C52C()
{
  v1 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v15 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle);
  v6 = sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  v15[2] = v6;
  v7 = sub_1000105A8();
  v15[3] = v7;
  swift_getKeyPath();
  v15[0] = v6;
  v15[1] = v7;
  swift_getKeyPath();

  sub_1000C6094();

  if (v17)
  {

    v9 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName);
    __chkstk_darwin(v8);
    v15[-2] = v6;
    v15[-1] = v7;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v6;
    v15[-1] = v7;
    swift_getKeyPath();

    sub_1000C6094();

    if (v17)
    {

      v11 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v12 = sub_1000C5D84();
      v11 = (*(*(v12 - 8) + 48))(v4, 1, v12) != 1;
      sub_10009CB18(v4);
    }
  }

  else
  {
    v11 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v11;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v13 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = !v13;

  return sub_1000C60A4();
}

uint64_t sub_10009C880()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10009C93C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_1000C60B4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = (v0 + *(*v0 + 104));
  v5 = v4[1];
  sub_100011334(*v4);
  return v0;
}

uint64_t sub_10009C9E0()
{
  sub_10009C93C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 sub_10009CA64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10009CB18(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009CB80(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10009CBAC()
{
  result = qword_100119698;
  if (!qword_100119698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119698);
  }

  return result;
}

id sub_10009CC00()
{
  v1 = *v0;
  v2 = v0[1];
  v3.super.isa = sub_1000C6E84().super.isa;
  if (v2)
  {
    sub_10009CF84();
    v4.super.isa = sub_1000C6E84().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [objc_allocWithZone(UIActivityViewController) initWithActivityItems:v3.super.isa applicationActivities:v4.super.isa];

  isa = v0[2];
  if (isa)
  {
    type metadata accessor for ActivityType(0);
    isa = sub_1000C6E84().super.isa;
  }

  [v5 setExcludedActivityTypes:isa];

  if (v0[3])
  {
    v7 = v0[4];
    v10[4] = v0[3];
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10009CD68;
    v10[3] = &unk_10010A690;
    v8 = _Block_copy(v10);
  }

  else
  {
    v8 = 0;
  }

  [v5 setCompletionWithItemsHandler:v8];
  _Block_release(v8);
  return v5;
}

uint64_t sub_10009CD68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_1000C6E94();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_10009CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF18();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF18();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009CEF0()
{
  sub_10009CF18();
  sub_1000C6724();
  __break(1u);
}

unint64_t sub_10009CF18()
{
  result = qword_1001196A0;
  if (!qword_1001196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196A0);
  }

  return result;
}

uint64_t sub_10009CF6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10009CF84()
{
  result = qword_10011A260;
  if (!qword_10011A260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011A260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 8)
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10009D128(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10009D13C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

BOOL sub_10009D170(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 8;
  v5 = v3 == 9;
  v6 = v3 & 0xFE;
  v8 = v3 == 7 || v2 == v3;
  if (v2 == 7)
  {
    v8 = 1;
  }

  if (v6 == 8)
  {
    v8 = 0;
  }

  if (v2 == 9)
  {
    v8 = v5;
  }

  if (v2 == 8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10009D1C0()
{
  v1 = *v0;
  v2 = 0x69636570736E752ELL;
  v3 = 0x726568746F2ELL;
  if (v1 != 6)
  {
    v3 = 2037276974;
  }

  v4 = 0x6972616661732ELL;
  if (v1 != 4)
  {
    v4 = 0x726F66656572662ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F467365746F6E2ELL;
  if (v1 != 2)
  {
    v5 = 0x65646E696D65722ELL;
  }

  if (*v0)
  {
    v2 = 0x7365746F6E2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009D2CC(char a1)
{
  result = 0x7265646C6F66;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75636F64;
      break;
    case 2:
      result = 0x6873646165727073;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 6710384;
      break;
    case 7:
      result = 1702129518;
      break;
    case 8:
      result = 0x6C6F467365746F6ELL;
      break;
    case 9:
      result = 1953720684;
      break;
    case 10:
      result = 0x70756F7247626174;
      break;
    case 11:
      result = 0x6D726F6665657266;
      break;
    case 12:
      result = 0x43636972656E6567;
      break;
    case 13:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009D480(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10009D2CC(*a1);
  v5 = v4;
  if (v3 == sub_10009D2CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C73A4();
  }

  return v8 & 1;
}

Swift::Int sub_10009D508()
{
  v1 = *v0;
  sub_1000C7464();
  sub_10009D2CC(v1);
  sub_1000C6DD4();

  return sub_1000C7494();
}

uint64_t sub_10009D56C()
{
  sub_10009D2CC(*v0);
  sub_1000C6DD4();
}

Swift::Int sub_10009D5C0()
{
  v1 = *v0;
  sub_1000C7464();
  sub_10009D2CC(v1);
  sub_1000C6DD4();

  return sub_1000C7494();
}

uint64_t sub_10009D620@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009F578(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10009D650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D2CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009D67C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1000C5E34() - 8) + 64);
  (__chkstk_darwin)();
  v5 = sub_1000C5F74();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  v7 = (__chkstk_darwin)();
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v56 - v9;
  v10 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  v20 = sub_1000C5F24();
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = *(v63 + 64);
  v22 = __chkstk_darwin(v20);
  v57 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v60 = &v56 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v56 - v27;
  __chkstk_darwin(v26);
  v30 = &v56 - v29;
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000014;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000DC780 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000019;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  sub_1000C5F34();
  v32 = v63;
  v56 = *(v63 + 48);
  if (v56(v19, 1, v64) == 1)
  {
    sub_10009F1B0(v19);

    sub_1000C5E24();
    v33 = v64;
    (*(v32 + 56))(v14, 1, 1, v64);
    sub_1000C5E94();
    if (v56(v17, 1, v33) == 1)
    {
      sub_10009F1B0(v17);
    }

    else
    {
      v42 = v33;
      v43 = v60;
      (*(v32 + 32))(v60, v17, v33);
      v44 = v58;
      sub_1000C5F54();
      v45 = v57;
      (*(v32 + 16))(v57, v43, v33);
      v46 = sub_1000C5F64();
      v47 = sub_1000C6FF4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v45;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v65 = v50;
        *v49 = 136315138;
        v59 = sub_1000C5E44();
        v52 = v51;
        v53 = *(v32 + 8);
        v53(v48, v42);
        v54 = sub_100071844(v59, v52, &v65);

        *(v49 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v46, v47, "utiOfItem(fromCKShareType)--type from filename extension: %s", v49, 0xCu);
        sub_100010544(v50);
      }

      else
      {

        v53 = *(v32 + 8);
        v53(v45, v42);
      }

      (*(v61 + 8))(v44, v62);
      v55 = v60;
      a1 = sub_1000C5E44();
      v53(v55, v42);
    }
  }

  else
  {
    v34 = v19;
    v35 = v64;
    (*(v32 + 32))(v30, v34, v64);
    sub_1000C5EB4();
    v36 = sub_1000C5F14();
    v37 = *(v32 + 8);
    v37(v28, v35);
    v38 = v59;
    sub_1000C5F54();
    v39 = sub_1000C5F64();
    v40 = sub_1000C6FF4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      *(v41 + 4) = v36 & 1;
      _os_log_impl(&_mh_execute_header, v39, v40, "utiOfItem(fromCKShareType)--ckShareType is a UTType. Is file system item: %{BOOL}d", v41, 8u);
    }

    (*(v61 + 8))(v38, v62);
    a1 = sub_1000C5E44();
    v37(v30, v35);
  }

  return a1;
}

unint64_t sub_10009DE88(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = sub_1000C5D84();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  v5 = __chkstk_darwin(v3);
  v45 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_1000C5F74();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v9);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_1000C5BC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FEB8(&unk_1001196C0, &unk_1000CFFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CB170;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v21 = NSURLTypeIdentifierKey;
  sub_1000782B8(inited);
  swift_setDeallocating();
  sub_1000104E8(inited + 32);
  sub_1000C5CF4();
  v22 = v8;
  v23 = v14;
  v24 = v50;

  v25 = sub_1000C5B94();
  if (v26)
  {
    v27 = v25;
    (*(v16 + 8))(v19, v15);
    return v27;
  }

  v46 = v19;
  sub_1000C5F54();
  v32 = v24;
  v33 = v22;
  (*(v24 + 16))(v22, a1, v3);
  v34 = sub_1000C5F64();
  v35 = sub_1000C6FD4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v36 = 136315138;
    sub_100038E04();
    v37 = sub_1000C7374();
    v38 = v33;
    v40 = v39;
    (*(v32 + 8))(v38, v3);
    v41 = sub_100071844(v37, v40, v51);
    v42 = v23;
    v43 = v41;

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "resourceValues(forKeys:) returned nil for typeIdentifier (UTI) for URL: %s", v36, 0xCu);
    sub_100010544(v45);

    (*(v47 + 8))(v42, v48);
  }

  else
  {

    (*(v32 + 8))(v33, v3);
    (*(v47 + 8))(v23, v48);
  }

  (*(v16 + 8))(v46, v15);
  if (v49)
  {
    v29 = v49;
    sub_1000C7164();
    v30 = sub_1000C7174();

    if (v30)
    {
      v51[2] = v30;
      sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70);
      if (swift_dynamicCast())
      {
        v31 = sub_10009D67C(v51[0], v51[1]);

        return v31;
      }
    }
  }

  return 0;
}

uint64_t sub_10009E578()
{
  v0 = sub_1000C5F24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5EE4();
  v5 = sub_1000C5F04();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 0;
  }

  sub_1000C5E64();
  v8 = sub_1000C5F04();
  v6(v4, v0);
  if (v8)
  {
    return 3;
  }

  sub_1000C5E54();
  v9 = sub_1000C5F04();
  v6(v4, v0);
  if (v9)
  {
    return 2;
  }

  sub_1000C5EC4();
  v10 = sub_1000C5F04();
  v6(v4, v0);
  if (v10)
  {
    return 4;
  }

  sub_1000C5ED4();
  v11 = sub_1000C5F04();
  v6(v4, v0);
  if (v11)
  {
    return 5;
  }

  sub_1000C5E84();
  v12 = sub_1000C5F04();
  v6(v4, v0);
  if (v12)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10009E760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C5E34();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_1000C5F24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669)
  {
    return 1;
  }

  v19 = v16;
  if (sub_1000C73A4())
  {
    return 1;
  }

  if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000016 && 0x80000001000DC700 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_1000C73A4() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000DC720 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000DC780 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_1000C73A4() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000DC760 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 11;
  }

  sub_1000C5E24();
  (*(v14 + 56))(v10, 1, 1, v19);
  sub_1000C5E94();
  if ((*(v14 + 48))(v12, 1, v19) == 1)
  {
    sub_10009F1B0(v12);
    return 12;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v19);
    v21 = sub_10009E578();
    (*(v14 + 8))(v18, v19);
    return v21;
  }
}

uint64_t sub_10009EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5E34();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v31[1] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v31 - v15;
  __chkstk_darwin(v14);
  v18 = v31 - v17;
  v19 = sub_1000C5F24();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v31 - v25;
  v27 = sub_1000C5D84();
  if ((*(*(v27 - 8) + 48))(a3, 1, v27) == 1)
  {
    if (a1 == 0xD000000000000014 && 0x80000001000DC6E0 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 7;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001000DC700 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 8;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001000DC720 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 9;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001000DC740 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 10;
    }

    else if (a1 == 0x6C656D726163 && a2 == 0xE600000000000000 || (sub_1000C73A4() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000DC760 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 11;
    }

    else
    {
      result = 11;
      if (a1 != 0x6D726F6665657266 || a2 != 0xE800000000000000)
      {
        if (sub_1000C73A4())
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

  else
  {

    sub_1000C5F34();
    v31[0] = a1;
    v29 = *(v20 + 48);
    if (v29(v18, 1, v19) == 1)
    {
      sub_10009F1B0(v18);

      sub_1000C5E24();
      (*(v20 + 56))(v13, 1, 1, v19);
      sub_1000C5E94();
      if (v29(v16, 1, v19) == 1)
      {
        sub_10009F1B0(v16);
        return 1;
      }

      (*(v20 + 32))(v24, v16, v19);
      v30 = sub_10009E578();
      (*(v20 + 8))(v24, v19);
    }

    else
    {
      (*(v20 + 32))(v26, v18, v19);
      v30 = sub_10009E578();
      (*(v20 + 8))(v26, v19);
    }

    return v30;
  }

  return result;
}

uint64_t sub_10009F1B0(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CloudKitAppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAppType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009F36C()
{
  result = qword_1001196B8;
  if (!qword_1001196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UTISupport.SharingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UTISupport.SharingItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009F524()
{
  result = qword_1001196D0;
  if (!qword_1001196D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196D0);
  }

  return result;
}

uint64_t sub_10009F578(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100107500;
  v6._object = a2;
  v4 = sub_1000C7344(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10009F5F0()
{
  v0 = sub_1000C65F4();
  sub_10009F7D0(v6);
  *&v5[55] = v7;
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *&v4[17] = *&v5[16];
  *&v4[33] = *&v5[32];
  *&v4[49] = *&v5[48];
  v4[0] = 1;
  *&v4[64] = *(&v7 + 1);
  *&v4[1] = *v5;
  sub_10000FEB8(&qword_100118DB0, &qword_1000D2368);
  sub_10000FEB8(&qword_100118FD8, &qword_1000D2A50);
  sub_10001E490(&qword_100118DA8, &qword_100118DB0, &qword_1000D2368);
  v1 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v2 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60);
  *&v8[0] = v1;
  *(&v8[0] + 1) = v2;
  swift_getOpaqueTypeConformance2();
  sub_1000C69D4();
  v8[2] = *&v4[16];
  v8[3] = *&v4[32];
  v8[4] = *&v4[48];
  v9 = *&v4[64];
  v8[0] = v0;
  v8[1] = *v4;
  return sub_1000A0250(v8);
}

uint64_t sub_10009F7D0@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  sub_1000C67C4();
  v7 = sub_1000C68B4();
  v9 = v8;
  v11 = v10;

  sub_1000500D8(v2, v4, v6 & 1);

  sub_1000C6A54();
  v12 = sub_1000C6884();
  v28 = v13;
  v29 = v12;
  v27 = v14;
  v30 = v15;

  sub_1000500D8(v7, v9, v11 & 1);

  sub_1000C65D4();
  v16 = sub_1000C68C4();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_1000C6A54();
  v20 = sub_1000C6884();
  v22 = v21;
  LOBYTE(v4) = v23;
  v25 = v24;

  sub_1000500D8(v16, v18, v9 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v25;
  sub_100050DE0(v29, v28, v27 & 1);

  sub_100050DE0(v20, v22, v4 & 1);

  sub_1000500D8(v20, v22, v4 & 1);

  sub_1000500D8(v29, v28, v27 & 1);
}

uint64_t sub_10009FA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C6654();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10000FEB8(&qword_100118FF0, &qword_1000D2A60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12[-v9];
  sub_1000C6644();
  v13 = a1;
  v14 = a2;
  sub_10000FEB8(&qword_100119020, &qword_1000D2A70);
  sub_10001E490(&qword_100119028, &qword_100119020, &qword_1000D2A70);
  sub_1000C6254();
  sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60);
  sub_1000C6684();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10009FC38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10000FEB8(&qword_100119030, &qword_1000D2A78);
  sub_100096614();

  return sub_1000C6B34();
}

uint64_t sub_10009FCF4(uint64_t a1)
{
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10000816C();
      v2 = sub_1000077D8();
      if (v2)
      {
        [v2 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for SharingModel();
    sub_1000A0308(&qword_100117158, type metadata accessor for SharingModel);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009FDC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000C6A84();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = sub_1000C6A64();
  v6 = [v3 quaternaryLabelColor];
  v7 = sub_1000C6A64();
  v8 = (a1 + *(sub_10000FEB8(&qword_100119030, &qword_1000D2A78) + 36));
  v9 = *(sub_10000FEB8(&qword_100119068, &qword_1000D2A90) + 28);
  v10 = enum case for Image.Scale.large(_:);
  v11 = sub_1000C6AA4();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  result = swift_getKeyPath();
  *v8 = result;
  *a1 = v2;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

uint64_t sub_10009FEFC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1000C66B4();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_1001196E0, &qword_1000D3868);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v24 = *v1;
  v20 = sub_10000FEB8(&qword_1001196E8, &qword_1000D3870);
  v12 = sub_100010624(&qword_100118DB0, &qword_1000D2368);
  v13 = sub_100010624(&qword_100118FD8, &qword_1000D2A50);
  v14 = sub_10001E490(&qword_100118DA8, &qword_100118DB0, &qword_1000D2368);
  v15 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v16 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60);
  v25 = v15;
  v26 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000C6394();
  sub_1000C66A4();
  sub_10001E490(&qword_1001196F0, &qword_1001196E0, &qword_1000D3868);
  sub_1000A0308(&qword_100119008, &type metadata accessor for StackNavigationViewStyle);
  v18 = v21;
  sub_1000C68E4();
  (*(v22 + 8))(v6, v18);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000A0240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10009F5F0();
}

uint64_t sub_1000A0250(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100118DB0, &qword_1000D2368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A02C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A0350()
{
  sub_100010624(&qword_1001196E0, &qword_1000D3868);
  sub_1000C66B4();
  sub_10001E490(&qword_1001196F0, &qword_1001196E0, &qword_1000D3868);
  sub_1000A0308(&qword_100119008, &type metadata accessor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A0430()
{
  v1[29] = v0;
  v2 = *(*(sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v3 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v4 = sub_1000C5D84();
  v1[32] = v4;
  v5 = *(v4 - 8);
  v1[33] = v5;
  v6 = *(v5 + 64) + 15;
  v1[34] = swift_task_alloc();
  v7 = sub_1000C5F74();
  v1[35] = v7;
  v8 = *(v7 - 8);
  v1[36] = v8;
  v9 = *(v8 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = sub_1000C6F14();
  v1[41] = sub_1000C6F04();
  v11 = sub_1000C6ED4();
  v1[42] = v11;
  v1[43] = v10;

  return _swift_task_switch(sub_1000A060C, v11, v10);
}

uint64_t sub_1000A060C()
{
  v39 = v0;
  v1 = *(v0 + 312);
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    buf = v4;
    v38 = v36;
    *v4 = 136315138;
    v5 = sub_1000C6E54();
    v7 = v6;
    if (("ngError thrown: " & 0x2000000000000000) != 0)
    {
      v8 = ("ngError thrown: " >> 40) & 0xF0000;
    }

    else
    {
      v8 = 2424832;
    }

    if (v8)
    {
      v9 = v5;
      while (sub_1000C6E54() != v9 || v10 != v7)
      {
        v11 = sub_1000C73A4();

        if (v11)
        {
          goto LABEL_14;
        }

        if ((sub_1000C6DF4() ^ v8) < 0x4000)
        {
          goto LABEL_11;
        }
      }

LABEL_14:

      sub_1000C6E64();
      v18 = sub_1000C6DC4();
      v13 = v19;

      v12 = v18;
    }

    else
    {
LABEL_11:

      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = *(v0 + 312);
    v22 = *(v0 + 280);
    v21 = *(v0 + 288);
    v23 = sub_100071844(v12, v13, &v38);

    *(buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v2, v3, "running %s() for UI", buf, 0xCu);
    sub_100010544(v36);

    v17 = *(v21 + 8);
    v17(v20, v22);
  }

  else
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);
    v16 = *(v0 + 288);

    v17 = *(v16 + 8);
    v17(v14, v15);
  }

  *(v0 + 352) = v17;
  v24 = *(v0 + 256);
  v25 = *(v0 + 264);
  v26 = *(v0 + 248);
  v27 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    sub_10009CB18(*(v0 + 248));
    v28 = 0;
  }

  else
  {
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v31 = *(v0 + 256);
    (*(v30 + 32))(v29, *(v0 + 248), v31);
    v32 = shareStatus(url:)();
    (*(v30 + 8))(v29, v31);
    v28 = ((v32 & 0x10000) == 0) & v32;
  }

  v33 = swift_task_alloc();
  *(v0 + 360) = v33;
  *v33 = v0;
  v33[1] = sub_1000A0A0C;
  v34 = *(v0 + 232);

  return sub_10006F960(60, v34, v28);
}