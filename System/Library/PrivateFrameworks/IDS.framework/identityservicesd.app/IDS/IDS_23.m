void *sub_10070F500()
{
  v1 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_persistenceManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10070F54C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_persistenceManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10070F604()
{
  v1 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_rollIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10070F648(int a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_rollIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10070F6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v161 = *(v6 - 8);
  v162 = v6;
  v7 = __chkstk_darwin(v6);
  v157 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v159 = &v144 - v9;
  v10 = sub_100936038();
  v154 = *(v10 - 8);
  __chkstk_darwin(v10);
  v158 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100706B30(&qword_100CB2D98);
  __chkstk_darwin(v12 - 8);
  v14 = &v144 - v13;
  v15 = sub_1009360A8();
  v165 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v156 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v144 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v144 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v144 - v25;
  if (((*((swift_isaMask & *v2) + 0xB0))(v24) & 1) == 0)
  {
    v155 = a1;
    v41 = sub_1009364B8();
    v42 = sub_100936F18();
    v43 = os_log_type_enabled(v41, v42);
    v163 = v15;
    if (v43)
    {
      v44 = v26;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v166 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v166);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: Generating key with normal UUID KI", v45, 0xCu);
      sub_100012970(v46);

      v26 = v44;
    }

    v160 = a2;
    v164 = v26;
    goto LABEL_25;
  }

  if (a1)
  {
    v164 = v26;
    v27 = (swift_isaMask & *v2) + 440;
    v153 = *((swift_isaMask & *v2) + 0x1B8);
    v152 = v27;
    v28 = v153();
    v160 = a2;
    v163 = v15;
    if (v28 == 1)
    {
      v29 = (*((swift_isaMask & *v2) + 0x1A0))();
      if (v29)
      {
        v30 = v29;
        v31 = sub_1008C33CC(a1, 0);

        if ((v31 & 0x100000000) == 0)
        {
          result = (v31 + 1);
          if (v31 == -1)
          {
LABEL_54:
            __break(1u);
            return result;
          }

          v33 = *((swift_isaMask & *v3) + 0x1C0);
          v34 = v33(result);
          v35 = (v153)(v34);
          if (*sub_100748CC8() < v35)
          {
            v33(1);
          }

          v155 = v3;
          v36 = sub_1009364B8();
          v37 = sub_100936F18();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v151 = v10;
            v39 = v38;
            v150 = swift_slowAlloc();
            v166 = v150;
            *v39 = 136315650;
            *(v39 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v166);
            *(v39 + 12) = 1024;
            *(v39 + 14) = v31;
            *(v39 + 18) = 1024;
            v40 = v155;
            *(v39 + 20) = v153();

            _os_log_impl(&_mh_execute_header, v36, v37, "%s: Found cached rollIndex %u, continuing from %u", v39, 0x18u);
            sub_100012970(v150);

            v10 = v151;
          }

          else
          {
          }

          v15 = v163;
        }
      }
    }

    v53 = v153();
    v155 = a1;
    v54 = sub_100748CD4(v53, 0);
    v55 = v54;
    v150 = HIDWORD(v54);
    v151 = v56;
    sub_100749C7C(v54, v56, v14);
    v57 = v165;
    if ((*(v165 + 48))(v14, 1, v15) != 1)
    {
      (*(v57 + 32))(v23, v14, v15);
      v149 = *(v57 + 16);
      v149(v20, v23, v15);
      v119 = sub_1009364B8();
      v147 = sub_100936F18();
      if (os_log_type_enabled(v119, v147))
      {
        v120 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v168 = v146;
        *v120 = 136315650;
        *(v120 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v168);
        *(v120 + 12) = 2080;
        sub_100014A48(&qword_100CB2DA8, &type metadata accessor for UUID);
        v145 = v119;
        v121 = sub_100937548();
        v122 = v10;
        v124 = v123;
        v148 = *(v57 + 8);
        v148(v20, v163);
        v125 = sub_10001273C(v121, v124, &v168);
        v10 = v122;

        *(v120 + 14) = v125;
        *(v120 + 22) = 2080;
        v166 = __PAIR64__(v150, v55);
        v167 = v151;
        v126 = sub_100936B88();
        v128 = sub_10001273C(v126, v127, &v168);

        *(v120 + 24) = v128;
        v129 = v145;
        _os_log_impl(&_mh_execute_header, v145, v147, "%s: Generated keyIndex %s with [ShortKI info: %s]", v120, 0x20u);
        swift_arrayDestroy();

        v15 = v163;
      }

      else
      {

        v148 = *(v57 + 8);
        v148(v20, v15);
      }

      v133 = (v149)(v164, v23, v15);
      v134 = (*((swift_isaMask & *v3) + 0x1A0))(v133);
      v135 = v155;
      v136 = v153;
      if (v134)
      {
        v137 = v134;
        v138 = v153();
        v139 = v158;
        sub_100936028();
        sub_1008CAEB0(v135, v138, v139, 0, 0);

        v134 = (*(v154 + 8))(v139, v10);
      }

      v140 = (v136)(v134);
      if (v140 >= *sub_100748CC8())
      {
        (*((swift_isaMask & *v3) + 0x1C0))(1);
      }

      else
      {
        result = (*((swift_isaMask & *v3) + 0x1C8))(&v166);
        if (*v141 == -1)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        ++*v141;
        (result)(&v166, 0);
      }

      v148(v23, v15);
      v64 = 2;
LABEL_26:
      v65 = (v3 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_cryptoHandler);
      v66 = *(v3 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_cryptoHandler + 24);
      v67 = *(v3 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_cryptoHandler + 32);
      sub_1000226D4((v3 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_cryptoHandler), v66);
      v68 = (*(v67 + 40))(v66, v67);
      v70 = v69;
      LOBYTE(v67) = v71;
      v72 = v65[3];
      v73 = v65[4];
      sub_1000226D4(v65, v72);
      v74 = (*(v73 + 48))(v72, v73);
      v77 = v74;
      v78 = v75;
      v79 = v76;
      if (v67)
      {
        swift_errorRetain();
        v80 = sub_1009364B8();
        v81 = sub_100936EF8();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          *v82 = 136315394;
          *(v82 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v166);
          *(v82 + 12) = 2080;
          ErrorValue = swift_getErrorValue();
          v156 = v78;
          v159 = v77;
          __chkstk_darwin(ErrorValue);
          (*(v85 + 16))(&v144 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
          v86 = sub_100936B88();
          v88 = sub_10001273C(v86, v87, &v166);

          *(v82 + 14) = v88;
          _os_log_impl(&_mh_execute_header, v80, v81, "%s: error: %s", v82, 0x16u);
          swift_arrayDestroy();

          sub_1007156CC(v159, v156, v79 & 1);
          sub_1007156CC(v68, v70, 1);
          sub_1007156CC(v68, v70, 1);
LABEL_40:
          (*(v165 + 8))(v164, v163);
          return (*(v161 + 56))(v160, 1, 1, v162);
        }

        sub_1007156CC(v68, v70, 1);
        sub_1007156CC(v77, v78, v79 & 1);
        v98 = v68;
        v99 = v70;
        goto LABEL_39;
      }

      if (v76)
      {
        sub_10071572C(v74, v75, 1);
        sub_10071572C(v68, v70, 0);
        v80 = sub_1009364B8();
        v89 = sub_100936EF8();
        if (os_log_type_enabled(v80, v89))
        {
          v90 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          *v90 = 136315394;
          *(v90 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v166);
          *(v90 + 12) = 2080;
          v91 = swift_getErrorValue();
          __chkstk_darwin(v91);
          v159 = v77;
          (*(v93 + 16))(&v144 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
          v94 = sub_100936B88();
          v96 = sub_10001273C(v94, v95, &v166);

          *(v90 + 14) = v96;
          _os_log_impl(&_mh_execute_header, v80, v89, "%s: error: %s", v90, 0x16u);
          swift_arrayDestroy();

          sub_1007156CC(v68, v70, 0);
          v97 = v159;
          sub_1007156CC(v159, v78, 1);
          sub_1007156CC(v97, v78, 1);
          sub_1007156CC(v68, v70, 0);
          goto LABEL_40;
        }

        sub_1007156CC(v77, v78, 1);
        sub_1007156CC(v68, v70, 0);
        sub_1007156CC(v68, v70, 0);
        v98 = v77;
        v99 = v78;
LABEL_39:
        sub_1007156CC(v98, v99, 1);

        goto LABEL_40;
      }

      v100 = v75;
      v101 = v70;
      result = swift_beginAccess();
      if (dword_100CD3D70 != -1)
      {
        ++dword_100CD3D70;
        v102 = v156;
        (*(v165 + 16))(v156, v164, v163);
        sub_10071572C(v68, v101, 0);
        sub_10071572C(v77, v100, 0);
        sub_10071572C(v77, v100, 0);
        sub_10071572C(v68, v101, 0);
        v103 = v158;
        sub_100936028();
        v104 = *(v3 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_groupID);
        v105 = dword_100CD3D70;

        v143 = v155;
        v142 = v105;
        v107 = v159;
        v156 = v100;
        v155 = v101;
        sub_10074A4F8(1, v102, v77, v100, v68, v101, v103, v104, v159, v106, v142, 0, v64, v143, 0);
        v108 = v157;
        sub_100706EE8(v107, v157, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v109 = sub_1009364B8();
        v110 = sub_100936F18();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          *v111 = 136315394;
          *(v111 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v168);
          *(v111 + 12) = 2080;
          sub_100014A48(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v112 = sub_100937548();
          v113 = v77;
          v115 = v114;
          sub_100706FB8(v108, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v116 = sub_10001273C(v112, v115, &v168);

          *(v111 + 14) = v116;
          _os_log_impl(&_mh_execute_header, v109, v110, "%s: Created key %s", v111, 0x16u);
          swift_arrayDestroy();

          v107 = v159;

          v117 = v155;
          sub_1007156CC(v68, v155, 0);
          v118 = v156;
          sub_1007156CC(v113, v156, 0);
          sub_1007156CC(v113, v118, 0);
          sub_1007156CC(v68, v117, 0);
        }

        else
        {

          v130 = v155;
          sub_1007156CC(v68, v155, 0);
          v131 = v156;
          sub_1007156CC(v77, v156, 0);
          sub_1007156CC(v77, v131, 0);
          sub_1007156CC(v68, v130, 0);
          sub_100706FB8(v108, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        (*(v165 + 8))(v164, v163);
        v132 = v160;
        sub_100706F50(v107, v160, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        return (*(v161 + 56))(v132, 0, 1, v162);
      }

      __break(1u);
      goto LABEL_53;
    }

    sub_100013814(v14, &qword_100CB2D98);
    v58 = sub_1009364B8();
    v59 = sub_100936EF8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *v60 = 136315394;
      *(v60 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v168);
      *(v60 + 12) = 2080;
      v166 = __PAIR64__(v150, v55);
      v167 = v151;
      v61 = sub_100936B88();
      v63 = sub_10001273C(v61, v62, &v168);

      *(v60 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s: Failed to generate keyIndex with [ShortKI info: %s]", v60, 0x16u);
      swift_arrayDestroy();
    }

LABEL_25:
    sub_100936098();
    v64 = 0;
    goto LABEL_26;
  }

  v47 = sub_1009364B8();
  v48 = sub_100936F18();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v166 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFEC30, &v166);
    _os_log_impl(&_mh_execute_header, v47, v48, "%s: Generating key abort because we don't have a participant ID yet to form short MKI", v49, 0xCu);
    sub_100012970(v50);
  }

  v51 = v162;
  v52 = *(v161 + 56);

  return v52(a2, 1, 1, v51);
}

void *sub_100710DB4()
{
  v1 = sub_100706B30(&qword_100CB2AA0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v24 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v24 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v24 - v18;
  v25 = &_swiftEmptySetSingleton;
  (*((swift_isaMask & *v0) + 0x118))(v17);
  v20 = *(v8 + 48);
  if (v20(v6, 1, v7) == 1)
  {
    v21 = sub_100013814(v6, &qword_100CB2AA0);
  }

  else
  {
    sub_100706F50(v6, v19, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100706EE8(v19, v13, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_1007139D8(v16, v13);
    sub_100706FB8(v16, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v21 = sub_100706FB8(v19, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  (*((swift_isaMask & *v0) + 0x120))(v21);
  if (v20(v4, 1, v7) == 1)
  {
    sub_100013814(v4, &qword_100CB2AA0);
  }

  else
  {
    v22 = v24;
    sub_100706F50(v4, v24, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100706EE8(v22, v13, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_1007139D8(v16, v13);
    sub_100706FB8(v16, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100706FB8(v22, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  return v25;
}

uint64_t sub_100711360()
{
  v1 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x118))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100013814(v3, &qword_100CB2AA0);
    return 0;
  }

  else
  {
    sub_100706F50(v3, v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100749640();
    v11 = v10;
    sub_100706FB8(v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    return v11;
  }
}

uint64_t sub_100711530(uint64_t a1)
{
  v2 = sub_1009364F8();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100936528();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  sub_100706EE8(a1, &v33 - v17, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_100706FB8(v18, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  if (EnumCaseMultiPayload == 2)
  {
    v21 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
    sub_10070F6F8(*(a1 + *(v21 + 32)), v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100013814(v8, &qword_100CB2AA0);
    }

    else
    {
      sub_100706F50(v8, v12, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      (*(v10 + 56))(v16, 1, 1, v9);
      v22 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
      sub_100706EE8(v12, &v16[*(v22 + 20)], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100936028();
      swift_storeEnumTagMultiPayload();
      sub_100707590(v16, a1);
      v23 = a1 + *(v21 + 28);
      Strong = swift_unknownObjectWeakLoadStrong();
      v25 = *(v23 + 8);
      v26 = v39;
      v33 = *&v39[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q];
      v27 = swift_allocObject();
      v27[2] = Strong;
      v27[3] = v25;
      v27[4] = v26;
      aBlock[4] = sub_100715C20;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000154AC;
      aBlock[3] = &unk_100BE6408;
      v28 = _Block_copy(aBlock);
      v29 = Strong;
      v30 = v26;
      sub_100936508();
      v40 = &_swiftEmptyArrayStorage;
      sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100706B30(&unk_100CB3550);
      sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
      v31 = v35;
      v32 = v38;
      sub_1009370B8();
      sub_100936F88();
      _Block_release(v28);

      (*(v37 + 8))(v31, v32);
      (*(v34 + 8))(v5, v36);
      sub_100706FB8(v12, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    }

    return sub_10070AB28(a1);
  }

  return result;
}

void sub_100711ADC()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_100714B14();
  os_unfair_lock_unlock((v1 + v2));
}

void sub_100711C30()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_100714B2C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_100711CD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_100714CD4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_100711D74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v95 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v95);
  v96 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v9 - 8);
  v94 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  v11 = __chkstk_darwin(v103);
  v100 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v94 - v13;
  v107 = sub_100706B30(&qword_100CB2AA0);
  v14 = __chkstk_darwin(v107);
  v104 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v99 = &v94 - v17;
  __chkstk_darwin(v16);
  v98 = &v94 - v18;
  v101 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v19 = __chkstk_darwin(v101);
  v105 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v106 = &v94 - v22;
  v23 = __chkstk_darwin(v21);
  v102 = &v94 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v94 - v26;
  __chkstk_darwin(v25);
  v29 = &v94 - v28;
  sub_100706EE8(a4, &v94 - v28, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);

  v110 = a1;
  v30 = sub_1009364B8();
  v31 = sub_100936F18();

  v32 = os_log_type_enabled(v30, v31);
  v109 = a4;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = a2;
    *(v33 + 4) = sub_10001273C(a2, a3, &v111);
    *(v33 + 12) = 2080;
    v35 = sub_100707280();
    v37 = v36;
    sub_100706FB8(v29, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
    v38 = sub_10001273C(v35, v37, &v111);

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "%sKeyMaterialController (%s)", v33, 0x16u);
    swift_arrayDestroy();

    a4 = v109;
  }

  else
  {
    v34 = a2;

    sub_100706FB8(v29, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
  }

  sub_100706EE8(a4, v27, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);

  v39 = sub_1009364B8();
  v40 = sub_100936F18();

  v41 = os_log_type_enabled(v39, v40);
  v108 = v34;
  if (!v41)
  {

    sub_100706FB8(v27, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
    v49 = &off_1009AB000;
    goto LABEL_13;
  }

  v42 = swift_slowAlloc();
  v111 = swift_slowAlloc();
  *v42 = 136315394;
  *(v42 + 4) = sub_10001273C(v34, a3, &v111);
  *(v42 + 12) = 2080;
  v43 = v97;
  sub_100706EE8(v27, v97, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v45 = v98;
    if (EnumCaseMultiPayload != 1)
    {
      v51 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
      (*(*(v51 - 8) + 56))(v45, 1, 1, v51);
      goto LABEL_12;
    }

    v46 = v43;
    v47 = v96;
    sub_100706F50(v46, v96, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    sub_100706AC0(v47, v45);
    v48 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
  }

  else
  {
    v50 = v43;
    v47 = v94;
    sub_100706F50(v50, v94, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    sub_100706AC0(v47, v98);
    v48 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
  }

  sub_100706FB8(v47, v48);
LABEL_12:
  v49 = &off_1009AB000;
  v52 = sub_100936B88();
  v54 = v53;
  sub_100706FB8(v27, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
  v55 = sub_10001273C(v52, v54, &v111);

  *(v42 + 14) = v55;
  _os_log_impl(&_mh_execute_header, v39, v40, "%s    previous: %s", v42, 0x16u);
  swift_arrayDestroy();

LABEL_13:
  v56 = v102;
  v57 = v109;
  sub_100706EE8(v109, v102, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);

  v58 = sub_1009364B8();
  v59 = sub_100936F18();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = v56;
    v61 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v61 = *(v49 + 159);
    *(v61 + 4) = sub_10001273C(v108, a3, &v111);
    *(v61 + 12) = 2080;
    sub_100707018(v99);
    v62 = sub_100936B88();
    v64 = v63;
    sub_100706FB8(v60, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
    v65 = sub_10001273C(v62, v64, &v111);
    v57 = v109;

    *(v61 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v58, v59, "%s    current: %s", v61, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100706FB8(v56, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
  }

  v66 = v104;
  v67 = v106;
  sub_100706EE8(v57, v106, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);

  v68 = sub_1009364B8();
  v69 = sub_100936F18();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v70 = *(v49 + 159);
    *(v70 + 4) = sub_10001273C(v108, a3, &v111);
    *(v70 + 12) = 2080;
    v71 = v67;
    v72 = v100;
    sub_100706EE8(v71, v100, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73)
    {
      if (v73 == 1)
      {
        v74 = v72;
        v75 = v96;
        sub_100706F50(v74, v96, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
        sub_100706EE8(v75 + *(v95 + 24), v66, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100706FB8(v75, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
        v76 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
        (*(*(v76 - 8) + 56))(v66, 0, 1, v76);
      }

      else
      {
        v78 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
        (*(*(v78 - 8) + 56))(v66, 1, 1, v78);
      }
    }

    else
    {
      v77 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
      (*(*(v77 - 8) + 56))(v66, 1, 1, v77);
      sub_100706FB8(v72, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
    }

    v79 = sub_100936B88();
    v81 = v80;
    sub_100706FB8(v106, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
    v82 = sub_10001273C(v79, v81, &v111);

    *(v70 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v68, v69, "%s    next: %s", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100706FB8(v67, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
  }

  v83 = sub_1009364B8();
  v84 = sub_100936F18();

  v85 = os_log_type_enabled(v83, v84);
  v86 = v105;
  if (v85)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v111 = v88;
    *v87 = 136315138;
    *(v87 + 4) = sub_10001273C(v108, a3, &v111);
    _os_log_impl(&_mh_execute_header, v83, v84, "%s    ", v87, 0xCu);
    sub_100012970(v88);
  }

  sub_100706EE8(v57, v86, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);

  v89 = sub_1009364B8();
  v90 = sub_100936F18();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v111 = v92;
    *v91 = *(v49 + 159);
    *(v91 + 4) = sub_10001273C(v108, a3, &v111);
    *(v91 + 12) = 2048;
    v93 = *(v86 + *(v101 + 60));
    sub_100706FB8(v86, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
    *(v91 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v89, v90, "%s    generation: %llu", v91, 0x16u);
    sub_100012970(v92);
  }

  else
  {
    sub_100706FB8(v86, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
  }
}

void *sub_100712B84(void *result, int64_t a2, char a3, void *a4)
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
    sub_100706B30(&unk_100CB5010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&unk_100CB2D28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100712CB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100712D04(a1, a2);
  sub_100712E34(&off_100BE6318);
  return v3;
}

char *sub_100712D04(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100712F20(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100937288();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100936C18();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100712F20(v10, 0);
        result = sub_100937238();
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

uint64_t sub_100712E34(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100712F94(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100712F20(uint64_t a1, uint64_t a2)
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

  sub_100706B30(&qword_100CB34D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100712F94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&qword_100CB34D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100713088()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB2DB8);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100937028(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1007132B0()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CB2D90);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
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
      v19 = *(v30 + 72);
      sub_100706F50(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100014A48(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      result = sub_100936AC8();
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
      result = sub_100706F50(v4, *(v7 + 48) + v15 * v19, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      ++*(v7 + 16);
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
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

void sub_1007135E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1007137E4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100713754(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1007135E8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1007137E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100706B30(&qword_100CB2DB8);
  result = sub_100937228();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_100937028(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1007139D8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_100014A48(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v9 = sub_100936AC8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_100706EE8(*(v8 + 48) + v13 * v11, v7, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100014A48(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v14 = sub_100936B18();
      sub_100706FB8(v7, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100706FB8(a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100706EE8(*(v8 + 48) + v13 * v11, v21, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100706EE8(a2, v7, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v22 = *v15;
    sub_100713C90(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_100706F50(a2, v17, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    return 1;
  }
}

uint64_t sub_100713C90(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v8;
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1007132B0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100713F3C();
      goto LABEL_12;
    }

    sub_100714148();
  }

  v13 = *v3;
  sub_100014A48(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v14 = sub_100936AC8();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_100706EE8(*(v13 + 48) + v17 * a2, v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100014A48(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v18 = sub_100936B18();
      sub_100706FB8(v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100706F50(a1, *(v19 + 48) + *(v24 + 72) * a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void *sub_100713F3C()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB2D90);
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
        sub_100706EE8(*(v6 + 48) + v21, v5, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        result = sub_100706F50(v5, *(v8 + 48) + v21, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
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

uint64_t sub_100714148()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CB2D90);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_100706EE8(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100014A48(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      result = sub_100936AC8();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_100706F50(v4, *(v7 + 48) + v14 * v18, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

void sub_100714450(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1009373F8())
    {
LABEL_3:
      sub_100706B30(&qword_100CB2DB8);
      v3 = sub_100937228();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1009373F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100937268();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100937028(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100937038();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100937028(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100937038();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100714734(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(a1 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 28) + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_100714784()
{
  result = qword_100CB3510;
  if (!qword_100CB3510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB3510);
  }

  return result;
}

uint64_t sub_1007147D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100714850(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 49);
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  *(a1 + v8[7] + 8) = v3;
  result = swift_unknownObjectWeakAssign();
  v10 = a1 + v8[5];
  *v10 = v4;
  *(v10 + 8) = v5;
  *(v10 + 16) = v6;
  *(a1 + v8[6]) = v7;
  return result;
}

void sub_1007148F4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_100715858(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_10071499C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100714A5C()
{
  result = qword_100CB2AD0;
  if (!qword_100CB2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2AD0);
  }

  return result;
}

uint64_t sub_100714B2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l;
  v5 = sub_1009364B8();
  v6 = sub_100936F18();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10001273C(0x29287465736572, 0xE700000000000000, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: setting state to .noKey", v7, 0xCu);
    sub_100012970(v8);
  }

  sub_100706FB8(a1, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  swift_storeEnumTagMultiPayload();
  return (*((swift_isaMask & *v3) + 0x208))(&v3[v4], 0, 0xE000000000000000, a1);
}

unint64_t sub_100714D48()
{
  result = qword_100CB2AD8;
  if (!qword_100CB2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2AD8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for IDSGroupEncryptionKeyMaterialRollPolicy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSGroupEncryptionKeyMaterialRollPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSGroupEncryptionKeyMaterialRollPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100714E04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100714E20(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_100714E58()
{
  result = sub_1009364D8();
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

uint64_t getEnumTagSinglePayload for IDSGroupEncryptionKeyMaterialController.MembershipChangePolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSGroupEncryptionKeyMaterialController.MembershipChangePolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1007150D4()
{
  sub_10071550C(319, &qword_100CB2B60, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    if (v1 <= 0x3F)
    {
      sub_100936038();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007151B4()
{
  sub_10071550C(319, &qword_100CB2B60, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    if (v1 <= 0x3F)
    {
      sub_100936038();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1007152BC()
{
  result = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100715358()
{
  type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(319);
  if (v0 <= 0x3F)
  {
    sub_100715478();
    if (v1 <= 0x3F)
    {
      sub_10071550C(319, &qword_100CB2D18, &type metadata accessor for DispatchWorkItem);
      if (v2 <= 0x3F)
      {
        sub_100715560();
        if (v3 <= 0x3F)
        {
          sub_100936038();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100715478()
{
  if (!qword_100CB2D10)
  {
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_100014A48(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);
    v0 = sub_100936E68();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB2D10);
    }
  }
}

void sub_10071550C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100937058();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100715560()
{
  if (!qword_100CB2D20)
  {
    sub_1007147D0(&unk_100CB2D28);
    v0 = sub_100936D58();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB2D20);
    }
  }
}

uint64_t sub_1007155D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007155F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100CB3400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100CB3400);
    }
  }
}

uint64_t sub_1007156CC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1007156D8(a1, a2);
  }
}

uint64_t sub_1007156D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10071572C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_100715738(a1, a2);
  }
}

uint64_t sub_100715738(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100715790()
{
  if (v0[2])
  {
    v2 = v0[3];
    v1 = v0[4];
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(v1, ObjectType, v2);
  }
}

uint64_t sub_100715858(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  if (*(a1 + *(v5 + 48)) != 1)
  {
    return v4();
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = *(v6 + 52);
  v9 = *(a1 + v8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100712B84(0, v9[2] + 1, 1, v9);
    v9 = result;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    result = sub_100712B84((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_100715970;
  v13[5] = v7;
  *(a1 + v8) = v9;
  return result;
}

void sub_100715998()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_100715A3C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_100715A3C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v5 = *(v4 + 48);
  *(a1 + v5) = 0;
  result = (*((swift_isaMask & *v3) + 0x168))(a1);
  if ((*(a1 + v5) & 1) == 0)
  {
    v7 = *(v4 + 52);
    v8 = *(a1 + v7);
    *(a1 + v7) = &_swiftEmptyArrayStorage;
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);

        v11(v12);

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_100715B38(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 44);

  *(a1 + v4) = 0;
  return (*((swift_isaMask & *v3) + 0x168))(a1);
}

void type metadata accessor for SecKey()
{
  if (!qword_100CB9DB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100CB9DB0);
    }
  }
}

uint64_t sub_100715C98()
{
  v1._countAndFlagsBits = 0x7469746E6564493CLL;
  v1._object = 0xEB00000000203A79;
  sub_100936C08(v1);
  type metadata accessor for SecKey();
  sub_1009372E8();
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  sub_100936C08(v2);
  return 0;
}

__n128 initializeBufferWithCopyOfBuffer for IDSGroupEncryptionKeyMaterialShortKIInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100715D38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100715D80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100715DD4(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v12 = 0;
    swift_unknownObjectRetain();
    v5 = [v4 archivedDataWithRootObject:v3 requiringSecureCoding:a2 & 1 error:&v12];
    v6 = v12;
    if (v5)
    {
      v7 = sub_100935EA8();

      swift_unknownObjectRelease();
      return v7;
    }

    else
    {
      v8 = v6;
      sub_100935D78();

      swift_willThrow();
      sub_100706B30(&qword_100CB2DC0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1009AC700;
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_100937248(19);
      v14._object = 0x8000000100AFECB0;
      v14._countAndFlagsBits = 0xD000000000000011;
      sub_100936C08(v14);
      swift_getErrorValue();
      sub_100937578();
      v10 = v12;
      v11 = v13;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
      sub_100937648();

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100715F9C()
{
  result = qword_100CB2DC8;
  if (!qword_100CB2DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB2DC8);
  }

  return result;
}

uint64_t sub_100716008(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100706B30(&qword_100CB2E78);
  if (swift_dynamicCast())
  {
    sub_100308C84(__src, &v41);
    sub_1000226D4(&v41, v42);
    sub_100935C58();
    __src[0] = v40;
    sub_100012970(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100717CC8(__src);
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
    v4 = sub_100937288();
  }

  sub_10071707C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
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
  *&__src[0] = sub_100717BE0(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_100717144(sub_100717D30);
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
        sub_100935E48();
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

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10071795C(v16, v14, v15);
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
      v8 = sub_100936C18();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100936C48();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_100937288();
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

    v16 = sub_10071795C(v16, v14, v15);
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

    v16 = sub_100936C28();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_100935E58();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_100935E58();
    sub_10001C35C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10001C35C(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100715738(*&__src[0], *(&__src[0] + 1));

  sub_1007156D8(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100716518(uint64_t a1, unint64_t a2)
{
  v4 = sub_1009366B8();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1009365E8();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_100716008(a1, a2);
  v29 = xmmword_1009AC710;
  v22 = v11;
  v23 = v10;
  sub_100935EC8();
  sub_100935EC8();
  v13 = *(&v29 + 1);
  v12 = v29;
  sub_100717C80(&qword_100CB2DD0, &type metadata accessor for SHA256);
  sub_1009365D8();
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(v26, 0, 14);
      goto LABEL_9;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
  }

  else
  {
    if (!v14)
    {
      v26[0] = v12;
      LOWORD(v26[1]) = v13;
      BYTE2(v26[1]) = BYTE2(v13);
      BYTE3(v26[1]) = BYTE3(v13);
      BYTE4(v26[1]) = BYTE4(v13);
      BYTE5(v26[1]) = BYTE5(v13);
LABEL_9:
      sub_1009365B8();
      goto LABEL_10;
    }

    v15 = v12;
    v16 = v12 >> 32;
    if (v12 >> 32 < v12)
    {
      __break(1u);
    }
  }

  sub_100715738(v12, v13);
  sub_10071787C(v15, v16);
LABEL_10:
  sub_1007156D8(v12, v13);
  sub_1009365C8();
  (*(v21 + 8))(v6, v4);
  v27 = v7;
  v28 = sub_100717C80(&qword_100CB9DE0, &type metadata accessor for SHA256Digest);
  v17 = sub_100014250(v26);
  v18 = v24;
  (*(v24 + 16))(v17, v9, v7);
  sub_1000226D4(v26, v27);
  sub_100935C58();
  (*(v18 + 8))(v9, v7);
  v19 = v25;
  sub_100012970(v26);
  sub_1007156D8(v23, v22);
  sub_1007156D8(v29, *(&v29 + 1));
  return v19;
}

uint64_t sub_100716938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a3;
  v48[5] = a5;
  v47 = a4;
  v41 = a2;
  v10 = sub_100936958();
  v37[1] = swift_getWitnessTable();
  v38 = sub_1009372F8();
  v37[0] = *(v38 - 8);
  v11 = __chkstk_darwin(v38);
  v13 = v37 - v12;
  v39 = *(v10 - 8);
  __chkstk_darwin(v11);
  v44 = v37 - v14;
  v15 = sub_100935C38();
  v37[2] = *(v15 - 8);
  __chkstk_darwin(v15);
  v45 = a6;
  v42 = a7;
  v16 = sub_100936838();
  __chkstk_darwin(v16);
  v18 = v37 - v17;
  v40 = v19;
  (*(v19 + 16))(v37 - v17, a1, v16);
  v48[0] = sub_100936808();
  sub_100936D58();
  swift_getWitnessTable();
  LOBYTE(a1) = sub_100936EB8();

  if (a1)
  {
    sub_100937558();
    swift_allocObject();
    v21 = sub_100936D08();
    __chkstk_darwin(v21);
    v22 = v42;
    v37[-2] = v45;
    v37[-1] = v22;
    swift_getKeyPath();
    sub_100936948();
    sub_100717C80(&qword_100CB2DD8, &type metadata accessor for PersistentIdentifier);
    sub_100935C48();
    sub_100936818();
  }

  else
  {
    __chkstk_darwin(v20);
    v23 = v42;
    v37[-2] = v45;
    v37[-1] = v23;
    swift_getKeyPath();
    sub_100936948();
    sub_100717C80(&qword_100CB2DD8, &type metadata accessor for PersistentIdentifier);
    sub_100935C48();
    v24 = sub_1009367F8();
    sub_100936D48();
    v24(v48, 0);
  }

  sub_1009367E8();
  v25 = v44;
  v26 = v43;
  sub_100936718();
  if (v26)
  {
    return (*(v40 + 8))(v18, v16);
  }

  v43 = v18;
  v45 = v16;
  (*(v39 + 16))(v13, v25, v10);
  v28 = *(v38 + 36);
  sub_100936E88();
  sub_100936E98();
  if (*&v13[v28] == v48[0])
  {
LABEL_7:
    (*(v37[0] + 8))(v13, v38);
    if (sub_1009366F8())
    {
      sub_100936708();
    }

    v29 = v45;
    v30 = v40;
    v31 = v43;
    (*(v39 + 8))(v44, v10);
    return (*(v30 + 8))(v31, v29);
  }

  else
  {
    v32 = 0;
    while (1)
    {
      v33 = sub_100936EC8();
      v35 = *v34;
      swift_unknownObjectRetain();
      v33(v48, 0);
      sub_100936EA8();
      result = v47(v35);
      if (__OFADD__(v32++, 1))
      {
        break;
      }

      if (v32 >= v46)
      {
        if (sub_1009366F8())
        {
          sub_100936708();
        }

        v32 = 0;
      }

      swift_unknownObjectRelease();
      sub_100936E98();
      if (*&v13[v28] == v48[0])
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10071707C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100717A28(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_100935C28();
      swift_allocObject();
      v8 = sub_100935BD8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_100935E38();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_100717144(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1007156D8(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1007156D8(v6, v5);
    *v3 = xmmword_1009AC710;
    sub_1007156D8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_100935BE8() && __OFSUB__(v6, sub_100935C18()))
      {
LABEL_26:
        __break(1u);
      }

      sub_100935C28();
      swift_allocObject();
      v13 = sub_100935BC8();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1007175E8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1007156D8(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1009AC710;
    sub_1007156D8(0, 0xC000000000000000);
    sub_100935DE8();
    result = sub_1007175E8(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_1007174E8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100717A28(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100717AE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100717B5C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10071757C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_1007175E8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_100935BE8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_100935C18();
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

  v12 = sub_100935C08();
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

uint64_t sub_10071769C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1009366B8();
      sub_100717C80(&qword_100CB2DD0, &type metadata accessor for SHA256);
      return sub_1009365B8();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10071787C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10071787C(v4, v5);
  }

  sub_1009366B8();
  sub_100717C80(&qword_100CB2DD0, &type metadata accessor for SHA256);
  return sub_1009365B8();
}

uint64_t sub_10071787C(uint64_t a1, uint64_t a2)
{
  result = sub_100935BE8();
  if (!result || (result = sub_100935C18(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100935C08();
      sub_1009366B8();
      sub_100717C80(&qword_100CB2DD0, &type metadata accessor for SHA256);
      return sub_1009365B8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10071795C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100936C58();
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
    v5 = sub_100936C38();
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

uint64_t sub_1007179D8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_100937258();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
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

uint64_t sub_100717A28(_BYTE *__src, _BYTE *a2)
{
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100717AE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100935C28();
  swift_allocObject();
  result = sub_100935BD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100935E38();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100717B5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100935C28();
  swift_allocObject();
  result = sub_100935BD8();
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

uint64_t sub_100717BE0(uint64_t result)
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
      sub_100935C28();
      swift_allocObject();
      sub_100935BF8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100935E38();
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

uint64_t sub_100717C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100717CC8(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB2E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100717D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10071757C(sub_100717D98, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

id sub_100717EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionPreKeyDictionaryKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet()
{
  result = qword_100CBFA80;
  if (!qword_100CBFA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100717F70()
{
  v0 = sub_1009364D8();
  sub_10071A288(v0, qword_100CD3DB8);
  sub_100717FC0(v0, qword_100CD3DB8);
  return sub_1007C9A6C(2);
}

uint64_t sub_100717FC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100717FF8()
{
  sub_100937248(62);
  v1._object = 0x8000000100AFED20;
  v1._countAndFlagsBits = 0xD00000000000003BLL;
  sub_100936C08(v1);
  type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071A0B8(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v2._countAndFlagsBits = sub_100937548();
  sub_100936C08(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  sub_100936C08(v3);
  return 0;
}

void *sub_1007180E8()
{
  v1 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  v2 = __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v58 - v6;
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  v64 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v10 = __chkstk_darwin(v64);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v65 = &v58 - v13;
  v14 = sub_100936038();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = &_swiftEmptySetSingleton;
  v66 = v1;
  v67 = v0;
  v18 = v0 + *(v1 + 20);
  v19 = sub_10089CD2C();
  if (v20 >> 60 != 15)
  {
    v30 = v20;
    v60 = v7;
    v61 = v12;
    v59 = v9;
    v31 = v19;
    sub_100706B30(&unk_100CB36A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AC7A0;
    strcpy(v68, "public-prekey");
    HIWORD(v68[1]) = -4864;
    sub_1009371E8();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v31;
    *(inited + 80) = v30;
    strcpy(v68, "creation-date");
    HIWORD(v68[1]) = -4864;
    v62 = v31;
    sub_100715738(v31, v30);
    sub_1009371E8();
    sub_100936028();
    v63 = v30;
    sub_100935FC8();
    v34 = v33;
    (*(v15 + 8))(v17, v14);
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v34;
    strcpy(v68, "wrap-mode");
    WORD1(v68[1]) = 0;
    HIDWORD(v68[1]) = -385875968;
    sub_1009371E8();
    v35 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v36 = sub_10089CA40(*(v18 + *(v35 + 32)));
    *(inited + 240) = &type metadata for Int;
    *(inited + 216) = v36;
    sub_100719CE8(inited);
    swift_setDeallocating();
    sub_100706B30(&qword_100CB2E90);
    swift_arrayDestroy();
    isa = sub_100936A58().super.isa;

    v38 = JWEncodeDictionary();

    if (v38)
    {
      v39 = sub_100935EA8();
      v41 = v40;

      v42 = v61;
      *v61 = v39;
      *(v42 + 8) = v41;
      swift_storeEnumTagMultiPayload();
      v43 = v65;
      sub_100718E70(v65, v42);
      sub_10001C370(v62, v63);
      sub_100719E04(v43, type metadata accessor for IDSGroupEncryptionMaterialData);
      return v70;
    }

    v46 = v62;
    if (qword_100CBF870 != -1)
    {
      swift_once();
    }

    v47 = sub_1009364D8();
    sub_100717FC0(v47, qword_100CD3DB8);
    v48 = v59;
    sub_10071A050(v67, v59, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    v49 = sub_1009364B8();
    v50 = sub_100936F18();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v60;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69 = v54;
      *v53 = 136315138;
      sub_10071A050(v48, v52, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      v68[0] = 0;
      v68[1] = 0xE000000000000000;
      sub_100937248(62);
      v74._object = 0x8000000100AFED20;
      v74._countAndFlagsBits = 0xD00000000000003BLL;
      sub_100936C08(v74);
      sub_10071A0B8(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      v75._countAndFlagsBits = sub_100937548();
      sub_100936C08(v75);

      v76._countAndFlagsBits = 62;
      v76._object = 0xE100000000000000;
      sub_100936C08(v76);
      v55 = v68[0];
      v56 = v68[1];
      sub_100719E04(v52, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      sub_100719E04(v48, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      v57 = sub_10001273C(v55, v56, &v69);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s.materialData: could not encode dictionary", v53, 0xCu);
      sub_100012970(v54);

      sub_10001C370(v46, v63);

      return &_swiftEmptySetSingleton;
    }

    sub_10001C370(v46, v63);

    v45 = v48;
LABEL_14:
    sub_100719E04(v45, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    return &_swiftEmptySetSingleton;
  }

  if (qword_100CBF870 != -1)
  {
    swift_once();
  }

  v21 = sub_1009364D8();
  sub_100717FC0(v21, qword_100CD3DB8);
  sub_10071A050(v67, v4, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  v22 = sub_1009364B8();
  v23 = sub_100936F18();
  if (!os_log_type_enabled(v22, v23))
  {

    v45 = v4;
    goto LABEL_14;
  }

  v24 = v7;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v69 = v26;
  *v25 = 136315138;
  sub_10071A050(v4, v24, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_100937248(62);
  v71._object = 0x8000000100AFED20;
  v71._countAndFlagsBits = 0xD00000000000003BLL;
  sub_100936C08(v71);
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071A0B8(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v72._countAndFlagsBits = sub_100937548();
  sub_100936C08(v72);

  v73._countAndFlagsBits = 62;
  v73._object = 0xE100000000000000;
  sub_100936C08(v73);
  v27 = v68[0];
  v28 = v68[1];
  sub_100719E04(v24, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  sub_100719E04(v4, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  v29 = sub_10001273C(v27, v28, &v69);

  *(v25 + 4) = v29;
  _os_log_impl(&_mh_execute_header, v22, v23, "%s.materialData: no public identity data", v25, 0xCu);
  sub_100012970(v26);

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1007189F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 3;
  v4 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  return sub_10071A100(a1, a2 + *(v4 + 20), type metadata accessor for IDSGroupEncryptionPublicIdentity);
}

uint64_t sub_100718A58()
{
  sub_100937248(62);
  v1._object = 0x8000000100AFED20;
  v1._countAndFlagsBits = 0xD00000000000003BLL;
  sub_100936C08(v1);
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071A0B8(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v2._countAndFlagsBits = sub_100937548();
  sub_100936C08(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  sub_100936C08(v3);
  return 0;
}

Swift::Int sub_100718B44()
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071A0B8(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_100718C10()
{
  sub_100719EB8();
  sub_100936AD8();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071A0B8(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  return sub_100936AD8();
}

Swift::Int sub_100718CCC()
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071A0B8(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_100718D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100719E64();
  if (sub_100936B18())
  {
    v6 = sub_10089CB54(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_100718E2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009371C8(*(v2 + 40));

  return sub_100719C20(a1, v4);
}

uint64_t sub_100718E70(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_10071A0B8(&qword_100CB2F68, type metadata accessor for IDSGroupEncryptionMaterialData);
  v9 = sub_100936AC8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_10071A050(*(v8 + 48) + v13 * v11, v7, type metadata accessor for IDSGroupEncryptionMaterialData);
      sub_10071A0B8(&qword_100CB2F70, type metadata accessor for IDSGroupEncryptionMaterialData);
      v14 = sub_100936B18();
      sub_100719E04(v7, type metadata accessor for IDSGroupEncryptionMaterialData);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100719E04(a2, type metadata accessor for IDSGroupEncryptionMaterialData);
    sub_10071A050(*(v8 + 48) + v13 * v11, v21, type metadata accessor for IDSGroupEncryptionMaterialData);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10071A050(a2, v7, type metadata accessor for IDSGroupEncryptionMaterialData);
    v22 = *v15;
    sub_100719460(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_10071A100(a2, v17, type metadata accessor for IDSGroupEncryptionMaterialData);
    return 1;
  }
}

uint64_t sub_100719128()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CB2F78);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
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
      v19 = *(v30 + 72);
      sub_10071A100(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for IDSGroupEncryptionMaterialData);
      sub_10071A0B8(&qword_100CB2F68, type metadata accessor for IDSGroupEncryptionMaterialData);
      result = sub_100936AC8();
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
      result = sub_10071A100(v4, *(v7 + 48) + v15 * v19, type metadata accessor for IDSGroupEncryptionMaterialData);
      ++*(v7 + 16);
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
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100719460(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v8;
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100719128();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10071970C();
      goto LABEL_12;
    }

    sub_100719918();
  }

  v13 = *v3;
  sub_10071A0B8(&qword_100CB2F68, type metadata accessor for IDSGroupEncryptionMaterialData);
  v14 = sub_100936AC8();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_10071A050(*(v13 + 48) + v17 * a2, v10, type metadata accessor for IDSGroupEncryptionMaterialData);
      sub_10071A0B8(&qword_100CB2F70, type metadata accessor for IDSGroupEncryptionMaterialData);
      v18 = sub_100936B18();
      sub_100719E04(v10, type metadata accessor for IDSGroupEncryptionMaterialData);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10071A100(a1, *(v19 + 48) + *(v24 + 72) * a2, type metadata accessor for IDSGroupEncryptionMaterialData);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void *sub_10071970C()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB2F78);
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
        sub_10071A050(*(v6 + 48) + v21, v5, type metadata accessor for IDSGroupEncryptionMaterialData);
        result = sub_10071A100(v5, *(v8 + 48) + v21, type metadata accessor for IDSGroupEncryptionMaterialData);
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

uint64_t sub_100719918()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CB2F78);
  result = sub_100937208();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_10071A050(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for IDSGroupEncryptionMaterialData);
      sub_10071A0B8(&qword_100CB2F68, type metadata accessor for IDSGroupEncryptionMaterialData);
      result = sub_100936AC8();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_10071A100(v4, *(v7 + 48) + v14 * v18, type metadata accessor for IDSGroupEncryptionMaterialData);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

unint64_t sub_100719C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10071A1D8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1009371D8();
      sub_10071A234(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100719CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB2F80);
    v3 = sub_100937438();
    v4 = a1 + 32;

    while (1)
    {
      sub_10071A168(v4, v13);
      result = sub_100718E2C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100308C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100719E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100719E64()
{
  result = qword_100CB2E98;
  if (!qword_100CB2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2E98);
  }

  return result;
}

unint64_t sub_100719EB8()
{
  result = qword_100CB2EA0;
  if (!qword_100CB2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2EA0);
  }

  return result;
}

uint64_t sub_100719F0C(uint64_t a1)
{
  result = sub_10071A0B8(&qword_100CB2EB0, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100719FD4()
{
  result = type metadata accessor for IDSGroupEncryptionPublicIdentity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10071A050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10071A0B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10071A100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10071A168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10071A288(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10071A2FC()
{
  v1 = OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_kind;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10071A340(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_kind;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t sub_10071A474()
{
  v1 = v0;
  BYTE8(v7) = 0;
  sub_100937248(19);
  v8._countAndFlagsBits = 0x207265626D654D3CLL;
  v8._object = 0xE800000000000000;
  sub_100936C08(v8);
  v2 = [*(v0 + OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri) description];
  v3 = sub_100936B38();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_100936C08(v9);

  v10._countAndFlagsBits = 0x3A646E696B20;
  v10._object = 0xE600000000000000;
  sub_100936C08(v10);
  *&v7 = (*((swift_isaMask & *v1) + 0x60))() & 1;
  sub_1009372E8();
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  sub_100936C08(v11);
  return *(&v7 + 1);
}

uint64_t sub_10071A5B8(uint64_t a1)
{
  sub_10071A680(a1, v5);
  if (!v6)
  {
    sub_100013814(v5, &qword_100CB4A90);
    goto LABEL_5;
  }

  type metadata accessor for IDSGroupEncryptionControllerMember();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  sub_10071A714();
  v1 = *&v4[OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri];
  v2 = sub_100937038();

  return v2 & 1;
}

uint64_t sub_10071A680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB4A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10071A714()
{
  result = qword_100CB4A70;
  if (!qword_100CB4A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB4A70);
  }

  return result;
}

id sub_10071A7E8(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_kind;
  v5[OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_kind] = 1;
  *&v5[OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri] = a1;
  swift_beginAccess();
  v5[v6] = a2 & 1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t (*sub_10071A9F8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*((swift_isaMask & *v1) + 0x60))() & 1;
  return sub_10071AA74;
}

void sub_10071AACC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = v3;

  oslog = sub_1009364B8();
  v7 = sub_100936F18();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10001273C(a2, a3, &v15);
    *(v8 + 12) = 2112;
    v10 = *(v6 + OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri);
    *(v8 + 14) = v10;
    *v9 = v10;
    *(v8 + 22) = 2080;
    (*((swift_isaMask & *v6) + 0x60))(v10);
    v11 = sub_100936B88();
    v13 = sub_10001273C(v11, v12, &v15);

    *(v8 + 24) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v7, "%sMember: %@; kind=%s", v8, 0x20u);
    sub_100013814(v9, &qword_100CB36B0);

    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_10071AD28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionControllerMember();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10071ADC4()
{
  result = qword_100CB2F98;
  if (!qword_100CB2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2F98);
  }

  return result;
}

uint64_t type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet()
{
  result = qword_100CBFE20;
  if (!qword_100CBFE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10071AE84()
{
  v0 = sub_1009364D8();
  sub_10071A288(v0, qword_100CD3DD0);
  sub_100717FC0(v0, qword_100CD3DD0);
  return sub_1007C9A6C(2);
}

uint64_t sub_10071AED4()
{
  sub_1009376D8();
  sub_100719EB8();
  sub_100936AD8();
  sub_100935EB8();
  v1 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071D050(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v0 + *(v1 + 28)));
  sub_1009360A8();
  sub_10071D050(&qword_100CB34E0, &type metadata accessor for UUID);
  sub_100936AD8();
  sub_1009376B8();
  sub_100937248(76);
  v3._object = 0x8000000100AFEEF0;
  v3._countAndFlagsBits = 0xD000000000000010;
  sub_100936C08(v3);
  v4._countAndFlagsBits = sub_100937548();
  sub_100936C08(v4);

  v5._countAndFlagsBits = 0xD000000000000012;
  v5._object = 0x8000000100AFEF10;
  sub_100936C08(v5);
  v6._countAndFlagsBits = sub_100937548();
  sub_100936C08(v6);

  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x8000000100AFEF30;
  sub_100936C08(v7);
  sub_10071D050(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v8._countAndFlagsBits = sub_100937548();
  sub_100936C08(v8);

  v9._countAndFlagsBits = 0x3A79656B2029;
  v9._object = 0xE600000000000000;
  sub_100936C08(v9);
  v10._countAndFlagsBits = sub_100936B88();
  sub_100936C08(v10);

  v11._countAndFlagsBits = 0x3A6174616420;
  v11._object = 0xE600000000000000;
  sub_100936C08(v11);
  v12._countAndFlagsBits = sub_100935E08();
  sub_100936C08(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  sub_100936C08(v13);
  return 0;
}

id sub_10071B1EC()
{
  if (*(v0 + 4) == 2)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  v3 = v0 + *(v2 + 24);
  v4 = *&v3[*(type metadata accessor for IDSGroupEncryptionPublicIdentity(0) + 28)];
  v5 = *(v0 + *(v2 + 28));
  v6 = objc_allocWithZone(IDSServerDesiredEncryptedDataSet);
  isa = sub_100935E78().super.isa;
  v8 = [v6 initWithEncryptedData:isa type:v1 forPublicIdentity:v4 forParticipantID:v5];

  return v8;
}

void *sub_10071B2A4(void *a1)
{
  v2 = v1;
  v69 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  v4 = __chkstk_darwin(v69);
  v71 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v74 = &v67[-v7];
  v8 = __chkstk_darwin(v6);
  v73 = &v67[-v9];
  __chkstk_darwin(v8);
  v72 = &v67[-v10];
  v70 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v11 = __chkstk_darwin(v70);
  v75 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v67[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v67[-v17];
  __chkstk_darwin(v16);
  v20 = &v67[-v19];
  v21 = sub_100706B30(&qword_100CB2FC8);
  v22 = __chkstk_darwin(v21);
  v24 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v26 = &v67[-v25];
  v79 = &_swiftEmptySetSingleton;
  sub_10071BB24(a1, &v67[-v25]);
  v76 = v26;
  sub_100012D50(v26, v24, &qword_100CB2FC8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10071CD28(v24, v20, type metadata accessor for IDSGroupEncryptionMaterialData);
    sub_10071C5A8(v20, v15, type metadata accessor for IDSGroupEncryptionMaterialData);
    sub_100718E70(v18, v15);
    sub_10071C610(v18, type metadata accessor for IDSGroupEncryptionMaterialData);
    if (qword_100CBFB90 != -1)
    {
      swift_once();
    }

    v41 = sub_1009364D8();
    sub_100717FC0(v41, qword_100CD3DD0);
    v42 = v72;
    sub_10071C5A8(v2, v72, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v43 = v73;
    sub_10071C5A8(v2, v73, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v44 = v74;
    sub_10071C5A8(v2, v74, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v45 = v75;
    sub_10071C5A8(v20, v75, type metadata accessor for IDSGroupEncryptionMaterialData);
    v46 = sub_1009364B8();
    v47 = sub_100936ED8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v78 = v71;
      *v48 = 136315906;
      v49 = v42[4];
      LODWORD(v77) = *v42;
      BYTE4(v77) = v49;
      v50 = sub_100936B88();
      v51 = v42;
      v53 = v52;
      v68 = v47;
      sub_10071C610(v51, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
      v54 = sub_10001273C(v50, v53, &v78);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2048;
      v55 = *&v43[*(v69 + 28)];
      sub_10071C610(v43, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
      *(v48 + 14) = v55;
      *(v48 + 22) = 2080;
      type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
      sub_10071D050(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      v56 = sub_100937548();
      v58 = v57;
      sub_10071C610(v44, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
      v59 = sub_10001273C(v56, v58, &v78);

      *(v48 + 24) = v59;
      *(v48 + 32) = 2080;
      sub_10071C5A8(v45, v18, type metadata accessor for IDSGroupEncryptionMaterialData);
      v60 = sub_100936B88();
      v62 = v61;
      sub_10071C610(v45, type metadata accessor for IDSGroupEncryptionMaterialData);
      v63 = sub_10001273C(v60, v62, &v78);

      *(v48 + 34) = v63;
      _os_log_impl(&_mh_execute_header, v46, v68, "materialData: encrypted kv %s for participantID: %llu; for public identity: %s, data: %s", v48, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_10071C610(v43, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);

      sub_10071C610(v45, type metadata accessor for IDSGroupEncryptionMaterialData);
      sub_10071C610(v44, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
      sub_10071C610(v42, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    }

    v64 = v20;
    v65 = type metadata accessor for IDSGroupEncryptionMaterialData;
    goto LABEL_13;
  }

  v27 = *v24;
  if (qword_100CBFB90 != -1)
  {
    swift_once();
  }

  v28 = sub_1009364D8();
  sub_100717FC0(v28, qword_100CD3DD0);
  v29 = v71;
  sub_10071C5A8(v2, v71, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  sub_10071C084(v27);
  v30 = sub_1009364B8();
  v31 = sub_100936EF8();
  sub_10071C094(v27);
  if (!os_log_type_enabled(v30, v31))
  {

    sub_10071C094(v27);
    v65 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet;
    v64 = v29;
LABEL_13:
    sub_10071C610(v64, v65);
    goto LABEL_14;
  }

  v32 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  *v32 = 136315394;
  v33 = v29[4];
  LODWORD(v77) = *v29;
  BYTE4(v77) = v33;
  v34 = sub_100936B88();
  v36 = v35;
  sub_10071C610(v29, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  v37 = sub_10001273C(v34, v36, &v78);

  *(v32 + 4) = v37;
  *(v32 + 12) = 2080;
  v77 = v27;
  sub_10071C084(v27);
  v38 = sub_100936B88();
  v40 = sub_10001273C(v38, v39, &v78);

  *(v32 + 14) = v40;
  _os_log_impl(&_mh_execute_header, v30, v31, "materialData: could not get material data for material %s: %s", v32, 0x16u);
  swift_arrayDestroy();

  sub_10071C094(v27);
LABEL_14:
  sub_10071C0A4(v76);
  return v79;
}

void sub_10071BB24(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v5 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CBFB90 != -1)
  {
    swift_once();
  }

  v8 = sub_1009364D8();
  sub_100717FC0(v8, qword_100CD3DD0);
  sub_10071C5A8(v2, v7, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  v9 = sub_1009364B8();
  v10 = sub_100936F18();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v40 = a2;
    v12 = v11;
    v42 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10001273C(0xD000000000000022, 0x8000000100AFEF50, &v42);
    *(v12 + 12) = 2080;
    type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    sub_10071D050(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v13 = sub_100937548();
    v15 = v14;
    sub_10071C610(v7, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v16 = sub_10001273C(v13, v15, &v42);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: encrypting for %s", v12, 0x16u);
    swift_arrayDestroy();

    a2 = v40;
  }

  else
  {

    sub_10071C610(v7, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  }

  v17 = v41[3];
  v18 = v41[4];
  sub_1000226D4(v41, v17);
  v19 = (*(v18 + 24))(*(v3 + 8), *(v3 + 16), v3 + v5[6], v17, v18);
  v21 = v19;
  if (v22)
  {
    *a2 = v19;
LABEL_13:
    sub_100706B30(&qword_100CB2FC8);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v23 = v20;
  if (*(v3 + 4) == 2)
  {
    v24 = *v3;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_100706B30(&qword_100CB2FD0);
  v26 = *(v25 + 48);
  *a2 = v24;
  v27 = v5[8];
  v28 = sub_1009360A8();
  (*(*(v28 - 8) + 16))(a2 + v26, v3 + v27, v28);
  sub_100706B30(&unk_100CB36A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC7A0;
  v42 = sub_100936B38();
  v43 = v30;
  sub_1009371E8();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v21;
  *(inited + 80) = v23;
  v42 = sub_100936B38();
  v43 = v31;
  sub_100715738(v21, v23);
  sub_1009371E8();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 1;
  v42 = sub_100936B38();
  v43 = v32;
  sub_1009371E8();
  v33 = *(v3 + v5[7]);
  *(inited + 240) = &type metadata for UInt64;
  *(inited + 216) = v33;
  sub_100719CE8(inited);
  swift_setDeallocating();
  sub_100706B30(&qword_100CB2E90);
  swift_arrayDestroy();
  isa = sub_100936A58().super.isa;

  v35 = JWEncodeDictionary();

  if (v35)
  {
    v36 = (a2 + *(v25 + 64));
    v37 = sub_100935EA8();
    v39 = v38;

    sub_1007156CC(v21, v23, 0);
    *v36 = v37;
    v36[1] = v39;
    type metadata accessor for IDSGroupEncryptionMaterialData();
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  __break(1u);
}

unint64_t sub_10071C084(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_10071C094(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10071C0A4(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB2FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10071C10C()
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  sub_100935EB8();
  v1 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071D050(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v0 + *(v1 + 28)));
  sub_1009360A8();
  sub_10071D050(&qword_100CB34E0, &type metadata accessor for UUID);
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_10071C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 4) = BYTE4(a1);
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  v11 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  sub_10071CD28(a4, a7 + v11[6], type metadata accessor for IDSGroupEncryptionPublicIdentity);
  *(a7 + v11[7]) = a5;
  v12 = v11[8];
  v13 = sub_1009360A8();
  v14 = *(*(v13 - 8) + 32);

  return v14(a7 + v12, a6, v13);
}

uint64_t sub_10071C330(uint64_t a1, uint64_t a2)
{
  sub_100719EB8();
  sub_100936AD8();
  sub_100935EB8();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071D050(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v2 + *(a2 + 28)));
  sub_1009360A8();
  sub_10071D050(&qword_100CB34E0, &type metadata accessor for UUID);
  return sub_100936AD8();
}

Swift::Int sub_10071C468(uint64_t a1, uint64_t a2)
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  sub_100935EB8();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10071D050(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v2 + *(a2 + 28)));
  sub_1009360A8();
  sub_10071D050(&qword_100CB34E0, &type metadata accessor for UUID);
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_10071C5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10071C610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10071C670@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
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
    v10 = sub_100935BE8();
    if (v10)
    {
      v11 = sub_100935C18();
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
      result = sub_100935C08();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_100935BE8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100935C18();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100935C08();
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

uint64_t sub_10071C8A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10071CA30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1007156D8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10071C670(v13, a3, a4, &v12);
  v10 = v4;
  sub_1007156D8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10071CA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100935BE8();
  v11 = result;
  if (result)
  {
    result = sub_100935C18();
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

  sub_100935C08();
  sub_10071C670(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10071CAE8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100715738(a3, a4);
          return sub_10071C8A0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10071CC50(uint64_t a1, uint64_t a2)
{
  sub_100719E64();
  if (sub_100936B18() & 1) != 0 && (sub_10071CAE8(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) != 0 && (v4 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet(), (sub_10089CB54(a1 + *(v4 + 24), a2 + *(v4 + 24))) && *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
  {
    v5 = sub_100936068();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10071CD28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10071CD90(uint64_t a1)
{
  result = sub_10071D050(&qword_100CB2FD8, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10071CE58()
{
  result = type metadata accessor for IDSGroupEncryptionPublicIdentity(319);
  if (v1 <= 0x3F)
  {
    result = sub_1009360A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10071CEFC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10071CF20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10071CF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10071CFD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void type metadata accessor for IDSQRProtoMaterialInfo_MaterialType()
{
  if (!qword_100CB3078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100CB3078);
    }
  }
}

uint64_t sub_10071D050(unint64_t *a1, void (*a2)(uint64_t))
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

Class sub_10071D0B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  sub_100715738(*v3, v5);
  v6.super.isa = sub_100935E78().super.isa;
  sub_1007156D8(v4, v5);

  return v6.super.isa;
}

id sub_10071D11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_serverSecret];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_clientSecret];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_counters] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, "init");
}

unint64_t *sub_10071D1D0(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10071DE64(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_100935BE8();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_100935C18();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_100935BE8();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_100935C18();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100706B30(&unk_100CB31D0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1009AC700;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_100936B58();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10071DE64((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_10071D564()
{
  v1 = v0;
  sub_100937248(81);
  v9._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x8000000100AFEF80;
  sub_100936C08(v9);
  v10._countAndFlagsBits = sub_100936CF8();
  sub_100936C08(v10);

  v11._object = 0x8000000100AFEFB0;
  v11._countAndFlagsBits = 0xD000000000000010;
  sub_100936C08(v11);
  sub_10071D1D0(*(v1 + OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_serverSecret), *(v1 + OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_serverSecret + 8));
  sub_100706B30(&qword_100CBA460);
  sub_10071D740();
  v2 = sub_100936AE8();
  v4 = v3;

  v12._countAndFlagsBits = v2;
  v12._object = v4;
  sub_100936C08(v12);

  v13._object = 0x8000000100AFEFD0;
  v13._countAndFlagsBits = 0xD000000000000010;
  sub_100936C08(v13);
  sub_10071D1D0(*(v1 + OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_clientSecret), *(v1 + OBJC_IVAR____TtC17identityservicesd32IDSGlobalLinkP2PNegotiatedKeySet_clientSecret + 8));
  v5 = sub_100936AE8();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  sub_100936C08(v14);

  v15._countAndFlagsBits = 15882;
  v15._object = 0xE200000000000000;
  sub_100936C08(v15);
  return 0;
}

unint64_t sub_10071D740()
{
  result = qword_100CB30A0;
  if (!qword_100CB30A0)
  {
    sub_1007147D0(&qword_100CBA460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB30A0);
  }

  return result;
}

id sub_10071D9A0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_isServer] = a1;
  *&v7[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_avc] = a2;
  *&v7[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_ids] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10071DA3C()
{
  v1 = v0;
  sub_100937248(56);
  v12._object = 0x8000000100AFF030;
  v12._countAndFlagsBits = 0xD000000000000021;
  sub_100936C08(v12);
  if (*(v0 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_isServer))
  {
    v2._countAndFlagsBits = 0x726576726553;
  }

  else
  {
    v2._countAndFlagsBits = 0x746E65696C43;
  }

  v2._object = 0xE600000000000000;
  sub_100936C08(v2);

  v13._countAndFlagsBits = 0x3D63766120200A29;
  v13._object = 0xE800000000000000;
  sub_100936C08(v13);
  v3 = [*(v0 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_avc) sensitiveDescription];
  v4 = sub_100936B38();
  v6 = v5;

  v14._countAndFlagsBits = v4;
  v14._object = v6;
  sub_100936C08(v14);

  v15._countAndFlagsBits = 0x3D73646920200ALL;
  v15._object = 0xE700000000000000;
  sub_100936C08(v15);
  v7 = [*(v1 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_ids) sensitiveDescription];
  v8 = sub_100936B38();
  v10 = v9;

  v16._countAndFlagsBits = v8;
  v16._object = v10;
  sub_100936C08(v16);

  v17._countAndFlagsBits = 15882;
  v17._object = 0xE200000000000000;
  sub_100936C08(v17);
  return 0;
}

id sub_10071DBE8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_100936B28();

  return v5;
}

uint64_t sub_10071DC58()
{
  sub_100937248(56);
  v3._object = 0x8000000100AFF030;
  v3._countAndFlagsBits = 0xD000000000000021;
  sub_100936C08(v3);
  if (*(v0 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PNegotiatedKeys_isServer))
  {
    v1._countAndFlagsBits = 0x726576726553;
  }

  else
  {
    v1._countAndFlagsBits = 0x746E65696C43;
  }

  v1._object = 0xE600000000000000;
  sub_100936C08(v1);

  v4._countAndFlagsBits = 0x3D63766120200A29;
  v4._object = 0xE800000000000000;
  sub_100936C08(v4);
  swift_getObjectType();
  sub_100937578();
  v5._countAndFlagsBits = 0x3D73646920200ALL;
  v5._object = 0xE700000000000000;
  sub_100936C08(v5);
  swift_getObjectType();
  sub_100937578();
  v6._countAndFlagsBits = 15882;
  v6._object = 0xE200000000000000;
  sub_100936C08(v6);
  return 0;
}

id sub_10071DDE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10071DE64(char *a1, int64_t a2, char a3)
{
  result = sub_10071DE84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10071DE84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&unk_100CBABF0);
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

uint64_t IDSDSessionKeyValueDelivery.metricsCollector.getter()
{
  sub_1007291E4(v0 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_weakMetricsCollector, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10072921C(v3);
  return Strong;
}

uint64_t sub_10071E064(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_participantProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10071E0D0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_participantProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10071E170;
}

void sub_10071E170(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t variable initialization expression of IDSDSessionKeyValueDelivery.state()
{
  swift_unknownObjectWeakInit();
  v2[1] = sub_100728D14(&_swiftEmptyArrayStorage);
  v2[2] = sub_100728EFC(&_swiftEmptyArrayStorage);
  v2[3] = sub_10072900C(&_swiftEmptyArrayStorage);
  sub_100706B30(&unk_100CB3240);
  v0 = swift_allocObject();
  *(v0 + 48) = 0;
  sub_10072924C(v2, v0 + 16);
  return v0;
}

id sub_10071E28C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a6;
  v24 = a3;
  v16 = *(a7 + 24);
  v15 = *(a7 + 32);
  v17 = sub_100729284(a7, v16);
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_1007295DC(a1, a2, v24, a4, a5, v26, v19, a8, a9, v25, v16, v15);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100012970(a7);
  return v21;
}

id IDSDSessionKeyValueDelivery.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state];

  os_unfair_lock_lock((v1 + 48));
  swift_unknownObjectWeakAssign();
  *(v1 + 24) = sub_100728D14(&_swiftEmptyArrayStorage);

  *(v1 + 32) = sub_100728EFC(&_swiftEmptyArrayStorage);

  *(v1 + 40) = sub_10072900C(&_swiftEmptyArrayStorage);

  os_unfair_lock_unlock((v1 + 48));

  v3.receiver = v0;
  v3.super_class = type metadata accessor for IDSDSessionKeyValueDelivery(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10071E678(uint64_t a1)
{
  v2 = sub_1007292D4(&_swiftEmptyArrayStorage);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v48 = a1;

  v8 = 0;
  v46 = v7;
  v47 = a1 + 64;
LABEL_6:
  if (v6)
  {
    v52 = v2;
    v11 = v8;
LABEL_12:
    v50 = v11;
    v51 = (v6 - 1) & v6;
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v49 = *(*(v48 + 48) + 4 * v12);
    v13 = *(*(v48 + 56) + 8 * v12);

    v14 = sub_1007293CC(&_swiftEmptyArrayStorage);
    v15 = 0;
    v16 = v13 + 64;
    v54 = v13 + 64;
    v55 = v13;
    v17 = 1 << *(v13 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v13 + 64);
    v20 = (v17 + 63) >> 6;
    v53 = v20;
    while (v19)
    {
      v24 = v15;
LABEL_23:
      v25 = __clz(__rbit64(v19)) | (v24 << 6);
      v26 = *(*(v55 + 48) + 8 * v25);
      v27 = (*(v55 + 56) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = objc_allocWithZone(NSNumber);
      sub_100715738(v29, v28);
      v31 = [v30 initWithUnsignedLongLong:v26];
      sub_100715738(v29, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_100725138(v31);
      v35 = v14[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_35;
      }

      v38 = v33;
      if (v14[3] >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100727548();
        }
      }

      else
      {
        sub_10072579C(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_100725138(v31);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_37;
        }

        v34 = v39;
      }

      v19 &= v19 - 1;
      if (v38)
      {
        v21 = (v14[7] + 16 * v34);
        v22 = *v21;
        v23 = v21[1];
        *v21 = v29;
        v21[1] = v28;
        sub_1007156D8(v22, v23);

        sub_1007156D8(v29, v28);
      }

      else
      {
        v14[(v34 >> 6) + 8] |= 1 << v34;
        *(v14[6] + 8 * v34) = v31;
        v41 = (v14[7] + 16 * v34);
        *v41 = v29;
        v41[1] = v28;
        sub_1007156D8(v29, v28);
        v42 = v14[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_36;
        }

        v14[2] = v44;
      }

      v15 = v24;
      v20 = v53;
      v16 = v54;
    }

    while (1)
    {
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24 >= v20)
      {

        v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v49];
        v10 = swift_isUniquelyReferenced_nonNull_native();
        sub_100726B44(v14, v9, v10);

        v2 = v52;
        v8 = v50;
        v6 = v51;
        v7 = v46;
        v3 = v47;
        goto LABEL_6;
      }

      v19 = *(v16 + 8 * v24);
      ++v15;
      if (v19)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v11);
      ++v8;
      if (v6)
      {
        v52 = v2;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_100014170(0, &unk_100CBA300);
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_10071E9FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100726CC0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1009360A8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100725034(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1007276C4();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1009360A8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      swift_unknownObjectRelease();
      sub_100726654(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1009360A8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10071EBBC(uint64_t a1, Swift::UInt32 a2)
{
  v3 = v2;
  v6 = sub_100706B30(&qword_100CB3428);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100013814(a1, &qword_100CB3428);
    v13 = sub_1007250CC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100727C08();
        v17 = v21;
      }

      sub_100729904(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      sub_100726974(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100013814(v8, &qword_100CB3428);
  }

  else
  {
    sub_100729904(a1, v12, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_100727138(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

void IDSDSessionKeyValueDelivery.add(deliveryHandler:uuid:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  os_unfair_lock_lock(v1 + 12);
  sub_1007298A8(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

void sub_10071EE70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1009360A8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v65 = &v60 - v13;
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_l;
  v17 = *(v9 + 16);
  v68 = a3;
  v66 = v17;
  v17(&v60 - v14, a3, v8);
  v67 = v16;
  v18 = sub_1009364B8();
  v19 = sub_100936F18();
  v20 = os_log_type_enabled(v18, v19);
  v64 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v62 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v61 = a1;
    v24 = v23;
    v69 = v23;
    *v22 = 136315138;
    sub_100729AD8(&qword_100CB2DA8, &type metadata accessor for UUID);
    v25 = sub_100937548();
    v26 = v9;
    v28 = v27;
    v60 = a2;
    v29 = *(v26 + 8);
    v29(v15, v8);
    v30 = sub_10001273C(v25, v28, &v69);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "add delivery handler with uuid %s", v22, 0xCu);
    sub_100012970(v24);
    a1 = v61;

    a4 = v62;

    v31 = v29;
    a2 = v60;
  }

  else
  {

    v31 = *(v9 + 8);
    v31(v15, v8);
  }

  v32 = *(a1 + 8);
  v33 = v68;
  if (*(v32 + 16) && (v34 = sub_100725034(v68), (v35 & 1) != 0))
  {
    v36 = *(*(v32 + 56) + 8 * v34);
    v37 = v63;
    v66(v63, v33, v8);
    swift_unknownObjectRetain();
    v38 = sub_1009364B8();
    v39 = sub_100936F18();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v40 = 136315394;
      sub_100729AD8(&qword_100CB2DA8, &type metadata accessor for UUID);
      v41 = sub_100937548();
      v43 = v42;
      v31(v37, v8);
      v44 = sub_10001273C(v41, v43, &v69);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = [v36 description];
      v46 = sub_100936B38();
      v48 = v47;

      v49 = sub_10001273C(v46, v48, &v69);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "... already added handler with uuid %s: %s", v40, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v31(v37, v8);
    }
  }

  else
  {
    v50 = v65;
    v66(v65, v33, v8);
    v51 = swift_unknownObjectRetain();
    sub_10071E9FC(v51, v50);
    v52 = sub_1009364B8();
    v53 = sub_100936F18();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "sending all cached data to the new delivery handler", v54, 2u);
    }

    if (a4)
    {
      (*((swift_isaMask & *a2) + 0xB8))(*(a1 + 16));
      sub_100014170(0, &unk_100CBA300);
      sub_100706B30(&qword_100CB3468);
      sub_10072A8C0();
      isa = sub_100936A58().super.isa;

      [a4 handleGroupSessionKeyValues:isa];
    }

    v56 = (*((swift_isaMask & *a2) + 0x90))();
    if (v56)
    {
      v57 = v56;
      v58 = [v56 keyValueDelivery];

      v59 = sub_100936B28();
      [v58 event:v59];
    }
  }
}

void IDSDSessionKeyValueDelivery.remove(deliveryHandlerWithUUID:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  os_unfair_lock_lock(v1 + 12);
  sub_1007298D8(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

uint64_t sub_10071F590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v26 = *(v6 + 16);
  v26(&v23 - v9, a3, v5);
  v11 = sub_1009364B8();
  v12 = sub_100936F18();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v28 = v15;
    *v14 = 136315138;
    sub_100729AD8(&qword_100CB2DA8, &type metadata accessor for UUID);
    v17 = sub_100937548();
    v19 = v18;
    (*(v6 + 8))(v10, v5);
    v20 = sub_10001273C(v17, v19, &v28);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "remove delivery handler with uuid %s", v14, 0xCu);
    sub_100012970(v16);
    a3 = v24;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v21 = v27;
  v26(v27, a3, v5);
  return sub_10071E9FC(0, v21);
}

uint64_t sub_10071FAE4(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID);
  v4 = *(v2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID + 8);
  v5 = v3 == a1 && v4 == a2;
  if (v5 || (sub_100937598() & 1) != 0)
  {
    return (*((swift_isaMask & *v2) + 0xE8))();
  }

  v9 = v2;
  v10 = sub_1009364B8();
  v11 = sub_100936EF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_10001273C(0xD000000000000033, 0x8000000100AFF260, &v13);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10001273C(a1, a2, &v13);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_10001273C(v3, v4, &v13);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: groupID doesn't match: %s, %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  return 0;
}

id IDSDSessionKeyValueDelivery.objcMaterials.getter()
{
  v1 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v1 - 8);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  v11 = (*((swift_isaMask & *v0) + 0xF8))(v8);
  result = [objc_allocWithZone(NSMutableSet) init];
  v29 = result;
  v13 = 0;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v11 + 56;
  v17 = v15 & *(v11 + 56);
  v18 = (v14 + 63) >> 6;
  v26 = v4;
  v27 = v10;
  while (v17)
  {
    v21 = v13;
LABEL_11:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_100729A00(*(v11 + 48) + *(v4 + 72) * (v22 | (v21 << 6)), v10, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100729904(v10, v7, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v11;
      v24 = v28;
      sub_100729904(v7, v28, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
      v25 = sub_10071B1EC();
      [v29 addObject:v25];

      v20 = v24;
      v11 = v23;
      v19 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet;
      v4 = v26;
      v10 = v27;
    }

    else
    {
      v19 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer;
      v20 = v7;
    }

    result = sub_10072996C(v20, v19);
    v13 = v21;
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return v29;
    }

    v17 = *(v16 + 8 * v21);
    ++v13;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100720068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID) == a1 && *(v2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID + 8) == a2;
  if (v3 || (sub_100937598() & 1) != 0)
  {
    v4 = *((swift_isaMask & *v2) + 0xF8);

    return v4();
  }

  else
  {
    v6 = sub_1009364B8();
    v7 = sub_100936EF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10001273C(0xD000000000000027, 0x8000000100AFF2A0, &v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: group id mismatch", v8, 0xCu);
      sub_100012970(v9);
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_1007201E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  os_unfair_lock_lock(v1 + 12);
  sub_1007299CC(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 12);
  return v3;
}

void sub_10072024C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v165 = a3;
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v185 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  v8 = __chkstk_darwin(v184);
  v183 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v182 = &v164 - v10;
  v11 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v11 - 8);
  v13 = &v164 - v12;
  v198 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v14 = *(v198 - 8);
  v15 = __chkstk_darwin(v198);
  v181 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v201 = &v164 - v17;
  v193 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  v173 = *(v193 - 8);
  v18 = __chkstk_darwin(v193);
  v180 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v187 = &v164 - v21;
  v22 = __chkstk_darwin(v20);
  v186 = &v164 - v23;
  v24 = __chkstk_darwin(v22);
  v200 = (&v164 - v25);
  __chkstk_darwin(v24);
  v172 = &v164 - v26;
  v27 = sub_100706B30(&qword_100CB3480);
  v28 = __chkstk_darwin(v27 - 8);
  v177 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v176 = (&v164 - v30);
  v214 = &_swiftEmptySetSingleton;
  v31 = *(a1 + 24);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v31 + 64);
  v209 = OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_l;
  v171 = OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_pushTokensForCapabilityProvider;
  v170 = a2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID;
  v167 = (v33 + 63) >> 6;
  v197 = (v14 + 48);
  v179 = (v6 + 16);
  v174 = v31;

  v36 = 0;
  *&v37 = 136315906;
  v168 = v37;
  v166 = &_swiftEmptyArrayStorage >> 62;
  *&v37 = 136315650;
  v196 = v37;
  *&v37 = 136315138;
  v189 = v37;
  *&v37 = 136315394;
  v169 = v37;
  v210 = a2;
  v175 = v32;
  v194 = v5;
  v199 = v13;
LABEL_6:
  if (v35)
  {
    v191 = v36;
    v38 = v36;
    v39 = v177;
LABEL_16:
    v192 = (v35 - 1) & v35;
    v43 = __clz(__rbit64(v35)) | (v38 << 6);
    v44 = *(*(v174 + 48) + 4 * v43);
    v45 = v172;
    sub_100729A00(*(v174 + 56) + *(v173 + 72) * v43, v172, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    v46 = sub_100706B30(&qword_100CB3488);
    v47 = *(v46 + 48);
    *v39 = v44;
    sub_100729904(v45, v39 + v47, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
    v42 = v186;
  }

  else
  {
    if (v167 <= v36 + 1)
    {
      v40 = v36 + 1;
    }

    else
    {
      v40 = v167;
    }

    v41 = v40 - 1;
    v42 = v186;
    v39 = v177;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_76;
      }

      if (v38 >= v167)
      {
        break;
      }

      v35 = *(v32 + 8 * v38);
      ++v36;
      if (v35)
      {
        v191 = v38;
        goto LABEL_16;
      }
    }

    v70 = sub_100706B30(&qword_100CB3488);
    (*(*(v70 - 8) + 56))(v39, 1, 1, v70);
    v192 = 0;
    v191 = v41;
  }

  v48 = v176;
  sub_100021E3C(v39, v176, &qword_100CB3480);
  v49 = sub_100706B30(&qword_100CB3488);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {

    *v165 = v214;
    return;
  }

  v50 = *v48;
  v51 = v48 + *(v49 + 48);
  v52 = v200;
  sub_100729904(v51, v200, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
  sub_100729A00(v52, v42, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
  v53 = v187;
  sub_100729A00(v52, v187, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
  v54 = sub_1009364B8();
  v55 = sub_100936F18();
  v56 = os_log_type_enabled(v54, v55);
  v202 = v50;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v213[0] = swift_slowAlloc();
    *v57 = v168;
    *(v57 + 4) = sub_10001273C(0x6C6169726574616DLL, 0xE900000000000073, v213);
    *(v57 + 12) = 2080;
    LODWORD(v212) = v50;
    type metadata accessor for IDSGroupSessionClientDataKey(0);
    v58 = sub_100936B88();
    v60 = sub_10001273C(v58, v59, v213);

    *(v57 + 14) = v60;
    *(v57 + 22) = 2080;
    sub_100729AD8(&qword_100CB2DA8, &type metadata accessor for UUID);
    v61 = sub_100937548();
    v63 = v62;
    sub_10072996C(v42, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    v64 = sub_10001273C(v61, v63, v213);
    v65 = v187;

    *(v57 + 24) = v64;
    *(v57 + 32) = 2080;
    v66 = *(v65 + 32);
    if (v66)
    {
      v67 = v65;
      v68 = *(v65 + 24);
      v69 = v66;
    }

    else
    {
      v69 = 0xE400000000000000;
      v67 = v65;
      v68 = 1701736302;
    }

    sub_10072996C(v67, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    v71 = sub_10001273C(v68, v69, v213);

    *(v57 + 34) = v71;
    _os_log_impl(&_mh_execute_header, v54, v55, "%s: local key: %s, id: %s, capability: %s", v57, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10072996C(v53, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    sub_10072996C(v42, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
  }

  v213[0] = 0;
  v72 = v200[4];
  if (v72)
  {
    v73 = v200[3];

    v74 = sub_1009364B8();
    v75 = sub_100936F18();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *v76 = v169;
      *(v76 + 4) = sub_10001273C(0x6C6169726574616DLL, 0xE900000000000073, &v212);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_10001273C(v73, v72, &v212);
      _os_log_impl(&_mh_execute_header, v74, v75, "%s: finding push tokens for capability %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    v77 = *(v210 + v171);
    v78 = sub_100936B28();
    v79 = sub_100936B28();
    v80 = [v77 pushTokensForGroupID:v78 capability:v79];

    sub_100014170(0, &qword_100CB34A0);
    v81 = sub_100936CE8();

    swift_beginAccess();
    v213[0] = v81;
    v82 = sub_1009364B8();
    v83 = sub_100936F18();
    v84 = os_log_type_enabled(v82, v83);
    v207 = v81;
    if (v84)
    {
      v85 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *v85 = v169;
      *(v85 + 4) = sub_10001273C(0x6C6169726574616DLL, 0xE900000000000073, &v212);
      *(v85 + 12) = 2080;
      v211 = v81;

      sub_100706B30(&qword_100CB34A8);
      v86 = sub_100936B88();
      v88 = sub_10001273C(v86, v87, &v212);

      *(v85 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v82, v83, "%s: push tokens: %s", v85, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v207 = 0;
  }

  if (!(*((swift_isaMask & *v210) + 0x98))())
  {
    if (v166 && sub_1009373F8())
    {
      sub_100729B20(&_swiftEmptyArrayStorage);
      v92 = v97;
      if ((v97 & 0xC000000000000001) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v92 = &_swiftEmptySetSingleton;
      if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    v95 = 0;
    v98 = -1 << *(v92 + 32);
    v93 = v92 + 56;
    v99 = ~v98;
    v100 = -v98;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    else
    {
      v101 = -1;
    }

    v96 = v101 & *(v92 + 56);
    v94 = v99;
    goto LABEL_44;
  }

  v90 = v89;
  ObjectType = swift_getObjectType();
  v92 = (*(v90 + 16))(ObjectType, v90);
  swift_unknownObjectRelease();
  if ((v92 & 0xC000000000000001) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  sub_100937118();
  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100729AD8(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  sub_100936E58();
  v92 = v213[1];
  v93 = v213[2];
  v94 = v213[3];
  v95 = v213[4];
  v96 = v213[5];
LABEL_44:
  v102 = v202;
  v190 = v94;
  v103 = (v94 + 64) >> 6;
  v204 = v92;
  v205 = v93;
  v203 = v103;
  while (v92 < 0)
  {
    v109 = sub_100937198();
    if (!v109 || (v211 = v109, type metadata accessor for IDSGroupEncryptionControllerParticipant(0), swift_dynamicCast(), v108 = v212, v106 = v95, v107 = v96, !v212))
    {
LABEL_5:
      sub_100308C6C();
      sub_10072996C(v200, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);

      v32 = v175;
      v35 = v192;
      v36 = v191;
      goto LABEL_6;
    }

LABEL_57:
    v208 = v107;
    v110 = v108;
    v111 = sub_1009364B8();
    v112 = sub_100936F18();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = v110;
      v116 = swift_slowAlloc();
      v212 = v116;
      *v113 = v196;
      *(v113 + 4) = sub_10001273C(0x6C6169726574616DLL, 0xE900000000000073, &v212);
      *(v113 + 12) = 2048;
      *(v113 + 14) = *&v115[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];

      *(v113 + 22) = 2112;
      v117 = v115;
      v118 = *&v115[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];
      *(v113 + 24) = v118;
      *v114 = v118;
      v119 = v118;
      _os_log_impl(&_mh_execute_header, v111, v112, "%s: checking participant %llu (push token: %@)", v113, 0x20u);
      sub_100013814(v114, &qword_100CB36B0);

      sub_100012970(v116);
      v102 = v202;

      v121 = v207;
      if (!v207)
      {
        goto LABEL_62;
      }
    }

    else
    {

      v117 = v110;
      v121 = v207;
      if (!v207)
      {
        goto LABEL_62;
      }
    }

    v212 = *(v117 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken);
    v122 = v212;
    __chkstk_darwin(v120);
    *(&v164 - 2) = &v212;

    v123 = v122;
    v124 = v206;
    v125 = sub_100727E3C(sub_10072A928, (&v164 - 4), v121);
    v206 = v124;

    if ((v125 & 1) == 0)
    {
      v160 = sub_1009364B8();
      v161 = sub_100936F18();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v212 = v163;
        *v162 = v189;
        *(v162 + 4) = sub_10001273C(0x6C6169726574616DLL, 0xE900000000000073, &v212);
        _os_log_impl(&_mh_execute_header, v160, v161, "%s: not in allowed push tokens", v162, 0xCu);
        sub_100012970(v163);
      }

      goto LABEL_46;
    }

LABEL_62:
    v126 = v117;
    v127 = v199;
    (*((swift_isaMask & *v117) + 0x108))();
    if ((*v197)(v127, 1, v198) == 1)
    {
      sub_100013814(v127, &unk_100CB6040);
      v128 = sub_1009364B8();
      v129 = sub_100936F18();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v212 = v131;
        *v130 = v189;
        *(v130 + 4) = sub_10001273C(0x6C6169726574616DLL, 0xE900000000000073, &v212);
        _os_log_impl(&_mh_execute_header, v128, v129, "%s: no public identity", v130, 0xCu);
        sub_100012970(v131);
      }

      goto LABEL_46;
    }

    sub_100729904(v127, v201, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v132 = (*((swift_isaMask & *v210) + 0x100))(v102);
    if (!v132)
    {
      sub_10072996C(v201, type metadata accessor for IDSGroupEncryptionPublicIdentity);

LABEL_46:
      v95 = v106;
      v96 = v208;
      goto LABEL_47;
    }

    v133 = v132;
    v134 = v200;
    v135 = *v200;
    v136 = v200[1];
    v137 = v126;
    v138 = v181;
    sub_100729A00(v201, v181, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v188 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID;
    v195 = *&v126[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];
    v139 = v185;
    (*v179)(v185, &v134[*(v193 + 28)], v194);
    sub_100715738(v135, v136);
    v140 = v183;
    v141 = v139;
    v142 = v137;
    sub_10071C254(v133 | 0x200000000, v135, v136, v138, v195, v141, v183);
    swift_storeEnumTagMultiPayload();
    v143 = v182;
    sub_100727F64(v182, v140);
    sub_10072996C(v143, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v144 = v180;
    sub_100729A00(v134, v180, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
    v145 = v137;
    v146 = sub_1009364B8();
    v147 = sub_100936F18();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v212 = v195;
      *v148 = v196;
      v149 = v202;
      LODWORD(v211) = v202;
      type metadata accessor for IDSGroupSessionClientDataKey(0);
      v150 = sub_100936B88();
      v152 = sub_10001273C(v150, v151, &v212);
      v178 = v142;
      v153 = v152;

      *(v148 + 4) = v153;
      *(v148 + 12) = 2080;
      sub_100729AD8(&qword_100CB2DA8, &type metadata accessor for UUID);
      v154 = sub_100937548();
      v156 = v155;
      v157 = v144;
      v102 = v149;
      sub_10072996C(v157, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      v158 = sub_10001273C(v154, v156, &v212);

      *(v148 + 14) = v158;
      *(v148 + 22) = 2048;
      v159 = *&v178[v188];

      *(v148 + 24) = v159;
      _os_log_impl(&_mh_execute_header, v146, v147, "adding KV to desired: key %s with data ID %s, participantID: %llu", v148, 0x20u);
      swift_arrayDestroy();

      sub_10072996C(v201, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      v95 = v106;
      v96 = v208;
    }

    else
    {

      sub_10072996C(v144, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      sub_10072996C(v201, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      v95 = v106;
      v96 = v208;
      v102 = v202;
    }

LABEL_47:
    v92 = v204;
    v93 = v205;
    v103 = v203;
  }

  v104 = v95;
  v105 = v96;
  v106 = v95;
  if (v96)
  {
LABEL_53:
    v107 = (v105 - 1) & v105;
    v108 = *(*(v92 + 48) + ((v106 << 9) | (8 * __clz(__rbit64(v105)))));
    if (!v108)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

  while (1)
  {
    v106 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v106 >= v103)
    {
      goto LABEL_5;
    }

    v105 = *(v93 + 8 * v106);
    ++v104;
    if (v105)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t sub_100721ABC(int a1)
{
  if (a1 == 1)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void IDSDSessionKeyValueDelivery.receive(dictionaryData:forType:fromParticipant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100706B30(&qword_100CB3250);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v109 - v12;
  v119 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v14 = *(v119 - 8);
  v15 = __chkstk_darwin(v119);
  v117 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v118 = &v109 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v109 - v20;
  __chkstk_darwin(v19);
  v23 = &v109 - v22;
  v24 = (*((swift_isaMask & *v4) + 0x108))(a2);
  if (!v24)
  {
    v38 = (*((swift_isaMask & *v4) + 0x90))();
    if (v38)
    {
      v39 = v38;
      v40 = sub_100936B28();
      v41 = [v39 error:v40];

      v119 = sub_100936B28();
      [v41 event:v119];

      v42 = v119;
    }

    return;
  }

  v116 = v24;
  v25 = sub_100936B38();
  if (*(a1 + 16))
  {
    v115 = a3;
    v27 = sub_1000136E4(v25, v26);
    v29 = v28;

    if (v29)
    {
      v120 = *(*(a1 + 56) + 8 * v27);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v30 = v122;
        if (v122 == 1)
        {
          v31 = sub_100936B38();
          if (*(a1 + 16))
          {
            v114 = sub_1000136E4(v31, v32);
            v34 = v33;

            if (v34)
            {
              v122 = *(*(a1 + 56) + 8 * v114);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v113 = v120;
                v114 = v121;
                v35 = *(v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_identityProvider + 24);
                v36 = *(v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_identityProvider + 32);
                v111 = (v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_identityProvider);
                sub_1000226D4((v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_identityProvider), v35);
                (*(v36 + 8))(v35, v36);
                v37 = *(v14 + 48);
                v112 = v14 + 48;
                if (v37(v13, 1, v119) == 1)
                {
                  sub_100013814(v13, &qword_100CB3250);
                }

                else
                {
                  sub_100729904(v13, v23, type metadata accessor for IDSGroupEncryptionFullIdentity);
                  sub_100729A00(v23, v21, type metadata accessor for IDSGroupEncryptionFullIdentity);
                  v57 = sub_1009364B8();
                  v58 = sub_100936F18();
                  if (os_log_type_enabled(v57, v58))
                  {
                    v59 = swift_slowAlloc();
                    v110 = swift_slowAlloc();
                    v120 = v110;
                    *v59 = 136315394;
                    *(v59 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF2F0, &v120);
                    *(v59 + 12) = 2080;
                    sub_100729AD8(&unk_100CB3260, type metadata accessor for IDSGroupEncryptionFullIdentity);
                    v60 = sub_100937548();
                    v62 = v61;
                    sub_10072996C(v21, type metadata accessor for IDSGroupEncryptionFullIdentity);
                    v63 = sub_10001273C(v60, v62, &v120);

                    *(v59 + 14) = v63;
                    _os_log_impl(&_mh_execute_header, v57, v58, "%s: attempting to decrypt with identity %s", v59, 0x16u);
                    swift_arrayDestroy();
                  }

                  else
                  {

                    sub_10072996C(v21, type metadata accessor for IDSGroupEncryptionFullIdentity);
                  }

                  v64 = *(v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler + 24);
                  v65 = *(v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler + 32);
                  sub_1000226D4((v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler), v64);
                  v66 = (*(v65 + 32))(v113, v114, v23, v64, v65);
                  v68 = v67;
                  v70 = v69;
                  sub_10072996C(v23, type metadata accessor for IDSGroupEncryptionFullIdentity);
                  if ((v70 & 1) == 0)
                  {
                    v73 = v70 & 1;
                    goto LABEL_42;
                  }

                  sub_1007156CC(v66, v68, 1);
                }

                v71 = v111[3];
                v72 = v111[4];
                sub_1000226D4(v111, v71);
                (*(v72 + 16))(v71, v72);
                if (v37(v11, 1, v119) == 1)
                {
                  sub_100013814(v11, &qword_100CB3250);
                  v66 = 0;
                  v68 = 0;
                  v73 = -1;
                  goto LABEL_38;
                }

                v74 = v118;
                sub_100729904(v11, v118, type metadata accessor for IDSGroupEncryptionFullIdentity);
                v75 = v117;
                sub_100729A00(v74, v117, type metadata accessor for IDSGroupEncryptionFullIdentity);
                v76 = sub_1009364B8();
                v77 = sub_100936F18();
                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v120 = swift_slowAlloc();
                  *v78 = 136315394;
                  *(v78 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF2F0, &v120);
                  *(v78 + 12) = 2080;
                  sub_100729AD8(&unk_100CB3260, type metadata accessor for IDSGroupEncryptionFullIdentity);
                  v79 = sub_100937548();
                  v81 = v80;
                  sub_10072996C(v75, type metadata accessor for IDSGroupEncryptionFullIdentity);
                  v82 = sub_10001273C(v79, v81, &v120);

                  *(v78 + 14) = v82;
                  _os_log_impl(&_mh_execute_header, v76, v77, "%s: could not CryptoHandler decrypt with current identity; trying with previous %s", v78, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  sub_10072996C(v75, type metadata accessor for IDSGroupEncryptionFullIdentity);
                }

                v83 = *(v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler + 24);
                v84 = *(v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler + 32);
                sub_1000226D4((v4 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler), v83);
                v66 = (*(v84 + 32))(v113, v114, v74, v83, v84);
                v68 = v85;
                v87 = v86;
                sub_10072996C(v74, type metadata accessor for IDSGroupEncryptionFullIdentity);
                v73 = v87 & 1;
                if (v87)
                {
LABEL_38:
                  v88 = sub_1009364B8();
                  v89 = sub_100936EF8();
                  if (os_log_type_enabled(v88, v89))
                  {
                    v90 = swift_slowAlloc();
                    v91 = swift_slowAlloc();
                    v120 = v91;
                    *v90 = 136315138;
                    *(v90 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF2F0, &v120);
                    _os_log_impl(&_mh_execute_header, v88, v89, "%s: failed CryptoHandler decrypt", v90, 0xCu);
                    sub_100012970(v91);
                  }

                  v92 = (*((swift_isaMask & *v4) + 0x90))();
                  if (v92)
                  {
                    v93 = v92;
                    v94 = sub_100936B28();
                    v95 = [v93 error:v94];

                    v96 = sub_100936B28();
                    [v95 event:v96];
                    sub_1007156D8(v113, v114);

LABEL_47:
                    sub_1007299E8(v66, v68, v73);
                    return;
                  }

LABEL_46:
                  sub_1007156D8(v113, v114);
                  goto LABEL_47;
                }

LABEL_42:
                sub_100715738(v66, v68);
                sub_100715738(v66, v68);
                v97 = sub_1009364B8();
                v98 = sub_100936F18();
                sub_1007156D8(v66, v68);
                if (os_log_type_enabled(v97, v98))
                {
                  v99 = swift_slowAlloc();
                  v120 = swift_slowAlloc();
                  *v99 = 136315906;
                  *(v99 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF2F0, &v120);
                  *(v99 + 12) = 2080;
                  sub_100715738(v66, v68);
                  v100 = sub_100935E08();
                  v101 = v68;
                  v103 = v102;
                  sub_1007156D8(v66, v101);
                  v104 = sub_10001273C(v100, v103, &v120);

                  *(v99 + 14) = v104;
                  *(v99 + 22) = 2080;
                  LODWORD(v122) = v116;
                  type metadata accessor for IDSGroupSessionClientDataKey(0);
                  v105 = sub_100936B88();
                  v107 = sub_10001273C(v105, v106, &v120);

                  *(v99 + 24) = v107;
                  v68 = v101;
                  *(v99 + 32) = 2048;
                  v108 = v115;
                  *(v99 + 34) = v115;
                  _os_log_impl(&_mh_execute_header, v97, v98, "%s: received %s forKey: %s fromParticipant: %llu", v99, 0x2Au);
                  swift_arrayDestroy();
                }

                else
                {

                  v108 = v115;
                }

                (*((swift_isaMask & *v4) + 0x118))(v66, v68, v116, v108);
                sub_1007156D8(v66, v68);
                goto LABEL_46;
              }
            }
          }

          else
          {
          }

          v53 = sub_1009364B8();
          v54 = sub_100936EF8();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v120 = v56;
            *v55 = 136315138;
            *(v55 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF2F0, &v120);
            _os_log_impl(&_mh_execute_header, v53, v54, "%s: could not extract data", v55, 0xCu);
            sub_100012970(v56);
          }

          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
  }

  v30 = 0;
LABEL_17:
  v43 = sub_1009364B8();
  v44 = sub_100936EF8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v45 = 136315394;
    *(v45 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF2F0, &v122);
    *(v45 + 12) = 2080;
    v120 = v30;
    LOBYTE(v121) = 0;
    sub_100706B30(&qword_100CB3258);
    v46 = sub_100936B88();
    v48 = sub_10001273C(v46, v47, &v122);

    *(v45 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s: unsupported wrapMode %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  v49 = (*((swift_isaMask & *v4) + 0x90))();
  if (v49)
  {
    v50 = v49;
    v51 = sub_100936B28();
    v52 = [v50 error:v51];

    v53 = sub_100936B28();
    [v52 event:v53];

LABEL_21:
  }
}

void IDSDSessionKeyValueDelivery.receive(unencryptedData:forKey:fromParticipant:)(uint64_t a1, unint64_t a2, Swift::UInt32 a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1009364B8();
  v11 = sub_100936F18();
  if (os_log_type_enabled(v10, v11))
  {
    v22 = a1;
    v12 = a2;
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_10001273C(0xD000000000000030, 0x8000000100AFF350, &v23);
    *(v13 + 12) = 2080;
    type metadata accessor for IDSGroupSessionClientDataKey(0);
    v14 = sub_100936B88();
    v16 = sub_10001273C(v14, v15, &v23);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2048;
    *(v13 + 24) = a4;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: key: %s participant: %llu", v13, 0x20u);
    swift_arrayDestroy();

    a2 = v12;
    a1 = v22;
  }

  v17 = (*((swift_isaMask & *v5) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 keyValueDelivery];

    v20 = sub_100936B28();
    [v19 event:v20];
  }

  v21 = *(v5 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  os_unfair_lock_lock(v21 + 12);
  sub_100722DF0(&v21[4], a3, a4, a1, a2, v5);
  os_unfair_lock_unlock(v21 + 12);
}

unint64_t sub_100722DF0(uint64_t a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v67 = a6;
  v72 = a4;
  v73 = a5;
  v69 = a3;
  v71 = sub_1009360A8();
  v65 = *(v71 - 8);
  __chkstk_darwin(v71);
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100706B30(&qword_100CB3438);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v61 - v13;
  v15 = *(a1 + 16);
  if (*(v15 + 16) && (v16 = sub_1007250CC(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = sub_1007294D0(&_swiftEmptyArrayStorage);
  }

  v20 = v72;
  v19 = v73;
  sub_100715738(v72, v73);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = v18;
  sub_100726FD8(v20, v19, v69, isUniquelyReferenced_nonNull_native);
  v22 = v79;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a1 + 16);
  v68 = a2;
  sub_100726E8C(v22, a2, v23);
  *(a1 + 16) = v79;
  v24 = *(a1 + 8);
  v25 = *(v24 + 64);
  v61[0] = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v61[2] = v65 + 16;
  v61[1] = v65 + 32;
  v66 = (v65 + 8);
  v64 = v24;

  v31 = 0;
  v62 = v12;
  v70 = v14;
  if (v28)
  {
    while (1)
    {
      v32 = v31;
LABEL_16:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v64;
      v38 = v65;
      (*(v65 + 16))(v63, *(v64 + 48) + *(v65 + 72) * v36, v71);
      v39 = *(*(v37 + 56) + 8 * v36);
      v40 = sub_100706B30(&qword_100CB3440);
      v41 = *(v40 + 48);
      v12 = v62;
      (*(v38 + 32))();
      *&v12[v41] = v39;
      (*(*(v40 - 8) + 56))(v12, 0, 1, v40);
      swift_unknownObjectRetain();
      v34 = v32;
      v14 = v70;
LABEL_17:
      sub_100021E3C(v12, v14, &qword_100CB3438);
      v42 = sub_100706B30(&qword_100CB3440);
      if ((*(*(v42 - 8) + 48))(v14, 1, v42) == 1)
      {
      }

      v43 = *&v14[*(v42 + 48)];
      v77 = v68;
      v74 = v69;
      v75 = v72;
      v76 = v73;
      sub_100706B30(&qword_100CB3448);
      v44 = sub_100937438();
      v46 = v74;
      v45 = v75;
      v47 = v76;
      result = sub_10072517C(v74);
      if (v48)
      {
        goto LABEL_27;
      }

      v44[(result >> 6) + 8] |= 1 << result;
      *(v44[6] + 8 * result) = v46;
      v49 = (v44[7] + 16 * result);
      *v49 = v45;
      v49[1] = v47;
      v50 = v44[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_28;
      }

      v44[2] = v52;
      sub_100715738(v72, v73);
      sub_100715738(v45, v47);
      sub_100013814(&v74, &qword_100CB3450);
      v78 = v44;
      sub_100706B30(&qword_100CB3458);
      v53 = sub_100937438();
      v54 = v77;
      v55 = v78;
      result = sub_1007250CC(v77);
      if (v56)
      {
        goto LABEL_29;
      }

      v53[(result >> 6) + 8] |= 1 << result;
      *(v53[6] + 4 * result) = v54;
      *(v53[7] + 8 * result) = v55;
      v57 = v53[2];
      v51 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v51)
      {
        goto LABEL_30;
      }

      v53[2] = v58;

      sub_100013814(&v77, &qword_100CB3460);
      (*((swift_isaMask & *v67) + 0xB8))(v53);

      sub_100014170(0, &unk_100CBA300);
      sub_100706B30(&qword_100CB3468);
      sub_10072A8C0();
      isa = sub_100936A58().super.isa;

      [v43 handleGroupSessionKeyValues:isa];

      swift_unknownObjectRelease();
      v14 = v70;
      result = (*v66)(v70, v71);
      v31 = v34;
      if (!v28)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (v29 <= v31 + 1)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v29;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        v60 = sub_100706B30(&qword_100CB3440);
        (*(*(v60 - 8) + 56))(v12, 1, 1, v60);
        v28 = 0;
        goto LABEL_17;
      }

      v28 = *(v61[0] + 8 * v32);
      ++v31;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t IDSDSessionKeyValueDelivery.send(_:for:encryption:capability:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a5;
  *(v7 + 92) = a3;
  *(v7 + 96) = a4;
  *(v7 + 16) = a1;
  v8 = sub_1009360A8();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1007236CC, 0, 0);
}

uint64_t sub_1007236CC()
{
  v36 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_100936098();
  (*(v4 + 16))(v1, v2, v3);
  v5 = sub_1009364B8();
  v6 = sub_100936F18();
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v33 = *(v0 + 56);
    v9 = *(v0 + 92);
    v10 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_10001273C(0xD000000000000022, 0x8000000100AFF390, v35);
    *(v10 + 12) = 2080;
    *(v0 + 88) = v9;
    type metadata accessor for IDSGroupSessionClientDataKey(0);
    v11 = sub_100936B88();
    v13 = sub_10001273C(v11, v12, v35);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    sub_100729AD8(&qword_100CB2DA8, &type metadata accessor for UUID);
    v14 = sub_100937548();
    v16 = v15;
    v17 = *(v8 + 8);
    v17(v7, v33);
    v18 = sub_10001273C(v14, v16, v35);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: senddata called for key %s with data ID %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);

    v17 = *(v20 + 8);
    v17(v19, v21);
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 48);
  v34 = *(v0 + 32);
  v25 = *(v0 + 92);
  v24 = *(v0 + 96);
  v27 = *(v0 + 16);
  v26 = *(v0 + 24);
  v28 = *(v23 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  v29 = swift_task_alloc();
  *(v29 + 16) = v25;
  *(v29 + 24) = v27;
  *(v29 + 32) = v26;
  *(v29 + 40) = v24;
  *(v29 + 48) = v34;
  *(v29 + 64) = v22;
  *(v29 + 72) = v23;
  os_unfair_lock_lock(v28 + 12);
  sub_100729A90(&v28[4], v35);
  os_unfair_lock_unlock(v28 + 12);
  v30 = v35[0];

  if (v30)
  {
    [v30 updateServerDesiredKeyValueDeliveryMaterialsNeeded];
    swift_unknownObjectRelease();
  }

  v17(*(v0 + 80), *(v0 + 56));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100723A3C@<X0>(uint64_t a1@<X0>, Swift::UInt32 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v29 = a2;
  v28[1] = a1;
  v30 = a9;
  v16 = sub_100706B30(&qword_100CB3428);
  __chkstk_darwin(v16 - 8);
  v18 = v28 - v17;
  v19 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  v20 = *(v19 + 28);
  v21 = sub_1009360A8();
  (*(*(v21 - 8) + 16))(&v18[v20], a8, v21);
  *v18 = a3;
  *(v18 + 1) = a4;
  *(v18 + 4) = a5;
  *(v18 + 3) = a6;
  *(v18 + 4) = a7;
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);

  sub_100715738(a3, a4);
  v22 = sub_10071EBBC(v18, v29);
  v23 = (*((swift_isaMask & *a10) + 0x90))(v22);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 keyValueDelivery];

    v26 = sub_100936B28();
    [v25 event:v26];
  }

  result = swift_unknownObjectWeakLoadStrong();
  *v30 = result;
  return result;
}

uint64_t sub_100723E04(void *a1, int a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v12 = a4;
  v13 = a1;
  a6;
  v14 = sub_100935EA8();
  v16 = v15;

  v6[4] = v14;
  v6[5] = v16;
  if (a4)
  {
    a4 = sub_100936B38();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v6[6] = v18;
  v19 = swift_task_alloc();
  v6[7] = v19;
  *v19 = v6;
  v19[1] = sub_100723F3C;

  return IDSDSessionKeyValueDelivery.send(_:for:encryption:capability:)(v14, v16, a2, a3, a4, v18);
}

uint64_t sub_100723F3C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_1007156D8(v6, v5);
  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_100935D68();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void IDSDSessionKeyValueDelivery.requestData(for:participantID:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  os_unfair_lock_lock(v5 + 12);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v5 + 12);
  if (Strong)
  {
    [Strong requestKeyValueDeliveryDataForKey:a1 participantID:a2];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100724310(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x130);
  v3 = v1;
  v4 = v2(v13);
  v6 = v5;
  v7 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100724F00(0, v7[2] + 1, 1, v7);
    *v6 = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_100724F00((v9 > 1), v10 + 1, 1, v7);
    *v6 = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = v3;
  v11[5] = &off_100BE6B00;
  return v4(v13, 0);
}

id StewieProvisioningEventTracing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int sub_100724638()
{
  v1 = *v0;
  sub_100937668();
  sub_100937698(v1);
  return sub_1009376C8();
}

Swift::Int sub_1007246AC()
{
  v1 = *v0;
  sub_100937668();
  sub_100937698(v1);
  return sub_1009376C8();
}

_DWORD *sub_100724718@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_100724734@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100724750(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10072A990;

  return v6();
}

uint64_t sub_100724838(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100724920;

  return v7();
}

uint64_t sub_100724920()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100724A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100012D50(a3, v23 - v10, &qword_100CB3410);
  v12 = sub_100936DB8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100013814(v11, &qword_100CB3410);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100936DA8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100936D68();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100936BA8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100013814(a3, &qword_100CB3410);

    return v21;
  }

LABEL_8:
  sub_100013814(a3, &qword_100CB3410);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100724D10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100724E08;

  return v6(a1);
}

uint64_t sub_100724E08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100724F00(void *result, int64_t a2, char a3, void *a4)
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
    sub_100706B30(&qword_100CB3418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&qword_100CB3420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100725034(uint64_t a1)
{
  sub_1009360A8();
  sub_100729AD8(&qword_100CB34E0, &type metadata accessor for UUID);
  v2 = sub_100936AC8();

  return sub_1007251C0(a1, v2);
}

unint64_t sub_1007250CC(Swift::UInt32 a1)
{
  sub_100937668();
  sub_100937698(a1);
  v2 = sub_1009376C8();

  return sub_100725380(a1, v2);
}

unint64_t sub_100725138(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100937028(*(v2 + 40));

  return sub_1007253EC(a1, v4);
}

unint64_t sub_10072517C(uint64_t a1)
{
  v2 = sub_100937658();

  return sub_1007254C0(a1, v2);
}

unint64_t sub_1007251C0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100729AD8(&qword_100CB34E8, &type metadata accessor for UUID);
      v15 = sub_100936B18();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100725380(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007253EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100014170(0, &unk_100CBA300);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100937038();

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

unint64_t sub_1007254C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10072552C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB34F0);
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

uint64_t sub_10072579C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB34F8);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
        sub_100715738(v31, *(&v31 + 1));
      }

      result = sub_100937028(*(v7 + 40));
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100725A14(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100706B30(&qword_100CB34D8);
  v39 = a2;
  result = sub_100937418();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_100729AD8(&qword_100CB34E0, &type metadata accessor for UUID);
      result = sub_100936AC8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100725DF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB3458);
  v30 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_100937668();
      sub_100937698(v20);
      result = sub_1009376C8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}