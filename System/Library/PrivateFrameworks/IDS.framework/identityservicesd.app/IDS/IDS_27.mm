uint64_t sub_1007774C0(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  if (a1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v9 = a2 + 48;
      do
      {
        v10 = *(v9 - 16);
        v9 += 24;
        v11 = v10;

        sub_100777788(a4, v11);

        --v7;
      }

      while (v7);
    }
  }

  return a5(a1 & 1);
}

uint64_t sub_100777624(void *a1, void *a2)
{
  v3 = v2;
  v5 = [a1 prefixedURI];
  sub_100936B38();

  v6 = [a2 prefixedURI];
  v7 = sub_100936B38();
  v9 = v8;

  v17 = v7;
  v15 = sub_100936C78();
  v16 = v10;
  sub_100936BF8();

  v11 = sub_100936B28();

  v13 = (*((swift_isaMask & *v3) + 0x168))(v12);
  LODWORD(v6) = [v13 underLimitForItem:{v11, v15, v16, v17, v9}];

  return v6 ^ 1;
}

void sub_100777788(void *a1, void *a2)
{
  v3 = v2;
  v5 = [a1 prefixedURI];
  sub_100936B38();

  v6 = [a2 prefixedURI];
  v7 = sub_100936B38();
  v9 = v8;

  v25 = v7;
  v23 = sub_100936C78();
  v24 = v10;
  sub_100936BF8();

  v11 = sub_100936B28();

  v13 = *((swift_isaMask & *v3) + 0x168);
  v14 = (v13)(v12);
  v15 = [v14 underLimitForItem:{v11, v23, v24, v25, v9}];

  if (v15)
  {
    v16 = v11;
    v17 = sub_1009364B8();
    v18 = sub_100936F18();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v11;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Noting item under limit for key check sent: %@", v19, 0xCu);
      sub_100013814(v20, &qword_100CB36B0);
    }

    v22 = v13();
    [v22 noteItem:v16];
  }
}

void sub_1007779F4(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_100014170(0, &qword_100CB4A70);
  if ((sub_100937038() & 1) == 0)
  {
    v20 = a1;
    v44 = sub_1009364B8();
    v21 = sub_100936EF8();

    if (!os_log_type_enabled(v44, v21))
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v20;
    *v23 = v20;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v44, v21, "Cannot send self key request message to URI %@ that is not ours - aborting", v22, 0xCu);
    sub_100013814(v23, &qword_100CB36B0);

LABEL_13:

    goto LABEL_21;
  }

  if (!*(a6 + 16))
  {
    v44 = sub_1009364B8();
    v25 = sub_100936EF8();
    if (!os_log_type_enabled(v44, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v44, v25, "Received empty keyIDsToCheck - aborting", v26, 2u);
    goto LABEL_13;
  }

  v14 = (*((swift_isaMask & *v6) + 0x1D8))();
  if ([v14 respondsToSelector:"endpointForPushToken:URI:service:fromURI:"])
  {
    v15 = sub_100936B28();
    v44 = [v14 endpointForPushToken:a2 URI:a1 service:v15 fromURI:a3];
    swift_unknownObjectRelease();

    if (v44)
    {
      v16 = (*((swift_isaMask & *v7) + 0x3B8))(a6);
      if (*(v16 + 16))
      {
        v45 = 2;
        v46 = 1;
        v47 = &_swiftEmptyArrayStorage;
        v48 = v16;
        v49 = &_swiftEmptyArrayStorage;
        sub_100706B30(&qword_100CB4A30);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1009AD920;
        *(v17 + 32) = v44;
        v18 = *((swift_isaMask & *v7) + 0x238);
        v19 = v44;
        v18(a1, a3, &v45, &_swiftEmptyArrayStorage, v17, 52, 0, 0);

        return;
      }

      v37 = sub_1009364B8();
      v38 = sub_100936F18();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v45 = v40;
        *v39 = 136315138;
        v41 = sub_100936CF8();
        v43 = sub_10001273C(v41, v42, &v45);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "We aren't missing any keyIDs: %s - nothing to request", v39, 0xCu);
        sub_100012970(v40);

        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v27 = a2;
  v28 = a1;
  v29 = a3;

  v44 = sub_1009364B8();
  v30 = sub_100936EF8();

  if (os_log_type_enabled(v44, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45 = v33;
    *v31 = 138413058;
    *(v31 + 4) = v27;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v28;
    *v32 = v27;
    v32[1] = v28;
    *(v31 + 22) = 2112;
    *(v31 + 24) = v29;
    v32[2] = v29;
    *(v31 + 32) = 2080;
    v34 = v27;
    v35 = v28;
    v36 = v29;
    *(v31 + 34) = sub_10001273C(a4, a5, &v45);
    _os_log_impl(&_mh_execute_header, v44, v30, "No endpoint found for token: %@ toURI: %@ fromURI: %@ service: %s - aborting", v31, 0x2Au);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    sub_100012970(v33);

LABEL_17:

    return;
  }

LABEL_21:
}

void sub_100778060(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_100014170(0, &qword_100CB4A70);
  if ((sub_100937038() & 1) == 0)
  {
    v30 = a1;
    oslog = sub_1009364B8();
    v31 = sub_100936EF8();

    if (!os_log_type_enabled(oslog, v31))
    {
      goto LABEL_32;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v30;
    *v33 = v30;
    v34 = v30;
    _os_log_impl(&_mh_execute_header, oslog, v31, "Cannot send self key request response message to URI %@ that is not ours - aborting", v32, 0xCu);
    sub_100013814(v33, &qword_100CB36B0);

LABEL_20:

    goto LABEL_32;
  }

  v14 = *(a6 + 16);
  if (!v14)
  {
    oslog = sub_1009364B8();
    v35 = sub_100936EF8();
    if (!os_log_type_enabled(oslog, v35))
    {
      goto LABEL_32;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v35, "Received empty requestedKeyIDs - aborting", v36, 2u);
    goto LABEL_20;
  }

  v15 = (*((swift_isaMask & *v6) + 0x1D8))();
  if ([v15 respondsToSelector:"endpointForPushToken:URI:service:fromURI:"])
  {
    v59 = a6;
    v16 = sub_100936B28();
    oslog = [v15 endpointForPushToken:a2 URI:a1 service:v16 fromURI:a3];
    swift_unknownObjectRelease();

    if (oslog)
    {
      v58 = (*((swift_isaMask & *v7) + 0xB0))();
      v17 = 0;
      v18 = v59 + 40;
      v60 = &_swiftEmptyArrayStorage;
LABEL_6:
      v19 = v18 + 16 * v17;
      while (v14 != v17)
      {
        if (v17 >= v14)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }

        v21 = sub_100935E28();
        v23 = v22;

        ++v17;
        v19 += 16;
        if (v23 >> 60 != 15)
        {
          v24 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_100787FB8(0, *(v60 + 2) + 1, 1, v60);
          }

          v26 = *(v24 + 2);
          v25 = *(v24 + 3);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            v29 = sub_100787FB8((v25 > 1), v26 + 1, 1, v24);
            v27 = v26 + 1;
            v24 = v29;
          }

          *(v24 + 2) = v27;
          v60 = v24;
          v28 = &v24[16 * v26];
          *(v28 + 4) = v21;
          *(v28 + 5) = v23;
          v17 = v20;
          v18 = v59 + 40;
          goto LABEL_6;
        }
      }

      v47 = sub_1008C8EB8(v60);

      if (v47[2])
      {
        v62 = 2;
        v63 = 2;
        v64 = v47;
        v65 = &_swiftEmptyArrayStorage;
        v66 = &_swiftEmptyArrayStorage;
        sub_100706B30(&qword_100CB4A30);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1009AD920;
        *(v48 + 32) = oslog;
        v49 = *((swift_isaMask & *v7) + 0x238);
        v50 = oslog;
        v49(a1, a3, &v62, &_swiftEmptyArrayStorage, v48, 53, 0, 0);

        return;
      }

      v51 = sub_1009364B8();
      v52 = sub_100936EF8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62 = v54;
        *v53 = 136315138;
        v55 = sub_100936CF8();
        v57 = sub_10001273C(v55, v56, &v62);

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Cannot find key infos corresponding to keyIDs: %s - aborting", v53, 0xCu);
        sub_100012970(v54);

        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v37 = a2;
  v38 = a1;
  v39 = a3;

  oslog = sub_1009364B8();
  v40 = sub_100936EF8();

  if (!os_log_type_enabled(oslog, v40))
  {
LABEL_32:

    return;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v62 = v43;
  *v41 = 138413058;
  *(v41 + 4) = v37;
  *(v41 + 12) = 2112;
  *(v41 + 14) = v38;
  *v42 = v37;
  v42[1] = v38;
  *(v41 + 22) = 2112;
  *(v41 + 24) = v39;
  v42[2] = v39;
  *(v41 + 32) = 2080;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  *(v41 + 34) = sub_10001273C(a4, a5, &v62);
  _os_log_impl(&_mh_execute_header, oslog, v40, "No endpoint found for token: %@ toURI: %@ fromURI: %@ service: %s - aborting", v41, 0x2Au);
  sub_100706B30(&qword_100CB36B0);
  swift_arrayDestroy();

  sub_100012970(v43);

LABEL_24:
}

uint64_t sub_1007787F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3 == 0x6567617373654D69 && a4 == 0xEF65766965636552;
  if (v7 || (v8 = a1, v9 = sub_100937598(), a1 = v8, v10 = 0, (v9 & 1) != 0))
  {
    v11 = [a1 prefixedURI];
    sub_100936B38();

    v12 = [a2 prefixedURI];
    v13 = sub_100936B38();
    v15 = v14;

    v29 = sub_100936C78();
    v30 = v16;
    sub_100936BF8();

    v17 = sub_100936B28();

    v19 = *((swift_isaMask & *v5) + 0x120);
    v20 = (v19)(v18);
    v21 = [v20 underLimitForItem:{v17, v29, v30, v13, v15}];

    if (v21)
    {
      v22 = v17;
      v23 = sub_1009364B8();
      v24 = sub_100936F18();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v17;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Noting item under limit for iMessage receive: %@", v25, 0xCu);
        sub_100013814(v26, &qword_100CB36B0);
      }

      v17 = v19();
      [v17 noteItem:v22];
    }

    v10 = v21 ^ 1;
  }

  return v10;
}

void sub_100778ABC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v85 = a6;
  v86 = a8;
  v88 = a7;
  v13 = sub_1009360A8();
  v83 = *(v13 - 8);
  v84 = v13;
  __chkstk_darwin(v13);
  v82 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB4A30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1009AD920;
  *(v15 + 32) = a1;
  v16 = *((swift_isaMask & *v8) + 0x1E8);
  v17 = a1;
  v87 = a2;
  v89 = v16(a2, v15);

  if (!v89)
  {
    v30 = sub_1009364B8();
    v31 = sub_100936EF8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to find a sending account - aborting", v32, 2u);
    }

    if (v88)
    {
      v88(0);
    }

    return;
  }

  v18 = (*((swift_isaMask & *v8) + 0x2F0))(a3, a4);
  v20 = v8;
  if (v19 >> 60 == 15)
  {
    v21 = v17;
    v22 = v87;
    v23 = sub_1009364B8();
    v24 = sub_100936EF8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      *(v25 + 4) = v21;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v26 = v21;
      v26[1] = v22;
      v27 = v21;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to serialize message to send to URI: %@ fromURI: %@", v25, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    v29 = v89;

    return;
  }

  v76 = v17;
  v80 = v18;
  v81 = v19;
  v75 = *(a3 + 8);
  v33 = *(a3 + 16);
  v34 = *(a3 + 24);
  v35 = *(a3 + 32);
  v92 = &_swiftEmptySetSingleton;
  aBlock[0] = a4;
  v77 = v33;

  v78 = v34;

  v79 = v35;

  sub_1007838E4(v36, sub_10078F7C0);
  v37 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v38 = sub_1009373F8();
    if (v38)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v38 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
LABEL_14:
      v74[1] = v20;
      v90 = objc_opt_self();
      if (v38 < 1)
      {
        __break(1u);
        return;
      }

      v39 = 0;
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v47 = sub_100937268();
        }

        else
        {
          v47 = *(v37 + v39 + 4);
        }

        v48 = v47;
        v49 = [v47 URI];
        v50 = [v49 prefixedURI];

        if (!v50)
        {
          sub_100936B38();
          v50 = sub_100936B28();
        }

        ++v39;
        v40 = [v48 pushToken];
        v41 = sub_100935EA8();
        v43 = v42;

        isa = sub_100935E78().super.isa;
        v45 = [v90 destinationWithAlias:v50 pushToken:isa];

        sub_1007156D8(v41, v43);
        v46 = v45;
        sub_100741A18(aBlock, v46, &qword_100CB4A78, IDSDestination_ptr, &qword_100CB4FD8, &unk_1009B64C0);
      }

      while (v38 != v39);

      v51 = v92;
      goto LABEL_25;
    }
  }

  v51 = &_swiftEmptySetSingleton;
LABEL_25:
  v52 = v88;
  if ((v51 & 0xC000000000000001) != 0)
  {
    if (sub_100937158())
    {
LABEL_27:
      v53 = v82;
      sub_100936098();
      v54 = sub_100936048();
      v56 = v55;
      (*(v83 + 8))(v53, v84);
      sub_100014170(0, &qword_100CB4A78);
      sub_100746FD4(&qword_100CB4A80, &qword_100CB4A78);
      v90 = sub_100936E08().super.isa;

      v57 = sub_100936B28();
      v59 = v80;
      v58 = v81;
      v60 = sub_100935E78().super.isa;
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v52;
      v63 = v87;
      *(v62 + 32) = v86;
      *(v62 + 40) = v54;
      *(v62 + 48) = v56;
      *(v62 + 56) = v75;
      v64 = v52;
      v65 = v76;
      *(v62 + 64) = v76;
      *(v62 + 72) = v63;
      v66 = v78;
      *(v62 + 80) = v77;
      *(v62 + 88) = v66;
      *(v62 + 96) = v79;
      aBlock[4] = sub_100791F88;
      aBlock[5] = v62;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100779F3C;
      aBlock[3] = &unk_100BE77B8;
      v67 = _Block_copy(aBlock);
      v68 = v65;
      sub_1000254AC(v64);
      v69 = v63;

      v70 = v90;
      [v89 sendSenderKeyMessageToDestinations:v90 fromURI:v69 guid:v57 messageData:v60 sendReasonPathID:v85 completionBlock:v67];
      sub_10001C370(v59, v58);

      _Block_release(v67);
      return;
    }
  }

  else if (*(v51 + 16))
  {
    goto LABEL_27;
  }

  v71 = sub_1009364B8();
  v72 = sub_100936EF8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "No destinations to send to - aborting", v73, 2u);
  }

  if (v52)
  {
    v52(0);
  }

  sub_10001C370(v80, v81);
}

void sub_10077936C(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v131 = a6;
  v132 = a5;
  v18 = type metadata accessor for SenderKeyInfo(0);
  v128 = *(v18 - 8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v118 - v23;
  __chkstk_darwin(v22);
  v26 = v118 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    LODWORD(v125) = a8;
    v133 = Strong;
    v127 = a4;
    v129 = a12;
    v130 = a13;
    if ((a1 & 1) != 0 && !a2)
    {
      v28 = a11;
      swift_bridgeObjectRetain_n();

      v29 = a9;
      v30 = a10;

      v31 = sub_1009364B8();
      v32 = sub_100936F18();

      v124 = v30;

      v33 = os_log_type_enabled(v31, v32);
      v123 = v29;
      if (v33)
      {
        v120 = v32;
        v122 = v31;
        v126 = a11;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v134 = v119;
        *v34 = 136316930;
        *(v34 + 4) = sub_10001273C(v131, a7, &v134);
        *(v34 + 12) = 2080;
        v36 = 0xEF6E6F6974756269;
        v37 = 0xD000000000000012;
        v38 = 0x8000000100B011E0;
        if (v125 != 2)
        {
          v37 = 0x4379654B666C6573;
          v38 = 0xEC0000006B636568;
        }

        v39 = 0x657571655279656BLL;
        if (v125)
        {
          v36 = 0xEA00000000007473;
        }

        else
        {
          v39 = 0x727473694479656BLL;
        }

        if (v125 <= 1u)
        {
          v40 = v39;
        }

        else
        {
          v40 = v37;
        }

        if (v125 <= 1u)
        {
          v41 = v36;
        }

        else
        {
          v41 = v38;
        }

        v125 = a7;
        v42 = sub_10001273C(v40, v41, &v134);

        *(v34 + 14) = v42;
        *(v34 + 22) = 2112;
        *(v34 + 24) = v29;
        *(v34 + 32) = 2112;
        v43 = v124;
        *(v34 + 34) = v124;
        *v35 = v29;
        v35[1] = v43;
        v118[1] = v35;
        *(v34 + 42) = 2048;
        v44 = v126;
        v45 = *(v126 + 16);
        v46 = v29;
        v47 = v43;

        *(v34 + 44) = v45;

        v121 = v34;
        *(v34 + 52) = 2080;
        if (v45)
        {
          v48 = v44 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v49 = *(v128 + 72);
          v50 = &_swiftEmptyArrayStorage;
          do
          {
            sub_1007927DC(v48, v26, type metadata accessor for SenderKeyInfo);
            v51 = sub_100935E88(0);
            v53 = v52;
            sub_100791FE8(v26, type metadata accessor for SenderKeyInfo);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1000251F4(0, *(v50 + 2) + 1, 1, v50);
            }

            v55 = *(v50 + 2);
            v54 = *(v50 + 3);
            if (v55 >= v54 >> 1)
            {
              v50 = sub_1000251F4((v54 > 1), v55 + 1, 1, v50);
            }

            *(v50 + 2) = v55 + 1;
            v56 = &v50[16 * v55];
            *(v56 + 4) = v51;
            *(v56 + 5) = v53;
            v48 += v49;
            --v45;
          }

          while (v45);
        }

        v79 = sub_100936CF8();
        v81 = v80;

        v82 = sub_10001273C(v79, v81, &v134);

        v83 = v121;
        *(v121 + 54) = v82;
        *(v83 + 62) = 2080;
        v84 = sub_100936CF8();
        v86 = sub_10001273C(v84, v85, &v134);

        *(v83 + 64) = v86;
        *(v83 + 72) = 2080;
        v87 = sub_100936CF8();
        v89 = sub_10001273C(v87, v88, &v134);

        *(v83 + 74) = v89;
        v90 = v122;
        _os_log_impl(&_mh_execute_header, v122, v120, "Successfully sent sender key message with GUID: %s of type %s to URI: %@ fromURI: %@ key count: %ld keyIDs: %s requestedKeyIDs: %s keyIDsToCheck: %s", v83, 0x52u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();

        swift_arrayDestroy();

        a7 = v125;
        v28 = v126;
        v67 = *(v126 + 16);
        if (!v67)
        {
          goto LABEL_46;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v67 = *(a11 + 16);
        if (!v67)
        {
LABEL_46:
          v70 = &_swiftEmptyArrayStorage;
LABEL_47:
          v91 = v133;
          (*((swift_isaMask & *v133) + 0x250))(v70, v124, v123, v131, a7);

          if (v127)
          {
            v127(1);
          }

          return;
        }
      }

      v68 = v28 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v69 = *(v128 + 72);
      v70 = &_swiftEmptyArrayStorage;
      do
      {
        sub_1007927DC(v68, v24, type metadata accessor for SenderKeyInfo);
        v71 = *(v24 + 2);
        v72 = *(v24 + 3);
        sub_100715738(v71, v72);
        sub_100791FE8(v24, type metadata accessor for SenderKeyInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_100787FB8(0, *(v70 + 2) + 1, 1, v70);
        }

        v74 = *(v70 + 2);
        v73 = *(v70 + 3);
        if (v74 >= v73 >> 1)
        {
          v70 = sub_100787FB8((v73 > 1), v74 + 1, 1, v70);
        }

        *(v70 + 2) = v74 + 1;
        v75 = &v70[16 * v74];
        *(v75 + 4) = v71;
        *(v75 + 5) = v72;
        v68 += v69;
        --v67;
      }

      while (v67);
      goto LABEL_47;
    }

    v124 = a9;
    v57 = a10;

    swift_errorRetain();
    v58 = v133;
    v59 = sub_1009364B8();
    v60 = sub_100936EF8();

    v126 = a11;
    v61 = v124;

    LODWORD(v123) = v60;
    if (os_log_type_enabled(v59, v60))
    {
      v122 = v59;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v134 = v121;
      *v62 = 138414082;
      if (a2)
      {
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        v65 = v64;
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

      v76 = v125;
      *(v62 + 4) = v64;
      *v63 = v65;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_10001273C(v131, a7, &v134);
      *(v62 + 22) = 2080;
      if (v76 > 1u)
      {
        if (v76 == 2)
        {
          v77 = 0xD000000000000012;
          v78 = 0x8000000100B011E0;
        }

        else
        {
          v77 = 0x4379654B666C6573;
          v78 = 0xEC0000006B636568;
        }
      }

      else if (v76)
      {
        v77 = 0x657571655279656BLL;
        v78 = 0xEA00000000007473;
      }

      else
      {
        v77 = 0x727473694479656BLL;
        v78 = 0xEF6E6F6974756269;
      }

      v92 = sub_10001273C(v77, v78, &v134);

      *(v62 + 24) = v92;
      *(v62 + 32) = 2112;
      *(v62 + 34) = v61;
      *(v62 + 42) = 2112;
      *(v62 + 44) = v57;
      v63[1] = v61;
      v63[2] = v57;
      v131 = v63;
      *(v62 + 52) = 2080;
      v93 = *(v126 + 16);
      if (v93)
      {
        v94 = v126 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
        v95 = *(v128 + 72);
        v96 = v61;
        v97 = v57;
        v98 = &_swiftEmptyArrayStorage;
        do
        {
          sub_1007927DC(v94, v21, type metadata accessor for SenderKeyInfo);
          v99 = sub_100935E88(0);
          v101 = v100;
          sub_100791FE8(v21, type metadata accessor for SenderKeyInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1000251F4(0, *(v98 + 2) + 1, 1, v98);
          }

          v103 = *(v98 + 2);
          v102 = *(v98 + 3);
          if (v103 >= v102 >> 1)
          {
            v98 = sub_1000251F4((v102 > 1), v103 + 1, 1, v98);
          }

          *(v98 + 2) = v103 + 1;
          v104 = &v98[16 * v103];
          *(v104 + 4) = v99;
          *(v104 + 5) = v101;
          v94 += v95;
          --v93;
        }

        while (v93);
      }

      else
      {
        v105 = v61;
        v106 = v57;
      }

      v107 = sub_100936CF8();
      v109 = v108;

      v110 = sub_10001273C(v107, v109, &v134);

      *(v62 + 54) = v110;
      *(v62 + 62) = 2080;
      v111 = sub_100936CF8();
      v113 = sub_10001273C(v111, v112, &v134);

      *(v62 + 64) = v113;
      *(v62 + 72) = 2080;
      v114 = sub_100936CF8();
      v116 = sub_10001273C(v114, v115, &v134);

      *(v62 + 74) = v116;
      v117 = v122;
      _os_log_impl(&_mh_execute_header, v122, v123, "Failed to send sender key message with error: %@ GUID: %s of type %s to URI: %@ fromURI: %@ keyIDs: %s requestedKeyIDs: %s keyIDsToCheck: %s", v62, 0x52u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v66 = v127;
      v58 = v133;
      if (!v127)
      {
        goto LABEL_63;
      }
    }

    else
    {

      v66 = v127;
      if (!v127)
      {
        goto LABEL_63;
      }
    }

    v66(0);
LABEL_63:

    return;
  }

  if (a4)
  {
    a4(0);
  }
}

void sub_100779F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void *sub_100779FB4(void *a1, void *a2, unint64_t a3)
{
  v110 = a1;
  v6 = sub_100706B30(&qword_100CB4A88);
  __chkstk_darwin(v6 - 8);
  v105 = &v101 - v7;
  v104 = type metadata accessor for SenderKeyInfo(0);
  isa = v104[-1].isa;
  v8 = __chkstk_darwin(v104);
  v103 = (&v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v102 = (&v101 - v11);
  v12 = __chkstk_darwin(v10);
  v101 = &v101 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v101 - v15;
  v115 = &_swiftEmptySetSingleton;
  v17 = (*((swift_isaMask & *v3) + 0xB0))(v14);
  v106 = (*((swift_isaMask & *v17) + 0x100))(a3);

  v112[0] = &_swiftEmptyArrayStorage;
  v107 = a2;
  if (a3 >> 62)
  {
LABEL_49:
    v18 = sub_1009373F8();
  }

  else
  {
    v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v111 = &_swiftEmptyArrayStorage;
  while (v18 != v19)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v20 = sub_100937268();
    }

    else
    {
      if (v19 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v20 = *(a3 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v23 = [v20 pushTokenObject];

    ++v19;
    if (v23)
    {
      sub_100936CC8();
      if (*((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100936D18();
      }

      sub_100936D38();
      v111 = v112[0];
      v19 = v22;
    }
  }

  v25 = v109;
  v24 = v110;
  v26 = v107;
  v27 = sub_10077F9B8(v110, v107);
  v29 = v28;

  sub_1007918F0(v30);

  v31 = *(v27 + 16);
  if (v31)
  {

    v32 = OBJC_IVAR___IDSSenderKeyDistributionManager_logger;

    v33 = v24;
    v34 = v26;
    v35 = v33;
    v36 = v34;
    v37 = sub_1009364B8();
    v38 = sub_100936F18();

    LODWORD(v111) = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v104 = v37;
      v107 = v32;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v112[0] = v103;
      *v39 = 138412802;
      *(v39 + 2) = v35;
      v39[6] = 2112;
      *(v39 + 7) = v36;
      *v40 = v35;
      v40[1] = v36;
      v102 = v40;
      v110 = v39;
      v39[11] = 2080;
      v41 = v27 + ((*(isa + 80) + 32) & ~*(isa + 80));
      v42 = *(isa + 9);
      v106 = v35;
      v43 = v35;
      v105 = v36;
      v44 = v36;
      v45 = &_swiftEmptyArrayStorage;
      do
      {
        sub_1007927DC(v41, v16, type metadata accessor for SenderKeyInfo);
        v46 = sub_100935E88(0);
        v48 = v47;
        sub_100791FE8(v16, type metadata accessor for SenderKeyInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1000251F4(0, *(v45 + 2) + 1, 1, v45);
        }

        v50 = *(v45 + 2);
        v49 = *(v45 + 3);
        if (v50 >= v49 >> 1)
        {
          v45 = sub_1000251F4((v49 > 1), v50 + 1, 1, v45);
        }

        *(v45 + 2) = v50 + 1;
        v51 = &v45[16 * v50];
        *(v51 + 4) = v46;
        *(v51 + 5) = v48;
        v41 += v42;
        --v31;
      }

      while (v31);

      v53 = sub_100936CF8();
      v55 = v54;

      v56 = sub_10001273C(v53, v55, v112);

      v57 = v110;
      *(v110 + 3) = v56;
      v58 = v104;
      _os_log_impl(&_mh_execute_header, v104, v111, "Not regenerating for senderURI: %@ receiverURI: %@ - we have unsent keys to send: %s", v57, 0x20u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100012970(v103);

      v25 = v109;
      v35 = v106;
      v36 = v105;
    }

    else
    {
    }

    v59 = [v35 prefixedURI];
    v60 = sub_100936B38();
    v61 = v35;
    v63 = v62;

    v64 = [v36 prefixedURI];
    v65 = v36;
    v66 = sub_100936B38();
    v68 = v67;

    v112[0] = v66;
    v112[1] = v68;
    v113 = v60;
    v114 = v63;
    v113 = sub_100936C78();
    v114 = v69;
    sub_100936BF8();

    v70 = sub_100936B28();

    v72 = *((swift_isaMask & *v25) + 0x108);
    v73 = (v72)(v71);
    [v73 noteItem:v70];

    v74 = v72();
    LODWORD(v66) = [v74 underLimitForItem:v70];

    v75 = v115;
    if (!v66)
    {

      v80 = v61;
      v81 = v65;
      v82 = sub_1009364B8();
      v83 = sub_100936F18();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412546;
        *(v84 + 4) = v80;
        *(v84 + 12) = 2112;
        *(v84 + 14) = v81;
        *v85 = v80;
        v85[1] = v81;
        v86 = v80;
        v87 = v81;
        _os_log_impl(&_mh_execute_header, v82, v83, "Too many attempts to send unsent keys for senderURI: %@ receiverURI: %@ - aborting send", v84, 0x16u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();
      }

      return &_swiftEmptyArrayStorage;
    }

    v76 = v115[2];
    if (v76)
    {
      v77 = sub_1007883E4(v115[2], 0);
      v78 = sub_10078FA7C(v112, v77 + ((*(isa + 80) + 32) & ~*(isa + 80)), v76, v75);
      result = sub_100308C6C();
      if (v78 == v76)
      {

        return v77;
      }

      goto LABEL_51;
    }

LABEL_45:

    return &_swiftEmptyArrayStorage;
  }

  if (v29)
  {

    v52 = v110;
  }

  else
  {
    v52 = v110;
    v88 = (*((swift_isaMask & *v25) + 0x2B0))(v110, v26, v111);

    if ((v88 & 1) == 0 && ((*((swift_isaMask & *v25) + 0x318))(v52, v26) & 1) == 0)
    {

      v98 = v115;
      v99 = v115[2];
      if (!v99)
      {
        goto LABEL_45;
      }

      v96 = sub_1007883E4(v115[2], 0);
      v100 = sub_10078FA7C(v112, v96 + ((*(isa + 80) + 32) & ~*(isa + 80)), v99, v98);
      sub_100308C6C();
      if (v100 != v99)
      {
        __break(1u);
        goto LABEL_45;
      }

      return v96;
    }
  }

  v89 = v105;
  (*((swift_isaMask & *v25) + 0x2C8))(v52, v26, a3);
  if ((*(isa + 6))(v89, 1, v104) == 1)
  {
    sub_100013814(v89, &qword_100CB4A88);
  }

  else
  {
    v90 = v101;
    sub_100792048(v89, v101, type metadata accessor for SenderKeyInfo);
    v91 = v103;
    sub_1007927DC(v90, v103, type metadata accessor for SenderKeyInfo);
    v92 = v102;
    sub_100789ED0(v102, v91);
    sub_100791FE8(v92, type metadata accessor for SenderKeyInfo);
    sub_100791FE8(v90, type metadata accessor for SenderKeyInfo);
  }

  v93 = sub_10077F438(v52, v26, v106);

  sub_1007918F0(v93);

  v94 = v115;
  v95 = v115[2];
  if (!v95)
  {
    goto LABEL_45;
  }

  v96 = sub_1007883E4(v115[2], 0);
  v97 = sub_10078FA7C(v112, v96 + ((*(isa + 80) + 32) & ~*(isa + 80)), v95, v94);
  result = sub_100308C6C();
  if (v97 == v95)
  {
    return v96;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *sub_10077ABB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*((swift_isaMask & *v1) + 0x3B8))();
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }
}

void sub_10077AC04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16))
  {
    v11 = (*((swift_isaMask & *v5) + 0xB0))();
    sub_1008C4E98(a2, a3, a1, a4, a5, 0, 0);
  }
}

void sub_10077ACE0(void *a1, void *a2, id a3)
{
  v4 = v3;
  v7 = [a3 prefixedURI];
  sub_100936B38();

  v8 = [a2 prefixedURI];
  sub_100936B38();

  sub_100936C78();
  sub_100936BF8();

  v9 = sub_100936B28();

  v11 = *((swift_isaMask & *v4) + 0x138);
  v12 = (v11)(v10);
  v13 = [v12 underLimitForItem:v9];

  if (v13)
  {
    v14 = a1;
    v15 = sub_1009364B8();
    v16 = sub_100936F18();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Noting last active peer token: %@", v17, 0xCu);
      sub_100013814(v18, &qword_100CB36B0);
    }

    v20 = v11();
    [v20 noteItem:v9];

    v21 = (*((swift_isaMask & *v4) + 0xB0))();
    sub_1008C57C4(v14, a2, a3);
  }
}

void sub_10077B040(void *a1, void *a2, id a3)
{
  v4 = v3;
  v8 = [a3 prefixedURI];
  sub_100936B38();

  v25 = a2;
  v9 = [a2 prefixedURI];
  sub_100936B38();

  sub_100936C78();
  sub_100936BF8();

  v10 = sub_100936B28();

  v12 = *((swift_isaMask & *v4) + 0x150);
  v13 = (v12)(v11);
  v14 = [v13 underLimitForItem:v10];

  if (v14)
  {
    v15 = a1;
    v16 = a3;
    v17 = sub_1009364B8();
    v18 = sub_100936F18();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v15;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v15;
      v20[1] = v16;
      v21 = v15;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Noting last iMessaged peer token: %@ for remoteURI: %@", v19, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    v23 = v12();
    [v23 noteItem:v10];

    v24 = (*((swift_isaMask & *v4) + 0xB0))();
    sub_1008C5804(v15, v25, v16);
  }
}

char *sub_10077B3CC(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v17 = *((swift_isaMask & *v9) + 0xC8);
  v19 = v17() == a4 && v18 == a5;
  v100 = a4;
  if (v19)
  {
  }

  else
  {
    v20 = sub_100937598();

    if ((v20 & 1) == 0)
    {

      v21 = v9;
      v22 = sub_1009364B8();
      v23 = sub_100936EF8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *&v101 = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_10001273C(v100, a5, &v101);
        *(v24 + 12) = 2080;
        v25 = v17();
        v27 = sub_10001273C(v25, v26, &v101);

        *(v24 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v22, v23, "Received key message on an invalid service: %s expecting: %s", v24, 0x16u);
        swift_arrayDestroy();

LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  if (a7 >> 60 == 15)
  {
    v28 = a1;
    v29 = a3;
    v22 = sub_1009364B8();
    v30 = sub_100936EF8();

    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v29;
      *v32 = v28;
      v32[1] = v29;
      v33 = v28;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v22, v30, "Received nil messageData remoteURI: %@ localURI: %@", v31, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      goto LABEL_12;
    }

LABEL_13:

    return &_swiftEmptyArrayStorage;
  }

  v36 = *((swift_isaMask & *v9) + 0x2F8);
  sub_100715738(a6, a7);
  v97 = a6;
  v36(&v101, a6, a7);
  if (!v103)
  {
    sub_100013814(&v101, &qword_100CB4A90);
    v63 = a1;
    v64 = a3;
    v65 = sub_1009364B8();
    v66 = sub_100936EF8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412546;
      *(v67 + 4) = v63;
      *(v67 + 12) = 2112;
      *(v67 + 14) = v64;
      *v68 = v63;
      v68[1] = v64;
      v69 = v63;
      v70 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to de-serialize message remoteURI: %@ localURI: %@", v67, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    sub_10001C370(a6, a7);
    return &_swiftEmptyArrayStorage;
  }

  sub_100308C74(&v101, v106);
  sub_100012914(v106, v105);
  if (!swift_dynamicCast())
  {
    sub_100012914(v106, &v101);
    sub_100706B30(&qword_100CB4A98);
    if (swift_dynamicCast())
    {
      v71 = v105[0];
      v72 = a1;
      v73 = a3;

      v74 = sub_1009364B8();
      v75 = sub_100936F18();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 134218498;
        *(v76 + 4) = *(v71 + 16);

        *(v76 + 12) = 2112;
        *(v76 + 14) = v72;
        *(v76 + 22) = 2112;
        *(v76 + 24) = v73;
        *v77 = v72;
        v77[1] = v73;
        v78 = v72;
        v79 = v73;
        _os_log_impl(&_mh_execute_header, v74, v75, "Processing keyInfos with key count: %ld remoteURI: %@ localURI: %@", v76, 0x20u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();
      }

      else
      {
      }

      v83 = sub_10077C1DC(v71, v72, a8, a9);
      sub_10001C370(a6, a7);
      goto LABEL_53;
    }

    v80 = sub_1009364B8();
    v81 = sub_100936EF8();
    if (!os_log_type_enabled(v80, v81))
    {
LABEL_43:

LABEL_56:
      sub_10001C370(v97, a7);
      sub_100012970(v106);
      return &_swiftEmptyArrayStorage;
    }

    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "Invalid serialization received - aborting", v82, 2u);
LABEL_42:

    goto LABEL_43;
  }

  v37 = BYTE8(v101);
  v38 = v103;
  v39 = v104;
  v96 = v102;
  swift_bridgeObjectRetain_n();
  v40 = a1;
  v41 = a3;

  v42 = sub_1009364B8();
  v43 = sub_100936F18();
  v95 = v39;

  v94 = v38;

  v44 = v40;
  v92 = v43;
  if (os_log_type_enabled(v42, v43))
  {
    log = v42;
    v93 = v41;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v101 = swift_slowAlloc();
    *v45 = 136316418;
    v47 = 0xEF6E6F6974756269;
    v48 = 0x727473694479656BLL;
    v49 = 0x8000000100B011E0;
    v50 = 0xD000000000000012;
    if (v37 != 2)
    {
      v50 = 0x4379654B666C6573;
      v49 = 0xEC0000006B636568;
    }

    if (v37)
    {
      v48 = 0x657571655279656BLL;
      v47 = 0xEA00000000007473;
    }

    if (v37 <= 1)
    {
      v51 = v48;
    }

    else
    {
      v51 = v50;
    }

    if (v37 <= 1)
    {
      v52 = v47;
    }

    else
    {
      v52 = v49;
    }

    v53 = sub_10001273C(v51, v52, &v101);

    *(v45 + 4) = v53;
    *(v45 + 12) = 2048;
    v54 = *(v96 + 16);

    *(v45 + 14) = v54;

    *(v45 + 22) = 2112;
    *(v45 + 24) = v44;
    *(v45 + 32) = 2112;
    *(v45 + 34) = v93;
    *v46 = v44;
    v46[1] = v93;
    *(v45 + 42) = 2080;
    v55 = v44;
    v56 = v93;
    v57 = sub_100936CF8();
    v59 = sub_10001273C(v57, v58, &v101);

    *(v45 + 44) = v59;
    *(v45 + 52) = 2080;
    v60 = sub_100936CF8();
    v62 = sub_10001273C(v60, v61, &v101);

    *(v45 + 54) = v62;
    _os_log_impl(&_mh_execute_header, log, v92, "Processing key message of type: %s key count: %ld remoteURI: %@ localURI: %@ requestedKeyIDs: %s keyIDsToCheck: %s", v45, 0x3Eu);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v41 = v93;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_100014170(0, &qword_100CB4A70);
  if (sub_100937038())
  {
    if (v37 > 1)
    {
      if (v37 != 2)
      {

        (*((swift_isaMask & *v10) + 0x220))(v44, a2, v41, v100, a5, v95);
        goto LABEL_55;
      }
    }

    else if (v37)
    {

      (*((swift_isaMask & *v10) + 0x228))(v44, a2, v41, v100, a5, v94);
LABEL_55:

      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v37 <= 1)
  {
    if (v37)
    {

      sub_10077CBF0(v94, v44, v41);
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  if (v37 != 2)
  {

    v84 = v44;
    v85 = v41;
    v80 = sub_1009364B8();
    v86 = sub_100936EF8();

    if (!os_log_type_enabled(v80, v86))
    {
      goto LABEL_43;
    }

    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138412546;
    *(v87 + 4) = v84;
    *(v87 + 12) = 2112;
    *(v87 + 14) = v85;
    *v88 = v84;
    v88[1] = v85;
    v89 = v84;
    v90 = v85;
    _os_log_impl(&_mh_execute_header, v80, v86, "Received key check message from different account URI: %@ than localURI: %@, this should never happen...", v87, 0x16u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    goto LABEL_42;
  }

LABEL_52:

  v83 = sub_10077C1DC(v96, v44, a8, a9);
  sub_10001C370(v97, a7);
LABEL_53:

  sub_100012970(v106);
  return v83;
}

char *sub_10077C1DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v111 = a3;
  v112 = a4;
  v8 = sub_100936638();
  __chkstk_darwin(v8 - 8);
  v115 = &v98[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1009363D8();
  __chkstk_darwin(v10 - 8);
  v12 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = type metadata accessor for SenderKeyAndState(0);
  v13 = __chkstk_darwin(v107);
  v15 = &v98[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v106 = &v98[-v17];
  __chkstk_darwin(v16);
  v19 = &v98[-v18];
  v118 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v118);
  v23 = &v98[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *(a1 + 16);
  if (v24)
  {
    v103 = v15;
    v113 = v12;
    v120 = a2;
    v116 = 0;
    v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v109 = &_swiftEmptyArrayStorage;
    v114 = OBJC_IVAR___IDSSenderKeyDistributionManager_logger;
    v117 = *(v20 + 72);
    *&v22 = 136315394;
    v104 = v22;
    *&v22 = 138412546;
    v102 = v22;
    v108 = v19;
    v105 = v5;
    v119 = &v98[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    while (1)
    {
      sub_1007927DC(v25, v23, type metadata accessor for SenderKeyInfo);
      v26 = (v23 + *(v118 + 28));
      v28 = *v26;
      v27 = v26[1];
      v29 = [v120 prefixedURI];
      v30 = sub_100936B38();
      v32 = v31;

      if (v28 == v30 && v27 == v32)
      {
      }

      else
      {
        v34 = sub_100937598();

        if ((v34 & 1) == 0)
        {

          v35 = v120;
          v36 = v120;
          v37 = sub_1009364B8();
          v38 = sub_100936EF8();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v110 = v37;
            v42 = v41;
            v121[0] = v41;
            *v39 = v104;
            v43 = sub_10001273C(v28, v27, v121);

            *(v39 + 4) = v43;
            *(v39 + 12) = 2112;
            *(v39 + 14) = v36;
            *v40 = v35;
            v44 = v36;
            v45 = v110;
            _os_log_impl(&_mh_execute_header, v110, v38, "Received a key but senderURI: %s and remoteURI: %@ don't match - dropping! This should never happen.", v39, 0x16u);
            sub_100013814(v40, &qword_100CB36B0);
            v5 = v105;

            sub_100012970(v42);

            v19 = v108;
          }

          else
          {
          }

          v23 = v119;
          v88 = type metadata accessor for SenderKeyDistributionManager.SenderKeyURIMismatchMetric();
          v89 = objc_allocWithZone(v88);
          v90 = &v89[OBJC_IVAR____TtCC17identityservicesd28SenderKeyDistributionManagerP33_E220278C37BF7A52CA212AA0DEF6BDED26SenderKeyURIMismatchMetric_messageGUID];
          v91 = v112;
          *v90 = v111;
          *(v90 + 1) = v91;
          v122.receiver = v89;
          v122.super_class = v88;

          v92 = objc_msgSendSuper2(&v122, "init");
          v93 = [objc_opt_self() defaultLogger];
          if (v93)
          {
            v94 = v93;
            [v93 logMetric:v92];
          }

          else
          {
            v94 = sub_1009364B8();
            v95 = sub_100936EF8();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              *v96 = 0;
              _os_log_impl(&_mh_execute_header, v94, v95, "Failed to initialize CoreAnalyticsLogger.", v96, 2u);
            }
          }

          goto LABEL_6;
        }
      }

      type metadata accessor for SenderKeyUtils();
      v46 = sub_10088F024(v28, v27, v26[2], v26[3]);
      if (v47 >> 60 != 15)
      {
        v48 = v46;
        v49 = v47;
        v23 = v119;
        v50 = v119[1];
        v121[0] = *v119;
        v121[1] = v50;
        sub_100715738(v121[0], v50);
        sub_100936628();
        sub_100715738(v48, v49);
        v51 = v113;
        v52 = v116;
        sub_1009363C8();
        if (v52)
        {
          sub_10001C370(v48, v49);

          v116 = 0;
          goto LABEL_6;
        }

        v116 = 0;
        v53 = sub_100936398();
        v55 = v54;
        sub_10001C370(v48, v49);
        sub_100791FE8(v51, &type metadata accessor for PaddyIncomingSymmetricRatchet);
        v56 = v106;
        sub_1007927DC(v23, v106, type metadata accessor for SenderKeyInfo);
        v57 = &v56[*(v107 + 20)];
        *v57 = v53;
        v57[1] = v55;
        v58 = sub_100792048(v56, v19, type metadata accessor for SenderKeyAndState);
        v59 = (*((swift_isaMask & *v5) + 0xE0))(v58);
        if (v60 >> 60 != 15)
        {
          v61 = v59;
          v62 = v60;
          v63 = (*((swift_isaMask & *v5) + 0xB0))();
          v64 = sub_1008C74C8(v19, v61, v62);

          if (v64)
          {
            v65 = sub_100935E88(0);
            v67 = v66;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v109 = sub_1000251F4(0, *(v109 + 2) + 1, 1, v109);
            }

            v69 = *(v109 + 2);
            v68 = *(v109 + 3);
            if (v69 >= v68 >> 1)
            {
              v109 = sub_1000251F4((v68 > 1), v69 + 1, 1, v109);
            }

            v70 = v109;
            *(v109 + 2) = v69 + 1;
            v71 = &v70[16 * v69];
            *(v71 + 4) = v65;
            *(v71 + 5) = v67;
            v72 = v19;
            v73 = v103;
            sub_1007927DC(v72, v103, type metadata accessor for SenderKeyAndState);
            v74 = v120;
            v75 = v120;
            v76 = sub_1009364B8();
            v77 = sub_100936F18();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v101 = v76;
              v79 = v78;
              v80 = swift_slowAlloc();
              v100 = v61;
              v81 = v80;
              v110 = swift_slowAlloc();
              v121[0] = v110;
              *v79 = v102;
              *(v79 + 4) = v75;
              *v81 = v74;
              *(v79 + 12) = 2080;
              v99 = v77;
              v82 = v75;
              v83 = sub_100935E88(0);
              v85 = v84;
              sub_100791FE8(v73, type metadata accessor for SenderKeyAndState);
              v86 = sub_10001273C(v83, v85, v121);

              *(v79 + 14) = v86;
              v87 = v101;
              _os_log_impl(&_mh_execute_header, v101, v99, "Successfully unpacked and saved received sender key from uri: %@ keyID: %s", v79, 0x16u);
              sub_100013814(v81, &qword_100CB36B0);

              sub_100012970(v110);

              sub_10001C370(v100, v62);
            }

            else
            {
              sub_10001C370(v61, v62);

              sub_100791FE8(v73, type metadata accessor for SenderKeyAndState);
            }

            v19 = v108;
          }

          else
          {
            sub_10001C370(v61, v62);
          }
        }

        sub_100791FE8(v19, type metadata accessor for SenderKeyAndState);
      }

      v23 = v119;
LABEL_6:
      sub_100791FE8(v23, type metadata accessor for SenderKeyInfo);
      v25 += v117;
      if (!--v24)
      {
        return v109;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

id sub_10077CBF0(uint64_t a1, void *a2, void *a3)
{
  v7 = sub_1009364F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100936528();
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v23 = result;
    v24 = v8;
    result = im_primary_queue();
    if (result)
    {
      v16 = result;
      v17 = swift_allocObject();
      v17[2] = v3;
      v17[3] = a1;
      v17[4] = a3;
      v17[5] = a2;
      aBlock[4] = sub_1007960FC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000154AC;
      aBlock[3] = &unk_100BE7F80;
      v18 = _Block_copy(aBlock);
      v19 = v3;

      v20 = a3;
      v21 = a2;
      sub_100936508();
      v25 = &_swiftEmptyArrayStorage;
      sub_1007924D8(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100706B30(&unk_100CB3550);
      sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
      sub_1009370B8();
      sub_100936F88();
      _Block_release(v18);

      (*(v24 + 8))(v10, v7);
      (*(v12 + 8))(v15, v23);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10077CEF8(void *a1, void *a2, void *a3, void *a4)
{
  *&v100 = sub_100936558();
  v101 = *(v100 - 8);
  v9 = __chkstk_darwin(v100);
  v98 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v96 - v11;
  v102 = sub_1009364F8();
  __chkstk_darwin(v102);
  *&v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___IDSSenderKeyDistributionManager_logger;
  v14 = a1;
  v15 = a2;

  v103 = v4;
  v104 = v13;
  v16 = sub_1009364B8();
  v17 = sub_100936F18();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock[0] = v96;
    *v18 = 138413058;
    *(v18 + 4) = v14;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v14;
    v19[1] = v15;
    *(v18 + 22) = 2080;
    v20 = v14;
    v21 = v15;
    v22 = sub_100936CF8();
    v97 = a3;
    v24 = a4;
    v25 = sub_10001273C(v22, v23, aBlock);

    *(v18 + 24) = v25;
    a4 = v24;
    *(v18 + 32) = 2080;
    v26 = sub_100936CF8();
    v28 = sub_10001273C(v26, v27, aBlock);

    *(v18 + 34) = v28;
    a3 = v97;
    _os_log_impl(&_mh_execute_header, v16, v17, "triggerKeyRecovery called with toURI: %@ fromURI: %@ keysToSend: %s keysToRequest: %s", v18, 0x2Au);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  if (!a3[2] && !a4[2])
  {
    return;
  }

  v97 = a4;
  v29 = OBJC_IVAR___IDSSenderKeyDistributionManager_recoveryWorkItems;
  v30 = v103;
  swift_beginAccess();
  v31 = *(v30 + v29);
  v32 = *(v31 + 16);
  v33 = v14;
  v34 = v15;
  if (!v32)
  {
    goto LABEL_11;
  }

  v35 = sub_1007885EC(v33, v34);
  if ((v36 & 1) == 0)
  {

LABEL_11:
    v45 = v33;
    v46 = v34;
    v47 = sub_1009364B8();
    v48 = sub_100936F18();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412546;
      *(v49 + 4) = v45;
      *(v49 + 12) = 2112;
      *(v49 + 14) = v46;
      *v50 = v45;
      v50[1] = v46;
      v51 = v45;
      v52 = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "Scheduling new recovery work item for toURI: %@ fromURI: %@", v49, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    goto LABEL_14;
  }

  v96 = *(*(v31 + 56) + 8 * v35);

  v37 = v33;
  v38 = v34;
  v39 = sub_1009364B8();
  v40 = sub_100936F18();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412546;
    *(v41 + 4) = v37;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v38;
    *v42 = v37;
    v42[1] = v38;
    v43 = v37;
    v44 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "Cancelling existing recovery work item for toURI: %@ fromURI: %@", v41, 0x16u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();
  }

  sub_100936578();
  swift_beginAccess();
  sub_100775020(0, v37, v38);
  swift_endAccess();

LABEL_14:
  v53 = swift_allocObject();
  v54 = v103;
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v53;
  v55[3] = v33;
  v55[4] = v34;
  v55[5] = a3;
  v55[6] = v97;
  v55[7] = v33;
  v55[8] = v34;
  aBlock[4] = sub_1007920B0;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE7808;
  _Block_copy(aBlock);
  v106 = &_swiftEmptyArrayStorage;
  sub_1007924D8(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  v56 = v33;
  v57 = v34;
  v58 = v56;
  v59 = v57;

  sub_100706B30(&unk_100CB3550);
  sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
  sub_1009370B8();
  sub_100936588();
  swift_allocObject();
  v60 = sub_100936568();

  swift_beginAccess();
  v61 = v58;
  v62 = v54;
  v63 = v61;
  v64 = v59;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(v62 + v29);
  *(v62 + v29) = 0x8000000000000000;
  sub_100789344(v60, v63, v64, isUniquelyReferenced_nonNull_native);
  v96 = v64;

  v97 = v63;
  *(v62 + v29) = v106;
  swift_endAccess();
  v66 = im_primary_queue();
  if (v66)
  {
    v67 = v66;
    v68 = v98;
    v69 = sub_100936538();
    (*((swift_isaMask & *v62) + 0x288))(v69);
    v70 = v99;
    sub_1009365A8();
    v71 = *(v101 + 8);
    v72 = v68;
    v73 = v100;
    v71(v72, v100);
    v101 = v60;
    sub_100936F58();

    v71(v70, v73);
    v74 = sub_1009364B8();
    v75 = sub_100936F18();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Currently scheduled key recovery work items:", v76, 2u);
    }

    v77 = *(v62 + v29);
    v80 = *(v77 + 64);
    v79 = v77 + 64;
    v78 = v80;
    v81 = 1 << *(*(v62 + v29) + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & v78;
    v84 = (v81 + 63) >> 6;
    v102 = *(v62 + v29);

    v85 = 0;
    *&v86 = 138412546;
    v100 = v86;
    while (v83)
    {
LABEL_26:
      v105 = *(*(v102 + 48) + ((v85 << 10) | (16 * __clz(__rbit64(v83)))));
      v88 = v105;
      v89 = *(&v105 + 1);
      v90 = v88;
      v91 = v89;
      v92 = sub_1009364B8();
      v93 = sub_100936F18();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = v100;
        *(v94 + 4) = v90;
        *(v94 + 12) = 2112;
        *(v94 + 14) = v91;
        *v95 = v105;
        *&v105 = v90;
        v90 = v91;
        _os_log_impl(&_mh_execute_header, v92, v93, "Scheduled item - toURI: %@, fromURI: %@", v94, 0x16u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();

        v91 = v92;
        v92 = v105;
      }

      v83 &= v83 - 1;
    }

    while (1)
    {
      v87 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v87 >= v84)
      {

        return;
      }

      v83 = *(v79 + 8 * v87);
      ++v85;
      if (v83)
      {
        v85 = v87;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10077DB64(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (!a1 || *(a1 + 16))
  {
    v7 = a2;
    v8 = a3;

    v9 = sub_1009364B8();
    v10 = sub_100936F18();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v11 = 138412802;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v7;
      v12[1] = v8;
      *(v11 + 22) = 2080;
      v13 = v7;
      v14 = v8;

      v15 = sub_100936CF8();
      v17 = v16;

      v18 = sub_10001273C(v15, v17, &v21);

      *(v11 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Resetting key state for senderURI: %@ receiverURI: %@ keyIDs: %s", v11, 0x20u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100012970(v19);
    }

    v20 = (*((swift_isaMask & *v4) + 0xB0))();
    sub_1008C6D40(v7, v8, a1);
  }
}

void sub_10077DE70(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100936558();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v93 - v10;
  *&v99 = sub_1009364F8();
  v12 = __chkstk_darwin(v99);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((swift_isaMask & *v2) + 0xB0))(v12);
  v15 = sub_1008BC744(a1, a2);

  v16 = OBJC_IVAR___IDSSenderKeyDistributionManager_logger;
  v17 = a1;
  v18 = a2;
  v102 = v16;
  *&v103 = sub_1009364B8();
  v19 = sub_100936F18();

  v20 = os_log_type_enabled(v103, v19);
  if ((v15 & 1) == 0)
  {
    if (v20)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412546;
      *(v38 + 4) = v17;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v18;
      *v39 = v17;
      v39[1] = v18;
      v40 = v17;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v103, v19, "Unknown {remoteURI: %@ localURI: %@} for key distribution - not handling remote device update", v38, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    v42 = v103;

    return;
  }

  v95 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v17;
    v22[1] = v18;
    v23 = v17;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v103, v19, "Handling remote device update for remoteURI: %@ localURI: %@", v21, 0x16u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();
  }

  v25 = OBJC_IVAR___IDSSenderKeyDistributionManager_deviceUpdateWorkItems;
  swift_beginAccess();
  v26 = *(*(v3 + v25) + 16);
  v27 = v17;
  v28 = v18;
  v101 = v3;
  v97 = v6;
  v96 = v7;
  if (!v26)
  {
    goto LABEL_15;
  }

  sub_1007885EC(v27, v28);
  if ((v29 & 1) == 0)
  {

LABEL_15:
    v43 = v27;
    v44 = v28;
    v45 = sub_1009364B8();
    v46 = sub_100936F18();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412546;
      *(v47 + 4) = v43;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v43;
      v48[1] = v44;
      v49 = v43;
      v50 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "Scheduling new device update work item for remoteURI: %@ localURI: %@", v47, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    goto LABEL_18;
  }

  v30 = v27;
  v31 = v28;
  v32 = sub_1009364B8();
  v33 = sub_100936F18();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412546;
    *(v34 + 4) = v30;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v35 = v30;
    v35[1] = v31;
    v36 = v30;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Cancelling existing device update work item for remoteURI: %@ localURI: %@", v34, 0x16u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();
  }

  sub_100936578();
  swift_beginAccess();
  sub_100775020(0, v30, v31);
  swift_endAccess();

LABEL_18:
  v51 = swift_allocObject();
  v52 = v101;
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v53[2] = v51;
  v53[3] = v27;
  v53[4] = v28;
  v53[5] = v27;
  v53[6] = v28;
  aBlock[4] = sub_100792520;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE7858;
  _Block_copy(aBlock);
  v104 = &_swiftEmptyArrayStorage;
  sub_1007924D8(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  v54 = v27;
  v55 = v28;
  v56 = v54;
  v57 = v55;

  sub_100706B30(&unk_100CB3550);
  sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
  sub_1009370B8();
  sub_100936588();
  swift_allocObject();
  v58 = sub_100936568();
  v59 = v52;

  swift_beginAccess();
  v60 = v56;
  v61 = v58;
  v62 = v60;
  v63 = v57;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = *(v59 + v25);
  *(v59 + v25) = 0x8000000000000000;
  sub_100789344(v61, v62, v63, isUniquelyReferenced_nonNull_native);
  v93 = v63;

  v94 = v62;
  *(v59 + v25) = v104;
  swift_endAccess();
  v65 = im_primary_queue();
  if (v65)
  {
    v66 = v65;
    v67 = v98;
    v68 = sub_100936538();
    (*((swift_isaMask & *v59) + 0x2A0))(v68);
    v69 = v95;
    sub_1009365A8();
    v70 = *(v96 + 8);
    v71 = v67;
    v72 = v97;
    v70(v71, v97);
    v98 = v61;
    sub_100936F58();

    v70(v69, v72);
    v73 = sub_1009364B8();
    v74 = sub_100936F18();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Currently scheduled device update work items:", v75, 2u);
    }

    v76 = *(v59 + v25);
    v77 = v76 + 64;
    v78 = 1 << v76[32];
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & *(v76 + 8);
    v81 = (v78 + 63) >> 6;

    v82 = 0;
    *&v83 = 138412546;
    v99 = v83;
    v100 = v76;
    while (v80)
    {
LABEL_30:
      v103 = *(*(v76 + 6) + ((v82 << 10) | (16 * __clz(__rbit64(v80)))));
      v85 = v103;
      v86 = *(&v103 + 1);
      v87 = v85;
      v88 = v86;
      v89 = sub_1009364B8();
      v90 = sub_100936F18();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v91 = v99;
        *(v91 + 4) = v87;
        *(v91 + 12) = 2112;
        *(v91 + 14) = v88;
        *v92 = v103;
        *&v103 = v87;
        v87 = v88;
        _os_log_impl(&_mh_execute_header, v89, v90, "Scheduled item - toURI: %@, fromURI: %@", v91, 0x16u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();
        v76 = v100;

        v88 = v89;
        v89 = v103;
      }

      v80 &= v80 - 1;
    }

    while (1)
    {
      v84 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v84 >= v81)
      {

        return;
      }

      v80 = *&v77[8 * v84];
      ++v82;
      if (v80)
      {
        v82 = v84;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10077EAA8(uint64_t a1, void *a2)
{
  v3 = v2;

  v6 = a2;
  v7 = sub_1009364B8();
  v8 = sub_100936F18();

  v28 = v3;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v9 = 136315394;
    v12 = sub_100936CF8();
    v14 = sub_10001273C(v12, v13, &v30);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating delivered state for keyIDs: %s pushToken: %@", v9, 0x16u);
    sub_100013814(v10, &qword_100CB36B0);

    sub_100012970(v11);
  }

  v16 = 0;
  v17 = *(a1 + 16);
  v18 = a1 + 40;
  v19 = &_swiftEmptyArrayStorage;
LABEL_4:
  v20 = v18 + 16 * v16;
  while (v17 != v16)
  {
    if (v16 >= v17)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_22;
    }

    v22 = sub_100935E28();
    v24 = v23;

    ++v16;
    v20 += 16;
    if (v24 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100787FB8(0, *(v19 + 2) + 1, 1, v19);
      }

      v26 = *(v19 + 2);
      v25 = *(v19 + 3);
      if (v26 >= v25 >> 1)
      {
        v19 = sub_100787FB8((v25 > 1), v26 + 1, 1, v19);
      }

      *(v19 + 2) = v26 + 1;
      v27 = &v19[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      v16 = v21;
      goto LABEL_4;
    }
  }

  if (*(v19 + 2))
  {
    v29 = (*((swift_isaMask & *v28) + 0xB0))();
    sub_1008C477C(v6, v19, 0, 0);
  }

  else
  {
  }
}

BOOL sub_10077EE48(uint64_t isUniquelyReferenced_nonNull_native, void *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 62)
  {
    goto LABEL_41;
  }

  v59 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v55 = isUniquelyReferenced_nonNull_native;
    v56 = a2;
    v4 = &_swiftEmptyArrayStorage;
    if (v59)
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          isUniquelyReferenced_nonNull_native = sub_100937268();
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_39;
          }

          isUniquelyReferenced_nonNull_native = *(v3 + 8 * v5 + 32);
        }

        v8 = isUniquelyReferenced_nonNull_native;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = v3;
        v11 = [isUniquelyReferenced_nonNull_native rawToken];
        v12 = sub_100935EA8();
        v14 = v13;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100787FB8(0, *(v4 + 2) + 1, 1, v4);
          v4 = isUniquelyReferenced_nonNull_native;
        }

        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100787FB8((v15 > 1), v16 + 1, 1, v4);
          v4 = isUniquelyReferenced_nonNull_native;
        }

        *(v4 + 2) = v16 + 1;
        v17 = &v4[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        ++v5;
        v3 = v10;
        if (v9 == v59)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:
    v18 = sub_100791A24(v4);

    v20 = (*((swift_isaMask & log->isa) + 0xB0))(v19);
    v21 = sub_1008BB8DC(v55, v56);

    if (v21[2] <= *(v18 + 16) >> 3)
    {
      v61 = v18;
      sub_10078C684(v21);

      v22 = v61;
      v23 = v61[2];
      if (!v23)
      {
LABEL_18:

        return v23 != 0;
      }
    }

    else
    {
      v22 = sub_10078C7C4(v21, v18);

      v23 = v22[2];
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    v24 = v55;
    v25 = v56;

    v26 = sub_1009364B8();
    v27 = sub_100936F18();

    if (!os_log_type_enabled(v26, v27))
    {
      break;
    }

    v57 = v27;
    log = v26;
    v60 = v23;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v28 = 138413058;
    *(v28 + 4) = v24;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v29 = v24;
    v29[1] = v25;
    *(v28 + 22) = 2080;
    sub_100014170(0, &qword_100CB34A0);
    v30 = v24;
    v31 = v25;
    v32 = sub_100936CF8();
    v34 = sub_10001273C(v32, v33, &v61);

    *(v28 + 24) = v34;
    *(v28 + 32) = 2080;
    v35 = 1 << *(v22 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v3 = v36 & v22[7];
    v37 = (v35 + 63) >> 6;

    v38 = 0;
    if (!v3)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_25:
      while (1)
      {
        v39 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v40 = (v22[6] + ((v38 << 10) | (16 * v39)));
        v41 = *v40;
        v42 = v40[1];
        v43 = objc_allocWithZone(IDSPushToken);
        sub_100715738(v41, v42);
        isa = sub_100935E78().super.isa;
        v45 = [v43 initWithData:isa];

        isUniquelyReferenced_nonNull_native = sub_1007156D8(v41, v42);
        if (v45)
        {
          break;
        }

        if (!v3)
        {
          goto LABEL_27;
        }
      }

      sub_100936CC8();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100936D18();
      }

      isUniquelyReferenced_nonNull_native = sub_100936D38();
    }

    while (v3);
LABEL_27:
    while (1)
    {
      v46 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v46 >= v37)
      {

        v47 = sub_100936CF8();
        v49 = v48;

        v50 = sub_10001273C(v47, v49, &v61);

        *(v28 + 34) = v50;
        _os_log_impl(&_mh_execute_header, log, v57, "Detected device missing keys! senderURI: %@ receiverURI: %@ currentPeerTokens: %s missingTokens: %s", v28, 0x2Au);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v23 = v60;
        return v23 != 0;
      }

      v3 = v22[v46 + 7];
      ++v38;
      if (v3)
      {
        v38 = v46;
        goto LABEL_25;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v52 = isUniquelyReferenced_nonNull_native;
    v53 = a2;
    v54 = sub_1009373F8();
    a2 = v53;
    v59 = v54;
    isUniquelyReferenced_nonNull_native = v52;
  }

  return v23 != 0;
}

void *sub_10077F438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_100706B30(&qword_100CB4A88);
  __chkstk_darwin(v10 - 8);
  v45 = &v41 - v11;
  v44 = type metadata accessor for SenderKeyInfo(0);
  v46 = *(v44 - 8);
  v12 = __chkstk_darwin(v44);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v41 - v14;
  v15 = sub_100706B30(&unk_100CB4FC0);
  v16 = __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v41 - v20;
  v22 = *(v19 + 48);
  v23 = *(v19 + 64);
  v24 = (*((swift_isaMask & *v3) + 0xB0))();
  sub_1008A8848(v21, &v21[v22], &v21[v23], a1, a2, a3);

  v25 = type metadata accessor for SenderKeyAndState(0);
  v26 = *(*(v25 - 8) + 48);
  if (v26(v21, 1, v25) != 1)
  {
    v30 = &unk_100CB4FC0;
    v31 = v21;
LABEL_7:
    sub_100013814(v31, v30);
    return &_swiftEmptyArrayStorage;
  }

  sub_100012D50(v21, v18, &unk_100CB4FC0);
  v27 = *(v15 + 48);
  v28 = *(v15 + 64);
  sub_100796558(&v18[v27], v9);
  if (v26(v9, 1, v25) == 1)
  {
    sub_100013814(&v18[v28], &unk_100CB4A50);
    sub_100013814(v18, &unk_100CB4A50);
    sub_100013814(v9, &unk_100CB4A50);
    v29 = v45;
    (*(v46 + 56))(v45, 1, 1, v44);
LABEL_6:
    sub_100013814(v21, &unk_100CB4FC0);
    v30 = &qword_100CB4A88;
    v31 = v29;
    goto LABEL_7;
  }

  v29 = v45;
  sub_1007927DC(v9, v45, type metadata accessor for SenderKeyInfo);
  sub_100791FE8(v9, type metadata accessor for SenderKeyAndState);
  v32 = v46;
  v33 = v44;
  (*(v46 + 56))(v29, 0, 1, v44);
  sub_100013814(&v18[v28], &unk_100CB4A50);
  sub_100013814(v18, &unk_100CB4A50);
  if ((*(v32 + 48))(v29, 1, v33) == 1)
  {
    goto LABEL_6;
  }

  v35 = v42;
  sub_100792048(v29, v42, type metadata accessor for SenderKeyInfo);
  v36 = v43;
  sub_1007927DC(v35, v43, type metadata accessor for SenderKeyInfo);
  v37 = sub_1007880C4(0, 1, 1, &_swiftEmptyArrayStorage);
  v39 = v37[2];
  v38 = v37[3];
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1007880C4(v38 > 1, v39 + 1, 1, v37);
  }

  v40 = v37;
  sub_100791FE8(v35, type metadata accessor for SenderKeyInfo);
  v40[2] = v39 + 1;
  sub_100792048(v36, v40 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v39, type metadata accessor for SenderKeyInfo);
  sub_100013814(v21, &unk_100CB4FC0);
  return v40;
}

uint64_t sub_10077F9B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for SenderKeyInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100936038();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  sub_100936028();
  sub_100935F48();
  v17 = *(v11 + 8);
  v43 = v11 + 8;
  v44 = v10;
  v41 = v17;
  v18 = (v17)(v14, v10);
  v19 = *((swift_isaMask & *v3) + 0xB0);
  v20 = v19(v18);
  v21 = sub_1008BCA40(a1, a2);

  v48 = v16;

  v22 = sub_100774D94(sub_1007965C8, v47, v21);
  v42 = v16;
  v46 = v16;

  v23 = sub_100774D94(sub_100796618, v45, v21);
  v24 = *(v21 + 16);

  if (v24)
  {
    LODWORD(v24) = *(v22 + 16) == 0;
  }

  if (*(v23 + 16))
  {
    v39 = v24;
    v40 = v19(v25);
    v26 = *(v23 + 16);
    if (v26)
    {
      v38 = v22;
      v27 = v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v28 = *(v7 + 72);
      v29 = &_swiftEmptyArrayStorage;
      do
      {
        sub_1007927DC(v27, v9, type metadata accessor for SenderKeyInfo);
        v31 = *(v9 + 2);
        v30 = *(v9 + 3);
        sub_100715738(v31, v30);
        sub_100791FE8(v9, type metadata accessor for SenderKeyInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100787FB8(0, *(v29 + 2) + 1, 1, v29);
        }

        v33 = *(v29 + 2);
        v32 = *(v29 + 3);
        if (v33 >= v32 >> 1)
        {
          v29 = sub_100787FB8((v32 > 1), v33 + 1, 1, v29);
        }

        *(v29 + 2) = v33 + 1;
        v34 = &v29[16 * v33];
        *(v34 + 4) = v31;
        *(v34 + 5) = v30;
        v27 += v28;
        --v26;
      }

      while (v26);

      v22 = v38;
    }

    else
    {

      v29 = &_swiftEmptyArrayStorage;
    }

    v35 = v40;
    sub_1008D7430(v29);
  }

  v41(v42, v44);
  return v22;
}

uint64_t sub_10077FD8C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v8 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for SenderKeyAndState(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  (*((swift_isaMask & *v4) + 0x2E0))(a1, a2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100013814(v10, &unk_100CB4A50);
    v17 = a2;
    v18 = a1;
    v19 = sub_1009364B8();
    v20 = sub_100936EF8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      *v22 = v17;
      v22[1] = v18;
      v23 = v17;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to generate new sender key and state for URI: %@ fromURI: %@", v21, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

LABEL_11:
    v51 = 1;
    v52 = v57;
    goto LABEL_14;
  }

  v25 = sub_100792048(v10, v16, type metadata accessor for SenderKeyAndState);
  v26 = (*((swift_isaMask & *v4) + 0xB0))(v25);
  v27 = sub_1008C3F40(v16, a3);

  v28 = v16;
  if ((v27 & 1) == 0)
  {
    v43 = a2;
    v44 = a1;
    v45 = sub_1009364B8();
    v46 = sub_100936EF8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412546;
      *(v47 + 4) = v43;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v43;
      v48[1] = v44;
      v49 = v43;
      v50 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to save new sender key and state for URI: %@ fromURI: %@", v47, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    sub_100791FE8(v28, type metadata accessor for SenderKeyAndState);
    goto LABEL_11;
  }

  v29 = v16;
  v30 = v56;
  sub_1007927DC(v29, v56, type metadata accessor for SenderKeyAndState);
  v31 = a2;
  v32 = a1;
  v33 = sub_1009364B8();
  v34 = sub_100936F18();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = v55;
    *v35 = 138412802;
    *(v35 + 4) = v31;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v32;
    *v36 = v31;
    v36[1] = v32;
    *(v35 + 22) = 2080;
    v37 = v31;
    v38 = v32;
    v39 = sub_100935E88(0);
    v41 = v40;
    sub_100791FE8(v30, type metadata accessor for SenderKeyAndState);
    v42 = sub_10001273C(v39, v41, &v58);

    *(v35 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "Successfully generated and saved new sender key for URI: %@ fromURI: %@ keyID: %s", v35, 0x20u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    sub_100012970(v55);
  }

  else
  {

    sub_100791FE8(v30, type metadata accessor for SenderKeyAndState);
  }

  v52 = v57;
  sub_1007927DC(v28, v57, type metadata accessor for SenderKeyInfo);
  sub_100791FE8(v28, type metadata accessor for SenderKeyAndState);
  v51 = 0;
LABEL_14:
  v53 = type metadata accessor for SenderKeyInfo(0);
  return (*(*(v53 - 8) + 56))(v52, v51, 1, v53);
}

uint64_t sub_100780434(uint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  v16 = (*((swift_isaMask & *v2) + 0xB0))(v13);
  sub_1008CA6EC(a1, a2, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB4AC0);
    return 1;
  }

  (*(v9 + 32))(v15, v7, v8);
  sub_100936028();
  sub_100935F38();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v12, v8);
  if (v18 > 300.0)
  {
    v19(v15, v8);
    return 1;
  }

  v21 = sub_1009364B8();
  v22 = sub_100936F18();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "We are still within cool down period, not regenerating", v23, 2u);
  }

  v19(v15, v8);
  return 0;
}

uint64_t sub_10078070C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v61);
  v60 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100706B30(&qword_100CB4AC8);
  v8 = __chkstk_darwin(v7);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v12 = sub_100936448();
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SenderKeyUtils();
  v57 = a1;
  v15 = [a1 prefixedURI];
  v16 = sub_100936B38();
  v18 = v17;

  v58 = a2;
  v19 = [a2 prefixedURI];
  v20 = sub_100936B38();
  v22 = v21;

  v23 = sub_10088F024(v16, v18, v20, v22);
  v25 = v24;

  if (v25 >> 60 == 15)
  {
    v26 = type metadata accessor for SenderKeyAndState(0);
    v27 = *(*(v26 - 8) + 56);

    return v27(a3, 1, 1, v26);
  }

  else
  {
    v56 = a3;
    sub_100715738(v23, v25);
    sub_1009363F8();
    v29 = sub_1009363E8();
    v54 = v30;
    v55 = v29;
    v31 = sub_100936418();
    v52 = v32;
    v53 = v31;
    v33 = *(v7 + 48);
    *&v11[v33] = sub_100936408();
    v34 = [v57 prefixedURI];
    v57 = sub_100936B38();
    v51 = v35;

    v36 = [v58 prefixedURI];
    v58 = sub_100936B38();
    v50 = v37;

    v38 = v59;
    sub_100012D50(v11, v59, &qword_100CB4AC8);
    v40 = v60;
    v39 = v61;
    sub_100936028();
    sub_100936618();
    sub_10001C370(v23, v25);
    sub_100013814(v11, &qword_100CB4AC8);
    sub_100791FE8(v14, &type metadata accessor for PaddyOutgoingSymmetricRatchet);
    v41 = sub_100936638();
    (*(*(v41 - 8) + 8))(v38, v41);
    *v40 = v62;
    v42 = v52;
    *(v40 + 16) = v53;
    *(v40 + 24) = v42;
    v43 = (v40 + *(v39 + 28));
    v44 = v56;
    v45 = v51;
    *v43 = v57;
    v43[1] = v45;
    v46 = v50;
    v43[2] = v58;
    v43[3] = v46;
    sub_100792048(v40, v44, type metadata accessor for SenderKeyInfo);
    v47 = type metadata accessor for SenderKeyAndState(0);
    v48 = (v44 + *(v47 + 20));
    v49 = v54;
    *v48 = v55;
    v48[1] = v49;
    return (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
  }
}

uint64_t sub_100780BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100792048(a1, a4, type metadata accessor for SenderKeyInfo);
  result = type metadata accessor for SenderKeyAndState(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_100780C30(uint64_t a1)
{
  sub_100935B88();
  swift_allocObject();
  sub_100935B78();
  v3 = (*((swift_isaMask & *v1) + 0xB0))();
  sub_100014170(0, &qword_100CB4AD0);
  isa = sub_100936CD8().super.isa;
  v5 = [v3 senderKeyMessageSupportedFor:isa];

  if (v5)
  {
    sub_100792844();
    v6 = sub_100935B68();
LABEL_7:
    v11 = v6;

    return v11;
  }

  v6 = sub_100791B78(*(a1 + 16));
  if (v7 >> 60 != 15)
  {
    goto LABEL_7;
  }

  v8 = sub_1009364B8();
  v9 = sub_100936EF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to serialize [SenderKeyInfo]", v10, 2u);
  }

  return 0;
}

double sub_100780F10@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100706B30(&qword_100CB4A88);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for SenderKeyInfo(0);
  v12[2] = *(v5 - 8);
  __chkstk_darwin(v5);
  v12[5] = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935B58();
  swift_allocObject();
  sub_100935B48();
  sub_100792898();
  *&v13 = a1;
  sub_100935B38();
  v7 = v14;
  v8 = v15;
  v9 = v17;
  v13 = v16;
  a2[3] = &type metadata for SenderKeyMessage;
  v10 = swift_allocObject();
  *a2 = v10;

  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  result = *&v13;
  *(v10 + 32) = v13;
  *(v10 + 48) = v9;
  return result;
}

void sub_100781640()
{
  v0 = sub_1009364B8();
  v1 = sub_100936F18();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Roll keys timer fired!", v2, 2u);
  }

  v3 = (*((swift_isaMask & *v23) + 0xB0))();
  v4 = sub_1008CB330();

  v5 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v22 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = v5;
LABEL_11:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = (v12 << 9) | (8 * v13);
      v15 = *(*(v22 + 48) + v14);
      v16 = *(*(v22 + 56) + v14);
      v17 = swift_allocObject();
      v17[2] = v23;
      v17[3] = v16;
      v17[4] = v15;
      v18 = *((swift_isaMask & *v23) + 0x1F8);
      v19 = v15;
      swift_bridgeObjectRetain_n();
      v20 = v19;
      v21 = v23;
      v18(v16, v20, 0x6C6C6F5279654BLL, 0xE700000000000000, sub_1007928EC, v17);

      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1007818D4(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  v16 = (*((swift_isaMask & *v2) + 0xB0))(v13);
  sub_1008CA6EC(a1, a2, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100013814(v7, &qword_100CB4AC0);
    return 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_100936028();
    v18 = sub_1007903FC();
    sub_100935FC8();
    v20 = v19;
    sub_100935FC8();
    v22 = v20 - v21;
    v17 = v18 + -3600.0 < v22;
    if (v18 + -3600.0 < v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_1009364B8();
      v26 = sub_100936F18();

      v34 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 134218498;
        *(v27 + 4) = v18;
        *(v27 + 12) = 2112;
        *(v27 + 14) = v23;
        *(v27 + 22) = 2112;
        *(v27 + 24) = v24;
        *v28 = v23;
        v28[1] = v24;
        v29 = v23;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v34, v26, "We need to roll! currentRollInterval: %f { senderURI %@ receiverURI %@ }", v27, 0x20u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();
      }
    }

    v31 = *(v9 + 8);
    v31(v12, v8);
    v31(v15, v8);
  }

  return v17;
}

double sub_100781C4C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 3456000.0;
}

double sub_100781D9C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 6048000.0;
}

double sub_100781EEC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 86400.0;
}

uint64_t sub_10078203C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 5;
}

double sub_100782184()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 3600.0;
}

uint64_t sub_1007822D4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 1;
}

double sub_10078241C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 600.0;
}

uint64_t sub_10078256C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 1;
}

double sub_1007826B4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 600.0;
}

double sub_100782804()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 86400.0;
}

uint64_t sub_100782954()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 1;
}

double sub_100782A9C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 3600.0;
}

double sub_100782BEC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 1209600.0;
}

uint64_t sub_100782D3C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 1;
}

double sub_100782E84()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 86400.0;
}

void sub_100782FD4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v4 - 8);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&unk_100CB4A50);
  v7 = __chkstk_darwin(v6 - 8);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = &v75 - v10;
  v11 = __chkstk_darwin(v9);
  v77 = &v75 - v12;
  v13 = __chkstk_darwin(v11);
  v82 = &v75 - v14;
  __chkstk_darwin(v13);
  v81 = &v75 - v15;
  v86 = &_swiftEmptySetSingleton;
  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    sub_100706B30(&qword_100CB4A30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1009AD920;
    *(v18 + 32) = a1;
    sub_100014170(0, &qword_100CBA2E0);
    v75 = a1;
    isa = sub_100936CD8().super.isa;

    v20 = IDSServiceNameiMessage;
    sub_100706B30(&unk_100CBA2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AC700;
    *(inited + 32) = sub_100936B38();
    *(inited + 40) = v22;
    v23 = objc_allocWithZone(NSNumber);
    v24 = v20;
    *(inited + 48) = [v23 initWithInteger:1];
    sub_1007917EC(inited);
    swift_setDeallocating();
    sub_100013814(inited + 32, &unk_100CB4A60);
    sub_100014170(0, &unk_100CBA300);
    v25 = sub_100936A58().super.isa;

    v26 = [v17 endpointsForURIs:isa service:v24 fromURI:a2 withCapabilities:v25];

    v76 = a2;
    if (v26)
    {
      sub_100706B30(&qword_100CB4A38);
      sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
      v27 = sub_100936A78();
    }

    else
    {
      v27 = sub_100790608(&_swiftEmptyArrayStorage);
    }

    v28 = 0;
    v29 = v27 + 64;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v27 + 64);
    v33 = (v30 + 63) >> 6;
    v34 = &_swiftEmptyArrayStorage;
    while (v32)
    {
      v84 = v34;
LABEL_15:
      v36 = v27;
      v37 = *(*(v27 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v32)))));
      v38 = *((swift_isaMask & *v83) + 0xB0);

      v40 = v38(v39);
      v41 = (*((swift_isaMask & *v40) + 0x100))(v37);

      v42 = *(v41 + 16);
      v34 = v84;
      v43 = *(v84 + 2);
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        goto LABEL_39;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v44 > *(v34 + 3) >> 1)
      {
        if (v43 <= v44)
        {
          v46 = v43 + v42;
        }

        else
        {
          v46 = v43;
        }

        v34 = sub_100787FB8(isUniquelyReferenced_nonNull_native, v46, 1, v34);
      }

      v27 = v36;
      v32 &= v32 - 1;
      if (*(v41 + 16))
      {
        if ((*(v34 + 3) >> 1) - *(v34 + 2) < v42)
        {
          goto LABEL_41;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v47 = *(v34 + 2);
          v48 = __OFADD__(v47, v42);
          v49 = v47 + v42;
          if (v48)
          {
            goto LABEL_42;
          }

          *(v34 + 2) = v49;
        }
      }

      else
      {

        if (v42)
        {
          goto LABEL_40;
        }
      }
    }

    while (1)
    {
      v35 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        v51 = (*((swift_isaMask & *v83) + 0xB0))(v50);
        v53 = v81;
        v52 = v82;
        v54 = v77;
        sub_1008A8848(v81, v82, v77, v76, v75, v34);

        sub_100013814(v54, &unk_100CB4A50);
        v55 = v78;
        sub_100012D50(v53, v78, &unk_100CB4A50);
        v56 = type metadata accessor for SenderKeyAndState(0);
        v57 = *(*(v56 - 8) + 48);
        if (v57(v55, 1, v56) == 1)
        {
          sub_100013814(v55, &unk_100CB4A50);
        }

        else
        {
          v58 = v80;
          sub_1007927DC(v55, v80, type metadata accessor for SenderKeyInfo);
          sub_100791FE8(v55, type metadata accessor for SenderKeyAndState);
          v59 = *(v58 + 16);
          v60 = *(v58 + 24);
          sub_100715738(v59, v60);
          sub_100791FE8(v58, type metadata accessor for SenderKeyInfo);
          v61 = sub_100935E88(0);
          v63 = v62;
          sub_1007156D8(v59, v60);
          sub_1007418C8(&v85, v61, v63);
        }

        v64 = v79;
        sub_100012D50(v52, v79, &unk_100CB4A50);
        if (v57(v64, 1, v56) == 1)
        {
          sub_100013814(v64, &unk_100CB4A50);
        }

        else
        {
          v65 = v80;
          sub_1007927DC(v64, v80, type metadata accessor for SenderKeyInfo);
          sub_100791FE8(v64, type metadata accessor for SenderKeyAndState);
          v66 = *(v65 + 16);
          v67 = *(v65 + 24);
          sub_100715738(v66, v67);
          sub_100791FE8(v65, type metadata accessor for SenderKeyInfo);
          v68 = sub_100935E88(0);
          v70 = v69;
          sub_1007156D8(v66, v67);
          sub_1007418C8(&v85, v68, v70);
        }

        v71 = v86;
        v72 = v86[2];
        if (v72)
        {
          v73 = sub_1007884E0(v86[2], 0);
          v74 = sub_10078FCE0(&v85, v73 + 4, v72, v71);
          sub_100308C6C();
          if (v74 != v72)
          {
            __break(1u);
            goto LABEL_36;
          }
        }

        else
        {
LABEL_36:
        }

        sub_100013814(v52, &unk_100CB4A50);
        sub_100013814(v53, &unk_100CB4A50);
        return;
      }

      v32 = *(v29 + 8 * v35);
      ++v28;
      if (v32)
      {
        v84 = v34;
        v28 = v35;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1007838E4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1009373F8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1009373F8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1007899A8(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1007839F4(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0xB0))();
  v6 = [v5 decryptingKeyIDsWithSenderURI:a1 receiverURI:a2];

  v7 = sub_100936CE8();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    v11 = &_swiftEmptyArrayStorage;
    while (v9 < *(v7 + 16))
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      sub_100715738(v13, *v10);
      v14 = sub_100935E88(0);
      v16 = v15;
      sub_1007156D8(v13, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1000251F4(0, *(v11 + 2) + 1, 1, v11);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1000251F4((v17 > 1), v18 + 1, 1, v11);
      }

      ++v9;
      *(v11 + 2) = v18 + 1;
      v19 = &v11[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

Class sub_100783BB0(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, id))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v8, v9);

  v11.super.isa = sub_100936CD8().super.isa;

  return v11.super.isa;
}

char *sub_100783C50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (a1 + 40);
    v5 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v7 = *(v4 - 1);
      v6 = *v4;

      v8 = sub_100935E28();
      if (v9 >> 60 != 15)
      {
        v10 = v8;
        v11 = v9;
        v12 = (*((swift_isaMask & *v3) + 0xB0))();
        v13 = sub_1008C8270(v10, v11);

        if ((v13 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1000251F4(0, *(v5 + 2) + 1, 1, v5);
          }

          v15 = *(v5 + 2);
          v14 = *(v5 + 3);
          if (v15 >= v14 >> 1)
          {
            v5 = sub_1000251F4((v14 > 1), v15 + 1, 1, v5);
          }

          sub_10001C370(v10, v11);
          *(v5 + 2) = v15 + 1;
          v16 = &v5[16 * v15];
          *(v16 + 4) = v7;
          *(v16 + 5) = v6;
          goto LABEL_5;
        }

        sub_10001C370(v10, v11);
      }

LABEL_5:
      v4 += 2;
      if (!--v2)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

char *sub_100783E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = (*((swift_isaMask & *v3) + 0x3A8))(a2, a3);
  v6 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v6)
  {
    v15[4] = isUniquelyReferenced_nonNull_native;
    v7 = (isUniquelyReferenced_nonNull_native + 40);
    v8 = &_swiftEmptyArrayStorage;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v16[0] = v10;
      v16[1] = v9;
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v15[2] = v16;

      if (sub_10078F560(sub_100793E78, v15, a1))
      {
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1000251F4(0, *(v8 + 2) + 1, 1, v8);
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1000251F4((v11 > 1), v12 + 1, 1, v8);
          v8 = isUniquelyReferenced_nonNull_native;
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[16 * v12];
        *(v13 + 4) = v10;
        *(v13 + 5) = v9;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_1007840C4(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0xB0))();
  LOBYTE(a2) = sub_1008CA10C(a1, a2);

  return a2 & 1;
}

uint64_t sub_1007841EC(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xB0))();
  LOBYTE(a1) = sub_1008CA244(a1);

  return a1 & 1;
}

void sub_1007844D4()
{
  v8 = &type metadata for FeaturesKey;
  v9 = sub_10079674C();
  v0 = sub_100936178();
  sub_100012970(v7);
  if (v0)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = sub_1007968C8;
    v10 = v2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1007846C8;
    v8 = &unk_100BE7FF8;
    v3 = _Block_copy(v7);

    v4 = sub_100936B28();
    v5 = im_primary_queue();
    [v1 registerDiagnosticInfoBlock:v3 title:v4 queue:v5];

    _Block_release(v3);
  }

  else
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v1 = sub_100799D0C();
    registerSysdiagnoseBlock(title:queue:block:)(0x646E65532D534449, 0xEE0079654B2D7265, v1, sub_1007967A0, v6);
  }
}

uint64_t sub_1007846C8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1007969B4, v4);
}

void sub_10078475C(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_100936B28();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

unint64_t sub_1007847B8(unint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0xB0);
  v4 = v3();
  v5 = sub_1008CDA60(a1, 1);

  v6 = v3();
  v7 = sub_1008CE658(a1);
  v9 = v8;

  v11._countAndFlagsBits = v7;
  v11._object = v9;
  sub_100936C08(v11);

  return v5;
}

uint64_t sub_1007849E4()
{
  v1 = (*((swift_isaMask & *v0) + 0xB0))();
  v2 = sub_1008CFBCC();

  return v2;
}

uint64_t sub_100784B00(unint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;

  v14 = a2;
  v15 = sub_1009364B8();
  v16 = sub_100936F18();

  if (os_log_type_enabled(v15, v16))
  {
    v32 = a5;
    v17 = swift_slowAlloc();
    v33 = a6;
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 136315906;
    v34 = a3;
    v35 = v31;
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    v19 = sub_100936E28();
    v21 = sub_10001273C(v19, v20, &v35);

    *(v17 + 4) = v21;
    a3 = v34;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v14;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v34;
    *(v17 + 32) = 1024;
    *(v17 + 34) = a4 & 1;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Processing donated handles: %s fromURI: %@ priority: %ld isInitialDonation: %{BOOL}d", v17, 0x26u);
    sub_100013814(v18, &qword_100CB36B0);
    a6 = v33;

    sub_100012970(v31);

    a5 = v32;
  }

  v23 = (*((swift_isaMask & *v7) + 0xB0))();
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;

  sub_1008CB1F8(a1, v14, a3, sub_100793ED0, v24);

  v25 = sub_100788910(a1);
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = a1;
  v26[4] = v14;
  v27 = *((swift_isaMask & *v7) + 0x1F8);

  v28 = v14;
  v29 = v7;
  v27(v25, v28, 0x6F44656C646E6148, 0xEE006E6F6974616ELL, sub_100793F40, v26);
}

uint64_t sub_10078502C()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager_firstDataProtectionLockQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  *(v0 + v1) = &_swiftEmptyArrayStorage;
}

void *sub_100785148(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10071DE64(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100012914(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10071DE64((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10078525C(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1009372B8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100012914(i, v5);
    sub_100014170(0, &qword_100CBA2E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_100937298();
    sub_1009372C8();
    sub_1009372D8();
    sub_1009372A8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

Swift::Int sub_1007853EC()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_1007854CC()
{
  sub_100936BC8();
}

Swift::Int sub_100785598()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_100785674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007946DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1007856A4(unint64_t *a1@<X8>)
{
  v2 = 0xEF6E6F6974756269;
  v3 = 0x727473694479656BLL;
  v4 = 0x8000000100B011E0;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x4379654B666C6573;
    v4 = 0xEC0000006B636568;
  }

  if (*v1)
  {
    v3 = 0x657571655279656BLL;
    v2 = 0xEA00000000007473;
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

Swift::Int sub_1007857FC()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_100785900()
{
  sub_100936BC8();
}

Swift::Int sub_1007859F0()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_100785AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100794728(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100785B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xE800000000000000;
  v6 = 0x736F666E4979656BLL;
  v7 = 0xEF73444979654B64;
  v8 = 0x6574736575716572;
  if (v2 != 3)
  {
    v8 = 0x6F5473444979656BLL;
    v7 = 0xED00006B63656843;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x546567617373656DLL;
    v3 = 0xEB00000000657079;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100785BE0()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x736F666E4979656BLL;
  v4 = 0x6574736575716572;
  if (v1 != 3)
  {
    v4 = 0x6F5473444979656BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x546567617373656DLL;
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

uint64_t sub_100785C9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100794728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100785CD0(uint64_t a1)
{
  v2 = sub_100794B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100785D0C(uint64_t a1)
{
  v2 = sub_100794B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100785D48(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB4AF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000226D4(a1, a1[3]);
  sub_100794B0C();
  sub_1009376F8();
  LOBYTE(v12) = 0;
  sub_1009374E8();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 8);
    v13 = 1;
    sub_100794B60();
    sub_1009374F8();
    v12 = *(v3 + 16);
    v13 = 2;
    sub_100706B30(&qword_100CB4A98);
    sub_100795F94(&qword_100CB4B10, &qword_100CB4B18);
    sub_1009374F8();
    v12 = *(v3 + 24);
    v13 = 3;
    sub_100706B30(&qword_100CBA460);
    sub_100796030(&qword_100CB4B20);
    sub_1009374F8();
    v9 = *(v3 + 32);
    v14 = v9;
    v12 = v9;
    v13 = 4;

    sub_1009374F8();
    if (*(v9 + 16))
    {
      v12 = v9;
      v13 = 4;
      sub_1009374F8();
    }

    sub_100013814(&v14, &qword_100CBA460);
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100786064@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100794774(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_1007860D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_100937668();
  v3 = [v1 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  v4 = [v2 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_1007861A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [v1 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  v4 = [v2 prefixedURI];
  sub_100936B38();

  sub_100936BC8();
}

Swift::Int sub_100786268()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_100937668();
  v3 = [v1 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  v4 = [v2 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_100786334()
{
  if (*v0)
  {
    return 0x7265766965636572;
  }

  else
  {
    return 0x52557265646E6573;
  }
}

uint64_t sub_10078637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x52557265646E6573 && a2 == 0xE900000000000049;
  if (v6 || (sub_100937598() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xEB00000000495255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100937598();

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

uint64_t sub_100786464(uint64_t a1)
{
  v2 = sub_100794BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007864A0(uint64_t a1)
{
  v2 = sub_100794BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007864DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100706B30(&qword_100CB4B28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000226D4(a1, a1[3]);
  sub_100794BB4();
  sub_1009376F8();
  v14 = 0;
  sub_1009374D8();
  if (!v5)
  {
    v13 = 1;
    sub_1009374D8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100786670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100794C08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1007866C0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_100937598(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_100937598();
    }
  }

  return result;
}

Swift::Int sub_100786764()
{
  sub_100937668();
  sub_100936BC8();
  sub_100936BC8();
  return sub_1009376C8();
}

uint64_t sub_1007867CC()
{
  sub_100936BC8();

  return sub_100936BC8();
}

Swift::Int sub_10078681C()
{
  sub_100937668();
  sub_100936BC8();
  sub_100936BC8();
  return sub_1009376C8();
}

uint64_t sub_100786880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_1000226D4(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_100717A28(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_100717AE0(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_100717B5C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_100012970(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_10078694C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v15 = type metadata accessor for SenderKeyInfo(0);
  v16 = *(v15 + 24);
  v17 = sub_100936038();
  result = (*(*(v17 - 8) + 32))(&a9[v16], a5, v17);
  v19 = &a9[*(v15 + 28)];
  *v19 = a6;
  *(v19 + 1) = a7;
  *(v19 + 2) = a8;
  *(v19 + 3) = a10;
  return result;
}

unint64_t sub_1007869FC()
{
  v1 = 0x6174614479656BLL;
  v2 = 0x4164657461657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x444979656BLL;
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

uint64_t sub_100786A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100794F60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100786AB0(uint64_t a1)
{
  v2 = sub_100794DEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100786AEC(uint64_t a1)
{
  v2 = sub_100794DEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100786B28(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB4B38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000226D4(a1, a1[3]);
  sub_100794DEC();
  sub_1009376F8();
  v9 = v3[1];
  *&v18 = *v3;
  *(&v18 + 1) = v9;
  v21 = 0;
  sub_100715738(v18, v9);
  sub_100768A18();
  sub_1009374F8();
  sub_1007156D8(v18, *(&v18 + 1));
  if (!v2)
  {
    v10 = v3[3];
    *&v18 = v3[2];
    *(&v18 + 1) = v10;
    v21 = 1;
    sub_100715738(v18, v10);
    sub_1009374F8();
    sub_1007156D8(v18, *(&v18 + 1));
    v11 = type metadata accessor for SenderKeyInfo(0);
    LOBYTE(v18) = 2;
    sub_100936038();
    sub_1007924D8(&qword_100CB3DA8, &type metadata accessor for Date);
    sub_1009374F8();
    v12 = v3 + *(v11 + 28);
    v13 = *v12;
    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    v18 = v13;
    v19 = v15;
    v20 = v14;
    v21 = 3;
    sub_100794E40();
    sub_1009374F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100786DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_100936038();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB4B58);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000226D4(a1, a1[3]);
  sub_100794DEC();
  v13 = v30;
  sub_1009376E8();
  if (v13)
  {
    return sub_100012970(a1);
  }

  v24 = v5;
  v30 = v10;
  v14 = v12;
  v15 = v27;
  v34 = 0;
  sub_100768AE4();
  v16 = v28;
  sub_100937498();
  *v14 = v31;
  v34 = 1;
  sub_100937498();
  *(v14 + 1) = v31;
  LOBYTE(v31) = 2;
  sub_1007924D8(&unk_100CBA670, &type metadata accessor for Date);
  v17 = v24;
  sub_100937498();
  v18 = v30;
  (*(v26 + 32))(&v14[*(v30 + 24)], v17, v15);
  v34 = 3;
  sub_100794E94();
  sub_100937498();
  (*(v29 + 8))(v9, v16);
  v19 = v32;
  v20 = v33;
  v21 = &v14[*(v18 + 28)];
  *v21 = v31;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  sub_1007927DC(v14, v25, type metadata accessor for SenderKeyInfo);
  sub_100012970(a1);
  return sub_100791FE8(v14, type metadata accessor for SenderKeyInfo);
}

Swift::Int sub_100787280()
{
  sub_100937668();
  sub_100935EB8();
  sub_100935EB8();
  sub_100936038();
  sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
  sub_100936AD8();
  sub_100936BC8();
  sub_100936BC8();
  return sub_1009376C8();
}

uint64_t sub_100787360()
{
  sub_100935EB8();
  sub_100935EB8();
  sub_100936038();
  sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
  sub_100936AD8();
  sub_100936BC8();

  return sub_100936BC8();
}

Swift::Int sub_100787438()
{
  sub_100937668();
  sub_100935EB8();
  sub_100935EB8();
  sub_100936038();
  sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
  sub_100936AD8();
  sub_100936BC8();
  sub_100936BC8();
  return sub_1009376C8();
}

uint64_t sub_10078751C()
{
  if (*v0)
  {
    return 0x7A696C6169726573;
  }

  else
  {
    return 0x6F666E4979656BLL;
  }
}

uint64_t sub_100787564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F666E4979656BLL && a2 == 0xE700000000000000;
  if (v6 || (sub_100937598() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7A696C6169726573 && a2 == 0xEF65746174536465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100937598();

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

uint64_t sub_100787654(uint64_t a1)
{
  v2 = sub_100794EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100787690(uint64_t a1)
{
  v2 = sub_100794EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007876CC(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB4B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000226D4(a1, a1[3]);
  sub_100794EE8();
  sub_1009376F8();
  LOBYTE(v13) = 0;
  type metadata accessor for SenderKeyInfo(0);
  sub_1007924D8(&qword_100CB4B18, type metadata accessor for SenderKeyInfo);
  sub_1009374F8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for SenderKeyAndState(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_100715738(v13, v10);
    sub_100768A18();
    sub_1009374F8();
    sub_1007156D8(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1007878AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB4B80);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SenderKeyAndState(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000226D4(a1, a1[3]);
  sub_100794EE8();
  sub_1009376E8();
  if (v2)
  {
    return sub_100012970(a1);
  }

  v12 = v17;
  v13 = v11;
  LOBYTE(v20) = 0;
  sub_1007924D8(&qword_100CB4AF0, type metadata accessor for SenderKeyInfo);
  v14 = v18;
  sub_100937498();
  sub_100792048(v19, v13, type metadata accessor for SenderKeyInfo);
  v21 = 1;
  sub_100768AE4();
  sub_100937498();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v20;
  sub_1007927DC(v13, v16, type metadata accessor for SenderKeyAndState);
  sub_100012970(a1);
  return sub_100791FE8(v13, type metadata accessor for SenderKeyAndState);
}

id sub_100787E2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_100787E68()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1 + 1);
  return sub_1009376C8();
}

Swift::Int sub_100787EE0()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1 + 1);
  return sub_1009376C8();
}

uint64_t sub_100787F24@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007950D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100787F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100795E98();
  v5 = sub_10074CC9C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

char *sub_100787FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&unk_100CB6030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_1007880C4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CB4F98);
  v10 = *(type metadata accessor for SenderKeyInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for SenderKeyInfo(0) - 8);
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

void *sub_10078829C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100706B30(&qword_100CB4FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&qword_100CB4FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1007883E4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100706B30(&qword_100CB4F98);
  v4 = *(type metadata accessor for SenderKeyInfo(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1007884E0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100706B30(&unk_100CBABF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100788564(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100706B30(&qword_100CB4A30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1007885EC(void *a1, void *a2)
{
  sub_100937668();
  v4 = [a1 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  v5 = [a2 prefixedURI];
  sub_100936B38();

  sub_100936BC8();

  v6 = sub_1009376C8();

  return sub_1007886E8(a1, a2, v6);
}

unint64_t sub_1007886E8(void *a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v32 = ~v4;
    do
    {
      v6 = *(v3 + 48) + 16 * v5;
      v7 = *(v6 + 8);
      v8 = *v6;
      v9 = v7;
      v10 = [v8 prefixedURI];
      v11 = sub_100936B38();
      v13 = v12;

      v14 = [a1 prefixedURI];
      v15 = sub_100936B38();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
      }

      else
      {
        v19 = sub_100937598();

        if ((v19 & 1) == 0)
        {

          goto LABEL_4;
        }
      }

      v20 = [v9 prefixedURI];
      v21 = sub_100936B38();
      v23 = v22;

      v24 = [v31 prefixedURI];
      v25 = sub_100936B38();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

        return v5;
      }

      v29 = sub_100937598();

      if (v29)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v32;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100788910(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100937158();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100788564(v2, 0);

    v1 = sub_10078FE38(&v5, v3 + 4, v2, v1);
    sub_100308C6C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_1007889C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB5028);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_100937028(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100788C30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&unk_100CB4FB0);
  v37 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v39 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v37 & 1) == 0)
      {
        v23 = v39;
        v24 = v22;
      }

      sub_100937668();
      v25 = [v39 prefixedURI];
      sub_100936B38();

      sub_100936BC8();

      v26 = [v22 prefixedURI];
      sub_100936B38();

      sub_100936BC8();

      result = sub_1009376C8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v5 = v36;
        v16 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v5 = v36;
      v16 = v39;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v12 = v38;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100788F74(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    v28 = v2;
    v29 = v4;
    do
    {
      v9 = *(v2 + 48) + 16 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = v8;
      sub_100937668();
      v13 = v10;
      v14 = v11;
      v15 = [v13 prefixedURI];
      sub_100936B38();

      sub_100936BC8();

      v16 = [v14 prefixedURI];
      sub_100936B38();

      sub_100936BC8();

      v17 = sub_1009376C8();

      v8 = v12;
      v18 = v17 & v7;
      if (v3 >= v12)
      {
        if (v18 < v12)
        {
          v2 = v28;
          v4 = v29;
        }

        else
        {
          v2 = v28;
          v4 = v29;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v28;
        v4 = v29;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 16 * v3);
          v21 = (v19 + 16 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
          }

          v22 = *(v2 + 56);
          v23 = (v22 + 8 * v3);
          v24 = (v22 + 8 * v6);
          if (v3 != v6 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }
}

id sub_1007891C8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1007417B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1007889C0(v13, a3 & 1);
      v8 = sub_1007417B0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100014170(0, &qword_100CBA2E0);
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1007894C8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

id sub_100789344(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1007885EC(a2, a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100788C30(v15, a4 & 1);
      v10 = sub_1007885EC(a2, a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_10078962C();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    *(v20[7] + 8 * v10) = a1;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  v22 = (v20[6] + 16 * v10);
  *v22 = a2;
  v22[1] = a3;
  *(v20[7] + 8 * v10) = a1;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;
  v25 = a2;

  return a3;
}

void *sub_1007894C8()
{
  v1 = v0;
  sub_100706B30(&qword_100CB5028);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_10078962C()
{
  v1 = v0;
  sub_100706B30(&unk_100CB4FB0);
  v2 = *v0;
  v3 = sub_100937408();
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
        v21 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v21;
        v20 = *(&v21 + 1);
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

size_t sub_1007897B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1007897D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007897D0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CB4F98);
  v10 = *(type metadata accessor for SenderKeyInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for SenderKeyInfo(0) - 8);
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

uint64_t sub_1007899A8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1009373F8();
LABEL_9:
  result = sub_100937278();
  *v1 = result;
  return result;
}

uint64_t sub_100789A48(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  sub_100937668();
  sub_100935EB8();
  v7 = sub_1009376C8();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_100715738(a2, a3);
    sub_10078AF00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_100715738(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_100715738(v18, v17);
      v32 = sub_100935BE8();
      if (v32)
      {
        v34 = sub_100935C18();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_100715738(v18, v17);
    v32 = sub_100935BE8();
    if (v32)
    {
      v33 = sub_100935C18();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_100935C08();
    a3 = v44;
    sub_10071C670(v32, a2, v44, v50);
    sub_1007156D8(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_100715738(v18, v17);
LABEL_60:
  sub_10071C670(v50, a2, a3, &v49);
  sub_1007156D8(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1007156D8(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_100715738(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_100789ED0(uint64_t a1, uint64_t *a2)
{
  v89 = a1;
  v4 = type metadata accessor for SenderKeyInfo(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v85 - v9);
  v88 = v2;
  v11 = *v2;
  sub_100937668();
  sub_100935EB8();
  sub_100935EB8();
  v12 = *(v4 + 24);
  sub_100936038();
  sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
  v98 = v12;
  v13 = a2;
  v14 = v11;
  sub_100936AD8();
  v99 = v4;
  v15 = (v13 + *(v4 + 28));
  v16 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v97 = *v15;
  v92 = v16;
  sub_100936BC8();
  v94 = v17;
  v91 = v18;
  sub_100936BC8();
  v19 = sub_1009376C8();
  v20 = -1 << *(v11 + 32);
  v21 = v19 & ~v20;
  v107 = v11 + 56;
  v22 = *(v11 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21;
  v87 = v10;
  if (v22)
  {
    v104 = 0;
    v105 = ~v20;
    v23 = v13[2];
    v24 = v13[3];
    v106 = *(v5 + 72);
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24 == 0xC000000000000000;
    }

    v26 = !v25;
    v103 = v26;
    v27 = v24 >> 62;
    v101 = v23;
    v28 = HIDWORD(v23) - v23;
    v29 = __OFSUB__(HIDWORD(v23), v23);
    v96 = v29;
    v95 = v28;
    v93 = v24;
    v102 = BYTE6(v24);
    v90 = v13;
    v100 = v11;
    while (1)
    {
      v30 = v106 * v21;
      sub_1007927DC(*(v14 + 48) + v106 * v21, v8, type metadata accessor for SenderKeyInfo);
      v31 = v8[2];
      v32 = v8[3];
      v33 = v32 >> 62;
      if (v32 >> 62 == 3)
      {
        break;
      }

      if (v33 > 1)
      {
        if (v33 != 2)
        {
          goto LABEL_36;
        }

        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        v40 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v40)
        {
          goto LABEL_125;
        }

        if (v27 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v33)
      {
        LODWORD(v37) = HIDWORD(v31) - v31;
        if (__OFSUB__(HIDWORD(v31), v31))
        {
          goto LABEL_124;
        }

        v37 = v37;
        if (v27 <= 1)
        {
LABEL_33:
          v41 = v102;
          if (v27)
          {
            v41 = v95;
            if (v96)
            {
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v37 = BYTE6(v32);
        if (v27 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v27 != 2)
      {
        if (v37)
        {
          goto LABEL_13;
        }

        goto LABEL_64;
      }

      v43 = *(v101 + 16);
      v42 = *(v101 + 24);
      v40 = __OFSUB__(v42, v43);
      v41 = v42 - v43;
      if (v40)
      {
        goto LABEL_123;
      }

LABEL_39:
      if (v37 != v41)
      {
        goto LABEL_13;
      }

      if (v37 >= 1)
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v44 = *(v31 + 16);
            v45 = *(v31 + 24);
            v46 = sub_100935BE8();
            if (v46)
            {
              v47 = v46;
              v48 = sub_100935C18();
              if (__OFSUB__(v44, v48))
              {
                goto LABEL_132;
              }

              v49 = v44 - v48 + v47;
              if (__OFSUB__(v45, v44))
              {
                goto LABEL_131;
              }
            }

            else
            {
              v49 = 0;
              if (__OFSUB__(v45, v44))
              {
                goto LABEL_131;
              }
            }

            sub_100935C08();
            v53 = v49;
LABEL_63:
            v55 = v104;
            sub_10071C670(v53, v101, v93, v109);
            v104 = v55;
            v13 = v90;
            v14 = v100;
            if ((v109[0] & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_64;
          }

          *&v109[6] = 0;
          *v109 = 0;
        }

        else
        {
          if (v33)
          {
            v50 = v31;
            if (v31 >> 32 < v31)
            {
              goto LABEL_130;
            }

            v51 = sub_100935BE8();
            if (v51)
            {
              v52 = sub_100935C18();
              if (__OFSUB__(v50, v52))
              {
                goto LABEL_133;
              }

              v51 += v50 - v52;
            }

            sub_100935C08();
            v53 = v51;
            goto LABEL_63;
          }

          *v109 = v8[2];
          *&v109[8] = v32;
          v109[10] = BYTE2(v32);
          v109[11] = BYTE3(v32);
          v109[12] = BYTE4(v32);
          v109[13] = BYTE5(v32);
        }

        v54 = v104;
        sub_10071C670(v109, v101, v93, v108);
        v104 = v54;
        v14 = v100;
        if (!v108[0])
        {
          goto LABEL_13;
        }
      }

LABEL_64:
      v56 = *v8;
      v57 = v8[1];
      v59 = *v13;
      v58 = v13[1];
      v60 = v57 >> 62;
      v61 = v58 >> 62;
      if (v57 >> 62 == 3)
      {
        v62 = 0;
        if (!v56 && v57 == 0xC000000000000000 && v58 >> 62 == 3)
        {
          v62 = 0;
          if (!v59 && v58 == 0xC000000000000000)
          {
            goto LABEL_114;
          }
        }

LABEL_80:
        if (v61 > 1)
        {
          goto LABEL_74;
        }

        goto LABEL_81;
      }

      if (v60 > 1)
      {
        if (v60 == 2)
        {
          v67 = *(v56 + 16);
          v66 = *(v56 + 24);
          v40 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          if (v40)
          {
            goto LABEL_128;
          }

          goto LABEL_80;
        }

        v62 = 0;
        if (v61 > 1)
        {
          goto LABEL_74;
        }
      }

      else if (v60)
      {
        LODWORD(v62) = HIDWORD(v56) - v56;
        if (__OFSUB__(HIDWORD(v56), v56))
        {
          goto LABEL_129;
        }

        v62 = v62;
        if (v61 > 1)
        {
LABEL_74:
          if (v61 != 2)
          {
            if (v62)
            {
              goto LABEL_13;
            }

            goto LABEL_114;
          }

          v64 = *(v59 + 16);
          v63 = *(v59 + 24);
          v40 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v40)
          {
            goto LABEL_126;
          }

          goto LABEL_83;
        }
      }

      else
      {
        v62 = BYTE6(v57);
        if (v61 > 1)
        {
          goto LABEL_74;
        }
      }

LABEL_81:
      if (!v61)
      {
        v65 = BYTE6(v58);
LABEL_83:
        if (v62 != v65)
        {
          goto LABEL_13;
        }

        goto LABEL_89;
      }

      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_127;
      }

      if (v62 != HIDWORD(v59) - v59)
      {
        goto LABEL_13;
      }

LABEL_89:
      if (v62 >= 1)
      {
        if (v60 > 1)
        {
          if (v60 != 2)
          {
            *&v109[6] = 0;
            *v109 = 0;
LABEL_110:
            v74 = v104;
            sub_10071C670(v109, v59, v58, v108);
            v104 = v74;
            v14 = v100;
            if (!v108[0])
            {
              goto LABEL_13;
            }

            goto LABEL_114;
          }

          v68 = *(v56 + 16);
          v86 = *(v56 + 24);
          v69 = sub_100935BE8();
          if (v69)
          {
            v70 = sub_100935C18();
            if (__OFSUB__(v68, v70))
            {
              goto LABEL_136;
            }

            v69 += v68 - v70;
          }

          if (__OFSUB__(v86, v68))
          {
            goto LABEL_135;
          }
        }

        else
        {
          if (!v60)
          {
            *v109 = *v8;
            *&v109[8] = v57;
            v109[10] = BYTE2(v57);
            v109[11] = BYTE3(v57);
            v109[12] = BYTE4(v57);
            v109[13] = BYTE5(v57);
            goto LABEL_110;
          }

          v71 = v56;
          if (v56 >> 32 < v56)
          {
            goto LABEL_134;
          }

          v72 = sub_100935BE8();
          if (v72)
          {
            v86 = v72;
            v73 = sub_100935C18();
            if (__OFSUB__(v71, v73))
            {
              goto LABEL_137;
            }

            v69 = v71 - v73 + v86;
          }

          else
          {
            v69 = 0;
          }
        }

        sub_100935C08();
        v75 = v104;
        sub_10071C670(v69, v59, v58, v109);
        v104 = v75;
        v13 = v90;
        v14 = v100;
        if ((v109[0] & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_114:
      v76 = v99;
      if (sub_100935FD8())
      {
        if (v77 = (v8 + *(v76 + 28)), v78 = v77[2], v79 = v77[3], *v77 == v97) && v77[1] == v92 || (sub_100937598())
        {
          if (v78 == v94 && v79 == v91 || (sub_100937598() & 1) != 0)
          {
            sub_100791FE8(v8, type metadata accessor for SenderKeyInfo);
            sub_100791FE8(v13, type metadata accessor for SenderKeyInfo);
            sub_1007927DC(*(v14 + 48) + v30, v89, type metadata accessor for SenderKeyInfo);
            return 0;
          }
        }
      }

LABEL_13:
      sub_100791FE8(v8, type metadata accessor for SenderKeyInfo);
      v21 = (v21 + 1) & v105;
      if (((*(v107 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    if (v31)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32 == 0xC000000000000000;
    }

    v36 = !v34 || v27 < 3;
    if (((v36 | v103) & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_36:
    v37 = 0;
    if (v27 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_122:
  v81 = v88;
  v82 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = v87;
  sub_1007927DC(v82, v87, type metadata accessor for SenderKeyInfo);
  *v109 = *v81;
  sub_10078B378(v84, v21, isUniquelyReferenced_nonNull_native);
  *v81 = *v109;
  sub_100792048(v82, v89, type metadata accessor for SenderKeyInfo);
  return 1;
}

uint64_t sub_10078A8F8()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB4FA0);
  result = sub_100937208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100937668();
      sub_100935EB8();
      result = sub_1009376C8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10078AB58()
{
  v1 = v0;
  v2 = type metadata accessor for SenderKeyInfo(0);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CBAD20);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v32 = *(v30 + 72);
      sub_100792048(v19 + v32 * (v16 | (v8 << 6)), v4, type metadata accessor for SenderKeyInfo);
      sub_100937668();
      sub_100935EB8();
      sub_100935EB8();
      sub_100936038();
      sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
      sub_100936AD8();
      sub_100936BC8();
      sub_100936BC8();
      result = sub_1009376C8();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100792048(v4, *(v7 + 48) + v15 * v32, type metadata accessor for SenderKeyInfo);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero(v9, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v28;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

Swift::Int sub_10078AF00(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10078A8F8();
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_10078BD64();
        goto LABEL_68;
      }

      sub_10078C0CC();
    }

    v10 = *v4;
    sub_100937668();
    sub_100935EB8();
    result = sub_1009376C8();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_100715738(v20, v19);
              v34 = sub_100935BE8();
              if (v34)
              {
                v35 = sub_100935C18();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_100715738(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_100715738(v20, v19);
              v34 = sub_100935BE8();
              if (v34)
              {
                v36 = sub_100935C18();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              sub_100935C08();
              v7 = v41;
              a2 = v42;
              sub_10071C670(v34, v41, v42, v50);
              result = sub_1007156D8(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_100715738(v20, v19);
            v13 = v46;
          }

          sub_10071C670(v50, v7, a2, &v49);
          result = sub_1007156D8(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = sub_1009375C8();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

uint64_t sub_10078B378(uint64_t *a1, unint64_t a2, char a3)
{
  v94 = type metadata accessor for SenderKeyInfo(0);
  v7 = *(v94 - 8);
  __chkstk_darwin(v94);
  v9 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v91 = v3;
  v90 = v7;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10078AB58();
    }

    else
    {
      if (v11 > v10)
      {
        sub_10078BEC0();
        goto LABEL_128;
      }

      sub_10078C308();
    }

    v12 = *v3;
    sub_100937668();
    sub_100935EB8();
    sub_100935EB8();
    v13 = v94;
    v14 = *(v94 + 24);
    sub_100936038();
    sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
    v92 = v14;
    v15 = v12;
    sub_100936AD8();
    v16 = (a1 + *(v13 + 28));
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v86 = *v16;
    v84 = v17;
    sub_100936BC8();
    v87 = v18;
    v83 = v19;
    sub_100936BC8();
    v20 = sub_1009376C8();
    v21 = -1 << *(v15 + 32);
    a2 = v20 & ~v21;
    v101 = v15 + 56;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v98 = 0;
      v99 = ~v21;
      v22 = a1[2];
      v23 = a1[3];
      v100 = *(v7 + 72);
      if (v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 == 0xC000000000000000;
      }

      v25 = !v24;
      v97 = v25;
      v26 = v23 >> 62;
      v95 = v22;
      v27 = HIDWORD(v22) - v22;
      v28 = __OFSUB__(HIDWORD(v22), v22);
      v89 = v28;
      v88 = v27;
      v85 = v23;
      v96 = BYTE6(v23);
      v82 = a1;
      v93 = v15;
      while (1)
      {
        sub_1007927DC(*(v15 + 48) + v100 * a2, v9, type metadata accessor for SenderKeyInfo);
        v29 = v9[2];
        v30 = v9[3];
        v31 = v30 >> 62;
        if (v30 >> 62 == 3)
        {
          break;
        }

        if (v31 > 1)
        {
          if (v31 != 2)
          {
            goto LABEL_43;
          }

          v37 = *(v29 + 16);
          v36 = *(v29 + 24);
          v38 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v38)
          {
            goto LABEL_133;
          }

          if (v26 <= 1)
          {
            goto LABEL_40;
          }
        }

        else if (v31)
        {
          LODWORD(v35) = HIDWORD(v29) - v29;
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            goto LABEL_132;
          }

          v35 = v35;
          if (v26 <= 1)
          {
LABEL_40:
            v39 = v96;
            if (v26)
            {
              v39 = v88;
              if (v89)
              {
                __break(1u);
LABEL_130:
                __break(1u);
                goto LABEL_131;
              }
            }

            goto LABEL_46;
          }
        }

        else
        {
          v35 = BYTE6(v30);
          if (v26 <= 1)
          {
            goto LABEL_40;
          }
        }

LABEL_44:
        if (v26 != 2)
        {
          if (v35)
          {
            goto LABEL_20;
          }

          goto LABEL_72;
        }

        v41 = *(v95 + 16);
        v40 = *(v95 + 24);
        v38 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v38)
        {
          goto LABEL_130;
        }

LABEL_46:
        if (v35 != v39)
        {
          goto LABEL_20;
        }

        if (v35 >= 1)
        {
          if (v31 > 1)
          {
            if (v31 != 2)
            {
              *&v103[6] = 0;
              *v103 = 0;
LABEL_67:
              v52 = v98;
              sub_10071C670(v103, v95, v85, v102);
              v98 = v52;
              v15 = v93;
              if (!v102[0])
              {
                goto LABEL_20;
              }

              goto LABEL_72;
            }

            v42 = *(v29 + 16);
            v43 = *(v29 + 24);
            v44 = sub_100935BE8();
            if (v44)
            {
              v45 = v44;
              v46 = sub_100935C18();
              if (__OFSUB__(v42, v46))
              {
                goto LABEL_140;
              }

              v47 = v42 - v46 + v45;
            }

            else
            {
              v47 = 0;
            }

            a1 = v82;
            if (__OFSUB__(v43, v42))
            {
              goto LABEL_139;
            }

            sub_100935C08();
            v53 = v98;
            sub_10071C670(v47, v95, v85, v103);
            v98 = v53;
            v15 = v93;
            v13 = v94;
            if ((v103[0] & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (!v31)
            {
              *v103 = v9[2];
              *&v103[8] = v30;
              v103[10] = BYTE2(v30);
              v103[11] = BYTE3(v30);
              v103[12] = BYTE4(v30);
              v103[13] = BYTE5(v30);
              goto LABEL_67;
            }

            v48 = v29;
            if (v29 >> 32 < v29)
            {
              goto LABEL_138;
            }

            v49 = sub_100935BE8();
            if (v49)
            {
              v50 = sub_100935C18();
              if (__OFSUB__(v48, v50))
              {
                goto LABEL_141;
              }

              v49 += v48 - v50;
            }

            v13 = v94;
            sub_100935C08();
            v51 = v98;
            sub_10071C670(v49, v95, v85, v103);
            v98 = v51;
            a1 = v82;
            v15 = v93;
            if ((v103[0] & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

LABEL_72:
        v54 = *v9;
        v55 = v9[1];
        v56 = *a1;
        v57 = a1[1];
        v58 = v55 >> 62;
        v59 = v57 >> 62;
        if (v55 >> 62 == 3)
        {
          v60 = 0;
          if (!v54 && v55 == 0xC000000000000000 && v57 >> 62 == 3)
          {
            v60 = 0;
            if (!v56 && v57 == 0xC000000000000000)
            {
              goto LABEL_121;
            }
          }

LABEL_88:
          if (v59 > 1)
          {
            goto LABEL_82;
          }

          goto LABEL_89;
        }

        if (v58 > 1)
        {
          if (v58 == 2)
          {
            v65 = *(v54 + 16);
            v64 = *(v54 + 24);
            v38 = __OFSUB__(v64, v65);
            v60 = v64 - v65;
            if (v38)
            {
              goto LABEL_136;
            }

            goto LABEL_88;
          }

          v60 = 0;
          if (v59 > 1)
          {
            goto LABEL_82;
          }
        }

        else if (v58)
        {
          LODWORD(v60) = HIDWORD(v54) - v54;
          if (__OFSUB__(HIDWORD(v54), v54))
          {
            goto LABEL_137;
          }

          v60 = v60;
          if (v59 > 1)
          {
LABEL_82:
            if (v59 != 2)
            {
              if (v60)
              {
                goto LABEL_20;
              }

              goto LABEL_121;
            }

            v62 = *(v56 + 16);
            v61 = *(v56 + 24);
            v38 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v38)
            {
              goto LABEL_135;
            }

            goto LABEL_91;
          }
        }

        else
        {
          v60 = BYTE6(v55);
          if (v59 > 1)
          {
            goto LABEL_82;
          }
        }

LABEL_89:
        if (!v59)
        {
          v63 = BYTE6(v57);
LABEL_91:
          if (v60 != v63)
          {
            goto LABEL_20;
          }

          goto LABEL_97;
        }

        if (__OFSUB__(HIDWORD(v56), v56))
        {
          goto LABEL_134;
        }

        if (v60 != HIDWORD(v56) - v56)
        {
          goto LABEL_20;
        }

LABEL_97:
        if (v60 >= 1)
        {
          if (v58 > 1)
          {
            if (v58 == 2)
            {
              v66 = *(v54 + 16);
              v67 = *(v54 + 24);
              v68 = sub_100935BE8();
              if (v68)
              {
                v69 = sub_100935C18();
                if (__OFSUB__(v66, v69))
                {
                  goto LABEL_144;
                }

                v68 += v66 - v69;
              }

              if (__OFSUB__(v67, v66))
              {
                goto LABEL_143;
              }

LABEL_117:
              sub_100935C08();
              v72 = v98;
              sub_10071C670(v68, v56, v57, v103);
              v98 = v72;
              a1 = v82;
              v13 = v94;
              v15 = v93;
              if ((v103[0] & 1) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_121;
            }

            *&v103[6] = 0;
            *v103 = 0;
          }

          else
          {
            if (v58)
            {
              v70 = v54;
              if (v54 >> 32 < v54)
              {
                goto LABEL_142;
              }

              v68 = sub_100935BE8();
              if (v68)
              {
                v71 = sub_100935C18();
                if (__OFSUB__(v70, v71))
                {
                  goto LABEL_145;
                }

                v68 += v70 - v71;
              }

              goto LABEL_117;
            }

            *v103 = *v9;
            *&v103[8] = v55;
            v103[10] = BYTE2(v55);
            v103[11] = BYTE3(v55);
            v103[12] = BYTE4(v55);
            v103[13] = BYTE5(v55);
          }

          v73 = v98;
          sub_10071C670(v103, v56, v57, v102);
          v98 = v73;
          v15 = v93;
          if (!v102[0])
          {
            goto LABEL_20;
          }
        }

LABEL_121:
        if (sub_100935FD8())
        {
          if (v74 = (v9 + *(v13 + 28)), v75 = v74[2], v76 = v74[3], *v74 == v86) && v74[1] == v84 || (sub_100937598())
          {
            if (v75 == v87 && v76 == v83 || (sub_100937598() & 1) != 0)
            {
              sub_100791FE8(v9, type metadata accessor for SenderKeyInfo);
              sub_1009375C8();
              __break(1u);
              goto LABEL_128;
            }
          }
        }

LABEL_20:
        sub_100791FE8(v9, type metadata accessor for SenderKeyInfo);
        a2 = (a2 + 1) & v99;
        if (((*(v101 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30 == 0xC000000000000000;
      }

      v34 = !v32 || v26 < 3;
      if (((v34 | v97) & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_43:
      v35 = 0;
      if (v26 <= 1)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }
  }

LABEL_128:
  v77 = *v91;
  *(*v91 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100792048(a1, *(v77 + 48) + *(v90 + 72) * a2, type metadata accessor for SenderKeyInfo);
  v79 = *(v77 + 16);
  v38 = __OFADD__(v79, 1);
  v80 = v79 + 1;
  if (v38)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
  }

  *(v77 + 16) = v80;
  return result;
}

void *sub_10078BD64()
{
  v1 = v0;
  sub_100706B30(&qword_100CB4FA0);
  v2 = *v0;
  v3 = sub_1009371F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100715738(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10078BEC0()
{
  v1 = v0;
  v2 = type metadata accessor for SenderKeyInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CBAD20);
  v6 = *v0;
  v7 = sub_1009371F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1007927DC(*(v6 + 48) + v21, v5, type metadata accessor for SenderKeyInfo);
        result = sub_100792048(v5, *(v8 + 48) + v21, type metadata accessor for SenderKeyInfo);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_10078C0CC()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB4FA0);
  result = sub_100937208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_100937668();
      sub_100715738(v17, v18);
      sub_100935EB8();
      result = sub_1009376C8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10078C308()
{
  v1 = v0;
  v2 = type metadata accessor for SenderKeyInfo(0);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CBAD20);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v28 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v31 = *(v29 + 72);
      sub_1007927DC(v19 + v31 * (v16 | (v8 << 6)), v4, type metadata accessor for SenderKeyInfo);
      sub_100937668();
      sub_100935EB8();
      sub_100935EB8();
      sub_100936038();
      sub_1007924D8(&qword_100CB4B30, &type metadata accessor for Date);
      sub_100936AD8();
      sub_100936BC8();
      sub_100936BC8();
      result = sub_1009376C8();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v5 = v28;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v5 = v28;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100792048(v4, *(v7 + 48) + v15 * v31, type metadata accessor for SenderKeyInfo);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}