uint64_t sub_100840448(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  sub_100840498(a1, a2);
  return v4;
}

uint64_t sub_100840498(uint64_t a1, int a2)
{
  v17 = a2;
  v4 = sub_1009364D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialCache2.KMCacheState(0);
  __chkstk_darwin(v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state;
  *v10 = sub_10084BEBC(&_swiftEmptyArrayStorage);
  v12 = &_swiftEmptySetSingleton;
  v10[1] = sub_10084C0D8(&_swiftEmptyArrayStorage);
  v10[2] = &_swiftEmptySetSingleton;
  v10[3] = &_swiftEmptySetSingleton;
  v10[4] = &_swiftEmptySetSingleton;
  sub_100935FB8();
  sub_100706B30(&qword_100CB7F70);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_10084CA20(v10, v13 + *(*v13 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for IDSGroupEncryptionKeyMaterialCache2.KMCacheState);
  *(v2 + v11) = v13;
  if (&_swiftEmptyArrayStorage >> 62 && sub_1009373F8())
  {
    sub_100714450(&_swiftEmptyArrayStorage);
    v12 = v15;
  }

  *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_currentMembers) = v12;
  sub_1007C9A6C(v17);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l, v7, v4);
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_isRatchetEnabled) = *(a1 + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_isRatchetEnabled);
  return v2;
}

uint64_t sub_100840750()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C200((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_10084080C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = *a1;
  if (*(v9 + 16) && (v10 = sub_100725034(a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v15 = *(v14 - 8);
    sub_10084C29C(v13 + *(v15 + 72) * v12, v8);
    v16 = 1;
    (*(v15 + 56))(v8, 0, 1, v14);
  }

  else
  {
    v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v16 = 0;
  }

  result = sub_100013814(v8, &qword_100CB2AA0);
  *a3 = v16;
  return result;
}

uint64_t sub_100840998()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C22C((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_100840A54(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v11 = sub_100706B30(&qword_100CB2AA0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_100725034(a2 + v4[5]), (v19 & 1) != 0))
  {
    sub_10084C29C(*(v17 + 56) + *(v5 + 72) * v18, v16);
    (*(v5 + 56))(v16, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v16, 1, 1, v4);
  }

  sub_100012D50(v16, v14, &qword_100CB2AA0);
  if ((*(v5 + 48))(v14, 1, v4) != 1)
  {
    sub_10084CA20(v14, v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    if (sub_10071CAE8(*&v10[v4[7]], *&v10[v4[7] + 8], *(a2 + v4[7]), *(a2 + v4[7] + 8)))
    {
      v20 = v4[13];
      v21 = &v10[v20];
      v22 = v10[v20 + 8];
      v23 = (a2 + v20);
      v24 = *v23;
      v25 = *(v23 + 8);
      if (v22 == 1)
      {
        if ((v25 & 1) == 0)
        {
          v26 = sub_1009364B8();
          v27 = sub_100936F18();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v48 = v29;
            *v28 = 136315394;
            *(v28 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
            *(v28 + 12) = 2048;
            *(v28 + 14) = v24;
            v30 = "%s: key is in cache, but new key has a participant ID %llu and old does not";
            v31 = v27;
            v32 = v26;
            v33 = v28;
            v34 = 22;
LABEL_14:
            _os_log_impl(&_mh_execute_header, v32, v31, v30, v33, v34);
            sub_100012970(v29);

LABEL_15:

            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v38 = *v21;
        if (*v21 == v24)
        {
          v39 = 1;
        }

        else
        {
          v39 = v25;
        }

        if ((v39 & 1) == 0)
        {
          v26 = sub_1009364B8();
          v41 = sub_100936F18();
          if (!os_log_type_enabled(v26, v41))
          {
            goto LABEL_16;
          }

          v42 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v48 = v29;
          *v42 = 136315650;
          *(v42 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
          *(v42 + 12) = 2048;
          *(v42 + 14) = v24;
          *(v42 + 22) = 2048;
          *(v42 + 24) = v38;
          v30 = "%s: key is in cache, but new key has a different participant ID %llu than the old one %llu";
          v31 = v41;
          v32 = v26;
          v33 = v42;
          v34 = 32;
          goto LABEL_14;
        }
      }

      v40 = v4[12];
      if (v10[v40] || !*(a2 + v40))
      {
        sub_100013814(v16, &qword_100CB2AA0);
        sub_10084C300(v10);
        return 1;
      }

      sub_10084C29C(a2, v8);
      v26 = sub_1009364B8();
      v43 = sub_100936F18();
      if (!os_log_type_enabled(v26, v43))
      {
        sub_10084C300(v8);
        goto LABEL_16;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
      *(v44 + 12) = 256;
      v46 = v8[v4[12]];
      sub_10084C300(v8);
      *(v44 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v26, v43, "%s: key is in cache, but new key has a shortKI length %hhu and old does not", v44, 0xFu);
      sub_100012970(v45);

      goto LABEL_15;
    }

    v26 = sub_1009364B8();
    v35 = sub_100936EF8();
    if (os_log_type_enabled(v26, v35))
    {
      v36 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v36 = 136315138;
      *(v36 + 4) = sub_10001273C(0x7461747328736168, 0xEF293A79656B3A65, &v48);
      v30 = "%s: key is in cache, but key content is different!";
      v31 = v35;
      v32 = v26;
      v33 = v36;
      v34 = 12;
      goto LABEL_14;
    }

LABEL_16:

    sub_100013814(v16, &qword_100CB2AA0);
    sub_10084C300(v10);
    return 0;
  }

  sub_100013814(v16, &qword_100CB2AA0);
  sub_100013814(v14, &qword_100CB2AA0);
  return 0;
}

uint64_t sub_1008410A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_10084C270(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_100841168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_10072517C(a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_1008472B4(*(v7 + 16), 0, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v10 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialContent() - 8);
  v11 = sub_10084B930(&v23, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v7);
  swift_bridgeObjectRetain_n();
  sub_100308C6C();
  if (v11 != v8)
  {
    __break(1u);
LABEL_6:

    v9 = &_swiftEmptyArrayStorage;
  }

  v23 = v9;
  sub_1008481E4(sub_1008413E8, 0);

  v12 = v23;
  v13 = v23[2];
  if (v13)
  {
    v14 = v13 - 1;
    v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v22 = *(v15 - 8);
    sub_10084C29C(v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v14, a3);

    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
    goto LABEL_11;
  }

LABEL_10:
  v20 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v16 = *(*(v20 - 8) + 56);
  v19 = v20;
  v17 = a3;
  v18 = 1;
LABEL_11:

  return v16(v17, v18, 1, v19);
}

void sub_100841404(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009360A8();
  v151 = *(v4 - 8);
  v152 = v4;
  __chkstk_darwin(v4);
  v145 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100706B30(&qword_100CB7F78);
  __chkstk_darwin(v148);
  v154 = &v141 - v6;
  v7 = sub_100706B30(&qword_100CB2D98);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v150 = &v141 - v12;
  __chkstk_darwin(v11);
  v157 = &v141 - v13;
  v14 = sub_100706B30(&qword_100CB2AA0);
  v15 = __chkstk_darwin(v14 - 8);
  v147 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v141 - v18;
  v20 = __chkstk_darwin(v17);
  v158 = &v141 - v21;
  __chkstk_darwin(v20);
  v159 = &v141 - v22;
  v23 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v160 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v156 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v155 = &v141 - v27;
  __chkstk_darwin(v26);
  v29 = &v141 - v28;
  v30 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v31 = a1;
  sub_10084C29C(a1, &v141 - v28);
  v32 = sub_1009364B8();
  v33 = sub_100936F18();
  v34 = os_log_type_enabled(v32, v33);
  v146 = v10;
  v162 = v23;
  v149 = v19;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v161 = v30;
    v163 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v163);
    *(v35 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v37 = sub_100937548();
    v39 = v38;
    sub_10084C300(v29);
    v40 = sub_10001273C(v37, v39, &v163);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s: %s", v35, 0x16u);
    swift_arrayDestroy();
    v30 = v161;
  }

  else
  {

    v41 = sub_10084C300(v29);
  }

  v42 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state;
  v43 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  __chkstk_darwin(v41);
  *(&v141 - 2) = v2;
  *(&v141 - 1) = v31;
  v44 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v43 + v45));
  sub_10084C35C((v43 + v44), &v163);
  os_unfair_lock_unlock((v43 + v45));
  v46 = v163;

  if (v46 != 1)
  {
    v153 = v42;
    v52 = (v31 + *(v162 + 52));
    if (v52[1])
    {
      v53 = *(v2 + v153);
      __chkstk_darwin(v47);
      *(&v141 - 2) = v31;
      v54 = *(*v53 + class metadata base offset for ManagedBuffer + 16);
      v55 = (*(*v53 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v53 + v55));
      sub_10084C388(v53 + v54);
      os_unfair_lock_unlock((v53 + v55));

LABEL_51:
      (*(*v2 + 328))(v56);
      return;
    }

    v144 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v57 = *v52;
    (*(*v2 + 248))(*v52);
    v58 = *(v2 + v153);
    v59 = v58 + *(*v58 + class metadata base offset for ManagedBuffer + 16);
    v60 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v58 + v60));
    v61 = *(v59 + 8);
    if (*(v61 + 16) && (v62 = sub_10072517C(v57), (v63 & 1) != 0))
    {
      v64 = *(*(v61 + 56) + 8 * v62);
    }

    else
    {
      v64 = &_swiftEmptySetSingleton;
    }

    os_unfair_lock_unlock((v58 + v60));

    v164 = v64;
    v65 = v156;
    sub_10084C29C(v31, v156);
    v66 = v155;
    sub_1007139D8(v155, v65);
    sub_10084C300(v66);
    v67 = v164;
    v68 = v164[2];
    v156 = v57;
    v161 = v30;
    if (v68)
    {
      v143 = v2;
      v69 = sub_1008472B4(v68, 0, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v70 = sub_10084B930(&v163, v69 + ((*(v160 + 80) + 32) & ~*(v160 + 80)), v68, v67);

      sub_100308C6C();
      if (v70 != v68)
      {
LABEL_53:
        __break(1u);

        __break(1u);
        return;
      }

      v2 = v143;
      v57 = v156;
    }

    else
    {
      v69 = &_swiftEmptyArrayStorage;
    }

    v163 = v69;
    sub_1008481E4(sub_10084D500, 0);
    v71 = v163;

    v72 = sub_1009364B8();
    v73 = sub_100936F18();
    v74 = os_log_type_enabled(v72, v73);
    v155 = v67;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v75 = 136315650;
      *(v75 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v163);
      *(v75 + 12) = 2048;
      *(v75 + 14) = v57;
      *(v75 + 22) = 2080;
      v76 = sub_100936CF8();
      v78 = sub_10001273C(v76, v77, &v163);

      *(v75 + 24) = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "%s: allKeys for participantID %llu: %s", v75, 0x20u);
      swift_arrayDestroy();
    }

    v79 = v160;
    v80 = *(v71 + 16);
    if (v80)
    {
      v81 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      if (v80 == 1)
      {
        v82 = 0;
      }

      else
      {
        v82 = v80 - 2;
      }

      v83 = v158;
      sub_10084C29C(v71 + v81 + *(v160 + 72) * (v80 - 1), v158);
      (*(v79 + 56))(v83, 0, 1, v162);
      if ((v82 & 0x8000000000000000) == 0)
      {
LABEL_27:
        v84 = sub_10084C3B4(v71 + v81, v82, (2 * v80) | 1);
        v85 = *(v71 + 16);

        if (v85 < v82)
        {
          __break(1u);
          goto LABEL_53;
        }

        v143 = v84;
        v86 = (2 * v82) | 1;

        v87 = sub_1009364B8();
        v88 = sub_100936F18();

        v89 = os_log_type_enabled(v87, v88);
        v142 = v81;
        if (v89)
        {
          v90 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v163 = v161;
          *v90 = 136315650;
          *(v90 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v163);
          *(v90 + 12) = 2048;
          v91 = v156;
          *(v90 + 14) = v156;
          *(v90 + 22) = 2080;
          v92 = v86;
          v93 = v162;
          v94 = sub_1009370A8();
          v96 = v2;
          v97 = sub_10001273C(v94, v95, &v163);

          *(v90 + 24) = v97;
          v2 = v96;
          v98 = v88;
          v99 = v92;
          _os_log_impl(&_mh_execute_header, v87, v98, "%s: removedKeys for participantID %llu: %s", v90, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v99 = v86;
          v93 = v162;
          v91 = v156;
        }

        v100 = *(v2 + v153);
        v101 = *(*v100 + class metadata base offset for ManagedBuffer + 16);
        v102 = (*(*v100 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v100 + v102));
        sub_100842B30((v100 + v101), v91, v143, v71 + v142, v99);
        os_unfair_lock_unlock((v100 + v102));

        v103 = v159;
        v104 = *(v160 + 48);
        v105 = v104(v159, 1, v93);
        if (v105 == 1)
        {
          goto LABEL_45;
        }

        v106 = v93;
        v161 = v71;
        v107 = v149;
        sub_100012D50(v103, v149, &qword_100CB2AA0);
        if (v104(v107, 1, v93) == 1)
        {
          sub_100013814(v107, &qword_100CB2AA0);
          v108 = 1;
          v110 = v150;
          v109 = v151;
          v111 = v147;
          v112 = v93;
          v113 = v152;
          v114 = v157;
        }

        else
        {
          v115 = *(v93 + 20);
          v116 = v151;
          v113 = v152;
          v114 = v157;
          (*(v151 + 16))(v157, v107 + v115, v152);
          sub_10084C300(v107);
          v109 = v116;
          v108 = 0;
          v110 = v150;
          v111 = v147;
          v112 = v106;
        }

        v117 = *(v109 + 56);
        v118 = v114;
        v119 = v109;
        v117(v118, v108, 1, v113);
        sub_100012D50(v158, v111, &qword_100CB2AA0);
        if (v104(v111, 1, v112) == 1)
        {
          sub_100013814(v111, &qword_100CB2AA0);
          v120 = 1;
        }

        else
        {
          (*(v119 + 16))(v110, v111 + *(v112 + 20), v113);
          sub_10084C300(v111);
          v120 = 0;
        }

        v121 = v148;
        v117(v110, v120, 1, v113);
        v122 = *(v121 + 48);
        v123 = v157;
        v124 = v154;
        sub_100012D50(v157, v154, &qword_100CB2D98);
        v125 = v124;
        sub_100012D50(v110, v124 + v122, &qword_100CB2D98);
        v126 = *(v119 + 48);
        if (v126(v125, 1, v113) == 1)
        {
          sub_100013814(v110, &qword_100CB2D98);
          v127 = v154;
          sub_100013814(v123, &qword_100CB2D98);
          v128 = v126(v127 + v122, 1, v113);
          v103 = v159;
          if (v128 == 1)
          {
            sub_100013814(v127, &qword_100CB2D98);
LABEL_49:
            sub_100013814(v158, &qword_100CB2AA0);

LABEL_50:
            v56 = sub_100013814(v103, &qword_100CB2AA0);
            goto LABEL_51;
          }
        }

        else
        {
          v129 = v146;
          sub_100012D50(v125, v146, &qword_100CB2D98);
          v130 = v126(v125 + v122, 1, v113);
          v103 = v159;
          if (v130 != 1)
          {
            v136 = v151;
            v137 = v125 + v122;
            v138 = v145;
            v139 = v152;
            (*(v151 + 32))(v145, v137, v152);
            sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID);
            LODWORD(v162) = sub_100936B18();
            v140 = *(v136 + 8);
            v140(v138, v139);
            sub_100013814(v150, &qword_100CB2D98);
            sub_100013814(v157, &qword_100CB2D98);
            v140(v129, v139);
            v105 = sub_100013814(v154, &qword_100CB2D98);
            v91 = v156;
            if (v162)
            {
              goto LABEL_49;
            }

LABEL_45:
            if ((*(*v2 + 128))(v105))
            {
              v133 = v132;
              ObjectType = swift_getObjectType();
              v135 = v158;
              (*(v133 + 16))(v2, v91, v103, v158, ObjectType, v133);

              swift_unknownObjectRelease();
              sub_100013814(v135, &qword_100CB2AA0);
            }

            else
            {

              sub_100013814(v158, &qword_100CB2AA0);
            }

            goto LABEL_50;
          }

          v131 = v129;
          sub_100013814(v150, &qword_100CB2D98);
          v127 = v154;
          sub_100013814(v157, &qword_100CB2D98);
          (*(v151 + 8))(v131, v152);
        }

        v105 = sub_100013814(v127, &qword_100CB7F78);
        v91 = v156;
        goto LABEL_45;
      }

      __break(1u);
    }

    (*(v79 + 56))(v158, 1, 1, v162);
    v82 = 0;
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    goto LABEL_27;
  }

  v48 = sub_1009364B8();
  v49 = sub_100936F18();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v163 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_10001273C(0x2865766965636572, 0xED0000293A79656BLL, &v163);
    _os_log_impl(&_mh_execute_header, v48, v49, "%s: skipping because we already have the key", v50, 0xCu);
    sub_100012970(v51);
  }
}

uint64_t sub_1008426EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1009360A8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  result = sub_100840A54(a1, a2);
  if (result)
  {
    v17 = 1;
  }

  else
  {
    v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v19 = *(v18 + 20);
    v21 = a1;
    v22 = a3;
    v20 = *(v10 + 16);
    v20(v15, a2 + v19, v9);
    sub_10084C29C(a2, v8);
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    sub_100842910(v8, v15);
    v20(v13, a2 + v19, v9);
    a3 = v22;
    sub_1008473B0(v15, v13);
    result = (*(v10 + 8))(v15, v9);
    v17 = 0;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_100842910(uint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100013814(a1, &qword_100CB2AA0);
    sub_1008496C4(a2, v7);
    v12 = sub_1009360A8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100013814(v7, &qword_100CB2AA0);
  }

  else
  {
    sub_10084CA20(a1, v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10084A2A0(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1009360A8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

unint64_t sub_100842B30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_100706B30(&qword_100CB2D98);
  __chkstk_darwin(v10 - 8);
  v45 = &v39 - v11;
  v12 = sub_100706B30(&qword_100CB2AA0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v46 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v18 = *(v46 - 8);
  __chkstk_darwin(v46);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = a1[1];
  result = sub_10084A488(a3, a2, isUniquelyReferenced_nonNull_native);
  v44 = a1;
  a1[1] = v48;
  if (a5 >= 2)
  {
    v23 = a5 >> 1;
    v42 = *(v46 + 20);
    v43 = (v18 + 56);
    v24 = *(v18 + 72);
    v40 = v17;
    v41 = v15;
    do
    {
      v47 = a4;
      sub_10084C29C(a4, v20);
      v28 = v44;
      sub_100743C1C(v20, v17);
      sub_100013814(v17, &qword_100CB2AA0);
      v29 = v42;
      v30 = v45;
      sub_10084AB38(&v20[v42], v45);
      sub_100013814(v30, &qword_100CB2D98);
      sub_10084AB38(&v20[v29], v30);
      sub_100013814(v30, &qword_100CB2D98);
      v31 = sub_100725034(&v20[v29]);
      v33 = v32;
      sub_10084C300(v20);
      if (v33)
      {
        v34 = v41;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *v28;
        v48 = *v28;
        if (!v35)
        {
          sub_10084A6C4();
          v36 = v48;
        }

        v37 = *(v36 + 48);
        v38 = sub_1009360A8();
        (*(*(v38 - 8) + 8))(v37 + *(*(v38 - 8) + 72) * v31, v38);
        v26 = v34;
        sub_10084CA20(*(v36 + 56) + v31 * v24, v34, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100849F5C(v31, v36);
        v25 = 0;
        *v28 = v36;
        v17 = v40;
      }

      else
      {
        v25 = 1;
        v26 = v41;
      }

      v27 = v47;
      (*v43)(v26, v25, 1, v46);
      result = sub_100013814(v26, &qword_100CB2AA0);
      a4 = v27 + v24;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_100842EE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10084C29C(a2, v6);
  sub_1007139D8(v8, v6);
  return sub_10084C300(v8);
}

uint64_t sub_100842F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1009364B8();
  v9 = sub_100936F18();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = a1;
    v11 = v10;
    v23[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10001273C(0xD000000000000016, 0x8000000100B04480, v23);
    *(v11 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA8, &type metadata accessor for UUID);
    v12 = sub_100937548();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_10001273C(v12, v14, v23);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %s", v11, 0x16u);
    swift_arrayDestroy();

    a1 = v22;
  }

  else
  {

    v16 = (*(v5 + 8))(v7, v4);
  }

  v17 = *(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  __chkstk_darwin(v16);
  *(&v21 - 2) = a1;
  v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v17 + v19));
  sub_10084C538(v17 + v18);
  os_unfair_lock_unlock((v17 + v19));
}

uint64_t sub_1008432BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1009360A8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  (*(v4 + 16))(v7, a2, v3);
  sub_1008473B0(v9, v7);
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1008433D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C564(v1 + v2, &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_100843490()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100B027F0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v7 = v6 + *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  *(v7 + 24) = &_swiftEmptySetSingleton;

  os_unfair_lock_unlock((v6 + v8));
}

uint64_t sub_10084362C()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100B044A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v7 = v6 + *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  *(v7 + 32) = &_swiftEmptySetSingleton;

  os_unfair_lock_unlock((v6 + v8));
}

uint64_t sub_1008437C8(uint64_t a1)
{
  v2 = v1;

  v4 = sub_1009364B8();
  v5 = sub_100936F18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100AFEAE0, &v31);
    *(v6 + 12) = 2080;
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_10084D3C8(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);

    v7 = sub_100936E28();
    v9 = v8;

    v10 = sub_10001273C(v7, v9, &v31);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    v11 = sub_100936E28();
    v13 = sub_10001273C(v11, v12, &v31);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: previous members: %s; new members: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v14 = (*v2 + 296);
  v15 = *v14;
  (*v14)();
  v16 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_currentMembers;

  v18 = sub_1007BF944(v17, a1);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (sub_1007BF658(v18, v20, v22, v24))
  {

    (v15)(v25);
    goto LABEL_12;
  }

  v26 = sub_1007BF698(v18, v20, v22);

  if (v26)
  {
    v28 = *(v2 + v16);
    if ((v28 & 0xC000000000000001) != 0)
    {

      v29 = sub_100937158();

      if (v29 < 1)
      {
        goto LABEL_12;
      }
    }

    else if (*(v28 + 16) < 1)
    {
      goto LABEL_12;
    }

    (v15)(v27);
    if (*(v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_isRatchetEnabled) == 1)
    {
      sub_100843B6C();
    }
  }

LABEL_12:
  *(v2 + v16) = a1;
}

void sub_100843B6C()
{
  v1 = v0;
  v2 = sub_100936038();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 128);
  if (v7)(v4) && (v9 = v8, v10 = swift_getObjectType(), LOBYTE(v9) = (*(v9 + 8))(v10, v9), swift_unknownObjectRelease(), (v9))
  {
    v37 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state;
    v38 = v7;
    v11 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
    v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v11 + v13));
    sub_100935FF8();
    v14 = v11 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialCache2.KMCacheState(0) + 36);
    sub_100935F38();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
    if (v16 <= *sub_1007069E4())
    {
      os_unfair_lock_unlock((v11 + v13));

      v33 = sub_1009364B8();
      v34 = sub_100936F18();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, &v39);
        _os_log_impl(&_mh_execute_header, v33, v34, "%s: ratchet canceled because we just ratcheted recently", v35, 0xCu);
        sub_100012970(v36);
      }
    }

    else
    {
      sub_100935FF8();
      (*(v3 + 40))(v14 + v12, v6, v2);
      os_unfair_lock_unlock((v11 + v13));

      v17 = sub_1009364B8();
      v18 = sub_100936F18();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, &v39);
        _os_log_impl(&_mh_execute_header, v17, v18, "%s: ratchet (rolling)", v19, 0xCu);
        sub_100012970(v20);
      }

      v21 = v38;
      v22 = *(v1 + v37);
      v23 = *(*v22 + class metadata base offset for ManagedBuffer + 16);
      v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v22 + v24));
      sub_10084D474((v22 + v23));
      os_unfair_lock_unlock((v22 + v24));

      if ((v21)(v25))
      {
        v27 = v26;
        ObjectType = swift_getObjectType();
        (*(v27 + 32))(v1, ObjectType, v27);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v38 = sub_1009364B8();
    v29 = sub_100936F18();
    if (os_log_type_enabled(v38, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, &v39);
      _os_log_impl(&_mh_execute_header, v38, v29, "%s: not ratcheting because we are not active in the session", v30, 0xCu);
      sub_100012970(v31);
    }

    else
    {
      v32 = v38;
    }
  }
}

uint64_t sub_100844118(void *a1, uint64_t a2)
{
  v195 = a2;
  v211 = sub_1009360A8();
  v200 = *(v211 - 8);
  v3 = __chkstk_darwin(v211);
  v212 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v178 = &v176 - v6;
  __chkstk_darwin(v5);
  v177 = &v176 - v7;
  v8 = sub_100706B30(&qword_100CB2AA0);
  v9 = __chkstk_darwin(v8 - 8);
  v181 = (&v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v189 = &v176 - v12;
  __chkstk_darwin(v11);
  v14 = (&v176 - v13);
  v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v210 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v203 = &v176 - v20;
  v21 = __chkstk_darwin(v19);
  v180 = &v176 - v22;
  v23 = __chkstk_darwin(v21);
  v179 = &v176 - v24;
  v25 = __chkstk_darwin(v23);
  v183 = &v176 - v26;
  v27 = __chkstk_darwin(v25);
  v188 = &v176 - v28;
  v29 = __chkstk_darwin(v27);
  v209 = &v176 - v30;
  v31 = __chkstk_darwin(v29);
  v192 = &v176 - v32;
  v33 = __chkstk_darwin(v31);
  v191 = &v176 - v34;
  v35 = __chkstk_darwin(v33);
  v197 = &v176 - v36;
  v37 = __chkstk_darwin(v35);
  v202 = &v176 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v176 - v40;
  __chkstk_darwin(v39);
  v205 = &v176 - v42;
  v206 = sub_10084BEBC(&_swiftEmptyArrayStorage);
  v43 = v41;
  v198 = sub_10084C0D8(&_swiftEmptyArrayStorage);
  v215 = &_swiftEmptySetSingleton;
  v190 = a1;
  v44 = a1[2];
  v45 = v44 + 56;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 56);
  v194 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v49 = (v46 + 63) >> 6;
  v208 = v16;
  v201 = (v16 + 48);
  v193 = v44;

  v50 = 0;
  *&v51 = 136315394;
  v184 = v51;
  v207 = v15;
  v204 = v14;
  v196 = v43;
  v199 = v49;
  while (v48)
  {
    v58 = v209;
LABEL_14:
    v60 = v205;
    sub_10084C29C(*(v193 + 48) + *(v208 + 72) * (__clz(__rbit64(v48)) | (v50 << 6)), v205);
    sub_10084CA20(v60, v43, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v61 = *(v43 + *(v15 + 40));
    if (v61 == -1)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      sub_1009375D8();
      __break(1u);
      goto LABEL_82;
    }

    sub_10074A030(v61 + 1, v14);
    if ((*v201)(v14, 1, v15) == 1)
    {
      sub_100013814(v14, &qword_100CB2AA0);
      sub_10084C29C(v43, v58);
      v62 = sub_1009364B8();
      v63 = sub_100936F18();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v213[0] = v187;
        *v64 = v184;
        *(v64 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v213);
        *(v64 + 12) = 2080;
        sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        LODWORD(v186) = v63;
        v65 = sub_100937548();
        v67 = v66;
        sub_10084C300(v58);
        v68 = sub_10001273C(v65, v67, v213);
        v15 = v207;

        *(v64 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v62, v186, "%s: ratchet failed for keyWithoutParticipantID: %s", v64, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10084C300(v58);
      }

      v52 = *(v15 + 20);
      v53 = v191;
      sub_10084C29C(v43, v191);
      v54 = v206;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213[0] = v54;
      sub_10084A2A0(v53, v43 + v52, isUniquelyReferenced_nonNull_native);
      v206 = v213[0];
      v56 = v192;
      sub_10084C29C(v43, v192);
      sub_1007139D8(v53, v56);
      v57 = v53;
    }

    else
    {
      v69 = v202;
      sub_10084CA20(v14, v202, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v70 = v197;
      sub_10084C29C(v69, v197);
      v71 = sub_1009364B8();
      v72 = sub_100936F18();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v213[0] = v187;
        *v73 = v184;
        *(v73 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v213);
        *(v73 + 12) = 2080;
        sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v74 = sub_100937548();
        v76 = v75;
        sub_10084C300(v70);
        v77 = sub_10001273C(v74, v76, v213);
        v15 = v207;

        *(v73 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v71, v72, "%s: ratchet to new remote keyWithoutParticipantID: %s", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10084C300(v70);
      }

      v78 = *(v15 + 20);
      v79 = v202;
      v80 = v191;
      sub_10084C29C(v202, v191);
      v81 = v206;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v213[0] = v81;
      sub_10084A2A0(v80, v79 + v78, v82);
      v206 = v213[0];
      v83 = v192;
      sub_10084C29C(v79, v192);
      sub_1007139D8(v80, v83);
      sub_10084C300(v80);
      v57 = v79;
      v43 = v196;
    }

    v48 &= v48 - 1;
    sub_10084C300(v57);
    sub_10084C300(v43);
    v14 = v204;
    v49 = v199;
  }

  v58 = v209;
  while (1)
  {
    v59 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_74;
    }

    if (v59 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v59);
    ++v50;
    if (v48)
    {
      v50 = v59;
      goto LABEL_14;
    }
  }

  v84 = v190;
  v85 = v190[1];
  v86 = v85 + 64;
  v87 = 1 << *(v85 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v199 = v88 & *(v85 + 64);
  v89 = (v87 + 63) >> 6;
  v209 = (v200 + 16);
  v204 = (v200 + 8);
  v187 = v85;

  v90 = 0;
  v91 = v206;
  v186 = v86;
  v185 = v89;
LABEL_27:
  v94 = v189;
  v95 = v188;
  v96 = v199;
  if (!v199)
  {
    while (1)
    {
      v97 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_75;
      }

      if (v97 >= v89)
      {

        v175 = v215;
        *v84 = v91;
        v84[1] = v198;
        v84[2] = v175;
        return result;
      }

      v96 = *(v86 + 8 * v97);
      ++v90;
      if (v96)
      {
        goto LABEL_32;
      }
    }
  }

  v97 = v90;
LABEL_32:
  v98 = (v97 << 9) | (8 * __clz(__rbit64(v96)));
  v99 = *(*(v187 + 48) + v98);
  v214 = *(*(v187 + 56) + v98);
  v202 = v214;

  v196 = v99;
  sub_100841168(v84, v99, v94);
  v100 = *v201;
  v101 = (*v201)(v94, 1, v15);
  v197 = v97;
  if (v101 == 1)
  {
    sub_100013814(v94, &qword_100CB2AA0);
LABEL_52:
    v199 = (v96 - 1) & v96;
    v142 = v202;
    v143 = v202 + 56;
    v144 = 1 << *(v202 + 32);
    if (v144 < 64)
    {
      v145 = ~(-1 << v144);
    }

    else
    {
      v145 = -1;
    }

    v146 = v145 & *(v202 + 56);
    v147 = (v144 + 63) >> 6;

    v148 = 0;
    v205 = v147;
    v206 = v143;
    while (v146)
    {
      v149 = v148;
LABEL_63:
      v150 = *(v208 + 72);
      v151 = v203;
      sub_10084C29C(*(v142 + 48) + v150 * (__clz(__rbit64(v146)) | (v149 << 6)), v203);
      v152 = *(v15 + 20);
      v153 = *v209;
      v154 = v212;
      (*v209)(v212, v151 + v152, v211);
      sub_10084CA20(v151, v210, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v213[0] = v91;
      v156 = sub_100725034(v154);
      v158 = v91[2];
      v159 = (v157 & 1) == 0;
      v160 = __OFADD__(v158, v159);
      v161 = v158 + v159;
      if (v160)
      {
        goto LABEL_76;
      }

      v162 = v157;
      if (v91[3] >= v161)
      {
        if ((v155 & 1) == 0)
        {
          v173 = v156;
          sub_10084A6C4();
          v156 = v173;
        }
      }

      else
      {
        sub_100849860(v161, v155);
        v156 = sub_100725034(v212);
        if ((v162 & 1) != (v163 & 1))
        {
          goto LABEL_81;
        }
      }

      v146 &= v146 - 1;
      v91 = v213[0];
      if (v162)
      {
        sub_10084D410(v210, *(v213[0] + 56) + v156 * v150);
        (*v204)(v212, v211);
        v148 = v149;
        v15 = v207;
      }

      else
      {
        *(v213[0] + 8 * (v156 >> 6) + 64) |= 1 << v156;
        v164 = v200;
        v165 = v156;
        v166 = v91[6] + *(v200 + 72) * v156;
        v167 = v91;
        v168 = v211;
        v169 = v212;
        v153(v166, v212, v211);
        sub_10084CA20(v210, v167[7] + v165 * v150, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v170 = v169;
        v91 = v167;
        (*(v164 + 8))(v170, v168);
        v171 = v167[2];
        v160 = __OFADD__(v171, 1);
        v172 = v171 + 1;
        if (v160)
        {
          goto LABEL_77;
        }

        v167[2] = v172;
        v148 = v149;
        v15 = v207;
        v142 = v202;
      }

      v147 = v205;
      v143 = v206;
    }

    while (1)
    {
      v149 = v148 + 1;
      if (__OFADD__(v148, 1))
      {
        break;
      }

      if (v149 >= v147)
      {

        v92 = v198;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v213[0] = v92;
        sub_10084A488(v142, v196, v93);
        v198 = v213[0];
        v90 = v197;
        v84 = v190;
        v86 = v186;
        v89 = v185;
        goto LABEL_27;
      }

      v146 = *(v143 + 8 * v149);
      ++v148;
      if (v146)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_10084CA20(v94, v95, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v102 = *(v95 + *(v15 + 40));
  if (v102 == -1)
  {
    goto LABEL_79;
  }

  v103 = v15;
  v104 = v181;
  sub_10074A030(v102 + 1, v181);
  if (v100(v104, 1, v103) == 1)
  {
    sub_100013814(v104, &qword_100CB2AA0);
    v105 = v180;
    sub_10084C29C(v95, v180);
    v106 = sub_1009364B8();
    v107 = sub_100936F18();
    if (!os_log_type_enabled(v106, v107))
    {

      sub_10084C300(v105);
      sub_10084C300(v95);
      v15 = v207;
      goto LABEL_52;
    }

    v108 = swift_slowAlloc();
    LODWORD(v205) = v107;
    v109 = v108;
    v206 = swift_slowAlloc();
    v213[0] = v206;
    *v109 = v184;
    *(v109 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v213);
    *(v109 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v15 = v207;
    v110 = sub_100937548();
    v112 = v111;
    sub_10084C300(v105);
    v113 = sub_10001273C(v110, v112, v213);

    *(v109 + 14) = v113;
    _os_log_impl(&_mh_execute_header, v106, v205, "%s: cannot ratchet for key: %s", v109, 0x16u);
    swift_arrayDestroy();

LABEL_51:
    sub_10084C300(v95);
    goto LABEL_52;
  }

  v114 = v183;
  sub_10084CA20(v104, v183, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v115 = v114;
  v116 = v179;
  sub_10084C29C(v115, v179);
  v117 = sub_1009364B8();
  v118 = sub_100936F18();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v213[0] = v206;
    *v119 = v184;
    *(v119 + 4) = sub_10001273C(0x4B74656863746172, 0xED00002928737965, v213);
    *(v119 + 12) = 2080;
    sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    LODWORD(v205) = v118;
    v120 = v207;
    v121 = sub_100937548();
    v122 = v116;
    v123 = v121;
    v125 = v124;
    sub_10084C300(v122);
    v126 = sub_10001273C(v123, v125, v213);

    *(v119 + 14) = v126;
    _os_log_impl(&_mh_execute_header, v117, v205, "%s: ratchet to new remote key: %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10084C300(v116);
    v120 = v207;
  }

  v127 = v192;
  sub_10084C29C(v183, v192);
  v128 = v191;
  sub_1007139D8(v191, v127);
  sub_10084C300(v128);
  v129 = v214;
  v130 = *(v214 + 16);
  if (v130)
  {
    v131 = sub_1008472B4(*(v214 + 16), 0, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v132 = sub_10084B930(v213, v131 + ((*(v208 + 80) + 32) & ~*(v208 + 80)), v130, v129);
    v205 = v213[2];
    v206 = v132;
    v202 = v213[3];
    v199 = v213[4];

    sub_100308C6C();
    if (v206 != v130)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v131 = &_swiftEmptyArrayStorage;
  }

  v213[0] = v131;
  v133 = v182;
  sub_1008481E4(sub_10084D500, 0);
  v182 = v133;
  if (!v133)
  {

    v134 = *(v213[0] + 16);
    if (v134 >= 2)
    {
      v135 = v134 - 2;
    }

    else
    {
      v135 = 0;
    }

    v202 = sub_10084C3B4(v213[0] + ((*(v208 + 80) + 32) & ~*(v208 + 80)), v135, (2 * v134) | 1);

    v136 = v183;
    v137 = v183 + *(v120 + 20);
    v138 = v178;
    v139 = v211;
    (*v209)(v178, v137, v211);
    v140 = v177;
    v141 = v138;
    v15 = v207;
    sub_1008473B0(v177, v141);
    (*v204)(v140, v139);
    sub_10084C300(v136);
    goto LABEL_51;
  }

LABEL_82:

  __break(1u);
  return result;
}

BOOL sub_1008455C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = *(v4 + 40);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  return v6 < v7 || v6 == v7 && *(a1 + *(v4 + 44)) < *(a2 + *(v4 + 44));
}

uint64_t sub_100845634()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10084C5A4((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;

  return v4;
}

uint64_t sub_1008456E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v57 = sub_1009360A8();
  v6 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v56 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v54 = &v48 - v13;
  __chkstk_darwin(v12);
  v53 = &v48 - v14;
  v15 = a1[4];
  v16 = *(v15 + 16);
  v49 = a3;
  if (v16)
  {
    v17 = sub_1008472B4(v16, 0, &qword_100CB81E0, &unk_1009B8F90, &type metadata accessor for UUID);
    v18 = sub_10084BB80(v59, &v17[(*(v6 + 80) + 32) & ~*(v6 + 80)], v16, v15);
    v50 = v59[3];
    v51 = v59[2];
    v48 = v59[4];

    result = sub_100308C6C();
    if (v18 != v16)
    {
      goto LABEL_23;
    }

    a3 = v49;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v59[0] = v17;
  result = sub_10084B0E8();
  v20 = v59[0];
  v59[0] = &_swiftEmptySetSingleton;
  v21 = *(*(a2 + 16) + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_numberOfCachedMKMsToBroadcast);
  if (*(v20 + 16) >= v21)
  {
    v22 = *(*(a2 + 16) + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_numberOfCachedMKMsToBroadcast);
  }

  else
  {
    v22 = *(v20 + 16);
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

    v24 = sub_1009364B8();
    v25 = sub_100936F18();
    v51 = v24;
    v26 = os_log_type_enabled(v24, v25);
    v48 = v20;
    if (v26)
    {
      v27 = swift_slowAlloc();
      LODWORD(v50) = v25;
      v28 = v27;
      v58 = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_10001273C(0xD000000000000024, 0x8000000100B027A0, &v58);
      *(v28 + 12) = 2048;
      *(v28 + 14) = v22;

      *(v28 + 22) = 2080;
      v29 = sub_1009370A8();
      v31 = sub_10001273C(v29, v30, &v58);

      *(v28 + 24) = v31;
      v32 = v51;
      _os_log_impl(&_mh_execute_header, v51, v50, "%s: sampling %ld kis: %s", v28, 0x20u);
      swift_arrayDestroy();

      if (v22)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v22)
      {
LABEL_11:
        v33 = *a1;
        v36 = *(v6 + 16);
        v34 = v6 + 16;
        v35 = v36;
        v37 = *(v34 + 56);
        v38 = (v34 - 8);
        v51 = v36;
        v52 = v8;
        v50 = v34;
        (v36)(v8, v23, v57);
        while (1)
        {
          if (*(v33 + 16) && (v39 = sub_100725034(v8), (v40 & 1) != 0))
          {
            v41 = v53;
            sub_10084C29C(*(v33 + 56) + *(v56 + 72) * v39, v53);
            (*v38)(v8, v57);
            v42 = v55;
            sub_10084C29C(v41, v55);
            v43 = v37;
            v44 = v33;
            v45 = v54;
            v8 = v52;
            sub_1007139D8(v54, v42);
            v46 = v45;
            v33 = v44;
            v37 = v43;
            sub_10084C300(v46);
            v47 = v41;
            v35 = v51;
            sub_10084C300(v47);
          }

          else
          {
            (*v38)(v8, v57);
          }

          v23 += v37;
          if (!--v22)
          {
            break;
          }

          (v35)(v8, v23, v57);
        }

        a3 = v49;
        goto LABEL_21;
      }
    }

LABEL_21:
    *a3 = v59[0];
    return result;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100845C0C()
{
  v1 = v0;
  v2 = sub_100936038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936028();
  v6 = *(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v23 = v0;
  v24 = v5;
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  sub_10084C5D0((v6 + v7), &v25);
  os_unfair_lock_unlock((v6 + v8));
  v9 = v25;

  v10 = sub_1009364B8();
  v11 = sub_100936F18();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v2;
    v25 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_10001273C(0xD000000000000013, 0x8000000100B044C0, &v25);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(v9 + 16);

    *(v12 + 22) = 2080;
    sub_1009360A8();
    v14 = sub_100936CF8();
    v16 = sub_10001273C(v14, v15, &v25);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: removing %ld expired keys: %s", v12, 0x20u);
    swift_arrayDestroy();
    v2 = v22;

    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!*(v9 + 16))
    {
LABEL_7:

      return (*(v3 + 8))(v5, v2);
    }
  }

  if (!(*(*v1 + 128))())
  {
    goto LABEL_7;
  }

  v18 = v17;
  ObjectType = swift_getObjectType();
  (*(v18 + 24))(v9, v1, ObjectType, v18);

  swift_unknownObjectRelease();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100845F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v90 = a4;
  v9 = sub_100706B30(&qword_100CB2D98);
  __chkstk_darwin(v9 - 8);
  v105 = &v89 - v10;
  v11 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v11 - 8);
  v104 = &v89 - v12;
  v103 = sub_1009360A8();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103 - 8);
  v110 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v101 = *(v14 - 8);
  v102 = v14;
  v15 = __chkstk_darwin(v14);
  v107 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v109 = &v89 - v18;
  v19 = __chkstk_darwin(v17);
  v114 = &v89 - v20;
  __chkstk_darwin(v19);
  v100 = &v89 - v21;
  v22 = *a1;
  v106 = a2;
  v117 = a2;
  v118 = a3;

  v23 = sub_100846A00(sub_10084CA88, v116, v22);
  v24 = v5;
  v113 = sub_10084CAB8(v23);

  v115 = a1;
  v25 = a1[1];
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  v30 = (v27 + 63) >> 6;
  v112 = v25;

  v31 = 0;
  while (v29)
  {
LABEL_11:
    v33 = v113;
    v34 = *(v112[6] + ((v31 << 9) | (8 * __clz(__rbit64(v29)))));

    v36 = v24;
    v37 = sub_10084CF58(v35, v33);
    v111 = v36;

    v38 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v38[1];
    v119 = v40;
    v41 = sub_10072517C(v34);
    v43 = *(v40 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_41;
    }

    v47 = v42;
    if (*(v40 + 24) < v46)
    {
      sub_100849CEC(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_10072517C(v34);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_43;
      }

LABEL_16:
      v49 = v119;
      if (v47)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v52 = v41;
    sub_10084A9DC();
    v41 = v52;
    v49 = v119;
    if (v47)
    {
LABEL_4:
      *(v49[7] + 8 * v41) = v37;

      goto LABEL_5;
    }

LABEL_17:
    v49[(v41 >> 6) + 8] |= 1 << v41;
    *(v49[6] + 8 * v41) = v34;
    *(v49[7] + 8 * v41) = v37;
    v50 = v49[2];
    v45 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v45)
    {
      goto LABEL_42;
    }

    v49[2] = v51;
LABEL_5:
    v29 &= v29 - 1;
    v115[1] = v49;
    v24 = v111;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_11;
    }
  }

  v111 = v24;

  v54 = 0;
  v55 = v113 + 56;
  v56 = 1 << *(v113 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v113 + 56);
  v98 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v59 = (v56 + 63) >> 6;
  v92 = "resetKeysForPropagate()";
  v96 = (v108 + 16);
  v95 = v108 + 32;
  v112 = &_swiftEmptyArrayStorage;
  *&v53 = 136315650;
  v91 = v53;
  v60 = v109;
  v99 = v113 + 56;
  v97 = v59;
  for (i = v107; v58; i = v107)
  {
LABEL_29:
    v64 = v100;
    sub_10084C29C(*(v113 + 48) + *(v101 + 72) * (__clz(__rbit64(v58)) | (v54 << 6)), v100);
    v65 = v64;
    v66 = v114;
    sub_10084CA20(v65, v114, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_10084C29C(v66, v60);
    sub_10084C29C(v66, i);
    v67 = sub_1009364B8();
    v68 = sub_100936F18();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v119 = v94;
      *v69 = v91;
      *(v69 + 4) = sub_10001273C(0xD000000000000013, v92 | 0x8000000000000000, &v119);
      *(v69 + 12) = 2080;
      v70 = v102;
      v93 = v68;
      sub_10084D3C8(&qword_100CB2DA8, &type metadata accessor for UUID);
      v71 = v103;
      v72 = sub_100937548();
      v74 = v73;
      sub_10084C300(v109);
      v75 = sub_10001273C(v72, v74, &v119);

      *(v69 + 14) = v75;
      *(v69 + 22) = 2080;
      sub_10084D3C8(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v76 = sub_100937548();
      v78 = v77;
      sub_10084C300(i);
      v79 = sub_10001273C(v76, v78, &v119);

      *(v69 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v67, v93, "%s: removing expired key %s: %s", v69, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10084C300(i);
      sub_10084C300(v60);
      v70 = v102;
      v71 = v103;
    }

    v80 = *(v70 + 20);
    (*v96)(v110, v114 + v80, v71);
    v81 = v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1008470DC(0, v81[2] + 1, 1, v81);
    }

    v83 = v81[2];
    v82 = v81[3];
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1008470DC(v82 > 1, v83 + 1, 1, v81);
    }

    v58 &= v58 - 1;
    v81[2] = v83 + 1;
    v84 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v112 = v81;
    (*(v108 + 32))(v81 + v84 + *(v108 + 72) * v83, v110, v71);
    v85 = v114;
    v86 = v104;
    sub_1008496C4(v114 + v80, v104);
    sub_100013814(v86, &qword_100CB2AA0);
    sub_100743C1C(v85, v86);
    sub_100013814(v86, &qword_100CB2AA0);
    v87 = v105;
    sub_10084AB38(v85 + v80, v105);
    sub_100013814(v87, &qword_100CB2D98);
    sub_10084AB38(v85 + v80, v87);
    sub_100013814(v87, &qword_100CB2D98);
    sub_10084C300(v85);
    v55 = v99;
    v59 = v97;
    v60 = v109;
  }

  v62 = v112;
  while (1)
  {
    v63 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v63 >= v59)
    {

      *v90 = v62;
      return result;
    }

    v58 = *(v55 + 8 * v63);
    ++v54;
    if (v58)
    {
      v54 = v63;
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1008468F4()
{
  v0 = sub_100936038();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  sub_100935F48();
  v4 = sub_100935F78();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100846A00(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v38 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - v9;
  result = __chkstk_darwin(v8);
  v13 = &v32 - v12;
  v14 = 0;
  v39 = a3;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v35 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v23 = *(v38 + 72);
    sub_10084C29C(*(v39 + 56) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v10);
    sub_10084CA20(v10, v13, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v24 = v36(v13);
    if (v3)
    {
      sub_10084C300(v13);
      v31 = v35;

      return v31;
    }

    v20 &= v20 - 1;
    if (v24)
    {
      sub_10084CA20(v13, v34, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v25 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10084B710(0, v25[2] + 1, 1);
        v25 = v40;
      }

      v28 = v25[2];
      v27 = v25[3];
      v29 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        v35 = (v28 + 1);
        v33 = v28;
        sub_10084B710(v27 > 1, v28 + 1, 1);
        v29 = v35;
        v28 = v33;
        v25 = v40;
      }

      v25[2] = v29;
      v30 = *(v38 + 80);
      v35 = v25;
      result = sub_10084CA20(v34, v25 + ((v30 + 32) & ~v30) + v28 * v23, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    }

    else
    {
      result = sub_10084C300(v13);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v35;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100846CF0()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001273C(0x29287465736572, 0xE700000000000000, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: resetting...", v4, 0xCu);
    sub_100012970(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_state);
  v7 = (v6 + *(*v6 + class metadata base offset for ManagedBuffer + 16));
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  v9 = sub_10084BEBC(&_swiftEmptyArrayStorage);

  *v7 = v9;
  v10 = sub_10084C0D8(&_swiftEmptyArrayStorage);

  v7[1] = v10;

  v7[2] = &_swiftEmptySetSingleton;

  v7[3] = &_swiftEmptySetSingleton;

  v7[4] = &_swiftEmptySetSingleton;
  os_unfair_lock_unlock((v6 + v8));
}

uint64_t sub_100846ED8()
{
  v1 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_l;
  v2 = sub_1009364D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100308C44(v0 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_delegate);

  return swift_deallocClassInstance();
}

char *sub_100846FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&unk_100CBA2D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1008470DC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100706B30(&qword_100CB81E0);
  v10 = *(sub_1009360A8() - 8);
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
  v15 = *(sub_1009360A8() - 8);
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

void *sub_1008472B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100706B30(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008473B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1009360A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
  v33 = a2;
  v11 = sub_100936AC8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID);
      v21 = sub_100936B18();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1008479EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100847690()
{
  v1 = v0;
  v35 = sub_1009360A8();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100706B30(&qword_100CB81D0);
  result = sub_100937208();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
      result = sub_100936AC8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1008479EC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1009360A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100847690();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100847C90();
      goto LABEL_12;
    }

    sub_100847EC8();
  }

  v12 = *v3;
  sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
  v13 = sub_100936AC8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID);
      v21 = sub_100936B18();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void *sub_100847C90()
{
  v1 = v0;
  v2 = sub_1009360A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB81D0);
  v6 = *v0;
  v7 = sub_1009371F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100847EC8()
{
  v1 = v0;
  v32 = sub_1009360A8();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100706B30(&qword_100CB81D0);
  v6 = sub_100937208();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
      result = sub_100936AC8();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
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
    *v1 = v6;
  }

  return result;
}

Swift::Int sub_1008481E4(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10084BE24(v5);
  }

  result = sub_1008482A4(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_1008482A4(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_100937538(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
        v9 = sub_100936D28();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialContent() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_100848620(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1008483E0(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1008483E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_10084C29C(v22, v17);
      sub_10084C29C(v23, v13);
      v24 = v37(v17, v13);
      sub_10084C300(v13);
      result = sub_10084C300(v17);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_10084CA20(v22, v35, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10084CA20(v25, v23, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100848620(char **a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v138 = a5;
  v139 = a4;
  v127 = a1;
  v132 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v137 = *(v132 - 8);
  v9 = __chkstk_darwin(v132);
  v128 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v130 = &v117 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v117 - v14;
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v117 - v19;
  v21 = __chkstk_darwin(v18);
  result = __chkstk_darwin(v21);
  v27 = a3[1];
  v133 = a3;
  if (v27 < 1)
  {
    v29 = &_swiftEmptyArrayStorage;
LABEL_97:
    v30 = v138;
    v15 = *v127;
    if (*v127)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v121 = &v117 - v23;
  v122 = v26;
  v134 = v25;
  v129 = v24;
  v120 = a6;
  v28 = 0;
  v29 = &_swiftEmptyArrayStorage;
  v131 = v15;
  v124 = v20;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v31 >= v27)
    {
      v43 = v31;
    }

    else
    {
      v126 = v27;
      v32 = *a3;
      v33 = *(v137 + 72);
      v34 = v30;
      v35 = v32 + v33 * v31;
      v36 = v121;
      sub_10084C29C(v35, v121);
      v123 = v32;
      v37 = v122;
      sub_10084C29C(v32 + v33 * v34, v122);
      LODWORD(v136) = v139(v36, v37);
      if (v6)
      {
        sub_10084C300(v37);
        v116 = v36;
        goto LABEL_109;
      }

      sub_10084C300(v37);
      result = sub_10084C300(v36);
      v119 = v126 - 1;
      v135 = v126 - 2;
      v38 = v123 + v33 * (v34 + 2);
      v123 = v34;
      v39 = v34;
      while (v135 != v39)
      {
        sub_10084C29C(v38, v20);
        v40 = v20;
        v41 = v134;
        sub_10084C29C(v35, v134);
        v42 = v139(v40, v41);
        sub_10084C300(v41);
        result = sub_10084C300(v40);
        ++v39;
        v38 += v33;
        v35 += v33;
        v20 = v40;
        if ((v136 ^ v42))
        {
          v43 = v39 + 1;
          goto LABEL_12;
        }
      }

      v39 = v119;
      v43 = v126;
LABEL_12:
      v15 = v131;
      v30 = v123;
      if ((v136 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v123)
      {
        goto LABEL_133;
      }

      if (v123 <= v39)
      {
        v44 = v43;
        v45 = v33 * (v43 - 1);
        v46 = v43 * v33;
        v125 = v33;
        v126 = v43;
        v47 = v123;
        v48 = v123 * v33;
        do
        {
          if (v47 != --v44)
          {
            v49 = *v133;
            if (!*v133)
            {
              goto LABEL_137;
            }

            sub_10084CA20(v49 + v48, v128, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            if (v48 < v45 || v49 + v48 >= (v49 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10084CA20(v128, v49 + v45, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v33 = v125;
          }

          ++v47;
          v45 -= v33;
          v46 -= v33;
          v48 += v33;
        }

        while (v47 < v44);
        a3 = v133;
        v15 = v131;
        v30 = v123;
        v43 = v126;
      }

      else
      {
LABEL_15:
        a3 = v133;
      }
    }

    v50 = a3[1];
    if (v43 >= v50)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v30))
    {
      goto LABEL_129;
    }

    if (v43 - v30 >= v120)
    {
LABEL_36:
      v52 = v43;
      if (v43 < v30)
      {
        goto LABEL_128;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v120))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v30 + v120 >= v50)
    {
      v51 = a3[1];
    }

    else
    {
      v51 = v30 + v120;
    }

    if (v51 < v30)
    {
      goto LABEL_132;
    }

    if (v43 == v51)
    {
      goto LABEL_36;
    }

    v99 = *a3;
    v100 = *(v137 + 72);
    v101 = *a3 + v100 * (v43 - 1);
    v102 = -v100;
    v123 = v30;
    v103 = v30 - v43;
    v126 = v43;
    v136 = v99;
    v117 = v100;
    v104 = v99 + v43 * v100;
    v135 = v51;
    do
    {
      v118 = v104;
      v119 = v103;
      v105 = v103;
      v125 = v101;
      do
      {
        v106 = v129;
        sub_10084C29C(v104, v129);
        sub_10084C29C(v101, v15);
        v107 = v139(v106, v15);
        if (v6)
        {
          sub_10084C300(v15);
          v116 = v106;
LABEL_109:
          sub_10084C300(v116);
        }

        v108 = v107;
        sub_10084C300(v15);
        result = sub_10084C300(v106);
        if ((v108 & 1) == 0)
        {
          break;
        }

        if (!v136)
        {
          goto LABEL_135;
        }

        v109 = v130;
        sub_10084CA20(v104, v130, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        swift_arrayInitWithTakeFrontToBack();
        sub_10084CA20(v109, v101, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v101 += v102;
        v104 += v102;
        v110 = __CFADD__(v105++, 1);
        v15 = v131;
      }

      while (!v110);
      v101 = v125 + v117;
      v103 = v119 - 1;
      v104 = v118 + v117;
      v52 = v135;
      ++v126;
    }

    while (v126 != v135);
    a3 = v133;
    v30 = v123;
    if (v135 < v123)
    {
      goto LABEL_128;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100846FD8(0, *(v29 + 2) + 1, 1, v29);
      v29 = result;
    }

    v54 = *(v29 + 2);
    v53 = *(v29 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_100846FD8((v53 > 1), v54 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = v55;
    v56 = &v29[16 * v54];
    *(v56 + 4) = v30;
    *(v56 + 5) = v52;
    v57 = *v127;
    if (!*v127)
    {
      goto LABEL_138;
    }

    v135 = v52;
    if (v54)
    {
      break;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v135;
    v20 = v124;
    if (v135 >= v27)
    {
      goto LABEL_97;
    }
  }

  while (2)
  {
    v30 = v55 - 1;
    if (v55 >= 4)
    {
      v62 = &v29[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_115;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_116;
      }

      v69 = &v29[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_118;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_121;
      }

      if (v73 >= v65)
      {
        v91 = &v29[16 * v30 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_127;
        }

        if (v60 < v94)
        {
          v30 = v55 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v61)
        {
          goto LABEL_117;
        }

        v74 = &v29[16 * v55];
        v76 = *v74;
        v75 = *(v74 + 1);
        v77 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        v79 = v77;
        if (v77)
        {
          goto LABEL_120;
        }

        v80 = &v29[16 * v30 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_123;
        }

        if (__OFADD__(v78, v83))
        {
          goto LABEL_124;
        }

        if (v78 + v83 < v60)
        {
          goto LABEL_70;
        }

        if (v60 < v83)
        {
          v30 = v55 - 2;
        }
      }
    }

    else
    {
      if (v55 == 3)
      {
        v58 = *(v29 + 4);
        v59 = *(v29 + 5);
        v68 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        v61 = v68;
        goto LABEL_56;
      }

      v84 = &v29[16 * v55];
      v86 = *v84;
      v85 = *(v84 + 1);
      v68 = __OFSUB__(v85, v86);
      v78 = v85 - v86;
      v79 = v68;
LABEL_70:
      if (v79)
      {
        goto LABEL_119;
      }

      v87 = &v29[16 * v30];
      v89 = *(v87 + 4);
      v88 = *(v87 + 5);
      v68 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v68)
      {
        goto LABEL_122;
      }

      if (v90 < v78)
      {
        goto LABEL_3;
      }
    }

    v95 = v30 - 1;
    if (v30 - 1 < v55)
    {
      if (!*a3)
      {
        goto LABEL_134;
      }

      v96 = *&v29[16 * v95 + 32];
      v97 = *&v29[16 * v30 + 40];
      sub_100848FE8(*a3 + *(v137 + 72) * v96, *a3 + *(v137 + 72) * *&v29[16 * v30 + 32], *a3 + *(v137 + 72) * v97, v57, v139, v138);
      if (v6)
      {
      }

      if (v97 < v96)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1008495CC(v29);
      }

      if (v95 >= *(v29 + 2))
      {
        goto LABEL_114;
      }

      v98 = &v29[16 * v95];
      *(v98 + 4) = v96;
      *(v98 + 5) = v97;
      v140 = v29;
      result = sub_100849540(v30);
      v29 = v140;
      v55 = *(v140 + 2);
      if (v55 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
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
LABEL_121:
  __break(1u);
LABEL_122:
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
  result = sub_1008495CC(v29);
  v29 = result;
LABEL_99:
  v140 = v29;
  v111 = *(v29 + 2);
  if (v111 < 2)
  {
  }

  while (1)
  {
    v112 = *a3;
    if (!*a3)
    {
      break;
    }

    a3 = (v111 - 1);
    v113 = *&v29[16 * v111];
    v114 = *&v29[16 * v111 + 24];
    sub_100848FE8(v112 + *(v137 + 72) * v113, v112 + *(v137 + 72) * *&v29[16 * v111 + 16], v112 + *(v137 + 72) * v114, v15, v139, v30);
    if (v6)
    {
    }

    if (v114 < v113)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1008495CC(v29);
    }

    if (v111 - 2 >= *(v29 + 2))
    {
      goto LABEL_126;
    }

    v115 = &v29[16 * v111];
    *v115 = v113;
    *(v115 + 1) = v114;
    v140 = v29;
    result = sub_100849540(a3);
    v29 = v140;
    v111 = *(v140 + 2);
    a3 = v133;
    if (v111 <= 1)
    {
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_100848FE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, char *), uint64_t a6)
{
  v7 = v6;
  v58 = a6;
  v59 = a5;
  v57 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v12 = __chkstk_darwin(v57);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v54 = &v48 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v48 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v48 - v21;
  v56 = *(v23 + 72);
  if (!v56)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_65;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_66;
  }

  v55 = a3;
  v25 = (a2 - a1) / v56;
  v62 = a1;
  v61 = a4;
  if (v25 >= v24 / v56)
  {
    v27 = v24 / v56 * v56;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v27;
    if (v27 >= 1)
    {
      v35 = v55;
      v36 = -v56;
      v37 = v34;
      v50 = v14;
      v51 = a1;
      do
      {
        v48 = v34;
        v38 = a2;
        v52 = a2;
        v53 = a2 + v36;
        while (1)
        {
          if (v38 <= a1)
          {
            v62 = v38;
            v34 = v48;
            goto LABEL_62;
          }

          v39 = v35;
          v49 = v34;
          v40 = v7;
          v41 = a4;
          v56 = v37;
          v42 = v37 + v36;
          v43 = v54;
          sub_10084C29C(v37 + v36, v54);
          sub_10084C29C(v53, v14);
          v44 = v59(v43, v14);
          if (v40)
          {
            sub_10084C300(v14);
            sub_10084C300(v43);
            v62 = v52;
            v34 = v49;
            goto LABEL_62;
          }

          v45 = v44;
          v55 = 0;
          v46 = v39 + v36;
          sub_10084C300(v14);
          sub_10084C300(v43);
          if (v45)
          {
            break;
          }

          v34 = v42;
          v35 = v39 + v36;
          if (v39 < v56 || v46 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v42;
            a4 = v41;
          }

          else
          {
            a4 = v41;
            if (v39 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
              v34 = v42;
            }
          }

          v37 = v34;
          v7 = v55;
          v14 = v50;
          a1 = v51;
          v38 = v52;
          if (v42 <= a4)
          {
            a2 = v52;
            goto LABEL_61;
          }
        }

        v35 = v39 + v36;
        if (v39 < v52 || v46 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v41;
        }

        else
        {
          v47 = v39 == v52;
          a2 = v53;
          a4 = v41;
          if (!v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v55;
        v37 = v56;
        v14 = v50;
        a1 = v51;
        v34 = v49;
      }

      while (v56 > a4);
    }

LABEL_61:
    v62 = a2;
LABEL_62:
    v60 = v34;
  }

  else
  {
    v26 = v25 * v56;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v26;
    v60 = a4 + v26;
    if (v26 >= 1 && a2 < v55)
    {
      while (1)
      {
        sub_10084C29C(a2, v22);
        sub_10084C29C(a4, v19);
        v30 = v59(v22, v19);
        if (v6)
        {
          break;
        }

        v31 = v30;
        sub_10084C300(v19);
        sub_10084C300(v22);
        if (v31)
        {
          v32 = v56;
          if (a1 < a2 || a1 >= a2 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v32;
        }

        else
        {
          v32 = v56;
          v33 = a4 + v56;
          if (a1 < a4 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v33;
          a4 += v32;
        }

        a1 += v32;
        v62 = a1;
        if (a4 >= v28 || a2 >= v55)
        {
          goto LABEL_63;
        }
      }

      sub_10084C300(v19);
      sub_10084C300(v22);
    }
  }

LABEL_63:
  sub_1008495E0(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_100849540(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008495CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1008495E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1008496C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100725034(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10084A6C4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1009360A8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v20 = *(v13 - 8);
    sub_10084CA20(v12 + *(v20 + 72) * v7, a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100849F5C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100849860(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1009360A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100706B30(&qword_100CB81D8);
  v43 = a2;
  result = sub_100937418();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10084CA20(v27 + v28 * v24, v47, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10084C29C(v29 + v28 * v24, v47);
      }

      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
      result = sub_100936AC8();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_10084CA20(v47, *(v12 + 56) + v28 * v20, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100849CEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB81E8);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      }

      result = sub_100937658();
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

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

unint64_t sub_100849F5C(int64_t a1, uint64_t a2)
{
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1009370D8();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
      v22 = sub_100936AC8();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for IDSGroupEncryptionKeyMaterialContent() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10084A2A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1009360A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100725034(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10084A6C4();
      goto LABEL_7;
    }

    sub_100849860(v17, a3 & 1);
    v24 = sub_100725034(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10084A5D4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for IDSGroupEncryptionKeyMaterialContent() - 8) + 72) * v14;

  return sub_10084D410(a1, v22);
}

unint64_t sub_10084A488(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10072517C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100849CEC(v14, a3 & 1);
      result = sub_10072517C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10084A9DC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10084A5D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1009360A8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  result = sub_10084CA20(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_10084A6C4()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1009360A8();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB81D8);
  v5 = *v0;
  v6 = sub_100937408();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_10084C29C(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_10084CA20(v25, *(v27 + 56) + v26, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10084A9DC()
{
  v1 = v0;
  sub_100706B30(&qword_100CB81E8);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

uint64_t sub_10084AB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
  v31 = a1;
  v10 = sub_100936AC8();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID);
      v19 = sub_100936B18();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100847C90();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10084ADE0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10084ADE0(int64_t a1)
{
  v3 = sub_1009360A8();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1009370D8();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
        v24 = sub_100936AC8();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_10084B0E8()
{
  v1 = sub_1009360A8();
  v26 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v29 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 2);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      result = swift_stdlib_random();
      v11 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v12 = -v7 % v7;
        if (v12 > v31 * v7)
        {
          do
          {
            v31 = 0;
            result = swift_stdlib_random();
          }

          while (v12 > v31 * v7);
          v11 = (v31 * v7) >> 64;
        }
      }

      v13 = v9 + v11;
      if (__OFADD__(v9, v11))
      {
        break;
      }

      if (v9 != v13)
      {
        v14 = *(v6 + 2);
        if (v9 >= v14)
        {
          goto LABEL_19;
        }

        v15 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = &v6[v28];
        v17 = *(v26 + 72);
        v18 = *(v26 + 16);
        v27 = v17 * v9;
        result = v18(v30, &v6[v28 + v17 * v9], v15);
        if (v13 >= v14)
        {
          goto LABEL_20;
        }

        v19 = v17 * v13;
        v18(v29, &v16[v17 * v13], v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v15;
        if ((result & 1) == 0)
        {
          result = sub_10084BE70(v6);
          v6 = result;
        }

        if (v9 >= *(v6 + 2))
        {
          goto LABEL_21;
        }

        v20 = &v6[v28];
        v21 = *v23;
        result = (*v23)(&v6[v28 + v27], v29, v15);
        if (v13 >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        result = v21(&v20[v19], v30, v15);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

unint64_t *sub_10084B38C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10084CC20(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_10084B428(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100706B30(&qword_100CB2D90);
  result = sub_100937228();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_10084C29C(v19 + v20 * (v16 | (v14 << 6)), v10);
    sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    result = sub_100936AC8();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_10084CA20(v10, *(v11 + 48) + v24 * v20, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_10084B710(size_t a1, int64_t a2, char a3)
{
  result = sub_10084B754(a1, a2, a3, *v3, &qword_100CB81F0, &unk_1009B8FA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  *v3 = result;
  return result;
}

size_t sub_10084B754(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_10084B930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_10084C29C(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32);
      v24 = v23;
      v25 = v31;
      sub_10084CA20(v24, v31, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_10084CA20(v25, a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10084BB80(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1009360A8();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_10084BEBC(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB8208);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB81D8);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CB8208);
      result = sub_100725034(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1009360A8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
      result = sub_10084CA20(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_10084C0D8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100706B30(&qword_100CB81E8);
  v3 = sub_100937438();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10072517C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10072517C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10084C22C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100840A54(a1, *(v2 + 24));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10084C29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084C300(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10084C3B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v18 - v12;
  v14 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  result = sub_100936E38();
  v19 = result;
  v15 = v14 - a2;
  if (v14 == a2)
  {
    return result;
  }

  if (v14 <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = *(v7 + 72);
  v17 = a1 + v16 * a2;
  do
  {
    sub_10084C29C(v17, v10);
    sub_1007139D8(v13, v10);
    sub_10084C300(v13);
    v17 += v16;
    --v15;
  }

  while (v15);
  return v19;
}

uint64_t sub_10084C564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10083F9F0(*(v2 + 16), *(a1 + 24));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10084C614()
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

void sub_10084C70C()
{
  sub_10084C7D8();
  if (v0 <= 0x3F)
  {
    sub_10084C884();
    if (v1 <= 0x3F)
    {
      sub_10084C8F8();
      if (v2 <= 0x3F)
      {
        sub_10084C98C();
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

void sub_10084C7D8()
{
  if (!qword_100CB8170)
  {
    sub_1009360A8();
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
    v0 = sub_100936AB8();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8170);
    }
  }
}

void sub_10084C884()
{
  if (!qword_100CB8178)
  {
    sub_1007147D0(&qword_100CB8180);
    v0 = sub_100936AB8();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8178);
    }
  }
}

void sub_10084C8F8()
{
  if (!qword_100CB8188)
  {
    type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v0 = sub_100936E68();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8188);
    }
  }
}

void sub_10084C98C()
{
  if (!qword_100CB8190)
  {
    sub_1009360A8();
    sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID);
    v0 = sub_100936E68();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8190);
    }
  }
}

uint64_t sub_10084CA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10084CAB8(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  result = sub_100936E38();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10084C29C(v11, v6);
      sub_1007139D8(v8, v6);
      sub_10084C300(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10084CC20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v35 = a1;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v37 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  v38 = a3;
  v39 = 0;
  v13 = 0;
  v14 = *(a3 + 56);
  v34 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v19 = a4;
  v42 = a4 + 56;
  v36 = v18;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v41 = (v17 - 1) & v17;
LABEL_13:
    v23 = v20 | (v13 << 6);
    v24 = *(v38 + 48);
    v25 = *(v37 + 72);
    v40 = v23;
    sub_10084C29C(v24 + v25 * v23, v12);
    if (*(v19 + 16) && (sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent), v26 = sub_100936AC8(), v27 = -1 << *(v19 + 32), v28 = v26 & ~v27, ((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (1)
      {
        sub_10084C29C(*(v19 + 48) + v28 * v25, v9);
        sub_10084D3C8(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v30 = sub_100936B18();
        sub_10084C300(v9);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = sub_10084C300(v12);
      v18 = v36;
      v17 = v41;
    }

    else
    {
LABEL_18:
      result = sub_10084C300(v12);
      *(v35 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v31 = __OFADD__(v39++, 1);
      v18 = v36;
      v17 = v41;
      if (v31)
      {
        __break(1u);
LABEL_21:
        v32 = v38;

        return sub_10084B428(v35, v33, v39, v32);
      }
    }
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_21;
    }

    v22 = *(v34 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v41 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10084CF58(uint64_t a1, size_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v45 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v38 - v10;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  v49 = a2;
  if (v13 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v39 = v14;
    v40 = v3;
    v38[1] = v38;
    __chkstk_darwin(v16);
    v42 = v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v15);
    v46 = 0;
    v3 = 0;
    v17 = *(a1 + 56);
    v41 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v14 = a2 + 56;
    v15 = a2;
    v43 = v21;
    v44 = a1;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
LABEL_14:
      v25 = v22 | (v3 << 6);
      v26 = *(a1 + 48);
      v27 = *(v45 + 72);
      v47 = v25;
      sub_10084C29C(v26 + v27 * v25, v11);
      if (*(v15 + 16) && (sub_10084D3C8(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent), v28 = sub_100936AC8(), v15 = v49, v29 = -1 << *(v49 + 32), v30 = v28 & ~v29, ((*(v14 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          sub_10084C29C(*(v15 + 48) + v30 * v27, v9);
          sub_10084D3C8(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v32 = sub_100936B18();
          sub_10084C300(v9);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          v15 = v49;
          if (((*(v14 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_10084C300(v11);
        v20 = v48;
        v15 = v49;
        v21 = v43;
        a1 = v44;
      }

      else
      {
LABEL_19:
        sub_10084C300(v11);
        *&v42[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v46++, 1);
        v21 = v43;
        a1 = v44;
        v20 = v48;
        if (v33)
        {
          __break(1u);
LABEL_22:
          v34 = sub_10084B428(v42, v39, v46, a1);

          return v34;
        }
      }
    }

    v23 = v3;
    while (1)
    {
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v3 >= v21)
      {
        goto LABEL_22;
      }

      v24 = *(v41 + 8 * v3);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v49;
  }

  v36 = swift_slowAlloc();
  v37 = v49;

  v34 = sub_10084B38C(v36, v14, a1, v37);

  return v34;
}

uint64_t sub_10084D3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10084D410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084D490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB81F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084D51C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084D620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084D72C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084D804()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084D908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084DA14()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084DAEC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084DBF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084DCFC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084DDD4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10084DF00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084E034()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084E10C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10084E238@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084E36C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084E444()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_10084E57C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084E6BC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100864C40(a5, a6);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009368C8();
}

uint64_t sub_10084E860()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100864EB0();
  sub_100936898();

  return v0;
}

uint64_t sub_10084E978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100864EB0();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_10084EA98()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8210, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10084EB64()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  sub_100864EB0();
  sub_1009368B8();
}

uint64_t sub_10084EC14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = swift_allocObject();
  sub_10084ECBC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_10084ECBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  *(v10 + 48) = sub_100706B30(&qword_100CB8248);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  *(v10 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v10 + 24));
  sub_100936858();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v10 + 18) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB8220);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864EB0();
  sub_1009366C8();

  *(v10 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, a10);
  sub_1009366D8();

  sub_10001C370(a9, a10);
  *(v10 + 18) = 0;

  sub_100936C08(v13);

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, a10);

  return v10;
}

uint64_t sub_10084F29C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB8248);
  sub_100864C40(&qword_100CB8218, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB8220);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice(0);
  sub_100864EB0();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10084F5FC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10084F704@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084F814()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10084F8EC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10084F9F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10084FAFC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10084FBD4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10084FCDC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10084FDEC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10084FEC4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10084FFCC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008500DC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008501B4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008502B8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1008503C4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100850494()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100850598@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1008506A4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100850774()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1008508A0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008509D4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100850AAC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100850BB0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100850CBC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100850D98()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_100850ED4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100851010()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100851100()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

__n128 sub_1008511D8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100865914();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_100851328@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100865914();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100851478()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100851564()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100865890();
  sub_1009368C8();
}

uint64_t sub_100851620()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1008659CC();
  sub_100936898();

  return v0;
}

uint64_t sub_100851738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1008659CC();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_100851858()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8250, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100851924()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  sub_1008659CC();
  sub_1009368B8();
}

uint64_t sub_1008519D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, char a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v26 = a5;
  *(&v26 + 1) = a6;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v14 = swift_allocObject();
  *(v14 + 48) = sub_100706B30(&qword_100CB8288);
  *&v29 = v13;
  *(&v29 + 1) = v13;
  *&v30 = sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  *(&v30 + 1) = v30;
  *(v14 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v14 + 24));
  sub_100936858();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = 0uLL;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v29 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CB8268);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_1008659CC();
  sub_1009366C8();

  *(v14 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v29 = a1;
  *(&v29 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = v25;
  sub_100715738(v25, *(&v25 + 1));
  sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v25, *(&v25 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = v26;
  sub_100715738(v26, *(&v26 + 1));
  sub_1009366D8();

  sub_1007156D8(v26, *(&v26 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = a7;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = a8;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = a9;
  sub_1009366D8();

  *(v14 + 16) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = a10;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = a11;
  sub_1007483B0(a11, *(&a11 + 1));
  sub_1009366D8();

  sub_10001C370(a11, *(&a11 + 1));
  *(v14 + 17) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v14 + 18) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v15 = *(a13 + 80);
  v33 = *(a13 + 64);
  v34 = v15;
  v35 = *(a13 + 96);
  v16 = *(a13 + 16);
  v29 = *a13;
  v30 = v16;
  v17 = *(a13 + 48);
  v31 = *(a13 + 32);
  v32 = v17;
  sub_100865994(a13, v28);
  sub_100865890();
  sub_1009366D8();

  sub_1008658E4(a13);
  v18 = sub_100716518(a1, a2);
  v20 = v19;

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v29 = v18;
  *(&v29 + 1) = v20;
  sub_1009366D8();
  sub_1008658E4(a13);
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a11, *(&a11 + 1));
  sub_1007156D8(v26, *(&v26 + 1));
  sub_1007156D8(v25, *(&v25 + 1));

  sub_1007156D8(v18, v20);
  return v14;
}

void sub_1008522BC(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 40));
    swift_beginAccess();
    sub_100012970(v5 + 24);
    a3(v4 + 40, v5 + 24);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970(v5 + 24);
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1008523A0(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB8288);
  sub_100864C40(&qword_100CB8240, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDDevice);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB8268);
  type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDAddressable(0);
  sub_1008659CC();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1008527EC(uint64_t a1)
{
  v2 = sub_1008661C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100852828(uint64_t a1)
{
  v2 = sub_1008661C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100852864(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB8290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_1008661C4();
  sub_1009376F8();
  v19 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100012D50(&v19, v11, &qword_100CB3CE8);
  sub_100768A18();
  sub_1009374C8();
  if (!v2)
  {
    sub_10001C370(v13, *(&v13 + 1));
    v18 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100012D50(&v18, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_100937518();
    LOBYTE(v13) = 3;
    sub_100937508();
    v17 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 4;
    sub_100012D50(&v17, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v16 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 5;
    sub_100012D50(&v16, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v15 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 6;
    sub_100012D50(&v15, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 7;
    sub_100012D50(&v14, v11, &qword_100CB3CE8);
    sub_1009374C8();
  }

  sub_10001C370(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_100852C40@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100866218(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100852CB8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100852DC0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100852ED0()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100852FA8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008530AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008531B8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100853290()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100853394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008534A0()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100853578()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10085367C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100853788()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100853860()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100853968@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100853A78()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100853B50()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100853C58@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100853D68()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100853E40()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100853F78()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008540B0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100854238()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100854370()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008544A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

double sub_100854630()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

double sub_100854734@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100854840()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8298, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100854918()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  sub_1009368C8();
}

uint64_t *sub_1008549B4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, uint64_t a11, uint64_t a12)
{
  v40._countAndFlagsBits = a7;
  v40._object = a8;
  v43._countAndFlagsBits = a5;
  v43._object = a6;
  v42._countAndFlagsBits = a3;
  v42._object = a4;
  v37 = a2;
  v38 = a1;
  v44 = a12;
  v45 = a11;
  v41 = a10;
  v39 = sub_100936038();
  v16 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[5] = sub_100706B30(&qword_100CB82A8);
  v19 = sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  v46._countAndFlagsBits = v12;
  v46._object = v12;
  v47 = v19;
  v48 = v19;
  v18[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v18 + 2);
  sub_100936858();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = 0;
  sub_1009366D8();

  sub_100936158();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v42;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v43;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v20 = v40;
  v46 = v40;
  sub_100715738(v40._countAndFlagsBits, v40._object);
  v35 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v20._countAndFlagsBits, v20._object);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v21 = v41;
  v46 = v41;
  sub_100715738(v41._countAndFlagsBits, v41._object);
  sub_1009366D8();

  sub_1007156D8(v21._countAndFlagsBits, v21._object);
  v32 = *(v16 + 16);
  v22 = v36;
  v23 = v39;
  v32(v36, v45, v39);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v31 = sub_100864C40(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v24 = *(v16 + 8);
  v24(v22, v23);
  v33 = v24;
  v34 = v16 + 8;
  v32(v22, v44, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v24(v22, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  *&v46._countAndFlagsBits = a9;
  sub_1009366D8();

  v46._countAndFlagsBits = v38;
  v46._object = v37;

  sub_100936C08(v42);

  sub_100936C08(v43);

  v25 = v40;
  v26 = sub_100716518(v46._countAndFlagsBits, v46._object);
  v28 = v27;

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = v26;
  v46._object = v28;
  sub_1009366D8();

  sub_1007156D8(v41._countAndFlagsBits, v41._object);
  sub_1007156D8(v25._countAndFlagsBits, v25._object);
  v29 = v33;
  v33(v44, v23);
  v29(v45, v23);
  sub_1007156D8(v26, v28);
  return v18;
}

uint64_t *sub_100855098(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB82A8);
  sub_100864C40(&qword_100CB82A0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSession);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_1000226D4(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_100855238()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100855340@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100855450()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100855528()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10085562C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100855738()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100855810()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100855918@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100855A28()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100855B00()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100855C04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100855D10()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100855DE8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100855EF0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100856000()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1008560D8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100856210()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100856348(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100864C40(&qword_100CB82B0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1008564D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_100856568(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_100856568(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v41 = a8;
  v38 = a7;
  v35 = a1;
  v36 = a6;
  v31[0] = a5;
  v34 = a2;
  v15 = *v8;
  v16 = sub_100936038();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v37 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[5] = sub_100706B30(&qword_100CB82C0);
  v19 = sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  v42 = v15;
  v43 = v15;
  v44 = v19;
  v45 = v19;
  v9[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v9 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a1;
  v43 = a2;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a3;
  v43 = a4;
  v32 = a3;
  v33 = a4;
  sub_100715738(a3, a4);
  v31[1] = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a3, a4);
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a5;
  v20 = v36;
  v43 = v36;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v21 = v38;
  v22 = v41;
  v42 = v38;
  v43 = v41;
  sub_100715738(v38, v41);
  sub_1009366D8();

  sub_1007156D8(v21, v22);
  v23 = v37;
  sub_100936028();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  sub_100864C40(&qword_100CB3DA8, &type metadata accessor for Date);
  v24 = v39;
  sub_1009366D8();

  (*(v40 + 8))(v23, v24);
  v42 = v35;
  v43 = v34;

  v46._countAndFlagsBits = v31[0];
  v46._object = v20;
  sub_100936C08(v46);

  v25 = v32;
  v26 = v33;
  v27 = sub_100716518(v42, v43);
  v29 = v28;

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = v27;
  v43 = v29;
  sub_1009366D8();
  sub_1007156D8(v21, v41);
  sub_1007156D8(v25, v26);

  sub_1007156D8(v27, v29);
  return v9;
}

void sub_100856A2C(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 40));
    swift_beginAccess();
    sub_100012970(v5 + 16);
    a3(v4 + 40, v5 + 16);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970(v5 + 16);
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t *sub_100856B10(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB82C0);
  sub_100864C40(&qword_100CB82B8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDPublicIdentity);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_100856C58()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100856D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100856E68()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_100856F40()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100857044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100857150()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_100857228()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_100857368()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1008574A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82C8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1008575F0(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_100857658(a1, a2, a3, a4);
  return v8;
}

void *sub_100857658(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CB82D8);
  v18 = type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle;
  v12 = sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  v21 = v8;
  v22 = v8;
  v23 = v12;
  v24 = v12;
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100014250(v5 + 3);
  sub_100936858();
  *(v5 + 16) = 1;
  sub_100936158();
  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = a1;
  v22 = a2;
  sub_1009366D8();

  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = v16;
  v22 = v17;
  sub_1009366D8();

  sub_100936028();
  v13 = sub_100936038();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v21 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = v11;
  sub_100864C40(&qword_100CB82C8, v18);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_100857960(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CB82D8);
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v2 + 24));
  sub_100936858();
  *(v2 + 16) = 1;
  sub_100936158();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v2 + 24);
  sub_100308C84(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_100857A98(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB82D8);
  sub_100864C40(&qword_100CB82D0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDShortHandle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100857BF4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100857CFC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100857E0C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100857EE4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100857FEC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008580FC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008581D4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008582DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008583EC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008584C4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008585C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008586D4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008587AC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008588B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008589BC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100858A94()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100858B9C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100858CAC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100858D84()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100858EBC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100858FF4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10085917C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100859284@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100859394()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10085946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100864C40(a5, a6);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_100859508()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085960C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100859718()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008597E8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008598EC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1008599F8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100859AC8()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_100859C08()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_100859D48(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100859E90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100864C40(a4, a5);
  sub_100022988(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009368C8();
}

uint64_t sub_100859F58()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085A05C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10085A168()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10085A238()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085A33C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10085A448()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10085A518(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100864C40(a4, a5);
  sub_1009368C8();
}

uint64_t sub_10085A5A4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085A6E4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085A824(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085A96C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10085AA98@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10085ABCC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10085ACA4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085ADE4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085AF24(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085B06C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085B1AC()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085B2EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085B434()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085B574()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100022988(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10085B6B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100864C40(&qword_100CB82E0, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10085B7FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v46 = a8;
  v47 = a7;
  v44[0] = a6;
  v45 = a5;
  v60 = a3;
  v61 = a4;
  v52 = a16;
  v53 = a17;
  v50 = a14;
  v51 = a15;
  v57 = a12;
  v58 = a13;
  v62 = a11;
  v54 = a9;
  v55 = a10;
  v56 = sub_100936038();
  v63 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 48) = sub_100706B30(&qword_100CB82F0);
  v22 = sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  v64 = v17;
  v65 = v17;
  v66 = v22;
  v67 = v22;
  *(v21 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v21 + 24));
  sub_100936858();
  *(v21 + 16) = 16843009;
  *(v21 + 20) = 257;
  sub_100936158();
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = a1;
  v65 = a2;
  v59 = a1;
  v49 = a2;
  sub_100715738(a1, a2);
  v23 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a1, a2);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v25 = v60;
  v24 = v61;
  v64 = v60;
  v65 = v61;
  sub_100715738(v60, v61);
  sub_1009366D8();

  sub_1007156D8(v25, v24);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v45;
  v65 = v44[0];
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v47;
  v65 = v46;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v27 = v54;
  v26 = v55;
  v64 = v54;
  v65 = v55;
  sub_100715738(v54, v55);
  v44[1] = v23;
  sub_1009366D8();

  sub_1007156D8(v27, v26);
  v28 = v63;
  v29 = v48;
  v30 = v56;
  (*(v63 + 16))(v48, v62, v56);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  sub_100864C40(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v31 = *(v28 + 8);
  v63 = v28 + 8;
  v47 = v31;
  v31(v29, v30);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v33 = v57;
  v32 = v58;
  v64 = v57;
  v65 = v58;
  sub_100715738(v57, v58);
  sub_1009366D8();

  sub_1007156D8(v33, v32);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v50;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v51;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v52;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v53;
  sub_1009366D8();

  v34 = v59;
  v35 = v49;
  v69 = v59;
  v70 = v49;
  v67 = &type metadata for Data;
  v68 = &protocol witness table for Data;
  v36 = v54;
  v37 = v55;
  v64 = v54;
  v65 = v55;
  v38 = sub_1000226D4(&v64, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_100715738(v34, v35);
  sub_100715738(v36, v37);
  sub_100768308(v39, v40);
  sub_100012970(&v64);
  v41 = v69;
  v42 = v70;
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v41;
  v65 = v42;
  sub_1009366D8();

  sub_1007156D8(v57, v58);
  sub_1007156D8(v36, v37);
  sub_1007156D8(v60, v61);
  sub_1007156D8(v59, v35);
  v47(v62, v56);
  sub_1007156D8(v41, v42);
  return v21;
}

uint64_t sub_10085BFB8(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB82F0);
  sub_100864C40(&qword_100CB82E8, type metadata accessor for SDPersistenceSchemaV2.IDSQuerySDSenderKeyDistribution);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 257;
  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10085C118()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10085C21C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10085C328()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_10085C3F4()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_10085C490()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10085C594@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10085C6A0()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_10085C770()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_10085C80C()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_10085C944()
{
  swift_getKeyPath();
  sub_100864C40(&qword_100CB82F8, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100864C40(&qword_100CB8300, type metadata accessor for SDPersistenceSchemaV2.IDSGroupEncryptionKeyRollIndex);
  sub_100864C40(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}